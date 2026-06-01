toolbuilder
setFrames: aCollection

	| specsWithSize totalWidth scale |

	specsWithSize := aCollection select: [:each | each includesKey: #size].
	totalWidth := specsWithSize
		inject: 0
		into: [:sum :each | sum + (self class perform: (each at: #size)) x].
	scale := totalWidth > 1
		ifTrue: [1 / totalWidth]
		ifFalse: [1].

	specsWithSize inject: 0 @ 0 into: [:aPoint :each |
		| actualSize |
		actualSize := self class perform: (each at: #size).
		actualSize := (actualSize x * scale) @ actualSize y.
		each at: #frame put: (aPoint corner: aPoint + actualSize).
		aPoint + (actualSize x @ 0)].
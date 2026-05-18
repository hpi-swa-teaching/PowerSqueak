styling
selectionEmphasisCode
	| index attributes code |

	index := self textMorph editor startBlock stringIndex ifNil: [1].
	(index between: 1  and: self textMorph text size) ifFalse: [index := 1].
	attributes := self textMorph text attributesAt: index.
	code := 0.
	attributes do: [:attr |
		attr class = TextEmphasis
			ifTrue: [code := code bitOr: attr emphasisCode]].
	^ code
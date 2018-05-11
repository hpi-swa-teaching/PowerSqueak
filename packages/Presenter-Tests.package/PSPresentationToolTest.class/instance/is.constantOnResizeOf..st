slide resizing tests
is: aBlock constantOnResizeOf: aMorph

	| oldValue |
	oldValue := aBlock value.
	1 to: 20 do: [ :width |
		1 to: 20 do: [ :height |
			aMorph extent: (width*100)@(height*100).
			aBlock value = oldValue ifFalse: [^ false]
		]
	].
	^ aBlock value = oldValue
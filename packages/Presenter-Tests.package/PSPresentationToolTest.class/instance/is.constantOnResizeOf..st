slide resizing tests
is: aBlock constantOnResizeOf: aMorph

	| oldValue |
	oldValue := aBlock value.
	500 to: 2000 by: 100 do: [ :width |
		500 to: 2000 by: 100 do: [ :height |
			aMorph extent: width@height.
			aMorph fullBounds.
			aBlock value = oldValue ifFalse: [^ false]
		]
	].
	^ aBlock value = oldValue
slide resizing tests
is: aBlock constantOnResizeOf: aMorph

	| oldValue |
	oldValue := aBlock value.
	100 to: 2000 by: 100 do: [ :width |
		100 to: 2000 by: 100 do: [ :height |
			aMorph extent: width@height.
			aBlock value = oldValue ifFalse: [^ false]
		]
	].
	^ aBlock value = oldValue
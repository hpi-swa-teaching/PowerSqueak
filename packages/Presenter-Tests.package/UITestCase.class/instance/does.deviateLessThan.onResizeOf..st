helper functions
does: aBlock deviateLessThan: aComparable onResizeOf: aMorph

	| oldValue |
	oldValue := aBlock value.
	200 to: 2000 by: 100 do: [ :width |
		200 to: 2000 by: 100 do: [ :height |
			aMorph extent: width@height.
			aMorph fullBounds.
			(aBlock value - oldValue / oldValue) abs < aComparable ifFalse: [ ^ false]
		]
	].
	^ true
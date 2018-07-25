helper functions
assert: aBlock onResizeOf: aMorph

	100 to: 2000 by: 100 do: [ :width |
		100 to: 2000 by: 100 do: [ :height |
			aMorph extent: width@height.
			"Setting the extent does not update everything immediately, for the update, we need fullBounds."
			aMorph fullBounds.
			self assert: aBlock]]
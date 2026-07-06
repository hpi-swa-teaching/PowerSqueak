dragging
dropSlotFor: aSlide onMiniature: aMiniature at: aWorldPoint

	| others targetIndex |
	others := self visibleMiniaturesInOrder
		reject: [:each | each slide == aSlide].
	targetIndex := others indexOf: aMiniature.
	targetIndex = 0
		ifTrue: [^ self dropSlotForPoint: aWorldPoint excluding: aSlide].
	^ aWorldPoint y <= aMiniature boundsInWorld center y
		ifTrue: [targetIndex]
		ifFalse: [targetIndex + 1]
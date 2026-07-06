dragging
dropSlotForPoint: aWorldPoint excluding: aSlide

	| others |
	others := self visibleMiniaturesInOrder
		reject: [:each | each slide == aSlide].
	others withIndexDo: [:each :index |
		aWorldPoint y < each boundsInWorld bottom
			ifTrue: [
				^ aWorldPoint y <= each boundsInWorld center y
					ifTrue: [index]
					ifFalse: [index + 1]]].
	^ others size + 1
dragging
dropSlide: aPSSlide at: aWorldPoint

	| others slot |
	others := self visibleMiniaturesInOrder
		reject: [:each | each slide == aPSSlide].
	slot := (others count: [:each | each boundsInWorld center y < aWorldPoint y]) + 1.
	self tool moveSlide: aPSSlide to: slot.
	self cancelDrag
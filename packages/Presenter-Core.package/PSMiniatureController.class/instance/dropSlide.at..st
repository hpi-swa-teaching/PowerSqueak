dragging
dropSlide: aPSSlide at: aWorldPoint

	| others slot |
	others := self visibleMiniaturesInOrder
		reject: [:each | each slide == aPSSlide].
	slot := (others count: [:each | each boundsInWorld center y < aWorldPoint y]) + 1.
	self tool presentation
		moveSlideAt: (self tool presentation indexOf: aPSSlide)
		to: slot.
	self cancelDrag.
	self tool selectSlideAt: slot
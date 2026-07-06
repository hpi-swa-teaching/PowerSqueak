dragging
dropSlide: aSlide at: aWorldPoint

	| slot |
	slot := self dropSlotForPoint: aWorldPoint excluding: aSlide.
	self tool moveSlide: aSlide to: slot.
	self cancelDrag
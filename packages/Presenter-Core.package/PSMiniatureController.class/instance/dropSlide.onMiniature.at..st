dragging
dropSlide: aSlide onMiniature: aMiniature at: aWorldPoint

	| slot |
	slot := self
		dropSlotFor: aSlide
		onMiniature: aMiniature
		at: aWorldPoint.
	self tool moveSlide: aSlide to: slot.
	self cancelDrag
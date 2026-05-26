event-processing
startDrag: evt

	| worldPosition |
	self model ifNil: [^ self].
	worldPosition := self positionInWorld.
	self model beginDraggingSlide: self slide.
	evt hand grabMorph: self.
	self position: worldPosition

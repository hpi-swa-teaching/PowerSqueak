event-processing
startDrag: anEvent

	| worldPosition |
	self model ifNil: [^ self].
	worldPosition := self positionInWorld.
	self model beginDraggingSlide: self slide.
	anEvent hand grabMorph: self.
	self position: worldPosition

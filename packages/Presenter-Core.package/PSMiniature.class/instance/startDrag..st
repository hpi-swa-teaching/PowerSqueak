event-processing
startDrag: anEvent

	| worldPosition |
	self slide ifNil: [^ self].
	worldPosition := self positionInWorld.
	self model ifNotNil: [:aModel |
		aModel miniatureController beginDraggingSlide: self slide].
	anEvent hand grabMorph: self.
	self position: worldPosition
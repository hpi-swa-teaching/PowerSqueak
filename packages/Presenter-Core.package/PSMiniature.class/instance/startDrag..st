event-processing
startDrag: anEvent

	| worldPosition |
	self slide ifNil: [^ self].
	worldPosition := self positionInWorld.
	self model ifNotNil: [:aModel | aModel beginDraggingSlide: self slide].
	anEvent hand grabMorph: self.
	self position: worldPosition

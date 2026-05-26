event-processing
startDrag: evt

	self model ifNil: [^ self].
	self model beginDraggingSlide: self slide.
	evt hand grabMorph: self copy

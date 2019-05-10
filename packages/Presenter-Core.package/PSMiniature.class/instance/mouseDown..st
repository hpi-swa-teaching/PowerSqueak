event handling
mouseDown: evt

	self model selectSlide: self slide.
	evt yellowButtonPressed 
		ifTrue: [PSContextMenu newWith: self]
	
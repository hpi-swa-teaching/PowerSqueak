event handling
mouseDown: evt

	evt redButtonPressed
		ifTrue: [self model selectSlide: self slide].
	evt yellowButtonPressed 
		ifTrue: [PSContextMenu newWith: self]
	
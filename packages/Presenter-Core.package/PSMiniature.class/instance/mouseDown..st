event handling
mouseDown: evt

	self model selectSlide: self slide.
	evt yellowButtonPressed 
		ifTrue: [PSContextMenu newWithMenu: self defaultContextMenuContent content: (Morph new position: evt position) andEvent: evt]
	
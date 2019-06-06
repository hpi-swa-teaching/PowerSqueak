event handling
click: evt

	evt redButtonPressed
		ifTrue: [self model ifNotNil: [self model selectSlide: self slide]].
	evt yellowButtonPressed 
		ifTrue: [PSContextMenu newWith: self]
	
event-processing
click: evt

	evt redButtonPressed
		ifTrue: [self model ifNotNil: [self model selectSlide: self slide]].
	evt yellowButtonPressed 
		ifTrue: [self model ifNotNil: [PSContextMenu newWith: self]]
	
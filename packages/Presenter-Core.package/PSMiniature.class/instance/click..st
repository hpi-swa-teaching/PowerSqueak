event-processing
click: anEvent

	anEvent redButtonPressed
		ifTrue: [self model ifNotNil: [self model selectSlide: self slide]].
	anEvent yellowButtonPressed
		ifTrue: [self model ifNotNil: [PSContextMenu newWith: self event: anEvent]]
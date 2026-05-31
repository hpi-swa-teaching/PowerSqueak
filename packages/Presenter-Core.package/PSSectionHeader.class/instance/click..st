event handling
click: anEvent

	anEvent yellowButtonPressed
		ifTrue: [^ PSContextMenu newWith: self event: anEvent].
	self toggleCollapse
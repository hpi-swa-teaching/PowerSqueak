event handling
mouseDown: anEvent

	anEvent yellowButtonPressed
		ifTrue: [^ PSContextMenu newWith: self].
	self toggleCollapse

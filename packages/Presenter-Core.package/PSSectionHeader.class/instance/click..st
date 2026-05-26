event handling
click: anEvent

	anEvent yellowButtonPressed
		ifTrue: [^ PSContextMenu newWith: self].
	self toggleCollapse

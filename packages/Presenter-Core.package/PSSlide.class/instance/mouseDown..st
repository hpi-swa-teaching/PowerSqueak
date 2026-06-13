event handling
mouseDown: evt

	super mouseDown: evt.
	self owner removeSelection.
	evt yellowButtonPressed
		ifTrue: [^ self invokeContextMenu].
	self closeBackgroundColorDialog.
	evt redButtonPressed
		ifTrue: [self waitForDoubleClick: evt]
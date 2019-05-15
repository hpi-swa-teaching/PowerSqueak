event handling
handleRedButton: anEvent

	(self isInteractive) ifFalse:
		[self updateSelection.
		anEvent ignore]
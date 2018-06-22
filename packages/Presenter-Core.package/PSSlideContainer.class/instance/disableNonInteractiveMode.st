presentation mode
disableNonInteractiveMode

	self isInteractive: true.
	ActiveHand showHardwareCursor: true.
	self showNotification: 'interactive mode'
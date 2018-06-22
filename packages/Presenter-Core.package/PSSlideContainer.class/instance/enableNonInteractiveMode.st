presentation mode
enableNonInteractiveMode
	
	self isInteractive: false.
	ActiveHand showHardwareCursor: false.
	self showNotification: 'non interactive mode'
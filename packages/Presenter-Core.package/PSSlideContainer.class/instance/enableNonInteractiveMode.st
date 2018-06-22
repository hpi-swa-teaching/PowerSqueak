presentation mode
enableNonInteractiveMode
	
	self isInteractive: false.
	ActiveHand visible: false.
	self showNotification: 'non interactive mode'
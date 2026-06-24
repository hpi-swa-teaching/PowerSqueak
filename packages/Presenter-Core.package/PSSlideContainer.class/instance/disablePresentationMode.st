presentation mode
disablePresentationMode

	self ensurePreviousOwnerIsNotSubmorph.
	self previousOwner addMorph: self.
	self
		hideTimer;
		hideLogo;
		color: self defaultColor;
		deleteNotification;
		stopStepping
		

presentation mode
disablePresentationMode

	self ensurePreviousOwnerIsNotSubmorph.
	self previousOwner addMorph: self.
	self
		hideTimer;
		color: self defaultColor;
		deleteNotification;
		stopStepping
		

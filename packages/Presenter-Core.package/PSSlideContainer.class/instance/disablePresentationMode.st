presentation mode
disablePresentationMode

	self ensurePreviousOwnerIsNotSubmorph.
	self previousOwner addMorph: self.
	self 
		color: self defaultColor;
		deleteNotification;
		stopStepping
		

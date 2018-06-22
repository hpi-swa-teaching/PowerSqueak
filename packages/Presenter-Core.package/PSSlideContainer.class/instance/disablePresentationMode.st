presentation mode
disablePresentationMode

	
"	self ensurePreviousOwnerIsNotSubmorph."
	self previousOwner 
		addMorph: self.
	self disableNonInteractiveMode;
		color: self defaultColor;
		deleteNotification
		

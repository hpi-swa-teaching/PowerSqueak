presentation mode
disablePresentationMode

	DisplayScreen fullScreenOff.
	"self ensurePreviousOwnerIsNotSubmorph."
	self previousOwner 
		addMorph: self.
	self color: self defaultColor

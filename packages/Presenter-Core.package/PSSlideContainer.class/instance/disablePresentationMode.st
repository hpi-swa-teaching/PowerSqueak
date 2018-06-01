presentation mode
disablePresentationMode

	DisplayScreen fullScreenOff.
	self ensurePreviousOwnerIsNotSubmorph.
	self previousOwner 
		addMorph: self 
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)).
	self color: self defaultColor
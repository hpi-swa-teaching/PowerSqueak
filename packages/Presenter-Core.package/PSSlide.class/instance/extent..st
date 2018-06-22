geometry
extent: aPoint

	super extent: aPoint.
	self submorphsDo: [:each | each notifySlideRescale: aPoint]
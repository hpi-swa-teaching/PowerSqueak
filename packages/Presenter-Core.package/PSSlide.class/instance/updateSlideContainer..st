dropping/grabbing
updateSlideContainer: aPSSlideContainer

	self submorphsDo: 
		[:aContentContainer | aContentContainer slideContainer: aPSSlideContainer]
scaling
notifySlideRescale: newExtent

	(self content hasProperty: #acceptRescale) 
		ifTrue: [self content rescale: newExtent]
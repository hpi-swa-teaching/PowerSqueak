scaling
notifySlideRescale: newExtent

	(self child hasProperty: #acceptRescale) ifTrue: [self child rescale: newExtent]
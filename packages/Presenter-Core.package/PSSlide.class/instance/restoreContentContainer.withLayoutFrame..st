contentHandling
restoreContentContainer: aPSContentContainer withLayoutFrame: aLayoutFrame

	self addMorph: aPSContentContainer fullFrame: aLayoutFrame copy.
	aPSContentContainer notifySlideRescale: self extent.
	self owner ifNotNil: [self owner updateSelection: aPSContentContainer].
	^ aPSContentContainer
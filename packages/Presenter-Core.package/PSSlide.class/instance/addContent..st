contentHandling
addContent: aMorph

	| container |
	container := PSContentContainer for: aMorph.
	self addMorph: container fullFrame: (self layoutFrameFor: aMorph).
	container notifySlideRescale: self extent
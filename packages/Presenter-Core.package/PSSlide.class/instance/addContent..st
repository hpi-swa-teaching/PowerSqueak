contentHandling
addContent: aMorph

	| upperLeft lowerRight container |
	upperLeft := (aMorph position - self position) / self extent.
	lowerRight := upperLeft + (aMorph extent / self extent).
	container := PSContentContainer for: aMorph.
	self addMorph: container fullFrame: (LayoutFrame fractions: (upperLeft corner: lowerRight)).
	container notifySlideRescale: self extent
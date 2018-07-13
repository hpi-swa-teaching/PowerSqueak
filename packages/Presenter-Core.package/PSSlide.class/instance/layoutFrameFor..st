contentHandling
layoutFrameFor: aMorph

	| upperLeft lowerRight |
	upperLeft := (aMorph position - self position) / self extent.
	lowerRight := upperLeft + (aMorph extent / self extent).
	^ (LayoutFrame fractions: (upperLeft corner: lowerRight))
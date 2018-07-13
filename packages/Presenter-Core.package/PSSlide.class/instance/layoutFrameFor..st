contentHandling
layoutFrameFor: aMorph

	| upperLeft lowerRight |
	upperLeft := self layoutFractionsOf: aMorph position.
	lowerRight := upperLeft + (aMorph extent / self extent).
	^ (LayoutFrame fractions: (upperLeft corner: lowerRight))
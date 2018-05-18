dropping/grabbing
acceptDroppingMorph: aMorph event: anEvent

	| upperLeft lowerRight |
	upperLeft := (aMorph position - self position) / self extent.
	lowerRight := upperLeft + (aMorph extent / self extent).
	self addMorph: (PSContentContainer for: aMorph) fullFrame: (LayoutFrame fractions: (upperLeft corner: lowerRight))
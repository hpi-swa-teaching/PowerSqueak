contentHandling
layoutFrameForContainerHolding: aMorph

	| containerBounds upperLeft lowerRight |
	containerBounds := aMorph bounds expandBy: PSContentContainer borderWidth.
	upperLeft := self layoutFractionsOf: containerBounds topLeft.
	lowerRight := self layoutFractionsOf: containerBounds bottomRight.
	^ LayoutFrame fractions: (upperLeft corner: lowerRight)
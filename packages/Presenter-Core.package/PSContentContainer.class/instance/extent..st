geometry
extent: aPoint

	| clampedPoint |
	clampedPoint := aPoint max: (self class borderWidth @ self class borderWidth) * 2+ (1@1).
	(self extent closeTo: clampedPoint) ifTrue: [^ self].
	super extent: clampedPoint.
	self 
		resizeChild;
		placeHandles
	 
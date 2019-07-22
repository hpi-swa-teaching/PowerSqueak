geometry
extent: aPoint

	| clampedExtent |
	clampedExtent := aPoint max: self class minimumExtent.
	(self extent closeTo: clampedExtent) ifTrue: [^ self].
	super extent: clampedExtent.
	self 
		resizeChild;
		placeHandles
as yet unclassified
extent: aPoint


	(self extent closeTo: aPoint) ifTrue: [^ self].
	super extent: aPoint.
	self child extent: aPoint.
	self placeHandles
	 
geometry
extent: aPoint 

	| newExtent diffExtent |
	aPoint y / aPoint x > self sideRatio
		ifTrue: [newExtent := aPoint x @ (aPoint x * self sideRatio)]
		ifFalse: [newExtent := aPoint y / self sideRatio @ aPoint y].
	diffExtent := aPoint - newExtent.
	self position: self position + (diffExtent/2).
	super extent: newExtent.
	self layoutChanged
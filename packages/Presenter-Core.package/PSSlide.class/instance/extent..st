as yet unclassified
extent: aPoint 

	| newExtent |
	aPoint y / aPoint x > self sideRatio
		ifTrue: [newExtent := aPoint x @ (aPoint x * self sideRatio)]
		ifFalse: [newExtent := aPoint y / self sideRatio @ aPoint y].
	super extent: newExtent.
	self layoutChanged
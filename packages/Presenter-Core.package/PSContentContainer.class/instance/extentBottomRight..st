resizing
extentBottomRight: aPoint

	self layoutFrame 
		rightFraction: aPoint x;
		bottomFraction: aPoint y.
	self layoutChanged
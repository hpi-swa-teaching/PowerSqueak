resizing
extentBottomLeft: aPoint

	self layoutFrame 
		leftFraction: aPoint x;
		bottomFraction: aPoint y.
	self layoutChanged
resizing
extentTopRight: aPoint

	self layoutFrame 
		rightFraction: aPoint x;
		topFraction: aPoint y.
	self layoutChanged
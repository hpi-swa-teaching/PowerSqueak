resizing
extentTopLeft: aPoint

	self layoutFrame 
		leftFraction: aPoint x;
		topFraction: aPoint y.
	self layoutChanged
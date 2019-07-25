toolbuilder
barFrameFrom: fromNumber height: heightNumber

	^ LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: fromNumber;
			rightFraction: 1 offset: 0;
			bottomFraction: 0 offset: fromNumber + heightNumber;
			yourself
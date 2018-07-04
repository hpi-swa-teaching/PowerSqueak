toolbuilder
viewPortLayoutFrame

	^ LayoutFrame new
			leftFraction: self miniatureViewWidth offset: 0;
			topFraction: 0 offset: 2 * self buttonHeight;
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0
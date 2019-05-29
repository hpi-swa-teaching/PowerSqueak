toolbuilder
miniatureViewLayoutFrame

	^ LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 2 * self menuBarHeight;
			rightFraction: self miniatureViewWidth offset: 0;
			bottomFraction: 1 offset: 0
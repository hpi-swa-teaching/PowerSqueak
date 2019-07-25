toolbuilder
slideCreationBarLayoutFrame

	^ LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 1 offset: self menuBarHeight negated;
			rightFraction: self miniatureViewWidth offset: 0;
			bottomFraction: 1 offset: 0;
			yourself
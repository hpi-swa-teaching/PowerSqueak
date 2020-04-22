accessing
addHiddenSlideIcon

	self
		hiddenSlideIcon: (SketchMorph withForm: self class hiddenSlideImage);
		updateHiddenSlideIconBounds;
		addMorph: self hiddenSlideIcon.
	self hiddenSlideIcon hide
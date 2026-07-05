initialize-release
initializeSlides

	self
		presentation: PSPresentation newWithLayouts;
		miniatureController: (PSMiniatureController forTool: self);
		sectionController: (PSSectionController forTool: self);
		currentSlideNumber: 1;
		commandHistory: PSCommandHistory new
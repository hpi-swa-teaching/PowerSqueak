initialize-release
initialize

	self 
		presentation: PSPresentation newWithLayouts;
		miniatures: Dictionary new;
		currentSlideNumber: 0;
		magneticRasterActive: false;
		presentationMode: false;
		isInteractive: true
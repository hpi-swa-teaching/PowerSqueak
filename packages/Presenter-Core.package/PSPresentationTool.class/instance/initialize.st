initialize-release
initialize

	self 
		createPresentation;
		miniatures: Dictionary new;
		currentSlideNumber: 0;
		magneticRasterActive: false;
		presentationMode: false;
		isInteractive: true
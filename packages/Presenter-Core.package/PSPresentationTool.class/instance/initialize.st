initialize-release
initialize

	self 
		presentation: PSPresentation new;
		miniatures: Dictionary new;
		currentSlideNumber: 0;
		magneticRasterActive: false;
		presentationMode: false;
		isInteractive: true
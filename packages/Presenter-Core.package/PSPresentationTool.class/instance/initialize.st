initialize-release
initialize

	self 
		presentation: PSPresentation newWithLayouts;
		miniatures: Dictionary new;
		advancedMenuBar: PSAdvancedMenuBar new;
		currentSlideNumber: 0;
		magneticRasterActive: false;
		presentationMode: false;
		isInteractive: true
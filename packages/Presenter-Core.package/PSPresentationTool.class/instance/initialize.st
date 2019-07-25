initialize-release
initialize

	self 
		presentation: PSPresentation newWithLayouts;
		miniatures: Dictionary new;
		advancedMenuBarButtons: OrderedCollection new;
		currentSlideNumber: 1;
		snapActive: false;
		presentationMode: false;
		isInteractive: true
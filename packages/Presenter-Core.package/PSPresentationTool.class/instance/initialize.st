initialize-release
initialize

	self 
		slides: OrderedCollection new;
		miniatures: Dictionary new;
		currentSlideNumber: 0;
		magneticRasterActive: false;
		presentationMode: false
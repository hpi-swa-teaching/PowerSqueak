initialize-release
initialize

	self 
		slides: OrderedCollection new;
		miniatures: Dictionary new;
		currentSlideNumber: 0;
		presentationMode: false
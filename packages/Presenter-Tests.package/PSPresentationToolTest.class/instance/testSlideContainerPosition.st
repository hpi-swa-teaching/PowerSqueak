presentation mode tests
testSlideContainerPosition

	self 
		deny: self slideContainer position = (0 @ 0);
		enablePresentationMode;
		assert: self slideContainer position equals: 0 @ 0
presentation mode tests
testSlideContainerExtent

	self 
		assert: self slideContainer extent ~= self slideContainer world extent;
		enablePresentationMode;
		assert: self slideContainer extent equals: self slideContainer world extent
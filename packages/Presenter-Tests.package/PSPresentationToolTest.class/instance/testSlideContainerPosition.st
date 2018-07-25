presentation mode tests
testSlideContainerPosition

	self enablePresentationMode.
	self assert: self slideContainer position equals: 0@0
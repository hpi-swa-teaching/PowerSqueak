presentation mode tests
testSlideContainerPosition

	self tool enablePresentationMode.
	self assert: self tool slideContainer position equals: 0@0
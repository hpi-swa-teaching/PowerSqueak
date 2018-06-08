presentation mode tests
testSlideContainerPosition

	self tool slideContainer enablePresentationMode.
	self assert: self tool slideContainer position equals: 0@0
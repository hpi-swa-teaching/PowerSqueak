presentation mode tests
testSlideContainerExtent

	self assert: self tool slideContainer extent ~= self tool slideContainer world extent.
	self tool slideContainer enablePresentationMode.
	self assert: self tool slideContainer extent equals: self tool slideContainer world extent
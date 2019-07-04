container tests
testSlideContainerExtent

	self assert: self container extent equals: self morph extent +  (self container class borderWidth * 2)
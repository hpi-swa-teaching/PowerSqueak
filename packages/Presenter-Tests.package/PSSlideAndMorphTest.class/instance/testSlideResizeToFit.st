resizeToFit tests
testSlideResizeToFit

	self assert: [self slide extent >= self morph extent] onResizeToFit: self morph
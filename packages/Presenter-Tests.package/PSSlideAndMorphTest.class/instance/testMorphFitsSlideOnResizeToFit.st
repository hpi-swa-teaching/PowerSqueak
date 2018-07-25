resizeToFit tests
testMorphFitsSlideOnResizeToFit

	self assert: [self slide extent >= self morph extent] onResizeToFit: self morph
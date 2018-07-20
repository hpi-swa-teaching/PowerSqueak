resizeToFit tests
testMorphKeepsSideRatioOnResizeToFit

	self doForDifferentSizes: [:width :height |
		| sideRatio |
		self morph extent: width @ height. 
		sideRatio := self morph extent y / self morph extent x.
		self slide resizeMorphToFit: self morph.
		self assert: (self does: self morph answerSideRatio: sideRatio)]
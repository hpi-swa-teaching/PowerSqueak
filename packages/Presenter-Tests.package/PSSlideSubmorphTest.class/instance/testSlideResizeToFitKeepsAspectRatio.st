resizeToFit tests
testSlideResizeToFitKeepsAspectRatio

	self doForDifferentSizes: [ :width :height |
		| aspectRatio |
		self morph extent: width @ height. 
		aspectRatio := self morph extent y / self morph extent x.
		self slide resizeMorphToFit: self morph.
		self assert: (self does: self morph answerSideRatio: aspectRatio)]
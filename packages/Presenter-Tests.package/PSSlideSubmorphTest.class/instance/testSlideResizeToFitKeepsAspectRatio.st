resizeToFit tests
testSlideResizeToFitKeepsAspectRatio

	self doForDifferentSizes: [ :width :height |
		| aspectRatio |
		self morph extent: width @ height. 
		aspectRatio := self morph extent x / self morph extent y.
		self slide resizeMorphToFit: self morph.
		self assert: self morph extent x / self morph extent y = aspectRatio]
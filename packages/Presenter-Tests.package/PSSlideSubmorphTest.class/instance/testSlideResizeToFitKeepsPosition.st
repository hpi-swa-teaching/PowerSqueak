resizeToFit tests
testSlideResizeToFitKeepsPosition

	self doForDifferentSizes: [ :width :height |
		| position |
		self morph extent: width @ height.
		position := self morph position.
		self slide resizeMorphToFit: self morph.
		self assert: position = self morph position ]
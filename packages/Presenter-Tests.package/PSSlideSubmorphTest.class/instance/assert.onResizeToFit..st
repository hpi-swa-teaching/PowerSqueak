resizeToFit tests
assert: aBlock onResizeToFit: aMorph

	self doForDifferentSizes: [:width :height |
			self morph extent: width @ height.
			self slide resizeMorphToFit: aMorph.
			self assert: aBlock]
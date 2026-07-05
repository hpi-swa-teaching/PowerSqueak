layout tests
testSlideLayoutCreationBlocksMatchesLayoutCount

	self
		assert: self tool slideLayoutCreationBlocks size
		equals: self presentation slideLayouts size

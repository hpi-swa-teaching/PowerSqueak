slide deletion tests
setUpSlideDeletion

	self tool createSlide.
	self assert: self tool slideCount = 2.
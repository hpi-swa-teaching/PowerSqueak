toolbuilder tests
testSnapButtonColorActiveVsInactive

	self tool snapActive: true.
	self
		assert: self tool snapButtonColor
		equals: PSPresentationTool highlightColor.
	self tool snapActive: false.
	self
		assert: self tool snapButtonColor
		equals: Color transparent

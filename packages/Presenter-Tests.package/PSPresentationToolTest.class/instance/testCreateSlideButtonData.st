button tests
testCreateSlideButtonData

	| data |
	data := self tool createSlideButtonData.
	self
		assert: (data at: #label)
		equals: 'Create slide'.
	self
		assert: (data at: #action)
		equals: #createSlide

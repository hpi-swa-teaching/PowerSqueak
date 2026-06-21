button tests
testCreateLayoutSlideButtonData

	| data |
	data := self tool createLayoutSlideButtonData.
	self
		assert: (data at: #label)
		equals: 'with Layout'.
	self
		assert: (data at: #action)
		equals: #openSlideLayoutChooser

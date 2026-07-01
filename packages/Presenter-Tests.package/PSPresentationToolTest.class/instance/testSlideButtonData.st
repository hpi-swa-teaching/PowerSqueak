button tests
testSlideButtonData

	| data |
	data := self tool buttonData slideButtonData.
	self
		assert: (data at: #label)
		equals: 'Slide'.
	self
		assert: (data at: #action)
		equals: #openSlideMenu
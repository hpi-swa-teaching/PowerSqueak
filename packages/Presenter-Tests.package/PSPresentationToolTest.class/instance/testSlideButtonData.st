button tests
testSlideButtonData

	| data |
	data := self tool slideButtonData.
	self
		assert: (data at: #label)
		equals: 'Slide'.
	self
		assert: (data at: #action)
		equals: #openSlideMenu

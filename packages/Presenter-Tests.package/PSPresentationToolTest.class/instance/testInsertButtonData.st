button tests
testInsertButtonData

	| data |
	data := self tool insertButtonData.
	self
		assert: (data at: #label)
		equals: 'Insert'.
	self
		assert: (data at: #action)
		equals: #openInsertMenu

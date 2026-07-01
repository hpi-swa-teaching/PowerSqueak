button tests
testFileButtonData

	| data |
	data := self tool buttonData fileButtonData.
	self
		assert: (data at: #label)
		equals: 'File'.
	self
		assert: (data at: #action)
		equals: #openFileMenu
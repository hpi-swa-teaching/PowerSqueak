button tests
testSnapButtonData

	| data |
	data := self tool buttonData snapButtonData.
	self
		assert: (data at: #label)
		equals: 'Snap'.
	self
		assert: (data at: #action)
		equals: #toggleSnap
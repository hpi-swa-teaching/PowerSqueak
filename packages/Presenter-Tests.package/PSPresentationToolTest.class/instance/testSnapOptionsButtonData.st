button tests
testSnapOptionsButtonData

	| data |
	data := self tool buttonData snapOptionsButtonData.
	self
		assert: (data at: #label)
		equals: 'v'.
	self
		assert: (data at: #action)
		equals: #openSnapOptionsMenu
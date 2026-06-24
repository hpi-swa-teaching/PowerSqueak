button tests
testPresentationModeButtonData

	| data |
	data := self tool presentationModeButtonData.
	self
		assert: (data at: #label)
		equals: 'Present'.
	self
		assert: (data at: #action)
		equals: #enablePresentationMode

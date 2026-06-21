button tests
testPresentationModeOptionsButtonData

	| data |
	data := self tool presentationModeOptionsButtonData.
	self
		assert: (data at: #label)
		equals: 'v'.
	self
		assert: (data at: #action)
		equals: #openPresentationModeOptionsMenu

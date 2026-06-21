button tests
testSnapOptionsButtonData

	| data |
	data := self tool snapOptionsButtonData.
	self
		assert: (data at: #label)
		equals: 'v'.
	self
		assert: (data at: #action)
		equals: #openSnapOptionsMenu

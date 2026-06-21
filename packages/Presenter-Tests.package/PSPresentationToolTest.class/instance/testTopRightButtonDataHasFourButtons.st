button tests
testTopRightButtonDataHasFourButtons

	| actions |
	actions := self tool topRightButtonData collect: [:each | each at: #action].
	self
		assert: actions asArray
		equals: #(#toggleSnap #openSnapOptionsMenu #enablePresentationMode #openPresentationModeOptionsMenu)

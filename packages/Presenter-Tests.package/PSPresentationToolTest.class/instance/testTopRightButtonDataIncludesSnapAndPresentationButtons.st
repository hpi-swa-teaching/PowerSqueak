button tests
testTopRightButtonDataIncludesSnapAndPresentationButtons

	| actions |
	actions := self tool topRightButtonData collect: [:each | each at: #action].
	self assert: (actions includes: #toggleSnap).
	self assert: (actions includes: #enablePresentationMode)

button tests
testTopRightButtonDataIncludesSnapAndPresentationButtons

	| actions |
	actions := self tool buttonData topRightButtonData collect: [:each | each at: #action].
	self assert: (actions includes: #toggleSnap).
	self assert: (actions includes: #enablePresentationMode)
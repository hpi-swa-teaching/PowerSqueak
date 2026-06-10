as yet unclassified
testActionIsExecutedOnMouseDown

	| executed |
	executed := false.
	self button action: [executed := true].
	self button mouseDown: nil.
	self assert: executed
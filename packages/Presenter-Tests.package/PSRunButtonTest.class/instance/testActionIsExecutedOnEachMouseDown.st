run button tests
testActionIsExecutedOnEachMouseDown
	| calls |
	
	calls := 0.
	self button action: [calls := calls + 1].
	3 timesRepeat: [self button mouseDown: nil].
	self assert: calls equals: 3
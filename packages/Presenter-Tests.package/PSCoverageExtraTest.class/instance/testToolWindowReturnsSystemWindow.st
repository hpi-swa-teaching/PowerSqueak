extra coverage tests
testToolWindowReturnsSystemWindow
	self assert: (self tool toolWindow isKindOf: SystemWindow)

dirty state tests
testCloseWithUnsavedChangesCanBeDiscarded

	self tool doCommand: (PSTestCommand named: 'A' log: OrderedCollection new).
	self
		assert: ([self tool confirmCloseWithUnsavedChanges]
			valueSupplyingAnswer: 'Discard changes')
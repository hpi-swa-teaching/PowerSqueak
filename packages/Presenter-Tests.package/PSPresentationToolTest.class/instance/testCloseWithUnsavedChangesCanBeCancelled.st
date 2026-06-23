dirty state tests
testCloseWithUnsavedChangesCanBeCancelled

	self tool doCommand: (PSTestCommand named: 'A' log: OrderedCollection new).
	self
		deny: ([self tool confirmCloseWithUnsavedChanges]
			valueSupplyingAnswer: 'Cancel')
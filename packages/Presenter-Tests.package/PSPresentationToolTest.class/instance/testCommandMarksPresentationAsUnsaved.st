dirty state tests
testCommandMarksPresentationAsUnsaved

	self tool doCommand: (PSTestCommand named: 'A' log: OrderedCollection new).
	self assert: self tool hasUnsavedChanges
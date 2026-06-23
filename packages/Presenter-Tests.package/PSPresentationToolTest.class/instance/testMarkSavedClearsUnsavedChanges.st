dirty state tests
testMarkSavedClearsUnsavedChanges

	self tool doCommand: (PSTestCommand named: 'A' log: OrderedCollection new).
	self assert: self tool hasUnsavedChanges.
	self tool markSaved.

	self deny: self tool hasUnsavedChanges
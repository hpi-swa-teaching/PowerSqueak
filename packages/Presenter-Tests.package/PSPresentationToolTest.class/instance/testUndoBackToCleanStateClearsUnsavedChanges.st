dirty state tests
testUndoBackToCleanStateClearsUnsavedChanges

	self tool markSaved.
	self tool doCommand: (PSTestCommand named: 'A' log: OrderedCollection new).
	self assert: self tool hasUnsavedChanges.

	self tool undo.
	self deny: self tool hasUnsavedChanges 
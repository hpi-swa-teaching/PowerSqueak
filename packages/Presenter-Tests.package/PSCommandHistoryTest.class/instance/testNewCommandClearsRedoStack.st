tests
testNewCommandClearsRedoStack

	history do: (PSTestCommand named: 'A' log: log).
	history undo.
	history do: (PSTestCommand named: 'B' log: log).

	self deny: history canRedo.
	self assert: history undoSize equals: 1.
	self assert: history redoSize equals: 0
tests
testUndoCallsUnexecuteAndEnablesRedo

	history do: (PSTestCommand named: 'A' log: log).
	history undo.

	self assert: log asArray equals: #('execute A' 'unexecute A').
	self deny: history canUndo.
	self assert: history canRedo
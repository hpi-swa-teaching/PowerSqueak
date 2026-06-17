tests
testRedoCallsExecuteAgain

	history do: (PSTestCommand named: 'A' log: log).
	history undo.
	history redo.

	self assert: log asArray equals: #('execute A' 'unexecute A' 'execute A').
	self assert: history canUndo.
	self deny: history canRedo
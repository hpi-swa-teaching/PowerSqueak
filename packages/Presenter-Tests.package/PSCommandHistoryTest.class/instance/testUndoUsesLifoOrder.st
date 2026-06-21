tests
testUndoUsesLifoOrder

	history do: (PSTestCommand named: 'A' log: log).
	history do: (PSTestCommand named: 'B' log: log).

	history undo.
	history undo.

	self assert: log asArray equals:
		#('execute A' 'execute B' 'unexecute B' 'unexecute A')
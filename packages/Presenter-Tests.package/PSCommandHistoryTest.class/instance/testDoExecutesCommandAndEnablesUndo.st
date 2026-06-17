tests
testDoExecutesCommandAndEnablesUndo

	history do: (PSTestCommand named: 'A' log: log).

	self assert: log asArray equals: #('execute A').
	self assert: history canUndo.
	self deny: history canRedo
dirty state tests
testExecutedCommandMakesHistoryDirty

	history do: (PSTestCommand named: 'A' log: log).
	self assert: history isDirty
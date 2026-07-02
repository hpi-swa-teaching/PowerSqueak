dirty state tests
testCloseWithUnsavedChangesAndSaveDeclinedKeepsWindowOpen

	self tool doCommand: (PSTestCommand named: 'A' log: OrderedCollection new).

	self
		deny: ([self tool confirmCloseWithUnsavedChanges]
			valueSupplyingAnswers: {
				{'*unsaved changes*'. 'Save'}.
				{'*Operation*'. false}}).

	self assert: self tool hasUnsavedChanges
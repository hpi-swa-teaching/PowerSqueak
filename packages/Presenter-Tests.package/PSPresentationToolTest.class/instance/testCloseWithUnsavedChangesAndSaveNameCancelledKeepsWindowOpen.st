dirty state tests
testCloseWithUnsavedChangesAndSaveNameCancelledKeepsWindowOpen

	self tool doCommand: (PSTestCommand named: 'A' log: OrderedCollection new).

	self
		deny: ([self tool confirmCloseWithUnsavedChanges]
			valueSupplyingAnswers: {
				{'*unsaved changes*'. 'Save'}.
				{'*Operation*'. true}.
				{'*presentation name*'. ''}}).

	self assert: self tool hasUnsavedChanges
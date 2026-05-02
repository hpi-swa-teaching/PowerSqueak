layout rename tests
testRenamingLayoutUpdatesChooserNames

	| oldName newName |
	oldName := 'Old Layout'.
	newName := 'New Layout'.
	self presentation addLayout: self currentSlide duplicate withName: oldName.
	self tool renameLayoutNamed: oldName to: newName.
	self
		deny: (self tool slideLayoutNames includes: oldName);
		assert: (self tool slideLayoutNames includes: newName)

layout rename tests
testRenamingLayoutUpdatesChooserNames

	| oldName newName |
	oldName := 'Old Layout'.
	newName := 'New Layout'.
	self presentation addLayout: self currentSlide duplicate withName: oldName.
	self tool layoutController renameLayoutNamed: oldName to: newName.
	self
		deny: (self tool layoutController slideLayoutNames includes: oldName);
		assert: (self tool layoutController slideLayoutNames includes: newName)
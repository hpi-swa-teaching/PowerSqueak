layout rename tests
testOpenLayoutRenameChooserForRenamesLayout

	| oldName newName |
	oldName := 'Rename Dialog Old'.
	newName := 'Rename Dialog New'.
	self presentation addLayout: self currentSlide duplicate withName: oldName.
	[self tool openLayoutRenameChooserFor: oldName] valueSupplyingAnswer: newName.
	self
		deny: (self tool slideLayoutNames includes: oldName);
		assert: (self tool slideLayoutNames includes: newName)
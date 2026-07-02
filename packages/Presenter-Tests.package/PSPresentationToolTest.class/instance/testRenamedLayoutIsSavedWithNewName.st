layout rename tests
testRenamedLayoutIsSavedWithNewName

	| oldName newName saver |
	oldName := 'Old Layout'.
	newName := 'New Layout'.
	self presentation addLayout: self currentSlide duplicate withName: oldName.
	self tool layoutController renameLayoutNamed: oldName to: newName.
	saver := PSPresentationSaver new
		presentation: self presentation;
		yourself.
	self
		assert: (saver presentation slideLayouts includesKey: newName);
		deny: (saver presentation slideLayouts includesKey: oldName);
		assert: (saver layoutDirectoryNameOf: newName) 
		equals: 'layoutNew Layout'
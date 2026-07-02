layout rename tests
testDuplicateLayoutNamesAreRejectedOnRename

	| oldName duplicateName oldLayout duplicateLayout |
	oldName := 'Old Layout'.
	duplicateName := 'Duplicate Layout'.
	self presentation addLayout: self currentSlide duplicate withName: oldName.
	self presentation addLayout: self currentSlide duplicate withName: duplicateName.
	oldLayout := self presentation slideLayouts at: oldName.
	duplicateLayout := self presentation slideLayouts at: duplicateName.
	self
		should: [self tool layoutController renameLayoutNamed: oldName to: duplicateName]
		raise: Error.
	self
		assert: (self presentation slideLayouts at: oldName) equals: oldLayout;
		assert: (self presentation slideLayouts at: duplicateName) equals: duplicateLayout
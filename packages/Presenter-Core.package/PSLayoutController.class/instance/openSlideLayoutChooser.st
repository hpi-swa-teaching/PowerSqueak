layout menu
openSlideLayoutChooser

	self tool presentation slideLayouts
		ifEmpty: [self showNoLayoutsDialog]
		ifNotEmpty: [self openSlideLayoutChooserUnchecked]
layouts
openSlideLayoutChooser
	
	self presentation slideLayouts
		ifEmpty: [self showNoLayoutsDialog]
		ifNotEmpty: [self openSlideLayoutChooserUnchecked]
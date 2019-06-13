layouts
openSlideLayoutChooser
	
	self presentation slideLayouts isEmpty
		ifTrue: [self showNoLayoutsDialog]
		ifFalse: [self openSlideLayoutChooserUnchecked]
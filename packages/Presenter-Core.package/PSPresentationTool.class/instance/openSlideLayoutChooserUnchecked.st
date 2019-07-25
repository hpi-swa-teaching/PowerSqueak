layouts
openSlideLayoutChooserUnchecked
	
	(UIManager default
		chooseFrom: self slideLayoutNames
		values: self slideLayoutCreationBlocks
		title: 'Choose a layout') value
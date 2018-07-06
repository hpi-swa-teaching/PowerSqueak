layouts
openSlideLayoutChooser

	(UIManager default
		chooseFrom: self slideLayoutNames keys
		values: self slideLayoutNames values
		title: 'Choose a predefined layout') value
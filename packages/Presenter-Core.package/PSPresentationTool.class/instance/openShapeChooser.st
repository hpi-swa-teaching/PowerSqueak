createSlideContent
openShapeChooser

	(UIManager default
		chooseFrom: self insertShapeNames keys
		values: self insertShapeNames values
		title: 'Choose a shape') value
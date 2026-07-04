shapes
openShapeChooser

	(UIManager default
		chooseFrom: self insertShapeNames keys
		values: self insertShapeNames values
		title: 'Choose a shape')
			ifNotNil: [:action | action value]
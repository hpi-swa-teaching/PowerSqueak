layout menu
openDeleteLayoutChooser

	self tool presentation hasMinimumLayouts
		ifTrue: [^ self showLastLayoutDialog].
	(UIManager default
		chooseFrom: self slideLayoutNames
		values: self slideLayoutNames
		title: 'Choose a layout to delete')
			ifNotNil: [:aName | self deleteLayoutNamed: aName]
layouts
openDeleteLayoutChooser

	self presentation hasMinimumLayouts
		ifTrue: [^ self showLastLayoutDialog].
	(UIManager default
		chooseFrom: self slideLayoutNames
		values: self slideLayoutNames
		title: 'Choose a layout to delete')
			ifNotNil: [:aName | self deleteLayoutNamed: aName]
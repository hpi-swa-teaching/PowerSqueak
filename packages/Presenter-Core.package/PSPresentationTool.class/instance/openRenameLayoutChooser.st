layouts
openRenameLayoutChooser

	self presentation slideLayouts
		ifEmpty: [self showNoLayoutsDialog]
		ifNotEmpty: [
			(UIManager default
				chooseFrom: self slideLayoutNames
				values: self slideLayoutNames
				title: 'Choose a layout to rename')
					ifNotNil: [:aName | self openLayoutRenameChooserFor: aName]]

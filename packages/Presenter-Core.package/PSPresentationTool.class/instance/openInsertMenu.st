menu bar
openInsertMenu

	| menu |
	menu := MenuMorph new.
	menu defaultTarget: self.
	menu add: 'Text field' action: #newTextField.
	menu add: 'Image' action: #newImageField.
	menu popUpInWorld
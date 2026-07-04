menu bar
openInsertMenu

	| menu |
	menu := MenuMorph new.
	menu defaultTarget: self contentCreationController.
	menu
		add: 'Text field' action: #newTextField;
		add: 'Code field' action: #newCodeField;
		add: 'Image' action: #newImageField;
		add: 'Shape' action: #openShapeChooser.
	menu defaultTarget: self.
	menu
		add: 'Slide Number' action: #insertSlideNumber;
		add: 'Slide Numbers' action: #insertSlideNumbers.
	menu popUpInWorld
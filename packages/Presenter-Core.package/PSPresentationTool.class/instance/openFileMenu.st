menu bar
openFileMenu

	| menu |
	menu := MenuMorph new.
	menu defaultTarget: self.
	menu add: 'Save' action: #savePresentation.
	menu add: 'Load' action: #loadPresentation.
	menu popUpInWorld
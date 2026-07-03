menu bar
openFileMenu

	| menu |
	menu := MenuMorph new.
	menu defaultTarget: self.
	menu
		add: 'Edit name' action: #editName;
		add: 'Save' action: #savePresentation;
		add: 'Load' action: #loadPresentation.
	menu defaultTarget: self exportController.
	menu
		add: 'Export as PNGs' action: #exportAsPNGs;
		add: 'Export selected slides...' action: #exportSelectedAsPNGs.
	menu popUpInWorld
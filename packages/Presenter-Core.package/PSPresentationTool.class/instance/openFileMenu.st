menu bar
openFileMenu

	| menu |
	menu := MenuMorph new.
	menu defaultTarget: self.
	menu add: 'Save' action: #savePresentation.
	menu add: 'Load' action: #loadPresentation.
	menu add: 'Export as PNGs' action: #exportAsPNGs.
	menu popUpInWorld
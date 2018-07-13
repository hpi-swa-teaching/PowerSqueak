menu bar
openSlideMenu

	| menu |
	menu := MenuMorph new.
	menu defaultTarget: self.
	menu add: 'Create slide' action: #createSlide.
	menu add: 'Create slide with layout' action: #openSlideLayoutChooser.
	menu add: 'Delete slide' action: #deleteSlide.
	menu add: 'Move slide' action: #openSlideMoveDialog.
	menu add: 'Duplicate slide' action: #duplicateCurrentSlide.
	menu popUpInWorld
menu bar
openSlideMenu

	| menu |
	menu := MenuMorph new.
	menu defaultTarget: self.
	menu add: 'Create Slide' action: #createSlide.
	menu add: 'Create slide with layout' action: #openSlideLayoutChooser.
	menu add: 'Delete Slide' action: #deleteSlide.
	menu add: 'Move Slide' action: #openSlideMoveDialog.
	menu popUpInWorld
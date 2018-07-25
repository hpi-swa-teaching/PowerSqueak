menu bar
openSlideMenu

	self openMenuWith: {
		{'Create slide' . #createSlide}.
	 	{'Create slide with layout' . #openSlideLayoutChooser}.
	 	{'Delete slide' . #deleteSlide}.
		{'Move slide' . #openSlideMoveDialog}.
		{'Duplicate slide' . #duplicateCurrentSlide}
	}
	
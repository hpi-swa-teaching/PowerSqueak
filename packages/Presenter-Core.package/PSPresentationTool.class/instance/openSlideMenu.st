menu bar
openSlideMenu

	self openMenuWith: {
		{'Create slide' . #createSlide}.
	 	{'Create slide with layout' . #openSlideLayoutChooser}.
		self hideSlideData.
		{'Save slide as layout' . #openLayoutNameChooser}.
	 	{'Delete slide' . #deleteSlide}.
		{'Move slide' . #openSlideMoveDialog}.
		{'Duplicate slide' . #duplicateCurrentSlide}
	}
	
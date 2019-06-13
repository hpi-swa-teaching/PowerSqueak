layouts
openSlideLayoutChooserUnchecked
	
	(UIManager default
		chooseFrom: self presentation slideLayouts keys
		values: (self presentation slideLayouts values collect: [:aSlide | [self createSlideFromLayout: aSlide]])
		title: 'Choose a predefined layout') value
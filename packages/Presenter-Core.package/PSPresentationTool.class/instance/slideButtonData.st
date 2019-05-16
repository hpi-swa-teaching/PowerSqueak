toolbuilder buttons
slideButtonData

	^ Dictionary withAll: {	
		#size -> self class bigButtonSize.
		#name -> #SlideButton.
		#label -> 'Slide'.
		#action -> #openSlideMenu.
		#color -> self menuBarColor}
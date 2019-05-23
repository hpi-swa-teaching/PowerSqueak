toolbuilder buttons
slideButtonData

	^ Dictionary withAll: {	
		#size -> #bigButtonSize.
		#name -> #SlideButton.
		#label -> 'Slide'.
		#action -> #openSlideMenu.
		#color -> self menuBarColor}
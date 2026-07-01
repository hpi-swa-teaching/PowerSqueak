button data
slideButtonData

	^ Dictionary withAll: {	
		#size -> #bigButtonSize.
		#name -> #SlideButton.
		#label -> 'Slide'.
		#action -> #openSlideMenu.
		#color -> tool menuBarColor}
toolbuilder buttons
slideButtonData

	^ Dictionary withAll: {	
		#frame -> (0.2@0.0 corner: 0.3@1.0).
		#name -> #SlideButton.
		#label -> 'Slide'.
		#action -> #openSlideMenu.
		#color -> self menuBarColor}
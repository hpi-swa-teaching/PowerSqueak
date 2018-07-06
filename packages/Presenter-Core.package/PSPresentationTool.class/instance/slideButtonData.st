toolbuilder
slideButtonData

	^ Dictionary withAll: {	
		#frame -> (0.2@0.0 corner: 0.3@1.0).
		#name -> #sldieButton.
		#label -> 'Slide'.
		#action -> #openSlideMenu.
		#color -> self menuBarColor}
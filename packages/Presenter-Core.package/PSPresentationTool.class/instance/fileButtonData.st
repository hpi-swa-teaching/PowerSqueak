toolbuilder buttons
fileButtonData

	^ Dictionary withAll: {	
		#frame -> (0.0@0.0 corner: 0.1@1.0).
		#name -> #FileButton.
		#label -> 'File'.
		#action -> #openFileMenu.
		#color -> self menuBarColor}
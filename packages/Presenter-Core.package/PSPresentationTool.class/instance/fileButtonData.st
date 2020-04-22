toolbuilder buttons
fileButtonData

	^ Dictionary withAll: {	
		#size -> #bigButtonSize.
		#name -> #FileButton.
		#label -> 'File'.
		#action -> #openFileMenu.
		#color -> self menuBarColor}
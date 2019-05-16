toolbuilder buttons
fileButtonData

	^ Dictionary withAll: {	
		#size -> self class bigButtonSize.
		#name -> #FileButton.
		#label -> 'File'.
		#action -> #openFileMenu.
		#color -> self menuBarColor}
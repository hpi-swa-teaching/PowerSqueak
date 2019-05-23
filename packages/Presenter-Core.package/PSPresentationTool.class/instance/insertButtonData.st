toolbuilder buttons
insertButtonData

	^ Dictionary withAll: {	
		#size -> #bigButtonSize.
		#name -> #InsertButton.
		#label -> 'Insert'.
		#action -> #openInsertMenu.
		#color -> self menuBarColor}
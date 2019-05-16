toolbuilder buttons
insertButtonData

	^ Dictionary withAll: {	
		#size -> self class bigButtonSize.
		#name -> #InsertButton.
		#label -> 'Insert'.
		#action -> #openInsertMenu.
		#color -> self menuBarColor}
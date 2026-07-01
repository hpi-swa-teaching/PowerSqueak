button data
insertButtonData

	^ Dictionary withAll: {	
		#size -> #bigButtonSize.
		#name -> #InsertButton.
		#label -> 'Insert'.
		#action -> #openInsertMenu.
		#color -> tool menuBarColor}
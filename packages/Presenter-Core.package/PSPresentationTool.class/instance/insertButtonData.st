toolbuilder
insertButtonData

	^ Dictionary withAll: {	
		#frame -> (0.1@0.0 corner: 0.2@1.0).
		#name -> #InsertButton.
		#label -> 'Insert'.
		#action -> #openInsertMenu}
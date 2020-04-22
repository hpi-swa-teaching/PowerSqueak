buttons
duplicateData

	 ^ Dictionary withAll: {
			#label -> 'Duplicate'.
			#contextMenuLabel -> 'Duplicate morph'.
			#action -> #copyChildToHand.
			#size -> #bigButtonSize.
			#name -> #duplicateButton.
			#model -> self}
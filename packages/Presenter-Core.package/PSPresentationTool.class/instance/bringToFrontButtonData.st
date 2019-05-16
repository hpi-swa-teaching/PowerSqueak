toolbuilder buttons
bringToFrontButtonData

	^ Dictionary withAll: {	
		#size -> self class bigButtonSize.
		#name -> #bringToFrontButton.
		#label -> 'bring to Front'.
		#action -> #bringToFront}
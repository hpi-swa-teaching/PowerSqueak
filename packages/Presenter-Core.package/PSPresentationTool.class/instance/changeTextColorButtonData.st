toolbuilder buttons
changeTextColorButtonData

	^ Dictionary withAll: {	
		#size -> self class bigButtonSize.
		#name -> #changeTextColorButton.
		#label -> 'changeTextColor'.
		#action -> #changeTextColor}
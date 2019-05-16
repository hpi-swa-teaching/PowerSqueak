toolbuilder buttons
changeTextSizeButtonData

	^ Dictionary withAll: {	
		#size -> self class bigButtonSize.
		#name -> #changeTextSizeButton.
		#label -> 'changeTextSize'.
		#action -> #changeTextSize}
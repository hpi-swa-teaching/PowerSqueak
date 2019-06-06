toolbuilder buttons
createLayoutSlideButtonData

	^ Dictionary withAll: {	
		#size -> #hugeButtonSize.
		#name -> #CreateLayoutSlideButton.
		#label -> 'with Layout'.
		#action -> #openSlideLayoutChooser}
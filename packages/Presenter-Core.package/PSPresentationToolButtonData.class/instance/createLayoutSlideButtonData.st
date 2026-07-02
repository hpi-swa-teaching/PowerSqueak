button data
createLayoutSlideButtonData

	^ Dictionary withAll: {
		#model -> self tool layoutController.
		#size -> #hugeButtonSize.
		#name -> #CreateLayoutSlideButton.
		#label -> 'with Layout'.
		#action -> #openSlideLayoutChooser}
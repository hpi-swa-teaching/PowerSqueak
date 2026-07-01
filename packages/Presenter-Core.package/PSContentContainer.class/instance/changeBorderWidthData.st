buttons
changeBorderWidthData

	 ^ Dictionary withAll: {
			#label -> 'Border width'.
			#contextMenuLabel -> 'Change the border width'.
			#action -> #changeBorderWidth.
			#size -> #bigButtonSize.
			#name -> #changeBorderWidthButton.
			#model -> self}
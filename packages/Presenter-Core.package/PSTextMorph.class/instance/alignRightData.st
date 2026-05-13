menu commands
alignRightData

	^ Dictionary withAll: {
		#contextMenuLabel -> 'Align right'.
		#action -> #alignRight.
		#help -> 'Aligns the text to the right'.
		#noButton -> true.
		#model -> self}
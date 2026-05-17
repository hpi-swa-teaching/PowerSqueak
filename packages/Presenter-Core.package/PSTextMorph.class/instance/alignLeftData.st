menu commands
alignLeftData

	^ Dictionary withAll: {
		#contextMenuLabel -> 'Align left'.
		#action -> #alignLeft.
		#help -> 'Aligns the text to the left'.
		#noButton -> true.
		#model -> self}
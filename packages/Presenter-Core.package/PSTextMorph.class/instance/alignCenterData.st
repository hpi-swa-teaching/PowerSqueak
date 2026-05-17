menu commands
alignCenterData

	^ Dictionary withAll: {
		#contextMenuLabel -> 'Align center'.
		#action -> #alignCenter.
		#help -> 'Centers the text'.
		#noButton -> true.
		#model -> self}
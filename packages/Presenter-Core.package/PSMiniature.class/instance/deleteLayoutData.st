context menu
deleteLayoutData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Delete Layout'.
		#action -> #deleteLayout.
		#model -> self}
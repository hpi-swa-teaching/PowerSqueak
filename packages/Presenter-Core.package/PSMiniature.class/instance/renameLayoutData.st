context menu
renameLayoutData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Rename Layout'.
		#action -> #renameLayout.
		#model -> self}

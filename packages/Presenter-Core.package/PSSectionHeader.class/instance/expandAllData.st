context menu
expandAllData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Expand All Sections'.
		#action -> #expandAll.
		#model -> self}

context menu
collapseAllData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Collapse All Sections'.
		#action -> #collapseAll.
		#model -> self}

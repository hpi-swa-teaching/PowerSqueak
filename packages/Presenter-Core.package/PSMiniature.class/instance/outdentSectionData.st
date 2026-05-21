context menu
outdentSectionData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Outdent Section'.
		#action -> #outdentSection.
		#model -> self}

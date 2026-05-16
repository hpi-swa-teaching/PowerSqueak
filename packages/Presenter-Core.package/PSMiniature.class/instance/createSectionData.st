context menu
createSectionData

	 ^ Dictionary withAll: {
			#noButton -> true.
			#contextMenuLabel -> 'Create Section'.
			#action -> #createSection.
			#model -> self}

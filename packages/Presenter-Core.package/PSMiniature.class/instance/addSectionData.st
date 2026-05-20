context menu
addSectionData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Create Section here'.
		#action -> #addSection.
		#model -> self}

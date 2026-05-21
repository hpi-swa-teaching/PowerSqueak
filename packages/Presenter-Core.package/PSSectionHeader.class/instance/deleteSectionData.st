context menu
deleteSectionData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Delete Section'.
		#action -> #deleteSection.
		#model -> self}

context menu
renameSectionData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Rename Section'.
		#action -> #renameSection.
		#model -> self}

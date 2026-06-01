context menu
indentSectionData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Indent Section'.
		#action -> #indentSection.
		#model -> self}

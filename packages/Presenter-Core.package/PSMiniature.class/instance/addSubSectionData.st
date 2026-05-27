context menu
addSubSectionData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> 'Start sub-section here'.
		#action -> #addSubSection.
		#model -> self}

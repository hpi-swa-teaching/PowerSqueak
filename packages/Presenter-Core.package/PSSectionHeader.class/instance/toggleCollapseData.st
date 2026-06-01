context menu
toggleCollapseData

	^ Dictionary withAll: {
		#noButton -> true.
		#contextMenuLabel -> (self section isCollapsed
			ifTrue: ['Expand Section']
			ifFalse: ['Collapse Section']).
		#action -> #toggleCollapse.
		#model -> self}

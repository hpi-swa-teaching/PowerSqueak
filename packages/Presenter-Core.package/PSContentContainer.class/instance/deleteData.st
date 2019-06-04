as yet unclassified
deleteData

	 ^ Dictionary withAll: {
			#label -> 'Delete'.
			#contextMenuLabel -> 'Delete'.
			#action -> #deleteContent.
			#size -> #bigButtonSize.
			#name -> #DeleteButton.
			#model -> self}
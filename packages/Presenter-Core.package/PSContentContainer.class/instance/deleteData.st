as yet unclassified
deleteData

	 ^ Dictionary withAll: {
			#label -> 'Delete'.
			#contextMenuLabel -> 'Delete'.
			#action -> #abandon.
			#size -> #bigButtonSize.
			#name -> #DeleteButton.
			#model -> self}
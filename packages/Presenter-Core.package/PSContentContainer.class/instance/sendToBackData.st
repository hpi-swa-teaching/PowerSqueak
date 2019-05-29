as yet unclassified
sendToBackData

	 ^ Dictionary withAll: {
			#label -> 'To Back'.
			#contextMenuLabel -> 'Send to back'.
			#action -> #goBehind.
			#size -> #bigButtonSize.
			#name -> #sendToBackButton.
			#model -> self}
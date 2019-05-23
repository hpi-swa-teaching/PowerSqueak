menu commands
changeTextSizeData

	 ^ Dictionary withAll: {
			#label -> 'Text size'.
			#contextMenuLabel -> 'Change text size'.
			#action -> #showTextSizeDialog.
			#help -> 'changes the currently selected text or the whole text, if none is selected'.
			#size -> #bigButtonSize.
			#name -> #ChangeTextSizeButton.
			#model -> self}
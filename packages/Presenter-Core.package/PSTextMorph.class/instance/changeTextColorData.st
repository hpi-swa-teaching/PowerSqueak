menu commands
changeTextColorData

	 ^ Dictionary withAll: {
			#label -> 'Text color'.
			#contextMenuLabel -> 'Change text color'.
			#action -> #showTextColorDialog.
			#help -> 'Changes the color of the currently selected text or the whole text, if none is selected'.
			#size -> #bigButtonSize.
			#name -> #ChangeTextSizeButton.
			#model -> self}
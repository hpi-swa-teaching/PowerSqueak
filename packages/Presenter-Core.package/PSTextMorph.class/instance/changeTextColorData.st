menu commands
changeTextColorData

	 ^ Dictionary withAll: {
			#label -> 'Change text color'.
			#action -> #showTextColorDialog.
			#help -> 'changes the currently selected text or the whole text, if none is selected'.
			#size -> #bigButtonSize.
			#name -> #ChangeTextSizeButton.
			#model -> self}
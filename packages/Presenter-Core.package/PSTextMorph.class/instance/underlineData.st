menu commands
underlineData

	^ Dictionary withAll: {
		#label -> 'Underline'.
		#contextMenuLabel -> 'Toggle underline'.
		#action -> #toggleUnderline.
		#help -> 'Toggles underline formatting for the selected text or the whole text, if none is selected'.
		#size -> #bigButtonSize.
		#name -> #ToggleUnderlineButton.
		#model -> self}
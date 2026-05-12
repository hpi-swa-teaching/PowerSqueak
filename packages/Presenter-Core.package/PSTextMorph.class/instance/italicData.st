menu commands
italicData

	^ Dictionary withAll: {
		#label -> 'Italic'.
		#contextMenuLabel -> 'Toggle italic'.
		#action -> #toggleItalic.
		#help -> 'Toggles italic formatting for the selected text or the whole text, if none is selected'.
		#size -> #bigButtonSize.
		#name -> #ToggleItalicButton.
		#model -> self}
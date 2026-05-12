menu commands
boldData

	^ Dictionary withAll: {
		#label -> 'Bold'.
		#contextMenuLabel -> 'Toggle bold'.
		#action -> #toggleBold.
		#help -> 'Toggles bold formatting for the selected text or the whole text, if none is selected'.
		#size -> #bigButtonSize.
		#name -> #ToggleBoldButton.
		#model -> self}
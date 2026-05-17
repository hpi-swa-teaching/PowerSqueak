layouts
openLayoutRenameChooserFor: aString

	self
		askForInputWithQuestion: 'Enter a new name for your Layout'
		withInitial: aString
		andDo: [:userInput |
			self renameLayoutNamed: aString to: userInput]
		onError: 'Layout name already exists'

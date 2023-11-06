menu bar
editName

	self askForInputWithQuestion: 'Change the name of the presentation'
		withInitial: self presentation name 
		andDo: [:input | self presentation name: input]
		onError: 'Not a valid name'.

	self changed: #windowTitle.
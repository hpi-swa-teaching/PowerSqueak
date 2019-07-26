ui
askForPresentationName 

	^ (UIManager default 
		request: 'Please enter a presentation name: ' 
		initialAnswer: 'Presentation' 
		centerAt: World center)
			ifNil: [''] "Workaround for UIManager sometimes returning nil, and sometimes empty string when cancelled"
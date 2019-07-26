as yet unclassified
load

	| presentations presentationName |
	presentations := self defaultDirectory directoryNames.
	presentationName := UIManager default 
							chooseFrom: presentations 
							values: presentations 
							title: self loadQuestionMessage.
	presentationName 
		ifNil: [^ nil]
		ifNotNil: [^ self new loadPresentationFromDirectory: self defaultDirectory / presentationName]
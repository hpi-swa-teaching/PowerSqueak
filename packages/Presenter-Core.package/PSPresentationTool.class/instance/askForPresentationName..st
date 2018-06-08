as yet unclassified
askForPresentationName: aFileDirectory

	| presentationName directory  |
	presentationName := self askUserForPresentationName.
	directory := (aFileDirectory / presentationName).
	directory exists 
		ifTrue: [self warn: 'The name you chose is already used. Do you want to overwrite the Presentation?' 
			trueChoice: [directory recursiveDelete. 
				^ self createDirectory: presentationName in: aFileDirectory] 
			falseChoice: [^ self askForPresentationName: aFileDirectory]]
		ifFalse: [^ directory]
as yet unclassified
getValidPresentationName: aFileDirectory

	| presentationName directory  |
	presentationName := self askForPresentationName.
	directory := (aFileDirectory / presentationName).
	directory exists 
		ifTrue: [self warn: 'The name you chose is already used. Do you want to overwrite the Presentation?' 
			trueChoice: [directory recursiveDelete. 
				^ self createDirectory: presentationName in: aFileDirectory] 
			falseChoice: [^ self getValidPresentationName: aFileDirectory]]
		ifFalse: [^ directory assureExistence]
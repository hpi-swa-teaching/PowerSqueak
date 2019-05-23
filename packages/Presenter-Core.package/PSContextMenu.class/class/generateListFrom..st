instance creation
generateListFrom: aCollection
	
	| anotherCollection |
	anotherCollection := aCollection collect:
		[:aDictionary | {
			aDictionary at: #contextMenuLabel.
			aDictionary at: #action.
			aDictionary at: #help ifAbsent: ''} asArray].
	
 	^ anotherCollection asArray
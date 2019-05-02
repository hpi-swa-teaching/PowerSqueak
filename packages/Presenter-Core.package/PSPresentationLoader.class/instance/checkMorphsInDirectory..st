directory checking
checkMorphsInDirectory: aDirectory

	^ aDirectory fileNames allSatisfy: [:each | 
				each matchesRegex: '[0-9]+.morph']	
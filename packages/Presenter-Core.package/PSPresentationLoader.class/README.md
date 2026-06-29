A PSPresentationLoader loads a PSPresentation from a given file directory. For this purpose PSPresentationLoader>>#loadPresentationFromDirectory is used and returns the presentation.

Instance Variables
	fileErrors:		<Dictionary>
	slideErrors: 	<Dictionary>
	missingMorphErrors:		<Dictionary>
	layoutsDirectoryMissing:	<Boolean>

fileErrors:
	- Dictionary containing the number of files that could not be loaded per slide

slideReport
	- Dictionary containing the number of morphs per slide that could not be loaded
	
missingMorphErrors
	- Dictionary containing the number of expected morph files per slide or layout that are missing from the file directory

layoutsDirectoryMissing
	- Indicates whether the layouts directory is missing

A PSPresentationLoader loads a PSPresentation from a given file directory. For this purpose PSPresentationLoader>>#loadPresentationFromDirectory is used and returns the presentation.

Instance Variables
	fileErrors:		<Dictionary>
	slideErrors: 	<Dictionary>
	presentation:		<PSPresentation>

fileErrors:
	- Dictionary containing the number of files that could not be loaded per slide

slideReport
	- Dictionary containing the number of morphs per slide that could not be loaded

presentation
	- The presentation the loader is loading
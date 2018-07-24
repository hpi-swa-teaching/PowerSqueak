A PSPresentationLoader loads a PSPresentation from a given file directory. Therefore PSPresentationLoader>>#loadPresentationFromDirectory is used and returns the presentation.

Instance Variables
	errorReport:		<Dictionary>
	presentation:		<PSPresentation>

errorReport
	- Dictionary containing the number of morphs per slide that could not be loaded

presentation
	- The presentation the loader is loading
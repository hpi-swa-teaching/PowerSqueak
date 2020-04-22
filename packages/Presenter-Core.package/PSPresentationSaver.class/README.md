A PSPresentationSaver is resposible for saving a PSPresentation. For that it will also
ask for the target directory. It should be used by invoking 
PSPresentationSaver save: aPresentarion.

Instance Variables
	presentation:		<PSPresentation>
	presentationDirectory:		<FileDirectory>

presentation
	- This is the presentation to be saved.

presentationDirectory
	- The path to where the presentation shall be saved.

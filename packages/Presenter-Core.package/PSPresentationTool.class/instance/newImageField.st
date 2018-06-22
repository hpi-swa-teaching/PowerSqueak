createSlideContent
newImageField

	| fileName |
	fileName := FileChooserDialog 
		openOn: FileDirectory default 
		suffixList: ImageReadWriter allTypicalFileExtensions
		label: 'Select an image'.
	fileName ifNotNil: [self openImageField: fileName]
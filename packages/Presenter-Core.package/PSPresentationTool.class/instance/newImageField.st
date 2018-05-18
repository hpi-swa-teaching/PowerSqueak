createSlideContent
newImageField

	| fileName |
	fileName := FileChooserDialog 
		openOn: FileDirectory default 
		suffixList: self imageFileExtensions
		label: 'Select an image'.
	fileName ifNotNil: [self openImageField: fileName].
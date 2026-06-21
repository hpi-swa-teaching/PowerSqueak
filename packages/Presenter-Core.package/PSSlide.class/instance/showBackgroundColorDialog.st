styling
showBackgroundColorDialog

	| picker |
	self closeBackgroundColorDialog.
	self setProperty: #ignoreNextBackgroundColorChange toValue: true.
	picker := (NewColorPickerMorph
		on: self
		originalColor: self color
		setColorSelector: #changeBackgroundColor:)
			openNear: self fullBoundsInWorld;
			yourself.
	self setProperty: #backgroundColorDialog toValue: picker.
	^ picker
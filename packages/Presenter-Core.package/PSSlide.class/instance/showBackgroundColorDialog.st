styling
showBackgroundColorDialog

	| picker |
	self setProperty: #ignoreNextBackgroundColorChange toValue: true.
	picker := (NewColorPickerMorph
		on: self
		originalColor: self color
		setColorSelector: #changeBackgroundColor:)
			openNear: self fullBoundsInWorld;
			yourself.
	self registerColorDialog: picker.
	^ picker
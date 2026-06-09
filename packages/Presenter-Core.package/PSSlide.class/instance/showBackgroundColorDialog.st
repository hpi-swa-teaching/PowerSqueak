styling
showBackgroundColorDialog

	| picker |
	self closeBackgroundColorDialog.
	picker := (NewColorPickerMorph on: self originalColor: self color setColorSelector: #color:)
		openNear: self fullBoundsInWorld;
		yourself.
	self setProperty: #backgroundColorDialog toValue: picker.
	^ picker
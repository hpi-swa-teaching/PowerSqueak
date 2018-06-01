as yet unclassified
showFontColorDialog

	| color |
	color := self textMorph perform: #selectionColor withArguments: {} inSuperclass: TextMorph.
	(NewColorPickerMorph on: self originalColor: color setColorSelector: #setLocalFontColor:) openNear: self fullBoundsInWorld
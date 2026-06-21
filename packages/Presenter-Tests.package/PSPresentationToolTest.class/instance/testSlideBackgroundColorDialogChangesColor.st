slide styling tests
testSlideBackgroundColorDialogChangesColor

	| picker color |
	color := Color red.
	[picker := self currentSlide showBackgroundColorDialog.
	picker selectedColor: color.
	self assert: self currentSlide color equals: color ]
	ensure: [
		picker ifNotNil: [picker abandon].
		self currentSlide closeBackgroundColorDialog]
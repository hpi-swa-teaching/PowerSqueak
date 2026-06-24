display
scaledLogoForm

	| form scale |
	form := PSPresentationTool logoForm.
	scale := self logoHeight / form height.
	^ form scaledToSize: (form extent * scale) rounded

coloring
recolorBorder
	"Open a color dialog for the border color, independent of the fill color."

	^ self
		openColorDialogWith: self content borderColor
		selecting: #changeContentBorderColor:
		on: self
	
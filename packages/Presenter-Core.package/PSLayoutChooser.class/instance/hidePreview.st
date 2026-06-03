preview
hidePreview

	(self valueOfProperty: #previewMorph) ifNotNil: [:aMorph |
		aMorph delete.
		self removeProperty: #previewMorph]


private
hidePreview

	previewMorph ifNotNil: [:aMorph |
		aMorph delete.
		previewMorph := nil]

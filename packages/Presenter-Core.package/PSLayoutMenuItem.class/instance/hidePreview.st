private
hidePreview

	self previewMorph ifNotNil: [:aMorph |
		aMorph delete.
		self previewMorph: nil]

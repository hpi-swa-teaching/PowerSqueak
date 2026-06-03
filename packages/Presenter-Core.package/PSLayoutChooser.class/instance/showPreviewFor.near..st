preview
showPreviewFor: aLayout near: aRow

	| preview |
	self hidePreview.
	preview := self thumbnailFor: aLayout.
	self setProperty: #previewMorph toValue: preview.
	preview position: aRow boundsInWorld topRight + (self class contentSpacing @ 0).
	self owner
		ifNil: [self world ifNotNil: [:aWorld | aWorld addMorphFront: preview]]
		ifNotNil: [:anOwner | anOwner addMorphFront: preview]

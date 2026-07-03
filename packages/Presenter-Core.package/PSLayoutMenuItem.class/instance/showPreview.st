private
showPreview

	| form image |
	self hidePreview.
	form := self target layoutPreviewFor: self layout.
	image := ImageMorph new
		image: form;
		borderWidth: self class previewBorderWidth;
		borderColor: Color gray;
		position: self boundsInWorld topRight + self class previewOffset;
		yourself.
	self previewMorph: image.
	self world ifNotNil: [:aWorld | aWorld addMorphFront: self previewMorph]
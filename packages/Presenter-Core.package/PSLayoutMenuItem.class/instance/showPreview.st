private
showPreview

	| form image |
	self hidePreview.
	form := target layoutPreviewFor: self layout.
	image := ImageMorph new
		image: form;
		borderWidth: 1;
		borderColor: Color gray;
		position: self boundsInWorld topRight + (8 @ 0);
		yourself.
	previewMorph := image.
	self world ifNotNil: [:aWorld | aWorld addMorphFront: image]

miniatures
miniatureRowFor: aSlide at: anIndex

	^ PSMiniatureRow
		forMiniature: (self miniatureOf: aSlide)
		indent: (self tool presentation sectionsCoveringSlideAt: anIndex) size
			* PSSectionHeader indentStep
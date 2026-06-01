slide miniatures
miniatureRowFor: aSlide at: anIndex

	^ PSMiniatureRow
		forMiniature: (self miniatureOf: aSlide)
		indent: (self presentation sectionsCoveringSlideAt: anIndex) size
			* PSSectionHeader indentStep

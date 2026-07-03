layout preview
layoutPreviewFor: aLayout extent: anExtent

	| form |
	form := Form extent: anExtent depth: self class previewFormDepth.
	form fillColor: self class previewBackgroundColor.
	aLayout submorphsDo: [:container |
		container layoutFrame ifNotNil: [:frame | | origin corner box |
			origin := (frame leftFraction @ frame topFraction) * anExtent.
			corner := (frame rightFraction @ frame bottomFraction) * anExtent.
			box := origin asIntegerPoint corner: corner asIntegerPoint.
			form
				fill: (box insetBy: self class previewBorderWidth)
				fillColor: self class previewBoxColor.
			form
				border: box
				width: self class previewBorderWidth
				rule: Form over
				fillColor: self class previewBorderColor]].
	^ form
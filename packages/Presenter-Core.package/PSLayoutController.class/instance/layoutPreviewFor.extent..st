layout preview
layoutPreviewFor: aLayout extent: anExtent

	| form |
	form := Form extent: anExtent depth: 32.
	form fillColor: (Color gray: 0.6).
	aLayout submorphsDo: [:container |
		container layoutFrame ifNotNil: [:frame | | origin corner box |
			origin := (frame leftFraction @ frame topFraction) * anExtent.
			corner := (frame rightFraction @ frame bottomFraction) * anExtent.
			box := origin asIntegerPoint corner: corner asIntegerPoint.
			form fill: (box insetBy: 1) fillColor: (Color gray: 0.85).
			form border: box width: 1 rule: Form over fillColor: Color gray]].
	^ form
building
addIndentSpacer: anInteger

	anInteger > 0 ifFalse: [^ self].
	self addMorphBack: (Morph new
		extent: anInteger @ 1;
		color: Color transparent;
		yourself)

instance creation
forMiniature: aPSMiniature indent: anInteger

	^ self new
		miniature: aPSMiniature;
		addIndentSpacer: anInteger;
		addMorphBack: aPSMiniature;
		yourself

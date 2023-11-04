submorphs - layers
morphicLayerNumber
	"Select a morphic layer that is somewhere between progress bar morphs and navigation layer (e.g. the DockingBarMorph)"
	^ self isInPresentationMode
		ifTrue: [self class progressLayer + self class navigatorLayer // 2]
		ifFalse: [super morphicLayerNumber]
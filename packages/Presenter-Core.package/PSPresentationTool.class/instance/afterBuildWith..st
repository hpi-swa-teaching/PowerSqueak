toolbuilder
afterBuildWith: aBuilder

	aBuilder class = MorphicToolBuilder
		ifTrue: [self styleDropDownButtons: aBuilder]
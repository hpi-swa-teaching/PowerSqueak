toolbuilder
afterBuildWith: aBuilder

	aBuilder class = MorphicToolBuilder
		ifTrue: [self styleMenuBar: aBuilder]
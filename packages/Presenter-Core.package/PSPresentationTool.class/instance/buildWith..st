toolbuilder
buildWith: aBuilder

	| window windowSpec |
	windowSpec := self createPresentationToolSpec: aBuilder.
	window := aBuilder build: windowSpec.
	self afterBuildWith: aBuilder.	
	^ window
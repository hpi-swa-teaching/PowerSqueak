toolbuilder
buildWith: aBuilder

	| window windowSpec |
	self selectIndex: 1.
	windowSpec := self createScriptingToolSpec: aBuilder.
	window := aBuilder build: windowSpec.
	self afterBuildWith: aBuilder.
	^ window
toolbuilder
createScriptingToolSpec: aBuilder

	| windowSpec |
	windowSpec := self createWindowSpec: aBuilder.
	windowSpec children addAll: (self createAllSpecsWith: aBuilder).
	^ windowSpec
toolbuilder
createScriptingToolSpec: aBuilder

	| windowSpec |
	windowSpec := self createWindowSpec: aBuilder.
	(self createAllSpecsWith: aBuilder) do: [:each | windowSpec children add: each].
	^ windowSpec
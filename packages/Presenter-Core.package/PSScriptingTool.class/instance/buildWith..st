nil
buildWith: aBuilder

	| window windowSpec |
	windowSpec := self createScriptingAPISpec: aBuilder.
	(self createAllSpecsWith: aBuilder) do: [:each | windowSpec children add: each].
	window := aBuilder build: windowSpec.
	self setAcceptAction: [:aText | self accept: aText] in: window.
	^ window
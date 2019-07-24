nil
buildWith: aBuilder

	| window windowSpec |
	self selectIndex: 1.
	windowSpec := self createScriptingAPISpec: aBuilder.
	window := aBuilder build: windowSpec.
	self setAcceptAction: [:aText | self accept: aText] in: window.
	self codePane: (aBuilder widgetAt: #CodePane). 
	^ window
presentation loading
morph: aMorph survivesOneCycleIn: aWorld
	"Some morphs may be loaded successfully but throw errors every world cycle therefore crashing the image."
	"World doOneCycle consumes all errors and opens the corresponding debuggers. Therefore we cannot do normal error checking but we can compare the debuggers."
	| debuggersBefore newDebuggers |
	debuggersBefore := Debugger allInstances.
	aMorph openInWorld: aWorld.
	World doOneCycle.
	newDebuggers := Debugger allInstances reject: [:each |
		debuggersBefore includes: each].
	newDebuggers do: [:each | each abandon].
	newDebuggers size > 0
		ifTrue: [^ false].
	^ true
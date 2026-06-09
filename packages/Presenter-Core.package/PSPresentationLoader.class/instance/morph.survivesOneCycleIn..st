morph loading
morph: aMorph survivesOneCycleIn: aWorld
	"Some morphs may be loaded successfully but throw errors every world cycle therefore crashing the image."
	"World doOneCycle consumes all errors and opens the corresponding debuggers. Therefore we cannot do normal error checking but we can compare the debuggers."
	| debuggersBefore newDebuggers |
	debuggersBefore := Debugger allInstances.
	aMorph openInWorld: aWorld.
	[aWorld doOneCycle.
	aMorph step]
		on: Error
		do: [^false].
	newDebuggers := Debugger allInstances difference: debuggersBefore.
	newDebuggers do: [:each | each abandon].
	^ newDebuggers isEmpty
morph loading
morph: aMorph survivesOneCycleIn: aWorld
	"A loaded morph can throw on every world cycle and crash the image. doOneCycle swallows such errors into debuggers, so detect failure by diffing the open debuggers."
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
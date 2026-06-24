execution
execute

	executed
		ifTrue: [self restoreAfterState]
		ifFalse: [self executeFirstTime]
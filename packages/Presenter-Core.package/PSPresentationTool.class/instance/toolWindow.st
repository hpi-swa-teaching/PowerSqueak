layouts
toolWindow

	^ self dependents
		detect: [:each | each isKindOf: SystemWindow]
		ifNone: [nil]

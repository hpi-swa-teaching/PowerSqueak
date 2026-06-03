instance creation
openFor: aPresentationTool

	| chooser container |
	chooser := self new
		tool: aPresentationTool;
		buildEntries;
		yourself.

	container := aPresentationTool toolWindow
		ifNil: [aPresentationTool world ifNil: [World]].

	container addMorphFront: chooser.
	chooser fullBounds.
	chooser center: container boundsInWorld center.
	chooser comeToFront.

	^ chooser
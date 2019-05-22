accessing
convertContextMenuToSpec

	| aSpecificationCollection contextMenuItems |
	aSpecificationCollection := Set new.
	(self content hasProperty: #wantsCustomContextMenu)
		ifTrue:[contextMenuItems := self content customContextMenuContent asSet copy].
	contextMenuItems remove: #- ifAbsent: []. 
	contextMenuItems do: [:each |
		aSpecificationCollection add: 
			(Dictionary withAll: {
				#size -> (0.1 @ 0.5).
				#label -> (each at: 1).
				#action -> (each at: 2).
				#help -> (each at: 3).
				}
			)].
		
	 ^ aSpecificationCollection.
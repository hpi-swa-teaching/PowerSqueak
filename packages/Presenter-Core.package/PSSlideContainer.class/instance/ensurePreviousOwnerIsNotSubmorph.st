presentation mode
ensurePreviousOwnerIsNotSubmorph

	| morph window |
	morph := self findDeepSubmorphThat: [:m | m = self previousOwner ] ifAbsent: [nil].
	morph ifNotNil: [ 
		window := morph model window.
		window owner removeMorph: window.
		window openInWorld.]
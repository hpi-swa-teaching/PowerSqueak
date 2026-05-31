presentation mode
ensurePreviousOwnerIsNotSubmorph
	"Reparenting to a previous owner that is a submorph of self would crash the image."
	| morph window |
	morph := self findDeepSubmorphThat: [:m | m = self previousOwner ] ifAbsent: [nil].
	morph ifNotNil: [ 
		window := self previousOwner owner.
		window owner removeMorph: window.
 		window openInWorld]
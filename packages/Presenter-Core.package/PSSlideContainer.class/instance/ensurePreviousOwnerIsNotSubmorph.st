presentation mode
ensurePreviousOwnerIsNotSubmorph
	"We have to make sure our previous owner is not a submorph of ourselves because otherwise setting me as submorph of this owner would crash the image."
	| morph window |
	morph := self findDeepSubmorphThat: [:m | m = self previousOwner ] ifAbsent: [nil].
	morph ifNotNil: [ 
		window := morph model window.
		window owner removeMorph: window.
 		window openInWorld] 
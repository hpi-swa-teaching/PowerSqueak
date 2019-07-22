accessing
codeSoFar
	
	| blockString | 
	blockString := self receiver 
		valueOfProperty: self currentMorphProperty 	
		ifAbsent: [ ^ ''].
	^ blockString copyFrom: (blockString indexOf: $|) +1 to: (blockString lastIndexOf: $]) -1 .
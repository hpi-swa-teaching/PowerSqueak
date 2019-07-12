accessing
codeSoFar
	
	| blockString | 
	blockString := self receiver 
		valueOfProperty: (self morphPropertyOf: self selectedMethod) 	
		ifAbsent: [ ^ ''].
	^ blockString copyFrom: (blockString indexOf: $|) +1 to: (blockString lastIndexOf: $]) -1 .
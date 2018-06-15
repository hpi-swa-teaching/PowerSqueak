instance creation
from: anAssociationOrString

	^ anAssociationOrString isString 
		ifTrue: [self named: anAssociationOrString]
		ifFalse: [self createDirectoryStructure: anAssociationOrString]
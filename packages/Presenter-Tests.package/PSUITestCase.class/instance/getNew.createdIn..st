helper functions
getNew: aClass createdIn: aBlock

	| instancesBefore |
	instancesBefore := aClass allInstances.
	aBlock value.
	^ aClass allInstances difference: instancesBefore
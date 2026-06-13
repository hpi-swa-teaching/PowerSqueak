as yet unclassified
testInitializeHasFourGreenDigits
	| timer |

	timer := PSPresentationTimer new.
	self assert: timer submorphs size equals: 4.
	self assert: timer color equals: Color green

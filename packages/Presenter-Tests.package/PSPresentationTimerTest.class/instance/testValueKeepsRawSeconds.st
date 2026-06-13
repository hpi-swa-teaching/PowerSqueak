as yet unclassified
testValueKeepsRawSeconds
	"The raw seconds stay in value so the inherited pause/resume keep counting correctly."
	| timer |

	timer := PSPresentationTimer new.
	timer value: 65.
	self assert: timer value equals: 65

timer tests
testValueKeepsRawSeconds
	| timer |

	timer := PSPresentationTimer new.
	timer value: 65.
	self assert: timer value equals: 65

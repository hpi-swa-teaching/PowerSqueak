predicate tests
testContentContainerEventHandlers
	| container |
	container := PSContentContainer new.
	self assert: (container handlesMouseOver: nil).
	container mouseLeave: nil.
	container inspectContent.
	container recordResizeFromRememberedLocation

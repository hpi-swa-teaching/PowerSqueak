event handling
mouseDown: anEvent

	anEvent hand
		waitForClicksOrDrag: self
		event: anEvent
		selectors: #(#click: nil nil nil)
		threshold: HandMorph dragThreshold

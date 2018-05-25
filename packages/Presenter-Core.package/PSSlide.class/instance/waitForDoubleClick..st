event handling
waitForDoubleClick: evt

	evt hand
		waitForClicksOrDrag: self 
		event: evt 
		selectors: #( #click: #doubleClick: #doubleClickTimeout: #startDrag:)
		threshold: HandMorph dragThreshold
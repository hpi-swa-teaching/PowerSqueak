sizing
updateExtent
	| side |
	
	side := (self fontSize * 0.75) rounded.
	self extent: side @ side.
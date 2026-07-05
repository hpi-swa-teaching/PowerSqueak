run button tests
setUp

	super setUp.
	self button: PSRunButton new.
	self button openInWorld: self world.
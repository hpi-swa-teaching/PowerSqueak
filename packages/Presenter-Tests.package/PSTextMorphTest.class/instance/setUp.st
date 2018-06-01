running
setUp 
	
	super setUp.
	self textField: PSTextMorph new.
	self textField center: self slide center.
	self slide addContent: self textField
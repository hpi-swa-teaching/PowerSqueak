running
setUp 
	
	super setUp.
	self textField: PSTextMorph new.
	self textField textMorph contents: self defaultText.
	self textField center: self slide center.
	self slide addContent: self textField
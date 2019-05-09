event handling
onBorder: aPosition
	
	^ ((Rectangle center: self center extent: self extent - (10@10)) containsPoint: aPosition) not.
context menu
openMenu: aMenu
	
	aMenu 
		setInvokingView: self;
		popUpEvent: self activeHand lastEvent in: self world
accessing
selectIndex: anInteger
	
	self selectedIndex: anInteger.
	self select: (self methodProperties keys at: anInteger)
accessing
selectIndex: anInteger
	
	self selectedIndex: anInteger.
	self select: (self class methodProperties keys at: anInteger)
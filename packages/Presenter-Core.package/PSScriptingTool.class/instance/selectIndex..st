accessing
selectIndex: anInteger
	
	self selectedIndex: anInteger.
	self selectMethod: (self class methodProperties keys at: anInteger)
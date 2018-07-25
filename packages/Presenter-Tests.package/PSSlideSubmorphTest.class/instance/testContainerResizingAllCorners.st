container tests
testContainerResizingAllCorners
	
	self 
		testContainerResizingCorner: #topLeft;
		testContainerResizingCorner: #topRight;
		testContainerResizingCorner: #bottomRight;
		testContainerResizingCorner: #bottomLeft
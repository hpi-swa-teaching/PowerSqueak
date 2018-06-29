container tests
testContainerResizingAllCorners
	
	self 
		testContainerResizingCorner: 0 offset: -20@ -20;
		testContainerResizingCorner: 1 offset: 20@ -20;
		testContainerResizingCorner: 2 offset: -20@20;
		testContainerResizingCorner: 3 offset: 20@20
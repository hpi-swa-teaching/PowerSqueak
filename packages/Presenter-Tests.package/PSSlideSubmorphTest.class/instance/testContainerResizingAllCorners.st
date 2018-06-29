container tests
testContainerResizingAllCorners
	
	self 
		testContainerResizingCorner: 1 offset: -20@ -20;
		testContainerResizingCorner: 2 offset: 20@ -20;
		testContainerResizingCorner: 3 offset: 20@20;
		testContainerResizingCorner: 4 offset: -20@20
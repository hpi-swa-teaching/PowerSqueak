container tests
testContainerResizingAllCorners
	
	self 
		testContainerResizingCorner: #topLeft offset: -20@ -20;
		testContainerResizingCorner: #topRight offset: 20@ -20;
		testContainerResizingCorner: #bottomRight offset: 20@20;
		testContainerResizingCorner: #bottomLeft offset: -20@20
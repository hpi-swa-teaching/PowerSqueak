handles
removeResizeHandles

	self resizeHandles 
		do: [:each | each abandon];
		removeAll
handles
removeResizeHandles

	self resizeHandles do: [:each | each abandon].
	self resizeHandles removeAll.
	self hasHandles: false
A PSMiniatureRow is a transparent wrapper morph used in the miniature sidebar. It holds a single PSMiniature and indents it from the left so that miniatures belonging to a nested section line up underneath their section header. The row forwards drag-and-drop requests to the miniature it wraps, so dropping onto the indented area behaves the same as dropping onto the miniature itself.

Instance Variables
	miniature	the miniature shown in this row (a PSMiniature)

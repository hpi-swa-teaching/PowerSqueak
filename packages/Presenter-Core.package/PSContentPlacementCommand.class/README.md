A PSContentPlacementCommand is an abstract command for undoable placement changes of slide content. Subclasses use it for moves and resizes of content containers.

Instance Variables
	afterLocation:	<PSContentLocation>
	beforeLocation:	<PSContentLocation>
	container:		<PSContentContainer>

afterLocation
	- The location of the content container after the placement change

beforeLocation
	- The location of the content container before the placement change

container
	- The content container whose placement is changed
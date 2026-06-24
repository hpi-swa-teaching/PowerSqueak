A PSAddContentCommand represents an undoable insertion of content onto a slide.

Instance Variables
	container:	<PSContentContainer>
	containerCreated:	<Boolean>
	location:	<PSContentLocation>
	morph:		<Morph>
	slide:		<PSSlide>

container
	- The content container created for the inserted morph
	
containerCreated
	- Indicates whether the content container has already been created by executing this command

location
	- The location of the inserted content container after insertion

morph
	- The morph that is inserted as slide content

slide
	- The slide the morph is inserted into
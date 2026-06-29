A PSSlideSection is a named group of consecutive slides in a PSPresentation. A section begins at its first slide and runs until the next section begins.

Instance Variables
	name: 			<String>
	firstSlide: 		<PSSlide>
	level:			<Integer>
	collapsed:		<Boolean>


name		
	-the name shown to the user
	
firstSlide	
	-the slide where the section begins 

level		
	-the nesting depth, 1 = top level 

collapsed	
	-whether the section is collapsed in the sidebar 

A PSMockFileDirectory mocks a standard FileDirectory without doing actual FileIO.
Supports most common operations like asking for fileNames/subdirectoryNames, etc.
Can even mock non-existent files.
PSMockFileDirectories can be easily instantiated to simulate complex directory structures via the PSMockFileDirectory>>#from: method.
This method accepts an association of the following scheme:
'aDirectoryName' -> {
	'aFileName'.
	'aSubDirectoryName' -> {
		...
	}
}

Instance Variables
	contents:		<Object>
	exists:		<Boolean>
	isFile:		<Boolean>
	name:		<String>
	subdirectories:		<Collection>

contents
	- an Object, simulating the contents of the file

exists
	- Boolean, marking whether the file/directory exists

isFile
	- whether the PSMockFileDirectory simulates a file (simulates a directory if false)

name
	- Name of the File/Directory

subdirectories
	- Collection containing all subdirectories and all contained files

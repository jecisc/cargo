tests
testCanDeserializeDependency
	| dependency |
	dependency := STON fromString: 'CGOCargoProjectDependency {
			#repository : CGOGitRepository {
				#repositoryUrl : ''git://git@github.com/demarey/pharo-counter-ui.git''
			}
		}'.
	self 
		assert: dependency repositoryUrl
		equals: 'git://git@github.com/demarey/pharo-counter-ui.git'.

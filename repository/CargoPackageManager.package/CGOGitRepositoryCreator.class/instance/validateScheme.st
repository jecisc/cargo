validation
validateScheme
	url scheme 
		ifNil: [ CGOGitRepositoryValidationError signal: 'Url scheme must be provided!'].
	(#('git' 'http' 'https') includes: url scheme)
		ifFalse: [ CGOGitRepositoryValidationError signal: 'Scheme not supported: ', url scheme ]
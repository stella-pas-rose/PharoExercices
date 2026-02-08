Class {
	#name : 'MyJavaDocGenTest',
	#superclass : 'TestCase',
	#category : 'MyJavaDocGen',
	#package : 'MyJavaDocGen'
}

{ #category : 'tests' }
MyJavaDocGenTest >> testJavaDocMainCommentIsSet [

	|doc comm|.
	doc := MyJavaDocGen new.
	comm := doc class: MyLinkedList .
	self assert: (comm includesSubstring: 'Node').
]

{ #category : 'tests' }
MyJavaDocGenTest >> testJavaDocMethodsIsSet [

	|doc method|.
	doc := MyJavaDocGen new.
	method := doc class: MyLinkedList .
	self assert: (method includesSubstring: 'add').
	self assert: (method includesSubstring: 'update the first node of the list')
]

{ #category : 'tests' }
MyJavaDocGenTest >> testJavaDocTitleIsSet [

	|doc title|.
	doc := MyJavaDocGen new.
	title := doc class: MyLinkedList .
	self assert: (title includesSubstring: 'MyLinkedList').
]

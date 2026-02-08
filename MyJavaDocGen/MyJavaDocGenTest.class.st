Class {
	#name : 'MyJavaDocGenTest',
	#superclass : 'TestCase',
	#category : 'MyJavaDocGen',
	#package : 'MyJavaDocGen'
}

{ #category : 'tests' }
MyJavaDocGenTest >> testJavaDocTitleIsSet [

	|doc title|.
	doc := MyJavaDocGen new.
	title := doc class: MyLinkedList .
	self assert: (title includesSubstring: 'MyLinkedList').
]

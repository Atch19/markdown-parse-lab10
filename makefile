all:MarkdownParse.java MarkdownParseTest.java
	javac MarkdownParse.java
	javac -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar MarkdownParseTest.java

MarkdownParse.class:MarkdownParse.java
	javac MarkdownParse.java

MarkdownParseTest.class:MarkdownParse.class MarkdownParseTest.java
	javac -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar MarkdownParseTest.java

test:MarkdownParse.java MarkdownParseTest.java
	make all
	java -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore MarkdownParseTest

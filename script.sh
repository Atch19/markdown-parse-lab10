javac MarkdownParse.java
for file in test-files/*.md;
do
  java MarkdownParse $file
  $file
done

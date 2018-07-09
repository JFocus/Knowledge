Some basic Operations of git
===

Introduce yourself to Git with your Github username and email address
---
It's a Global Operation

	$git config --global user.name "your name" 
	$git config --global user.email "your email"

If you want to take a look at your name ande email, use the code upside without "your name"

Import a Local Project 
----

The commands are below:

	$git init

Git will reply 
Initialized empty Got repository in .git\/

	$git add .

This will take a snapshot of the contents all files under the current directory,
and the snapshot will be stored in a temporary staging area which Git calls "index" 


	$git commit

This will prompt you for a commit message.(这会使你输入一个提交说明)And the First 
Step of Importing a Local Project to Git has been complished.

    

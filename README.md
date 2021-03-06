Gander
======

User testing prototypes for Gander, a secure, mobile-friendly way to access and search Microsoft Exchange email.

Organization
------------
Unlike most repositories on Github, the default branch is not master; it is gh-pages. 
Any changes pushed to Github will automatically be available at [ripariandata.github.com/Gander](ripariandata.github.com/Gander)

Each user test is contained within a separate folder at the root level and contains an `index.html` 
file that serves as its root. For example, the start page for test U can be found at `/U/index.html` and
it can be accessed at [ripariandata.github.com/Gander/U](ripariandata.github.com/Gander/U)

The user tests are static web pages that use Javascript for dynamic content. 
Scripting is managed via [coffeescript](coffeescript.org) for complex functionality. 
Shared images, scripts, and stylesheets are contianed in `/images`, `/scripts`, and `/css`, respectively.

Designers: Getting Started
---------------------------
You will need a web browser, a plaintext editor such as [Sublime Text](http://www.sublimetext.com/2), 
and access to a git client ( [Windows](http://windows.github.com/) or [Mac](http://mac.github.com/) ).

In order to compile coffeescript code to javascript, you will also need a coffeescript compiler 
( [Mac](http://www.blog.bridgeutopiaweb.com/post/how-to-install-coffeescript-on-mac-os-x/) or [Windows](https://github.com/alisey/CoffeeScript-Compiler-for-Windows/) ).

Compiling Coffeescript
-----------------------

* Windows: Open a console (cmd.exe) and type `cd PATH`, where `PATH` is the location of `coffee.exe`. 
  Press enter to navigate to this directory. Compile a coffeescript file by typing `coffee.exe -c FILENAME`, 
  where `FILENAME` includes the path to the file (such as `C:\Users\julianc\Desktop\Gander\scripts\verify.coffee`). Then press enter. A file called `verify.js` will be created.

* Mac: open a terminal window (termianl.app) and type cd `FOLDER`, where `FOLDER` is the location of the coffeescript file you want to compile (for example, `~/Desktop/Gander/scripts`).
  Press enter to navigate to this folder. Compile a coffeescript file whenever it is updated by typing `coffee -wc FILENAME`, where filename is something like `verify.js`

Running a test Locally on your Computer
---------------------------------------
Just open one of the index.html files in a browser like Chrome or Safari.
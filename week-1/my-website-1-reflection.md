#Paste a link to your [USERNAME].github.io repository.

https://github.com/datu925/datu925.github.io

#Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.

1. Go to github.com and make an account
2. Click the plus sign in upper-right hand corner and choose New Repository and fill out the various options depending on what you want to do (e.g. public/private, license, etc). Click create repository.
3. Now you have a repo online. To bring it down to your desktop, copy the HTTPS clone URL right above "Clone in Desktop".
4. Open the command line interface, navigate to the directory you want the repository, and then type "git clone [url]" substituting [url] for the URL you copied in part 3.*

* This is not intelligible for a non-technical person, but this question is more about github than the command line so I'm skipping past it.

#Describe what open source means.

Open source means the code that creates the application/program/etc is available as well as the finished product, so that other developers can use/build on the code. By using various licenses, you can change the rules that govern what exactly you can do with the available code (whether you can distribute, sell commercially, etc.)

#What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?

It feels like utopia to me. It seems incredible that we can share knowledge so freely and easily - allows software developers to stand on the shoulders of giants and be (presumably) much more productive than workers in other industries where this kind of sharing is not possible or culturally accepted. I'm sure there are limits to how effectively open source can compete with enterprise programs, but it's surprising that expensive software can exist as frequently as it does when there are wikipedia-style options out there.

Google made some of its machine learning software open source recently (called TensorFlow). I believe Tesla did something similar. It's cool to see mega-corporations participating in this kind of sharing as well.

#Assess the importance of using licenses.

Licenses are very important for determining the way that your code will be used (by who, for what purposes, etc.) in the future. It seems like there are cases where you might not actually care about that question very much - for instance, if you're writing code that is trivial and/or unlikely to be seen by very many people. But there are many cases where it might be appropriate to specify a license that will determine how other software developers will use your code. Do you want others to be able to use it for commercial gain? Do you want to be credited as the original creator? Do you want others to be able to make modifications? And so on. A license is an important way for you to preserve your intentions with your code and shape the way it will be used going forward.

I think this question is pretty ambiguous and should be re-phrased or elaborated on for next round.

#What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?

It was nice to get a chance to drill the git workflow again (and faster). It makes conceptual sense now, so I can think through what needs to happen and then remember the associated code, rather than memorize the list of 10 (or however many) steps.

I was confused though (and perhaps I did something wrong) by something that happened after I pushed my branch to GitHub and merged with the master... when I checked out master on my local system, it indicated that it was up to date with the remote master... but I know that it wasn't, since I'd added the index.html file. I am wondering if the local master was just checking the files in its directory (which did not include index.html) against the remote version and seeing nothing had changed. Seems like a dangerous trap for later though - it might say it's up to date but not actually be up to date.

#Did you find any resources on your own that helped you better understand a topic? If so, please list it.

I haven't read it yet, but this seems promising:
https://git-scm.com/book/en/v2
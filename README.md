# pY Alien Life
## Bug Reports and Feedback

Please use a dedicated repository [pybugreports](https://github.com/pyanodon/pybugreports) for bug reports and feedback.

## Contributing

The stable public release is on the "Frozen" branch so if you want to test changes or make a pull request to put your changes into the public repository then you will have to use that branch.  
This also means that when forking you will have to deselect "Copy the master branch only" as it is enabled by default.  
When making a Pull Request, please also update `changelog.txt` with the summary of your changes.  
If there is no upcoming version in the file, then the format is as follows:
```
---------------------------------------------------------------------------------------------------
Version: a.b.c
Date: ???
  Changes:
    - The summary of your changes
---------------------------------------------------------------------------------------------------
```

Here is a quick guide on how to initiate a code review/pull request if you have never done so on Github.
  - Fork the repository (button in the top right on Github), it makes a private copy of it.
  - Deselect "Copy the master branch only" when making the fork so we also get the "Frozen" branch.
  - Clone your fork onto your PC.
  - Switch to the "Frozen" branch.
  - Make your changes, make your commit(s), test whether they do what you want.
  - Push the commit(s) to your private fork repository.
  - Use Github to initiate a pull request in your private fork repository (button on the top, says "Compare & pull request"). If you have multiple commits it will create one pull request for all of them together.

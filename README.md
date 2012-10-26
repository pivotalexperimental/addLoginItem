addLoginItem: OS X Mountain Lion executable to add Login Items from the command line.

## Why?
This is convenient when Applications are installed via command line/recipe (e.g. [Pivotal Workstation](https://github.com/pivotal/pivotal_workstation)).

With normal Application installations (i.e. manual installations), we encourage you to add Login Items manually (i.e. System Preferences &rarr; Users &amp; Groups &rarr; Login Items)

## How do I use it?
To configure [ShiftIt](https://github.com/onsi/ShiftIt) to start automatically on login:

`addLoginItem /Applications/ShiftIt.app`

## But I don't want to install Xcode & compile
Download the executable [here](https://github.com/downloads/pivotalexperimental/addLoginItem/addLoginItem); don't forget to turn on the execute bits!

## How does it work?

Essentially it's a LSSharedFileListInsertItemURL wrapper.

# To whom do we complain?
**addLoginItem** was originally written by [Onsi Fakhouri](https://github.com/onsi) and is maintained by [Colin Deeb](https://github.com/) and [Brian Cunnie](https://github.com/briancunnie) of Pivotal Labs.
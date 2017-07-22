`addLoginItem`: macOS executable to add Login Items from the command line.

## Quick start

Do the following to make Chrome start automatically on login:

```
curl -OL https://github.com/pivotalexperimental/addLoginItem/releases/download/v1.0/addLoginItem
install addLoginItem /usr/local/bin
addLoginItem /Applications/Chrome.app
```

## Why?
This is convenient when Applications are installed via command line/recipe (e.g. [Sprout Wrap](https://github.com/pivotal-sprout/sprout-wrap)).

With normal Application installations (i.e. manual installations), we encourage you to add Login Items manually (i.e. System Preferences &rarr; Users &amp; Groups &rarr; Login Items)

## How does it work?

Essentially it's a LSSharedFileListInsertItemURL wrapper.

# To whom do we complain?
**addLoginItem**  is maintained by [Brian Cunnie](https://github.com/cunnie) and was originally written by [Onsi Fakhouri](https://github.com/onsi).

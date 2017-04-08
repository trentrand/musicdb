# Music Database Manager
Music database management application connected to MySql database.

## Dependencies

The application's build process depends on the following:

* [Node v6.9.5](https://nodejs.org/en/blog/release/v6.9.5/)

## Getting Started
 This cross-platform desktop application was built with [Angularjs](https://angularjs.org) and packaged using [Electron](https://electron.atom.io).

### Install

Install project dependencies

```bash
    # cd path/to/musicdb
    npm install
    bower install
```

Install application dependencies


```bash
    cd app
    npm install
```


### Run

Run the application for development

```bash
    # cd path/to/musicdb
    gulp
```

### Release

Generate an executable release installer

```bash
    gulp build-electron
```

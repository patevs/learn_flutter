# Learn Flutter

> Links, resources, and code related to my learning of the `Flutter` SDK and `Dart` programming language.

---

[`Flutter`](https://flutter.dev/) is an [open-source](https://en.wikipedia.org/wiki/Open-source_software) [UI](https://en.wikipedia.org/wiki/User_interface) [software development kit](https://en.wikipedia.org/wiki/Software_development_kit) created by Google. It is used to develop applications for [Android](https://en.wikipedia.org/wiki/Android_(operating_system)), [iOS](https://en.wikipedia.org/wiki/IOS), [Linux](https://en.wikipedia.org/wiki/Linux), [Mac](https://en.wikipedia.org/wiki/MacOS), [Windows](https://en.wikipedia.org/wiki/Microsoft_Windows), and the web from a single [codebase](https://en.wikipedia.org/wiki/Codebase).

## Dart platform

`Flutter` apps are written in the [`Dart`](https://en.wikipedia.org/wiki/Dart_(programming_language)) language and make use of many of the language's more advanced features.

On Windows, macOS, and Linux Flutter runs in the Dart virtual machine, which features a [just-in-time](https://en.wikipedia.org/wiki/Just-in-time_compilation) execution engine. While writing and debugging an app, Flutter uses Just In Time compilation, allowing for "hot reload", with which modifications to source files can be injected into a running application. Flutter extends this with support for [stateful](https://en.wikipedia.org/wiki/Stateful) hot reload, where in most cases changes to source code are reflected immediately in the running app without requiring a restart or any loss of state.

Release versions of Flutter apps are compiled with [ahead-of-time (AOT) compilation](https://en.wikipedia.org/wiki/Ahead-of-time_compilation) on both Android and iOS, making Flutter's high performance on mobile devices possible.

---

## Documentation

* [Links and Resources](./docs/docs.md)
* [Libraries, Packages, and Plugins](./docs/libs.md)
* [Tools and Utilities](./docs/tools.md)

---

## Project Structure

```md
.
├── .husky               # Husky configuration
├── bin                  # Utility scripts
│   └── checkUpdates.js  # Check for outdated NPM modules
├── docs                 # Documentation
│   ├── docs.md          # Links and Resources
│   ├── libs.md          # Libraries, Packages, and Plugins
│   └── tools.md         # Tools and Utilities
├── .editorconfig        # Editor configuration
├── .gitignore           # Git ignore rules
├── .np-config.json      # NPM publish (np) configuration
├── LICENSE              # Project license
├── package.json         # NPM package configuration
└── README.md            # Project readme
```

---

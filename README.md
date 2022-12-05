# Typescript template generator

### Purpose

- Generates a new Typescript app using an existing template
- Running and debugging is done by using Node.js, VS Code
- Formatting is provided using ESLint, Prettier for Typescript

### Usage

- Requires Bash 3.x & Node.js v18.x installed on your system

```
❯ cd typescript-template
❯ ./generate.sh <name>
❯ cd ../<name>
❯ code package.json -- and edit the scripts section to look like:
  "scripts": {
    "test": "jest",
    "build": "tsc",
    "start": "node dist/index.js",
    "watch": "tsc --watch",
    "lint": "npx eslint src",
    "lint:fix": "npm run lint -- --fix",
    "prettier": "npx prettier src --check",
    "prettier:fix": "npm run prettier -- --write",
    "format": "npm run prettier:fix && npm run lint:fix"
  },
```

_where `<name>` denotes the project name_

- To search for available commands do:

```
❯ npm run
Lifecycle scripts included in typescriptproj@1.0.0:
  test
    jest
  start
    node dist/index.js

available via `npm run-script`:
  build
    tsc
  watch
    tsc --watch
  lint
    npx eslint src
  lint:fix
    npm run lint -- --fix
  prettier
    npx prettier src --check
  prettier:fix
    npm run prettier -- --write
  format
    npm run prettier:fix && npm run lint:fix
```

- Debugging is setup using dist/index.js & .vscode/launch.json folders

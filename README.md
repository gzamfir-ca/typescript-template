# Typescript template generator

### Purpose

- Generates a complete Typescript development environment
- Running and debugging is done by using Node.js & VS Code

### Usage

- Requires Bash 5.x & Node.js v16.x installed on your system

```
❯ cd typescript-template
❯ ./generate.sh <my-project>
❯ cd ../<my-project>
❯ code package.json -- and edit the scripts section to look like:
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
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

- To build: npm run build
- To start: npm run start
- To watch: npm run watch
- Formatting is provided via ESLint and Prettier using: npm run format
- Debugging is setup using dist/index.js & .vscode/launch.json folders

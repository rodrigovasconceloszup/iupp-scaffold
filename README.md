
This repository facilitates the creation of pre configured files. It uses mason under the hood to create the files.

Mason allows developers to create and consume reusable templates called bricks.

## Quick Start

### Installing

```sh
# Activate from pub.dev
$ dart pub global activate mason
```

### Initializing

```sh
$ mason init
```

To get all bricks registered in `mason.yaml` run:

```sh
$ mason get
```

Then you can use `mason make` to generate your first file:

```sh
$ mason make <brick> -o ./path/to/output/directory
```

### Available Bricks
The bricks available are `MacroApp` and `MicroApp`.

#### MacroApp
Create the main MacroApp files to start a new MacroApp project

#### MicroApp
Create the main MicroApp files to start a new MicroApp project
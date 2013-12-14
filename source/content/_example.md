## How to get started

Open `index.slim` in your code editor and read along to see how things are built and organized. You are of course not bound to this structure, but it helps.

### Keep large content blocks in Markdown partials

You are reading the content of the file `content/_example.md`. Include such files in your .slim files by

    = partial 'content/example'

#### Keep small content bits in locale files

While [i18n](https://github.com/svenfuchs/i18n) is originally intended for localizations, it can also be used with a single language to separate content from structure. The headline "Welcome to Slimmer" is made that way. Look into the code of `index.slim` to see how it works.

### Adding Sass

- create a file like `_my-styles.sass` in `assets/stylesheets/`
- add `@import "my-styles"` to `assets/stylesheets/project.sass`

Using underscore prefixes for the imported files is a [convention](https://en.wikipedia.org/wiki/Convention_over_configuration), as is keeping your assets in an `assets` folder.

#### Removing styles

The basic styles of this intro page are included as just described – which also makes them very easy to remove:

- delete the `@import "_slimmer-styles"` entry from `project.sass`
- delete the file `_slimmer_files.sass` then.

### Adding JS

- create a file like `_my-script.js` or `_my-script.coffee` in `assets/javascripts/`
- add `#= require "_my-script"` to `project.coffee`
- add `#= require_tree .` to include all files in the `javascripts` folder.

### Using Bower packages

Add JS-requires and SASS-imports by referencing the path of the files relative to the bower directory. Example:

After having installed Angular via Bower, require in `project.coffe` like this:

    #= require "angular/angular"

#### Making fonts and images available

Comming soon...

## Have fun building stuff!



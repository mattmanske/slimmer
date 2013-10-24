Middleman Slimmer
===
Static site starter template for [Middleman](http://middlemanapp.com).

###### Preprocessing
- [Slim](http://slim-lang.com) *[for html]*
- [SASS](http://sass-lang.com) *[for css]*
- [CoffeeScript](http://coffeescript.org) *[for js]*

###### Tools
- [Bower](http://bower.io) *[js package management]*
- [Compass](http://compass-style.org) *[sass helpers/mixins]*
- [GitHub Pages](http://pages.github.com) *[deployment/hosting]*

###### Other
- [SublimeText](http://www.sublimetext.com) *[basic project file]*


## Getting Started

1. Install Middleman

  ```
  $ gem install middleman
  ```

2. Install slimmer template

  ```
  $ cd ~/.middleman
  $ git clone git@github.com:polymatt/slimmer.git slimmer
  ```

3. Start your project

  ```
  $ cd ~/path/to/your/project
  $ middleman init PROJECT_NAME -- template=slimmer
  ```

## Using Bower

1. Find and install the packages you need...

  ```
  $ bower search PACKAGE_NAME
  $ bower install ACTUAL_PACKAGE_NAME -S
  ```

2. Include the assets in your js/css files (paths relative to the root 'bower' directory )

  `#=require 'folder/file'` - *for js files*
  
  `@import 'folder/file'` - *for css files*

## Deploying to GitHub Pages

`$ rake publish`

Thanks to [neo](https://github.com/neo/middleman-gh-pages) for the dpeloyment method. More information available there.
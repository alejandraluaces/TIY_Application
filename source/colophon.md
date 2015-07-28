



[I'm an inline-style link](https://www.google.com)

### Deploy

Middman uses Rack, so I had to make a `config.ru` file. I had a `config.rb` file, and mistakenly thought those two were the same thing, so I had to ask for a little bit of help in figuring it out.

### Organization

I name things how I've found they most make sense, using a combination of BEM & SMACSS conventions.

BEM stands for `block`, `element`, `modifier`. To keep better organized and maintain more generic, reusable elements, its advisable to use BEM naming conventions. It's a wiiiiddle complicated at first so I'll try to demistify it.

Really, on any site, we can define anything as a block. Say you have a sign up form that will appear different ways across your site. The basic `block` will look like this:

```
.block {}
```

Within that `block`, we may have a title, a form field, and a button. We use a double underscore to indicate when something is a child (or `element`): it's easy, an underscore is low, and children are mostly small. o.O Or something.

```
.block__heading {}
.block__field {}
.block__button {}
```

Maybe you want your sign up form to look different on another page. That's great! It'll be a `modifier`:

```
.block--moarInteresting {}
.block--moarSubtle {}
```

Remember, keep your names generic. You don't want to make a form which can only be used on the sign up page:

```
.block--signUp {}
```

you want to make something reusable. Try to think of naming it based on it's appearance or purpose. How about `.block--bold`, `.block--patternBg`, `.block--callout`?

Read this great article on CSS Wizardry, [Getting Your Head 'Round BEM Syntax](http://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax/), for more information.

### Atomic Design Patterns

This project is following atomic design organization conventions. Basically, we're breaking stuff down into smaller pieces, building them into reusable patterns or modules, and finally piecing them together into reusable templates or unique pages.

- `Atom`: Basic tags, such as form labels, inputs or buttons. They also include more abstract elements like color palettes, fonts, and animations.
- `Molecule`: Groups of elements that function together as a unit. For example, a form label, search input, and button atom can combine them together to form a search form molecule.
- `Organism`: A masthead organism might consist of a logo, navigation, and search form, while a “product grid” organism might consist of the same product info molecule repeated over and over.
- `Template`: Templates are comprised mostly of organisms combined together to form page-level objects.
- `Pages`: Specific instances of templates.

Read Brad Frost's [About Atomic Design](http://patternlab.io/about.html) for more information.

### SASS Variable Mapping

We're also using SASS variable mapping, which is basically defining a network-specific set of key/value pairs and defining them to a variable. Then, you write SASS which will loop over your map and generate the necessary rules.

Essentially, say you're using lots of borders with different px sizes in your project. Maintaining and changing that could be a total bitch, or you could write up some variables. You'll navigate into your `source > stylesheets > 00-helpers > variables > 01-shared.scss` file, and write something like

```
$borderWidth: (
  thin: 1px,
  midweight: 4px,
  fat: 7px
);
```

Then, if we want to give our links a really fat border on the bottom, we'll just say

```
a {
  border-bottom: map-get($borderWidth, fat) solid $black;
}
```

It's a lot of markup to write at first, but where it really becomes valuable is when you're changing all border midweight border widths. You just do it in your map, and it changes sitewide without having to navigate to a bunch of different files to change stuff around.

Read [SASS Maps Are Awesome!](http://viget.com/extend/sass-maps-are-awesome) for more information.

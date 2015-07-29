# Colophon

## Code

### Build
This site was created with [Middleman](http://middlemanapp.com) static site generator. You can find some additional information in the [readme](https://github.com/alejandraluaces/TIY_Application) for this site.

For templating, I used Haml and Markdown (depending on page-specific content). For styles, I used Sass/SCSS.

Flexbox is seriously awesome, so I used it for the page layout. Most modern browsers are supported, with some unsurprising IE borking.

Another cool thing I used was clip-path to 'cut out' my image in the bio module on the first page. It's just an alternative to using a transparent .png to achieve the shape (like TIY does on its homepage).

### Deploy
Using [Puma](http://puma.io/) to serve files, and [Heroku](http://www.heroku.com) to host them. I used [this article](http://jordanelver.co.uk/blog/2014/02/17/how-i-deployed-middleman-to-heroku/) to figure it all out.

---

## Fonts & Images

Fonts I used were those I found on The Iron Yard website; Tisa Pro and Open Sans. I tried to follow The Iron Yard's branding as closely as possible.

Images are my own, or the property of my clients.

---

## Bugs

There was a weird bug I encountered with flexbox, where sometimes I can scroll past the content and the site jumps repeatedly until you stop scrolling. Resizing the window or slowly trying to trigger the bug resets it. I referenced Philip Walton's [Flexbugs](https://github.com/philipwalton/flexbugs), but haven't come up with a solution yet. Soon.

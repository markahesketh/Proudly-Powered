---
created_at: 27 February 2012
publish: true
kind: article
title: Code Highlighting WordPress plugins and methods
description: Recommended WordPress plugins for syntax highlighting in WordPress. A short list of our favourite code highlighting WordPress plugins.
thumbnail: wordpress-code-highlight.jpg
summary: Recommended WordPress plugins for syntax highlighting in WordPress. A short list of our favourite code highlighting WordPress plugins.
categories:
- WordPress
- WordPress Plugins
---

If your WordPress content regularly features code snippets, such as when writing web design tutorials, you could really benefit from using a code highlighting WordPress plugin or script.

![WordPress code highlighting example](/media/wordpress-code-highlighting-example.jpg "wordpress-code-highlighting-example")

Code highlighting WordPress plugins and scripts bring your `<code>` blocks to life, adding many features such as line-numbering, syntax highlighting, and line highlighting.

Line numbering and line highlighting allow you to reference sections of the `<code>` in your article text, while syntax highlighting makes your code much more legible, especially to novices.

This makes your WordPress posts much more visually appealing, and aids your readers in understanding your code.

### Which code highlighting WordPress plugin or method

As I often write about Web Design, not just here but on a few other
WordPress websites, I often have to include snippets of code in my posts
or tutorials. There are many code highlighting WordPress plugins
available, I've tried pretty much all of them, but I'd like to recommend
two different methods I use. One is a WordPress plugin, the other is a
JavaScript library.

WordPress plugin: CodeColorer
-----------------------------

I know there's *many* different code highlighting WordPress plugins
available, but my personal favourite is
[CodeColorer](http://wordpress.org/extend/plugins/codecolorer/){:target="_blank"}.

> CodeColorer is a syntax highlighting plugin which allows to insert
> code snippets into blog posts. Supports color themes, code in RSS,
> comments.

CodeColorer offers syntax highlighting, line-numbering, single line highlighting and much more.

![WordPress plugin code colorer](/media/wordpress-plugin-code-colorer.jpg "wordpress-plugin-code-colorer")

You can add your code snippets to both the visual editor, and HTML editor, using `[cc][/cc]` or `<code lang="lang"></code>`.

### Why CodeColorer?

The reason for my preference to [CodeColorer](http://wordpress.org/extend/plugins/codecolorer/) over other code highlighting WordPress plugins such as [Syntax Highlighter for WordPress](http://wordpress.org/extend/plugins/syntax-highlighter/){:target="_blank"} is basically that it has annoyed me the least. I spent a lot of time with other code highlighting WordPress plugins while writing [PrestaShop tutorials](http://www.prestadb.com){:target="_blank"} untangling a mess of shortcodes, escaped characters and failed indenting. I very rarely have these problems with CodeColorer.

### Shortcodes

The CodeColorer shortcodes are also cleverly designed.

> To insert code snippet into your post (or comment) you should use `[cc lang="lang"]code[/cc]` or `<code lang="lang"></code>` syntax. Starting from version 0.6.0 you could specify additional CodeColorer options inside `[cc]` tag.

Rather than using lengthy shortcode syntax such as `[cc lang="php" escaped="true" inline="true"]`, CodeColorer can use
single letters to enable options, so the shortcode would become `[ccie_php][/ccie_php]`, keeping your shortcodes *short*. You can see full examples of shortcodes in action on the [WordPress Plugins repository](http://wordpress.org/extend/plugins/codecolorer/installation/){:target="_blank"}. [Download WordPress Plugin: CodeColorer](http://wordpress.org/extend/plugins/codecolorer/){:target="_blank"}

JavaScript & CSS: Prettify
--------------------------

If you'd like to avoid WordPress plugins and shortcodes as much as possible, and would prefer your basic `<code>` blocks automatically highlighted, then [Prettify](http://code.google.com/p/google-code-prettify/){:target="_blank"} is your answer.

![WordPress Code Highlighting Prettify](/media/wordpress-code-highlighting-prettify.jpg "wordpress-code-highlighting-prettify")

I use Pretiffy on [my portfolio](http://www.markhesketh.co.uk/), as it is not actually WordPress driven, so the automatic highlighting is very useful.

### Using Prettify

Simply [download the JavaScript and CSS files](http://code.google.com/p/google-code-prettify/downloads/list)
from the Google Code website, and include them in your theme as so:

    <link href="prettify.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="prettify.js"></script>

*You will need to adjust the CSS and JavaScript file's paths as
required.* Next, add the following to your WordPress theme's
`<body>`tag:

    onload="prettyPrint()"

That's it. Now simply use `class="prettyprint"` on the `<pre>` and `<code>` elements you'd like the code highlighted automatically. If you need any further details you can [refer to the full documentation](http://google-code-prettify.googlecode.com/svn/trunk/README.html). You can then change your `prettify.css` accordingly, or [download a Prettify theme](http://google-code-prettify.googlecode.com/svn/trunk/styles/index.html).

### Or use the Prettify WordPress Plugin

Alternatively of course, you can use the [Prettify for WordPress
plugin](http://wordpress.org/extend/plugins/prettify-wordpress/), which
will do all of this for you. [Visit the Google Code Prettify Download
Page](http://code.google.com/p/google-code-prettify/)

Conclusion
----------

These are the two methods of code highlighting in WordPress I use on my
websites, depending on the situation. Do you have another preference
you'd recommend for code highlighting in WordPress? Let us know below.

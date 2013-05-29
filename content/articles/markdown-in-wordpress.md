---
created_at: 2 March 2012
publish: true
kind: article
title: Markdown in WordPress
description: Write content in WordPress quickly, and with W3C valid HTML using Markdown, a text-to-html formatting syntax developed by John Gruber.
summary: Write content in WordPress quickly, and with W3C valid HTML using Markdown, a text-to-html formatting syntax developed by John Gruber.
categories:
- WordPress
- WordPress Techniques
- WordPress Plugins
thumbnail: markdown-in-wordpress.jpg
---

After [recently talking about using WordPress' distraction free editor](/wordpress-distraction-free-editor/ "WordPress Distraction Free Editor Overview") I got thinking about using Markdown to write posts in WordPress, and how it can speed-up and ease writing content.

[Markdown](http://daringfireball.net/projects/markdown/){:target="_blank"} is a very popular text-to-html formatting syntax developed by [John Gruber](http://daringfireball.net/){:target="_blank"}.

It is a way for web writers to quickly write content in plain text, without worrying about the HTML syntax that could be going wild in the background.

Why use Markdown?
-----------------

-   Being in plain text means you can see every bit of your syntax. No
    more worrying about rogue spans appearing in the HTML editor.
-   You're focusing on the content, not writing HTML.
-   Produced HTML is W3C valid.
-   Syntax is clear and easy to read.
-   Can be easily picked up by content editors who aren't familiar with
    HTML.
-   Can be written offline in any text editor. Markdown editors are also
    available (see below).

Using Markdown
--------------

Markdown syntax is very simple, and so easy to remember. If you're familiar with say writing BBcode on an online forum, this is a similar idea, only better. If we wanted to write a title, a paragraph and bulleted list we would write:

    ## This is a H2 tag above our list

    This is a paragraph

    * And here is a bulleted list
    * It's as easy as using asterisk

    We can also do numbered lists

    1. It's as simple as this
    2. Just put the number instead of an asterisk
    3. Really, it's this simple!

When published, this would create:

    <h2>This is a H2 tag above our list</h2>
    <p>This is a paragraph</p>
    <ul>
        <li>And here is a bulleted list</li>
        <li>Its as easy as using asterix</li>
    </ul>
    <p>We can also do numbered lists</p>
    <ol>
        <li>Its as simple as this</li>
        <li>Just put the number instead of an asterix</li>
        <li>Really, its this simple!</li>
    </ol>

How great is that? You see much more information on the [Markdown syntax page](http://daringfireball.net/projects/markdown/syntax){:target="_blank"}, such as adding `blockquotes`, `hyperlinks`, `code` blocks, basically everything you would normally use in the WordPress editor.

WordPress plugins for Markdown
------------------------------

As usual, 'theres a plugin for that', and two that I would recommend.

1.  [Markdown on Save](http://wordpress.org/extend/plugins/markdown-on-save/){:target="_blank"} by Mark Jaquith
2.  [Markdown on Save Improved](http://wordpress.org/extend/plugins/markdown-on-save-improved/){:target="_blank"} by Matt Wiebe

The fundamental difference between these plugins is that [Markdown on Save](http://wordpress.org/extend/plugins/markdown-on-save/){:target="_blank"} requires you specify you'll be using Markdown in the Post Editor, where as
[Markdown on Save Improved](http://wordpress.org/extend/plugins/markdown-on-save-improved/){:target="_blank"}
assumes that you will be using Markdown, and offers the option to disable Markdown.

<img class="align-right" src="/media/wordpress-markdown-menu.jpg" alt="WordPress markdown menu" />

A little Metabox appears in your Post Editor, effortlessly write your content in Markdown, publish, and your content appears in lovely valid HTML. The two plugins also save your Markdown content separately to your  content, so if in the future you disable the plugins you wont lose your content, or display raw Markdown syntax in your pages.

Markdown Editors
----------------

If you're thinking of using Markdown, I would recommend using a Markdown Editor application, depending on your operating system.

<img class="align-right" src="/media/markdown-writing-kit-ipad.jpg" alt="Markdown Writing Kit iPad" />

These editors are all free to use, and I use all 4 of them depending on my working environment.

-   [Mou (OSX)](http://mouapp.com/){:target="_blank"}
-   [MarkdownPad (Windows)](http://markdownpad.com/){:target="_blank"}
-   [WritingKit (iPad)](http://getwritingkit.com/){:target="_blank"}
-   [Dillinger (Web App) ](http://dillinger.io/){:target="_blank"}

All 4 of these apps work in much the same way, and are better than writing straight into the visual editor or a simple text editor. They provide real-time previews of your content as well shortcut keys for Markdown syntax.

Try Markdown
------------

Give Markdown a go, it's as easy as installing a plugin. Be sure to check out the Markdown syntax page to really get the most out of it. I've personally I'm able to write faster much faster in Markdown, and will only use the Visual editor in WordPress for posts that I know will be featuring a lot of images. Do you write your content Markdown? Does it work for you?

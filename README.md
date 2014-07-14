jekyll-page-url
===============

Jekyll plugin that lets users call a template tag with only a page title to get the relative url

### Description

I wrote this little plugin because I wanted an easier way to link to static pages etc, something like
link_to in rails or url_for() in flask

### Usage
Inside your template, assuming you have a page with a title of 'introduction', you would call it like this

{% page_url introduction %}




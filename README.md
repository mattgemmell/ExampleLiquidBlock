# ExampleLiquidBlock

by Matt Gemmell - [mattgemmell.com](http://mattgemmell.com) - [@mattgemmell](http://twitter.com/mattgemmell)

License: [CC0 Universal (public domain)](https://creativecommons.org/publicdomain/zero/1.0/deed.en)

* * *

A basic example of a [Liquid](http://docs.shopify.com/themes/liquid-documentation/basics)/[Jekyll](http://jekyllrb.com) block-type tag.

Features:

- Block-type tag, i.e. `{% example %} … {% endexample %}`

- Generates HTML output that wraps the contents of the block.

- Can apply custom CSS classes to the resulting block tag.

* * *

This example takes tags of the form:

    {% example[ class1 class2] %}
	    Stuff goes here…
    {% endexample %}

And produces output like:

    <blockquote class="example[ class1 class2]">
    	Stuff goes here…
    </blockquote>`

Simple. Should be useful as a template for other Jekyll/Liquid blocks.

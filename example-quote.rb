# {% example %}
# by Matt Gemmell ~ mattgemmell.com ~ @mattgemmell
# 
# Generate <blockquote> tags styled with class "example",
# and optionally other classes too.
#
# A useful simple example of using Jekyll tags to generate
# some HTML output with custom CSS classes applied.
#
# To install, copy this file into your Jekyll/Octopress plugins folder.
# 
# To use: {% example[ foo bar] %}Text goes here{% endexample %}
# 
# Will produce:
# 
# <blockquote class="example[ foo bar]">
#   Text goes here
# </blockquote>

class ExampleQuote < Liquid::Block
	ExtraClasses = /(\S+(\s+\S+){0,})/i

	def initialize(tag, text, tokens)
		super
		@extra_classes = nil
  		if text =~ ExtraClasses
			@extra_classes = " " + text.strip
		end
	end

	def render(context)
		quote = paragraphize(super.strip)
		"<blockquote class=\"example#{@extra_classes}\">#{quote}</blockquote>"
	end

	# From Brandon Mathis' blockquote tag in Octopress
	def paragraphize(input)
		"<p>#{input.lstrip.rstrip.gsub(/\n\n/, '</p><p>').gsub(/\n/, '<br/>')}</p>"
	end
end

Liquid::Template.register_tag('example', ExampleQuote)

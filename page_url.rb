module Jekyll
  class PageUrlTag < Liquid::Tag

    def initialize(tag_name, title, tokens)
      super
      @title = title.strip.downcase
    end

    def render(context)
      site = context.registers[:site]
      site.pages.each do |page|
        if page.data['title']
          if page.data['title'].downcase == @title
            return page.url
          end
        end
      end
      raise ArgumentError.new "Could not find #{@title} page in site"
    end
  end
end
Liquid::Template.register_tag('page_url', Jekyll::PageUrlTag)


include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::LinkTo
include Nanoc3::Helpers::XMLSitemap

module LayoutHelper

    # Build the site <title>
    #
    #   If on homepage use item title, otherwise use slogan
    def create_title
        if item.identifier == '/'
          'Proudly Powered | ' + @item[:title]
        else
          @item[:title] + ' | Proudly Powered' if @item[:title]
        end
    end

    # Build the site 'logo'
    #
    #   If on homepage, use <h1> otherwise use <div>
    def create_logo(text)
        tag = 'h1' if item.identifier == '/'
        tag ||= 'div'

        "<" + tag + " id=\"logo\"><a href=\"/\">" + text + "</a></" + tag + ">"
    end

    # Create the meta description
    def create_meta_description
        '<meta name="description" content="' + item[:description] + '"/>' if item[:description]
    end

    # Create twitter card
    def create_twitter_card
        title = create_title
        description = @item[:summary] || @item[:description]
        thumbnail = "#{site.config[:base_url]}/media/thumbnails/#{item[:thumbnail]}"

        twitter_card = []
        twitter_card << "<meta name=\"twitter:card\" content=\"summary\">"
        twitter_card << "<meta name=\"twitter:site\" content=\"@proudlypowered\">"
        twitter_card << "<meta name=\"twitter:creator\" content=\"@markyhesketh\">"
        twitter_card << "<meta name=\"twitter:title\" content=\"#{title}\">" if title
        twitter_card << "<meta name=\"twitter:description\" content=\"#{description}\">" if description
        twitter_card << "<meta name=\"twitter:image\" content=\"#{thumbnail_url}\">" if item[:thumbnail]
        twitter_card.join("\n")
    end

    # Create Opengraph
    def create_opengraph
        type = 'website' if item.identifier == '/'
        type ||= 'article'

        title = create_title if item.identifier == '/'
        title ||= @item[:title]

        description = @item[:summary] || @item[:description]

        opengraph = []
        opengraph << "<meta property=\"og:type\" content=\"#{type}\">"
        opengraph << "<meta property=\"og:site_name\" content=\"Proudly Powered\">" if item.identifier != '/'
        opengraph << "<meta property=\"og:title\" content=\"#{title}\">"
        opengraph << "<meta property=\"og:url\" content=\"#{current_url}\">"
        opengraph << "<meta property=\"og:image\" content=\"#{thumbnail_url}\">" if item[:thumbnail]
        opengraph << "<meta property=\"og:description\" content=\"#{description}\">" if description
        opengraph.join("\n")
    end

    # Canonical URL
    def create_canonical
      "<link rel=\"canonical\" href=\"#{current_url}\" />"
    end

    def create_rss_link
      "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"Proudly Powered RSS\" href=\"#{site.config[:base_url]}/feed.xml\">"
    end

    # Get current URL
    def current_url(item=item)
      "#{site.config[:base_url]}#{item.path}"
    end

    def thumbnail_url(item=item)
      "#{site.config[:base_url]}/media/thumbnails/#{item[:thumbnail]}"
    end

end

include LayoutHelper

module PostHelper


  def published_date(item=item)
    timestamp = get_timestamp_date item
    prettydate = get_pretty_date item
    "<p class=\"article-date\">Published <time datetime=\"#{timestamp}\" itemprop=\"datePublished\">#{prettydate}</time></p>"
  end

  # Prettify item dates
  def get_pretty_date(post)
    time = attribute_to_time(post[:created_at])
    time.strftime("%B #{time.day.ordinalize}, %Y")
  end

  # Timestamp item dates
  def get_timestamp_date(post)
    time = attribute_to_time(post[:created_at])
    time.strftime("%Y-%m-%d")
  end

  # 1st, 2nd, 3rd, 4th
  def ordinalize
    if (11..13).include?(self % 100)
      "#{self}th"
    else
      case self % 10
        when 1; "#{self}st"
        when 2; "#{self}nd"
        when 3; "#{self}rd"
        else    "#{self}th"
      end
    end
  end

  def show_thumbnail(post)
    if post[:thumbnail]
      filename = post[:thumbnail].to_s
      alt = post[:title].to_s
      image = '<img src="/media/thumbnails/' + filename + '" alt="' + alt + '" itemprop="thumbnailUrl"/>'
      link_to image, article.path, :title => article[:title]
    end
  end
end

include PostHelper

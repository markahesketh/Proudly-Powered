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
        page_title = @item[:title]
        if item.identifier == '/'
          'Proudly Powered | CMS reviews and advice for web designers, bloggers and business owners'
        else
          page_title + ' | Proudly Powered' if page_title
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

end

include LayoutHelper

module PostHelper

  # Prettify item dates
  def get_pretty_date(post)
    time = attribute_to_time(post[:created_at])
    time.strftime("%B #{time.day.ordinalize} %Y")
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
      image = '<img src="/media/thumbnails/' + filename + '" alt="' + alt + '"/>'
      link_to image, article.path, :title => article[:title]
    end
  end
end

include PostHelper

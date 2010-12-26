module ApplicationHelper

  def d(field_value=nil)
    if field_value.blank?
      return content_tag( 'em' , 'N/A' )
    else
      return field_value
    end
  end

  def human_date(date_to_format)
    if date_to_format.blank?
      out = nil
    else
      day = date_to_format.day.ordinalize
      out = date_to_format.strftime("#{day} %B %Y")
    end

    out

  end

  def field_with_break(field_value)
    unless field_value.blank?
      return field_value + tag('br')
    else
      return nil
    end
  end

  def link_to_icon(icon_name, url_or_object, options={})
    options.merge!({ :class => "icon #{icon_name}" })

    link_to(image_tag("icons/#{icon_name}.png", { :title => icon_name }),
                      url_or_object,
                      options)
  end

end

module ApplicationHelper
  # Return custom page title with no base
  def simple_title(page_title)    
    if page_title.empty? == false      
      "#{page_title}"
    end
  end

  # Return the full title on a per-page basis.
  def full_title(page_title)
    base_title = 'Sample CMS'
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  # Return the full title on a per-page basis.
  def full_title_base_text(base_text,page_title)
    base_title = base_text
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end

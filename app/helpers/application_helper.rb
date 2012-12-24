module ApplicationHelper

  def show_flash
    html = ""
    ["notice", "warning", "error"].each do |type|
      html = content_tag(:div, flash[type.intern].to_s, :class => "flash flash_#{type}") unless flash[type.intern].blank?
    end
    html
  end
end

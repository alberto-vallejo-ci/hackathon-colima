module ApplicationHelper
  def categories_list(categories)
    content_tag :ul do
      categories.each do |category|
        a = content_tag(:a, image_tag("iconos/#{category.icon}.svg", title: category.name.capitalize),
                        href: '#', data: { value: category.icon })
        concat content_tag(:li, a)
      end
    end
  end
end

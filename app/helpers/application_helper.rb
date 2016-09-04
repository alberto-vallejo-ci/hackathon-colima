module ApplicationHelper
  def categories_list
    categories = %w(agua arquitectura biodiversidad ciudad ecotec)
    categories += %w(educacion energia innovacion primario turismo)

    content_tag :ul do
      categories.each do |category|
        a = content_tag(:a, image_tag("iconos/#{category}.svg", title: category.capitalize),
                        href: '#')
        concat content_tag(:li, a)
      end
    end
  end
end

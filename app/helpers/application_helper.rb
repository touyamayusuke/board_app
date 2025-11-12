module ApplicationHelper
  def header_link_item(name, path)
    active = current_page?(path)
    content_tag :li, class: 'nav-item' do
      link_to name, path, class: [
        'nav-link',
        ('active' if active)
      ].compact.join(' ')
    end
  end
end

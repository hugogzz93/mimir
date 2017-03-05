class Banner < ApplicationRecord
  include Valued

  def value
    0
  end

  def rendered_description
    renderer = Redcarpet::Render::HTML.new(render_options = {})
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(description)
  end

  def self.label
    'Duration'
  end
end

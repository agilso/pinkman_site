require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

class RougeRenderer < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet
end

class AppText < ApplicationRecord

  self.abstract_class = true

  def self.render text=nil
    if text.present?
      # key = Digest::SHA1.hexdigest text
      # Rails.cache.fetch key, expires_in: 30.minutes do
        @markdown ||= Redcarpet::Markdown.new(renderer,extensions)
        @markdown.render(text).chomp.strip
      # end
    end
  end

  def self.renderer
    @renderer ||= RougeRenderer.new
  end

  def self.extensions
    {
      no_intra_emphasis: true,
      tables: true,
      fenced_code_blocks: true,
      autolink: true,
      disable_indented_code_blocks: true,
      strikethrough: true,
      lax_spacing: true,
      space_after_headers: true,
      superscript: true,
      underline: true,
      highlight: true,
      quote: true,
      footnotes: true
    }
  end

end

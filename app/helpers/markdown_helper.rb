module MarkdownHelper
  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(render_options)
    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end

  private

  def render_options
    {
      filter_html: false,
      hard_wrap: true,
      link_attributes: { target: "_blank", rel: "noopener" }
    }
  end

  def extensions
    {
      autolink: true,
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      tables: true,
      space_after_headers: true,
      hard_wrap: true,
      xhtml: true,
      lax_html_blocks: true
    }
  end
end

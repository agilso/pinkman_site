module MarkdownHelper
  
  def markdown str
    AppText.render(str)
  end
  
  def markdown_partial partial
    partial = partial + '.markdown' unless /.markdown$/ =~ partial
    markdown(Rails.root.join('app','views','markdown',partial).read)
  end
end
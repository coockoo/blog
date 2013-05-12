module ApplicationHelper
  def coderay(text)
    text.gsub(/\[code( lang="(.+?)")?\](.+?)\[\/code\]/m) do
      CodeRay.scan($3, $2).div(:css => :class).html_safe
    end
  end
end

# Thanks to https://github.com/simonwhitaker/github-fork-ribbon-css
require 'rack/dev-mark/theme/base'

module Rack
  module DevMark
    module Theme
      class GithubForkRibbon < Base
        def insert_into(html, env, revision)
          s = <<-EOS
#{stylesheet_link_tag "github-fork-ribbon-css/gh-fork-ribbon.css"}
<!--[if lt IE 9]>
#{stylesheet_link_tag "github-fork-ribbon-css/gh-fork-ribbon.ie.css"}
<![endif]-->
<div class="github-fork-ribbon-wrapper left" onClick="this.style.display='none'" title="#{revision}"><div class="github-fork-ribbon"><span class="github-fork-ribbon-text">#{env}</span></div></div>
          EOS
          html.sub %r{(<body[^>]*>)}i, "\\1#{s.strip}"
        end
      end
    end
  end
end

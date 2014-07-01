require 'rack/dev-mark/theme/base'

module Rack
  module DevMark
    module Theme
      class Title < Tag
        def initialize(options = {})
          super options.merge(name: 'title', attribute: nil)
        end
      end
    end
  end
end

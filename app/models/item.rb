class Item < ActiveRecord::Base
    belongs_to :category
    has_and_belongs_to_many :tags

    def tagNames
        tagNamesArray = Array.new
        tags.each do |itemTag |
            tagNamesArray << itemTag.name
        end
        tagNamesArray
    end

end

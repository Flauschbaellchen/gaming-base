module Florensia
  class ItemIndex < ActiveRecord::Base
    belongs_to :metadata, polymorphic: true

    validates :item_id,
      presence: true,
      uniqueness: { case_sensitive: false },
      exclusion: { in: %w(#) }

  end
end

module Deletable
  extend ActiveSupport::Concern

  included do
    enum deleted_reason: {
      not_deleted: 1,
      censored: 2,
      banned: 3,
    }

    scope :deleted, -> ()  { where.not(not_deleted: 1) }
  end
end

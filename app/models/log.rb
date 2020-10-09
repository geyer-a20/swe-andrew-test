# frozen_string_literal: true

class Log < ApplicationRecord
  scope :sorted, -> { order('id DESC') }
end

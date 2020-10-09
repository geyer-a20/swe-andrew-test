# frozen_string_literal: true

class Item < ApplicationRecord
  scope :sorted, -> { order('id ASC') }
end

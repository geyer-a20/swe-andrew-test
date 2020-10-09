# frozen_string_literal: true

class Transaction < ApplicationRecord
  scope :sorted, -> { order('id DESC') }
  validates_presence_of  :requestor_name, :requestor_email, :item_name, :item_quantity
end

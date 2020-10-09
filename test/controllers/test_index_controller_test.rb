# frozen_string_literal: true

require 'test_helper'

class TestIndexControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get test_index_index_url
    assert_response :success
  end
end

require 'test_helper'

class NeighborhoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @neighborhood = neighborhoods(:one)
  end

  test "should get index" do
    get neighborhoods_url, as: :json
    assert_response :success
  end

  test "should create neighborhood" do
    assert_difference('Neighborhood.count') do
      post neighborhoods_url, params: { neighborhood: { city: @neighborhood.city, name: @neighborhood.name, state: @neighborhood.state, zipcode: @neighborhood.zipcode } }, as: :json
    end

    assert_response 201
  end

  test "should show neighborhood" do
    get neighborhood_url(@neighborhood), as: :json
    assert_response :success
  end

  test "should update neighborhood" do
    patch neighborhood_url(@neighborhood), params: { neighborhood: { city: @neighborhood.city, name: @neighborhood.name, state: @neighborhood.state, zipcode: @neighborhood.zipcode } }, as: :json
    assert_response 200
  end

  test "should destroy neighborhood" do
    assert_difference('Neighborhood.count', -1) do
      delete neighborhood_url(@neighborhood), as: :json
    end

    assert_response 204
  end
end

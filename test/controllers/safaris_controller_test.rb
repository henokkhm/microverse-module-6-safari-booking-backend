require 'test_helper'

class SafarisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @safari = safaris(:one)
  end

  test 'should get index' do
    get safaris_url, as: :json
    assert_response :success
  end

  test 'should create safari' do
    assert_difference('Safari.count') do
      post safaris_url,
           params: { safari: { description: @safari.description, location: @safari.location,
                               name: @safari.name, price: @safari.price, img: @safari.img } }, as: :json
    end

    assert_response :created
  end

  test 'should show safari' do
    get safari_url(@safari), as: :json
    assert_response :success
  end

  test 'should update safari' do
    patch safari_url(@safari),
          params: { safari: { description: @safari.description, location: @safari.location,
                              name: @safari.name, price: @safari.price, img: @safari.img } }, as: :json
    assert_response :success
  end

  test 'should destroy safari' do
    assert_difference('Safari.count', -1) do
      delete safari_url(@safari), as: :json
    end

    assert_response :no_content
  end
end

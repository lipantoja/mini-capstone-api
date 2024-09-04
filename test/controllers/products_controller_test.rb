require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end
  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { name: "Balloon", price: 5, url_image: "will add here later", description: "An singular balloon" }
      assert_response 200
    end
  end
end

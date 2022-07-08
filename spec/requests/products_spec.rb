require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /products" do
    it "works! (now write some real specs)" do
      get "/products.json"
      products = JSON.parse(response.body)
      expect(response).to have_http_status(200)
    end

    it "should return an array of the products" do
      supplier = Supplier.create!(name: "Amazon", email: "test@test.com", phone_number: "111-111-1111")

      Product.create!([
        {name: "Shure SM7B", price: 399, description: "Whether it’s big-time broadcasting, professional podcasts or critical studio recordings, this legendary dynamic microphone delivers smooth, warm vocals every time. The SM7B captures and enhances the finer details of the human voice while blocking out all the distractions. An audio icon.", quantity: 1, supplier_id: supplier.id},
        { name: "GoXLR", price: 478.42, description: "TC Helicon GoXLR Revolutionary Online Broadcaster Platform with 4-Channel Mixer, Motorized Faders, Sound Board and Vocal Effects, Officially Supported on Windows", quantity: 1, supplier_id: supplier.id}
      ])

      get "/products.json"
      products = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(products.length).to eq(2)
    end
  end
end

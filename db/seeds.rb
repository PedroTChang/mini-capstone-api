Supplier.create!([
  { name: "Tesla", email: "tesla@test.com", phone_number: "133-444-1324" },
  { name: "Apple", email: "apple@test.com", phone_number: "313-313-4232" },
  { name: "BH Photo", email: "bhphoto@test.com", phone_number: "444-523-4232" },
])

Product.create!([
  { name: "Tesla Model S", price: "80000.0", description: "All Tesla models feature a unique touchscreen that comes with an array of features including video games and live traffic updates. The screens are also home to standard features like climate control and navigation but look nothing like anything else on the market.", quantity: 2, supplier_id: 1 },
  { name: "RTX 3080 Ti", price: "1299.0", description: "The GeForce RTX™ 3080 Ti and RTX 3080 graphics cards deliver the ultra performance that gamers crave, powered by Ampere—NVIDIA's 2nd gen RTX architecture. They are built with enhanced RT Cores and Tensor Cores, new streaming multiprocessors, and superfast G6X memory for an amazing gaming experience.", quantity: 10, supplier_id: 3 },
  { name: "MacBook Pro 16in", price: "3500.0", description: "MacBook Pro has a high-resolution, LED-backlit glossy widescreen display. The maximum native resolution on the MacBook is 1,440 by 900 pixels. However, Apple provides a Retina Display option for the MacBook Pro that boosts resolution to 2,880 by 1,800 pixels.", quantity: 15, supplier_id: 2 },
  { name: "UPLIFT V2 Desk", price: "1000.0", description: "AA lifting sit-stand desk doesn’t keep you locked in your chair; you can stand up and move around with ease. The adjustable height standing desks come in new and used condition. Adjustable height features can lift electronically or manually. Allowing you to either sit or stand with better support. Researchers suggest that this aids health and increases productivity. It also will increase your energy levels so that you can focus on your project.", quantity: 13, supplier_id: 3 },
])

Image.create!([
  { url: "https://www.tesla.com/sites/default/files/images/blogs/p100d_social.jpg", product_id: 1 },
  { url: "https://m.media-amazon.com/images/I/81TzR9+1IXL._AC_SL1500_.jpg", product_id: 2 },
  { url: "https://m.media-amazon.com/images/I/71FB1Or+44L.jpg", product_id: 3 },
  { url: "https://cdn.thewirecutter.com/wp-content/media/2021/03/standingdesk-2048px-5212-2x1-1.jpg?auto=webp&quality=75&crop=2:1&width=1024", product_id: 4 },
])

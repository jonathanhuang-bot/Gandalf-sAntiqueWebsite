# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clearing existing data..."
Item.destroy_all
Category.destroy_all

puts "Creating categories..."
furniture = Category.create!(
    name: "Furniture",
    description: "Antique furniture pieces from various eras"
)

jewelry = Category.create!(
    name: "Jewelry",
    description: "Vintage and antique jewelry pieces"
)

books = Category.create!(
    name: "Books",
    description: "Rare and antique books and manuscripts"
)

art = Category.create!(
    name: "Art",
    description: "Paintings, sculpures, and decorative art"
)

puts "Creating items..."

Item.create!([
    {
        name: "Victorian Mahogany Chair",
        description: "Beautiful carved mahogany chair from the Victorian era with original upholstery",
        price: 450.00,
        condition: "Excellent",
        year_made: 1885,
        image_url: "https://example.com/victorian_chair.jpg",
        category: furniture
    },
    {
      name: "Art Deco Dining Table",
      description: "Stunning walnut dining table with geometric inlays
  typical of Art Deco period",
      price: 1200.00,
      condition: "Good",
      year_made: 1925,
      image_url: "https://example.com/art_deco_table.jpg",
      category: furniture
    },
    {
      name: "Victorian Pearl Necklace",
      description: "Elegant pearl necklace with gold clasp, Victorian era",
      price: 850.00,
      condition: "Excellent",
      year_made: 1890,
      image_url: "https://example.com/pearl_necklace.jpg",
      category: jewelry
    },
    {
      name: "Antique Pocket Watch",
      description: "Gold-plated pocket watch with Roman numerals, still
  functional",
      price: 325.00,
      condition: "Good",
      year_made: 1910,
      image_url: "https://example.com/pocket_watch.jpg",
      category: jewelry
    },
    {
      name: "First Edition Sherlock Holmes",
      description: "First edition of 'A Study in Scarlet' by Arthur Conan
  Doyle",
      price: 2500.00,
      condition: "Fair",
      year_made: 1887,
      image_url: "https://example.com/sherlock_book.jpg",
      category: books
    },
    {
      name: "Oil Painting Landscape",
      description: "Beautiful countryside landscape oil painting, unsigned
  but well executed",
      price: 675.00,
      condition: "Excellent",
      year_made: 1920,
      image_url: "https://example.com/landscape_painting.jpg",
      category: art
    }
])

puts "Created #{Category.count} categories and #{Item.count} items!"
puts "Categories: #{Category.pluck(:name).join(', ')}"
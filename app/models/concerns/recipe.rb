class Recipe
  include HTTParty

  base_uri 'http://food2fork.com/api/search'
  default_params key: "44d4d7eb953fdf400a18e48db6f93305", q: "search"
  format :json

  def self.for term
    get("", query: { q: term})["recipes"]
  end
end

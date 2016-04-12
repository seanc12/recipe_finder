class Recipe
 include HTTParty
 ENV["FOOD2FORK_KEY"] = '1375597534d273e1ea58cd3519c40783'
 base_uri 'http://food2fork.com/api/search'
 default_params key: ENV["FOOD2FORK_KEY"]
 format :json
 
 def self.for term
 get("/search", query: { q: term})["recipes"]
 end
end
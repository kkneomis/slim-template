namespace :export do
  desc "Prints Testjson.all in a seeds.rb way."
  task :seeds_format => :environment do
    Testjson.all.each do |tj|
      puts "Testjson.create(#{tj.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
class Form607 < ActiveRecord::Base
   
  def self.to_xls(options = {})
  product = Product.new(:id => 1, :name => 'Campbell Soup', :released_on => 'octuber', :price => 500)
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
  
end

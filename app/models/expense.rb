class Expense < ActiveRecord::Base
  
  belongs_to :company
  
  # method to retreive information from Quick Books
  
  #client = Savon::Client.new('quickbooks request url...')
  #response = client.request
  #data = response.to_hash[]
  #@
  
   validates :ncf, length: { is: 19 }
   #validates_with  validate_businessid, :businessid
   
   def self.validate_businessid
     if businessid.length == 9 || 11
       true
     else
       false
     end
   end
   
   def self.validate_document(typeid)
     if businessid.length == 9
       typeid == 1
       else
         typeid == 2
     end 
   end
   
   #validates :modified_document, length: { is: 19 }
   #validates :billed_itbis, numericality: true
   #validates :retained_itbis, numericality: true
   #validates :amount_billed, numericality: true
   #validates :retained_isr, numericality: true
  
  
  def self.to_csv(options = {})
    CVS.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
  
end

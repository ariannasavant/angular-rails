module LienRepresenter
  include Roar::Representer::JSON
  
  property :certificate_no  
  property :rv  
  property :fv  
  property :purchase_date  
  property :interest_rate  
  property :penalty_rate  
  property :total_assessed_value  
end

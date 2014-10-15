module PropertyRepresenter
  include Roar::Representer::JSON
  
  property :street_address_1  
  property :street_address_2  
  property :city  
  property :state  
  property :zipcode  
  property :latitude  
  property :longitude  
  property :parcel_id  

  collection :liens, extend: LienRepresenter, class: Lien
end

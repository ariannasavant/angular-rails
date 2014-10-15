module PortfolioRepresenter
  include Roar::Representer::JSON
  
  property :name
  collection :properties, extend: PropertyRepresenter, class: Property
end

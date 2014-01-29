class Project
  include Mongoid::Document
    #project basic information
    field :name, :type => String
    field :location, :type => String
    
    validates :name, :location, :presence =>true
    #attr_accessible :name, :location



end

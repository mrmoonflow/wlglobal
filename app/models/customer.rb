class Customer
  include Mongoid::Document
    field :address, :type => String, :default => ""
    field :customer_id, :type => String, :default => ""
    field :phone, :type => String, :default => ""
    field :company, :type => String, :default => ""
    field :wechat, :type => String, :default => ""
    field :name, :type => String, :default => ""
    field :sex, :type => String, :default => ""
    field :status, :type => String, :default => ""
    field :project, :type => String, :default => ""
    
    #Other people in the family
    field :name1, :type => String, :default => ""
    field :name2, :type => String, :default => ""
    field :wechat1, :type => String, :default => ""
    field :wechat2, :type => String, :default => ""
    
    #User activities 
    field :firstAct, :type => String, :default => ""
    field :recent_act, :type => String, :default => ""
    
    field :comments, :type => String, :default => ""
    
    validates :name, :customer_id, :presence =>true
end

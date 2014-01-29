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
    
    validates :name, :customer_id, :presence =>true
end

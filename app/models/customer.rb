class Customer
  include Mongoid::Document
    field :address, :type => String, :default => ""
    field :city, :type => String, :default => ""
    field :zip, :type => String, :default => ""
    
    field :address_cncontent, :type => String, :default => ""
    field :city_cncontent, :type => String, :default => ""
    field :zip_cncontent, :type => String, :default => ""
    
    field :customer_id, :type => String, :default => ""
    
    field :us_phone, :type => String, :default => ""
    field :cn_phone, :type => String, :default => ""
    field :email, :type => String, :default => ""
    field :work_email, :type => String, :default => ""
    
    field :us_phone_cncontent, :type => String, :default => ""
    field :cn_phone_cncontent, :type => String, :default => ""
    field :email_cncontent, :type => String, :default => ""
    field :work_email_cncontent, :type => String, :default => ""
    field :wechat_cncontent, :type => String, :default => ""
    
    field :company, :type => String, :default => ""
    field :city_employment, :type => String, :default => ""
    field :zip_employment, :type => String, :default => ""
    
    field :wechat, :type => String, :default => ""
    field :name, :type => String, :default => ""
    field :english_name, :type => String, :default => ""
    field :sex, :type => String, :default => ""
    field :status, :type => String, :default => ""
    field :date_of_birth, :type => String, :default => ""
    field :project, :type => String, :default => ""
    
    #Other people in the family
    field :name1, :type => String, :default => ""
    field :name2, :type => String, :default => ""
    field :name3, :type => String, :default => ""
    field :wechat1, :type => String, :default => ""
    field :wechat2, :type => String, :default => ""
    field :wechat3, :type => String, :default => ""
    field :us_phone1, :type => String, :default => ""
    field :cn_phone1, :type => String, :default => ""
    field :us_phone2, :type => String, :default => ""
    field :cn_phone2, :type => String, :default => ""
    field :us_phone3, :type => String, :default => ""
    field :cn_phone3, :type => String, :default => ""
    field :date_of_birth1, :type => String, :default => ""
    field :date_of_birth2, :type => String, :default => ""
    field :date_of_birth3, :type => String, :default => ""
    field :email1, :type => String, :default => ""
    field :email2, :type => String, :default => ""
    field :email3, :type => String, :default => ""
    
    #User activities 
    field :firstAct, :type => String, :default => ""
    field :recent_act, :type => String, :default => ""
    
    field :comments, :type => String, :default => ""
    
    validates :name, :customer_id, :presence =>true
end

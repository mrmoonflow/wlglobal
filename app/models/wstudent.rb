class Wstudent
  include Mongoid::Document
    
    field :email, :type => String, :default => ""
    field :work_email, :type => String, :default => ""
    
    field :wechat, :type => String, :default => ""
    field :name, :type => String, :default => ""
    field :sex, :type => String, :default => ""
    field :class_year, :type => String, :default => ""
    field :birthday, :type => Date
    field :us_phone, :type => String, :default => ""
    field :cn_phone, :type => String, :default => ""
    
    field :address, :type => String, :default => ""
    field :city, :type => String, :default => ""
    field :zip, :type => String, :default => ""
    field :state, :type => String, :default => ""
    
    
    field :student_id, :type => String, :default => ""
    
    field :english_name, :type => String, :default => ""
    
    
    validates :name, :class_year,:address, :presence =>true
end

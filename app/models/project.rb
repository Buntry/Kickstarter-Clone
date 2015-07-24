class Project < ActiveRecord::Base
    has_many :donors, class_name: "User", through: :donorship
    has_one :owner, class_name: "User", through: :ownership
end
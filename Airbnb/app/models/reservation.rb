class Reservation < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :accommodations
  validates :start_time, :presence => { :message => "must be a valid date/time" }
  validates :end_time, :presence => {:message => "must be a valid date/time"}
  validate :start_must_be_before_end_time
 
 def start_must_be_before_end_time
    errors.add(:start_time, "must be before end time") unless
        start_time < end_time
 end 
end

class Photo < ActiveRecord::Base
  has_attached_file :photo, :styles => { :thumb => "100x100>" }

end

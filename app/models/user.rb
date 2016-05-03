class User < ActiveRecord::Base
  has_many :interactions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :notes, as: :noteable

  def full_name
    [first_name , last_name].join(" ")
  end  
end

class Contact < ApplicationRecord
  # associations
  # define relationships between tables
  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy

  # associations
  # belongs_to
  # has_many
  # has_one 

  # has_many :through
  # has_many :through

  # dependent 

  # Vaildations
    # confirmation - it should have exact a certain thing ()

    # inclusion - include something 
      # class Coffee < ActiveRecord::Base
      #   validates :size, inclusion: { 
      #     in: %w(small medium large),
      #     message: "%{value} is not a valid size" 
      #   }
      # end
    # length - have a certain size 
      # class Person < ActiveRecord::Base
      #   validates :name, length: { minimum: 2 }
      #   validates :bio, length: { maximum: 500 }
      #   validates :password, length: { in: 6..20 }
      #   validates :registration_number, length: { is: 6 }
      # end
    # numericality - make sure the input is a number
      # class Player < ActiveRecord::Base
      #   validates :points, numericality: true
      #   validates :games_played, numericality: { only_integer: true }
      #   validates :golf_handicap, numericality: { less_than_or_equal_to: 40.4, greater_than_or_equal_to: 2 }
      # end
    # presence - makes sure the field is filled out
      validates :first_name, :last_name, :age, :phone, :email, :friend, presence: true
    # uniqueness - accept uniqueness 
      validates :email, uniqueness: true 


    # Options
      # allow_nil
        # - allow nil as a value
        # Contact.create(first_name: nil)
        # ''
        # 0 
        # false

        # class Coffee < ActiveRecord::Base
        #   validates :size, inclusion: { 
        #     in: %w(small medium large),
        #     message: "%{value} is not a valid size" ,
        #     allow_nil: true
        #   }
        # end

      # allow_blank
        # - ''
      
      # message
        # addtional output

      # on 
        # where we want to do our validations

      # validates :email, uniqueness: true, on: :create
      validates :age, numericality: true, on: :update
      #  on: :save

  # callbacks
  # calls a method during a certain action

    # before_vaildation
    # after_vaildation
    # before_save
    # after_save
    # around_save
    # before_create
    # after_create
    # around_create

  # before_save :encrypt_cc

  # private
  #   def encrypt_cc
  #     self.card_number = bcrypt(self.card_number)
  #   end

  # Serialize
  # lets us have more than one value for a column in an array
  # class Person < ActiveRecord::Base
  #   belongs_to :account
  #   serialize :hobbies, Array
  # end
  # Person.create(hobbies: ['kitchen', 'sports', 'chess'] )


  #Model Methods

  # Class

  # class Person < ActiveRecord::Base
    
  #   def self.by_first_name
  #     order(:first_name)
  #   end
  # end
  # Person.by_first_name

  # instance
  # class Person < ActiveRecord::Base
    
  #   def print_full_name
  #     "#{self.first_name} #{self.last_name}"
  #   end
  # end

  # bob = Person.create(...)
  # bob.print_full_name

end

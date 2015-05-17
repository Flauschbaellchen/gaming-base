class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
         # :timeoutable
         # :omniauthable

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }


  def to_s
    self.name
  end


  ## handle legacy FloBase database passwords
  def valid_password?(password)
    return super unless self.legacy_password.present?

    legacy_password, legacy_salt = self.legacy_password.split(":")

    if ::Digest::MD5.hexdigest(::Digest::MD5.hexdigest(legacy_salt)+::Digest::MD5.hexdigest(password)) == legacy_password
      self.password = password
      self.legacy_password = nil
      self.save!
      true
    else
      false
    end
  end

  def reset_password!(*args)
    self.legacy_password = nil
    super
  end
end

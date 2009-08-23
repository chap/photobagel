class Notifier < ActionMailer::Base
  include ActionController::UrlWriter

  def welcome(user)
    subject    '[PhotoBagel] Welcome to PhotoBagel'
    recipients user.full_email
    from       'chap@photobagel.com'
    body       :user => user
  end

  def duplicate(user, photo)
    subject    '[PhotoBagel] You already sent us a photo for this day.'
    recipients user.full_email
    from       'chap@photobagel.com'
    body       :user => user,
							 :photo => photo
  end

end

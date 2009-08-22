class Notifier < ActionMailer::Base
  

  def welcome(user)
    subject    '[PhotoBagel] Welcome to PhotoBagel'
    recipients user.full_email
    from       'Chap Ambrose <chap@photobagel.com>'
    body       :user => user
  end

  def duplicate(user, photo)
    subject    '[PhotoBagel] You already sent us a photo for this day.'
    recipients user.full_email
    from       'Chap Ambrose <chap@photobagel.com>'
    body       :greeting => 'Hi,'
  end

end

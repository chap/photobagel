class Notifier < ActionMailer::Base
  

  def welcome(user, photo)
    subject    '[PhotoBagel] Welcome to PhotoBagel'
    recipients user.full_email
    from       ''
    body       :user => user, :photo => photo
  end

  def duplicate(user, photo)
    subject    '[PhotoBagel] You already sent us a photo for this day.'
    recipients user.full_email
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end

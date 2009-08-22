require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "welcome" do
    @expected.subject = 'Notifier#welcome'
    @expected.body    = read_fixture('welcome')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Notifier.create_welcome(@expected.date).encoded
  end

  test "duplicate" do
    @expected.subject = 'Notifier#duplicate'
    @expected.body    = read_fixture('duplicate')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Notifier.create_duplicate(@expected.date).encoded
  end

end

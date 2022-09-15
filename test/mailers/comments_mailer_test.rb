require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "submitted" do
    mail = CommentsMailer.submitted comments(:one)
    assert_equal "subject_for_comments_by_kukla", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match comments(:one).content, mail.body.encoded
  end

end

module QuizHelper
  def score_review(score)
    review = if score <= 10
      "Um... what? Friend, you’ve got some reading to do!! Check out ALL of the articles on our #{link_to 'resources page', resources_path}
      (as in: get your butt to the library, and start reading the full articles RIGHT NOW!), and
      DEFINITELY go back and try the test again. Your life on campus will be WAY
      more awesome once you understand how to respectfully engage with your fellow students."
    elsif score > 10 && score <= 15
      "Hmm. Lots of learning room here. You, too, should read all
      of the articles on the #{link_to 'resources page', resources_path}. Once you've done this, it's probably a good idea to take the test
      again. It’s time to open those eyes, friend!! Bring on the respect."
    elsif score > 15 && score <= 18
      "Not bad! Still a good idea to check out at least some of the articles on the #{link_to 'resources page', resources_path},
      and see what the real answers were for the questions you got wrong. Still, you did well.
      Rock on."
    else
      "YES. Awesome work, friend. This is what we want to see. Talk to your friends, and spread all
      the good information you’ve got tucked away in your brain. We need more people like you on
      campus! You might be interested in the articles on the #{link_to 'resources page', resources_path} – there’s always room to learn
      more – but, friend: I’m proud of you."
    end.html_safe
  end
end

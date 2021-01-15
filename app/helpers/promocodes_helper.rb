module PromocodesHelper
  def render_with_hashtags(code_hashtag)
    code_hashtag.gsub(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/){|word| link_to word, "/promocodes/hashtag/#{word.delete('#')}"}.html_safe
  end 
end

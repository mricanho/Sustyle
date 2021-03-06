# rubocop: disable Lint/ShadowingOuterLocalVariable, Layout/LineLength
module ApplicationHelper
  def four_articles(article, index)
    if index < 2
      content_tag(:div, nil, class: 'photo',
                             style: "background: url('#{display_photo(article)}') center center; background-size: cover") do
      end +
        content_tag(:div, nil, class: 'details pb-0 pt-0', style: 'background-color: white') do
          display_details(article)
        end
    else
      content_tag(:div, nil, class: 'details pb-0 pt-0', style: 'background-color: white') do
        display_details(article)
      end +
        content_tag(:div, nil, class: 'photo',
                               style: "background: url('#{display_photo(article)}') center center; background-size: cover") do
        end
    end
  end

  def display_photo(article)
    article.image_url || image_url("https://source.unsplash.com/800x600/?{#{article.title}}")
  end

  def display_details(article)
    content_tag(:h1, @category.name,
                class: 'orange hero-head title is-size-4') + content_tag(:h2, article.title, class: 'title is-size-4') +
      content_tag(:p, simple_format(article.text.truncate(105), class: 'hero-body px-0 pb-0 pt-0')) +
      content_tag(:span, "#{article.votes_count} votes - If you like this article, show it:  ", class: 'pt-3') +
      content_tag(:span, nil, class: 'orange-links button is-small') do
        vote_button(article)
      end + content_tag(:br) + content_tag(:span, "By #{article.author.name.capitalize}", class: 'orange')
  end

  def vote_button(art)
    if current_user
      vote = Vote.find_by(article: art, user: current_user)
      if vote
        link_to('Click to Unvote!', article_vote_path(id: vote.id, article_id: art.id), method: :delete)
      else
        link_to('Click to Vote!', article_votes_path(article_id: art.id), method: :post)
      end
    else
      link_to('LOG IN to vote!', user_session_path)
    end
  end

  def link(articles, index)
    link_to(
      content_tag(:div, nil, class: 'hero-head ml-5 mt-4') do
        content_tag(:p, @categories.find(index + 1).name,
                    class: 'title has-text-white') +
          content_tag(:p, nil, class: 'hero-body pt-6 has-text-white') +
          (content_tag(:p, articles.title, class: 'hero-foot subtitle size-6 mb-2') if articles)
      end,
      article_path(articles), class: 'has-text-black column',
                              style: "background: url('#{display_photo(articles)}') center center; background-size: cover"
    )
  end

  def show_articles_by_categories(articles)
    return if articles.nil?

    content_tag(:div, nil, class: 'columns is-gapless') do
      articles.each_with_index do |articles, index|
        concat(link(articles, index))
      end
    end
  end

  def show_popular
    return @most_popular.image_url if @most_popular.image
  end
end
# rubocop: enable Lint/ShadowingOuterLocalVariable, Layout/LineLength

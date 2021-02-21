module ApplicationHelper
  def four_articles(art, ind)
    if ind < 2
      content_tag(:div, nil, class: 'photo') do
        display_photo(art)
      end +
        content_tag(:div, nil, class: 'details') do
          display_details(art)
        end
    else
      content_tag(:div, nil, class: 'details') do
        display_details(art)
      end +
        content_tag(:div, nil, class: 'photo') do
          display_photo(art)
        end
    end
  end

  def display_photo(article)
    return 
      image_tag("https://source.unsplash.com/1600x900/?{#{article.title}}")
    end
  end

  def display_details(art)
    content_tag(:h1, @category.name, class: 'orange-text') + content_tag(:h2, art.title) +
      content_tag(:p, simple_format(art.text.truncate(140))) +
      content_tag(:span, "#{art.votes_count} votes - Your reaction: ") +
      content_tag(:span, nil, class: 'orange-links') do
        vote_toggle_btn(art)
      end + content_tag(:br) + content_tag(:span, "Written by #{art.author.name.capitalize}")
  end

  def vote_toggle_btn(art)
    if current_user
      vote = Vote.find_by(article: art, user: current_user)
      if vote
        link_to('Click to Unvote', article_vote_path(id: vote.id, article_id: art.id), method: :delete)
      else
        link_to('Click to Vote!', article_votes_path(article_id: art.id), method: :post)
      end
    else
      link_to('Log in to vote', log_in_path)
    end
  end

  def show_articles_by_categories(articles)
    return if articles.nil?

    content_tag(:div, nil, class: 'columns is-gapless') do
      articles.each_with_index do |articles, index|
        concat link_to(
          content_tag(:div, nil, class: 'hero-head ml-5 mt-4') do
            content_tag(:p, @categories.find(index + 1).name, class: "title has-text-white") + content_tag(:p, nil, class: "hero-body pt-6 has-text-white") + (content_tag(:p, articles.title, class: "hero-foot subtitle size-6 mb-2") if articles)
          end + (display_photo(articles) if articles), '#', class: 'recent-article1 column'
        )
      end
    
  end
end

class ArticleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.article_mailer.created.subject
  #
  def created(article_id)
    @article = Article.find(article_id)

    mail subject: "#{@article.title}が作られました", to: "to@example.org"
  end
end

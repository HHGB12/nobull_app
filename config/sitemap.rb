# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.nobullco.com"

SitemapGenerator::Sitemap.create do
  default_host = "https://www.nobullco.com"
  # Put links creation logic here.
  add '/pages/about', changefreq: 'weekly', priority: 0.7, host: default_host, lastmod: Time.now
  add '/pages/contact', changefreq: 'weekly', priority: 0.7, host: default_host, lastmod: Time.now
  add '/pages/pricing', changefreq: 'weekly', priority: 0.7, host: default_host, lastmod: Time.now
  add '/pages/basic', changefreq: 'weekly', priority: 0.3, host: default_host, lastmod: Time.now
  add '/pages/fancy', changefreq: 'weekly', priority: 0.3, host: default_host, lastmod: Time.now
  add '/pages/custom', changefreq: 'weekly', priority: 0.3, host: default_host, lastmod: Time.now
  add '/pages/keeping_prices_down', changefreq: 'weekly', priority: 0.5, host: default_host, lastmod: Time.now
  add '/pages/why_we_hand_code', changefreq: 'weekly', priority: 0.5, host: default_host, lastmod: Time.now
  add '/pages/free_beer', changefreq: 'weekly', priority: 0.5, host: default_host, lastmod: Time.now
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end

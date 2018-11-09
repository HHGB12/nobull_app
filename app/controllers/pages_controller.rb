class PagesController < ApplicationController
  layout "pages_layout", except: :dashboard
  before_action :authenticate_user!, only: :dashboard
  before_action :get_detected_country
  skip_after_action :verify_authorized
  def dashboard
    @user = current_user
    set_meta_tags title: 'Dashboard',
                  description: 'NoBull Software Co.\'s NoBull Website Ordering Thingy™!👋' ,
                  keywords: 'webapp, web site development, business information',
                  index: false,
                  nofollow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ]

  end
  def about
    set_meta_tags title: 'About Us',
                  description: 'The story of the NoBull Web Design Agency based in Salmon Arm, BC, Calgary, Alberta and Warwick, West Midlands.',
                  keywords: 'calgary, alberta, salmon arm, interior, armstrong, revelstoke, local',
                  index: true,
                  follow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ],
                  og: {
                    title: :title,
                    site_name: :site,
                    url: request.original_url,
                    description: :description,
                    image: { 
                      url: "#{ActionController::Base.helpers.asset_path('richchan.jpg')}",
                      alt: 'Image of the NoBull Software Co Team.',
                      type: 'image/jpeg'
                    }
                  },
                  twitter: {
                    card: :description,
                    site: "@richjdsmith",
                    creator: "@richjdsmith"
                  }
  end
  

  def index
    set_meta_tags title: 'Home',
                  description: 'Homepage of NoBull Software Co. - a fair, afordable web development agency with upfront prices. We work with businesses ranging from small trades contractors to law firms and engineering companies',
                  keywords: 'cheap, affordable, fair, prices, web developer, software developer, web designer, website developer, website designer, small business, calgary, alberta, salmon arm, interior, armstrong, revelstoke',
                  index: true,
                  follow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ],
                  og: {
                    title: :title,
                    site_name: :site,
                    url: request.original_url,
                    description: :description,
                    image: { 
                      url: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                      alt: 'NoBull Software Co. Logo',
                      type: 'image/png'
                    }
                  },
                  twitter: {
                    card: :description,
                    site: "@richjdsmith",
                    creator: "@richjdsmith"
                  }
  end

  def contact
    set_meta_tags title: 'Contact Us',
                  description: 'Where to find and how to get in touch with us. Because we\'re a remote web developer agency, we work with clients from Calgary, Alberta to Salmon Arm, BC and the West Midlands, UK' ,
                  keywords: 'remote, contact us, phone, global, canada, uk, united kingdom, interior bc, kamloops, kelowna, armstrong, vernon, salmon arm, calgary',
                  index: true,
                  follow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ],
                  og: {
                    title: :title,
                    site_name: :site,
                    url: request.original_url,
                    description: :description,
                    image: { 
                      url: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                      alt: 'NoBull Software Co. Logo',
                      type: 'image/png'
                    }
                  },
                  twitter: {
                    card: :description,
                    site: "@richjdsmith",
                    creator: "@richjdsmith"
                  }
  end

  def pricing
    set_meta_tags title: 'Our Pricing',
                  description: 'The only web design agency with truly transparent and upfront prices. We list our prices because we think they\'re fair and have even been called cheap. We offer websites starting at $790.',
                  keywords: 'website pricing, website price, web design price, pricing, web developer price, actual price website, ',
                  index: true,
                  follow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ],
                  image_src: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                  og: {
                    title: :title,
                    site_name: :site,
                    url: request.original_url,
                    description: :description,
                    image: { 
                      url: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                      alt: 'NoBull Software Co. Logo',
                      type: 'image/png'
                    }
                  },
                  twitter: {
                    card: :description,
                    site: "@richjdsmith",
                    creator: "@richjdsmith"
                  }
  end

  def basic
    set_meta_tags title: 'A Basic NoBull Site.',
                  description: 'All about the NoBull Software Co.\'s  "Basic Website." A website designed and built for small businesses that just need a basic website - businesses like contractors, plumbers, mechanics, loggers and gravel pit opperators. You really don\'t need a fancy website, just something that works.',
                  keywords: 'basic website, simple webite, cheap website, squarespace alternative, wix alternative, wordpress alternative, contractor, logger, roofer, plumber, electrician, hunting guide ',
                  index: true,
                  follow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ],
                  image_src: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                  og: {
                    title: :title,
                    site_name: :site,
                    url: request.original_url,
                    description: :description,
                    image: { 
                      url: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                      alt: 'NoBull Software Co. Logo',
                      type: 'image/png'
                    }
                  },
                  twitter: {
                    card: :description,
                    site: "@richjdsmith",
                    creator: "@richjdsmith"
                  }
  end

  def fancy
    set_meta_tags title: 'A Fancy NoBull Site.',
                  description: 'All about the NoBull Web Design Agency\'s "Fancy Website". It isn\'t more premium, it just has more features. This includes a built-in CMS making it editable, and a blog for SEO purposes. A better suited option for small-medium businesses such as engineers, realtors, mortgage brokers, appraisers, lawyers, law firms and engineer firms.',
                  keywords: 'CMS, blogging software, blog, website with blog, editable website, lawyer webstie, engineer website, solicitor website, solicitor seo',
                  index: true,
                  follow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ],
                  image_src: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                  og: {
                    title: :title,
                    site_name: :site,
                    url: request.original_url,
                    description: :description,
                    image: { 
                      url: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                      alt: 'NoBull Software Co. Logo',
                      type: 'image/png'
                    }
                  },
                  twitter: {
                    card: :description,
                    site: "@richjdsmith",
                    creator: "@richjdsmith"
                  }
  end
  
  def custom
    set_meta_tags title: 'A Custom NoBull Site.',
                  description: 'Different options from the NoBull Web Development Company for businesses custom WebApp and E-Commerce (ecommerce) development. We do can anything from build custom software for businesses to helping businesses get started selling online. ',
                  keywords: 'custom webapp, custom software, webapp, web app, webapp development, ecommerce, e-commerce, e-commerce website',
                  index: true,
                  follow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ],
                  image_src: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                  og: {
                    title: :title,
                    site_name: :site,
                    url: request.original_url,
                    description: :description,
                    image: { 
                      url: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                      alt: 'NoBull Software Co. Logo',
                      type: 'image/png'
                    }
                  },
                  twitter: {
                    card: :description,
                    site: "@richjdsmith",
                    creator: "@richjdsmith"
                  }
  end

  def why_we_hand_code
    set_meta_tags title: 'Why We Hand Code Our Websites',
                  description: 'NoBull Web Company only sells custom, hand-coded websites. We don\'t use themes or templates. We also don\'t use WordPress. We do this because we actually know how to build websites from scratch and know it results in a better website.' ,
                  keywords: 'why not use wordpress, problem with wordpress, problem with wix, problem with squarespace, hand code website, no templates, bad templates, good code',
                  index: true,
                  follow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ],
                  image_src: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                  og: {
                    title: :title,
                    site_name: :site,
                    url: request.original_url,
                    description: :description,
                    image: { 
                      url: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                      alt: 'NoBull Software Co. Logo',
                      type: 'image/png'
                    }
                  },
                  twitter: {
                    card: :description,
                    site: "@richjdsmith",
                    creator: "@richjdsmith"
                  }
  end

  def keeping_prices_down
    set_meta_tags title: 'How We Keep Our Prices Down',
                  description: 'At NoBull Co., we use software and a custom web application to collect our clients information before building their website. This helps us to keep our prices down. It lets us offer our services at substantially lower prices than our competitors for custom, non-templated websites. ',
                  keywords: 'low cost website, low price website, low price web developer, low cost web developer, low cost web agency, low price web agency, cheap website, cheap web developer, cheap web design',
                  index: true,
                  follow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ],
                  image_src: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                  og: {
                    title: :title,
                    site_name: :site,
                    url: request.original_url,
                    description: :description,
                    image: { 
                      url: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                      alt: 'NoBull Software Co. Logo',
                      type: 'image/png'
                    }
                  },
                  twitter: {
                    card: :description,
                    site: "@richjdsmith",
                    creator: "@richjdsmith"
                  }
  end
  def free_beer
    set_meta_tags title: 'Our Referral Program',
                  description: 'While we do our best to gain new customers based purely on word-of-mouth from previous happy customers, we\'re certainly appreciative of those refferals. That\'s what we have the "free beer" program. ',
                  keywords: 'free beer, referral, wine, bourbon, local, salmon arm, calgary',
                  index: true,
                  follow: true,
                  icon: [
                    { href: "#{ActionController::Base.helpers.asset_path('favicon.ico')}"},
                    { href: "#{ActionController::Base.helpers.asset_path('favicon-96x96.png')}", sizes: '32x32 96x96', type: 'image/png' },
                    { href: "#{ActionController::Base.helpers.asset_path('apple-icon.png')}", rel: 'apple-touch-icon-precomposed', sizes: '32x32', type: 'image/png' },
                  ],
                  image_src: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                  og: {
                    title: :title,
                    site_name: :site,
                    url: request.original_url,
                    description: :description,
                    image: { 
                      url: "#{ActionController::Base.helpers.asset_path('nobull_full_logo_fbog_dimension.png')}",
                      alt: 'NoBull Software Co. Logo',
                      type: 'image/png'
                    }
                  },
                  twitter: {
                    card: :description,
                    site: "@richjdsmith",
                    creator: "@richjdsmith"
                  }
  end

  private 
  def get_detected_country
    @detected = detected_country
  end
  def detected_country
    location = request.location
      if location.present? && location.country_code.present? && location.country_code == "GB"
        return nil unless I18n.available_locales.include?(location.country_code.downcase)
      elsif location.present? && location.region.present? && location.region == "British Columbia"
        return nil unless I18n.available_locales.include?(location.region.downcase.split.join('_'))
      elsif location.present? && location.region.present? && location.region == "Alberta"
        return nil unless I18n.available_locales.include?(location.region.downcase)
      else 
        nil
      end
  end
end
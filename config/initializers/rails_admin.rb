RailsAdmin.config do |config|

  config.included_models = ['Article','Article::Translation', 'Project', 'Project::Translation', 'Subproject', 'Subproject::Translation', 'Service', 'Service::Translation', 'Subservice', 'Subservice::Translation', 'Import', 'Import::Translation', 'Point', 'Point::Translation', 'Image']

  ### Translations start
  config.model 'Article' do
    configure :translations, :globalize_tabs
  end

  config.model 'Article::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end

    include_fields :locale, :title, :text, :summary
  end

  config.model 'Project' do
    configure :translations, :globalize_tabs
    configure :bigProject do
      hide
    end
  end

  config.model 'Project::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    include_fields :locale, :title, :text
  end

  config.model 'Subproject' do
    visible false
    configure :translations, :globalize_tabs
    configure :project_id do
        hide
    end
  end

  config.model 'Subproject::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    
    include_fields :locale, :title, :text
  end

  config.model 'Service' do
    configure :translations, :globalize_tabs
  end

  config.model 'Service::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    include_fields :locale, :title, :text
  end

  config.model 'Subservice' do
    configure :translations, :globalize_tabs
  end

  config.model 'Subservice::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    include_fields :locale, :title, :text
  end

  config.model 'Import' do
    configure :translations, :globalize_tabs
  end

  config.model 'Import::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    include_fields :locale, :title, :text
  end

  config.model 'Image' do
    configure :service_id do
      hide
    end
    configure :subservice_id do
      hide
    end
    configure :subproject_id do
      hide
    end
  end

  config.model 'Point' do


    configure :service_id do
      hide
    end
    configure :subservice_id do
      hide
    end

    configure :translations, :globalize_tabs
  end

  config.model 'Point::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    include_fields :locale, :text
  end

  ### Translation end
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end


  config.authenticate_with do
    authenticate_or_request_with_http_basic('Site Message') do |username, password|
      username == 'user' && password == 'password'
    end
  end

  


end

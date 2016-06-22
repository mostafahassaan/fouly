RailsAdmin.config do |config|

  config.included_models = ['Article','Article::Translation', 'Project', 'Project::Translation']

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
  end

  config.model 'Project::Translation' do
    visible false
    configure :locale, :hidden do
      help ''
    end
    include_fields :locale, :title, :text
  end

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
end

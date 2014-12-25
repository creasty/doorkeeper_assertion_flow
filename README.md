Doorkeeper Assertion Flow
=========================

Extension of https://tools.ietf.org/html/draft-ietf-oauth-assertions-18 for doorkeeper.


Installation
------------

### 1. Add the gem to your Gemfile

```ruby
gem 'doorkeeper'
gem 'doorkeeper_assertion_flow'
```

### 2. Include assertion in the grant_flows

```ruby
grant_flows %w[assertion authorization_code implicit password client_credentials]
```

### 3. Configure resource_owner_from_assertion

```ruby
resource_owner_from_assertion do
  p = params[:assertion] || {}

  oauth = UserOauth.find_by p.slice(
    :provider,
    :uid,
  )

  if oauth
    oauth.refresh_credentials p.slice(
      :token,
      :token_secret,
      :token_expires_at,
    )

    oauth.user_account if oauth.save
  end
end
```


License
-------

This project is copyright by [Creasty](http://www.creasty.com), released under the MIT lisence.  
See `LICENSE` file for details.

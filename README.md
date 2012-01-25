# Html Validator

Matchers for Rspec2 to validate Rails views locally using Nokogiri.

## Installation

Add this line to your application's Gemfile:

    gem 'html_validator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install html_validator

## Usage

    describe UsersController do
      render_views

      describe "GET show" do
          before { get :show }

          it { response.should be_valid_xhtml }
        end
      end
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Healthcheck 
Get a report about what is available at app.saucelabs.com.

## Running Tests

* Tests in Parallel:
	```
	$ rake parallel_run
	```
* Specific Configuration (see `/spec/support/platforms.yml` file)
	```
	$ rake mac_sierra_chrome
	```
* Demo Mode
	```
	$ rake sauce_demo
	```

## Environment Setup
1. Global Dependencies
    * [Install Ruby](http://watir.com/guides/ruby/)
    * [Install Git](https://github.com/address-book/junit_tests#install-git)
    * Clone This Repo
    ```
    $ git clone ruby-rspec-watir https://github.com/saucelabs-sample-test-frameworks/Ruby-RSpec-Watir.git
    ```
    * Install bundler
    ```
    $ gem install bundler
    ```

2. Sauce Credentials
    * In the terminal export your Sauce Labs Credentials as environmental variables:
    ```
    $ export SAUCE_USERNAME=<your Sauce Labs username>
	$ export SAUCE_ACCESS_KEY=<your Sauce Labs access key>
    ```

3. Project Dependencies
	* Install packages
	```
	$ bundle install
	```


# Healthcheck 
Get a report about what is available at app.saucelabs.com.

## Running Tests

~~* Tests in Parallel:~~ TODO
	```
	~~$ rake parallel_run~~
	```
* Specific Configuration (see `/spec/platforms.yml` file) or run `rake --tasks`
	```
	$ rake mac_sierra_chrome
	```

## Environment Setup
1. Global Dependencies
    * [Install Ruby](http://watir.com/guides/ruby/)
    * [Install Git](https://github.com/address-book/junit_tests#install-git)
    * Clone This Repo
    ```
    $ git clone git@github.com:mdsauce/healthcheck.git
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

4. Environment Variables
    User must exist in Sauce Labs as we need someone to login as!
    HEALTHBAR_TEST_USER
    HEALTHBAR_USER_PW

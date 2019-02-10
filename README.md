# Healthcheck 
Get a report about what is available at app.saucelabs.com.

## Running Tests
* TODO ~~Run a single spec~~:
    ```
    $ rake spec login_fail_spec
    ```
* Specific Configuration (see `/spec/platforms.yml` file) or run `rake --tasks`
	```
	$ rake mac_sierra_chrome
	```
* Random platform from `platforms.yml`
    ```
    $ rake
    ```

## Environment and Setup
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

3. Project Dependencies
	* Install packages
	```
	$ bundle install
	```

2. Sauce Credentials
    * In the terminal export your Sauce Labs Credentials as environmental variables:
    ```
    $ export SAUCE_USERNAME=<your Sauce Labs username>
	$ export SAUCE_ACCESS_KEY=<your Sauce Labs access key>
    ```

4. Environment Variables
    * Find or create a user you're willing to get locked out of Sauce Labs.  If there is a mistake in one of your tests you'll end up 

    ```
    HEALTHCHECK_TEST_USER
    HEALTHCHECK_USER_PW
    ```


## Updating your local branch
If you find your local branch missing the tests of the remote master branch just run something like `git fetch origin` to pull the latest commits to your local repo.
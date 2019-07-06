# Test Automation Framework
## Ruby, Selenium, Cucumber

### Table of Contents

 * [Getting setup](#getting-setup)
 * [Running the test framework](#running-tests)
 * [Running specific tests](#running-specific-tests)
 * [Investigating Failed Scenarios](#investigating-failed-scenarios)
 
<br>

---
<br>

<a name="getting-setup"></a>
## Getting setup

Make sure you have ruby installed. Preferably the latest version. 
Visit https://www.ruby-lang.org/en/ to find the latest version and download.

In order to run the automation you must first install the chrome browser.
Go to https://www.google.co.uk/chrome/ and download the latest version for your machine.

Also need the chrome webdriver.
Go to http://chromedriver.chromium.org/ and downlaod the latest stable version for your machine.
Unzip the file and then move the chrome driver into your /user/local/bin/ directory.

Once you have cloned the repository. Navigate into the main project folder.

```
cd david-lake-completed-test
```

Run the following commands to setup the environment and install the project dependencies:

```
gem install bundler
bundle install
```

The expected list of ruby gems and their dependencies is:

```
Fetching rake 12.3.2
Installing rake 12.3.2
Fetching builder 3.2.3
Installing builder 3.2.3
Using bundler 2.0.2
Fetching c21e 1.1.9
Installing c21e 1.1.9
Fetching childprocess 1.0.1
Installing childprocess 1.0.1 with native extensions
Fetching coderay 1.1.2
Installing coderay 1.1.2
Fetching gherkin3 3.1.2
Installing gherkin3 3.1.2
Fetching cucumber-core 1.3.1
Installing cucumber-core 1.3.1
Fetching cucumber-wire 0.0.1
Installing cucumber-wire 0.0.1
Fetching diff-lcs 1.3
Installing diff-lcs 1.3
Fetching event-bus 0.1.0
Installing event-bus 0.1.0
Fetching multi_json 1.13.1
Installing multi_json 1.13.1
Fetching multi_test 0.1.2
Installing multi_test 0.1.2
Fetching cucumber 2.2.0
Installing cucumber 2.2.0
Fetching google-protobuf 3.7.0 (universal-darwin)
Installing google-protobuf 3.7.0 (universal-darwin)
Fetching cucumber-messages 2.1.2
Installing cucumber-messages 2.1.2
Fetching gherkin 6.0.17
Installing gherkin 6.0.17
Fetching method_source 0.9.2
Installing method_source 0.9.2
Fetching pry 0.12.2
Installing pry 0.12.2
Fetching rspec-support 3.8.2
Installing rspec-support 3.8.2
Fetching rspec-expectations 3.8.4
Installing rspec-expectations 3.8.4
Fetching rubyzip 1.2.3
Installing rubyzip 1.2.3
Fetching selenium-webdriver 3.142.3
Installing selenium-webdriver 3.142.3
Bundle complete! 5 Gemfile dependencies, 23 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```

The four principle gems used are:

* selenium-webdriver 3.142.3
* cucumber cucumber 2.2.0
* gherkin 6.0.17
* rspec-expectations 3.8.4

<br>

---
<br>

<a name="running-tests"></a>
## Running the Test Framework

To run the test framework simply type:

```
cucumber
```

This will run all the tests inside the project.

Example output is:

```
Feature: Simple load

  Scenario:                     # features/simple.feature:2
    Given We navigate to a page # features/step_definitions/simple_steps.rb:4
    Then The page will load     # features/step_definitions/simple_steps.rb:8

1 scenario (1 passed)
2 steps (2 passed)
0m2.562s
```
<br>

---
<br>

<a name="running-specific-tests"></a>
## Running Specific Tests

If you wish to run a specific set of tests i.e a feature file use a cucumber tag. Each feature file has cucumber tags at the top of the page.

For example if I wanted to run all tests in the home page feature file I would use the following command:

```
cucumber --tags @Home
```

<br>

---
<br>

<a name="investigating-failed-scenarios"></a>
## Investigating Failed Scenarios

When a scenario fails it automatically captures a screenshot at the point of failure. All screenshots are saved in the screenshots folder. The screenshot will have the same name as the scenario that failed.



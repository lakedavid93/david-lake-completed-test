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
Using builder 3.2.3
Using ffi 1.9.18
Using coderay 1.1.1
Using colorize 0.8.1
Using gherkin 4.1.3
Using cucumber-wire 0.0.1
Using diff-lcs 1.3
Using multi_json 1.12.1
Using multi_test 0.1.2
Using method_source 0.8.2
Using mini_portile2 2.3.0
Using mysql2 0.4.10
Using slop 3.6.0
Using rspec-support 3.6.0
Using rubyzip 1.2.1
Using websocket 1.2.4
Using bundler 1.14.6
Using childprocess 0.7.0
Using cucumber-core 1.5.0
Using nokogiri 1.8.1
Using pry 0.10.4
Using rspec-core 3.6.0
Using rspec-expectations 3.6.0
Using rspec-mocks 3.6.0
Using selenium-webdriver 3.4.0
Using cucumber 2.4.0
Using rubyXL 3.3.26
Using rspec 3.6.0
Bundle complete! 9 Gemfile dependencies, 28 gems now installed.
```

The four principle gems used are:

* selenium-webdriver 3.4.0
* cucumber 2.4.0
* gherkin 4.1.1
* rspec 3.5.4

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



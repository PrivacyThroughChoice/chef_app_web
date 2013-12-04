Feature: Test all the devops

  In order to be super effective
  As an infrastructure engineer
  I want to use all the awesome tools

Background:

  Given I have provisioned the following infrastructure:
  | Server Name         | Operating System    | Version   | Chef Version    | Run List         |
  | thunr-web-ubuntu-1204 | ubuntu              | 12.04     | 11.8.0          | thunr-web::default |
  And I have run Chef

Feature: Test all the devops

  In order to be super effective
  As an infrastructure engineer
  I want to use all the awesome tools

Background:

  Given I have provisioned the following infrastructure:
  | Server Name         | Operating System    | Version   | Chef Version    | Run List         |
  | chef_app_web-ubuntu-1204 | ubuntu              | 12.04     | 11.8.0          | chef_app_web::default |
  And I have run Chef

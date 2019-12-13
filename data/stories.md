## story_greet
* greet
 - utter_name

## story_goodbye
* goodbye
 - utter_goodbye
 - action_restart

## story_thanks
* thanks
 - utter_thanks

## story_name
* greet
 - utter_name
* enter_name{"name": "Sam"}
 - utter_greet

## story_name_1
* enter_name
 - utter_reenter_name

## story_name_2
* enter_name{"name": "Sam"}
 - utter_greet

## story_joke_01
* joke
 - action_joke
 - utter_goodbye
 - action_restart

## New Story

* greet
    - utter_name
* enter_name{"name":"Fred"}
    - slot{"name":"Fred"}
    - utter_greet

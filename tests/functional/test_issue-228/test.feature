Feature: Allow dictionary entry as value for its_key_is_value filter

  Scenario: Key and value match
    Given I have aws_s3_bucket defined
    When its tags includes an entry where "Colour" is "Red"
    Then it must fail

  Scenario: Value difference
    Given I have aws_s3_bucket defined
    When its tags includes an entry where "Colour" is "Green"
    Then it must fail

  Scenario: Key difference
    Given I have aws_s3_bucket defined
    When its tags includes an entry where "Experience" is "Green"
    Then it must fail

  Scenario: Key and value match (neg)
    Given I have aws_s3_bucket defined
    When its tags does not include an entry where "Colour" is "Red"
    Then it must fail

  Scenario: Value difference (neg)
    Given I have aws_s3_bucket defined
    When its tags does not include an entry where "Colour" is "Green"
    Then it must fail

  Scenario: Key difference (neg)
    Given I have aws_s3_bucket defined
    When its tags does not include an entry where "Experience" is "Green"
    Then it must fail
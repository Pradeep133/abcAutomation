Feature: ABC Application Home Functional Tests

  Background: User Navigate to ABC Home Page
    When User navigate to "ABC" Home page

Scenerio Outline: verify user able to navigate available fields
  When user click "Why ABC Consultants" on "ABOUT US"
  Then user should see "Why Us - ABC Consultants"

    | link | Tab Name |
    | Why ABC Consultants | ABOUT US |
    | Leadership Team | ABOUT US |
    | Supervisory Board and Advisory Group | ABOUT US |
    | Media | ABOUT US |
    | Life at ABC | ABOUT US |
    | CSR | ABOUT US |

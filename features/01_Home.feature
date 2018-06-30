feature:Functional Tests


  Background: User Navigate to ABC Home PageFeature: ABC Aplication Ho
    When User navigate to "ABC" Home page

@test
  Scenerio: verify user able to see all available menus
    Then User should see "HOME" tab
    Then User should see "ABOUT US" tab
    Then User should see "INDUSTRY PRACTICES" tab
    Then User should see "JOBS" tab
    Then User should see "CONTACT US" tab

  Scenerio: verify user able to see all the sub sections under selected tab
    When User select "ABOUT US" tab
    Then user should see "Why ABC Consultants"
    Then user should see "Leadership Team"
    Then user should see "Supervisory Board and Advisory Group"
    Then user should see "Media"
    Then user should see "Life at ABC"
    Then user should see "CSR"

  Scenerio: verify user able to see all the sub sections under selected tab
    When User select "SERVICES" tab
    Then user should see "Executive Search"
    Then user should see "Senior & Middle Level Hiring"
    Then user should see "Recruitment Process Outsourcing"
    Then user should see "Recruitment Marketplace"
    Then user should see "Career Transition Services"
    Then user should see "Global Sourcing"
    Then user should see "Market Intelligence"
    Then user should see "Recruiter Training Programmes"
    Then user should see "Interim Management"

  Scenario: verify user able to see all the sub sections under selected tab
    When User select "INDUSTRY PRACTICES" tab
    Then user should see "Aerospace & Defense"
    Then user should see "Automobile & Auto Components"
    Then user should see "Consumer Durables & Building Materials"
    Then user should see "Development"
    Then user should see "Education"
    Then user should see "Electrical & Electronics"
    Then user should see "Financial Services"
    Then user should see "FMCG"
    Then user should see "Healthcare"
    Then user should see "Industrial"
    Then user should see "Infrastructure"
    Then user should see "Internet"
    Then user should see "Logistics"
    Then user should see "Media & Entertainment"
    Then user should see "Metals, Minerals & Mining"
    Then user should see "Oil & Gas"
    Then user should see "Outsourcing & Offshoring"
    Then user should see "Pharma, Lifesciences, Devices & Diagnostics"
    Then user should see "Power"
    Then user should see "Real Estate"
    Then user should see "Retail"
    Then user should see "Services"
    Then user should see "Technology"
    Then user should see "Telecom"


  Scenerio: verify user able to see all the sub sections under selected tab
    When User select "JOBS" tab
    Then user should see "Job Search"
    Then user should see "Submit your CV"

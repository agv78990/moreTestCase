
Feature: Weather update using city name, token , xml mode (endpoint: api.openweathermap.org/data/2.5/weather)


Scenario: Valid call to end point shall return weather city=Bellevue in xml
      Given Prepare endpoint and query parameters to make a request
      And q="bellevue"
      And appid="6628862a31778efcdb85c9893f6fb952"
      And mode ="xml"
      And Request type : Get
      When Make a call to endpoint
      Then Verify data information about city name="bellevue" in response body


Scenario: Valid call to the endpoint shall return data about CityName= New York City
    Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    And Request-Type: GET
    And  KEY=q Value=Queens
    And  KEY=Appid Value="6628862a31778efcdb85c9893f6fb952"
    And mode ="xml"
    When Make a call to /data/2.5/weather
    Then Verify data information about CityName=New York City in the response body

 Scenario Valid call to the endpoint shall return data about Cityname= "chicago"
      Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
      And Request-Type: GET
      And  KEY=q Value=chicago
      And  KEY=Appid Value="6628862a31778efcdb85c9893f6fb952"
      And mode ="xml"
     When Make a call to /data/2.5/weather
     Then Verify data information about CityName=chicago in the response body

     Scenario Valid call to endpoint shall return data about CityName="Bothel"
     Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
     And Request-Type: Get
     And q="Bothel"
     And Appid="6628862a31778efcdb85c9893f6fb952"
     And mode="xml"
     When Make a call to /data/2.5/weather
     Then Verify data information about Cityname="Bothel"

     Feature:  Weather update using city Id, token , xml mode (endpoint: api.openweathermap.org/data/2.5/weather)
     Given Endpoint: api.openweathermap.org/data/2.5/weather?q={city ID}&appid={API key}
     And Request-type: Get
     And q="bellevue"
     And mode="xml"
     And appid=""6628862a31778efcdb85c9893f6fb952"
     When Make a call to /data/2.5/weather
     Then Verify data information about CItyid="bellevue"
     
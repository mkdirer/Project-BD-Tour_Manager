# Project-BD-Tour_Manager
This project is a tour manager application that allows the management of information related to available cruises on the Baltic Sea and the infrastructure associated with them.

The application enables the addition of passengers, their luggage and items, registration of passengers for cruises, registration of crew members and captains, addition of new cruises, ports, and information about ships, as well as registration of users on the website.

Users can browse detailed information about cruises and delete data from selected tables.

## Project Concept and Assumptions
The project focuses on the management of tours and cruises. It includes an application that enables the management of information about available cruises on the Baltic Sea and associated infrastructure, such as passengers, their luggage and items, crew members, and ports.

## Conceptual Diagram
The Entity Relationship Diagram (ERD) presents the entities, their attributes, and relations in the database.
![image](https://user-images.githubusercontent.com/83553257/225872360-3ed8c38b-b14a-4715-98d1-71fb0ed5f8b3.png)

## Logical Design
The project consists of ten tables, including User, Passenger, Luggage, Item, Crew, Captain, Port, Port Staff, Ship, and Cruise, as well as two associative tables: Passenger on board and Luggage on board.

Three views are also included, such as Data about Passengers (containing data about purchased tickets for the cruise), Data about the Cruise (containing detailed information about the trip), and Passengers who Spent over 300 Euros on Tickets (listing passengers who spent over 300 Euros on tickets).

Six triggers have been defined to enable the automatic execution of specific actions in response to certain events, such as adding or removing luggage from a passenger's inventory, subtracting the ticket cost from the user's balance upon registration of a passenger for a cruise, and verifying if the captain specified while adding a cruise is unique.

## Functional Design
The project includes forms that allow users to enter and retrieve data from each defined table. Data validation occurs both at the form level and in the database.

Reports are displayed in tabular format and are based on the three defined views in the database.

The built-in authorization system allows only administrators to delete data from the database.

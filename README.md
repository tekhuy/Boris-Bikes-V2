Makers Academy Week 1 Task - RECAP
==================================

# OOD & OOP Basics: Boris Bikes
===============================

The goal of this project is to introduce Object-Oriented Programming (OOP) and the very basics of Object-Oriented Design (OOD).

##Client Brief:
Creating a simple system for managing Boris Bikes in London. 
- Keep track of a number of docking stations and bikes. 
- It will allow a customer to rent the bikes and return them. 
- Occasionally the bikes will break and then they will be unavailable for rental. 
- There will be a garage to fix the bikes 
- There will be a van to move the bikes between the stations and the garage.

A system like this (in a much more complex form) is actually used by the real Boris bikes system in London. Every time you rent a bike or return it some objects get created somewhere in the system that tracks the usage of all bikes.

##Class Responsibility Collaborations
*************************************

###class Bike

| RESPONSIBILITIES      | COLLABORATORS         |
|-----------------------|-----------------------|
| rented                | Docking Station       |
| return                | Docking Station       |
| broken                | Docking Station       |


###class Docking_Station

| RESPONSIBILITIES       | COLLABORATORS        |
|------------------------|----------------------|
| hold Bike              | Bike                 |
| Accept Bike            | Bike                 |
| Release Bike           | Van                  |


###class Van

| RESPONSIBILITIES       | COLLABORATORS        |
|------------------------|----------------------|
| hold Bike              | Bike                 |
| Collect Bike           | Bike, Docking Station|
| Return Bike            | Bike, Docking Station|

###class Garage

| RESPONSIBILITIES       | COLLABORATORS        |
|------------------------|----------------------|
| Accept  Bike           | Bike, Van            |
| Return Bike            | Bike, Van            | 
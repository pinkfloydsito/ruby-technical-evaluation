# In the following exercise we describe four scenarios. For each scenario we want to know how many queries Rails performs against the database. In all cases, there are 8 employees in the database and each one has exactly 2 addresses. Please describe how many queries are generated and, most importantly, why.


## model
```ruby
class Employee < ApplicationRecord

has_many :addresses

end
```


## 1
```ruby
Employee.all.each do |emp|

emp.addresses.each { |addr| puts (addr.street) }

end
```
in this case we have `16` since we are just selecting the employees and querying the addresses of each one by one.

we are just doing an inner join selecting the employee.* data. so all the addresses are missing

## 2
```ruby
Employee.joins(:addresses).all.each do |emp|

emp.addresses.each { |addr| puts (addr.street) }

end
```

in this case we have `16` since we apply lazy loading in this case.
we have an n+1 case here where we evaluate when accessing the address

we are just doing an inner join selecting the employee.* data. so all the addresses are missing

## 3
```ruby
Employee.includes(:addresses).all.each do |emp|

emp.addresses.each { |addr| puts (addr.street) }

end
```
in this case we have `2` queries since we are using `includes`.
Basically are first doing a select of all the employees and after that picking those employees ids to fetch all the addresses associated to them.

Includes is basically the one in charge of deleting that N+1 query problem we had before

## 4
```ruby
Employee.joins(:addresses).includes(:addresses).all.each do |emp|

emp.addresses.each { |addr| puts(addr.street) }

end
```

in this case we have `2` queries since we are using `includes`.

Basically are first doing a select of all the employees, doing an inner join with addresses and after that picking those employees ids to fetch all the addresses associated to them.

Includes is basically the one in charge of deleting that N+1 query problem we had before
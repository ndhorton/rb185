# 2:2 What to Focus On #

* What schema does an application require?
  * Being able to map the data used by a project to a database schema is an
  important skill.
* Project setup is secondary.
  * You can look up the steps necessary to set up new database projects as and
  when you need to.

# 2:3 Project Overview #

The strategy of devising an API that can be used by our application to interact
with interchangeable classes, which all implement that same API, is called the
**Adapter Pattern**.

An exetremely common use of this pattern is for situations where we want to have
the option of storing data in various ways, and we want to abstract away the
specifics of these data storage methods from our application. This allows us to
run the same application on a variety of different data stores without having to
change the code in the application itself. All we have to do is implement a new
class that exposes the API, such that this new class properly interacts with
whatever new data store we wish to use. As long as you do this, our application
can interact with a potentially unlimited variety of data stores.

For instance, we will be working with PostgreSQL, but, using this pattern, we
could easily add support for MySQL, SQLServer, and so on.



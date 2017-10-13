# README
A repository for our second project on the engineering course at sparta global. Built in Ruby on rails.

##Functionality  
**Index page for projects and users**  
All projects are shown in a grid layout via the projects_each partial. However if you are logged in as a Sparta trainee you will be greeted with all your own projects. If you are logged in as a Sparta staff member you will see all projects by all trainees. If you are not a member then you will see all published projects. All listed projects and users are represented in cards on their respective index pages. Three are shown on each line and are appropriately spaced out. The links have been placed in a footer and separated by lines. The Spartan index page is styled to conform with the aesthetics of the projects index page. Only admins can see the index of all spartans. Spartans can be edited from this page and only non-staff members can by destroyed.

**Different user access**  
We distinguished between Spartans and staff by adding a boolean attribute to the users which is false by default and true is they are staff which can by edited on other users by staff members only. We used sign-in check helper built in to rails to restrict access to logged in users only and 'current_spartan.admin' to restrict access to admins only. Different kinds of users are able to access different features, for example only admins are able to edit another user's project.

**Navigation**  
The navigation bar starts with the logo which is used throughout this links back to the index page. Then there are links that show up based on the users permissions all users have a link to the published projects. A spartan, will have a link to their projects, a staff member will have a link to all projects and the index of spartans. At the end, If the user is signed in they will be shown buttons that link to be able to edit their account or logout.
If the user is not signed in they will be shown the form to log in and a button to the sign up page. On mobile, the links and the login and registration methods are hidden and a button is used to show them below the logo.

**Notes on admins deleting user accounts**  
Admins are able to delete non-admin accounts, they are not able to delete other admins.

**New and edit forms**  
Forms have dropdown menus which allow the user to attribute the project being created or updated to a particular spartan. They also have margins on the left and right to be easier to read.

**Editing spartans**  
Admins can edit all spartans and can delete non-admins. All spartans can edit their own profiles and from that view they can link to the edit account page.

##Styling 
We used a white background throughout the site with grey backgrounds behind text for ease of reading. We implemented the Sparta colours from the style guide by adding Sparta charcoal to the nav-bar and Sparta blue to all links in the nav as well as the 'New Project' button on the projects index page.
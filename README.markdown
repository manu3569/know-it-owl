##Design Brief

Create a simple Rails application that collects a user’s financial information, persists it in a database and calculates the amount of life insurance that they need.

###The Form

A basic form shall allow input of a user’s Total Annual Income, Current Savings and Retirement Savings. This information shall be persisted so that we can begin to benchmark our users against their peers. The form should look similar to the screenshot below:
￼
###Displaying the Recommendation
Upon submission of the form, the application shall display the recommended life insurance amount to the user as text. eg “You should get $123,000 in life insurance”. If you wish, you may choose to implement this as an AJAX form so that the user never has to leave the page.
For calculation of the recommended life insurance amount, use the following formula:
Recommended Insurance = Annual Income * 10 * (1 ­ Tax Rate) ­ (Savings + Retirement Savings)
You can assume a tax rate of 30%.
Off Canvas Help
Each form element is accompanied by a small help icon. When the user clicks the help icon, an off-canvas message should appear (some simple animation would be awesome!) as shown below:
Hint: here are some examples of the effect

* http://www.berriart.com/sidr/
* http://christopheryee.ca/pushy/
￼￼￼

###Asking for help

We want this project to closely mimic the experience of doing an actual project for Know It Owl. That means you can and should reach out for help and advice if you need it. Pretend we are your colleagues. Email us, find us on gchat, arrange a skype call, etc. Whatever you need to get the job done.

###Evaluation Criteria

We’re obviously looking at what you created, but more importantly how you can communicate your design decisions and thought process. We’ll be asking questions like:

* “What made you choose this plugin?”
* “Why did you implement this in the controller?”
* “What would you do differently next time”
* “Explain how maintainable this approach is”

###What We Expect

* Spend 1-3 hours on the project.
* Use the tools and frameworks that you are comfortable with
* Leverage plugins and online code snippets (don’t reinvent the wheel, productivity
always trumps novelty)
* Don’t worry if you don’t get all of it done. Seriously, don’t. This is not a test of coding
speed.
* Have fun! We’re asking for some of your time, you should make sure you are learning
something and having some fun.
What We Don’t Expect
* Pixel perfection, fancy fonts
* Compatibility with older browsers

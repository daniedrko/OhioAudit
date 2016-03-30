# OhioAudit
These are the files I used to create OhioAudit.org and its visualizations. 

Fellow student journalist Will Drabold and I came up with the process and coordinated a public records compliance audit of Ohio's public universities on Jan. 29. We published the results (available on our site) for Sunshine Week 2016.

We worked with dozens of students from The Post in Athens, OH and other student newsrooms. Please see the full credits list here: http://ohioaudit.org/Pages/credits.html
Without those students, none of this would have been possible.

Basically, these files show how I turned the results of a Google form: https://docs.google.com/forms/d/1TKNOKOf4-pBO2bAUQfgr-GO6iPIKHHH7In_e4PShjQg/edit?usp=drive_web

...into the visualizations used on our website. 

R Files: 

clean.dat.audit.data.R - Used to clean up the responses from the raw Google form.
map.Rmd - A simple Leaflet map showing where the universities are and a quick sum of their results.
ui.r - Shiny UI file for our interactive visualization
server.r - Shiny server file for our interactive visualization
results.rdata - The results rendered from our Google form, easily readable in R!

For more information on how we collected the data and decided what records to request, visit http://ohioaudit.org/Pages/methods.html

The analyses and displays are relatively basic, since we had a somewhat small sample of data (5 results from 12 universities). However, I hope these files can be used to inspire other student and professional journalists to conduct public records audits and try to display them in interesting, informative ways!

Please feel free to reach out with questions or comments (dkeetonolsen84@gmail.com)! 
-DKO

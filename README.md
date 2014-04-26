## RRUSA - Students Against Violence Project

### Initial application architecture

#### Front-end
* Bourbon
* Neat grid

#### Back-end
__Models__
* Event (Date, time, title)
* Resource (Name, summary, URL)
* Contact (singleton with various contact attributes)
* Quotes (quote, source)
* Stats (number_of, total, content)

__Controller only__
* Pages

#### Maintenance
This project will use ActiveAdmin to manage calendar events, resources, contact
information and other information.

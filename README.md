== README

### Initial application architecture

#### Front-end
* Bourbon
* Neat grid

#### Back-end
_Models_
* Event (Date, time, title)
* Resource (Name, summary, URL)
* Contact (singleton with various contact attributes)
* Quotes (quote, source)
* Stats (number_of, total, content)

_Controller only_
* Pages

#### Maintenance
This project will use ActiveAdmin to manage calendar events, resources, contact
information and other information.

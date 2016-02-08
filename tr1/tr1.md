
This report briefly summarizes prototype and architecture of a mapping
tool that is being created as part of project coli-conc[^1] at the head
office of GBV Common Library Network (VZG). Project coli-conc aims at
developing an infrastructure to facilitate management and exchange of
concordances between library knowledge organization systems. This
includes a modular web application named Cocoda.

# Overview

For the most part knowledge organization systems in Cocoda are
represented in the popular SKOS[^2] data model: a particular knowledge
organization system is called a **concept scheme** consisting of a set
of possibly connected **concepts** with, **labels**, **notations**, and
other properties. A **mapping** relates similar concepts from one
concept scheme to concepts of another concept scheme. A set of mappings
between two concept schemes is called **concordance**. The main
application of Cocoda is going to be the creation and evaluation of
mappings and concordances with Dewey Decimal Classification (DDC) as
primary use case.

# Technical architecture

The technical architecture of Cocoda consists of seven layers. The
following table lists each of them with current status and choice of
technologies:

  **description**                   **state**             **technology**
  --------------------------------- --------------------- -----------------------
  web interface                     first prototype       HTML, CSS, JavaScript
  JavaScript client modules         alpha releases        AngularJS
  JSKOS data format                 incomplete draft      JSON(-LD)
  JSKOS API and wrappers            drafts and ideas      HTTP, JSON
  JSKOS databases                   first prototype       CouchDB
  mapping recommendation services   ideas & experiments   not implemented yet
  quality assessment services       ideas                 not implemented yet
  user management                   ideas                 not implemented yet

## Web interface

The current user interface of Cocoda web application is only a
preliminary prototype to test functionalities. Later versions will be
subject to usability studies.

## JavaScript client modules

The web interface is build of independent JavaScript modules, which can
also be used in other applications. Two of these modules have already
been published as early alpha releases: ng-skos[^3] is a general module
for simple knowledge organization systems and ng-suggest[^4] provides
typeahead via OpenSearch Suggestions API. All modules are based on
AngularJS[^5] because it seemed to be the most popular web application
framework. A later version may also choose Web Components, plain jQuery
or another JavaScript framework.

## JSKOS data format

The JSKOS representation of knowledge organization system data is being
developed based on SKOS and JSON-LD.[^6] This format combines the
benefit of RDF for data aggregation and JSON for easy manipulation and
storage. The current draft of JSKOS is available at
[https://gbv.github.io/jskos/](http://couchdb.apache.org/).

## JSKOS API and wrappers

Several APIs and services exist to query and store knowledge
organization systems (Skosmos,[^7] Poolparty,[^8] iQvoc, VocBench,[^9]
Wikidata,[^10] lobid.org[^11]...). As part of coli-conc we will evaluate
and compare these APIs and create wrappers to a common JSKOS-API. The
current prototype makes use of API of lobid.org RVK. Both wrappers and
API specification will be made available at
[https://gbv.github.io/jskos-api/](https://github.com/NatLibFi/Skosmos/).

## JSKOS databases

CouchDB[^12] databases are used to store concepts and mappings in JSKOS
format. A copy of German DDC in MARCXML has been transformed to this
format for easy access with Cocoda web application. Both database and
DDC data are not public by now.

## Mapping recommendation services

The creation and management of mappings will be supported by several
mapping recommendation services based automatic search for concept
labels, existing mappings, connected concepts, and occurrences in
library catalogs. The current prototype contains some static examples
for illustration and testing.

[^1]: [https://coli-conc.gbv.de/](https://coli-conc.gbv.de/) (project homepage)

[^2]: [http://www.w3.org/TR/skos-reference/](http://www.w3.org/TR/skos-reference/)

[^3]: [https://gbv.github.io/ng-skos/](https://gbv.github.io/ng-skos/)

[^4]: [https://gbv.github.io/ng-suggest/](https://gbv.github.io/ng-suggest/)

[^5]: [https://angularjs.org/](https://angularjs.org/)

[^6]: [http://json-ld.org/](http://json-ld.org/)

[^7]: [https://github.com/NatLibFi/Skosmos/](https://github.com/NatLibFi/Skosmos/)

[^8]: [http://www.poolparty.biz/](http://www.poolparty.biz/)

[^9]: [http://vocbench.uniroma2.it/](http://vocbench.uniroma2.it/)

[^10]: [https://wikidata.org/](https://wikidata.org/)

[^11]: [http://lobid.org/api](http://lobid.org/api)

[^12]: [http://couchdb.apache.org/](http://couchdb.apache.org/)

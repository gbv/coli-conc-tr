
This report gives a first introdution to data about Knowledge Organization
Systems in Wikidata^[https://www.wikidata.org/] and preliminary mappings to
JSKOS data format.

# Introdution

TODO: What is KOS?

TODO: What is Wikidata?

Some of the Wikidata items and connections described here have been modified or
created for this report. Due to the dynamic nature of the database it may 
change so the following to some degree only reflects a snapshot.

# Overview

## Wikidata items

Virtually every Wikidata item can be used as concept. For instance there is an
item for white blood cells (aka leukocytes) with id [Q42395]. In addition there
are items for subjects specific to knowledge organization systems. The following
diagrams contains a excert of the semantic network of Wikidata including some of
these items:

~~~
catalog (Q2352616)
 ^
 | subclass of (P279)                                  +-- BARTOC (Q22279816)
 |                                  instance of (P31)  |  
terminology registry (Q22692845) <---------------------+-- Datahub (Q18814247)
 |                                                     |
 | list of (P360)                                      +-- ... 
v                                         list of   
knowledge organization system (Q6423319) -----------> concept (Q151885)
 ^                                                     ^
 | subclass of                                         | has part (P527)
 |                                                     |
 +-- thesaurus (Q17152639)                            concordance (Q1141303)
 |
 +-- classification (Q5962346)
 |     ^ 
 .     | subclass of
 .     |
 .     +-- biological classification (Q11398)
       |
       +-- library classification (Q48473)
       |     ^
       |     | instance of (P31)
       .     |                         
       .   Dewey Decimal Classification (Q48460)
       .     |
             +--- edition (P747) ---> DDC 23 (Q15222117)
~~~

As shown in the diagram, Wikidata contains:

* an item for terminology registry
  ([Q22692845])
* some items for instances of terminology registries, e.g. BARTOC
  ([Q22279816])
* an item for knowledge organization systems in general 
  ([Q6423319])
* several items for types of KOS, such as classifications
  ([Q5962346]), thesauri ([Q17152639]) ...
* many items for instances of KOS, e.g the Dewey Decimal Classification (DDC)
  ([Q48460])
* some items for editions of KOS instances, e.g. DDC edition 23
  ([Q15222117])
* an item for concordance 
  ([Q1141303])

Apart from single mappings, there is a correspondence between JSKOS object types
and these selected Wikidata items.

[Q17152639]: http://www.wikidata.org/entity/Q17152639
[Q5962346]: http://www.wikidata.org/entity/Q5962346
[Q48460]: http://www.wikidata.org/entity/Q48460
[Q22692845]: http://www.wikidata.org/entity/Q22692845
[Q6423319]: http://www.wikidata.org/entity/Q6423319
[Q15222117]: http://www.wikidata.org/entity/Q15222117

## Wikidata properties and statements

TODO



This report gives an overview about Open Source software for Knowledge
Organization Systems (KOS).

# Motivation

...project coli-conc...

To minimize the need of writing wrappers to KOS software, support of
JSKOS(-API) should directly be included in existing products. This is
possible at least for Open Source software.

# Existing lists of KOS software (Metabibliography)

The following lists of KOS software were used to find open source software
(including commercial products with an open source version):

* The [coli-conc Zotero library](https://www.zotero.org/groups/coli-conc/items/)
  contains [a section on software](https://www.zotero.org/groups/coli-conc/items/collectionKey/W5F4ENNP)
  with almost 30 enries.

* The [*ANDS appraisal of thesaurus software tools*](https://rd-alliance.org/system/files/documents/Thesaurus%20Software%20Tools.xlsx) is an Excel sheet created by members of the
  [Vocabulary Services Interest Group](https://rd-alliance.org/node/47826)
  of Research Data Alliance (RDA). It contains 39 software systems, some of

* The [TaxoBank Terminology Registry](http://www.taxobank.org/) has a list of
  [Software for building and editing thesauri](http://www.taxobank.org/content/thesauri-and-vocabulary-control-thesaurus-software) originally created by Leonard D. Will

Several more lists of taxonomy tools, ontology editors etc. exists so some
tools may have been missed.

# Open Source KOS software

Name and Link|Language|License
-------------|--------|-------
[Apelon Distributed Terminology System (DTS)](http://apelon-dts.sourceforge.net/) | Java | Apache
[ASKOSI](http://www.askosi.org/) | Java | GPL   
[Django Controlled Vocabularies](https://github.com/unt-libraries/django-controlled-vocabularies) | Python | BSD  
[FreeMind](http://freemind.sourceforge.net/) | Java | Apache
[iQvoc](http://iqvoc.net/) | Ruby | Apache
[OpenSKOS](http://openskos.org/) | PHP | GPL
[Protégé](http://protege.stanford.edu/) | Java | BSD
[Semantic Media](Wiki https://www.semantic-mediawiki.org) | PHP | GPL
[SISSVoc](http://www.sissvoc.info/) | Java & XSLT | Apache
[SKOS API](http://skosapi.sourceforge.net/) | Java | LGPL     
[Skosify](https://github.com/NatLibFi/Skosify) | Python | MIT 
[SKOSjs](https://github.com/tkurz/skosjs) | JavaScript | Apache   
[Skosmos](https://github.com/NatLibFi/Skosmos) | PHP | MIT  | 
[skosprovider](https://github.com/koenedaele/skosprovider) | Python | MIT  
[TemaTres](http://vocabularyserver.com/) | PHP | GPL  
[VocBench](http://vocbench.uniroma2.it/) | Java | ?    
[Web Protégé](http://protegewiki.stanford.edu/wiki/WebProtege) | Java | BSD  
[XMind](http://www.xmind.net/developer/) | Java | LGPL & EPL   
[VoCol](https://github.com/vocol/vocol) | Java & JavaScript | MIT  
[Wandora](http://wandora.org/) | Java | GPL  

# Summary

The resulting list of software contains small and large projects, web
applications and desktop applications, popular and less used software.
Additional evaluation is needed to decide which products to focus on.
Nevertheless the list shows that Java and PHP are the most used programming
languages, so programming libraries for JSKOS(-API) should first be implemented
in these languages (in addition to JavaScript which is needed for web clients).

A first start has been made with a 
[JSKOS programming library in PHP](https://packagist.org/packages/gbv/jskos).


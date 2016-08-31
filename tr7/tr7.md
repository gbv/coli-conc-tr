
This report gives an overview about Open Source web applications to publish or
manage Knowledge Organization Systems (KOS).

# Background

To manage concordances between Knowledge Organization Systems (KOS) in project
[coli-conc](https://coli-conc.gbv.de/), access to each of these KOS is
required.  To access and manage KOS there are several tools, as listed in a
first report [@ColiConcTR2]. The following table contains an update of this
list, narrowed down to web-applications. The review only contains applications
with main focus on KOS management. Several related software exists to make use
of controlled vocabularies as part of another task, ^[For instance Annotation
applications such as [Annot](http://annot.readthedocs.io/).] but their
evaluation would require a much larger study.

# Open Source web applications for KOS

Name and Link|Editor|Language|License|Source|Update
-------------|------|--------|-------|------|------
[iQvoc](http://iqvoc.net/) | yes | Ruby | Apache | [GitHub](https://github.com/innoq/iqvoc) | 2016
[Semantic MediaWiki](https://www.semantic-mediawiki.org) | yes | PHP | GPL | [GitHub](https://github.com/SemanticMediaWiki/SemanticMediaWiki/) | 2016
[SKOS Editor](http://jbiomedsem.biomedcentral.com/articles/10.1186/s13326-015-0043-z) | yes | Java | LGPL | [GitHub](https://github.com/Blulab-Utah/SKOSEditor) | 2016
[TemaTres](http://vocabularyserver.com/) | yes | PHP | GPL | [GitHub](https://github.com/tematres/TemaTres-Vocabulary-Server)  | 2016
[VocBench](http://vocbench.uniroma2.it/) | yes | Java | ? | [Bitbucket](https://bitbucket.org/art-uniroma2/vocbench)  | 2016
[Wikibase](http://wikiba.se/) | yes | PHP | GPL | [Wikimedia](http://wikiba.se/components/) | 2016
[Web Protégé](http://protegewiki.stanford.edu/wiki/WebProtege) | yes | Java | BSD | [GitHub](http://github.com/protegeproject/webprotege) | 2015
[SKOSjs](https://github.com/tkurz/skosjs) | yes | JavaScript | Apache | [GitHub](https://github.com/tkurz/skosjs) | 2014
[Django Controlled Vocabularies](https://github.com/unt-libraries/django-controlled-vocabularies) | yes | Python | BSD | [GitHub](https://github.com/unt-libraries/django-controlled-vocabularies) | 2016
[OpenSKOS](http://openskos.org/) | no | PHP | GPL | [GitHub](https://github.com/OpenSKOS/OpenSKOS) | 2016
[Skosmos](https://github.com/NatLibFi/Skosmos) | no | PHP | MIT | [GitHub](https://github.com/NatLibFi/Skosmos) | 2016
[SKOS Play](http://labs.sparna.fr/skos-play/about) | no | Java | CC-BY-SA | [Bitbucket](https://bitbucket.org/tfrancart/sparna) | 2016
[VoCol](https://github.com/vocol/vocol) | no | JavaScript | MIT | [GitHub](https://github.com/vocol/vocol) | 2016
[SISSVoc](http://www.sissvoc.info/) | no | XSLT | Apache | [GitHub](https://github.com/SISS/sissvoc) | 2015
[ASKOSI](http://www.askosi.org/) | no | Java | GPL | [Archive](http://www.askosi.org/example/) | 2011

## Review

The list contains 15 KOS applications written in six different programming
languages (5 Java, 5 PHP, 2 JavaScript, 1 Ruby, 1 Python, 1 XSLT). All
applications except SISSVoc and Django also use JavaScript for (parts of) their
web interface. All project except ASKOSI use git for version control, mainly
hosted at GitHub.  All but three code bases have been updated in the last eight
month. Nine tools can be used as KOS editor and six provide read-only access.
The following evaluation skips projects that have not been updated at least in
2015 (*ASKOSI* and *SKOSjs*).

### Applications written in PHP

* Both *Semantic MediaWiki* and *Wikibase* are extensions to MediaWiki software
  for ontologies or more general knowledge bases. For this reason and because 
  MediaWiki provides a powerfull API, it makes more sense to hook on the API
  instead of trying to extend the source code.

* **TODO:** *TemaTres*, *OpenSKOS* and *Skosmos*
  (do they share some code or contributors)? OpenSKOS only provides an API

### Applications written in Java

* *Web Protégé*: not updated since end of 2015. Ontology editor.
* **TODO:** *SKOS Editor*, *VocBench*, *SKOS Play* 

### Applications written in other languages

* *iQvoc* (Ruby in rails, backed by a company)
* *SISSVoc* (XSLT, used on production)
* *VoCol* (based on git, relevant in practice?)
* *Django Controlled Vocabularies* (Python, internally used by multiple libraries) 

## Summary
 
Most promising for collaboration: Skosmos, TemaTres, iQVoc, VocBench, SKOS Editor.
The other projects are also useful for development!

The review confirms that Java, PHP, and JavaScript are most relevant to focus on.

...

# References


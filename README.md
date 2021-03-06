#Rikulo EL

[Rikulo EL](http://rikulo.org) is an implementation of the [Unified Expression
 Language](http://en.wikipedia.org/wiki/Unified_Expression_Language) 
 specification plus some enhancements for and in Dart. While the EL specification
 is originally designed for Java language, it serves as a powerful tool to embed 
 expressions into web pages.
 
Rikulo EL is distributed under the Apache 2.0 License.

* [Home](http://rikulo.org)
* [Documentation](http://docs.rikulo.org)
* [API Reference](http://api.rikulo.org)
* [Discussion](http://stackoverflow.com/questions/tagged/rikulo)
* [Issues](https://github.com/rikulo/rikulo-el/issues)

##Pub Package
    #import("package:rikulo_el/api.dart");
    //EL API interfaces
    #import("package:rikulo_el/impl.dart");
    //EL implementation

##pubspec.yaml
    name: ...
	...
	dependencies:
	  rikulo_el:
	  
##History
* Sep. 29, 2012:
 * [issue3](https://github.com/rikulo/rikulo-el/issues/3) Support Dart top level variable resolving
 * [issue4](https://github.com/rikulo/rikulo-el/issues/4) Support Dart top level function resolving
 * [issue5](https://github.com/rikulo/rikulo-el/issues/5) Temporary map/array shall be live in each Evaluation only
* Sep. 27, 2012:
 * [issue1](https://github.com/rikulo/rikulo-el/issues/1) Support Dart array expression
 * [issue2](https://github.com/rikulo/rikulo-el/issues/2) Support Dart map expression
 * Add more testing cases.
* Sep. 26, 2012: 
 * Fix some bugs.
 * Change file structure to match "pub" specification.
* Sep. 20, 2012: alpha version
 * Porting EL 2.2 from Java implementation of Tomcat 7 to Dart language(in brutal way :-)).
 * Some Java specific functions are removed(e.g. There is no BigDecimal in Dart; thus not in Rikulo-el, either).
 * It uses Dart Mirror a lot.
 * EL parser seems working great.
 * There must be rooms for extra features in Dart specifically(e.g. named optional arguments for function).

##Notes to Contributors

###Test and Debug

You are welcome to submit bugs and feature requests. Or even better if you can fix or implement them!

###Fork Rikulo EL

If you'd like to contribute back to the core, you can [fork this repository](https://help.github.com/articles/fork-a-repo) and send us a pull request, when it is ready.

If you are new to Git or GitHub, please read [this guide](https://help.github.com/) first.

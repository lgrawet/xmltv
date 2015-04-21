#Supported tags and respective Dockerfile links

* [0.5.66](https://github.com/iuuuuan/xmltv/blob/master/Dockerfile)


#What is XMLTV?

XMLTV is a set of programs to process TV (tvguide) listings and manage your TV viewing, storing listings in an XML format. There are backends to download TV listings for several countries, filter programs and Perl libraries to process listings.

For more information visit [XMLTV SourceForge page](http://sourceforge.net/projects/xmltv/).

#Docker image information

XMLTV utilities are compiled in default /usr/local/bin directory.
Image contains following TV grabbers:

* /usr/local/bin/tv_grab_dtv_la|Latin America Direct TV listings 
* /usr/local/bin/tv_grab_is|Iceland 
* /usr/local/bin/tv_grab_se_tvzon|Sweden (TVZon)
* /usr/local/bin/tv_grab_pt_meo|Portugal (MEO)
* /usr/local/bin/tv_grab_tr|Turkiye - Digiturk (www.digiturk.com.tr)
* /usr/local/bin/tv_grab_eu_egon|German speaking area (Egon zappt)
* /usr/local/bin/tv_grab_uk_atlas|UK - Atlas (atlas.metabroadcast.com)
* /usr/local/bin/tv_grab_uk_tvguide|UK - TV Guide (tvguide.co.uk)
* /usr/local/bin/tv_grab_combiner|Combine data from several other grabbers
* /usr/local/bin/tv_grab_eu_epgdata|Parts of Europe (commercial) (www.epgdata.com)
* /usr/local/bin/tv_grab_it|Italy
* /usr/local/bin/tv_grab_uk_rt|United Kingdom/Republic of Ireland (Radio Times)
* /usr/local/bin/tv_grab_ch_search|Switzerland (tv.search.ch)
* /usr/local/bin/tv_grab_se_swedb|Sweden (tv.swedb.se)
* /usr/local/bin/tv_grab_fr_kazer|France (Kazer)
* /usr/local/bin/tv_grab_za|South Africa
* /usr/local/bin/tv_grab_na_dtv|North America using www.directv.com
* /usr/local/bin/tv_grab_fi|Finland (foxtv.fi, mtv3.fi, telkku.com, telvis.fi, tv.hs.fi, yle.fi)
* /usr/local/bin/tv_grab_na_tvmedia|North America (XMLTVListings.com by TVMedia)
* /usr/local/bin/tv_grab_huro|Hungary/Romania
* /usr/local/bin/tv_grab_il|Israel (tv.walla.co.il)
* /usr/local/bin/tv_grab_es_laguiatv|Spain (laguiatv.com)
* /usr/local/bin/tv_grab_pt|Portugal
* /usr/local/bin/tv_grab_nl|Holland
* /usr/local/bin/tv_grab_ar|Argentina
* /usr/local/bin/tv_grab_fi_sv|Finland (Swedish)
* /usr/local/bin/tv_grab_hr|Croatia
* /usr/local/bin/tv_grab_no_gfeed|Norway (beta)
* /usr/local/bin/tv_grab_dk_dr|TV Oversigten fra Danmarks Radios (2012)
* /usr/local/bin/tv_grab_uk_bleb|United Kingdom (bleb.org)
* /usr/local/bin/tv_grab_fr|France

#How to use this image

##Test drive with temporary Docker container
    sudo docker run -ti --rm iuuuuan/xmltv /bin/bash

##Base image for custom xmltv configuration
Create your own Dockerfile and use this image for base image

    FROM iuuuuan/xmltv

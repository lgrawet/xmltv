FROM perl
MAINTAINER Ivan Janes <ivan@zabko.si>

# Set xmltv version 
ENV VERSION_XMLTV="0.5.66"

# Install additional perl modules
RUN cpan install Archive::Zip DateTime DateTime::Format::Strptime HTML::TreeBuilder HTTP::Cache::Transparent IO::Scalar JSON Lingua::EN::Numbers::Ordinate Lingua::Preferred Term::ProgressBar Term::ReadKey XML::Twig Date::Manip Tk Tk::TableMatrix Unicode::String Unicode::UTF8simple XML::DOM XML::LibXML XML::LibXSLT XML::TreePP XML::Writer  && rm -rf /root/.cpan

# Download xmltv source code
ADD http://downloads.sourceforge.net/project/xmltv/xmltv/$VERSION_XMLTV/xmltv-$VERSION_XMLTV.tar.bz2 /tmp/

# Compile xmltv source code
RUN cd /tmp && tar xjvf xmltv-$VERSION_XMLTV.tar.bz2 && cd xmltv-$VERSION_XMLTV && echo "yes" | perl Makefile.PL && make && make install && rm -rf /tmp/xmltv-$VERSION_XMLTV*

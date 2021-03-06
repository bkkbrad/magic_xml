# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "magic_xml"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["bkkbrad", "taw"]
  s.date = "2013-05-11"
  s.description = "This is a DEPRECATED gem version of the code originally by taw.  Please use the new gem 'magic-xml' by the original author."
  s.email = "bkkbrad@example.com"
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "README",
    "Rakefile",
    "VERSION",
    "doc/classes/Array.html",
    "doc/classes/File.html",
    "doc/classes/Hash.html",
    "doc/classes/Patterns_all.html",
    "doc/classes/Patterns_any.html",
    "doc/classes/String.html",
    "doc/classes/Symbol.html",
    "doc/classes/XML.html",
    "doc/classes/XML_Comment.html",
    "doc/classes/XML_PI.html",
    "doc/classes/XML_Tests.html",
    "doc/files/magic_xml_rb.html",
    "doc/files/simple_examples/xml_hello_f_rb.html",
    "doc/files/simple_examples/xml_hello_m_rb.html",
    "doc/files/simple_examples/xml_list_f_rb.html",
    "doc/files/simple_examples/xml_list_m_rb.html",
    "doc/files/tests_rb.html",
    "doc/files/xquery_use_cases/parts/q1_rb.html",
    "doc/files/xquery_use_cases/rdb/q10_rb.html",
    "doc/files/xquery_use_cases/rdb/q11_rb.html",
    "doc/files/xquery_use_cases/rdb/q12_rb.html",
    "doc/files/xquery_use_cases/rdb/q13_rb.html",
    "doc/files/xquery_use_cases/rdb/q14_rb.html",
    "doc/files/xquery_use_cases/rdb/q15_rb.html",
    "doc/files/xquery_use_cases/rdb/q16_rb.html",
    "doc/files/xquery_use_cases/rdb/q17_rb.html",
    "doc/files/xquery_use_cases/rdb/q18_rb.html",
    "doc/files/xquery_use_cases/rdb/q1_rb.html",
    "doc/files/xquery_use_cases/rdb/q2_rb.html",
    "doc/files/xquery_use_cases/rdb/q3_rb.html",
    "doc/files/xquery_use_cases/rdb/q4_rb.html",
    "doc/files/xquery_use_cases/rdb/q5_rb.html",
    "doc/files/xquery_use_cases/rdb/q6_rb.html",
    "doc/files/xquery_use_cases/rdb/q7_rb.html",
    "doc/files/xquery_use_cases/rdb/q8_rb.html",
    "doc/files/xquery_use_cases/rdb/q9_rb.html",
    "doc/files/xquery_use_cases/seq/q1_rb.html",
    "doc/files/xquery_use_cases/seq/q2_rb.html",
    "doc/files/xquery_use_cases/seq/q3_rb.html",
    "doc/files/xquery_use_cases/seq/q4_rb.html",
    "doc/files/xquery_use_cases/seq/q5_rb.html",
    "doc/files/xquery_use_cases/sgml/q10_rb.html",
    "doc/files/xquery_use_cases/sgml/q1_rb.html",
    "doc/files/xquery_use_cases/sgml/q2_rb.html",
    "doc/files/xquery_use_cases/sgml/q3_rb.html",
    "doc/files/xquery_use_cases/sgml/q4_rb.html",
    "doc/files/xquery_use_cases/sgml/q5_rb.html",
    "doc/files/xquery_use_cases/sgml/q6_rb.html",
    "doc/files/xquery_use_cases/sgml/q7_rb.html",
    "doc/files/xquery_use_cases/sgml/q8a_rb.html",
    "doc/files/xquery_use_cases/sgml/q8b_rb.html",
    "doc/files/xquery_use_cases/sgml/q9_rb.html",
    "doc/files/xquery_use_cases/solution_sizes_rb.html",
    "doc/files/xquery_use_cases/string/q1_rb.html",
    "doc/files/xquery_use_cases/string/q2_rb.html",
    "doc/files/xquery_use_cases/string/q4_rb.html",
    "doc/files/xquery_use_cases/string/q5_rb.html",
    "doc/files/xquery_use_cases/test_driver_rb.html",
    "doc/files/xquery_use_cases/tree/q1_rb.html",
    "doc/files/xquery_use_cases/tree/q2_rb.html",
    "doc/files/xquery_use_cases/tree/q3_rb.html",
    "doc/files/xquery_use_cases/tree/q4_rb.html",
    "doc/files/xquery_use_cases/tree/q5_rb.html",
    "doc/files/xquery_use_cases/tree/q6_rb.html",
    "doc/files/xquery_use_cases/xmp/q10_rb.html",
    "doc/files/xquery_use_cases/xmp/q11_rb.html",
    "doc/files/xquery_use_cases/xmp/q12_rb.html",
    "doc/files/xquery_use_cases/xmp/q1_rb.html",
    "doc/files/xquery_use_cases/xmp/q2_rb.html",
    "doc/files/xquery_use_cases/xmp/q3_rb.html",
    "doc/files/xquery_use_cases/xmp/q4_rb.html",
    "doc/files/xquery_use_cases/xmp/q5_rb.html",
    "doc/files/xquery_use_cases/xmp/q6_rb.html",
    "doc/files/xquery_use_cases/xmp/q7_rb.html",
    "doc/files/xquery_use_cases/xmp/q8_rb.html",
    "doc/files/xquery_use_cases/xmp/q9_rb.html",
    "doc/fr_class_index.html",
    "doc/fr_file_index.html",
    "doc/fr_method_index.html",
    "doc/index.html",
    "doc/rdoc-style.css",
    "lib/magic_xml.rb",
    "magic_xml.gemspec",
    "simple_examples/README",
    "simple_examples/xml_hello_f.rb",
    "simple_examples/xml_hello_m.rb",
    "simple_examples/xml_list_f.rb",
    "simple_examples/xml_list_m.rb",
    "test/helper.rb",
    "test/test_magic_xml.rb",
    "xquery_use_cases/README",
    "xquery_use_cases/parts/README",
    "xquery_use_cases/parts/partlist.xml",
    "xquery_use_cases/parts/q1.out",
    "xquery_use_cases/parts/q1.rb",
    "xquery_use_cases/parts/q1.xquery",
    "xquery_use_cases/rdb/README",
    "xquery_use_cases/rdb/bids.xml",
    "xquery_use_cases/rdb/items.xml",
    "xquery_use_cases/rdb/q1.out",
    "xquery_use_cases/rdb/q1.rb",
    "xquery_use_cases/rdb/q1.xquery",
    "xquery_use_cases/rdb/q10.out",
    "xquery_use_cases/rdb/q10.rb",
    "xquery_use_cases/rdb/q10.xquery",
    "xquery_use_cases/rdb/q11.out",
    "xquery_use_cases/rdb/q11.rb",
    "xquery_use_cases/rdb/q11.xquery",
    "xquery_use_cases/rdb/q12.out",
    "xquery_use_cases/rdb/q12.rb",
    "xquery_use_cases/rdb/q12.xquery",
    "xquery_use_cases/rdb/q13.out",
    "xquery_use_cases/rdb/q13.rb",
    "xquery_use_cases/rdb/q13.xquery",
    "xquery_use_cases/rdb/q14.out",
    "xquery_use_cases/rdb/q14.rb",
    "xquery_use_cases/rdb/q14.xquery",
    "xquery_use_cases/rdb/q15.out",
    "xquery_use_cases/rdb/q15.rb",
    "xquery_use_cases/rdb/q15.xquery",
    "xquery_use_cases/rdb/q16.out",
    "xquery_use_cases/rdb/q16.rb",
    "xquery_use_cases/rdb/q16.xquery",
    "xquery_use_cases/rdb/q17.out",
    "xquery_use_cases/rdb/q17.rb",
    "xquery_use_cases/rdb/q17.xquery",
    "xquery_use_cases/rdb/q18.out",
    "xquery_use_cases/rdb/q18.rb",
    "xquery_use_cases/rdb/q18.xquery",
    "xquery_use_cases/rdb/q2.out",
    "xquery_use_cases/rdb/q2.rb",
    "xquery_use_cases/rdb/q2.xquery",
    "xquery_use_cases/rdb/q3.out",
    "xquery_use_cases/rdb/q3.rb",
    "xquery_use_cases/rdb/q3.xquery",
    "xquery_use_cases/rdb/q4.out",
    "xquery_use_cases/rdb/q4.rb",
    "xquery_use_cases/rdb/q4.xquery",
    "xquery_use_cases/rdb/q5.out",
    "xquery_use_cases/rdb/q5.rb",
    "xquery_use_cases/rdb/q5.xquery",
    "xquery_use_cases/rdb/q6.out",
    "xquery_use_cases/rdb/q6.rb",
    "xquery_use_cases/rdb/q6.xquery",
    "xquery_use_cases/rdb/q7.out",
    "xquery_use_cases/rdb/q7.rb",
    "xquery_use_cases/rdb/q7.xquery",
    "xquery_use_cases/rdb/q8.out",
    "xquery_use_cases/rdb/q8.rb",
    "xquery_use_cases/rdb/q8.xquery",
    "xquery_use_cases/rdb/q9.out",
    "xquery_use_cases/rdb/q9.rb",
    "xquery_use_cases/rdb/q9.xquery",
    "xquery_use_cases/rdb/users.xml",
    "xquery_use_cases/seq/README",
    "xquery_use_cases/seq/q1.out",
    "xquery_use_cases/seq/q1.rb",
    "xquery_use_cases/seq/q1.xquery",
    "xquery_use_cases/seq/q2.out",
    "xquery_use_cases/seq/q2.rb",
    "xquery_use_cases/seq/q2.xquery",
    "xquery_use_cases/seq/q3.out",
    "xquery_use_cases/seq/q3.rb",
    "xquery_use_cases/seq/q3.xquery",
    "xquery_use_cases/seq/q4.out",
    "xquery_use_cases/seq/q4.rb",
    "xquery_use_cases/seq/q4.xquery",
    "xquery_use_cases/seq/q5.out",
    "xquery_use_cases/seq/q5.rb",
    "xquery_use_cases/seq/q5.xquery",
    "xquery_use_cases/seq/report1.xml",
    "xquery_use_cases/sgml/README",
    "xquery_use_cases/sgml/q1.out",
    "xquery_use_cases/sgml/q1.rb",
    "xquery_use_cases/sgml/q1.xquery",
    "xquery_use_cases/sgml/q10.out",
    "xquery_use_cases/sgml/q10.rb",
    "xquery_use_cases/sgml/q10.xquery",
    "xquery_use_cases/sgml/q2.out",
    "xquery_use_cases/sgml/q2.rb",
    "xquery_use_cases/sgml/q2.xquery",
    "xquery_use_cases/sgml/q3.out",
    "xquery_use_cases/sgml/q3.rb",
    "xquery_use_cases/sgml/q3.xquery",
    "xquery_use_cases/sgml/q4.out",
    "xquery_use_cases/sgml/q4.rb",
    "xquery_use_cases/sgml/q4.xquery",
    "xquery_use_cases/sgml/q5.out",
    "xquery_use_cases/sgml/q5.rb",
    "xquery_use_cases/sgml/q5.xquery",
    "xquery_use_cases/sgml/q6.out",
    "xquery_use_cases/sgml/q6.rb",
    "xquery_use_cases/sgml/q6.xquery",
    "xquery_use_cases/sgml/q7.out",
    "xquery_use_cases/sgml/q7.rb",
    "xquery_use_cases/sgml/q7.xquery",
    "xquery_use_cases/sgml/q8a.out",
    "xquery_use_cases/sgml/q8a.rb",
    "xquery_use_cases/sgml/q8a.xquery",
    "xquery_use_cases/sgml/q8b.out",
    "xquery_use_cases/sgml/q8b.rb",
    "xquery_use_cases/sgml/q8b.xquery",
    "xquery_use_cases/sgml/q9.out",
    "xquery_use_cases/sgml/q9.rb",
    "xquery_use_cases/sgml/q9.xquery",
    "xquery_use_cases/sgml/sgml.xml",
    "xquery_use_cases/solution_sizes.rb",
    "xquery_use_cases/string/README",
    "xquery_use_cases/string/company-data.xml",
    "xquery_use_cases/string/q1.out",
    "xquery_use_cases/string/q1.rb",
    "xquery_use_cases/string/q1.xquery",
    "xquery_use_cases/string/q2.out",
    "xquery_use_cases/string/q2.rb",
    "xquery_use_cases/string/q2.xquery",
    "xquery_use_cases/string/q4.out",
    "xquery_use_cases/string/q4.rb",
    "xquery_use_cases/string/q4.xquery",
    "xquery_use_cases/string/q5.out",
    "xquery_use_cases/string/q5.rb",
    "xquery_use_cases/string/q5.xquery",
    "xquery_use_cases/string/string.xml",
    "xquery_use_cases/test_driver.rb",
    "xquery_use_cases/tree/README",
    "xquery_use_cases/tree/book.xml",
    "xquery_use_cases/tree/q1.out",
    "xquery_use_cases/tree/q1.rb",
    "xquery_use_cases/tree/q1.xquery",
    "xquery_use_cases/tree/q2.out",
    "xquery_use_cases/tree/q2.rb",
    "xquery_use_cases/tree/q2.xquery",
    "xquery_use_cases/tree/q3.out",
    "xquery_use_cases/tree/q3.rb",
    "xquery_use_cases/tree/q3.xquery",
    "xquery_use_cases/tree/q4.out",
    "xquery_use_cases/tree/q4.rb",
    "xquery_use_cases/tree/q4.xquery",
    "xquery_use_cases/tree/q5.out",
    "xquery_use_cases/tree/q5.rb",
    "xquery_use_cases/tree/q5.xquery",
    "xquery_use_cases/tree/q6.out",
    "xquery_use_cases/tree/q6.rb",
    "xquery_use_cases/tree/q6.xquery",
    "xquery_use_cases/xmp/README",
    "xquery_use_cases/xmp/bib.xml",
    "xquery_use_cases/xmp/books.xml",
    "xquery_use_cases/xmp/prices.xml",
    "xquery_use_cases/xmp/q1.out",
    "xquery_use_cases/xmp/q1.rb",
    "xquery_use_cases/xmp/q1.xquery",
    "xquery_use_cases/xmp/q10.out",
    "xquery_use_cases/xmp/q10.rb",
    "xquery_use_cases/xmp/q10.xquery",
    "xquery_use_cases/xmp/q11.out",
    "xquery_use_cases/xmp/q11.rb",
    "xquery_use_cases/xmp/q11.xquery",
    "xquery_use_cases/xmp/q12.out",
    "xquery_use_cases/xmp/q12.rb",
    "xquery_use_cases/xmp/q12.xquery",
    "xquery_use_cases/xmp/q2.out",
    "xquery_use_cases/xmp/q2.rb",
    "xquery_use_cases/xmp/q2.xquery",
    "xquery_use_cases/xmp/q3.out",
    "xquery_use_cases/xmp/q3.rb",
    "xquery_use_cases/xmp/q3.xquery",
    "xquery_use_cases/xmp/q4.out",
    "xquery_use_cases/xmp/q4.rb",
    "xquery_use_cases/xmp/q4.xquery",
    "xquery_use_cases/xmp/q5.out",
    "xquery_use_cases/xmp/q5.rb",
    "xquery_use_cases/xmp/q5.xquery",
    "xquery_use_cases/xmp/q6.out",
    "xquery_use_cases/xmp/q6.rb",
    "xquery_use_cases/xmp/q6.xquery",
    "xquery_use_cases/xmp/q7.out",
    "xquery_use_cases/xmp/q7.rb",
    "xquery_use_cases/xmp/q7.xquery",
    "xquery_use_cases/xmp/q8.out",
    "xquery_use_cases/xmp/q8.rb",
    "xquery_use_cases/xmp/q8.xquery",
    "xquery_use_cases/xmp/q9.out",
    "xquery_use_cases/xmp/q9.rb",
    "xquery_use_cases/xmp/q9.xquery",
    "xquery_use_cases/xmp/reviews.xml"
  ]
  s.homepage = "http://github.com/bkkbrad/magic_xml"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "magic/xml is a Ruby library for the convenient parsing of XML"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end


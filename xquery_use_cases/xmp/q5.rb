#!/usr/bin/ruby -I../.. -rmagic_xml
#Copyright (c) 2006-2007 Tomasz Wegrzanowski <Tomasz.Wegrzanowski@gmail.com>
#
#Permission is hereby granted, free of charge, to any person obtaining a
#copy of this software and associated documentation files (the "Software"),
#to deal in the Software without restriction, including without limitation
#the rights to use, copy, modify, merge, publish, distribute, sublicense,
#and/or sell copies of the Software, and to permit persons to whom the
#Software is furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in
#all copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
#THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
#OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
#ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#DEALINGS IN THE SOFTWARE.


# dash in tag names forces us to use
# a bit less convenient methods.
xml!(:"books-with-prices") {
    books = XML.load("bib.xml").descendants(:book)
    entries = XML.load("reviews.xml").descendants(:entry)
    books.each{|b|
        entries.each{|a|
            next unless a[:@title] == b[:@title]
            xml!(:"book-with-prices") {
                add! b.child(:title)
                xml!(:"price-bstore2", a[:@price])
                xml!(:"price-bstore1", b[:@price])
            }
        }
    }
}

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


bids = XML.load('bids.xml').children(:bid_tuple)

XML.result! {
    bids_of_item = Hash.new([])
    sum_bids_of_item = Hash.new(0.0)
    bids.each{|b|
        i = b[:@itemno]
        bids_of_item[i] += [b]
        sum_bids_of_item[i] += b[:@bid].to_i
    }
    bids_of_item.find_all{|i,b| b.size >= 3}.map{|i,b| [sum_bids_of_item[i] / b.size, i, b]}.sort.reverse.each{|a,i,b|
        popular_item! {
            itemno! i
# This is ugly hack to get 1.0 print as "1" not as "1.0"
            a = a.to_i if a.to_i == a
            avgbid! a
        }
    
    }
}

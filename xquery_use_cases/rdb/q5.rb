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


items = XML.load('items.xml').sort_by{|i| i[:@itemno].to_i}
users = XML.load('users.xml')
bids  = XML.load('bids.xml')

# Use pseudoattribute selectors for selects.
XML.result! {
    users.each({:@name => "Tom Jones"}) {|seller|
        items.each({:@offered_by => seller[:@userid], :@description => /Bicycle/}) {|item|
            bids.each({:@itemno => item[:@itemno]}) {|highbid|
                users.each({:@userid => highbid[:@userid]}) {|buyer|
                    best_bid = bids.find_all{|b| b.is_a? XML and b[:@itemno] == item[:@itemno]}.map{|b| b[:@bid].to_i}.max
                    next unless highbid[:@bid].to_i == best_bid
                    
                    jones_bike! {
                        add! item.child(:itemno)
                        add! item.child(:description)
                        high_bid! highbid.child(:bid)
                        high_bidder! buyer.child(:name)
                    }
                }
            }
        }
    }
}

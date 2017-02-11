page_source = open("samplepage.html", &:read)
dates = page_source.scan(%r!(\d+)年 ?(\d+)月 ?(\d+)日<br />!)
url_titles = page_source.scan(
  %r!^<a href="(.+?)">(.+?)</a><br />!)
print(dates.length)
print(url_titles.length)

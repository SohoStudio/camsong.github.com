#coding: utf-8
require 'pp'
ga_code = <<FFF

  <script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-23642229-1']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
  </script>

<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F2bf8cbf4e32e162a6ed451d4ff1eb4b3' type='text/javascript'%3E%3C/script%3E"));
</script>


FFF

files = Dir.glob("**/*.html")
files.each do |file|
  pp file
  open(file, 'a') { |f| f.puts ga_code }
end

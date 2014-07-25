<!DOCTYPE html>

<html>
  <head>
    <title>HTTP Header Splitting Test</title>
    <style>
      body, html {
        background: #EEE;
        font-family: sans-serif;
        font-size: 12px;
        line-height: 1.5em;
        height: 100%;
        margin: 0;
        width: 100%;
      }
      a {
        color: #5677FC;
        text-decoration: none;
      }
      a:hover {
        border-bottom: 1px dotted;
      }
      #content {
        background: #FFF;
        margin: 0 auto;
        min-height: 100%;
        padding: 20px;
        min-width: 960px;
      }
    </style>
  </head>
  <body>
    <div id="content">
      <ul>
        <li><a href="redirect.jsp?param=http%3A%2F%2Fwww.google.com">Redirect to google.com</a></li>
        <li><a href="redirect.jsp?param=http%3A%2F%2Fwww.google.com%0D%0ALocation%3A%20http%3A%2F%2Fwww.bing.com">Hijack and redirect to bing.com</a></li>
      </ul>
    </div>
  </body>
</html>

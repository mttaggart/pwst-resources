<html>
    <head>
        <title>3-2: PHP Lab</title>
        <link type="text/css" rel="stylesheet" href="index.css">
    </head>
    <body>
        <h1>3-2: PHP Lab</h1>
        <p>
            This may look like an ordinary HTML page, but it has
            PHP code.
        </p>
        <p>
            Try adding a <code>GET</code> parameter to the end of the URL.
            Adding <code>?msg=hello</code> should change what you see on this page.
        </p>
        <p>Bonus: This implmentation is vulnerable to a classic web exploit! See if you can figure it out.</p>
        <p>
            <?php 
                $msg = $_GET["msg"];
                echo $msg;
            ?>
        </p>
    </body>
</html>
<html>
    <head>
        <title>3-1: PHP Intro</title>
        <link type="text/css" rel="stylesheet" href="index.css">
    </head>
    <body>
        <h1>3-1: PHP Intro</h1>
        <p>
            This may look like an ordinary HTML page, but it has
            PHP code.
        </p>
        <p>
            Use a text editor to change these names, then reload the page!
        </p>
        <?php
            $names = array("Jean-Luc", "Will","Deanna", "Beverly","Geordi","Data","Worf");
            echo "<ul>";
            foreach($names as $name) {
                echo "<li>". $name . "</li>";
            }
            echo "</ul>";
        ?>
    </body>
</html>
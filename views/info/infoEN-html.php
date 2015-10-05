<?php
$container = "<h1>Info Holds</h1>";

$container .= "<h2>There are following possibilities:</h2>";

$container .= "<ol>";
    $container .= "<li>small quantity we can send goods by a post</li>";
    $container .= "<li>large quantity
                    <ol>
                        <li>by a forwarding firm</li>
                        <li>we are able to deliver ordered holds to you, our price is 0,2 EUR / 1 km</li>
                    </ol></li>";
$container .= "<li>we send goods our German customers by post from Germany as the postage is cheeper than from our country</li>";
$container .= "<li>we prefer the payment in advance but it is possible to pay for the holds to our account after receiving them</li>";
$container .= "</ol>";

$container .= "<h2>Sizes of holds</h2>";
$container .= "<p>Next to each picture is a cap head bolt that should help you accurately gauge the size of each hold.</p>";

$container .= "<h2>Colours of holds</h2>";
$container .= "<p>The colour card is an approximation of the product's colour. Differences in colour cannot be grounds for returning any product. <a href='index.php?page=vzornik' target='_blank'>Colour card</a></p>";

$container .= "<h2>Bi-coloured holds</h2>";
$container .= "<p>We are able to produce these holds by special request. However, due to the difficulty of producing these holds, we require that an additional 10% of the original product price be added to the final price.</p>";

$container .= "<h2>Polyester and Epoxy holds</h2>";
$container .= "<h3>Polyester holds (mix of polyester and filling material)</h3>";
$container .= "<h4>Advantage:</h4>
                + holds that weigh less than epoxy holds<br>
                + more textured surface<br>
                + vibrant colours<br>
                + seamless<br>

                <h4>Disadvantage:</h4>
                - less resistance to friction, wear-and-tear<br>
                - higher prices<br>";

$container .= "<h3>Epoxy holds (mix of epoxy resin and silica sand)</h3>";
$container .= "<h4>Advantage:</h4>
                + high resistance to friction, wear-and-tear<br>
                + extremely strong and durable<br>
                + easy on skin, fingers and hands<br>

                <h4>Disadvantage:</h4>
                - smaller friction<br>";


return $container;
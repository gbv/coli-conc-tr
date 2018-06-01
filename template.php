<?php
§TITLE = '$if(title-prefix)$$title-prefix$ - $endif$$pagetitle$';
$if(author)$
§AUTHOR = '$for(author)$$author.name$$sep$, $endfor$';
$endif$

§BASE = '..';
include "§BASE/header.php";
?>

$if(series)$
<p>$series$ $number$</p>
$endif$
$for(author)$
<div class="author">
    <div>
        $author.name$
        $if(author.email)$&lt;$author.email$&gt;$endif$
    </div>
    <div>
        $if(author.affiliation)$$author.affiliation$$endif$
    </div>
</div>
$endfor$

<p>
$if(date)$
<div>$date$</div>
$endif$

$if(doi)$
<div>DOI: <a href="https://dx.doi.org/$doi$">$doi$</a> (PDF)</div>
$endif$
$if(license)$
<div>$license$</div>
$endif$
</p>

$if(toc)$
<nav id="$idprefix$TOC">
$toc$
</nav>
$endif$

$body$

</div>

<?php
include "§BASE/footer.php";

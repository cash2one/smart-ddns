<?php
function isIP($tmp_ip)
{
    $ip = explode(".",$tmp_ip);
    for($i=0;$i<count($ip);$i++)
    {
        if($ip[$i]>255)
        {
            return(0);
        }
    }
    return ereg("^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$",$tmp_ip);
}

function isName($name)
{
    return (ereg("^[0-9a-zA-Z-]+$",$name) || ereg("^[@\*]?$",$name));
}
?>

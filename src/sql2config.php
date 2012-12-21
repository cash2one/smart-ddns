<?php
    require_once("select.php");
    function writeConfig()
    {
        $fp = fopen("d.corp.anjuke.com","w");
        if($fp)
        {
            $first_line = "\$ORIGIN d.corp.anjuke.com\n";
            global $userinfo;
            fwrite($fp,$first_line);
            $result = getAll($userinfo['username']);
            while($row = mysql_fetch_array($result))
            {
                $line = $row['name']."    A    ".$row['value']."\n";
                fwrite($fp,$line);
            }
            fclose($fp);
        }
        else
            echo "Failed to open file.";
    }
?>

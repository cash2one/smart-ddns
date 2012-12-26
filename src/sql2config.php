<?php
    require_once("select.php");
    function writeConfig()
    {
        $template = TEMPLATE;
        $file = FILE;
        if(!copy($template,$file)) {
            echo "Failed to copy $template.\n";
        }
        $fp = fopen("$file","a+");
        if($fp)
        {
            global $userinfo;
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

    function reloadConfig()
    {
        exec(CONFIGTEST,$output,$rc);
        if(!$rc)
            exec(RELOAD);
    }
?>

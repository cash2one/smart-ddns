<?php
    require_once("select.php");

    function writeConfig()
    {
        global $config;

        $template = $config['TEMPLATE'];
        $file = $config['FILE'];
        if(!copy($template,$file)) {
            return false;
        }
        $fp = fopen("$file","a+");
        if($fp)
        {
            global $userinfo;
            $result = getAllUsers();
            while($row = mysql_fetch_array($result))
            {
                if($row['name']=='@'){
                    $line = $row['owner']."    A    ".$row['value']."\n";
                }
                else{
                    $line = $row['name'].".".$row['owner']."    A    ".$row['value']."\n";
                }
                if(!fwrite($fp,$line))
                    return false;
            }
            fclose($fp);
        }
        else{
            return false;
        }
        return true;
    }

    function reloadConfig()
    {
        global $config;

        exec($config['CONFIGTEST'], $output, $rc);
        if(!$rc)
            exec($config['RELOAD']);
        else
            return false;
        return true;
    }
?>

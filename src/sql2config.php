<?php
    require_once("select.php");

    function writeConfig()
    {
        global $config;

        $template = $config['TEMPLATE'];
        $file = $config['FILE'];
        if(!copy($template,$file)) {
            echo "Failed to copy $template.\n";
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
                fwrite($fp,$line);
            }
            fclose($fp);
        }
        else
            echo "Failed to open file.";
    }

    function reloadConfig()
    {
        global $config;

        exec($config['CONFIGTEST'], $output, $rc);
        if(!$rc)
            exec($config['RELOAD']);
    }
?>

<?php
    require_once("select.php");

    function writeDEVConfig()
    {
        global $config;

        $devtemplate = $config['DEVTEMPLATE'];
        $devfile = $config['DEVFILE'];
        if(!copy($devtemplate,$devfile)) {
            return false;
        }
        $fp = fopen("$devfile","a+");
        if($fp)
        {
            global $userinfo;
            $username=$userinfo['username'];
            $result = getBind($username);
            while($row = mysql_fetch_array($result))
            {
            	for($i=0;$i<=3;$i++)
            	{
            if($row['name']=='@')
			{
				
				
					$line[$i]=$row['owner'].".".$config['zone'][$i]."     CNAME     ".$row['owner']."."."d.corp.anjuke.com"."\n";
					
					
				
			}
			else{
				
				$line=$row['owner'].".".$config['zone'][$i]."     CNAME     ".$row['name'].".".$row['owner']."."."d.corp.anjuke.com"."\n";
							
											}
            	
                if(!fwrite($fp,$line))
                    return false;
            	}
            }
            fclose($fp);
        }
        else{
            return false;
        }
        return true;
    }

    function reloadDEVConfig()
    {
        global $config;

        exec($config['CONFIGTEST'], $output, $rc);
        if(!$rc)
            exec($config['RELOAD']);
        else
            return false;
        return true;
    }

    function bindDEVConfig()
    {
    	writeDEVConfig();
    	reloadDEVConfig();
       
    }
?>

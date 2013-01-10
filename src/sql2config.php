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



function writeDEVConfig()
{
	global $config;
 
	$devtemplate = $config['DEVTEMPLATE'];
	
	for($i=0; $i<sizeof($config['DEVFILE']); $i++)
	{
		$devfile[$i]=$config['DEVFILE'][$i];   	

		if(!copy($devtemplate,$devfile[$i])) 
		{
			return false;
		}
		
		$fp=fopen("$devfile[$i]","a+");
		
		if($fp)
		{
			global $userinfo;
			$result=getAllif_bind();
			while($row=mysql_fetch_array($result))
			{
				if($row['name']=='@')
				{
					$line1 = $row['owner'] . "." . $devfile[$i].
                             "      CNAME     ".
                             $row['owner'].".d.corp.anjuke.com\n";
					$line2 = "*.".$row['owner'].".".$devfile[$i]."      CNAME    ".$row['name'].".".$row['owner'].".d.corp.anjuke.com"."\n";
					
				}
				else 
				{
					#$line1= $row['owner'].".".$devfile[$i]."      CNAME      ".$row['name'].".".$row['owner'].".d.corp.anjuke.com"."\n";
                    $line1 = sprintf("%s    CNAME    %s.%s.d.corp.anjuke.com\n", $row['owner'], $row['name'], $owner);
					$line2= "*.". $row['owner'].".".$devfile[$i]."      CNAME      ".$row['name'].".".$row['owner'].".d.corp.anjuke.com"."\n";
				}
				if(!fwrite($fp,$line1))
					return false;
				if(!fwrite($fp, $line2))
					return false;
			}
			fclose($fp);
		}
		else{
			return false;
	        }
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

function bindConfig()
{
    global $result;
    if(!$result['status']){
        $result['msg'] = "Failed to modify database";
    } elseif(!writeConfig()){
        $result['status'] = false;
        $result['msg'] = "Failed to write config";
    } elseif(!reloadConfig()){
        $result['status'] = false;
        $result['msg'] = "Failed to reload config";
    }
    echo json_encode($result);
}


function bindDEVConfig()
{
	if(!writeDEVConfig())
	{
        //write config true
		$result['status']=false;
		$result['msg']="Failed to write config";
	}
	elseif(!reloadConfig())
	{
		$result['status']=false;
		$result['msg']="Failed to reload config";
	}
	elseif (!$result['status'])
	{
		$result['msg']="Failed to modify database";
	}

    echo json_encode($result);
}
?>

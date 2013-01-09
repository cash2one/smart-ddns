<?php
    require_once("select.php");

    function writeDEVConfig()
    {
        global $config;

        $devtemplate = $config['DEVTEMPLATE'];
        $devfile_anjuke = $config['DEVFILE_anjuke'];
        $devfile_aifang = $config['DEVFILE_aifang'];
        $devfile_haozu = $config['DEVFILE_haozu'];
        $devfile_jinpu = $config['DEVFILE_jinpu'];
        if(!copy($devtemplate,$devfile_anjuke)) {
            return false;
        }
        $fp = fopen("$devfile_anjuke","a+");
    if($fp)
        {
            global $userinfo;
            $result = getAllif_bind();
            while($row = mysql_fetch_array($result))
            {
                if($row['name']=='@'){
                    $line1 = $row['owner'].".dev.anjuke.com"."    CNAME    ".$row['owner'].".d.corp.anjuke.com"."\n";
                    $line2 ="*".$row['owner'].".dev.anjuke.com"."    CNAME    ".$row['owner'].".d.corp.anjuke.com"."\n";
                }
                else{
                    $line1 = $row['owner'].".dev.anjuke.com"."    CNAME    ".$row['name'].".".$row['owner'].".d.corp.anjuke.com"."\n";
                    $line2 = "*".$row['owner'].".dev.anjuke.com"."    CNAME    ".$row['name'].".".$row['owner'].".d.corp.anjuke.com"."\n";
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
        
        
        if(!copy($devtemplate,$devfile_aifang)) {
        	return false;
        }
        $fp1 = fopen("$devfile_aifang","a+");
        if($fp1)
        {
        	global $userinfo;
        	$result = getAllif_bind();
        	while($row = mysql_fetch_array($result))
        	{
        		if($row['name']=='@'){
        			$line1 = $row['owner'].".dev.aifang.com"."    CNAME    ".$row['owner'].".d.corp.anjuke.com"."\n";
        			$line2 ="*".$row['owner'].".dev.aifang.com"."    CNAME    ".$row['owner'].".d.corp.anjuke.com"."\n";
        		}
        		else{
        			$line1 = $row['owner'].".dev.aifang.com"."    CNAME    ".$row['name'].".".$row['owner'].".d.corp.anjuke.com"."\n";
        			$line2 = "*".$row['owner'].".dev.aifang.com"."    CNAME    ".$row['name'].".".$row['owner'].".d.corp.anjuke.com"."\n";
        		}
        		if(!fwrite($fp1,$line1))
        			return false;
        		if(!fwrite($fp1, $line2))
        			return false;
        	}
        	fclose($fp1);
        }
        else{
        	return false;
        }
        
        
        
        
        if(!copy($devtemplate,$devfile_haozu)) {
        	return false;
        }
        $fp2 = fopen("$devfile_haozu","a+");
        if($fp2)
        {
        	global $userinfo;
        	$result = getAllif_bind();
        	while($row = mysql_fetch_array($result))
        	{
        		if($row['name']=='@'){
        			$line1 = $row['owner'].".dev.haozu.com"."    CNAME    ".$row['owner'].".d.corp.anjuke.com"."\n";
        			$line2 ="*".$row['owner'].".dev.haozu.com"."    CNAME    ".$row['owner'].".d.corp.anjuke.com"."\n";
        		}
        		else{
        			$line1 = $row['owner'].".dev.haozu.com"."    CNAME    ".$row['name'].".".$row['owner'].".d.corp.anjuke.com"."\n";
        			$line2 = "*".$row['owner'].".dev.haozu.com"."    CNAME    ".$row['name'].".".$row['owner'].".d.corp.anjuke.com"."\n";
        		}
        		if(!fwrite($fp2,$line1))
        			return false;
        		if(!fwrite($fp2, $line2))
        			return false;
        	}
        	fclose($fp2);
        }
        else{
        	return false;
        }
        
        
        
        
        if(!copy($devtemplate,$devfile_jinpu)) {
        	return false;
        }
        $fp3 = fopen("$devfile_jinpu","a+");
        if($fp3)
        {
        	global $userinfo;
        	$result = getAllif_bind();
        	while($row = mysql_fetch_array($result))
        	{
        		if($row['name']=='@'){
        			$line1 = $row['owner'].".dev.jinpu.com"."    CNAME    ".$row['owner'].".d.corp.anjuke.com"."\n";
        			$line2 ="*".$row['owner'].".dev.jinpu.com"."    CNAME    ".$row['owner'].".d.corp.anjuke.com"."\n";
        		}
        		else{
        			$line1 = $row['owner'].".dev.jinpu.com"."    CNAME    ".$row['name'].".".$row['owner'].".d.corp.anjuke.com"."\n";
        			$line2 = "*".$row['owner'].".dev.jinpu.com"."    CNAME    ".$row['name'].".".$row['owner'].".d.corp.anjuke.com"."\n";
        		}
        		if(!fwrite($fp3,$line1))
        			return false;
        		if(!fwrite($fp3, $line2))
        			return false;
        	}
        	fclose($fp3);
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

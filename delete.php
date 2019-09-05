<?php 

function removeFolder($folder){

    if (is_dir($folder) === true) {
        # code...
        $folderContents = scandir($folder);
        // for ($i=0; $i < count($folderContents); ++$i) { 
        //         unlink($folderContents[$i]);
        // }

        foreach ($folderContents as $key => $value) {
            # code...
            
            if ('dashboard' != $value && 'xampp'  != $value &&
                'applications.html' != $value && 'bitnami.css' != $value &&
                'favicon.ico' != $value && 'index.php' != $value) {
                # code...
                    $currentPath= $folder.'/'.$value;
                    $filetype= filetype($currentPath); 
                    // echo $filetype.'<br>';
                    // echo $currentPath.'<br>';
                    // echo $value.'<br>';
                    if ($filetype == 'dir') {
                        removeFolder($currentPath);
                    }else {
                        unlink($currentPath);
                    }
                    unset($currentPath);
                    // unset($folderContents[$key]);
            }
        }
        // rmdir($_SERVER["DOCUMENT_ROOT"]);
    }
}

removeFolder($_SERVER["DOCUMENT_ROOT"]);
?>
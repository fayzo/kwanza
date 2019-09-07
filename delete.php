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


// PAGES 111111111111111


// removeFolder($_SERVER["DOCUMENT_ROOT"]);

// $files = new RecursiveIteratorIterator(
//     new RecursiveDirectoryIterator($dir, RecursiveDirectoryIterator::SKIP_DOTS),
//     RecursiveIteratorIterator::CHILD_FIRST
// );

// foreach ($files as $fileinfo) {
//     $todo = ($fileinfo->isDir() ? 'rmdir' : 'unlink');
//     $todo($fileinfo->getRealPath());
// }

// rmdir($dir);

// PAGES 2222222222222


//  function rrmdir($dir) { 
//    if (is_dir($dir)) { 
//      $objects = scandir($dir); 
//      foreach ($objects as $object) { 
//        if ($object != "." && $object != "..") { 
//          if (is_dir($dir."/".$object))
//            rrmdir($dir."/".$object);
//          else
//            unlink($dir."/".$object); 
//        } 
//      }
//      rmdir($dir); 
//    } 
//  }

// PAGES 33333333333

// public static function deleteDir($dirPath) {
//     if (! is_dir($dirPath)) {
//         throw new InvalidArgumentException("$dirPath must be a directory");
//     }
//     if (substr($dirPath, strlen($dirPath) - 1, 1) != '/') {
//         $dirPath .= '/';
//     }
//     $files = glob($dirPath . '*', GLOB_MARK);
//     foreach ($files as $file) {
//         if (is_dir($file)) {
//             self::deleteDir($file);
//         } else {
//             unlink($file);
//         }
//     }
//     rmdir($dirPath);
// }

// PAGES 44444444

// And if you are using 5.2+ you can use a RecursiveIterator to do it without implementing the recursion yourself:

// $dir = 'samples' . DIRECTORY_SEPARATOR . 'sampledirtree';
// $it = new RecursiveDirectoryIterator($dir, RecursiveDirectoryIterator::SKIP_DOTS);
// $files = new RecursiveIteratorIterator($it,
//              RecursiveIteratorIterator::CHILD_FIRST);
// foreach($files as $file) {
//     if ($file->isDir()){
//         rmdir($file->getRealPath());
//     } else {
//         unlink($file->getRealPath());
//     }
// }
// rmdir($dir);
?>
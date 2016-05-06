node default {
  hiera_include('classes')
  
  notify {"Master Site":}
 
  
  $allow_virtual_packages = hiera('allow_virtual_packages',false)
  Package {
    allow_virtual => $allow_virtual_packages,
  }
    
}

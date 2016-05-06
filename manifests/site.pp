node default {
  hiera_include('classes')
  
  notify {"Production Site":}
 
  
  $allow_virtual_packages = hiera('allow_virtual_packages',false)
  Package {
    allow_virtual => $allow_virtual_packages,
  }
    
}

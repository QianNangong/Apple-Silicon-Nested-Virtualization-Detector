import Hypervisor

if #available(macOS 15.0, *) {
    var supported = false
    if HV_SUCCESS == hv_vm_config_get_el2_supported(&supported) {
        if supported {
            print("Congratulation! Your Mac support Nested Virtualization!")
        } else {
            print("It's sad to say that you may need a newer Mac which supported Nested Virtualization...")
        }
    } else {
        print("You Mac may not be able to support Nested Virtualization...")
    }
} else {
    print("This tool only works on macOS Sequoia(15) and newer OSs...")
}


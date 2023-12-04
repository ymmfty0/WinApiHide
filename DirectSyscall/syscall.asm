.code
	SysNtAllocateVirtualMemory proc
			mov         r10,rcx
			mov         eax,18h
			syscall 
			ret
	SysNtAllocateVirtualMemory endp

	SysNtWriteVirtualMemory proc
			mov         r10,rcx
			mov         eax,3Ah
			syscall
			ret
	SysNtWriteVirtualMemory endp

	SysNtCreateThreadEx proc
			mov         r10,rcx
			mov         eax,0C7h
			syscall
			ret
	SysNtCreateThreadEx endp

	SysNtWaitForSingleObject proc
			mov         r10,rcx
			mov         eax,4
			syscall
			ret
	SysNtWaitForSingleObject endp
end
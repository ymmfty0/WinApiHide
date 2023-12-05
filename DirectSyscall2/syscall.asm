.data
	EXTERN wNtAllocateVirtualMemory:DWORD            
	EXTERN wNtWriteVirtualMemory:DWORD                
	EXTERN wNtCreateThreadEx:DWORD                 
	EXTERN wNtWaitForSingleObject:DWORD                

.code

	NtAllocateVirtualMemory proc
			mov         r10,rcx
			mov         eax,wNtAllocateVirtualMemory
			syscall 
			ret
	NtAllocateVirtualMemory endp

	NtWriteVirtualMemory proc
			mov         r10,rcx
			mov         eax,wNtWriteVirtualMemory
			syscall
			ret
	NtWriteVirtualMemory endp

	NtCreateThreadEx proc
			mov         r10,rcx
			mov         eax,wNtCreateThreadEx
			syscall
			ret
	NtCreateThreadEx endp

	NtWaitForSingleObject proc
			mov         r10,rcx
			mov         eax,wNtWaitForSingleObject
			syscall
			ret
	NtWaitForSingleObject endp
end
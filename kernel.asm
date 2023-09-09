
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000f117          	auipc	sp,0xf
    80000004:	7d013103          	ld	sp,2000(sp) # 8000f7d0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	129090ef          	jal	ra,80009944 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv // ovo omogucava koriscenje spolja, oznacavamo da je simbol globalan
.type _ZN5Riscv13pushRegistersEv, @function // oznacavamo tip simbola, neobavezno, ali smo fini :D
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret

00000000800010f8 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800010f8:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800010fc:	00b29a63          	bne	t0,a1,80001110 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001100:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001104:	fe029ae3          	bnez	t0,800010f8 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001108:	00000513          	li	a0,0
    jr ra                  # Return.
    8000110c:	00008067          	ret

0000000080001110 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001110:	00100513          	li	a0,1
    80001114:	00008067          	ret
	...

0000000080001120 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00013023          	sd	zero,0(sp)
    80001128:	00113423          	sd	ra,8(sp)
    8000112c:	00213823          	sd	sp,16(sp)
    80001130:	00313c23          	sd	gp,24(sp)
    80001134:	02413023          	sd	tp,32(sp)
    80001138:	02513423          	sd	t0,40(sp)
    8000113c:	02613823          	sd	t1,48(sp)
    80001140:	02713c23          	sd	t2,56(sp)
    80001144:	04813023          	sd	s0,64(sp)
    80001148:	04913423          	sd	s1,72(sp)
    8000114c:	04a13823          	sd	a0,80(sp)
    80001150:	04b13c23          	sd	a1,88(sp)
    80001154:	06c13023          	sd	a2,96(sp)
    80001158:	06d13423          	sd	a3,104(sp)
    8000115c:	06e13823          	sd	a4,112(sp)
    80001160:	06f13c23          	sd	a5,120(sp)
    80001164:	09013023          	sd	a6,128(sp)
    80001168:	09113423          	sd	a7,136(sp)
    8000116c:	09213823          	sd	s2,144(sp)
    80001170:	09313c23          	sd	s3,152(sp)
    80001174:	0b413023          	sd	s4,160(sp)
    80001178:	0b513423          	sd	s5,168(sp)
    8000117c:	0b613823          	sd	s6,176(sp)
    80001180:	0b713c23          	sd	s7,184(sp)
    80001184:	0d813023          	sd	s8,192(sp)
    80001188:	0d913423          	sd	s9,200(sp)
    8000118c:	0da13823          	sd	s10,208(sp)
    80001190:	0db13c23          	sd	s11,216(sp)
    80001194:	0fc13023          	sd	t3,224(sp)
    80001198:	0fd13423          	sd	t4,232(sp)
    8000119c:	0fe13823          	sd	t5,240(sp)
    800011a0:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    800011a4:	5bc030ef          	jal	ra,80004760 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011a8:	00013003          	ld	zero,0(sp)
    800011ac:	00813083          	ld	ra,8(sp)
    800011b0:	01013103          	ld	sp,16(sp)
    800011b4:	01813183          	ld	gp,24(sp)
    800011b8:	02013203          	ld	tp,32(sp)
    800011bc:	02813283          	ld	t0,40(sp)
    800011c0:	03013303          	ld	t1,48(sp)
    800011c4:	03813383          	ld	t2,56(sp)
    800011c8:	04013403          	ld	s0,64(sp)
    800011cc:	04813483          	ld	s1,72(sp)
    800011d0:	05013503          	ld	a0,80(sp)
    800011d4:	05813583          	ld	a1,88(sp)
    800011d8:	06013603          	ld	a2,96(sp)
    800011dc:	06813683          	ld	a3,104(sp)
    800011e0:	07013703          	ld	a4,112(sp)
    800011e4:	07813783          	ld	a5,120(sp)
    800011e8:	08013803          	ld	a6,128(sp)
    800011ec:	08813883          	ld	a7,136(sp)
    800011f0:	09013903          	ld	s2,144(sp)
    800011f4:	09813983          	ld	s3,152(sp)
    800011f8:	0a013a03          	ld	s4,160(sp)
    800011fc:	0a813a83          	ld	s5,168(sp)
    80001200:	0b013b03          	ld	s6,176(sp)
    80001204:	0b813b83          	ld	s7,184(sp)
    80001208:	0c013c03          	ld	s8,192(sp)
    8000120c:	0c813c83          	ld	s9,200(sp)
    80001210:	0d013d03          	ld	s10,208(sp)
    80001214:	0d813d83          	ld	s11,216(sp)
    80001218:	0e013e03          	ld	t3,224(sp)
    8000121c:	0e813e83          	ld	t4,232(sp)
    80001220:	0f013f03          	ld	t5,240(sp)
    80001224:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001228:	10010113          	addi	sp,sp,256

    sret
    8000122c:	10200073          	sret

0000000080001230 <_ZN3TCB14context_switchEPNS_7ContextES1_>:
.global _ZN3TCB14context_switchEPNS_7ContextES1_
.type _ZN3TCB14context_switchEPNS_7ContextES1_, @function
_ZN3TCB14context_switchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001230:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001234:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001238:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000123c:	0085b103          	ld	sp,8(a1)

    80001240:	00008067          	ret

0000000080001244 <mem_alloc>:
#include "../h/syscall_c.h"
void *mem_alloc(size_t size) {
    80001244:	fb010113          	addi	sp,sp,-80
    80001248:	04113423          	sd	ra,72(sp)
    8000124c:	04813023          	sd	s0,64(sp)
    80001250:	05010413          	addi	s0,sp,80
    // prebaci u blokove i zaokruzi na gornji ceo
    size_t ssize = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001254:	03f50513          	addi	a0,a0,63
    80001258:	00655513          	srli	a0,a0,0x6
    uint64 a5 = 0;
    uint64 a6 = 0;
    uint64 a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    8000125c:	00100793          	li	a5,1
    80001260:	faf43823          	sd	a5,-80(s0)
    80001264:	faa43c23          	sd	a0,-72(s0)
    80001268:	fc043023          	sd	zero,-64(s0)
    8000126c:	fc043423          	sd	zero,-56(s0)
    80001270:	fc043823          	sd	zero,-48(s0)
    80001274:	fc043c23          	sd	zero,-40(s0)
    80001278:	fe043023          	sd	zero,-32(s0)
    8000127c:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return abi::sys_call(reinterpret_cast<void*>(empty));
    80001280:	fb040513          	addi	a0,s0,-80
    80001284:	00004097          	auipc	ra,0x4
    80001288:	33c080e7          	jalr	828(ra) # 800055c0 <_ZN3abi8sys_callEPv>
}
    8000128c:	04813083          	ld	ra,72(sp)
    80001290:	04013403          	ld	s0,64(sp)
    80001294:	05010113          	addi	sp,sp,80
    80001298:	00008067          	ret

000000008000129c <mem_free>:

int mem_free(void *addr) {
    if(addr == nullptr)return 0;
    8000129c:	04050c63          	beqz	a0,800012f4 <mem_free+0x58>
int mem_free(void *addr) {
    800012a0:	fb010113          	addi	sp,sp,-80
    800012a4:	04113423          	sd	ra,72(sp)
    800012a8:	04813023          	sd	s0,64(sp)
    800012ac:	05010413          	addi	s0,sp,80
    uint64 a5 = 0;
    uint64 a6 = 0;
    uint64 a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800012b0:	00200793          	li	a5,2
    800012b4:	faf43823          	sd	a5,-80(s0)
    800012b8:	faa43c23          	sd	a0,-72(s0)
    800012bc:	fc043023          	sd	zero,-64(s0)
    800012c0:	fc043423          	sd	zero,-56(s0)
    800012c4:	fc043823          	sd	zero,-48(s0)
    800012c8:	fc043c23          	sd	zero,-40(s0)
    800012cc:	fe043023          	sd	zero,-32(s0)
    800012d0:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64) abi::sys_call(reinterpret_cast<void *>(empty));
    800012d4:	fb040513          	addi	a0,s0,-80
    800012d8:	00004097          	auipc	ra,0x4
    800012dc:	2e8080e7          	jalr	744(ra) # 800055c0 <_ZN3abi8sys_callEPv>
    800012e0:	0005051b          	sext.w	a0,a0
}
    800012e4:	04813083          	ld	ra,72(sp)
    800012e8:	04013403          	ld	s0,64(sp)
    800012ec:	05010113          	addi	sp,sp,80
    800012f0:	00008067          	ret
    if(addr == nullptr)return 0;
    800012f4:	00000513          	li	a0,0
}
    800012f8:	00008067          	ret

00000000800012fc <thread_create>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800012fc:	f9010113          	addi	sp,sp,-112
    80001300:	06113423          	sd	ra,104(sp)
    80001304:	06813023          	sd	s0,96(sp)
    80001308:	04913c23          	sd	s1,88(sp)
    8000130c:	05213823          	sd	s2,80(sp)
    80001310:	05313423          	sd	s3,72(sp)
    80001314:	07010413          	addi	s0,sp,112
    80001318:	00050913          	mv	s2,a0
    8000131c:	00058493          	mv	s1,a1
    80001320:	00060993          	mv	s3,a2

    // inicijalizacija steka
    void* stack = mem_alloc(DEFAULT_STACK_SIZE);
    80001324:	00001537          	lui	a0,0x1
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	f1c080e7          	jalr	-228(ra) # 80001244 <mem_alloc>
    if(stack == nullptr){
    80001330:	04050e63          	beqz	a0,8000138c <thread_create+0x90>
        *handle = nullptr;
        return -1;
    }
    uint64 a4 = (start_routine != nullptr) ? (uint64)stack : 0;
    80001334:	06048263          	beqz	s1,80001398 <thread_create+0x9c>
    a6 = (uint64)true;

    a5 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001338:	01100793          	li	a5,17
    8000133c:	f8f43823          	sd	a5,-112(s0)
    80001340:	f9243c23          	sd	s2,-104(s0)
    80001344:	fa943023          	sd	s1,-96(s0)
    80001348:	fb343423          	sd	s3,-88(s0)
    8000134c:	faa43823          	sd	a0,-80(s0)
    80001350:	fa043c23          	sd	zero,-72(s0)
    80001354:	00100793          	li	a5,1
    80001358:	fcf43023          	sd	a5,-64(s0)
    8000135c:	fc043423          	sd	zero,-56(s0)

    // sistemski poziv
    return (uint64) abi::sys_call(reinterpret_cast<void *>(empty));
    80001360:	f9040513          	addi	a0,s0,-112
    80001364:	00004097          	auipc	ra,0x4
    80001368:	25c080e7          	jalr	604(ra) # 800055c0 <_ZN3abi8sys_callEPv>
    8000136c:	0005051b          	sext.w	a0,a0

}
    80001370:	06813083          	ld	ra,104(sp)
    80001374:	06013403          	ld	s0,96(sp)
    80001378:	05813483          	ld	s1,88(sp)
    8000137c:	05013903          	ld	s2,80(sp)
    80001380:	04813983          	ld	s3,72(sp)
    80001384:	07010113          	addi	sp,sp,112
    80001388:	00008067          	ret
        *handle = nullptr;
    8000138c:	00093023          	sd	zero,0(s2)
        return -1;
    80001390:	fff00513          	li	a0,-1
    80001394:	fddff06f          	j	80001370 <thread_create+0x74>
    uint64 a4 = (start_routine != nullptr) ? (uint64)stack : 0;
    80001398:	00000513          	li	a0,0
    8000139c:	f9dff06f          	j	80001338 <thread_create+0x3c>

00000000800013a0 <thread_dispatch>:

void thread_dispatch() {
    800013a0:	fb010113          	addi	sp,sp,-80
    800013a4:	04113423          	sd	ra,72(sp)
    800013a8:	04813023          	sd	s0,64(sp)
    800013ac:	05010413          	addi	s0,sp,80
    uint64  a1, a2, a3, a4, a5, a6, a7;

    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800013b0:	01300793          	li	a5,19
    800013b4:	faf43823          	sd	a5,-80(s0)
    800013b8:	fa043c23          	sd	zero,-72(s0)
    800013bc:	fc043023          	sd	zero,-64(s0)
    800013c0:	fc043423          	sd	zero,-56(s0)
    800013c4:	fc043823          	sd	zero,-48(s0)
    800013c8:	fc043c23          	sd	zero,-40(s0)
    800013cc:	fe043023          	sd	zero,-32(s0)
    800013d0:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    800013d4:	fb040513          	addi	a0,s0,-80
    800013d8:	00004097          	auipc	ra,0x4
    800013dc:	1e8080e7          	jalr	488(ra) # 800055c0 <_ZN3abi8sys_callEPv>

    // povratak
    return;

}
    800013e0:	04813083          	ld	ra,72(sp)
    800013e4:	04013403          	ld	s0,64(sp)
    800013e8:	05010113          	addi	sp,sp,80
    800013ec:	00008067          	ret

00000000800013f0 <thread_exit>:

int thread_exit() {
    800013f0:	fb010113          	addi	sp,sp,-80
    800013f4:	04113423          	sd	ra,72(sp)
    800013f8:	04813023          	sd	s0,64(sp)
    800013fc:	05010413          	addi	s0,sp,80
    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001400:	01200793          	li	a5,18
    80001404:	faf43823          	sd	a5,-80(s0)
    80001408:	fa043c23          	sd	zero,-72(s0)
    8000140c:	fc043023          	sd	zero,-64(s0)
    80001410:	fc043423          	sd	zero,-56(s0)
    80001414:	fc043823          	sd	zero,-48(s0)
    80001418:	fc043c23          	sd	zero,-40(s0)
    8000141c:	fe043023          	sd	zero,-32(s0)
    80001420:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    80001424:	fb040513          	addi	a0,s0,-80
    80001428:	00004097          	auipc	ra,0x4
    8000142c:	198080e7          	jalr	408(ra) # 800055c0 <_ZN3abi8sys_callEPv>

//    return 0;
}
    80001430:	0005051b          	sext.w	a0,a0
    80001434:	04813083          	ld	ra,72(sp)
    80001438:	04013403          	ld	s0,64(sp)
    8000143c:	05010113          	addi	sp,sp,80
    80001440:	00008067          	ret

0000000080001444 <time_sleep>:

int time_sleep(time_t time) {

    if(time == 0)return 0;
    80001444:	00051663          	bnez	a0,80001450 <time_sleep+0xc>
    80001448:	00000513          	li	a0,0

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));

//    return 0;
}
    8000144c:	00008067          	ret
int time_sleep(time_t time) {
    80001450:	fb010113          	addi	sp,sp,-80
    80001454:	04113423          	sd	ra,72(sp)
    80001458:	04813023          	sd	s0,64(sp)
    8000145c:	05010413          	addi	s0,sp,80
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001460:	03100793          	li	a5,49
    80001464:	faf43823          	sd	a5,-80(s0)
    80001468:	faa43c23          	sd	a0,-72(s0)
    8000146c:	fc043023          	sd	zero,-64(s0)
    80001470:	fc043423          	sd	zero,-56(s0)
    80001474:	fc043823          	sd	zero,-48(s0)
    80001478:	fc043c23          	sd	zero,-40(s0)
    8000147c:	fe043023          	sd	zero,-32(s0)
    80001480:	fe043423          	sd	zero,-24(s0)
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    80001484:	fb040513          	addi	a0,s0,-80
    80001488:	00004097          	auipc	ra,0x4
    8000148c:	138080e7          	jalr	312(ra) # 800055c0 <_ZN3abi8sys_callEPv>
    80001490:	0005051b          	sext.w	a0,a0
}
    80001494:	04813083          	ld	ra,72(sp)
    80001498:	04013403          	ld	s0,64(sp)
    8000149c:	05010113          	addi	sp,sp,80
    800014a0:	00008067          	ret

00000000800014a4 <sem_open>:

int sem_open(sem_t *handle, uint64 init) {
    800014a4:	fb010113          	addi	sp,sp,-80
    800014a8:	04113423          	sd	ra,72(sp)
    800014ac:	04813023          	sd	s0,64(sp)
    800014b0:	05010413          	addi	s0,sp,80
    a1 = (uint64)handle;
    a2 = init;
    a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800014b4:	02100793          	li	a5,33
    800014b8:	faf43823          	sd	a5,-80(s0)
    800014bc:	faa43c23          	sd	a0,-72(s0)
    800014c0:	fcb43023          	sd	a1,-64(s0)
    800014c4:	fc043423          	sd	zero,-56(s0)
    800014c8:	fc043823          	sd	zero,-48(s0)
    800014cc:	fc043c23          	sd	zero,-40(s0)
    800014d0:	fe043023          	sd	zero,-32(s0)
    800014d4:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    800014d8:	fb040513          	addi	a0,s0,-80
    800014dc:	00004097          	auipc	ra,0x4
    800014e0:	0e4080e7          	jalr	228(ra) # 800055c0 <_ZN3abi8sys_callEPv>
}
    800014e4:	0005051b          	sext.w	a0,a0
    800014e8:	04813083          	ld	ra,72(sp)
    800014ec:	04013403          	ld	s0,64(sp)
    800014f0:	05010113          	addi	sp,sp,80
    800014f4:	00008067          	ret

00000000800014f8 <sem_close>:

int sem_close(sem_t handle) {
    800014f8:	fb010113          	addi	sp,sp,-80
    800014fc:	04113423          	sd	ra,72(sp)
    80001500:	04813023          	sd	s0,64(sp)
    80001504:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)handle;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001508:	02200793          	li	a5,34
    8000150c:	faf43823          	sd	a5,-80(s0)
    80001510:	faa43c23          	sd	a0,-72(s0)
    80001514:	fc043023          	sd	zero,-64(s0)
    80001518:	fc043423          	sd	zero,-56(s0)
    8000151c:	fc043823          	sd	zero,-48(s0)
    80001520:	fc043c23          	sd	zero,-40(s0)
    80001524:	fe043023          	sd	zero,-32(s0)
    80001528:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    8000152c:	fb040513          	addi	a0,s0,-80
    80001530:	00004097          	auipc	ra,0x4
    80001534:	090080e7          	jalr	144(ra) # 800055c0 <_ZN3abi8sys_callEPv>
}
    80001538:	0005051b          	sext.w	a0,a0
    8000153c:	04813083          	ld	ra,72(sp)
    80001540:	04013403          	ld	s0,64(sp)
    80001544:	05010113          	addi	sp,sp,80
    80001548:	00008067          	ret

000000008000154c <sem_wait>:

int sem_wait(sem_t id) {
    8000154c:	fb010113          	addi	sp,sp,-80
    80001550:	04113423          	sd	ra,72(sp)
    80001554:	04813023          	sd	s0,64(sp)
    80001558:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)id;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    8000155c:	02300793          	li	a5,35
    80001560:	faf43823          	sd	a5,-80(s0)
    80001564:	faa43c23          	sd	a0,-72(s0)
    80001568:	fc043023          	sd	zero,-64(s0)
    8000156c:	fc043423          	sd	zero,-56(s0)
    80001570:	fc043823          	sd	zero,-48(s0)
    80001574:	fc043c23          	sd	zero,-40(s0)
    80001578:	fe043023          	sd	zero,-32(s0)
    8000157c:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    80001580:	fb040513          	addi	a0,s0,-80
    80001584:	00004097          	auipc	ra,0x4
    80001588:	03c080e7          	jalr	60(ra) # 800055c0 <_ZN3abi8sys_callEPv>
}
    8000158c:	0005051b          	sext.w	a0,a0
    80001590:	04813083          	ld	ra,72(sp)
    80001594:	04013403          	ld	s0,64(sp)
    80001598:	05010113          	addi	sp,sp,80
    8000159c:	00008067          	ret

00000000800015a0 <sem_signal>:

int sem_signal(sem_t id) {
    800015a0:	fb010113          	addi	sp,sp,-80
    800015a4:	04113423          	sd	ra,72(sp)
    800015a8:	04813023          	sd	s0,64(sp)
    800015ac:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)id;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800015b0:	02400793          	li	a5,36
    800015b4:	faf43823          	sd	a5,-80(s0)
    800015b8:	faa43c23          	sd	a0,-72(s0)
    800015bc:	fc043023          	sd	zero,-64(s0)
    800015c0:	fc043423          	sd	zero,-56(s0)
    800015c4:	fc043823          	sd	zero,-48(s0)
    800015c8:	fc043c23          	sd	zero,-40(s0)
    800015cc:	fe043023          	sd	zero,-32(s0)
    800015d0:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    800015d4:	fb040513          	addi	a0,s0,-80
    800015d8:	00004097          	auipc	ra,0x4
    800015dc:	fe8080e7          	jalr	-24(ra) # 800055c0 <_ZN3abi8sys_callEPv>
}
    800015e0:	0005051b          	sext.w	a0,a0
    800015e4:	04813083          	ld	ra,72(sp)
    800015e8:	04013403          	ld	s0,64(sp)
    800015ec:	05010113          	addi	sp,sp,80
    800015f0:	00008067          	ret

00000000800015f4 <getc>:

char getc() {
    800015f4:	fb010113          	addi	sp,sp,-80
    800015f8:	04113423          	sd	ra,72(sp)
    800015fc:	04813023          	sd	s0,64(sp)
    80001600:	05010413          	addi	s0,sp,80
    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001604:	04100793          	li	a5,65
    80001608:	faf43823          	sd	a5,-80(s0)
    8000160c:	fa043c23          	sd	zero,-72(s0)
    80001610:	fc043023          	sd	zero,-64(s0)
    80001614:	fc043423          	sd	zero,-56(s0)
    80001618:	fc043823          	sd	zero,-48(s0)
    8000161c:	fc043c23          	sd	zero,-40(s0)
    80001620:	fe043023          	sd	zero,-32(s0)
    80001624:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    uint64 ch = (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    80001628:	fb040513          	addi	a0,s0,-80
    8000162c:	00004097          	auipc	ra,0x4
    80001630:	f94080e7          	jalr	-108(ra) # 800055c0 <_ZN3abi8sys_callEPv>

    return ch;
}
    80001634:	0ff57513          	andi	a0,a0,255
    80001638:	04813083          	ld	ra,72(sp)
    8000163c:	04013403          	ld	s0,64(sp)
    80001640:	05010113          	addi	sp,sp,80
    80001644:	00008067          	ret

0000000080001648 <putc>:

void putc(char c) {
    80001648:	fb010113          	addi	sp,sp,-80
    8000164c:	04113423          	sd	ra,72(sp)
    80001650:	04813023          	sd	s0,64(sp)
    80001654:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)c;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001658:	04200793          	li	a5,66
    8000165c:	faf43823          	sd	a5,-80(s0)
    80001660:	faa43c23          	sd	a0,-72(s0)
    80001664:	fc043023          	sd	zero,-64(s0)
    80001668:	fc043423          	sd	zero,-56(s0)
    8000166c:	fc043823          	sd	zero,-48(s0)
    80001670:	fc043c23          	sd	zero,-40(s0)
    80001674:	fe043023          	sd	zero,-32(s0)
    80001678:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    8000167c:	fb040513          	addi	a0,s0,-80
    80001680:	00004097          	auipc	ra,0x4
    80001684:	f40080e7          	jalr	-192(ra) # 800055c0 <_ZN3abi8sys_callEPv>
    return;
}
    80001688:	04813083          	ld	ra,72(sp)
    8000168c:	04013403          	ld	s0,64(sp)
    80001690:	05010113          	addi	sp,sp,80
    80001694:	00008067          	ret

0000000080001698 <put_in_scheduler>:

void put_in_scheduler(thread_t tcb) {
    80001698:	fb010113          	addi	sp,sp,-80
    8000169c:	04113423          	sd	ra,72(sp)
    800016a0:	04813023          	sd	s0,64(sp)
    800016a4:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)tcb;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800016a8:	05000793          	li	a5,80
    800016ac:	faf43823          	sd	a5,-80(s0)
    800016b0:	faa43c23          	sd	a0,-72(s0)
    800016b4:	fc043023          	sd	zero,-64(s0)
    800016b8:	fc043423          	sd	zero,-56(s0)
    800016bc:	fc043823          	sd	zero,-48(s0)
    800016c0:	fc043c23          	sd	zero,-40(s0)
    800016c4:	fe043023          	sd	zero,-32(s0)
    800016c8:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    800016cc:	fb040513          	addi	a0,s0,-80
    800016d0:	00004097          	auipc	ra,0x4
    800016d4:	ef0080e7          	jalr	-272(ra) # 800055c0 <_ZN3abi8sys_callEPv>
    return;
}
    800016d8:	04813083          	ld	ra,72(sp)
    800016dc:	04013403          	ld	s0,64(sp)
    800016e0:	05010113          	addi	sp,sp,80
    800016e4:	00008067          	ret

00000000800016e8 <switch_to_user>:

void switch_to_user() {
    800016e8:	fb010113          	addi	sp,sp,-80
    800016ec:	04113423          	sd	ra,72(sp)
    800016f0:	04813023          	sd	s0,64(sp)
    800016f4:	05010413          	addi	s0,sp,80
    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800016f8:	06000793          	li	a5,96
    800016fc:	faf43823          	sd	a5,-80(s0)
    80001700:	fa043c23          	sd	zero,-72(s0)
    80001704:	fc043023          	sd	zero,-64(s0)
    80001708:	fc043423          	sd	zero,-56(s0)
    8000170c:	fc043823          	sd	zero,-48(s0)
    80001710:	fc043c23          	sd	zero,-40(s0)
    80001714:	fe043023          	sd	zero,-32(s0)
    80001718:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    8000171c:	fb040513          	addi	a0,s0,-80
    80001720:	00004097          	auipc	ra,0x4
    80001724:	ea0080e7          	jalr	-352(ra) # 800055c0 <_ZN3abi8sys_callEPv>
    return;
}
    80001728:	04813083          	ld	ra,72(sp)
    8000172c:	04013403          	ld	s0,64(sp)
    80001730:	05010113          	addi	sp,sp,80
    80001734:	00008067          	ret

0000000080001738 <switch_to_priviledged>:

void switch_to_priviledged() {
    80001738:	fb010113          	addi	sp,sp,-80
    8000173c:	04113423          	sd	ra,72(sp)
    80001740:	04813023          	sd	s0,64(sp)
    80001744:	05010413          	addi	s0,sp,80
    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001748:	06100793          	li	a5,97
    8000174c:	faf43823          	sd	a5,-80(s0)
    80001750:	fa043c23          	sd	zero,-72(s0)
    80001754:	fc043023          	sd	zero,-64(s0)
    80001758:	fc043423          	sd	zero,-56(s0)
    8000175c:	fc043823          	sd	zero,-48(s0)
    80001760:	fc043c23          	sd	zero,-40(s0)
    80001764:	fe043023          	sd	zero,-32(s0)
    80001768:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    8000176c:	fb040513          	addi	a0,s0,-80
    80001770:	00004097          	auipc	ra,0x4
    80001774:	e50080e7          	jalr	-432(ra) # 800055c0 <_ZN3abi8sys_callEPv>
    return;
}
    80001778:	04813083          	ld	ra,72(sp)
    8000177c:	04013403          	ld	s0,64(sp)
    80001780:	05010113          	addi	sp,sp,80
    80001784:	00008067          	ret

0000000080001788 <set_periodic>:

void set_periodic(thread_t periodic_thread) {
    80001788:	fb010113          	addi	sp,sp,-80
    8000178c:	04113423          	sd	ra,72(sp)
    80001790:	04813023          	sd	s0,64(sp)
    80001794:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)periodic_thread;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001798:	07000793          	li	a5,112
    8000179c:	faf43823          	sd	a5,-80(s0)
    800017a0:	faa43c23          	sd	a0,-72(s0)
    800017a4:	fc043023          	sd	zero,-64(s0)
    800017a8:	fc043423          	sd	zero,-56(s0)
    800017ac:	fc043823          	sd	zero,-48(s0)
    800017b0:	fc043c23          	sd	zero,-40(s0)
    800017b4:	fe043023          	sd	zero,-32(s0)
    800017b8:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    800017bc:	fb040513          	addi	a0,s0,-80
    800017c0:	00004097          	auipc	ra,0x4
    800017c4:	e00080e7          	jalr	-512(ra) # 800055c0 <_ZN3abi8sys_callEPv>
    return;
}
    800017c8:	04813083          	ld	ra,72(sp)
    800017cc:	04013403          	ld	s0,64(sp)
    800017d0:	05010113          	addi	sp,sp,80
    800017d4:	00008067          	ret

00000000800017d8 <kill>:

void kill(thread_t thread) {
    800017d8:	fb010113          	addi	sp,sp,-80
    800017dc:	04113423          	sd	ra,72(sp)
    800017e0:	04813023          	sd	s0,64(sp)
    800017e4:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)thread;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800017e8:	11100793          	li	a5,273
    800017ec:	faf43823          	sd	a5,-80(s0)
    800017f0:	faa43c23          	sd	a0,-72(s0)
    800017f4:	fc043023          	sd	zero,-64(s0)
    800017f8:	fc043423          	sd	zero,-56(s0)
    800017fc:	fc043823          	sd	zero,-48(s0)
    80001800:	fc043c23          	sd	zero,-40(s0)
    80001804:	fe043023          	sd	zero,-32(s0)
    80001808:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    8000180c:	fb040513          	addi	a0,s0,-80
    80001810:	00004097          	auipc	ra,0x4
    80001814:	db0080e7          	jalr	-592(ra) # 800055c0 <_ZN3abi8sys_callEPv>
    return;
}
    80001818:	04813083          	ld	ra,72(sp)
    8000181c:	04013403          	ld	s0,64(sp)
    80001820:	05010113          	addi	sp,sp,80
    80001824:	00008067          	ret

0000000080001828 <_ZN8MyBufferC1Ei>:
#include "../h/my_buffer.hpp"

MyBuffer::MyBuffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80001828:	fe010113          	addi	sp,sp,-32
    8000182c:	00113c23          	sd	ra,24(sp)
    80001830:	00813823          	sd	s0,16(sp)
    80001834:	00913423          	sd	s1,8(sp)
    80001838:	01213023          	sd	s2,0(sp)
    8000183c:	02010413          	addi	s0,sp,32
    80001840:	00050493          	mv	s1,a0
    80001844:	00058913          	mv	s2,a1
    80001848:	0015879b          	addiw	a5,a1,1
    8000184c:	00f52023          	sw	a5,0(a0) # 1000 <_entry-0x7ffff000>
    80001850:	00052823          	sw	zero,16(a0)
    80001854:	00052a23          	sw	zero,20(a0)
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    80001858:	0000e797          	auipc	a5,0xe
    8000185c:	fd87c783          	lbu	a5,-40(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001860:	06078c63          	beqz	a5,800018d8 <_ZN8MyBufferC1Ei+0xb0>
    buffer = (int *)MemoryAllocator::getInstance().memory_alloc(sizeof(int) * cap);
    80001864:	0004a583          	lw	a1,0(s1)
    80001868:	00259593          	slli	a1,a1,0x2
    8000186c:	0000e517          	auipc	a0,0xe
    80001870:	fcc50513          	addi	a0,a0,-52 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001874:	00004097          	auipc	ra,0x4
    80001878:	af0080e7          	jalr	-1296(ra) # 80005364 <_ZN15MemoryAllocator12memory_allocEm>
    8000187c:	00a4b423          	sd	a0,8(s1)
    MySemaphore::sem_open(&itemAvailable, 0);
    80001880:	00000593          	li	a1,0
    80001884:	02048513          	addi	a0,s1,32
    80001888:	00001097          	auipc	ra,0x1
    8000188c:	880080e7          	jalr	-1920(ra) # 80002108 <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&spaceAvailable, _cap);
    80001890:	00090593          	mv	a1,s2
    80001894:	01848513          	addi	a0,s1,24
    80001898:	00001097          	auipc	ra,0x1
    8000189c:	870080e7          	jalr	-1936(ra) # 80002108 <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&mutexHead, 1);
    800018a0:	00100593          	li	a1,1
    800018a4:	02848513          	addi	a0,s1,40
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	860080e7          	jalr	-1952(ra) # 80002108 <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&mutexTail, 1);
    800018b0:	00100593          	li	a1,1
    800018b4:	03048513          	addi	a0,s1,48
    800018b8:	00001097          	auipc	ra,0x1
    800018bc:	850080e7          	jalr	-1968(ra) # 80002108 <_ZN11MySemaphore8sem_openEPPS_m>
}
    800018c0:	01813083          	ld	ra,24(sp)
    800018c4:	01013403          	ld	s0,16(sp)
    800018c8:	00813483          	ld	s1,8(sp)
    800018cc:	00013903          	ld	s2,0(sp)
    800018d0:	02010113          	addi	sp,sp,32
    800018d4:	00008067          	ret

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    800018d8:	0000e617          	auipc	a2,0xe
    800018dc:	f6060613          	addi	a2,a2,-160 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800018e0:	0000e797          	auipc	a5,0xe
    800018e4:	f087b783          	ld	a5,-248(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800018e8:	0007b703          	ld	a4,0(a5)
    800018ec:	0000e797          	auipc	a5,0xe
    800018f0:	eb47b783          	ld	a5,-332(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018f4:	0007b783          	ld	a5,0(a5)
    800018f8:	40f706b3          	sub	a3,a4,a5
    800018fc:	0036d693          	srli	a3,a3,0x3
    80001900:	00d787b3          	add	a5,a5,a3
    80001904:	00178793          	addi	a5,a5,1
    80001908:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    8000190c:	fff70713          	addi	a4,a4,-1
    80001910:	00e63823          	sd	a4,16(a2)

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80001914:	03f7f693          	andi	a3,a5,63
    80001918:	00068663          	beqz	a3,80001924 <_ZN8MyBufferC1Ei+0xfc>
    8000191c:	04000613          	li	a2,64
    80001920:	40d606b3          	sub	a3,a2,a3
    80001924:	00d787b3          	add	a5,a5,a3
    80001928:	0000e697          	auipc	a3,0xe
    8000192c:	f0f6b823          	sd	a5,-240(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80001930:	40f70733          	sub	a4,a4,a5
    80001934:	00675713          	srli	a4,a4,0x6

        // napravi node

        fmem_head->next = nullptr;
    80001938:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    8000193c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80001940:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80001944:	00100793          	li	a5,1
    80001948:	0000e717          	auipc	a4,0xe
    8000194c:	eef70423          	sb	a5,-280(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001950:	f15ff06f          	j	80001864 <_ZN8MyBufferC1Ei+0x3c>

0000000080001954 <_ZN8MyBufferD1Ev>:

MyBuffer::~MyBuffer() {
    80001954:	fe010113          	addi	sp,sp,-32
    80001958:	00113c23          	sd	ra,24(sp)
    8000195c:	00813823          	sd	s0,16(sp)
    80001960:	00913423          	sd	s1,8(sp)
    80001964:	02010413          	addi	s0,sp,32
    80001968:	00050493          	mv	s1,a0
    8000196c:	0000e797          	auipc	a5,0xe
    80001970:	ec47c783          	lbu	a5,-316(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001974:	04078e63          	beqz	a5,800019d0 <_ZN8MyBufferD1Ev+0x7c>
    MemoryAllocator::getInstance().memory_free((void*)buffer);
    80001978:	0084b583          	ld	a1,8(s1)
    8000197c:	0000e517          	auipc	a0,0xe
    80001980:	ebc50513          	addi	a0,a0,-324 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001984:	00004097          	auipc	ra,0x4
    80001988:	ab4080e7          	jalr	-1356(ra) # 80005438 <_ZN15MemoryAllocator11memory_freeEPv>
    MySemaphore::sem_close(itemAvailable);
    8000198c:	0204b503          	ld	a0,32(s1)
    80001990:	00001097          	auipc	ra,0x1
    80001994:	8ac080e7          	jalr	-1876(ra) # 8000223c <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(spaceAvailable);
    80001998:	0184b503          	ld	a0,24(s1)
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	8a0080e7          	jalr	-1888(ra) # 8000223c <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(mutexTail);
    800019a4:	0304b503          	ld	a0,48(s1)
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	894080e7          	jalr	-1900(ra) # 8000223c <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(mutexHead);
    800019b0:	0284b503          	ld	a0,40(s1)
    800019b4:	00001097          	auipc	ra,0x1
    800019b8:	888080e7          	jalr	-1912(ra) # 8000223c <_ZN11MySemaphore9sem_closeEPS_>
}
    800019bc:	01813083          	ld	ra,24(sp)
    800019c0:	01013403          	ld	s0,16(sp)
    800019c4:	00813483          	ld	s1,8(sp)
    800019c8:	02010113          	addi	sp,sp,32
    800019cc:	00008067          	ret
    MemoryAllocator(){
    800019d0:	0000e617          	auipc	a2,0xe
    800019d4:	e6860613          	addi	a2,a2,-408 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800019d8:	0000e797          	auipc	a5,0xe
    800019dc:	e107b783          	ld	a5,-496(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800019e0:	0007b703          	ld	a4,0(a5)
    800019e4:	0000e797          	auipc	a5,0xe
    800019e8:	dbc7b783          	ld	a5,-580(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019ec:	0007b783          	ld	a5,0(a5)
    800019f0:	40f706b3          	sub	a3,a4,a5
    800019f4:	0036d693          	srli	a3,a3,0x3
    800019f8:	00d787b3          	add	a5,a5,a3
    800019fc:	00178793          	addi	a5,a5,1
    80001a00:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80001a04:	fff70713          	addi	a4,a4,-1
    80001a08:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80001a0c:	03f7f693          	andi	a3,a5,63
    80001a10:	00068663          	beqz	a3,80001a1c <_ZN8MyBufferD1Ev+0xc8>
    80001a14:	04000613          	li	a2,64
    80001a18:	40d606b3          	sub	a3,a2,a3
    80001a1c:	00d787b3          	add	a5,a5,a3
    80001a20:	0000e697          	auipc	a3,0xe
    80001a24:	e0f6bc23          	sd	a5,-488(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80001a28:	40f70733          	sub	a4,a4,a5
    80001a2c:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80001a30:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80001a34:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80001a38:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80001a3c:	00100793          	li	a5,1
    80001a40:	0000e717          	auipc	a4,0xe
    80001a44:	def70823          	sb	a5,-528(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001a48:	f31ff06f          	j	80001978 <_ZN8MyBufferD1Ev+0x24>

0000000080001a4c <_ZN8MyBuffer3putEi>:

void MyBuffer::put(int val) {
    80001a4c:	fe010113          	addi	sp,sp,-32
    80001a50:	00113c23          	sd	ra,24(sp)
    80001a54:	00813823          	sd	s0,16(sp)
    80001a58:	00913423          	sd	s1,8(sp)
    80001a5c:	01213023          	sd	s2,0(sp)
    80001a60:	02010413          	addi	s0,sp,32
    80001a64:	00050493          	mv	s1,a0
    80001a68:	00058913          	mv	s2,a1
    MySemaphore::sem_wait(spaceAvailable);
    80001a6c:	01853503          	ld	a0,24(a0)
    80001a70:	00001097          	auipc	ra,0x1
    80001a74:	8e4080e7          	jalr	-1820(ra) # 80002354 <_ZN11MySemaphore8sem_waitEPS_>

    MySemaphore::sem_wait(mutexTail);
    80001a78:	0304b503          	ld	a0,48(s1)
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	8d8080e7          	jalr	-1832(ra) # 80002354 <_ZN11MySemaphore8sem_waitEPS_>
    buffer[tail] = val;
    80001a84:	0084b783          	ld	a5,8(s1)
    80001a88:	0144a703          	lw	a4,20(s1)
    80001a8c:	00271713          	slli	a4,a4,0x2
    80001a90:	00e787b3          	add	a5,a5,a4
    80001a94:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80001a98:	0144a783          	lw	a5,20(s1)
    80001a9c:	0017879b          	addiw	a5,a5,1
    80001aa0:	0004a703          	lw	a4,0(s1)
    80001aa4:	02e7e7bb          	remw	a5,a5,a4
    80001aa8:	00f4aa23          	sw	a5,20(s1)
    MySemaphore::sem_signal(mutexTail);
    80001aac:	0304b503          	ld	a0,48(s1)
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	974080e7          	jalr	-1676(ra) # 80002424 <_ZN11MySemaphore10sem_signalEPS_>

    MySemaphore::sem_signal(itemAvailable);
    80001ab8:	0204b503          	ld	a0,32(s1)
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	968080e7          	jalr	-1688(ra) # 80002424 <_ZN11MySemaphore10sem_signalEPS_>

}
    80001ac4:	01813083          	ld	ra,24(sp)
    80001ac8:	01013403          	ld	s0,16(sp)
    80001acc:	00813483          	ld	s1,8(sp)
    80001ad0:	00013903          	ld	s2,0(sp)
    80001ad4:	02010113          	addi	sp,sp,32
    80001ad8:	00008067          	ret

0000000080001adc <_ZN8MyBuffer3getEv>:

int MyBuffer::get() {
    80001adc:	fe010113          	addi	sp,sp,-32
    80001ae0:	00113c23          	sd	ra,24(sp)
    80001ae4:	00813823          	sd	s0,16(sp)
    80001ae8:	00913423          	sd	s1,8(sp)
    80001aec:	01213023          	sd	s2,0(sp)
    80001af0:	02010413          	addi	s0,sp,32
    80001af4:	00050493          	mv	s1,a0
    MySemaphore::sem_wait(itemAvailable);
    80001af8:	02053503          	ld	a0,32(a0)
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	858080e7          	jalr	-1960(ra) # 80002354 <_ZN11MySemaphore8sem_waitEPS_>

    MySemaphore::sem_wait(mutexHead);
    80001b04:	0284b503          	ld	a0,40(s1)
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	84c080e7          	jalr	-1972(ra) # 80002354 <_ZN11MySemaphore8sem_waitEPS_>

    int ret = buffer[head];
    80001b10:	0084b703          	ld	a4,8(s1)
    80001b14:	0104a783          	lw	a5,16(s1)
    80001b18:	00279693          	slli	a3,a5,0x2
    80001b1c:	00d70733          	add	a4,a4,a3
    80001b20:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80001b24:	0017879b          	addiw	a5,a5,1
    80001b28:	0004a703          	lw	a4,0(s1)
    80001b2c:	02e7e7bb          	remw	a5,a5,a4
    80001b30:	00f4a823          	sw	a5,16(s1)
    MySemaphore::sem_signal(mutexHead);
    80001b34:	0284b503          	ld	a0,40(s1)
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	8ec080e7          	jalr	-1812(ra) # 80002424 <_ZN11MySemaphore10sem_signalEPS_>

    MySemaphore::sem_signal(spaceAvailable);
    80001b40:	0184b503          	ld	a0,24(s1)
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	8e0080e7          	jalr	-1824(ra) # 80002424 <_ZN11MySemaphore10sem_signalEPS_>

    return ret;
}
    80001b4c:	00090513          	mv	a0,s2
    80001b50:	01813083          	ld	ra,24(sp)
    80001b54:	01013403          	ld	s0,16(sp)
    80001b58:	00813483          	ld	s1,8(sp)
    80001b5c:	00013903          	ld	s2,0(sp)
    80001b60:	02010113          	addi	sp,sp,32
    80001b64:	00008067          	ret

0000000080001b68 <_ZN8MyBuffer6getCntEv>:

int MyBuffer::getCnt() {
    80001b68:	fe010113          	addi	sp,sp,-32
    80001b6c:	00113c23          	sd	ra,24(sp)
    80001b70:	00813823          	sd	s0,16(sp)
    80001b74:	00913423          	sd	s1,8(sp)
    80001b78:	01213023          	sd	s2,0(sp)
    80001b7c:	02010413          	addi	s0,sp,32
    80001b80:	00050493          	mv	s1,a0
    int ret;

    MySemaphore::sem_wait(mutexHead);
    80001b84:	02853503          	ld	a0,40(a0)
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	7cc080e7          	jalr	1996(ra) # 80002354 <_ZN11MySemaphore8sem_waitEPS_>
    MySemaphore::sem_wait(mutexTail);
    80001b90:	0304b503          	ld	a0,48(s1)
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	7c0080e7          	jalr	1984(ra) # 80002354 <_ZN11MySemaphore8sem_waitEPS_>

    if (tail >= head) {
    80001b9c:	0144a783          	lw	a5,20(s1)
    80001ba0:	0104a903          	lw	s2,16(s1)
    80001ba4:	0327ce63          	blt	a5,s2,80001be0 <_ZN8MyBuffer6getCntEv+0x78>
        ret = tail - head;
    80001ba8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    MySemaphore::sem_signal(mutexTail);
    80001bac:	0304b503          	ld	a0,48(s1)
    80001bb0:	00001097          	auipc	ra,0x1
    80001bb4:	874080e7          	jalr	-1932(ra) # 80002424 <_ZN11MySemaphore10sem_signalEPS_>
    MySemaphore::sem_signal(mutexHead);
    80001bb8:	0284b503          	ld	a0,40(s1)
    80001bbc:	00001097          	auipc	ra,0x1
    80001bc0:	868080e7          	jalr	-1944(ra) # 80002424 <_ZN11MySemaphore10sem_signalEPS_>

    return ret;
}
    80001bc4:	00090513          	mv	a0,s2
    80001bc8:	01813083          	ld	ra,24(sp)
    80001bcc:	01013403          	ld	s0,16(sp)
    80001bd0:	00813483          	ld	s1,8(sp)
    80001bd4:	00013903          	ld	s2,0(sp)
    80001bd8:	02010113          	addi	sp,sp,32
    80001bdc:	00008067          	ret
        ret = cap - head + tail;
    80001be0:	0004a703          	lw	a4,0(s1)
    80001be4:	4127093b          	subw	s2,a4,s2
    80001be8:	00f9093b          	addw	s2,s2,a5
    80001bec:	fc1ff06f          	j	80001bac <_ZN8MyBuffer6getCntEv+0x44>

0000000080001bf0 <_ZN11BuddySystemC1Ev>:
//
// Created by os on 8/12/23.

#include "../h/Buddy.h"

BuddySystem::BuddySystem(){
    80001bf0:	ff010113          	addi	sp,sp,-16
    80001bf4:	00813423          	sd	s0,8(sp)
    80001bf8:	01010413          	addi	s0,sp,16

}
    80001bfc:	00813403          	ld	s0,8(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <_ZN11BuddySystem13insertInArrayEmm>:
    }
    return position;
}

// vraca na kojem mestu je node ubacen u nizu arr[position]
int BuddySystem::insertInArray(size_t position, size_t addr) {
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00813423          	sd	s0,8(sp)
    80001c10:	01010413          	addi	s0,sp,16
    80001c14:	00050693          	mv	a3,a0
    MemNode* node = (MemNode*)addr;

    if(!arr[position]){
    80001c18:	00359793          	slli	a5,a1,0x3
    80001c1c:	00f507b3          	add	a5,a0,a5
    80001c20:	0007b783          	ld	a5,0(a5)
    80001c24:	02078263          	beqz	a5,80001c48 <_ZN11BuddySystem13insertInArrayEmm+0x40>
        arr[position] = node;
        return 0;
    }

    int cnt = 0;
    MemNode* prev = nullptr, * curr = arr[position];
    80001c28:	00000713          	li	a4,0
    int cnt = 0;
    80001c2c:	00000513          	li	a0,0
    while(curr and (size_t)curr < (size_t)node){
    80001c30:	02078663          	beqz	a5,80001c5c <_ZN11BuddySystem13insertInArrayEmm+0x54>
    80001c34:	02c7f463          	bgeu	a5,a2,80001c5c <_ZN11BuddySystem13insertInArrayEmm+0x54>
        prev = curr;
        curr = curr->next;
        cnt++;
    80001c38:	0015051b          	addiw	a0,a0,1
        prev = curr;
    80001c3c:	00078713          	mv	a4,a5
        curr = curr->next;
    80001c40:	0007b783          	ld	a5,0(a5)
    while(curr and (size_t)curr < (size_t)node){
    80001c44:	fedff06f          	j	80001c30 <_ZN11BuddySystem13insertInArrayEmm+0x28>
        arr[position] = node;
    80001c48:	00359593          	slli	a1,a1,0x3
    80001c4c:	00b506b3          	add	a3,a0,a1
    80001c50:	00c6b023          	sd	a2,0(a3)
        return 0;
    80001c54:	00000513          	li	a0,0
    80001c58:	0100006f          	j	80001c68 <_ZN11BuddySystem13insertInArrayEmm+0x60>
    }
    node->next = curr;
    80001c5c:	00f63023          	sd	a5,0(a2)
    if(prev)prev->next = node;
    80001c60:	00070a63          	beqz	a4,80001c74 <_ZN11BuddySystem13insertInArrayEmm+0x6c>
    80001c64:	00c73023          	sd	a2,0(a4)
    else arr[position] = node;
    return cnt;
}
    80001c68:	00813403          	ld	s0,8(sp)
    80001c6c:	01010113          	addi	sp,sp,16
    80001c70:	00008067          	ret
    else arr[position] = node;
    80001c74:	00359593          	slli	a1,a1,0x3
    80001c78:	00b686b3          	add	a3,a3,a1
    80001c7c:	00c6b023          	sd	a2,0(a3)
    80001c80:	fe9ff06f          	j	80001c68 <_ZN11BuddySystem13insertInArrayEmm+0x60>

0000000080001c84 <_ZN11BuddySystem13splitAndOrderEmm>:
size_t BuddySystem::splitAndOrder(size_t position, size_t required_size) {
    80001c84:	fc010113          	addi	sp,sp,-64
    80001c88:	02113c23          	sd	ra,56(sp)
    80001c8c:	02813823          	sd	s0,48(sp)
    80001c90:	02913423          	sd	s1,40(sp)
    80001c94:	03213023          	sd	s2,32(sp)
    80001c98:	01313c23          	sd	s3,24(sp)
    80001c9c:	01413823          	sd	s4,16(sp)
    80001ca0:	01513423          	sd	s5,8(sp)
    80001ca4:	04010413          	addi	s0,sp,64
    80001ca8:	00050a13          	mv	s4,a0
    80001cac:	00058493          	mv	s1,a1
    80001cb0:	00060a93          	mv	s5,a2
    int insertInArray(size_t position, size_t addr);
    int tryToMerge(MemNode* left, MemNode* right, size_t position);

    size_t static pow(size_t deg){
        size_t tmp = 1;
        for(size_t i = 0; i < deg; i++){
    80001cb4:	00000793          	li	a5,0
        size_t tmp = 1;
    80001cb8:	00100913          	li	s2,1
        for(size_t i = 0; i < deg; i++){
    80001cbc:	0097f863          	bgeu	a5,s1,80001ccc <_ZN11BuddySystem13splitAndOrderEmm+0x48>
            tmp <<= 1;
    80001cc0:	00191913          	slli	s2,s2,0x1
        for(size_t i = 0; i < deg; i++){
    80001cc4:	00178793          	addi	a5,a5,1
    80001cc8:	ff5ff06f          	j	80001cbc <_ZN11BuddySystem13splitAndOrderEmm+0x38>
    while((val >> 1) >= required_size && (val >> 1) >= BLOCK_SIZE){
    80001ccc:	00195913          	srli	s2,s2,0x1
    80001cd0:	07596463          	bltu	s2,s5,80001d38 <_ZN11BuddySystem13splitAndOrderEmm+0xb4>
    80001cd4:	000017b7          	lui	a5,0x1
    80001cd8:	06f96063          	bltu	s2,a5,80001d38 <_ZN11BuddySystem13splitAndOrderEmm+0xb4>
        MemNode* tmp = arr[position];
    80001cdc:	00349793          	slli	a5,s1,0x3
    80001ce0:	00fa07b3          	add	a5,s4,a5
    80001ce4:	0007b603          	ld	a2,0(a5) # 1000 <_entry-0x7ffff000>
        arr[position] = arr[position]->next;
    80001ce8:	00063703          	ld	a4,0(a2)
    80001cec:	00e7b023          	sd	a4,0(a5)
        tmp->next = nullptr;
    80001cf0:	00063023          	sd	zero,0(a2)
        tmp->size >>= 1;
    80001cf4:	00863783          	ld	a5,8(a2)
    80001cf8:	0017d793          	srli	a5,a5,0x1
    80001cfc:	00f63423          	sd	a5,8(a2)
        MemNode* newNode = (MemNode*)((size_t)tmp + tmp->size);
    80001d00:	00c789b3          	add	s3,a5,a2
        newNode->size = tmp->size;
    80001d04:	00f9b423          	sd	a5,8(s3)
        newNode->next = nullptr;
    80001d08:	0009b023          	sd	zero,0(s3)
        position--;
    80001d0c:	fff48493          	addi	s1,s1,-1
        insertInArray(position, (size_t)tmp);
    80001d10:	00048593          	mv	a1,s1
    80001d14:	000a0513          	mv	a0,s4
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	ef0080e7          	jalr	-272(ra) # 80001c08 <_ZN11BuddySystem13insertInArrayEmm>
        insertInArray(position, (size_t)newNode);
    80001d20:	00098613          	mv	a2,s3
    80001d24:	00048593          	mv	a1,s1
    80001d28:	000a0513          	mv	a0,s4
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	edc080e7          	jalr	-292(ra) # 80001c08 <_ZN11BuddySystem13insertInArrayEmm>
    while((val >> 1) >= required_size && (val >> 1) >= BLOCK_SIZE){
    80001d34:	f99ff06f          	j	80001ccc <_ZN11BuddySystem13splitAndOrderEmm+0x48>
}
    80001d38:	00048513          	mv	a0,s1
    80001d3c:	03813083          	ld	ra,56(sp)
    80001d40:	03013403          	ld	s0,48(sp)
    80001d44:	02813483          	ld	s1,40(sp)
    80001d48:	02013903          	ld	s2,32(sp)
    80001d4c:	01813983          	ld	s3,24(sp)
    80001d50:	01013a03          	ld	s4,16(sp)
    80001d54:	00813a83          	ld	s5,8(sp)
    80001d58:	04010113          	addi	sp,sp,64
    80001d5c:	00008067          	ret

0000000080001d60 <_ZN11BuddySystem10buddyAllocEm>:
void* BuddySystem::buddyAlloc(size_t size) {
    80001d60:	fe010113          	addi	sp,sp,-32
    80001d64:	00113c23          	sd	ra,24(sp)
    80001d68:	00813823          	sd	s0,16(sp)
    80001d6c:	00913423          	sd	s1,8(sp)
    80001d70:	02010413          	addi	s0,sp,32
    80001d74:	00050493          	mv	s1,a0
    80001d78:	00058713          	mv	a4,a1
    for(size_t i = 0; i < 40; i++){
    80001d7c:	00000593          	li	a1,0
    80001d80:	0080006f          	j	80001d88 <_ZN11BuddySystem10buddyAllocEm+0x28>
    80001d84:	00158593          	addi	a1,a1,1
    80001d88:	02700793          	li	a5,39
    80001d8c:	06b7e063          	bltu	a5,a1,80001dec <_ZN11BuddySystem10buddyAllocEm+0x8c>
        if(arr[i] && arr[i]->size >= size + sizeof(size_t)){
    80001d90:	00359793          	slli	a5,a1,0x3
    80001d94:	00f487b3          	add	a5,s1,a5
    80001d98:	0007b783          	ld	a5,0(a5)
    80001d9c:	fe0784e3          	beqz	a5,80001d84 <_ZN11BuddySystem10buddyAllocEm+0x24>
    80001da0:	0087b783          	ld	a5,8(a5)
    80001da4:	00870613          	addi	a2,a4,8
    80001da8:	fcc7eee3          	bltu	a5,a2,80001d84 <_ZN11BuddySystem10buddyAllocEm+0x24>
            position = splitAndOrder(i, size + sizeof(size_t));
    80001dac:	00048513          	mv	a0,s1
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	ed4080e7          	jalr	-300(ra) # 80001c84 <_ZN11BuddySystem13splitAndOrderEmm>
    if(position == 50)return nullptr;
    80001db8:	03200793          	li	a5,50
    80001dbc:	04f50a63          	beq	a0,a5,80001e10 <_ZN11BuddySystem10buddyAllocEm+0xb0>
    MemNode* node = arr[position];
    80001dc0:	00351793          	slli	a5,a0,0x3
    80001dc4:	00f484b3          	add	s1,s1,a5
    80001dc8:	0004b683          	ld	a3,0(s1)
    arr[position] = arr[position]->next;
    80001dcc:	0006b783          	ld	a5,0(a3)
    80001dd0:	00f4b023          	sd	a5,0(s1)
    80001dd4:	00000793          	li	a5,0
        size_t tmp = 1;
    80001dd8:	00100713          	li	a4,1
        for(size_t i = 0; i < deg; i++){
    80001ddc:	00a7fc63          	bgeu	a5,a0,80001df4 <_ZN11BuddySystem10buddyAllocEm+0x94>
            tmp <<= 1;
    80001de0:	00171713          	slli	a4,a4,0x1
        for(size_t i = 0; i < deg; i++){
    80001de4:	00178793          	addi	a5,a5,1
    80001de8:	ff5ff06f          	j	80001ddc <_ZN11BuddySystem10buddyAllocEm+0x7c>
    size_t position = 50;
    80001dec:	03200513          	li	a0,50
    80001df0:	fc9ff06f          	j	80001db8 <_ZN11BuddySystem10buddyAllocEm+0x58>
    *((size_t*)node) = pow(position);
    80001df4:	00e6b023          	sd	a4,0(a3)
    return (void*)((size_t)node + sizeof(size_t));
    80001df8:	00868513          	addi	a0,a3,8
}
    80001dfc:	01813083          	ld	ra,24(sp)
    80001e00:	01013403          	ld	s0,16(sp)
    80001e04:	00813483          	ld	s1,8(sp)
    80001e08:	02010113          	addi	sp,sp,32
    80001e0c:	00008067          	ret
    if(position == 50)return nullptr;
    80001e10:	00000513          	li	a0,0
    80001e14:	fe9ff06f          	j	80001dfc <_ZN11BuddySystem10buddyAllocEm+0x9c>

0000000080001e18 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>:

// vraca -1 ukoliko nije spojeno, ukoliko jeste vraca poziciju na kojoj je element ubacen
int BuddySystem::tryToMerge(BuddySystem::MemNode *left, BuddySystem::MemNode *right, size_t position) {
    if(left && right && ((size_t)left + left->size == (size_t)right) && (((size_t)left - buddyHeapStart) % pow(position) == 0)){
    80001e18:	0a058c63          	beqz	a1,80001ed0 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xb8>
    80001e1c:	0a060e63          	beqz	a2,80001ed8 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xc0>
    80001e20:	0085b883          	ld	a7,8(a1)
    80001e24:	00b887b3          	add	a5,a7,a1
    80001e28:	0ac79c63          	bne	a5,a2,80001ee0 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xc8>
    80001e2c:	14053703          	ld	a4,320(a0)
    80001e30:	40e58833          	sub	a6,a1,a4
    80001e34:	00000793          	li	a5,0
        size_t tmp = 1;
    80001e38:	00100713          	li	a4,1
        for(size_t i = 0; i < deg; i++){
    80001e3c:	00d7f863          	bgeu	a5,a3,80001e4c <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x34>
            tmp <<= 1;
    80001e40:	00171713          	slli	a4,a4,0x1
        for(size_t i = 0; i < deg; i++){
    80001e44:	00178793          	addi	a5,a5,1
    80001e48:	ff5ff06f          	j	80001e3c <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x24>
    80001e4c:	02e87733          	remu	a4,a6,a4
    80001e50:	08071c63          	bnez	a4,80001ee8 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xd0>
int BuddySystem::tryToMerge(BuddySystem::MemNode *left, BuddySystem::MemNode *right, size_t position) {
    80001e54:	ff010113          	addi	sp,sp,-16
    80001e58:	00113423          	sd	ra,8(sp)
    80001e5c:	00813023          	sd	s0,0(sp)
    80001e60:	01010413          	addi	s0,sp,16
        left->size <<= 1;
    80001e64:	00189893          	slli	a7,a7,0x1
    80001e68:	0115b423          	sd	a7,8(a1)
        MemNode* prev = nullptr;
        for(MemNode* curr = arr[position]; curr != left; curr = curr->next){
    80001e6c:	00369793          	slli	a5,a3,0x3
    80001e70:	00f507b3          	add	a5,a0,a5
    80001e74:	0007b783          	ld	a5,0(a5)
    80001e78:	00b78863          	beq	a5,a1,80001e88 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x70>
            prev = curr;
    80001e7c:	00078713          	mv	a4,a5
        for(MemNode* curr = arr[position]; curr != left; curr = curr->next){
    80001e80:	0007b783          	ld	a5,0(a5)
    80001e84:	ff5ff06f          	j	80001e78 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x60>
        }
        if(prev){
    80001e88:	02070a63          	beqz	a4,80001ebc <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xa4>
            prev->next = right->next;
    80001e8c:	00063783          	ld	a5,0(a2)
    80001e90:	00f73023          	sd	a5,0(a4)
        }else{
            arr[position] = right->next;
        }
        right->next = nullptr;
    80001e94:	00063023          	sd	zero,0(a2)
        left->next = nullptr;
    80001e98:	0005b023          	sd	zero,0(a1)
//        *(size_t*)(left - sizeof(size_t)) = left->size;
        size_t insertPosition = insertInArray(position + 1, (size_t)left);
    80001e9c:	00058613          	mv	a2,a1
    80001ea0:	00168593          	addi	a1,a3,1
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	d64080e7          	jalr	-668(ra) # 80001c08 <_ZN11BuddySystem13insertInArrayEmm>
        // nema svrhu, samo testiranje da ne bi bilo optimizacije
        left = arr[position];
        return (int)insertPosition;
    }
    return -1;
}
    80001eac:	00813083          	ld	ra,8(sp)
    80001eb0:	00013403          	ld	s0,0(sp)
    80001eb4:	01010113          	addi	sp,sp,16
    80001eb8:	00008067          	ret
            arr[position] = right->next;
    80001ebc:	00063703          	ld	a4,0(a2)
    80001ec0:	00369793          	slli	a5,a3,0x3
    80001ec4:	00f507b3          	add	a5,a0,a5
    80001ec8:	00e7b023          	sd	a4,0(a5)
    80001ecc:	fc9ff06f          	j	80001e94 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x7c>
    return -1;
    80001ed0:	fff00513          	li	a0,-1
    80001ed4:	00008067          	ret
    80001ed8:	fff00513          	li	a0,-1
    80001edc:	00008067          	ret
    80001ee0:	fff00513          	li	a0,-1
    80001ee4:	00008067          	ret
    80001ee8:	fff00513          	li	a0,-1
}
    80001eec:	00008067          	ret

0000000080001ef0 <_ZN11BuddySystem9buddyFreeEm>:
    size_t size = *(size_t*)(addr - sizeof(size_t));
    80001ef0:	ff85b683          	ld	a3,-8(a1)
    if((void*)addr == nullptr || size == 0)return;
    80001ef4:	12058863          	beqz	a1,80002024 <_ZN11BuddySystem9buddyFreeEm+0x134>
void BuddySystem::buddyFree(size_t addr) {
    80001ef8:	fd010113          	addi	sp,sp,-48
    80001efc:	02113423          	sd	ra,40(sp)
    80001f00:	02813023          	sd	s0,32(sp)
    80001f04:	00913c23          	sd	s1,24(sp)
    80001f08:	01213823          	sd	s2,16(sp)
    80001f0c:	01313423          	sd	s3,8(sp)
    80001f10:	01413023          	sd	s4,0(sp)
    80001f14:	03010413          	addi	s0,sp,48
    80001f18:	00050a13          	mv	s4,a0
    80001f1c:	ff858613          	addi	a2,a1,-8
    if((void*)addr == nullptr || size == 0)return;
    80001f20:	0e068263          	beqz	a3,80002004 <_ZN11BuddySystem9buddyFreeEm+0x114>
    80001f24:	00068793          	mv	a5,a3
        }
        return tmp;
    }

    size_t static log(size_t size){
        size_t deg = 0;
    80001f28:	00000993          	li	s3,0
        while(size > 1){
    80001f2c:	00100713          	li	a4,1
    80001f30:	00f77863          	bgeu	a4,a5,80001f40 <_ZN11BuddySystem9buddyFreeEm+0x50>
            size >>= 1;
    80001f34:	0017d793          	srli	a5,a5,0x1
            deg++;
    80001f38:	00198993          	addi	s3,s3,1
        while(size > 1){
    80001f3c:	ff1ff06f          	j	80001f2c <_ZN11BuddySystem9buddyFreeEm+0x3c>
    newNode->next = nullptr;
    80001f40:	fe05bc23          	sd	zero,-8(a1)
    newNode->size = size;
    80001f44:	00d63423          	sd	a3,8(a2)
    int merged = (int)insertInArray(position, (size_t)newNode);
    80001f48:	00098593          	mv	a1,s3
    80001f4c:	000a0513          	mv	a0,s4
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	cb8080e7          	jalr	-840(ra) # 80001c08 <_ZN11BuddySystem13insertInArrayEmm>
    80001f58:	07c0006f          	j	80001fd4 <_ZN11BuddySystem9buddyFreeEm+0xe4>
        for(int i = 0; i < merged; i++){
    80001f5c:	0017071b          	addiw	a4,a4,1
            prev = curr;
    80001f60:	00048593          	mv	a1,s1
            curr = curr->next;
    80001f64:	00078493          	mv	s1,a5
        for(int i = 0; i < merged; i++){
    80001f68:	00a75a63          	bge	a4,a0,80001f7c <_ZN11BuddySystem9buddyFreeEm+0x8c>
            curr = curr->next;
    80001f6c:	0004b783          	ld	a5,0(s1)
            if(curr)next = curr->next;
    80001f70:	fe0786e3          	beqz	a5,80001f5c <_ZN11BuddySystem9buddyFreeEm+0x6c>
    80001f74:	0007b903          	ld	s2,0(a5)
    80001f78:	fe5ff06f          	j	80001f5c <_ZN11BuddySystem9buddyFreeEm+0x6c>
        if(merged == 0 && curr){
    80001f7c:	00051663          	bnez	a0,80001f88 <_ZN11BuddySystem9buddyFreeEm+0x98>
    80001f80:	00048463          	beqz	s1,80001f88 <_ZN11BuddySystem9buddyFreeEm+0x98>
            next = curr->next;
    80001f84:	0004b903          	ld	s2,0(s1)
        if(!prev && !next){
    80001f88:	06058863          	beqz	a1,80001ff8 <_ZN11BuddySystem9buddyFreeEm+0x108>
        if(prev){
    80001f8c:	00058c63          	beqz	a1,80001fa4 <_ZN11BuddySystem9buddyFreeEm+0xb4>
            merged = tryToMerge(prev, curr, position);
    80001f90:	00098693          	mv	a3,s3
    80001f94:	00048613          	mv	a2,s1
    80001f98:	000a0513          	mv	a0,s4
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	e7c080e7          	jalr	-388(ra) # 80001e18 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>
        if((merged != -1) && next){
    80001fa4:	fff00793          	li	a5,-1
    80001fa8:	02f50063          	beq	a0,a5,80001fc8 <_ZN11BuddySystem9buddyFreeEm+0xd8>
    80001fac:	00090e63          	beqz	s2,80001fc8 <_ZN11BuddySystem9buddyFreeEm+0xd8>
            merged = tryToMerge(curr, next, position);
    80001fb0:	00098693          	mv	a3,s3
    80001fb4:	00090613          	mv	a2,s2
    80001fb8:	00048593          	mv	a1,s1
    80001fbc:	000a0513          	mv	a0,s4
    80001fc0:	00000097          	auipc	ra,0x0
    80001fc4:	e58080e7          	jalr	-424(ra) # 80001e18 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>
        if(merged != -1)position++;
    80001fc8:	fff00793          	li	a5,-1
    80001fcc:	00f50463          	beq	a0,a5,80001fd4 <_ZN11BuddySystem9buddyFreeEm+0xe4>
    80001fd0:	00198993          	addi	s3,s3,1
    while(merged != -1){
    80001fd4:	fff00793          	li	a5,-1
    80001fd8:	02f50663          	beq	a0,a5,80002004 <_ZN11BuddySystem9buddyFreeEm+0x114>
        MemNode* curr = arr[position], *prev = nullptr, *next = nullptr;
    80001fdc:	00399793          	slli	a5,s3,0x3
    80001fe0:	00fa07b3          	add	a5,s4,a5
    80001fe4:	0007b483          	ld	s1,0(a5)
        for(int i = 0; i < merged; i++){
    80001fe8:	00000713          	li	a4,0
        MemNode* curr = arr[position], *prev = nullptr, *next = nullptr;
    80001fec:	00000913          	li	s2,0
    80001ff0:	00000593          	li	a1,0
    80001ff4:	f75ff06f          	j	80001f68 <_ZN11BuddySystem9buddyFreeEm+0x78>
        if(!prev && !next){
    80001ff8:	f8091ae3          	bnez	s2,80001f8c <_ZN11BuddySystem9buddyFreeEm+0x9c>
            merged = -1;
    80001ffc:	fff00513          	li	a0,-1
    80002000:	f8dff06f          	j	80001f8c <_ZN11BuddySystem9buddyFreeEm+0x9c>
}
    80002004:	02813083          	ld	ra,40(sp)
    80002008:	02013403          	ld	s0,32(sp)
    8000200c:	01813483          	ld	s1,24(sp)
    80002010:	01013903          	ld	s2,16(sp)
    80002014:	00813983          	ld	s3,8(sp)
    80002018:	00013a03          	ld	s4,0(sp)
    8000201c:	03010113          	addi	sp,sp,48
    80002020:	00008067          	ret
    80002024:	00008067          	ret

0000000080002028 <_ZN11BuddySystem9initBuddyEv>:

void BuddySystem::initBuddy() {
    80002028:	ff010113          	addi	sp,sp,-16
    8000202c:	00813423          	sd	s0,8(sp)
    80002030:	01010413          	addi	s0,sp,16
    buddyHeapEnd = buddyHeapStart + buddyNumOfBlocks * BLOCK_SIZE;
    80002034:	14053603          	ld	a2,320(a0)
    80002038:	15053783          	ld	a5,336(a0)
    8000203c:	00c79793          	slli	a5,a5,0xc
    80002040:	00f60633          	add	a2,a2,a5
    80002044:	14c53423          	sd	a2,328(a0)
//    buddyHeapEnd = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - 1 - (size_t)HEAP_START_ADDR) / 8;
    size_t deg = 0, size = 1, realSize = buddyHeapEnd - (size_t)HEAP_START_ADDR, heapStart = (size_t)HEAP_START_ADDR;
    80002048:	0000d797          	auipc	a5,0xd
    8000204c:	7587b783          	ld	a5,1880(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002050:	0007b683          	ld	a3,0(a5)
    80002054:	40d60633          	sub	a2,a2,a3
    80002058:	00100793          	li	a5,1
    8000205c:	00000713          	li	a4,0

    while(size <= realSize){
    80002060:	00f66863          	bltu	a2,a5,80002070 <_ZN11BuddySystem9initBuddyEv+0x48>
        deg++;
    80002064:	00170713          	addi	a4,a4,1
        size <<= 1;
    80002068:	00179793          	slli	a5,a5,0x1
    while(size <= realSize){
    8000206c:	ff5ff06f          	j	80002060 <_ZN11BuddySystem9initBuddyEv+0x38>
    }
    size >>= 1;
    80002070:	0017d793          	srli	a5,a5,0x1
    deg--;
    80002074:	fff70713          	addi	a4,a4,-1
        size_t deg = 0;
    80002078:	00000813          	li	a6,0
    8000207c:	000015b7          	lui	a1,0x1
        while(size > 1){
    80002080:	00100893          	li	a7,1
    80002084:	00b8fc63          	bgeu	a7,a1,8000209c <_ZN11BuddySystem9initBuddyEv+0x74>
            size >>= 1;
    80002088:	0015d593          	srli	a1,a1,0x1
            deg++;
    8000208c:	00180813          	addi	a6,a6,1
        while(size > 1){
    80002090:	ff1ff06f          	j	80002080 <_ZN11BuddySystem9initBuddyEv+0x58>
    int cnt = 0;
    size_t boundary = log(BLOCK_SIZE);
    while(heapStart < buddyHeapEnd && size >= boundary) {
        cnt++;
        if(realSize < size){
            deg--;
    80002094:	fff70713          	addi	a4,a4,-1
            size >>=1;
    80002098:	0017d793          	srli	a5,a5,0x1
    while(heapStart < buddyHeapEnd && size >= boundary) {
    8000209c:	14853583          	ld	a1,328(a0)
    800020a0:	02b6fa63          	bgeu	a3,a1,800020d4 <_ZN11BuddySystem9initBuddyEv+0xac>
    800020a4:	0307e863          	bltu	a5,a6,800020d4 <_ZN11BuddySystem9initBuddyEv+0xac>
        if(realSize < size){
    800020a8:	fef666e3          	bltu	a2,a5,80002094 <_ZN11BuddySystem9initBuddyEv+0x6c>
            continue;
        }

        MemNode *newNode = (MemNode *) heapStart;
        newNode->next = nullptr;
    800020ac:	0006b023          	sd	zero,0(a3)
        newNode->size = size;
    800020b0:	00f6b423          	sd	a5,8(a3)
        arr[deg] = newNode;
    800020b4:	00371593          	slli	a1,a4,0x3
    800020b8:	00b505b3          	add	a1,a0,a1
    800020bc:	00d5b023          	sd	a3,0(a1) # 1000 <_entry-0x7ffff000>

        realSize -= size;
    800020c0:	40f60633          	sub	a2,a2,a5
        heapStart += size;
    800020c4:	00f686b3          	add	a3,a3,a5
        deg--;
    800020c8:	fff70713          	addi	a4,a4,-1
        size >>= 1;
    800020cc:	0017d793          	srli	a5,a5,0x1
    800020d0:	fcdff06f          	j	8000209c <_ZN11BuddySystem9initBuddyEv+0x74>
    }
};
    800020d4:	00813403          	ld	s0,8(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <_ZN11MySemaphoreC1Em>:
    if( id->get_val() <= 0)id->unblock();
    if(!id->get_indicator())return 0;
    else return -1;
}

MySemaphore::MySemaphore(uint64 init) {
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00813423          	sd	s0,8(sp)
    800020e8:	01010413          	addi	s0,sp,16
    val = init;
    800020ec:	00b52023          	sw	a1,0(a0)
    head = tail = nullptr;
    800020f0:	00053823          	sd	zero,16(a0)
    800020f4:	00053423          	sd	zero,8(a0)
    indicator = false;
    800020f8:	00050223          	sb	zero,4(a0)
}
    800020fc:	00813403          	ld	s0,8(sp)
    80002100:	01010113          	addi	sp,sp,16
    80002104:	00008067          	ret

0000000080002108 <_ZN11MySemaphore8sem_openEPPS_m>:
int MySemaphore::sem_open(MySemaphore **handle, uint64 init) {
    80002108:	fd010113          	addi	sp,sp,-48
    8000210c:	02113423          	sd	ra,40(sp)
    80002110:	02813023          	sd	s0,32(sp)
    80002114:	00913c23          	sd	s1,24(sp)
    80002118:	01213823          	sd	s2,16(sp)
    8000211c:	01313423          	sd	s3,8(sp)
    80002120:	03010413          	addi	s0,sp,48
    80002124:	00050913          	mv	s2,a0
    80002128:	00058993          	mv	s3,a1
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    8000212c:	0000d797          	auipc	a5,0xd
    80002130:	7047c783          	lbu	a5,1796(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002134:	04078863          	beqz	a5,80002184 <_ZN11MySemaphore8sem_openEPPS_m+0x7c>
    void set_val(int v){ val = v; }

    // operatori
    void *operator new(uint64 n){
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    80002138:	00100593          	li	a1,1
    8000213c:	0000d517          	auipc	a0,0xd
    80002140:	6fc50513          	addi	a0,a0,1788 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002144:	00003097          	auipc	ra,0x3
    80002148:	220080e7          	jalr	544(ra) # 80005364 <_ZN15MemoryAllocator12memory_allocEm>
    8000214c:	00050493          	mv	s1,a0
    *handle = new MySemaphore(init);
    80002150:	00050863          	beqz	a0,80002160 <_ZN11MySemaphore8sem_openEPPS_m+0x58>
    80002154:	00098593          	mv	a1,s3
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	f88080e7          	jalr	-120(ra) # 800020e0 <_ZN11MySemaphoreC1Em>
    80002160:	00993023          	sd	s1,0(s2)
}
    80002164:	00000513          	li	a0,0
    80002168:	02813083          	ld	ra,40(sp)
    8000216c:	02013403          	ld	s0,32(sp)
    80002170:	01813483          	ld	s1,24(sp)
    80002174:	01013903          	ld	s2,16(sp)
    80002178:	00813983          	ld	s3,8(sp)
    8000217c:	03010113          	addi	sp,sp,48
    80002180:	00008067          	ret

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    80002184:	0000d617          	auipc	a2,0xd
    80002188:	6b460613          	addi	a2,a2,1716 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    8000218c:	0000d797          	auipc	a5,0xd
    80002190:	65c7b783          	ld	a5,1628(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002194:	0007b703          	ld	a4,0(a5)
    80002198:	0000d797          	auipc	a5,0xd
    8000219c:	6087b783          	ld	a5,1544(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800021a0:	0007b783          	ld	a5,0(a5)
    800021a4:	40f706b3          	sub	a3,a4,a5
    800021a8:	0036d693          	srli	a3,a3,0x3
    800021ac:	00d787b3          	add	a5,a5,a3
    800021b0:	00178793          	addi	a5,a5,1
    800021b4:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800021b8:	fff70713          	addi	a4,a4,-1
    800021bc:	00e63823          	sd	a4,16(a2)

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800021c0:	03f7f693          	andi	a3,a5,63
    800021c4:	00068663          	beqz	a3,800021d0 <_ZN11MySemaphore8sem_openEPPS_m+0xc8>
    800021c8:	04000613          	li	a2,64
    800021cc:	40d606b3          	sub	a3,a2,a3
    800021d0:	00d787b3          	add	a5,a5,a3
    800021d4:	0000d697          	auipc	a3,0xd
    800021d8:	66f6b223          	sd	a5,1636(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    800021dc:	40f70733          	sub	a4,a4,a5
    800021e0:	00675713          	srli	a4,a4,0x6

        // napravi node

        fmem_head->next = nullptr;
    800021e4:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    800021e8:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    800021ec:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    800021f0:	00100793          	li	a5,1
    800021f4:	0000d717          	auipc	a4,0xd
    800021f8:	62f70e23          	sb	a5,1596(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800021fc:	f3dff06f          	j	80002138 <_ZN11MySemaphore8sem_openEPPS_m+0x30>

0000000080002200 <_ZN11MySemaphore16get_from_blockedEv>:

TCB* MySemaphore::get_from_blocked() {
    80002200:	ff010113          	addi	sp,sp,-16
    80002204:	00813423          	sd	s0,8(sp)
    80002208:	01010413          	addi	s0,sp,16
    8000220c:	00050793          	mv	a5,a0
    if(head){
    80002210:	00853503          	ld	a0,8(a0)
    80002214:	00050a63          	beqz	a0,80002228 <_ZN11MySemaphore16get_from_blockedEv+0x28>

    TCB* get_next_sleep()const{ return next_sleep; }

    void set_next_blocked(TCB* nextThread){ next_blocked = nextThread; }

    TCB* get_next_blocked()const{ return next_blocked; }
    80002218:	04053703          	ld	a4,64(a0)
        TCB* tmp = head;
        head = head->get_next_blocked();
    8000221c:	00e7b423          	sd	a4,8(a5)
        if(!head)tail = nullptr;
    80002220:	00070a63          	beqz	a4,80002234 <_ZN11MySemaphore16get_from_blockedEv+0x34>
    void set_next_blocked(TCB* nextThread){ next_blocked = nextThread; }
    80002224:	04053023          	sd	zero,64(a0)
        tmp->set_next_blocked(nullptr);
        return tmp;
    }
    return nullptr;
}
    80002228:	00813403          	ld	s0,8(sp)
    8000222c:	01010113          	addi	sp,sp,16
    80002230:	00008067          	ret
        if(!head)tail = nullptr;
    80002234:	0007b823          	sd	zero,16(a5)
    80002238:	fedff06f          	j	80002224 <_ZN11MySemaphore16get_from_blockedEv+0x24>

000000008000223c <_ZN11MySemaphore9sem_closeEPS_>:
int MySemaphore::sem_close(MySemaphore* handle){
    8000223c:	fe010113          	addi	sp,sp,-32
    80002240:	00113c23          	sd	ra,24(sp)
    80002244:	00813823          	sd	s0,16(sp)
    80002248:	00913423          	sd	s1,8(sp)
    8000224c:	01213023          	sd	s2,0(sp)
    80002250:	02010413          	addi	s0,sp,32
    80002254:	00050913          	mv	s2,a0
    TCB* tmp = handle->head;
    80002258:	00853483          	ld	s1,8(a0)
    8000225c:	0180006f          	j	80002274 <_ZN11MySemaphore9sem_closeEPS_+0x38>
        if(tmp)Scheduler::getInstance().put(tmp);
    80002260:	00048593          	mv	a1,s1
    80002264:	0000d517          	auipc	a0,0xd
    80002268:	5f450513          	addi	a0,a0,1524 # 8000f858 <_ZZN9Scheduler11getInstanceEvE8instance>
    8000226c:	00003097          	auipc	ra,0x3
    80002270:	098080e7          	jalr	152(ra) # 80005304 <_ZN9Scheduler3putEP3TCB>
    while(tmp){
    80002274:	04048663          	beqz	s1,800022c0 <_ZN11MySemaphore9sem_closeEPS_+0x84>
        tmp = handle->get_from_blocked();
    80002278:	00090513          	mv	a0,s2
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	f84080e7          	jalr	-124(ra) # 80002200 <_ZN11MySemaphore16get_from_blockedEv>
    80002284:	00050493          	mv	s1,a0
        if(tmp)Scheduler::getInstance().put(tmp);
    80002288:	fe0506e3          	beqz	a0,80002274 <_ZN11MySemaphore9sem_closeEPS_+0x38>

class Scheduler{
public:

    static Scheduler& getInstance(){
        static Scheduler instance;
    8000228c:	0000d797          	auipc	a5,0xd
    80002290:	5c47c783          	lbu	a5,1476(a5) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80002294:	fc0796e3          	bnez	a5,80002260 <_ZN11MySemaphore9sem_closeEPS_+0x24>
//    static void printScheduler();

private:

    Scheduler(){
        head = nullptr;
    80002298:	0000d797          	auipc	a5,0xd
    8000229c:	5287b783          	ld	a5,1320(a5) # 8000f7c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800022a0:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    800022a4:	0000d797          	auipc	a5,0xd
    800022a8:	4f47b783          	ld	a5,1268(a5) # 8000f798 <_GLOBAL_OFFSET_TABLE_+0x18>
    800022ac:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    800022b0:	00100793          	li	a5,1
    800022b4:	0000d717          	auipc	a4,0xd
    800022b8:	58f70e23          	sb	a5,1436(a4) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    800022bc:	fa5ff06f          	j	80002260 <_ZN11MySemaphore9sem_closeEPS_+0x24>
    void set_indicator(bool v){ indicator = v; }
    800022c0:	00100793          	li	a5,1
    800022c4:	00f90223          	sb	a5,4(s2)
}
    800022c8:	00000513          	li	a0,0
    800022cc:	01813083          	ld	ra,24(sp)
    800022d0:	01013403          	ld	s0,16(sp)
    800022d4:	00813483          	ld	s1,8(sp)
    800022d8:	00013903          	ld	s2,0(sp)
    800022dc:	02010113          	addi	sp,sp,32
    800022e0:	00008067          	ret

00000000800022e4 <_ZN11MySemaphore14put_in_blockedEP3TCB>:

void MySemaphore::put_in_blocked(TCB *tcb) {
    800022e4:	ff010113          	addi	sp,sp,-16
    800022e8:	00813423          	sd	s0,8(sp)
    800022ec:	01010413          	addi	s0,sp,16
    if(!head)head = tcb;
    800022f0:	00853783          	ld	a5,8(a0)
    800022f4:	00078e63          	beqz	a5,80002310 <_ZN11MySemaphore14put_in_blockedEP3TCB+0x2c>
    else tail->set_next_blocked(tcb);
    800022f8:	01053783          	ld	a5,16(a0)
    800022fc:	04b7b023          	sd	a1,64(a5)
    tail = tcb;
    80002300:	00b53823          	sd	a1,16(a0)
}
    80002304:	00813403          	ld	s0,8(sp)
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	00008067          	ret
    if(!head)head = tcb;
    80002310:	00b53423          	sd	a1,8(a0)
    80002314:	fedff06f          	j	80002300 <_ZN11MySemaphore14put_in_blockedEP3TCB+0x1c>

0000000080002318 <_ZN11MySemaphore5blockEv>:

void MySemaphore::block() {
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00113423          	sd	ra,8(sp)
    80002320:	00813023          	sd	s0,0(sp)
    80002324:	01010413          	addi	s0,sp,16
    TCB* old = TCB::running;
    put_in_blocked(old);
    80002328:	0000d797          	auipc	a5,0xd
    8000232c:	4b87b783          	ld	a5,1208(a5) # 8000f7e0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002330:	0007b583          	ld	a1,0(a5)
    80002334:	00000097          	auipc	ra,0x0
    80002338:	fb0080e7          	jalr	-80(ra) # 800022e4 <_ZN11MySemaphore14put_in_blockedEP3TCB>
    TCB::yield();
    8000233c:	00003097          	auipc	ra,0x3
    80002340:	c48080e7          	jalr	-952(ra) # 80004f84 <_ZN3TCB5yieldEv>
}
    80002344:	00813083          	ld	ra,8(sp)
    80002348:	00013403          	ld	s0,0(sp)
    8000234c:	01010113          	addi	sp,sp,16
    80002350:	00008067          	ret

0000000080002354 <_ZN11MySemaphore8sem_waitEPS_>:
int MySemaphore::sem_wait(MySemaphore *id) {
    80002354:	fe010113          	addi	sp,sp,-32
    80002358:	00113c23          	sd	ra,24(sp)
    8000235c:	00813823          	sd	s0,16(sp)
    80002360:	00913423          	sd	s1,8(sp)
    80002364:	02010413          	addi	s0,sp,32
    80002368:	00050493          	mv	s1,a0
    int get_val()const{ return val; }
    8000236c:	00052783          	lw	a5,0(a0)
    id->set_val(id->get_val() - 1);
    80002370:	fff7879b          	addiw	a5,a5,-1
    void set_val(int v){ val = v; }
    80002374:	00f52023          	sw	a5,0(a0)
    if( id->get_val() < 0)id->block();
    80002378:	02079713          	slli	a4,a5,0x20
    8000237c:	02074263          	bltz	a4,800023a0 <_ZN11MySemaphore8sem_waitEPS_+0x4c>
    bool get_indicator()const{ return indicator; }
    80002380:	0044c783          	lbu	a5,4(s1)
    if(!id->get_indicator())return 0;
    80002384:	02079463          	bnez	a5,800023ac <_ZN11MySemaphore8sem_waitEPS_+0x58>
    80002388:	00000513          	li	a0,0
}
    8000238c:	01813083          	ld	ra,24(sp)
    80002390:	01013403          	ld	s0,16(sp)
    80002394:	00813483          	ld	s1,8(sp)
    80002398:	02010113          	addi	sp,sp,32
    8000239c:	00008067          	ret
    if( id->get_val() < 0)id->block();
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	f78080e7          	jalr	-136(ra) # 80002318 <_ZN11MySemaphore5blockEv>
    800023a8:	fd9ff06f          	j	80002380 <_ZN11MySemaphore8sem_waitEPS_+0x2c>
    else return -1;
    800023ac:	fff00513          	li	a0,-1
    800023b0:	fddff06f          	j	8000238c <_ZN11MySemaphore8sem_waitEPS_+0x38>

00000000800023b4 <_ZN11MySemaphore7unblockEv>:

void MySemaphore::unblock() {
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00113423          	sd	ra,8(sp)
    800023bc:	00813023          	sd	s0,0(sp)
    800023c0:	01010413          	addi	s0,sp,16
    TCB* tmp = get_from_blocked();
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	e3c080e7          	jalr	-452(ra) # 80002200 <_ZN11MySemaphore16get_from_blockedEv>
    if(tmp)Scheduler::getInstance().put(tmp);
    800023cc:	04050463          	beqz	a0,80002414 <_ZN11MySemaphore7unblockEv+0x60>
    800023d0:	00050593          	mv	a1,a0
    800023d4:	0000d797          	auipc	a5,0xd
    800023d8:	47c7c783          	lbu	a5,1148(a5) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    800023dc:	02079463          	bnez	a5,80002404 <_ZN11MySemaphore7unblockEv+0x50>
        head = nullptr;
    800023e0:	0000d797          	auipc	a5,0xd
    800023e4:	3e07b783          	ld	a5,992(a5) # 8000f7c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800023e8:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    800023ec:	0000d797          	auipc	a5,0xd
    800023f0:	3ac7b783          	ld	a5,940(a5) # 8000f798 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023f4:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    800023f8:	00100793          	li	a5,1
    800023fc:	0000d717          	auipc	a4,0xd
    80002400:	44f70a23          	sb	a5,1108(a4) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80002404:	0000d517          	auipc	a0,0xd
    80002408:	45450513          	addi	a0,a0,1108 # 8000f858 <_ZZN9Scheduler11getInstanceEvE8instance>
    8000240c:	00003097          	auipc	ra,0x3
    80002410:	ef8080e7          	jalr	-264(ra) # 80005304 <_ZN9Scheduler3putEP3TCB>
}
    80002414:	00813083          	ld	ra,8(sp)
    80002418:	00013403          	ld	s0,0(sp)
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret

0000000080002424 <_ZN11MySemaphore10sem_signalEPS_>:
int MySemaphore::sem_signal(MySemaphore *id) {
    80002424:	fe010113          	addi	sp,sp,-32
    80002428:	00113c23          	sd	ra,24(sp)
    8000242c:	00813823          	sd	s0,16(sp)
    80002430:	00913423          	sd	s1,8(sp)
    80002434:	02010413          	addi	s0,sp,32
    80002438:	00050493          	mv	s1,a0
    int get_val()const{ return val; }
    8000243c:	00052783          	lw	a5,0(a0)
    id->set_val(id->get_val() + 1);
    80002440:	0017879b          	addiw	a5,a5,1
    80002444:	0007871b          	sext.w	a4,a5
    void set_val(int v){ val = v; }
    80002448:	00f52023          	sw	a5,0(a0)
    if( id->get_val() <= 0)id->unblock();
    8000244c:	02e05263          	blez	a4,80002470 <_ZN11MySemaphore10sem_signalEPS_+0x4c>
    bool get_indicator()const{ return indicator; }
    80002450:	0044c783          	lbu	a5,4(s1)
    if(!id->get_indicator())return 0;
    80002454:	02079463          	bnez	a5,8000247c <_ZN11MySemaphore10sem_signalEPS_+0x58>
    80002458:	00000513          	li	a0,0
}
    8000245c:	01813083          	ld	ra,24(sp)
    80002460:	01013403          	ld	s0,16(sp)
    80002464:	00813483          	ld	s1,8(sp)
    80002468:	02010113          	addi	sp,sp,32
    8000246c:	00008067          	ret
    if( id->get_val() <= 0)id->unblock();
    80002470:	00000097          	auipc	ra,0x0
    80002474:	f44080e7          	jalr	-188(ra) # 800023b4 <_ZN11MySemaphore7unblockEv>
    80002478:	fd9ff06f          	j	80002450 <_ZN11MySemaphore10sem_signalEPS_+0x2c>
    else return -1;
    8000247c:	fff00513          	li	a0,-1
    80002480:	fddff06f          	j	8000245c <_ZN11MySemaphore10sem_signalEPS_+0x38>

0000000080002484 <_ZN14periodicThread3putEP3TCB>:
#include "../h/TCB.hpp"

TCB* periodicThread::head = nullptr;
TCB* periodicThread::tail = nullptr;

void periodicThread::put(TCB *thread) {
    80002484:	ff010113          	addi	sp,sp,-16
    80002488:	00813423          	sd	s0,8(sp)
    8000248c:	01010413          	addi	s0,sp,16
    if(!head)head = thread;
    80002490:	0000d797          	auipc	a5,0xd
    80002494:	3d07b783          	ld	a5,976(a5) # 8000f860 <_ZN14periodicThread4headE>
    80002498:	02078263          	beqz	a5,800024bc <_ZN14periodicThread3putEP3TCB+0x38>
    else tail->set_next_period(thread); // tail->next_period = thread;
    8000249c:	0000d797          	auipc	a5,0xd
    800024a0:	3cc7b783          	ld	a5,972(a5) # 8000f868 <_ZN14periodicThread4tailE>
    void set_periodic(bool b){
        periodic = b;
        periodicThread::getInstance().put(this);
    }

    void set_next_period(TCB* tcb){ next_period = tcb; }
    800024a4:	06b7b423          	sd	a1,104(a5)
    tail = thread;
    800024a8:	0000d797          	auipc	a5,0xd
    800024ac:	3cb7b023          	sd	a1,960(a5) # 8000f868 <_ZN14periodicThread4tailE>
}
    800024b0:	00813403          	ld	s0,8(sp)
    800024b4:	01010113          	addi	sp,sp,16
    800024b8:	00008067          	ret
    if(!head)head = thread;
    800024bc:	0000d797          	auipc	a5,0xd
    800024c0:	3ab7b223          	sd	a1,932(a5) # 8000f860 <_ZN14periodicThread4headE>
    800024c4:	fe5ff06f          	j	800024a8 <_ZN14periodicThread3putEP3TCB+0x24>

00000000800024c8 <_ZN14periodicThread3getEv>:

TCB *periodicThread::get() {
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00813423          	sd	s0,8(sp)
    800024d0:	01010413          	addi	s0,sp,16
    if(!head)return nullptr;
    800024d4:	0000d517          	auipc	a0,0xd
    800024d8:	38c53503          	ld	a0,908(a0) # 8000f860 <_ZN14periodicThread4headE>
    800024dc:	00050c63          	beqz	a0,800024f4 <_ZN14periodicThread3getEv+0x2c>

    TCB* get_next_period()const{return next_period;}
    800024e0:	06853783          	ld	a5,104(a0)
    TCB* tmp = head;
    head = head->get_next_period(); // head = head->next_period
    800024e4:	0000d717          	auipc	a4,0xd
    800024e8:	36f73e23          	sd	a5,892(a4) # 8000f860 <_ZN14periodicThread4headE>
    void set_next_period(TCB* tcb){ next_period = tcb; }
    800024ec:	06053423          	sd	zero,104(a0)
    tmp->set_next_period(nullptr);
    if(!head)tail = nullptr;
    800024f0:	00078863          	beqz	a5,80002500 <_ZN14periodicThread3getEv+0x38>
    return tmp;
}
    800024f4:	00813403          	ld	s0,8(sp)
    800024f8:	01010113          	addi	sp,sp,16
    800024fc:	00008067          	ret
    if(!head)tail = nullptr;
    80002500:	0000d797          	auipc	a5,0xd
    80002504:	3607b423          	sd	zero,872(a5) # 8000f868 <_ZN14periodicThread4tailE>
    80002508:	fedff06f          	j	800024f4 <_ZN14periodicThread3getEv+0x2c>

000000008000250c <_Z10size_startPKc>:
//
#include "../h/String.h"
#include "../test/printing.hpp"

// does name start with size-, 1 if true, 0 if not
bool size_start(const char *name){
    8000250c:	ff010113          	addi	sp,sp,-16
    80002510:	00813423          	sd	s0,8(sp)
    80002514:	01010413          	addi	s0,sp,16
    // Check if the input string starts with "size-"
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    80002518:	00054703          	lbu	a4,0(a0)
    8000251c:	07300793          	li	a5,115
    80002520:	00f70a63          	beq	a4,a5,80002534 <_Z10size_startPKc+0x28>
        return true;
    }
    return false;
    80002524:	00000513          	li	a0,0
}
    80002528:	00813403          	ld	s0,8(sp)
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    80002534:	00154703          	lbu	a4,1(a0)
    80002538:	06900793          	li	a5,105
    8000253c:	00f70663          	beq	a4,a5,80002548 <_Z10size_startPKc+0x3c>
    return false;
    80002540:	00000513          	li	a0,0
    80002544:	fe5ff06f          	j	80002528 <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    80002548:	00254703          	lbu	a4,2(a0)
    8000254c:	07a00793          	li	a5,122
    80002550:	00f70663          	beq	a4,a5,8000255c <_Z10size_startPKc+0x50>
    return false;
    80002554:	00000513          	li	a0,0
    80002558:	fd1ff06f          	j	80002528 <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    8000255c:	00354703          	lbu	a4,3(a0)
    80002560:	06500793          	li	a5,101
    80002564:	00f70663          	beq	a4,a5,80002570 <_Z10size_startPKc+0x64>
    return false;
    80002568:	00000513          	li	a0,0
    8000256c:	fbdff06f          	j	80002528 <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    80002570:	00454703          	lbu	a4,4(a0)
    80002574:	02d00793          	li	a5,45
    80002578:	00f70663          	beq	a4,a5,80002584 <_Z10size_startPKc+0x78>
    return false;
    8000257c:	00000513          	li	a0,0
    80002580:	fa9ff06f          	j	80002528 <_Z10size_startPKc+0x1c>
        return true;
    80002584:	00100513          	li	a0,1
    80002588:	fa1ff06f          	j	80002528 <_Z10size_startPKc+0x1c>

000000008000258c <_Z14get_int_lengthi>:

int get_int_length(int number) {
    8000258c:	ff010113          	addi	sp,sp,-16
    80002590:	00813423          	sd	s0,8(sp)
    80002594:	01010413          	addi	s0,sp,16
    80002598:	00050793          	mv	a5,a0
    int length = 0;
    8000259c:	00000513          	li	a0,0
    while (number != 0) {
    800025a0:	00078a63          	beqz	a5,800025b4 <_Z14get_int_lengthi+0x28>
        number /= 10;
    800025a4:	00a00713          	li	a4,10
    800025a8:	02e7c7bb          	divw	a5,a5,a4
        length++;
    800025ac:	0015051b          	addiw	a0,a0,1
    while (number != 0) {
    800025b0:	ff1ff06f          	j	800025a0 <_Z14get_int_lengthi+0x14>
    }
    return length;
}
    800025b4:	00813403          	ld	s0,8(sp)
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret

00000000800025c0 <_Z13int_to_stringiPci>:

void int_to_string(int number, char* buffer, int bufferSize) {
    800025c0:	fd010113          	addi	sp,sp,-48
    800025c4:	02113423          	sd	ra,40(sp)
    800025c8:	02813023          	sd	s0,32(sp)
    800025cc:	00913c23          	sd	s1,24(sp)
    800025d0:	01213823          	sd	s2,16(sp)
    800025d4:	01313423          	sd	s3,8(sp)
    800025d8:	03010413          	addi	s0,sp,48
    800025dc:	00050493          	mv	s1,a0
    800025e0:	00058913          	mv	s2,a1
    800025e4:	00060993          	mv	s3,a2
    int length = get_int_length(number);
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	fa4080e7          	jalr	-92(ra) # 8000258c <_Z14get_int_lengthi>

    if (length >= bufferSize) {
    800025f0:	03355a63          	bge	a0,s3,80002624 <_Z13int_to_stringiPci+0x64>
        // Handle buffer overflow
        return;
    }

    for (int i = length - 1; i >= 0; i--) {
    800025f4:	fff5079b          	addiw	a5,a0,-1
    800025f8:	0207c263          	bltz	a5,8000261c <_Z13int_to_stringiPci+0x5c>
        buffer[i] = '0' + (number % 10);
    800025fc:	00a00693          	li	a3,10
    80002600:	02d4e73b          	remw	a4,s1,a3
    80002604:	00f90633          	add	a2,s2,a5
    80002608:	0307071b          	addiw	a4,a4,48
    8000260c:	00e60023          	sb	a4,0(a2)
        number /= 10;
    80002610:	02d4c4bb          	divw	s1,s1,a3
    for (int i = length - 1; i >= 0; i--) {
    80002614:	fff7879b          	addiw	a5,a5,-1
    80002618:	fe1ff06f          	j	800025f8 <_Z13int_to_stringiPci+0x38>
    }
    buffer[length] = '\0';
    8000261c:	00a90933          	add	s2,s2,a0
    80002620:	00090023          	sb	zero,0(s2)
}
    80002624:	02813083          	ld	ra,40(sp)
    80002628:	02013403          	ld	s0,32(sp)
    8000262c:	01813483          	ld	s1,24(sp)
    80002630:	01013903          	ld	s2,16(sp)
    80002634:	00813983          	ld	s3,8(sp)
    80002638:	03010113          	addi	sp,sp,48
    8000263c:	00008067          	ret

0000000080002640 <_Z27concatenate_int_to_char_ptri>:

char* concatenate_int_to_char_ptr(int number) {
    80002640:	fe010113          	addi	sp,sp,-32
    80002644:	00113c23          	sd	ra,24(sp)
    80002648:	00813823          	sd	s0,16(sp)
    8000264c:	00913423          	sd	s1,8(sp)
    80002650:	02010413          	addi	s0,sp,32
    80002654:	00050493          	mv	s1,a0
    char* baseString = (char*)"size-xxxxxx";
    int length = get_int_length(number);
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	f34080e7          	jalr	-204(ra) # 8000258c <_Z14get_int_lengthi>
    for(int i = 5 + length; i >= 5; i--){
    80002660:	0055051b          	addiw	a0,a0,5
    80002664:	00050793          	mv	a5,a0
    80002668:	0180006f          	j	80002680 <_Z27concatenate_int_to_char_ptri+0x40>
        if(i == 5 + length){
            baseString[i] = '\0';
    8000266c:	0000a717          	auipc	a4,0xa
    80002670:	9b470713          	addi	a4,a4,-1612 # 8000c020 <CONSOLE_STATUS+0x10>
    80002674:	00e78733          	add	a4,a5,a4
    80002678:	00070023          	sb	zero,0(a4)
    for(int i = 5 + length; i >= 5; i--){
    8000267c:	fff7879b          	addiw	a5,a5,-1
    80002680:	00400713          	li	a4,4
    80002684:	02f75863          	bge	a4,a5,800026b4 <_Z27concatenate_int_to_char_ptri+0x74>
        if(i == 5 + length){
    80002688:	fea782e3          	beq	a5,a0,8000266c <_Z27concatenate_int_to_char_ptri+0x2c>
        }else{
            int mod = number % 10;
    8000268c:	00a00693          	li	a3,10
    80002690:	02d4e73b          	remw	a4,s1,a3
            number /= 10;
    80002694:	02d4c4bb          	divw	s1,s1,a3
            char num_char = '0' + mod;
    80002698:	0ff77713          	andi	a4,a4,255
    8000269c:	0307071b          	addiw	a4,a4,48
            baseString[i] = num_char;
    800026a0:	0000a697          	auipc	a3,0xa
    800026a4:	98068693          	addi	a3,a3,-1664 # 8000c020 <CONSOLE_STATUS+0x10>
    800026a8:	00d786b3          	add	a3,a5,a3
    800026ac:	00e68023          	sb	a4,0(a3)
    800026b0:	fcdff06f          	j	8000267c <_Z27concatenate_int_to_char_ptri+0x3c>
        }
    }
    return baseString;

}
    800026b4:	0000a517          	auipc	a0,0xa
    800026b8:	96c50513          	addi	a0,a0,-1684 # 8000c020 <CONSOLE_STATUS+0x10>
    800026bc:	01813083          	ld	ra,24(sp)
    800026c0:	01013403          	ld	s0,16(sp)
    800026c4:	00813483          	ld	s1,8(sp)
    800026c8:	02010113          	addi	sp,sp,32
    800026cc:	00008067          	ret

00000000800026d0 <_Z14string_comparePKcS0_>:

bool string_compare(const char* str1, const char* str2) {
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00813423          	sd	s0,8(sp)
    800026d8:	01010413          	addi	s0,sp,16
    800026dc:	00c0006f          	j	800026e8 <_Z14string_comparePKcS0_+0x18>
    while (*str1 != '\0' && *str2 != '\0') {
        if (*str1 != *str2) {
            return false;
        }
        str1++;
    800026e0:	00150513          	addi	a0,a0,1
        str2++;
    800026e4:	00158593          	addi	a1,a1,1
    while (*str1 != '\0' && *str2 != '\0') {
    800026e8:	00054783          	lbu	a5,0(a0)
    800026ec:	00078c63          	beqz	a5,80002704 <_Z14string_comparePKcS0_+0x34>
    800026f0:	0005c703          	lbu	a4,0(a1)
    800026f4:	00070863          	beqz	a4,80002704 <_Z14string_comparePKcS0_+0x34>
        if (*str1 != *str2) {
    800026f8:	fee784e3          	beq	a5,a4,800026e0 <_Z14string_comparePKcS0_+0x10>
            return false;
    800026fc:	00000513          	li	a0,0
    80002700:	01c0006f          	j	8000271c <_Z14string_comparePKcS0_+0x4c>
    }

    // Check if both strings have reached the end simultaneously
    return (*str1 == '\0' && *str2 == '\0');
    80002704:	00079a63          	bnez	a5,80002718 <_Z14string_comparePKcS0_+0x48>
    80002708:	0005c783          	lbu	a5,0(a1)
    8000270c:	00078e63          	beqz	a5,80002728 <_Z14string_comparePKcS0_+0x58>
    80002710:	00000513          	li	a0,0
    80002714:	0080006f          	j	8000271c <_Z14string_comparePKcS0_+0x4c>
    80002718:	00000513          	li	a0,0
    8000271c:	00813403          	ld	s0,8(sp)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret
    return (*str1 == '\0' && *str2 == '\0');
    80002728:	00100513          	li	a0,1
    8000272c:	ff1ff06f          	j	8000271c <_Z14string_comparePKcS0_+0x4c>

0000000080002730 <_Z13idle_functionPv>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../test/userMain.hpp"
#include "../h/SlabI.h"

void idle_function(void* arg){
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00113423          	sd	ra,8(sp)
    80002738:	00813023          	sd	s0,0(sp)
    8000273c:	01010413          	addi	s0,sp,16
    while(1){
        thread_dispatch();
    80002740:	fffff097          	auipc	ra,0xfffff
    80002744:	c60080e7          	jalr	-928(ra) # 800013a0 <thread_dispatch>
    while(1){
    80002748:	ff9ff06f          	j	80002740 <_Z13idle_functionPv+0x10>

000000008000274c <_Z13putc_functionPv>:
    }
}

void putc_function(void* arg){
    8000274c:	fe010113          	addi	sp,sp,-32
    80002750:	00113c23          	sd	ra,24(sp)
    80002754:	00813823          	sd	s0,16(sp)
    80002758:	00913423          	sd	s1,8(sp)
    8000275c:	02010413          	addi	s0,sp,32
    switch_to_priviledged();
    80002760:	fffff097          	auipc	ra,0xfffff
    80002764:	fd8080e7          	jalr	-40(ra) # 80001738 <switch_to_priviledged>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002768:	00200793          	li	a5,2
    8000276c:	1007b073          	csrc	sstatus,a5
}
    80002770:	0400006f          	j	800027b0 <_Z13putc_functionPv+0x64>

class Console{
public:

    static Console& getInstance(){
        static Console instance;
    80002774:	0000d517          	auipc	a0,0xd
    80002778:	10c50513          	addi	a0,a0,268 # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	320080e7          	jalr	800(ra) # 80002a9c <_ZN7ConsoleC1Ev>
    80002784:	00100793          	li	a5,1
    80002788:	0000d717          	auipc	a4,0xd
    8000278c:	0ef70823          	sb	a5,240(a4) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(1){
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
              /*&& Console::getInstance().get_output_size()*/) {
            *((char*)CONSOLE_TX_DATA) = Console::getInstance().get_from_output();
    80002790:	0000d797          	auipc	a5,0xd
    80002794:	0387b783          	ld	a5,56(a5) # 8000f7c8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002798:	0007b483          	ld	s1,0(a5)
    8000279c:	0000d517          	auipc	a0,0xd
    800027a0:	0e450513          	addi	a0,a0,228 # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	55c080e7          	jalr	1372(ra) # 80002d00 <_ZN7Console15get_from_outputEv>
    800027ac:	00a48023          	sb	a0,0(s1)
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
    800027b0:	0000d797          	auipc	a5,0xd
    800027b4:	fe07b783          	ld	a5,-32(a5) # 8000f790 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027b8:	0007b783          	ld	a5,0(a5)
    800027bc:	0007c783          	lbu	a5,0(a5)
    800027c0:	0207f793          	andi	a5,a5,32
    800027c4:	00078a63          	beqz	a5,800027d8 <_Z13putc_functionPv+0x8c>
    800027c8:	0000d797          	auipc	a5,0xd
    800027cc:	0b07c783          	lbu	a5,176(a5) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    800027d0:	fc0790e3          	bnez	a5,80002790 <_Z13putc_functionPv+0x44>
    800027d4:	fa1ff06f          	j	80002774 <_Z13putc_functionPv+0x28>
        }
        thread_dispatch();
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	bc8080e7          	jalr	-1080(ra) # 800013a0 <thread_dispatch>
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
    800027e0:	fd1ff06f          	j	800027b0 <_Z13putc_functionPv+0x64>

00000000800027e4 <_Z17user_main_wrapperPv>:
    }
}

static bool is_user_main_finished = false;
void user_main_wrapper(void* arg){
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00113423          	sd	ra,8(sp)
    800027ec:	00813023          	sd	s0,0(sp)
    800027f0:	01010413          	addi	s0,sp,16
    switch_to_user();
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	ef4080e7          	jalr	-268(ra) # 800016e8 <switch_to_user>
    userMain();
    800027fc:	00006097          	auipc	ra,0x6
    80002800:	1c8080e7          	jalr	456(ra) # 800089c4 <_Z8userMainv>
    switch_to_priviledged();
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	f34080e7          	jalr	-204(ra) # 80001738 <switch_to_priviledged>
    is_user_main_finished = true;
    8000280c:	00100793          	li	a5,1
    80002810:	0000d717          	auipc	a4,0xd
    80002814:	06f70023          	sb	a5,96(a4) # 8000f870 <_ZL21is_user_main_finished>
}
    80002818:	00813083          	ld	ra,8(sp)
    8000281c:	00013403          	ld	s0,0(sp)
    80002820:	01010113          	addi	sp,sp,16
    80002824:	00008067          	ret

0000000080002828 <_Z12memory_setupv>:

void memory_setup(){
    80002828:	ff010113          	addi	sp,sp,-16
    8000282c:	00113423          	sd	ra,8(sp)
    80002830:	00813023          	sd	s0,0(sp)
    80002834:	01010413          	addi	s0,sp,16
    void * space = (void*)HEAP_START_ADDR;
    80002838:	0000d797          	auipc	a5,0xd
    8000283c:	f687b783          	ld	a5,-152(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002840:	0007b503          	ld	a0,0(a5)
    int block_num = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 / BLOCK_SIZE;
    80002844:	0000d797          	auipc	a5,0xd
    80002848:	fa47b783          	ld	a5,-92(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000284c:	0007b583          	ld	a1,0(a5)
    80002850:	40a585b3          	sub	a1,a1,a0
    80002854:	00f5d593          	srli	a1,a1,0xf
    kmem_init(space, block_num);
    80002858:	0005859b          	sext.w	a1,a1
    8000285c:	00003097          	auipc	ra,0x3
    80002860:	ee4080e7          	jalr	-284(ra) # 80005740 <_Z9kmem_initPvi>
//    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_start());
//    printString("\n");
//    printString("Memory allocator heap end: ");
//    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_end());
//    printString("\n\n");
}
    80002864:	00813083          	ld	ra,8(sp)
    80002868:	00013403          	ld	s0,0(sp)
    8000286c:	01010113          	addi	sp,sp,16
    80002870:	00008067          	ret

0000000080002874 <main>:
#include "../test/userMain.hpp"
#include "../h/fun.hpp"



int main(){
    80002874:	fc010113          	addi	sp,sp,-64
    80002878:	02113c23          	sd	ra,56(sp)
    8000287c:	02813823          	sd	s0,48(sp)
    80002880:	02913423          	sd	s1,40(sp)
    80002884:	04010413          	addi	s0,sp,64

    // ###################################################################################################
    // upis u stvec
    uint64 address = reinterpret_cast<uint64>(&Riscv::supervisorTrap);
    80002888:	0000d797          	auipc	a5,0xd
    8000288c:	f287b783          	ld	a5,-216(a5) # 8000f7b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002890:	10579073          	csrw	stvec,a5
    Riscv::w_stvec(address);

    // kreiranje main niti
    thread_t mainThread = nullptr;
    80002894:	fc043c23          	sd	zero,-40(s0)
    thread_create(&mainThread, nullptr, nullptr);
    80002898:	00000613          	li	a2,0
    8000289c:	00000593          	li	a1,0
    800028a0:	fd840513          	addi	a0,s0,-40
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	a58080e7          	jalr	-1448(ra) # 800012fc <thread_create>
    TCB::running = (TCB*)mainThread;
    800028ac:	0000d797          	auipc	a5,0xd
    800028b0:	f347b783          	ld	a5,-204(a5) # 8000f7e0 <_GLOBAL_OFFSET_TABLE_+0x60>
    800028b4:	fd843703          	ld	a4,-40(s0)
    800028b8:	00e7b023          	sd	a4,0(a5)

    // kreiranje idle niti
    thread_create((thread_t*)&TCB::idle, &idle_function, nullptr);
    800028bc:	00000613          	li	a2,0
    800028c0:	00000597          	auipc	a1,0x0
    800028c4:	e7058593          	addi	a1,a1,-400 # 80002730 <_Z13idle_functionPv>
    800028c8:	0000d517          	auipc	a0,0xd
    800028cc:	ef053503          	ld	a0,-272(a0) # 8000f7b8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800028d0:	fffff097          	auipc	ra,0xfffff
    800028d4:	a2c080e7          	jalr	-1492(ra) # 800012fc <thread_create>

    // kreiranje userMain niti
//    thread_t userMainThread = nullptr;
//    thread_create(&userMainThread, &userMain, nullptr);

    thread_t userMainThread = nullptr;
    800028d8:	fc043823          	sd	zero,-48(s0)
    thread_create(&userMainThread, &user_main_wrapper, nullptr);
    800028dc:	00000613          	li	a2,0
    800028e0:	00000597          	auipc	a1,0x0
    800028e4:	f0458593          	addi	a1,a1,-252 # 800027e4 <_Z17user_main_wrapperPv>
    800028e8:	fd040513          	addi	a0,s0,-48
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	a10080e7          	jalr	-1520(ra) # 800012fc <thread_create>

    // kreiranje niti za ispis
    thread_t consoleWriter = nullptr;
    800028f4:	fc043423          	sd	zero,-56(s0)
    thread_create(&consoleWriter, &putc_function, nullptr);
    800028f8:	00000613          	li	a2,0
    800028fc:	00000597          	auipc	a1,0x0
    80002900:	e5058593          	addi	a1,a1,-432 # 8000274c <_Z13putc_functionPv>
    80002904:	fc840513          	addi	a0,s0,-56
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	9f4080e7          	jalr	-1548(ra) # 800012fc <thread_create>
    80002910:	0000d797          	auipc	a5,0xd
    80002914:	f687c783          	lbu	a5,-152(a5) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    80002918:	00078c63          	beqz	a5,80002930 <main+0xbc>
    Console::getInstance();
    memory_setup();
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	f0c080e7          	jalr	-244(ra) # 80002828 <_Z12memory_setupv>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002924:	00200793          	li	a5,2
    80002928:	1007a073          	csrs	sstatus,a5
}
    8000292c:	05c0006f          	j	80002988 <main+0x114>
    80002930:	0000d517          	auipc	a0,0xd
    80002934:	f5050513          	addi	a0,a0,-176 # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	164080e7          	jalr	356(ra) # 80002a9c <_ZN7ConsoleC1Ev>
    80002940:	00100793          	li	a5,1
    80002944:	0000d717          	auipc	a4,0xd
    80002948:	f2f70a23          	sb	a5,-204(a4) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    8000294c:	fd1ff06f          	j	8000291c <main+0xa8>
    80002950:	0000d517          	auipc	a0,0xd
    80002954:	f3050513          	addi	a0,a0,-208 # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	144080e7          	jalr	324(ra) # 80002a9c <_ZN7ConsoleC1Ev>
    80002960:	00100793          	li	a5,1
    80002964:	0000d717          	auipc	a4,0xd
    80002968:	f0f70a23          	sb	a5,-236(a4) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>

    void put_in_input(char c);
    char get_from_input();
    void put_in_output(char c);
    char get_from_output();
    int get_output_size(){ return output_buffer->getCnt(); }
    8000296c:	0000d517          	auipc	a0,0xd
    80002970:	f1c53503          	ld	a0,-228(a0) # 8000f888 <_ZZN7Console11getInstanceEvE8instance+0x8>
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	1f4080e7          	jalr	500(ra) # 80001b68 <_ZN8MyBuffer6getCntEv>
    // ako sam obrisao userMain pristupam nepostojecoj strukturi
//    while(!((TCB*)userMainThread)->is_finished()){
//        thread_dispatch();
//    }

    while(!is_user_main_finished || Console::getInstance().get_output_size()){
    8000297c:	02050463          	beqz	a0,800029a4 <main+0x130>
        thread_dispatch();
    80002980:	fffff097          	auipc	ra,0xfffff
    80002984:	a20080e7          	jalr	-1504(ra) # 800013a0 <thread_dispatch>
    while(!is_user_main_finished || Console::getInstance().get_output_size()){
    80002988:	0000d797          	auipc	a5,0xd
    8000298c:	ee87c783          	lbu	a5,-280(a5) # 8000f870 <_ZL21is_user_main_finished>
    80002990:	fe0788e3          	beqz	a5,80002980 <main+0x10c>
        static Console instance;
    80002994:	0000d797          	auipc	a5,0xd
    80002998:	ee47c783          	lbu	a5,-284(a5) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    8000299c:	fc0798e3          	bnez	a5,8000296c <main+0xf8>
    800029a0:	fb1ff06f          	j	80002950 <main+0xdc>
    800029a4:	0000d797          	auipc	a5,0xd
    800029a8:	ed47c783          	lbu	a5,-300(a5) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    800029ac:	04078a63          	beqz	a5,80002a00 <main+0x18c>
    int get_input_size(){ return input_buffer->getCnt(); }

    MyBuffer* get_input_buff(){return input_buffer;}
    800029b0:	0000d497          	auipc	s1,0xd
    800029b4:	ed04b483          	ld	s1,-304(s1) # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    }


    delete Console::getInstance().get_input_buff();
    800029b8:	02048863          	beqz	s1,800029e8 <main+0x174>
    800029bc:	00048513          	mv	a0,s1
    800029c0:	fffff097          	auipc	ra,0xfffff
    800029c4:	f94080e7          	jalr	-108(ra) # 80001954 <_ZN8MyBufferD1Ev>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    800029c8:	0000d797          	auipc	a5,0xd
    800029cc:	e687c783          	lbu	a5,-408(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800029d0:	04078863          	beqz	a5,80002a20 <main+0x1ac>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    800029d4:	00048593          	mv	a1,s1
    800029d8:	0000d517          	auipc	a0,0xd
    800029dc:	e6050513          	addi	a0,a0,-416 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800029e0:	00003097          	auipc	ra,0x3
    800029e4:	a58080e7          	jalr	-1448(ra) # 80005438 <_ZN15MemoryAllocator11memory_freeEPv>
    return 0;
    800029e8:	00000513          	li	a0,0
    800029ec:	03813083          	ld	ra,56(sp)
    800029f0:	03013403          	ld	s0,48(sp)
    800029f4:	02813483          	ld	s1,40(sp)
    800029f8:	04010113          	addi	sp,sp,64
    800029fc:	00008067          	ret
        static Console instance;
    80002a00:	0000d517          	auipc	a0,0xd
    80002a04:	e8050513          	addi	a0,a0,-384 # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	094080e7          	jalr	148(ra) # 80002a9c <_ZN7ConsoleC1Ev>
    80002a10:	00100793          	li	a5,1
    80002a14:	0000d717          	auipc	a4,0xd
    80002a18:	e6f70223          	sb	a5,-412(a4) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    80002a1c:	f95ff06f          	j	800029b0 <main+0x13c>

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    80002a20:	0000d617          	auipc	a2,0xd
    80002a24:	e1860613          	addi	a2,a2,-488 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80002a28:	0000d797          	auipc	a5,0xd
    80002a2c:	dc07b783          	ld	a5,-576(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a30:	0007b703          	ld	a4,0(a5)
    80002a34:	0000d797          	auipc	a5,0xd
    80002a38:	d6c7b783          	ld	a5,-660(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002a3c:	0007b783          	ld	a5,0(a5)
    80002a40:	40f706b3          	sub	a3,a4,a5
    80002a44:	0036d693          	srli	a3,a3,0x3
    80002a48:	00d787b3          	add	a5,a5,a3
    80002a4c:	00178793          	addi	a5,a5,1
    80002a50:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002a54:	fff70713          	addi	a4,a4,-1
    80002a58:	00e63823          	sd	a4,16(a2)

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002a5c:	03f7f693          	andi	a3,a5,63
    80002a60:	00068663          	beqz	a3,80002a6c <main+0x1f8>
    80002a64:	04000613          	li	a2,64
    80002a68:	40d606b3          	sub	a3,a2,a3
    80002a6c:	00d787b3          	add	a5,a5,a3
    80002a70:	0000d697          	auipc	a3,0xd
    80002a74:	dcf6b423          	sd	a5,-568(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80002a78:	40f70733          	sub	a4,a4,a5
    80002a7c:	00675713          	srli	a4,a4,0x6

        // napravi node

        fmem_head->next = nullptr;
    80002a80:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002a84:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002a88:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002a8c:	00100793          	li	a5,1
    80002a90:	0000d717          	auipc	a4,0xd
    80002a94:	daf70023          	sb	a5,-608(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002a98:	f3dff06f          	j	800029d4 <main+0x160>

0000000080002a9c <_ZN7ConsoleC1Ev>:

#include "../h/console.hpp"

Console::Console() {
    80002a9c:	fe010113          	addi	sp,sp,-32
    80002aa0:	00113c23          	sd	ra,24(sp)
    80002aa4:	00813823          	sd	s0,16(sp)
    80002aa8:	00913423          	sd	s1,8(sp)
    80002aac:	01213023          	sd	s2,0(sp)
    80002ab0:	02010413          	addi	s0,sp,32
    80002ab4:	00050913          	mv	s2,a0
    80002ab8:	0000d797          	auipc	a5,0xd
    80002abc:	d787c783          	lbu	a5,-648(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002ac0:	02078863          	beqz	a5,80002af0 <_ZN7ConsoleC1Ev+0x54>
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    80002ac4:	00100593          	li	a1,1
    80002ac8:	0000d517          	auipc	a0,0xd
    80002acc:	d7050513          	addi	a0,a0,-656 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002ad0:	00003097          	auipc	ra,0x3
    80002ad4:	894080e7          	jalr	-1900(ra) # 80005364 <_ZN15MemoryAllocator12memory_allocEm>
    80002ad8:	00050493          	mv	s1,a0
    input_buffer = new MyBuffer(1024);
    80002adc:	08050863          	beqz	a0,80002b6c <_ZN7ConsoleC1Ev+0xd0>
    80002ae0:	40000593          	li	a1,1024
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	d44080e7          	jalr	-700(ra) # 80001828 <_ZN8MyBufferC1Ei>
    80002aec:	0800006f          	j	80002b6c <_ZN7ConsoleC1Ev+0xd0>
    MemoryAllocator(){
    80002af0:	0000d617          	auipc	a2,0xd
    80002af4:	d4860613          	addi	a2,a2,-696 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80002af8:	0000d797          	auipc	a5,0xd
    80002afc:	cf07b783          	ld	a5,-784(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b00:	0007b703          	ld	a4,0(a5)
    80002b04:	0000d797          	auipc	a5,0xd
    80002b08:	c9c7b783          	ld	a5,-868(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002b0c:	0007b783          	ld	a5,0(a5)
    80002b10:	40f706b3          	sub	a3,a4,a5
    80002b14:	0036d693          	srli	a3,a3,0x3
    80002b18:	00d787b3          	add	a5,a5,a3
    80002b1c:	00178793          	addi	a5,a5,1
    80002b20:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002b24:	fff70713          	addi	a4,a4,-1
    80002b28:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002b2c:	03f7f693          	andi	a3,a5,63
    80002b30:	00068663          	beqz	a3,80002b3c <_ZN7ConsoleC1Ev+0xa0>
    80002b34:	04000613          	li	a2,64
    80002b38:	40d606b3          	sub	a3,a2,a3
    80002b3c:	00d787b3          	add	a5,a5,a3
    80002b40:	0000d697          	auipc	a3,0xd
    80002b44:	cef6bc23          	sd	a5,-776(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80002b48:	40f70733          	sub	a4,a4,a5
    80002b4c:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80002b50:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002b54:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002b58:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002b5c:	00100793          	li	a5,1
    80002b60:	0000d717          	auipc	a4,0xd
    80002b64:	ccf70823          	sb	a5,-816(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002b68:	f5dff06f          	j	80002ac4 <_ZN7ConsoleC1Ev+0x28>
    80002b6c:	00993023          	sd	s1,0(s2)
    80002b70:	0000d797          	auipc	a5,0xd
    80002b74:	cc07c783          	lbu	a5,-832(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002b78:	02078863          	beqz	a5,80002ba8 <_ZN7ConsoleC1Ev+0x10c>
    80002b7c:	00100593          	li	a1,1
    80002b80:	0000d517          	auipc	a0,0xd
    80002b84:	cb850513          	addi	a0,a0,-840 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002b88:	00002097          	auipc	ra,0x2
    80002b8c:	7dc080e7          	jalr	2012(ra) # 80005364 <_ZN15MemoryAllocator12memory_allocEm>
    80002b90:	00050493          	mv	s1,a0
    output_buffer = new MyBuffer(1024);
    80002b94:	08050863          	beqz	a0,80002c24 <_ZN7ConsoleC1Ev+0x188>
    80002b98:	40000593          	li	a1,1024
    80002b9c:	fffff097          	auipc	ra,0xfffff
    80002ba0:	c8c080e7          	jalr	-884(ra) # 80001828 <_ZN8MyBufferC1Ei>
    80002ba4:	0800006f          	j	80002c24 <_ZN7ConsoleC1Ev+0x188>
    MemoryAllocator(){
    80002ba8:	0000d617          	auipc	a2,0xd
    80002bac:	c9060613          	addi	a2,a2,-880 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80002bb0:	0000d797          	auipc	a5,0xd
    80002bb4:	c387b783          	ld	a5,-968(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002bb8:	0007b703          	ld	a4,0(a5)
    80002bbc:	0000d797          	auipc	a5,0xd
    80002bc0:	be47b783          	ld	a5,-1052(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002bc4:	0007b783          	ld	a5,0(a5)
    80002bc8:	40f706b3          	sub	a3,a4,a5
    80002bcc:	0036d693          	srli	a3,a3,0x3
    80002bd0:	00d787b3          	add	a5,a5,a3
    80002bd4:	00178793          	addi	a5,a5,1
    80002bd8:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002bdc:	fff70713          	addi	a4,a4,-1
    80002be0:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002be4:	03f7f693          	andi	a3,a5,63
    80002be8:	00068663          	beqz	a3,80002bf4 <_ZN7ConsoleC1Ev+0x158>
    80002bec:	04000613          	li	a2,64
    80002bf0:	40d606b3          	sub	a3,a2,a3
    80002bf4:	00d787b3          	add	a5,a5,a3
    80002bf8:	0000d697          	auipc	a3,0xd
    80002bfc:	c4f6b023          	sd	a5,-960(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80002c00:	40f70733          	sub	a4,a4,a5
    80002c04:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80002c08:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002c0c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002c10:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002c14:	00100793          	li	a5,1
    80002c18:	0000d717          	auipc	a4,0xd
    80002c1c:	c0f70c23          	sb	a5,-1000(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002c20:	f5dff06f          	j	80002b7c <_ZN7ConsoleC1Ev+0xe0>
    80002c24:	00993423          	sd	s1,8(s2)
}
    80002c28:	01813083          	ld	ra,24(sp)
    80002c2c:	01013403          	ld	s0,16(sp)
    80002c30:	00813483          	ld	s1,8(sp)
    80002c34:	00013903          	ld	s2,0(sp)
    80002c38:	02010113          	addi	sp,sp,32
    80002c3c:	00008067          	ret
    80002c40:	00050913          	mv	s2,a0
    input_buffer = new MyBuffer(1024);
    80002c44:	00048513          	mv	a0,s1
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	0e8080e7          	jalr	232(ra) # 80002d30 <_ZN8MyBufferdlEPv>
    80002c50:	00090513          	mv	a0,s2
    80002c54:	000d1097          	auipc	ra,0xd1
    80002c58:	404080e7          	jalr	1028(ra) # 800d4058 <_Unwind_Resume>
    80002c5c:	00050913          	mv	s2,a0
    output_buffer = new MyBuffer(1024);
    80002c60:	00048513          	mv	a0,s1
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	0cc080e7          	jalr	204(ra) # 80002d30 <_ZN8MyBufferdlEPv>
    80002c6c:	00090513          	mv	a0,s2
    80002c70:	000d1097          	auipc	ra,0xd1
    80002c74:	3e8080e7          	jalr	1000(ra) # 800d4058 <_Unwind_Resume>

0000000080002c78 <_ZN7Console12put_in_inputEc>:

void Console::put_in_input(char c){
    80002c78:	ff010113          	addi	sp,sp,-16
    80002c7c:	00113423          	sd	ra,8(sp)
    80002c80:	00813023          	sd	s0,0(sp)
    80002c84:	01010413          	addi	s0,sp,16
    input_buffer->put(c);
    80002c88:	00053503          	ld	a0,0(a0)
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	dc0080e7          	jalr	-576(ra) # 80001a4c <_ZN8MyBuffer3putEi>
}
    80002c94:	00813083          	ld	ra,8(sp)
    80002c98:	00013403          	ld	s0,0(sp)
    80002c9c:	01010113          	addi	sp,sp,16
    80002ca0:	00008067          	ret

0000000080002ca4 <_ZN7Console14get_from_inputEv>:

char Console::get_from_input(){
    80002ca4:	ff010113          	addi	sp,sp,-16
    80002ca8:	00113423          	sd	ra,8(sp)
    80002cac:	00813023          	sd	s0,0(sp)
    80002cb0:	01010413          	addi	s0,sp,16
    return (char)input_buffer->get();
    80002cb4:	00053503          	ld	a0,0(a0)
    80002cb8:	fffff097          	auipc	ra,0xfffff
    80002cbc:	e24080e7          	jalr	-476(ra) # 80001adc <_ZN8MyBuffer3getEv>
}
    80002cc0:	0ff57513          	andi	a0,a0,255
    80002cc4:	00813083          	ld	ra,8(sp)
    80002cc8:	00013403          	ld	s0,0(sp)
    80002ccc:	01010113          	addi	sp,sp,16
    80002cd0:	00008067          	ret

0000000080002cd4 <_ZN7Console13put_in_outputEc>:

void Console::put_in_output(char c){
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00113423          	sd	ra,8(sp)
    80002cdc:	00813023          	sd	s0,0(sp)
    80002ce0:	01010413          	addi	s0,sp,16
    output_buffer->put(c);
    80002ce4:	00853503          	ld	a0,8(a0)
    80002ce8:	fffff097          	auipc	ra,0xfffff
    80002cec:	d64080e7          	jalr	-668(ra) # 80001a4c <_ZN8MyBuffer3putEi>
}
    80002cf0:	00813083          	ld	ra,8(sp)
    80002cf4:	00013403          	ld	s0,0(sp)
    80002cf8:	01010113          	addi	sp,sp,16
    80002cfc:	00008067          	ret

0000000080002d00 <_ZN7Console15get_from_outputEv>:
char Console::get_from_output(){
    80002d00:	ff010113          	addi	sp,sp,-16
    80002d04:	00113423          	sd	ra,8(sp)
    80002d08:	00813023          	sd	s0,0(sp)
    80002d0c:	01010413          	addi	s0,sp,16
    return (char)output_buffer->get();
    80002d10:	00853503          	ld	a0,8(a0)
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	dc8080e7          	jalr	-568(ra) # 80001adc <_ZN8MyBuffer3getEv>
    80002d1c:	0ff57513          	andi	a0,a0,255
    80002d20:	00813083          	ld	ra,8(sp)
    80002d24:	00013403          	ld	s0,0(sp)
    80002d28:	01010113          	addi	sp,sp,16
    80002d2c:	00008067          	ret

0000000080002d30 <_ZN8MyBufferdlEPv>:
    void operator delete(void* p)noexcept{
    80002d30:	ff010113          	addi	sp,sp,-16
    80002d34:	00113423          	sd	ra,8(sp)
    80002d38:	00813023          	sd	s0,0(sp)
    80002d3c:	01010413          	addi	s0,sp,16
    80002d40:	00050593          	mv	a1,a0
    80002d44:	0000d797          	auipc	a5,0xd
    80002d48:	aec7c783          	lbu	a5,-1300(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002d4c:	02078263          	beqz	a5,80002d70 <_ZN8MyBufferdlEPv+0x40>
        MemoryAllocator::getInstance().memory_free(p);
    80002d50:	0000d517          	auipc	a0,0xd
    80002d54:	ae850513          	addi	a0,a0,-1304 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002d58:	00002097          	auipc	ra,0x2
    80002d5c:	6e0080e7          	jalr	1760(ra) # 80005438 <_ZN15MemoryAllocator11memory_freeEPv>
    }
    80002d60:	00813083          	ld	ra,8(sp)
    80002d64:	00013403          	ld	s0,0(sp)
    80002d68:	01010113          	addi	sp,sp,16
    80002d6c:	00008067          	ret
    MemoryAllocator(){
    80002d70:	0000d617          	auipc	a2,0xd
    80002d74:	ac860613          	addi	a2,a2,-1336 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80002d78:	0000d797          	auipc	a5,0xd
    80002d7c:	a707b783          	ld	a5,-1424(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d80:	0007b703          	ld	a4,0(a5)
    80002d84:	0000d797          	auipc	a5,0xd
    80002d88:	a1c7b783          	ld	a5,-1508(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d8c:	0007b783          	ld	a5,0(a5)
    80002d90:	40f706b3          	sub	a3,a4,a5
    80002d94:	0036d693          	srli	a3,a3,0x3
    80002d98:	00d787b3          	add	a5,a5,a3
    80002d9c:	00178793          	addi	a5,a5,1
    80002da0:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002da4:	fff70713          	addi	a4,a4,-1
    80002da8:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002dac:	03f7f693          	andi	a3,a5,63
    80002db0:	00068663          	beqz	a3,80002dbc <_ZN8MyBufferdlEPv+0x8c>
    80002db4:	04000613          	li	a2,64
    80002db8:	40d606b3          	sub	a3,a2,a3
    80002dbc:	00d787b3          	add	a5,a5,a3
    80002dc0:	0000d697          	auipc	a3,0xd
    80002dc4:	a6f6bc23          	sd	a5,-1416(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80002dc8:	40f70733          	sub	a4,a4,a5
    80002dcc:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80002dd0:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002dd4:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002dd8:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002ddc:	00100793          	li	a5,1
    80002de0:	0000d717          	auipc	a4,0xd
    80002de4:	a4f70823          	sb	a5,-1456(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002de8:	f69ff06f          	j	80002d50 <_ZN8MyBufferdlEPv+0x20>

0000000080002dec <_ZN12kmem_cache_s16create_free_slabEv>:
        this->growing = true;
        return nullptr;
    }
}

void kmem_cache_s::create_free_slab() {
    80002dec:	fd010113          	addi	sp,sp,-48
    80002df0:	02113423          	sd	ra,40(sp)
    80002df4:	02813023          	sd	s0,32(sp)
    80002df8:	00913c23          	sd	s1,24(sp)
    80002dfc:	01213823          	sd	s2,16(sp)
    80002e00:	01313423          	sd	s3,8(sp)
    80002e04:	01413023          	sd	s4,0(sp)
    80002e08:	03010413          	addi	s0,sp,48
    80002e0c:	00050493          	mv	s1,a0

    void* buddyAlloc(size_t size);
    void buddyFree(size_t addr);

    static BuddySystem& getInstance(void *space = nullptr, int block_num = 0){
        static BuddySystem bs;
    80002e10:	0000d797          	auipc	a5,0xd
    80002e14:	a887c783          	lbu	a5,-1400(a5) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002e18:	06078863          	beqz	a5,80002e88 <_ZN12kmem_cache_s16create_free_slabEv+0x9c>
    Slab* tmp = (Slab*)(BuddySystem::getInstance().buddyAlloc(this->num * this->objsize + sizeof(Slab) + this->num * sizeof(bool)));
    80002e1c:	0304b583          	ld	a1,48(s1)
    80002e20:	0384b783          	ld	a5,56(s1)
    80002e24:	00158593          	addi	a1,a1,1
    80002e28:	02f585b3          	mul	a1,a1,a5
    80002e2c:	01858593          	addi	a1,a1,24
    80002e30:	0000d517          	auipc	a0,0xd
    80002e34:	a7050513          	addi	a0,a0,-1424 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002e38:	fffff097          	auipc	ra,0xfffff
    80002e3c:	f28080e7          	jalr	-216(ra) # 80001d60 <_ZN11BuddySystem10buddyAllocEm>
    80002e40:	00050a13          	mv	s4,a0
    tmp->num_active = 0;
    80002e44:	00053023          	sd	zero,0(a0)
    tmp->next = nullptr;
    80002e48:	00053423          	sd	zero,8(a0)
    this->slabs_free = tmp;
    80002e4c:	00a4b823          	sd	a0,16(s1)
    tmp->first_addr = ((size_t)tmp + sizeof(Slab) + this->size_of_arr * sizeof(size_t));
    80002e50:	0404b903          	ld	s2,64(s1)
    80002e54:	00391913          	slli	s2,s2,0x3
    80002e58:	01250933          	add	s2,a0,s2
    80002e5c:	01890913          	addi	s2,s2,24
    80002e60:	01253823          	sd	s2,16(a0)

    for(size_t  i = 0; i < this->size_of_arr; i++){
    80002e64:	00000713          	li	a4,0
    80002e68:	0404b783          	ld	a5,64(s1)
    80002e6c:	02f77e63          	bgeu	a4,a5,80002ea8 <_ZN12kmem_cache_s16create_free_slabEv+0xbc>
        tmp->free_objects[i] = 0;
    80002e70:	00270793          	addi	a5,a4,2
    80002e74:	00379793          	slli	a5,a5,0x3
    80002e78:	00fa07b3          	add	a5,s4,a5
    80002e7c:	0007b423          	sd	zero,8(a5)
    for(size_t  i = 0; i < this->size_of_arr; i++){
    80002e80:	00170713          	addi	a4,a4,1
    80002e84:	fe5ff06f          	j	80002e68 <_ZN12kmem_cache_s16create_free_slabEv+0x7c>
    80002e88:	0000d517          	auipc	a0,0xd
    80002e8c:	a1850513          	addi	a0,a0,-1512 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002e90:	fffff097          	auipc	ra,0xfffff
    80002e94:	d60080e7          	jalr	-672(ra) # 80001bf0 <_ZN11BuddySystemC1Ev>
    80002e98:	00100793          	li	a5,1
    80002e9c:	0000d717          	auipc	a4,0xd
    80002ea0:	9ef70e23          	sb	a5,-1540(a4) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002ea4:	f79ff06f          	j	80002e1c <_ZN12kmem_cache_s16create_free_slabEv+0x30>
    }

    // initialize slab if there is constructor
    if(this->ctor != nullptr){
    80002ea8:	0504b783          	ld	a5,80(s1)
    80002eac:	02078663          	beqz	a5,80002ed8 <_ZN12kmem_cache_s16create_free_slabEv+0xec>
        size_t addr = tmp->first_addr;
        for(size_t i = 0; i < this->num; i++){
    80002eb0:	00000993          	li	s3,0
    80002eb4:	0384b783          	ld	a5,56(s1)
    80002eb8:	02f9f063          	bgeu	s3,a5,80002ed8 <_ZN12kmem_cache_s16create_free_slabEv+0xec>
            this->ctor((void*)addr);
    80002ebc:	0504b783          	ld	a5,80(s1)
    80002ec0:	00090513          	mv	a0,s2
    80002ec4:	000780e7          	jalr	a5
            addr += objsize;
    80002ec8:	0304b783          	ld	a5,48(s1)
    80002ecc:	00f90933          	add	s2,s2,a5
        for(size_t i = 0; i < this->num; i++){
    80002ed0:	00198993          	addi	s3,s3,1
    80002ed4:	fe1ff06f          	j	80002eb4 <_ZN12kmem_cache_s16create_free_slabEv+0xc8>
        }
    }

    // set free pointer and increment number of free slabs
    this->slabs_free = tmp;
    80002ed8:	0144b823          	sd	s4,16(s1)
    this->num_slabs_free++;
    80002edc:	0284b783          	ld	a5,40(s1)
    80002ee0:	00178793          	addi	a5,a5,1
    80002ee4:	02f4b423          	sd	a5,40(s1)
}
    80002ee8:	02813083          	ld	ra,40(sp)
    80002eec:	02013403          	ld	s0,32(sp)
    80002ef0:	01813483          	ld	s1,24(sp)
    80002ef4:	01013903          	ld	s2,16(sp)
    80002ef8:	00813983          	ld	s3,8(sp)
    80002efc:	00013a03          	ld	s4,0(sp)
    80002f00:	03010113          	addi	sp,sp,48
    80002f04:	00008067          	ret

0000000080002f08 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>:
void* kmem_cache_s::kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    80002f08:	fc010113          	addi	sp,sp,-64
    80002f0c:	02113c23          	sd	ra,56(sp)
    80002f10:	02813823          	sd	s0,48(sp)
    80002f14:	02913423          	sd	s1,40(sp)
    80002f18:	03213023          	sd	s2,32(sp)
    80002f1c:	01313c23          	sd	s3,24(sp)
    80002f20:	01413823          	sd	s4,16(sp)
    80002f24:	01513423          	sd	s5,8(sp)
    80002f28:	04010413          	addi	s0,sp,64
    80002f2c:	00050993          	mv	s3,a0
    80002f30:	00058913          	mv	s2,a1
    80002f34:	00060a93          	mv	s5,a2
    80002f38:	00068a13          	mv	s4,a3
    for(kmem_cache_s* curr = kmem_cache_s::head; curr; curr = curr->next){
    80002f3c:	0000d797          	auipc	a5,0xd
    80002f40:	9547b783          	ld	a5,-1708(a5) # 8000f890 <_ZN12kmem_cache_s4headE>
    80002f44:	00078a63          	beqz	a5,80002f58 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x50>
        if(curr->name == name){
    80002f48:	0607b703          	ld	a4,96(a5)
    80002f4c:	15370863          	beq	a4,s3,8000309c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x194>
    for(kmem_cache_s* curr = kmem_cache_s::head; curr; curr = curr->next){
    80002f50:	0687b783          	ld	a5,104(a5)
    80002f54:	ff1ff06f          	j	80002f44 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x3c>
    80002f58:	0000d797          	auipc	a5,0xd
    80002f5c:	9407c783          	lbu	a5,-1728(a5) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002f60:	08078263          	beqz	a5,80002fe4 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xdc>
    kmem_cache_s* tmp = (kmem_cache_s*)BuddySystem::getInstance().buddyAlloc(BLOCK_SIZE - sizeof(size_t));
    80002f64:	000015b7          	lui	a1,0x1
    80002f68:	ff858593          	addi	a1,a1,-8 # ff8 <_entry-0x7ffff008>
    80002f6c:	0000d517          	auipc	a0,0xd
    80002f70:	93450513          	addi	a0,a0,-1740 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002f74:	fffff097          	auipc	ra,0xfffff
    80002f78:	dec080e7          	jalr	-532(ra) # 80001d60 <_ZN11BuddySystem10buddyAllocEm>
    80002f7c:	00050493          	mv	s1,a0
    tmp->name = name;
    80002f80:	07353023          	sd	s3,96(a0)
    tmp->objsize = size;
    80002f84:	03253823          	sd	s2,48(a0)
    tmp->ctor = ctor;
    80002f88:	05553823          	sd	s5,80(a0)
    tmp->dtor = dtor;
    80002f8c:	05453c23          	sd	s4,88(a0)
    tmp->slabs_full = tmp->slabs_partial = tmp->slabs_free = nullptr;
    80002f90:	00053823          	sd	zero,16(a0)
    80002f94:	00053423          	sd	zero,8(a0)
    80002f98:	00053023          	sd	zero,0(a0)
    tmp->num_slabs_full = tmp->num_slabs_partial = tmp->num_slabs_free = tmp->num_active_obj = tmp->shrink = 0;
    80002f9c:	08053023          	sd	zero,128(a0)
    80002fa0:	06053823          	sd	zero,112(a0)
    80002fa4:	02053423          	sd	zero,40(a0)
    80002fa8:	02053023          	sd	zero,32(a0)
    80002fac:	00053c23          	sd	zero,24(a0)
    tmp->growing = false;
    80002fb0:	06050c23          	sb	zero,120(a0)
    tmp->size_in_blocks = 1;
    80002fb4:	00100793          	li	a5,1
    80002fb8:	04f53423          	sd	a5,72(a0)
    size_t min_size_of_objects = tmp->objsize * NUM_OF_OBJECTS_IN_SLAB;
    80002fbc:	00291613          	slli	a2,s2,0x2
    80002fc0:	01260633          	add	a2,a2,s2
    80002fc4:	00161613          	slli	a2,a2,0x1
    while(tmp->size_in_blocks * BLOCK_SIZE < sizeof(size_t)*2 + sizeof(Slab) + min_size_of_arr + min_size_of_objects){
    80002fc8:	0484b703          	ld	a4,72(s1)
    80002fcc:	00c71693          	slli	a3,a4,0xc
    80002fd0:	03860793          	addi	a5,a2,56
    80002fd4:	06f6f663          	bgeu	a3,a5,80003040 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x138>
        tmp->size_in_blocks++;
    80002fd8:	00170713          	addi	a4,a4,1
    80002fdc:	04e4b423          	sd	a4,72(s1)
    while(tmp->size_in_blocks * BLOCK_SIZE < sizeof(size_t)*2 + sizeof(Slab) + min_size_of_arr + min_size_of_objects){
    80002fe0:	fe9ff06f          	j	80002fc8 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xc0>
    80002fe4:	0000d517          	auipc	a0,0xd
    80002fe8:	8bc50513          	addi	a0,a0,-1860 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002fec:	fffff097          	auipc	ra,0xfffff
    80002ff0:	c04080e7          	jalr	-1020(ra) # 80001bf0 <_ZN11BuddySystemC1Ev>
    80002ff4:	00100793          	li	a5,1
    80002ff8:	0000d717          	auipc	a4,0xd
    80002ffc:	8af70023          	sb	a5,-1888(a4) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003000:	f65ff06f          	j	80002f64 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x5c>
void* kmem_cache_s::kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    80003004:	00050813          	mv	a6,a0
    while((how_many_objects_into_one_slab + 1) * tmp->objsize <=
    80003008:	0018069b          	addiw	a3,a6,1
    8000300c:	0006851b          	sext.w	a0,a3
    80003010:	032508b3          	mul	a7,a0,s2
            (int)(tmp->size_in_blocks * BLOCK_SIZE - sizeof(size_t)*2 - sizeof(Slab) - current_size_of_arr * sizeof(size_t))){
    80003014:	00971793          	slli	a5,a4,0x9
    80003018:	40b787b3          	sub	a5,a5,a1
    8000301c:	20000637          	lui	a2,0x20000
    80003020:	ffb6061b          	addiw	a2,a2,-5
    80003024:	00c787bb          	addw	a5,a5,a2
    80003028:	0037979b          	slliw	a5,a5,0x3
    while((how_many_objects_into_one_slab + 1) * tmp->objsize <=
    8000302c:	0317e063          	bltu	a5,a7,8000304c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x144>
        if(++how_many_objects_into_one_slab % 8 == 0){
    80003030:	0076f693          	andi	a3,a3,7
    80003034:	fc0698e3          	bnez	a3,80003004 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xfc>
            current_size_of_arr++;
    80003038:	0015859b          	addiw	a1,a1,1
    8000303c:	fc9ff06f          	j	80003004 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xfc>
    int current_size_of_arr = 2;
    80003040:	00200593          	li	a1,2
    int how_many_objects_into_one_slab = 10;
    80003044:	00a00813          	li	a6,10
    80003048:	fc1ff06f          	j	80003008 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x100>
    tmp->num = how_many_objects_into_one_slab;
    8000304c:	0304bc23          	sd	a6,56(s1)
    tmp->size_of_arr = current_size_of_arr;
    80003050:	04b4b023          	sd	a1,64(s1)
    tmp->create_free_slab();
    80003054:	00048513          	mv	a0,s1
    80003058:	00000097          	auipc	ra,0x0
    8000305c:	d94080e7          	jalr	-620(ra) # 80002dec <_ZN12kmem_cache_s16create_free_slabEv>
    tmp->next = kmem_cache_s::head;
    80003060:	0000d797          	auipc	a5,0xd
    80003064:	83078793          	addi	a5,a5,-2000 # 8000f890 <_ZN12kmem_cache_s4headE>
    80003068:	0007b703          	ld	a4,0(a5)
    8000306c:	06e4b423          	sd	a4,104(s1)
    kmem_cache_s::head = tmp;
    80003070:	0097b023          	sd	s1,0(a5)
}
    80003074:	00048513          	mv	a0,s1
    80003078:	03813083          	ld	ra,56(sp)
    8000307c:	03013403          	ld	s0,48(sp)
    80003080:	02813483          	ld	s1,40(sp)
    80003084:	02013903          	ld	s2,32(sp)
    80003088:	01813983          	ld	s3,24(sp)
    8000308c:	01013a03          	ld	s4,16(sp)
    80003090:	00813a83          	ld	s5,8(sp)
    80003094:	04010113          	addi	sp,sp,64
    80003098:	00008067          	ret
            return nullptr;
    8000309c:	00000493          	li	s1,0
    800030a0:	fd5ff06f          	j	80003074 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x16c>

00000000800030a4 <_ZN4Slab8set_maskEib>:

void Slab::set_mask(int position,  bool flag){
    800030a4:	ff010113          	addi	sp,sp,-16
    800030a8:	00813423          	sd	s0,8(sp)
    800030ac:	01010413          	addi	s0,sp,16
    int pos = position / sizeof(size_t);
    800030b0:	4035d813          	srai	a6,a1,0x3
    int relative_pos = position % sizeof(size_t);
    800030b4:	0075f593          	andi	a1,a1,7
    size_t mask = 1;
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    800030b8:	00000713          	li	a4,0
    size_t mask = 1;
    800030bc:	00100693          	li	a3,1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    800030c0:	00700793          	li	a5,7
    800030c4:	40b787b3          	sub	a5,a5,a1
    800030c8:	00f77863          	bgeu	a4,a5,800030d8 <_ZN4Slab8set_maskEib+0x34>
        mask <<= 1;
    800030cc:	00169693          	slli	a3,a3,0x1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    800030d0:	0017071b          	addiw	a4,a4,1
    800030d4:	fedff06f          	j	800030c0 <_ZN4Slab8set_maskEib+0x1c>
    }
    if(flag){
    800030d8:	02060463          	beqz	a2,80003100 <_ZN4Slab8set_maskEib+0x5c>
        // setujemo bit na jedan
        this->free_objects[pos] |= mask;
    800030dc:	00280813          	addi	a6,a6,2
    800030e0:	00381813          	slli	a6,a6,0x3
    800030e4:	01050533          	add	a0,a0,a6
    800030e8:	00853783          	ld	a5,8(a0)
    800030ec:	00d7e6b3          	or	a3,a5,a3
    800030f0:	00d53423          	sd	a3,8(a0)
        // setujemo bit na nula
        mask = ~mask;
        this->free_objects[pos] &= mask;
    }
    return;
}
    800030f4:	00813403          	ld	s0,8(sp)
    800030f8:	01010113          	addi	sp,sp,16
    800030fc:	00008067          	ret
        mask = ~mask;
    80003100:	fff6c693          	not	a3,a3
        this->free_objects[pos] &= mask;
    80003104:	00280813          	addi	a6,a6,2
    80003108:	00381813          	slli	a6,a6,0x3
    8000310c:	01050533          	add	a0,a0,a6
    80003110:	00853783          	ld	a5,8(a0)
    80003114:	00d7f6b3          	and	a3,a5,a3
    80003118:	00d53423          	sd	a3,8(a0)
    return;
    8000311c:	fd9ff06f          	j	800030f4 <_ZN4Slab8set_maskEib+0x50>

0000000080003120 <_ZN4Slab9is_activeEi>:

bool Slab::is_active(int position){
    80003120:	ff010113          	addi	sp,sp,-16
    80003124:	00813423          	sd	s0,8(sp)
    80003128:	01010413          	addi	s0,sp,16
    int pos = position / sizeof(size_t);
    8000312c:	4035d613          	srai	a2,a1,0x3
    int relative_pos = position % sizeof(size_t);
    80003130:	0075f593          	andi	a1,a1,7
    size_t mask = 1;
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    80003134:	00000713          	li	a4,0
    size_t mask = 1;
    80003138:	00100693          	li	a3,1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    8000313c:	00700793          	li	a5,7
    80003140:	40b787b3          	sub	a5,a5,a1
    80003144:	00f77863          	bgeu	a4,a5,80003154 <_ZN4Slab9is_activeEi+0x34>
        mask <<= 1;
    80003148:	00169693          	slli	a3,a3,0x1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    8000314c:	0017071b          	addiw	a4,a4,1
    80003150:	fedff06f          	j	8000313c <_ZN4Slab9is_activeEi+0x1c>
    }
    return this->free_objects[pos] & mask;
    80003154:	00260793          	addi	a5,a2,2 # 20000002 <_entry-0x5ffffffe>
    80003158:	00379793          	slli	a5,a5,0x3
    8000315c:	00f50533          	add	a0,a0,a5
    80003160:	00853503          	ld	a0,8(a0)
    80003164:	00d57533          	and	a0,a0,a3
}
    80003168:	00a03533          	snez	a0,a0
    8000316c:	00813403          	ld	s0,8(sp)
    80003170:	01010113          	addi	sp,sp,16
    80003174:	00008067          	ret

0000000080003178 <_ZN12kmem_cache_s15kmem_cache_freeEPv>:

// returns -1 if object not found and 0 if removal is completed
int kmem_cache_s::kmem_cache_free(void *objp) {
    80003178:	fd010113          	addi	sp,sp,-48
    8000317c:	02113423          	sd	ra,40(sp)
    80003180:	02813023          	sd	s0,32(sp)
    80003184:	00913c23          	sd	s1,24(sp)
    80003188:	01213823          	sd	s2,16(sp)
    8000318c:	01313423          	sd	s3,8(sp)
    80003190:	01413023          	sd	s4,0(sp)
    80003194:	03010413          	addi	s0,sp,48
    80003198:	00050a13          	mv	s4,a0
    8000319c:	00058993          	mv	s3,a1
    // check firstly in partial
    Slab* prev = nullptr;
    for(Slab* tmp = this->slabs_partial; tmp; tmp = tmp->next){
    800031a0:	00853483          	ld	s1,8(a0)
    Slab* prev = nullptr;
    800031a4:	00000913          	li	s2,0
    800031a8:	0180006f          	j	800031c0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x48>
            tmp->decrement_num_of_active();
            size_t number_of_active = tmp->get_number_of_active_objects();
            if(number_of_active == 0){
                // move from partial to free
                if(prev)prev->next = tmp->next;
                else slabs_partial = tmp->next;
    800031ac:	0084b783          	ld	a5,8(s1)
    800031b0:	00fa3423          	sd	a5,8(s4)
    800031b4:	0940006f          	j	80003248 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xd0>
                this->num_slabs_partial--;
                this->num_slabs_free++;
            }
            return 0;
        }
        prev = tmp;
    800031b8:	00048913          	mv	s2,s1
    for(Slab* tmp = this->slabs_partial; tmp; tmp = tmp->next){
    800031bc:	0084b483          	ld	s1,8(s1)
    800031c0:	0a048a63          	beqz	s1,80003274 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xfc>
        if((size_t)objp > (size_t)tmp &&
    800031c4:	ff34fae3          	bgeu	s1,s3,800031b8 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x40>
        (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
    800031c8:	048a3783          	ld	a5,72(s4)
    800031cc:	00c79793          	slli	a5,a5,0xc
    800031d0:	00f487b3          	add	a5,s1,a5
    800031d4:	ff878793          	addi	a5,a5,-8
        if((size_t)objp > (size_t)tmp &&
    800031d8:	fef9f0e3          	bgeu	s3,a5,800031b8 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x40>
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
    800031dc:	0104b583          	ld	a1,16(s1)
    800031e0:	40b98733          	sub	a4,s3,a1
    800031e4:	030a3583          	ld	a1,48(s4)
    800031e8:	02b755b3          	divu	a1,a4,a1
            tmp->set_mask(position, false);
    800031ec:	00000613          	li	a2,0
    800031f0:	0005859b          	sext.w	a1,a1
    800031f4:	00048513          	mv	a0,s1
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	eac080e7          	jalr	-340(ra) # 800030a4 <_ZN4Slab8set_maskEib>
            if(this->dtor){
    80003200:	058a3783          	ld	a5,88(s4)
    80003204:	00078663          	beqz	a5,80003210 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x98>
                this->dtor(objp);
    80003208:	00098513          	mv	a0,s3
    8000320c:	000780e7          	jalr	a5
            if(this->ctor){
    80003210:	050a3783          	ld	a5,80(s4)
    80003214:	00078663          	beqz	a5,80003220 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xa8>
                this->ctor(objp);
    80003218:	00098513          	mv	a0,s3
    8000321c:	000780e7          	jalr	a5
            this->num_active_obj--;
    80003220:	070a3783          	ld	a5,112(s4)
    80003224:	fff78793          	addi	a5,a5,-1
    80003228:	06fa3823          	sd	a5,112(s4)
public:
    void clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *));
    size_t get_number_of_active_objects(){return num_active;}
    void* return_first_free_object_and_rearange_list(int, int);
    void increment_num_of_active(){num_active++;}
    void decrement_num_of_active(){num_active--;}
    8000322c:	0004b783          	ld	a5,0(s1)
    80003230:	fff78793          	addi	a5,a5,-1
    80003234:	00f4b023          	sd	a5,0(s1)
            if(number_of_active == 0){
    80003238:	02079a63          	bnez	a5,8000326c <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xf4>
                if(prev)prev->next = tmp->next;
    8000323c:	f60908e3          	beqz	s2,800031ac <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x34>
    80003240:	0084b783          	ld	a5,8(s1)
    80003244:	00f93423          	sd	a5,8(s2)
                tmp->next = this->slabs_free;
    80003248:	010a3783          	ld	a5,16(s4)
    8000324c:	00f4b423          	sd	a5,8(s1)
                this->slabs_free = tmp;
    80003250:	009a3823          	sd	s1,16(s4)
                this->num_slabs_partial--;
    80003254:	020a3783          	ld	a5,32(s4)
    80003258:	fff78793          	addi	a5,a5,-1
    8000325c:	02fa3023          	sd	a5,32(s4)
                this->num_slabs_free++;
    80003260:	028a3783          	ld	a5,40(s4)
    80003264:	00178793          	addi	a5,a5,1
    80003268:	02fa3423          	sd	a5,40(s4)
            return 0;
    8000326c:	00000513          	li	a0,0
    80003270:	0d40006f          	j	80003344 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1cc>
    }
    // check in full
    prev = nullptr;
    for(Slab* tmp = this->slabs_full; tmp; tmp = tmp->next){
    80003274:	000a3903          	ld	s2,0(s4)
    80003278:	0180006f          	j	80003290 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x118>
            this->num_active_obj--;
            tmp->decrement_num_of_active();

            // move from full to partial
            if(prev)prev->next = tmp->next;
            else slabs_full = tmp->next;
    8000327c:	00893783          	ld	a5,8(s2)
    80003280:	00fa3023          	sd	a5,0(s4)
    80003284:	0900006f          	j	80003314 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x19c>
            this->num_slabs_full--;
            this->num_slabs_partial++;

            return 0;
        }
        prev = tmp;
    80003288:	00090493          	mv	s1,s2
    for(Slab* tmp = this->slabs_full; tmp; tmp = tmp->next){
    8000328c:	00893903          	ld	s2,8(s2)
    80003290:	0a090863          	beqz	s2,80003340 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1c8>
        if((size_t)objp > (size_t)tmp &&
    80003294:	ff397ae3          	bgeu	s2,s3,80003288 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x110>
           (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
    80003298:	048a3783          	ld	a5,72(s4)
    8000329c:	00c79793          	slli	a5,a5,0xc
    800032a0:	00f907b3          	add	a5,s2,a5
    800032a4:	ff878793          	addi	a5,a5,-8
        if((size_t)objp > (size_t)tmp &&
    800032a8:	fef9f0e3          	bgeu	s3,a5,80003288 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x110>
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
    800032ac:	01093583          	ld	a1,16(s2)
    800032b0:	40b98733          	sub	a4,s3,a1
    800032b4:	030a3583          	ld	a1,48(s4)
    800032b8:	02b755b3          	divu	a1,a4,a1
            tmp->set_mask(position, false);
    800032bc:	00000613          	li	a2,0
    800032c0:	0005859b          	sext.w	a1,a1
    800032c4:	00090513          	mv	a0,s2
    800032c8:	00000097          	auipc	ra,0x0
    800032cc:	ddc080e7          	jalr	-548(ra) # 800030a4 <_ZN4Slab8set_maskEib>
            if(this->dtor){
    800032d0:	058a3783          	ld	a5,88(s4)
    800032d4:	00078663          	beqz	a5,800032e0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x168>
                this->dtor(objp);
    800032d8:	00098513          	mv	a0,s3
    800032dc:	000780e7          	jalr	a5
            if(this->ctor){
    800032e0:	050a3783          	ld	a5,80(s4)
    800032e4:	00078663          	beqz	a5,800032f0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x178>
                this->ctor(objp);
    800032e8:	00098513          	mv	a0,s3
    800032ec:	000780e7          	jalr	a5
            this->num_active_obj--;
    800032f0:	070a3783          	ld	a5,112(s4)
    800032f4:	fff78793          	addi	a5,a5,-1
    800032f8:	06fa3823          	sd	a5,112(s4)
    800032fc:	00093783          	ld	a5,0(s2)
    80003300:	fff78793          	addi	a5,a5,-1
    80003304:	00f93023          	sd	a5,0(s2)
            if(prev)prev->next = tmp->next;
    80003308:	f6048ae3          	beqz	s1,8000327c <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x104>
    8000330c:	00893783          	ld	a5,8(s2)
    80003310:	00f4b423          	sd	a5,8(s1)
            tmp->next = this->slabs_partial;
    80003314:	008a3783          	ld	a5,8(s4)
    80003318:	00f93423          	sd	a5,8(s2)
            this->slabs_partial = tmp;
    8000331c:	012a3423          	sd	s2,8(s4)
            this->num_slabs_full--;
    80003320:	018a3783          	ld	a5,24(s4)
    80003324:	fff78793          	addi	a5,a5,-1
    80003328:	00fa3c23          	sd	a5,24(s4)
            this->num_slabs_partial++;
    8000332c:	020a3783          	ld	a5,32(s4)
    80003330:	00178793          	addi	a5,a5,1
    80003334:	02fa3023          	sd	a5,32(s4)
            return 0;
    80003338:	00000513          	li	a0,0
    8000333c:	0080006f          	j	80003344 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1cc>
    }
    return -1;
    80003340:	fff00513          	li	a0,-1
}
    80003344:	02813083          	ld	ra,40(sp)
    80003348:	02013403          	ld	s0,32(sp)
    8000334c:	01813483          	ld	s1,24(sp)
    80003350:	01013903          	ld	s2,16(sp)
    80003354:	00813983          	ld	s3,8(sp)
    80003358:	00013a03          	ld	s4,0(sp)
    8000335c:	03010113          	addi	sp,sp,48
    80003360:	00008067          	ret

0000000080003364 <_ZN12kmem_cache_s20check_if_name_existsEPKc>:
    void* elem = tmp->kmem_cache_alloc();
    return elem;
}

// returns cache with given name, or nullptr if there is no such cache
kmem_cache_s *kmem_cache_s::check_if_name_exists(const char* name) {
    80003364:	fe010113          	addi	sp,sp,-32
    80003368:	00113c23          	sd	ra,24(sp)
    8000336c:	00813823          	sd	s0,16(sp)
    80003370:	00913423          	sd	s1,8(sp)
    80003374:	01213023          	sd	s2,0(sp)
    80003378:	02010413          	addi	s0,sp,32
    8000337c:	00050913          	mv	s2,a0
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003380:	0000c497          	auipc	s1,0xc
    80003384:	5104b483          	ld	s1,1296(s1) # 8000f890 <_ZN12kmem_cache_s4headE>
    80003388:	02048063          	beqz	s1,800033a8 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x44>
        if(string_compare(tmp->name, name)){
    8000338c:	00090593          	mv	a1,s2
    80003390:	0604b503          	ld	a0,96(s1)
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	33c080e7          	jalr	828(ra) # 800026d0 <_Z14string_comparePKcS0_>
    8000339c:	00051663          	bnez	a0,800033a8 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x44>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    800033a0:	0684b483          	ld	s1,104(s1)
    800033a4:	fe5ff06f          	j	80003388 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x24>
            return tmp;
        }
    }
    return nullptr;
}
    800033a8:	00048513          	mv	a0,s1
    800033ac:	01813083          	ld	ra,24(sp)
    800033b0:	01013403          	ld	s0,16(sp)
    800033b4:	00813483          	ld	s1,8(sp)
    800033b8:	00013903          	ld	s2,0(sp)
    800033bc:	02010113          	addi	sp,sp,32
    800033c0:	00008067          	ret

00000000800033c4 <_ZN12kmem_cache_s3powEm>:

size_t kmem_cache_s::pow(size_t deg){
    800033c4:	ff010113          	addi	sp,sp,-16
    800033c8:	00813423          	sd	s0,8(sp)
    800033cc:	01010413          	addi	s0,sp,16
    800033d0:	00050713          	mv	a4,a0
    size_t tmp = 1;
    for(size_t i = 0; i < deg; i++){
    800033d4:	00000793          	li	a5,0
    size_t tmp = 1;
    800033d8:	00100513          	li	a0,1
    for(size_t i = 0; i < deg; i++){
    800033dc:	00e7f863          	bgeu	a5,a4,800033ec <_ZN12kmem_cache_s3powEm+0x28>
        tmp <<= 1;
    800033e0:	00151513          	slli	a0,a0,0x1
    for(size_t i = 0; i < deg; i++){
    800033e4:	00178793          	addi	a5,a5,1
    800033e8:	ff5ff06f          	j	800033dc <_ZN12kmem_cache_s3powEm+0x18>
    }
    return tmp;
}
    800033ec:	00813403          	ld	s0,8(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm>:

int kmem_cache_s::is_small_buffer_size_correct(size_t size) {
    800033f8:	fe010113          	addi	sp,sp,-32
    800033fc:	00113c23          	sd	ra,24(sp)
    80003400:	00813823          	sd	s0,16(sp)
    80003404:	00913423          	sd	s1,8(sp)
    80003408:	02010413          	addi	s0,sp,32
    8000340c:	00050493          	mv	s1,a0
    int deg = 5;
    size_t val = pow(deg);
    80003410:	00500513          	li	a0,5
    80003414:	00000097          	auipc	ra,0x0
    80003418:	fb0080e7          	jalr	-80(ra) # 800033c4 <_ZN12kmem_cache_s3powEm>
    int deg = 5;
    8000341c:	00500793          	li	a5,5
    while(size > val){
    80003420:	00957863          	bgeu	a0,s1,80003430 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x38>
        deg++;
    80003424:	0017879b          	addiw	a5,a5,1
        val <<= 1;
    80003428:	00151513          	slli	a0,a0,0x1
    while(size > val){
    8000342c:	ff5ff06f          	j	80003420 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x28>
    }
    if(deg > 17)return 0;
    80003430:	01100713          	li	a4,17
    80003434:	00f74e63          	blt	a4,a5,80003450 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x58>
    return (int)val;
    80003438:	0005051b          	sext.w	a0,a0
}
    8000343c:	01813083          	ld	ra,24(sp)
    80003440:	01013403          	ld	s0,16(sp)
    80003444:	00813483          	ld	s1,8(sp)
    80003448:	02010113          	addi	sp,sp,32
    8000344c:	00008067          	ret
    if(deg > 17)return 0;
    80003450:	00000513          	li	a0,0
    80003454:	fe9ff06f          	j	8000343c <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x44>

0000000080003458 <_ZN12kmem_cache_s5kfreeEPKv>:

// returns 0 if delete is executed, -1 if not
int kmem_cache_s::kfree(const void *objp) {
    80003458:	fe010113          	addi	sp,sp,-32
    8000345c:	00113c23          	sd	ra,24(sp)
    80003460:	00813823          	sd	s0,16(sp)
    80003464:	00913423          	sd	s1,8(sp)
    80003468:	01213023          	sd	s2,0(sp)
    8000346c:	02010413          	addi	s0,sp,32
    80003470:	00050913          	mv	s2,a0
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003474:	0000c497          	auipc	s1,0xc
    80003478:	41c4b483          	ld	s1,1052(s1) # 8000f890 <_ZN12kmem_cache_s4headE>
    8000347c:	02048063          	beqz	s1,8000349c <_ZN12kmem_cache_s5kfreeEPKv+0x44>
        if(tmp->kmem_cache_free((void*)objp) == 0)return 0;
    80003480:	00090593          	mv	a1,s2
    80003484:	00048513          	mv	a0,s1
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	cf0080e7          	jalr	-784(ra) # 80003178 <_ZN12kmem_cache_s15kmem_cache_freeEPv>
    80003490:	00050863          	beqz	a0,800034a0 <_ZN12kmem_cache_s5kfreeEPKv+0x48>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003494:	0684b483          	ld	s1,104(s1)
    80003498:	fe5ff06f          	j	8000347c <_ZN12kmem_cache_s5kfreeEPKv+0x24>
    }
    // if not found return 1;
    return -1;
    8000349c:	fff00513          	li	a0,-1
}
    800034a0:	01813083          	ld	ra,24(sp)
    800034a4:	01013403          	ld	s0,16(sp)
    800034a8:	00813483          	ld	s1,8(sp)
    800034ac:	00013903          	ld	s2,0(sp)
    800034b0:	02010113          	addi	sp,sp,32
    800034b4:	00008067          	ret

00000000800034b8 <_ZN12kmem_cache_s15kmem_cache_infoEv>:
        cache = cache->next;
    }
    return -1;
}

void kmem_cache_s::kmem_cache_info() {
    800034b8:	fd010113          	addi	sp,sp,-48
    800034bc:	02113423          	sd	ra,40(sp)
    800034c0:	02813023          	sd	s0,32(sp)
    800034c4:	00913c23          	sd	s1,24(sp)
    800034c8:	01213823          	sd	s2,16(sp)
    800034cc:	01313423          	sd	s3,8(sp)
    800034d0:	01413023          	sd	s4,0(sp)
    800034d4:	03010413          	addi	s0,sp,48
    800034d8:	00050913          	mv	s2,a0

    printString("------------------- CACHE INFO -------------------\n");
    800034dc:	00009517          	auipc	a0,0x9
    800034e0:	b5450513          	addi	a0,a0,-1196 # 8000c030 <CONSOLE_STATUS+0x20>
    800034e4:	00003097          	auipc	ra,0x3
    800034e8:	8c4080e7          	jalr	-1852(ra) # 80005da8 <_Z11printStringPKc>
    // print name and object size
    printString("Ime: ");
    800034ec:	00009517          	auipc	a0,0x9
    800034f0:	b7c50513          	addi	a0,a0,-1156 # 8000c068 <CONSOLE_STATUS+0x58>
    800034f4:	00003097          	auipc	ra,0x3
    800034f8:	8b4080e7          	jalr	-1868(ra) # 80005da8 <_Z11printStringPKc>
    printString(name);
    800034fc:	06093503          	ld	a0,96(s2)
    80003500:	00003097          	auipc	ra,0x3
    80003504:	8a8080e7          	jalr	-1880(ra) # 80005da8 <_Z11printStringPKc>
    printString("\n");
    80003508:	00009517          	auipc	a0,0x9
    8000350c:	d4050513          	addi	a0,a0,-704 # 8000c248 <CONSOLE_STATUS+0x238>
    80003510:	00003097          	auipc	ra,0x3
    80003514:	898080e7          	jalr	-1896(ra) # 80005da8 <_Z11printStringPKc>
    printString("Velicina objekta: ");
    80003518:	00009517          	auipc	a0,0x9
    8000351c:	b5850513          	addi	a0,a0,-1192 # 8000c070 <CONSOLE_STATUS+0x60>
    80003520:	00003097          	auipc	ra,0x3
    80003524:	888080e7          	jalr	-1912(ra) # 80005da8 <_Z11printStringPKc>
    printInt(objsize);
    80003528:	00000613          	li	a2,0
    8000352c:	00a00593          	li	a1,10
    80003530:	03092503          	lw	a0,48(s2)
    80003534:	00003097          	auipc	ra,0x3
    80003538:	a0c080e7          	jalr	-1524(ra) # 80005f40 <_Z8printIntiii>
    printString("\n");
    8000353c:	00009517          	auipc	a0,0x9
    80003540:	d0c50513          	addi	a0,a0,-756 # 8000c248 <CONSOLE_STATUS+0x238>
    80003544:	00003097          	auipc	ra,0x3
    80003548:	864080e7          	jalr	-1948(ra) # 80005da8 <_Z11printStringPKc>

    // print size of cache (in blocks)
    size_t num_of_slabs = num_slabs_full + num_slabs_partial + num_slabs_free;
    8000354c:	01893983          	ld	s3,24(s2)
    80003550:	02093783          	ld	a5,32(s2)
    80003554:	00f989b3          	add	s3,s3,a5
    80003558:	02893503          	ld	a0,40(s2)
    8000355c:	00a989b3          	add	s3,s3,a0
    size_t size_of_cache_in_blocks = num_of_slabs * size_in_blocks + 1;
    80003560:	04893483          	ld	s1,72(s2)
    80003564:	033484b3          	mul	s1,s1,s3
    80003568:	00148493          	addi	s1,s1,1
    printString("Velicina kesa u blokovima: ");
    8000356c:	00009517          	auipc	a0,0x9
    80003570:	b1c50513          	addi	a0,a0,-1252 # 8000c088 <CONSOLE_STATUS+0x78>
    80003574:	00003097          	auipc	ra,0x3
    80003578:	834080e7          	jalr	-1996(ra) # 80005da8 <_Z11printStringPKc>
    printInt(size_of_cache_in_blocks);
    8000357c:	00000613          	li	a2,0
    80003580:	00a00593          	li	a1,10
    80003584:	0004851b          	sext.w	a0,s1
    80003588:	00003097          	auipc	ra,0x3
    8000358c:	9b8080e7          	jalr	-1608(ra) # 80005f40 <_Z8printIntiii>
    printString("\n");
    80003590:	00009517          	auipc	a0,0x9
    80003594:	cb850513          	addi	a0,a0,-840 # 8000c248 <CONSOLE_STATUS+0x238>
    80003598:	00003097          	auipc	ra,0x3
    8000359c:	810080e7          	jalr	-2032(ra) # 80005da8 <_Z11printStringPKc>

    // print number of slabs in cache
    printString("Broj ploca u kesu: ");
    800035a0:	00009517          	auipc	a0,0x9
    800035a4:	b0850513          	addi	a0,a0,-1272 # 8000c0a8 <CONSOLE_STATUS+0x98>
    800035a8:	00003097          	auipc	ra,0x3
    800035ac:	800080e7          	jalr	-2048(ra) # 80005da8 <_Z11printStringPKc>
    printInt(num_of_slabs);
    800035b0:	00000613          	li	a2,0
    800035b4:	00a00593          	li	a1,10
    800035b8:	0009851b          	sext.w	a0,s3
    800035bc:	00003097          	auipc	ra,0x3
    800035c0:	984080e7          	jalr	-1660(ra) # 80005f40 <_Z8printIntiii>
    printString("\n");
    800035c4:	00009517          	auipc	a0,0x9
    800035c8:	c8450513          	addi	a0,a0,-892 # 8000c248 <CONSOLE_STATUS+0x238>
    800035cc:	00002097          	auipc	ra,0x2
    800035d0:	7dc080e7          	jalr	2012(ra) # 80005da8 <_Z11printStringPKc>

    // number of objects in one slab
    printString("Broj objekata koji staju u jednu plocu: ");
    800035d4:	00009517          	auipc	a0,0x9
    800035d8:	aec50513          	addi	a0,a0,-1300 # 8000c0c0 <CONSOLE_STATUS+0xb0>
    800035dc:	00002097          	auipc	ra,0x2
    800035e0:	7cc080e7          	jalr	1996(ra) # 80005da8 <_Z11printStringPKc>
    printInt(num);
    800035e4:	00000613          	li	a2,0
    800035e8:	00a00593          	li	a1,10
    800035ec:	03892503          	lw	a0,56(s2)
    800035f0:	00003097          	auipc	ra,0x3
    800035f4:	950080e7          	jalr	-1712(ra) # 80005f40 <_Z8printIntiii>
    printString("\n");
    800035f8:	00009517          	auipc	a0,0x9
    800035fc:	c5050513          	addi	a0,a0,-944 # 8000c248 <CONSOLE_STATUS+0x238>
    80003600:	00002097          	auipc	ra,0x2
    80003604:	7a8080e7          	jalr	1960(ra) # 80005da8 <_Z11printStringPKc>

    // number of objects in one slab
    printString("Broj aktivnih objekata u kesu: ");
    80003608:	00009517          	auipc	a0,0x9
    8000360c:	ae850513          	addi	a0,a0,-1304 # 8000c0f0 <CONSOLE_STATUS+0xe0>
    80003610:	00002097          	auipc	ra,0x2
    80003614:	798080e7          	jalr	1944(ra) # 80005da8 <_Z11printStringPKc>
    printInt(num_active_obj);
    80003618:	00000613          	li	a2,0
    8000361c:	00a00593          	li	a1,10
    80003620:	07092503          	lw	a0,112(s2)
    80003624:	00003097          	auipc	ra,0x3
    80003628:	91c080e7          	jalr	-1764(ra) # 80005f40 <_Z8printIntiii>
    printString("\n");
    8000362c:	00009517          	auipc	a0,0x9
    80003630:	c1c50513          	addi	a0,a0,-996 # 8000c248 <CONSOLE_STATUS+0x238>
    80003634:	00002097          	auipc	ra,0x2
    80003638:	774080e7          	jalr	1908(ra) # 80005da8 <_Z11printStringPKc>

    // stanje u slabovima
    printString("slobodni: ");
    8000363c:	00009517          	auipc	a0,0x9
    80003640:	ad450513          	addi	a0,a0,-1324 # 8000c110 <CONSOLE_STATUS+0x100>
    80003644:	00002097          	auipc	ra,0x2
    80003648:	764080e7          	jalr	1892(ra) # 80005da8 <_Z11printStringPKc>
    for(Slab* tmp = slabs_free; tmp; tmp = tmp->next){
    8000364c:	01093483          	ld	s1,16(s2)
    80003650:	02048863          	beqz	s1,80003680 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x1c8>
        printInt(tmp->get_number_of_active_objects());
    80003654:	00000613          	li	a2,0
    80003658:	00a00593          	li	a1,10
    8000365c:	0004a503          	lw	a0,0(s1)
    80003660:	00003097          	auipc	ra,0x3
    80003664:	8e0080e7          	jalr	-1824(ra) # 80005f40 <_Z8printIntiii>
        printString(" ");
    80003668:	00009517          	auipc	a0,0x9
    8000366c:	0e850513          	addi	a0,a0,232 # 8000c750 <CONSOLE_STATUS+0x740>
    80003670:	00002097          	auipc	ra,0x2
    80003674:	738080e7          	jalr	1848(ra) # 80005da8 <_Z11printStringPKc>
    for(Slab* tmp = slabs_free; tmp; tmp = tmp->next){
    80003678:	0084b483          	ld	s1,8(s1)
    8000367c:	fd5ff06f          	j	80003650 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x198>
    }
    printString("\n");
    80003680:	00009517          	auipc	a0,0x9
    80003684:	bc850513          	addi	a0,a0,-1080 # 8000c248 <CONSOLE_STATUS+0x238>
    80003688:	00002097          	auipc	ra,0x2
    8000368c:	720080e7          	jalr	1824(ra) # 80005da8 <_Z11printStringPKc>
    printString("zaprljani: ");
    80003690:	00009517          	auipc	a0,0x9
    80003694:	a9050513          	addi	a0,a0,-1392 # 8000c120 <CONSOLE_STATUS+0x110>
    80003698:	00002097          	auipc	ra,0x2
    8000369c:	710080e7          	jalr	1808(ra) # 80005da8 <_Z11printStringPKc>
    for(Slab* tmp = slabs_partial; tmp; tmp = tmp->next){
    800036a0:	00893483          	ld	s1,8(s2)
    800036a4:	02048863          	beqz	s1,800036d4 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x21c>
        printInt(tmp->get_number_of_active_objects());
    800036a8:	00000613          	li	a2,0
    800036ac:	00a00593          	li	a1,10
    800036b0:	0004a503          	lw	a0,0(s1)
    800036b4:	00003097          	auipc	ra,0x3
    800036b8:	88c080e7          	jalr	-1908(ra) # 80005f40 <_Z8printIntiii>
        printString(" ");
    800036bc:	00009517          	auipc	a0,0x9
    800036c0:	09450513          	addi	a0,a0,148 # 8000c750 <CONSOLE_STATUS+0x740>
    800036c4:	00002097          	auipc	ra,0x2
    800036c8:	6e4080e7          	jalr	1764(ra) # 80005da8 <_Z11printStringPKc>
    for(Slab* tmp = slabs_partial; tmp; tmp = tmp->next){
    800036cc:	0084b483          	ld	s1,8(s1)
    800036d0:	fd5ff06f          	j	800036a4 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x1ec>
    }
    printString("\n");
    800036d4:	00009517          	auipc	a0,0x9
    800036d8:	b7450513          	addi	a0,a0,-1164 # 8000c248 <CONSOLE_STATUS+0x238>
    800036dc:	00002097          	auipc	ra,0x2
    800036e0:	6cc080e7          	jalr	1740(ra) # 80005da8 <_Z11printStringPKc>
    printString("puni: ");
    800036e4:	00009517          	auipc	a0,0x9
    800036e8:	a4c50513          	addi	a0,a0,-1460 # 8000c130 <CONSOLE_STATUS+0x120>
    800036ec:	00002097          	auipc	ra,0x2
    800036f0:	6bc080e7          	jalr	1724(ra) # 80005da8 <_Z11printStringPKc>
    for(Slab* tmp = slabs_full; tmp; tmp = tmp->next){
    800036f4:	00093483          	ld	s1,0(s2)
    800036f8:	02048863          	beqz	s1,80003728 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x270>
        printInt(tmp->get_number_of_active_objects());
    800036fc:	00000613          	li	a2,0
    80003700:	00a00593          	li	a1,10
    80003704:	0004a503          	lw	a0,0(s1)
    80003708:	00003097          	auipc	ra,0x3
    8000370c:	838080e7          	jalr	-1992(ra) # 80005f40 <_Z8printIntiii>
        printString(" ");
    80003710:	00009517          	auipc	a0,0x9
    80003714:	04050513          	addi	a0,a0,64 # 8000c750 <CONSOLE_STATUS+0x740>
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	690080e7          	jalr	1680(ra) # 80005da8 <_Z11printStringPKc>
    for(Slab* tmp = slabs_full; tmp; tmp = tmp->next){
    80003720:	0084b483          	ld	s1,8(s1)
    80003724:	fd5ff06f          	j	800036f8 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x240>
    }
    printString("\n");
    80003728:	00009517          	auipc	a0,0x9
    8000372c:	b2050513          	addi	a0,a0,-1248 # 8000c248 <CONSOLE_STATUS+0x238>
    80003730:	00002097          	auipc	ra,0x2
    80003734:	678080e7          	jalr	1656(ra) # 80005da8 <_Z11printStringPKc>

    // number of times cache shrank
    printString("Broj uspesnih smanjenja kesa: ");
    80003738:	00009517          	auipc	a0,0x9
    8000373c:	a0050513          	addi	a0,a0,-1536 # 8000c138 <CONSOLE_STATUS+0x128>
    80003740:	00002097          	auipc	ra,0x2
    80003744:	668080e7          	jalr	1640(ra) # 80005da8 <_Z11printStringPKc>
    printInt(shrink);
    80003748:	00000613          	li	a2,0
    8000374c:	00a00593          	li	a1,10
    80003750:	08092503          	lw	a0,128(s2)
    80003754:	00002097          	auipc	ra,0x2
    80003758:	7ec080e7          	jalr	2028(ra) # 80005f40 <_Z8printIntiii>
    printString("\n");
    8000375c:	00009517          	auipc	a0,0x9
    80003760:	aec50513          	addi	a0,a0,-1300 # 8000c248 <CONSOLE_STATUS+0x238>
    80003764:	00002097          	auipc	ra,0x2
    80003768:	644080e7          	jalr	1604(ra) # 80005da8 <_Z11printStringPKc>

    // metedata
    printString("Velicina metapodataka za kmem_cache_s: ");
    8000376c:	00009517          	auipc	a0,0x9
    80003770:	9ec50513          	addi	a0,a0,-1556 # 8000c158 <CONSOLE_STATUS+0x148>
    80003774:	00002097          	auipc	ra,0x2
    80003778:	634080e7          	jalr	1588(ra) # 80005da8 <_Z11printStringPKc>
    printInt(sizeof(kmem_cache_s));
    8000377c:	00000613          	li	a2,0
    80003780:	00a00593          	li	a1,10
    80003784:	08800513          	li	a0,136
    80003788:	00002097          	auipc	ra,0x2
    8000378c:	7b8080e7          	jalr	1976(ra) # 80005f40 <_Z8printIntiii>
    printString("\n");
    80003790:	00009517          	auipc	a0,0x9
    80003794:	ab850513          	addi	a0,a0,-1352 # 8000c248 <CONSOLE_STATUS+0x238>
    80003798:	00002097          	auipc	ra,0x2
    8000379c:	610080e7          	jalr	1552(ra) # 80005da8 <_Z11printStringPKc>
    printString("Velicina metapodataka za Slab: ");
    800037a0:	00009517          	auipc	a0,0x9
    800037a4:	9e050513          	addi	a0,a0,-1568 # 8000c180 <CONSOLE_STATUS+0x170>
    800037a8:	00002097          	auipc	ra,0x2
    800037ac:	600080e7          	jalr	1536(ra) # 80005da8 <_Z11printStringPKc>
    size_t size_of_slab = sizeof(Slab) + this->size_of_arr * sizeof(size_t) + sizeof(size_t);
    800037b0:	04093483          	ld	s1,64(s2)
    800037b4:	00448493          	addi	s1,s1,4
    800037b8:	00349493          	slli	s1,s1,0x3
    printInt(size_of_slab);
    800037bc:	00000613          	li	a2,0
    800037c0:	00a00593          	li	a1,10
    800037c4:	0004851b          	sext.w	a0,s1
    800037c8:	00002097          	auipc	ra,0x2
    800037cc:	778080e7          	jalr	1912(ra) # 80005f40 <_Z8printIntiii>
    printString("\n");
    800037d0:	00009517          	auipc	a0,0x9
    800037d4:	a7850513          	addi	a0,a0,-1416 # 8000c248 <CONSOLE_STATUS+0x238>
    800037d8:	00002097          	auipc	ra,0x2
    800037dc:	5d0080e7          	jalr	1488(ra) # 80005da8 <_Z11printStringPKc>

    // percentage of fullfilment of cache
    size_t neto = sizeof(kmem_cache_s) + num_of_slabs * size_of_slab + num_active_obj * objsize;
    800037e0:	029984b3          	mul	s1,s3,s1
    800037e4:	07093783          	ld	a5,112(s2)
    800037e8:	03093703          	ld	a4,48(s2)
    800037ec:	02e787b3          	mul	a5,a5,a4
    800037f0:	00f484b3          	add	s1,s1,a5
    800037f4:	08848493          	addi	s1,s1,136
    size_t bruto = (1 + num_of_slabs * size_in_blocks) * BLOCK_SIZE;
    800037f8:	04893a03          	ld	s4,72(s2)
    800037fc:	033a0a33          	mul	s4,s4,s3
    80003800:	001a0a13          	addi	s4,s4,1
    80003804:	00ca1a13          	slli	s4,s4,0xc

    printString("Realna iskoriscenost prostora: ");
    80003808:	00009517          	auipc	a0,0x9
    8000380c:	99850513          	addi	a0,a0,-1640 # 8000c1a0 <CONSOLE_STATUS+0x190>
    80003810:	00002097          	auipc	ra,0x2
    80003814:	598080e7          	jalr	1432(ra) # 80005da8 <_Z11printStringPKc>
    printInt(neto);
    80003818:	00000613          	li	a2,0
    8000381c:	00a00593          	li	a1,10
    80003820:	0004851b          	sext.w	a0,s1
    80003824:	00002097          	auipc	ra,0x2
    80003828:	71c080e7          	jalr	1820(ra) # 80005f40 <_Z8printIntiii>
    printString("/");
    8000382c:	00009517          	auipc	a0,0x9
    80003830:	99450513          	addi	a0,a0,-1644 # 8000c1c0 <CONSOLE_STATUS+0x1b0>
    80003834:	00002097          	auipc	ra,0x2
    80003838:	574080e7          	jalr	1396(ra) # 80005da8 <_Z11printStringPKc>
    printInt(bruto);
    8000383c:	00000613          	li	a2,0
    80003840:	00a00593          	li	a1,10
    80003844:	000a051b          	sext.w	a0,s4
    80003848:	00002097          	auipc	ra,0x2
    8000384c:	6f8080e7          	jalr	1784(ra) # 80005f40 <_Z8printIntiii>
    printString("\n");
    80003850:	00009517          	auipc	a0,0x9
    80003854:	9f850513          	addi	a0,a0,-1544 # 8000c248 <CONSOLE_STATUS+0x238>
    80003858:	00002097          	auipc	ra,0x2
    8000385c:	550080e7          	jalr	1360(ra) # 80005da8 <_Z11printStringPKc>
    printString("Efektivna iskoriscenost prostora: ");
    80003860:	00009517          	auipc	a0,0x9
    80003864:	96850513          	addi	a0,a0,-1688 # 8000c1c8 <CONSOLE_STATUS+0x1b8>
    80003868:	00002097          	auipc	ra,0x2
    8000386c:	540080e7          	jalr	1344(ra) # 80005da8 <_Z11printStringPKc>
    printInt(num_active_obj * objsize);
    80003870:	07093503          	ld	a0,112(s2)
    80003874:	03093783          	ld	a5,48(s2)
    80003878:	00000613          	li	a2,0
    8000387c:	00a00593          	li	a1,10
    80003880:	02f5053b          	mulw	a0,a0,a5
    80003884:	00002097          	auipc	ra,0x2
    80003888:	6bc080e7          	jalr	1724(ra) # 80005f40 <_Z8printIntiii>
    printString("/");
    8000388c:	00009517          	auipc	a0,0x9
    80003890:	93450513          	addi	a0,a0,-1740 # 8000c1c0 <CONSOLE_STATUS+0x1b0>
    80003894:	00002097          	auipc	ra,0x2
    80003898:	514080e7          	jalr	1300(ra) # 80005da8 <_Z11printStringPKc>
    size_t real_bruto = num_of_slabs * size_in_blocks * BLOCK_SIZE - num_of_slabs * sizeof(Slab);
    8000389c:	04893503          	ld	a0,72(s2)
    800038a0:	03350533          	mul	a0,a0,s3
    800038a4:	00c51513          	slli	a0,a0,0xc
    800038a8:	00199793          	slli	a5,s3,0x1
    800038ac:	013789b3          	add	s3,a5,s3
    800038b0:	00399993          	slli	s3,s3,0x3
    printInt(real_bruto);
    800038b4:	00000613          	li	a2,0
    800038b8:	00a00593          	li	a1,10
    800038bc:	4135053b          	subw	a0,a0,s3
    800038c0:	00002097          	auipc	ra,0x2
    800038c4:	680080e7          	jalr	1664(ra) # 80005f40 <_Z8printIntiii>
    printString("\n");
    800038c8:	00009517          	auipc	a0,0x9
    800038cc:	98050513          	addi	a0,a0,-1664 # 8000c248 <CONSOLE_STATUS+0x238>
    800038d0:	00002097          	auipc	ra,0x2
    800038d4:	4d8080e7          	jalr	1240(ra) # 80005da8 <_Z11printStringPKc>

    printString("----------------------- END ----------------------\n");
    800038d8:	00009517          	auipc	a0,0x9
    800038dc:	91850513          	addi	a0,a0,-1768 # 8000c1f0 <CONSOLE_STATUS+0x1e0>
    800038e0:	00002097          	auipc	ra,0x2
    800038e4:	4c8080e7          	jalr	1224(ra) # 80005da8 <_Z11printStringPKc>
}
    800038e8:	02813083          	ld	ra,40(sp)
    800038ec:	02013403          	ld	s0,32(sp)
    800038f0:	01813483          	ld	s1,24(sp)
    800038f4:	01013903          	ld	s2,16(sp)
    800038f8:	00813983          	ld	s3,8(sp)
    800038fc:	00013a03          	ld	s4,0(sp)
    80003900:	03010113          	addi	sp,sp,48
    80003904:	00008067          	ret

0000000080003908 <_ZN12kmem_cache_s21print_info_all_cachesEv>:

void kmem_cache_s::print_info_all_caches() {
    80003908:	fe010113          	addi	sp,sp,-32
    8000390c:	00113c23          	sd	ra,24(sp)
    80003910:	00813823          	sd	s0,16(sp)
    80003914:	00913423          	sd	s1,8(sp)
    80003918:	02010413          	addi	s0,sp,32
    printString("\n\t\t\t ### PRINT ALL CACHES ###\t\t\t\n");
    8000391c:	00009517          	auipc	a0,0x9
    80003920:	90c50513          	addi	a0,a0,-1780 # 8000c228 <CONSOLE_STATUS+0x218>
    80003924:	00002097          	auipc	ra,0x2
    80003928:	484080e7          	jalr	1156(ra) # 80005da8 <_Z11printStringPKc>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    8000392c:	0000c497          	auipc	s1,0xc
    80003930:	f644b483          	ld	s1,-156(s1) # 8000f890 <_ZN12kmem_cache_s4headE>
    80003934:	00048c63          	beqz	s1,8000394c <_ZN12kmem_cache_s21print_info_all_cachesEv+0x44>
        tmp->kmem_cache_info();
    80003938:	00048513          	mv	a0,s1
    8000393c:	00000097          	auipc	ra,0x0
    80003940:	b7c080e7          	jalr	-1156(ra) # 800034b8 <_ZN12kmem_cache_s15kmem_cache_infoEv>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003944:	0684b483          	ld	s1,104(s1)
    80003948:	fedff06f          	j	80003934 <_ZN12kmem_cache_s21print_info_all_cachesEv+0x2c>
    }
    printString("\t\t\t\t    ### END ###\t\t\t\n");
    8000394c:	00009517          	auipc	a0,0x9
    80003950:	90450513          	addi	a0,a0,-1788 # 8000c250 <CONSOLE_STATUS+0x240>
    80003954:	00002097          	auipc	ra,0x2
    80003958:	454080e7          	jalr	1108(ra) # 80005da8 <_Z11printStringPKc>
}
    8000395c:	01813083          	ld	ra,24(sp)
    80003960:	01013403          	ld	s0,16(sp)
    80003964:	00813483          	ld	s1,8(sp)
    80003968:	02010113          	addi	sp,sp,32
    8000396c:	00008067          	ret

0000000080003970 <_ZN4Slab42return_first_free_object_and_rearange_listEii>:

void *Slab::return_first_free_object_and_rearange_list(int number_of_objects_in_slab, int size_of_object) {
    80003970:	fd010113          	addi	sp,sp,-48
    80003974:	02113423          	sd	ra,40(sp)
    80003978:	02813023          	sd	s0,32(sp)
    8000397c:	00913c23          	sd	s1,24(sp)
    80003980:	01213823          	sd	s2,16(sp)
    80003984:	01313423          	sd	s3,8(sp)
    80003988:	01413023          	sd	s4,0(sp)
    8000398c:	03010413          	addi	s0,sp,48
    80003990:	00050993          	mv	s3,a0
    80003994:	00058913          	mv	s2,a1
    80003998:	00060a13          	mv	s4,a2
    int i = 0;
    8000399c:	00000493          	li	s1,0
    while(i < number_of_objects_in_slab && this->is_active(i)){
    800039a0:	0324d063          	bge	s1,s2,800039c0 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x50>
    800039a4:	00048593          	mv	a1,s1
    800039a8:	00098513          	mv	a0,s3
    800039ac:	fffff097          	auipc	ra,0xfffff
    800039b0:	774080e7          	jalr	1908(ra) # 80003120 <_ZN4Slab9is_activeEi>
    800039b4:	00050663          	beqz	a0,800039c0 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x50>
        i++;
    800039b8:	0014849b          	addiw	s1,s1,1
    while(i < number_of_objects_in_slab && this->is_active(i)){
    800039bc:	fe5ff06f          	j	800039a0 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x30>
    }
    if(i >= number_of_objects_in_slab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    800039c0:	0524d263          	bge	s1,s2,80003a04 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x94>
    this->set_mask(i, true);
    800039c4:	00100613          	li	a2,1
    800039c8:	00048593          	mv	a1,s1
    800039cc:	00098513          	mv	a0,s3
    800039d0:	fffff097          	auipc	ra,0xfffff
    800039d4:	6d4080e7          	jalr	1748(ra) # 800030a4 <_ZN4Slab8set_maskEib>
    return (void*)(this->first_addr + size_of_object * i);
    800039d8:	0109b503          	ld	a0,16(s3)
    800039dc:	034484bb          	mulw	s1,s1,s4
    800039e0:	00950533          	add	a0,a0,s1
}
    800039e4:	02813083          	ld	ra,40(sp)
    800039e8:	02013403          	ld	s0,32(sp)
    800039ec:	01813483          	ld	s1,24(sp)
    800039f0:	01013903          	ld	s2,16(sp)
    800039f4:	00813983          	ld	s3,8(sp)
    800039f8:	00013a03          	ld	s4,0(sp)
    800039fc:	03010113          	addi	sp,sp,48
    80003a00:	00008067          	ret
    if(i >= number_of_objects_in_slab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    80003a04:	00000513          	li	a0,0
    80003a08:	fddff06f          	j	800039e4 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x74>

0000000080003a0c <_ZN12kmem_cache_s16kmem_cache_allocEv>:
void *kmem_cache_s::kmem_cache_alloc() {
    80003a0c:	fe010113          	addi	sp,sp,-32
    80003a10:	00113c23          	sd	ra,24(sp)
    80003a14:	00813823          	sd	s0,16(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	02010413          	addi	s0,sp,32
    80003a20:	00050493          	mv	s1,a0
    if(num_slabs_partial != 0){
    80003a24:	02053783          	ld	a5,32(a0)
    80003a28:	06079e63          	bnez	a5,80003aa4 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x98>
    else if(num_slabs_free != 0){
    80003a2c:	02853783          	ld	a5,40(a0)
    80003a30:	0e078263          	beqz	a5,80003b14 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x108>
        void* addr1 = this->slabs_free->return_first_free_object_and_rearange_list(this->num, this->objsize);
    80003a34:	03052603          	lw	a2,48(a0)
    80003a38:	03852583          	lw	a1,56(a0)
    80003a3c:	01053503          	ld	a0,16(a0)
    80003a40:	00000097          	auipc	ra,0x0
    80003a44:	f30080e7          	jalr	-208(ra) # 80003970 <_ZN4Slab42return_first_free_object_and_rearange_listEii>
        this->num_active_obj++;
    80003a48:	0704b783          	ld	a5,112(s1)
    80003a4c:	00178793          	addi	a5,a5,1
    80003a50:	06f4b823          	sd	a5,112(s1)
        Slab* tmp = this->slabs_free;
    80003a54:	0104b783          	ld	a5,16(s1)
        this->slabs_free = this->slabs_free->next;
    80003a58:	0087b703          	ld	a4,8(a5)
    80003a5c:	00e4b823          	sd	a4,16(s1)
        tmp->next = this->slabs_partial;
    80003a60:	0084b703          	ld	a4,8(s1)
    80003a64:	00e7b423          	sd	a4,8(a5)
    void increment_num_of_active(){num_active++;}
    80003a68:	0007b703          	ld	a4,0(a5)
    80003a6c:	00170713          	addi	a4,a4,1
    80003a70:	00e7b023          	sd	a4,0(a5)
        this->slabs_partial = tmp;
    80003a74:	00f4b423          	sd	a5,8(s1)
        this->num_slabs_free--;
    80003a78:	0284b783          	ld	a5,40(s1)
    80003a7c:	fff78793          	addi	a5,a5,-1
    80003a80:	02f4b423          	sd	a5,40(s1)
        this->num_slabs_partial++;
    80003a84:	0204b783          	ld	a5,32(s1)
    80003a88:	00178793          	addi	a5,a5,1
    80003a8c:	02f4b023          	sd	a5,32(s1)
}
    80003a90:	01813083          	ld	ra,24(sp)
    80003a94:	01013403          	ld	s0,16(sp)
    80003a98:	00813483          	ld	s1,8(sp)
    80003a9c:	02010113          	addi	sp,sp,32
    80003aa0:	00008067          	ret
        void* addr = this->slabs_partial->return_first_free_object_and_rearange_list(this->num, this->objsize);
    80003aa4:	03052603          	lw	a2,48(a0)
    80003aa8:	03852583          	lw	a1,56(a0)
    80003aac:	00853503          	ld	a0,8(a0)
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	ec0080e7          	jalr	-320(ra) # 80003970 <_ZN4Slab42return_first_free_object_and_rearange_listEii>
        this->num_active_obj++;
    80003ab8:	0704b783          	ld	a5,112(s1)
    80003abc:	00178793          	addi	a5,a5,1
    80003ac0:	06f4b823          	sd	a5,112(s1)
        this->slabs_partial->increment_num_of_active();
    80003ac4:	0084b703          	ld	a4,8(s1)
    80003ac8:	00073783          	ld	a5,0(a4)
    80003acc:	00178793          	addi	a5,a5,1
    80003ad0:	00f73023          	sd	a5,0(a4)
        if(this->slabs_partial->get_number_of_active_objects() == this->num){
    80003ad4:	0084b783          	ld	a5,8(s1)
    size_t get_number_of_active_objects(){return num_active;}
    80003ad8:	0007b703          	ld	a4,0(a5)
    80003adc:	0384b683          	ld	a3,56(s1)
    80003ae0:	fae698e3          	bne	a3,a4,80003a90 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>
            this->slabs_partial = this->slabs_partial->next;
    80003ae4:	0087b703          	ld	a4,8(a5)
    80003ae8:	00e4b423          	sd	a4,8(s1)
            tmp->next = this->slabs_full;
    80003aec:	0004b703          	ld	a4,0(s1)
    80003af0:	00e7b423          	sd	a4,8(a5)
            this->slabs_full = tmp;
    80003af4:	00f4b023          	sd	a5,0(s1)
            this->num_slabs_partial--;
    80003af8:	0204b783          	ld	a5,32(s1)
    80003afc:	fff78793          	addi	a5,a5,-1
    80003b00:	02f4b023          	sd	a5,32(s1)
            this->num_slabs_full++;
    80003b04:	0184b783          	ld	a5,24(s1)
    80003b08:	00178793          	addi	a5,a5,1
    80003b0c:	00f4bc23          	sd	a5,24(s1)
        return addr;
    80003b10:	f81ff06f          	j	80003a90 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>
        create_free_slab();
    80003b14:	fffff097          	auipc	ra,0xfffff
    80003b18:	2d8080e7          	jalr	728(ra) # 80002dec <_ZN12kmem_cache_s16create_free_slabEv>
        this->growing = true;
    80003b1c:	00100793          	li	a5,1
    80003b20:	06f48c23          	sb	a5,120(s1)
        return nullptr;
    80003b24:	00000513          	li	a0,0
    80003b28:	f69ff06f          	j	80003a90 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>

0000000080003b2c <_ZN12kmem_cache_s7kmallocEm>:
void *kmem_cache_s::kmalloc(size_t size) {
    80003b2c:	fe010113          	addi	sp,sp,-32
    80003b30:	00113c23          	sd	ra,24(sp)
    80003b34:	00813823          	sd	s0,16(sp)
    80003b38:	00913423          	sd	s1,8(sp)
    80003b3c:	01213023          	sd	s2,0(sp)
    80003b40:	02010413          	addi	s0,sp,32
    80003b44:	00050493          	mv	s1,a0
    const char* n = (const char*)concatenate_int_to_char_ptr((int)size);
    80003b48:	0005051b          	sext.w	a0,a0
    80003b4c:	fffff097          	auipc	ra,0xfffff
    80003b50:	af4080e7          	jalr	-1292(ra) # 80002640 <_Z27concatenate_int_to_char_ptri>
    80003b54:	00050913          	mv	s2,a0
    kmem_cache_s* tmp = check_if_name_exists(n);
    80003b58:	00000097          	auipc	ra,0x0
    80003b5c:	80c080e7          	jalr	-2036(ra) # 80003364 <_ZN12kmem_cache_s20check_if_name_existsEPKc>
    if(tmp == nullptr){
    80003b60:	02050263          	beqz	a0,80003b84 <_ZN12kmem_cache_s7kmallocEm+0x58>
    void* elem = tmp->kmem_cache_alloc();
    80003b64:	00000097          	auipc	ra,0x0
    80003b68:	ea8080e7          	jalr	-344(ra) # 80003a0c <_ZN12kmem_cache_s16kmem_cache_allocEv>
}
    80003b6c:	01813083          	ld	ra,24(sp)
    80003b70:	01013403          	ld	s0,16(sp)
    80003b74:	00813483          	ld	s1,8(sp)
    80003b78:	00013903          	ld	s2,0(sp)
    80003b7c:	02010113          	addi	sp,sp,32
    80003b80:	00008067          	ret
        tmp = (kmem_cache_s*)kmem_cache_create(n, size, nullptr, nullptr);
    80003b84:	00000693          	li	a3,0
    80003b88:	00000613          	li	a2,0
    80003b8c:	00048593          	mv	a1,s1
    80003b90:	00090513          	mv	a0,s2
    80003b94:	fffff097          	auipc	ra,0xfffff
    80003b98:	374080e7          	jalr	884(ra) # 80002f08 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>
        if(!tmp)return nullptr;
    80003b9c:	fc0514e3          	bnez	a0,80003b64 <_ZN12kmem_cache_s7kmallocEm+0x38>
    80003ba0:	fcdff06f          	j	80003b6c <_ZN12kmem_cache_s7kmallocEm+0x40>

0000000080003ba4 <_ZN4Slab10clear_slabEiiPFvPvE>:

void Slab::clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *)) {
    if(dtor == nullptr)return;
    80003ba4:	08068a63          	beqz	a3,80003c38 <_ZN4Slab10clear_slabEiiPFvPvE+0x94>
void Slab::clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *)) {
    80003ba8:	fc010113          	addi	sp,sp,-64
    80003bac:	02113c23          	sd	ra,56(sp)
    80003bb0:	02813823          	sd	s0,48(sp)
    80003bb4:	02913423          	sd	s1,40(sp)
    80003bb8:	03213023          	sd	s2,32(sp)
    80003bbc:	01313c23          	sd	s3,24(sp)
    80003bc0:	01413823          	sd	s4,16(sp)
    80003bc4:	01513423          	sd	s5,8(sp)
    80003bc8:	04010413          	addi	s0,sp,64
    80003bcc:	00050913          	mv	s2,a0
    80003bd0:	00058993          	mv	s3,a1
    80003bd4:	00060a93          	mv	s5,a2
    80003bd8:	00068a13          	mv	s4,a3
    for(int i = 0; i < num_of_objects_in_slab; i++){
    80003bdc:	00000493          	li	s1,0
    80003be0:	0080006f          	j	80003be8 <_ZN4Slab10clear_slabEiiPFvPvE+0x44>
    80003be4:	0014849b          	addiw	s1,s1,1
    80003be8:	0334d663          	bge	s1,s3,80003c14 <_ZN4Slab10clear_slabEiiPFvPvE+0x70>
        if(this->is_active(i)){
    80003bec:	00048593          	mv	a1,s1
    80003bf0:	00090513          	mv	a0,s2
    80003bf4:	fffff097          	auipc	ra,0xfffff
    80003bf8:	52c080e7          	jalr	1324(ra) # 80003120 <_ZN4Slab9is_activeEi>
    80003bfc:	fe0504e3          	beqz	a0,80003be4 <_ZN4Slab10clear_slabEiiPFvPvE+0x40>
            dtor((void*)(this->first_addr + i * objsize));
    80003c00:	01093503          	ld	a0,16(s2)
    80003c04:	035487bb          	mulw	a5,s1,s5
    80003c08:	00f50533          	add	a0,a0,a5
    80003c0c:	000a00e7          	jalr	s4
    80003c10:	fd5ff06f          	j	80003be4 <_ZN4Slab10clear_slabEiiPFvPvE+0x40>
        }
    }
}
    80003c14:	03813083          	ld	ra,56(sp)
    80003c18:	03013403          	ld	s0,48(sp)
    80003c1c:	02813483          	ld	s1,40(sp)
    80003c20:	02013903          	ld	s2,32(sp)
    80003c24:	01813983          	ld	s3,24(sp)
    80003c28:	01013a03          	ld	s4,16(sp)
    80003c2c:	00813a83          	ld	s5,8(sp)
    80003c30:	04010113          	addi	sp,sp,64
    80003c34:	00008067          	ret
    80003c38:	00008067          	ret

0000000080003c3c <_ZN12kmem_cache_s17kmem_cache_shrinkEv>:
size_t kmem_cache_s::kmem_cache_shrink() {
    80003c3c:	fd010113          	addi	sp,sp,-48
    80003c40:	02113423          	sd	ra,40(sp)
    80003c44:	02813023          	sd	s0,32(sp)
    80003c48:	00913c23          	sd	s1,24(sp)
    80003c4c:	01213823          	sd	s2,16(sp)
    80003c50:	01313423          	sd	s3,8(sp)
    80003c54:	01413023          	sd	s4,0(sp)
    80003c58:	03010413          	addi	s0,sp,48
    80003c5c:	00050913          	mv	s2,a0
    if(this->growing){
    80003c60:	07854783          	lbu	a5,120(a0)
    80003c64:	00079863          	bnez	a5,80003c74 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x38>
    Slab* curr = this->slabs_free, *prev;
    80003c68:	01053483          	ld	s1,16(a0)
    int cnt = (int)this->num_slabs_free;
    80003c6c:	02852a03          	lw	s4,40(a0)
    80003c70:	0440006f          	j	80003cb4 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x78>
        this->growing = false;
    80003c74:	06050c23          	sb	zero,120(a0)
        return 0;
    80003c78:	00000513          	li	a0,0
    80003c7c:	0880006f          	j	80003d04 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0xc8>
    80003c80:	0000c517          	auipc	a0,0xc
    80003c84:	c2050513          	addi	a0,a0,-992 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003c88:	ffffe097          	auipc	ra,0xffffe
    80003c8c:	f68080e7          	jalr	-152(ra) # 80001bf0 <_ZN11BuddySystemC1Ev>
    80003c90:	00100793          	li	a5,1
    80003c94:	0000c717          	auipc	a4,0xc
    80003c98:	c0f70223          	sb	a5,-1020(a4) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003c9c:	00048593          	mv	a1,s1
    80003ca0:	0000c517          	auipc	a0,0xc
    80003ca4:	c0050513          	addi	a0,a0,-1024 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	248080e7          	jalr	584(ra) # 80001ef0 <_ZN11BuddySystem9buddyFreeEm>
        curr = curr->next;
    80003cb0:	00098493          	mv	s1,s3
    while(curr){
    80003cb4:	02048863          	beqz	s1,80003ce4 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0xa8>
        curr = curr->next;
    80003cb8:	0084b983          	ld	s3,8(s1)
        prev->clear_slab(num, objsize, dtor);
    80003cbc:	05893683          	ld	a3,88(s2)
    80003cc0:	03092603          	lw	a2,48(s2)
    80003cc4:	03892583          	lw	a1,56(s2)
    80003cc8:	00048513          	mv	a0,s1
    80003ccc:	00000097          	auipc	ra,0x0
    80003cd0:	ed8080e7          	jalr	-296(ra) # 80003ba4 <_ZN4Slab10clear_slabEiiPFvPvE>
    80003cd4:	0000c797          	auipc	a5,0xc
    80003cd8:	bc47c783          	lbu	a5,-1084(a5) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003cdc:	fc0790e3          	bnez	a5,80003c9c <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x60>
    80003ce0:	fa1ff06f          	j	80003c80 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x44>
    this->slabs_free = nullptr;
    80003ce4:	00093823          	sd	zero,16(s2)
    this->num_slabs_free = 0;
    80003ce8:	02093423          	sd	zero,40(s2)
    this->growing = false;
    80003cec:	06090c23          	sb	zero,120(s2)
    this->shrink++;
    80003cf0:	08093783          	ld	a5,128(s2)
    80003cf4:	00178793          	addi	a5,a5,1
    80003cf8:	08f93023          	sd	a5,128(s2)
    return cnt * this->size_in_blocks;
    80003cfc:	04893503          	ld	a0,72(s2)
    80003d00:	02aa0533          	mul	a0,s4,a0
}
    80003d04:	02813083          	ld	ra,40(sp)
    80003d08:	02013403          	ld	s0,32(sp)
    80003d0c:	01813483          	ld	s1,24(sp)
    80003d10:	01013903          	ld	s2,16(sp)
    80003d14:	00813983          	ld	s3,8(sp)
    80003d18:	00013a03          	ld	s4,0(sp)
    80003d1c:	03010113          	addi	sp,sp,48
    80003d20:	00008067          	ret

0000000080003d24 <_ZN12kmem_cache_s18kmem_cache_destroyEm>:
int kmem_cache_s::kmem_cache_destroy(size_t addr) {
    80003d24:	fd010113          	addi	sp,sp,-48
    80003d28:	02113423          	sd	ra,40(sp)
    80003d2c:	02813023          	sd	s0,32(sp)
    80003d30:	00913c23          	sd	s1,24(sp)
    80003d34:	01213823          	sd	s2,16(sp)
    80003d38:	01313423          	sd	s3,8(sp)
    80003d3c:	01413023          	sd	s4,0(sp)
    80003d40:	03010413          	addi	s0,sp,48
    80003d44:	00050493          	mv	s1,a0
    80003d48:	00058a13          	mv	s4,a1
    Slab *prev = nullptr, *tmp = this->slabs_full;
    80003d4c:	00053903          	ld	s2,0(a0)
    80003d50:	01c0006f          	j	80003d6c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x48>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003d54:	00090593          	mv	a1,s2
    80003d58:	0000c517          	auipc	a0,0xc
    80003d5c:	b4850513          	addi	a0,a0,-1208 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	190080e7          	jalr	400(ra) # 80001ef0 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003d68:	00098913          	mv	s2,s3
    while (tmp) {
    80003d6c:	04090663          	beqz	s2,80003db8 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x94>
        tmp = tmp->next;
    80003d70:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    80003d74:	0584b683          	ld	a3,88(s1)
    80003d78:	0304a603          	lw	a2,48(s1)
    80003d7c:	0384a583          	lw	a1,56(s1)
    80003d80:	00090513          	mv	a0,s2
    80003d84:	00000097          	auipc	ra,0x0
    80003d88:	e20080e7          	jalr	-480(ra) # 80003ba4 <_ZN4Slab10clear_slabEiiPFvPvE>
    80003d8c:	0000c797          	auipc	a5,0xc
    80003d90:	b0c7c783          	lbu	a5,-1268(a5) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003d94:	fc0790e3          	bnez	a5,80003d54 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x30>
    80003d98:	0000c517          	auipc	a0,0xc
    80003d9c:	b0850513          	addi	a0,a0,-1272 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003da0:	ffffe097          	auipc	ra,0xffffe
    80003da4:	e50080e7          	jalr	-432(ra) # 80001bf0 <_ZN11BuddySystemC1Ev>
    80003da8:	00100793          	li	a5,1
    80003dac:	0000c717          	auipc	a4,0xc
    80003db0:	aef70623          	sb	a5,-1300(a4) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003db4:	fa1ff06f          	j	80003d54 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x30>
    prev = nullptr; tmp = this->slabs_partial;
    80003db8:	0084b903          	ld	s2,8(s1)
    80003dbc:	0380006f          	j	80003df4 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xd0>
    80003dc0:	0000c517          	auipc	a0,0xc
    80003dc4:	ae050513          	addi	a0,a0,-1312 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003dc8:	ffffe097          	auipc	ra,0xffffe
    80003dcc:	e28080e7          	jalr	-472(ra) # 80001bf0 <_ZN11BuddySystemC1Ev>
    80003dd0:	00100793          	li	a5,1
    80003dd4:	0000c717          	auipc	a4,0xc
    80003dd8:	acf70223          	sb	a5,-1340(a4) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003ddc:	00090593          	mv	a1,s2
    80003de0:	0000c517          	auipc	a0,0xc
    80003de4:	ac050513          	addi	a0,a0,-1344 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003de8:	ffffe097          	auipc	ra,0xffffe
    80003dec:	108080e7          	jalr	264(ra) # 80001ef0 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003df0:	00098913          	mv	s2,s3
    while (tmp) {
    80003df4:	02090863          	beqz	s2,80003e24 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x100>
        tmp = tmp->next;
    80003df8:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    80003dfc:	0584b683          	ld	a3,88(s1)
    80003e00:	0304a603          	lw	a2,48(s1)
    80003e04:	0384a583          	lw	a1,56(s1)
    80003e08:	00090513          	mv	a0,s2
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	d98080e7          	jalr	-616(ra) # 80003ba4 <_ZN4Slab10clear_slabEiiPFvPvE>
    80003e14:	0000c797          	auipc	a5,0xc
    80003e18:	a847c783          	lbu	a5,-1404(a5) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003e1c:	fc0790e3          	bnez	a5,80003ddc <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xb8>
    80003e20:	fa1ff06f          	j	80003dc0 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x9c>
    prev = nullptr; tmp = this->slabs_free;
    80003e24:	0104b903          	ld	s2,16(s1)
    80003e28:	0380006f          	j	80003e60 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x13c>
    80003e2c:	0000c517          	auipc	a0,0xc
    80003e30:	a7450513          	addi	a0,a0,-1420 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	dbc080e7          	jalr	-580(ra) # 80001bf0 <_ZN11BuddySystemC1Ev>
    80003e3c:	00100793          	li	a5,1
    80003e40:	0000c717          	auipc	a4,0xc
    80003e44:	a4f70c23          	sb	a5,-1448(a4) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003e48:	00090593          	mv	a1,s2
    80003e4c:	0000c517          	auipc	a0,0xc
    80003e50:	a5450513          	addi	a0,a0,-1452 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003e54:	ffffe097          	auipc	ra,0xffffe
    80003e58:	09c080e7          	jalr	156(ra) # 80001ef0 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003e5c:	00098913          	mv	s2,s3
    while (tmp) {
    80003e60:	02090863          	beqz	s2,80003e90 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x16c>
        tmp = tmp->next;
    80003e64:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    80003e68:	0584b683          	ld	a3,88(s1)
    80003e6c:	0304a603          	lw	a2,48(s1)
    80003e70:	0384a583          	lw	a1,56(s1)
    80003e74:	00090513          	mv	a0,s2
    80003e78:	00000097          	auipc	ra,0x0
    80003e7c:	d2c080e7          	jalr	-724(ra) # 80003ba4 <_ZN4Slab10clear_slabEiiPFvPvE>
    80003e80:	0000c797          	auipc	a5,0xc
    80003e84:	a187c783          	lbu	a5,-1512(a5) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003e88:	fc0790e3          	bnez	a5,80003e48 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x124>
    80003e8c:	fa1ff06f          	j	80003e2c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x108>
    kmem_cache_s* cache = kmem_cache_s::head, *prev_cache = nullptr;
    80003e90:	0000c797          	auipc	a5,0xc
    80003e94:	a007b783          	ld	a5,-1536(a5) # 8000f890 <_ZN12kmem_cache_s4headE>
    80003e98:	02c0006f          	j	80003ec4 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1a0>
    80003e9c:	0000c517          	auipc	a0,0xc
    80003ea0:	a0450513          	addi	a0,a0,-1532 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003ea4:	ffffe097          	auipc	ra,0xffffe
    80003ea8:	d4c080e7          	jalr	-692(ra) # 80001bf0 <_ZN11BuddySystemC1Ev>
    80003eac:	00100793          	li	a5,1
    80003eb0:	0000c717          	auipc	a4,0xc
    80003eb4:	9ef70423          	sb	a5,-1560(a4) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003eb8:	0340006f          	j	80003eec <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1c8>
        prev_cache = cache;
    80003ebc:	00078913          	mv	s2,a5
        cache = cache->next;
    80003ec0:	0687b783          	ld	a5,104(a5)
    while(cache){
    80003ec4:	04078263          	beqz	a5,80003f08 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1e4>
        if((size_t)cache == addr){
    80003ec8:	00078493          	mv	s1,a5
    80003ecc:	ff4798e3          	bne	a5,s4,80003ebc <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x198>
            if(prev_cache){
    80003ed0:	fe0906e3          	beqz	s2,80003ebc <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x198>
                prev_cache->next = cache->next;
    80003ed4:	0687b703          	ld	a4,104(a5)
    80003ed8:	06e93423          	sd	a4,104(s2)
                cache->next = nullptr;
    80003edc:	0607b423          	sd	zero,104(a5)
    80003ee0:	0000c797          	auipc	a5,0xc
    80003ee4:	9b87c783          	lbu	a5,-1608(a5) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003ee8:	fa078ae3          	beqz	a5,80003e9c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x178>
                BuddySystem::getInstance().buddyFree((size_t)cache);
    80003eec:	00048593          	mv	a1,s1
    80003ef0:	0000c517          	auipc	a0,0xc
    80003ef4:	9b050513          	addi	a0,a0,-1616 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	ff8080e7          	jalr	-8(ra) # 80001ef0 <_ZN11BuddySystem9buddyFreeEm>
                return 0;
    80003f00:	00000513          	li	a0,0
    80003f04:	0080006f          	j	80003f0c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1e8>
    return -1;
    80003f08:	fff00513          	li	a0,-1
}
    80003f0c:	02813083          	ld	ra,40(sp)
    80003f10:	02013403          	ld	s0,32(sp)
    80003f14:	01813483          	ld	s1,24(sp)
    80003f18:	01013903          	ld	s2,16(sp)
    80003f1c:	00813983          	ld	s3,8(sp)
    80003f20:	00013a03          	ld	s4,0(sp)
    80003f24:	03010113          	addi	sp,sp,48
    80003f28:	00008067          	ret

0000000080003f2c <_ZN6Thread11wrapper_runEPv>:
    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));

}

void Thread::wrapper_run(void* thread) {
    80003f2c:	ff010113          	addi	sp,sp,-16
    80003f30:	00113423          	sd	ra,8(sp)
    80003f34:	00813023          	sd	s0,0(sp)
    80003f38:	01010413          	addi	s0,sp,16
    ((Thread*)(thread))->run();
    80003f3c:	00053783          	ld	a5,0(a0)
    80003f40:	0107b783          	ld	a5,16(a5)
    80003f44:	000780e7          	jalr	a5
}
    80003f48:	00813083          	ld	ra,8(sp)
    80003f4c:	00013403          	ld	s0,0(sp)
    80003f50:	01010113          	addi	sp,sp,16
    80003f54:	00008067          	ret

0000000080003f58 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80003f58:	fe010113          	addi	sp,sp,-32
    80003f5c:	00113c23          	sd	ra,24(sp)
    80003f60:	00813823          	sd	s0,16(sp)
    80003f64:	00913423          	sd	s1,8(sp)
    80003f68:	02010413          	addi	s0,sp,32
    80003f6c:	0000b797          	auipc	a5,0xb
    80003f70:	5d478793          	addi	a5,a5,1492 # 8000f540 <_ZTV9Semaphore+0x10>
    80003f74:	00f53023          	sd	a5,0(a0)
    delete (MySemaphore*)myHandle;
    80003f78:	00853483          	ld	s1,8(a0)
    80003f7c:	02048863          	beqz	s1,80003fac <_ZN9SemaphoreD1Ev+0x54>
    ~MySemaphore(){ sem_close(this);}
    80003f80:	00048513          	mv	a0,s1
    80003f84:	ffffe097          	auipc	ra,0xffffe
    80003f88:	2b8080e7          	jalr	696(ra) # 8000223c <_ZN11MySemaphore9sem_closeEPS_>
    80003f8c:	0000c797          	auipc	a5,0xc
    80003f90:	8a47c783          	lbu	a5,-1884(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003f94:	02078663          	beqz	a5,80003fc0 <_ZN9SemaphoreD1Ev+0x68>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80003f98:	00048593          	mv	a1,s1
    80003f9c:	0000c517          	auipc	a0,0xc
    80003fa0:	89c50513          	addi	a0,a0,-1892 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80003fa4:	00001097          	auipc	ra,0x1
    80003fa8:	494080e7          	jalr	1172(ra) # 80005438 <_ZN15MemoryAllocator11memory_freeEPv>
}
    80003fac:	01813083          	ld	ra,24(sp)
    80003fb0:	01013403          	ld	s0,16(sp)
    80003fb4:	00813483          	ld	s1,8(sp)
    80003fb8:	02010113          	addi	sp,sp,32
    80003fbc:	00008067          	ret
    MemoryAllocator(){
    80003fc0:	0000c617          	auipc	a2,0xc
    80003fc4:	87860613          	addi	a2,a2,-1928 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80003fc8:	0000c797          	auipc	a5,0xc
    80003fcc:	8207b783          	ld	a5,-2016(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003fd0:	0007b703          	ld	a4,0(a5)
    80003fd4:	0000b797          	auipc	a5,0xb
    80003fd8:	7cc7b783          	ld	a5,1996(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003fdc:	0007b783          	ld	a5,0(a5)
    80003fe0:	40f706b3          	sub	a3,a4,a5
    80003fe4:	0036d693          	srli	a3,a3,0x3
    80003fe8:	00d787b3          	add	a5,a5,a3
    80003fec:	00178793          	addi	a5,a5,1
    80003ff0:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80003ff4:	fff70713          	addi	a4,a4,-1
    80003ff8:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80003ffc:	03f7f693          	andi	a3,a5,63
    80004000:	00068663          	beqz	a3,8000400c <_ZN9SemaphoreD1Ev+0xb4>
    80004004:	04000613          	li	a2,64
    80004008:	40d606b3          	sub	a3,a2,a3
    8000400c:	00d787b3          	add	a5,a5,a3
    80004010:	0000c697          	auipc	a3,0xc
    80004014:	82f6b423          	sd	a5,-2008(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80004018:	40f70733          	sub	a4,a4,a5
    8000401c:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80004020:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004024:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004028:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    8000402c:	00100793          	li	a5,1
    80004030:	0000c717          	auipc	a4,0xc
    80004034:	80f70023          	sb	a5,-2048(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004038:	f61ff06f          	j	80003f98 <_ZN9SemaphoreD1Ev+0x40>

000000008000403c <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    8000403c:	fe010113          	addi	sp,sp,-32
    80004040:	00113c23          	sd	ra,24(sp)
    80004044:	00813823          	sd	s0,16(sp)
    80004048:	00913423          	sd	s1,8(sp)
    8000404c:	02010413          	addi	s0,sp,32
    80004050:	0000b797          	auipc	a5,0xb
    80004054:	4c878793          	addi	a5,a5,1224 # 8000f518 <_ZTV6Thread+0x10>
    80004058:	00f53023          	sd	a5,0(a0)
    delete (TCB*)(myHandle);
    8000405c:	00853483          	ld	s1,8(a0)
    80004060:	04048263          	beqz	s1,800040a4 <_ZN6ThreadD1Ev+0x68>
    80004064:	0000b797          	auipc	a5,0xb
    80004068:	7cc7c783          	lbu	a5,1996(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000406c:	04078663          	beqz	a5,800040b8 <_ZN6ThreadD1Ev+0x7c>

class TCB{
public:

    ~TCB(){
        MemoryAllocator::getInstance().memory_free((void*)stack);
    80004070:	0104b583          	ld	a1,16(s1)
    80004074:	0000b517          	auipc	a0,0xb
    80004078:	7c450513          	addi	a0,a0,1988 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    8000407c:	00001097          	auipc	ra,0x1
    80004080:	3bc080e7          	jalr	956(ra) # 80005438 <_ZN15MemoryAllocator11memory_freeEPv>
    80004084:	0000b797          	auipc	a5,0xb
    80004088:	7ac7c783          	lbu	a5,1964(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000408c:	0a078463          	beqz	a5,80004134 <_ZN6ThreadD1Ev+0xf8>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80004090:	00048593          	mv	a1,s1
    80004094:	0000b517          	auipc	a0,0xb
    80004098:	7a450513          	addi	a0,a0,1956 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    8000409c:	00001097          	auipc	ra,0x1
    800040a0:	39c080e7          	jalr	924(ra) # 80005438 <_ZN15MemoryAllocator11memory_freeEPv>
}
    800040a4:	01813083          	ld	ra,24(sp)
    800040a8:	01013403          	ld	s0,16(sp)
    800040ac:	00813483          	ld	s1,8(sp)
    800040b0:	02010113          	addi	sp,sp,32
    800040b4:	00008067          	ret
    MemoryAllocator(){
    800040b8:	0000b617          	auipc	a2,0xb
    800040bc:	78060613          	addi	a2,a2,1920 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800040c0:	0000b797          	auipc	a5,0xb
    800040c4:	7287b783          	ld	a5,1832(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800040c8:	0007b703          	ld	a4,0(a5)
    800040cc:	0000b797          	auipc	a5,0xb
    800040d0:	6d47b783          	ld	a5,1748(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800040d4:	0007b783          	ld	a5,0(a5)
    800040d8:	40f706b3          	sub	a3,a4,a5
    800040dc:	0036d693          	srli	a3,a3,0x3
    800040e0:	00d787b3          	add	a5,a5,a3
    800040e4:	00178793          	addi	a5,a5,1
    800040e8:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800040ec:	fff70713          	addi	a4,a4,-1
    800040f0:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800040f4:	03f7f693          	andi	a3,a5,63
    800040f8:	00068663          	beqz	a3,80004104 <_ZN6ThreadD1Ev+0xc8>
    800040fc:	04000613          	li	a2,64
    80004100:	40d606b3          	sub	a3,a2,a3
    80004104:	00d787b3          	add	a5,a5,a3
    80004108:	0000b697          	auipc	a3,0xb
    8000410c:	72f6b823          	sd	a5,1840(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80004110:	40f70733          	sub	a4,a4,a5
    80004114:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80004118:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    8000411c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004120:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004124:	00100793          	li	a5,1
    80004128:	0000b717          	auipc	a4,0xb
    8000412c:	70f70423          	sb	a5,1800(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004130:	f41ff06f          	j	80004070 <_ZN6ThreadD1Ev+0x34>
    MemoryAllocator(){
    80004134:	0000b617          	auipc	a2,0xb
    80004138:	70460613          	addi	a2,a2,1796 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    8000413c:	0000b797          	auipc	a5,0xb
    80004140:	6ac7b783          	ld	a5,1708(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004144:	0007b703          	ld	a4,0(a5)
    80004148:	0000b797          	auipc	a5,0xb
    8000414c:	6587b783          	ld	a5,1624(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004150:	0007b783          	ld	a5,0(a5)
    80004154:	40f706b3          	sub	a3,a4,a5
    80004158:	0036d693          	srli	a3,a3,0x3
    8000415c:	00d787b3          	add	a5,a5,a3
    80004160:	00178793          	addi	a5,a5,1
    80004164:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80004168:	fff70713          	addi	a4,a4,-1
    8000416c:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80004170:	03f7f693          	andi	a3,a5,63
    80004174:	00068663          	beqz	a3,80004180 <_ZN6ThreadD1Ev+0x144>
    80004178:	04000613          	li	a2,64
    8000417c:	40d606b3          	sub	a3,a2,a3
    80004180:	00d787b3          	add	a5,a5,a3
    80004184:	0000b697          	auipc	a3,0xb
    80004188:	6af6ba23          	sd	a5,1716(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    8000418c:	40f70733          	sub	a4,a4,a5
    80004190:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80004194:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004198:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    8000419c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    800041a0:	00100793          	li	a5,1
    800041a4:	0000b717          	auipc	a4,0xb
    800041a8:	68f70623          	sb	a5,1676(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800041ac:	ee5ff06f          	j	80004090 <_ZN6ThreadD1Ev+0x54>

00000000800041b0 <_Znwm>:
void* operator new(size_t n) {
    800041b0:	ff010113          	addi	sp,sp,-16
    800041b4:	00113423          	sd	ra,8(sp)
    800041b8:	00813023          	sd	s0,0(sp)
    800041bc:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800041c0:	ffffd097          	auipc	ra,0xffffd
    800041c4:	084080e7          	jalr	132(ra) # 80001244 <mem_alloc>
}
    800041c8:	00813083          	ld	ra,8(sp)
    800041cc:	00013403          	ld	s0,0(sp)
    800041d0:	01010113          	addi	sp,sp,16
    800041d4:	00008067          	ret

00000000800041d8 <_Znam>:
void* operator new[](size_t n) {
    800041d8:	ff010113          	addi	sp,sp,-16
    800041dc:	00113423          	sd	ra,8(sp)
    800041e0:	00813023          	sd	s0,0(sp)
    800041e4:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800041e8:	ffffd097          	auipc	ra,0xffffd
    800041ec:	05c080e7          	jalr	92(ra) # 80001244 <mem_alloc>
}
    800041f0:	00813083          	ld	ra,8(sp)
    800041f4:	00013403          	ld	s0,0(sp)
    800041f8:	01010113          	addi	sp,sp,16
    800041fc:	00008067          	ret

0000000080004200 <_ZdlPv>:
void operator delete(void* ptr) {
    80004200:	ff010113          	addi	sp,sp,-16
    80004204:	00113423          	sd	ra,8(sp)
    80004208:	00813023          	sd	s0,0(sp)
    8000420c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80004210:	ffffd097          	auipc	ra,0xffffd
    80004214:	08c080e7          	jalr	140(ra) # 8000129c <mem_free>
}
    80004218:	00813083          	ld	ra,8(sp)
    8000421c:	00013403          	ld	s0,0(sp)
    80004220:	01010113          	addi	sp,sp,16
    80004224:	00008067          	ret

0000000080004228 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80004228:	fe010113          	addi	sp,sp,-32
    8000422c:	00113c23          	sd	ra,24(sp)
    80004230:	00813823          	sd	s0,16(sp)
    80004234:	00913423          	sd	s1,8(sp)
    80004238:	02010413          	addi	s0,sp,32
    8000423c:	00050493          	mv	s1,a0
}
    80004240:	00000097          	auipc	ra,0x0
    80004244:	dfc080e7          	jalr	-516(ra) # 8000403c <_ZN6ThreadD1Ev>
    80004248:	00048513          	mv	a0,s1
    8000424c:	00000097          	auipc	ra,0x0
    80004250:	fb4080e7          	jalr	-76(ra) # 80004200 <_ZdlPv>
    80004254:	01813083          	ld	ra,24(sp)
    80004258:	01013403          	ld	s0,16(sp)
    8000425c:	00813483          	ld	s1,8(sp)
    80004260:	02010113          	addi	sp,sp,32
    80004264:	00008067          	ret

0000000080004268 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80004268:	fe010113          	addi	sp,sp,-32
    8000426c:	00113c23          	sd	ra,24(sp)
    80004270:	00813823          	sd	s0,16(sp)
    80004274:	00913423          	sd	s1,8(sp)
    80004278:	02010413          	addi	s0,sp,32
    8000427c:	00050493          	mv	s1,a0
}
    80004280:	00000097          	auipc	ra,0x0
    80004284:	cd8080e7          	jalr	-808(ra) # 80003f58 <_ZN9SemaphoreD1Ev>
    80004288:	00048513          	mv	a0,s1
    8000428c:	00000097          	auipc	ra,0x0
    80004290:	f74080e7          	jalr	-140(ra) # 80004200 <_ZdlPv>
    80004294:	01813083          	ld	ra,24(sp)
    80004298:	01013403          	ld	s0,16(sp)
    8000429c:	00813483          	ld	s1,8(sp)
    800042a0:	02010113          	addi	sp,sp,32
    800042a4:	00008067          	ret

00000000800042a8 <_ZdaPv>:
void operator delete[](void* ptr) {
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00113423          	sd	ra,8(sp)
    800042b0:	00813023          	sd	s0,0(sp)
    800042b4:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800042b8:	ffffd097          	auipc	ra,0xffffd
    800042bc:	fe4080e7          	jalr	-28(ra) # 8000129c <mem_free>
}
    800042c0:	00813083          	ld	ra,8(sp)
    800042c4:	00013403          	ld	s0,0(sp)
    800042c8:	01010113          	addi	sp,sp,16
    800042cc:	00008067          	ret

00000000800042d0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void *arg) {
    800042d0:	f9010113          	addi	sp,sp,-112
    800042d4:	06113423          	sd	ra,104(sp)
    800042d8:	06813023          	sd	s0,96(sp)
    800042dc:	04913c23          	sd	s1,88(sp)
    800042e0:	05213823          	sd	s2,80(sp)
    800042e4:	05313423          	sd	s3,72(sp)
    800042e8:	07010413          	addi	s0,sp,112
    800042ec:	00050493          	mv	s1,a0
    800042f0:	00058913          	mv	s2,a1
    800042f4:	00060993          	mv	s3,a2
    800042f8:	0000b797          	auipc	a5,0xb
    800042fc:	22078793          	addi	a5,a5,544 # 8000f518 <_ZTV6Thread+0x10>
    80004300:	00f53023          	sd	a5,0(a0)
    void* stack = mem_alloc(DEFAULT_STACK_SIZE);
    80004304:	00001537          	lui	a0,0x1
    80004308:	ffffd097          	auipc	ra,0xffffd
    8000430c:	f3c080e7          	jalr	-196(ra) # 80001244 <mem_alloc>
    if(stack == nullptr){
    80004310:	04050c63          	beqz	a0,80004368 <_ZN6ThreadC1EPFvPvES0_+0x98>
    uint64 a4 = (body != nullptr) ? (uint64)stack : 0;
    80004314:	04090e63          	beqz	s2,80004370 <_ZN6ThreadC1EPFvPvES0_+0xa0>
    a1 = (uint64)&myHandle;
    80004318:	00848493          	addi	s1,s1,8
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    8000431c:	01100793          	li	a5,17
    80004320:	f8f43823          	sd	a5,-112(s0)
    80004324:	f8943c23          	sd	s1,-104(s0)
    80004328:	fb243023          	sd	s2,-96(s0)
    8000432c:	fb343423          	sd	s3,-88(s0)
    80004330:	faa43823          	sd	a0,-80(s0)
    80004334:	fa043c23          	sd	zero,-72(s0)
    80004338:	fc043023          	sd	zero,-64(s0)
    8000433c:	fc043423          	sd	zero,-56(s0)
    abi::sys_call(reinterpret_cast<void *>(empty));
    80004340:	f9040513          	addi	a0,s0,-112
    80004344:	00001097          	auipc	ra,0x1
    80004348:	27c080e7          	jalr	636(ra) # 800055c0 <_ZN3abi8sys_callEPv>
}
    8000434c:	06813083          	ld	ra,104(sp)
    80004350:	06013403          	ld	s0,96(sp)
    80004354:	05813483          	ld	s1,88(sp)
    80004358:	05013903          	ld	s2,80(sp)
    8000435c:	04813983          	ld	s3,72(sp)
    80004360:	07010113          	addi	sp,sp,112
    80004364:	00008067          	ret
        this->myHandle = nullptr;
    80004368:	0004b423          	sd	zero,8(s1)
        return;
    8000436c:	fe1ff06f          	j	8000434c <_ZN6ThreadC1EPFvPvES0_+0x7c>
    uint64 a4 = (body != nullptr) ? (uint64)stack : 0;
    80004370:	00000513          	li	a0,0
    80004374:	fa5ff06f          	j	80004318 <_ZN6ThreadC1EPFvPvES0_+0x48>

0000000080004378 <_ZN6Thread5startEv>:
int Thread::start() {
    80004378:	ff010113          	addi	sp,sp,-16
    8000437c:	00113423          	sd	ra,8(sp)
    80004380:	00813023          	sd	s0,0(sp)
    80004384:	01010413          	addi	s0,sp,16
    put_in_scheduler(myHandle);
    80004388:	00853503          	ld	a0,8(a0) # 1008 <_entry-0x7fffeff8>
    8000438c:	ffffd097          	auipc	ra,0xffffd
    80004390:	30c080e7          	jalr	780(ra) # 80001698 <put_in_scheduler>
}
    80004394:	00000513          	li	a0,0
    80004398:	00813083          	ld	ra,8(sp)
    8000439c:	00013403          	ld	s0,0(sp)
    800043a0:	01010113          	addi	sp,sp,16
    800043a4:	00008067          	ret

00000000800043a8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800043a8:	ff010113          	addi	sp,sp,-16
    800043ac:	00113423          	sd	ra,8(sp)
    800043b0:	00813023          	sd	s0,0(sp)
    800043b4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800043b8:	ffffd097          	auipc	ra,0xffffd
    800043bc:	fe8080e7          	jalr	-24(ra) # 800013a0 <thread_dispatch>
}
    800043c0:	00813083          	ld	ra,8(sp)
    800043c4:	00013403          	ld	s0,0(sp)
    800043c8:	01010113          	addi	sp,sp,16
    800043cc:	00008067          	ret

00000000800043d0 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800043d0:	ff010113          	addi	sp,sp,-16
    800043d4:	00113423          	sd	ra,8(sp)
    800043d8:	00813023          	sd	s0,0(sp)
    800043dc:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800043e0:	ffffd097          	auipc	ra,0xffffd
    800043e4:	064080e7          	jalr	100(ra) # 80001444 <time_sleep>
}
    800043e8:	00813083          	ld	ra,8(sp)
    800043ec:	00013403          	ld	s0,0(sp)
    800043f0:	01010113          	addi	sp,sp,16
    800043f4:	00008067          	ret

00000000800043f8 <_ZN14PeriodicThread3runEv>:
    time = period;
    flag_stop = true;
    set_periodic((thread_t)this);
}

void PeriodicThread::run() {
    800043f8:	fe010113          	addi	sp,sp,-32
    800043fc:	00113c23          	sd	ra,24(sp)
    80004400:	00813823          	sd	s0,16(sp)
    80004404:	00913423          	sd	s1,8(sp)
    80004408:	02010413          	addi	s0,sp,32
    8000440c:	00050493          	mv	s1,a0
    while(flag_stop){
    80004410:	0184c783          	lbu	a5,24(s1)
    80004414:	02078263          	beqz	a5,80004438 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80004418:	0004b783          	ld	a5,0(s1)
    8000441c:	0187b783          	ld	a5,24(a5)
    80004420:	00048513          	mv	a0,s1
    80004424:	000780e7          	jalr	a5
        sleep(time);
    80004428:	0104b503          	ld	a0,16(s1)
    8000442c:	00000097          	auipc	ra,0x0
    80004430:	fa4080e7          	jalr	-92(ra) # 800043d0 <_ZN6Thread5sleepEm>
    while(flag_stop){
    80004434:	fddff06f          	j	80004410 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80004438:	01813083          	ld	ra,24(sp)
    8000443c:	01013403          	ld	s0,16(sp)
    80004440:	00813483          	ld	s1,8(sp)
    80004444:	02010113          	addi	sp,sp,32
    80004448:	00008067          	ret

000000008000444c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000444c:	fa010113          	addi	sp,sp,-96
    80004450:	04113c23          	sd	ra,88(sp)
    80004454:	04813823          	sd	s0,80(sp)
    80004458:	04913423          	sd	s1,72(sp)
    8000445c:	06010413          	addi	s0,sp,96
    80004460:	00050493          	mv	s1,a0
    80004464:	0000b797          	auipc	a5,0xb
    80004468:	0b478793          	addi	a5,a5,180 # 8000f518 <_ZTV6Thread+0x10>
    8000446c:	00f53023          	sd	a5,0(a0)
    uint64 a4 = (uint64)mem_alloc(DEFAULT_STACK_SIZE);
    80004470:	00001537          	lui	a0,0x1
    80004474:	ffffd097          	auipc	ra,0xffffd
    80004478:	dd0080e7          	jalr	-560(ra) # 80001244 <mem_alloc>
    a1 = (uint64)&myHandle;
    8000447c:	00848793          	addi	a5,s1,8
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80004480:	01100713          	li	a4,17
    80004484:	fae43023          	sd	a4,-96(s0)
    80004488:	faf43423          	sd	a5,-88(s0)
    8000448c:	00000797          	auipc	a5,0x0
    80004490:	aa078793          	addi	a5,a5,-1376 # 80003f2c <_ZN6Thread11wrapper_runEPv>
    80004494:	faf43823          	sd	a5,-80(s0)
    80004498:	fa943c23          	sd	s1,-72(s0)
    8000449c:	fca43023          	sd	a0,-64(s0)
    800044a0:	fc043423          	sd	zero,-56(s0)
    800044a4:	fc043823          	sd	zero,-48(s0)
    800044a8:	fc043c23          	sd	zero,-40(s0)
    abi::sys_call(reinterpret_cast<void *>(empty));
    800044ac:	fa040513          	addi	a0,s0,-96
    800044b0:	00001097          	auipc	ra,0x1
    800044b4:	110080e7          	jalr	272(ra) # 800055c0 <_ZN3abi8sys_callEPv>
}
    800044b8:	05813083          	ld	ra,88(sp)
    800044bc:	05013403          	ld	s0,80(sp)
    800044c0:	04813483          	ld	s1,72(sp)
    800044c4:	06010113          	addi	sp,sp,96
    800044c8:	00008067          	ret

00000000800044cc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800044cc:	ff010113          	addi	sp,sp,-16
    800044d0:	00113423          	sd	ra,8(sp)
    800044d4:	00813023          	sd	s0,0(sp)
    800044d8:	01010413          	addi	s0,sp,16
    800044dc:	0000b797          	auipc	a5,0xb
    800044e0:	06478793          	addi	a5,a5,100 # 8000f540 <_ZTV9Semaphore+0x10>
    800044e4:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    sem_open(&myHandle, init);
    800044e8:	02059593          	slli	a1,a1,0x20
    800044ec:	0205d593          	srli	a1,a1,0x20
    800044f0:	00850513          	addi	a0,a0,8
    800044f4:	ffffd097          	auipc	ra,0xffffd
    800044f8:	fb0080e7          	jalr	-80(ra) # 800014a4 <sem_open>
}
    800044fc:	00813083          	ld	ra,8(sp)
    80004500:	00013403          	ld	s0,0(sp)
    80004504:	01010113          	addi	sp,sp,16
    80004508:	00008067          	ret

000000008000450c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    8000450c:	ff010113          	addi	sp,sp,-16
    80004510:	00113423          	sd	ra,8(sp)
    80004514:	00813023          	sd	s0,0(sp)
    80004518:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000451c:	00853503          	ld	a0,8(a0)
    80004520:	ffffd097          	auipc	ra,0xffffd
    80004524:	02c080e7          	jalr	44(ra) # 8000154c <sem_wait>
}
    80004528:	00813083          	ld	ra,8(sp)
    8000452c:	00013403          	ld	s0,0(sp)
    80004530:	01010113          	addi	sp,sp,16
    80004534:	00008067          	ret

0000000080004538 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80004538:	ff010113          	addi	sp,sp,-16
    8000453c:	00113423          	sd	ra,8(sp)
    80004540:	00813023          	sd	s0,0(sp)
    80004544:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80004548:	00853503          	ld	a0,8(a0)
    8000454c:	ffffd097          	auipc	ra,0xffffd
    80004550:	054080e7          	jalr	84(ra) # 800015a0 <sem_signal>
}
    80004554:	00813083          	ld	ra,8(sp)
    80004558:	00013403          	ld	s0,0(sp)
    8000455c:	01010113          	addi	sp,sp,16
    80004560:	00008067          	ret

0000000080004564 <_ZN7Console4getcEv>:
char Console::getc() {
    80004564:	ff010113          	addi	sp,sp,-16
    80004568:	00113423          	sd	ra,8(sp)
    8000456c:	00813023          	sd	s0,0(sp)
    80004570:	01010413          	addi	s0,sp,16
    return ::getc();
    80004574:	ffffd097          	auipc	ra,0xffffd
    80004578:	080080e7          	jalr	128(ra) # 800015f4 <getc>
}
    8000457c:	00813083          	ld	ra,8(sp)
    80004580:	00013403          	ld	s0,0(sp)
    80004584:	01010113          	addi	sp,sp,16
    80004588:	00008067          	ret

000000008000458c <_ZN7Console4putcEc>:
void Console::putc(char c) {
    8000458c:	ff010113          	addi	sp,sp,-16
    80004590:	00113423          	sd	ra,8(sp)
    80004594:	00813023          	sd	s0,0(sp)
    80004598:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000459c:	ffffd097          	auipc	ra,0xffffd
    800045a0:	0ac080e7          	jalr	172(ra) # 80001648 <putc>
}
    800045a4:	00813083          	ld	ra,8(sp)
    800045a8:	00013403          	ld	s0,0(sp)
    800045ac:	01010113          	addi	sp,sp,16
    800045b0:	00008067          	ret

00000000800045b4 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    800045b4:	fe010113          	addi	sp,sp,-32
    800045b8:	00113c23          	sd	ra,24(sp)
    800045bc:	00813823          	sd	s0,16(sp)
    800045c0:	00913423          	sd	s1,8(sp)
    800045c4:	01213023          	sd	s2,0(sp)
    800045c8:	02010413          	addi	s0,sp,32
    800045cc:	00050493          	mv	s1,a0
    800045d0:	00058913          	mv	s2,a1
    800045d4:	00000097          	auipc	ra,0x0
    800045d8:	e78080e7          	jalr	-392(ra) # 8000444c <_ZN6ThreadC1Ev>
    800045dc:	0000b797          	auipc	a5,0xb
    800045e0:	f8478793          	addi	a5,a5,-124 # 8000f560 <_ZTV14PeriodicThread+0x10>
    800045e4:	00f4b023          	sd	a5,0(s1)
    800045e8:	0000b717          	auipc	a4,0xb
    800045ec:	41070713          	addi	a4,a4,1040 # 8000f9f8 <_ZN14PeriodicThread2IDE>
    800045f0:	00073783          	ld	a5,0(a4)
    800045f4:	00178693          	addi	a3,a5,1
    800045f8:	00d73023          	sd	a3,0(a4)
    800045fc:	02f4b023          	sd	a5,32(s1)
    time = period;
    80004600:	0124b823          	sd	s2,16(s1)
    flag_stop = true;
    80004604:	00100793          	li	a5,1
    80004608:	00f48c23          	sb	a5,24(s1)
    set_periodic((thread_t)this);
    8000460c:	00048513          	mv	a0,s1
    80004610:	ffffd097          	auipc	ra,0xffffd
    80004614:	178080e7          	jalr	376(ra) # 80001788 <set_periodic>
    80004618:	0200006f          	j	80004638 <_ZN14PeriodicThreadC1Em+0x84>
    8000461c:	00050913          	mv	s2,a0
PeriodicThread::PeriodicThread(time_t period) {
    80004620:	00048513          	mv	a0,s1
    80004624:	00000097          	auipc	ra,0x0
    80004628:	a18080e7          	jalr	-1512(ra) # 8000403c <_ZN6ThreadD1Ev>
    8000462c:	00090513          	mv	a0,s2
    80004630:	000d0097          	auipc	ra,0xd0
    80004634:	a28080e7          	jalr	-1496(ra) # 800d4058 <_Unwind_Resume>
}
    80004638:	01813083          	ld	ra,24(sp)
    8000463c:	01013403          	ld	s0,16(sp)
    80004640:	00813483          	ld	s1,8(sp)
    80004644:	00013903          	ld	s2,0(sp)
    80004648:	02010113          	addi	sp,sp,32
    8000464c:	00008067          	ret

0000000080004650 <_ZN6Thread3runEv>:



protected:
    Thread();
    virtual void run() {}
    80004650:	ff010113          	addi	sp,sp,-16
    80004654:	00813423          	sd	s0,8(sp)
    80004658:	01010413          	addi	s0,sp,16
    8000465c:	00813403          	ld	s0,8(sp)
    80004660:	01010113          	addi	sp,sp,16
    80004664:	00008067          	ret

0000000080004668 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void stop(){flag_stop = false;}
//    uint64 getId()const{ id; }
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation(){}
    80004668:	ff010113          	addi	sp,sp,-16
    8000466c:	00813423          	sd	s0,8(sp)
    80004670:	01010413          	addi	s0,sp,16
    80004674:	00813403          	ld	s0,8(sp)
    80004678:	01010113          	addi	sp,sp,16
    8000467c:	00008067          	ret

0000000080004680 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80004680:	ff010113          	addi	sp,sp,-16
    80004684:	00113423          	sd	ra,8(sp)
    80004688:	00813023          	sd	s0,0(sp)
    8000468c:	01010413          	addi	s0,sp,16
    80004690:	0000b797          	auipc	a5,0xb
    80004694:	ed078793          	addi	a5,a5,-304 # 8000f560 <_ZTV14PeriodicThread+0x10>
    80004698:	00f53023          	sd	a5,0(a0)
    8000469c:	00000097          	auipc	ra,0x0
    800046a0:	9a0080e7          	jalr	-1632(ra) # 8000403c <_ZN6ThreadD1Ev>
    800046a4:	00813083          	ld	ra,8(sp)
    800046a8:	00013403          	ld	s0,0(sp)
    800046ac:	01010113          	addi	sp,sp,16
    800046b0:	00008067          	ret

00000000800046b4 <_ZN14PeriodicThreadD0Ev>:
    800046b4:	fe010113          	addi	sp,sp,-32
    800046b8:	00113c23          	sd	ra,24(sp)
    800046bc:	00813823          	sd	s0,16(sp)
    800046c0:	00913423          	sd	s1,8(sp)
    800046c4:	02010413          	addi	s0,sp,32
    800046c8:	00050493          	mv	s1,a0
    800046cc:	0000b797          	auipc	a5,0xb
    800046d0:	e9478793          	addi	a5,a5,-364 # 8000f560 <_ZTV14PeriodicThread+0x10>
    800046d4:	00f53023          	sd	a5,0(a0)
    800046d8:	00000097          	auipc	ra,0x0
    800046dc:	964080e7          	jalr	-1692(ra) # 8000403c <_ZN6ThreadD1Ev>
    800046e0:	00048513          	mv	a0,s1
    800046e4:	00000097          	auipc	ra,0x0
    800046e8:	b1c080e7          	jalr	-1252(ra) # 80004200 <_ZdlPv>
    800046ec:	01813083          	ld	ra,24(sp)
    800046f0:	01013403          	ld	s0,16(sp)
    800046f4:	00813483          	ld	s1,8(sp)
    800046f8:	02010113          	addi	sp,sp,32
    800046fc:	00008067          	ret

0000000080004700 <_ZN5Riscv14switch_to_userEv>:
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/semaphore.hpp"
#include "../h/console.hpp"

void Riscv::switch_to_user(){
    80004700:	ff010113          	addi	sp,sp,-16
    80004704:	00813423          	sd	s0,8(sp)
    80004708:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000470c:	10000793          	li	a5,256
    80004710:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
}
    80004714:	00813403          	ld	s0,8(sp)
    80004718:	01010113          	addi	sp,sp,16
    8000471c:	00008067          	ret

0000000080004720 <_ZN5Riscv21switch_to_priviledgedEv>:

void Riscv::switch_to_priviledged() {
    80004720:	ff010113          	addi	sp,sp,-16
    80004724:	00813423          	sd	s0,8(sp)
    80004728:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000472c:	10000793          	li	a5,256
    80004730:	1007a073          	csrs	sstatus,a5
    ms_sstatus(SSTATUS_SPP);
}
    80004734:	00813403          	ld	s0,8(sp)
    80004738:	01010113          	addi	sp,sp,16
    8000473c:	00008067          	ret

0000000080004740 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie(){
    80004740:	ff010113          	addi	sp,sp,-16
    80004744:	00813423          	sd	s0,8(sp)
    80004748:	01010413          	addi	s0,sp,16

    __asm__ volatile("csrw sepc, ra");
    8000474c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80004750:	10200073          	sret
}
    80004754:	00813403          	ld	s0,8(sp)
    80004758:	01010113          	addi	sp,sp,16
    8000475c:	00008067          	ret

0000000080004760 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80004760:	f5010113          	addi	sp,sp,-176
    80004764:	0a113423          	sd	ra,168(sp)
    80004768:	0a813023          	sd	s0,160(sp)
    8000476c:	08913c23          	sd	s1,152(sp)
    80004770:	09213823          	sd	s2,144(sp)
    80004774:	0b010413          	addi	s0,sp,176

//    uint64 arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7;
    uint64 args[8];
    __asm__ volatile("mv %[arg0], a0" : [arg0]"=r"(*args)); // za kod sistemskog poziva
    80004778:	00050793          	mv	a5,a0
    8000477c:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("mv %[arg1], a1" : [arg1]"=r"(*(args + 1))); // argumenti s leva na desno
    80004780:	00058793          	mv	a5,a1
    80004784:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile("mv %[arg2], a2" : [arg2]"=r"(*(args + 2)));
    80004788:	00060793          	mv	a5,a2
    8000478c:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile("mv %[arg3], a3" : [arg3]"=r"(*(args + 3)));
    80004790:	00068793          	mv	a5,a3
    80004794:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %[arg4], a4" : [arg4]"=r"(*(args + 4)));
    80004798:	00070793          	mv	a5,a4
    8000479c:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("mv %[arg5], a5" : [arg5]"=r"(*(args + 5)));
    800047a0:	00078793          	mv	a5,a5
    800047a4:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("mv %[arg6], a6" : [arg6]"=r"(*(args + 6)));
    800047a8:	00080793          	mv	a5,a6
    800047ac:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("mv %[arg7], a7" : [arg7]"=r"(*(args + 7)));
    800047b0:	00088793          	mv	a5,a7
    800047b4:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800047b8:	142027f3          	csrr	a5,scause
    800047bc:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    800047c0:	f7843703          	ld	a4,-136(s0)

    uint64 scause = r_scause();

    if (scause == 0x8000000000000001UL){
    800047c4:	fff00793          	li	a5,-1
    800047c8:	03f79793          	slli	a5,a5,0x3f
    800047cc:	00178793          	addi	a5,a5,1
    800047d0:	02f70c63          	beq	a4,a5,80004808 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

    }
    else if(scause == 0x0000000000000009UL || scause == 0x0000000000000008UL){
    800047d4:	ff870793          	addi	a5,a4,-8
    800047d8:	00100693          	li	a3,1
    800047dc:	0af6f463          	bgeu	a3,a5,80004884 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
            // pomeramo pc za 4 bajta unapred
            w_sepc(sepc);
            if(*args != 0x60 && *args != 0x61)
                w_sstatus(sstatus);
    }
    else if (scause == 0x8000000000000009UL)
    800047e0:	fff00793          	li	a5,-1
    800047e4:	03f79793          	slli	a5,a5,0x3f
    800047e8:	00978793          	addi	a5,a5,9
    800047ec:	44f70663          	beq	a4,a5,80004c38 <_ZN5Riscv20handleSupervisorTrapEv+0x4d8>
        // unexpected trap cause
        // print scause
        // print sepc
        // print stval
    }
    800047f0:	0a813083          	ld	ra,168(sp)
    800047f4:	0a013403          	ld	s0,160(sp)
    800047f8:	09813483          	ld	s1,152(sp)
    800047fc:	09013903          	ld	s2,144(sp)
    80004800:	0b010113          	addi	sp,sp,176
    80004804:	00008067          	ret
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80004808:	00200793          	li	a5,2
    8000480c:	1447b073          	csrc	sip,a5
        TCB::time_slice_counter++;
    80004810:	0000b497          	auipc	s1,0xb
    80004814:	fc84b483          	ld	s1,-56(s1) # 8000f7d8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80004818:	0004b783          	ld	a5,0(s1)
    8000481c:	00178793          	addi	a5,a5,1
    80004820:	00f4b023          	sd	a5,0(s1)
        TS::decrement_and_remove();
    80004824:	00001097          	auipc	ra,0x1
    80004828:	e60080e7          	jalr	-416(ra) # 80005684 <_ZN2TS20decrement_and_removeEv>
        if (TCB::time_slice_counter >= TCB::running->get_time_slice()) {
    8000482c:	0000b797          	auipc	a5,0xb
    80004830:	fb47b783          	ld	a5,-76(a5) # 8000f7e0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004834:	0007b783          	ld	a5,0(a5)
    uint64 get_time_slice()const{ return time_slice; }
    80004838:	0507b783          	ld	a5,80(a5)
    8000483c:	0004b703          	ld	a4,0(s1)
    80004840:	faf768e3          	bltu	a4,a5,800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80004844:	141027f3          	csrr	a5,sepc
    80004848:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    8000484c:	f8843783          	ld	a5,-120(s0)
            uint64 volatile sepc = r_sepc();
    80004850:	f4f43c23          	sd	a5,-168(s0)

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80004854:	100027f3          	csrr	a5,sstatus
    80004858:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    8000485c:	f8043783          	ld	a5,-128(s0)
            uint64 volatile sstatus = r_sstatus();
    80004860:	f6f43023          	sd	a5,-160(s0)
            TCB::time_slice_counter = 0;
    80004864:	0004b023          	sd	zero,0(s1)
            TCB::thread_dispatch();
    80004868:	00000097          	auipc	ra,0x0
    8000486c:	498080e7          	jalr	1176(ra) # 80004d00 <_ZN3TCB15thread_dispatchEv>
            w_sstatus(sstatus);
    80004870:	f6043783          	ld	a5,-160(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80004874:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80004878:	f5843783          	ld	a5,-168(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000487c:	14179073          	csrw	sepc,a5
}
    80004880:	f71ff06f          	j	800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80004884:	141027f3          	csrr	a5,sepc
    80004888:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    8000488c:	f9843783          	ld	a5,-104(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80004890:	00478793          	addi	a5,a5,4
    80004894:	f6f43423          	sd	a5,-152(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80004898:	100027f3          	csrr	a5,sstatus
    8000489c:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    800048a0:	f9043783          	ld	a5,-112(s0)
        uint64 volatile sstatus = r_sstatus();
    800048a4:	f6f43823          	sd	a5,-144(s0)
            switch(*args){
    800048a8:	fa043783          	ld	a5,-96(s0)
    800048ac:	07000713          	li	a4,112
    800048b0:	02f76463          	bltu	a4,a5,800048d8 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    800048b4:	36078a63          	beqz	a5,80004c28 <_ZN5Riscv20handleSupervisorTrapEv+0x4c8>
    800048b8:	36f76c63          	bltu	a4,a5,80004c30 <_ZN5Riscv20handleSupervisorTrapEv+0x4d0>
    800048bc:	00279793          	slli	a5,a5,0x2
    800048c0:	00008717          	auipc	a4,0x8
    800048c4:	9a870713          	addi	a4,a4,-1624 # 8000c268 <CONSOLE_STATUS+0x258>
    800048c8:	00e787b3          	add	a5,a5,a4
    800048cc:	0007a783          	lw	a5,0(a5)
    800048d0:	00e787b3          	add	a5,a5,a4
    800048d4:	00078067          	jr	a5
    800048d8:	11100713          	li	a4,273
    800048dc:	00e79c63          	bne	a5,a4,800048f4 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    void set_finished(bool f){ this->finished = f; }
    800048e0:	fa843783          	ld	a5,-88(s0)
    800048e4:	00100713          	li	a4,1
    800048e8:	02e78423          	sb	a4,40(a5)
                    retVal = 0;
    800048ec:	00000513          	li	a0,0
    800048f0:	0080006f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
            switch(*args){
    800048f4:	00000513          	li	a0,0
            __asm__ volatile("mv a0, %[ret]" : : [ret]"r"(retVal));
    800048f8:	00050513          	mv	a0,a0
            __asm__ volatile("sd a0, 10 * 8(s0)");
    800048fc:	04a43823          	sd	a0,80(s0)
            w_sepc(sepc);
    80004900:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80004904:	14179073          	csrw	sepc,a5
            if(*args != 0x60 && *args != 0x61)
    80004908:	fa043783          	ld	a5,-96(s0)
    8000490c:	fa078793          	addi	a5,a5,-96
    80004910:	00100713          	li	a4,1
    80004914:	ecf77ee3          	bgeu	a4,a5,800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
                w_sstatus(sstatus);
    80004918:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000491c:	10079073          	csrw	sstatus,a5
}
    80004920:	ed1ff06f          	j	800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    80004924:	0000b797          	auipc	a5,0xb
    80004928:	f0c7c783          	lbu	a5,-244(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000492c:	00078e63          	beqz	a5,80004948 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_alloc(*(args + 1)));
    80004930:	fa843583          	ld	a1,-88(s0)
    80004934:	0000b517          	auipc	a0,0xb
    80004938:	f0450513          	addi	a0,a0,-252 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    8000493c:	00001097          	auipc	ra,0x1
    80004940:	a28080e7          	jalr	-1496(ra) # 80005364 <_ZN15MemoryAllocator12memory_allocEm>
                    break;
    80004944:	fb5ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    80004948:	0000b617          	auipc	a2,0xb
    8000494c:	ef060613          	addi	a2,a2,-272 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80004950:	0000b797          	auipc	a5,0xb
    80004954:	e987b783          	ld	a5,-360(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004958:	0007b703          	ld	a4,0(a5)
    8000495c:	0000b797          	auipc	a5,0xb
    80004960:	e447b783          	ld	a5,-444(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004964:	0007b783          	ld	a5,0(a5)
    80004968:	40f706b3          	sub	a3,a4,a5
    8000496c:	0036d693          	srli	a3,a3,0x3
    80004970:	00d787b3          	add	a5,a5,a3
    80004974:	00178793          	addi	a5,a5,1
    80004978:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    8000497c:	fff70713          	addi	a4,a4,-1
    80004980:	00e63823          	sd	a4,16(a2)

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80004984:	03f7f693          	andi	a3,a5,63
    80004988:	00068663          	beqz	a3,80004994 <_ZN5Riscv20handleSupervisorTrapEv+0x234>
    8000498c:	04000613          	li	a2,64
    80004990:	40d606b3          	sub	a3,a2,a3
    80004994:	00d787b3          	add	a5,a5,a3
    80004998:	0000b697          	auipc	a3,0xb
    8000499c:	eaf6b023          	sd	a5,-352(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    800049a0:	40f70733          	sub	a4,a4,a5
    800049a4:	00675713          	srli	a4,a4,0x6

        // napravi node

        fmem_head->next = nullptr;
    800049a8:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    800049ac:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    800049b0:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    800049b4:	00100793          	li	a5,1
    800049b8:	0000b717          	auipc	a4,0xb
    800049bc:	e6f70c23          	sb	a5,-392(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800049c0:	f71ff06f          	j	80004930 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    800049c4:	0000b797          	auipc	a5,0xb
    800049c8:	e6c7c783          	lbu	a5,-404(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800049cc:	00078e63          	beqz	a5,800049e8 <_ZN5Riscv20handleSupervisorTrapEv+0x288>
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_free((void*)*(args + 1)));
    800049d0:	fa843583          	ld	a1,-88(s0)
    800049d4:	0000b517          	auipc	a0,0xb
    800049d8:	e6450513          	addi	a0,a0,-412 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	a5c080e7          	jalr	-1444(ra) # 80005438 <_ZN15MemoryAllocator11memory_freeEPv>
                    break;
    800049e4:	f15ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    MemoryAllocator(){
    800049e8:	0000b617          	auipc	a2,0xb
    800049ec:	e5060613          	addi	a2,a2,-432 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800049f0:	0000b797          	auipc	a5,0xb
    800049f4:	df87b783          	ld	a5,-520(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800049f8:	0007b703          	ld	a4,0(a5)
    800049fc:	0000b797          	auipc	a5,0xb
    80004a00:	da47b783          	ld	a5,-604(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004a04:	0007b783          	ld	a5,0(a5)
    80004a08:	40f706b3          	sub	a3,a4,a5
    80004a0c:	0036d693          	srli	a3,a3,0x3
    80004a10:	00d787b3          	add	a5,a5,a3
    80004a14:	00178793          	addi	a5,a5,1
    80004a18:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80004a1c:	fff70713          	addi	a4,a4,-1
    80004a20:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80004a24:	03f7f693          	andi	a3,a5,63
    80004a28:	00068663          	beqz	a3,80004a34 <_ZN5Riscv20handleSupervisorTrapEv+0x2d4>
    80004a2c:	04000613          	li	a2,64
    80004a30:	40d606b3          	sub	a3,a2,a3
    80004a34:	00d787b3          	add	a5,a5,a3
    80004a38:	0000b697          	auipc	a3,0xb
    80004a3c:	e0f6b023          	sd	a5,-512(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80004a40:	40f70733          	sub	a4,a4,a5
    80004a44:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80004a48:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004a4c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004a50:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004a54:	00100793          	li	a5,1
    80004a58:	0000b717          	auipc	a4,0xb
    80004a5c:	dcf70c23          	sb	a5,-552(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004a60:	f71ff06f          	j	800049d0 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
                    retVal = (uint64)(TCB::thread_create((TCB**)*(args + 1),
    80004a64:	fd043703          	ld	a4,-48(s0)
    80004a68:	00e03733          	snez	a4,a4
    80004a6c:	fc043683          	ld	a3,-64(s0)
    80004a70:	fb843603          	ld	a2,-72(s0)
    80004a74:	fb043583          	ld	a1,-80(s0)
    80004a78:	fa843503          	ld	a0,-88(s0)
    80004a7c:	00000097          	auipc	ra,0x0
    80004a80:	688080e7          	jalr	1672(ra) # 80005104 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b>
                    break;
    80004a84:	e75ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = TCB::thread_exit();
    80004a88:	00000097          	auipc	ra,0x0
    80004a8c:	3f4080e7          	jalr	1012(ra) # 80004e7c <_ZN3TCB11thread_exitEv>
                    break;
    80004a90:	e69ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    TCB::thread_dispatch();
    80004a94:	00000097          	auipc	ra,0x0
    80004a98:	26c080e7          	jalr	620(ra) # 80004d00 <_ZN3TCB15thread_dispatchEv>
        uint64 retVal = 0;
    80004a9c:	00000513          	li	a0,0
    80004aa0:	e59ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_open((MySemaphore**)*(args + 1),
    80004aa4:	fb043583          	ld	a1,-80(s0)
    80004aa8:	fa843503          	ld	a0,-88(s0)
    80004aac:	ffffd097          	auipc	ra,0xffffd
    80004ab0:	65c080e7          	jalr	1628(ra) # 80002108 <_ZN11MySemaphore8sem_openEPPS_m>
                    break;
    80004ab4:	e45ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_close((MySemaphore*)*(args + 1)));
    80004ab8:	fa843503          	ld	a0,-88(s0)
    80004abc:	ffffd097          	auipc	ra,0xffffd
    80004ac0:	780080e7          	jalr	1920(ra) # 8000223c <_ZN11MySemaphore9sem_closeEPS_>
                    break;
    80004ac4:	e35ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_wait((MySemaphore*)*(args + 1)));
    80004ac8:	fa843503          	ld	a0,-88(s0)
    80004acc:	ffffe097          	auipc	ra,0xffffe
    80004ad0:	888080e7          	jalr	-1912(ra) # 80002354 <_ZN11MySemaphore8sem_waitEPS_>
                    break;
    80004ad4:	e25ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_signal((MySemaphore*)*(args + 1)));
    80004ad8:	fa843503          	ld	a0,-88(s0)
    80004adc:	ffffe097          	auipc	ra,0xffffe
    80004ae0:	948080e7          	jalr	-1720(ra) # 80002424 <_ZN11MySemaphore10sem_signalEPS_>
                    break;
    80004ae4:	e15ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    TCB::time_sleep(*(args + 1));
    80004ae8:	fa843503          	ld	a0,-88(s0)
    80004aec:	00000097          	auipc	ra,0x0
    80004af0:	528080e7          	jalr	1320(ra) # 80005014 <_ZN3TCB10time_sleepEm>
        uint64 retVal = 0;
    80004af4:	00000513          	li	a0,0
    80004af8:	e01ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004afc:	0000b797          	auipc	a5,0xb
    80004b00:	d7c7c783          	lbu	a5,-644(a5) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    80004b04:	00078c63          	beqz	a5,80004b1c <_ZN5Riscv20handleSupervisorTrapEv+0x3bc>
                    retVal = Console::getInstance().get_from_input();
    80004b08:	0000b517          	auipc	a0,0xb
    80004b0c:	d7850513          	addi	a0,a0,-648 # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    80004b10:	ffffe097          	auipc	ra,0xffffe
    80004b14:	194080e7          	jalr	404(ra) # 80002ca4 <_ZN7Console14get_from_inputEv>
                    break;
    80004b18:	de1ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004b1c:	0000b517          	auipc	a0,0xb
    80004b20:	d6450513          	addi	a0,a0,-668 # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    80004b24:	ffffe097          	auipc	ra,0xffffe
    80004b28:	f78080e7          	jalr	-136(ra) # 80002a9c <_ZN7ConsoleC1Ev>
    80004b2c:	00100793          	li	a5,1
    80004b30:	0000b717          	auipc	a4,0xb
    80004b34:	d4f70423          	sb	a5,-696(a4) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    80004b38:	fd1ff06f          	j	80004b08 <_ZN5Riscv20handleSupervisorTrapEv+0x3a8>
    80004b3c:	0000b797          	auipc	a5,0xb
    80004b40:	d3c7c783          	lbu	a5,-708(a5) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    80004b44:	02078063          	beqz	a5,80004b64 <_ZN5Riscv20handleSupervisorTrapEv+0x404>
                    Console::getInstance().put_in_output((char)*(args + 1));
    80004b48:	fa844583          	lbu	a1,-88(s0)
    80004b4c:	0000b517          	auipc	a0,0xb
    80004b50:	d3450513          	addi	a0,a0,-716 # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    80004b54:	ffffe097          	auipc	ra,0xffffe
    80004b58:	180080e7          	jalr	384(ra) # 80002cd4 <_ZN7Console13put_in_outputEc>
        uint64 retVal = 0;
    80004b5c:	00000513          	li	a0,0
    80004b60:	d99ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004b64:	0000b517          	auipc	a0,0xb
    80004b68:	d1c50513          	addi	a0,a0,-740 # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    80004b6c:	ffffe097          	auipc	ra,0xffffe
    80004b70:	f30080e7          	jalr	-208(ra) # 80002a9c <_ZN7ConsoleC1Ev>
    80004b74:	00100793          	li	a5,1
    80004b78:	0000b717          	auipc	a4,0xb
    80004b7c:	d0f70023          	sb	a5,-768(a4) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    80004b80:	fc9ff06f          	j	80004b48 <_ZN5Riscv20handleSupervisorTrapEv+0x3e8>
    80004b84:	0000b797          	auipc	a5,0xb
    80004b88:	ccc7c783          	lbu	a5,-820(a5) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004b8c:	02079463          	bnez	a5,80004bb4 <_ZN5Riscv20handleSupervisorTrapEv+0x454>
        head = nullptr;
    80004b90:	0000b797          	auipc	a5,0xb
    80004b94:	c307b783          	ld	a5,-976(a5) # 8000f7c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004b98:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004b9c:	0000b797          	auipc	a5,0xb
    80004ba0:	bfc7b783          	ld	a5,-1028(a5) # 8000f798 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004ba4:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004ba8:	00100793          	li	a5,1
    80004bac:	0000b717          	auipc	a4,0xb
    80004bb0:	caf70223          	sb	a5,-860(a4) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
                    Scheduler::getInstance().put((TCB*)*(args + 1));
    80004bb4:	fa843583          	ld	a1,-88(s0)
    80004bb8:	0000b517          	auipc	a0,0xb
    80004bbc:	ca050513          	addi	a0,a0,-864 # 8000f858 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004bc0:	00000097          	auipc	ra,0x0
    80004bc4:	744080e7          	jalr	1860(ra) # 80005304 <_ZN9Scheduler3putEP3TCB>
        uint64 retVal = 0;
    80004bc8:	00000513          	li	a0,0
    80004bcc:	d2dff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Riscv::switch_to_user();
    80004bd0:	00000097          	auipc	ra,0x0
    80004bd4:	b30080e7          	jalr	-1232(ra) # 80004700 <_ZN5Riscv14switch_to_userEv>
        uint64 retVal = 0;
    80004bd8:	00000513          	li	a0,0
                    break;
    80004bdc:	d1dff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Riscv::switch_to_priviledged();
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	b40080e7          	jalr	-1216(ra) # 80004720 <_ZN5Riscv21switch_to_priviledgedEv>
        uint64 retVal = 0;
    80004be8:	00000513          	li	a0,0
                    break;
    80004bec:	d0dff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    ((TCB*)*(args + 1))->set_periodic(true);
    80004bf0:	fa843583          	ld	a1,-88(s0)
        periodic = b;
    80004bf4:	00100793          	li	a5,1
    80004bf8:	06f580a3          	sb	a5,97(a1)

class periodicThread{

public:
    static periodicThread& getInstance(){
        static periodicThread instance;
    80004bfc:	0000b797          	auipc	a5,0xb
    80004c00:	e047c783          	lbu	a5,-508(a5) # 8000fa00 <_ZGVZN14periodicThread11getInstanceEvE8instance>
    80004c04:	00079863          	bnez	a5,80004c14 <_ZN5Riscv20handleSupervisorTrapEv+0x4b4>
    80004c08:	00100793          	li	a5,1
    80004c0c:	0000b717          	auipc	a4,0xb
    80004c10:	def70a23          	sb	a5,-524(a4) # 8000fa00 <_ZGVZN14periodicThread11getInstanceEvE8instance>
        periodicThread::getInstance().put(this);
    80004c14:	0000b517          	auipc	a0,0xb
    80004c18:	df450513          	addi	a0,a0,-524 # 8000fa08 <_ZZN14periodicThread11getInstanceEvE8instance>
    80004c1c:	ffffe097          	auipc	ra,0xffffe
    80004c20:	868080e7          	jalr	-1944(ra) # 80002484 <_ZN14periodicThread3putEP3TCB>
    }
    80004c24:	cbdff06f          	j	800048e0 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
            switch(*args){
    80004c28:	00000513          	li	a0,0
    80004c2c:	ccdff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004c30:	00000513          	li	a0,0
    80004c34:	cc5ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        int irq = plic_claim();
    80004c38:	00005097          	auipc	ra,0x5
    80004c3c:	56c080e7          	jalr	1388(ra) # 8000a1a4 <plic_claim>
    80004c40:	00050913          	mv	s2,a0
        if(irq == CONSOLE_IRQ){
    80004c44:	00a00793          	li	a5,10
    80004c48:	04f50e63          	beq	a0,a5,80004ca4 <_ZN5Riscv20handleSupervisorTrapEv+0x544>
        plic_complete(irq);
    80004c4c:	00090513          	mv	a0,s2
    80004c50:	00005097          	auipc	ra,0x5
    80004c54:	58c080e7          	jalr	1420(ra) # 8000a1dc <plic_complete>
    80004c58:	b99ff06f          	j	800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    80004c5c:	0000b517          	auipc	a0,0xb
    80004c60:	c2450513          	addi	a0,a0,-988 # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    80004c64:	ffffe097          	auipc	ra,0xffffe
    80004c68:	e38080e7          	jalr	-456(ra) # 80002a9c <_ZN7ConsoleC1Ev>
    80004c6c:	00100793          	li	a5,1
    80004c70:	0000b717          	auipc	a4,0xb
    80004c74:	c0f70423          	sb	a5,-1016(a4) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
                Console::getInstance().put_in_input(*((char*)CONSOLE_RX_DATA));
    80004c78:	0000b797          	auipc	a5,0xb
    80004c7c:	b107b783          	ld	a5,-1264(a5) # 8000f788 <_GLOBAL_OFFSET_TABLE_+0x8>
    80004c80:	0007b483          	ld	s1,0(a5)
    80004c84:	0004c583          	lbu	a1,0(s1)
    80004c88:	0000b517          	auipc	a0,0xb
    80004c8c:	bf850513          	addi	a0,a0,-1032 # 8000f880 <_ZZN7Console11getInstanceEvE8instance>
    80004c90:	ffffe097          	auipc	ra,0xffffe
    80004c94:	fe8080e7          	jalr	-24(ra) # 80002c78 <_ZN7Console12put_in_inputEc>
                if(*((char*)CONSOLE_RX_DATA) == 107){
    80004c98:	0004c703          	lbu	a4,0(s1)
    80004c9c:	06b00793          	li	a5,107
    80004ca0:	02f70663          	beq	a4,a5,80004ccc <_ZN5Riscv20handleSupervisorTrapEv+0x56c>
            while(*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80004ca4:	0000b797          	auipc	a5,0xb
    80004ca8:	aec7b783          	ld	a5,-1300(a5) # 8000f790 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004cac:	0007b783          	ld	a5,0(a5)
    80004cb0:	0007c783          	lbu	a5,0(a5)
    80004cb4:	0017f793          	andi	a5,a5,1
    80004cb8:	f8078ae3          	beqz	a5,80004c4c <_ZN5Riscv20handleSupervisorTrapEv+0x4ec>
    80004cbc:	0000b797          	auipc	a5,0xb
    80004cc0:	bbc7c783          	lbu	a5,-1092(a5) # 8000f878 <_ZGVZN7Console11getInstanceEvE8instance>
    80004cc4:	fa079ae3          	bnez	a5,80004c78 <_ZN5Riscv20handleSupervisorTrapEv+0x518>
    80004cc8:	f95ff06f          	j	80004c5c <_ZN5Riscv20handleSupervisorTrapEv+0x4fc>
    80004ccc:	0000b797          	auipc	a5,0xb
    80004cd0:	d347c783          	lbu	a5,-716(a5) # 8000fa00 <_ZGVZN14periodicThread11getInstanceEvE8instance>
    80004cd4:	00079863          	bnez	a5,80004ce4 <_ZN5Riscv20handleSupervisorTrapEv+0x584>
    80004cd8:	00100793          	li	a5,1
    80004cdc:	0000b717          	auipc	a4,0xb
    80004ce0:	d2f70223          	sb	a5,-732(a4) # 8000fa00 <_ZGVZN14periodicThread11getInstanceEvE8instance>
                    TCB* tmp = periodicThread::getInstance().get();
    80004ce4:	0000b517          	auipc	a0,0xb
    80004ce8:	d2450513          	addi	a0,a0,-732 # 8000fa08 <_ZZN14periodicThread11getInstanceEvE8instance>
    80004cec:	ffffd097          	auipc	ra,0xffffd
    80004cf0:	7dc080e7          	jalr	2012(ra) # 800024c8 <_ZN14periodicThread3getEv>
    void set_finished(bool f){ this->finished = f; }
    80004cf4:	00100793          	li	a5,1
    80004cf8:	02f50423          	sb	a5,40(a0)
    80004cfc:	fa9ff06f          	j	80004ca4 <_ZN5Riscv20handleSupervisorTrapEv+0x544>

0000000080004d00 <_ZN3TCB15thread_dispatchEv>:
    TCB::thread_dispatch();
    // do ovog dela nece nikad doci jer thread_dispatch nece nit koju gasimo staviti u scheduler
    return -1;
}

void TCB::thread_dispatch() {
    80004d00:	fe010113          	addi	sp,sp,-32
    80004d04:	00113c23          	sd	ra,24(sp)
    80004d08:	00813823          	sd	s0,16(sp)
    80004d0c:	00913423          	sd	s1,8(sp)
    80004d10:	02010413          	addi	s0,sp,32
//    Scheduler::printScheduler();
    TCB * old = running;
    80004d14:	0000b497          	auipc	s1,0xb
    80004d18:	cfc4b483          	ld	s1,-772(s1) # 8000fa10 <_ZN3TCB7runningE>
    80004d1c:	0000b797          	auipc	a5,0xb
    80004d20:	b347c783          	lbu	a5,-1228(a5) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004d24:	02079463          	bnez	a5,80004d4c <_ZN3TCB15thread_dispatchEv+0x4c>
        head = nullptr;
    80004d28:	0000b797          	auipc	a5,0xb
    80004d2c:	a987b783          	ld	a5,-1384(a5) # 8000f7c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004d30:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004d34:	0000b797          	auipc	a5,0xb
    80004d38:	a647b783          	ld	a5,-1436(a5) # 8000f798 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004d3c:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004d40:	00100793          	li	a5,1
    80004d44:	0000b717          	auipc	a4,0xb
    80004d48:	b0f70623          	sb	a5,-1268(a4) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    running = Scheduler::getInstance().get();
    80004d4c:	0000b517          	auipc	a0,0xb
    80004d50:	b0c50513          	addi	a0,a0,-1268 # 8000f858 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	544080e7          	jalr	1348(ra) # 80005298 <_ZN9Scheduler3getEv>
    80004d5c:	0000b797          	auipc	a5,0xb
    80004d60:	caa7ba23          	sd	a0,-844(a5) # 8000fa10 <_ZN3TCB7runningE>
    bool is_finished()const{return finished;}
    80004d64:	0284c783          	lbu	a5,40(s1)
    if (!old->is_finished()) {
    80004d68:	06079a63          	bnez	a5,80004ddc <_ZN3TCB15thread_dispatchEv+0xdc>
    80004d6c:	0000b797          	auipc	a5,0xb
    80004d70:	ae47c783          	lbu	a5,-1308(a5) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004d74:	02079463          	bnez	a5,80004d9c <_ZN3TCB15thread_dispatchEv+0x9c>
        head = nullptr;
    80004d78:	0000b797          	auipc	a5,0xb
    80004d7c:	a487b783          	ld	a5,-1464(a5) # 8000f7c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004d80:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004d84:	0000b797          	auipc	a5,0xb
    80004d88:	a147b783          	ld	a5,-1516(a5) # 8000f798 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004d8c:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004d90:	00100793          	li	a5,1
    80004d94:	0000b717          	auipc	a4,0xb
    80004d98:	aaf70e23          	sb	a5,-1348(a4) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
        Scheduler::getInstance().put(old);
    80004d9c:	00048593          	mv	a1,s1
    80004da0:	0000b517          	auipc	a0,0xb
    80004da4:	ab850513          	addi	a0,a0,-1352 # 8000f858 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004da8:	00000097          	auipc	ra,0x0
    80004dac:	55c080e7          	jalr	1372(ra) # 80005304 <_ZN9Scheduler3putEP3TCB>
    }
    else{
        TCB::operator delete(old);
    }
//    TCB::time_slice_counter = 0;
    TCB::context_switch(&old->context, &running->context);
    80004db0:	0000b597          	auipc	a1,0xb
    80004db4:	c605b583          	ld	a1,-928(a1) # 8000fa10 <_ZN3TCB7runningE>
    80004db8:	01858593          	addi	a1,a1,24
    80004dbc:	01848513          	addi	a0,s1,24
    80004dc0:	ffffc097          	auipc	ra,0xffffc
    80004dc4:	470080e7          	jalr	1136(ra) # 80001230 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80004dc8:	01813083          	ld	ra,24(sp)
    80004dcc:	01013403          	ld	s0,16(sp)
    80004dd0:	00813483          	ld	s1,8(sp)
    80004dd4:	02010113          	addi	sp,sp,32
    80004dd8:	00008067          	ret
    80004ddc:	0000b797          	auipc	a5,0xb
    80004de0:	a547c783          	lbu	a5,-1452(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004de4:	00078e63          	beqz	a5,80004e00 <_ZN3TCB15thread_dispatchEv+0x100>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80004de8:	00048593          	mv	a1,s1
    80004dec:	0000b517          	auipc	a0,0xb
    80004df0:	a4c50513          	addi	a0,a0,-1460 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80004df4:	00000097          	auipc	ra,0x0
    80004df8:	644080e7          	jalr	1604(ra) # 80005438 <_ZN15MemoryAllocator11memory_freeEPv>
    }
    80004dfc:	fb5ff06f          	j	80004db0 <_ZN3TCB15thread_dispatchEv+0xb0>
    MemoryAllocator(){
    80004e00:	0000b617          	auipc	a2,0xb
    80004e04:	a3860613          	addi	a2,a2,-1480 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80004e08:	0000b797          	auipc	a5,0xb
    80004e0c:	9e07b783          	ld	a5,-1568(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004e10:	0007b703          	ld	a4,0(a5)
    80004e14:	0000b797          	auipc	a5,0xb
    80004e18:	98c7b783          	ld	a5,-1652(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004e1c:	0007b783          	ld	a5,0(a5)
    80004e20:	40f706b3          	sub	a3,a4,a5
    80004e24:	0036d693          	srli	a3,a3,0x3
    80004e28:	00d787b3          	add	a5,a5,a3
    80004e2c:	00178793          	addi	a5,a5,1
    80004e30:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80004e34:	fff70713          	addi	a4,a4,-1
    80004e38:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80004e3c:	03f7f693          	andi	a3,a5,63
    80004e40:	00068663          	beqz	a3,80004e4c <_ZN3TCB15thread_dispatchEv+0x14c>
    80004e44:	04000613          	li	a2,64
    80004e48:	40d606b3          	sub	a3,a2,a3
    80004e4c:	00d787b3          	add	a5,a5,a3
    80004e50:	0000b697          	auipc	a3,0xb
    80004e54:	9ef6b423          	sd	a5,-1560(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80004e58:	40f70733          	sub	a4,a4,a5
    80004e5c:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80004e60:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004e64:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004e68:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004e6c:	00100793          	li	a5,1
    80004e70:	0000b717          	auipc	a4,0xb
    80004e74:	9cf70023          	sb	a5,-1600(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004e78:	f71ff06f          	j	80004de8 <_ZN3TCB15thread_dispatchEv+0xe8>

0000000080004e7c <_ZN3TCB11thread_exitEv>:
int TCB::thread_exit() {
    80004e7c:	ff010113          	addi	sp,sp,-16
    80004e80:	00113423          	sd	ra,8(sp)
    80004e84:	00813023          	sd	s0,0(sp)
    80004e88:	01010413          	addi	s0,sp,16
    void set_finished(bool f){ this->finished = f; }
    80004e8c:	0000b797          	auipc	a5,0xb
    80004e90:	b847b783          	ld	a5,-1148(a5) # 8000fa10 <_ZN3TCB7runningE>
    80004e94:	00100713          	li	a4,1
    80004e98:	02e78423          	sb	a4,40(a5)
    TCB::thread_dispatch();
    80004e9c:	00000097          	auipc	ra,0x0
    80004ea0:	e64080e7          	jalr	-412(ra) # 80004d00 <_ZN3TCB15thread_dispatchEv>
}
    80004ea4:	fff00513          	li	a0,-1
    80004ea8:	00813083          	ld	ra,8(sp)
    80004eac:	00013403          	ld	s0,0(sp)
    80004eb0:	01010113          	addi	sp,sp,16
    80004eb4:	00008067          	ret

0000000080004eb8 <_ZN3TCB14thread_wrapperEv>:

void TCB::thread_wrapper() {
    80004eb8:	ff010113          	addi	sp,sp,-16
    80004ebc:	00113423          	sd	ra,8(sp)
    80004ec0:	00813023          	sd	s0,0(sp)
    80004ec4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80004ec8:	00000097          	auipc	ra,0x0
    80004ecc:	878080e7          	jalr	-1928(ra) # 80004740 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80004ed0:	0000b797          	auipc	a5,0xb
    80004ed4:	b407b783          	ld	a5,-1216(a5) # 8000fa10 <_ZN3TCB7runningE>
    80004ed8:	0007b703          	ld	a4,0(a5)
    80004edc:	0087b503          	ld	a0,8(a5)
    80004ee0:	000700e7          	jalr	a4
    thread_exit();
    80004ee4:	00000097          	auipc	ra,0x0
    80004ee8:	f98080e7          	jalr	-104(ra) # 80004e7c <_ZN3TCB11thread_exitEv>
}
    80004eec:	00813083          	ld	ra,8(sp)
    80004ef0:	00013403          	ld	s0,0(sp)
    80004ef4:	01010113          	addi	sp,sp,16
    80004ef8:	00008067          	ret

0000000080004efc <_ZN3TCBC1EPFvPvES0_S0_b>:

TCB::TCB(Body body_init, void *arg, void *stack_space, bool b) {
    80004efc:	ff010113          	addi	sp,sp,-16
    80004f00:	00813423          	sd	s0,8(sp)
    80004f04:	01010413          	addi	s0,sp,16
    body = body_init;
    80004f08:	00b53023          	sd	a1,0(a0)
    argument = arg;
    80004f0c:	00c53423          	sd	a2,8(a0)
    stack = (uint64*)stack_space;
    80004f10:	00d53823          	sd	a3,16(a0)
    context.ra = (uint64) &thread_wrapper;
    80004f14:	00000797          	auipc	a5,0x0
    80004f18:	fa478793          	addi	a5,a5,-92 # 80004eb8 <_ZN3TCB14thread_wrapperEv>
    80004f1c:	00f53c23          	sd	a5,24(a0)
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    80004f20:	04068e63          	beqz	a3,80004f7c <_ZN3TCBC1EPFvPvES0_S0_b+0x80>
    80004f24:	000017b7          	lui	a5,0x1
    80004f28:	00f686b3          	add	a3,a3,a5
    80004f2c:	02d53023          	sd	a3,32(a0)
    finished = false;
    80004f30:	02050423          	sb	zero,40(a0)
    next_scheduler = nullptr;
    80004f34:	02053823          	sd	zero,48(a0)
    next_sleep = nullptr;
    80004f38:	02053c23          	sd	zero,56(a0)
    next_blocked = nullptr;
    80004f3c:	04053023          	sd	zero,64(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80004f40:	00200793          	li	a5,2
    80004f44:	04f53823          	sd	a5,80(a0)
    sleep = 0;
    80004f48:	04053423          	sd	zero,72(a0)
    id = ID++;
    80004f4c:	0000b697          	auipc	a3,0xb
    80004f50:	ac468693          	addi	a3,a3,-1340 # 8000fa10 <_ZN3TCB7runningE>
    80004f54:	0086b783          	ld	a5,8(a3)
    80004f58:	00178613          	addi	a2,a5,1 # 1001 <_entry-0x7fffefff>
    80004f5c:	00c6b423          	sd	a2,8(a3)
    80004f60:	04f53c23          	sd	a5,88(a0)
    flag = b;
    80004f64:	06e50023          	sb	a4,96(a0)
    periodic = false;
    80004f68:	060500a3          	sb	zero,97(a0)
    next_period = nullptr;
    80004f6c:	06053423          	sd	zero,104(a0)
}
    80004f70:	00813403          	ld	s0,8(sp)
    80004f74:	01010113          	addi	sp,sp,16
    80004f78:	00008067          	ret
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    80004f7c:	00000693          	li	a3,0
    80004f80:	fadff06f          	j	80004f2c <_ZN3TCBC1EPFvPvES0_S0_b+0x30>

0000000080004f84 <_ZN3TCB5yieldEv>:
    TS::getInstance().put(running);
    TCB::yield();
    return 0;
}

void TCB::yield() {
    80004f84:	fe010113          	addi	sp,sp,-32
    80004f88:	00113c23          	sd	ra,24(sp)
    80004f8c:	00813823          	sd	s0,16(sp)
    80004f90:	00913423          	sd	s1,8(sp)
    80004f94:	02010413          	addi	s0,sp,32
    TCB * old = running;
    80004f98:	0000b497          	auipc	s1,0xb
    80004f9c:	a784b483          	ld	s1,-1416(s1) # 8000fa10 <_ZN3TCB7runningE>
    80004fa0:	0000b797          	auipc	a5,0xb
    80004fa4:	8b07c783          	lbu	a5,-1872(a5) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004fa8:	02079463          	bnez	a5,80004fd0 <_ZN3TCB5yieldEv+0x4c>
        head = nullptr;
    80004fac:	0000b797          	auipc	a5,0xb
    80004fb0:	8147b783          	ld	a5,-2028(a5) # 8000f7c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004fb4:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004fb8:	0000a797          	auipc	a5,0xa
    80004fbc:	7e07b783          	ld	a5,2016(a5) # 8000f798 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004fc0:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004fc4:	00100793          	li	a5,1
    80004fc8:	0000b717          	auipc	a4,0xb
    80004fcc:	88f70423          	sb	a5,-1912(a4) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    running = Scheduler::getInstance().get();
    80004fd0:	0000b517          	auipc	a0,0xb
    80004fd4:	88850513          	addi	a0,a0,-1912 # 8000f858 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004fd8:	00000097          	auipc	ra,0x0
    80004fdc:	2c0080e7          	jalr	704(ra) # 80005298 <_ZN9Scheduler3getEv>
    80004fe0:	0000b797          	auipc	a5,0xb
    80004fe4:	a3078793          	addi	a5,a5,-1488 # 8000fa10 <_ZN3TCB7runningE>
    80004fe8:	00a7b023          	sd	a0,0(a5)
    TCB::time_slice_counter = 0;
    80004fec:	0007b823          	sd	zero,16(a5)
    TCB::context_switch(&old->context, &running->context);
    80004ff0:	01850593          	addi	a1,a0,24
    80004ff4:	01848513          	addi	a0,s1,24
    80004ff8:	ffffc097          	auipc	ra,0xffffc
    80004ffc:	238080e7          	jalr	568(ra) # 80001230 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80005000:	01813083          	ld	ra,24(sp)
    80005004:	01013403          	ld	s0,16(sp)
    80005008:	00813483          	ld	s1,8(sp)
    8000500c:	02010113          	addi	sp,sp,32
    80005010:	00008067          	ret

0000000080005014 <_ZN3TCB10time_sleepEm>:
int TCB::time_sleep(uint64 time) {
    80005014:	ff010113          	addi	sp,sp,-16
    80005018:	00113423          	sd	ra,8(sp)
    8000501c:	00813023          	sd	s0,0(sp)
    80005020:	01010413          	addi	s0,sp,16
    running->set_time_sleep(time);
    80005024:	0000b797          	auipc	a5,0xb
    80005028:	9ec7b783          	ld	a5,-1556(a5) # 8000fa10 <_ZN3TCB7runningE>
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    8000502c:	04a7b423          	sd	a0,72(a5)

class TS{
public:

    static TS& getInstance(){
        static TS instance;
    80005030:	0000b717          	auipc	a4,0xb
    80005034:	a0074703          	lbu	a4,-1536(a4) # 8000fa30 <_ZGVZN2TS11getInstanceEvE8instance>
    80005038:	00071e63          	bnez	a4,80005054 <_ZN3TCB10time_sleepEm+0x40>
    static void decrement_and_remove();

//    static void printTS();

private:
    TS(){head = nullptr;}
    8000503c:	0000a717          	auipc	a4,0xa
    80005040:	76c73703          	ld	a4,1900(a4) # 8000f7a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80005044:	00073023          	sd	zero,0(a4)
        static TS instance;
    80005048:	00100713          	li	a4,1
    8000504c:	0000b697          	auipc	a3,0xb
    80005050:	9ee68223          	sb	a4,-1564(a3) # 8000fa30 <_ZGVZN2TS11getInstanceEvE8instance>
    TS::getInstance().put(running);
    80005054:	00078513          	mv	a0,a5
    80005058:	00000097          	auipc	ra,0x0
    8000505c:	5a8080e7          	jalr	1448(ra) # 80005600 <_ZN2TS3putEP3TCB>
    TCB::yield();
    80005060:	00000097          	auipc	ra,0x0
    80005064:	f24080e7          	jalr	-220(ra) # 80004f84 <_ZN3TCB5yieldEv>
}
    80005068:	00000513          	li	a0,0
    8000506c:	00813083          	ld	ra,8(sp)
    80005070:	00013403          	ld	s0,0(sp)
    80005074:	01010113          	addi	sp,sp,16
    80005078:	00008067          	ret

000000008000507c <_ZN3TCB9TCB_setupEPFvPvES0_S0_b>:

void TCB::TCB_setup(TCB::Body body_init, void *arg, void *stack_space, bool b) {
    8000507c:	ff010113          	addi	sp,sp,-16
    80005080:	00813423          	sd	s0,8(sp)
    80005084:	01010413          	addi	s0,sp,16
    body = body_init;
    80005088:	00b53023          	sd	a1,0(a0)
    argument = arg;
    8000508c:	00c53423          	sd	a2,8(a0)
    stack = (uint64*)stack_space;
    80005090:	00d53823          	sd	a3,16(a0)
    context.ra = (uint64) &thread_wrapper;
    80005094:	00000797          	auipc	a5,0x0
    80005098:	e2478793          	addi	a5,a5,-476 # 80004eb8 <_ZN3TCB14thread_wrapperEv>
    8000509c:	00f53c23          	sd	a5,24(a0)
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    800050a0:	04068e63          	beqz	a3,800050fc <_ZN3TCB9TCB_setupEPFvPvES0_S0_b+0x80>
    800050a4:	000017b7          	lui	a5,0x1
    800050a8:	00f686b3          	add	a3,a3,a5
    800050ac:	02d53023          	sd	a3,32(a0)
    finished = false;
    800050b0:	02050423          	sb	zero,40(a0)
    next_scheduler = nullptr;
    800050b4:	02053823          	sd	zero,48(a0)
    next_sleep = nullptr;
    800050b8:	02053c23          	sd	zero,56(a0)
    next_blocked = nullptr;
    800050bc:	04053023          	sd	zero,64(a0)
    time_slice = DEFAULT_TIME_SLICE;
    800050c0:	00200793          	li	a5,2
    800050c4:	04f53823          	sd	a5,80(a0)
    sleep = 0;
    800050c8:	04053423          	sd	zero,72(a0)
    id = ID++;
    800050cc:	0000b697          	auipc	a3,0xb
    800050d0:	94468693          	addi	a3,a3,-1724 # 8000fa10 <_ZN3TCB7runningE>
    800050d4:	0086b783          	ld	a5,8(a3)
    800050d8:	00178613          	addi	a2,a5,1 # 1001 <_entry-0x7fffefff>
    800050dc:	00c6b423          	sd	a2,8(a3)
    800050e0:	04f53c23          	sd	a5,88(a0)
    flag = b;
    800050e4:	06e50023          	sb	a4,96(a0)
    periodic = false;
    800050e8:	060500a3          	sb	zero,97(a0)
    next_period = nullptr;
    800050ec:	06053423          	sd	zero,104(a0)
}
    800050f0:	00813403          	ld	s0,8(sp)
    800050f4:	01010113          	addi	sp,sp,16
    800050f8:	00008067          	ret
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    800050fc:	00000693          	li	a3,0
    80005100:	fadff06f          	j	800050ac <_ZN3TCB9TCB_setupEPFvPvES0_S0_b+0x30>

0000000080005104 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b>:
) {
    80005104:	fc010113          	addi	sp,sp,-64
    80005108:	02113c23          	sd	ra,56(sp)
    8000510c:	02813823          	sd	s0,48(sp)
    80005110:	02913423          	sd	s1,40(sp)
    80005114:	03213023          	sd	s2,32(sp)
    80005118:	01313c23          	sd	s3,24(sp)
    8000511c:	01413823          	sd	s4,16(sp)
    80005120:	01513423          	sd	s5,8(sp)
    80005124:	01613023          	sd	s6,0(sp)
    80005128:	04010413          	addi	s0,sp,64
    8000512c:	00050913          	mv	s2,a0
    80005130:	00058993          	mv	s3,a1
    80005134:	00060a93          	mv	s5,a2
    80005138:	00068b13          	mv	s6,a3
    8000513c:	00070a13          	mv	s4,a4
    80005140:	0000a797          	auipc	a5,0xa
    80005144:	6f07c783          	lbu	a5,1776(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80005148:	0c078663          	beqz	a5,80005214 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x110>
    TCB* tmp = (TCB*)MemoryAllocator::getInstance().memory_alloc(size_of_block_for_tcb);
    8000514c:	00200593          	li	a1,2
    80005150:	0000a517          	auipc	a0,0xa
    80005154:	6e850513          	addi	a0,a0,1768 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80005158:	00000097          	auipc	ra,0x0
    8000515c:	20c080e7          	jalr	524(ra) # 80005364 <_ZN15MemoryAllocator12memory_allocEm>
    80005160:	00050493          	mv	s1,a0
    if(tmp)tmp->TCB_setup(start_routine, arg, stack_space, flag);
    80005164:	00050e63          	beqz	a0,80005180 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x7c>
    80005168:	000a0713          	mv	a4,s4
    8000516c:	000b0693          	mv	a3,s6
    80005170:	000a8613          	mv	a2,s5
    80005174:	00098593          	mv	a1,s3
    80005178:	00000097          	auipc	ra,0x0
    8000517c:	f04080e7          	jalr	-252(ra) # 8000507c <_ZN3TCB9TCB_setupEPFvPvES0_S0_b>
    *handle = tmp;
    80005180:	00993023          	sd	s1,0(s2)
    if (tmp && start_routine != nullptr && tmp != TCB::idle && flag) {
    80005184:	04048e63          	beqz	s1,800051e0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xdc>
    80005188:	04098c63          	beqz	s3,800051e0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xdc>
    8000518c:	0000b797          	auipc	a5,0xb
    80005190:	89c7b783          	ld	a5,-1892(a5) # 8000fa28 <_ZN3TCB4idleE>
    80005194:	04978663          	beq	a5,s1,800051e0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xdc>
    80005198:	040a0463          	beqz	s4,800051e0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xdc>
    8000519c:	0000a797          	auipc	a5,0xa
    800051a0:	6b47c783          	lbu	a5,1716(a5) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    800051a4:	02079463          	bnez	a5,800051cc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xc8>
        head = nullptr;
    800051a8:	0000a797          	auipc	a5,0xa
    800051ac:	6187b783          	ld	a5,1560(a5) # 8000f7c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800051b0:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    800051b4:	0000a797          	auipc	a5,0xa
    800051b8:	5e47b783          	ld	a5,1508(a5) # 8000f798 <_GLOBAL_OFFSET_TABLE_+0x18>
    800051bc:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    800051c0:	00100793          	li	a5,1
    800051c4:	0000a717          	auipc	a4,0xa
    800051c8:	68f70623          	sb	a5,1676(a4) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
        Scheduler::getInstance().put(tmp);
    800051cc:	00048593          	mv	a1,s1
    800051d0:	0000a517          	auipc	a0,0xa
    800051d4:	68850513          	addi	a0,a0,1672 # 8000f858 <_ZZN9Scheduler11getInstanceEvE8instance>
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	12c080e7          	jalr	300(ra) # 80005304 <_ZN9Scheduler3putEP3TCB>
    if(*handle) return 0;
    800051e0:	00093783          	ld	a5,0(s2)
    800051e4:	0a078663          	beqz	a5,80005290 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x18c>
    800051e8:	00000513          	li	a0,0
}
    800051ec:	03813083          	ld	ra,56(sp)
    800051f0:	03013403          	ld	s0,48(sp)
    800051f4:	02813483          	ld	s1,40(sp)
    800051f8:	02013903          	ld	s2,32(sp)
    800051fc:	01813983          	ld	s3,24(sp)
    80005200:	01013a03          	ld	s4,16(sp)
    80005204:	00813a83          	ld	s5,8(sp)
    80005208:	00013b03          	ld	s6,0(sp)
    8000520c:	04010113          	addi	sp,sp,64
    80005210:	00008067          	ret
    MemoryAllocator(){
    80005214:	0000a617          	auipc	a2,0xa
    80005218:	62460613          	addi	a2,a2,1572 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    8000521c:	0000a797          	auipc	a5,0xa
    80005220:	5cc7b783          	ld	a5,1484(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005224:	0007b703          	ld	a4,0(a5)
    80005228:	0000a797          	auipc	a5,0xa
    8000522c:	5787b783          	ld	a5,1400(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005230:	0007b783          	ld	a5,0(a5)
    80005234:	40f706b3          	sub	a3,a4,a5
    80005238:	0036d693          	srli	a3,a3,0x3
    8000523c:	00d787b3          	add	a5,a5,a3
    80005240:	00178793          	addi	a5,a5,1
    80005244:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80005248:	fff70713          	addi	a4,a4,-1
    8000524c:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80005250:	03f7f693          	andi	a3,a5,63
    80005254:	00068663          	beqz	a3,80005260 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x15c>
    80005258:	04000613          	li	a2,64
    8000525c:	40d606b3          	sub	a3,a2,a3
    80005260:	00d787b3          	add	a5,a5,a3
    80005264:	0000a697          	auipc	a3,0xa
    80005268:	5cf6ba23          	sd	a5,1492(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    8000526c:	40f70733          	sub	a4,a4,a5
    80005270:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80005274:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80005278:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    8000527c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80005280:	00100793          	li	a5,1
    80005284:	0000a717          	auipc	a4,0xa
    80005288:	5af70623          	sb	a5,1452(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000528c:	ec1ff06f          	j	8000514c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x48>
    else return -1;
    80005290:	fff00513          	li	a0,-1
    80005294:	f59ff06f          	j	800051ec <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xe8>

0000000080005298 <_ZN9Scheduler3getEv>:
#include "../h/TCB.hpp"

TCB* Scheduler::head;
TCB* Scheduler::tail;

TCB* Scheduler::get(){
    80005298:	ff010113          	addi	sp,sp,-16
    8000529c:	00813423          	sd	s0,8(sp)
    800052a0:	01010413          	addi	s0,sp,16
    800052a4:	0200006f          	j	800052c4 <_ZN9Scheduler3getEv+0x2c>
    while(head) {
        if (!head) { return TCB::idle; }
        TCB *tmp = head;
        if (head == tail) head = tail = nullptr;
    800052a8:	0000a797          	auipc	a5,0xa
    800052ac:	79078793          	addi	a5,a5,1936 # 8000fa38 <_ZN9Scheduler4headE>
    800052b0:	0007b423          	sd	zero,8(a5)
    800052b4:	0007b023          	sd	zero,0(a5)
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    800052b8:	02053823          	sd	zero,48(a0)
    bool is_finished()const{return finished;}
    800052bc:	02854783          	lbu	a5,40(a0)
        else head = head->get_next_scheduler();
        tmp->set_next_scheduler(nullptr);
        if(!tmp->is_finished())return tmp;
    800052c0:	02078c63          	beqz	a5,800052f8 <_ZN9Scheduler3getEv+0x60>
    while(head) {
    800052c4:	0000a517          	auipc	a0,0xa
    800052c8:	77453503          	ld	a0,1908(a0) # 8000fa38 <_ZN9Scheduler4headE>
    800052cc:	02050063          	beqz	a0,800052ec <_ZN9Scheduler3getEv+0x54>
        if (head == tail) head = tail = nullptr;
    800052d0:	0000a797          	auipc	a5,0xa
    800052d4:	7707b783          	ld	a5,1904(a5) # 8000fa40 <_ZN9Scheduler4tailE>
    800052d8:	fcf508e3          	beq	a0,a5,800052a8 <_ZN9Scheduler3getEv+0x10>
    TCB* get_next_scheduler()const{ return next_scheduler; }
    800052dc:	03053783          	ld	a5,48(a0)
        else head = head->get_next_scheduler();
    800052e0:	0000a717          	auipc	a4,0xa
    800052e4:	74f73c23          	sd	a5,1880(a4) # 8000fa38 <_ZN9Scheduler4headE>
    800052e8:	fd1ff06f          	j	800052b8 <_ZN9Scheduler3getEv+0x20>
    }
    return TCB::idle;
    800052ec:	0000a797          	auipc	a5,0xa
    800052f0:	4cc7b783          	ld	a5,1228(a5) # 8000f7b8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800052f4:	0007b503          	ld	a0,0(a5)
}
    800052f8:	00813403          	ld	s0,8(sp)
    800052fc:	01010113          	addi	sp,sp,16
    80005300:	00008067          	ret

0000000080005304 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB* tcb){
    80005304:	ff010113          	addi	sp,sp,-16
    80005308:	00813423          	sd	s0,8(sp)
    8000530c:	01010413          	addi	s0,sp,16
    if(tcb == TCB::idle)return;
    80005310:	0000a797          	auipc	a5,0xa
    80005314:	4a87b783          	ld	a5,1192(a5) # 8000f7b8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005318:	0007b783          	ld	a5,0(a5)
    8000531c:	02b78463          	beq	a5,a1,80005344 <_ZN9Scheduler3putEP3TCB+0x40>
    bool is_finished()const{return finished;}
    80005320:	0285c783          	lbu	a5,40(a1)
    if(tcb->is_finished())return;
    80005324:	02079063          	bnez	a5,80005344 <_ZN9Scheduler3putEP3TCB+0x40>
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    80005328:	0205b823          	sd	zero,48(a1)
    tcb->set_next_scheduler(nullptr);
    if(tail){
    8000532c:	0000a797          	auipc	a5,0xa
    80005330:	7147b783          	ld	a5,1812(a5) # 8000fa40 <_ZN9Scheduler4tailE>
    80005334:	00078e63          	beqz	a5,80005350 <_ZN9Scheduler3putEP3TCB+0x4c>
    80005338:	02b7b823          	sd	a1,48(a5)
        tail->set_next_scheduler(tcb);
        tail = tail->get_next_scheduler();
    8000533c:	0000a797          	auipc	a5,0xa
    80005340:	70b7b223          	sd	a1,1796(a5) # 8000fa40 <_ZN9Scheduler4tailE>
    }
    else head = tail = tcb;
}
    80005344:	00813403          	ld	s0,8(sp)
    80005348:	01010113          	addi	sp,sp,16
    8000534c:	00008067          	ret
    else head = tail = tcb;
    80005350:	0000a797          	auipc	a5,0xa
    80005354:	6e878793          	addi	a5,a5,1768 # 8000fa38 <_ZN9Scheduler4headE>
    80005358:	00b7b423          	sd	a1,8(a5)
    8000535c:	00b7b023          	sd	a1,0(a5)
    80005360:	fe5ff06f          	j	80005344 <_ZN9Scheduler3putEP3TCB+0x40>

0000000080005364 <_ZN15MemoryAllocator12memory_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::memory_alloc (size_t ssize){
    80005364:	ff010113          	addi	sp,sp,-16
    80005368:	00813423          	sd	s0,8(sp)
    8000536c:	01010413          	addi	s0,sp,16
    80005370:	00050713          	mv	a4,a0
    for(FreeMem* cur = fmem_head; cur != nullptr; cur = cur->next   ){ //  cur =  (FreeMem*)(*((char*)cur + 1))
    80005374:	00053503          	ld	a0,0(a0)
    80005378:	06050063          	beqz	a0,800053d8 <_ZN15MemoryAllocator12memory_allocEm+0x74>
//        printString("velicina u blokovima: ");
//        printInteger(this->fmem_head->size);
//        printString("\n");

        // <= stavljamo jer zelimo size + 1 blok u tom dodatnom cuvam podatak o broju blokova
        if(*((size_t*)cur) <= ssize) continue;
    8000537c:	00053783          	ld	a5,0(a0)
    80005380:	06f5f263          	bgeu	a1,a5,800053e4 <_ZN15MemoryAllocator12memory_allocEm+0x80>

        // slucaj da imamo jedan blok viska, dodajemo ga jer ne mozemo nista sa njim (trebaju min 2)
        if(cur->size == ssize + 2){
    80005384:	00258693          	addi	a3,a1,2
    80005388:	06d78263          	beq	a5,a3,800053ec <_ZN15MemoryAllocator12memory_allocEm+0x88>

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = ssize + 1;
        }
        else {
            FreeMem *newfrgm = (FreeMem *) ((char *) cur + (ssize + 1) * MEM_BLOCK_SIZE);
    8000538c:	00158793          	addi	a5,a1,1
    80005390:	00679793          	slli	a5,a5,0x6
    80005394:	00f507b3          	add	a5,a0,a5

            // ubacivanje ostatka adresa u evidenciju slobodnih adresa
            if (cur->prev) cur->prev->next = newfrgm;
    80005398:	01053683          	ld	a3,16(a0)
    8000539c:	08068a63          	beqz	a3,80005430 <_ZN15MemoryAllocator12memory_allocEm+0xcc>
    800053a0:	00f6b423          	sd	a5,8(a3)
            else fmem_head = newfrgm;
            if (cur->next)cur->next->prev = newfrgm;
    800053a4:	00853703          	ld	a4,8(a0)
    800053a8:	00070463          	beqz	a4,800053b0 <_ZN15MemoryAllocator12memory_allocEm+0x4c>
    800053ac:	00f73823          	sd	a5,16(a4)
            newfrgm->prev = cur->prev;
    800053b0:	01053703          	ld	a4,16(a0)
    800053b4:	00e7b823          	sd	a4,16(a5)
            newfrgm->next = cur->next;
    800053b8:	00853703          	ld	a4,8(a0)
    800053bc:	00e7b423          	sd	a4,8(a5)
            newfrgm->size = cur->size - ssize - 1;
    800053c0:	00053703          	ld	a4,0(a0)
    800053c4:	40b70733          	sub	a4,a4,a1
    800053c8:	fff70713          	addi	a4,a4,-1
    800053cc:	00e7b023          	sd	a4,0(a5)

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = ssize;
    800053d0:	00b50023          	sb	a1,0(a0)
        }
        return (void*)((char*)cur + MEM_BLOCK_SIZE);
    800053d4:	04050513          	addi	a0,a0,64
    }
    return nullptr;
}
    800053d8:	00813403          	ld	s0,8(sp)
    800053dc:	01010113          	addi	sp,sp,16
    800053e0:	00008067          	ret
    for(FreeMem* cur = fmem_head; cur != nullptr; cur = cur->next   ){ //  cur =  (FreeMem*)(*((char*)cur + 1))
    800053e4:	00853503          	ld	a0,8(a0)
    800053e8:	f91ff06f          	j	80005378 <_ZN15MemoryAllocator12memory_allocEm+0x14>
            if (cur->prev) {
    800053ec:	01053783          	ld	a5,16(a0)
    800053f0:	02078463          	beqz	a5,80005418 <_ZN15MemoryAllocator12memory_allocEm+0xb4>
                cur->prev->next = cur->next;
    800053f4:	00853703          	ld	a4,8(a0)
    800053f8:	00e7b423          	sd	a4,8(a5)
                if(cur->next)cur->next->prev = cur->prev;
    800053fc:	00853783          	ld	a5,8(a0)
    80005400:	00078663          	beqz	a5,8000540c <_ZN15MemoryAllocator12memory_allocEm+0xa8>
    80005404:	01053703          	ld	a4,16(a0)
    80005408:	00e7b823          	sd	a4,16(a5)
            *((char*)cur) = ssize + 1;
    8000540c:	0015859b          	addiw	a1,a1,1
    80005410:	00b50023          	sb	a1,0(a0)
    80005414:	fc1ff06f          	j	800053d4 <_ZN15MemoryAllocator12memory_allocEm+0x70>
                fmem_head = cur->next;
    80005418:	00853783          	ld	a5,8(a0)
    8000541c:	00f73023          	sd	a5,0(a4)
                if(cur->next)cur->next->prev = nullptr;
    80005420:	00853783          	ld	a5,8(a0)
    80005424:	fe0784e3          	beqz	a5,8000540c <_ZN15MemoryAllocator12memory_allocEm+0xa8>
    80005428:	0007b823          	sd	zero,16(a5)
    8000542c:	fe1ff06f          	j	8000540c <_ZN15MemoryAllocator12memory_allocEm+0xa8>
            else fmem_head = newfrgm;
    80005430:	00f73023          	sd	a5,0(a4)
    80005434:	f71ff06f          	j	800053a4 <_ZN15MemoryAllocator12memory_allocEm+0x40>

0000000080005438 <_ZN15MemoryAllocator11memory_freeEPv>:

int MemoryAllocator::memory_free(void * add) {
    80005438:	ff010113          	addi	sp,sp,-16
    8000543c:	00813423          	sd	s0,8(sp)
    80005440:	01010413          	addi	s0,sp,16
    // u slucaju prosledjenog nullptr
    if(add == nullptr)return 0;
    80005444:	16058263          	beqz	a1,800055a8 <_ZN15MemoryAllocator11memory_freeEPv+0x170>
    // dalja obrada
    FreeMem* cur = nullptr;
    char* addr = (char*)add;
    size_t size = *(addr - MEM_BLOCK_SIZE);
    80005448:	fc05c603          	lbu	a2,-64(a1)
    // u slucaju da smo prosledili adresu van heap - a
    if(addr < (char*)HEAP_START_ADDR || addr >= (char*)HEAP_END_ADDR)return -1; // address out of bounds exception
    8000544c:	0000a797          	auipc	a5,0xa
    80005450:	3547b783          	ld	a5,852(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005454:	0007b783          	ld	a5,0(a5)
    80005458:	14f5ec63          	bltu	a1,a5,800055b0 <_ZN15MemoryAllocator11memory_freeEPv+0x178>
    8000545c:	0000a797          	auipc	a5,0xa
    80005460:	38c7b783          	ld	a5,908(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005464:	0007b783          	ld	a5,0(a5)
    80005468:	14f5f863          	bgeu	a1,a5,800055b8 <_ZN15MemoryAllocator11memory_freeEPv+0x180>
    if(!fmem_head || addr < (char*)fmem_head)
    8000546c:	00053683          	ld	a3,0(a0)
    80005470:	06068c63          	beqz	a3,800054e8 <_ZN15MemoryAllocator11memory_freeEPv+0xb0>
    80005474:	06d5ee63          	bltu	a1,a3,800054f0 <_ZN15MemoryAllocator11memory_freeEPv+0xb8>
        cur = nullptr;
    else
        for(cur = fmem_head; cur->next != nullptr && addr > (char*)(cur->next); cur = cur->next);
    80005478:	00068793          	mv	a5,a3
    8000547c:	00078713          	mv	a4,a5
    80005480:	0087b783          	ld	a5,8(a5)
    80005484:	00078463          	beqz	a5,8000548c <_ZN15MemoryAllocator11memory_freeEPv+0x54>
    80005488:	feb7eae3          	bltu	a5,a1,8000547c <_ZN15MemoryAllocator11memory_freeEPv+0x44>

    // Try to append it to the previous free segment cur
    if(cur && (char*)cur + (cur->size + 1) * MEM_BLOCK_SIZE == addr){
    8000548c:	06070463          	beqz	a4,800054f4 <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
    80005490:	00073883          	ld	a7,0(a4)
    80005494:	00188813          	addi	a6,a7,1
    80005498:	00681813          	slli	a6,a6,0x6
    8000549c:	01070833          	add	a6,a4,a6
    800054a0:	04b81a63          	bne	a6,a1,800054f4 <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
        cur->size += size + 1; // dodajemo jos jedan zbog bloka za evidenciju
    800054a4:	00c886b3          	add	a3,a7,a2
    800054a8:	00168693          	addi	a3,a3,1
    800054ac:	00d73023          	sd	a3,0(a4)
        // Try to join cur with the next free segment
        // ovde je ranije stajalo (cur->size + 1) * MEM_BLOCK_SIZE ali je +1 obrisan jer je taj prostor vec oslobodjen pa gadjamo najnormalnije adresu
        if(cur->next && (char*)cur + cur->size * MEM_BLOCK_SIZE == (char*)(cur->next)){
    800054b0:	00078863          	beqz	a5,800054c0 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
    800054b4:	00669613          	slli	a2,a3,0x6
    800054b8:	00c70633          	add	a2,a4,a2
    800054bc:	00c78663          	beq	a5,a2,800054c8 <_ZN15MemoryAllocator11memory_freeEPv+0x90>
            // Remove the cur->next segment
            cur->size += cur->next->size; // dodajemo jos jedan zbog bloka za evidenciju
            cur->next = cur->next->next;
            if(cur->next) cur->next->prev = cur;
        }
        return 0;
    800054c0:	00000513          	li	a0,0
    800054c4:	07c0006f          	j	80005540 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
            cur->size += cur->next->size; // dodajemo jos jedan zbog bloka za evidenciju
    800054c8:	0007b603          	ld	a2,0(a5)
    800054cc:	00c686b3          	add	a3,a3,a2
    800054d0:	00d73023          	sd	a3,0(a4)
            cur->next = cur->next->next;
    800054d4:	0087b783          	ld	a5,8(a5)
    800054d8:	00f73423          	sd	a5,8(a4)
            if(cur->next) cur->next->prev = cur;
    800054dc:	fe0782e3          	beqz	a5,800054c0 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
    800054e0:	00e7b823          	sd	a4,16(a5)
    800054e4:	fddff06f          	j	800054c0 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
        cur = nullptr;
    800054e8:	00068713          	mv	a4,a3
    800054ec:	0080006f          	j	800054f4 <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
    800054f0:	00000713          	li	a4,0
    }

    FreeMem* newSeg = (FreeMem*)(addr - MEM_BLOCK_SIZE); // moramo da ga vratimo unazad
    800054f4:	fc058813          	addi	a6,a1,-64

    // Try to append it to the next free segment:
    FreeMem* nxtSeg = cur?cur->next:fmem_head;
    800054f8:	00070463          	beqz	a4,80005500 <_ZN15MemoryAllocator11memory_freeEPv+0xc8>
    800054fc:	00873683          	ld	a3,8(a4)
    // ovde sa obrisao (size + 1) jer ne vracam ni addr za jedan blok unazad pa se to kompenzuje
    if(nxtSeg && addr + size * MEM_BLOCK_SIZE == (char*)nxtSeg){
    80005500:	00068863          	beqz	a3,80005510 <_ZN15MemoryAllocator11memory_freeEPv+0xd8>
    80005504:	00661793          	slli	a5,a2,0x6
    80005508:	00f587b3          	add	a5,a1,a5
    8000550c:	04d78063          	beq	a5,a3,8000554c <_ZN15MemoryAllocator11memory_freeEPv+0x114>
        else fmem_head = newSeg;
        return 0;
    }

    // No need to join; insert the new segment after cur
    newSeg->size = size + 1;
    80005510:	00160613          	addi	a2,a2,1
    80005514:	fcc5b023          	sd	a2,-64(a1)
    newSeg->prev = cur;
    80005518:	fce5b823          	sd	a4,-48(a1)
    if(cur)newSeg->next = cur->next;
    8000551c:	06070a63          	beqz	a4,80005590 <_ZN15MemoryAllocator11memory_freeEPv+0x158>
    80005520:	00873783          	ld	a5,8(a4)
    80005524:	fcf5b423          	sd	a5,-56(a1)
    else newSeg->next = fmem_head;
    if(newSeg->next) newSeg->next->prev = newSeg;
    80005528:	fc85b783          	ld	a5,-56(a1)
    8000552c:	00078463          	beqz	a5,80005534 <_ZN15MemoryAllocator11memory_freeEPv+0xfc>
    80005530:	0107b823          	sd	a6,16(a5)
    if(cur)cur->next = newSeg;
    80005534:	06070463          	beqz	a4,8000559c <_ZN15MemoryAllocator11memory_freeEPv+0x164>
    80005538:	01073423          	sd	a6,8(a4)
    else fmem_head = newSeg;

    return 0;
    8000553c:	00000513          	li	a0,0
}
    80005540:	00813403          	ld	s0,8(sp)
    80005544:	01010113          	addi	sp,sp,16
    80005548:	00008067          	ret
        newSeg->size = nxtSeg->size + size + 1;
    8000554c:	0006b783          	ld	a5,0(a3)
    80005550:	00c78633          	add	a2,a5,a2
    80005554:	00160613          	addi	a2,a2,1
    80005558:	fcc5b023          	sd	a2,-64(a1)
        newSeg->prev = nxtSeg->prev;
    8000555c:	0106b783          	ld	a5,16(a3)
    80005560:	fcf5b823          	sd	a5,-48(a1)
        newSeg->next = nxtSeg->next;
    80005564:	0086b783          	ld	a5,8(a3)
    80005568:	fcf5b423          	sd	a5,-56(a1)
        if(nxtSeg->next)nxtSeg->next->prev = newSeg;
    8000556c:	00078463          	beqz	a5,80005574 <_ZN15MemoryAllocator11memory_freeEPv+0x13c>
    80005570:	0107b823          	sd	a6,16(a5)
        if(nxtSeg->prev)nxtSeg->prev->next = newSeg;
    80005574:	0106b783          	ld	a5,16(a3)
    80005578:	00078863          	beqz	a5,80005588 <_ZN15MemoryAllocator11memory_freeEPv+0x150>
    8000557c:	0107b423          	sd	a6,8(a5)
        return 0;
    80005580:	00000513          	li	a0,0
    80005584:	fbdff06f          	j	80005540 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
        else fmem_head = newSeg;
    80005588:	01053023          	sd	a6,0(a0)
    8000558c:	ff5ff06f          	j	80005580 <_ZN15MemoryAllocator11memory_freeEPv+0x148>
    else newSeg->next = fmem_head;
    80005590:	00053783          	ld	a5,0(a0)
    80005594:	fcf5b423          	sd	a5,-56(a1)
    80005598:	f91ff06f          	j	80005528 <_ZN15MemoryAllocator11memory_freeEPv+0xf0>
    else fmem_head = newSeg;
    8000559c:	01053023          	sd	a6,0(a0)
    return 0;
    800055a0:	00000513          	li	a0,0
    800055a4:	f9dff06f          	j	80005540 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    if(add == nullptr)return 0;
    800055a8:	00000513          	li	a0,0
    800055ac:	f95ff06f          	j	80005540 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    if(addr < (char*)HEAP_START_ADDR || addr >= (char*)HEAP_END_ADDR)return -1; // address out of bounds exception
    800055b0:	fff00513          	li	a0,-1
    800055b4:	f8dff06f          	j	80005540 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    800055b8:	fff00513          	li	a0,-1
    800055bc:	f85ff06f          	j	80005540 <_ZN15MemoryAllocator11memory_freeEPv+0x108>

00000000800055c0 <_ZN3abi8sys_callEPv>:
#include "../h/abi.hpp"

void* abi::sys_call(void *param) {
    800055c0:	ff010113          	addi	sp,sp,-16
    800055c4:	00813423          	sd	s0,8(sp)
    800055c8:	01010413          	addi	s0,sp,16
    __asm__ volatile("ld a1, 8(a0)");
    800055cc:	00853583          	ld	a1,8(a0)
    __asm__ volatile("ld a2, 16(a0)");
    800055d0:	01053603          	ld	a2,16(a0)
    __asm__ volatile("ld a3, 24(a0)");
    800055d4:	01853683          	ld	a3,24(a0)
    __asm__ volatile("ld a4, 32(a0)");
    800055d8:	02053703          	ld	a4,32(a0)
    __asm__ volatile("ld a5, 40(a0)");
    800055dc:	02853783          	ld	a5,40(a0)
    __asm__ volatile("ld a6, 48(a0)");
    800055e0:	03053803          	ld	a6,48(a0)
    __asm__ volatile("ld a7, 56(a0)");
    800055e4:	03853883          	ld	a7,56(a0)
    __asm__ volatile("ld a0, (a0)");
    800055e8:	00053503          	ld	a0,0(a0)

    __asm__ volatile("ecall");
    800055ec:	00000073          	ecall
    // u a0 se nalazi povratna vrednost
    uint64 ret0;
    __asm__ volatile("mv %[ret], a0" : [ret]"=r"(ret0));
    800055f0:	00050513          	mv	a0,a0
    return (void*)ret0;
}
    800055f4:	00813403          	ld	s0,8(sp)
    800055f8:	01010113          	addi	sp,sp,16
    800055fc:	00008067          	ret

0000000080005600 <_ZN2TS3putEP3TCB>:
//        tmp = tmp->get_next_sleep();
//    }
//    printString("\n");
//}

void TS::put(TCB *tcb) {
    80005600:	ff010113          	addi	sp,sp,-16
    80005604:	00813423          	sd	s0,8(sp)
    80005608:	01010413          	addi	s0,sp,16

    if(!head){
    8000560c:	0000a797          	auipc	a5,0xa
    80005610:	43c7b783          	ld	a5,1084(a5) # 8000fa48 <_ZN2TS4headE>
    80005614:	02078463          	beqz	a5,8000563c <_ZN2TS3putEP3TCB+0x3c>
    uint64 get_time_sleep()const{ return sleep; }
    80005618:	04853703          	ld	a4,72(a0)
        head->set_next_sleep(nullptr);
//        printTS();
        return;
    }

    TCB* tmp = head, *prev = nullptr;
    8000561c:	00000613          	li	a2,0
    uint64 t_sleep = tcb->get_time_sleep();

    while(tmp && t_sleep >= tmp->get_time_sleep()){
    80005620:	02078663          	beqz	a5,8000564c <_ZN2TS3putEP3TCB+0x4c>
    80005624:	0487b683          	ld	a3,72(a5)
    80005628:	02d76263          	bltu	a4,a3,8000564c <_ZN2TS3putEP3TCB+0x4c>
        t_sleep -= tmp->get_time_sleep();
    8000562c:	40d70733          	sub	a4,a4,a3
        prev = tmp;
    80005630:	00078613          	mv	a2,a5
        tmp = tmp->get_next_sleep();
    80005634:	0387b783          	ld	a5,56(a5)
    while(tmp && t_sleep >= tmp->get_time_sleep()){
    80005638:	fe9ff06f          	j	80005620 <_ZN2TS3putEP3TCB+0x20>
        head = tcb;
    8000563c:	0000a797          	auipc	a5,0xa
    80005640:	40a7b623          	sd	a0,1036(a5) # 8000fa48 <_ZN2TS4headE>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    80005644:	02053c23          	sd	zero,56(a0)
        return;
    80005648:	0240006f          	j	8000566c <_ZN2TS3putEP3TCB+0x6c>
    8000564c:	02f53c23          	sd	a5,56(a0)

    }

    tcb->set_next_sleep(tmp);
    if(tmp)tmp->set_time_sleep(tmp->get_time_sleep() - t_sleep);
    80005650:	00078863          	beqz	a5,80005660 <_ZN2TS3putEP3TCB+0x60>
    uint64 get_time_sleep()const{ return sleep; }
    80005654:	0487b683          	ld	a3,72(a5)
    80005658:	40e686b3          	sub	a3,a3,a4
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    8000565c:	04d7b423          	sd	a3,72(a5)
    80005660:	04e53423          	sd	a4,72(a0)
    tcb->set_time_sleep(t_sleep);
    if(prev){
    80005664:	00060a63          	beqz	a2,80005678 <_ZN2TS3putEP3TCB+0x78>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    80005668:	02a63c23          	sd	a0,56(a2)
//    printTS();

    return;


}
    8000566c:	00813403          	ld	s0,8(sp)
    80005670:	01010113          	addi	sp,sp,16
    80005674:	00008067          	ret
        head = tcb;
    80005678:	0000a797          	auipc	a5,0xa
    8000567c:	3ca7b823          	sd	a0,976(a5) # 8000fa48 <_ZN2TS4headE>
    80005680:	fedff06f          	j	8000566c <_ZN2TS3putEP3TCB+0x6c>

0000000080005684 <_ZN2TS20decrement_and_removeEv>:

void TS::decrement_and_remove() {

    if(!head)return;
    80005684:	0000a797          	auipc	a5,0xa
    80005688:	3c47b783          	ld	a5,964(a5) # 8000fa48 <_ZN2TS4headE>
    8000568c:	0a078863          	beqz	a5,8000573c <_ZN2TS20decrement_and_removeEv+0xb8>
    uint64 get_time_sleep()const{ return sleep; }
    80005690:	0487b703          	ld	a4,72(a5)

    head->set_time_sleep(head->get_time_sleep() - 1);
    80005694:	fff70713          	addi	a4,a4,-1
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    80005698:	04e7b423          	sd	a4,72(a5)
    TCB* tmp;
    while(head && !head->get_time_sleep()){
    8000569c:	0000a597          	auipc	a1,0xa
    800056a0:	3ac5b583          	ld	a1,940(a1) # 8000fa48 <_ZN2TS4headE>
    800056a4:	08058c63          	beqz	a1,8000573c <_ZN2TS20decrement_and_removeEv+0xb8>
    uint64 get_time_sleep()const{ return sleep; }
    800056a8:	0485b783          	ld	a5,72(a1)
    800056ac:	08079863          	bnez	a5,8000573c <_ZN2TS20decrement_and_removeEv+0xb8>
void TS::decrement_and_remove() {
    800056b0:	ff010113          	addi	sp,sp,-16
    800056b4:	00113423          	sd	ra,8(sp)
    800056b8:	00813023          	sd	s0,0(sp)
    800056bc:	01010413          	addi	s0,sp,16
    800056c0:	0280006f          	j	800056e8 <_ZN2TS20decrement_and_removeEv+0x64>
        tmp = head;
        head = head->get_next_sleep();
        tmp->set_next_sleep(nullptr);
        Scheduler::getInstance().put(tmp);
    800056c4:	0000a517          	auipc	a0,0xa
    800056c8:	19450513          	addi	a0,a0,404 # 8000f858 <_ZZN9Scheduler11getInstanceEvE8instance>
    800056cc:	00000097          	auipc	ra,0x0
    800056d0:	c38080e7          	jalr	-968(ra) # 80005304 <_ZN9Scheduler3putEP3TCB>
    while(head && !head->get_time_sleep()){
    800056d4:	0000a597          	auipc	a1,0xa
    800056d8:	3745b583          	ld	a1,884(a1) # 8000fa48 <_ZN2TS4headE>
    800056dc:	04058863          	beqz	a1,8000572c <_ZN2TS20decrement_and_removeEv+0xa8>
    800056e0:	0485b783          	ld	a5,72(a1)
    800056e4:	04079463          	bnez	a5,8000572c <_ZN2TS20decrement_and_removeEv+0xa8>
    TCB* get_next_sleep()const{ return next_sleep; }
    800056e8:	0385b783          	ld	a5,56(a1)
        head = head->get_next_sleep();
    800056ec:	0000a717          	auipc	a4,0xa
    800056f0:	34f73e23          	sd	a5,860(a4) # 8000fa48 <_ZN2TS4headE>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    800056f4:	0205bc23          	sd	zero,56(a1)
    800056f8:	0000a797          	auipc	a5,0xa
    800056fc:	1587c783          	lbu	a5,344(a5) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80005700:	fc0792e3          	bnez	a5,800056c4 <_ZN2TS20decrement_and_removeEv+0x40>
        head = nullptr;
    80005704:	0000a797          	auipc	a5,0xa
    80005708:	0bc7b783          	ld	a5,188(a5) # 8000f7c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000570c:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80005710:	0000a797          	auipc	a5,0xa
    80005714:	0887b783          	ld	a5,136(a5) # 8000f798 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005718:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    8000571c:	00100793          	li	a5,1
    80005720:	0000a717          	auipc	a4,0xa
    80005724:	12f70823          	sb	a5,304(a4) # 8000f850 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80005728:	f9dff06f          	j	800056c4 <_ZN2TS20decrement_and_removeEv+0x40>
    }
    return;

}
    8000572c:	00813083          	ld	ra,8(sp)
    80005730:	00013403          	ld	s0,0(sp)
    80005734:	01010113          	addi	sp,sp,16
    80005738:	00008067          	ret
    8000573c:	00008067          	ret

0000000080005740 <_Z9kmem_initPvi>:
#include "../h/SlabI.h"
#include "../h/Buddy.h"
#include "../h/Slab.h"

//
void kmem_init(void *space, int block_num) {
    80005740:	fe010113          	addi	sp,sp,-32
    80005744:	00113c23          	sd	ra,24(sp)
    80005748:	00813823          	sd	s0,16(sp)
    8000574c:	00913423          	sd	s1,8(sp)
    80005750:	01213023          	sd	s2,0(sp)
    80005754:	02010413          	addi	s0,sp,32
    80005758:	00050913          	mv	s2,a0
    8000575c:	00058493          	mv	s1,a1
        static BuddySystem bs;
    80005760:	0000a797          	auipc	a5,0xa
    80005764:	1387c783          	lbu	a5,312(a5) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80005768:	02078e63          	beqz	a5,800057a4 <_Z9kmem_initPvi+0x64>
        if(block_num != 0 && space != nullptr){
    8000576c:	02048063          	beqz	s1,8000578c <_Z9kmem_initPvi+0x4c>
    80005770:	00090e63          	beqz	s2,8000578c <_Z9kmem_initPvi+0x4c>
            bs.buddyHeapStart = (size_t)space;
    80005774:	0000a517          	auipc	a0,0xa
    80005778:	12c50513          	addi	a0,a0,300 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    8000577c:	15253023          	sd	s2,320(a0)
            bs.buddyNumOfBlocks = block_num;
    80005780:	14953823          	sd	s1,336(a0)
            bs.initBuddy();
    80005784:	ffffd097          	auipc	ra,0xffffd
    80005788:	8a4080e7          	jalr	-1884(ra) # 80002028 <_ZN11BuddySystem9initBuddyEv>
    BuddySystem::getInstance(space, block_num);
}
    8000578c:	01813083          	ld	ra,24(sp)
    80005790:	01013403          	ld	s0,16(sp)
    80005794:	00813483          	ld	s1,8(sp)
    80005798:	00013903          	ld	s2,0(sp)
    8000579c:	02010113          	addi	sp,sp,32
    800057a0:	00008067          	ret
        static BuddySystem bs;
    800057a4:	0000a517          	auipc	a0,0xa
    800057a8:	0fc50513          	addi	a0,a0,252 # 8000f8a0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    800057ac:	ffffc097          	auipc	ra,0xffffc
    800057b0:	444080e7          	jalr	1092(ra) # 80001bf0 <_ZN11BuddySystemC1Ev>
    800057b4:	00100793          	li	a5,1
    800057b8:	0000a717          	auipc	a4,0xa
    800057bc:	0ef70023          	sb	a5,224(a4) # 8000f898 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    800057c0:	fadff06f          	j	8000576c <_Z9kmem_initPvi+0x2c>

00000000800057c4 <_Z17kmem_cache_createPKcmPFvPvES3_>:

kmem_cache_t *kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    800057c4:	fd010113          	addi	sp,sp,-48
    800057c8:	02113423          	sd	ra,40(sp)
    800057cc:	02813023          	sd	s0,32(sp)
    800057d0:	00913c23          	sd	s1,24(sp)
    800057d4:	01213823          	sd	s2,16(sp)
    800057d8:	01313423          	sd	s3,8(sp)
    800057dc:	01413023          	sd	s4,0(sp)
    800057e0:	03010413          	addi	s0,sp,48
    800057e4:	00050493          	mv	s1,a0
    800057e8:	00058913          	mv	s2,a1
    800057ec:	00060993          	mv	s3,a2
    800057f0:	00068a13          	mv	s4,a3
    if(size_start(name)){
    800057f4:	ffffd097          	auipc	ra,0xffffd
    800057f8:	d18080e7          	jalr	-744(ra) # 8000250c <_Z10size_startPKc>
    800057fc:	02051e63          	bnez	a0,80005838 <_Z17kmem_cache_createPKcmPFvPvES3_+0x74>
        return nullptr;
    }
    kmem_cache_t* cache = (kmem_cache_t*)kmem_cache_s::kmem_cache_create(name, size, ctor, dtor);
    80005800:	000a0693          	mv	a3,s4
    80005804:	00098613          	mv	a2,s3
    80005808:	00090593          	mv	a1,s2
    8000580c:	00048513          	mv	a0,s1
    80005810:	ffffd097          	auipc	ra,0xffffd
    80005814:	6f8080e7          	jalr	1784(ra) # 80002f08 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>
    if(cache == nullptr)return nullptr;
    return cache;
}
    80005818:	02813083          	ld	ra,40(sp)
    8000581c:	02013403          	ld	s0,32(sp)
    80005820:	01813483          	ld	s1,24(sp)
    80005824:	01013903          	ld	s2,16(sp)
    80005828:	00813983          	ld	s3,8(sp)
    8000582c:	00013a03          	ld	s4,0(sp)
    80005830:	03010113          	addi	sp,sp,48
    80005834:	00008067          	ret
        return nullptr;
    80005838:	00000513          	li	a0,0
    8000583c:	fddff06f          	j	80005818 <_Z17kmem_cache_createPKcmPFvPvES3_+0x54>

0000000080005840 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep) {
    80005840:	ff010113          	addi	sp,sp,-16
    80005844:	00113423          	sd	ra,8(sp)
    80005848:	00813023          	sd	s0,0(sp)
    8000584c:	01010413          	addi	s0,sp,16
    return cachep->kmem_cache_shrink();
    80005850:	ffffe097          	auipc	ra,0xffffe
    80005854:	3ec080e7          	jalr	1004(ra) # 80003c3c <_ZN12kmem_cache_s17kmem_cache_shrinkEv>
}
    80005858:	0005051b          	sext.w	a0,a0
    8000585c:	00813083          	ld	ra,8(sp)
    80005860:	00013403          	ld	s0,0(sp)
    80005864:	01010113          	addi	sp,sp,16
    80005868:	00008067          	ret

000000008000586c <_Z16kmem_cache_allocP12kmem_cache_s>:

void *kmem_cache_alloc(kmem_cache_t *cachep) {
    8000586c:	fe010113          	addi	sp,sp,-32
    80005870:	00113c23          	sd	ra,24(sp)
    80005874:	00813823          	sd	s0,16(sp)
    80005878:	00913423          	sd	s1,8(sp)
    8000587c:	01213023          	sd	s2,0(sp)
    80005880:	02010413          	addi	s0,sp,32
    80005884:	00050913          	mv	s2,a0
    for(int i = 0; i < 2; i++){
    80005888:	00000493          	li	s1,0
    8000588c:	00100793          	li	a5,1
    80005890:	0097ce63          	blt	a5,s1,800058ac <_Z16kmem_cache_allocP12kmem_cache_s+0x40>
        void* tmp = cachep->kmem_cache_alloc();
    80005894:	00090513          	mv	a0,s2
    80005898:	ffffe097          	auipc	ra,0xffffe
    8000589c:	174080e7          	jalr	372(ra) # 80003a0c <_ZN12kmem_cache_s16kmem_cache_allocEv>
        if(tmp != nullptr)return tmp;
    800058a0:	00051863          	bnez	a0,800058b0 <_Z16kmem_cache_allocP12kmem_cache_s+0x44>
    for(int i = 0; i < 2; i++){
    800058a4:	0014849b          	addiw	s1,s1,1
    800058a8:	fe5ff06f          	j	8000588c <_Z16kmem_cache_allocP12kmem_cache_s+0x20>
    }
    // not enough memory, or exception triggered
    return nullptr;
    800058ac:	00000513          	li	a0,0
}
    800058b0:	01813083          	ld	ra,24(sp)
    800058b4:	01013403          	ld	s0,16(sp)
    800058b8:	00813483          	ld	s1,8(sp)
    800058bc:	00013903          	ld	s2,0(sp)
    800058c0:	02010113          	addi	sp,sp,32
    800058c4:	00008067          	ret

00000000800058c8 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

int kmem_cache_free(kmem_cache_t *cachep, void *objp) {
    800058c8:	ff010113          	addi	sp,sp,-16
    800058cc:	00113423          	sd	ra,8(sp)
    800058d0:	00813023          	sd	s0,0(sp)
    800058d4:	01010413          	addi	s0,sp,16
    return cachep->kmem_cache_free(objp);
    800058d8:	ffffe097          	auipc	ra,0xffffe
    800058dc:	8a0080e7          	jalr	-1888(ra) # 80003178 <_ZN12kmem_cache_s15kmem_cache_freeEPv>
}
    800058e0:	00813083          	ld	ra,8(sp)
    800058e4:	00013403          	ld	s0,0(sp)
    800058e8:	01010113          	addi	sp,sp,16
    800058ec:	00008067          	ret

00000000800058f0 <_Z7kmallocm>:

void *kmalloc(size_t size) {
    800058f0:	ff010113          	addi	sp,sp,-16
    800058f4:	00113423          	sd	ra,8(sp)
    800058f8:	00813023          	sd	s0,0(sp)
    800058fc:	01010413          	addi	s0,sp,16
    int ret = kmem_cache_t::is_small_buffer_size_correct(size);
    80005900:	ffffe097          	auipc	ra,0xffffe
    80005904:	af8080e7          	jalr	-1288(ra) # 800033f8 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm>
    if(!ret)return nullptr;
    80005908:	00050e63          	beqz	a0,80005924 <_Z7kmallocm+0x34>
    return kmem_cache_t::kmalloc(ret);
    8000590c:	ffffe097          	auipc	ra,0xffffe
    80005910:	220080e7          	jalr	544(ra) # 80003b2c <_ZN12kmem_cache_s7kmallocEm>
}
    80005914:	00813083          	ld	ra,8(sp)
    80005918:	00013403          	ld	s0,0(sp)
    8000591c:	01010113          	addi	sp,sp,16
    80005920:	00008067          	ret
    if(!ret)return nullptr;
    80005924:	00000513          	li	a0,0
    80005928:	fedff06f          	j	80005914 <_Z7kmallocm+0x24>

000000008000592c <_Z5kfreePKv>:

void kfree(const void *objp) {
    8000592c:	ff010113          	addi	sp,sp,-16
    80005930:	00113423          	sd	ra,8(sp)
    80005934:	00813023          	sd	s0,0(sp)
    80005938:	01010413          	addi	s0,sp,16
    kmem_cache_t::kfree(objp);
    8000593c:	ffffe097          	auipc	ra,0xffffe
    80005940:	b1c080e7          	jalr	-1252(ra) # 80003458 <_ZN12kmem_cache_s5kfreeEPKv>
}
    80005944:	00813083          	ld	ra,8(sp)
    80005948:	00013403          	ld	s0,0(sp)
    8000594c:	01010113          	addi	sp,sp,16
    80005950:	00008067          	ret

0000000080005954 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep) {
    80005954:	ff010113          	addi	sp,sp,-16
    80005958:	00113423          	sd	ra,8(sp)
    8000595c:	00813023          	sd	s0,0(sp)
    80005960:	01010413          	addi	s0,sp,16
    80005964:	00050593          	mv	a1,a0
    cachep->kmem_cache_destroy((size_t)cachep);
    80005968:	ffffe097          	auipc	ra,0xffffe
    8000596c:	3bc080e7          	jalr	956(ra) # 80003d24 <_ZN12kmem_cache_s18kmem_cache_destroyEm>
}
    80005970:	00813083          	ld	ra,8(sp)
    80005974:	00013403          	ld	s0,0(sp)
    80005978:	01010113          	addi	sp,sp,16
    8000597c:	00008067          	ret

0000000080005980 <_Z15kmem_cache_infoP12kmem_cache_s>:

void kmem_cache_info(kmem_cache_t *cachep) {
    80005980:	ff010113          	addi	sp,sp,-16
    80005984:	00113423          	sd	ra,8(sp)
    80005988:	00813023          	sd	s0,0(sp)
    8000598c:	01010413          	addi	s0,sp,16
    cachep->kmem_cache_info();
    80005990:	ffffe097          	auipc	ra,0xffffe
    80005994:	b28080e7          	jalr	-1240(ra) # 800034b8 <_ZN12kmem_cache_s15kmem_cache_infoEv>
}
    80005998:	00813083          	ld	ra,8(sp)
    8000599c:	00013403          	ld	s0,0(sp)
    800059a0:	01010113          	addi	sp,sp,16
    800059a4:	00008067          	ret

00000000800059a8 <_Z16print_all_cachesv>:

void print_all_caches() {
    800059a8:	ff010113          	addi	sp,sp,-16
    800059ac:	00113423          	sd	ra,8(sp)
    800059b0:	00813023          	sd	s0,0(sp)
    800059b4:	01010413          	addi	s0,sp,16
    kmem_cache_t::print_info_all_caches();
    800059b8:	ffffe097          	auipc	ra,0xffffe
    800059bc:	f50080e7          	jalr	-176(ra) # 80003908 <_ZN12kmem_cache_s21print_info_all_cachesEv>
}
    800059c0:	00813083          	ld	ra,8(sp)
    800059c4:	00013403          	ld	s0,0(sp)
    800059c8:	01010113          	addi	sp,sp,16
    800059cc:	00008067          	ret

00000000800059d0 <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    800059d0:	ff010113          	addi	sp,sp,-16
    800059d4:	00813423          	sd	s0,8(sp)
    800059d8:	01010413          	addi	s0,sp,16
    char *ptr = (char *)data;
    for (int j = 0; j < size; j++) {
    800059dc:	00000793          	li	a5,0
    800059e0:	00b7da63          	bge	a5,a1,800059f4 <_Z6memsetPKvii+0x24>
        ptr[j] = (char)value;
    800059e4:	00f50733          	add	a4,a0,a5
    800059e8:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    800059ec:	0017879b          	addiw	a5,a5,1
    800059f0:	ff1ff06f          	j	800059e0 <_Z6memsetPKvii+0x10>
    }
}
    800059f4:	00813403          	ld	s0,8(sp)
    800059f8:	01010113          	addi	sp,sp,16
    800059fc:	00008067          	ret

0000000080005a00 <_Z9constructPv>:

void construct(void *data) {
    80005a00:	fe010113          	addi	sp,sp,-32
    80005a04:	00113c23          	sd	ra,24(sp)
    80005a08:	00813823          	sd	s0,16(sp)
    80005a0c:	00913423          	sd	s1,8(sp)
    80005a10:	02010413          	addi	s0,sp,32
    80005a14:	00050493          	mv	s1,a0
    static int i = 1;
    printInt(i++);
    80005a18:	0000a797          	auipc	a5,0xa
    80005a1c:	b6878793          	addi	a5,a5,-1176 # 8000f580 <_ZZ9constructPvE1i>
    80005a20:	0007a503          	lw	a0,0(a5)
    80005a24:	0015071b          	addiw	a4,a0,1
    80005a28:	00e7a023          	sw	a4,0(a5)
    80005a2c:	00000613          	li	a2,0
    80005a30:	00a00593          	li	a1,10
    80005a34:	00000097          	auipc	ra,0x0
    80005a38:	50c080e7          	jalr	1292(ra) # 80005f40 <_Z8printIntiii>
    printString("Shared object constructed.\n");
    80005a3c:	00007517          	auipc	a0,0x7
    80005a40:	9f450513          	addi	a0,a0,-1548 # 8000c430 <CONSOLE_STATUS+0x420>
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	364080e7          	jalr	868(ra) # 80005da8 <_Z11printStringPKc>
    memset(data, shared_size, MASK);
    80005a4c:	0a500613          	li	a2,165
    80005a50:	00700593          	li	a1,7
    80005a54:	00048513          	mv	a0,s1
    80005a58:	00000097          	auipc	ra,0x0
    80005a5c:	f78080e7          	jalr	-136(ra) # 800059d0 <_Z6memsetPKvii>
}
    80005a60:	01813083          	ld	ra,24(sp)
    80005a64:	01013403          	ld	s0,16(sp)
    80005a68:	00813483          	ld	s1,8(sp)
    80005a6c:	02010113          	addi	sp,sp,32
    80005a70:	00008067          	ret

0000000080005a74 <_Z5checkPvm>:

int check(void *data, size_t size) {
    80005a74:	ff010113          	addi	sp,sp,-16
    80005a78:	00813423          	sd	s0,8(sp)
    80005a7c:	01010413          	addi	s0,sp,16
    80005a80:	00050613          	mv	a2,a0
    int ret = 1;
    for (int i = 0; i < size; i++) {
    80005a84:	00000793          	li	a5,0
    int ret = 1;
    80005a88:	00100513          	li	a0,1
    80005a8c:	0080006f          	j	80005a94 <_Z5checkPvm+0x20>
    for (int i = 0; i < size; i++) {
    80005a90:	0017879b          	addiw	a5,a5,1
    80005a94:	00b7fe63          	bgeu	a5,a1,80005ab0 <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    80005a98:	00f60733          	add	a4,a2,a5
    80005a9c:	00074683          	lbu	a3,0(a4)
    80005aa0:	0a500713          	li	a4,165
    80005aa4:	fee686e3          	beq	a3,a4,80005a90 <_Z5checkPvm+0x1c>
            ret = 0;
    80005aa8:	00000513          	li	a0,0
    80005aac:	fe5ff06f          	j	80005a90 <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    80005ab0:	00813403          	ld	s0,8(sp)
    80005ab4:	01010113          	addi	sp,sp,16
    80005ab8:	00008067          	ret

0000000080005abc <_Z4workPv>:
struct objects_s {
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata) {
    80005abc:	f8010113          	addi	sp,sp,-128
    80005ac0:	06113c23          	sd	ra,120(sp)
    80005ac4:	06813823          	sd	s0,112(sp)
    80005ac8:	06913423          	sd	s1,104(sp)
    80005acc:	07213023          	sd	s2,96(sp)
    80005ad0:	05313c23          	sd	s3,88(sp)
    80005ad4:	05413823          	sd	s4,80(sp)
    80005ad8:	05513423          	sd	s5,72(sp)
    80005adc:	05613023          	sd	s6,64(sp)
    80005ae0:	03713c23          	sd	s7,56(sp)
    80005ae4:	03813823          	sd	s8,48(sp)
    80005ae8:	03913423          	sd	s9,40(sp)
    80005aec:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    80005af0:	00053c03          	ld	s8,0(a0)
    80005af4:	f9843423          	sd	s8,-120(s0)
    80005af8:	00853783          	ld	a5,8(a0)
    80005afc:	f8f43823          	sd	a5,-112(s0)
    80005b00:	01053783          	ld	a5,16(a0)
    80005b04:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    80005b08:	000c079b          	sext.w	a5,s8
    80005b0c:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    80005b10:	00379713          	slli	a4,a5,0x3
    80005b14:	0000a797          	auipc	a5,0xa
    80005b18:	a7478793          	addi	a5,a5,-1420 # 8000f588 <_ZL11CACHE_NAMES>
    80005b1c:	00e787b3          	add	a5,a5,a4
    80005b20:	000c0b13          	mv	s6,s8
    80005b24:	00000693          	li	a3,0
    80005b28:	00000613          	li	a2,0
    80005b2c:	000c0593          	mv	a1,s8
    80005b30:	0007b503          	ld	a0,0(a5)
    80005b34:	00000097          	auipc	ra,0x0
    80005b38:	c90080e7          	jalr	-880(ra) # 800057c4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005b3c:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    80005b40:	f9842b83          	lw	s7,-104(s0)
    80005b44:	004b9513          	slli	a0,s7,0x4
    80005b48:	00000097          	auipc	ra,0x0
    80005b4c:	da8080e7          	jalr	-600(ra) # 800058f0 <_Z7kmallocm>
    80005b50:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    80005b54:	00000493          	li	s1,0
    int size = 0;
    80005b58:	00000993          	li	s3,0
    80005b5c:	0380006f          	j	80005b94 <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                printString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    80005b60:	00499913          	slli	s2,s3,0x4
    80005b64:	012a8933          	add	s2,s5,s2
    80005b68:	000a0513          	mv	a0,s4
    80005b6c:	00000097          	auipc	ra,0x0
    80005b70:	d00080e7          	jalr	-768(ra) # 8000586c <_Z16kmem_cache_allocP12kmem_cache_s>
    80005b74:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    80005b78:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    80005b7c:	0a500613          	li	a2,165
    80005b80:	000c0593          	mv	a1,s8
    80005b84:	00000097          	auipc	ra,0x0
    80005b88:	e4c080e7          	jalr	-436(ra) # 800059d0 <_Z6memsetPKvii>
        }
        size++;
    80005b8c:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    80005b90:	0014849b          	addiw	s1,s1,1
    80005b94:	0574da63          	bge	s1,s7,80005be8 <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    80005b98:	06400793          	li	a5,100
    80005b9c:	02f4e7bb          	remw	a5,s1,a5
    80005ba0:	fc0790e3          	bnez	a5,80005b60 <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80005ba4:	f9043c83          	ld	s9,-112(s0)
    80005ba8:	00499913          	slli	s2,s3,0x4
    80005bac:	012a8933          	add	s2,s5,s2
    80005bb0:	000c8513          	mv	a0,s9
    80005bb4:	00000097          	auipc	ra,0x0
    80005bb8:	cb8080e7          	jalr	-840(ra) # 8000586c <_Z16kmem_cache_allocP12kmem_cache_s>
    80005bbc:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    80005bc0:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    80005bc4:	00700593          	li	a1,7
    80005bc8:	00000097          	auipc	ra,0x0
    80005bcc:	eac080e7          	jalr	-340(ra) # 80005a74 <_Z5checkPvm>
    80005bd0:	fa051ee3          	bnez	a0,80005b8c <_Z4workPv+0xd0>
                printString("Value not correct!");
    80005bd4:	00007517          	auipc	a0,0x7
    80005bd8:	87c50513          	addi	a0,a0,-1924 # 8000c450 <CONSOLE_STATUS+0x440>
    80005bdc:	00000097          	auipc	ra,0x0
    80005be0:	1cc080e7          	jalr	460(ra) # 80005da8 <_Z11printStringPKc>
    80005be4:	fa9ff06f          	j	80005b8c <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    80005be8:	000a0513          	mv	a0,s4
    80005bec:	00000097          	auipc	ra,0x0
    80005bf0:	d94080e7          	jalr	-620(ra) # 80005980 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    80005bf4:	f9043503          	ld	a0,-112(s0)
    80005bf8:	00000097          	auipc	ra,0x0
    80005bfc:	d88080e7          	jalr	-632(ra) # 80005980 <_Z15kmem_cache_infoP12kmem_cache_s>

    for (int i = 0; i < size; i++) {
    80005c00:	00000913          	li	s2,0
    80005c04:	0300006f          	j	80005c34 <_Z4workPv+0x178>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80005c08:	000b0593          	mv	a1,s6
    80005c0c:	0440006f          	j	80005c50 <_Z4workPv+0x194>
            printString("Value not correct!");
    80005c10:	00007517          	auipc	a0,0x7
    80005c14:	84050513          	addi	a0,a0,-1984 # 8000c450 <CONSOLE_STATUS+0x440>
    80005c18:	00000097          	auipc	ra,0x0
    80005c1c:	190080e7          	jalr	400(ra) # 80005da8 <_Z11printStringPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    80005c20:	0084b583          	ld	a1,8(s1)
    80005c24:	0004b503          	ld	a0,0(s1)
    80005c28:	00000097          	auipc	ra,0x0
    80005c2c:	ca0080e7          	jalr	-864(ra) # 800058c8 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    80005c30:	0019091b          	addiw	s2,s2,1
    80005c34:	03395663          	bge	s2,s3,80005c60 <_Z4workPv+0x1a4>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80005c38:	00491493          	slli	s1,s2,0x4
    80005c3c:	009a84b3          	add	s1,s5,s1
    80005c40:	0084b503          	ld	a0,8(s1)
    80005c44:	0004b783          	ld	a5,0(s1)
    80005c48:	fd4780e3          	beq	a5,s4,80005c08 <_Z4workPv+0x14c>
    80005c4c:	00700593          	li	a1,7
    80005c50:	00000097          	auipc	ra,0x0
    80005c54:	e24080e7          	jalr	-476(ra) # 80005a74 <_Z5checkPvm>
    80005c58:	fc0514e3          	bnez	a0,80005c20 <_Z4workPv+0x164>
    80005c5c:	fb5ff06f          	j	80005c10 <_Z4workPv+0x154>
    }

    kfree(objs);
    80005c60:	000a8513          	mv	a0,s5
    80005c64:	00000097          	auipc	ra,0x0
    80005c68:	cc8080e7          	jalr	-824(ra) # 8000592c <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    80005c6c:	000a0513          	mv	a0,s4
    80005c70:	00000097          	auipc	ra,0x0
    80005c74:	ce4080e7          	jalr	-796(ra) # 80005954 <_Z18kmem_cache_destroyP12kmem_cache_s>
}
    80005c78:	07813083          	ld	ra,120(sp)
    80005c7c:	07013403          	ld	s0,112(sp)
    80005c80:	06813483          	ld	s1,104(sp)
    80005c84:	06013903          	ld	s2,96(sp)
    80005c88:	05813983          	ld	s3,88(sp)
    80005c8c:	05013a03          	ld	s4,80(sp)
    80005c90:	04813a83          	ld	s5,72(sp)
    80005c94:	04013b03          	ld	s6,64(sp)
    80005c98:	03813b83          	ld	s7,56(sp)
    80005c9c:	03013c03          	ld	s8,48(sp)
    80005ca0:	02813c83          	ld	s9,40(sp)
    80005ca4:	08010113          	addi	sp,sp,128
    80005ca8:	00008067          	ret

0000000080005cac <_Z4runsPFvPvEP6data_si>:



void runs(void(*work)(void*), struct data_s* data, int num) {
    80005cac:	fb010113          	addi	sp,sp,-80
    80005cb0:	04113423          	sd	ra,72(sp)
    80005cb4:	04813023          	sd	s0,64(sp)
    80005cb8:	02913c23          	sd	s1,56(sp)
    80005cbc:	03213823          	sd	s2,48(sp)
    80005cc0:	03313423          	sd	s3,40(sp)
    80005cc4:	03413023          	sd	s4,32(sp)
    80005cc8:	05010413          	addi	s0,sp,80
    80005ccc:	00050a13          	mv	s4,a0
    80005cd0:	00058913          	mv	s2,a1
    80005cd4:	00060993          	mv	s3,a2
    for (int i = 0; i < num; i++) { // 5 puta
    80005cd8:	00000493          	li	s1,0
    80005cdc:	0334d863          	bge	s1,s3,80005d0c <_Z4runsPFvPvEP6data_si+0x60>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    80005ce0:	00093783          	ld	a5,0(s2)
    80005ce4:	faf43c23          	sd	a5,-72(s0)
    80005ce8:	00893783          	ld	a5,8(s2)
    80005cec:	fcf43023          	sd	a5,-64(s0)
    80005cf0:	01093783          	ld	a5,16(s2)
    80005cf4:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    80005cf8:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    80005cfc:	fb840513          	addi	a0,s0,-72
    80005d00:	000a00e7          	jalr	s4
    for (int i = 0; i < num; i++) { // 5 puta
    80005d04:	0014849b          	addiw	s1,s1,1
    80005d08:	fd5ff06f          	j	80005cdc <_Z4runsPFvPvEP6data_si+0x30>
    }
}
    80005d0c:	04813083          	ld	ra,72(sp)
    80005d10:	04013403          	ld	s0,64(sp)
    80005d14:	03813483          	ld	s1,56(sp)
    80005d18:	03013903          	ld	s2,48(sp)
    80005d1c:	02813983          	ld	s3,40(sp)
    80005d20:	02013a03          	ld	s4,32(sp)
    80005d24:	05010113          	addi	sp,sp,80
    80005d28:	00008067          	ret

0000000080005d2c <_Z10test_drugiv>:

void test_drugi() {
    80005d2c:	fc010113          	addi	sp,sp,-64
    80005d30:	02113c23          	sd	ra,56(sp)
    80005d34:	02813823          	sd	s0,48(sp)
    80005d38:	02913423          	sd	s1,40(sp)
    80005d3c:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    80005d40:	00000693          	li	a3,0
    80005d44:	00000617          	auipc	a2,0x0
    80005d48:	cbc60613          	addi	a2,a2,-836 # 80005a00 <_Z9constructPv>
    80005d4c:	00700593          	li	a1,7
    80005d50:	00006517          	auipc	a0,0x6
    80005d54:	71850513          	addi	a0,a0,1816 # 8000c468 <CONSOLE_STATUS+0x458>
    80005d58:	00000097          	auipc	ra,0x0
    80005d5c:	a6c080e7          	jalr	-1428(ra) # 800057c4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005d60:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    80005d64:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    80005d68:	3e800793          	li	a5,1000
    80005d6c:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    80005d70:	00500613          	li	a2,5
    80005d74:	fc840593          	addi	a1,s0,-56
    80005d78:	00000517          	auipc	a0,0x0
    80005d7c:	d4450513          	addi	a0,a0,-700 # 80005abc <_Z4workPv>
    80005d80:	00000097          	auipc	ra,0x0
    80005d84:	f2c080e7          	jalr	-212(ra) # 80005cac <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    80005d88:	00048513          	mv	a0,s1
    80005d8c:	00000097          	auipc	ra,0x0
    80005d90:	bc8080e7          	jalr	-1080(ra) # 80005954 <_Z18kmem_cache_destroyP12kmem_cache_s>
    80005d94:	03813083          	ld	ra,56(sp)
    80005d98:	03013403          	ld	s0,48(sp)
    80005d9c:	02813483          	ld	s1,40(sp)
    80005da0:	04010113          	addi	sp,sp,64
    80005da4:	00008067          	ret

0000000080005da8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005da8:	fe010113          	addi	sp,sp,-32
    80005dac:	00113c23          	sd	ra,24(sp)
    80005db0:	00813823          	sd	s0,16(sp)
    80005db4:	00913423          	sd	s1,8(sp)
    80005db8:	02010413          	addi	s0,sp,32
    80005dbc:	00050493          	mv	s1,a0
    LOCK();
    80005dc0:	00100613          	li	a2,1
    80005dc4:	00000593          	li	a1,0
    80005dc8:	0000a517          	auipc	a0,0xa
    80005dcc:	c8850513          	addi	a0,a0,-888 # 8000fa50 <lockPrint>
    80005dd0:	ffffb097          	auipc	ra,0xffffb
    80005dd4:	328080e7          	jalr	808(ra) # 800010f8 <copy_and_swap>
    80005dd8:	fe0514e3          	bnez	a0,80005dc0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005ddc:	0004c503          	lbu	a0,0(s1)
    80005de0:	00050a63          	beqz	a0,80005df4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80005de4:	ffffc097          	auipc	ra,0xffffc
    80005de8:	864080e7          	jalr	-1948(ra) # 80001648 <putc>
        string++;
    80005dec:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005df0:	fedff06f          	j	80005ddc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005df4:	00000613          	li	a2,0
    80005df8:	00100593          	li	a1,1
    80005dfc:	0000a517          	auipc	a0,0xa
    80005e00:	c5450513          	addi	a0,a0,-940 # 8000fa50 <lockPrint>
    80005e04:	ffffb097          	auipc	ra,0xffffb
    80005e08:	2f4080e7          	jalr	756(ra) # 800010f8 <copy_and_swap>
    80005e0c:	fe0514e3          	bnez	a0,80005df4 <_Z11printStringPKc+0x4c>
}
    80005e10:	01813083          	ld	ra,24(sp)
    80005e14:	01013403          	ld	s0,16(sp)
    80005e18:	00813483          	ld	s1,8(sp)
    80005e1c:	02010113          	addi	sp,sp,32
    80005e20:	00008067          	ret

0000000080005e24 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005e24:	fd010113          	addi	sp,sp,-48
    80005e28:	02113423          	sd	ra,40(sp)
    80005e2c:	02813023          	sd	s0,32(sp)
    80005e30:	00913c23          	sd	s1,24(sp)
    80005e34:	01213823          	sd	s2,16(sp)
    80005e38:	01313423          	sd	s3,8(sp)
    80005e3c:	01413023          	sd	s4,0(sp)
    80005e40:	03010413          	addi	s0,sp,48
    80005e44:	00050993          	mv	s3,a0
    80005e48:	00058a13          	mv	s4,a1
    LOCK();
    80005e4c:	00100613          	li	a2,1
    80005e50:	00000593          	li	a1,0
    80005e54:	0000a517          	auipc	a0,0xa
    80005e58:	bfc50513          	addi	a0,a0,-1028 # 8000fa50 <lockPrint>
    80005e5c:	ffffb097          	auipc	ra,0xffffb
    80005e60:	29c080e7          	jalr	668(ra) # 800010f8 <copy_and_swap>
    80005e64:	fe0514e3          	bnez	a0,80005e4c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005e68:	00000913          	li	s2,0
    80005e6c:	00090493          	mv	s1,s2
    80005e70:	0019091b          	addiw	s2,s2,1
    80005e74:	03495a63          	bge	s2,s4,80005ea8 <_Z9getStringPci+0x84>
        cc = getc();
    80005e78:	ffffb097          	auipc	ra,0xffffb
    80005e7c:	77c080e7          	jalr	1916(ra) # 800015f4 <getc>
        if(cc < 1)
    80005e80:	02050463          	beqz	a0,80005ea8 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005e84:	009984b3          	add	s1,s3,s1
    80005e88:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005e8c:	00a00793          	li	a5,10
    80005e90:	00f50a63          	beq	a0,a5,80005ea4 <_Z9getStringPci+0x80>
    80005e94:	00d00793          	li	a5,13
    80005e98:	fcf51ae3          	bne	a0,a5,80005e6c <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005e9c:	00090493          	mv	s1,s2
    80005ea0:	0080006f          	j	80005ea8 <_Z9getStringPci+0x84>
    80005ea4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005ea8:	009984b3          	add	s1,s3,s1
    80005eac:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005eb0:	00000613          	li	a2,0
    80005eb4:	00100593          	li	a1,1
    80005eb8:	0000a517          	auipc	a0,0xa
    80005ebc:	b9850513          	addi	a0,a0,-1128 # 8000fa50 <lockPrint>
    80005ec0:	ffffb097          	auipc	ra,0xffffb
    80005ec4:	238080e7          	jalr	568(ra) # 800010f8 <copy_and_swap>
    80005ec8:	fe0514e3          	bnez	a0,80005eb0 <_Z9getStringPci+0x8c>
    return buf;
}
    80005ecc:	00098513          	mv	a0,s3
    80005ed0:	02813083          	ld	ra,40(sp)
    80005ed4:	02013403          	ld	s0,32(sp)
    80005ed8:	01813483          	ld	s1,24(sp)
    80005edc:	01013903          	ld	s2,16(sp)
    80005ee0:	00813983          	ld	s3,8(sp)
    80005ee4:	00013a03          	ld	s4,0(sp)
    80005ee8:	03010113          	addi	sp,sp,48
    80005eec:	00008067          	ret

0000000080005ef0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005ef0:	ff010113          	addi	sp,sp,-16
    80005ef4:	00813423          	sd	s0,8(sp)
    80005ef8:	01010413          	addi	s0,sp,16
    80005efc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005f00:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005f04:	0006c603          	lbu	a2,0(a3)
    80005f08:	fd06071b          	addiw	a4,a2,-48
    80005f0c:	0ff77713          	andi	a4,a4,255
    80005f10:	00900793          	li	a5,9
    80005f14:	02e7e063          	bltu	a5,a4,80005f34 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005f18:	0025179b          	slliw	a5,a0,0x2
    80005f1c:	00a787bb          	addw	a5,a5,a0
    80005f20:	0017979b          	slliw	a5,a5,0x1
    80005f24:	00168693          	addi	a3,a3,1
    80005f28:	00c787bb          	addw	a5,a5,a2
    80005f2c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005f30:	fd5ff06f          	j	80005f04 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005f34:	00813403          	ld	s0,8(sp)
    80005f38:	01010113          	addi	sp,sp,16
    80005f3c:	00008067          	ret

0000000080005f40 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005f40:	fc010113          	addi	sp,sp,-64
    80005f44:	02113c23          	sd	ra,56(sp)
    80005f48:	02813823          	sd	s0,48(sp)
    80005f4c:	02913423          	sd	s1,40(sp)
    80005f50:	03213023          	sd	s2,32(sp)
    80005f54:	01313c23          	sd	s3,24(sp)
    80005f58:	04010413          	addi	s0,sp,64
    80005f5c:	00050493          	mv	s1,a0
    80005f60:	00058913          	mv	s2,a1
    80005f64:	00060993          	mv	s3,a2
    LOCK();
    80005f68:	00100613          	li	a2,1
    80005f6c:	00000593          	li	a1,0
    80005f70:	0000a517          	auipc	a0,0xa
    80005f74:	ae050513          	addi	a0,a0,-1312 # 8000fa50 <lockPrint>
    80005f78:	ffffb097          	auipc	ra,0xffffb
    80005f7c:	180080e7          	jalr	384(ra) # 800010f8 <copy_and_swap>
    80005f80:	fe0514e3          	bnez	a0,80005f68 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005f84:	00098463          	beqz	s3,80005f8c <_Z8printIntiii+0x4c>
    80005f88:	0804c463          	bltz	s1,80006010 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005f8c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005f90:	00000593          	li	a1,0
    }

    i = 0;
    80005f94:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005f98:	0009079b          	sext.w	a5,s2
    80005f9c:	0325773b          	remuw	a4,a0,s2
    80005fa0:	00048613          	mv	a2,s1
    80005fa4:	0014849b          	addiw	s1,s1,1
    80005fa8:	02071693          	slli	a3,a4,0x20
    80005fac:	0206d693          	srli	a3,a3,0x20
    80005fb0:	00009717          	auipc	a4,0x9
    80005fb4:	60070713          	addi	a4,a4,1536 # 8000f5b0 <digits>
    80005fb8:	00d70733          	add	a4,a4,a3
    80005fbc:	00074683          	lbu	a3,0(a4)
    80005fc0:	fd040713          	addi	a4,s0,-48
    80005fc4:	00c70733          	add	a4,a4,a2
    80005fc8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005fcc:	0005071b          	sext.w	a4,a0
    80005fd0:	0325553b          	divuw	a0,a0,s2
    80005fd4:	fcf772e3          	bgeu	a4,a5,80005f98 <_Z8printIntiii+0x58>
    if(neg)
    80005fd8:	00058c63          	beqz	a1,80005ff0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005fdc:	fd040793          	addi	a5,s0,-48
    80005fe0:	009784b3          	add	s1,a5,s1
    80005fe4:	02d00793          	li	a5,45
    80005fe8:	fef48823          	sb	a5,-16(s1)
    80005fec:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005ff0:	fff4849b          	addiw	s1,s1,-1
    80005ff4:	0204c463          	bltz	s1,8000601c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005ff8:	fd040793          	addi	a5,s0,-48
    80005ffc:	009787b3          	add	a5,a5,s1
    80006000:	ff07c503          	lbu	a0,-16(a5)
    80006004:	ffffb097          	auipc	ra,0xffffb
    80006008:	644080e7          	jalr	1604(ra) # 80001648 <putc>
    8000600c:	fe5ff06f          	j	80005ff0 <_Z8printIntiii+0xb0>
        x = -xx;
    80006010:	4090053b          	negw	a0,s1
        neg = 1;
    80006014:	00100593          	li	a1,1
        x = -xx;
    80006018:	f7dff06f          	j	80005f94 <_Z8printIntiii+0x54>

    UNLOCK();
    8000601c:	00000613          	li	a2,0
    80006020:	00100593          	li	a1,1
    80006024:	0000a517          	auipc	a0,0xa
    80006028:	a2c50513          	addi	a0,a0,-1492 # 8000fa50 <lockPrint>
    8000602c:	ffffb097          	auipc	ra,0xffffb
    80006030:	0cc080e7          	jalr	204(ra) # 800010f8 <copy_and_swap>
    80006034:	fe0514e3          	bnez	a0,8000601c <_Z8printIntiii+0xdc>
    80006038:	03813083          	ld	ra,56(sp)
    8000603c:	03013403          	ld	s0,48(sp)
    80006040:	02813483          	ld	s1,40(sp)
    80006044:	02013903          	ld	s2,32(sp)
    80006048:	01813983          	ld	s3,24(sp)
    8000604c:	04010113          	addi	sp,sp,64
    80006050:	00008067          	ret

0000000080006054 <_ZN9BufferCPPC1Ei>:
#include "../test/buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006054:	fd010113          	addi	sp,sp,-48
    80006058:	02113423          	sd	ra,40(sp)
    8000605c:	02813023          	sd	s0,32(sp)
    80006060:	00913c23          	sd	s1,24(sp)
    80006064:	01213823          	sd	s2,16(sp)
    80006068:	01313423          	sd	s3,8(sp)
    8000606c:	03010413          	addi	s0,sp,48
    80006070:	00050493          	mv	s1,a0
    80006074:	00058993          	mv	s3,a1
    80006078:	0015879b          	addiw	a5,a1,1
    8000607c:	0007851b          	sext.w	a0,a5
    80006080:	00f4a023          	sw	a5,0(s1)
    80006084:	0004a823          	sw	zero,16(s1)
    80006088:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000608c:	00251513          	slli	a0,a0,0x2
    80006090:	ffffb097          	auipc	ra,0xffffb
    80006094:	1b4080e7          	jalr	436(ra) # 80001244 <mem_alloc>
    80006098:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000609c:	01000513          	li	a0,16
    800060a0:	ffffe097          	auipc	ra,0xffffe
    800060a4:	110080e7          	jalr	272(ra) # 800041b0 <_Znwm>
    800060a8:	00050913          	mv	s2,a0
    800060ac:	00050863          	beqz	a0,800060bc <_ZN9BufferCPPC1Ei+0x68>
    800060b0:	00000593          	li	a1,0
    800060b4:	ffffe097          	auipc	ra,0xffffe
    800060b8:	418080e7          	jalr	1048(ra) # 800044cc <_ZN9SemaphoreC1Ej>
    800060bc:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800060c0:	01000513          	li	a0,16
    800060c4:	ffffe097          	auipc	ra,0xffffe
    800060c8:	0ec080e7          	jalr	236(ra) # 800041b0 <_Znwm>
    800060cc:	00050913          	mv	s2,a0
    800060d0:	00050863          	beqz	a0,800060e0 <_ZN9BufferCPPC1Ei+0x8c>
    800060d4:	00098593          	mv	a1,s3
    800060d8:	ffffe097          	auipc	ra,0xffffe
    800060dc:	3f4080e7          	jalr	1012(ra) # 800044cc <_ZN9SemaphoreC1Ej>
    800060e0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800060e4:	01000513          	li	a0,16
    800060e8:	ffffe097          	auipc	ra,0xffffe
    800060ec:	0c8080e7          	jalr	200(ra) # 800041b0 <_Znwm>
    800060f0:	00050913          	mv	s2,a0
    800060f4:	00050863          	beqz	a0,80006104 <_ZN9BufferCPPC1Ei+0xb0>
    800060f8:	00100593          	li	a1,1
    800060fc:	ffffe097          	auipc	ra,0xffffe
    80006100:	3d0080e7          	jalr	976(ra) # 800044cc <_ZN9SemaphoreC1Ej>
    80006104:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006108:	01000513          	li	a0,16
    8000610c:	ffffe097          	auipc	ra,0xffffe
    80006110:	0a4080e7          	jalr	164(ra) # 800041b0 <_Znwm>
    80006114:	00050913          	mv	s2,a0
    80006118:	00050863          	beqz	a0,80006128 <_ZN9BufferCPPC1Ei+0xd4>
    8000611c:	00100593          	li	a1,1
    80006120:	ffffe097          	auipc	ra,0xffffe
    80006124:	3ac080e7          	jalr	940(ra) # 800044cc <_ZN9SemaphoreC1Ej>
    80006128:	0324b823          	sd	s2,48(s1)
}
    8000612c:	02813083          	ld	ra,40(sp)
    80006130:	02013403          	ld	s0,32(sp)
    80006134:	01813483          	ld	s1,24(sp)
    80006138:	01013903          	ld	s2,16(sp)
    8000613c:	00813983          	ld	s3,8(sp)
    80006140:	03010113          	addi	sp,sp,48
    80006144:	00008067          	ret
    80006148:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000614c:	00090513          	mv	a0,s2
    80006150:	ffffe097          	auipc	ra,0xffffe
    80006154:	0b0080e7          	jalr	176(ra) # 80004200 <_ZdlPv>
    80006158:	00048513          	mv	a0,s1
    8000615c:	000ce097          	auipc	ra,0xce
    80006160:	efc080e7          	jalr	-260(ra) # 800d4058 <_Unwind_Resume>
    80006164:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006168:	00090513          	mv	a0,s2
    8000616c:	ffffe097          	auipc	ra,0xffffe
    80006170:	094080e7          	jalr	148(ra) # 80004200 <_ZdlPv>
    80006174:	00048513          	mv	a0,s1
    80006178:	000ce097          	auipc	ra,0xce
    8000617c:	ee0080e7          	jalr	-288(ra) # 800d4058 <_Unwind_Resume>
    80006180:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006184:	00090513          	mv	a0,s2
    80006188:	ffffe097          	auipc	ra,0xffffe
    8000618c:	078080e7          	jalr	120(ra) # 80004200 <_ZdlPv>
    80006190:	00048513          	mv	a0,s1
    80006194:	000ce097          	auipc	ra,0xce
    80006198:	ec4080e7          	jalr	-316(ra) # 800d4058 <_Unwind_Resume>
    8000619c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800061a0:	00090513          	mv	a0,s2
    800061a4:	ffffe097          	auipc	ra,0xffffe
    800061a8:	05c080e7          	jalr	92(ra) # 80004200 <_ZdlPv>
    800061ac:	00048513          	mv	a0,s1
    800061b0:	000ce097          	auipc	ra,0xce
    800061b4:	ea8080e7          	jalr	-344(ra) # 800d4058 <_Unwind_Resume>

00000000800061b8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800061b8:	fe010113          	addi	sp,sp,-32
    800061bc:	00113c23          	sd	ra,24(sp)
    800061c0:	00813823          	sd	s0,16(sp)
    800061c4:	00913423          	sd	s1,8(sp)
    800061c8:	01213023          	sd	s2,0(sp)
    800061cc:	02010413          	addi	s0,sp,32
    800061d0:	00050493          	mv	s1,a0
    800061d4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800061d8:	01853503          	ld	a0,24(a0)
    800061dc:	ffffe097          	auipc	ra,0xffffe
    800061e0:	330080e7          	jalr	816(ra) # 8000450c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800061e4:	0304b503          	ld	a0,48(s1)
    800061e8:	ffffe097          	auipc	ra,0xffffe
    800061ec:	324080e7          	jalr	804(ra) # 8000450c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800061f0:	0084b783          	ld	a5,8(s1)
    800061f4:	0144a703          	lw	a4,20(s1)
    800061f8:	00271713          	slli	a4,a4,0x2
    800061fc:	00e787b3          	add	a5,a5,a4
    80006200:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006204:	0144a783          	lw	a5,20(s1)
    80006208:	0017879b          	addiw	a5,a5,1
    8000620c:	0004a703          	lw	a4,0(s1)
    80006210:	02e7e7bb          	remw	a5,a5,a4
    80006214:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006218:	0304b503          	ld	a0,48(s1)
    8000621c:	ffffe097          	auipc	ra,0xffffe
    80006220:	31c080e7          	jalr	796(ra) # 80004538 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006224:	0204b503          	ld	a0,32(s1)
    80006228:	ffffe097          	auipc	ra,0xffffe
    8000622c:	310080e7          	jalr	784(ra) # 80004538 <_ZN9Semaphore6signalEv>

}
    80006230:	01813083          	ld	ra,24(sp)
    80006234:	01013403          	ld	s0,16(sp)
    80006238:	00813483          	ld	s1,8(sp)
    8000623c:	00013903          	ld	s2,0(sp)
    80006240:	02010113          	addi	sp,sp,32
    80006244:	00008067          	ret

0000000080006248 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006248:	fe010113          	addi	sp,sp,-32
    8000624c:	00113c23          	sd	ra,24(sp)
    80006250:	00813823          	sd	s0,16(sp)
    80006254:	00913423          	sd	s1,8(sp)
    80006258:	01213023          	sd	s2,0(sp)
    8000625c:	02010413          	addi	s0,sp,32
    80006260:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006264:	02053503          	ld	a0,32(a0)
    80006268:	ffffe097          	auipc	ra,0xffffe
    8000626c:	2a4080e7          	jalr	676(ra) # 8000450c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006270:	0284b503          	ld	a0,40(s1)
    80006274:	ffffe097          	auipc	ra,0xffffe
    80006278:	298080e7          	jalr	664(ra) # 8000450c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000627c:	0084b703          	ld	a4,8(s1)
    80006280:	0104a783          	lw	a5,16(s1)
    80006284:	00279693          	slli	a3,a5,0x2
    80006288:	00d70733          	add	a4,a4,a3
    8000628c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006290:	0017879b          	addiw	a5,a5,1
    80006294:	0004a703          	lw	a4,0(s1)
    80006298:	02e7e7bb          	remw	a5,a5,a4
    8000629c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800062a0:	0284b503          	ld	a0,40(s1)
    800062a4:	ffffe097          	auipc	ra,0xffffe
    800062a8:	294080e7          	jalr	660(ra) # 80004538 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800062ac:	0184b503          	ld	a0,24(s1)
    800062b0:	ffffe097          	auipc	ra,0xffffe
    800062b4:	288080e7          	jalr	648(ra) # 80004538 <_ZN9Semaphore6signalEv>

    return ret;
}
    800062b8:	00090513          	mv	a0,s2
    800062bc:	01813083          	ld	ra,24(sp)
    800062c0:	01013403          	ld	s0,16(sp)
    800062c4:	00813483          	ld	s1,8(sp)
    800062c8:	00013903          	ld	s2,0(sp)
    800062cc:	02010113          	addi	sp,sp,32
    800062d0:	00008067          	ret

00000000800062d4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800062d4:	fe010113          	addi	sp,sp,-32
    800062d8:	00113c23          	sd	ra,24(sp)
    800062dc:	00813823          	sd	s0,16(sp)
    800062e0:	00913423          	sd	s1,8(sp)
    800062e4:	01213023          	sd	s2,0(sp)
    800062e8:	02010413          	addi	s0,sp,32
    800062ec:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800062f0:	02853503          	ld	a0,40(a0)
    800062f4:	ffffe097          	auipc	ra,0xffffe
    800062f8:	218080e7          	jalr	536(ra) # 8000450c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800062fc:	0304b503          	ld	a0,48(s1)
    80006300:	ffffe097          	auipc	ra,0xffffe
    80006304:	20c080e7          	jalr	524(ra) # 8000450c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006308:	0144a783          	lw	a5,20(s1)
    8000630c:	0104a903          	lw	s2,16(s1)
    80006310:	0327ce63          	blt	a5,s2,8000634c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006314:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006318:	0304b503          	ld	a0,48(s1)
    8000631c:	ffffe097          	auipc	ra,0xffffe
    80006320:	21c080e7          	jalr	540(ra) # 80004538 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006324:	0284b503          	ld	a0,40(s1)
    80006328:	ffffe097          	auipc	ra,0xffffe
    8000632c:	210080e7          	jalr	528(ra) # 80004538 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006330:	00090513          	mv	a0,s2
    80006334:	01813083          	ld	ra,24(sp)
    80006338:	01013403          	ld	s0,16(sp)
    8000633c:	00813483          	ld	s1,8(sp)
    80006340:	00013903          	ld	s2,0(sp)
    80006344:	02010113          	addi	sp,sp,32
    80006348:	00008067          	ret
        ret = cap - head + tail;
    8000634c:	0004a703          	lw	a4,0(s1)
    80006350:	4127093b          	subw	s2,a4,s2
    80006354:	00f9093b          	addw	s2,s2,a5
    80006358:	fc1ff06f          	j	80006318 <_ZN9BufferCPP6getCntEv+0x44>

000000008000635c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000635c:	fe010113          	addi	sp,sp,-32
    80006360:	00113c23          	sd	ra,24(sp)
    80006364:	00813823          	sd	s0,16(sp)
    80006368:	00913423          	sd	s1,8(sp)
    8000636c:	02010413          	addi	s0,sp,32
    80006370:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006374:	00a00513          	li	a0,10
    80006378:	ffffe097          	auipc	ra,0xffffe
    8000637c:	214080e7          	jalr	532(ra) # 8000458c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006380:	00006517          	auipc	a0,0x6
    80006384:	12050513          	addi	a0,a0,288 # 8000c4a0 <CONSOLE_STATUS+0x490>
    80006388:	00000097          	auipc	ra,0x0
    8000638c:	a20080e7          	jalr	-1504(ra) # 80005da8 <_Z11printStringPKc>
    while (getCnt()) {
    80006390:	00048513          	mv	a0,s1
    80006394:	00000097          	auipc	ra,0x0
    80006398:	f40080e7          	jalr	-192(ra) # 800062d4 <_ZN9BufferCPP6getCntEv>
    8000639c:	02050c63          	beqz	a0,800063d4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800063a0:	0084b783          	ld	a5,8(s1)
    800063a4:	0104a703          	lw	a4,16(s1)
    800063a8:	00271713          	slli	a4,a4,0x2
    800063ac:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800063b0:	0007c503          	lbu	a0,0(a5)
    800063b4:	ffffe097          	auipc	ra,0xffffe
    800063b8:	1d8080e7          	jalr	472(ra) # 8000458c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800063bc:	0104a783          	lw	a5,16(s1)
    800063c0:	0017879b          	addiw	a5,a5,1
    800063c4:	0004a703          	lw	a4,0(s1)
    800063c8:	02e7e7bb          	remw	a5,a5,a4
    800063cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800063d0:	fc1ff06f          	j	80006390 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800063d4:	02100513          	li	a0,33
    800063d8:	ffffe097          	auipc	ra,0xffffe
    800063dc:	1b4080e7          	jalr	436(ra) # 8000458c <_ZN7Console4putcEc>
    Console::putc('\n');
    800063e0:	00a00513          	li	a0,10
    800063e4:	ffffe097          	auipc	ra,0xffffe
    800063e8:	1a8080e7          	jalr	424(ra) # 8000458c <_ZN7Console4putcEc>
    mem_free(buffer);
    800063ec:	0084b503          	ld	a0,8(s1)
    800063f0:	ffffb097          	auipc	ra,0xffffb
    800063f4:	eac080e7          	jalr	-340(ra) # 8000129c <mem_free>
    delete itemAvailable;
    800063f8:	0204b503          	ld	a0,32(s1)
    800063fc:	00050863          	beqz	a0,8000640c <_ZN9BufferCPPD1Ev+0xb0>
    80006400:	00053783          	ld	a5,0(a0)
    80006404:	0087b783          	ld	a5,8(a5)
    80006408:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000640c:	0184b503          	ld	a0,24(s1)
    80006410:	00050863          	beqz	a0,80006420 <_ZN9BufferCPPD1Ev+0xc4>
    80006414:	00053783          	ld	a5,0(a0)
    80006418:	0087b783          	ld	a5,8(a5)
    8000641c:	000780e7          	jalr	a5
    delete mutexTail;
    80006420:	0304b503          	ld	a0,48(s1)
    80006424:	00050863          	beqz	a0,80006434 <_ZN9BufferCPPD1Ev+0xd8>
    80006428:	00053783          	ld	a5,0(a0)
    8000642c:	0087b783          	ld	a5,8(a5)
    80006430:	000780e7          	jalr	a5
    delete mutexHead;
    80006434:	0284b503          	ld	a0,40(s1)
    80006438:	00050863          	beqz	a0,80006448 <_ZN9BufferCPPD1Ev+0xec>
    8000643c:	00053783          	ld	a5,0(a0)
    80006440:	0087b783          	ld	a5,8(a5)
    80006444:	000780e7          	jalr	a5
}
    80006448:	01813083          	ld	ra,24(sp)
    8000644c:	01013403          	ld	s0,16(sp)
    80006450:	00813483          	ld	s1,8(sp)
    80006454:	02010113          	addi	sp,sp,32
    80006458:	00008067          	ret

000000008000645c <_ZN18Threads_C_API_test11workerBodyEEPv>:
        printString("D finished!\n");
        finishedD = true;
        thread_dispatch();
    }

    void workerBodyE(void* arg) {
    8000645c:	ff010113          	addi	sp,sp,-16
    80006460:	00113423          	sd	ra,8(sp)
    80006464:	00813023          	sd	s0,0(sp)
    80006468:	01010413          	addi	s0,sp,16
//
//    for (; i < 16; i++) {
//        printString("D: i="); printInt(i); printString("\n");
//    }

        printString("E finished!\n");
    8000646c:	00006517          	auipc	a0,0x6
    80006470:	04c50513          	addi	a0,a0,76 # 8000c4b8 <CONSOLE_STATUS+0x4a8>
    80006474:	00000097          	auipc	ra,0x0
    80006478:	934080e7          	jalr	-1740(ra) # 80005da8 <_Z11printStringPKc>
        finishedE = true;
    8000647c:	00100793          	li	a5,1
    80006480:	00009717          	auipc	a4,0x9
    80006484:	5cf70c23          	sb	a5,1496(a4) # 8000fa58 <_ZN18Threads_C_API_test9finishedEE>
        thread_dispatch();
    80006488:	ffffb097          	auipc	ra,0xffffb
    8000648c:	f18080e7          	jalr	-232(ra) # 800013a0 <thread_dispatch>
    }
    80006490:	00813083          	ld	ra,8(sp)
    80006494:	00013403          	ld	s0,0(sp)
    80006498:	01010113          	addi	sp,sp,16
    8000649c:	00008067          	ret

00000000800064a0 <_ZN18Threads_C_API_test11workerBodyAEPv>:
    void workerBodyA(void* arg) {
    800064a0:	fe010113          	addi	sp,sp,-32
    800064a4:	00113c23          	sd	ra,24(sp)
    800064a8:	00813823          	sd	s0,16(sp)
    800064ac:	00913423          	sd	s1,8(sp)
    800064b0:	01213023          	sd	s2,0(sp)
    800064b4:	02010413          	addi	s0,sp,32
        for (uint64 i = 0; i < 10; i++) {
    800064b8:	00000913          	li	s2,0
    800064bc:	0380006f          	j	800064f4 <_ZN18Threads_C_API_test11workerBodyAEPv+0x54>
                thread_dispatch();
    800064c0:	ffffb097          	auipc	ra,0xffffb
    800064c4:	ee0080e7          	jalr	-288(ra) # 800013a0 <thread_dispatch>
            for (uint64 j = 0; j < 10000; j++) {
    800064c8:	00148493          	addi	s1,s1,1
    800064cc:	000027b7          	lui	a5,0x2
    800064d0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800064d4:	0097ee63          	bltu	a5,s1,800064f0 <_ZN18Threads_C_API_test11workerBodyAEPv+0x50>
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800064d8:	00000713          	li	a4,0
    800064dc:	000077b7          	lui	a5,0x7
    800064e0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800064e4:	fce7eee3          	bltu	a5,a4,800064c0 <_ZN18Threads_C_API_test11workerBodyAEPv+0x20>
    800064e8:	00170713          	addi	a4,a4,1
    800064ec:	ff1ff06f          	j	800064dc <_ZN18Threads_C_API_test11workerBodyAEPv+0x3c>
        for (uint64 i = 0; i < 10; i++) {
    800064f0:	00190913          	addi	s2,s2,1
    800064f4:	00900793          	li	a5,9
    800064f8:	0527e063          	bltu	a5,s2,80006538 <_ZN18Threads_C_API_test11workerBodyAEPv+0x98>
            printString("A: i="); printInt(i); printString("\n");
    800064fc:	00006517          	auipc	a0,0x6
    80006500:	fcc50513          	addi	a0,a0,-52 # 8000c4c8 <CONSOLE_STATUS+0x4b8>
    80006504:	00000097          	auipc	ra,0x0
    80006508:	8a4080e7          	jalr	-1884(ra) # 80005da8 <_Z11printStringPKc>
    8000650c:	00000613          	li	a2,0
    80006510:	00a00593          	li	a1,10
    80006514:	0009051b          	sext.w	a0,s2
    80006518:	00000097          	auipc	ra,0x0
    8000651c:	a28080e7          	jalr	-1496(ra) # 80005f40 <_Z8printIntiii>
    80006520:	00006517          	auipc	a0,0x6
    80006524:	d2850513          	addi	a0,a0,-728 # 8000c248 <CONSOLE_STATUS+0x238>
    80006528:	00000097          	auipc	ra,0x0
    8000652c:	880080e7          	jalr	-1920(ra) # 80005da8 <_Z11printStringPKc>
            for (uint64 j = 0; j < 10000; j++) {
    80006530:	00000493          	li	s1,0
    80006534:	f99ff06f          	j	800064cc <_ZN18Threads_C_API_test11workerBodyAEPv+0x2c>
        printString("A finished!\n");
    80006538:	00006517          	auipc	a0,0x6
    8000653c:	f9850513          	addi	a0,a0,-104 # 8000c4d0 <CONSOLE_STATUS+0x4c0>
    80006540:	00000097          	auipc	ra,0x0
    80006544:	868080e7          	jalr	-1944(ra) # 80005da8 <_Z11printStringPKc>
        finishedA = true;
    80006548:	00100793          	li	a5,1
    8000654c:	00009717          	auipc	a4,0x9
    80006550:	50f706a3          	sb	a5,1293(a4) # 8000fa59 <_ZN18Threads_C_API_test9finishedAE>
    }
    80006554:	01813083          	ld	ra,24(sp)
    80006558:	01013403          	ld	s0,16(sp)
    8000655c:	00813483          	ld	s1,8(sp)
    80006560:	00013903          	ld	s2,0(sp)
    80006564:	02010113          	addi	sp,sp,32
    80006568:	00008067          	ret

000000008000656c <_ZN18Threads_C_API_test11workerBodyBEPv>:
    void workerBodyB(void* arg) {
    8000656c:	fe010113          	addi	sp,sp,-32
    80006570:	00113c23          	sd	ra,24(sp)
    80006574:	00813823          	sd	s0,16(sp)
    80006578:	00913423          	sd	s1,8(sp)
    8000657c:	01213023          	sd	s2,0(sp)
    80006580:	02010413          	addi	s0,sp,32
        for (uint64 i = 0; i < 16; i++) {
    80006584:	00000913          	li	s2,0
    80006588:	0380006f          	j	800065c0 <_ZN18Threads_C_API_test11workerBodyBEPv+0x54>
                thread_dispatch();
    8000658c:	ffffb097          	auipc	ra,0xffffb
    80006590:	e14080e7          	jalr	-492(ra) # 800013a0 <thread_dispatch>
            for (uint64 j = 0; j < 10000; j++) {
    80006594:	00148493          	addi	s1,s1,1
    80006598:	000027b7          	lui	a5,0x2
    8000659c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800065a0:	0097ee63          	bltu	a5,s1,800065bc <_ZN18Threads_C_API_test11workerBodyBEPv+0x50>
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800065a4:	00000713          	li	a4,0
    800065a8:	000077b7          	lui	a5,0x7
    800065ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800065b0:	fce7eee3          	bltu	a5,a4,8000658c <_ZN18Threads_C_API_test11workerBodyBEPv+0x20>
    800065b4:	00170713          	addi	a4,a4,1
    800065b8:	ff1ff06f          	j	800065a8 <_ZN18Threads_C_API_test11workerBodyBEPv+0x3c>
        for (uint64 i = 0; i < 16; i++) {
    800065bc:	00190913          	addi	s2,s2,1
    800065c0:	00f00793          	li	a5,15
    800065c4:	0527e063          	bltu	a5,s2,80006604 <_ZN18Threads_C_API_test11workerBodyBEPv+0x98>
            printString("B: i="); printInt(i); printString("\n");
    800065c8:	00006517          	auipc	a0,0x6
    800065cc:	f1850513          	addi	a0,a0,-232 # 8000c4e0 <CONSOLE_STATUS+0x4d0>
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	7d8080e7          	jalr	2008(ra) # 80005da8 <_Z11printStringPKc>
    800065d8:	00000613          	li	a2,0
    800065dc:	00a00593          	li	a1,10
    800065e0:	0009051b          	sext.w	a0,s2
    800065e4:	00000097          	auipc	ra,0x0
    800065e8:	95c080e7          	jalr	-1700(ra) # 80005f40 <_Z8printIntiii>
    800065ec:	00006517          	auipc	a0,0x6
    800065f0:	c5c50513          	addi	a0,a0,-932 # 8000c248 <CONSOLE_STATUS+0x238>
    800065f4:	fffff097          	auipc	ra,0xfffff
    800065f8:	7b4080e7          	jalr	1972(ra) # 80005da8 <_Z11printStringPKc>
            for (uint64 j = 0; j < 10000; j++) {
    800065fc:	00000493          	li	s1,0
    80006600:	f99ff06f          	j	80006598 <_ZN18Threads_C_API_test11workerBodyBEPv+0x2c>
        printString("B finished!\n");
    80006604:	00006517          	auipc	a0,0x6
    80006608:	ee450513          	addi	a0,a0,-284 # 8000c4e8 <CONSOLE_STATUS+0x4d8>
    8000660c:	fffff097          	auipc	ra,0xfffff
    80006610:	79c080e7          	jalr	1948(ra) # 80005da8 <_Z11printStringPKc>
        finishedB = true;
    80006614:	00100793          	li	a5,1
    80006618:	00009717          	auipc	a4,0x9
    8000661c:	44f70123          	sb	a5,1090(a4) # 8000fa5a <_ZN18Threads_C_API_test9finishedBE>
        thread_dispatch();
    80006620:	ffffb097          	auipc	ra,0xffffb
    80006624:	d80080e7          	jalr	-640(ra) # 800013a0 <thread_dispatch>
    }
    80006628:	01813083          	ld	ra,24(sp)
    8000662c:	01013403          	ld	s0,16(sp)
    80006630:	00813483          	ld	s1,8(sp)
    80006634:	00013903          	ld	s2,0(sp)
    80006638:	02010113          	addi	sp,sp,32
    8000663c:	00008067          	ret

0000000080006640 <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv>:
        sem_t wait;
    };

    volatile int threadEnd = 0;

    void producerKeyboard(void *arg) {
    80006640:	fe010113          	addi	sp,sp,-32
    80006644:	00113c23          	sd	ra,24(sp)
    80006648:	00813823          	sd	s0,16(sp)
    8000664c:	00913423          	sd	s1,8(sp)
    80006650:	01213023          	sd	s2,0(sp)
    80006654:	02010413          	addi	s0,sp,32
    80006658:	00050493          	mv	s1,a0
        struct thread_data *data = (struct thread_data *) arg;

        int key;
        int i = 0;
    8000665c:	00000913          	li	s2,0
    80006660:	00c0006f          	j	8000666c <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv+0x2c>
        while ((key = getc()) != 0x1b) {
            data->buffer->put(key);
            i++;

            if (i % (10 * data->id) == 0) {
                thread_dispatch();
    80006664:	ffffb097          	auipc	ra,0xffffb
    80006668:	d3c080e7          	jalr	-708(ra) # 800013a0 <thread_dispatch>
        while ((key = getc()) != 0x1b) {
    8000666c:	ffffb097          	auipc	ra,0xffffb
    80006670:	f88080e7          	jalr	-120(ra) # 800015f4 <getc>
    80006674:	0005059b          	sext.w	a1,a0
    80006678:	01b00793          	li	a5,27
    8000667c:	02f58a63          	beq	a1,a5,800066b0 <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv+0x70>
            data->buffer->put(key);
    80006680:	0084b503          	ld	a0,8(s1)
    80006684:	00003097          	auipc	ra,0x3
    80006688:	03c080e7          	jalr	60(ra) # 800096c0 <_ZN6Buffer3putEi>
            i++;
    8000668c:	0019071b          	addiw	a4,s2,1
    80006690:	0007091b          	sext.w	s2,a4
            if (i % (10 * data->id) == 0) {
    80006694:	0004a683          	lw	a3,0(s1)
    80006698:	0026979b          	slliw	a5,a3,0x2
    8000669c:	00d787bb          	addw	a5,a5,a3
    800066a0:	0017979b          	slliw	a5,a5,0x1
    800066a4:	02f767bb          	remw	a5,a4,a5
    800066a8:	fc0792e3          	bnez	a5,8000666c <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv+0x2c>
    800066ac:	fb9ff06f          	j	80006664 <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv+0x24>
            }
        }

        threadEnd = 1;
    800066b0:	00100793          	li	a5,1
    800066b4:	00009717          	auipc	a4,0x9
    800066b8:	3af72423          	sw	a5,936(a4) # 8000fa5c <_ZN27ConsumerProducer_C_API_test9threadEndE>
        data->buffer->put('!');
    800066bc:	02100593          	li	a1,33
    800066c0:	0084b503          	ld	a0,8(s1)
    800066c4:	00003097          	auipc	ra,0x3
    800066c8:	ffc080e7          	jalr	-4(ra) # 800096c0 <_ZN6Buffer3putEi>

        sem_signal(data->wait);
    800066cc:	0104b503          	ld	a0,16(s1)
    800066d0:	ffffb097          	auipc	ra,0xffffb
    800066d4:	ed0080e7          	jalr	-304(ra) # 800015a0 <sem_signal>
    }
    800066d8:	01813083          	ld	ra,24(sp)
    800066dc:	01013403          	ld	s0,16(sp)
    800066e0:	00813483          	ld	s1,8(sp)
    800066e4:	00013903          	ld	s2,0(sp)
    800066e8:	02010113          	addi	sp,sp,32
    800066ec:	00008067          	ret

00000000800066f0 <_ZN27ConsumerProducer_C_API_test8producerEPv>:

    void producer(void *arg) {
    800066f0:	fe010113          	addi	sp,sp,-32
    800066f4:	00113c23          	sd	ra,24(sp)
    800066f8:	00813823          	sd	s0,16(sp)
    800066fc:	00913423          	sd	s1,8(sp)
    80006700:	01213023          	sd	s2,0(sp)
    80006704:	02010413          	addi	s0,sp,32
    80006708:	00050493          	mv	s1,a0
        struct thread_data *data = (struct thread_data *) arg;

        int i = 0;
    8000670c:	00000913          	li	s2,0
    80006710:	00c0006f          	j	8000671c <_ZN27ConsumerProducer_C_API_test8producerEPv+0x2c>
        while (!threadEnd) {
            data->buffer->put(data->id + '0');
            i++;

            if (i % (10 * data->id) == 0) {
                thread_dispatch();
    80006714:	ffffb097          	auipc	ra,0xffffb
    80006718:	c8c080e7          	jalr	-884(ra) # 800013a0 <thread_dispatch>
        while (!threadEnd) {
    8000671c:	00009797          	auipc	a5,0x9
    80006720:	3407a783          	lw	a5,832(a5) # 8000fa5c <_ZN27ConsumerProducer_C_API_test9threadEndE>
    80006724:	02079e63          	bnez	a5,80006760 <_ZN27ConsumerProducer_C_API_test8producerEPv+0x70>
            data->buffer->put(data->id + '0');
    80006728:	0004a583          	lw	a1,0(s1)
    8000672c:	0305859b          	addiw	a1,a1,48
    80006730:	0084b503          	ld	a0,8(s1)
    80006734:	00003097          	auipc	ra,0x3
    80006738:	f8c080e7          	jalr	-116(ra) # 800096c0 <_ZN6Buffer3putEi>
            i++;
    8000673c:	0019071b          	addiw	a4,s2,1
    80006740:	0007091b          	sext.w	s2,a4
            if (i % (10 * data->id) == 0) {
    80006744:	0004a683          	lw	a3,0(s1)
    80006748:	0026979b          	slliw	a5,a3,0x2
    8000674c:	00d787bb          	addw	a5,a5,a3
    80006750:	0017979b          	slliw	a5,a5,0x1
    80006754:	02f767bb          	remw	a5,a4,a5
    80006758:	fc0792e3          	bnez	a5,8000671c <_ZN27ConsumerProducer_C_API_test8producerEPv+0x2c>
    8000675c:	fb9ff06f          	j	80006714 <_ZN27ConsumerProducer_C_API_test8producerEPv+0x24>
            }
        }

        sem_signal(data->wait);
    80006760:	0104b503          	ld	a0,16(s1)
    80006764:	ffffb097          	auipc	ra,0xffffb
    80006768:	e3c080e7          	jalr	-452(ra) # 800015a0 <sem_signal>
    }
    8000676c:	01813083          	ld	ra,24(sp)
    80006770:	01013403          	ld	s0,16(sp)
    80006774:	00813483          	ld	s1,8(sp)
    80006778:	00013903          	ld	s2,0(sp)
    8000677c:	02010113          	addi	sp,sp,32
    80006780:	00008067          	ret

0000000080006784 <_ZN27ConsumerProducer_C_API_test8consumerEPv>:

    void consumer(void *arg) {
    80006784:	fd010113          	addi	sp,sp,-48
    80006788:	02113423          	sd	ra,40(sp)
    8000678c:	02813023          	sd	s0,32(sp)
    80006790:	00913c23          	sd	s1,24(sp)
    80006794:	01213823          	sd	s2,16(sp)
    80006798:	01313423          	sd	s3,8(sp)
    8000679c:	03010413          	addi	s0,sp,48
    800067a0:	00050913          	mv	s2,a0
        struct thread_data *data = (struct thread_data *) arg;

        int i = 0;
    800067a4:	00000993          	li	s3,0
    800067a8:	01c0006f          	j	800067c4 <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x40>
            i++;

            putc(key);

            if (i % (5 * data->id) == 0) {
                thread_dispatch();
    800067ac:	ffffb097          	auipc	ra,0xffffb
    800067b0:	bf4080e7          	jalr	-1036(ra) # 800013a0 <thread_dispatch>
    800067b4:	0500006f          	j	80006804 <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x80>
            }

            if (i % 80 == 0) {
                putc('\n');
    800067b8:	00a00513          	li	a0,10
    800067bc:	ffffb097          	auipc	ra,0xffffb
    800067c0:	e8c080e7          	jalr	-372(ra) # 80001648 <putc>
        while (!threadEnd) {
    800067c4:	00009797          	auipc	a5,0x9
    800067c8:	2987a783          	lw	a5,664(a5) # 8000fa5c <_ZN27ConsumerProducer_C_API_test9threadEndE>
    800067cc:	06079063          	bnez	a5,8000682c <_ZN27ConsumerProducer_C_API_test8consumerEPv+0xa8>
            int key = data->buffer->get();
    800067d0:	00893503          	ld	a0,8(s2)
    800067d4:	00003097          	auipc	ra,0x3
    800067d8:	f7c080e7          	jalr	-132(ra) # 80009750 <_ZN6Buffer3getEv>
            i++;
    800067dc:	0019849b          	addiw	s1,s3,1
    800067e0:	0004899b          	sext.w	s3,s1
            putc(key);
    800067e4:	0ff57513          	andi	a0,a0,255
    800067e8:	ffffb097          	auipc	ra,0xffffb
    800067ec:	e60080e7          	jalr	-416(ra) # 80001648 <putc>
            if (i % (5 * data->id) == 0) {
    800067f0:	00092703          	lw	a4,0(s2)
    800067f4:	0027179b          	slliw	a5,a4,0x2
    800067f8:	00e787bb          	addw	a5,a5,a4
    800067fc:	02f4e7bb          	remw	a5,s1,a5
    80006800:	fa0786e3          	beqz	a5,800067ac <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x28>
            if (i % 80 == 0) {
    80006804:	05000793          	li	a5,80
    80006808:	02f4e4bb          	remw	s1,s1,a5
    8000680c:	fa049ce3          	bnez	s1,800067c4 <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x40>
    80006810:	fa9ff06f          	j	800067b8 <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x34>
            }
        }

        while (data->buffer->getCnt() > 0) {
            int key = data->buffer->get();
    80006814:	00893503          	ld	a0,8(s2)
    80006818:	00003097          	auipc	ra,0x3
    8000681c:	f38080e7          	jalr	-200(ra) # 80009750 <_ZN6Buffer3getEv>
            putc(key);
    80006820:	0ff57513          	andi	a0,a0,255
    80006824:	ffffb097          	auipc	ra,0xffffb
    80006828:	e24080e7          	jalr	-476(ra) # 80001648 <putc>
        while (data->buffer->getCnt() > 0) {
    8000682c:	00893503          	ld	a0,8(s2)
    80006830:	00003097          	auipc	ra,0x3
    80006834:	fac080e7          	jalr	-84(ra) # 800097dc <_ZN6Buffer6getCntEv>
    80006838:	fca04ee3          	bgtz	a0,80006814 <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x90>
        }

        sem_signal(data->wait);
    8000683c:	01093503          	ld	a0,16(s2)
    80006840:	ffffb097          	auipc	ra,0xffffb
    80006844:	d60080e7          	jalr	-672(ra) # 800015a0 <sem_signal>
    }
    80006848:	02813083          	ld	ra,40(sp)
    8000684c:	02013403          	ld	s0,32(sp)
    80006850:	01813483          	ld	s1,24(sp)
    80006854:	01013903          	ld	s2,16(sp)
    80006858:	00813983          	ld	s3,8(sp)
    8000685c:	03010113          	addi	sp,sp,48
    80006860:	00008067          	ret

0000000080006864 <_ZN22ThreadSleep_C_API_test9sleepyRunEPv>:

namespace ThreadSleep_C_API_test {

    bool finished[2];

    void sleepyRun(void *arg) {
    80006864:	fe010113          	addi	sp,sp,-32
    80006868:	00113c23          	sd	ra,24(sp)
    8000686c:	00813823          	sd	s0,16(sp)
    80006870:	00913423          	sd	s1,8(sp)
    80006874:	01213023          	sd	s2,0(sp)
    80006878:	02010413          	addi	s0,sp,32
        time_t sleep_time = *((time_t *) arg);
    8000687c:	00053903          	ld	s2,0(a0)
        int i = 6;
    80006880:	00600493          	li	s1,6
        while (--i > 0) {
    80006884:	fff4849b          	addiw	s1,s1,-1
    80006888:	04905463          	blez	s1,800068d0 <_ZN22ThreadSleep_C_API_test9sleepyRunEPv+0x6c>

            printString("Hello ");
    8000688c:	00006517          	auipc	a0,0x6
    80006890:	c6c50513          	addi	a0,a0,-916 # 8000c4f8 <CONSOLE_STATUS+0x4e8>
    80006894:	fffff097          	auipc	ra,0xfffff
    80006898:	514080e7          	jalr	1300(ra) # 80005da8 <_Z11printStringPKc>
            printInt(sleep_time);
    8000689c:	00000613          	li	a2,0
    800068a0:	00a00593          	li	a1,10
    800068a4:	0009051b          	sext.w	a0,s2
    800068a8:	fffff097          	auipc	ra,0xfffff
    800068ac:	698080e7          	jalr	1688(ra) # 80005f40 <_Z8printIntiii>
            printString(" !\n");
    800068b0:	00006517          	auipc	a0,0x6
    800068b4:	c5050513          	addi	a0,a0,-944 # 8000c500 <CONSOLE_STATUS+0x4f0>
    800068b8:	fffff097          	auipc	ra,0xfffff
    800068bc:	4f0080e7          	jalr	1264(ra) # 80005da8 <_Z11printStringPKc>
            time_sleep(sleep_time);
    800068c0:	00090513          	mv	a0,s2
    800068c4:	ffffb097          	auipc	ra,0xffffb
    800068c8:	b80080e7          	jalr	-1152(ra) # 80001444 <time_sleep>
        while (--i > 0) {
    800068cc:	fb9ff06f          	j	80006884 <_ZN22ThreadSleep_C_API_test9sleepyRunEPv+0x20>
        }
        finished[sleep_time/10-1] = true;
    800068d0:	00a00793          	li	a5,10
    800068d4:	02f95933          	divu	s2,s2,a5
    800068d8:	fff90913          	addi	s2,s2,-1
    800068dc:	00009797          	auipc	a5,0x9
    800068e0:	17c78793          	addi	a5,a5,380 # 8000fa58 <_ZN18Threads_C_API_test9finishedEE>
    800068e4:	01278933          	add	s2,a5,s2
    800068e8:	00100793          	li	a5,1
    800068ec:	00f90823          	sb	a5,16(s2)
    }
    800068f0:	01813083          	ld	ra,24(sp)
    800068f4:	01013403          	ld	s0,16(sp)
    800068f8:	00813483          	ld	s1,8(sp)
    800068fc:	00013903          	ld	s2,0(sp)
    80006900:	02010113          	addi	sp,sp,32
    80006904:	00008067          	ret

0000000080006908 <_ZN18Threads_C_API_test9fibonacciEm>:
    uint64 fibonacci(uint64 n) {
    80006908:	fe010113          	addi	sp,sp,-32
    8000690c:	00113c23          	sd	ra,24(sp)
    80006910:	00813823          	sd	s0,16(sp)
    80006914:	00913423          	sd	s1,8(sp)
    80006918:	01213023          	sd	s2,0(sp)
    8000691c:	02010413          	addi	s0,sp,32
    80006920:	00050493          	mv	s1,a0
        if (n == 0 || n == 1) { return n; }
    80006924:	00100793          	li	a5,1
    80006928:	02a7f863          	bgeu	a5,a0,80006958 <_ZN18Threads_C_API_test9fibonacciEm+0x50>
        if (n % 10 == 0) { thread_dispatch(); }
    8000692c:	00a00793          	li	a5,10
    80006930:	02f577b3          	remu	a5,a0,a5
    80006934:	02078e63          	beqz	a5,80006970 <_ZN18Threads_C_API_test9fibonacciEm+0x68>
        return fibonacci(n - 1) + fibonacci(n - 2);
    80006938:	fff48513          	addi	a0,s1,-1
    8000693c:	00000097          	auipc	ra,0x0
    80006940:	fcc080e7          	jalr	-52(ra) # 80006908 <_ZN18Threads_C_API_test9fibonacciEm>
    80006944:	00050913          	mv	s2,a0
    80006948:	ffe48513          	addi	a0,s1,-2
    8000694c:	00000097          	auipc	ra,0x0
    80006950:	fbc080e7          	jalr	-68(ra) # 80006908 <_ZN18Threads_C_API_test9fibonacciEm>
    80006954:	00a90533          	add	a0,s2,a0
    }
    80006958:	01813083          	ld	ra,24(sp)
    8000695c:	01013403          	ld	s0,16(sp)
    80006960:	00813483          	ld	s1,8(sp)
    80006964:	00013903          	ld	s2,0(sp)
    80006968:	02010113          	addi	sp,sp,32
    8000696c:	00008067          	ret
        if (n % 10 == 0) { thread_dispatch(); }
    80006970:	ffffb097          	auipc	ra,0xffffb
    80006974:	a30080e7          	jalr	-1488(ra) # 800013a0 <thread_dispatch>
    80006978:	fc1ff06f          	j	80006938 <_ZN18Threads_C_API_test9fibonacciEm+0x30>

000000008000697c <_ZN18Threads_C_API_test11workerBodyCEPv>:
    void workerBodyC(void* arg) {
    8000697c:	fe010113          	addi	sp,sp,-32
    80006980:	00113c23          	sd	ra,24(sp)
    80006984:	00813823          	sd	s0,16(sp)
    80006988:	00913423          	sd	s1,8(sp)
    8000698c:	01213023          	sd	s2,0(sp)
    80006990:	02010413          	addi	s0,sp,32
        uint8 i = 0;
    80006994:	00000493          	li	s1,0
    80006998:	0400006f          	j	800069d8 <_ZN18Threads_C_API_test11workerBodyCEPv+0x5c>
            printString("C: i="); printInt(i); printString("\n");
    8000699c:	00006517          	auipc	a0,0x6
    800069a0:	b6c50513          	addi	a0,a0,-1172 # 8000c508 <CONSOLE_STATUS+0x4f8>
    800069a4:	fffff097          	auipc	ra,0xfffff
    800069a8:	404080e7          	jalr	1028(ra) # 80005da8 <_Z11printStringPKc>
    800069ac:	00000613          	li	a2,0
    800069b0:	00a00593          	li	a1,10
    800069b4:	00048513          	mv	a0,s1
    800069b8:	fffff097          	auipc	ra,0xfffff
    800069bc:	588080e7          	jalr	1416(ra) # 80005f40 <_Z8printIntiii>
    800069c0:	00006517          	auipc	a0,0x6
    800069c4:	88850513          	addi	a0,a0,-1912 # 8000c248 <CONSOLE_STATUS+0x238>
    800069c8:	fffff097          	auipc	ra,0xfffff
    800069cc:	3e0080e7          	jalr	992(ra) # 80005da8 <_Z11printStringPKc>
        for (; i < 3; i++) {
    800069d0:	0014849b          	addiw	s1,s1,1
    800069d4:	0ff4f493          	andi	s1,s1,255
    800069d8:	00200793          	li	a5,2
    800069dc:	fc97f0e3          	bgeu	a5,s1,8000699c <_ZN18Threads_C_API_test11workerBodyCEPv+0x20>
        printString("C: dispatch\n");
    800069e0:	00006517          	auipc	a0,0x6
    800069e4:	b3050513          	addi	a0,a0,-1232 # 8000c510 <CONSOLE_STATUS+0x500>
    800069e8:	fffff097          	auipc	ra,0xfffff
    800069ec:	3c0080e7          	jalr	960(ra) # 80005da8 <_Z11printStringPKc>
        __asm__ ("li t1, 7");
    800069f0:	00700313          	li	t1,7
        thread_dispatch();
    800069f4:	ffffb097          	auipc	ra,0xffffb
    800069f8:	9ac080e7          	jalr	-1620(ra) # 800013a0 <thread_dispatch>
        __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800069fc:	00030913          	mv	s2,t1
        printString("C: t1="); printInt(t1); printString("\n");
    80006a00:	00006517          	auipc	a0,0x6
    80006a04:	b2050513          	addi	a0,a0,-1248 # 8000c520 <CONSOLE_STATUS+0x510>
    80006a08:	fffff097          	auipc	ra,0xfffff
    80006a0c:	3a0080e7          	jalr	928(ra) # 80005da8 <_Z11printStringPKc>
    80006a10:	00000613          	li	a2,0
    80006a14:	00a00593          	li	a1,10
    80006a18:	0009051b          	sext.w	a0,s2
    80006a1c:	fffff097          	auipc	ra,0xfffff
    80006a20:	524080e7          	jalr	1316(ra) # 80005f40 <_Z8printIntiii>
    80006a24:	00006517          	auipc	a0,0x6
    80006a28:	82450513          	addi	a0,a0,-2012 # 8000c248 <CONSOLE_STATUS+0x238>
    80006a2c:	fffff097          	auipc	ra,0xfffff
    80006a30:	37c080e7          	jalr	892(ra) # 80005da8 <_Z11printStringPKc>
        uint64 result = fibonacci(12);
    80006a34:	00c00513          	li	a0,12
    80006a38:	00000097          	auipc	ra,0x0
    80006a3c:	ed0080e7          	jalr	-304(ra) # 80006908 <_ZN18Threads_C_API_test9fibonacciEm>
    80006a40:	00050913          	mv	s2,a0
        printString("C: fibonaci="); printInt(result); printString("\n");
    80006a44:	00006517          	auipc	a0,0x6
    80006a48:	ae450513          	addi	a0,a0,-1308 # 8000c528 <CONSOLE_STATUS+0x518>
    80006a4c:	fffff097          	auipc	ra,0xfffff
    80006a50:	35c080e7          	jalr	860(ra) # 80005da8 <_Z11printStringPKc>
    80006a54:	00000613          	li	a2,0
    80006a58:	00a00593          	li	a1,10
    80006a5c:	0009051b          	sext.w	a0,s2
    80006a60:	fffff097          	auipc	ra,0xfffff
    80006a64:	4e0080e7          	jalr	1248(ra) # 80005f40 <_Z8printIntiii>
    80006a68:	00005517          	auipc	a0,0x5
    80006a6c:	7e050513          	addi	a0,a0,2016 # 8000c248 <CONSOLE_STATUS+0x238>
    80006a70:	fffff097          	auipc	ra,0xfffff
    80006a74:	338080e7          	jalr	824(ra) # 80005da8 <_Z11printStringPKc>
    80006a78:	0400006f          	j	80006ab8 <_ZN18Threads_C_API_test11workerBodyCEPv+0x13c>
            printString("C: i="); printInt(i); printString("\n");
    80006a7c:	00006517          	auipc	a0,0x6
    80006a80:	a8c50513          	addi	a0,a0,-1396 # 8000c508 <CONSOLE_STATUS+0x4f8>
    80006a84:	fffff097          	auipc	ra,0xfffff
    80006a88:	324080e7          	jalr	804(ra) # 80005da8 <_Z11printStringPKc>
    80006a8c:	00000613          	li	a2,0
    80006a90:	00a00593          	li	a1,10
    80006a94:	00048513          	mv	a0,s1
    80006a98:	fffff097          	auipc	ra,0xfffff
    80006a9c:	4a8080e7          	jalr	1192(ra) # 80005f40 <_Z8printIntiii>
    80006aa0:	00005517          	auipc	a0,0x5
    80006aa4:	7a850513          	addi	a0,a0,1960 # 8000c248 <CONSOLE_STATUS+0x238>
    80006aa8:	fffff097          	auipc	ra,0xfffff
    80006aac:	300080e7          	jalr	768(ra) # 80005da8 <_Z11printStringPKc>
        for (; i < 6; i++) {
    80006ab0:	0014849b          	addiw	s1,s1,1
    80006ab4:	0ff4f493          	andi	s1,s1,255
    80006ab8:	00500793          	li	a5,5
    80006abc:	fc97f0e3          	bgeu	a5,s1,80006a7c <_ZN18Threads_C_API_test11workerBodyCEPv+0x100>
        printString("A finished!\n");
    80006ac0:	00006517          	auipc	a0,0x6
    80006ac4:	a1050513          	addi	a0,a0,-1520 # 8000c4d0 <CONSOLE_STATUS+0x4c0>
    80006ac8:	fffff097          	auipc	ra,0xfffff
    80006acc:	2e0080e7          	jalr	736(ra) # 80005da8 <_Z11printStringPKc>
        finishedC = true;
    80006ad0:	00100793          	li	a5,1
    80006ad4:	00009717          	auipc	a4,0x9
    80006ad8:	f8f70b23          	sb	a5,-106(a4) # 8000fa6a <_ZN18Threads_C_API_test9finishedCE>
        thread_dispatch();
    80006adc:	ffffb097          	auipc	ra,0xffffb
    80006ae0:	8c4080e7          	jalr	-1852(ra) # 800013a0 <thread_dispatch>
    }
    80006ae4:	01813083          	ld	ra,24(sp)
    80006ae8:	01013403          	ld	s0,16(sp)
    80006aec:	00813483          	ld	s1,8(sp)
    80006af0:	00013903          	ld	s2,0(sp)
    80006af4:	02010113          	addi	sp,sp,32
    80006af8:	00008067          	ret

0000000080006afc <_ZN18Threads_C_API_test11workerBodyDEPv>:
    void workerBodyD(void* arg) {
    80006afc:	fe010113          	addi	sp,sp,-32
    80006b00:	00113c23          	sd	ra,24(sp)
    80006b04:	00813823          	sd	s0,16(sp)
    80006b08:	00913423          	sd	s1,8(sp)
    80006b0c:	01213023          	sd	s2,0(sp)
    80006b10:	02010413          	addi	s0,sp,32
        uint8 i = 10;
    80006b14:	00a00493          	li	s1,10
    80006b18:	0400006f          	j	80006b58 <_ZN18Threads_C_API_test11workerBodyDEPv+0x5c>
            printString("D: i="); printInt(i); printString("\n");
    80006b1c:	00006517          	auipc	a0,0x6
    80006b20:	a1c50513          	addi	a0,a0,-1508 # 8000c538 <CONSOLE_STATUS+0x528>
    80006b24:	fffff097          	auipc	ra,0xfffff
    80006b28:	284080e7          	jalr	644(ra) # 80005da8 <_Z11printStringPKc>
    80006b2c:	00000613          	li	a2,0
    80006b30:	00a00593          	li	a1,10
    80006b34:	00048513          	mv	a0,s1
    80006b38:	fffff097          	auipc	ra,0xfffff
    80006b3c:	408080e7          	jalr	1032(ra) # 80005f40 <_Z8printIntiii>
    80006b40:	00005517          	auipc	a0,0x5
    80006b44:	70850513          	addi	a0,a0,1800 # 8000c248 <CONSOLE_STATUS+0x238>
    80006b48:	fffff097          	auipc	ra,0xfffff
    80006b4c:	260080e7          	jalr	608(ra) # 80005da8 <_Z11printStringPKc>
        for (; i < 13; i++) {
    80006b50:	0014849b          	addiw	s1,s1,1
    80006b54:	0ff4f493          	andi	s1,s1,255
    80006b58:	00c00793          	li	a5,12
    80006b5c:	fc97f0e3          	bgeu	a5,s1,80006b1c <_ZN18Threads_C_API_test11workerBodyDEPv+0x20>
        printString("D: dispatch\n");
    80006b60:	00006517          	auipc	a0,0x6
    80006b64:	9e050513          	addi	a0,a0,-1568 # 8000c540 <CONSOLE_STATUS+0x530>
    80006b68:	fffff097          	auipc	ra,0xfffff
    80006b6c:	240080e7          	jalr	576(ra) # 80005da8 <_Z11printStringPKc>
        __asm__ ("li t1, 5");
    80006b70:	00500313          	li	t1,5
        thread_dispatch();
    80006b74:	ffffb097          	auipc	ra,0xffffb
    80006b78:	82c080e7          	jalr	-2004(ra) # 800013a0 <thread_dispatch>
        uint64 result = fibonacci(16);
    80006b7c:	01000513          	li	a0,16
    80006b80:	00000097          	auipc	ra,0x0
    80006b84:	d88080e7          	jalr	-632(ra) # 80006908 <_ZN18Threads_C_API_test9fibonacciEm>
    80006b88:	00050913          	mv	s2,a0
        printString("D: fibonaci="); printInt(result); printString("\n");
    80006b8c:	00006517          	auipc	a0,0x6
    80006b90:	9c450513          	addi	a0,a0,-1596 # 8000c550 <CONSOLE_STATUS+0x540>
    80006b94:	fffff097          	auipc	ra,0xfffff
    80006b98:	214080e7          	jalr	532(ra) # 80005da8 <_Z11printStringPKc>
    80006b9c:	00000613          	li	a2,0
    80006ba0:	00a00593          	li	a1,10
    80006ba4:	0009051b          	sext.w	a0,s2
    80006ba8:	fffff097          	auipc	ra,0xfffff
    80006bac:	398080e7          	jalr	920(ra) # 80005f40 <_Z8printIntiii>
    80006bb0:	00005517          	auipc	a0,0x5
    80006bb4:	69850513          	addi	a0,a0,1688 # 8000c248 <CONSOLE_STATUS+0x238>
    80006bb8:	fffff097          	auipc	ra,0xfffff
    80006bbc:	1f0080e7          	jalr	496(ra) # 80005da8 <_Z11printStringPKc>
    80006bc0:	0400006f          	j	80006c00 <_ZN18Threads_C_API_test11workerBodyDEPv+0x104>
            printString("D: i="); printInt(i); printString("\n");
    80006bc4:	00006517          	auipc	a0,0x6
    80006bc8:	97450513          	addi	a0,a0,-1676 # 8000c538 <CONSOLE_STATUS+0x528>
    80006bcc:	fffff097          	auipc	ra,0xfffff
    80006bd0:	1dc080e7          	jalr	476(ra) # 80005da8 <_Z11printStringPKc>
    80006bd4:	00000613          	li	a2,0
    80006bd8:	00a00593          	li	a1,10
    80006bdc:	00048513          	mv	a0,s1
    80006be0:	fffff097          	auipc	ra,0xfffff
    80006be4:	360080e7          	jalr	864(ra) # 80005f40 <_Z8printIntiii>
    80006be8:	00005517          	auipc	a0,0x5
    80006bec:	66050513          	addi	a0,a0,1632 # 8000c248 <CONSOLE_STATUS+0x238>
    80006bf0:	fffff097          	auipc	ra,0xfffff
    80006bf4:	1b8080e7          	jalr	440(ra) # 80005da8 <_Z11printStringPKc>
        for (; i < 16; i++) {
    80006bf8:	0014849b          	addiw	s1,s1,1
    80006bfc:	0ff4f493          	andi	s1,s1,255
    80006c00:	00f00793          	li	a5,15
    80006c04:	fc97f0e3          	bgeu	a5,s1,80006bc4 <_ZN18Threads_C_API_test11workerBodyDEPv+0xc8>
        printString("D finished!\n");
    80006c08:	00006517          	auipc	a0,0x6
    80006c0c:	95850513          	addi	a0,a0,-1704 # 8000c560 <CONSOLE_STATUS+0x550>
    80006c10:	fffff097          	auipc	ra,0xfffff
    80006c14:	198080e7          	jalr	408(ra) # 80005da8 <_Z11printStringPKc>
        finishedD = true;
    80006c18:	00100793          	li	a5,1
    80006c1c:	00009717          	auipc	a4,0x9
    80006c20:	e4f707a3          	sb	a5,-433(a4) # 8000fa6b <_ZN18Threads_C_API_test9finishedDE>
        thread_dispatch();
    80006c24:	ffffa097          	auipc	ra,0xffffa
    80006c28:	77c080e7          	jalr	1916(ra) # 800013a0 <thread_dispatch>
    }
    80006c2c:	01813083          	ld	ra,24(sp)
    80006c30:	01013403          	ld	s0,16(sp)
    80006c34:	00813483          	ld	s1,8(sp)
    80006c38:	00013903          	ld	s2,0(sp)
    80006c3c:	02010113          	addi	sp,sp,32
    80006c40:	00008067          	ret

0000000080006c44 <_ZN18Threads_C_API_test18Threads_C_API_testEv>:


    void Threads_C_API_test() {
    80006c44:	fc010113          	addi	sp,sp,-64
    80006c48:	02113c23          	sd	ra,56(sp)
    80006c4c:	02813823          	sd	s0,48(sp)
    80006c50:	04010413          	addi	s0,sp,64
        thread_t threads[5];
        thread_create(&threads[0], workerBodyA, nullptr);
    80006c54:	00000613          	li	a2,0
    80006c58:	00000597          	auipc	a1,0x0
    80006c5c:	84858593          	addi	a1,a1,-1976 # 800064a0 <_ZN18Threads_C_API_test11workerBodyAEPv>
    80006c60:	fc840513          	addi	a0,s0,-56
    80006c64:	ffffa097          	auipc	ra,0xffffa
    80006c68:	698080e7          	jalr	1688(ra) # 800012fc <thread_create>
        printString("ThreadA created\n");
    80006c6c:	00006517          	auipc	a0,0x6
    80006c70:	90450513          	addi	a0,a0,-1788 # 8000c570 <CONSOLE_STATUS+0x560>
    80006c74:	fffff097          	auipc	ra,0xfffff
    80006c78:	134080e7          	jalr	308(ra) # 80005da8 <_Z11printStringPKc>

        thread_create(&threads[1], workerBodyB, nullptr);
    80006c7c:	00000613          	li	a2,0
    80006c80:	00000597          	auipc	a1,0x0
    80006c84:	8ec58593          	addi	a1,a1,-1812 # 8000656c <_ZN18Threads_C_API_test11workerBodyBEPv>
    80006c88:	fd040513          	addi	a0,s0,-48
    80006c8c:	ffffa097          	auipc	ra,0xffffa
    80006c90:	670080e7          	jalr	1648(ra) # 800012fc <thread_create>
        printString("ThreadB created\n");
    80006c94:	00006517          	auipc	a0,0x6
    80006c98:	8f450513          	addi	a0,a0,-1804 # 8000c588 <CONSOLE_STATUS+0x578>
    80006c9c:	fffff097          	auipc	ra,0xfffff
    80006ca0:	10c080e7          	jalr	268(ra) # 80005da8 <_Z11printStringPKc>

        thread_create(&threads[2], workerBodyC, nullptr);
    80006ca4:	00000613          	li	a2,0
    80006ca8:	00000597          	auipc	a1,0x0
    80006cac:	cd458593          	addi	a1,a1,-812 # 8000697c <_ZN18Threads_C_API_test11workerBodyCEPv>
    80006cb0:	fd840513          	addi	a0,s0,-40
    80006cb4:	ffffa097          	auipc	ra,0xffffa
    80006cb8:	648080e7          	jalr	1608(ra) # 800012fc <thread_create>
        printString("ThreadC created\n");
    80006cbc:	00006517          	auipc	a0,0x6
    80006cc0:	8e450513          	addi	a0,a0,-1820 # 8000c5a0 <CONSOLE_STATUS+0x590>
    80006cc4:	fffff097          	auipc	ra,0xfffff
    80006cc8:	0e4080e7          	jalr	228(ra) # 80005da8 <_Z11printStringPKc>

        thread_create(&threads[3], workerBodyD, nullptr);
    80006ccc:	00000613          	li	a2,0
    80006cd0:	00000597          	auipc	a1,0x0
    80006cd4:	e2c58593          	addi	a1,a1,-468 # 80006afc <_ZN18Threads_C_API_test11workerBodyDEPv>
    80006cd8:	fe040513          	addi	a0,s0,-32
    80006cdc:	ffffa097          	auipc	ra,0xffffa
    80006ce0:	620080e7          	jalr	1568(ra) # 800012fc <thread_create>
        printString("ThreadD created\n");
    80006ce4:	00006517          	auipc	a0,0x6
    80006ce8:	8d450513          	addi	a0,a0,-1836 # 8000c5b8 <CONSOLE_STATUS+0x5a8>
    80006cec:	fffff097          	auipc	ra,0xfffff
    80006cf0:	0bc080e7          	jalr	188(ra) # 80005da8 <_Z11printStringPKc>

        thread_create(&threads[4], workerBodyE, nullptr);
    80006cf4:	00000613          	li	a2,0
    80006cf8:	fffff597          	auipc	a1,0xfffff
    80006cfc:	76458593          	addi	a1,a1,1892 # 8000645c <_ZN18Threads_C_API_test11workerBodyEEPv>
    80006d00:	fe840513          	addi	a0,s0,-24
    80006d04:	ffffa097          	auipc	ra,0xffffa
    80006d08:	5f8080e7          	jalr	1528(ra) # 800012fc <thread_create>
        printString("ThreadE created\n");
    80006d0c:	00006517          	auipc	a0,0x6
    80006d10:	8c450513          	addi	a0,a0,-1852 # 8000c5d0 <CONSOLE_STATUS+0x5c0>
    80006d14:	fffff097          	auipc	ra,0xfffff
    80006d18:	094080e7          	jalr	148(ra) # 80005da8 <_Z11printStringPKc>
    80006d1c:	00c0006f          	j	80006d28 <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xe4>


        while (!(finishedA && finishedB && finishedC && finishedD && finishedE)) {
            thread_dispatch();
    80006d20:	ffffa097          	auipc	ra,0xffffa
    80006d24:	680080e7          	jalr	1664(ra) # 800013a0 <thread_dispatch>
        while (!(finishedA && finishedB && finishedC && finishedD && finishedE)) {
    80006d28:	00009797          	auipc	a5,0x9
    80006d2c:	d317c783          	lbu	a5,-719(a5) # 8000fa59 <_ZN18Threads_C_API_test9finishedAE>
    80006d30:	fe0788e3          	beqz	a5,80006d20 <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xdc>
    80006d34:	00009797          	auipc	a5,0x9
    80006d38:	d267c783          	lbu	a5,-730(a5) # 8000fa5a <_ZN18Threads_C_API_test9finishedBE>
    80006d3c:	fe0782e3          	beqz	a5,80006d20 <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xdc>
    80006d40:	00009797          	auipc	a5,0x9
    80006d44:	d2a7c783          	lbu	a5,-726(a5) # 8000fa6a <_ZN18Threads_C_API_test9finishedCE>
    80006d48:	fc078ce3          	beqz	a5,80006d20 <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xdc>
    80006d4c:	00009797          	auipc	a5,0x9
    80006d50:	d1f7c783          	lbu	a5,-737(a5) # 8000fa6b <_ZN18Threads_C_API_test9finishedDE>
    80006d54:	fc0786e3          	beqz	a5,80006d20 <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xdc>
    80006d58:	00009797          	auipc	a5,0x9
    80006d5c:	d007c783          	lbu	a5,-768(a5) # 8000fa58 <_ZN18Threads_C_API_test9finishedEE>
    80006d60:	fc0780e3          	beqz	a5,80006d20 <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xdc>
        }

    }
    80006d64:	03813083          	ld	ra,56(sp)
    80006d68:	03013403          	ld	s0,48(sp)
    80006d6c:	04010113          	addi	sp,sp,64
    80006d70:	00008067          	ret

0000000080006d74 <_ZN20Threads_CPP_API_test9fibonacciEm>:
    bool finishedA = false;
    bool finishedB = false;
    bool finishedC = false;
    bool finishedD = false;

    uint64 fibonacci(uint64 n) {
    80006d74:	fe010113          	addi	sp,sp,-32
    80006d78:	00113c23          	sd	ra,24(sp)
    80006d7c:	00813823          	sd	s0,16(sp)
    80006d80:	00913423          	sd	s1,8(sp)
    80006d84:	01213023          	sd	s2,0(sp)
    80006d88:	02010413          	addi	s0,sp,32
    80006d8c:	00050493          	mv	s1,a0
        if (n == 0 || n == 1) { return n; }
    80006d90:	00100793          	li	a5,1
    80006d94:	02a7f863          	bgeu	a5,a0,80006dc4 <_ZN20Threads_CPP_API_test9fibonacciEm+0x50>
        if (n % 10 == 0) { thread_dispatch(); }
    80006d98:	00a00793          	li	a5,10
    80006d9c:	02f577b3          	remu	a5,a0,a5
    80006da0:	02078e63          	beqz	a5,80006ddc <_ZN20Threads_CPP_API_test9fibonacciEm+0x68>
        return fibonacci(n - 1) + fibonacci(n - 2);
    80006da4:	fff48513          	addi	a0,s1,-1
    80006da8:	00000097          	auipc	ra,0x0
    80006dac:	fcc080e7          	jalr	-52(ra) # 80006d74 <_ZN20Threads_CPP_API_test9fibonacciEm>
    80006db0:	00050913          	mv	s2,a0
    80006db4:	ffe48513          	addi	a0,s1,-2
    80006db8:	00000097          	auipc	ra,0x0
    80006dbc:	fbc080e7          	jalr	-68(ra) # 80006d74 <_ZN20Threads_CPP_API_test9fibonacciEm>
    80006dc0:	00a90533          	add	a0,s2,a0
    }
    80006dc4:	01813083          	ld	ra,24(sp)
    80006dc8:	01013403          	ld	s0,16(sp)
    80006dcc:	00813483          	ld	s1,8(sp)
    80006dd0:	00013903          	ld	s2,0(sp)
    80006dd4:	02010113          	addi	sp,sp,32
    80006dd8:	00008067          	ret
        if (n % 10 == 0) { thread_dispatch(); }
    80006ddc:	ffffa097          	auipc	ra,0xffffa
    80006de0:	5c4080e7          	jalr	1476(ra) # 800013a0 <thread_dispatch>
    80006de4:	fc1ff06f          	j	80006da4 <_ZN20Threads_CPP_API_test9fibonacciEm+0x30>

0000000080006de8 <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv>:
        void run() override {
            workerBodyD(nullptr);
        }
    };

    void WorkerA::workerBodyA(void *arg) {
    80006de8:	fe010113          	addi	sp,sp,-32
    80006dec:	00113c23          	sd	ra,24(sp)
    80006df0:	00813823          	sd	s0,16(sp)
    80006df4:	00913423          	sd	s1,8(sp)
    80006df8:	01213023          	sd	s2,0(sp)
    80006dfc:	02010413          	addi	s0,sp,32
        for (uint64 i = 0; i < 10; i++) {
    80006e00:	00000913          	li	s2,0
    80006e04:	0380006f          	j	80006e3c <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x54>
            printString("A: i="); printInt(i); printString("\n");
            for (uint64 j = 0; j < 10000; j++) {
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
                thread_dispatch();
    80006e08:	ffffa097          	auipc	ra,0xffffa
    80006e0c:	598080e7          	jalr	1432(ra) # 800013a0 <thread_dispatch>
            for (uint64 j = 0; j < 10000; j++) {
    80006e10:	00148493          	addi	s1,s1,1
    80006e14:	000027b7          	lui	a5,0x2
    80006e18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006e1c:	0097ee63          	bltu	a5,s1,80006e38 <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x50>
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006e20:	00000713          	li	a4,0
    80006e24:	000077b7          	lui	a5,0x7
    80006e28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006e2c:	fce7eee3          	bltu	a5,a4,80006e08 <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x20>
    80006e30:	00170713          	addi	a4,a4,1
    80006e34:	ff1ff06f          	j	80006e24 <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x3c>
        for (uint64 i = 0; i < 10; i++) {
    80006e38:	00190913          	addi	s2,s2,1
    80006e3c:	00900793          	li	a5,9
    80006e40:	0527e063          	bltu	a5,s2,80006e80 <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x98>
            printString("A: i="); printInt(i); printString("\n");
    80006e44:	00005517          	auipc	a0,0x5
    80006e48:	68450513          	addi	a0,a0,1668 # 8000c4c8 <CONSOLE_STATUS+0x4b8>
    80006e4c:	fffff097          	auipc	ra,0xfffff
    80006e50:	f5c080e7          	jalr	-164(ra) # 80005da8 <_Z11printStringPKc>
    80006e54:	00000613          	li	a2,0
    80006e58:	00a00593          	li	a1,10
    80006e5c:	0009051b          	sext.w	a0,s2
    80006e60:	fffff097          	auipc	ra,0xfffff
    80006e64:	0e0080e7          	jalr	224(ra) # 80005f40 <_Z8printIntiii>
    80006e68:	00005517          	auipc	a0,0x5
    80006e6c:	3e050513          	addi	a0,a0,992 # 8000c248 <CONSOLE_STATUS+0x238>
    80006e70:	fffff097          	auipc	ra,0xfffff
    80006e74:	f38080e7          	jalr	-200(ra) # 80005da8 <_Z11printStringPKc>
            for (uint64 j = 0; j < 10000; j++) {
    80006e78:	00000493          	li	s1,0
    80006e7c:	f99ff06f          	j	80006e14 <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x2c>
            }
        }
        printString("A finished!\n");
    80006e80:	00005517          	auipc	a0,0x5
    80006e84:	65050513          	addi	a0,a0,1616 # 8000c4d0 <CONSOLE_STATUS+0x4c0>
    80006e88:	fffff097          	auipc	ra,0xfffff
    80006e8c:	f20080e7          	jalr	-224(ra) # 80005da8 <_Z11printStringPKc>
        finishedA = true;
    80006e90:	00100793          	li	a5,1
    80006e94:	00009717          	auipc	a4,0x9
    80006e98:	bcf70c23          	sb	a5,-1064(a4) # 8000fa6c <_ZN20Threads_CPP_API_test9finishedAE>
    }
    80006e9c:	01813083          	ld	ra,24(sp)
    80006ea0:	01013403          	ld	s0,16(sp)
    80006ea4:	00813483          	ld	s1,8(sp)
    80006ea8:	00013903          	ld	s2,0(sp)
    80006eac:	02010113          	addi	sp,sp,32
    80006eb0:	00008067          	ret

0000000080006eb4 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv>:

    void WorkerB::workerBodyB(void *arg) {
    80006eb4:	fe010113          	addi	sp,sp,-32
    80006eb8:	00113c23          	sd	ra,24(sp)
    80006ebc:	00813823          	sd	s0,16(sp)
    80006ec0:	00913423          	sd	s1,8(sp)
    80006ec4:	01213023          	sd	s2,0(sp)
    80006ec8:	02010413          	addi	s0,sp,32
        for (uint64 i = 0; i < 16; i++) {
    80006ecc:	00000913          	li	s2,0
    80006ed0:	0380006f          	j	80006f08 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x54>
            printString("B: i="); printInt(i); printString("\n");
            for (uint64 j = 0; j < 10000; j++) {
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
                thread_dispatch();
    80006ed4:	ffffa097          	auipc	ra,0xffffa
    80006ed8:	4cc080e7          	jalr	1228(ra) # 800013a0 <thread_dispatch>
            for (uint64 j = 0; j < 10000; j++) {
    80006edc:	00148493          	addi	s1,s1,1
    80006ee0:	000027b7          	lui	a5,0x2
    80006ee4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006ee8:	0097ee63          	bltu	a5,s1,80006f04 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x50>
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006eec:	00000713          	li	a4,0
    80006ef0:	000077b7          	lui	a5,0x7
    80006ef4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006ef8:	fce7eee3          	bltu	a5,a4,80006ed4 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x20>
    80006efc:	00170713          	addi	a4,a4,1
    80006f00:	ff1ff06f          	j	80006ef0 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x3c>
        for (uint64 i = 0; i < 16; i++) {
    80006f04:	00190913          	addi	s2,s2,1
    80006f08:	00f00793          	li	a5,15
    80006f0c:	0527e063          	bltu	a5,s2,80006f4c <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x98>
            printString("B: i="); printInt(i); printString("\n");
    80006f10:	00005517          	auipc	a0,0x5
    80006f14:	5d050513          	addi	a0,a0,1488 # 8000c4e0 <CONSOLE_STATUS+0x4d0>
    80006f18:	fffff097          	auipc	ra,0xfffff
    80006f1c:	e90080e7          	jalr	-368(ra) # 80005da8 <_Z11printStringPKc>
    80006f20:	00000613          	li	a2,0
    80006f24:	00a00593          	li	a1,10
    80006f28:	0009051b          	sext.w	a0,s2
    80006f2c:	fffff097          	auipc	ra,0xfffff
    80006f30:	014080e7          	jalr	20(ra) # 80005f40 <_Z8printIntiii>
    80006f34:	00005517          	auipc	a0,0x5
    80006f38:	31450513          	addi	a0,a0,788 # 8000c248 <CONSOLE_STATUS+0x238>
    80006f3c:	fffff097          	auipc	ra,0xfffff
    80006f40:	e6c080e7          	jalr	-404(ra) # 80005da8 <_Z11printStringPKc>
            for (uint64 j = 0; j < 10000; j++) {
    80006f44:	00000493          	li	s1,0
    80006f48:	f99ff06f          	j	80006ee0 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x2c>
            }
        }
        printString("B finished!\n");
    80006f4c:	00005517          	auipc	a0,0x5
    80006f50:	59c50513          	addi	a0,a0,1436 # 8000c4e8 <CONSOLE_STATUS+0x4d8>
    80006f54:	fffff097          	auipc	ra,0xfffff
    80006f58:	e54080e7          	jalr	-428(ra) # 80005da8 <_Z11printStringPKc>
        finishedB = true;
    80006f5c:	00100793          	li	a5,1
    80006f60:	00009717          	auipc	a4,0x9
    80006f64:	b0f706a3          	sb	a5,-1267(a4) # 8000fa6d <_ZN20Threads_CPP_API_test9finishedBE>
        thread_dispatch();
    80006f68:	ffffa097          	auipc	ra,0xffffa
    80006f6c:	438080e7          	jalr	1080(ra) # 800013a0 <thread_dispatch>
    }
    80006f70:	01813083          	ld	ra,24(sp)
    80006f74:	01013403          	ld	s0,16(sp)
    80006f78:	00813483          	ld	s1,8(sp)
    80006f7c:	00013903          	ld	s2,0(sp)
    80006f80:	02010113          	addi	sp,sp,32
    80006f84:	00008067          	ret

0000000080006f88 <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv>:

    void WorkerC::workerBodyC(void *arg) {
    80006f88:	fe010113          	addi	sp,sp,-32
    80006f8c:	00113c23          	sd	ra,24(sp)
    80006f90:	00813823          	sd	s0,16(sp)
    80006f94:	00913423          	sd	s1,8(sp)
    80006f98:	01213023          	sd	s2,0(sp)
    80006f9c:	02010413          	addi	s0,sp,32
        uint8 i = 0;
    80006fa0:	00000493          	li	s1,0
    80006fa4:	0400006f          	j	80006fe4 <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv+0x5c>
        for (; i < 3; i++) {
            printString("C: i="); printInt(i); printString("\n");
    80006fa8:	00005517          	auipc	a0,0x5
    80006fac:	56050513          	addi	a0,a0,1376 # 8000c508 <CONSOLE_STATUS+0x4f8>
    80006fb0:	fffff097          	auipc	ra,0xfffff
    80006fb4:	df8080e7          	jalr	-520(ra) # 80005da8 <_Z11printStringPKc>
    80006fb8:	00000613          	li	a2,0
    80006fbc:	00a00593          	li	a1,10
    80006fc0:	00048513          	mv	a0,s1
    80006fc4:	fffff097          	auipc	ra,0xfffff
    80006fc8:	f7c080e7          	jalr	-132(ra) # 80005f40 <_Z8printIntiii>
    80006fcc:	00005517          	auipc	a0,0x5
    80006fd0:	27c50513          	addi	a0,a0,636 # 8000c248 <CONSOLE_STATUS+0x238>
    80006fd4:	fffff097          	auipc	ra,0xfffff
    80006fd8:	dd4080e7          	jalr	-556(ra) # 80005da8 <_Z11printStringPKc>
        for (; i < 3; i++) {
    80006fdc:	0014849b          	addiw	s1,s1,1
    80006fe0:	0ff4f493          	andi	s1,s1,255
    80006fe4:	00200793          	li	a5,2
    80006fe8:	fc97f0e3          	bgeu	a5,s1,80006fa8 <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv+0x20>
        }

        printString("C: dispatch\n");
    80006fec:	00005517          	auipc	a0,0x5
    80006ff0:	52450513          	addi	a0,a0,1316 # 8000c510 <CONSOLE_STATUS+0x500>
    80006ff4:	fffff097          	auipc	ra,0xfffff
    80006ff8:	db4080e7          	jalr	-588(ra) # 80005da8 <_Z11printStringPKc>
        __asm__ ("li t1, 7");
    80006ffc:	00700313          	li	t1,7
        thread_dispatch();
    80007000:	ffffa097          	auipc	ra,0xffffa
    80007004:	3a0080e7          	jalr	928(ra) # 800013a0 <thread_dispatch>

        uint64 t1 = 0;
        __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80007008:	00030913          	mv	s2,t1

        printString("C: t1="); printInt(t1); printString("\n");
    8000700c:	00005517          	auipc	a0,0x5
    80007010:	51450513          	addi	a0,a0,1300 # 8000c520 <CONSOLE_STATUS+0x510>
    80007014:	fffff097          	auipc	ra,0xfffff
    80007018:	d94080e7          	jalr	-620(ra) # 80005da8 <_Z11printStringPKc>
    8000701c:	00000613          	li	a2,0
    80007020:	00a00593          	li	a1,10
    80007024:	0009051b          	sext.w	a0,s2
    80007028:	fffff097          	auipc	ra,0xfffff
    8000702c:	f18080e7          	jalr	-232(ra) # 80005f40 <_Z8printIntiii>
    80007030:	00005517          	auipc	a0,0x5
    80007034:	21850513          	addi	a0,a0,536 # 8000c248 <CONSOLE_STATUS+0x238>
    80007038:	fffff097          	auipc	ra,0xfffff
    8000703c:	d70080e7          	jalr	-656(ra) # 80005da8 <_Z11printStringPKc>

        uint64 result = fibonacci(12);
    80007040:	00c00513          	li	a0,12
    80007044:	00000097          	auipc	ra,0x0
    80007048:	d30080e7          	jalr	-720(ra) # 80006d74 <_ZN20Threads_CPP_API_test9fibonacciEm>
    8000704c:	00050913          	mv	s2,a0
        printString("C: fibonaci="); printInt(result); printString("\n");
    80007050:	00005517          	auipc	a0,0x5
    80007054:	4d850513          	addi	a0,a0,1240 # 8000c528 <CONSOLE_STATUS+0x518>
    80007058:	fffff097          	auipc	ra,0xfffff
    8000705c:	d50080e7          	jalr	-688(ra) # 80005da8 <_Z11printStringPKc>
    80007060:	00000613          	li	a2,0
    80007064:	00a00593          	li	a1,10
    80007068:	0009051b          	sext.w	a0,s2
    8000706c:	fffff097          	auipc	ra,0xfffff
    80007070:	ed4080e7          	jalr	-300(ra) # 80005f40 <_Z8printIntiii>
    80007074:	00005517          	auipc	a0,0x5
    80007078:	1d450513          	addi	a0,a0,468 # 8000c248 <CONSOLE_STATUS+0x238>
    8000707c:	fffff097          	auipc	ra,0xfffff
    80007080:	d2c080e7          	jalr	-724(ra) # 80005da8 <_Z11printStringPKc>
    80007084:	0400006f          	j	800070c4 <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv+0x13c>

        for (; i < 6; i++) {
            printString("C: i="); printInt(i); printString("\n");
    80007088:	00005517          	auipc	a0,0x5
    8000708c:	48050513          	addi	a0,a0,1152 # 8000c508 <CONSOLE_STATUS+0x4f8>
    80007090:	fffff097          	auipc	ra,0xfffff
    80007094:	d18080e7          	jalr	-744(ra) # 80005da8 <_Z11printStringPKc>
    80007098:	00000613          	li	a2,0
    8000709c:	00a00593          	li	a1,10
    800070a0:	00048513          	mv	a0,s1
    800070a4:	fffff097          	auipc	ra,0xfffff
    800070a8:	e9c080e7          	jalr	-356(ra) # 80005f40 <_Z8printIntiii>
    800070ac:	00005517          	auipc	a0,0x5
    800070b0:	19c50513          	addi	a0,a0,412 # 8000c248 <CONSOLE_STATUS+0x238>
    800070b4:	fffff097          	auipc	ra,0xfffff
    800070b8:	cf4080e7          	jalr	-780(ra) # 80005da8 <_Z11printStringPKc>
        for (; i < 6; i++) {
    800070bc:	0014849b          	addiw	s1,s1,1
    800070c0:	0ff4f493          	andi	s1,s1,255
    800070c4:	00500793          	li	a5,5
    800070c8:	fc97f0e3          	bgeu	a5,s1,80007088 <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv+0x100>
        }

        printString("A finished!\n");
    800070cc:	00005517          	auipc	a0,0x5
    800070d0:	40450513          	addi	a0,a0,1028 # 8000c4d0 <CONSOLE_STATUS+0x4c0>
    800070d4:	fffff097          	auipc	ra,0xfffff
    800070d8:	cd4080e7          	jalr	-812(ra) # 80005da8 <_Z11printStringPKc>
        finishedC = true;
    800070dc:	00100793          	li	a5,1
    800070e0:	00009717          	auipc	a4,0x9
    800070e4:	98f70723          	sb	a5,-1650(a4) # 8000fa6e <_ZN20Threads_CPP_API_test9finishedCE>
        thread_dispatch();
    800070e8:	ffffa097          	auipc	ra,0xffffa
    800070ec:	2b8080e7          	jalr	696(ra) # 800013a0 <thread_dispatch>
    }
    800070f0:	01813083          	ld	ra,24(sp)
    800070f4:	01013403          	ld	s0,16(sp)
    800070f8:	00813483          	ld	s1,8(sp)
    800070fc:	00013903          	ld	s2,0(sp)
    80007100:	02010113          	addi	sp,sp,32
    80007104:	00008067          	ret

0000000080007108 <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv>:

    void WorkerD::workerBodyD(void* arg) {
    80007108:	fe010113          	addi	sp,sp,-32
    8000710c:	00113c23          	sd	ra,24(sp)
    80007110:	00813823          	sd	s0,16(sp)
    80007114:	00913423          	sd	s1,8(sp)
    80007118:	01213023          	sd	s2,0(sp)
    8000711c:	02010413          	addi	s0,sp,32
        uint8 i = 10;
    80007120:	00a00493          	li	s1,10
    80007124:	0400006f          	j	80007164 <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv+0x5c>
        for (; i < 13; i++) {
            printString("D: i="); printInt(i); printString("\n");
    80007128:	00005517          	auipc	a0,0x5
    8000712c:	41050513          	addi	a0,a0,1040 # 8000c538 <CONSOLE_STATUS+0x528>
    80007130:	fffff097          	auipc	ra,0xfffff
    80007134:	c78080e7          	jalr	-904(ra) # 80005da8 <_Z11printStringPKc>
    80007138:	00000613          	li	a2,0
    8000713c:	00a00593          	li	a1,10
    80007140:	00048513          	mv	a0,s1
    80007144:	fffff097          	auipc	ra,0xfffff
    80007148:	dfc080e7          	jalr	-516(ra) # 80005f40 <_Z8printIntiii>
    8000714c:	00005517          	auipc	a0,0x5
    80007150:	0fc50513          	addi	a0,a0,252 # 8000c248 <CONSOLE_STATUS+0x238>
    80007154:	fffff097          	auipc	ra,0xfffff
    80007158:	c54080e7          	jalr	-940(ra) # 80005da8 <_Z11printStringPKc>
        for (; i < 13; i++) {
    8000715c:	0014849b          	addiw	s1,s1,1
    80007160:	0ff4f493          	andi	s1,s1,255
    80007164:	00c00793          	li	a5,12
    80007168:	fc97f0e3          	bgeu	a5,s1,80007128 <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv+0x20>
        }

        printString("D: dispatch\n");
    8000716c:	00005517          	auipc	a0,0x5
    80007170:	3d450513          	addi	a0,a0,980 # 8000c540 <CONSOLE_STATUS+0x530>
    80007174:	fffff097          	auipc	ra,0xfffff
    80007178:	c34080e7          	jalr	-972(ra) # 80005da8 <_Z11printStringPKc>
        __asm__ ("li t1, 5");
    8000717c:	00500313          	li	t1,5
        thread_dispatch();
    80007180:	ffffa097          	auipc	ra,0xffffa
    80007184:	220080e7          	jalr	544(ra) # 800013a0 <thread_dispatch>

        uint64 result = fibonacci(16);
    80007188:	01000513          	li	a0,16
    8000718c:	00000097          	auipc	ra,0x0
    80007190:	be8080e7          	jalr	-1048(ra) # 80006d74 <_ZN20Threads_CPP_API_test9fibonacciEm>
    80007194:	00050913          	mv	s2,a0
        printString("D: fibonaci="); printInt(result); printString("\n");
    80007198:	00005517          	auipc	a0,0x5
    8000719c:	3b850513          	addi	a0,a0,952 # 8000c550 <CONSOLE_STATUS+0x540>
    800071a0:	fffff097          	auipc	ra,0xfffff
    800071a4:	c08080e7          	jalr	-1016(ra) # 80005da8 <_Z11printStringPKc>
    800071a8:	00000613          	li	a2,0
    800071ac:	00a00593          	li	a1,10
    800071b0:	0009051b          	sext.w	a0,s2
    800071b4:	fffff097          	auipc	ra,0xfffff
    800071b8:	d8c080e7          	jalr	-628(ra) # 80005f40 <_Z8printIntiii>
    800071bc:	00005517          	auipc	a0,0x5
    800071c0:	08c50513          	addi	a0,a0,140 # 8000c248 <CONSOLE_STATUS+0x238>
    800071c4:	fffff097          	auipc	ra,0xfffff
    800071c8:	be4080e7          	jalr	-1052(ra) # 80005da8 <_Z11printStringPKc>
    800071cc:	0400006f          	j	8000720c <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv+0x104>

        for (; i < 16; i++) {
            printString("D: i="); printInt(i); printString("\n");
    800071d0:	00005517          	auipc	a0,0x5
    800071d4:	36850513          	addi	a0,a0,872 # 8000c538 <CONSOLE_STATUS+0x528>
    800071d8:	fffff097          	auipc	ra,0xfffff
    800071dc:	bd0080e7          	jalr	-1072(ra) # 80005da8 <_Z11printStringPKc>
    800071e0:	00000613          	li	a2,0
    800071e4:	00a00593          	li	a1,10
    800071e8:	00048513          	mv	a0,s1
    800071ec:	fffff097          	auipc	ra,0xfffff
    800071f0:	d54080e7          	jalr	-684(ra) # 80005f40 <_Z8printIntiii>
    800071f4:	00005517          	auipc	a0,0x5
    800071f8:	05450513          	addi	a0,a0,84 # 8000c248 <CONSOLE_STATUS+0x238>
    800071fc:	fffff097          	auipc	ra,0xfffff
    80007200:	bac080e7          	jalr	-1108(ra) # 80005da8 <_Z11printStringPKc>
        for (; i < 16; i++) {
    80007204:	0014849b          	addiw	s1,s1,1
    80007208:	0ff4f493          	andi	s1,s1,255
    8000720c:	00f00793          	li	a5,15
    80007210:	fc97f0e3          	bgeu	a5,s1,800071d0 <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv+0xc8>
        }

        printString("D finished!\n");
    80007214:	00005517          	auipc	a0,0x5
    80007218:	34c50513          	addi	a0,a0,844 # 8000c560 <CONSOLE_STATUS+0x550>
    8000721c:	fffff097          	auipc	ra,0xfffff
    80007220:	b8c080e7          	jalr	-1140(ra) # 80005da8 <_Z11printStringPKc>
        finishedD = true;
    80007224:	00100793          	li	a5,1
    80007228:	00009717          	auipc	a4,0x9
    8000722c:	84f703a3          	sb	a5,-1977(a4) # 8000fa6f <_ZN20Threads_CPP_API_test9finishedDE>
        thread_dispatch();
    80007230:	ffffa097          	auipc	ra,0xffffa
    80007234:	170080e7          	jalr	368(ra) # 800013a0 <thread_dispatch>
    }
    80007238:	01813083          	ld	ra,24(sp)
    8000723c:	01013403          	ld	s0,16(sp)
    80007240:	00813483          	ld	s1,8(sp)
    80007244:	00013903          	ld	s2,0(sp)
    80007248:	02010113          	addi	sp,sp,32
    8000724c:	00008067          	ret

0000000080007250 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv>:


    void Threads_CPP_API_test() {
    80007250:	fc010113          	addi	sp,sp,-64
    80007254:	02113c23          	sd	ra,56(sp)
    80007258:	02813823          	sd	s0,48(sp)
    8000725c:	02913423          	sd	s1,40(sp)
    80007260:	03213023          	sd	s2,32(sp)
    80007264:	04010413          	addi	s0,sp,64
        Thread* threads[4];

        threads[0] = new WorkerA();
    80007268:	01000513          	li	a0,16
    8000726c:	ffffd097          	auipc	ra,0xffffd
    80007270:	f44080e7          	jalr	-188(ra) # 800041b0 <_Znwm>
    80007274:	00050493          	mv	s1,a0
    80007278:	00050c63          	beqz	a0,80007290 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x40>
        WorkerA():Thread() {}
    8000727c:	ffffd097          	auipc	ra,0xffffd
    80007280:	1d0080e7          	jalr	464(ra) # 8000444c <_ZN6ThreadC1Ev>
    80007284:	00008797          	auipc	a5,0x8
    80007288:	35478793          	addi	a5,a5,852 # 8000f5d8 <_ZTVN20Threads_CPP_API_test7WorkerAE+0x10>
    8000728c:	00f4b023          	sd	a5,0(s1)
        threads[0] = new WorkerA();
    80007290:	fc943023          	sd	s1,-64(s0)
        printString("ThreadA created\n");
    80007294:	00005517          	auipc	a0,0x5
    80007298:	2dc50513          	addi	a0,a0,732 # 8000c570 <CONSOLE_STATUS+0x560>
    8000729c:	fffff097          	auipc	ra,0xfffff
    800072a0:	b0c080e7          	jalr	-1268(ra) # 80005da8 <_Z11printStringPKc>

        threads[1] = new WorkerB();
    800072a4:	01000513          	li	a0,16
    800072a8:	ffffd097          	auipc	ra,0xffffd
    800072ac:	f08080e7          	jalr	-248(ra) # 800041b0 <_Znwm>
    800072b0:	00050493          	mv	s1,a0
    800072b4:	00050c63          	beqz	a0,800072cc <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x7c>
        WorkerB():Thread() {}
    800072b8:	ffffd097          	auipc	ra,0xffffd
    800072bc:	194080e7          	jalr	404(ra) # 8000444c <_ZN6ThreadC1Ev>
    800072c0:	00008797          	auipc	a5,0x8
    800072c4:	34078793          	addi	a5,a5,832 # 8000f600 <_ZTVN20Threads_CPP_API_test7WorkerBE+0x10>
    800072c8:	00f4b023          	sd	a5,0(s1)
        threads[1] = new WorkerB();
    800072cc:	fc943423          	sd	s1,-56(s0)
        printString("ThreadB created\n");
    800072d0:	00005517          	auipc	a0,0x5
    800072d4:	2b850513          	addi	a0,a0,696 # 8000c588 <CONSOLE_STATUS+0x578>
    800072d8:	fffff097          	auipc	ra,0xfffff
    800072dc:	ad0080e7          	jalr	-1328(ra) # 80005da8 <_Z11printStringPKc>

        threads[2] = new WorkerC();
    800072e0:	01000513          	li	a0,16
    800072e4:	ffffd097          	auipc	ra,0xffffd
    800072e8:	ecc080e7          	jalr	-308(ra) # 800041b0 <_Znwm>
    800072ec:	00050493          	mv	s1,a0
    800072f0:	00050c63          	beqz	a0,80007308 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0xb8>
        WorkerC():Thread() {}
    800072f4:	ffffd097          	auipc	ra,0xffffd
    800072f8:	158080e7          	jalr	344(ra) # 8000444c <_ZN6ThreadC1Ev>
    800072fc:	00008797          	auipc	a5,0x8
    80007300:	32c78793          	addi	a5,a5,812 # 8000f628 <_ZTVN20Threads_CPP_API_test7WorkerCE+0x10>
    80007304:	00f4b023          	sd	a5,0(s1)
        threads[2] = new WorkerC();
    80007308:	fc943823          	sd	s1,-48(s0)
        printString("ThreadC created\n");
    8000730c:	00005517          	auipc	a0,0x5
    80007310:	29450513          	addi	a0,a0,660 # 8000c5a0 <CONSOLE_STATUS+0x590>
    80007314:	fffff097          	auipc	ra,0xfffff
    80007318:	a94080e7          	jalr	-1388(ra) # 80005da8 <_Z11printStringPKc>

        threads[3] = new WorkerD();
    8000731c:	01000513          	li	a0,16
    80007320:	ffffd097          	auipc	ra,0xffffd
    80007324:	e90080e7          	jalr	-368(ra) # 800041b0 <_Znwm>
    80007328:	00050493          	mv	s1,a0
    8000732c:	00050c63          	beqz	a0,80007344 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0xf4>
        WorkerD():Thread() {}
    80007330:	ffffd097          	auipc	ra,0xffffd
    80007334:	11c080e7          	jalr	284(ra) # 8000444c <_ZN6ThreadC1Ev>
    80007338:	00008797          	auipc	a5,0x8
    8000733c:	31878793          	addi	a5,a5,792 # 8000f650 <_ZTVN20Threads_CPP_API_test7WorkerDE+0x10>
    80007340:	00f4b023          	sd	a5,0(s1)
        threads[3] = new WorkerD();
    80007344:	fc943c23          	sd	s1,-40(s0)
        printString("ThreadD created\n");
    80007348:	00005517          	auipc	a0,0x5
    8000734c:	27050513          	addi	a0,a0,624 # 8000c5b8 <CONSOLE_STATUS+0x5a8>
    80007350:	fffff097          	auipc	ra,0xfffff
    80007354:	a58080e7          	jalr	-1448(ra) # 80005da8 <_Z11printStringPKc>

        for(int i=0; i<4; i++) {
    80007358:	00000493          	li	s1,0
    8000735c:	00300793          	li	a5,3
    80007360:	0297c663          	blt	a5,s1,8000738c <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x13c>
            threads[i]->start();
    80007364:	00349793          	slli	a5,s1,0x3
    80007368:	fe040713          	addi	a4,s0,-32
    8000736c:	00f707b3          	add	a5,a4,a5
    80007370:	fe07b503          	ld	a0,-32(a5)
    80007374:	ffffd097          	auipc	ra,0xffffd
    80007378:	004080e7          	jalr	4(ra) # 80004378 <_ZN6Thread5startEv>
        for(int i=0; i<4; i++) {
    8000737c:	0014849b          	addiw	s1,s1,1
    80007380:	fddff06f          	j	8000735c <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x10c>
        }

        while (!(finishedA && finishedB && finishedC && finishedD)) {
            Thread::dispatch();
    80007384:	ffffd097          	auipc	ra,0xffffd
    80007388:	024080e7          	jalr	36(ra) # 800043a8 <_ZN6Thread8dispatchEv>
        while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000738c:	00008797          	auipc	a5,0x8
    80007390:	6e07c783          	lbu	a5,1760(a5) # 8000fa6c <_ZN20Threads_CPP_API_test9finishedAE>
    80007394:	fe0788e3          	beqz	a5,80007384 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x134>
    80007398:	00008797          	auipc	a5,0x8
    8000739c:	6d57c783          	lbu	a5,1749(a5) # 8000fa6d <_ZN20Threads_CPP_API_test9finishedBE>
    800073a0:	fe0782e3          	beqz	a5,80007384 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x134>
    800073a4:	00008797          	auipc	a5,0x8
    800073a8:	6ca7c783          	lbu	a5,1738(a5) # 8000fa6e <_ZN20Threads_CPP_API_test9finishedCE>
    800073ac:	fc078ce3          	beqz	a5,80007384 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x134>
    800073b0:	00008797          	auipc	a5,0x8
    800073b4:	6bf7c783          	lbu	a5,1727(a5) # 8000fa6f <_ZN20Threads_CPP_API_test9finishedDE>
    800073b8:	fc0786e3          	beqz	a5,80007384 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x134>
        }

        for (auto thread: threads) { delete thread; }
    800073bc:	fc040493          	addi	s1,s0,-64
    800073c0:	0080006f          	j	800073c8 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x178>
    800073c4:	00848493          	addi	s1,s1,8
    800073c8:	fe040793          	addi	a5,s0,-32
    800073cc:	08f48663          	beq	s1,a5,80007458 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x208>
    800073d0:	0004b503          	ld	a0,0(s1)
    800073d4:	fe0508e3          	beqz	a0,800073c4 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x174>
    800073d8:	00053783          	ld	a5,0(a0)
    800073dc:	0087b783          	ld	a5,8(a5)
    800073e0:	000780e7          	jalr	a5
    800073e4:	fe1ff06f          	j	800073c4 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x174>
    800073e8:	00050913          	mv	s2,a0
        threads[0] = new WorkerA();
    800073ec:	00048513          	mv	a0,s1
    800073f0:	ffffd097          	auipc	ra,0xffffd
    800073f4:	e10080e7          	jalr	-496(ra) # 80004200 <_ZdlPv>
    800073f8:	00090513          	mv	a0,s2
    800073fc:	000cd097          	auipc	ra,0xcd
    80007400:	c5c080e7          	jalr	-932(ra) # 800d4058 <_Unwind_Resume>
    80007404:	00050913          	mv	s2,a0
        threads[1] = new WorkerB();
    80007408:	00048513          	mv	a0,s1
    8000740c:	ffffd097          	auipc	ra,0xffffd
    80007410:	df4080e7          	jalr	-524(ra) # 80004200 <_ZdlPv>
    80007414:	00090513          	mv	a0,s2
    80007418:	000cd097          	auipc	ra,0xcd
    8000741c:	c40080e7          	jalr	-960(ra) # 800d4058 <_Unwind_Resume>
    80007420:	00050913          	mv	s2,a0
        threads[2] = new WorkerC();
    80007424:	00048513          	mv	a0,s1
    80007428:	ffffd097          	auipc	ra,0xffffd
    8000742c:	dd8080e7          	jalr	-552(ra) # 80004200 <_ZdlPv>
    80007430:	00090513          	mv	a0,s2
    80007434:	000cd097          	auipc	ra,0xcd
    80007438:	c24080e7          	jalr	-988(ra) # 800d4058 <_Unwind_Resume>
    8000743c:	00050913          	mv	s2,a0
        threads[3] = new WorkerD();
    80007440:	00048513          	mv	a0,s1
    80007444:	ffffd097          	auipc	ra,0xffffd
    80007448:	dbc080e7          	jalr	-580(ra) # 80004200 <_ZdlPv>
    8000744c:	00090513          	mv	a0,s2
    80007450:	000cd097          	auipc	ra,0xcd
    80007454:	c08080e7          	jalr	-1016(ra) # 800d4058 <_Unwind_Resume>
    }
    80007458:	03813083          	ld	ra,56(sp)
    8000745c:	03013403          	ld	s0,48(sp)
    80007460:	02813483          	ld	s1,40(sp)
    80007464:	02013903          	ld	s2,32(sp)
    80007468:	04010113          	addi	sp,sp,64
    8000746c:	00008067          	ret

0000000080007470 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv>:

    void producerConsumer_C_API() {
    80007470:	f9010113          	addi	sp,sp,-112
    80007474:	06113423          	sd	ra,104(sp)
    80007478:	06813023          	sd	s0,96(sp)
    8000747c:	04913c23          	sd	s1,88(sp)
    80007480:	05213823          	sd	s2,80(sp)
    80007484:	05313423          	sd	s3,72(sp)
    80007488:	05413023          	sd	s4,64(sp)
    8000748c:	03513c23          	sd	s5,56(sp)
    80007490:	03613823          	sd	s6,48(sp)
    80007494:	07010413          	addi	s0,sp,112
            sem_wait(waitForAll);
        }

        sem_close(waitForAll);

        delete buffer;
    80007498:	00010b13          	mv	s6,sp
        printString("Unesite broj proizvodjaca?\n");
    8000749c:	00005517          	auipc	a0,0x5
    800074a0:	14c50513          	addi	a0,a0,332 # 8000c5e8 <CONSOLE_STATUS+0x5d8>
    800074a4:	fffff097          	auipc	ra,0xfffff
    800074a8:	904080e7          	jalr	-1788(ra) # 80005da8 <_Z11printStringPKc>
        getString(input, 30);
    800074ac:	01e00593          	li	a1,30
    800074b0:	fa040493          	addi	s1,s0,-96
    800074b4:	00048513          	mv	a0,s1
    800074b8:	fffff097          	auipc	ra,0xfffff
    800074bc:	96c080e7          	jalr	-1684(ra) # 80005e24 <_Z9getStringPci>
        threadNum = stringToInt(input);
    800074c0:	00048513          	mv	a0,s1
    800074c4:	fffff097          	auipc	ra,0xfffff
    800074c8:	a2c080e7          	jalr	-1492(ra) # 80005ef0 <_Z11stringToIntPKc>
    800074cc:	00050913          	mv	s2,a0
        printString("Unesite velicinu bafera?\n");
    800074d0:	00005517          	auipc	a0,0x5
    800074d4:	13850513          	addi	a0,a0,312 # 8000c608 <CONSOLE_STATUS+0x5f8>
    800074d8:	fffff097          	auipc	ra,0xfffff
    800074dc:	8d0080e7          	jalr	-1840(ra) # 80005da8 <_Z11printStringPKc>
        getString(input, 30);
    800074e0:	01e00593          	li	a1,30
    800074e4:	00048513          	mv	a0,s1
    800074e8:	fffff097          	auipc	ra,0xfffff
    800074ec:	93c080e7          	jalr	-1732(ra) # 80005e24 <_Z9getStringPci>
        n = stringToInt(input);
    800074f0:	00048513          	mv	a0,s1
    800074f4:	fffff097          	auipc	ra,0xfffff
    800074f8:	9fc080e7          	jalr	-1540(ra) # 80005ef0 <_Z11stringToIntPKc>
    800074fc:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80007500:	00005517          	auipc	a0,0x5
    80007504:	12850513          	addi	a0,a0,296 # 8000c628 <CONSOLE_STATUS+0x618>
    80007508:	fffff097          	auipc	ra,0xfffff
    8000750c:	8a0080e7          	jalr	-1888(ra) # 80005da8 <_Z11printStringPKc>
    80007510:	00000613          	li	a2,0
    80007514:	00a00593          	li	a1,10
    80007518:	00090513          	mv	a0,s2
    8000751c:	fffff097          	auipc	ra,0xfffff
    80007520:	a24080e7          	jalr	-1500(ra) # 80005f40 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80007524:	00005517          	auipc	a0,0x5
    80007528:	11c50513          	addi	a0,a0,284 # 8000c640 <CONSOLE_STATUS+0x630>
    8000752c:	fffff097          	auipc	ra,0xfffff
    80007530:	87c080e7          	jalr	-1924(ra) # 80005da8 <_Z11printStringPKc>
    80007534:	00000613          	li	a2,0
    80007538:	00a00593          	li	a1,10
    8000753c:	00048513          	mv	a0,s1
    80007540:	fffff097          	auipc	ra,0xfffff
    80007544:	a00080e7          	jalr	-1536(ra) # 80005f40 <_Z8printIntiii>
        printString(".\n");
    80007548:	00005517          	auipc	a0,0x5
    8000754c:	11050513          	addi	a0,a0,272 # 8000c658 <CONSOLE_STATUS+0x648>
    80007550:	fffff097          	auipc	ra,0xfffff
    80007554:	858080e7          	jalr	-1960(ra) # 80005da8 <_Z11printStringPKc>
        if(threadNum > n) {
    80007558:	0524c063          	blt	s1,s2,80007598 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x128>
        } else if (threadNum < 1) {
    8000755c:	05205863          	blez	s2,800075ac <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x13c>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    80007560:	00008797          	auipc	a5,0x8
    80007564:	2d07c783          	lbu	a5,720(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80007568:	04078e63          	beqz	a5,800075c4 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x154>
    int getCnt();

    // operatori
    void *operator new(uint64 n){
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    8000756c:	00100593          	li	a1,1
    80007570:	00008517          	auipc	a0,0x8
    80007574:	2c850513          	addi	a0,a0,712 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80007578:	ffffe097          	auipc	ra,0xffffe
    8000757c:	dec080e7          	jalr	-532(ra) # 80005364 <_ZN15MemoryAllocator12memory_allocEm>
    80007580:	00050a13          	mv	s4,a0
        Buffer *buffer = new Buffer(n);
    80007584:	0a050e63          	beqz	a0,80007640 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x1d0>
    80007588:	00048593          	mv	a1,s1
    8000758c:	00002097          	auipc	ra,0x2
    80007590:	098080e7          	jalr	152(ra) # 80009624 <_ZN6BufferC1Ei>
    80007594:	0ac0006f          	j	80007640 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x1d0>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80007598:	00005517          	auipc	a0,0x5
    8000759c:	0c850513          	addi	a0,a0,200 # 8000c660 <CONSOLE_STATUS+0x650>
    800075a0:	fffff097          	auipc	ra,0xfffff
    800075a4:	808080e7          	jalr	-2040(ra) # 80005da8 <_Z11printStringPKc>
            return;
    800075a8:	0140006f          	j	800075bc <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x14c>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    800075ac:	00005517          	auipc	a0,0x5
    800075b0:	0f450513          	addi	a0,a0,244 # 8000c6a0 <CONSOLE_STATUS+0x690>
    800075b4:	ffffe097          	auipc	ra,0xffffe
    800075b8:	7f4080e7          	jalr	2036(ra) # 80005da8 <_Z11printStringPKc>
            return;
    800075bc:	000b0113          	mv	sp,s6
    800075c0:	1e00006f          	j	800077a0 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x330>

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    800075c4:	00008617          	auipc	a2,0x8
    800075c8:	27460613          	addi	a2,a2,628 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800075cc:	00008797          	auipc	a5,0x8
    800075d0:	21c7b783          	ld	a5,540(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800075d4:	0007b703          	ld	a4,0(a5)
    800075d8:	00008797          	auipc	a5,0x8
    800075dc:	1c87b783          	ld	a5,456(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800075e0:	0007b783          	ld	a5,0(a5)
    800075e4:	40f706b3          	sub	a3,a4,a5
    800075e8:	0036d693          	srli	a3,a3,0x3
    800075ec:	00d787b3          	add	a5,a5,a3
    800075f0:	00178793          	addi	a5,a5,1
    800075f4:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800075f8:	fff70713          	addi	a4,a4,-1
    800075fc:	00e63823          	sd	a4,16(a2)

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80007600:	03f7f693          	andi	a3,a5,63
    80007604:	00068663          	beqz	a3,80007610 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x1a0>
    80007608:	04000613          	li	a2,64
    8000760c:	40d606b3          	sub	a3,a2,a3
    80007610:	00d787b3          	add	a5,a5,a3
    80007614:	00008697          	auipc	a3,0x8
    80007618:	22f6b223          	sd	a5,548(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    8000761c:	40f70733          	sub	a4,a4,a5
    80007620:	00675713          	srli	a4,a4,0x6

        // napravi node

        fmem_head->next = nullptr;
    80007624:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80007628:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    8000762c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80007630:	00100793          	li	a5,1
    80007634:	00008717          	auipc	a4,0x8
    80007638:	1ef70e23          	sb	a5,508(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000763c:	f31ff06f          	j	8000756c <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0xfc>
        sem_open(&waitForAll, 0);
    80007640:	00000593          	li	a1,0
    80007644:	00008517          	auipc	a0,0x8
    80007648:	42c50513          	addi	a0,a0,1068 # 8000fa70 <_ZN27ConsumerProducer_C_API_test10waitForAllE>
    8000764c:	ffffa097          	auipc	ra,0xffffa
    80007650:	e58080e7          	jalr	-424(ra) # 800014a4 <sem_open>
        thread_t threads[threadNum];
    80007654:	00391793          	slli	a5,s2,0x3
    80007658:	00f78793          	addi	a5,a5,15
    8000765c:	ff07f793          	andi	a5,a5,-16
    80007660:	40f10133          	sub	sp,sp,a5
    80007664:	00010a93          	mv	s5,sp
        struct thread_data data[threadNum + 1];
    80007668:	0019071b          	addiw	a4,s2,1
    8000766c:	00171793          	slli	a5,a4,0x1
    80007670:	00e787b3          	add	a5,a5,a4
    80007674:	00379793          	slli	a5,a5,0x3
    80007678:	00f78793          	addi	a5,a5,15
    8000767c:	ff07f793          	andi	a5,a5,-16
    80007680:	40f10133          	sub	sp,sp,a5
    80007684:	00010993          	mv	s3,sp
        data[threadNum].id = threadNum;
    80007688:	00191613          	slli	a2,s2,0x1
    8000768c:	012607b3          	add	a5,a2,s2
    80007690:	00379793          	slli	a5,a5,0x3
    80007694:	00f987b3          	add	a5,s3,a5
    80007698:	0127a023          	sw	s2,0(a5)
        data[threadNum].buffer = buffer;
    8000769c:	0147b423          	sd	s4,8(a5)
        data[threadNum].wait = waitForAll;
    800076a0:	00008717          	auipc	a4,0x8
    800076a4:	3d073703          	ld	a4,976(a4) # 8000fa70 <_ZN27ConsumerProducer_C_API_test10waitForAllE>
    800076a8:	00e7b823          	sd	a4,16(a5)
        thread_create(&consumerThread, consumer, data + threadNum);
    800076ac:	00078613          	mv	a2,a5
    800076b0:	fffff597          	auipc	a1,0xfffff
    800076b4:	0d458593          	addi	a1,a1,212 # 80006784 <_ZN27ConsumerProducer_C_API_test8consumerEPv>
    800076b8:	f9840513          	addi	a0,s0,-104
    800076bc:	ffffa097          	auipc	ra,0xffffa
    800076c0:	c40080e7          	jalr	-960(ra) # 800012fc <thread_create>
        for (int i = 0; i < threadNum; i++) {
    800076c4:	00000493          	li	s1,0
    800076c8:	0280006f          	j	800076f0 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x280>
            thread_create(threads + i,
    800076cc:	fffff597          	auipc	a1,0xfffff
    800076d0:	f7458593          	addi	a1,a1,-140 # 80006640 <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv>
                          data + i);
    800076d4:	00179613          	slli	a2,a5,0x1
    800076d8:	00f60633          	add	a2,a2,a5
    800076dc:	00361613          	slli	a2,a2,0x3
            thread_create(threads + i,
    800076e0:	00c98633          	add	a2,s3,a2
    800076e4:	ffffa097          	auipc	ra,0xffffa
    800076e8:	c18080e7          	jalr	-1000(ra) # 800012fc <thread_create>
        for (int i = 0; i < threadNum; i++) {
    800076ec:	0014849b          	addiw	s1,s1,1
    800076f0:	0524d263          	bge	s1,s2,80007734 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x2c4>
            data[i].id = i;
    800076f4:	00149793          	slli	a5,s1,0x1
    800076f8:	009787b3          	add	a5,a5,s1
    800076fc:	00379793          	slli	a5,a5,0x3
    80007700:	00f987b3          	add	a5,s3,a5
    80007704:	0097a023          	sw	s1,0(a5)
            data[i].buffer = buffer;
    80007708:	0147b423          	sd	s4,8(a5)
            data[i].wait = waitForAll;
    8000770c:	00008717          	auipc	a4,0x8
    80007710:	36473703          	ld	a4,868(a4) # 8000fa70 <_ZN27ConsumerProducer_C_API_test10waitForAllE>
    80007714:	00e7b823          	sd	a4,16(a5)
            thread_create(threads + i,
    80007718:	00048793          	mv	a5,s1
    8000771c:	00349513          	slli	a0,s1,0x3
    80007720:	00aa8533          	add	a0,s5,a0
    80007724:	fa9054e3          	blez	s1,800076cc <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x25c>
    80007728:	fffff597          	auipc	a1,0xfffff
    8000772c:	fc858593          	addi	a1,a1,-56 # 800066f0 <_ZN27ConsumerProducer_C_API_test8producerEPv>
    80007730:	fa5ff06f          	j	800076d4 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x264>
        thread_dispatch();
    80007734:	ffffa097          	auipc	ra,0xffffa
    80007738:	c6c080e7          	jalr	-916(ra) # 800013a0 <thread_dispatch>
        for (int i = 0; i <= threadNum; i++) {
    8000773c:	00000493          	li	s1,0
    80007740:	00994e63          	blt	s2,s1,8000775c <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x2ec>
            sem_wait(waitForAll);
    80007744:	00008517          	auipc	a0,0x8
    80007748:	32c53503          	ld	a0,812(a0) # 8000fa70 <_ZN27ConsumerProducer_C_API_test10waitForAllE>
    8000774c:	ffffa097          	auipc	ra,0xffffa
    80007750:	e00080e7          	jalr	-512(ra) # 8000154c <sem_wait>
        for (int i = 0; i <= threadNum; i++) {
    80007754:	0014849b          	addiw	s1,s1,1
    80007758:	fe9ff06f          	j	80007740 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x2d0>
        sem_close(waitForAll);
    8000775c:	00008517          	auipc	a0,0x8
    80007760:	31453503          	ld	a0,788(a0) # 8000fa70 <_ZN27ConsumerProducer_C_API_test10waitForAllE>
    80007764:	ffffa097          	auipc	ra,0xffffa
    80007768:	d94080e7          	jalr	-620(ra) # 800014f8 <sem_close>
        delete buffer;
    8000776c:	020a0863          	beqz	s4,8000779c <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x32c>
    80007770:	000a0513          	mv	a0,s4
    80007774:	00002097          	auipc	ra,0x2
    80007778:	0f0080e7          	jalr	240(ra) # 80009864 <_ZN6BufferD1Ev>
    8000777c:	00008797          	auipc	a5,0x8
    80007780:	0b47c783          	lbu	a5,180(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80007784:	04078463          	beqz	a5,800077cc <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x35c>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80007788:	000a0593          	mv	a1,s4
    8000778c:	00008517          	auipc	a0,0x8
    80007790:	0ac50513          	addi	a0,a0,172 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80007794:	ffffe097          	auipc	ra,0xffffe
    80007798:	ca4080e7          	jalr	-860(ra) # 80005438 <_ZN15MemoryAllocator11memory_freeEPv>
    8000779c:	000b0113          	mv	sp,s6

    }
    800077a0:	f9040113          	addi	sp,s0,-112
    800077a4:	06813083          	ld	ra,104(sp)
    800077a8:	06013403          	ld	s0,96(sp)
    800077ac:	05813483          	ld	s1,88(sp)
    800077b0:	05013903          	ld	s2,80(sp)
    800077b4:	04813983          	ld	s3,72(sp)
    800077b8:	04013a03          	ld	s4,64(sp)
    800077bc:	03813a83          	ld	s5,56(sp)
    800077c0:	03013b03          	ld	s6,48(sp)
    800077c4:	07010113          	addi	sp,sp,112
    800077c8:	00008067          	ret
    MemoryAllocator(){
    800077cc:	00008617          	auipc	a2,0x8
    800077d0:	06c60613          	addi	a2,a2,108 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800077d4:	00008797          	auipc	a5,0x8
    800077d8:	0147b783          	ld	a5,20(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800077dc:	0007b703          	ld	a4,0(a5)
    800077e0:	00008797          	auipc	a5,0x8
    800077e4:	fc07b783          	ld	a5,-64(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800077e8:	0007b783          	ld	a5,0(a5)
    800077ec:	40f706b3          	sub	a3,a4,a5
    800077f0:	0036d693          	srli	a3,a3,0x3
    800077f4:	00d787b3          	add	a5,a5,a3
    800077f8:	00178793          	addi	a5,a5,1
    800077fc:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80007800:	fff70713          	addi	a4,a4,-1
    80007804:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80007808:	03f7f693          	andi	a3,a5,63
    8000780c:	00068663          	beqz	a3,80007818 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x3a8>
    80007810:	04000613          	li	a2,64
    80007814:	40d606b3          	sub	a3,a2,a3
    80007818:	00d787b3          	add	a5,a5,a3
    8000781c:	00008697          	auipc	a3,0x8
    80007820:	00f6be23          	sd	a5,28(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80007824:	40f70733          	sub	a4,a4,a5
    80007828:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    8000782c:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80007830:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80007834:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80007838:	00100793          	li	a5,1
    8000783c:	00008717          	auipc	a4,0x8
    80007840:	fef70a23          	sb	a5,-12(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80007844:	f45ff06f          	j	80007788 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x318>
    80007848:	00050493          	mv	s1,a0
        Buffer *buffer = new Buffer(n);
    8000784c:	000a0513          	mv	a0,s4
    80007850:	00002097          	auipc	ra,0x2
    80007854:	934080e7          	jalr	-1740(ra) # 80009184 <_ZN6BufferdlEPv>
    80007858:	00048513          	mv	a0,s1
    8000785c:	000cc097          	auipc	ra,0xcc
    80007860:	7fc080e7          	jalr	2044(ra) # 800d4058 <_Unwind_Resume>

0000000080007864 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv>:
        void run() override {
            producerKeyboard(td);
        }
    };

    void ProducerKeyboard::producerKeyboard(void *arg) {
    80007864:	fd010113          	addi	sp,sp,-48
    80007868:	02113423          	sd	ra,40(sp)
    8000786c:	02813023          	sd	s0,32(sp)
    80007870:	00913c23          	sd	s1,24(sp)
    80007874:	01213823          	sd	s2,16(sp)
    80007878:	01313423          	sd	s3,8(sp)
    8000787c:	03010413          	addi	s0,sp,48
    80007880:	00050993          	mv	s3,a0
    80007884:	00058493          	mv	s1,a1
        struct thread_data *data = (struct thread_data *) arg;

        int key;
        int i = 0;
    80007888:	00000913          	li	s2,0
    8000788c:	00c0006f          	j	80007898 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv+0x34>
        while ((key = getc()) != 0x1b) {
            data->buffer->put(key);
            i++;

            if (i % (10 * data->id) == 0) {
                Thread::dispatch();
    80007890:	ffffd097          	auipc	ra,0xffffd
    80007894:	b18080e7          	jalr	-1256(ra) # 800043a8 <_ZN6Thread8dispatchEv>
        while ((key = getc()) != 0x1b) {
    80007898:	ffffa097          	auipc	ra,0xffffa
    8000789c:	d5c080e7          	jalr	-676(ra) # 800015f4 <getc>
    800078a0:	0005059b          	sext.w	a1,a0
    800078a4:	01b00793          	li	a5,27
    800078a8:	02f58a63          	beq	a1,a5,800078dc <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv+0x78>
            data->buffer->put(key);
    800078ac:	0084b503          	ld	a0,8(s1)
    800078b0:	fffff097          	auipc	ra,0xfffff
    800078b4:	908080e7          	jalr	-1784(ra) # 800061b8 <_ZN9BufferCPP3putEi>
            i++;
    800078b8:	0019071b          	addiw	a4,s2,1
    800078bc:	0007091b          	sext.w	s2,a4
            if (i % (10 * data->id) == 0) {
    800078c0:	0004a683          	lw	a3,0(s1)
    800078c4:	0026979b          	slliw	a5,a3,0x2
    800078c8:	00d787bb          	addw	a5,a5,a3
    800078cc:	0017979b          	slliw	a5,a5,0x1
    800078d0:	02f767bb          	remw	a5,a4,a5
    800078d4:	fc0792e3          	bnez	a5,80007898 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv+0x34>
    800078d8:	fb9ff06f          	j	80007890 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv+0x2c>
            }
        }

        threadEnd = 1;
    800078dc:	00100793          	li	a5,1
    800078e0:	00008717          	auipc	a4,0x8
    800078e4:	18f72c23          	sw	a5,408(a4) # 8000fa78 <_ZN34ConsumerProducer_CPP_Sync_API_test9threadEndE>
        td->buffer->put('!');
    800078e8:	0109b783          	ld	a5,16(s3)
    800078ec:	02100593          	li	a1,33
    800078f0:	0087b503          	ld	a0,8(a5)
    800078f4:	fffff097          	auipc	ra,0xfffff
    800078f8:	8c4080e7          	jalr	-1852(ra) # 800061b8 <_ZN9BufferCPP3putEi>

        data->wait->signal();
    800078fc:	0104b503          	ld	a0,16(s1)
    80007900:	ffffd097          	auipc	ra,0xffffd
    80007904:	c38080e7          	jalr	-968(ra) # 80004538 <_ZN9Semaphore6signalEv>
    }
    80007908:	02813083          	ld	ra,40(sp)
    8000790c:	02013403          	ld	s0,32(sp)
    80007910:	01813483          	ld	s1,24(sp)
    80007914:	01013903          	ld	s2,16(sp)
    80007918:	00813983          	ld	s3,8(sp)
    8000791c:	03010113          	addi	sp,sp,48
    80007920:	00008067          	ret

0000000080007924 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv>:
        void run() override {
            producer(td);
        }
    };

    void Producer::producer(void *arg) {
    80007924:	fe010113          	addi	sp,sp,-32
    80007928:	00113c23          	sd	ra,24(sp)
    8000792c:	00813823          	sd	s0,16(sp)
    80007930:	00913423          	sd	s1,8(sp)
    80007934:	01213023          	sd	s2,0(sp)
    80007938:	02010413          	addi	s0,sp,32
    8000793c:	00058493          	mv	s1,a1
        struct thread_data *data = (struct thread_data *) arg;

        int i = 0;
    80007940:	00000913          	li	s2,0
    80007944:	00c0006f          	j	80007950 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv+0x2c>
        while (!threadEnd) {
            data->buffer->put(data->id + '0');
            i++;

            if (i % (10 * data->id) == 0) {
                Thread::dispatch();
    80007948:	ffffd097          	auipc	ra,0xffffd
    8000794c:	a60080e7          	jalr	-1440(ra) # 800043a8 <_ZN6Thread8dispatchEv>
        while (!threadEnd) {
    80007950:	00008797          	auipc	a5,0x8
    80007954:	1287a783          	lw	a5,296(a5) # 8000fa78 <_ZN34ConsumerProducer_CPP_Sync_API_test9threadEndE>
    80007958:	02079e63          	bnez	a5,80007994 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv+0x70>
            data->buffer->put(data->id + '0');
    8000795c:	0004a583          	lw	a1,0(s1)
    80007960:	0305859b          	addiw	a1,a1,48
    80007964:	0084b503          	ld	a0,8(s1)
    80007968:	fffff097          	auipc	ra,0xfffff
    8000796c:	850080e7          	jalr	-1968(ra) # 800061b8 <_ZN9BufferCPP3putEi>
            i++;
    80007970:	0019071b          	addiw	a4,s2,1
    80007974:	0007091b          	sext.w	s2,a4
            if (i % (10 * data->id) == 0) {
    80007978:	0004a683          	lw	a3,0(s1)
    8000797c:	0026979b          	slliw	a5,a3,0x2
    80007980:	00d787bb          	addw	a5,a5,a3
    80007984:	0017979b          	slliw	a5,a5,0x1
    80007988:	02f767bb          	remw	a5,a4,a5
    8000798c:	fc0792e3          	bnez	a5,80007950 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv+0x2c>
    80007990:	fb9ff06f          	j	80007948 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv+0x24>
            }
        }

        data->wait->signal();
    80007994:	0104b503          	ld	a0,16(s1)
    80007998:	ffffd097          	auipc	ra,0xffffd
    8000799c:	ba0080e7          	jalr	-1120(ra) # 80004538 <_ZN9Semaphore6signalEv>
    }
    800079a0:	01813083          	ld	ra,24(sp)
    800079a4:	01013403          	ld	s0,16(sp)
    800079a8:	00813483          	ld	s1,8(sp)
    800079ac:	00013903          	ld	s2,0(sp)
    800079b0:	02010113          	addi	sp,sp,32
    800079b4:	00008067          	ret

00000000800079b8 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv>:
        void run() override {
            consumer(td);
        }
    };

    void Consumer::consumer(void *arg) {
    800079b8:	fd010113          	addi	sp,sp,-48
    800079bc:	02113423          	sd	ra,40(sp)
    800079c0:	02813023          	sd	s0,32(sp)
    800079c4:	00913c23          	sd	s1,24(sp)
    800079c8:	01213823          	sd	s2,16(sp)
    800079cc:	01313423          	sd	s3,8(sp)
    800079d0:	01413023          	sd	s4,0(sp)
    800079d4:	03010413          	addi	s0,sp,48
    800079d8:	00050993          	mv	s3,a0
    800079dc:	00058913          	mv	s2,a1
        struct thread_data *data = (struct thread_data *) arg;

        int i = 0;
    800079e0:	00000a13          	li	s4,0
    800079e4:	01c0006f          	j	80007a00 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x48>
            i++;

            putc(key);

            if (i % (5 * data->id) == 0) {
                Thread::dispatch();
    800079e8:	ffffd097          	auipc	ra,0xffffd
    800079ec:	9c0080e7          	jalr	-1600(ra) # 800043a8 <_ZN6Thread8dispatchEv>
    800079f0:	0500006f          	j	80007a40 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x88>
            }

            if (i % 80 == 0) {
                putc('\n');
    800079f4:	00a00513          	li	a0,10
    800079f8:	ffffa097          	auipc	ra,0xffffa
    800079fc:	c50080e7          	jalr	-944(ra) # 80001648 <putc>
        while (!threadEnd) {
    80007a00:	00008797          	auipc	a5,0x8
    80007a04:	0787a783          	lw	a5,120(a5) # 8000fa78 <_ZN34ConsumerProducer_CPP_Sync_API_test9threadEndE>
    80007a08:	06079263          	bnez	a5,80007a6c <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0xb4>
            int key = data->buffer->get();
    80007a0c:	00893503          	ld	a0,8(s2)
    80007a10:	fffff097          	auipc	ra,0xfffff
    80007a14:	838080e7          	jalr	-1992(ra) # 80006248 <_ZN9BufferCPP3getEv>
            i++;
    80007a18:	001a049b          	addiw	s1,s4,1
    80007a1c:	00048a1b          	sext.w	s4,s1
            putc(key);
    80007a20:	0ff57513          	andi	a0,a0,255
    80007a24:	ffffa097          	auipc	ra,0xffffa
    80007a28:	c24080e7          	jalr	-988(ra) # 80001648 <putc>
            if (i % (5 * data->id) == 0) {
    80007a2c:	00092703          	lw	a4,0(s2)
    80007a30:	0027179b          	slliw	a5,a4,0x2
    80007a34:	00e787bb          	addw	a5,a5,a4
    80007a38:	02f4e7bb          	remw	a5,s1,a5
    80007a3c:	fa0786e3          	beqz	a5,800079e8 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x30>
            if (i % 80 == 0) {
    80007a40:	05000793          	li	a5,80
    80007a44:	02f4e4bb          	remw	s1,s1,a5
    80007a48:	fa049ce3          	bnez	s1,80007a00 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x48>
    80007a4c:	fa9ff06f          	j	800079f4 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x3c>
            }
        }


        while (td->buffer->getCnt() > 0) {
            int key = td->buffer->get();
    80007a50:	0109b783          	ld	a5,16(s3)
    80007a54:	0087b503          	ld	a0,8(a5)
    80007a58:	ffffe097          	auipc	ra,0xffffe
    80007a5c:	7f0080e7          	jalr	2032(ra) # 80006248 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80007a60:	0ff57513          	andi	a0,a0,255
    80007a64:	ffffd097          	auipc	ra,0xffffd
    80007a68:	b28080e7          	jalr	-1240(ra) # 8000458c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80007a6c:	0109b783          	ld	a5,16(s3)
    80007a70:	0087b503          	ld	a0,8(a5)
    80007a74:	fffff097          	auipc	ra,0xfffff
    80007a78:	860080e7          	jalr	-1952(ra) # 800062d4 <_ZN9BufferCPP6getCntEv>
    80007a7c:	fca04ae3          	bgtz	a0,80007a50 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x98>
        }

        data->wait->signal();
    80007a80:	01093503          	ld	a0,16(s2)
    80007a84:	ffffd097          	auipc	ra,0xffffd
    80007a88:	ab4080e7          	jalr	-1356(ra) # 80004538 <_ZN9Semaphore6signalEv>
    }
    80007a8c:	02813083          	ld	ra,40(sp)
    80007a90:	02013403          	ld	s0,32(sp)
    80007a94:	01813483          	ld	s1,24(sp)
    80007a98:	01013903          	ld	s2,16(sp)
    80007a9c:	00813983          	ld	s3,8(sp)
    80007aa0:	00013a03          	ld	s4,0(sp)
    80007aa4:	03010113          	addi	sp,sp,48
    80007aa8:	00008067          	ret

0000000080007aac <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv>:

    void producerConsumer_CPP_Sync_API() {
    80007aac:	f8010113          	addi	sp,sp,-128
    80007ab0:	06113c23          	sd	ra,120(sp)
    80007ab4:	06813823          	sd	s0,112(sp)
    80007ab8:	06913423          	sd	s1,104(sp)
    80007abc:	07213023          	sd	s2,96(sp)
    80007ac0:	05313c23          	sd	s3,88(sp)
    80007ac4:	05413823          	sd	s4,80(sp)
    80007ac8:	05513423          	sd	s5,72(sp)
    80007acc:	05613023          	sd	s6,64(sp)
    80007ad0:	03713c23          	sd	s7,56(sp)
    80007ad4:	03813823          	sd	s8,48(sp)
    80007ad8:	03913423          	sd	s9,40(sp)
    80007adc:	08010413          	addi	s0,sp,128
        for (int i = 0; i < threadNum; i++) {
            delete threads[i];
        }
        delete consumerThread;
        delete waitForAll;
        delete buffer;
    80007ae0:	00010b93          	mv	s7,sp
        printString("Unesite broj proizvodjaca?\n");
    80007ae4:	00005517          	auipc	a0,0x5
    80007ae8:	b0450513          	addi	a0,a0,-1276 # 8000c5e8 <CONSOLE_STATUS+0x5d8>
    80007aec:	ffffe097          	auipc	ra,0xffffe
    80007af0:	2bc080e7          	jalr	700(ra) # 80005da8 <_Z11printStringPKc>
        getString(input, 30);
    80007af4:	01e00593          	li	a1,30
    80007af8:	f8040493          	addi	s1,s0,-128
    80007afc:	00048513          	mv	a0,s1
    80007b00:	ffffe097          	auipc	ra,0xffffe
    80007b04:	324080e7          	jalr	804(ra) # 80005e24 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80007b08:	00048513          	mv	a0,s1
    80007b0c:	ffffe097          	auipc	ra,0xffffe
    80007b10:	3e4080e7          	jalr	996(ra) # 80005ef0 <_Z11stringToIntPKc>
    80007b14:	00050913          	mv	s2,a0
        printString("Unesite velicinu bafera?\n");
    80007b18:	00005517          	auipc	a0,0x5
    80007b1c:	af050513          	addi	a0,a0,-1296 # 8000c608 <CONSOLE_STATUS+0x5f8>
    80007b20:	ffffe097          	auipc	ra,0xffffe
    80007b24:	288080e7          	jalr	648(ra) # 80005da8 <_Z11printStringPKc>
        getString(input, 30);
    80007b28:	01e00593          	li	a1,30
    80007b2c:	00048513          	mv	a0,s1
    80007b30:	ffffe097          	auipc	ra,0xffffe
    80007b34:	2f4080e7          	jalr	756(ra) # 80005e24 <_Z9getStringPci>
        n = stringToInt(input);
    80007b38:	00048513          	mv	a0,s1
    80007b3c:	ffffe097          	auipc	ra,0xffffe
    80007b40:	3b4080e7          	jalr	948(ra) # 80005ef0 <_Z11stringToIntPKc>
    80007b44:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80007b48:	00005517          	auipc	a0,0x5
    80007b4c:	ae050513          	addi	a0,a0,-1312 # 8000c628 <CONSOLE_STATUS+0x618>
    80007b50:	ffffe097          	auipc	ra,0xffffe
    80007b54:	258080e7          	jalr	600(ra) # 80005da8 <_Z11printStringPKc>
    80007b58:	00000613          	li	a2,0
    80007b5c:	00a00593          	li	a1,10
    80007b60:	00090513          	mv	a0,s2
    80007b64:	ffffe097          	auipc	ra,0xffffe
    80007b68:	3dc080e7          	jalr	988(ra) # 80005f40 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80007b6c:	00005517          	auipc	a0,0x5
    80007b70:	ad450513          	addi	a0,a0,-1324 # 8000c640 <CONSOLE_STATUS+0x630>
    80007b74:	ffffe097          	auipc	ra,0xffffe
    80007b78:	234080e7          	jalr	564(ra) # 80005da8 <_Z11printStringPKc>
    80007b7c:	00000613          	li	a2,0
    80007b80:	00a00593          	li	a1,10
    80007b84:	00048513          	mv	a0,s1
    80007b88:	ffffe097          	auipc	ra,0xffffe
    80007b8c:	3b8080e7          	jalr	952(ra) # 80005f40 <_Z8printIntiii>
        printString(".\n");
    80007b90:	00005517          	auipc	a0,0x5
    80007b94:	ac850513          	addi	a0,a0,-1336 # 8000c658 <CONSOLE_STATUS+0x648>
    80007b98:	ffffe097          	auipc	ra,0xffffe
    80007b9c:	210080e7          	jalr	528(ra) # 80005da8 <_Z11printStringPKc>
        if(threadNum > n) {
    80007ba0:	0324c663          	blt	s1,s2,80007bcc <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x120>
        } else if (threadNum < 1) {
    80007ba4:	03205e63          	blez	s2,80007be0 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x134>
        BufferCPP *buffer = new BufferCPP(n);
    80007ba8:	03800513          	li	a0,56
    80007bac:	ffffc097          	auipc	ra,0xffffc
    80007bb0:	604080e7          	jalr	1540(ra) # 800041b0 <_Znwm>
    80007bb4:	00050a93          	mv	s5,a0
    80007bb8:	04050063          	beqz	a0,80007bf8 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x14c>
    80007bbc:	00048593          	mv	a1,s1
    80007bc0:	ffffe097          	auipc	ra,0xffffe
    80007bc4:	494080e7          	jalr	1172(ra) # 80006054 <_ZN9BufferCPPC1Ei>
    80007bc8:	0300006f          	j	80007bf8 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x14c>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80007bcc:	00005517          	auipc	a0,0x5
    80007bd0:	a9450513          	addi	a0,a0,-1388 # 8000c660 <CONSOLE_STATUS+0x650>
    80007bd4:	ffffe097          	auipc	ra,0xffffe
    80007bd8:	1d4080e7          	jalr	468(ra) # 80005da8 <_Z11printStringPKc>
            return;
    80007bdc:	0140006f          	j	80007bf0 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x144>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80007be0:	00005517          	auipc	a0,0x5
    80007be4:	ac050513          	addi	a0,a0,-1344 # 8000c6a0 <CONSOLE_STATUS+0x690>
    80007be8:	ffffe097          	auipc	ra,0xffffe
    80007bec:	1c0080e7          	jalr	448(ra) # 80005da8 <_Z11printStringPKc>
            return;
    80007bf0:	000b8113          	mv	sp,s7
    80007bf4:	2540006f          	j	80007e48 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x39c>
        waitForAll = new Semaphore(0);
    80007bf8:	01000513          	li	a0,16
    80007bfc:	ffffc097          	auipc	ra,0xffffc
    80007c00:	5b4080e7          	jalr	1460(ra) # 800041b0 <_Znwm>
    80007c04:	00050493          	mv	s1,a0
    80007c08:	00050863          	beqz	a0,80007c18 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x16c>
    80007c0c:	00000593          	li	a1,0
    80007c10:	ffffd097          	auipc	ra,0xffffd
    80007c14:	8bc080e7          	jalr	-1860(ra) # 800044cc <_ZN9SemaphoreC1Ej>
    80007c18:	00008717          	auipc	a4,0x8
    80007c1c:	e4070713          	addi	a4,a4,-448 # 8000fa58 <_ZN18Threads_C_API_test9finishedEE>
    80007c20:	02973423          	sd	s1,40(a4)
        Thread* threads[threadNum];
    80007c24:	00391793          	slli	a5,s2,0x3
    80007c28:	00f78793          	addi	a5,a5,15
    80007c2c:	ff07f793          	andi	a5,a5,-16
    80007c30:	40f10133          	sub	sp,sp,a5
    80007c34:	00010993          	mv	s3,sp
        struct thread_data data[threadNum + 1];
    80007c38:	0019069b          	addiw	a3,s2,1
    80007c3c:	00169793          	slli	a5,a3,0x1
    80007c40:	00d787b3          	add	a5,a5,a3
    80007c44:	00379793          	slli	a5,a5,0x3
    80007c48:	00f78793          	addi	a5,a5,15
    80007c4c:	ff07f793          	andi	a5,a5,-16
    80007c50:	40f10133          	sub	sp,sp,a5
    80007c54:	00010a13          	mv	s4,sp
        data[threadNum].id = threadNum;
    80007c58:	00191793          	slli	a5,s2,0x1
    80007c5c:	012787b3          	add	a5,a5,s2
    80007c60:	00379793          	slli	a5,a5,0x3
    80007c64:	00fa07b3          	add	a5,s4,a5
    80007c68:	0127a023          	sw	s2,0(a5)
        data[threadNum].buffer = buffer;
    80007c6c:	0157b423          	sd	s5,8(a5)
        data[threadNum].wait = waitForAll;
    80007c70:	02873703          	ld	a4,40(a4)
    80007c74:	00e7b823          	sd	a4,16(a5)
        consumerThread = new Consumer(data+threadNum);
    80007c78:	01800513          	li	a0,24
    80007c7c:	ffffc097          	auipc	ra,0xffffc
    80007c80:	534080e7          	jalr	1332(ra) # 800041b0 <_Znwm>
    80007c84:	00050b13          	mv	s6,a0
    80007c88:	02050663          	beqz	a0,80007cb4 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x208>
    80007c8c:	00191493          	slli	s1,s2,0x1
    80007c90:	012484b3          	add	s1,s1,s2
    80007c94:	00349493          	slli	s1,s1,0x3
    80007c98:	009a04b3          	add	s1,s4,s1
        Consumer(thread_data* _td):Thread(), td(_td) {}
    80007c9c:	ffffc097          	auipc	ra,0xffffc
    80007ca0:	7b0080e7          	jalr	1968(ra) # 8000444c <_ZN6ThreadC1Ev>
    80007ca4:	00008797          	auipc	a5,0x8
    80007ca8:	a2478793          	addi	a5,a5,-1500 # 8000f6c8 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ConsumerE+0x10>
    80007cac:	00fb3023          	sd	a5,0(s6)
    80007cb0:	009b3823          	sd	s1,16(s6)
        consumerThread->start();
    80007cb4:	000b0513          	mv	a0,s6
    80007cb8:	ffffc097          	auipc	ra,0xffffc
    80007cbc:	6c0080e7          	jalr	1728(ra) # 80004378 <_ZN6Thread5startEv>
        for (int i = 0; i < threadNum; i++) {
    80007cc0:	00000493          	li	s1,0
    80007cc4:	0380006f          	j	80007cfc <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x250>
        Producer(thread_data* _td):Thread(), td(_td) {}
    80007cc8:	00008797          	auipc	a5,0x8
    80007ccc:	9d878793          	addi	a5,a5,-1576 # 8000f6a0 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ProducerE+0x10>
    80007cd0:	00fc3023          	sd	a5,0(s8)
    80007cd4:	019c3823          	sd	s9,16(s8)
                threads[i] = new Producer(data+i);
    80007cd8:	00349793          	slli	a5,s1,0x3
    80007cdc:	00f987b3          	add	a5,s3,a5
    80007ce0:	0187b023          	sd	s8,0(a5)
            threads[i]->start();
    80007ce4:	00349793          	slli	a5,s1,0x3
    80007ce8:	00f987b3          	add	a5,s3,a5
    80007cec:	0007b503          	ld	a0,0(a5)
    80007cf0:	ffffc097          	auipc	ra,0xffffc
    80007cf4:	688080e7          	jalr	1672(ra) # 80004378 <_ZN6Thread5startEv>
        for (int i = 0; i < threadNum; i++) {
    80007cf8:	0014849b          	addiw	s1,s1,1
    80007cfc:	0b24d463          	bge	s1,s2,80007da4 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x2f8>
            data[i].id = i;
    80007d00:	00149793          	slli	a5,s1,0x1
    80007d04:	009787b3          	add	a5,a5,s1
    80007d08:	00379793          	slli	a5,a5,0x3
    80007d0c:	00fa07b3          	add	a5,s4,a5
    80007d10:	0097a023          	sw	s1,0(a5)
            data[i].buffer = buffer;
    80007d14:	0157b423          	sd	s5,8(a5)
            data[i].wait = waitForAll;
    80007d18:	00008717          	auipc	a4,0x8
    80007d1c:	d6873703          	ld	a4,-664(a4) # 8000fa80 <_ZN34ConsumerProducer_CPP_Sync_API_test10waitForAllE>
    80007d20:	00e7b823          	sd	a4,16(a5)
            if(i>0) {
    80007d24:	02905a63          	blez	s1,80007d58 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x2ac>
                threads[i] = new Producer(data+i);
    80007d28:	01800513          	li	a0,24
    80007d2c:	ffffc097          	auipc	ra,0xffffc
    80007d30:	484080e7          	jalr	1156(ra) # 800041b0 <_Znwm>
    80007d34:	00050c13          	mv	s8,a0
    80007d38:	fa0500e3          	beqz	a0,80007cd8 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x22c>
    80007d3c:	00149c93          	slli	s9,s1,0x1
    80007d40:	009c8cb3          	add	s9,s9,s1
    80007d44:	003c9c93          	slli	s9,s9,0x3
    80007d48:	019a0cb3          	add	s9,s4,s9
        Producer(thread_data* _td):Thread(), td(_td) {}
    80007d4c:	ffffc097          	auipc	ra,0xffffc
    80007d50:	700080e7          	jalr	1792(ra) # 8000444c <_ZN6ThreadC1Ev>
    80007d54:	f75ff06f          	j	80007cc8 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x21c>
                threads[i] = new ProducerKeyboard(data+i);
    80007d58:	01800513          	li	a0,24
    80007d5c:	ffffc097          	auipc	ra,0xffffc
    80007d60:	454080e7          	jalr	1108(ra) # 800041b0 <_Znwm>
    80007d64:	00050c13          	mv	s8,a0
    80007d68:	02050663          	beqz	a0,80007d94 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x2e8>
    80007d6c:	00149c93          	slli	s9,s1,0x1
    80007d70:	009c8cb3          	add	s9,s9,s1
    80007d74:	003c9c93          	slli	s9,s9,0x3
    80007d78:	019a0cb3          	add	s9,s4,s9
        ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80007d7c:	ffffc097          	auipc	ra,0xffffc
    80007d80:	6d0080e7          	jalr	1744(ra) # 8000444c <_ZN6ThreadC1Ev>
    80007d84:	00008797          	auipc	a5,0x8
    80007d88:	8f478793          	addi	a5,a5,-1804 # 8000f678 <_ZTVN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboardE+0x10>
    80007d8c:	00fc3023          	sd	a5,0(s8)
    80007d90:	019c3823          	sd	s9,16(s8)
                threads[i] = new ProducerKeyboard(data+i);
    80007d94:	00349793          	slli	a5,s1,0x3
    80007d98:	00f987b3          	add	a5,s3,a5
    80007d9c:	0187b023          	sd	s8,0(a5)
    80007da0:	f45ff06f          	j	80007ce4 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x238>
        Thread::dispatch();
    80007da4:	ffffc097          	auipc	ra,0xffffc
    80007da8:	604080e7          	jalr	1540(ra) # 800043a8 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80007dac:	00000493          	li	s1,0
    80007db0:	00994e63          	blt	s2,s1,80007dcc <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x320>
            waitForAll->wait();
    80007db4:	00008517          	auipc	a0,0x8
    80007db8:	ccc53503          	ld	a0,-820(a0) # 8000fa80 <_ZN34ConsumerProducer_CPP_Sync_API_test10waitForAllE>
    80007dbc:	ffffc097          	auipc	ra,0xffffc
    80007dc0:	750080e7          	jalr	1872(ra) # 8000450c <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80007dc4:	0014849b          	addiw	s1,s1,1
    80007dc8:	fe9ff06f          	j	80007db0 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x304>
        for (int i = 0; i < threadNum; i++) {
    80007dcc:	00000493          	li	s1,0
    80007dd0:	0080006f          	j	80007dd8 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x32c>
    80007dd4:	0014849b          	addiw	s1,s1,1
    80007dd8:	0324d263          	bge	s1,s2,80007dfc <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x350>
            delete threads[i];
    80007ddc:	00349793          	slli	a5,s1,0x3
    80007de0:	00f987b3          	add	a5,s3,a5
    80007de4:	0007b503          	ld	a0,0(a5)
    80007de8:	fe0506e3          	beqz	a0,80007dd4 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x328>
    80007dec:	00053783          	ld	a5,0(a0)
    80007df0:	0087b783          	ld	a5,8(a5)
    80007df4:	000780e7          	jalr	a5
    80007df8:	fddff06f          	j	80007dd4 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x328>
        delete consumerThread;
    80007dfc:	000b0a63          	beqz	s6,80007e10 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x364>
    80007e00:	000b3783          	ld	a5,0(s6)
    80007e04:	0087b783          	ld	a5,8(a5)
    80007e08:	000b0513          	mv	a0,s6
    80007e0c:	000780e7          	jalr	a5
        delete waitForAll;
    80007e10:	00008517          	auipc	a0,0x8
    80007e14:	c7053503          	ld	a0,-912(a0) # 8000fa80 <_ZN34ConsumerProducer_CPP_Sync_API_test10waitForAllE>
    80007e18:	00050863          	beqz	a0,80007e28 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x37c>
    80007e1c:	00053783          	ld	a5,0(a0)
    80007e20:	0087b783          	ld	a5,8(a5)
    80007e24:	000780e7          	jalr	a5
        delete buffer;
    80007e28:	000a8e63          	beqz	s5,80007e44 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x398>
    80007e2c:	000a8513          	mv	a0,s5
    80007e30:	ffffe097          	auipc	ra,0xffffe
    80007e34:	52c080e7          	jalr	1324(ra) # 8000635c <_ZN9BufferCPPD1Ev>
    80007e38:	000a8513          	mv	a0,s5
    80007e3c:	ffffc097          	auipc	ra,0xffffc
    80007e40:	3c4080e7          	jalr	964(ra) # 80004200 <_ZdlPv>
    80007e44:	000b8113          	mv	sp,s7

    }
    80007e48:	f8040113          	addi	sp,s0,-128
    80007e4c:	07813083          	ld	ra,120(sp)
    80007e50:	07013403          	ld	s0,112(sp)
    80007e54:	06813483          	ld	s1,104(sp)
    80007e58:	06013903          	ld	s2,96(sp)
    80007e5c:	05813983          	ld	s3,88(sp)
    80007e60:	05013a03          	ld	s4,80(sp)
    80007e64:	04813a83          	ld	s5,72(sp)
    80007e68:	04013b03          	ld	s6,64(sp)
    80007e6c:	03813b83          	ld	s7,56(sp)
    80007e70:	03013c03          	ld	s8,48(sp)
    80007e74:	02813c83          	ld	s9,40(sp)
    80007e78:	08010113          	addi	sp,sp,128
    80007e7c:	00008067          	ret
    80007e80:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80007e84:	000a8513          	mv	a0,s5
    80007e88:	ffffc097          	auipc	ra,0xffffc
    80007e8c:	378080e7          	jalr	888(ra) # 80004200 <_ZdlPv>
    80007e90:	00048513          	mv	a0,s1
    80007e94:	000cc097          	auipc	ra,0xcc
    80007e98:	1c4080e7          	jalr	452(ra) # 800d4058 <_Unwind_Resume>
    80007e9c:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80007ea0:	00048513          	mv	a0,s1
    80007ea4:	ffffc097          	auipc	ra,0xffffc
    80007ea8:	35c080e7          	jalr	860(ra) # 80004200 <_ZdlPv>
    80007eac:	00090513          	mv	a0,s2
    80007eb0:	000cc097          	auipc	ra,0xcc
    80007eb4:	1a8080e7          	jalr	424(ra) # 800d4058 <_Unwind_Resume>
    80007eb8:	00050493          	mv	s1,a0
        consumerThread = new Consumer(data+threadNum);
    80007ebc:	000b0513          	mv	a0,s6
    80007ec0:	ffffc097          	auipc	ra,0xffffc
    80007ec4:	340080e7          	jalr	832(ra) # 80004200 <_ZdlPv>
    80007ec8:	00048513          	mv	a0,s1
    80007ecc:	000cc097          	auipc	ra,0xcc
    80007ed0:	18c080e7          	jalr	396(ra) # 800d4058 <_Unwind_Resume>
    80007ed4:	00050493          	mv	s1,a0
                threads[i] = new Producer(data+i);
    80007ed8:	000c0513          	mv	a0,s8
    80007edc:	ffffc097          	auipc	ra,0xffffc
    80007ee0:	324080e7          	jalr	804(ra) # 80004200 <_ZdlPv>
    80007ee4:	00048513          	mv	a0,s1
    80007ee8:	000cc097          	auipc	ra,0xcc
    80007eec:	170080e7          	jalr	368(ra) # 800d4058 <_Unwind_Resume>
    80007ef0:	00050493          	mv	s1,a0
                threads[i] = new ProducerKeyboard(data+i);
    80007ef4:	000c0513          	mv	a0,s8
    80007ef8:	ffffc097          	auipc	ra,0xffffc
    80007efc:	308080e7          	jalr	776(ra) # 80004200 <_ZdlPv>
    80007f00:	00048513          	mv	a0,s1
    80007f04:	000cc097          	auipc	ra,0xcc
    80007f08:	154080e7          	jalr	340(ra) # 800d4058 <_Unwind_Resume>

0000000080007f0c <_ZN22ThreadSleep_C_API_test12testSleepingEv>:

    void testSleeping() {
    80007f0c:	fc010113          	addi	sp,sp,-64
    80007f10:	02113c23          	sd	ra,56(sp)
    80007f14:	02813823          	sd	s0,48(sp)
    80007f18:	02913423          	sd	s1,40(sp)
    80007f1c:	04010413          	addi	s0,sp,64
        const int sleepy_thread_count = 2;
        time_t sleep_times[sleepy_thread_count] = {10, 20};
    80007f20:	00a00793          	li	a5,10
    80007f24:	fcf43823          	sd	a5,-48(s0)
    80007f28:	01400793          	li	a5,20
    80007f2c:	fcf43c23          	sd	a5,-40(s0)
        thread_t sleepyThread[sleepy_thread_count];

        for (int i = 0; i < sleepy_thread_count; i++) {
    80007f30:	00000493          	li	s1,0
    80007f34:	02c0006f          	j	80007f60 <_ZN22ThreadSleep_C_API_test12testSleepingEv+0x54>
            thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80007f38:	00349793          	slli	a5,s1,0x3
    80007f3c:	fd040613          	addi	a2,s0,-48
    80007f40:	00f60633          	add	a2,a2,a5
    80007f44:	fffff597          	auipc	a1,0xfffff
    80007f48:	92058593          	addi	a1,a1,-1760 # 80006864 <_ZN22ThreadSleep_C_API_test9sleepyRunEPv>
    80007f4c:	fc040513          	addi	a0,s0,-64
    80007f50:	00f50533          	add	a0,a0,a5
    80007f54:	ffff9097          	auipc	ra,0xffff9
    80007f58:	3a8080e7          	jalr	936(ra) # 800012fc <thread_create>
        for (int i = 0; i < sleepy_thread_count; i++) {
    80007f5c:	0014849b          	addiw	s1,s1,1
    80007f60:	00100793          	li	a5,1
    80007f64:	fc97dae3          	bge	a5,s1,80007f38 <_ZN22ThreadSleep_C_API_test12testSleepingEv+0x2c>
        }

        while (!(finished[0] && finished[1])) {}
    80007f68:	00008797          	auipc	a5,0x8
    80007f6c:	b007c783          	lbu	a5,-1280(a5) # 8000fa68 <_ZN22ThreadSleep_C_API_test8finishedE>
    80007f70:	fe078ce3          	beqz	a5,80007f68 <_ZN22ThreadSleep_C_API_test12testSleepingEv+0x5c>
    80007f74:	00008797          	auipc	a5,0x8
    80007f78:	af57c783          	lbu	a5,-1291(a5) # 8000fa69 <_ZN22ThreadSleep_C_API_test8finishedE+0x1>
    80007f7c:	fe0786e3          	beqz	a5,80007f68 <_ZN22ThreadSleep_C_API_test12testSleepingEv+0x5c>
    }
    80007f80:	03813083          	ld	ra,56(sp)
    80007f84:	03013403          	ld	s0,48(sp)
    80007f88:	02813483          	ld	s1,40(sp)
    80007f8c:	04010113          	addi	sp,sp,64
    80007f90:	00008067          	ret

0000000080007f94 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80007f94:	f8010113          	addi	sp,sp,-128
    80007f98:	06113c23          	sd	ra,120(sp)
    80007f9c:	06813823          	sd	s0,112(sp)
    80007fa0:	06913423          	sd	s1,104(sp)
    80007fa4:	07213023          	sd	s2,96(sp)
    80007fa8:	05313c23          	sd	s3,88(sp)
    80007fac:	05413823          	sd	s4,80(sp)
    80007fb0:	05513423          	sd	s5,72(sp)
    80007fb4:	05613023          	sd	s6,64(sp)
    80007fb8:	03713c23          	sd	s7,56(sp)
    80007fbc:	03813823          	sd	s8,48(sp)
    80007fc0:	03913423          	sd	s9,40(sp)
    80007fc4:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80007fc8:	00010b93          	mv	s7,sp
        printString("Unesite broj proizvodjaca?\n");
    80007fcc:	00004517          	auipc	a0,0x4
    80007fd0:	61c50513          	addi	a0,a0,1564 # 8000c5e8 <CONSOLE_STATUS+0x5d8>
    80007fd4:	ffffe097          	auipc	ra,0xffffe
    80007fd8:	dd4080e7          	jalr	-556(ra) # 80005da8 <_Z11printStringPKc>
        getString(input, 30);
    80007fdc:	01e00593          	li	a1,30
    80007fe0:	f8040493          	addi	s1,s0,-128
    80007fe4:	00048513          	mv	a0,s1
    80007fe8:	ffffe097          	auipc	ra,0xffffe
    80007fec:	e3c080e7          	jalr	-452(ra) # 80005e24 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80007ff0:	00048513          	mv	a0,s1
    80007ff4:	ffffe097          	auipc	ra,0xffffe
    80007ff8:	efc080e7          	jalr	-260(ra) # 80005ef0 <_Z11stringToIntPKc>
    80007ffc:	00050913          	mv	s2,a0
        printString("Unesite velicinu bafera?\n");
    80008000:	00004517          	auipc	a0,0x4
    80008004:	60850513          	addi	a0,a0,1544 # 8000c608 <CONSOLE_STATUS+0x5f8>
    80008008:	ffffe097          	auipc	ra,0xffffe
    8000800c:	da0080e7          	jalr	-608(ra) # 80005da8 <_Z11printStringPKc>
        getString(input, 30);
    80008010:	01e00593          	li	a1,30
    80008014:	00048513          	mv	a0,s1
    80008018:	ffffe097          	auipc	ra,0xffffe
    8000801c:	e0c080e7          	jalr	-500(ra) # 80005e24 <_Z9getStringPci>
        n = stringToInt(input);
    80008020:	00048513          	mv	a0,s1
    80008024:	ffffe097          	auipc	ra,0xffffe
    80008028:	ecc080e7          	jalr	-308(ra) # 80005ef0 <_Z11stringToIntPKc>
    8000802c:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80008030:	00004517          	auipc	a0,0x4
    80008034:	5f850513          	addi	a0,a0,1528 # 8000c628 <CONSOLE_STATUS+0x618>
    80008038:	ffffe097          	auipc	ra,0xffffe
    8000803c:	d70080e7          	jalr	-656(ra) # 80005da8 <_Z11printStringPKc>
    80008040:	00000613          	li	a2,0
    80008044:	00a00593          	li	a1,10
    80008048:	00090513          	mv	a0,s2
    8000804c:	ffffe097          	auipc	ra,0xffffe
    80008050:	ef4080e7          	jalr	-268(ra) # 80005f40 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80008054:	00004517          	auipc	a0,0x4
    80008058:	5ec50513          	addi	a0,a0,1516 # 8000c640 <CONSOLE_STATUS+0x630>
    8000805c:	ffffe097          	auipc	ra,0xffffe
    80008060:	d4c080e7          	jalr	-692(ra) # 80005da8 <_Z11printStringPKc>
    80008064:	00000613          	li	a2,0
    80008068:	00a00593          	li	a1,10
    8000806c:	00048513          	mv	a0,s1
    80008070:	ffffe097          	auipc	ra,0xffffe
    80008074:	ed0080e7          	jalr	-304(ra) # 80005f40 <_Z8printIntiii>
        printString(".\n");
    80008078:	00004517          	auipc	a0,0x4
    8000807c:	5e050513          	addi	a0,a0,1504 # 8000c658 <CONSOLE_STATUS+0x648>
    80008080:	ffffe097          	auipc	ra,0xffffe
    80008084:	d28080e7          	jalr	-728(ra) # 80005da8 <_Z11printStringPKc>
        if(threadNum > n) {
    80008088:	0324c663          	blt	s1,s2,800080b4 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x120>
        } else if (threadNum < 1) {
    8000808c:	03205e63          	blez	s2,800080c8 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x134>
        BufferCPP *buffer = new BufferCPP(n);
    80008090:	03800513          	li	a0,56
    80008094:	ffffc097          	auipc	ra,0xffffc
    80008098:	11c080e7          	jalr	284(ra) # 800041b0 <_Znwm>
    8000809c:	00050a93          	mv	s5,a0
    800080a0:	04050063          	beqz	a0,800080e0 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x14c>
    800080a4:	00048593          	mv	a1,s1
    800080a8:	ffffe097          	auipc	ra,0xffffe
    800080ac:	fac080e7          	jalr	-84(ra) # 80006054 <_ZN9BufferCPPC1Ei>
    800080b0:	0300006f          	j	800080e0 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x14c>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800080b4:	00004517          	auipc	a0,0x4
    800080b8:	5ac50513          	addi	a0,a0,1452 # 8000c660 <CONSOLE_STATUS+0x650>
    800080bc:	ffffe097          	auipc	ra,0xffffe
    800080c0:	cec080e7          	jalr	-788(ra) # 80005da8 <_Z11printStringPKc>
            return;
    800080c4:	0140006f          	j	800080d8 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x144>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    800080c8:	00004517          	auipc	a0,0x4
    800080cc:	5d850513          	addi	a0,a0,1496 # 8000c6a0 <CONSOLE_STATUS+0x690>
    800080d0:	ffffe097          	auipc	ra,0xffffe
    800080d4:	cd8080e7          	jalr	-808(ra) # 80005da8 <_Z11printStringPKc>
            return;
    800080d8:	000b8113          	mv	sp,s7
    800080dc:	24c0006f          	j	80008328 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x394>
        waitForAll = new Semaphore(0);
    800080e0:	01000513          	li	a0,16
    800080e4:	ffffc097          	auipc	ra,0xffffc
    800080e8:	0cc080e7          	jalr	204(ra) # 800041b0 <_Znwm>
    800080ec:	00050493          	mv	s1,a0
    800080f0:	00050863          	beqz	a0,80008100 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x16c>
    800080f4:	00000593          	li	a1,0
    800080f8:	ffffc097          	auipc	ra,0xffffc
    800080fc:	3d4080e7          	jalr	980(ra) # 800044cc <_ZN9SemaphoreC1Ej>
    80008100:	00008717          	auipc	a4,0x8
    80008104:	95870713          	addi	a4,a4,-1704 # 8000fa58 <_ZN18Threads_C_API_test9finishedEE>
    80008108:	02973823          	sd	s1,48(a4)
        Thread *producers[threadNum];
    8000810c:	00391793          	slli	a5,s2,0x3
    80008110:	00f78793          	addi	a5,a5,15
    80008114:	ff07f793          	andi	a5,a5,-16
    80008118:	40f10133          	sub	sp,sp,a5
    8000811c:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80008120:	0019069b          	addiw	a3,s2,1
    80008124:	00169793          	slli	a5,a3,0x1
    80008128:	00d787b3          	add	a5,a5,a3
    8000812c:	00379793          	slli	a5,a5,0x3
    80008130:	00f78793          	addi	a5,a5,15
    80008134:	ff07f793          	andi	a5,a5,-16
    80008138:	40f10133          	sub	sp,sp,a5
    8000813c:	00010993          	mv	s3,sp
        threadData[threadNum].id = threadNum;
    80008140:	00191793          	slli	a5,s2,0x1
    80008144:	012787b3          	add	a5,a5,s2
    80008148:	00379793          	slli	a5,a5,0x3
    8000814c:	00f987b3          	add	a5,s3,a5
    80008150:	0127a023          	sw	s2,0(a5)
        threadData[threadNum].buffer = buffer;
    80008154:	0157b423          	sd	s5,8(a5)
        threadData[threadNum].sem = waitForAll;
    80008158:	03073703          	ld	a4,48(a4)
    8000815c:	00e7b823          	sd	a4,16(a5)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80008160:	01800513          	li	a0,24
    80008164:	ffffc097          	auipc	ra,0xffffc
    80008168:	04c080e7          	jalr	76(ra) # 800041b0 <_Znwm>
    8000816c:	00050b13          	mv	s6,a0
    80008170:	02050663          	beqz	a0,8000819c <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x208>
    80008174:	00191493          	slli	s1,s2,0x1
    80008178:	012484b3          	add	s1,s1,s2
    8000817c:	00349493          	slli	s1,s1,0x3
    80008180:	009984b3          	add	s1,s3,s1
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80008184:	ffffc097          	auipc	ra,0xffffc
    80008188:	2c8080e7          	jalr	712(ra) # 8000444c <_ZN6ThreadC1Ev>
    8000818c:	00007797          	auipc	a5,0x7
    80008190:	5b478793          	addi	a5,a5,1460 # 8000f740 <_ZTVN28ConsumerProducerCPP_API_test8ConsumerE+0x10>
    80008194:	00fb3023          	sd	a5,0(s6)
    80008198:	009b3823          	sd	s1,16(s6)
        consumer->start();
    8000819c:	000b0513          	mv	a0,s6
    800081a0:	ffffc097          	auipc	ra,0xffffc
    800081a4:	1d8080e7          	jalr	472(ra) # 80004378 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    800081a8:	0009a023          	sw	zero,0(s3)
        threadData[0].buffer = buffer;
    800081ac:	0159b423          	sd	s5,8(s3)
        threadData[0].sem = waitForAll;
    800081b0:	00008797          	auipc	a5,0x8
    800081b4:	8d87b783          	ld	a5,-1832(a5) # 8000fa88 <_ZN28ConsumerProducerCPP_API_test10waitForAllE>
    800081b8:	00f9b823          	sd	a5,16(s3)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800081bc:	01800513          	li	a0,24
    800081c0:	ffffc097          	auipc	ra,0xffffc
    800081c4:	ff0080e7          	jalr	-16(ra) # 800041b0 <_Znwm>
    800081c8:	00050493          	mv	s1,a0
    800081cc:	00050e63          	beqz	a0,800081e8 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x254>
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800081d0:	ffffc097          	auipc	ra,0xffffc
    800081d4:	27c080e7          	jalr	636(ra) # 8000444c <_ZN6ThreadC1Ev>
    800081d8:	00007797          	auipc	a5,0x7
    800081dc:	51878793          	addi	a5,a5,1304 # 8000f6f0 <_ZTVN28ConsumerProducerCPP_API_test16ProducerKeyboradE+0x10>
    800081e0:	00f4b023          	sd	a5,0(s1)
    800081e4:	0134b823          	sd	s3,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800081e8:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    800081ec:	00048513          	mv	a0,s1
    800081f0:	ffffc097          	auipc	ra,0xffffc
    800081f4:	188080e7          	jalr	392(ra) # 80004378 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800081f8:	00100493          	li	s1,1
    800081fc:	0300006f          	j	8000822c <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x298>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80008200:	00007797          	auipc	a5,0x7
    80008204:	51878793          	addi	a5,a5,1304 # 8000f718 <_ZTVN28ConsumerProducerCPP_API_test8ProducerE+0x10>
    80008208:	00fc3023          	sd	a5,0(s8)
    8000820c:	019c3823          	sd	s9,16(s8)
            producers[i] = new Producer(&threadData[i]);
    80008210:	00349793          	slli	a5,s1,0x3
    80008214:	00fa07b3          	add	a5,s4,a5
    80008218:	0187b023          	sd	s8,0(a5)
            producers[i]->start();
    8000821c:	000c0513          	mv	a0,s8
    80008220:	ffffc097          	auipc	ra,0xffffc
    80008224:	158080e7          	jalr	344(ra) # 80004378 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80008228:	0014849b          	addiw	s1,s1,1
    8000822c:	0524dc63          	bge	s1,s2,80008284 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x2f0>
            threadData[i].id = i;
    80008230:	00149793          	slli	a5,s1,0x1
    80008234:	009787b3          	add	a5,a5,s1
    80008238:	00379793          	slli	a5,a5,0x3
    8000823c:	00f987b3          	add	a5,s3,a5
    80008240:	0097a023          	sw	s1,0(a5)
            threadData[i].buffer = buffer;
    80008244:	0157b423          	sd	s5,8(a5)
            threadData[i].sem = waitForAll;
    80008248:	00008717          	auipc	a4,0x8
    8000824c:	84073703          	ld	a4,-1984(a4) # 8000fa88 <_ZN28ConsumerProducerCPP_API_test10waitForAllE>
    80008250:	00e7b823          	sd	a4,16(a5)
            producers[i] = new Producer(&threadData[i]);
    80008254:	01800513          	li	a0,24
    80008258:	ffffc097          	auipc	ra,0xffffc
    8000825c:	f58080e7          	jalr	-168(ra) # 800041b0 <_Znwm>
    80008260:	00050c13          	mv	s8,a0
    80008264:	fa0506e3          	beqz	a0,80008210 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x27c>
    80008268:	00149c93          	slli	s9,s1,0x1
    8000826c:	009c8cb3          	add	s9,s9,s1
    80008270:	003c9c93          	slli	s9,s9,0x3
    80008274:	01998cb3          	add	s9,s3,s9
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80008278:	ffffc097          	auipc	ra,0xffffc
    8000827c:	1d4080e7          	jalr	468(ra) # 8000444c <_ZN6ThreadC1Ev>
    80008280:	f81ff06f          	j	80008200 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x26c>
        Thread::dispatch();
    80008284:	ffffc097          	auipc	ra,0xffffc
    80008288:	124080e7          	jalr	292(ra) # 800043a8 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    8000828c:	00000493          	li	s1,0
    80008290:	00994e63          	blt	s2,s1,800082ac <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x318>
            waitForAll->wait();
    80008294:	00007517          	auipc	a0,0x7
    80008298:	7f453503          	ld	a0,2036(a0) # 8000fa88 <_ZN28ConsumerProducerCPP_API_test10waitForAllE>
    8000829c:	ffffc097          	auipc	ra,0xffffc
    800082a0:	270080e7          	jalr	624(ra) # 8000450c <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    800082a4:	0014849b          	addiw	s1,s1,1
    800082a8:	fe9ff06f          	j	80008290 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x2fc>
        delete waitForAll;
    800082ac:	00007517          	auipc	a0,0x7
    800082b0:	7dc53503          	ld	a0,2012(a0) # 8000fa88 <_ZN28ConsumerProducerCPP_API_test10waitForAllE>
    800082b4:	00050863          	beqz	a0,800082c4 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x330>
    800082b8:	00053783          	ld	a5,0(a0)
    800082bc:	0087b783          	ld	a5,8(a5)
    800082c0:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    800082c4:	00000493          	li	s1,0
    800082c8:	0080006f          	j	800082d0 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x33c>
        for (int i = 0; i < threadNum; i++) {
    800082cc:	0014849b          	addiw	s1,s1,1
    800082d0:	0324d263          	bge	s1,s2,800082f4 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x360>
            delete producers[i];
    800082d4:	00349793          	slli	a5,s1,0x3
    800082d8:	00fa07b3          	add	a5,s4,a5
    800082dc:	0007b503          	ld	a0,0(a5)
    800082e0:	fe0506e3          	beqz	a0,800082cc <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x338>
    800082e4:	00053783          	ld	a5,0(a0)
    800082e8:	0087b783          	ld	a5,8(a5)
    800082ec:	000780e7          	jalr	a5
    800082f0:	fddff06f          	j	800082cc <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x338>
        delete consumer;
    800082f4:	000b0a63          	beqz	s6,80008308 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x374>
    800082f8:	000b3783          	ld	a5,0(s6)
    800082fc:	0087b783          	ld	a5,8(a5)
    80008300:	000b0513          	mv	a0,s6
    80008304:	000780e7          	jalr	a5
        delete buffer;
    80008308:	000a8e63          	beqz	s5,80008324 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x390>
    8000830c:	000a8513          	mv	a0,s5
    80008310:	ffffe097          	auipc	ra,0xffffe
    80008314:	04c080e7          	jalr	76(ra) # 8000635c <_ZN9BufferCPPD1Ev>
    80008318:	000a8513          	mv	a0,s5
    8000831c:	ffffc097          	auipc	ra,0xffffc
    80008320:	ee4080e7          	jalr	-284(ra) # 80004200 <_ZdlPv>
    80008324:	000b8113          	mv	sp,s7
    }
    80008328:	f8040113          	addi	sp,s0,-128
    8000832c:	07813083          	ld	ra,120(sp)
    80008330:	07013403          	ld	s0,112(sp)
    80008334:	06813483          	ld	s1,104(sp)
    80008338:	06013903          	ld	s2,96(sp)
    8000833c:	05813983          	ld	s3,88(sp)
    80008340:	05013a03          	ld	s4,80(sp)
    80008344:	04813a83          	ld	s5,72(sp)
    80008348:	04013b03          	ld	s6,64(sp)
    8000834c:	03813b83          	ld	s7,56(sp)
    80008350:	03013c03          	ld	s8,48(sp)
    80008354:	02813c83          	ld	s9,40(sp)
    80008358:	08010113          	addi	sp,sp,128
    8000835c:	00008067          	ret
    80008360:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80008364:	000a8513          	mv	a0,s5
    80008368:	ffffc097          	auipc	ra,0xffffc
    8000836c:	e98080e7          	jalr	-360(ra) # 80004200 <_ZdlPv>
    80008370:	00048513          	mv	a0,s1
    80008374:	000cc097          	auipc	ra,0xcc
    80008378:	ce4080e7          	jalr	-796(ra) # 800d4058 <_Unwind_Resume>
    8000837c:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80008380:	00048513          	mv	a0,s1
    80008384:	ffffc097          	auipc	ra,0xffffc
    80008388:	e7c080e7          	jalr	-388(ra) # 80004200 <_ZdlPv>
    8000838c:	00090513          	mv	a0,s2
    80008390:	000cc097          	auipc	ra,0xcc
    80008394:	cc8080e7          	jalr	-824(ra) # 800d4058 <_Unwind_Resume>
    80008398:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    8000839c:	000b0513          	mv	a0,s6
    800083a0:	ffffc097          	auipc	ra,0xffffc
    800083a4:	e60080e7          	jalr	-416(ra) # 80004200 <_ZdlPv>
    800083a8:	00048513          	mv	a0,s1
    800083ac:	000cc097          	auipc	ra,0xcc
    800083b0:	cac080e7          	jalr	-852(ra) # 800d4058 <_Unwind_Resume>
    800083b4:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800083b8:	00048513          	mv	a0,s1
    800083bc:	ffffc097          	auipc	ra,0xffffc
    800083c0:	e44080e7          	jalr	-444(ra) # 80004200 <_ZdlPv>
    800083c4:	00090513          	mv	a0,s2
    800083c8:	000cc097          	auipc	ra,0xcc
    800083cc:	c90080e7          	jalr	-880(ra) # 800d4058 <_Unwind_Resume>
    800083d0:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    800083d4:	000c0513          	mv	a0,s8
    800083d8:	ffffc097          	auipc	ra,0xffffc
    800083dc:	e28080e7          	jalr	-472(ra) # 80004200 <_ZdlPv>
    800083e0:	00048513          	mv	a0,s1
    800083e4:	000cc097          	auipc	ra,0xcc
    800083e8:	c74080e7          	jalr	-908(ra) # 800d4058 <_Unwind_Resume>

00000000800083ec <_Z11test_adresev>:
class Class1 {
public:
    char c;
};

void test_adrese(){
    800083ec:	fd010113          	addi	sp,sp,-48
    800083f0:	02113423          	sd	ra,40(sp)
    800083f4:	02813023          	sd	s0,32(sp)
    800083f8:	00913c23          	sd	s1,24(sp)
    800083fc:	01213823          	sd	s2,16(sp)
    80008400:	01313423          	sd	s3,8(sp)
    80008404:	03010413          	addi	s0,sp,48
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    80008408:	00000693          	li	a3,0
    8000840c:	00000613          	li	a2,0
    80008410:	00100593          	li	a1,1
    80008414:	00004517          	auipc	a0,0x4
    80008418:	2bc50513          	addi	a0,a0,700 # 8000c6d0 <CONSOLE_STATUS+0x6c0>
    8000841c:	ffffd097          	auipc	ra,0xffffd
    80008420:	3a8080e7          	jalr	936(ra) # 800057c4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80008424:	00050993          	mv	s3,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80008428:	00004517          	auipc	a0,0x4
    8000842c:	2b050513          	addi	a0,a0,688 # 8000c6d8 <CONSOLE_STATUS+0x6c8>
    80008430:	ffffe097          	auipc	ra,0xffffe
    80008434:	978080e7          	jalr	-1672(ra) # 80005da8 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80008438:	00098513          	mv	a0,s3
    8000843c:	ffffd097          	auipc	ra,0xffffd
    80008440:	544080e7          	jalr	1348(ra) # 80005980 <_Z15kmem_cache_infoP12kmem_cache_s>
    const int arrSize = 1000;
    Class1* arr[arrSize];
    for (int i = 0; i < arrSize; i++) {
    80008444:	00000493          	li	s1,0
    80008448:	0180006f          	j	80008460 <_Z11test_adresev+0x74>
        printString(") ");
        printInt((size_t)arr[i]);
        if (i % 100 == 0)
            printString("\n");
        else
            printString(" ");
    8000844c:	00004517          	auipc	a0,0x4
    80008450:	30450513          	addi	a0,a0,772 # 8000c750 <CONSOLE_STATUS+0x740>
    80008454:	ffffe097          	auipc	ra,0xffffe
    80008458:	954080e7          	jalr	-1708(ra) # 80005da8 <_Z11printStringPKc>
    for (int i = 0; i < arrSize; i++) {
    8000845c:	0014849b          	addiw	s1,s1,1
    80008460:	3e700793          	li	a5,999
    80008464:	0697ce63          	blt	a5,s1,800084e0 <_Z11test_adresev+0xf4>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    80008468:	00098513          	mv	a0,s3
    8000846c:	ffffd097          	auipc	ra,0xffffd
    80008470:	400080e7          	jalr	1024(ra) # 8000586c <_Z16kmem_cache_allocP12kmem_cache_s>
    80008474:	00050913          	mv	s2,a0
        printString("(");
    80008478:	00004517          	auipc	a0,0x4
    8000847c:	2b050513          	addi	a0,a0,688 # 8000c728 <CONSOLE_STATUS+0x718>
    80008480:	ffffe097          	auipc	ra,0xffffe
    80008484:	928080e7          	jalr	-1752(ra) # 80005da8 <_Z11printStringPKc>
        printInt(i);
    80008488:	00000613          	li	a2,0
    8000848c:	00a00593          	li	a1,10
    80008490:	00048513          	mv	a0,s1
    80008494:	ffffe097          	auipc	ra,0xffffe
    80008498:	aac080e7          	jalr	-1364(ra) # 80005f40 <_Z8printIntiii>
        printString(") ");
    8000849c:	00004517          	auipc	a0,0x4
    800084a0:	29450513          	addi	a0,a0,660 # 8000c730 <CONSOLE_STATUS+0x720>
    800084a4:	ffffe097          	auipc	ra,0xffffe
    800084a8:	904080e7          	jalr	-1788(ra) # 80005da8 <_Z11printStringPKc>
        printInt((size_t)arr[i]);
    800084ac:	00000613          	li	a2,0
    800084b0:	00a00593          	li	a1,10
    800084b4:	0009051b          	sext.w	a0,s2
    800084b8:	ffffe097          	auipc	ra,0xffffe
    800084bc:	a88080e7          	jalr	-1400(ra) # 80005f40 <_Z8printIntiii>
        if (i % 100 == 0)
    800084c0:	06400793          	li	a5,100
    800084c4:	02f4e7bb          	remw	a5,s1,a5
    800084c8:	f80792e3          	bnez	a5,8000844c <_Z11test_adresev+0x60>
            printString("\n");
    800084cc:	00004517          	auipc	a0,0x4
    800084d0:	d7c50513          	addi	a0,a0,-644 # 8000c248 <CONSOLE_STATUS+0x238>
    800084d4:	ffffe097          	auipc	ra,0xffffe
    800084d8:	8d4080e7          	jalr	-1836(ra) # 80005da8 <_Z11printStringPKc>
    800084dc:	f81ff06f          	j	8000845c <_Z11test_adresev+0x70>
    }
    printString("\n");
    800084e0:	00004517          	auipc	a0,0x4
    800084e4:	d6850513          	addi	a0,a0,-664 # 8000c248 <CONSOLE_STATUS+0x238>
    800084e8:	ffffe097          	auipc	ra,0xffffe
    800084ec:	8c0080e7          	jalr	-1856(ra) # 80005da8 <_Z11printStringPKc>
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    800084f0:	00004517          	auipc	a0,0x4
    800084f4:	1e850513          	addi	a0,a0,488 # 8000c6d8 <CONSOLE_STATUS+0x6c8>
    800084f8:	ffffe097          	auipc	ra,0xffffe
    800084fc:	8b0080e7          	jalr	-1872(ra) # 80005da8 <_Z11printStringPKc>
}
    80008500:	02813083          	ld	ra,40(sp)
    80008504:	02013403          	ld	s0,32(sp)
    80008508:	01813483          	ld	s1,24(sp)
    8000850c:	01013903          	ld	s2,16(sp)
    80008510:	00813983          	ld	s3,8(sp)
    80008514:	03010113          	addi	sp,sp,48
    80008518:	00008067          	ret

000000008000851c <_Z22test_pristup_parametruv>:

void test_pristup_parametru(){
    8000851c:	fd010113          	addi	sp,sp,-48
    80008520:	02113423          	sd	ra,40(sp)
    80008524:	02813023          	sd	s0,32(sp)
    80008528:	00913c23          	sd	s1,24(sp)
    8000852c:	01213823          	sd	s2,16(sp)
    80008530:	01313423          	sd	s3,8(sp)
    80008534:	01413023          	sd	s4,0(sp)
    80008538:	03010413          	addi	s0,sp,48
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    8000853c:	00000693          	li	a3,0
    80008540:	00000613          	li	a2,0
    80008544:	00100593          	li	a1,1
    80008548:	00004517          	auipc	a0,0x4
    8000854c:	18850513          	addi	a0,a0,392 # 8000c6d0 <CONSOLE_STATUS+0x6c0>
    80008550:	ffffd097          	auipc	ra,0xffffd
    80008554:	274080e7          	jalr	628(ra) # 800057c4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80008558:	00050a13          	mv	s4,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    8000855c:	00004517          	auipc	a0,0x4
    80008560:	17c50513          	addi	a0,a0,380 # 8000c6d8 <CONSOLE_STATUS+0x6c8>
    80008564:	ffffe097          	auipc	ra,0xffffe
    80008568:	844080e7          	jalr	-1980(ra) # 80005da8 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    8000856c:	000a0513          	mv	a0,s4
    80008570:	ffffd097          	auipc	ra,0xffffd
    80008574:	410080e7          	jalr	1040(ra) # 80005980 <_Z15kmem_cache_infoP12kmem_cache_s>
    const int arrSize = 8000;
    Class1* arr[arrSize];
    char c = 'a';
    for (int i = 0; i < arrSize; i++) {
    80008578:	00000913          	li	s2,0
    char c = 'a';
    8000857c:	06100993          	li	s3,97
    80008580:	0200006f          	j	800085a0 <_Z22test_pristup_parametruv+0x84>
        printString("(");
        printInt(i);
        printString(") ");
        arr[i]->c = c;
        if(c++ == 'a' + 30){
            c = 'a';
    80008584:	06100993          	li	s3,97
    80008588:	0800006f          	j	80008608 <_Z22test_pristup_parametruv+0xec>
        printInt((size_t)arr[i]);
        printString("\t");
        if (i % 100 == 0)
            printString("\n");
        else
            printString(" ");
    8000858c:	00004517          	auipc	a0,0x4
    80008590:	1c450513          	addi	a0,a0,452 # 8000c750 <CONSOLE_STATUS+0x740>
    80008594:	ffffe097          	auipc	ra,0xffffe
    80008598:	814080e7          	jalr	-2028(ra) # 80005da8 <_Z11printStringPKc>
    for (int i = 0; i < arrSize; i++) {
    8000859c:	0019091b          	addiw	s2,s2,1
    800085a0:	000027b7          	lui	a5,0x2
    800085a4:	f3f78793          	addi	a5,a5,-193 # 1f3f <_entry-0x7fffe0c1>
    800085a8:	0d27cc63          	blt	a5,s2,80008680 <_Z22test_pristup_parametruv+0x164>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    800085ac:	000a0513          	mv	a0,s4
    800085b0:	ffffd097          	auipc	ra,0xffffd
    800085b4:	2bc080e7          	jalr	700(ra) # 8000586c <_Z16kmem_cache_allocP12kmem_cache_s>
    800085b8:	00050493          	mv	s1,a0
        printString("(");
    800085bc:	00004517          	auipc	a0,0x4
    800085c0:	16c50513          	addi	a0,a0,364 # 8000c728 <CONSOLE_STATUS+0x718>
    800085c4:	ffffd097          	auipc	ra,0xffffd
    800085c8:	7e4080e7          	jalr	2020(ra) # 80005da8 <_Z11printStringPKc>
        printInt(i);
    800085cc:	00000613          	li	a2,0
    800085d0:	00a00593          	li	a1,10
    800085d4:	00090513          	mv	a0,s2
    800085d8:	ffffe097          	auipc	ra,0xffffe
    800085dc:	968080e7          	jalr	-1688(ra) # 80005f40 <_Z8printIntiii>
        printString(") ");
    800085e0:	00004517          	auipc	a0,0x4
    800085e4:	15050513          	addi	a0,a0,336 # 8000c730 <CONSOLE_STATUS+0x720>
    800085e8:	ffffd097          	auipc	ra,0xffffd
    800085ec:	7c0080e7          	jalr	1984(ra) # 80005da8 <_Z11printStringPKc>
        arr[i]->c = c;
    800085f0:	01348023          	sb	s3,0(s1)
        if(c++ == 'a' + 30){
    800085f4:	0019879b          	addiw	a5,s3,1
    800085f8:	0ff7f793          	andi	a5,a5,255
    800085fc:	07f00713          	li	a4,127
    80008600:	f8e982e3          	beq	s3,a4,80008584 <_Z22test_pristup_parametruv+0x68>
    80008604:	00078993          	mv	s3,a5
        printString("podatak: ");
    80008608:	00004517          	auipc	a0,0x4
    8000860c:	13050513          	addi	a0,a0,304 # 8000c738 <CONSOLE_STATUS+0x728>
    80008610:	ffffd097          	auipc	ra,0xffffd
    80008614:	798080e7          	jalr	1944(ra) # 80005da8 <_Z11printStringPKc>
        printInt(arr[i]->c);
    80008618:	00000613          	li	a2,0
    8000861c:	00a00593          	li	a1,10
    80008620:	0004c503          	lbu	a0,0(s1)
    80008624:	ffffe097          	auipc	ra,0xffffe
    80008628:	91c080e7          	jalr	-1764(ra) # 80005f40 <_Z8printIntiii>
        printString(" adresa: ");
    8000862c:	00004517          	auipc	a0,0x4
    80008630:	11c50513          	addi	a0,a0,284 # 8000c748 <CONSOLE_STATUS+0x738>
    80008634:	ffffd097          	auipc	ra,0xffffd
    80008638:	774080e7          	jalr	1908(ra) # 80005da8 <_Z11printStringPKc>
        printInt((size_t)arr[i]);
    8000863c:	00000613          	li	a2,0
    80008640:	00a00593          	li	a1,10
    80008644:	0004851b          	sext.w	a0,s1
    80008648:	ffffe097          	auipc	ra,0xffffe
    8000864c:	8f8080e7          	jalr	-1800(ra) # 80005f40 <_Z8printIntiii>
        printString("\t");
    80008650:	00004517          	auipc	a0,0x4
    80008654:	10850513          	addi	a0,a0,264 # 8000c758 <CONSOLE_STATUS+0x748>
    80008658:	ffffd097          	auipc	ra,0xffffd
    8000865c:	750080e7          	jalr	1872(ra) # 80005da8 <_Z11printStringPKc>
        if (i % 100 == 0)
    80008660:	06400793          	li	a5,100
    80008664:	02f967bb          	remw	a5,s2,a5
    80008668:	f20792e3          	bnez	a5,8000858c <_Z22test_pristup_parametruv+0x70>
            printString("\n");
    8000866c:	00004517          	auipc	a0,0x4
    80008670:	bdc50513          	addi	a0,a0,-1060 # 8000c248 <CONSOLE_STATUS+0x238>
    80008674:	ffffd097          	auipc	ra,0xffffd
    80008678:	734080e7          	jalr	1844(ra) # 80005da8 <_Z11printStringPKc>
    8000867c:	f21ff06f          	j	8000859c <_Z22test_pristup_parametruv+0x80>
    }
    printString("\n");
    80008680:	00004517          	auipc	a0,0x4
    80008684:	bc850513          	addi	a0,a0,-1080 # 8000c248 <CONSOLE_STATUS+0x238>
    80008688:	ffffd097          	auipc	ra,0xffffd
    8000868c:	720080e7          	jalr	1824(ra) # 80005da8 <_Z11printStringPKc>
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80008690:	00004517          	auipc	a0,0x4
    80008694:	04850513          	addi	a0,a0,72 # 8000c6d8 <CONSOLE_STATUS+0x6c8>
    80008698:	ffffd097          	auipc	ra,0xffffd
    8000869c:	710080e7          	jalr	1808(ra) # 80005da8 <_Z11printStringPKc>
}
    800086a0:	02813083          	ld	ra,40(sp)
    800086a4:	02013403          	ld	s0,32(sp)
    800086a8:	01813483          	ld	s1,24(sp)
    800086ac:	01013903          	ld	s2,16(sp)
    800086b0:	00813983          	ld	s3,8(sp)
    800086b4:	00013a03          	ld	s4,0(sp)
    800086b8:	03010113          	addi	sp,sp,48
    800086bc:	00008067          	ret

00000000800086c0 <_Z16test_performansiv>:

const int arrSize = 100000;
//const int arrSize = 2032;
Class1* arr[arrSize];

void test_performansi() {
    800086c0:	fe010113          	addi	sp,sp,-32
    800086c4:	00113c23          	sd	ra,24(sp)
    800086c8:	00813823          	sd	s0,16(sp)
    800086cc:	00913423          	sd	s1,8(sp)
    800086d0:	01213023          	sd	s2,0(sp)
    800086d4:	02010413          	addi	s0,sp,32
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    800086d8:	00000693          	li	a3,0
    800086dc:	00000613          	li	a2,0
    800086e0:	00100593          	li	a1,1
    800086e4:	00004517          	auipc	a0,0x4
    800086e8:	fec50513          	addi	a0,a0,-20 # 8000c6d0 <CONSOLE_STATUS+0x6c0>
    800086ec:	ffffd097          	auipc	ra,0xffffd
    800086f0:	0d8080e7          	jalr	216(ra) # 800057c4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800086f4:	00050913          	mv	s2,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    800086f8:	00004517          	auipc	a0,0x4
    800086fc:	fe050513          	addi	a0,a0,-32 # 8000c6d8 <CONSOLE_STATUS+0x6c8>
    80008700:	ffffd097          	auipc	ra,0xffffd
    80008704:	6a8080e7          	jalr	1704(ra) # 80005da8 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80008708:	00090513          	mv	a0,s2
    8000870c:	ffffd097          	auipc	ra,0xffffd
    80008710:	274080e7          	jalr	628(ra) # 80005980 <_Z15kmem_cache_infoP12kmem_cache_s>
    for (int i = 0; i < arrSize; i++) {
    80008714:	00000493          	li	s1,0
    80008718:	000187b7          	lui	a5,0x18
    8000871c:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    80008720:	0297c663          	blt	a5,s1,8000874c <_Z16test_performansiv+0x8c>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    80008724:	00090513          	mv	a0,s2
    80008728:	ffffd097          	auipc	ra,0xffffd
    8000872c:	144080e7          	jalr	324(ra) # 8000586c <_Z16kmem_cache_allocP12kmem_cache_s>
    80008730:	00349713          	slli	a4,s1,0x3
    80008734:	00007797          	auipc	a5,0x7
    80008738:	35c78793          	addi	a5,a5,860 # 8000fa90 <arr>
    8000873c:	00e787b3          	add	a5,a5,a4
    80008740:	00a7b023          	sd	a0,0(a5)
    for (int i = 0; i < arrSize; i++) {
    80008744:	0014849b          	addiw	s1,s1,1
    80008748:	fd1ff06f          	j	80008718 <_Z16test_performansiv+0x58>
//        printInt((size_t)arr[i]);
//        printString("\n");
    }
    printString("*****************************AFTER ALLOCATION******************************\n\n");
    8000874c:	00004517          	auipc	a0,0x4
    80008750:	01450513          	addi	a0,a0,20 # 8000c760 <CONSOLE_STATUS+0x750>
    80008754:	ffffd097          	auipc	ra,0xffffd
    80008758:	654080e7          	jalr	1620(ra) # 80005da8 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    8000875c:	00090513          	mv	a0,s2
    80008760:	ffffd097          	auipc	ra,0xffffd
    80008764:	220080e7          	jalr	544(ra) # 80005980 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_free(cache1, arr[0]);
    80008768:	00007597          	auipc	a1,0x7
    8000876c:	3285b583          	ld	a1,808(a1) # 8000fa90 <arr>
    80008770:	00090513          	mv	a0,s2
    80008774:	ffffd097          	auipc	ra,0xffffd
    80008778:	154080e7          	jalr	340(ra) # 800058c8 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < arrSize; i++) {
    8000877c:	00000493          	li	s1,0
    80008780:	0700006f          	j	800087f0 <_Z16test_performansiv+0x130>
        int ret = kmem_cache_free(cache1, arr[i]);
        if(ret == -1){
//            if(i == 2023){
//                kmem_cache_info(cache1);
//            }
            printString("Neuspesna dealokacija: ");
    80008784:	00004517          	auipc	a0,0x4
    80008788:	02c50513          	addi	a0,a0,44 # 8000c7b0 <CONSOLE_STATUS+0x7a0>
    8000878c:	ffffd097          	auipc	ra,0xffffd
    80008790:	61c080e7          	jalr	1564(ra) # 80005da8 <_Z11printStringPKc>
            printInt(i);
    80008794:	00000613          	li	a2,0
    80008798:	00a00593          	li	a1,10
    8000879c:	00048513          	mv	a0,s1
    800087a0:	ffffd097          	auipc	ra,0xffffd
    800087a4:	7a0080e7          	jalr	1952(ra) # 80005f40 <_Z8printIntiii>
            printString(", na adresi: ");
    800087a8:	00004517          	auipc	a0,0x4
    800087ac:	02050513          	addi	a0,a0,32 # 8000c7c8 <CONSOLE_STATUS+0x7b8>
    800087b0:	ffffd097          	auipc	ra,0xffffd
    800087b4:	5f8080e7          	jalr	1528(ra) # 80005da8 <_Z11printStringPKc>
            printInt((size_t)arr[i]);
    800087b8:	00349713          	slli	a4,s1,0x3
    800087bc:	00007797          	auipc	a5,0x7
    800087c0:	2d478793          	addi	a5,a5,724 # 8000fa90 <arr>
    800087c4:	00e787b3          	add	a5,a5,a4
    800087c8:	00000613          	li	a2,0
    800087cc:	00a00593          	li	a1,10
    800087d0:	0007a503          	lw	a0,0(a5)
    800087d4:	ffffd097          	auipc	ra,0xffffd
    800087d8:	76c080e7          	jalr	1900(ra) # 80005f40 <_Z8printIntiii>
            printString("\n");
    800087dc:	00004517          	auipc	a0,0x4
    800087e0:	a6c50513          	addi	a0,a0,-1428 # 8000c248 <CONSOLE_STATUS+0x238>
    800087e4:	ffffd097          	auipc	ra,0xffffd
    800087e8:	5c4080e7          	jalr	1476(ra) # 80005da8 <_Z11printStringPKc>
    for (int i = 0; i < arrSize; i++) {
    800087ec:	0014849b          	addiw	s1,s1,1
    800087f0:	000187b7          	lui	a5,0x18
    800087f4:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    800087f8:	0297c863          	blt	a5,s1,80008828 <_Z16test_performansiv+0x168>
        int ret = kmem_cache_free(cache1, arr[i]);
    800087fc:	00349713          	slli	a4,s1,0x3
    80008800:	00007797          	auipc	a5,0x7
    80008804:	29078793          	addi	a5,a5,656 # 8000fa90 <arr>
    80008808:	00e787b3          	add	a5,a5,a4
    8000880c:	0007b583          	ld	a1,0(a5)
    80008810:	00090513          	mv	a0,s2
    80008814:	ffffd097          	auipc	ra,0xffffd
    80008818:	0b4080e7          	jalr	180(ra) # 800058c8 <_Z15kmem_cache_freeP12kmem_cache_sPv>
        if(ret == -1){
    8000881c:	fff00793          	li	a5,-1
    80008820:	fcf516e3          	bne	a0,a5,800087ec <_Z16test_performansiv+0x12c>
    80008824:	f61ff06f          	j	80008784 <_Z16test_performansiv+0xc4>
        }
    }
    printString("*****************************AFTER DEALLOCATION****************************\n\n");
    80008828:	00004517          	auipc	a0,0x4
    8000882c:	fb050513          	addi	a0,a0,-80 # 8000c7d8 <CONSOLE_STATUS+0x7c8>
    80008830:	ffffd097          	auipc	ra,0xffffd
    80008834:	578080e7          	jalr	1400(ra) # 80005da8 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80008838:	00090513          	mv	a0,s2
    8000883c:	ffffd097          	auipc	ra,0xffffd
    80008840:	144080e7          	jalr	324(ra) # 80005980 <_Z15kmem_cache_infoP12kmem_cache_s>
}
    80008844:	01813083          	ld	ra,24(sp)
    80008848:	01013403          	ld	s0,16(sp)
    8000884c:	00813483          	ld	s1,8(sp)
    80008850:	00013903          	ld	s2,0(sp)
    80008854:	02010113          	addi	sp,sp,32
    80008858:	00008067          	ret

000000008000885c <_Z23test_razlika_u_adresamav>:

void test_razlika_u_adresama(){
    8000885c:	fc010113          	addi	sp,sp,-64
    80008860:	02113c23          	sd	ra,56(sp)
    80008864:	02813823          	sd	s0,48(sp)
    80008868:	02913423          	sd	s1,40(sp)
    8000886c:	03213023          	sd	s2,32(sp)
    80008870:	01313c23          	sd	s3,24(sp)
    80008874:	01413823          	sd	s4,16(sp)
    80008878:	01513423          	sd	s5,8(sp)
    8000887c:	04010413          	addi	s0,sp,64
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    80008880:	00000693          	li	a3,0
    80008884:	00000613          	li	a2,0
    80008888:	00100593          	li	a1,1
    8000888c:	00004517          	auipc	a0,0x4
    80008890:	e4450513          	addi	a0,a0,-444 # 8000c6d0 <CONSOLE_STATUS+0x6c0>
    80008894:	ffffd097          	auipc	ra,0xffffd
    80008898:	f30080e7          	jalr	-208(ra) # 800057c4 <_Z17kmem_cache_createPKcmPFvPvES3_>
    8000889c:	00050a93          	mv	s5,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    800088a0:	00004517          	auipc	a0,0x4
    800088a4:	e3850513          	addi	a0,a0,-456 # 8000c6d8 <CONSOLE_STATUS+0x6c8>
    800088a8:	ffffd097          	auipc	ra,0xffffd
    800088ac:	500080e7          	jalr	1280(ra) # 80005da8 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    800088b0:	000a8513          	mv	a0,s5
    800088b4:	ffffd097          	auipc	ra,0xffffd
    800088b8:	0cc080e7          	jalr	204(ra) # 80005980 <_Z15kmem_cache_infoP12kmem_cache_s>
    Class1* arr[arrSize];
    size_t prevAddr = 0;
    for (int i = 0; i < arrSize; i++) {
    800088bc:	00000993          	li	s3,0
    size_t prevAddr = 0;
    800088c0:	00000913          	li	s2,0
    800088c4:	0440006f          	j	80008908 <_Z23test_razlika_u_adresamav+0xac>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
        if ((size_t)arr[i] - prevAddr != 1 && prevAddr != 0) {
            printString("Nadjena razlika sa prethodnom adresom: ");
    800088c8:	00004517          	auipc	a0,0x4
    800088cc:	f6050513          	addi	a0,a0,-160 # 8000c828 <CONSOLE_STATUS+0x818>
    800088d0:	ffffd097          	auipc	ra,0xffffd
    800088d4:	4d8080e7          	jalr	1240(ra) # 80005da8 <_Z11printStringPKc>
            printInt((size_t)arr[i]);
    800088d8:	00000613          	li	a2,0
    800088dc:	00a00593          	li	a1,10
    800088e0:	0004851b          	sext.w	a0,s1
    800088e4:	ffffd097          	auipc	ra,0xffffd
    800088e8:	65c080e7          	jalr	1628(ra) # 80005f40 <_Z8printIntiii>
            printString("\n");
    800088ec:	00004517          	auipc	a0,0x4
    800088f0:	95c50513          	addi	a0,a0,-1700 # 8000c248 <CONSOLE_STATUS+0x238>
    800088f4:	ffffd097          	auipc	ra,0xffffd
    800088f8:	4b4080e7          	jalr	1204(ra) # 80005da8 <_Z11printStringPKc>
        }
        if((size_t)arr[i] - prevAddr == 0){
    800088fc:	052a0063          	beq	s4,s2,8000893c <_Z23test_razlika_u_adresamav+0xe0>
    for (int i = 0; i < arrSize; i++) {
    80008900:	0019899b          	addiw	s3,s3,1
//                printString("Ova adresa ima duplikat: ");
//                printInt((size_t)arr[i]);
//                printString("\n");
//            }
//        }
        prevAddr = (size_t)arr[i];
    80008904:	00048913          	mv	s2,s1
    for (int i = 0; i < arrSize; i++) {
    80008908:	000187b7          	lui	a5,0x18
    8000890c:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    80008910:	0737c263          	blt	a5,s3,80008974 <_Z23test_razlika_u_adresamav+0x118>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    80008914:	000a8513          	mv	a0,s5
    80008918:	ffffd097          	auipc	ra,0xffffd
    8000891c:	f54080e7          	jalr	-172(ra) # 8000586c <_Z16kmem_cache_allocP12kmem_cache_s>
    80008920:	00050493          	mv	s1,a0
        if ((size_t)arr[i] - prevAddr != 1 && prevAddr != 0) {
    80008924:	00050a13          	mv	s4,a0
    80008928:	41250733          	sub	a4,a0,s2
    8000892c:	00100793          	li	a5,1
    80008930:	fcf706e3          	beq	a4,a5,800088fc <_Z23test_razlika_u_adresamav+0xa0>
    80008934:	fc0904e3          	beqz	s2,800088fc <_Z23test_razlika_u_adresamav+0xa0>
    80008938:	f91ff06f          	j	800088c8 <_Z23test_razlika_u_adresamav+0x6c>
            printString("Nadjene dve uzastopne iste adrese");
    8000893c:	00004517          	auipc	a0,0x4
    80008940:	f1450513          	addi	a0,a0,-236 # 8000c850 <CONSOLE_STATUS+0x840>
    80008944:	ffffd097          	auipc	ra,0xffffd
    80008948:	464080e7          	jalr	1124(ra) # 80005da8 <_Z11printStringPKc>
            printInt((size_t)arr[i]);
    8000894c:	00000613          	li	a2,0
    80008950:	00a00593          	li	a1,10
    80008954:	0004851b          	sext.w	a0,s1
    80008958:	ffffd097          	auipc	ra,0xffffd
    8000895c:	5e8080e7          	jalr	1512(ra) # 80005f40 <_Z8printIntiii>
            printString("\n");
    80008960:	00004517          	auipc	a0,0x4
    80008964:	8e850513          	addi	a0,a0,-1816 # 8000c248 <CONSOLE_STATUS+0x238>
    80008968:	ffffd097          	auipc	ra,0xffffd
    8000896c:	440080e7          	jalr	1088(ra) # 80005da8 <_Z11printStringPKc>
    80008970:	f91ff06f          	j	80008900 <_Z23test_razlika_u_adresamav+0xa4>

    }
    printString("*****************************AFTER ALLOCATION******************************\n\n");
    80008974:	00004517          	auipc	a0,0x4
    80008978:	dec50513          	addi	a0,a0,-532 # 8000c760 <CONSOLE_STATUS+0x750>
    8000897c:	ffffd097          	auipc	ra,0xffffd
    80008980:	42c080e7          	jalr	1068(ra) # 80005da8 <_Z11printStringPKc>
    printString("\n");
    80008984:	00004517          	auipc	a0,0x4
    80008988:	8c450513          	addi	a0,a0,-1852 # 8000c248 <CONSOLE_STATUS+0x238>
    8000898c:	ffffd097          	auipc	ra,0xffffd
    80008990:	41c080e7          	jalr	1052(ra) # 80005da8 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80008994:	000a8513          	mv	a0,s5
    80008998:	ffffd097          	auipc	ra,0xffffd
    8000899c:	fe8080e7          	jalr	-24(ra) # 80005980 <_Z15kmem_cache_infoP12kmem_cache_s>
}
    800089a0:	03813083          	ld	ra,56(sp)
    800089a4:	03013403          	ld	s0,48(sp)
    800089a8:	02813483          	ld	s1,40(sp)
    800089ac:	02013903          	ld	s2,32(sp)
    800089b0:	01813983          	ld	s3,24(sp)
    800089b4:	01013a03          	ld	s4,16(sp)
    800089b8:	00813a83          	ld	s5,8(sp)
    800089bc:	04010113          	addi	sp,sp,64
    800089c0:	00008067          	ret

00000000800089c4 <_Z8userMainv>:

class Class2{
    char a[4096000];
};

void userMain() {
    800089c4:	ff010113          	addi	sp,sp,-16
    800089c8:	00113423          	sd	ra,8(sp)
    800089cc:	00813023          	sd	s0,0(sp)
    800089d0:	01010413          	addi	s0,sp,16
//    test_razlika_u_adresama();
//    test_performansi();

//    test_niti();

    test_prvi();
    800089d4:	00001097          	auipc	ra,0x1
    800089d8:	8f0080e7          	jalr	-1808(ra) # 800092c4 <_Z9test_prviv>
//    ConsumerProducerCPP_API_test::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

//    testModif();
//    testPrenosParametara();

    800089dc:	00813083          	ld	ra,8(sp)
    800089e0:	00013403          	ld	s0,0(sp)
    800089e4:	01010113          	addi	sp,sp,16
    800089e8:	00008067          	ret

00000000800089ec <_ZN20Threads_CPP_API_test7WorkerAD1Ev>:
    class WorkerA: public Thread {
    800089ec:	ff010113          	addi	sp,sp,-16
    800089f0:	00113423          	sd	ra,8(sp)
    800089f4:	00813023          	sd	s0,0(sp)
    800089f8:	01010413          	addi	s0,sp,16
    800089fc:	00007797          	auipc	a5,0x7
    80008a00:	bdc78793          	addi	a5,a5,-1060 # 8000f5d8 <_ZTVN20Threads_CPP_API_test7WorkerAE+0x10>
    80008a04:	00f53023          	sd	a5,0(a0)
    80008a08:	ffffb097          	auipc	ra,0xffffb
    80008a0c:	634080e7          	jalr	1588(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008a10:	00813083          	ld	ra,8(sp)
    80008a14:	00013403          	ld	s0,0(sp)
    80008a18:	01010113          	addi	sp,sp,16
    80008a1c:	00008067          	ret

0000000080008a20 <_ZN20Threads_CPP_API_test7WorkerAD0Ev>:
    80008a20:	fe010113          	addi	sp,sp,-32
    80008a24:	00113c23          	sd	ra,24(sp)
    80008a28:	00813823          	sd	s0,16(sp)
    80008a2c:	00913423          	sd	s1,8(sp)
    80008a30:	02010413          	addi	s0,sp,32
    80008a34:	00050493          	mv	s1,a0
    80008a38:	00007797          	auipc	a5,0x7
    80008a3c:	ba078793          	addi	a5,a5,-1120 # 8000f5d8 <_ZTVN20Threads_CPP_API_test7WorkerAE+0x10>
    80008a40:	00f53023          	sd	a5,0(a0)
    80008a44:	ffffb097          	auipc	ra,0xffffb
    80008a48:	5f8080e7          	jalr	1528(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008a4c:	00048513          	mv	a0,s1
    80008a50:	ffffb097          	auipc	ra,0xffffb
    80008a54:	7b0080e7          	jalr	1968(ra) # 80004200 <_ZdlPv>
    80008a58:	01813083          	ld	ra,24(sp)
    80008a5c:	01013403          	ld	s0,16(sp)
    80008a60:	00813483          	ld	s1,8(sp)
    80008a64:	02010113          	addi	sp,sp,32
    80008a68:	00008067          	ret

0000000080008a6c <_ZN20Threads_CPP_API_test7WorkerBD1Ev>:
    class WorkerB: public Thread {
    80008a6c:	ff010113          	addi	sp,sp,-16
    80008a70:	00113423          	sd	ra,8(sp)
    80008a74:	00813023          	sd	s0,0(sp)
    80008a78:	01010413          	addi	s0,sp,16
    80008a7c:	00007797          	auipc	a5,0x7
    80008a80:	b8478793          	addi	a5,a5,-1148 # 8000f600 <_ZTVN20Threads_CPP_API_test7WorkerBE+0x10>
    80008a84:	00f53023          	sd	a5,0(a0)
    80008a88:	ffffb097          	auipc	ra,0xffffb
    80008a8c:	5b4080e7          	jalr	1460(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008a90:	00813083          	ld	ra,8(sp)
    80008a94:	00013403          	ld	s0,0(sp)
    80008a98:	01010113          	addi	sp,sp,16
    80008a9c:	00008067          	ret

0000000080008aa0 <_ZN20Threads_CPP_API_test7WorkerBD0Ev>:
    80008aa0:	fe010113          	addi	sp,sp,-32
    80008aa4:	00113c23          	sd	ra,24(sp)
    80008aa8:	00813823          	sd	s0,16(sp)
    80008aac:	00913423          	sd	s1,8(sp)
    80008ab0:	02010413          	addi	s0,sp,32
    80008ab4:	00050493          	mv	s1,a0
    80008ab8:	00007797          	auipc	a5,0x7
    80008abc:	b4878793          	addi	a5,a5,-1208 # 8000f600 <_ZTVN20Threads_CPP_API_test7WorkerBE+0x10>
    80008ac0:	00f53023          	sd	a5,0(a0)
    80008ac4:	ffffb097          	auipc	ra,0xffffb
    80008ac8:	578080e7          	jalr	1400(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008acc:	00048513          	mv	a0,s1
    80008ad0:	ffffb097          	auipc	ra,0xffffb
    80008ad4:	730080e7          	jalr	1840(ra) # 80004200 <_ZdlPv>
    80008ad8:	01813083          	ld	ra,24(sp)
    80008adc:	01013403          	ld	s0,16(sp)
    80008ae0:	00813483          	ld	s1,8(sp)
    80008ae4:	02010113          	addi	sp,sp,32
    80008ae8:	00008067          	ret

0000000080008aec <_ZN20Threads_CPP_API_test7WorkerCD1Ev>:
    class WorkerC: public Thread {
    80008aec:	ff010113          	addi	sp,sp,-16
    80008af0:	00113423          	sd	ra,8(sp)
    80008af4:	00813023          	sd	s0,0(sp)
    80008af8:	01010413          	addi	s0,sp,16
    80008afc:	00007797          	auipc	a5,0x7
    80008b00:	b2c78793          	addi	a5,a5,-1236 # 8000f628 <_ZTVN20Threads_CPP_API_test7WorkerCE+0x10>
    80008b04:	00f53023          	sd	a5,0(a0)
    80008b08:	ffffb097          	auipc	ra,0xffffb
    80008b0c:	534080e7          	jalr	1332(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008b10:	00813083          	ld	ra,8(sp)
    80008b14:	00013403          	ld	s0,0(sp)
    80008b18:	01010113          	addi	sp,sp,16
    80008b1c:	00008067          	ret

0000000080008b20 <_ZN20Threads_CPP_API_test7WorkerCD0Ev>:
    80008b20:	fe010113          	addi	sp,sp,-32
    80008b24:	00113c23          	sd	ra,24(sp)
    80008b28:	00813823          	sd	s0,16(sp)
    80008b2c:	00913423          	sd	s1,8(sp)
    80008b30:	02010413          	addi	s0,sp,32
    80008b34:	00050493          	mv	s1,a0
    80008b38:	00007797          	auipc	a5,0x7
    80008b3c:	af078793          	addi	a5,a5,-1296 # 8000f628 <_ZTVN20Threads_CPP_API_test7WorkerCE+0x10>
    80008b40:	00f53023          	sd	a5,0(a0)
    80008b44:	ffffb097          	auipc	ra,0xffffb
    80008b48:	4f8080e7          	jalr	1272(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008b4c:	00048513          	mv	a0,s1
    80008b50:	ffffb097          	auipc	ra,0xffffb
    80008b54:	6b0080e7          	jalr	1712(ra) # 80004200 <_ZdlPv>
    80008b58:	01813083          	ld	ra,24(sp)
    80008b5c:	01013403          	ld	s0,16(sp)
    80008b60:	00813483          	ld	s1,8(sp)
    80008b64:	02010113          	addi	sp,sp,32
    80008b68:	00008067          	ret

0000000080008b6c <_ZN20Threads_CPP_API_test7WorkerDD1Ev>:
    class WorkerD: public Thread {
    80008b6c:	ff010113          	addi	sp,sp,-16
    80008b70:	00113423          	sd	ra,8(sp)
    80008b74:	00813023          	sd	s0,0(sp)
    80008b78:	01010413          	addi	s0,sp,16
    80008b7c:	00007797          	auipc	a5,0x7
    80008b80:	ad478793          	addi	a5,a5,-1324 # 8000f650 <_ZTVN20Threads_CPP_API_test7WorkerDE+0x10>
    80008b84:	00f53023          	sd	a5,0(a0)
    80008b88:	ffffb097          	auipc	ra,0xffffb
    80008b8c:	4b4080e7          	jalr	1204(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008b90:	00813083          	ld	ra,8(sp)
    80008b94:	00013403          	ld	s0,0(sp)
    80008b98:	01010113          	addi	sp,sp,16
    80008b9c:	00008067          	ret

0000000080008ba0 <_ZN20Threads_CPP_API_test7WorkerDD0Ev>:
    80008ba0:	fe010113          	addi	sp,sp,-32
    80008ba4:	00113c23          	sd	ra,24(sp)
    80008ba8:	00813823          	sd	s0,16(sp)
    80008bac:	00913423          	sd	s1,8(sp)
    80008bb0:	02010413          	addi	s0,sp,32
    80008bb4:	00050493          	mv	s1,a0
    80008bb8:	00007797          	auipc	a5,0x7
    80008bbc:	a9878793          	addi	a5,a5,-1384 # 8000f650 <_ZTVN20Threads_CPP_API_test7WorkerDE+0x10>
    80008bc0:	00f53023          	sd	a5,0(a0)
    80008bc4:	ffffb097          	auipc	ra,0xffffb
    80008bc8:	478080e7          	jalr	1144(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008bcc:	00048513          	mv	a0,s1
    80008bd0:	ffffb097          	auipc	ra,0xffffb
    80008bd4:	630080e7          	jalr	1584(ra) # 80004200 <_ZdlPv>
    80008bd8:	01813083          	ld	ra,24(sp)
    80008bdc:	01013403          	ld	s0,16(sp)
    80008be0:	00813483          	ld	s1,8(sp)
    80008be4:	02010113          	addi	sp,sp,32
    80008be8:	00008067          	ret

0000000080008bec <_ZN34ConsumerProducer_CPP_Sync_API_test8ConsumerD1Ev>:
    class Consumer:public Thread {
    80008bec:	ff010113          	addi	sp,sp,-16
    80008bf0:	00113423          	sd	ra,8(sp)
    80008bf4:	00813023          	sd	s0,0(sp)
    80008bf8:	01010413          	addi	s0,sp,16
    80008bfc:	00007797          	auipc	a5,0x7
    80008c00:	acc78793          	addi	a5,a5,-1332 # 8000f6c8 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ConsumerE+0x10>
    80008c04:	00f53023          	sd	a5,0(a0)
    80008c08:	ffffb097          	auipc	ra,0xffffb
    80008c0c:	434080e7          	jalr	1076(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008c10:	00813083          	ld	ra,8(sp)
    80008c14:	00013403          	ld	s0,0(sp)
    80008c18:	01010113          	addi	sp,sp,16
    80008c1c:	00008067          	ret

0000000080008c20 <_ZN34ConsumerProducer_CPP_Sync_API_test8ConsumerD0Ev>:
    80008c20:	fe010113          	addi	sp,sp,-32
    80008c24:	00113c23          	sd	ra,24(sp)
    80008c28:	00813823          	sd	s0,16(sp)
    80008c2c:	00913423          	sd	s1,8(sp)
    80008c30:	02010413          	addi	s0,sp,32
    80008c34:	00050493          	mv	s1,a0
    80008c38:	00007797          	auipc	a5,0x7
    80008c3c:	a9078793          	addi	a5,a5,-1392 # 8000f6c8 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ConsumerE+0x10>
    80008c40:	00f53023          	sd	a5,0(a0)
    80008c44:	ffffb097          	auipc	ra,0xffffb
    80008c48:	3f8080e7          	jalr	1016(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008c4c:	00048513          	mv	a0,s1
    80008c50:	ffffb097          	auipc	ra,0xffffb
    80008c54:	5b0080e7          	jalr	1456(ra) # 80004200 <_ZdlPv>
    80008c58:	01813083          	ld	ra,24(sp)
    80008c5c:	01013403          	ld	s0,16(sp)
    80008c60:	00813483          	ld	s1,8(sp)
    80008c64:	02010113          	addi	sp,sp,32
    80008c68:	00008067          	ret

0000000080008c6c <_ZN34ConsumerProducer_CPP_Sync_API_test8ProducerD1Ev>:
    class Producer:public Thread {
    80008c6c:	ff010113          	addi	sp,sp,-16
    80008c70:	00113423          	sd	ra,8(sp)
    80008c74:	00813023          	sd	s0,0(sp)
    80008c78:	01010413          	addi	s0,sp,16
    80008c7c:	00007797          	auipc	a5,0x7
    80008c80:	a2478793          	addi	a5,a5,-1500 # 8000f6a0 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ProducerE+0x10>
    80008c84:	00f53023          	sd	a5,0(a0)
    80008c88:	ffffb097          	auipc	ra,0xffffb
    80008c8c:	3b4080e7          	jalr	948(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008c90:	00813083          	ld	ra,8(sp)
    80008c94:	00013403          	ld	s0,0(sp)
    80008c98:	01010113          	addi	sp,sp,16
    80008c9c:	00008067          	ret

0000000080008ca0 <_ZN34ConsumerProducer_CPP_Sync_API_test8ProducerD0Ev>:
    80008ca0:	fe010113          	addi	sp,sp,-32
    80008ca4:	00113c23          	sd	ra,24(sp)
    80008ca8:	00813823          	sd	s0,16(sp)
    80008cac:	00913423          	sd	s1,8(sp)
    80008cb0:	02010413          	addi	s0,sp,32
    80008cb4:	00050493          	mv	s1,a0
    80008cb8:	00007797          	auipc	a5,0x7
    80008cbc:	9e878793          	addi	a5,a5,-1560 # 8000f6a0 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ProducerE+0x10>
    80008cc0:	00f53023          	sd	a5,0(a0)
    80008cc4:	ffffb097          	auipc	ra,0xffffb
    80008cc8:	378080e7          	jalr	888(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008ccc:	00048513          	mv	a0,s1
    80008cd0:	ffffb097          	auipc	ra,0xffffb
    80008cd4:	530080e7          	jalr	1328(ra) # 80004200 <_ZdlPv>
    80008cd8:	01813083          	ld	ra,24(sp)
    80008cdc:	01013403          	ld	s0,16(sp)
    80008ce0:	00813483          	ld	s1,8(sp)
    80008ce4:	02010113          	addi	sp,sp,32
    80008ce8:	00008067          	ret

0000000080008cec <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboardD1Ev>:
    class ProducerKeyboard:public Thread {
    80008cec:	ff010113          	addi	sp,sp,-16
    80008cf0:	00113423          	sd	ra,8(sp)
    80008cf4:	00813023          	sd	s0,0(sp)
    80008cf8:	01010413          	addi	s0,sp,16
    80008cfc:	00007797          	auipc	a5,0x7
    80008d00:	97c78793          	addi	a5,a5,-1668 # 8000f678 <_ZTVN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboardE+0x10>
    80008d04:	00f53023          	sd	a5,0(a0)
    80008d08:	ffffb097          	auipc	ra,0xffffb
    80008d0c:	334080e7          	jalr	820(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008d10:	00813083          	ld	ra,8(sp)
    80008d14:	00013403          	ld	s0,0(sp)
    80008d18:	01010113          	addi	sp,sp,16
    80008d1c:	00008067          	ret

0000000080008d20 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboardD0Ev>:
    80008d20:	fe010113          	addi	sp,sp,-32
    80008d24:	00113c23          	sd	ra,24(sp)
    80008d28:	00813823          	sd	s0,16(sp)
    80008d2c:	00913423          	sd	s1,8(sp)
    80008d30:	02010413          	addi	s0,sp,32
    80008d34:	00050493          	mv	s1,a0
    80008d38:	00007797          	auipc	a5,0x7
    80008d3c:	94078793          	addi	a5,a5,-1728 # 8000f678 <_ZTVN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboardE+0x10>
    80008d40:	00f53023          	sd	a5,0(a0)
    80008d44:	ffffb097          	auipc	ra,0xffffb
    80008d48:	2f8080e7          	jalr	760(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008d4c:	00048513          	mv	a0,s1
    80008d50:	ffffb097          	auipc	ra,0xffffb
    80008d54:	4b0080e7          	jalr	1200(ra) # 80004200 <_ZdlPv>
    80008d58:	01813083          	ld	ra,24(sp)
    80008d5c:	01013403          	ld	s0,16(sp)
    80008d60:	00813483          	ld	s1,8(sp)
    80008d64:	02010113          	addi	sp,sp,32
    80008d68:	00008067          	ret

0000000080008d6c <_ZN28ConsumerProducerCPP_API_test8ConsumerD1Ev>:
    class Consumer : public Thread {
    80008d6c:	ff010113          	addi	sp,sp,-16
    80008d70:	00113423          	sd	ra,8(sp)
    80008d74:	00813023          	sd	s0,0(sp)
    80008d78:	01010413          	addi	s0,sp,16
    80008d7c:	00007797          	auipc	a5,0x7
    80008d80:	9c478793          	addi	a5,a5,-1596 # 8000f740 <_ZTVN28ConsumerProducerCPP_API_test8ConsumerE+0x10>
    80008d84:	00f53023          	sd	a5,0(a0)
    80008d88:	ffffb097          	auipc	ra,0xffffb
    80008d8c:	2b4080e7          	jalr	692(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008d90:	00813083          	ld	ra,8(sp)
    80008d94:	00013403          	ld	s0,0(sp)
    80008d98:	01010113          	addi	sp,sp,16
    80008d9c:	00008067          	ret

0000000080008da0 <_ZN28ConsumerProducerCPP_API_test8ConsumerD0Ev>:
    80008da0:	fe010113          	addi	sp,sp,-32
    80008da4:	00113c23          	sd	ra,24(sp)
    80008da8:	00813823          	sd	s0,16(sp)
    80008dac:	00913423          	sd	s1,8(sp)
    80008db0:	02010413          	addi	s0,sp,32
    80008db4:	00050493          	mv	s1,a0
    80008db8:	00007797          	auipc	a5,0x7
    80008dbc:	98878793          	addi	a5,a5,-1656 # 8000f740 <_ZTVN28ConsumerProducerCPP_API_test8ConsumerE+0x10>
    80008dc0:	00f53023          	sd	a5,0(a0)
    80008dc4:	ffffb097          	auipc	ra,0xffffb
    80008dc8:	278080e7          	jalr	632(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008dcc:	00048513          	mv	a0,s1
    80008dd0:	ffffb097          	auipc	ra,0xffffb
    80008dd4:	430080e7          	jalr	1072(ra) # 80004200 <_ZdlPv>
    80008dd8:	01813083          	ld	ra,24(sp)
    80008ddc:	01013403          	ld	s0,16(sp)
    80008de0:	00813483          	ld	s1,8(sp)
    80008de4:	02010113          	addi	sp,sp,32
    80008de8:	00008067          	ret

0000000080008dec <_ZN28ConsumerProducerCPP_API_test16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80008dec:	ff010113          	addi	sp,sp,-16
    80008df0:	00113423          	sd	ra,8(sp)
    80008df4:	00813023          	sd	s0,0(sp)
    80008df8:	01010413          	addi	s0,sp,16
    80008dfc:	00007797          	auipc	a5,0x7
    80008e00:	8f478793          	addi	a5,a5,-1804 # 8000f6f0 <_ZTVN28ConsumerProducerCPP_API_test16ProducerKeyboradE+0x10>
    80008e04:	00f53023          	sd	a5,0(a0)
    80008e08:	ffffb097          	auipc	ra,0xffffb
    80008e0c:	234080e7          	jalr	564(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008e10:	00813083          	ld	ra,8(sp)
    80008e14:	00013403          	ld	s0,0(sp)
    80008e18:	01010113          	addi	sp,sp,16
    80008e1c:	00008067          	ret

0000000080008e20 <_ZN28ConsumerProducerCPP_API_test16ProducerKeyboradD0Ev>:
    80008e20:	fe010113          	addi	sp,sp,-32
    80008e24:	00113c23          	sd	ra,24(sp)
    80008e28:	00813823          	sd	s0,16(sp)
    80008e2c:	00913423          	sd	s1,8(sp)
    80008e30:	02010413          	addi	s0,sp,32
    80008e34:	00050493          	mv	s1,a0
    80008e38:	00007797          	auipc	a5,0x7
    80008e3c:	8b878793          	addi	a5,a5,-1864 # 8000f6f0 <_ZTVN28ConsumerProducerCPP_API_test16ProducerKeyboradE+0x10>
    80008e40:	00f53023          	sd	a5,0(a0)
    80008e44:	ffffb097          	auipc	ra,0xffffb
    80008e48:	1f8080e7          	jalr	504(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008e4c:	00048513          	mv	a0,s1
    80008e50:	ffffb097          	auipc	ra,0xffffb
    80008e54:	3b0080e7          	jalr	944(ra) # 80004200 <_ZdlPv>
    80008e58:	01813083          	ld	ra,24(sp)
    80008e5c:	01013403          	ld	s0,16(sp)
    80008e60:	00813483          	ld	s1,8(sp)
    80008e64:	02010113          	addi	sp,sp,32
    80008e68:	00008067          	ret

0000000080008e6c <_ZN28ConsumerProducerCPP_API_test8ProducerD1Ev>:
    class Producer : public Thread {
    80008e6c:	ff010113          	addi	sp,sp,-16
    80008e70:	00113423          	sd	ra,8(sp)
    80008e74:	00813023          	sd	s0,0(sp)
    80008e78:	01010413          	addi	s0,sp,16
    80008e7c:	00007797          	auipc	a5,0x7
    80008e80:	89c78793          	addi	a5,a5,-1892 # 8000f718 <_ZTVN28ConsumerProducerCPP_API_test8ProducerE+0x10>
    80008e84:	00f53023          	sd	a5,0(a0)
    80008e88:	ffffb097          	auipc	ra,0xffffb
    80008e8c:	1b4080e7          	jalr	436(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008e90:	00813083          	ld	ra,8(sp)
    80008e94:	00013403          	ld	s0,0(sp)
    80008e98:	01010113          	addi	sp,sp,16
    80008e9c:	00008067          	ret

0000000080008ea0 <_ZN28ConsumerProducerCPP_API_test8ProducerD0Ev>:
    80008ea0:	fe010113          	addi	sp,sp,-32
    80008ea4:	00113c23          	sd	ra,24(sp)
    80008ea8:	00813823          	sd	s0,16(sp)
    80008eac:	00913423          	sd	s1,8(sp)
    80008eb0:	02010413          	addi	s0,sp,32
    80008eb4:	00050493          	mv	s1,a0
    80008eb8:	00007797          	auipc	a5,0x7
    80008ebc:	86078793          	addi	a5,a5,-1952 # 8000f718 <_ZTVN28ConsumerProducerCPP_API_test8ProducerE+0x10>
    80008ec0:	00f53023          	sd	a5,0(a0)
    80008ec4:	ffffb097          	auipc	ra,0xffffb
    80008ec8:	178080e7          	jalr	376(ra) # 8000403c <_ZN6ThreadD1Ev>
    80008ecc:	00048513          	mv	a0,s1
    80008ed0:	ffffb097          	auipc	ra,0xffffb
    80008ed4:	330080e7          	jalr	816(ra) # 80004200 <_ZdlPv>
    80008ed8:	01813083          	ld	ra,24(sp)
    80008edc:	01013403          	ld	s0,16(sp)
    80008ee0:	00813483          	ld	s1,8(sp)
    80008ee4:	02010113          	addi	sp,sp,32
    80008ee8:	00008067          	ret

0000000080008eec <_ZN28ConsumerProducerCPP_API_test16ProducerKeyborad3runEv>:
        void run() override {
    80008eec:	fe010113          	addi	sp,sp,-32
    80008ef0:	00113c23          	sd	ra,24(sp)
    80008ef4:	00813823          	sd	s0,16(sp)
    80008ef8:	00913423          	sd	s1,8(sp)
    80008efc:	02010413          	addi	s0,sp,32
    80008f00:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    80008f04:	ffff8097          	auipc	ra,0xffff8
    80008f08:	6f0080e7          	jalr	1776(ra) # 800015f4 <getc>
    80008f0c:	0005059b          	sext.w	a1,a0
    80008f10:	01b00793          	li	a5,27
    80008f14:	00f58c63          	beq	a1,a5,80008f2c <_ZN28ConsumerProducerCPP_API_test16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80008f18:	0104b783          	ld	a5,16(s1)
    80008f1c:	0087b503          	ld	a0,8(a5)
    80008f20:	ffffd097          	auipc	ra,0xffffd
    80008f24:	298080e7          	jalr	664(ra) # 800061b8 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    80008f28:	fddff06f          	j	80008f04 <_ZN28ConsumerProducerCPP_API_test16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80008f2c:	00100793          	li	a5,1
    80008f30:	00007717          	auipc	a4,0x7
    80008f34:	b2f72823          	sw	a5,-1232(a4) # 8000fa60 <_ZN28ConsumerProducerCPP_API_test9threadEndE>
            td->buffer->put('!');
    80008f38:	0104b783          	ld	a5,16(s1)
    80008f3c:	02100593          	li	a1,33
    80008f40:	0087b503          	ld	a0,8(a5)
    80008f44:	ffffd097          	auipc	ra,0xffffd
    80008f48:	274080e7          	jalr	628(ra) # 800061b8 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80008f4c:	0104b783          	ld	a5,16(s1)
    80008f50:	0107b503          	ld	a0,16(a5)
    80008f54:	ffffb097          	auipc	ra,0xffffb
    80008f58:	5e4080e7          	jalr	1508(ra) # 80004538 <_ZN9Semaphore6signalEv>
        }
    80008f5c:	01813083          	ld	ra,24(sp)
    80008f60:	01013403          	ld	s0,16(sp)
    80008f64:	00813483          	ld	s1,8(sp)
    80008f68:	02010113          	addi	sp,sp,32
    80008f6c:	00008067          	ret

0000000080008f70 <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv>:
        void run() override {
    80008f70:	fd010113          	addi	sp,sp,-48
    80008f74:	02113423          	sd	ra,40(sp)
    80008f78:	02813023          	sd	s0,32(sp)
    80008f7c:	00913c23          	sd	s1,24(sp)
    80008f80:	01213823          	sd	s2,16(sp)
    80008f84:	01313423          	sd	s3,8(sp)
    80008f88:	03010413          	addi	s0,sp,48
    80008f8c:	00050913          	mv	s2,a0
            int i = 0;
    80008f90:	00000993          	li	s3,0
    80008f94:	0100006f          	j	80008fa4 <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv+0x34>
                    Console::putc('\n');
    80008f98:	00a00513          	li	a0,10
    80008f9c:	ffffb097          	auipc	ra,0xffffb
    80008fa0:	5f0080e7          	jalr	1520(ra) # 8000458c <_ZN7Console4putcEc>
            while (!threadEnd) {
    80008fa4:	00007797          	auipc	a5,0x7
    80008fa8:	abc7a783          	lw	a5,-1348(a5) # 8000fa60 <_ZN28ConsumerProducerCPP_API_test9threadEndE>
    80008fac:	04079a63          	bnez	a5,80009000 <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80008fb0:	01093783          	ld	a5,16(s2)
    80008fb4:	0087b503          	ld	a0,8(a5)
    80008fb8:	ffffd097          	auipc	ra,0xffffd
    80008fbc:	290080e7          	jalr	656(ra) # 80006248 <_ZN9BufferCPP3getEv>
                i++;
    80008fc0:	0019849b          	addiw	s1,s3,1
    80008fc4:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80008fc8:	0ff57513          	andi	a0,a0,255
    80008fcc:	ffffb097          	auipc	ra,0xffffb
    80008fd0:	5c0080e7          	jalr	1472(ra) # 8000458c <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80008fd4:	05000793          	li	a5,80
    80008fd8:	02f4e4bb          	remw	s1,s1,a5
    80008fdc:	fc0494e3          	bnez	s1,80008fa4 <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv+0x34>
    80008fe0:	fb9ff06f          	j	80008f98 <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80008fe4:	01093783          	ld	a5,16(s2)
    80008fe8:	0087b503          	ld	a0,8(a5)
    80008fec:	ffffd097          	auipc	ra,0xffffd
    80008ff0:	25c080e7          	jalr	604(ra) # 80006248 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80008ff4:	0ff57513          	andi	a0,a0,255
    80008ff8:	ffffb097          	auipc	ra,0xffffb
    80008ffc:	594080e7          	jalr	1428(ra) # 8000458c <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80009000:	01093783          	ld	a5,16(s2)
    80009004:	0087b503          	ld	a0,8(a5)
    80009008:	ffffd097          	auipc	ra,0xffffd
    8000900c:	2cc080e7          	jalr	716(ra) # 800062d4 <_ZN9BufferCPP6getCntEv>
    80009010:	fca04ae3          	bgtz	a0,80008fe4 <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv+0x74>
            td->sem->signal();
    80009014:	01093783          	ld	a5,16(s2)
    80009018:	0107b503          	ld	a0,16(a5)
    8000901c:	ffffb097          	auipc	ra,0xffffb
    80009020:	51c080e7          	jalr	1308(ra) # 80004538 <_ZN9Semaphore6signalEv>
        }
    80009024:	02813083          	ld	ra,40(sp)
    80009028:	02013403          	ld	s0,32(sp)
    8000902c:	01813483          	ld	s1,24(sp)
    80009030:	01013903          	ld	s2,16(sp)
    80009034:	00813983          	ld	s3,8(sp)
    80009038:	03010113          	addi	sp,sp,48
    8000903c:	00008067          	ret

0000000080009040 <_ZN28ConsumerProducerCPP_API_test8Producer3runEv>:
        void run() override {
    80009040:	fe010113          	addi	sp,sp,-32
    80009044:	00113c23          	sd	ra,24(sp)
    80009048:	00813823          	sd	s0,16(sp)
    8000904c:	00913423          	sd	s1,8(sp)
    80009050:	01213023          	sd	s2,0(sp)
    80009054:	02010413          	addi	s0,sp,32
    80009058:	00050493          	mv	s1,a0
            int i = 0;
    8000905c:	00000913          	li	s2,0
            while (!threadEnd) {
    80009060:	00007797          	auipc	a5,0x7
    80009064:	a007a783          	lw	a5,-1536(a5) # 8000fa60 <_ZN28ConsumerProducerCPP_API_test9threadEndE>
    80009068:	04079263          	bnez	a5,800090ac <_ZN28ConsumerProducerCPP_API_test8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    8000906c:	0104b783          	ld	a5,16(s1)
    80009070:	0007a583          	lw	a1,0(a5)
    80009074:	0305859b          	addiw	a1,a1,48
    80009078:	0087b503          	ld	a0,8(a5)
    8000907c:	ffffd097          	auipc	ra,0xffffd
    80009080:	13c080e7          	jalr	316(ra) # 800061b8 <_ZN9BufferCPP3putEi>
                i++;
    80009084:	0019071b          	addiw	a4,s2,1
    80009088:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    8000908c:	0104b783          	ld	a5,16(s1)
    80009090:	0007a783          	lw	a5,0(a5)
    80009094:	00e787bb          	addw	a5,a5,a4
    80009098:	00500513          	li	a0,5
    8000909c:	02a7e53b          	remw	a0,a5,a0
    800090a0:	ffffb097          	auipc	ra,0xffffb
    800090a4:	330080e7          	jalr	816(ra) # 800043d0 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    800090a8:	fb9ff06f          	j	80009060 <_ZN28ConsumerProducerCPP_API_test8Producer3runEv+0x20>
            td->sem->signal();
    800090ac:	0104b783          	ld	a5,16(s1)
    800090b0:	0107b503          	ld	a0,16(a5)
    800090b4:	ffffb097          	auipc	ra,0xffffb
    800090b8:	484080e7          	jalr	1156(ra) # 80004538 <_ZN9Semaphore6signalEv>
        }
    800090bc:	01813083          	ld	ra,24(sp)
    800090c0:	01013403          	ld	s0,16(sp)
    800090c4:	00813483          	ld	s1,8(sp)
    800090c8:	00013903          	ld	s2,0(sp)
    800090cc:	02010113          	addi	sp,sp,32
    800090d0:	00008067          	ret

00000000800090d4 <_ZN20Threads_CPP_API_test7WorkerA3runEv>:
        void run() override {
    800090d4:	ff010113          	addi	sp,sp,-16
    800090d8:	00113423          	sd	ra,8(sp)
    800090dc:	00813023          	sd	s0,0(sp)
    800090e0:	01010413          	addi	s0,sp,16
            workerBodyA(nullptr);
    800090e4:	00000593          	li	a1,0
    800090e8:	ffffe097          	auipc	ra,0xffffe
    800090ec:	d00080e7          	jalr	-768(ra) # 80006de8 <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv>
        }
    800090f0:	00813083          	ld	ra,8(sp)
    800090f4:	00013403          	ld	s0,0(sp)
    800090f8:	01010113          	addi	sp,sp,16
    800090fc:	00008067          	ret

0000000080009100 <_ZN20Threads_CPP_API_test7WorkerB3runEv>:
        void run() override {
    80009100:	ff010113          	addi	sp,sp,-16
    80009104:	00113423          	sd	ra,8(sp)
    80009108:	00813023          	sd	s0,0(sp)
    8000910c:	01010413          	addi	s0,sp,16
            workerBodyB(nullptr);
    80009110:	00000593          	li	a1,0
    80009114:	ffffe097          	auipc	ra,0xffffe
    80009118:	da0080e7          	jalr	-608(ra) # 80006eb4 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv>
        }
    8000911c:	00813083          	ld	ra,8(sp)
    80009120:	00013403          	ld	s0,0(sp)
    80009124:	01010113          	addi	sp,sp,16
    80009128:	00008067          	ret

000000008000912c <_ZN20Threads_CPP_API_test7WorkerC3runEv>:
        void run() override {
    8000912c:	ff010113          	addi	sp,sp,-16
    80009130:	00113423          	sd	ra,8(sp)
    80009134:	00813023          	sd	s0,0(sp)
    80009138:	01010413          	addi	s0,sp,16
            workerBodyC(nullptr);
    8000913c:	00000593          	li	a1,0
    80009140:	ffffe097          	auipc	ra,0xffffe
    80009144:	e48080e7          	jalr	-440(ra) # 80006f88 <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv>
        }
    80009148:	00813083          	ld	ra,8(sp)
    8000914c:	00013403          	ld	s0,0(sp)
    80009150:	01010113          	addi	sp,sp,16
    80009154:	00008067          	ret

0000000080009158 <_ZN20Threads_CPP_API_test7WorkerD3runEv>:
        void run() override {
    80009158:	ff010113          	addi	sp,sp,-16
    8000915c:	00113423          	sd	ra,8(sp)
    80009160:	00813023          	sd	s0,0(sp)
    80009164:	01010413          	addi	s0,sp,16
            workerBodyD(nullptr);
    80009168:	00000593          	li	a1,0
    8000916c:	ffffe097          	auipc	ra,0xffffe
    80009170:	f9c080e7          	jalr	-100(ra) # 80007108 <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv>
        }
    80009174:	00813083          	ld	ra,8(sp)
    80009178:	00013403          	ld	s0,0(sp)
    8000917c:	01010113          	addi	sp,sp,16
    80009180:	00008067          	ret

0000000080009184 <_ZN6BufferdlEPv>:
    void operator delete(void* p)noexcept{
    80009184:	ff010113          	addi	sp,sp,-16
    80009188:	00113423          	sd	ra,8(sp)
    8000918c:	00813023          	sd	s0,0(sp)
    80009190:	01010413          	addi	s0,sp,16
    80009194:	00050593          	mv	a1,a0
    80009198:	00006797          	auipc	a5,0x6
    8000919c:	6987c783          	lbu	a5,1688(a5) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800091a0:	02078263          	beqz	a5,800091c4 <_ZN6BufferdlEPv+0x40>
        MemoryAllocator::getInstance().memory_free(p);
    800091a4:	00006517          	auipc	a0,0x6
    800091a8:	69450513          	addi	a0,a0,1684 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800091ac:	ffffc097          	auipc	ra,0xffffc
    800091b0:	28c080e7          	jalr	652(ra) # 80005438 <_ZN15MemoryAllocator11memory_freeEPv>
    }
    800091b4:	00813083          	ld	ra,8(sp)
    800091b8:	00013403          	ld	s0,0(sp)
    800091bc:	01010113          	addi	sp,sp,16
    800091c0:	00008067          	ret
    MemoryAllocator(){
    800091c4:	00006617          	auipc	a2,0x6
    800091c8:	67460613          	addi	a2,a2,1652 # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800091cc:	00006797          	auipc	a5,0x6
    800091d0:	61c7b783          	ld	a5,1564(a5) # 8000f7e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800091d4:	0007b703          	ld	a4,0(a5)
    800091d8:	00006797          	auipc	a5,0x6
    800091dc:	5c87b783          	ld	a5,1480(a5) # 8000f7a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800091e0:	0007b783          	ld	a5,0(a5)
    800091e4:	40f706b3          	sub	a3,a4,a5
    800091e8:	0036d693          	srli	a3,a3,0x3
    800091ec:	00d787b3          	add	a5,a5,a3
    800091f0:	00178793          	addi	a5,a5,1
    800091f4:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800091f8:	fff70713          	addi	a4,a4,-1
    800091fc:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80009200:	03f7f693          	andi	a3,a5,63
    80009204:	00068663          	beqz	a3,80009210 <_ZN6BufferdlEPv+0x8c>
    80009208:	04000613          	li	a2,64
    8000920c:	40d606b3          	sub	a3,a2,a3
    80009210:	00d787b3          	add	a5,a5,a3
    80009214:	00006697          	auipc	a3,0x6
    80009218:	62f6b223          	sd	a5,1572(a3) # 8000f838 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    8000921c:	40f70733          	sub	a4,a4,a5
    80009220:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80009224:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80009228:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    8000922c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80009230:	00100793          	li	a5,1
    80009234:	00006717          	auipc	a4,0x6
    80009238:	5ef70e23          	sb	a5,1532(a4) # 8000f830 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000923c:	f69ff06f          	j	800091a4 <_ZN6BufferdlEPv+0x20>

0000000080009240 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard3runEv>:
        void run() override {
    80009240:	ff010113          	addi	sp,sp,-16
    80009244:	00113423          	sd	ra,8(sp)
    80009248:	00813023          	sd	s0,0(sp)
    8000924c:	01010413          	addi	s0,sp,16
            producerKeyboard(td);
    80009250:	01053583          	ld	a1,16(a0)
    80009254:	ffffe097          	auipc	ra,0xffffe
    80009258:	610080e7          	jalr	1552(ra) # 80007864 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv>
        }
    8000925c:	00813083          	ld	ra,8(sp)
    80009260:	00013403          	ld	s0,0(sp)
    80009264:	01010113          	addi	sp,sp,16
    80009268:	00008067          	ret

000000008000926c <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer3runEv>:
        void run() override {
    8000926c:	ff010113          	addi	sp,sp,-16
    80009270:	00113423          	sd	ra,8(sp)
    80009274:	00813023          	sd	s0,0(sp)
    80009278:	01010413          	addi	s0,sp,16
            producer(td);
    8000927c:	01053583          	ld	a1,16(a0)
    80009280:	ffffe097          	auipc	ra,0xffffe
    80009284:	6a4080e7          	jalr	1700(ra) # 80007924 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv>
        }
    80009288:	00813083          	ld	ra,8(sp)
    8000928c:	00013403          	ld	s0,0(sp)
    80009290:	01010113          	addi	sp,sp,16
    80009294:	00008067          	ret

0000000080009298 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer3runEv>:
        void run() override {
    80009298:	ff010113          	addi	sp,sp,-16
    8000929c:	00113423          	sd	ra,8(sp)
    800092a0:	00813023          	sd	s0,0(sp)
    800092a4:	01010413          	addi	s0,sp,16
            consumer(td);
    800092a8:	01053583          	ld	a1,16(a0)
    800092ac:	ffffe097          	auipc	ra,0xffffe
    800092b0:	70c080e7          	jalr	1804(ra) # 800079b8 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv>
        }
    800092b4:	00813083          	ld	ra,8(sp)
    800092b8:	00013403          	ld	s0,0(sp)
    800092bc:	01010113          	addi	sp,sp,16
    800092c0:	00008067          	ret

00000000800092c4 <_Z9test_prviv>:
    long id;
    bool finished;
};


void test_prvi() {
    800092c4:	fc010113          	addi	sp,sp,-64
    800092c8:	02113c23          	sd	ra,56(sp)
    800092cc:	02813823          	sd	s0,48(sp)
    800092d0:	02913423          	sd	s1,40(sp)
    800092d4:	04010413          	addi	s0,sp,64
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    800092d8:	fc040493          	addi	s1,s0,-64
    800092dc:	00048513          	mv	a0,s1
    800092e0:	ffffb097          	auipc	ra,0xffffb
    800092e4:	16c080e7          	jalr	364(ra) # 8000444c <_ZN6ThreadC1Ev>
    800092e8:	00006797          	auipc	a5,0x6
    800092ec:	48078793          	addi	a5,a5,1152 # 8000f768 <_ZTV10ForkThread+0x10>
    800092f0:	fcf43023          	sd	a5,-64(s0)
    800092f4:	00100793          	li	a5,1
    800092f8:	fcf43823          	sd	a5,-48(s0)
    800092fc:	fc040c23          	sb	zero,-40(s0)
    ForkThread thread(1);

    thread.start();
    80009300:	00048513          	mv	a0,s1
    80009304:	ffffb097          	auipc	ra,0xffffb
    80009308:	074080e7          	jalr	116(ra) # 80004378 <_ZN6Thread5startEv>
        return finished;
    8000930c:	fd844783          	lbu	a5,-40(s0)

    while (!thread.isFinished()) {
    80009310:	00079863          	bnez	a5,80009320 <_Z9test_prviv+0x5c>
        thread_dispatch();
    80009314:	ffff8097          	auipc	ra,0xffff8
    80009318:	08c080e7          	jalr	140(ra) # 800013a0 <thread_dispatch>
    8000931c:	ff1ff06f          	j	8000930c <_Z9test_prviv+0x48>
    }

    printString("User main finished\n");
    80009320:	00003517          	auipc	a0,0x3
    80009324:	58850513          	addi	a0,a0,1416 # 8000c8a8 <CONSOLE_STATUS+0x898>
    80009328:	ffffd097          	auipc	ra,0xffffd
    8000932c:	a80080e7          	jalr	-1408(ra) # 80005da8 <_Z11printStringPKc>
class ForkThread : public Thread {
    80009330:	00006797          	auipc	a5,0x6
    80009334:	43878793          	addi	a5,a5,1080 # 8000f768 <_ZTV10ForkThread+0x10>
    80009338:	fcf43023          	sd	a5,-64(s0)
    8000933c:	fc040513          	addi	a0,s0,-64
    80009340:	ffffb097          	auipc	ra,0xffffb
    80009344:	cfc080e7          	jalr	-772(ra) # 8000403c <_ZN6ThreadD1Ev>
    80009348:	03813083          	ld	ra,56(sp)
    8000934c:	03013403          	ld	s0,48(sp)
    80009350:	02813483          	ld	s1,40(sp)
    80009354:	04010113          	addi	sp,sp,64
    80009358:	00008067          	ret
    8000935c:	00050493          	mv	s1,a0
class ForkThread : public Thread {
    80009360:	00006797          	auipc	a5,0x6
    80009364:	40878793          	addi	a5,a5,1032 # 8000f768 <_ZTV10ForkThread+0x10>
    80009368:	fcf43023          	sd	a5,-64(s0)
    8000936c:	fc040513          	addi	a0,s0,-64
    80009370:	ffffb097          	auipc	ra,0xffffb
    80009374:	ccc080e7          	jalr	-820(ra) # 8000403c <_ZN6ThreadD1Ev>
    80009378:	00048513          	mv	a0,s1
    8000937c:	000cb097          	auipc	ra,0xcb
    80009380:	cdc080e7          	jalr	-804(ra) # 800d4058 <_Unwind_Resume>

0000000080009384 <_ZN10ForkThread3runEv>:
    virtual void run() {
    80009384:	fc010113          	addi	sp,sp,-64
    80009388:	02113c23          	sd	ra,56(sp)
    8000938c:	02813823          	sd	s0,48(sp)
    80009390:	02913423          	sd	s1,40(sp)
    80009394:	03213023          	sd	s2,32(sp)
    80009398:	01313c23          	sd	s3,24(sp)
    8000939c:	01413823          	sd	s4,16(sp)
    800093a0:	01513423          	sd	s5,8(sp)
    800093a4:	01613023          	sd	s6,0(sp)
    800093a8:	04010413          	addi	s0,sp,64
    800093ac:	00050a13          	mv	s4,a0
        printString("Started thread id:");
    800093b0:	00003517          	auipc	a0,0x3
    800093b4:	4c850513          	addi	a0,a0,1224 # 8000c878 <CONSOLE_STATUS+0x868>
    800093b8:	ffffd097          	auipc	ra,0xffffd
    800093bc:	9f0080e7          	jalr	-1552(ra) # 80005da8 <_Z11printStringPKc>
        printInt(id);
    800093c0:	00000613          	li	a2,0
    800093c4:	00a00593          	li	a1,10
    800093c8:	010a2503          	lw	a0,16(s4)
    800093cc:	ffffd097          	auipc	ra,0xffffd
    800093d0:	b74080e7          	jalr	-1164(ra) # 80005f40 <_Z8printIntiii>
        printString("\n");
    800093d4:	00003517          	auipc	a0,0x3
    800093d8:	e7450513          	addi	a0,a0,-396 # 8000c248 <CONSOLE_STATUS+0x238>
    800093dc:	ffffd097          	auipc	ra,0xffffd
    800093e0:	9cc080e7          	jalr	-1588(ra) # 80005da8 <_Z11printStringPKc>
        ForkThread* thread = new ForkThread(id + 1);
    800093e4:	02000513          	li	a0,32
    800093e8:	ffffb097          	auipc	ra,0xffffb
    800093ec:	dc8080e7          	jalr	-568(ra) # 800041b0 <_Znwm>
    800093f0:	00050993          	mv	s3,a0
    800093f4:	02050463          	beqz	a0,8000941c <_ZN10ForkThread3runEv+0x98>
    800093f8:	010a3483          	ld	s1,16(s4)
    800093fc:	00148493          	addi	s1,s1,1
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80009400:	ffffb097          	auipc	ra,0xffffb
    80009404:	04c080e7          	jalr	76(ra) # 8000444c <_ZN6ThreadC1Ev>
    80009408:	00006797          	auipc	a5,0x6
    8000940c:	36078793          	addi	a5,a5,864 # 8000f768 <_ZTV10ForkThread+0x10>
    80009410:	00f9b023          	sd	a5,0(s3)
    80009414:	0099b823          	sd	s1,16(s3)
    80009418:	00098c23          	sb	zero,24(s3)
        ForkThread** threads = (ForkThread**) mem_alloc(sizeof(ForkThread*) * id);
    8000941c:	010a3503          	ld	a0,16(s4)
    80009420:	00351513          	slli	a0,a0,0x3
    80009424:	ffff8097          	auipc	ra,0xffff8
    80009428:	e20080e7          	jalr	-480(ra) # 80001244 <mem_alloc>
    8000942c:	00050a93          	mv	s5,a0
        if (threads != nullptr) {
    80009430:	10050863          	beqz	a0,80009540 <_ZN10ForkThread3runEv+0x1bc>
            for (long i = 0; i < id; i++) {
    80009434:	00000913          	li	s2,0
    80009438:	0140006f          	j	8000944c <_ZN10ForkThread3runEv+0xc8>
                threads[i] = new ForkThread(id);
    8000943c:	00391793          	slli	a5,s2,0x3
    80009440:	00fa87b3          	add	a5,s5,a5
    80009444:	0097b023          	sd	s1,0(a5)
            for (long i = 0; i < id; i++) {
    80009448:	00190913          	addi	s2,s2,1
    8000944c:	010a3783          	ld	a5,16(s4)
    80009450:	02f95e63          	bge	s2,a5,8000948c <_ZN10ForkThread3runEv+0x108>
                threads[i] = new ForkThread(id);
    80009454:	02000513          	li	a0,32
    80009458:	ffffb097          	auipc	ra,0xffffb
    8000945c:	d58080e7          	jalr	-680(ra) # 800041b0 <_Znwm>
    80009460:	00050493          	mv	s1,a0
    80009464:	fc050ce3          	beqz	a0,8000943c <_ZN10ForkThread3runEv+0xb8>
    80009468:	010a3b03          	ld	s6,16(s4)
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    8000946c:	ffffb097          	auipc	ra,0xffffb
    80009470:	fe0080e7          	jalr	-32(ra) # 8000444c <_ZN6ThreadC1Ev>
    80009474:	00006797          	auipc	a5,0x6
    80009478:	2f478793          	addi	a5,a5,756 # 8000f768 <_ZTV10ForkThread+0x10>
    8000947c:	00f4b023          	sd	a5,0(s1)
    80009480:	0164b823          	sd	s6,16(s1)
    80009484:	00048c23          	sb	zero,24(s1)
    80009488:	fb5ff06f          	j	8000943c <_ZN10ForkThread3runEv+0xb8>
            if (thread != nullptr) {
    8000948c:	06098a63          	beqz	s3,80009500 <_ZN10ForkThread3runEv+0x17c>
                if (thread->start() == 0) {
    80009490:	00098513          	mv	a0,s3
    80009494:	ffffb097          	auipc	ra,0xffffb
    80009498:	ee4080e7          	jalr	-284(ra) # 80004378 <_ZN6Thread5startEv>
    8000949c:	00050913          	mv	s2,a0
    800094a0:	04051863          	bnez	a0,800094f0 <_ZN10ForkThread3runEv+0x16c>
                    for (int i = 0; i < 5000; i++) {
    800094a4:	00050493          	mv	s1,a0
    800094a8:	0100006f          	j	800094b8 <_ZN10ForkThread3runEv+0x134>
                        thread_dispatch();
    800094ac:	ffff8097          	auipc	ra,0xffff8
    800094b0:	ef4080e7          	jalr	-268(ra) # 800013a0 <thread_dispatch>
                    for (int i = 0; i < 5000; i++) {
    800094b4:	0014849b          	addiw	s1,s1,1
    800094b8:	000017b7          	lui	a5,0x1
    800094bc:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    800094c0:	0097ce63          	blt	a5,s1,800094dc <_ZN10ForkThread3runEv+0x158>
                        for (int j = 0; j < 5000; j++) {
    800094c4:	00090713          	mv	a4,s2
    800094c8:	000017b7          	lui	a5,0x1
    800094cc:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    800094d0:	fce7cee3          	blt	a5,a4,800094ac <_ZN10ForkThread3runEv+0x128>
    800094d4:	0017071b          	addiw	a4,a4,1
    800094d8:	ff1ff06f          	j	800094c8 <_ZN10ForkThread3runEv+0x144>
        return finished;
    800094dc:	0189c783          	lbu	a5,24(s3)
                    while (!thread->isFinished()) {
    800094e0:	00079863          	bnez	a5,800094f0 <_ZN10ForkThread3runEv+0x16c>
                        thread_dispatch();
    800094e4:	ffff8097          	auipc	ra,0xffff8
    800094e8:	ebc080e7          	jalr	-324(ra) # 800013a0 <thread_dispatch>
                    while (!thread->isFinished()) {
    800094ec:	ff1ff06f          	j	800094dc <_ZN10ForkThread3runEv+0x158>
                delete thread;
    800094f0:	0009b783          	ld	a5,0(s3)
    800094f4:	0087b783          	ld	a5,8(a5)
    800094f8:	00098513          	mv	a0,s3
    800094fc:	000780e7          	jalr	a5
                        for (int j = 0; j < 5000; j++) {
    80009500:	00000493          	li	s1,0
    80009504:	0080006f          	j	8000950c <_ZN10ForkThread3runEv+0x188>
            for (long i = 0; i < id; i++) {
    80009508:	00148493          	addi	s1,s1,1
    8000950c:	010a3783          	ld	a5,16(s4)
    80009510:	02f4d263          	bge	s1,a5,80009534 <_ZN10ForkThread3runEv+0x1b0>
                delete threads[i];
    80009514:	00349793          	slli	a5,s1,0x3
    80009518:	00fa87b3          	add	a5,s5,a5
    8000951c:	0007b503          	ld	a0,0(a5)
    80009520:	fe0504e3          	beqz	a0,80009508 <_ZN10ForkThread3runEv+0x184>
    80009524:	00053783          	ld	a5,0(a0)
    80009528:	0087b783          	ld	a5,8(a5)
    8000952c:	000780e7          	jalr	a5
    80009530:	fd9ff06f          	j	80009508 <_ZN10ForkThread3runEv+0x184>
            mem_free(threads);
    80009534:	000a8513          	mv	a0,s5
    80009538:	ffff8097          	auipc	ra,0xffff8
    8000953c:	d64080e7          	jalr	-668(ra) # 8000129c <mem_free>
        printString("Finished thread id:");
    80009540:	00003517          	auipc	a0,0x3
    80009544:	35050513          	addi	a0,a0,848 # 8000c890 <CONSOLE_STATUS+0x880>
    80009548:	ffffd097          	auipc	ra,0xffffd
    8000954c:	860080e7          	jalr	-1952(ra) # 80005da8 <_Z11printStringPKc>
        printInt(id);
    80009550:	00000613          	li	a2,0
    80009554:	00a00593          	li	a1,10
    80009558:	010a2503          	lw	a0,16(s4)
    8000955c:	ffffd097          	auipc	ra,0xffffd
    80009560:	9e4080e7          	jalr	-1564(ra) # 80005f40 <_Z8printIntiii>
        printString("\n");
    80009564:	00003517          	auipc	a0,0x3
    80009568:	ce450513          	addi	a0,a0,-796 # 8000c248 <CONSOLE_STATUS+0x238>
    8000956c:	ffffd097          	auipc	ra,0xffffd
    80009570:	83c080e7          	jalr	-1988(ra) # 80005da8 <_Z11printStringPKc>
        finished = true;
    80009574:	00100793          	li	a5,1
    80009578:	00fa0c23          	sb	a5,24(s4)
    }
    8000957c:	03813083          	ld	ra,56(sp)
    80009580:	03013403          	ld	s0,48(sp)
    80009584:	02813483          	ld	s1,40(sp)
    80009588:	02013903          	ld	s2,32(sp)
    8000958c:	01813983          	ld	s3,24(sp)
    80009590:	01013a03          	ld	s4,16(sp)
    80009594:	00813a83          	ld	s5,8(sp)
    80009598:	00013b03          	ld	s6,0(sp)
    8000959c:	04010113          	addi	sp,sp,64
    800095a0:	00008067          	ret

00000000800095a4 <_ZN10ForkThreadD1Ev>:
class ForkThread : public Thread {
    800095a4:	ff010113          	addi	sp,sp,-16
    800095a8:	00113423          	sd	ra,8(sp)
    800095ac:	00813023          	sd	s0,0(sp)
    800095b0:	01010413          	addi	s0,sp,16
    800095b4:	00006797          	auipc	a5,0x6
    800095b8:	1b478793          	addi	a5,a5,436 # 8000f768 <_ZTV10ForkThread+0x10>
    800095bc:	00f53023          	sd	a5,0(a0)
    800095c0:	ffffb097          	auipc	ra,0xffffb
    800095c4:	a7c080e7          	jalr	-1412(ra) # 8000403c <_ZN6ThreadD1Ev>
    800095c8:	00813083          	ld	ra,8(sp)
    800095cc:	00013403          	ld	s0,0(sp)
    800095d0:	01010113          	addi	sp,sp,16
    800095d4:	00008067          	ret

00000000800095d8 <_ZN10ForkThreadD0Ev>:
    800095d8:	fe010113          	addi	sp,sp,-32
    800095dc:	00113c23          	sd	ra,24(sp)
    800095e0:	00813823          	sd	s0,16(sp)
    800095e4:	00913423          	sd	s1,8(sp)
    800095e8:	02010413          	addi	s0,sp,32
    800095ec:	00050493          	mv	s1,a0
    800095f0:	00006797          	auipc	a5,0x6
    800095f4:	17878793          	addi	a5,a5,376 # 8000f768 <_ZTV10ForkThread+0x10>
    800095f8:	00f53023          	sd	a5,0(a0)
    800095fc:	ffffb097          	auipc	ra,0xffffb
    80009600:	a40080e7          	jalr	-1472(ra) # 8000403c <_ZN6ThreadD1Ev>
    80009604:	00048513          	mv	a0,s1
    80009608:	ffffb097          	auipc	ra,0xffffb
    8000960c:	bf8080e7          	jalr	-1032(ra) # 80004200 <_ZdlPv>
    80009610:	01813083          	ld	ra,24(sp)
    80009614:	01013403          	ld	s0,16(sp)
    80009618:	00813483          	ld	s1,8(sp)
    8000961c:	02010113          	addi	sp,sp,32
    80009620:	00008067          	ret

0000000080009624 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80009624:	fe010113          	addi	sp,sp,-32
    80009628:	00113c23          	sd	ra,24(sp)
    8000962c:	00813823          	sd	s0,16(sp)
    80009630:	00913423          	sd	s1,8(sp)
    80009634:	01213023          	sd	s2,0(sp)
    80009638:	02010413          	addi	s0,sp,32
    8000963c:	00050493          	mv	s1,a0
    80009640:	00058913          	mv	s2,a1
    80009644:	0015879b          	addiw	a5,a1,1
    80009648:	0007851b          	sext.w	a0,a5
    8000964c:	00f4a023          	sw	a5,0(s1)
    80009650:	0004a823          	sw	zero,16(s1)
    80009654:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80009658:	00251513          	slli	a0,a0,0x2
    8000965c:	ffff8097          	auipc	ra,0xffff8
    80009660:	be8080e7          	jalr	-1048(ra) # 80001244 <mem_alloc>
    80009664:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80009668:	00000593          	li	a1,0
    8000966c:	02048513          	addi	a0,s1,32
    80009670:	ffff8097          	auipc	ra,0xffff8
    80009674:	e34080e7          	jalr	-460(ra) # 800014a4 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80009678:	00090593          	mv	a1,s2
    8000967c:	01848513          	addi	a0,s1,24
    80009680:	ffff8097          	auipc	ra,0xffff8
    80009684:	e24080e7          	jalr	-476(ra) # 800014a4 <sem_open>
    sem_open(&mutexHead, 1);
    80009688:	00100593          	li	a1,1
    8000968c:	02848513          	addi	a0,s1,40
    80009690:	ffff8097          	auipc	ra,0xffff8
    80009694:	e14080e7          	jalr	-492(ra) # 800014a4 <sem_open>
    sem_open(&mutexTail, 1);
    80009698:	00100593          	li	a1,1
    8000969c:	03048513          	addi	a0,s1,48
    800096a0:	ffff8097          	auipc	ra,0xffff8
    800096a4:	e04080e7          	jalr	-508(ra) # 800014a4 <sem_open>
}
    800096a8:	01813083          	ld	ra,24(sp)
    800096ac:	01013403          	ld	s0,16(sp)
    800096b0:	00813483          	ld	s1,8(sp)
    800096b4:	00013903          	ld	s2,0(sp)
    800096b8:	02010113          	addi	sp,sp,32
    800096bc:	00008067          	ret

00000000800096c0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800096c0:	fe010113          	addi	sp,sp,-32
    800096c4:	00113c23          	sd	ra,24(sp)
    800096c8:	00813823          	sd	s0,16(sp)
    800096cc:	00913423          	sd	s1,8(sp)
    800096d0:	01213023          	sd	s2,0(sp)
    800096d4:	02010413          	addi	s0,sp,32
    800096d8:	00050493          	mv	s1,a0
    800096dc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800096e0:	01853503          	ld	a0,24(a0)
    800096e4:	ffff8097          	auipc	ra,0xffff8
    800096e8:	e68080e7          	jalr	-408(ra) # 8000154c <sem_wait>

    sem_wait(mutexTail);
    800096ec:	0304b503          	ld	a0,48(s1)
    800096f0:	ffff8097          	auipc	ra,0xffff8
    800096f4:	e5c080e7          	jalr	-420(ra) # 8000154c <sem_wait>
    buffer[tail] = val;
    800096f8:	0084b783          	ld	a5,8(s1)
    800096fc:	0144a703          	lw	a4,20(s1)
    80009700:	00271713          	slli	a4,a4,0x2
    80009704:	00e787b3          	add	a5,a5,a4
    80009708:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000970c:	0144a783          	lw	a5,20(s1)
    80009710:	0017879b          	addiw	a5,a5,1
    80009714:	0004a703          	lw	a4,0(s1)
    80009718:	02e7e7bb          	remw	a5,a5,a4
    8000971c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80009720:	0304b503          	ld	a0,48(s1)
    80009724:	ffff8097          	auipc	ra,0xffff8
    80009728:	e7c080e7          	jalr	-388(ra) # 800015a0 <sem_signal>

    sem_signal(itemAvailable);
    8000972c:	0204b503          	ld	a0,32(s1)
    80009730:	ffff8097          	auipc	ra,0xffff8
    80009734:	e70080e7          	jalr	-400(ra) # 800015a0 <sem_signal>

}
    80009738:	01813083          	ld	ra,24(sp)
    8000973c:	01013403          	ld	s0,16(sp)
    80009740:	00813483          	ld	s1,8(sp)
    80009744:	00013903          	ld	s2,0(sp)
    80009748:	02010113          	addi	sp,sp,32
    8000974c:	00008067          	ret

0000000080009750 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80009750:	fe010113          	addi	sp,sp,-32
    80009754:	00113c23          	sd	ra,24(sp)
    80009758:	00813823          	sd	s0,16(sp)
    8000975c:	00913423          	sd	s1,8(sp)
    80009760:	01213023          	sd	s2,0(sp)
    80009764:	02010413          	addi	s0,sp,32
    80009768:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000976c:	02053503          	ld	a0,32(a0)
    80009770:	ffff8097          	auipc	ra,0xffff8
    80009774:	ddc080e7          	jalr	-548(ra) # 8000154c <sem_wait>

    sem_wait(mutexHead);
    80009778:	0284b503          	ld	a0,40(s1)
    8000977c:	ffff8097          	auipc	ra,0xffff8
    80009780:	dd0080e7          	jalr	-560(ra) # 8000154c <sem_wait>

    int ret = buffer[head];
    80009784:	0084b703          	ld	a4,8(s1)
    80009788:	0104a783          	lw	a5,16(s1)
    8000978c:	00279693          	slli	a3,a5,0x2
    80009790:	00d70733          	add	a4,a4,a3
    80009794:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80009798:	0017879b          	addiw	a5,a5,1
    8000979c:	0004a703          	lw	a4,0(s1)
    800097a0:	02e7e7bb          	remw	a5,a5,a4
    800097a4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800097a8:	0284b503          	ld	a0,40(s1)
    800097ac:	ffff8097          	auipc	ra,0xffff8
    800097b0:	df4080e7          	jalr	-524(ra) # 800015a0 <sem_signal>

    sem_signal(spaceAvailable);
    800097b4:	0184b503          	ld	a0,24(s1)
    800097b8:	ffff8097          	auipc	ra,0xffff8
    800097bc:	de8080e7          	jalr	-536(ra) # 800015a0 <sem_signal>

    return ret;
}
    800097c0:	00090513          	mv	a0,s2
    800097c4:	01813083          	ld	ra,24(sp)
    800097c8:	01013403          	ld	s0,16(sp)
    800097cc:	00813483          	ld	s1,8(sp)
    800097d0:	00013903          	ld	s2,0(sp)
    800097d4:	02010113          	addi	sp,sp,32
    800097d8:	00008067          	ret

00000000800097dc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800097dc:	fe010113          	addi	sp,sp,-32
    800097e0:	00113c23          	sd	ra,24(sp)
    800097e4:	00813823          	sd	s0,16(sp)
    800097e8:	00913423          	sd	s1,8(sp)
    800097ec:	01213023          	sd	s2,0(sp)
    800097f0:	02010413          	addi	s0,sp,32
    800097f4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800097f8:	02853503          	ld	a0,40(a0)
    800097fc:	ffff8097          	auipc	ra,0xffff8
    80009800:	d50080e7          	jalr	-688(ra) # 8000154c <sem_wait>
    sem_wait(mutexTail);
    80009804:	0304b503          	ld	a0,48(s1)
    80009808:	ffff8097          	auipc	ra,0xffff8
    8000980c:	d44080e7          	jalr	-700(ra) # 8000154c <sem_wait>

    if (tail >= head) {
    80009810:	0144a783          	lw	a5,20(s1)
    80009814:	0104a903          	lw	s2,16(s1)
    80009818:	0327ce63          	blt	a5,s2,80009854 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000981c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80009820:	0304b503          	ld	a0,48(s1)
    80009824:	ffff8097          	auipc	ra,0xffff8
    80009828:	d7c080e7          	jalr	-644(ra) # 800015a0 <sem_signal>
    sem_signal(mutexHead);
    8000982c:	0284b503          	ld	a0,40(s1)
    80009830:	ffff8097          	auipc	ra,0xffff8
    80009834:	d70080e7          	jalr	-656(ra) # 800015a0 <sem_signal>

    return ret;
}
    80009838:	00090513          	mv	a0,s2
    8000983c:	01813083          	ld	ra,24(sp)
    80009840:	01013403          	ld	s0,16(sp)
    80009844:	00813483          	ld	s1,8(sp)
    80009848:	00013903          	ld	s2,0(sp)
    8000984c:	02010113          	addi	sp,sp,32
    80009850:	00008067          	ret
        ret = cap - head + tail;
    80009854:	0004a703          	lw	a4,0(s1)
    80009858:	4127093b          	subw	s2,a4,s2
    8000985c:	00f9093b          	addw	s2,s2,a5
    80009860:	fc1ff06f          	j	80009820 <_ZN6Buffer6getCntEv+0x44>

0000000080009864 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80009864:	fe010113          	addi	sp,sp,-32
    80009868:	00113c23          	sd	ra,24(sp)
    8000986c:	00813823          	sd	s0,16(sp)
    80009870:	00913423          	sd	s1,8(sp)
    80009874:	02010413          	addi	s0,sp,32
    80009878:	00050493          	mv	s1,a0
    putc('\n');
    8000987c:	00a00513          	li	a0,10
    80009880:	ffff8097          	auipc	ra,0xffff8
    80009884:	dc8080e7          	jalr	-568(ra) # 80001648 <putc>
    printString("Buffer deleted!\n");
    80009888:	00003517          	auipc	a0,0x3
    8000988c:	c1850513          	addi	a0,a0,-1000 # 8000c4a0 <CONSOLE_STATUS+0x490>
    80009890:	ffffc097          	auipc	ra,0xffffc
    80009894:	518080e7          	jalr	1304(ra) # 80005da8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80009898:	00048513          	mv	a0,s1
    8000989c:	00000097          	auipc	ra,0x0
    800098a0:	f40080e7          	jalr	-192(ra) # 800097dc <_ZN6Buffer6getCntEv>
    800098a4:	02a05c63          	blez	a0,800098dc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800098a8:	0084b783          	ld	a5,8(s1)
    800098ac:	0104a703          	lw	a4,16(s1)
    800098b0:	00271713          	slli	a4,a4,0x2
    800098b4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800098b8:	0007c503          	lbu	a0,0(a5)
    800098bc:	ffff8097          	auipc	ra,0xffff8
    800098c0:	d8c080e7          	jalr	-628(ra) # 80001648 <putc>
        head = (head + 1) % cap;
    800098c4:	0104a783          	lw	a5,16(s1)
    800098c8:	0017879b          	addiw	a5,a5,1
    800098cc:	0004a703          	lw	a4,0(s1)
    800098d0:	02e7e7bb          	remw	a5,a5,a4
    800098d4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800098d8:	fc1ff06f          	j	80009898 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800098dc:	02100513          	li	a0,33
    800098e0:	ffff8097          	auipc	ra,0xffff8
    800098e4:	d68080e7          	jalr	-664(ra) # 80001648 <putc>
    putc('\n');
    800098e8:	00a00513          	li	a0,10
    800098ec:	ffff8097          	auipc	ra,0xffff8
    800098f0:	d5c080e7          	jalr	-676(ra) # 80001648 <putc>
    mem_free(buffer);
    800098f4:	0084b503          	ld	a0,8(s1)
    800098f8:	ffff8097          	auipc	ra,0xffff8
    800098fc:	9a4080e7          	jalr	-1628(ra) # 8000129c <mem_free>
    sem_close(itemAvailable);
    80009900:	0204b503          	ld	a0,32(s1)
    80009904:	ffff8097          	auipc	ra,0xffff8
    80009908:	bf4080e7          	jalr	-1036(ra) # 800014f8 <sem_close>
    sem_close(spaceAvailable);
    8000990c:	0184b503          	ld	a0,24(s1)
    80009910:	ffff8097          	auipc	ra,0xffff8
    80009914:	be8080e7          	jalr	-1048(ra) # 800014f8 <sem_close>
    sem_close(mutexTail);
    80009918:	0304b503          	ld	a0,48(s1)
    8000991c:	ffff8097          	auipc	ra,0xffff8
    80009920:	bdc080e7          	jalr	-1060(ra) # 800014f8 <sem_close>
    sem_close(mutexHead);
    80009924:	0284b503          	ld	a0,40(s1)
    80009928:	ffff8097          	auipc	ra,0xffff8
    8000992c:	bd0080e7          	jalr	-1072(ra) # 800014f8 <sem_close>
}
    80009930:	01813083          	ld	ra,24(sp)
    80009934:	01013403          	ld	s0,16(sp)
    80009938:	00813483          	ld	s1,8(sp)
    8000993c:	02010113          	addi	sp,sp,32
    80009940:	00008067          	ret

0000000080009944 <start>:
    80009944:	ff010113          	addi	sp,sp,-16
    80009948:	00813423          	sd	s0,8(sp)
    8000994c:	01010413          	addi	s0,sp,16
    80009950:	300027f3          	csrr	a5,mstatus
    80009954:	ffffe737          	lui	a4,0xffffe
    80009958:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ff2a60f>
    8000995c:	00e7f7b3          	and	a5,a5,a4
    80009960:	00001737          	lui	a4,0x1
    80009964:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80009968:	00e7e7b3          	or	a5,a5,a4
    8000996c:	30079073          	csrw	mstatus,a5
    80009970:	00000797          	auipc	a5,0x0
    80009974:	16078793          	addi	a5,a5,352 # 80009ad0 <system_main>
    80009978:	34179073          	csrw	mepc,a5
    8000997c:	00000793          	li	a5,0
    80009980:	18079073          	csrw	satp,a5
    80009984:	000107b7          	lui	a5,0x10
    80009988:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000998c:	30279073          	csrw	medeleg,a5
    80009990:	30379073          	csrw	mideleg,a5
    80009994:	104027f3          	csrr	a5,sie
    80009998:	2227e793          	ori	a5,a5,546
    8000999c:	10479073          	csrw	sie,a5
    800099a0:	fff00793          	li	a5,-1
    800099a4:	00a7d793          	srli	a5,a5,0xa
    800099a8:	3b079073          	csrw	pmpaddr0,a5
    800099ac:	00f00793          	li	a5,15
    800099b0:	3a079073          	csrw	pmpcfg0,a5
    800099b4:	f14027f3          	csrr	a5,mhartid
    800099b8:	0200c737          	lui	a4,0x200c
    800099bc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800099c0:	0007869b          	sext.w	a3,a5
    800099c4:	00269713          	slli	a4,a3,0x2
    800099c8:	000f4637          	lui	a2,0xf4
    800099cc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800099d0:	00d70733          	add	a4,a4,a3
    800099d4:	0037979b          	slliw	a5,a5,0x3
    800099d8:	020046b7          	lui	a3,0x2004
    800099dc:	00d787b3          	add	a5,a5,a3
    800099e0:	00c585b3          	add	a1,a1,a2
    800099e4:	00371693          	slli	a3,a4,0x3
    800099e8:	000c9717          	auipc	a4,0xc9
    800099ec:	5a870713          	addi	a4,a4,1448 # 800d2f90 <timer_scratch>
    800099f0:	00b7b023          	sd	a1,0(a5)
    800099f4:	00d70733          	add	a4,a4,a3
    800099f8:	00f73c23          	sd	a5,24(a4)
    800099fc:	02c73023          	sd	a2,32(a4)
    80009a00:	34071073          	csrw	mscratch,a4
    80009a04:	00000797          	auipc	a5,0x0
    80009a08:	6ec78793          	addi	a5,a5,1772 # 8000a0f0 <timervec>
    80009a0c:	30579073          	csrw	mtvec,a5
    80009a10:	300027f3          	csrr	a5,mstatus
    80009a14:	0087e793          	ori	a5,a5,8
    80009a18:	30079073          	csrw	mstatus,a5
    80009a1c:	304027f3          	csrr	a5,mie
    80009a20:	0807e793          	ori	a5,a5,128
    80009a24:	30479073          	csrw	mie,a5
    80009a28:	f14027f3          	csrr	a5,mhartid
    80009a2c:	0007879b          	sext.w	a5,a5
    80009a30:	00078213          	mv	tp,a5
    80009a34:	30200073          	mret
    80009a38:	00813403          	ld	s0,8(sp)
    80009a3c:	01010113          	addi	sp,sp,16
    80009a40:	00008067          	ret

0000000080009a44 <timerinit>:
    80009a44:	ff010113          	addi	sp,sp,-16
    80009a48:	00813423          	sd	s0,8(sp)
    80009a4c:	01010413          	addi	s0,sp,16
    80009a50:	f14027f3          	csrr	a5,mhartid
    80009a54:	0200c737          	lui	a4,0x200c
    80009a58:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80009a5c:	0007869b          	sext.w	a3,a5
    80009a60:	00269713          	slli	a4,a3,0x2
    80009a64:	000f4637          	lui	a2,0xf4
    80009a68:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80009a6c:	00d70733          	add	a4,a4,a3
    80009a70:	0037979b          	slliw	a5,a5,0x3
    80009a74:	020046b7          	lui	a3,0x2004
    80009a78:	00d787b3          	add	a5,a5,a3
    80009a7c:	00c585b3          	add	a1,a1,a2
    80009a80:	00371693          	slli	a3,a4,0x3
    80009a84:	000c9717          	auipc	a4,0xc9
    80009a88:	50c70713          	addi	a4,a4,1292 # 800d2f90 <timer_scratch>
    80009a8c:	00b7b023          	sd	a1,0(a5)
    80009a90:	00d70733          	add	a4,a4,a3
    80009a94:	00f73c23          	sd	a5,24(a4)
    80009a98:	02c73023          	sd	a2,32(a4)
    80009a9c:	34071073          	csrw	mscratch,a4
    80009aa0:	00000797          	auipc	a5,0x0
    80009aa4:	65078793          	addi	a5,a5,1616 # 8000a0f0 <timervec>
    80009aa8:	30579073          	csrw	mtvec,a5
    80009aac:	300027f3          	csrr	a5,mstatus
    80009ab0:	0087e793          	ori	a5,a5,8
    80009ab4:	30079073          	csrw	mstatus,a5
    80009ab8:	304027f3          	csrr	a5,mie
    80009abc:	0807e793          	ori	a5,a5,128
    80009ac0:	30479073          	csrw	mie,a5
    80009ac4:	00813403          	ld	s0,8(sp)
    80009ac8:	01010113          	addi	sp,sp,16
    80009acc:	00008067          	ret

0000000080009ad0 <system_main>:
    80009ad0:	fe010113          	addi	sp,sp,-32
    80009ad4:	00813823          	sd	s0,16(sp)
    80009ad8:	00913423          	sd	s1,8(sp)
    80009adc:	00113c23          	sd	ra,24(sp)
    80009ae0:	02010413          	addi	s0,sp,32
    80009ae4:	00000097          	auipc	ra,0x0
    80009ae8:	0c4080e7          	jalr	196(ra) # 80009ba8 <cpuid>
    80009aec:	00006497          	auipc	s1,0x6
    80009af0:	d1448493          	addi	s1,s1,-748 # 8000f800 <started>
    80009af4:	02050263          	beqz	a0,80009b18 <system_main+0x48>
    80009af8:	0004a783          	lw	a5,0(s1)
    80009afc:	0007879b          	sext.w	a5,a5
    80009b00:	fe078ce3          	beqz	a5,80009af8 <system_main+0x28>
    80009b04:	0ff0000f          	fence
    80009b08:	00003517          	auipc	a0,0x3
    80009b0c:	de850513          	addi	a0,a0,-536 # 8000c8f0 <CONSOLE_STATUS+0x8e0>
    80009b10:	00001097          	auipc	ra,0x1
    80009b14:	a7c080e7          	jalr	-1412(ra) # 8000a58c <panic>
    80009b18:	00001097          	auipc	ra,0x1
    80009b1c:	9d0080e7          	jalr	-1584(ra) # 8000a4e8 <consoleinit>
    80009b20:	00001097          	auipc	ra,0x1
    80009b24:	15c080e7          	jalr	348(ra) # 8000ac7c <printfinit>
    80009b28:	00002517          	auipc	a0,0x2
    80009b2c:	72050513          	addi	a0,a0,1824 # 8000c248 <CONSOLE_STATUS+0x238>
    80009b30:	00001097          	auipc	ra,0x1
    80009b34:	ab8080e7          	jalr	-1352(ra) # 8000a5e8 <__printf>
    80009b38:	00003517          	auipc	a0,0x3
    80009b3c:	d8850513          	addi	a0,a0,-632 # 8000c8c0 <CONSOLE_STATUS+0x8b0>
    80009b40:	00001097          	auipc	ra,0x1
    80009b44:	aa8080e7          	jalr	-1368(ra) # 8000a5e8 <__printf>
    80009b48:	00002517          	auipc	a0,0x2
    80009b4c:	70050513          	addi	a0,a0,1792 # 8000c248 <CONSOLE_STATUS+0x238>
    80009b50:	00001097          	auipc	ra,0x1
    80009b54:	a98080e7          	jalr	-1384(ra) # 8000a5e8 <__printf>
    80009b58:	00001097          	auipc	ra,0x1
    80009b5c:	4b0080e7          	jalr	1200(ra) # 8000b008 <kinit>
    80009b60:	00000097          	auipc	ra,0x0
    80009b64:	148080e7          	jalr	328(ra) # 80009ca8 <trapinit>
    80009b68:	00000097          	auipc	ra,0x0
    80009b6c:	16c080e7          	jalr	364(ra) # 80009cd4 <trapinithart>
    80009b70:	00000097          	auipc	ra,0x0
    80009b74:	5c0080e7          	jalr	1472(ra) # 8000a130 <plicinit>
    80009b78:	00000097          	auipc	ra,0x0
    80009b7c:	5e0080e7          	jalr	1504(ra) # 8000a158 <plicinithart>
    80009b80:	00000097          	auipc	ra,0x0
    80009b84:	078080e7          	jalr	120(ra) # 80009bf8 <userinit>
    80009b88:	0ff0000f          	fence
    80009b8c:	00100793          	li	a5,1
    80009b90:	00003517          	auipc	a0,0x3
    80009b94:	d4850513          	addi	a0,a0,-696 # 8000c8d8 <CONSOLE_STATUS+0x8c8>
    80009b98:	00f4a023          	sw	a5,0(s1)
    80009b9c:	00001097          	auipc	ra,0x1
    80009ba0:	a4c080e7          	jalr	-1460(ra) # 8000a5e8 <__printf>
    80009ba4:	0000006f          	j	80009ba4 <system_main+0xd4>

0000000080009ba8 <cpuid>:
    80009ba8:	ff010113          	addi	sp,sp,-16
    80009bac:	00813423          	sd	s0,8(sp)
    80009bb0:	01010413          	addi	s0,sp,16
    80009bb4:	00020513          	mv	a0,tp
    80009bb8:	00813403          	ld	s0,8(sp)
    80009bbc:	0005051b          	sext.w	a0,a0
    80009bc0:	01010113          	addi	sp,sp,16
    80009bc4:	00008067          	ret

0000000080009bc8 <mycpu>:
    80009bc8:	ff010113          	addi	sp,sp,-16
    80009bcc:	00813423          	sd	s0,8(sp)
    80009bd0:	01010413          	addi	s0,sp,16
    80009bd4:	00020793          	mv	a5,tp
    80009bd8:	00813403          	ld	s0,8(sp)
    80009bdc:	0007879b          	sext.w	a5,a5
    80009be0:	00779793          	slli	a5,a5,0x7
    80009be4:	000ca517          	auipc	a0,0xca
    80009be8:	3dc50513          	addi	a0,a0,988 # 800d3fc0 <cpus>
    80009bec:	00f50533          	add	a0,a0,a5
    80009bf0:	01010113          	addi	sp,sp,16
    80009bf4:	00008067          	ret

0000000080009bf8 <userinit>:
    80009bf8:	ff010113          	addi	sp,sp,-16
    80009bfc:	00813423          	sd	s0,8(sp)
    80009c00:	01010413          	addi	s0,sp,16
    80009c04:	00813403          	ld	s0,8(sp)
    80009c08:	01010113          	addi	sp,sp,16
    80009c0c:	ffff9317          	auipc	t1,0xffff9
    80009c10:	c6830067          	jr	-920(t1) # 80002874 <main>

0000000080009c14 <either_copyout>:
    80009c14:	ff010113          	addi	sp,sp,-16
    80009c18:	00813023          	sd	s0,0(sp)
    80009c1c:	00113423          	sd	ra,8(sp)
    80009c20:	01010413          	addi	s0,sp,16
    80009c24:	02051663          	bnez	a0,80009c50 <either_copyout+0x3c>
    80009c28:	00058513          	mv	a0,a1
    80009c2c:	00060593          	mv	a1,a2
    80009c30:	0006861b          	sext.w	a2,a3
    80009c34:	00002097          	auipc	ra,0x2
    80009c38:	c60080e7          	jalr	-928(ra) # 8000b894 <__memmove>
    80009c3c:	00813083          	ld	ra,8(sp)
    80009c40:	00013403          	ld	s0,0(sp)
    80009c44:	00000513          	li	a0,0
    80009c48:	01010113          	addi	sp,sp,16
    80009c4c:	00008067          	ret
    80009c50:	00003517          	auipc	a0,0x3
    80009c54:	cc850513          	addi	a0,a0,-824 # 8000c918 <CONSOLE_STATUS+0x908>
    80009c58:	00001097          	auipc	ra,0x1
    80009c5c:	934080e7          	jalr	-1740(ra) # 8000a58c <panic>

0000000080009c60 <either_copyin>:
    80009c60:	ff010113          	addi	sp,sp,-16
    80009c64:	00813023          	sd	s0,0(sp)
    80009c68:	00113423          	sd	ra,8(sp)
    80009c6c:	01010413          	addi	s0,sp,16
    80009c70:	02059463          	bnez	a1,80009c98 <either_copyin+0x38>
    80009c74:	00060593          	mv	a1,a2
    80009c78:	0006861b          	sext.w	a2,a3
    80009c7c:	00002097          	auipc	ra,0x2
    80009c80:	c18080e7          	jalr	-1000(ra) # 8000b894 <__memmove>
    80009c84:	00813083          	ld	ra,8(sp)
    80009c88:	00013403          	ld	s0,0(sp)
    80009c8c:	00000513          	li	a0,0
    80009c90:	01010113          	addi	sp,sp,16
    80009c94:	00008067          	ret
    80009c98:	00003517          	auipc	a0,0x3
    80009c9c:	ca850513          	addi	a0,a0,-856 # 8000c940 <CONSOLE_STATUS+0x930>
    80009ca0:	00001097          	auipc	ra,0x1
    80009ca4:	8ec080e7          	jalr	-1812(ra) # 8000a58c <panic>

0000000080009ca8 <trapinit>:
    80009ca8:	ff010113          	addi	sp,sp,-16
    80009cac:	00813423          	sd	s0,8(sp)
    80009cb0:	01010413          	addi	s0,sp,16
    80009cb4:	00813403          	ld	s0,8(sp)
    80009cb8:	00003597          	auipc	a1,0x3
    80009cbc:	cb058593          	addi	a1,a1,-848 # 8000c968 <CONSOLE_STATUS+0x958>
    80009cc0:	000ca517          	auipc	a0,0xca
    80009cc4:	38050513          	addi	a0,a0,896 # 800d4040 <tickslock>
    80009cc8:	01010113          	addi	sp,sp,16
    80009ccc:	00001317          	auipc	t1,0x1
    80009cd0:	5cc30067          	jr	1484(t1) # 8000b298 <initlock>

0000000080009cd4 <trapinithart>:
    80009cd4:	ff010113          	addi	sp,sp,-16
    80009cd8:	00813423          	sd	s0,8(sp)
    80009cdc:	01010413          	addi	s0,sp,16
    80009ce0:	00000797          	auipc	a5,0x0
    80009ce4:	30078793          	addi	a5,a5,768 # 80009fe0 <kernelvec>
    80009ce8:	10579073          	csrw	stvec,a5
    80009cec:	00813403          	ld	s0,8(sp)
    80009cf0:	01010113          	addi	sp,sp,16
    80009cf4:	00008067          	ret

0000000080009cf8 <usertrap>:
    80009cf8:	ff010113          	addi	sp,sp,-16
    80009cfc:	00813423          	sd	s0,8(sp)
    80009d00:	01010413          	addi	s0,sp,16
    80009d04:	00813403          	ld	s0,8(sp)
    80009d08:	01010113          	addi	sp,sp,16
    80009d0c:	00008067          	ret

0000000080009d10 <usertrapret>:
    80009d10:	ff010113          	addi	sp,sp,-16
    80009d14:	00813423          	sd	s0,8(sp)
    80009d18:	01010413          	addi	s0,sp,16
    80009d1c:	00813403          	ld	s0,8(sp)
    80009d20:	01010113          	addi	sp,sp,16
    80009d24:	00008067          	ret

0000000080009d28 <kerneltrap>:
    80009d28:	fe010113          	addi	sp,sp,-32
    80009d2c:	00813823          	sd	s0,16(sp)
    80009d30:	00113c23          	sd	ra,24(sp)
    80009d34:	00913423          	sd	s1,8(sp)
    80009d38:	02010413          	addi	s0,sp,32
    80009d3c:	142025f3          	csrr	a1,scause
    80009d40:	100027f3          	csrr	a5,sstatus
    80009d44:	0027f793          	andi	a5,a5,2
    80009d48:	10079c63          	bnez	a5,80009e60 <kerneltrap+0x138>
    80009d4c:	142027f3          	csrr	a5,scause
    80009d50:	0207ce63          	bltz	a5,80009d8c <kerneltrap+0x64>
    80009d54:	00003517          	auipc	a0,0x3
    80009d58:	c5c50513          	addi	a0,a0,-932 # 8000c9b0 <CONSOLE_STATUS+0x9a0>
    80009d5c:	00001097          	auipc	ra,0x1
    80009d60:	88c080e7          	jalr	-1908(ra) # 8000a5e8 <__printf>
    80009d64:	141025f3          	csrr	a1,sepc
    80009d68:	14302673          	csrr	a2,stval
    80009d6c:	00003517          	auipc	a0,0x3
    80009d70:	c5450513          	addi	a0,a0,-940 # 8000c9c0 <CONSOLE_STATUS+0x9b0>
    80009d74:	00001097          	auipc	ra,0x1
    80009d78:	874080e7          	jalr	-1932(ra) # 8000a5e8 <__printf>
    80009d7c:	00003517          	auipc	a0,0x3
    80009d80:	c5c50513          	addi	a0,a0,-932 # 8000c9d8 <CONSOLE_STATUS+0x9c8>
    80009d84:	00001097          	auipc	ra,0x1
    80009d88:	808080e7          	jalr	-2040(ra) # 8000a58c <panic>
    80009d8c:	0ff7f713          	andi	a4,a5,255
    80009d90:	00900693          	li	a3,9
    80009d94:	04d70063          	beq	a4,a3,80009dd4 <kerneltrap+0xac>
    80009d98:	fff00713          	li	a4,-1
    80009d9c:	03f71713          	slli	a4,a4,0x3f
    80009da0:	00170713          	addi	a4,a4,1
    80009da4:	fae798e3          	bne	a5,a4,80009d54 <kerneltrap+0x2c>
    80009da8:	00000097          	auipc	ra,0x0
    80009dac:	e00080e7          	jalr	-512(ra) # 80009ba8 <cpuid>
    80009db0:	06050663          	beqz	a0,80009e1c <kerneltrap+0xf4>
    80009db4:	144027f3          	csrr	a5,sip
    80009db8:	ffd7f793          	andi	a5,a5,-3
    80009dbc:	14479073          	csrw	sip,a5
    80009dc0:	01813083          	ld	ra,24(sp)
    80009dc4:	01013403          	ld	s0,16(sp)
    80009dc8:	00813483          	ld	s1,8(sp)
    80009dcc:	02010113          	addi	sp,sp,32
    80009dd0:	00008067          	ret
    80009dd4:	00000097          	auipc	ra,0x0
    80009dd8:	3d0080e7          	jalr	976(ra) # 8000a1a4 <plic_claim>
    80009ddc:	00a00793          	li	a5,10
    80009de0:	00050493          	mv	s1,a0
    80009de4:	06f50863          	beq	a0,a5,80009e54 <kerneltrap+0x12c>
    80009de8:	fc050ce3          	beqz	a0,80009dc0 <kerneltrap+0x98>
    80009dec:	00050593          	mv	a1,a0
    80009df0:	00003517          	auipc	a0,0x3
    80009df4:	ba050513          	addi	a0,a0,-1120 # 8000c990 <CONSOLE_STATUS+0x980>
    80009df8:	00000097          	auipc	ra,0x0
    80009dfc:	7f0080e7          	jalr	2032(ra) # 8000a5e8 <__printf>
    80009e00:	01013403          	ld	s0,16(sp)
    80009e04:	01813083          	ld	ra,24(sp)
    80009e08:	00048513          	mv	a0,s1
    80009e0c:	00813483          	ld	s1,8(sp)
    80009e10:	02010113          	addi	sp,sp,32
    80009e14:	00000317          	auipc	t1,0x0
    80009e18:	3c830067          	jr	968(t1) # 8000a1dc <plic_complete>
    80009e1c:	000ca517          	auipc	a0,0xca
    80009e20:	22450513          	addi	a0,a0,548 # 800d4040 <tickslock>
    80009e24:	00001097          	auipc	ra,0x1
    80009e28:	498080e7          	jalr	1176(ra) # 8000b2bc <acquire>
    80009e2c:	00006717          	auipc	a4,0x6
    80009e30:	9d870713          	addi	a4,a4,-1576 # 8000f804 <ticks>
    80009e34:	00072783          	lw	a5,0(a4)
    80009e38:	000ca517          	auipc	a0,0xca
    80009e3c:	20850513          	addi	a0,a0,520 # 800d4040 <tickslock>
    80009e40:	0017879b          	addiw	a5,a5,1
    80009e44:	00f72023          	sw	a5,0(a4)
    80009e48:	00001097          	auipc	ra,0x1
    80009e4c:	540080e7          	jalr	1344(ra) # 8000b388 <release>
    80009e50:	f65ff06f          	j	80009db4 <kerneltrap+0x8c>
    80009e54:	00001097          	auipc	ra,0x1
    80009e58:	09c080e7          	jalr	156(ra) # 8000aef0 <uartintr>
    80009e5c:	fa5ff06f          	j	80009e00 <kerneltrap+0xd8>
    80009e60:	00003517          	auipc	a0,0x3
    80009e64:	b1050513          	addi	a0,a0,-1264 # 8000c970 <CONSOLE_STATUS+0x960>
    80009e68:	00000097          	auipc	ra,0x0
    80009e6c:	724080e7          	jalr	1828(ra) # 8000a58c <panic>

0000000080009e70 <clockintr>:
    80009e70:	fe010113          	addi	sp,sp,-32
    80009e74:	00813823          	sd	s0,16(sp)
    80009e78:	00913423          	sd	s1,8(sp)
    80009e7c:	00113c23          	sd	ra,24(sp)
    80009e80:	02010413          	addi	s0,sp,32
    80009e84:	000ca497          	auipc	s1,0xca
    80009e88:	1bc48493          	addi	s1,s1,444 # 800d4040 <tickslock>
    80009e8c:	00048513          	mv	a0,s1
    80009e90:	00001097          	auipc	ra,0x1
    80009e94:	42c080e7          	jalr	1068(ra) # 8000b2bc <acquire>
    80009e98:	00006717          	auipc	a4,0x6
    80009e9c:	96c70713          	addi	a4,a4,-1684 # 8000f804 <ticks>
    80009ea0:	00072783          	lw	a5,0(a4)
    80009ea4:	01013403          	ld	s0,16(sp)
    80009ea8:	01813083          	ld	ra,24(sp)
    80009eac:	00048513          	mv	a0,s1
    80009eb0:	0017879b          	addiw	a5,a5,1
    80009eb4:	00813483          	ld	s1,8(sp)
    80009eb8:	00f72023          	sw	a5,0(a4)
    80009ebc:	02010113          	addi	sp,sp,32
    80009ec0:	00001317          	auipc	t1,0x1
    80009ec4:	4c830067          	jr	1224(t1) # 8000b388 <release>

0000000080009ec8 <devintr>:
    80009ec8:	142027f3          	csrr	a5,scause
    80009ecc:	00000513          	li	a0,0
    80009ed0:	0007c463          	bltz	a5,80009ed8 <devintr+0x10>
    80009ed4:	00008067          	ret
    80009ed8:	fe010113          	addi	sp,sp,-32
    80009edc:	00813823          	sd	s0,16(sp)
    80009ee0:	00113c23          	sd	ra,24(sp)
    80009ee4:	00913423          	sd	s1,8(sp)
    80009ee8:	02010413          	addi	s0,sp,32
    80009eec:	0ff7f713          	andi	a4,a5,255
    80009ef0:	00900693          	li	a3,9
    80009ef4:	04d70c63          	beq	a4,a3,80009f4c <devintr+0x84>
    80009ef8:	fff00713          	li	a4,-1
    80009efc:	03f71713          	slli	a4,a4,0x3f
    80009f00:	00170713          	addi	a4,a4,1
    80009f04:	00e78c63          	beq	a5,a4,80009f1c <devintr+0x54>
    80009f08:	01813083          	ld	ra,24(sp)
    80009f0c:	01013403          	ld	s0,16(sp)
    80009f10:	00813483          	ld	s1,8(sp)
    80009f14:	02010113          	addi	sp,sp,32
    80009f18:	00008067          	ret
    80009f1c:	00000097          	auipc	ra,0x0
    80009f20:	c8c080e7          	jalr	-884(ra) # 80009ba8 <cpuid>
    80009f24:	06050663          	beqz	a0,80009f90 <devintr+0xc8>
    80009f28:	144027f3          	csrr	a5,sip
    80009f2c:	ffd7f793          	andi	a5,a5,-3
    80009f30:	14479073          	csrw	sip,a5
    80009f34:	01813083          	ld	ra,24(sp)
    80009f38:	01013403          	ld	s0,16(sp)
    80009f3c:	00813483          	ld	s1,8(sp)
    80009f40:	00200513          	li	a0,2
    80009f44:	02010113          	addi	sp,sp,32
    80009f48:	00008067          	ret
    80009f4c:	00000097          	auipc	ra,0x0
    80009f50:	258080e7          	jalr	600(ra) # 8000a1a4 <plic_claim>
    80009f54:	00a00793          	li	a5,10
    80009f58:	00050493          	mv	s1,a0
    80009f5c:	06f50663          	beq	a0,a5,80009fc8 <devintr+0x100>
    80009f60:	00100513          	li	a0,1
    80009f64:	fa0482e3          	beqz	s1,80009f08 <devintr+0x40>
    80009f68:	00048593          	mv	a1,s1
    80009f6c:	00003517          	auipc	a0,0x3
    80009f70:	a2450513          	addi	a0,a0,-1500 # 8000c990 <CONSOLE_STATUS+0x980>
    80009f74:	00000097          	auipc	ra,0x0
    80009f78:	674080e7          	jalr	1652(ra) # 8000a5e8 <__printf>
    80009f7c:	00048513          	mv	a0,s1
    80009f80:	00000097          	auipc	ra,0x0
    80009f84:	25c080e7          	jalr	604(ra) # 8000a1dc <plic_complete>
    80009f88:	00100513          	li	a0,1
    80009f8c:	f7dff06f          	j	80009f08 <devintr+0x40>
    80009f90:	000ca517          	auipc	a0,0xca
    80009f94:	0b050513          	addi	a0,a0,176 # 800d4040 <tickslock>
    80009f98:	00001097          	auipc	ra,0x1
    80009f9c:	324080e7          	jalr	804(ra) # 8000b2bc <acquire>
    80009fa0:	00006717          	auipc	a4,0x6
    80009fa4:	86470713          	addi	a4,a4,-1948 # 8000f804 <ticks>
    80009fa8:	00072783          	lw	a5,0(a4)
    80009fac:	000ca517          	auipc	a0,0xca
    80009fb0:	09450513          	addi	a0,a0,148 # 800d4040 <tickslock>
    80009fb4:	0017879b          	addiw	a5,a5,1
    80009fb8:	00f72023          	sw	a5,0(a4)
    80009fbc:	00001097          	auipc	ra,0x1
    80009fc0:	3cc080e7          	jalr	972(ra) # 8000b388 <release>
    80009fc4:	f65ff06f          	j	80009f28 <devintr+0x60>
    80009fc8:	00001097          	auipc	ra,0x1
    80009fcc:	f28080e7          	jalr	-216(ra) # 8000aef0 <uartintr>
    80009fd0:	fadff06f          	j	80009f7c <devintr+0xb4>
	...

0000000080009fe0 <kernelvec>:
    80009fe0:	f0010113          	addi	sp,sp,-256
    80009fe4:	00113023          	sd	ra,0(sp)
    80009fe8:	00213423          	sd	sp,8(sp)
    80009fec:	00313823          	sd	gp,16(sp)
    80009ff0:	00413c23          	sd	tp,24(sp)
    80009ff4:	02513023          	sd	t0,32(sp)
    80009ff8:	02613423          	sd	t1,40(sp)
    80009ffc:	02713823          	sd	t2,48(sp)
    8000a000:	02813c23          	sd	s0,56(sp)
    8000a004:	04913023          	sd	s1,64(sp)
    8000a008:	04a13423          	sd	a0,72(sp)
    8000a00c:	04b13823          	sd	a1,80(sp)
    8000a010:	04c13c23          	sd	a2,88(sp)
    8000a014:	06d13023          	sd	a3,96(sp)
    8000a018:	06e13423          	sd	a4,104(sp)
    8000a01c:	06f13823          	sd	a5,112(sp)
    8000a020:	07013c23          	sd	a6,120(sp)
    8000a024:	09113023          	sd	a7,128(sp)
    8000a028:	09213423          	sd	s2,136(sp)
    8000a02c:	09313823          	sd	s3,144(sp)
    8000a030:	09413c23          	sd	s4,152(sp)
    8000a034:	0b513023          	sd	s5,160(sp)
    8000a038:	0b613423          	sd	s6,168(sp)
    8000a03c:	0b713823          	sd	s7,176(sp)
    8000a040:	0b813c23          	sd	s8,184(sp)
    8000a044:	0d913023          	sd	s9,192(sp)
    8000a048:	0da13423          	sd	s10,200(sp)
    8000a04c:	0db13823          	sd	s11,208(sp)
    8000a050:	0dc13c23          	sd	t3,216(sp)
    8000a054:	0fd13023          	sd	t4,224(sp)
    8000a058:	0fe13423          	sd	t5,232(sp)
    8000a05c:	0ff13823          	sd	t6,240(sp)
    8000a060:	cc9ff0ef          	jal	ra,80009d28 <kerneltrap>
    8000a064:	00013083          	ld	ra,0(sp)
    8000a068:	00813103          	ld	sp,8(sp)
    8000a06c:	01013183          	ld	gp,16(sp)
    8000a070:	02013283          	ld	t0,32(sp)
    8000a074:	02813303          	ld	t1,40(sp)
    8000a078:	03013383          	ld	t2,48(sp)
    8000a07c:	03813403          	ld	s0,56(sp)
    8000a080:	04013483          	ld	s1,64(sp)
    8000a084:	04813503          	ld	a0,72(sp)
    8000a088:	05013583          	ld	a1,80(sp)
    8000a08c:	05813603          	ld	a2,88(sp)
    8000a090:	06013683          	ld	a3,96(sp)
    8000a094:	06813703          	ld	a4,104(sp)
    8000a098:	07013783          	ld	a5,112(sp)
    8000a09c:	07813803          	ld	a6,120(sp)
    8000a0a0:	08013883          	ld	a7,128(sp)
    8000a0a4:	08813903          	ld	s2,136(sp)
    8000a0a8:	09013983          	ld	s3,144(sp)
    8000a0ac:	09813a03          	ld	s4,152(sp)
    8000a0b0:	0a013a83          	ld	s5,160(sp)
    8000a0b4:	0a813b03          	ld	s6,168(sp)
    8000a0b8:	0b013b83          	ld	s7,176(sp)
    8000a0bc:	0b813c03          	ld	s8,184(sp)
    8000a0c0:	0c013c83          	ld	s9,192(sp)
    8000a0c4:	0c813d03          	ld	s10,200(sp)
    8000a0c8:	0d013d83          	ld	s11,208(sp)
    8000a0cc:	0d813e03          	ld	t3,216(sp)
    8000a0d0:	0e013e83          	ld	t4,224(sp)
    8000a0d4:	0e813f03          	ld	t5,232(sp)
    8000a0d8:	0f013f83          	ld	t6,240(sp)
    8000a0dc:	10010113          	addi	sp,sp,256
    8000a0e0:	10200073          	sret
    8000a0e4:	00000013          	nop
    8000a0e8:	00000013          	nop
    8000a0ec:	00000013          	nop

000000008000a0f0 <timervec>:
    8000a0f0:	34051573          	csrrw	a0,mscratch,a0
    8000a0f4:	00b53023          	sd	a1,0(a0)
    8000a0f8:	00c53423          	sd	a2,8(a0)
    8000a0fc:	00d53823          	sd	a3,16(a0)
    8000a100:	01853583          	ld	a1,24(a0)
    8000a104:	02053603          	ld	a2,32(a0)
    8000a108:	0005b683          	ld	a3,0(a1)
    8000a10c:	00c686b3          	add	a3,a3,a2
    8000a110:	00d5b023          	sd	a3,0(a1)
    8000a114:	00200593          	li	a1,2
    8000a118:	14459073          	csrw	sip,a1
    8000a11c:	01053683          	ld	a3,16(a0)
    8000a120:	00853603          	ld	a2,8(a0)
    8000a124:	00053583          	ld	a1,0(a0)
    8000a128:	34051573          	csrrw	a0,mscratch,a0
    8000a12c:	30200073          	mret

000000008000a130 <plicinit>:
    8000a130:	ff010113          	addi	sp,sp,-16
    8000a134:	00813423          	sd	s0,8(sp)
    8000a138:	01010413          	addi	s0,sp,16
    8000a13c:	00813403          	ld	s0,8(sp)
    8000a140:	0c0007b7          	lui	a5,0xc000
    8000a144:	00100713          	li	a4,1
    8000a148:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000a14c:	00e7a223          	sw	a4,4(a5)
    8000a150:	01010113          	addi	sp,sp,16
    8000a154:	00008067          	ret

000000008000a158 <plicinithart>:
    8000a158:	ff010113          	addi	sp,sp,-16
    8000a15c:	00813023          	sd	s0,0(sp)
    8000a160:	00113423          	sd	ra,8(sp)
    8000a164:	01010413          	addi	s0,sp,16
    8000a168:	00000097          	auipc	ra,0x0
    8000a16c:	a40080e7          	jalr	-1472(ra) # 80009ba8 <cpuid>
    8000a170:	0085171b          	slliw	a4,a0,0x8
    8000a174:	0c0027b7          	lui	a5,0xc002
    8000a178:	00e787b3          	add	a5,a5,a4
    8000a17c:	40200713          	li	a4,1026
    8000a180:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    8000a184:	00813083          	ld	ra,8(sp)
    8000a188:	00013403          	ld	s0,0(sp)
    8000a18c:	00d5151b          	slliw	a0,a0,0xd
    8000a190:	0c2017b7          	lui	a5,0xc201
    8000a194:	00a78533          	add	a0,a5,a0
    8000a198:	00052023          	sw	zero,0(a0)
    8000a19c:	01010113          	addi	sp,sp,16
    8000a1a0:	00008067          	ret

000000008000a1a4 <plic_claim>:
    8000a1a4:	ff010113          	addi	sp,sp,-16
    8000a1a8:	00813023          	sd	s0,0(sp)
    8000a1ac:	00113423          	sd	ra,8(sp)
    8000a1b0:	01010413          	addi	s0,sp,16
    8000a1b4:	00000097          	auipc	ra,0x0
    8000a1b8:	9f4080e7          	jalr	-1548(ra) # 80009ba8 <cpuid>
    8000a1bc:	00813083          	ld	ra,8(sp)
    8000a1c0:	00013403          	ld	s0,0(sp)
    8000a1c4:	00d5151b          	slliw	a0,a0,0xd
    8000a1c8:	0c2017b7          	lui	a5,0xc201
    8000a1cc:	00a78533          	add	a0,a5,a0
    8000a1d0:	00452503          	lw	a0,4(a0)
    8000a1d4:	01010113          	addi	sp,sp,16
    8000a1d8:	00008067          	ret

000000008000a1dc <plic_complete>:
    8000a1dc:	fe010113          	addi	sp,sp,-32
    8000a1e0:	00813823          	sd	s0,16(sp)
    8000a1e4:	00913423          	sd	s1,8(sp)
    8000a1e8:	00113c23          	sd	ra,24(sp)
    8000a1ec:	02010413          	addi	s0,sp,32
    8000a1f0:	00050493          	mv	s1,a0
    8000a1f4:	00000097          	auipc	ra,0x0
    8000a1f8:	9b4080e7          	jalr	-1612(ra) # 80009ba8 <cpuid>
    8000a1fc:	01813083          	ld	ra,24(sp)
    8000a200:	01013403          	ld	s0,16(sp)
    8000a204:	00d5179b          	slliw	a5,a0,0xd
    8000a208:	0c201737          	lui	a4,0xc201
    8000a20c:	00f707b3          	add	a5,a4,a5
    8000a210:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    8000a214:	00813483          	ld	s1,8(sp)
    8000a218:	02010113          	addi	sp,sp,32
    8000a21c:	00008067          	ret

000000008000a220 <consolewrite>:
    8000a220:	fb010113          	addi	sp,sp,-80
    8000a224:	04813023          	sd	s0,64(sp)
    8000a228:	04113423          	sd	ra,72(sp)
    8000a22c:	02913c23          	sd	s1,56(sp)
    8000a230:	03213823          	sd	s2,48(sp)
    8000a234:	03313423          	sd	s3,40(sp)
    8000a238:	03413023          	sd	s4,32(sp)
    8000a23c:	01513c23          	sd	s5,24(sp)
    8000a240:	05010413          	addi	s0,sp,80
    8000a244:	06c05c63          	blez	a2,8000a2bc <consolewrite+0x9c>
    8000a248:	00060993          	mv	s3,a2
    8000a24c:	00050a13          	mv	s4,a0
    8000a250:	00058493          	mv	s1,a1
    8000a254:	00000913          	li	s2,0
    8000a258:	fff00a93          	li	s5,-1
    8000a25c:	01c0006f          	j	8000a278 <consolewrite+0x58>
    8000a260:	fbf44503          	lbu	a0,-65(s0)
    8000a264:	0019091b          	addiw	s2,s2,1
    8000a268:	00148493          	addi	s1,s1,1
    8000a26c:	00001097          	auipc	ra,0x1
    8000a270:	a9c080e7          	jalr	-1380(ra) # 8000ad08 <uartputc>
    8000a274:	03298063          	beq	s3,s2,8000a294 <consolewrite+0x74>
    8000a278:	00048613          	mv	a2,s1
    8000a27c:	00100693          	li	a3,1
    8000a280:	000a0593          	mv	a1,s4
    8000a284:	fbf40513          	addi	a0,s0,-65
    8000a288:	00000097          	auipc	ra,0x0
    8000a28c:	9d8080e7          	jalr	-1576(ra) # 80009c60 <either_copyin>
    8000a290:	fd5518e3          	bne	a0,s5,8000a260 <consolewrite+0x40>
    8000a294:	04813083          	ld	ra,72(sp)
    8000a298:	04013403          	ld	s0,64(sp)
    8000a29c:	03813483          	ld	s1,56(sp)
    8000a2a0:	02813983          	ld	s3,40(sp)
    8000a2a4:	02013a03          	ld	s4,32(sp)
    8000a2a8:	01813a83          	ld	s5,24(sp)
    8000a2ac:	00090513          	mv	a0,s2
    8000a2b0:	03013903          	ld	s2,48(sp)
    8000a2b4:	05010113          	addi	sp,sp,80
    8000a2b8:	00008067          	ret
    8000a2bc:	00000913          	li	s2,0
    8000a2c0:	fd5ff06f          	j	8000a294 <consolewrite+0x74>

000000008000a2c4 <consoleread>:
    8000a2c4:	f9010113          	addi	sp,sp,-112
    8000a2c8:	06813023          	sd	s0,96(sp)
    8000a2cc:	04913c23          	sd	s1,88(sp)
    8000a2d0:	05213823          	sd	s2,80(sp)
    8000a2d4:	05313423          	sd	s3,72(sp)
    8000a2d8:	05413023          	sd	s4,64(sp)
    8000a2dc:	03513c23          	sd	s5,56(sp)
    8000a2e0:	03613823          	sd	s6,48(sp)
    8000a2e4:	03713423          	sd	s7,40(sp)
    8000a2e8:	03813023          	sd	s8,32(sp)
    8000a2ec:	06113423          	sd	ra,104(sp)
    8000a2f0:	01913c23          	sd	s9,24(sp)
    8000a2f4:	07010413          	addi	s0,sp,112
    8000a2f8:	00060b93          	mv	s7,a2
    8000a2fc:	00050913          	mv	s2,a0
    8000a300:	00058c13          	mv	s8,a1
    8000a304:	00060b1b          	sext.w	s6,a2
    8000a308:	000ca497          	auipc	s1,0xca
    8000a30c:	d6048493          	addi	s1,s1,-672 # 800d4068 <cons>
    8000a310:	00400993          	li	s3,4
    8000a314:	fff00a13          	li	s4,-1
    8000a318:	00a00a93          	li	s5,10
    8000a31c:	05705e63          	blez	s7,8000a378 <consoleread+0xb4>
    8000a320:	09c4a703          	lw	a4,156(s1)
    8000a324:	0984a783          	lw	a5,152(s1)
    8000a328:	0007071b          	sext.w	a4,a4
    8000a32c:	08e78463          	beq	a5,a4,8000a3b4 <consoleread+0xf0>
    8000a330:	07f7f713          	andi	a4,a5,127
    8000a334:	00e48733          	add	a4,s1,a4
    8000a338:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000a33c:	0017869b          	addiw	a3,a5,1
    8000a340:	08d4ac23          	sw	a3,152(s1)
    8000a344:	00070c9b          	sext.w	s9,a4
    8000a348:	0b370663          	beq	a4,s3,8000a3f4 <consoleread+0x130>
    8000a34c:	00100693          	li	a3,1
    8000a350:	f9f40613          	addi	a2,s0,-97
    8000a354:	000c0593          	mv	a1,s8
    8000a358:	00090513          	mv	a0,s2
    8000a35c:	f8e40fa3          	sb	a4,-97(s0)
    8000a360:	00000097          	auipc	ra,0x0
    8000a364:	8b4080e7          	jalr	-1868(ra) # 80009c14 <either_copyout>
    8000a368:	01450863          	beq	a0,s4,8000a378 <consoleread+0xb4>
    8000a36c:	001c0c13          	addi	s8,s8,1
    8000a370:	fffb8b9b          	addiw	s7,s7,-1
    8000a374:	fb5c94e3          	bne	s9,s5,8000a31c <consoleread+0x58>
    8000a378:	000b851b          	sext.w	a0,s7
    8000a37c:	06813083          	ld	ra,104(sp)
    8000a380:	06013403          	ld	s0,96(sp)
    8000a384:	05813483          	ld	s1,88(sp)
    8000a388:	05013903          	ld	s2,80(sp)
    8000a38c:	04813983          	ld	s3,72(sp)
    8000a390:	04013a03          	ld	s4,64(sp)
    8000a394:	03813a83          	ld	s5,56(sp)
    8000a398:	02813b83          	ld	s7,40(sp)
    8000a39c:	02013c03          	ld	s8,32(sp)
    8000a3a0:	01813c83          	ld	s9,24(sp)
    8000a3a4:	40ab053b          	subw	a0,s6,a0
    8000a3a8:	03013b03          	ld	s6,48(sp)
    8000a3ac:	07010113          	addi	sp,sp,112
    8000a3b0:	00008067          	ret
    8000a3b4:	00001097          	auipc	ra,0x1
    8000a3b8:	1d8080e7          	jalr	472(ra) # 8000b58c <push_on>
    8000a3bc:	0984a703          	lw	a4,152(s1)
    8000a3c0:	09c4a783          	lw	a5,156(s1)
    8000a3c4:	0007879b          	sext.w	a5,a5
    8000a3c8:	fef70ce3          	beq	a4,a5,8000a3c0 <consoleread+0xfc>
    8000a3cc:	00001097          	auipc	ra,0x1
    8000a3d0:	234080e7          	jalr	564(ra) # 8000b600 <pop_on>
    8000a3d4:	0984a783          	lw	a5,152(s1)
    8000a3d8:	07f7f713          	andi	a4,a5,127
    8000a3dc:	00e48733          	add	a4,s1,a4
    8000a3e0:	01874703          	lbu	a4,24(a4)
    8000a3e4:	0017869b          	addiw	a3,a5,1
    8000a3e8:	08d4ac23          	sw	a3,152(s1)
    8000a3ec:	00070c9b          	sext.w	s9,a4
    8000a3f0:	f5371ee3          	bne	a4,s3,8000a34c <consoleread+0x88>
    8000a3f4:	000b851b          	sext.w	a0,s7
    8000a3f8:	f96bf2e3          	bgeu	s7,s6,8000a37c <consoleread+0xb8>
    8000a3fc:	08f4ac23          	sw	a5,152(s1)
    8000a400:	f7dff06f          	j	8000a37c <consoleread+0xb8>

000000008000a404 <consputc>:
    8000a404:	10000793          	li	a5,256
    8000a408:	00f50663          	beq	a0,a5,8000a414 <consputc+0x10>
    8000a40c:	00001317          	auipc	t1,0x1
    8000a410:	9f430067          	jr	-1548(t1) # 8000ae00 <uartputc_sync>
    8000a414:	ff010113          	addi	sp,sp,-16
    8000a418:	00113423          	sd	ra,8(sp)
    8000a41c:	00813023          	sd	s0,0(sp)
    8000a420:	01010413          	addi	s0,sp,16
    8000a424:	00800513          	li	a0,8
    8000a428:	00001097          	auipc	ra,0x1
    8000a42c:	9d8080e7          	jalr	-1576(ra) # 8000ae00 <uartputc_sync>
    8000a430:	02000513          	li	a0,32
    8000a434:	00001097          	auipc	ra,0x1
    8000a438:	9cc080e7          	jalr	-1588(ra) # 8000ae00 <uartputc_sync>
    8000a43c:	00013403          	ld	s0,0(sp)
    8000a440:	00813083          	ld	ra,8(sp)
    8000a444:	00800513          	li	a0,8
    8000a448:	01010113          	addi	sp,sp,16
    8000a44c:	00001317          	auipc	t1,0x1
    8000a450:	9b430067          	jr	-1612(t1) # 8000ae00 <uartputc_sync>

000000008000a454 <consoleintr>:
    8000a454:	fe010113          	addi	sp,sp,-32
    8000a458:	00813823          	sd	s0,16(sp)
    8000a45c:	00913423          	sd	s1,8(sp)
    8000a460:	01213023          	sd	s2,0(sp)
    8000a464:	00113c23          	sd	ra,24(sp)
    8000a468:	02010413          	addi	s0,sp,32
    8000a46c:	000ca917          	auipc	s2,0xca
    8000a470:	bfc90913          	addi	s2,s2,-1028 # 800d4068 <cons>
    8000a474:	00050493          	mv	s1,a0
    8000a478:	00090513          	mv	a0,s2
    8000a47c:	00001097          	auipc	ra,0x1
    8000a480:	e40080e7          	jalr	-448(ra) # 8000b2bc <acquire>
    8000a484:	02048c63          	beqz	s1,8000a4bc <consoleintr+0x68>
    8000a488:	0a092783          	lw	a5,160(s2)
    8000a48c:	09892703          	lw	a4,152(s2)
    8000a490:	07f00693          	li	a3,127
    8000a494:	40e7873b          	subw	a4,a5,a4
    8000a498:	02e6e263          	bltu	a3,a4,8000a4bc <consoleintr+0x68>
    8000a49c:	00d00713          	li	a4,13
    8000a4a0:	04e48063          	beq	s1,a4,8000a4e0 <consoleintr+0x8c>
    8000a4a4:	07f7f713          	andi	a4,a5,127
    8000a4a8:	00e90733          	add	a4,s2,a4
    8000a4ac:	0017879b          	addiw	a5,a5,1
    8000a4b0:	0af92023          	sw	a5,160(s2)
    8000a4b4:	00970c23          	sb	s1,24(a4)
    8000a4b8:	08f92e23          	sw	a5,156(s2)
    8000a4bc:	01013403          	ld	s0,16(sp)
    8000a4c0:	01813083          	ld	ra,24(sp)
    8000a4c4:	00813483          	ld	s1,8(sp)
    8000a4c8:	00013903          	ld	s2,0(sp)
    8000a4cc:	000ca517          	auipc	a0,0xca
    8000a4d0:	b9c50513          	addi	a0,a0,-1124 # 800d4068 <cons>
    8000a4d4:	02010113          	addi	sp,sp,32
    8000a4d8:	00001317          	auipc	t1,0x1
    8000a4dc:	eb030067          	jr	-336(t1) # 8000b388 <release>
    8000a4e0:	00a00493          	li	s1,10
    8000a4e4:	fc1ff06f          	j	8000a4a4 <consoleintr+0x50>

000000008000a4e8 <consoleinit>:
    8000a4e8:	fe010113          	addi	sp,sp,-32
    8000a4ec:	00113c23          	sd	ra,24(sp)
    8000a4f0:	00813823          	sd	s0,16(sp)
    8000a4f4:	00913423          	sd	s1,8(sp)
    8000a4f8:	02010413          	addi	s0,sp,32
    8000a4fc:	000ca497          	auipc	s1,0xca
    8000a500:	b6c48493          	addi	s1,s1,-1172 # 800d4068 <cons>
    8000a504:	00048513          	mv	a0,s1
    8000a508:	00002597          	auipc	a1,0x2
    8000a50c:	4e058593          	addi	a1,a1,1248 # 8000c9e8 <CONSOLE_STATUS+0x9d8>
    8000a510:	00001097          	auipc	ra,0x1
    8000a514:	d88080e7          	jalr	-632(ra) # 8000b298 <initlock>
    8000a518:	00000097          	auipc	ra,0x0
    8000a51c:	7ac080e7          	jalr	1964(ra) # 8000acc4 <uartinit>
    8000a520:	01813083          	ld	ra,24(sp)
    8000a524:	01013403          	ld	s0,16(sp)
    8000a528:	00000797          	auipc	a5,0x0
    8000a52c:	d9c78793          	addi	a5,a5,-612 # 8000a2c4 <consoleread>
    8000a530:	0af4bc23          	sd	a5,184(s1)
    8000a534:	00000797          	auipc	a5,0x0
    8000a538:	cec78793          	addi	a5,a5,-788 # 8000a220 <consolewrite>
    8000a53c:	0cf4b023          	sd	a5,192(s1)
    8000a540:	00813483          	ld	s1,8(sp)
    8000a544:	02010113          	addi	sp,sp,32
    8000a548:	00008067          	ret

000000008000a54c <console_read>:
    8000a54c:	ff010113          	addi	sp,sp,-16
    8000a550:	00813423          	sd	s0,8(sp)
    8000a554:	01010413          	addi	s0,sp,16
    8000a558:	00813403          	ld	s0,8(sp)
    8000a55c:	000ca317          	auipc	t1,0xca
    8000a560:	bc433303          	ld	t1,-1084(t1) # 800d4120 <devsw+0x10>
    8000a564:	01010113          	addi	sp,sp,16
    8000a568:	00030067          	jr	t1

000000008000a56c <console_write>:
    8000a56c:	ff010113          	addi	sp,sp,-16
    8000a570:	00813423          	sd	s0,8(sp)
    8000a574:	01010413          	addi	s0,sp,16
    8000a578:	00813403          	ld	s0,8(sp)
    8000a57c:	000ca317          	auipc	t1,0xca
    8000a580:	bac33303          	ld	t1,-1108(t1) # 800d4128 <devsw+0x18>
    8000a584:	01010113          	addi	sp,sp,16
    8000a588:	00030067          	jr	t1

000000008000a58c <panic>:
    8000a58c:	fe010113          	addi	sp,sp,-32
    8000a590:	00113c23          	sd	ra,24(sp)
    8000a594:	00813823          	sd	s0,16(sp)
    8000a598:	00913423          	sd	s1,8(sp)
    8000a59c:	02010413          	addi	s0,sp,32
    8000a5a0:	00050493          	mv	s1,a0
    8000a5a4:	00002517          	auipc	a0,0x2
    8000a5a8:	44c50513          	addi	a0,a0,1100 # 8000c9f0 <CONSOLE_STATUS+0x9e0>
    8000a5ac:	000ca797          	auipc	a5,0xca
    8000a5b0:	c007ae23          	sw	zero,-996(a5) # 800d41c8 <pr+0x18>
    8000a5b4:	00000097          	auipc	ra,0x0
    8000a5b8:	034080e7          	jalr	52(ra) # 8000a5e8 <__printf>
    8000a5bc:	00048513          	mv	a0,s1
    8000a5c0:	00000097          	auipc	ra,0x0
    8000a5c4:	028080e7          	jalr	40(ra) # 8000a5e8 <__printf>
    8000a5c8:	00002517          	auipc	a0,0x2
    8000a5cc:	c8050513          	addi	a0,a0,-896 # 8000c248 <CONSOLE_STATUS+0x238>
    8000a5d0:	00000097          	auipc	ra,0x0
    8000a5d4:	018080e7          	jalr	24(ra) # 8000a5e8 <__printf>
    8000a5d8:	00100793          	li	a5,1
    8000a5dc:	00005717          	auipc	a4,0x5
    8000a5e0:	22f72623          	sw	a5,556(a4) # 8000f808 <panicked>
    8000a5e4:	0000006f          	j	8000a5e4 <panic+0x58>

000000008000a5e8 <__printf>:
    8000a5e8:	f3010113          	addi	sp,sp,-208
    8000a5ec:	08813023          	sd	s0,128(sp)
    8000a5f0:	07313423          	sd	s3,104(sp)
    8000a5f4:	09010413          	addi	s0,sp,144
    8000a5f8:	05813023          	sd	s8,64(sp)
    8000a5fc:	08113423          	sd	ra,136(sp)
    8000a600:	06913c23          	sd	s1,120(sp)
    8000a604:	07213823          	sd	s2,112(sp)
    8000a608:	07413023          	sd	s4,96(sp)
    8000a60c:	05513c23          	sd	s5,88(sp)
    8000a610:	05613823          	sd	s6,80(sp)
    8000a614:	05713423          	sd	s7,72(sp)
    8000a618:	03913c23          	sd	s9,56(sp)
    8000a61c:	03a13823          	sd	s10,48(sp)
    8000a620:	03b13423          	sd	s11,40(sp)
    8000a624:	000ca317          	auipc	t1,0xca
    8000a628:	b8c30313          	addi	t1,t1,-1140 # 800d41b0 <pr>
    8000a62c:	01832c03          	lw	s8,24(t1)
    8000a630:	00b43423          	sd	a1,8(s0)
    8000a634:	00c43823          	sd	a2,16(s0)
    8000a638:	00d43c23          	sd	a3,24(s0)
    8000a63c:	02e43023          	sd	a4,32(s0)
    8000a640:	02f43423          	sd	a5,40(s0)
    8000a644:	03043823          	sd	a6,48(s0)
    8000a648:	03143c23          	sd	a7,56(s0)
    8000a64c:	00050993          	mv	s3,a0
    8000a650:	4a0c1663          	bnez	s8,8000aafc <__printf+0x514>
    8000a654:	60098c63          	beqz	s3,8000ac6c <__printf+0x684>
    8000a658:	0009c503          	lbu	a0,0(s3)
    8000a65c:	00840793          	addi	a5,s0,8
    8000a660:	f6f43c23          	sd	a5,-136(s0)
    8000a664:	00000493          	li	s1,0
    8000a668:	22050063          	beqz	a0,8000a888 <__printf+0x2a0>
    8000a66c:	00002a37          	lui	s4,0x2
    8000a670:	00018ab7          	lui	s5,0x18
    8000a674:	000f4b37          	lui	s6,0xf4
    8000a678:	00989bb7          	lui	s7,0x989
    8000a67c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    8000a680:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    8000a684:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    8000a688:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000a68c:	00148c9b          	addiw	s9,s1,1
    8000a690:	02500793          	li	a5,37
    8000a694:	01998933          	add	s2,s3,s9
    8000a698:	38f51263          	bne	a0,a5,8000aa1c <__printf+0x434>
    8000a69c:	00094783          	lbu	a5,0(s2)
    8000a6a0:	00078c9b          	sext.w	s9,a5
    8000a6a4:	1e078263          	beqz	a5,8000a888 <__printf+0x2a0>
    8000a6a8:	0024849b          	addiw	s1,s1,2
    8000a6ac:	07000713          	li	a4,112
    8000a6b0:	00998933          	add	s2,s3,s1
    8000a6b4:	38e78a63          	beq	a5,a4,8000aa48 <__printf+0x460>
    8000a6b8:	20f76863          	bltu	a4,a5,8000a8c8 <__printf+0x2e0>
    8000a6bc:	42a78863          	beq	a5,a0,8000aaec <__printf+0x504>
    8000a6c0:	06400713          	li	a4,100
    8000a6c4:	40e79663          	bne	a5,a4,8000aad0 <__printf+0x4e8>
    8000a6c8:	f7843783          	ld	a5,-136(s0)
    8000a6cc:	0007a603          	lw	a2,0(a5)
    8000a6d0:	00878793          	addi	a5,a5,8
    8000a6d4:	f6f43c23          	sd	a5,-136(s0)
    8000a6d8:	42064a63          	bltz	a2,8000ab0c <__printf+0x524>
    8000a6dc:	00a00713          	li	a4,10
    8000a6e0:	02e677bb          	remuw	a5,a2,a4
    8000a6e4:	00002d97          	auipc	s11,0x2
    8000a6e8:	334d8d93          	addi	s11,s11,820 # 8000ca18 <digits>
    8000a6ec:	00900593          	li	a1,9
    8000a6f0:	0006051b          	sext.w	a0,a2
    8000a6f4:	00000c93          	li	s9,0
    8000a6f8:	02079793          	slli	a5,a5,0x20
    8000a6fc:	0207d793          	srli	a5,a5,0x20
    8000a700:	00fd87b3          	add	a5,s11,a5
    8000a704:	0007c783          	lbu	a5,0(a5)
    8000a708:	02e656bb          	divuw	a3,a2,a4
    8000a70c:	f8f40023          	sb	a5,-128(s0)
    8000a710:	14c5d863          	bge	a1,a2,8000a860 <__printf+0x278>
    8000a714:	06300593          	li	a1,99
    8000a718:	00100c93          	li	s9,1
    8000a71c:	02e6f7bb          	remuw	a5,a3,a4
    8000a720:	02079793          	slli	a5,a5,0x20
    8000a724:	0207d793          	srli	a5,a5,0x20
    8000a728:	00fd87b3          	add	a5,s11,a5
    8000a72c:	0007c783          	lbu	a5,0(a5)
    8000a730:	02e6d73b          	divuw	a4,a3,a4
    8000a734:	f8f400a3          	sb	a5,-127(s0)
    8000a738:	12a5f463          	bgeu	a1,a0,8000a860 <__printf+0x278>
    8000a73c:	00a00693          	li	a3,10
    8000a740:	00900593          	li	a1,9
    8000a744:	02d777bb          	remuw	a5,a4,a3
    8000a748:	02079793          	slli	a5,a5,0x20
    8000a74c:	0207d793          	srli	a5,a5,0x20
    8000a750:	00fd87b3          	add	a5,s11,a5
    8000a754:	0007c503          	lbu	a0,0(a5)
    8000a758:	02d757bb          	divuw	a5,a4,a3
    8000a75c:	f8a40123          	sb	a0,-126(s0)
    8000a760:	48e5f263          	bgeu	a1,a4,8000abe4 <__printf+0x5fc>
    8000a764:	06300513          	li	a0,99
    8000a768:	02d7f5bb          	remuw	a1,a5,a3
    8000a76c:	02059593          	slli	a1,a1,0x20
    8000a770:	0205d593          	srli	a1,a1,0x20
    8000a774:	00bd85b3          	add	a1,s11,a1
    8000a778:	0005c583          	lbu	a1,0(a1)
    8000a77c:	02d7d7bb          	divuw	a5,a5,a3
    8000a780:	f8b401a3          	sb	a1,-125(s0)
    8000a784:	48e57263          	bgeu	a0,a4,8000ac08 <__printf+0x620>
    8000a788:	3e700513          	li	a0,999
    8000a78c:	02d7f5bb          	remuw	a1,a5,a3
    8000a790:	02059593          	slli	a1,a1,0x20
    8000a794:	0205d593          	srli	a1,a1,0x20
    8000a798:	00bd85b3          	add	a1,s11,a1
    8000a79c:	0005c583          	lbu	a1,0(a1)
    8000a7a0:	02d7d7bb          	divuw	a5,a5,a3
    8000a7a4:	f8b40223          	sb	a1,-124(s0)
    8000a7a8:	46e57663          	bgeu	a0,a4,8000ac14 <__printf+0x62c>
    8000a7ac:	02d7f5bb          	remuw	a1,a5,a3
    8000a7b0:	02059593          	slli	a1,a1,0x20
    8000a7b4:	0205d593          	srli	a1,a1,0x20
    8000a7b8:	00bd85b3          	add	a1,s11,a1
    8000a7bc:	0005c583          	lbu	a1,0(a1)
    8000a7c0:	02d7d7bb          	divuw	a5,a5,a3
    8000a7c4:	f8b402a3          	sb	a1,-123(s0)
    8000a7c8:	46ea7863          	bgeu	s4,a4,8000ac38 <__printf+0x650>
    8000a7cc:	02d7f5bb          	remuw	a1,a5,a3
    8000a7d0:	02059593          	slli	a1,a1,0x20
    8000a7d4:	0205d593          	srli	a1,a1,0x20
    8000a7d8:	00bd85b3          	add	a1,s11,a1
    8000a7dc:	0005c583          	lbu	a1,0(a1)
    8000a7e0:	02d7d7bb          	divuw	a5,a5,a3
    8000a7e4:	f8b40323          	sb	a1,-122(s0)
    8000a7e8:	3eeaf863          	bgeu	s5,a4,8000abd8 <__printf+0x5f0>
    8000a7ec:	02d7f5bb          	remuw	a1,a5,a3
    8000a7f0:	02059593          	slli	a1,a1,0x20
    8000a7f4:	0205d593          	srli	a1,a1,0x20
    8000a7f8:	00bd85b3          	add	a1,s11,a1
    8000a7fc:	0005c583          	lbu	a1,0(a1)
    8000a800:	02d7d7bb          	divuw	a5,a5,a3
    8000a804:	f8b403a3          	sb	a1,-121(s0)
    8000a808:	42eb7e63          	bgeu	s6,a4,8000ac44 <__printf+0x65c>
    8000a80c:	02d7f5bb          	remuw	a1,a5,a3
    8000a810:	02059593          	slli	a1,a1,0x20
    8000a814:	0205d593          	srli	a1,a1,0x20
    8000a818:	00bd85b3          	add	a1,s11,a1
    8000a81c:	0005c583          	lbu	a1,0(a1)
    8000a820:	02d7d7bb          	divuw	a5,a5,a3
    8000a824:	f8b40423          	sb	a1,-120(s0)
    8000a828:	42ebfc63          	bgeu	s7,a4,8000ac60 <__printf+0x678>
    8000a82c:	02079793          	slli	a5,a5,0x20
    8000a830:	0207d793          	srli	a5,a5,0x20
    8000a834:	00fd8db3          	add	s11,s11,a5
    8000a838:	000dc703          	lbu	a4,0(s11)
    8000a83c:	00a00793          	li	a5,10
    8000a840:	00900c93          	li	s9,9
    8000a844:	f8e404a3          	sb	a4,-119(s0)
    8000a848:	00065c63          	bgez	a2,8000a860 <__printf+0x278>
    8000a84c:	f9040713          	addi	a4,s0,-112
    8000a850:	00f70733          	add	a4,a4,a5
    8000a854:	02d00693          	li	a3,45
    8000a858:	fed70823          	sb	a3,-16(a4)
    8000a85c:	00078c93          	mv	s9,a5
    8000a860:	f8040793          	addi	a5,s0,-128
    8000a864:	01978cb3          	add	s9,a5,s9
    8000a868:	f7f40d13          	addi	s10,s0,-129
    8000a86c:	000cc503          	lbu	a0,0(s9)
    8000a870:	fffc8c93          	addi	s9,s9,-1
    8000a874:	00000097          	auipc	ra,0x0
    8000a878:	b90080e7          	jalr	-1136(ra) # 8000a404 <consputc>
    8000a87c:	ffac98e3          	bne	s9,s10,8000a86c <__printf+0x284>
    8000a880:	00094503          	lbu	a0,0(s2)
    8000a884:	e00514e3          	bnez	a0,8000a68c <__printf+0xa4>
    8000a888:	1a0c1663          	bnez	s8,8000aa34 <__printf+0x44c>
    8000a88c:	08813083          	ld	ra,136(sp)
    8000a890:	08013403          	ld	s0,128(sp)
    8000a894:	07813483          	ld	s1,120(sp)
    8000a898:	07013903          	ld	s2,112(sp)
    8000a89c:	06813983          	ld	s3,104(sp)
    8000a8a0:	06013a03          	ld	s4,96(sp)
    8000a8a4:	05813a83          	ld	s5,88(sp)
    8000a8a8:	05013b03          	ld	s6,80(sp)
    8000a8ac:	04813b83          	ld	s7,72(sp)
    8000a8b0:	04013c03          	ld	s8,64(sp)
    8000a8b4:	03813c83          	ld	s9,56(sp)
    8000a8b8:	03013d03          	ld	s10,48(sp)
    8000a8bc:	02813d83          	ld	s11,40(sp)
    8000a8c0:	0d010113          	addi	sp,sp,208
    8000a8c4:	00008067          	ret
    8000a8c8:	07300713          	li	a4,115
    8000a8cc:	1ce78a63          	beq	a5,a4,8000aaa0 <__printf+0x4b8>
    8000a8d0:	07800713          	li	a4,120
    8000a8d4:	1ee79e63          	bne	a5,a4,8000aad0 <__printf+0x4e8>
    8000a8d8:	f7843783          	ld	a5,-136(s0)
    8000a8dc:	0007a703          	lw	a4,0(a5)
    8000a8e0:	00878793          	addi	a5,a5,8
    8000a8e4:	f6f43c23          	sd	a5,-136(s0)
    8000a8e8:	28074263          	bltz	a4,8000ab6c <__printf+0x584>
    8000a8ec:	00002d97          	auipc	s11,0x2
    8000a8f0:	12cd8d93          	addi	s11,s11,300 # 8000ca18 <digits>
    8000a8f4:	00f77793          	andi	a5,a4,15
    8000a8f8:	00fd87b3          	add	a5,s11,a5
    8000a8fc:	0007c683          	lbu	a3,0(a5)
    8000a900:	00f00613          	li	a2,15
    8000a904:	0007079b          	sext.w	a5,a4
    8000a908:	f8d40023          	sb	a3,-128(s0)
    8000a90c:	0047559b          	srliw	a1,a4,0x4
    8000a910:	0047569b          	srliw	a3,a4,0x4
    8000a914:	00000c93          	li	s9,0
    8000a918:	0ee65063          	bge	a2,a4,8000a9f8 <__printf+0x410>
    8000a91c:	00f6f693          	andi	a3,a3,15
    8000a920:	00dd86b3          	add	a3,s11,a3
    8000a924:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    8000a928:	0087d79b          	srliw	a5,a5,0x8
    8000a92c:	00100c93          	li	s9,1
    8000a930:	f8d400a3          	sb	a3,-127(s0)
    8000a934:	0cb67263          	bgeu	a2,a1,8000a9f8 <__printf+0x410>
    8000a938:	00f7f693          	andi	a3,a5,15
    8000a93c:	00dd86b3          	add	a3,s11,a3
    8000a940:	0006c583          	lbu	a1,0(a3)
    8000a944:	00f00613          	li	a2,15
    8000a948:	0047d69b          	srliw	a3,a5,0x4
    8000a94c:	f8b40123          	sb	a1,-126(s0)
    8000a950:	0047d593          	srli	a1,a5,0x4
    8000a954:	28f67e63          	bgeu	a2,a5,8000abf0 <__printf+0x608>
    8000a958:	00f6f693          	andi	a3,a3,15
    8000a95c:	00dd86b3          	add	a3,s11,a3
    8000a960:	0006c503          	lbu	a0,0(a3)
    8000a964:	0087d813          	srli	a6,a5,0x8
    8000a968:	0087d69b          	srliw	a3,a5,0x8
    8000a96c:	f8a401a3          	sb	a0,-125(s0)
    8000a970:	28b67663          	bgeu	a2,a1,8000abfc <__printf+0x614>
    8000a974:	00f6f693          	andi	a3,a3,15
    8000a978:	00dd86b3          	add	a3,s11,a3
    8000a97c:	0006c583          	lbu	a1,0(a3)
    8000a980:	00c7d513          	srli	a0,a5,0xc
    8000a984:	00c7d69b          	srliw	a3,a5,0xc
    8000a988:	f8b40223          	sb	a1,-124(s0)
    8000a98c:	29067a63          	bgeu	a2,a6,8000ac20 <__printf+0x638>
    8000a990:	00f6f693          	andi	a3,a3,15
    8000a994:	00dd86b3          	add	a3,s11,a3
    8000a998:	0006c583          	lbu	a1,0(a3)
    8000a99c:	0107d813          	srli	a6,a5,0x10
    8000a9a0:	0107d69b          	srliw	a3,a5,0x10
    8000a9a4:	f8b402a3          	sb	a1,-123(s0)
    8000a9a8:	28a67263          	bgeu	a2,a0,8000ac2c <__printf+0x644>
    8000a9ac:	00f6f693          	andi	a3,a3,15
    8000a9b0:	00dd86b3          	add	a3,s11,a3
    8000a9b4:	0006c683          	lbu	a3,0(a3)
    8000a9b8:	0147d79b          	srliw	a5,a5,0x14
    8000a9bc:	f8d40323          	sb	a3,-122(s0)
    8000a9c0:	21067663          	bgeu	a2,a6,8000abcc <__printf+0x5e4>
    8000a9c4:	02079793          	slli	a5,a5,0x20
    8000a9c8:	0207d793          	srli	a5,a5,0x20
    8000a9cc:	00fd8db3          	add	s11,s11,a5
    8000a9d0:	000dc683          	lbu	a3,0(s11)
    8000a9d4:	00800793          	li	a5,8
    8000a9d8:	00700c93          	li	s9,7
    8000a9dc:	f8d403a3          	sb	a3,-121(s0)
    8000a9e0:	00075c63          	bgez	a4,8000a9f8 <__printf+0x410>
    8000a9e4:	f9040713          	addi	a4,s0,-112
    8000a9e8:	00f70733          	add	a4,a4,a5
    8000a9ec:	02d00693          	li	a3,45
    8000a9f0:	fed70823          	sb	a3,-16(a4)
    8000a9f4:	00078c93          	mv	s9,a5
    8000a9f8:	f8040793          	addi	a5,s0,-128
    8000a9fc:	01978cb3          	add	s9,a5,s9
    8000aa00:	f7f40d13          	addi	s10,s0,-129
    8000aa04:	000cc503          	lbu	a0,0(s9)
    8000aa08:	fffc8c93          	addi	s9,s9,-1
    8000aa0c:	00000097          	auipc	ra,0x0
    8000aa10:	9f8080e7          	jalr	-1544(ra) # 8000a404 <consputc>
    8000aa14:	ff9d18e3          	bne	s10,s9,8000aa04 <__printf+0x41c>
    8000aa18:	0100006f          	j	8000aa28 <__printf+0x440>
    8000aa1c:	00000097          	auipc	ra,0x0
    8000aa20:	9e8080e7          	jalr	-1560(ra) # 8000a404 <consputc>
    8000aa24:	000c8493          	mv	s1,s9
    8000aa28:	00094503          	lbu	a0,0(s2)
    8000aa2c:	c60510e3          	bnez	a0,8000a68c <__printf+0xa4>
    8000aa30:	e40c0ee3          	beqz	s8,8000a88c <__printf+0x2a4>
    8000aa34:	000c9517          	auipc	a0,0xc9
    8000aa38:	77c50513          	addi	a0,a0,1916 # 800d41b0 <pr>
    8000aa3c:	00001097          	auipc	ra,0x1
    8000aa40:	94c080e7          	jalr	-1716(ra) # 8000b388 <release>
    8000aa44:	e49ff06f          	j	8000a88c <__printf+0x2a4>
    8000aa48:	f7843783          	ld	a5,-136(s0)
    8000aa4c:	03000513          	li	a0,48
    8000aa50:	01000d13          	li	s10,16
    8000aa54:	00878713          	addi	a4,a5,8
    8000aa58:	0007bc83          	ld	s9,0(a5)
    8000aa5c:	f6e43c23          	sd	a4,-136(s0)
    8000aa60:	00000097          	auipc	ra,0x0
    8000aa64:	9a4080e7          	jalr	-1628(ra) # 8000a404 <consputc>
    8000aa68:	07800513          	li	a0,120
    8000aa6c:	00000097          	auipc	ra,0x0
    8000aa70:	998080e7          	jalr	-1640(ra) # 8000a404 <consputc>
    8000aa74:	00002d97          	auipc	s11,0x2
    8000aa78:	fa4d8d93          	addi	s11,s11,-92 # 8000ca18 <digits>
    8000aa7c:	03ccd793          	srli	a5,s9,0x3c
    8000aa80:	00fd87b3          	add	a5,s11,a5
    8000aa84:	0007c503          	lbu	a0,0(a5)
    8000aa88:	fffd0d1b          	addiw	s10,s10,-1
    8000aa8c:	004c9c93          	slli	s9,s9,0x4
    8000aa90:	00000097          	auipc	ra,0x0
    8000aa94:	974080e7          	jalr	-1676(ra) # 8000a404 <consputc>
    8000aa98:	fe0d12e3          	bnez	s10,8000aa7c <__printf+0x494>
    8000aa9c:	f8dff06f          	j	8000aa28 <__printf+0x440>
    8000aaa0:	f7843783          	ld	a5,-136(s0)
    8000aaa4:	0007bc83          	ld	s9,0(a5)
    8000aaa8:	00878793          	addi	a5,a5,8
    8000aaac:	f6f43c23          	sd	a5,-136(s0)
    8000aab0:	000c9a63          	bnez	s9,8000aac4 <__printf+0x4dc>
    8000aab4:	1080006f          	j	8000abbc <__printf+0x5d4>
    8000aab8:	001c8c93          	addi	s9,s9,1
    8000aabc:	00000097          	auipc	ra,0x0
    8000aac0:	948080e7          	jalr	-1720(ra) # 8000a404 <consputc>
    8000aac4:	000cc503          	lbu	a0,0(s9)
    8000aac8:	fe0518e3          	bnez	a0,8000aab8 <__printf+0x4d0>
    8000aacc:	f5dff06f          	j	8000aa28 <__printf+0x440>
    8000aad0:	02500513          	li	a0,37
    8000aad4:	00000097          	auipc	ra,0x0
    8000aad8:	930080e7          	jalr	-1744(ra) # 8000a404 <consputc>
    8000aadc:	000c8513          	mv	a0,s9
    8000aae0:	00000097          	auipc	ra,0x0
    8000aae4:	924080e7          	jalr	-1756(ra) # 8000a404 <consputc>
    8000aae8:	f41ff06f          	j	8000aa28 <__printf+0x440>
    8000aaec:	02500513          	li	a0,37
    8000aaf0:	00000097          	auipc	ra,0x0
    8000aaf4:	914080e7          	jalr	-1772(ra) # 8000a404 <consputc>
    8000aaf8:	f31ff06f          	j	8000aa28 <__printf+0x440>
    8000aafc:	00030513          	mv	a0,t1
    8000ab00:	00000097          	auipc	ra,0x0
    8000ab04:	7bc080e7          	jalr	1980(ra) # 8000b2bc <acquire>
    8000ab08:	b4dff06f          	j	8000a654 <__printf+0x6c>
    8000ab0c:	40c0053b          	negw	a0,a2
    8000ab10:	00a00713          	li	a4,10
    8000ab14:	02e576bb          	remuw	a3,a0,a4
    8000ab18:	00002d97          	auipc	s11,0x2
    8000ab1c:	f00d8d93          	addi	s11,s11,-256 # 8000ca18 <digits>
    8000ab20:	ff700593          	li	a1,-9
    8000ab24:	02069693          	slli	a3,a3,0x20
    8000ab28:	0206d693          	srli	a3,a3,0x20
    8000ab2c:	00dd86b3          	add	a3,s11,a3
    8000ab30:	0006c683          	lbu	a3,0(a3)
    8000ab34:	02e557bb          	divuw	a5,a0,a4
    8000ab38:	f8d40023          	sb	a3,-128(s0)
    8000ab3c:	10b65e63          	bge	a2,a1,8000ac58 <__printf+0x670>
    8000ab40:	06300593          	li	a1,99
    8000ab44:	02e7f6bb          	remuw	a3,a5,a4
    8000ab48:	02069693          	slli	a3,a3,0x20
    8000ab4c:	0206d693          	srli	a3,a3,0x20
    8000ab50:	00dd86b3          	add	a3,s11,a3
    8000ab54:	0006c683          	lbu	a3,0(a3)
    8000ab58:	02e7d73b          	divuw	a4,a5,a4
    8000ab5c:	00200793          	li	a5,2
    8000ab60:	f8d400a3          	sb	a3,-127(s0)
    8000ab64:	bca5ece3          	bltu	a1,a0,8000a73c <__printf+0x154>
    8000ab68:	ce5ff06f          	j	8000a84c <__printf+0x264>
    8000ab6c:	40e007bb          	negw	a5,a4
    8000ab70:	00002d97          	auipc	s11,0x2
    8000ab74:	ea8d8d93          	addi	s11,s11,-344 # 8000ca18 <digits>
    8000ab78:	00f7f693          	andi	a3,a5,15
    8000ab7c:	00dd86b3          	add	a3,s11,a3
    8000ab80:	0006c583          	lbu	a1,0(a3)
    8000ab84:	ff100613          	li	a2,-15
    8000ab88:	0047d69b          	srliw	a3,a5,0x4
    8000ab8c:	f8b40023          	sb	a1,-128(s0)
    8000ab90:	0047d59b          	srliw	a1,a5,0x4
    8000ab94:	0ac75e63          	bge	a4,a2,8000ac50 <__printf+0x668>
    8000ab98:	00f6f693          	andi	a3,a3,15
    8000ab9c:	00dd86b3          	add	a3,s11,a3
    8000aba0:	0006c603          	lbu	a2,0(a3)
    8000aba4:	00f00693          	li	a3,15
    8000aba8:	0087d79b          	srliw	a5,a5,0x8
    8000abac:	f8c400a3          	sb	a2,-127(s0)
    8000abb0:	d8b6e4e3          	bltu	a3,a1,8000a938 <__printf+0x350>
    8000abb4:	00200793          	li	a5,2
    8000abb8:	e2dff06f          	j	8000a9e4 <__printf+0x3fc>
    8000abbc:	00002c97          	auipc	s9,0x2
    8000abc0:	e3cc8c93          	addi	s9,s9,-452 # 8000c9f8 <CONSOLE_STATUS+0x9e8>
    8000abc4:	02800513          	li	a0,40
    8000abc8:	ef1ff06f          	j	8000aab8 <__printf+0x4d0>
    8000abcc:	00700793          	li	a5,7
    8000abd0:	00600c93          	li	s9,6
    8000abd4:	e0dff06f          	j	8000a9e0 <__printf+0x3f8>
    8000abd8:	00700793          	li	a5,7
    8000abdc:	00600c93          	li	s9,6
    8000abe0:	c69ff06f          	j	8000a848 <__printf+0x260>
    8000abe4:	00300793          	li	a5,3
    8000abe8:	00200c93          	li	s9,2
    8000abec:	c5dff06f          	j	8000a848 <__printf+0x260>
    8000abf0:	00300793          	li	a5,3
    8000abf4:	00200c93          	li	s9,2
    8000abf8:	de9ff06f          	j	8000a9e0 <__printf+0x3f8>
    8000abfc:	00400793          	li	a5,4
    8000ac00:	00300c93          	li	s9,3
    8000ac04:	dddff06f          	j	8000a9e0 <__printf+0x3f8>
    8000ac08:	00400793          	li	a5,4
    8000ac0c:	00300c93          	li	s9,3
    8000ac10:	c39ff06f          	j	8000a848 <__printf+0x260>
    8000ac14:	00500793          	li	a5,5
    8000ac18:	00400c93          	li	s9,4
    8000ac1c:	c2dff06f          	j	8000a848 <__printf+0x260>
    8000ac20:	00500793          	li	a5,5
    8000ac24:	00400c93          	li	s9,4
    8000ac28:	db9ff06f          	j	8000a9e0 <__printf+0x3f8>
    8000ac2c:	00600793          	li	a5,6
    8000ac30:	00500c93          	li	s9,5
    8000ac34:	dadff06f          	j	8000a9e0 <__printf+0x3f8>
    8000ac38:	00600793          	li	a5,6
    8000ac3c:	00500c93          	li	s9,5
    8000ac40:	c09ff06f          	j	8000a848 <__printf+0x260>
    8000ac44:	00800793          	li	a5,8
    8000ac48:	00700c93          	li	s9,7
    8000ac4c:	bfdff06f          	j	8000a848 <__printf+0x260>
    8000ac50:	00100793          	li	a5,1
    8000ac54:	d91ff06f          	j	8000a9e4 <__printf+0x3fc>
    8000ac58:	00100793          	li	a5,1
    8000ac5c:	bf1ff06f          	j	8000a84c <__printf+0x264>
    8000ac60:	00900793          	li	a5,9
    8000ac64:	00800c93          	li	s9,8
    8000ac68:	be1ff06f          	j	8000a848 <__printf+0x260>
    8000ac6c:	00002517          	auipc	a0,0x2
    8000ac70:	d9450513          	addi	a0,a0,-620 # 8000ca00 <CONSOLE_STATUS+0x9f0>
    8000ac74:	00000097          	auipc	ra,0x0
    8000ac78:	918080e7          	jalr	-1768(ra) # 8000a58c <panic>

000000008000ac7c <printfinit>:
    8000ac7c:	fe010113          	addi	sp,sp,-32
    8000ac80:	00813823          	sd	s0,16(sp)
    8000ac84:	00913423          	sd	s1,8(sp)
    8000ac88:	00113c23          	sd	ra,24(sp)
    8000ac8c:	02010413          	addi	s0,sp,32
    8000ac90:	000c9497          	auipc	s1,0xc9
    8000ac94:	52048493          	addi	s1,s1,1312 # 800d41b0 <pr>
    8000ac98:	00048513          	mv	a0,s1
    8000ac9c:	00002597          	auipc	a1,0x2
    8000aca0:	d7458593          	addi	a1,a1,-652 # 8000ca10 <CONSOLE_STATUS+0xa00>
    8000aca4:	00000097          	auipc	ra,0x0
    8000aca8:	5f4080e7          	jalr	1524(ra) # 8000b298 <initlock>
    8000acac:	01813083          	ld	ra,24(sp)
    8000acb0:	01013403          	ld	s0,16(sp)
    8000acb4:	0004ac23          	sw	zero,24(s1)
    8000acb8:	00813483          	ld	s1,8(sp)
    8000acbc:	02010113          	addi	sp,sp,32
    8000acc0:	00008067          	ret

000000008000acc4 <uartinit>:
    8000acc4:	ff010113          	addi	sp,sp,-16
    8000acc8:	00813423          	sd	s0,8(sp)
    8000accc:	01010413          	addi	s0,sp,16
    8000acd0:	100007b7          	lui	a5,0x10000
    8000acd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    8000acd8:	f8000713          	li	a4,-128
    8000acdc:	00e781a3          	sb	a4,3(a5)
    8000ace0:	00300713          	li	a4,3
    8000ace4:	00e78023          	sb	a4,0(a5)
    8000ace8:	000780a3          	sb	zero,1(a5)
    8000acec:	00e781a3          	sb	a4,3(a5)
    8000acf0:	00700693          	li	a3,7
    8000acf4:	00d78123          	sb	a3,2(a5)
    8000acf8:	00e780a3          	sb	a4,1(a5)
    8000acfc:	00813403          	ld	s0,8(sp)
    8000ad00:	01010113          	addi	sp,sp,16
    8000ad04:	00008067          	ret

000000008000ad08 <uartputc>:
    8000ad08:	00005797          	auipc	a5,0x5
    8000ad0c:	b007a783          	lw	a5,-1280(a5) # 8000f808 <panicked>
    8000ad10:	00078463          	beqz	a5,8000ad18 <uartputc+0x10>
    8000ad14:	0000006f          	j	8000ad14 <uartputc+0xc>
    8000ad18:	fd010113          	addi	sp,sp,-48
    8000ad1c:	02813023          	sd	s0,32(sp)
    8000ad20:	00913c23          	sd	s1,24(sp)
    8000ad24:	01213823          	sd	s2,16(sp)
    8000ad28:	01313423          	sd	s3,8(sp)
    8000ad2c:	02113423          	sd	ra,40(sp)
    8000ad30:	03010413          	addi	s0,sp,48
    8000ad34:	00005917          	auipc	s2,0x5
    8000ad38:	adc90913          	addi	s2,s2,-1316 # 8000f810 <uart_tx_r>
    8000ad3c:	00093783          	ld	a5,0(s2)
    8000ad40:	00005497          	auipc	s1,0x5
    8000ad44:	ad848493          	addi	s1,s1,-1320 # 8000f818 <uart_tx_w>
    8000ad48:	0004b703          	ld	a4,0(s1)
    8000ad4c:	02078693          	addi	a3,a5,32
    8000ad50:	00050993          	mv	s3,a0
    8000ad54:	02e69c63          	bne	a3,a4,8000ad8c <uartputc+0x84>
    8000ad58:	00001097          	auipc	ra,0x1
    8000ad5c:	834080e7          	jalr	-1996(ra) # 8000b58c <push_on>
    8000ad60:	00093783          	ld	a5,0(s2)
    8000ad64:	0004b703          	ld	a4,0(s1)
    8000ad68:	02078793          	addi	a5,a5,32
    8000ad6c:	00e79463          	bne	a5,a4,8000ad74 <uartputc+0x6c>
    8000ad70:	0000006f          	j	8000ad70 <uartputc+0x68>
    8000ad74:	00001097          	auipc	ra,0x1
    8000ad78:	88c080e7          	jalr	-1908(ra) # 8000b600 <pop_on>
    8000ad7c:	00093783          	ld	a5,0(s2)
    8000ad80:	0004b703          	ld	a4,0(s1)
    8000ad84:	02078693          	addi	a3,a5,32
    8000ad88:	fce688e3          	beq	a3,a4,8000ad58 <uartputc+0x50>
    8000ad8c:	01f77693          	andi	a3,a4,31
    8000ad90:	000c9597          	auipc	a1,0xc9
    8000ad94:	44058593          	addi	a1,a1,1088 # 800d41d0 <uart_tx_buf>
    8000ad98:	00d586b3          	add	a3,a1,a3
    8000ad9c:	00170713          	addi	a4,a4,1
    8000ada0:	01368023          	sb	s3,0(a3)
    8000ada4:	00e4b023          	sd	a4,0(s1)
    8000ada8:	10000637          	lui	a2,0x10000
    8000adac:	02f71063          	bne	a4,a5,8000adcc <uartputc+0xc4>
    8000adb0:	0340006f          	j	8000ade4 <uartputc+0xdc>
    8000adb4:	00074703          	lbu	a4,0(a4)
    8000adb8:	00f93023          	sd	a5,0(s2)
    8000adbc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    8000adc0:	00093783          	ld	a5,0(s2)
    8000adc4:	0004b703          	ld	a4,0(s1)
    8000adc8:	00f70e63          	beq	a4,a5,8000ade4 <uartputc+0xdc>
    8000adcc:	00564683          	lbu	a3,5(a2)
    8000add0:	01f7f713          	andi	a4,a5,31
    8000add4:	00e58733          	add	a4,a1,a4
    8000add8:	0206f693          	andi	a3,a3,32
    8000addc:	00178793          	addi	a5,a5,1
    8000ade0:	fc069ae3          	bnez	a3,8000adb4 <uartputc+0xac>
    8000ade4:	02813083          	ld	ra,40(sp)
    8000ade8:	02013403          	ld	s0,32(sp)
    8000adec:	01813483          	ld	s1,24(sp)
    8000adf0:	01013903          	ld	s2,16(sp)
    8000adf4:	00813983          	ld	s3,8(sp)
    8000adf8:	03010113          	addi	sp,sp,48
    8000adfc:	00008067          	ret

000000008000ae00 <uartputc_sync>:
    8000ae00:	ff010113          	addi	sp,sp,-16
    8000ae04:	00813423          	sd	s0,8(sp)
    8000ae08:	01010413          	addi	s0,sp,16
    8000ae0c:	00005717          	auipc	a4,0x5
    8000ae10:	9fc72703          	lw	a4,-1540(a4) # 8000f808 <panicked>
    8000ae14:	02071663          	bnez	a4,8000ae40 <uartputc_sync+0x40>
    8000ae18:	00050793          	mv	a5,a0
    8000ae1c:	100006b7          	lui	a3,0x10000
    8000ae20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    8000ae24:	02077713          	andi	a4,a4,32
    8000ae28:	fe070ce3          	beqz	a4,8000ae20 <uartputc_sync+0x20>
    8000ae2c:	0ff7f793          	andi	a5,a5,255
    8000ae30:	00f68023          	sb	a5,0(a3)
    8000ae34:	00813403          	ld	s0,8(sp)
    8000ae38:	01010113          	addi	sp,sp,16
    8000ae3c:	00008067          	ret
    8000ae40:	0000006f          	j	8000ae40 <uartputc_sync+0x40>

000000008000ae44 <uartstart>:
    8000ae44:	ff010113          	addi	sp,sp,-16
    8000ae48:	00813423          	sd	s0,8(sp)
    8000ae4c:	01010413          	addi	s0,sp,16
    8000ae50:	00005617          	auipc	a2,0x5
    8000ae54:	9c060613          	addi	a2,a2,-1600 # 8000f810 <uart_tx_r>
    8000ae58:	00005517          	auipc	a0,0x5
    8000ae5c:	9c050513          	addi	a0,a0,-1600 # 8000f818 <uart_tx_w>
    8000ae60:	00063783          	ld	a5,0(a2)
    8000ae64:	00053703          	ld	a4,0(a0)
    8000ae68:	04f70263          	beq	a4,a5,8000aeac <uartstart+0x68>
    8000ae6c:	100005b7          	lui	a1,0x10000
    8000ae70:	000c9817          	auipc	a6,0xc9
    8000ae74:	36080813          	addi	a6,a6,864 # 800d41d0 <uart_tx_buf>
    8000ae78:	01c0006f          	j	8000ae94 <uartstart+0x50>
    8000ae7c:	0006c703          	lbu	a4,0(a3)
    8000ae80:	00f63023          	sd	a5,0(a2)
    8000ae84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000ae88:	00063783          	ld	a5,0(a2)
    8000ae8c:	00053703          	ld	a4,0(a0)
    8000ae90:	00f70e63          	beq	a4,a5,8000aeac <uartstart+0x68>
    8000ae94:	01f7f713          	andi	a4,a5,31
    8000ae98:	00e806b3          	add	a3,a6,a4
    8000ae9c:	0055c703          	lbu	a4,5(a1)
    8000aea0:	00178793          	addi	a5,a5,1
    8000aea4:	02077713          	andi	a4,a4,32
    8000aea8:	fc071ae3          	bnez	a4,8000ae7c <uartstart+0x38>
    8000aeac:	00813403          	ld	s0,8(sp)
    8000aeb0:	01010113          	addi	sp,sp,16
    8000aeb4:	00008067          	ret

000000008000aeb8 <uartgetc>:
    8000aeb8:	ff010113          	addi	sp,sp,-16
    8000aebc:	00813423          	sd	s0,8(sp)
    8000aec0:	01010413          	addi	s0,sp,16
    8000aec4:	10000737          	lui	a4,0x10000
    8000aec8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000aecc:	0017f793          	andi	a5,a5,1
    8000aed0:	00078c63          	beqz	a5,8000aee8 <uartgetc+0x30>
    8000aed4:	00074503          	lbu	a0,0(a4)
    8000aed8:	0ff57513          	andi	a0,a0,255
    8000aedc:	00813403          	ld	s0,8(sp)
    8000aee0:	01010113          	addi	sp,sp,16
    8000aee4:	00008067          	ret
    8000aee8:	fff00513          	li	a0,-1
    8000aeec:	ff1ff06f          	j	8000aedc <uartgetc+0x24>

000000008000aef0 <uartintr>:
    8000aef0:	100007b7          	lui	a5,0x10000
    8000aef4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    8000aef8:	0017f793          	andi	a5,a5,1
    8000aefc:	0a078463          	beqz	a5,8000afa4 <uartintr+0xb4>
    8000af00:	fe010113          	addi	sp,sp,-32
    8000af04:	00813823          	sd	s0,16(sp)
    8000af08:	00913423          	sd	s1,8(sp)
    8000af0c:	00113c23          	sd	ra,24(sp)
    8000af10:	02010413          	addi	s0,sp,32
    8000af14:	100004b7          	lui	s1,0x10000
    8000af18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000af1c:	0ff57513          	andi	a0,a0,255
    8000af20:	fffff097          	auipc	ra,0xfffff
    8000af24:	534080e7          	jalr	1332(ra) # 8000a454 <consoleintr>
    8000af28:	0054c783          	lbu	a5,5(s1)
    8000af2c:	0017f793          	andi	a5,a5,1
    8000af30:	fe0794e3          	bnez	a5,8000af18 <uartintr+0x28>
    8000af34:	00005617          	auipc	a2,0x5
    8000af38:	8dc60613          	addi	a2,a2,-1828 # 8000f810 <uart_tx_r>
    8000af3c:	00005517          	auipc	a0,0x5
    8000af40:	8dc50513          	addi	a0,a0,-1828 # 8000f818 <uart_tx_w>
    8000af44:	00063783          	ld	a5,0(a2)
    8000af48:	00053703          	ld	a4,0(a0)
    8000af4c:	04f70263          	beq	a4,a5,8000af90 <uartintr+0xa0>
    8000af50:	100005b7          	lui	a1,0x10000
    8000af54:	000c9817          	auipc	a6,0xc9
    8000af58:	27c80813          	addi	a6,a6,636 # 800d41d0 <uart_tx_buf>
    8000af5c:	01c0006f          	j	8000af78 <uartintr+0x88>
    8000af60:	0006c703          	lbu	a4,0(a3)
    8000af64:	00f63023          	sd	a5,0(a2)
    8000af68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000af6c:	00063783          	ld	a5,0(a2)
    8000af70:	00053703          	ld	a4,0(a0)
    8000af74:	00f70e63          	beq	a4,a5,8000af90 <uartintr+0xa0>
    8000af78:	01f7f713          	andi	a4,a5,31
    8000af7c:	00e806b3          	add	a3,a6,a4
    8000af80:	0055c703          	lbu	a4,5(a1)
    8000af84:	00178793          	addi	a5,a5,1
    8000af88:	02077713          	andi	a4,a4,32
    8000af8c:	fc071ae3          	bnez	a4,8000af60 <uartintr+0x70>
    8000af90:	01813083          	ld	ra,24(sp)
    8000af94:	01013403          	ld	s0,16(sp)
    8000af98:	00813483          	ld	s1,8(sp)
    8000af9c:	02010113          	addi	sp,sp,32
    8000afa0:	00008067          	ret
    8000afa4:	00005617          	auipc	a2,0x5
    8000afa8:	86c60613          	addi	a2,a2,-1940 # 8000f810 <uart_tx_r>
    8000afac:	00005517          	auipc	a0,0x5
    8000afb0:	86c50513          	addi	a0,a0,-1940 # 8000f818 <uart_tx_w>
    8000afb4:	00063783          	ld	a5,0(a2)
    8000afb8:	00053703          	ld	a4,0(a0)
    8000afbc:	04f70263          	beq	a4,a5,8000b000 <uartintr+0x110>
    8000afc0:	100005b7          	lui	a1,0x10000
    8000afc4:	000c9817          	auipc	a6,0xc9
    8000afc8:	20c80813          	addi	a6,a6,524 # 800d41d0 <uart_tx_buf>
    8000afcc:	01c0006f          	j	8000afe8 <uartintr+0xf8>
    8000afd0:	0006c703          	lbu	a4,0(a3)
    8000afd4:	00f63023          	sd	a5,0(a2)
    8000afd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000afdc:	00063783          	ld	a5,0(a2)
    8000afe0:	00053703          	ld	a4,0(a0)
    8000afe4:	02f70063          	beq	a4,a5,8000b004 <uartintr+0x114>
    8000afe8:	01f7f713          	andi	a4,a5,31
    8000afec:	00e806b3          	add	a3,a6,a4
    8000aff0:	0055c703          	lbu	a4,5(a1)
    8000aff4:	00178793          	addi	a5,a5,1
    8000aff8:	02077713          	andi	a4,a4,32
    8000affc:	fc071ae3          	bnez	a4,8000afd0 <uartintr+0xe0>
    8000b000:	00008067          	ret
    8000b004:	00008067          	ret

000000008000b008 <kinit>:
    8000b008:	fc010113          	addi	sp,sp,-64
    8000b00c:	02913423          	sd	s1,40(sp)
    8000b010:	fffff7b7          	lui	a5,0xfffff
    8000b014:	000ca497          	auipc	s1,0xca
    8000b018:	1db48493          	addi	s1,s1,475 # 800d51ef <end+0xfff>
    8000b01c:	02813823          	sd	s0,48(sp)
    8000b020:	01313c23          	sd	s3,24(sp)
    8000b024:	00f4f4b3          	and	s1,s1,a5
    8000b028:	02113c23          	sd	ra,56(sp)
    8000b02c:	03213023          	sd	s2,32(sp)
    8000b030:	01413823          	sd	s4,16(sp)
    8000b034:	01513423          	sd	s5,8(sp)
    8000b038:	04010413          	addi	s0,sp,64
    8000b03c:	000017b7          	lui	a5,0x1
    8000b040:	01100993          	li	s3,17
    8000b044:	00f487b3          	add	a5,s1,a5
    8000b048:	01b99993          	slli	s3,s3,0x1b
    8000b04c:	06f9e063          	bltu	s3,a5,8000b0ac <kinit+0xa4>
    8000b050:	000c9a97          	auipc	s5,0xc9
    8000b054:	1a0a8a93          	addi	s5,s5,416 # 800d41f0 <end>
    8000b058:	0754ec63          	bltu	s1,s5,8000b0d0 <kinit+0xc8>
    8000b05c:	0734fa63          	bgeu	s1,s3,8000b0d0 <kinit+0xc8>
    8000b060:	00088a37          	lui	s4,0x88
    8000b064:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    8000b068:	00004917          	auipc	s2,0x4
    8000b06c:	7b890913          	addi	s2,s2,1976 # 8000f820 <kmem>
    8000b070:	00ca1a13          	slli	s4,s4,0xc
    8000b074:	0140006f          	j	8000b088 <kinit+0x80>
    8000b078:	000017b7          	lui	a5,0x1
    8000b07c:	00f484b3          	add	s1,s1,a5
    8000b080:	0554e863          	bltu	s1,s5,8000b0d0 <kinit+0xc8>
    8000b084:	0534f663          	bgeu	s1,s3,8000b0d0 <kinit+0xc8>
    8000b088:	00001637          	lui	a2,0x1
    8000b08c:	00100593          	li	a1,1
    8000b090:	00048513          	mv	a0,s1
    8000b094:	00000097          	auipc	ra,0x0
    8000b098:	5e4080e7          	jalr	1508(ra) # 8000b678 <__memset>
    8000b09c:	00093783          	ld	a5,0(s2)
    8000b0a0:	00f4b023          	sd	a5,0(s1)
    8000b0a4:	00993023          	sd	s1,0(s2)
    8000b0a8:	fd4498e3          	bne	s1,s4,8000b078 <kinit+0x70>
    8000b0ac:	03813083          	ld	ra,56(sp)
    8000b0b0:	03013403          	ld	s0,48(sp)
    8000b0b4:	02813483          	ld	s1,40(sp)
    8000b0b8:	02013903          	ld	s2,32(sp)
    8000b0bc:	01813983          	ld	s3,24(sp)
    8000b0c0:	01013a03          	ld	s4,16(sp)
    8000b0c4:	00813a83          	ld	s5,8(sp)
    8000b0c8:	04010113          	addi	sp,sp,64
    8000b0cc:	00008067          	ret
    8000b0d0:	00002517          	auipc	a0,0x2
    8000b0d4:	96050513          	addi	a0,a0,-1696 # 8000ca30 <digits+0x18>
    8000b0d8:	fffff097          	auipc	ra,0xfffff
    8000b0dc:	4b4080e7          	jalr	1204(ra) # 8000a58c <panic>

000000008000b0e0 <freerange>:
    8000b0e0:	fc010113          	addi	sp,sp,-64
    8000b0e4:	000017b7          	lui	a5,0x1
    8000b0e8:	02913423          	sd	s1,40(sp)
    8000b0ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    8000b0f0:	009504b3          	add	s1,a0,s1
    8000b0f4:	fffff537          	lui	a0,0xfffff
    8000b0f8:	02813823          	sd	s0,48(sp)
    8000b0fc:	02113c23          	sd	ra,56(sp)
    8000b100:	03213023          	sd	s2,32(sp)
    8000b104:	01313c23          	sd	s3,24(sp)
    8000b108:	01413823          	sd	s4,16(sp)
    8000b10c:	01513423          	sd	s5,8(sp)
    8000b110:	01613023          	sd	s6,0(sp)
    8000b114:	04010413          	addi	s0,sp,64
    8000b118:	00a4f4b3          	and	s1,s1,a0
    8000b11c:	00f487b3          	add	a5,s1,a5
    8000b120:	06f5e463          	bltu	a1,a5,8000b188 <freerange+0xa8>
    8000b124:	000c9a97          	auipc	s5,0xc9
    8000b128:	0cca8a93          	addi	s5,s5,204 # 800d41f0 <end>
    8000b12c:	0954e263          	bltu	s1,s5,8000b1b0 <freerange+0xd0>
    8000b130:	01100993          	li	s3,17
    8000b134:	01b99993          	slli	s3,s3,0x1b
    8000b138:	0734fc63          	bgeu	s1,s3,8000b1b0 <freerange+0xd0>
    8000b13c:	00058a13          	mv	s4,a1
    8000b140:	00004917          	auipc	s2,0x4
    8000b144:	6e090913          	addi	s2,s2,1760 # 8000f820 <kmem>
    8000b148:	00002b37          	lui	s6,0x2
    8000b14c:	0140006f          	j	8000b160 <freerange+0x80>
    8000b150:	000017b7          	lui	a5,0x1
    8000b154:	00f484b3          	add	s1,s1,a5
    8000b158:	0554ec63          	bltu	s1,s5,8000b1b0 <freerange+0xd0>
    8000b15c:	0534fa63          	bgeu	s1,s3,8000b1b0 <freerange+0xd0>
    8000b160:	00001637          	lui	a2,0x1
    8000b164:	00100593          	li	a1,1
    8000b168:	00048513          	mv	a0,s1
    8000b16c:	00000097          	auipc	ra,0x0
    8000b170:	50c080e7          	jalr	1292(ra) # 8000b678 <__memset>
    8000b174:	00093703          	ld	a4,0(s2)
    8000b178:	016487b3          	add	a5,s1,s6
    8000b17c:	00e4b023          	sd	a4,0(s1)
    8000b180:	00993023          	sd	s1,0(s2)
    8000b184:	fcfa76e3          	bgeu	s4,a5,8000b150 <freerange+0x70>
    8000b188:	03813083          	ld	ra,56(sp)
    8000b18c:	03013403          	ld	s0,48(sp)
    8000b190:	02813483          	ld	s1,40(sp)
    8000b194:	02013903          	ld	s2,32(sp)
    8000b198:	01813983          	ld	s3,24(sp)
    8000b19c:	01013a03          	ld	s4,16(sp)
    8000b1a0:	00813a83          	ld	s5,8(sp)
    8000b1a4:	00013b03          	ld	s6,0(sp)
    8000b1a8:	04010113          	addi	sp,sp,64
    8000b1ac:	00008067          	ret
    8000b1b0:	00002517          	auipc	a0,0x2
    8000b1b4:	88050513          	addi	a0,a0,-1920 # 8000ca30 <digits+0x18>
    8000b1b8:	fffff097          	auipc	ra,0xfffff
    8000b1bc:	3d4080e7          	jalr	980(ra) # 8000a58c <panic>

000000008000b1c0 <kfree>:
    8000b1c0:	fe010113          	addi	sp,sp,-32
    8000b1c4:	00813823          	sd	s0,16(sp)
    8000b1c8:	00113c23          	sd	ra,24(sp)
    8000b1cc:	00913423          	sd	s1,8(sp)
    8000b1d0:	02010413          	addi	s0,sp,32
    8000b1d4:	03451793          	slli	a5,a0,0x34
    8000b1d8:	04079c63          	bnez	a5,8000b230 <kfree+0x70>
    8000b1dc:	000c9797          	auipc	a5,0xc9
    8000b1e0:	01478793          	addi	a5,a5,20 # 800d41f0 <end>
    8000b1e4:	00050493          	mv	s1,a0
    8000b1e8:	04f56463          	bltu	a0,a5,8000b230 <kfree+0x70>
    8000b1ec:	01100793          	li	a5,17
    8000b1f0:	01b79793          	slli	a5,a5,0x1b
    8000b1f4:	02f57e63          	bgeu	a0,a5,8000b230 <kfree+0x70>
    8000b1f8:	00001637          	lui	a2,0x1
    8000b1fc:	00100593          	li	a1,1
    8000b200:	00000097          	auipc	ra,0x0
    8000b204:	478080e7          	jalr	1144(ra) # 8000b678 <__memset>
    8000b208:	00004797          	auipc	a5,0x4
    8000b20c:	61878793          	addi	a5,a5,1560 # 8000f820 <kmem>
    8000b210:	0007b703          	ld	a4,0(a5)
    8000b214:	01813083          	ld	ra,24(sp)
    8000b218:	01013403          	ld	s0,16(sp)
    8000b21c:	00e4b023          	sd	a4,0(s1)
    8000b220:	0097b023          	sd	s1,0(a5)
    8000b224:	00813483          	ld	s1,8(sp)
    8000b228:	02010113          	addi	sp,sp,32
    8000b22c:	00008067          	ret
    8000b230:	00002517          	auipc	a0,0x2
    8000b234:	80050513          	addi	a0,a0,-2048 # 8000ca30 <digits+0x18>
    8000b238:	fffff097          	auipc	ra,0xfffff
    8000b23c:	354080e7          	jalr	852(ra) # 8000a58c <panic>

000000008000b240 <kalloc>:
    8000b240:	fe010113          	addi	sp,sp,-32
    8000b244:	00813823          	sd	s0,16(sp)
    8000b248:	00913423          	sd	s1,8(sp)
    8000b24c:	00113c23          	sd	ra,24(sp)
    8000b250:	02010413          	addi	s0,sp,32
    8000b254:	00004797          	auipc	a5,0x4
    8000b258:	5cc78793          	addi	a5,a5,1484 # 8000f820 <kmem>
    8000b25c:	0007b483          	ld	s1,0(a5)
    8000b260:	02048063          	beqz	s1,8000b280 <kalloc+0x40>
    8000b264:	0004b703          	ld	a4,0(s1)
    8000b268:	00001637          	lui	a2,0x1
    8000b26c:	00500593          	li	a1,5
    8000b270:	00048513          	mv	a0,s1
    8000b274:	00e7b023          	sd	a4,0(a5)
    8000b278:	00000097          	auipc	ra,0x0
    8000b27c:	400080e7          	jalr	1024(ra) # 8000b678 <__memset>
    8000b280:	01813083          	ld	ra,24(sp)
    8000b284:	01013403          	ld	s0,16(sp)
    8000b288:	00048513          	mv	a0,s1
    8000b28c:	00813483          	ld	s1,8(sp)
    8000b290:	02010113          	addi	sp,sp,32
    8000b294:	00008067          	ret

000000008000b298 <initlock>:
    8000b298:	ff010113          	addi	sp,sp,-16
    8000b29c:	00813423          	sd	s0,8(sp)
    8000b2a0:	01010413          	addi	s0,sp,16
    8000b2a4:	00813403          	ld	s0,8(sp)
    8000b2a8:	00b53423          	sd	a1,8(a0)
    8000b2ac:	00052023          	sw	zero,0(a0)
    8000b2b0:	00053823          	sd	zero,16(a0)
    8000b2b4:	01010113          	addi	sp,sp,16
    8000b2b8:	00008067          	ret

000000008000b2bc <acquire>:
    8000b2bc:	fe010113          	addi	sp,sp,-32
    8000b2c0:	00813823          	sd	s0,16(sp)
    8000b2c4:	00913423          	sd	s1,8(sp)
    8000b2c8:	00113c23          	sd	ra,24(sp)
    8000b2cc:	01213023          	sd	s2,0(sp)
    8000b2d0:	02010413          	addi	s0,sp,32
    8000b2d4:	00050493          	mv	s1,a0
    8000b2d8:	10002973          	csrr	s2,sstatus
    8000b2dc:	100027f3          	csrr	a5,sstatus
    8000b2e0:	ffd7f793          	andi	a5,a5,-3
    8000b2e4:	10079073          	csrw	sstatus,a5
    8000b2e8:	fffff097          	auipc	ra,0xfffff
    8000b2ec:	8e0080e7          	jalr	-1824(ra) # 80009bc8 <mycpu>
    8000b2f0:	07852783          	lw	a5,120(a0)
    8000b2f4:	06078e63          	beqz	a5,8000b370 <acquire+0xb4>
    8000b2f8:	fffff097          	auipc	ra,0xfffff
    8000b2fc:	8d0080e7          	jalr	-1840(ra) # 80009bc8 <mycpu>
    8000b300:	07852783          	lw	a5,120(a0)
    8000b304:	0004a703          	lw	a4,0(s1)
    8000b308:	0017879b          	addiw	a5,a5,1
    8000b30c:	06f52c23          	sw	a5,120(a0)
    8000b310:	04071063          	bnez	a4,8000b350 <acquire+0x94>
    8000b314:	00100713          	li	a4,1
    8000b318:	00070793          	mv	a5,a4
    8000b31c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    8000b320:	0007879b          	sext.w	a5,a5
    8000b324:	fe079ae3          	bnez	a5,8000b318 <acquire+0x5c>
    8000b328:	0ff0000f          	fence
    8000b32c:	fffff097          	auipc	ra,0xfffff
    8000b330:	89c080e7          	jalr	-1892(ra) # 80009bc8 <mycpu>
    8000b334:	01813083          	ld	ra,24(sp)
    8000b338:	01013403          	ld	s0,16(sp)
    8000b33c:	00a4b823          	sd	a0,16(s1)
    8000b340:	00013903          	ld	s2,0(sp)
    8000b344:	00813483          	ld	s1,8(sp)
    8000b348:	02010113          	addi	sp,sp,32
    8000b34c:	00008067          	ret
    8000b350:	0104b903          	ld	s2,16(s1)
    8000b354:	fffff097          	auipc	ra,0xfffff
    8000b358:	874080e7          	jalr	-1932(ra) # 80009bc8 <mycpu>
    8000b35c:	faa91ce3          	bne	s2,a0,8000b314 <acquire+0x58>
    8000b360:	00001517          	auipc	a0,0x1
    8000b364:	6d850513          	addi	a0,a0,1752 # 8000ca38 <digits+0x20>
    8000b368:	fffff097          	auipc	ra,0xfffff
    8000b36c:	224080e7          	jalr	548(ra) # 8000a58c <panic>
    8000b370:	00195913          	srli	s2,s2,0x1
    8000b374:	fffff097          	auipc	ra,0xfffff
    8000b378:	854080e7          	jalr	-1964(ra) # 80009bc8 <mycpu>
    8000b37c:	00197913          	andi	s2,s2,1
    8000b380:	07252e23          	sw	s2,124(a0)
    8000b384:	f75ff06f          	j	8000b2f8 <acquire+0x3c>

000000008000b388 <release>:
    8000b388:	fe010113          	addi	sp,sp,-32
    8000b38c:	00813823          	sd	s0,16(sp)
    8000b390:	00113c23          	sd	ra,24(sp)
    8000b394:	00913423          	sd	s1,8(sp)
    8000b398:	01213023          	sd	s2,0(sp)
    8000b39c:	02010413          	addi	s0,sp,32
    8000b3a0:	00052783          	lw	a5,0(a0)
    8000b3a4:	00079a63          	bnez	a5,8000b3b8 <release+0x30>
    8000b3a8:	00001517          	auipc	a0,0x1
    8000b3ac:	69850513          	addi	a0,a0,1688 # 8000ca40 <digits+0x28>
    8000b3b0:	fffff097          	auipc	ra,0xfffff
    8000b3b4:	1dc080e7          	jalr	476(ra) # 8000a58c <panic>
    8000b3b8:	01053903          	ld	s2,16(a0)
    8000b3bc:	00050493          	mv	s1,a0
    8000b3c0:	fffff097          	auipc	ra,0xfffff
    8000b3c4:	808080e7          	jalr	-2040(ra) # 80009bc8 <mycpu>
    8000b3c8:	fea910e3          	bne	s2,a0,8000b3a8 <release+0x20>
    8000b3cc:	0004b823          	sd	zero,16(s1)
    8000b3d0:	0ff0000f          	fence
    8000b3d4:	0f50000f          	fence	iorw,ow
    8000b3d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000b3dc:	ffffe097          	auipc	ra,0xffffe
    8000b3e0:	7ec080e7          	jalr	2028(ra) # 80009bc8 <mycpu>
    8000b3e4:	100027f3          	csrr	a5,sstatus
    8000b3e8:	0027f793          	andi	a5,a5,2
    8000b3ec:	04079a63          	bnez	a5,8000b440 <release+0xb8>
    8000b3f0:	07852783          	lw	a5,120(a0)
    8000b3f4:	02f05e63          	blez	a5,8000b430 <release+0xa8>
    8000b3f8:	fff7871b          	addiw	a4,a5,-1
    8000b3fc:	06e52c23          	sw	a4,120(a0)
    8000b400:	00071c63          	bnez	a4,8000b418 <release+0x90>
    8000b404:	07c52783          	lw	a5,124(a0)
    8000b408:	00078863          	beqz	a5,8000b418 <release+0x90>
    8000b40c:	100027f3          	csrr	a5,sstatus
    8000b410:	0027e793          	ori	a5,a5,2
    8000b414:	10079073          	csrw	sstatus,a5
    8000b418:	01813083          	ld	ra,24(sp)
    8000b41c:	01013403          	ld	s0,16(sp)
    8000b420:	00813483          	ld	s1,8(sp)
    8000b424:	00013903          	ld	s2,0(sp)
    8000b428:	02010113          	addi	sp,sp,32
    8000b42c:	00008067          	ret
    8000b430:	00001517          	auipc	a0,0x1
    8000b434:	63050513          	addi	a0,a0,1584 # 8000ca60 <digits+0x48>
    8000b438:	fffff097          	auipc	ra,0xfffff
    8000b43c:	154080e7          	jalr	340(ra) # 8000a58c <panic>
    8000b440:	00001517          	auipc	a0,0x1
    8000b444:	60850513          	addi	a0,a0,1544 # 8000ca48 <digits+0x30>
    8000b448:	fffff097          	auipc	ra,0xfffff
    8000b44c:	144080e7          	jalr	324(ra) # 8000a58c <panic>

000000008000b450 <holding>:
    8000b450:	00052783          	lw	a5,0(a0)
    8000b454:	00079663          	bnez	a5,8000b460 <holding+0x10>
    8000b458:	00000513          	li	a0,0
    8000b45c:	00008067          	ret
    8000b460:	fe010113          	addi	sp,sp,-32
    8000b464:	00813823          	sd	s0,16(sp)
    8000b468:	00913423          	sd	s1,8(sp)
    8000b46c:	00113c23          	sd	ra,24(sp)
    8000b470:	02010413          	addi	s0,sp,32
    8000b474:	01053483          	ld	s1,16(a0)
    8000b478:	ffffe097          	auipc	ra,0xffffe
    8000b47c:	750080e7          	jalr	1872(ra) # 80009bc8 <mycpu>
    8000b480:	01813083          	ld	ra,24(sp)
    8000b484:	01013403          	ld	s0,16(sp)
    8000b488:	40a48533          	sub	a0,s1,a0
    8000b48c:	00153513          	seqz	a0,a0
    8000b490:	00813483          	ld	s1,8(sp)
    8000b494:	02010113          	addi	sp,sp,32
    8000b498:	00008067          	ret

000000008000b49c <push_off>:
    8000b49c:	fe010113          	addi	sp,sp,-32
    8000b4a0:	00813823          	sd	s0,16(sp)
    8000b4a4:	00113c23          	sd	ra,24(sp)
    8000b4a8:	00913423          	sd	s1,8(sp)
    8000b4ac:	02010413          	addi	s0,sp,32
    8000b4b0:	100024f3          	csrr	s1,sstatus
    8000b4b4:	100027f3          	csrr	a5,sstatus
    8000b4b8:	ffd7f793          	andi	a5,a5,-3
    8000b4bc:	10079073          	csrw	sstatus,a5
    8000b4c0:	ffffe097          	auipc	ra,0xffffe
    8000b4c4:	708080e7          	jalr	1800(ra) # 80009bc8 <mycpu>
    8000b4c8:	07852783          	lw	a5,120(a0)
    8000b4cc:	02078663          	beqz	a5,8000b4f8 <push_off+0x5c>
    8000b4d0:	ffffe097          	auipc	ra,0xffffe
    8000b4d4:	6f8080e7          	jalr	1784(ra) # 80009bc8 <mycpu>
    8000b4d8:	07852783          	lw	a5,120(a0)
    8000b4dc:	01813083          	ld	ra,24(sp)
    8000b4e0:	01013403          	ld	s0,16(sp)
    8000b4e4:	0017879b          	addiw	a5,a5,1
    8000b4e8:	06f52c23          	sw	a5,120(a0)
    8000b4ec:	00813483          	ld	s1,8(sp)
    8000b4f0:	02010113          	addi	sp,sp,32
    8000b4f4:	00008067          	ret
    8000b4f8:	0014d493          	srli	s1,s1,0x1
    8000b4fc:	ffffe097          	auipc	ra,0xffffe
    8000b500:	6cc080e7          	jalr	1740(ra) # 80009bc8 <mycpu>
    8000b504:	0014f493          	andi	s1,s1,1
    8000b508:	06952e23          	sw	s1,124(a0)
    8000b50c:	fc5ff06f          	j	8000b4d0 <push_off+0x34>

000000008000b510 <pop_off>:
    8000b510:	ff010113          	addi	sp,sp,-16
    8000b514:	00813023          	sd	s0,0(sp)
    8000b518:	00113423          	sd	ra,8(sp)
    8000b51c:	01010413          	addi	s0,sp,16
    8000b520:	ffffe097          	auipc	ra,0xffffe
    8000b524:	6a8080e7          	jalr	1704(ra) # 80009bc8 <mycpu>
    8000b528:	100027f3          	csrr	a5,sstatus
    8000b52c:	0027f793          	andi	a5,a5,2
    8000b530:	04079663          	bnez	a5,8000b57c <pop_off+0x6c>
    8000b534:	07852783          	lw	a5,120(a0)
    8000b538:	02f05a63          	blez	a5,8000b56c <pop_off+0x5c>
    8000b53c:	fff7871b          	addiw	a4,a5,-1
    8000b540:	06e52c23          	sw	a4,120(a0)
    8000b544:	00071c63          	bnez	a4,8000b55c <pop_off+0x4c>
    8000b548:	07c52783          	lw	a5,124(a0)
    8000b54c:	00078863          	beqz	a5,8000b55c <pop_off+0x4c>
    8000b550:	100027f3          	csrr	a5,sstatus
    8000b554:	0027e793          	ori	a5,a5,2
    8000b558:	10079073          	csrw	sstatus,a5
    8000b55c:	00813083          	ld	ra,8(sp)
    8000b560:	00013403          	ld	s0,0(sp)
    8000b564:	01010113          	addi	sp,sp,16
    8000b568:	00008067          	ret
    8000b56c:	00001517          	auipc	a0,0x1
    8000b570:	4f450513          	addi	a0,a0,1268 # 8000ca60 <digits+0x48>
    8000b574:	fffff097          	auipc	ra,0xfffff
    8000b578:	018080e7          	jalr	24(ra) # 8000a58c <panic>
    8000b57c:	00001517          	auipc	a0,0x1
    8000b580:	4cc50513          	addi	a0,a0,1228 # 8000ca48 <digits+0x30>
    8000b584:	fffff097          	auipc	ra,0xfffff
    8000b588:	008080e7          	jalr	8(ra) # 8000a58c <panic>

000000008000b58c <push_on>:
    8000b58c:	fe010113          	addi	sp,sp,-32
    8000b590:	00813823          	sd	s0,16(sp)
    8000b594:	00113c23          	sd	ra,24(sp)
    8000b598:	00913423          	sd	s1,8(sp)
    8000b59c:	02010413          	addi	s0,sp,32
    8000b5a0:	100024f3          	csrr	s1,sstatus
    8000b5a4:	100027f3          	csrr	a5,sstatus
    8000b5a8:	0027e793          	ori	a5,a5,2
    8000b5ac:	10079073          	csrw	sstatus,a5
    8000b5b0:	ffffe097          	auipc	ra,0xffffe
    8000b5b4:	618080e7          	jalr	1560(ra) # 80009bc8 <mycpu>
    8000b5b8:	07852783          	lw	a5,120(a0)
    8000b5bc:	02078663          	beqz	a5,8000b5e8 <push_on+0x5c>
    8000b5c0:	ffffe097          	auipc	ra,0xffffe
    8000b5c4:	608080e7          	jalr	1544(ra) # 80009bc8 <mycpu>
    8000b5c8:	07852783          	lw	a5,120(a0)
    8000b5cc:	01813083          	ld	ra,24(sp)
    8000b5d0:	01013403          	ld	s0,16(sp)
    8000b5d4:	0017879b          	addiw	a5,a5,1
    8000b5d8:	06f52c23          	sw	a5,120(a0)
    8000b5dc:	00813483          	ld	s1,8(sp)
    8000b5e0:	02010113          	addi	sp,sp,32
    8000b5e4:	00008067          	ret
    8000b5e8:	0014d493          	srli	s1,s1,0x1
    8000b5ec:	ffffe097          	auipc	ra,0xffffe
    8000b5f0:	5dc080e7          	jalr	1500(ra) # 80009bc8 <mycpu>
    8000b5f4:	0014f493          	andi	s1,s1,1
    8000b5f8:	06952e23          	sw	s1,124(a0)
    8000b5fc:	fc5ff06f          	j	8000b5c0 <push_on+0x34>

000000008000b600 <pop_on>:
    8000b600:	ff010113          	addi	sp,sp,-16
    8000b604:	00813023          	sd	s0,0(sp)
    8000b608:	00113423          	sd	ra,8(sp)
    8000b60c:	01010413          	addi	s0,sp,16
    8000b610:	ffffe097          	auipc	ra,0xffffe
    8000b614:	5b8080e7          	jalr	1464(ra) # 80009bc8 <mycpu>
    8000b618:	100027f3          	csrr	a5,sstatus
    8000b61c:	0027f793          	andi	a5,a5,2
    8000b620:	04078463          	beqz	a5,8000b668 <pop_on+0x68>
    8000b624:	07852783          	lw	a5,120(a0)
    8000b628:	02f05863          	blez	a5,8000b658 <pop_on+0x58>
    8000b62c:	fff7879b          	addiw	a5,a5,-1
    8000b630:	06f52c23          	sw	a5,120(a0)
    8000b634:	07853783          	ld	a5,120(a0)
    8000b638:	00079863          	bnez	a5,8000b648 <pop_on+0x48>
    8000b63c:	100027f3          	csrr	a5,sstatus
    8000b640:	ffd7f793          	andi	a5,a5,-3
    8000b644:	10079073          	csrw	sstatus,a5
    8000b648:	00813083          	ld	ra,8(sp)
    8000b64c:	00013403          	ld	s0,0(sp)
    8000b650:	01010113          	addi	sp,sp,16
    8000b654:	00008067          	ret
    8000b658:	00001517          	auipc	a0,0x1
    8000b65c:	43050513          	addi	a0,a0,1072 # 8000ca88 <digits+0x70>
    8000b660:	fffff097          	auipc	ra,0xfffff
    8000b664:	f2c080e7          	jalr	-212(ra) # 8000a58c <panic>
    8000b668:	00001517          	auipc	a0,0x1
    8000b66c:	40050513          	addi	a0,a0,1024 # 8000ca68 <digits+0x50>
    8000b670:	fffff097          	auipc	ra,0xfffff
    8000b674:	f1c080e7          	jalr	-228(ra) # 8000a58c <panic>

000000008000b678 <__memset>:
    8000b678:	ff010113          	addi	sp,sp,-16
    8000b67c:	00813423          	sd	s0,8(sp)
    8000b680:	01010413          	addi	s0,sp,16
    8000b684:	1a060e63          	beqz	a2,8000b840 <__memset+0x1c8>
    8000b688:	40a007b3          	neg	a5,a0
    8000b68c:	0077f793          	andi	a5,a5,7
    8000b690:	00778693          	addi	a3,a5,7
    8000b694:	00b00813          	li	a6,11
    8000b698:	0ff5f593          	andi	a1,a1,255
    8000b69c:	fff6071b          	addiw	a4,a2,-1
    8000b6a0:	1b06e663          	bltu	a3,a6,8000b84c <__memset+0x1d4>
    8000b6a4:	1cd76463          	bltu	a4,a3,8000b86c <__memset+0x1f4>
    8000b6a8:	1a078e63          	beqz	a5,8000b864 <__memset+0x1ec>
    8000b6ac:	00b50023          	sb	a1,0(a0)
    8000b6b0:	00100713          	li	a4,1
    8000b6b4:	1ae78463          	beq	a5,a4,8000b85c <__memset+0x1e4>
    8000b6b8:	00b500a3          	sb	a1,1(a0)
    8000b6bc:	00200713          	li	a4,2
    8000b6c0:	1ae78a63          	beq	a5,a4,8000b874 <__memset+0x1fc>
    8000b6c4:	00b50123          	sb	a1,2(a0)
    8000b6c8:	00300713          	li	a4,3
    8000b6cc:	18e78463          	beq	a5,a4,8000b854 <__memset+0x1dc>
    8000b6d0:	00b501a3          	sb	a1,3(a0)
    8000b6d4:	00400713          	li	a4,4
    8000b6d8:	1ae78263          	beq	a5,a4,8000b87c <__memset+0x204>
    8000b6dc:	00b50223          	sb	a1,4(a0)
    8000b6e0:	00500713          	li	a4,5
    8000b6e4:	1ae78063          	beq	a5,a4,8000b884 <__memset+0x20c>
    8000b6e8:	00b502a3          	sb	a1,5(a0)
    8000b6ec:	00700713          	li	a4,7
    8000b6f0:	18e79e63          	bne	a5,a4,8000b88c <__memset+0x214>
    8000b6f4:	00b50323          	sb	a1,6(a0)
    8000b6f8:	00700e93          	li	t4,7
    8000b6fc:	00859713          	slli	a4,a1,0x8
    8000b700:	00e5e733          	or	a4,a1,a4
    8000b704:	01059e13          	slli	t3,a1,0x10
    8000b708:	01c76e33          	or	t3,a4,t3
    8000b70c:	01859313          	slli	t1,a1,0x18
    8000b710:	006e6333          	or	t1,t3,t1
    8000b714:	02059893          	slli	a7,a1,0x20
    8000b718:	40f60e3b          	subw	t3,a2,a5
    8000b71c:	011368b3          	or	a7,t1,a7
    8000b720:	02859813          	slli	a6,a1,0x28
    8000b724:	0108e833          	or	a6,a7,a6
    8000b728:	03059693          	slli	a3,a1,0x30
    8000b72c:	003e589b          	srliw	a7,t3,0x3
    8000b730:	00d866b3          	or	a3,a6,a3
    8000b734:	03859713          	slli	a4,a1,0x38
    8000b738:	00389813          	slli	a6,a7,0x3
    8000b73c:	00f507b3          	add	a5,a0,a5
    8000b740:	00e6e733          	or	a4,a3,a4
    8000b744:	000e089b          	sext.w	a7,t3
    8000b748:	00f806b3          	add	a3,a6,a5
    8000b74c:	00e7b023          	sd	a4,0(a5)
    8000b750:	00878793          	addi	a5,a5,8
    8000b754:	fed79ce3          	bne	a5,a3,8000b74c <__memset+0xd4>
    8000b758:	ff8e7793          	andi	a5,t3,-8
    8000b75c:	0007871b          	sext.w	a4,a5
    8000b760:	01d787bb          	addw	a5,a5,t4
    8000b764:	0ce88e63          	beq	a7,a4,8000b840 <__memset+0x1c8>
    8000b768:	00f50733          	add	a4,a0,a5
    8000b76c:	00b70023          	sb	a1,0(a4)
    8000b770:	0017871b          	addiw	a4,a5,1
    8000b774:	0cc77663          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b778:	00e50733          	add	a4,a0,a4
    8000b77c:	00b70023          	sb	a1,0(a4)
    8000b780:	0027871b          	addiw	a4,a5,2
    8000b784:	0ac77e63          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b788:	00e50733          	add	a4,a0,a4
    8000b78c:	00b70023          	sb	a1,0(a4)
    8000b790:	0037871b          	addiw	a4,a5,3
    8000b794:	0ac77663          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b798:	00e50733          	add	a4,a0,a4
    8000b79c:	00b70023          	sb	a1,0(a4)
    8000b7a0:	0047871b          	addiw	a4,a5,4
    8000b7a4:	08c77e63          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b7a8:	00e50733          	add	a4,a0,a4
    8000b7ac:	00b70023          	sb	a1,0(a4)
    8000b7b0:	0057871b          	addiw	a4,a5,5
    8000b7b4:	08c77663          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b7b8:	00e50733          	add	a4,a0,a4
    8000b7bc:	00b70023          	sb	a1,0(a4)
    8000b7c0:	0067871b          	addiw	a4,a5,6
    8000b7c4:	06c77e63          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b7c8:	00e50733          	add	a4,a0,a4
    8000b7cc:	00b70023          	sb	a1,0(a4)
    8000b7d0:	0077871b          	addiw	a4,a5,7
    8000b7d4:	06c77663          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b7d8:	00e50733          	add	a4,a0,a4
    8000b7dc:	00b70023          	sb	a1,0(a4)
    8000b7e0:	0087871b          	addiw	a4,a5,8
    8000b7e4:	04c77e63          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b7e8:	00e50733          	add	a4,a0,a4
    8000b7ec:	00b70023          	sb	a1,0(a4)
    8000b7f0:	0097871b          	addiw	a4,a5,9
    8000b7f4:	04c77663          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b7f8:	00e50733          	add	a4,a0,a4
    8000b7fc:	00b70023          	sb	a1,0(a4)
    8000b800:	00a7871b          	addiw	a4,a5,10
    8000b804:	02c77e63          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b808:	00e50733          	add	a4,a0,a4
    8000b80c:	00b70023          	sb	a1,0(a4)
    8000b810:	00b7871b          	addiw	a4,a5,11
    8000b814:	02c77663          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b818:	00e50733          	add	a4,a0,a4
    8000b81c:	00b70023          	sb	a1,0(a4)
    8000b820:	00c7871b          	addiw	a4,a5,12
    8000b824:	00c77e63          	bgeu	a4,a2,8000b840 <__memset+0x1c8>
    8000b828:	00e50733          	add	a4,a0,a4
    8000b82c:	00b70023          	sb	a1,0(a4)
    8000b830:	00d7879b          	addiw	a5,a5,13
    8000b834:	00c7f663          	bgeu	a5,a2,8000b840 <__memset+0x1c8>
    8000b838:	00f507b3          	add	a5,a0,a5
    8000b83c:	00b78023          	sb	a1,0(a5)
    8000b840:	00813403          	ld	s0,8(sp)
    8000b844:	01010113          	addi	sp,sp,16
    8000b848:	00008067          	ret
    8000b84c:	00b00693          	li	a3,11
    8000b850:	e55ff06f          	j	8000b6a4 <__memset+0x2c>
    8000b854:	00300e93          	li	t4,3
    8000b858:	ea5ff06f          	j	8000b6fc <__memset+0x84>
    8000b85c:	00100e93          	li	t4,1
    8000b860:	e9dff06f          	j	8000b6fc <__memset+0x84>
    8000b864:	00000e93          	li	t4,0
    8000b868:	e95ff06f          	j	8000b6fc <__memset+0x84>
    8000b86c:	00000793          	li	a5,0
    8000b870:	ef9ff06f          	j	8000b768 <__memset+0xf0>
    8000b874:	00200e93          	li	t4,2
    8000b878:	e85ff06f          	j	8000b6fc <__memset+0x84>
    8000b87c:	00400e93          	li	t4,4
    8000b880:	e7dff06f          	j	8000b6fc <__memset+0x84>
    8000b884:	00500e93          	li	t4,5
    8000b888:	e75ff06f          	j	8000b6fc <__memset+0x84>
    8000b88c:	00600e93          	li	t4,6
    8000b890:	e6dff06f          	j	8000b6fc <__memset+0x84>

000000008000b894 <__memmove>:
    8000b894:	ff010113          	addi	sp,sp,-16
    8000b898:	00813423          	sd	s0,8(sp)
    8000b89c:	01010413          	addi	s0,sp,16
    8000b8a0:	0e060863          	beqz	a2,8000b990 <__memmove+0xfc>
    8000b8a4:	fff6069b          	addiw	a3,a2,-1
    8000b8a8:	0006881b          	sext.w	a6,a3
    8000b8ac:	0ea5e863          	bltu	a1,a0,8000b99c <__memmove+0x108>
    8000b8b0:	00758713          	addi	a4,a1,7
    8000b8b4:	00a5e7b3          	or	a5,a1,a0
    8000b8b8:	40a70733          	sub	a4,a4,a0
    8000b8bc:	0077f793          	andi	a5,a5,7
    8000b8c0:	00f73713          	sltiu	a4,a4,15
    8000b8c4:	00174713          	xori	a4,a4,1
    8000b8c8:	0017b793          	seqz	a5,a5
    8000b8cc:	00e7f7b3          	and	a5,a5,a4
    8000b8d0:	10078863          	beqz	a5,8000b9e0 <__memmove+0x14c>
    8000b8d4:	00900793          	li	a5,9
    8000b8d8:	1107f463          	bgeu	a5,a6,8000b9e0 <__memmove+0x14c>
    8000b8dc:	0036581b          	srliw	a6,a2,0x3
    8000b8e0:	fff8081b          	addiw	a6,a6,-1
    8000b8e4:	02081813          	slli	a6,a6,0x20
    8000b8e8:	01d85893          	srli	a7,a6,0x1d
    8000b8ec:	00858813          	addi	a6,a1,8
    8000b8f0:	00058793          	mv	a5,a1
    8000b8f4:	00050713          	mv	a4,a0
    8000b8f8:	01088833          	add	a6,a7,a6
    8000b8fc:	0007b883          	ld	a7,0(a5)
    8000b900:	00878793          	addi	a5,a5,8
    8000b904:	00870713          	addi	a4,a4,8
    8000b908:	ff173c23          	sd	a7,-8(a4)
    8000b90c:	ff0798e3          	bne	a5,a6,8000b8fc <__memmove+0x68>
    8000b910:	ff867713          	andi	a4,a2,-8
    8000b914:	02071793          	slli	a5,a4,0x20
    8000b918:	0207d793          	srli	a5,a5,0x20
    8000b91c:	00f585b3          	add	a1,a1,a5
    8000b920:	40e686bb          	subw	a3,a3,a4
    8000b924:	00f507b3          	add	a5,a0,a5
    8000b928:	06e60463          	beq	a2,a4,8000b990 <__memmove+0xfc>
    8000b92c:	0005c703          	lbu	a4,0(a1)
    8000b930:	00e78023          	sb	a4,0(a5)
    8000b934:	04068e63          	beqz	a3,8000b990 <__memmove+0xfc>
    8000b938:	0015c603          	lbu	a2,1(a1)
    8000b93c:	00100713          	li	a4,1
    8000b940:	00c780a3          	sb	a2,1(a5)
    8000b944:	04e68663          	beq	a3,a4,8000b990 <__memmove+0xfc>
    8000b948:	0025c603          	lbu	a2,2(a1)
    8000b94c:	00200713          	li	a4,2
    8000b950:	00c78123          	sb	a2,2(a5)
    8000b954:	02e68e63          	beq	a3,a4,8000b990 <__memmove+0xfc>
    8000b958:	0035c603          	lbu	a2,3(a1)
    8000b95c:	00300713          	li	a4,3
    8000b960:	00c781a3          	sb	a2,3(a5)
    8000b964:	02e68663          	beq	a3,a4,8000b990 <__memmove+0xfc>
    8000b968:	0045c603          	lbu	a2,4(a1)
    8000b96c:	00400713          	li	a4,4
    8000b970:	00c78223          	sb	a2,4(a5)
    8000b974:	00e68e63          	beq	a3,a4,8000b990 <__memmove+0xfc>
    8000b978:	0055c603          	lbu	a2,5(a1)
    8000b97c:	00500713          	li	a4,5
    8000b980:	00c782a3          	sb	a2,5(a5)
    8000b984:	00e68663          	beq	a3,a4,8000b990 <__memmove+0xfc>
    8000b988:	0065c703          	lbu	a4,6(a1)
    8000b98c:	00e78323          	sb	a4,6(a5)
    8000b990:	00813403          	ld	s0,8(sp)
    8000b994:	01010113          	addi	sp,sp,16
    8000b998:	00008067          	ret
    8000b99c:	02061713          	slli	a4,a2,0x20
    8000b9a0:	02075713          	srli	a4,a4,0x20
    8000b9a4:	00e587b3          	add	a5,a1,a4
    8000b9a8:	f0f574e3          	bgeu	a0,a5,8000b8b0 <__memmove+0x1c>
    8000b9ac:	02069613          	slli	a2,a3,0x20
    8000b9b0:	02065613          	srli	a2,a2,0x20
    8000b9b4:	fff64613          	not	a2,a2
    8000b9b8:	00e50733          	add	a4,a0,a4
    8000b9bc:	00c78633          	add	a2,a5,a2
    8000b9c0:	fff7c683          	lbu	a3,-1(a5)
    8000b9c4:	fff78793          	addi	a5,a5,-1
    8000b9c8:	fff70713          	addi	a4,a4,-1
    8000b9cc:	00d70023          	sb	a3,0(a4)
    8000b9d0:	fec798e3          	bne	a5,a2,8000b9c0 <__memmove+0x12c>
    8000b9d4:	00813403          	ld	s0,8(sp)
    8000b9d8:	01010113          	addi	sp,sp,16
    8000b9dc:	00008067          	ret
    8000b9e0:	02069713          	slli	a4,a3,0x20
    8000b9e4:	02075713          	srli	a4,a4,0x20
    8000b9e8:	00170713          	addi	a4,a4,1
    8000b9ec:	00e50733          	add	a4,a0,a4
    8000b9f0:	00050793          	mv	a5,a0
    8000b9f4:	0005c683          	lbu	a3,0(a1)
    8000b9f8:	00178793          	addi	a5,a5,1
    8000b9fc:	00158593          	addi	a1,a1,1
    8000ba00:	fed78fa3          	sb	a3,-1(a5)
    8000ba04:	fee798e3          	bne	a5,a4,8000b9f4 <__memmove+0x160>
    8000ba08:	f89ff06f          	j	8000b990 <__memmove+0xfc>
	...

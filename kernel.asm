
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00010117          	auipc	sp,0x10
    80000004:	8b813103          	ld	sp,-1864(sp) # 8000f8b8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	20c090ef          	jal	ra,80009228 <start>

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
    800011a4:	050030ef          	jal	ra,800041f4 <_ZN5Riscv20handleSupervisorTrapEv>

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
#include "../h/SlabI.h"

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
    80001288:	be0080e7          	jalr	-1056(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    800012dc:	b8c080e7          	jalr	-1140(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    void* stack = kmalloc(DEFAULT_STACK_SIZE);
    80001324:	00001537          	lui	a0,0x1
    80001328:	00004097          	auipc	ra,0x4
    8000132c:	eac080e7          	jalr	-340(ra) # 800051d4 <_Z7kmallocm>
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
    80001368:	b00080e7          	jalr	-1280(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    800013dc:	a8c080e7          	jalr	-1396(ra) # 80004e64 <_ZN3abi8sys_callEPv>

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
    8000142c:	a3c080e7          	jalr	-1476(ra) # 80004e64 <_ZN3abi8sys_callEPv>

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
    8000148c:	9dc080e7          	jalr	-1572(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    800014e0:	988080e7          	jalr	-1656(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    80001534:	934080e7          	jalr	-1740(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    80001588:	8e0080e7          	jalr	-1824(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    800015dc:	88c080e7          	jalr	-1908(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    80001630:	838080e7          	jalr	-1992(ra) # 80004e64 <_ZN3abi8sys_callEPv>

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
    80001680:	00003097          	auipc	ra,0x3
    80001684:	7e4080e7          	jalr	2020(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    800016d0:	00003097          	auipc	ra,0x3
    800016d4:	794080e7          	jalr	1940(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    80001720:	00003097          	auipc	ra,0x3
    80001724:	744080e7          	jalr	1860(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    80001770:	00003097          	auipc	ra,0x3
    80001774:	6f4080e7          	jalr	1780(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    800017c0:	00003097          	auipc	ra,0x3
    800017c4:	6a4080e7          	jalr	1700(ra) # 80004e64 <_ZN3abi8sys_callEPv>
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
    80001810:	00003097          	auipc	ra,0x3
    80001814:	654080e7          	jalr	1620(ra) # 80004e64 <_ZN3abi8sys_callEPv>
    return;
}
    80001818:	04813083          	ld	ra,72(sp)
    8000181c:	04013403          	ld	s0,64(sp)
    80001820:	05010113          	addi	sp,sp,80
    80001824:	00008067          	ret

0000000080001828 <_ZN8MyBuffer12buffer_setupEPv>:
    if(buffer_cache)return buffer_cache;
    buffer_cache = kmem_cache_create("buffer_cache", sizeof(MyBuffer), &buffer_setup, &buffer_destroy);
    return buffer_cache;
}

void MyBuffer::buffer_setup(void *myBuffer) {
    80001828:	fe010113          	addi	sp,sp,-32
    8000182c:	00113c23          	sd	ra,24(sp)
    80001830:	00813823          	sd	s0,16(sp)
    80001834:	00913423          	sd	s1,8(sp)
    80001838:	02010413          	addi	s0,sp,32
    8000183c:	00050493          	mv	s1,a0
    MyBuffer* buffer = (MyBuffer*)myBuffer;
    buffer->cap = DEFAULT_BUFFER_SIZE + 1;
    80001840:	40000793          	li	a5,1024
    80001844:	00f52023          	sw	a5,0(a0) # 1000 <_entry-0x7ffff000>
    buffer->head = 0;
    80001848:	00052823          	sw	zero,16(a0)
    buffer->tail = 0;
    8000184c:	00052a23          	sw	zero,20(a0)
    buffer->buffer = nullptr;
    80001850:	00053423          	sd	zero,8(a0)
    MySemaphore::sem_open(&buffer->itemAvailable, 0);
    80001854:	00000593          	li	a1,0
    80001858:	02050513          	addi	a0,a0,32
    8000185c:	00001097          	auipc	ra,0x1
    80001860:	b04080e7          	jalr	-1276(ra) # 80002360 <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&buffer->spaceAvailable, buffer->cap);
    80001864:	0004a583          	lw	a1,0(s1)
    80001868:	01848513          	addi	a0,s1,24
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	af4080e7          	jalr	-1292(ra) # 80002360 <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&buffer->mutexHead, 1);
    80001874:	00100593          	li	a1,1
    80001878:	02848513          	addi	a0,s1,40
    8000187c:	00001097          	auipc	ra,0x1
    80001880:	ae4080e7          	jalr	-1308(ra) # 80002360 <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&buffer->mutexTail, 1);
    80001884:	00100593          	li	a1,1
    80001888:	03048513          	addi	a0,s1,48
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	ad4080e7          	jalr	-1324(ra) # 80002360 <_ZN11MySemaphore8sem_openEPPS_m>
}
    80001894:	01813083          	ld	ra,24(sp)
    80001898:	01013403          	ld	s0,16(sp)
    8000189c:	00813483          	ld	s1,8(sp)
    800018a0:	02010113          	addi	sp,sp,32
    800018a4:	00008067          	ret

00000000800018a8 <_ZN8MyBuffer14buffer_destroyEPv>:

void MyBuffer::buffer_destroy(void *myBuffer) {
    800018a8:	fe010113          	addi	sp,sp,-32
    800018ac:	00113c23          	sd	ra,24(sp)
    800018b0:	00813823          	sd	s0,16(sp)
    800018b4:	00913423          	sd	s1,8(sp)
    800018b8:	02010413          	addi	s0,sp,32
    800018bc:	00050493          	mv	s1,a0
    MyBuffer* buffer = (MyBuffer*)myBuffer;
    kfree(buffer->buffer);
    800018c0:	00853503          	ld	a0,8(a0)
    800018c4:	00004097          	auipc	ra,0x4
    800018c8:	94c080e7          	jalr	-1716(ra) # 80005210 <_Z5kfreePKv>
    MySemaphore::sem_close(buffer->itemAvailable);
    800018cc:	0204b503          	ld	a0,32(s1)
    800018d0:	00001097          	auipc	ra,0x1
    800018d4:	808080e7          	jalr	-2040(ra) # 800020d8 <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(buffer->spaceAvailable);
    800018d8:	0184b503          	ld	a0,24(s1)
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	7fc080e7          	jalr	2044(ra) # 800020d8 <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(buffer->mutexTail);
    800018e4:	0304b503          	ld	a0,48(s1)
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	7f0080e7          	jalr	2032(ra) # 800020d8 <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(buffer->mutexHead);
    800018f0:	0284b503          	ld	a0,40(s1)
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	7e4080e7          	jalr	2020(ra) # 800020d8 <_ZN11MySemaphore9sem_closeEPS_>
//    kmem_cache_free(get_buffer_cache(), myBuffer);
}
    800018fc:	01813083          	ld	ra,24(sp)
    80001900:	01013403          	ld	s0,16(sp)
    80001904:	00813483          	ld	s1,8(sp)
    80001908:	02010113          	addi	sp,sp,32
    8000190c:	00008067          	ret

0000000080001910 <_ZN8MyBuffer3putEi>:
void MyBuffer::put(int val) {
    80001910:	fe010113          	addi	sp,sp,-32
    80001914:	00113c23          	sd	ra,24(sp)
    80001918:	00813823          	sd	s0,16(sp)
    8000191c:	00913423          	sd	s1,8(sp)
    80001920:	01213023          	sd	s2,0(sp)
    80001924:	02010413          	addi	s0,sp,32
    80001928:	00050493          	mv	s1,a0
    8000192c:	00058913          	mv	s2,a1
    MySemaphore::sem_wait(spaceAvailable);
    80001930:	01853503          	ld	a0,24(a0)
    80001934:	00001097          	auipc	ra,0x1
    80001938:	8b4080e7          	jalr	-1868(ra) # 800021e8 <_ZN11MySemaphore8sem_waitEPS_>
    MySemaphore::sem_wait(mutexTail);
    8000193c:	0304b503          	ld	a0,48(s1)
    80001940:	00001097          	auipc	ra,0x1
    80001944:	8a8080e7          	jalr	-1880(ra) # 800021e8 <_ZN11MySemaphore8sem_waitEPS_>
    if(buffer == nullptr)buffer = (int*)kmalloc(sizeof(int) * cap);
    80001948:	0084b783          	ld	a5,8(s1)
    8000194c:	04078e63          	beqz	a5,800019a8 <_ZN8MyBuffer3putEi+0x98>
    buffer[tail] = val;
    80001950:	0084b783          	ld	a5,8(s1)
    80001954:	0144a703          	lw	a4,20(s1)
    80001958:	00271713          	slli	a4,a4,0x2
    8000195c:	00e787b3          	add	a5,a5,a4
    80001960:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80001964:	0144a783          	lw	a5,20(s1)
    80001968:	0017879b          	addiw	a5,a5,1
    8000196c:	0004a703          	lw	a4,0(s1)
    80001970:	02e7e7bb          	remw	a5,a5,a4
    80001974:	00f4aa23          	sw	a5,20(s1)
    MySemaphore::sem_signal(mutexTail);
    80001978:	0304b503          	ld	a0,48(s1)
    8000197c:	00001097          	auipc	ra,0x1
    80001980:	918080e7          	jalr	-1768(ra) # 80002294 <_ZN11MySemaphore10sem_signalEPS_>
    MySemaphore::sem_signal(itemAvailable);
    80001984:	0204b503          	ld	a0,32(s1)
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	90c080e7          	jalr	-1780(ra) # 80002294 <_ZN11MySemaphore10sem_signalEPS_>
}
    80001990:	01813083          	ld	ra,24(sp)
    80001994:	01013403          	ld	s0,16(sp)
    80001998:	00813483          	ld	s1,8(sp)
    8000199c:	00013903          	ld	s2,0(sp)
    800019a0:	02010113          	addi	sp,sp,32
    800019a4:	00008067          	ret
    if(buffer == nullptr)buffer = (int*)kmalloc(sizeof(int) * cap);
    800019a8:	0004a503          	lw	a0,0(s1)
    800019ac:	00251513          	slli	a0,a0,0x2
    800019b0:	00004097          	auipc	ra,0x4
    800019b4:	824080e7          	jalr	-2012(ra) # 800051d4 <_Z7kmallocm>
    800019b8:	00a4b423          	sd	a0,8(s1)
    800019bc:	f95ff06f          	j	80001950 <_ZN8MyBuffer3putEi+0x40>

00000000800019c0 <_ZN8MyBuffer3getEv>:
int MyBuffer::get() {
    800019c0:	fe010113          	addi	sp,sp,-32
    800019c4:	00113c23          	sd	ra,24(sp)
    800019c8:	00813823          	sd	s0,16(sp)
    800019cc:	00913423          	sd	s1,8(sp)
    800019d0:	01213023          	sd	s2,0(sp)
    800019d4:	02010413          	addi	s0,sp,32
    800019d8:	00050493          	mv	s1,a0
    MySemaphore::sem_wait(itemAvailable);
    800019dc:	02053503          	ld	a0,32(a0)
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	808080e7          	jalr	-2040(ra) # 800021e8 <_ZN11MySemaphore8sem_waitEPS_>
    MySemaphore::sem_wait(mutexHead);
    800019e8:	0284b503          	ld	a0,40(s1)
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	7fc080e7          	jalr	2044(ra) # 800021e8 <_ZN11MySemaphore8sem_waitEPS_>
    if(buffer == nullptr)buffer = (int*)kmalloc(sizeof(int) * cap);
    800019f4:	0084b783          	ld	a5,8(s1)
    800019f8:	04078e63          	beqz	a5,80001a54 <_ZN8MyBuffer3getEv+0x94>
    int ret = buffer[head];
    800019fc:	0084b703          	ld	a4,8(s1)
    80001a00:	0104a783          	lw	a5,16(s1)
    80001a04:	00279693          	slli	a3,a5,0x2
    80001a08:	00d70733          	add	a4,a4,a3
    80001a0c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80001a10:	0017879b          	addiw	a5,a5,1
    80001a14:	0004a703          	lw	a4,0(s1)
    80001a18:	02e7e7bb          	remw	a5,a5,a4
    80001a1c:	00f4a823          	sw	a5,16(s1)
    MySemaphore::sem_signal(mutexHead);
    80001a20:	0284b503          	ld	a0,40(s1)
    80001a24:	00001097          	auipc	ra,0x1
    80001a28:	870080e7          	jalr	-1936(ra) # 80002294 <_ZN11MySemaphore10sem_signalEPS_>
    MySemaphore::sem_signal(spaceAvailable);
    80001a2c:	0184b503          	ld	a0,24(s1)
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	864080e7          	jalr	-1948(ra) # 80002294 <_ZN11MySemaphore10sem_signalEPS_>
}
    80001a38:	00090513          	mv	a0,s2
    80001a3c:	01813083          	ld	ra,24(sp)
    80001a40:	01013403          	ld	s0,16(sp)
    80001a44:	00813483          	ld	s1,8(sp)
    80001a48:	00013903          	ld	s2,0(sp)
    80001a4c:	02010113          	addi	sp,sp,32
    80001a50:	00008067          	ret
    if(buffer == nullptr)buffer = (int*)kmalloc(sizeof(int) * cap);
    80001a54:	0004a503          	lw	a0,0(s1)
    80001a58:	00251513          	slli	a0,a0,0x2
    80001a5c:	00003097          	auipc	ra,0x3
    80001a60:	778080e7          	jalr	1912(ra) # 800051d4 <_Z7kmallocm>
    80001a64:	00a4b423          	sd	a0,8(s1)
    80001a68:	f95ff06f          	j	800019fc <_ZN8MyBuffer3getEv+0x3c>

0000000080001a6c <_ZN8MyBuffer6getCntEv>:
int MyBuffer::getCnt() {
    80001a6c:	fe010113          	addi	sp,sp,-32
    80001a70:	00113c23          	sd	ra,24(sp)
    80001a74:	00813823          	sd	s0,16(sp)
    80001a78:	00913423          	sd	s1,8(sp)
    80001a7c:	01213023          	sd	s2,0(sp)
    80001a80:	02010413          	addi	s0,sp,32
    80001a84:	00050493          	mv	s1,a0
    MySemaphore::sem_wait(mutexHead);
    80001a88:	02853503          	ld	a0,40(a0)
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	75c080e7          	jalr	1884(ra) # 800021e8 <_ZN11MySemaphore8sem_waitEPS_>
    MySemaphore::sem_wait(mutexTail);
    80001a94:	0304b503          	ld	a0,48(s1)
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	750080e7          	jalr	1872(ra) # 800021e8 <_ZN11MySemaphore8sem_waitEPS_>
    if (tail >= head) {
    80001aa0:	0144a783          	lw	a5,20(s1)
    80001aa4:	0104a903          	lw	s2,16(s1)
    80001aa8:	0327ce63          	blt	a5,s2,80001ae4 <_ZN8MyBuffer6getCntEv+0x78>
        ret = tail - head;
    80001aac:	4127893b          	subw	s2,a5,s2
    MySemaphore::sem_signal(mutexTail);
    80001ab0:	0304b503          	ld	a0,48(s1)
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	7e0080e7          	jalr	2016(ra) # 80002294 <_ZN11MySemaphore10sem_signalEPS_>
    MySemaphore::sem_signal(mutexHead);
    80001abc:	0284b503          	ld	a0,40(s1)
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	7d4080e7          	jalr	2004(ra) # 80002294 <_ZN11MySemaphore10sem_signalEPS_>
}
    80001ac8:	00090513          	mv	a0,s2
    80001acc:	01813083          	ld	ra,24(sp)
    80001ad0:	01013403          	ld	s0,16(sp)
    80001ad4:	00813483          	ld	s1,8(sp)
    80001ad8:	00013903          	ld	s2,0(sp)
    80001adc:	02010113          	addi	sp,sp,32
    80001ae0:	00008067          	ret
        ret = cap - head + tail;
    80001ae4:	0004a703          	lw	a4,0(s1)
    80001ae8:	4127093b          	subw	s2,a4,s2
    80001aec:	00f9093b          	addw	s2,s2,a5
    80001af0:	fc1ff06f          	j	80001ab0 <_ZN8MyBuffer6getCntEv+0x44>

0000000080001af4 <_ZN8MyBuffer16get_buffer_cacheEv>:
    if(buffer_cache)return buffer_cache;
    80001af4:	0000e797          	auipc	a5,0xe
    80001af8:	e2c7b783          	ld	a5,-468(a5) # 8000f920 <_ZN8MyBuffer12buffer_cacheE>
    80001afc:	00078863          	beqz	a5,80001b0c <_ZN8MyBuffer16get_buffer_cacheEv+0x18>
}
    80001b00:	0000e517          	auipc	a0,0xe
    80001b04:	e2050513          	addi	a0,a0,-480 # 8000f920 <_ZN8MyBuffer12buffer_cacheE>
    80001b08:	00008067          	ret
kmem_cache_t* &MyBuffer::get_buffer_cache() {
    80001b0c:	ff010113          	addi	sp,sp,-16
    80001b10:	00113423          	sd	ra,8(sp)
    80001b14:	00813023          	sd	s0,0(sp)
    80001b18:	01010413          	addi	s0,sp,16
    buffer_cache = kmem_cache_create("buffer_cache", sizeof(MyBuffer), &buffer_setup, &buffer_destroy);
    80001b1c:	00000697          	auipc	a3,0x0
    80001b20:	d8c68693          	addi	a3,a3,-628 # 800018a8 <_ZN8MyBuffer14buffer_destroyEPv>
    80001b24:	00000617          	auipc	a2,0x0
    80001b28:	d0460613          	addi	a2,a2,-764 # 80001828 <_ZN8MyBuffer12buffer_setupEPv>
    80001b2c:	03800593          	li	a1,56
    80001b30:	0000a517          	auipc	a0,0xa
    80001b34:	4f050513          	addi	a0,a0,1264 # 8000c020 <CONSOLE_STATUS+0x10>
    80001b38:	00003097          	auipc	ra,0x3
    80001b3c:	570080e7          	jalr	1392(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80001b40:	0000e797          	auipc	a5,0xe
    80001b44:	dea7b023          	sd	a0,-544(a5) # 8000f920 <_ZN8MyBuffer12buffer_cacheE>
}
    80001b48:	0000e517          	auipc	a0,0xe
    80001b4c:	dd850513          	addi	a0,a0,-552 # 8000f920 <_ZN8MyBuffer12buffer_cacheE>
    80001b50:	00813083          	ld	ra,8(sp)
    80001b54:	00013403          	ld	s0,0(sp)
    80001b58:	01010113          	addi	sp,sp,16
    80001b5c:	00008067          	ret

0000000080001b60 <_ZN11BuddySystemC1Ev>:
//
// Created by os on 8/12/23.

#include "../h/Buddy.h"

BuddySystem::BuddySystem(){
    80001b60:	ff010113          	addi	sp,sp,-16
    80001b64:	00813423          	sd	s0,8(sp)
    80001b68:	01010413          	addi	s0,sp,16

}
    80001b6c:	00813403          	ld	s0,8(sp)
    80001b70:	01010113          	addi	sp,sp,16
    80001b74:	00008067          	ret

0000000080001b78 <_ZN11BuddySystem13insertInArrayEmm>:
    }
    return position;
}

// vraca na kojem mestu je node ubacen u nizu arr[position]
int BuddySystem::insertInArray(size_t position, size_t addr) {
    80001b78:	ff010113          	addi	sp,sp,-16
    80001b7c:	00813423          	sd	s0,8(sp)
    80001b80:	01010413          	addi	s0,sp,16
    80001b84:	00050693          	mv	a3,a0
    MemNode* node = (MemNode*)addr;

    if(!arr[position]){
    80001b88:	00359793          	slli	a5,a1,0x3
    80001b8c:	00f507b3          	add	a5,a0,a5
    80001b90:	0007b783          	ld	a5,0(a5)
    80001b94:	02078263          	beqz	a5,80001bb8 <_ZN11BuddySystem13insertInArrayEmm+0x40>
        arr[position] = node;
        return 0;
    }

    int cnt = 0;
    MemNode* prev = nullptr, * curr = arr[position];
    80001b98:	00000713          	li	a4,0
    int cnt = 0;
    80001b9c:	00000513          	li	a0,0
    while(curr and (size_t)curr < (size_t)node){
    80001ba0:	02078663          	beqz	a5,80001bcc <_ZN11BuddySystem13insertInArrayEmm+0x54>
    80001ba4:	02c7f463          	bgeu	a5,a2,80001bcc <_ZN11BuddySystem13insertInArrayEmm+0x54>
        prev = curr;
        curr = curr->next;
        cnt++;
    80001ba8:	0015051b          	addiw	a0,a0,1
        prev = curr;
    80001bac:	00078713          	mv	a4,a5
        curr = curr->next;
    80001bb0:	0007b783          	ld	a5,0(a5)
    while(curr and (size_t)curr < (size_t)node){
    80001bb4:	fedff06f          	j	80001ba0 <_ZN11BuddySystem13insertInArrayEmm+0x28>
        arr[position] = node;
    80001bb8:	00359593          	slli	a1,a1,0x3
    80001bbc:	00b506b3          	add	a3,a0,a1
    80001bc0:	00c6b023          	sd	a2,0(a3)
        return 0;
    80001bc4:	00000513          	li	a0,0
    80001bc8:	0100006f          	j	80001bd8 <_ZN11BuddySystem13insertInArrayEmm+0x60>
    }
    node->next = curr;
    80001bcc:	00f63023          	sd	a5,0(a2)
    if(prev)prev->next = node;
    80001bd0:	00070a63          	beqz	a4,80001be4 <_ZN11BuddySystem13insertInArrayEmm+0x6c>
    80001bd4:	00c73023          	sd	a2,0(a4)
    else arr[position] = node;
    return cnt;
}
    80001bd8:	00813403          	ld	s0,8(sp)
    80001bdc:	01010113          	addi	sp,sp,16
    80001be0:	00008067          	ret
    else arr[position] = node;
    80001be4:	00359593          	slli	a1,a1,0x3
    80001be8:	00b686b3          	add	a3,a3,a1
    80001bec:	00c6b023          	sd	a2,0(a3)
    80001bf0:	fe9ff06f          	j	80001bd8 <_ZN11BuddySystem13insertInArrayEmm+0x60>

0000000080001bf4 <_ZN11BuddySystem13splitAndOrderEmm>:
size_t BuddySystem::splitAndOrder(size_t position, size_t required_size) {
    80001bf4:	fc010113          	addi	sp,sp,-64
    80001bf8:	02113c23          	sd	ra,56(sp)
    80001bfc:	02813823          	sd	s0,48(sp)
    80001c00:	02913423          	sd	s1,40(sp)
    80001c04:	03213023          	sd	s2,32(sp)
    80001c08:	01313c23          	sd	s3,24(sp)
    80001c0c:	01413823          	sd	s4,16(sp)
    80001c10:	01513423          	sd	s5,8(sp)
    80001c14:	04010413          	addi	s0,sp,64
    80001c18:	00050a13          	mv	s4,a0
    80001c1c:	00058493          	mv	s1,a1
    80001c20:	00060a93          	mv	s5,a2
    int insertInArray(size_t position, size_t addr);
    int tryToMerge(MemNode* left, MemNode* right, size_t position);

    size_t static pow(size_t deg){
        size_t tmp = 1;
        for(size_t i = 0; i < deg; i++){
    80001c24:	00000793          	li	a5,0
        size_t tmp = 1;
    80001c28:	00100913          	li	s2,1
        for(size_t i = 0; i < deg; i++){
    80001c2c:	0097f863          	bgeu	a5,s1,80001c3c <_ZN11BuddySystem13splitAndOrderEmm+0x48>
            tmp <<= 1;
    80001c30:	00191913          	slli	s2,s2,0x1
        for(size_t i = 0; i < deg; i++){
    80001c34:	00178793          	addi	a5,a5,1
    80001c38:	ff5ff06f          	j	80001c2c <_ZN11BuddySystem13splitAndOrderEmm+0x38>
    while((val >> 1) >= required_size && (val >> 1) >= BLOCK_SIZE){
    80001c3c:	00195913          	srli	s2,s2,0x1
    80001c40:	07596463          	bltu	s2,s5,80001ca8 <_ZN11BuddySystem13splitAndOrderEmm+0xb4>
    80001c44:	000017b7          	lui	a5,0x1
    80001c48:	06f96063          	bltu	s2,a5,80001ca8 <_ZN11BuddySystem13splitAndOrderEmm+0xb4>
        MemNode* tmp = arr[position];
    80001c4c:	00349793          	slli	a5,s1,0x3
    80001c50:	00fa07b3          	add	a5,s4,a5
    80001c54:	0007b603          	ld	a2,0(a5) # 1000 <_entry-0x7ffff000>
        arr[position] = arr[position]->next;
    80001c58:	00063703          	ld	a4,0(a2)
    80001c5c:	00e7b023          	sd	a4,0(a5)
        tmp->next = nullptr;
    80001c60:	00063023          	sd	zero,0(a2)
        tmp->size >>= 1;
    80001c64:	00863783          	ld	a5,8(a2)
    80001c68:	0017d793          	srli	a5,a5,0x1
    80001c6c:	00f63423          	sd	a5,8(a2)
        MemNode* newNode = (MemNode*)((size_t)tmp + tmp->size);
    80001c70:	00c789b3          	add	s3,a5,a2
        newNode->size = tmp->size;
    80001c74:	00f9b423          	sd	a5,8(s3)
        newNode->next = nullptr;
    80001c78:	0009b023          	sd	zero,0(s3)
        position--;
    80001c7c:	fff48493          	addi	s1,s1,-1
        insertInArray(position, (size_t)tmp);
    80001c80:	00048593          	mv	a1,s1
    80001c84:	000a0513          	mv	a0,s4
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	ef0080e7          	jalr	-272(ra) # 80001b78 <_ZN11BuddySystem13insertInArrayEmm>
        insertInArray(position, (size_t)newNode);
    80001c90:	00098613          	mv	a2,s3
    80001c94:	00048593          	mv	a1,s1
    80001c98:	000a0513          	mv	a0,s4
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	edc080e7          	jalr	-292(ra) # 80001b78 <_ZN11BuddySystem13insertInArrayEmm>
    while((val >> 1) >= required_size && (val >> 1) >= BLOCK_SIZE){
    80001ca4:	f99ff06f          	j	80001c3c <_ZN11BuddySystem13splitAndOrderEmm+0x48>
}
    80001ca8:	00048513          	mv	a0,s1
    80001cac:	03813083          	ld	ra,56(sp)
    80001cb0:	03013403          	ld	s0,48(sp)
    80001cb4:	02813483          	ld	s1,40(sp)
    80001cb8:	02013903          	ld	s2,32(sp)
    80001cbc:	01813983          	ld	s3,24(sp)
    80001cc0:	01013a03          	ld	s4,16(sp)
    80001cc4:	00813a83          	ld	s5,8(sp)
    80001cc8:	04010113          	addi	sp,sp,64
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZN11BuddySystem10buddyAllocEm>:
void* BuddySystem::buddyAlloc(size_t size) {
    80001cd0:	fe010113          	addi	sp,sp,-32
    80001cd4:	00113c23          	sd	ra,24(sp)
    80001cd8:	00813823          	sd	s0,16(sp)
    80001cdc:	00913423          	sd	s1,8(sp)
    80001ce0:	02010413          	addi	s0,sp,32
    80001ce4:	00050493          	mv	s1,a0
    80001ce8:	00058713          	mv	a4,a1
    for(size_t i = 0; i < 40; i++){
    80001cec:	00000593          	li	a1,0
    80001cf0:	0080006f          	j	80001cf8 <_ZN11BuddySystem10buddyAllocEm+0x28>
    80001cf4:	00158593          	addi	a1,a1,1
    80001cf8:	02700793          	li	a5,39
    80001cfc:	06b7e063          	bltu	a5,a1,80001d5c <_ZN11BuddySystem10buddyAllocEm+0x8c>
        if(arr[i] && arr[i]->size >= size + sizeof(size_t)){
    80001d00:	00359793          	slli	a5,a1,0x3
    80001d04:	00f487b3          	add	a5,s1,a5
    80001d08:	0007b783          	ld	a5,0(a5)
    80001d0c:	fe0784e3          	beqz	a5,80001cf4 <_ZN11BuddySystem10buddyAllocEm+0x24>
    80001d10:	0087b783          	ld	a5,8(a5)
    80001d14:	00870613          	addi	a2,a4,8
    80001d18:	fcc7eee3          	bltu	a5,a2,80001cf4 <_ZN11BuddySystem10buddyAllocEm+0x24>
            position = splitAndOrder(i, size + sizeof(size_t));
    80001d1c:	00048513          	mv	a0,s1
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	ed4080e7          	jalr	-300(ra) # 80001bf4 <_ZN11BuddySystem13splitAndOrderEmm>
    if(position == 50)return nullptr;
    80001d28:	03200793          	li	a5,50
    80001d2c:	04f50a63          	beq	a0,a5,80001d80 <_ZN11BuddySystem10buddyAllocEm+0xb0>
    MemNode* node = arr[position];
    80001d30:	00351793          	slli	a5,a0,0x3
    80001d34:	00f484b3          	add	s1,s1,a5
    80001d38:	0004b683          	ld	a3,0(s1)
    arr[position] = arr[position]->next;
    80001d3c:	0006b783          	ld	a5,0(a3)
    80001d40:	00f4b023          	sd	a5,0(s1)
    80001d44:	00000793          	li	a5,0
        size_t tmp = 1;
    80001d48:	00100713          	li	a4,1
        for(size_t i = 0; i < deg; i++){
    80001d4c:	00a7fc63          	bgeu	a5,a0,80001d64 <_ZN11BuddySystem10buddyAllocEm+0x94>
            tmp <<= 1;
    80001d50:	00171713          	slli	a4,a4,0x1
        for(size_t i = 0; i < deg; i++){
    80001d54:	00178793          	addi	a5,a5,1
    80001d58:	ff5ff06f          	j	80001d4c <_ZN11BuddySystem10buddyAllocEm+0x7c>
    size_t position = 50;
    80001d5c:	03200513          	li	a0,50
    80001d60:	fc9ff06f          	j	80001d28 <_ZN11BuddySystem10buddyAllocEm+0x58>
    *((size_t*)node) = pow(position);
    80001d64:	00e6b023          	sd	a4,0(a3)
    return (void*)((size_t)node + sizeof(size_t));
    80001d68:	00868513          	addi	a0,a3,8
}
    80001d6c:	01813083          	ld	ra,24(sp)
    80001d70:	01013403          	ld	s0,16(sp)
    80001d74:	00813483          	ld	s1,8(sp)
    80001d78:	02010113          	addi	sp,sp,32
    80001d7c:	00008067          	ret
    if(position == 50)return nullptr;
    80001d80:	00000513          	li	a0,0
    80001d84:	fe9ff06f          	j	80001d6c <_ZN11BuddySystem10buddyAllocEm+0x9c>

0000000080001d88 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>:

// vraca -1 ukoliko nije spojeno, ukoliko jeste vraca poziciju na kojoj je element ubacen
int BuddySystem::tryToMerge(BuddySystem::MemNode *left, BuddySystem::MemNode *right, size_t position) {
    if(left && right && ((size_t)left + left->size == (size_t)right) && (((size_t)left - buddyHeapStart) % pow(position) == 0)){
    80001d88:	0a058c63          	beqz	a1,80001e40 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xb8>
    80001d8c:	0a060e63          	beqz	a2,80001e48 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xc0>
    80001d90:	0085b883          	ld	a7,8(a1)
    80001d94:	00b887b3          	add	a5,a7,a1
    80001d98:	0ac79c63          	bne	a5,a2,80001e50 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xc8>
    80001d9c:	14053703          	ld	a4,320(a0)
    80001da0:	40e58833          	sub	a6,a1,a4
    80001da4:	00000793          	li	a5,0
        size_t tmp = 1;
    80001da8:	00100713          	li	a4,1
        for(size_t i = 0; i < deg; i++){
    80001dac:	00d7f863          	bgeu	a5,a3,80001dbc <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x34>
            tmp <<= 1;
    80001db0:	00171713          	slli	a4,a4,0x1
        for(size_t i = 0; i < deg; i++){
    80001db4:	00178793          	addi	a5,a5,1
    80001db8:	ff5ff06f          	j	80001dac <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x24>
    80001dbc:	02e87733          	remu	a4,a6,a4
    80001dc0:	08071c63          	bnez	a4,80001e58 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xd0>
int BuddySystem::tryToMerge(BuddySystem::MemNode *left, BuddySystem::MemNode *right, size_t position) {
    80001dc4:	ff010113          	addi	sp,sp,-16
    80001dc8:	00113423          	sd	ra,8(sp)
    80001dcc:	00813023          	sd	s0,0(sp)
    80001dd0:	01010413          	addi	s0,sp,16
        left->size <<= 1;
    80001dd4:	00189893          	slli	a7,a7,0x1
    80001dd8:	0115b423          	sd	a7,8(a1)
        MemNode* prev = nullptr;
        for(MemNode* curr = arr[position]; curr != left; curr = curr->next){
    80001ddc:	00369793          	slli	a5,a3,0x3
    80001de0:	00f507b3          	add	a5,a0,a5
    80001de4:	0007b783          	ld	a5,0(a5)
    80001de8:	00b78863          	beq	a5,a1,80001df8 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x70>
            prev = curr;
    80001dec:	00078713          	mv	a4,a5
        for(MemNode* curr = arr[position]; curr != left; curr = curr->next){
    80001df0:	0007b783          	ld	a5,0(a5)
    80001df4:	ff5ff06f          	j	80001de8 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x60>
        }
        if(prev){
    80001df8:	02070a63          	beqz	a4,80001e2c <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xa4>
            prev->next = right->next;
    80001dfc:	00063783          	ld	a5,0(a2)
    80001e00:	00f73023          	sd	a5,0(a4)
        }else{
            arr[position] = right->next;
        }
        right->next = nullptr;
    80001e04:	00063023          	sd	zero,0(a2)
        left->next = nullptr;
    80001e08:	0005b023          	sd	zero,0(a1)
//        *(size_t*)(left - sizeof(size_t)) = left->size;
        size_t insertPosition = insertInArray(position + 1, (size_t)left);
    80001e0c:	00058613          	mv	a2,a1
    80001e10:	00168593          	addi	a1,a3,1
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	d64080e7          	jalr	-668(ra) # 80001b78 <_ZN11BuddySystem13insertInArrayEmm>
        // nema svrhu, samo testiranje da ne bi bilo optimizacije
        left = arr[position];
        return (int)insertPosition;
    }
    return -1;
}
    80001e1c:	00813083          	ld	ra,8(sp)
    80001e20:	00013403          	ld	s0,0(sp)
    80001e24:	01010113          	addi	sp,sp,16
    80001e28:	00008067          	ret
            arr[position] = right->next;
    80001e2c:	00063703          	ld	a4,0(a2)
    80001e30:	00369793          	slli	a5,a3,0x3
    80001e34:	00f507b3          	add	a5,a0,a5
    80001e38:	00e7b023          	sd	a4,0(a5)
    80001e3c:	fc9ff06f          	j	80001e04 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x7c>
    return -1;
    80001e40:	fff00513          	li	a0,-1
    80001e44:	00008067          	ret
    80001e48:	fff00513          	li	a0,-1
    80001e4c:	00008067          	ret
    80001e50:	fff00513          	li	a0,-1
    80001e54:	00008067          	ret
    80001e58:	fff00513          	li	a0,-1
}
    80001e5c:	00008067          	ret

0000000080001e60 <_ZN11BuddySystem9buddyFreeEm>:
    size_t size = *(size_t*)(addr - sizeof(size_t));
    80001e60:	ff85b683          	ld	a3,-8(a1)
    if((void*)addr == nullptr || size == 0)return;
    80001e64:	12058863          	beqz	a1,80001f94 <_ZN11BuddySystem9buddyFreeEm+0x134>
void BuddySystem::buddyFree(size_t addr) {
    80001e68:	fd010113          	addi	sp,sp,-48
    80001e6c:	02113423          	sd	ra,40(sp)
    80001e70:	02813023          	sd	s0,32(sp)
    80001e74:	00913c23          	sd	s1,24(sp)
    80001e78:	01213823          	sd	s2,16(sp)
    80001e7c:	01313423          	sd	s3,8(sp)
    80001e80:	01413023          	sd	s4,0(sp)
    80001e84:	03010413          	addi	s0,sp,48
    80001e88:	00050a13          	mv	s4,a0
    80001e8c:	ff858613          	addi	a2,a1,-8
    if((void*)addr == nullptr || size == 0)return;
    80001e90:	0e068263          	beqz	a3,80001f74 <_ZN11BuddySystem9buddyFreeEm+0x114>
    80001e94:	00068793          	mv	a5,a3
        }
        return tmp;
    }

    size_t static log(size_t size){
        size_t deg = 0;
    80001e98:	00000993          	li	s3,0
        while(size > 1){
    80001e9c:	00100713          	li	a4,1
    80001ea0:	00f77863          	bgeu	a4,a5,80001eb0 <_ZN11BuddySystem9buddyFreeEm+0x50>
            size >>= 1;
    80001ea4:	0017d793          	srli	a5,a5,0x1
            deg++;
    80001ea8:	00198993          	addi	s3,s3,1
        while(size > 1){
    80001eac:	ff1ff06f          	j	80001e9c <_ZN11BuddySystem9buddyFreeEm+0x3c>
    newNode->next = nullptr;
    80001eb0:	fe05bc23          	sd	zero,-8(a1)
    newNode->size = size;
    80001eb4:	00d63423          	sd	a3,8(a2)
    int merged = (int)insertInArray(position, (size_t)newNode);
    80001eb8:	00098593          	mv	a1,s3
    80001ebc:	000a0513          	mv	a0,s4
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	cb8080e7          	jalr	-840(ra) # 80001b78 <_ZN11BuddySystem13insertInArrayEmm>
    80001ec8:	07c0006f          	j	80001f44 <_ZN11BuddySystem9buddyFreeEm+0xe4>
        for(int i = 0; i < merged; i++){
    80001ecc:	0017071b          	addiw	a4,a4,1
            prev = curr;
    80001ed0:	00048593          	mv	a1,s1
            curr = curr->next;
    80001ed4:	00078493          	mv	s1,a5
        for(int i = 0; i < merged; i++){
    80001ed8:	00a75a63          	bge	a4,a0,80001eec <_ZN11BuddySystem9buddyFreeEm+0x8c>
            curr = curr->next;
    80001edc:	0004b783          	ld	a5,0(s1)
            if(curr)next = curr->next;
    80001ee0:	fe0786e3          	beqz	a5,80001ecc <_ZN11BuddySystem9buddyFreeEm+0x6c>
    80001ee4:	0007b903          	ld	s2,0(a5)
    80001ee8:	fe5ff06f          	j	80001ecc <_ZN11BuddySystem9buddyFreeEm+0x6c>
        if(merged == 0 && curr){
    80001eec:	00051663          	bnez	a0,80001ef8 <_ZN11BuddySystem9buddyFreeEm+0x98>
    80001ef0:	00048463          	beqz	s1,80001ef8 <_ZN11BuddySystem9buddyFreeEm+0x98>
            next = curr->next;
    80001ef4:	0004b903          	ld	s2,0(s1)
        if(!prev && !next){
    80001ef8:	06058863          	beqz	a1,80001f68 <_ZN11BuddySystem9buddyFreeEm+0x108>
        if(prev){
    80001efc:	00058c63          	beqz	a1,80001f14 <_ZN11BuddySystem9buddyFreeEm+0xb4>
            merged = tryToMerge(prev, curr, position);
    80001f00:	00098693          	mv	a3,s3
    80001f04:	00048613          	mv	a2,s1
    80001f08:	000a0513          	mv	a0,s4
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	e7c080e7          	jalr	-388(ra) # 80001d88 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>
        if((merged != -1) && next){
    80001f14:	fff00793          	li	a5,-1
    80001f18:	02f50063          	beq	a0,a5,80001f38 <_ZN11BuddySystem9buddyFreeEm+0xd8>
    80001f1c:	00090e63          	beqz	s2,80001f38 <_ZN11BuddySystem9buddyFreeEm+0xd8>
            merged = tryToMerge(curr, next, position);
    80001f20:	00098693          	mv	a3,s3
    80001f24:	00090613          	mv	a2,s2
    80001f28:	00048593          	mv	a1,s1
    80001f2c:	000a0513          	mv	a0,s4
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	e58080e7          	jalr	-424(ra) # 80001d88 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>
        if(merged != -1)position++;
    80001f38:	fff00793          	li	a5,-1
    80001f3c:	00f50463          	beq	a0,a5,80001f44 <_ZN11BuddySystem9buddyFreeEm+0xe4>
    80001f40:	00198993          	addi	s3,s3,1
    while(merged != -1){
    80001f44:	fff00793          	li	a5,-1
    80001f48:	02f50663          	beq	a0,a5,80001f74 <_ZN11BuddySystem9buddyFreeEm+0x114>
        MemNode* curr = arr[position], *prev = nullptr, *next = nullptr;
    80001f4c:	00399793          	slli	a5,s3,0x3
    80001f50:	00fa07b3          	add	a5,s4,a5
    80001f54:	0007b483          	ld	s1,0(a5)
        for(int i = 0; i < merged; i++){
    80001f58:	00000713          	li	a4,0
        MemNode* curr = arr[position], *prev = nullptr, *next = nullptr;
    80001f5c:	00000913          	li	s2,0
    80001f60:	00000593          	li	a1,0
    80001f64:	f75ff06f          	j	80001ed8 <_ZN11BuddySystem9buddyFreeEm+0x78>
        if(!prev && !next){
    80001f68:	f8091ae3          	bnez	s2,80001efc <_ZN11BuddySystem9buddyFreeEm+0x9c>
            merged = -1;
    80001f6c:	fff00513          	li	a0,-1
    80001f70:	f8dff06f          	j	80001efc <_ZN11BuddySystem9buddyFreeEm+0x9c>
}
    80001f74:	02813083          	ld	ra,40(sp)
    80001f78:	02013403          	ld	s0,32(sp)
    80001f7c:	01813483          	ld	s1,24(sp)
    80001f80:	01013903          	ld	s2,16(sp)
    80001f84:	00813983          	ld	s3,8(sp)
    80001f88:	00013a03          	ld	s4,0(sp)
    80001f8c:	03010113          	addi	sp,sp,48
    80001f90:	00008067          	ret
    80001f94:	00008067          	ret

0000000080001f98 <_ZN11BuddySystem9initBuddyEv>:

void BuddySystem::initBuddy() {
    80001f98:	ff010113          	addi	sp,sp,-16
    80001f9c:	00813423          	sd	s0,8(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    buddyHeapEnd = buddyHeapStart + buddyNumOfBlocks * BLOCK_SIZE;
    80001fa4:	14053603          	ld	a2,320(a0)
    80001fa8:	15053783          	ld	a5,336(a0)
    80001fac:	00c79793          	slli	a5,a5,0xc
    80001fb0:	00f60633          	add	a2,a2,a5
    80001fb4:	14c53423          	sd	a2,328(a0)
//    buddyHeapEnd = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - 1 - (size_t)HEAP_START_ADDR) / 8;
    size_t deg = 0, size = 1, realSize = buddyHeapEnd - (size_t)HEAP_START_ADDR, heapStart = (size_t)HEAP_START_ADDR;
    80001fb8:	0000e797          	auipc	a5,0xe
    80001fbc:	8e07b783          	ld	a5,-1824(a5) # 8000f898 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001fc0:	0007b683          	ld	a3,0(a5)
    80001fc4:	40d60633          	sub	a2,a2,a3
    80001fc8:	00100793          	li	a5,1
    80001fcc:	00000713          	li	a4,0

    while(size <= realSize){
    80001fd0:	00f66863          	bltu	a2,a5,80001fe0 <_ZN11BuddySystem9initBuddyEv+0x48>
        deg++;
    80001fd4:	00170713          	addi	a4,a4,1
        size <<= 1;
    80001fd8:	00179793          	slli	a5,a5,0x1
    while(size <= realSize){
    80001fdc:	ff5ff06f          	j	80001fd0 <_ZN11BuddySystem9initBuddyEv+0x38>
    }
    size >>= 1;
    80001fe0:	0017d793          	srli	a5,a5,0x1
    deg--;
    80001fe4:	fff70713          	addi	a4,a4,-1
        size_t deg = 0;
    80001fe8:	00000813          	li	a6,0
    80001fec:	000015b7          	lui	a1,0x1
        while(size > 1){
    80001ff0:	00100893          	li	a7,1
    80001ff4:	00b8fc63          	bgeu	a7,a1,8000200c <_ZN11BuddySystem9initBuddyEv+0x74>
            size >>= 1;
    80001ff8:	0015d593          	srli	a1,a1,0x1
            deg++;
    80001ffc:	00180813          	addi	a6,a6,1
        while(size > 1){
    80002000:	ff1ff06f          	j	80001ff0 <_ZN11BuddySystem9initBuddyEv+0x58>
    int cnt = 0;
    size_t boundary = log(BLOCK_SIZE);
    while(heapStart < buddyHeapEnd && size >= boundary) {
        cnt++;
        if(realSize < size){
            deg--;
    80002004:	fff70713          	addi	a4,a4,-1
            size >>=1;
    80002008:	0017d793          	srli	a5,a5,0x1
    while(heapStart < buddyHeapEnd && size >= boundary) {
    8000200c:	14853583          	ld	a1,328(a0)
    80002010:	02b6fa63          	bgeu	a3,a1,80002044 <_ZN11BuddySystem9initBuddyEv+0xac>
    80002014:	0307e863          	bltu	a5,a6,80002044 <_ZN11BuddySystem9initBuddyEv+0xac>
        if(realSize < size){
    80002018:	fef666e3          	bltu	a2,a5,80002004 <_ZN11BuddySystem9initBuddyEv+0x6c>
            continue;
        }

        MemNode *newNode = (MemNode *) heapStart;
        newNode->next = nullptr;
    8000201c:	0006b023          	sd	zero,0(a3)
        newNode->size = size;
    80002020:	00f6b423          	sd	a5,8(a3)
        arr[deg] = newNode;
    80002024:	00371593          	slli	a1,a4,0x3
    80002028:	00b505b3          	add	a1,a0,a1
    8000202c:	00d5b023          	sd	a3,0(a1) # 1000 <_entry-0x7ffff000>

        realSize -= size;
    80002030:	40f60633          	sub	a2,a2,a5
        heapStart += size;
    80002034:	00f686b3          	add	a3,a3,a5
        deg--;
    80002038:	fff70713          	addi	a4,a4,-1
        size >>= 1;
    8000203c:	0017d793          	srli	a5,a5,0x1
    80002040:	fcdff06f          	j	8000200c <_ZN11BuddySystem9initBuddyEv+0x74>
    }
};
    80002044:	00813403          	ld	s0,8(sp)
    80002048:	01010113          	addi	sp,sp,16
    8000204c:	00008067          	ret

0000000080002050 <_ZN11MySemaphore15semaphore_setupEPv>:
        semaphore_cache = kmem_cache_create("semaphore_cache", sizeof(MySemaphore), &semaphore_setup, &semaphore_destroy);
    }
    return semaphore_cache;
}

void MySemaphore::semaphore_setup(void *mySemaphore) {
    80002050:	ff010113          	addi	sp,sp,-16
    80002054:	00813423          	sd	s0,8(sp)
    80002058:	01010413          	addi	s0,sp,16
    MySemaphore* sem = (MySemaphore*)mySemaphore;
    sem->head = sem->tail = nullptr;
    8000205c:	00053823          	sd	zero,16(a0)
    80002060:	00053423          	sd	zero,8(a0)
    sem->indicator = false;
    80002064:	00050223          	sb	zero,4(a0)

}
    80002068:	00813403          	ld	s0,8(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret

0000000080002074 <_ZN11MySemaphoreC1Em>:
MySemaphore::MySemaphore(uint64 init) {
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00813423          	sd	s0,8(sp)
    8000207c:	01010413          	addi	s0,sp,16
    val = init;
    80002080:	00b52023          	sw	a1,0(a0)
    head = tail = nullptr;
    80002084:	00053823          	sd	zero,16(a0)
    80002088:	00053423          	sd	zero,8(a0)
    indicator = false;
    8000208c:	00050223          	sb	zero,4(a0)
}
    80002090:	00813403          	ld	s0,8(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <_ZN11MySemaphore16get_from_blockedEv>:
TCB* MySemaphore::get_from_blocked() {
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00813423          	sd	s0,8(sp)
    800020a4:	01010413          	addi	s0,sp,16
    800020a8:	00050793          	mv	a5,a0
    if(head){
    800020ac:	00853503          	ld	a0,8(a0)
    800020b0:	00050a63          	beqz	a0,800020c4 <_ZN11MySemaphore16get_from_blockedEv+0x28>
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    TCB* get_next_scheduler()const{ return next_scheduler; }
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    TCB* get_next_sleep()const{ return next_sleep; }
    void set_next_blocked(TCB* nextThread){ next_blocked = nextThread; }
    TCB* get_next_blocked()const{ return next_blocked; }
    800020b4:	04053703          	ld	a4,64(a0)
        head = head->get_next_blocked();
    800020b8:	00e7b423          	sd	a4,8(a5)
        if(!head)tail = nullptr;
    800020bc:	00070a63          	beqz	a4,800020d0 <_ZN11MySemaphore16get_from_blockedEv+0x34>
    void set_next_blocked(TCB* nextThread){ next_blocked = nextThread; }
    800020c0:	04053023          	sd	zero,64(a0)
}
    800020c4:	00813403          	ld	s0,8(sp)
    800020c8:	01010113          	addi	sp,sp,16
    800020cc:	00008067          	ret
        if(!head)tail = nullptr;
    800020d0:	0007b823          	sd	zero,16(a5)
    800020d4:	fedff06f          	j	800020c0 <_ZN11MySemaphore16get_from_blockedEv+0x24>

00000000800020d8 <_ZN11MySemaphore9sem_closeEPS_>:
int MySemaphore::sem_close(MySemaphore* handle){
    800020d8:	fe010113          	addi	sp,sp,-32
    800020dc:	00113c23          	sd	ra,24(sp)
    800020e0:	00813823          	sd	s0,16(sp)
    800020e4:	00913423          	sd	s1,8(sp)
    800020e8:	01213023          	sd	s2,0(sp)
    800020ec:	02010413          	addi	s0,sp,32
    800020f0:	00050913          	mv	s2,a0
    TCB* tmp = handle->head;
    800020f4:	00853483          	ld	s1,8(a0)
    800020f8:	0180006f          	j	80002110 <_ZN11MySemaphore9sem_closeEPS_+0x38>
        if(tmp)Scheduler::getInstance().put(tmp);
    800020fc:	00003097          	auipc	ra,0x3
    80002100:	a90080e7          	jalr	-1392(ra) # 80004b8c <_ZN9Scheduler11getInstanceEv>
    80002104:	00048593          	mv	a1,s1
    80002108:	00003097          	auipc	ra,0x3
    8000210c:	a24080e7          	jalr	-1500(ra) # 80004b2c <_ZN9Scheduler3putEP3TCB>
    while(tmp){
    80002110:	00048e63          	beqz	s1,8000212c <_ZN11MySemaphore9sem_closeEPS_+0x54>
        tmp = handle->get_from_blocked();
    80002114:	00090513          	mv	a0,s2
    80002118:	00000097          	auipc	ra,0x0
    8000211c:	f84080e7          	jalr	-124(ra) # 8000209c <_ZN11MySemaphore16get_from_blockedEv>
    80002120:	00050493          	mv	s1,a0
        if(tmp)Scheduler::getInstance().put(tmp);
    80002124:	fc051ce3          	bnez	a0,800020fc <_ZN11MySemaphore9sem_closeEPS_+0x24>
    80002128:	fe9ff06f          	j	80002110 <_ZN11MySemaphore9sem_closeEPS_+0x38>

    void unblock();

    // getteri i setteri
    bool get_indicator()const{ return indicator; }
    void set_indicator(bool v){ indicator = v; }
    8000212c:	00100793          	li	a5,1
    80002130:	00f90223          	sb	a5,4(s2)
}
    80002134:	00000513          	li	a0,0
    80002138:	01813083          	ld	ra,24(sp)
    8000213c:	01013403          	ld	s0,16(sp)
    80002140:	00813483          	ld	s1,8(sp)
    80002144:	00013903          	ld	s2,0(sp)
    80002148:	02010113          	addi	sp,sp,32
    8000214c:	00008067          	ret

0000000080002150 <_ZN11MySemaphore17semaphore_destroyEPv>:

void MySemaphore::semaphore_destroy(void *mySemaphore) {
    80002150:	ff010113          	addi	sp,sp,-16
    80002154:	00113423          	sd	ra,8(sp)
    80002158:	00813023          	sd	s0,0(sp)
    8000215c:	01010413          	addi	s0,sp,16
    MySemaphore* sem = (MySemaphore*)mySemaphore;
    sem_close(sem);
    80002160:	00000097          	auipc	ra,0x0
    80002164:	f78080e7          	jalr	-136(ra) # 800020d8 <_ZN11MySemaphore9sem_closeEPS_>
}
    80002168:	00813083          	ld	ra,8(sp)
    8000216c:	00013403          	ld	s0,0(sp)
    80002170:	01010113          	addi	sp,sp,16
    80002174:	00008067          	ret

0000000080002178 <_ZN11MySemaphore14put_in_blockedEP3TCB>:
void MySemaphore::put_in_blocked(TCB *tcb) {
    80002178:	ff010113          	addi	sp,sp,-16
    8000217c:	00813423          	sd	s0,8(sp)
    80002180:	01010413          	addi	s0,sp,16
    if(!head)head = tcb;
    80002184:	00853783          	ld	a5,8(a0)
    80002188:	00078e63          	beqz	a5,800021a4 <_ZN11MySemaphore14put_in_blockedEP3TCB+0x2c>
    else tail->set_next_blocked(tcb);
    8000218c:	01053783          	ld	a5,16(a0)
    80002190:	04b7b023          	sd	a1,64(a5)
    tail = tcb;
    80002194:	00b53823          	sd	a1,16(a0)
}
    80002198:	00813403          	ld	s0,8(sp)
    8000219c:	01010113          	addi	sp,sp,16
    800021a0:	00008067          	ret
    if(!head)head = tcb;
    800021a4:	00b53423          	sd	a1,8(a0)
    800021a8:	fedff06f          	j	80002194 <_ZN11MySemaphore14put_in_blockedEP3TCB+0x1c>

00000000800021ac <_ZN11MySemaphore5blockEv>:
void MySemaphore::block() {
    800021ac:	ff010113          	addi	sp,sp,-16
    800021b0:	00113423          	sd	ra,8(sp)
    800021b4:	00813023          	sd	s0,0(sp)
    800021b8:	01010413          	addi	s0,sp,16
    put_in_blocked(old);
    800021bc:	0000d797          	auipc	a5,0xd
    800021c0:	70c7b783          	ld	a5,1804(a5) # 8000f8c8 <_GLOBAL_OFFSET_TABLE_+0x48>
    800021c4:	0007b583          	ld	a1,0(a5)
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	fb0080e7          	jalr	-80(ra) # 80002178 <_ZN11MySemaphore14put_in_blockedEP3TCB>
    TCB::yield();
    800021d0:	00002097          	auipc	ra,0x2
    800021d4:	544080e7          	jalr	1348(ra) # 80004714 <_ZN3TCB5yieldEv>
}
    800021d8:	00813083          	ld	ra,8(sp)
    800021dc:	00013403          	ld	s0,0(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret

00000000800021e8 <_ZN11MySemaphore8sem_waitEPS_>:
int MySemaphore::sem_wait(MySemaphore *id) {
    800021e8:	fe010113          	addi	sp,sp,-32
    800021ec:	00113c23          	sd	ra,24(sp)
    800021f0:	00813823          	sd	s0,16(sp)
    800021f4:	00913423          	sd	s1,8(sp)
    800021f8:	02010413          	addi	s0,sp,32
    800021fc:	00050493          	mv	s1,a0
    int get_val()const{ return val; }
    80002200:	00052783          	lw	a5,0(a0)
    id->set_val(id->get_val() - 1);
    80002204:	fff7879b          	addiw	a5,a5,-1
    void set_val(int v){ val = v; }
    80002208:	00f52023          	sw	a5,0(a0)
    if( id->get_val() < 0)id->block();
    8000220c:	02079713          	slli	a4,a5,0x20
    80002210:	02074263          	bltz	a4,80002234 <_ZN11MySemaphore8sem_waitEPS_+0x4c>
    bool get_indicator()const{ return indicator; }
    80002214:	0044c783          	lbu	a5,4(s1)
    if(!id->get_indicator())return 0;
    80002218:	02079463          	bnez	a5,80002240 <_ZN11MySemaphore8sem_waitEPS_+0x58>
    8000221c:	00000513          	li	a0,0
}
    80002220:	01813083          	ld	ra,24(sp)
    80002224:	01013403          	ld	s0,16(sp)
    80002228:	00813483          	ld	s1,8(sp)
    8000222c:	02010113          	addi	sp,sp,32
    80002230:	00008067          	ret
    if( id->get_val() < 0)id->block();
    80002234:	00000097          	auipc	ra,0x0
    80002238:	f78080e7          	jalr	-136(ra) # 800021ac <_ZN11MySemaphore5blockEv>
    8000223c:	fd9ff06f          	j	80002214 <_ZN11MySemaphore8sem_waitEPS_+0x2c>
    else return -1;
    80002240:	fff00513          	li	a0,-1
    80002244:	fddff06f          	j	80002220 <_ZN11MySemaphore8sem_waitEPS_+0x38>

0000000080002248 <_ZN11MySemaphore7unblockEv>:
void MySemaphore::unblock() {
    80002248:	fe010113          	addi	sp,sp,-32
    8000224c:	00113c23          	sd	ra,24(sp)
    80002250:	00813823          	sd	s0,16(sp)
    80002254:	00913423          	sd	s1,8(sp)
    80002258:	02010413          	addi	s0,sp,32
    TCB* tmp = get_from_blocked();
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	e40080e7          	jalr	-448(ra) # 8000209c <_ZN11MySemaphore16get_from_blockedEv>
    if(tmp)Scheduler::getInstance().put(tmp);
    80002264:	00050e63          	beqz	a0,80002280 <_ZN11MySemaphore7unblockEv+0x38>
    80002268:	00050493          	mv	s1,a0
    8000226c:	00003097          	auipc	ra,0x3
    80002270:	920080e7          	jalr	-1760(ra) # 80004b8c <_ZN9Scheduler11getInstanceEv>
    80002274:	00048593          	mv	a1,s1
    80002278:	00003097          	auipc	ra,0x3
    8000227c:	8b4080e7          	jalr	-1868(ra) # 80004b2c <_ZN9Scheduler3putEP3TCB>
}
    80002280:	01813083          	ld	ra,24(sp)
    80002284:	01013403          	ld	s0,16(sp)
    80002288:	00813483          	ld	s1,8(sp)
    8000228c:	02010113          	addi	sp,sp,32
    80002290:	00008067          	ret

0000000080002294 <_ZN11MySemaphore10sem_signalEPS_>:
int MySemaphore::sem_signal(MySemaphore *id) {
    80002294:	fe010113          	addi	sp,sp,-32
    80002298:	00113c23          	sd	ra,24(sp)
    8000229c:	00813823          	sd	s0,16(sp)
    800022a0:	00913423          	sd	s1,8(sp)
    800022a4:	02010413          	addi	s0,sp,32
    800022a8:	00050493          	mv	s1,a0
    int get_val()const{ return val; }
    800022ac:	00052783          	lw	a5,0(a0)
    id->set_val(id->get_val() + 1);
    800022b0:	0017879b          	addiw	a5,a5,1
    800022b4:	0007871b          	sext.w	a4,a5
    void set_val(int v){ val = v; }
    800022b8:	00f52023          	sw	a5,0(a0)
    if( id->get_val() <= 0)id->unblock();
    800022bc:	02e05263          	blez	a4,800022e0 <_ZN11MySemaphore10sem_signalEPS_+0x4c>
    bool get_indicator()const{ return indicator; }
    800022c0:	0044c783          	lbu	a5,4(s1)
    if(!id->get_indicator())return 0;
    800022c4:	02079463          	bnez	a5,800022ec <_ZN11MySemaphore10sem_signalEPS_+0x58>
    800022c8:	00000513          	li	a0,0
}
    800022cc:	01813083          	ld	ra,24(sp)
    800022d0:	01013403          	ld	s0,16(sp)
    800022d4:	00813483          	ld	s1,8(sp)
    800022d8:	02010113          	addi	sp,sp,32
    800022dc:	00008067          	ret
    if( id->get_val() <= 0)id->unblock();
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	f68080e7          	jalr	-152(ra) # 80002248 <_ZN11MySemaphore7unblockEv>
    800022e8:	fd9ff06f          	j	800022c0 <_ZN11MySemaphore10sem_signalEPS_+0x2c>
    else return -1;
    800022ec:	fff00513          	li	a0,-1
    800022f0:	fddff06f          	j	800022cc <_ZN11MySemaphore10sem_signalEPS_+0x38>

00000000800022f4 <_ZN11MySemaphore13get_sem_cacheEv>:
    if(!semaphore_cache){
    800022f4:	0000d797          	auipc	a5,0xd
    800022f8:	6347b783          	ld	a5,1588(a5) # 8000f928 <_ZN11MySemaphore15semaphore_cacheE>
    800022fc:	00078863          	beqz	a5,8000230c <_ZN11MySemaphore13get_sem_cacheEv+0x18>
}
    80002300:	0000d517          	auipc	a0,0xd
    80002304:	62850513          	addi	a0,a0,1576 # 8000f928 <_ZN11MySemaphore15semaphore_cacheE>
    80002308:	00008067          	ret
kmem_cache_t * &MySemaphore::get_sem_cache() {
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00113423          	sd	ra,8(sp)
    80002314:	00813023          	sd	s0,0(sp)
    80002318:	01010413          	addi	s0,sp,16
        semaphore_cache = kmem_cache_create("semaphore_cache", sizeof(MySemaphore), &semaphore_setup, &semaphore_destroy);
    8000231c:	00000697          	auipc	a3,0x0
    80002320:	e3468693          	addi	a3,a3,-460 # 80002150 <_ZN11MySemaphore17semaphore_destroyEPv>
    80002324:	00000617          	auipc	a2,0x0
    80002328:	d2c60613          	addi	a2,a2,-724 # 80002050 <_ZN11MySemaphore15semaphore_setupEPv>
    8000232c:	01800593          	li	a1,24
    80002330:	0000a517          	auipc	a0,0xa
    80002334:	d0050513          	addi	a0,a0,-768 # 8000c030 <CONSOLE_STATUS+0x20>
    80002338:	00003097          	auipc	ra,0x3
    8000233c:	d70080e7          	jalr	-656(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80002340:	0000d797          	auipc	a5,0xd
    80002344:	5ea7b423          	sd	a0,1512(a5) # 8000f928 <_ZN11MySemaphore15semaphore_cacheE>
}
    80002348:	0000d517          	auipc	a0,0xd
    8000234c:	5e050513          	addi	a0,a0,1504 # 8000f928 <_ZN11MySemaphore15semaphore_cacheE>
    80002350:	00813083          	ld	ra,8(sp)
    80002354:	00013403          	ld	s0,0(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret

0000000080002360 <_ZN11MySemaphore8sem_openEPPS_m>:
int MySemaphore::sem_open(MySemaphore **handle, uint64 init) {
    80002360:	fe010113          	addi	sp,sp,-32
    80002364:	00113c23          	sd	ra,24(sp)
    80002368:	00813823          	sd	s0,16(sp)
    8000236c:	00913423          	sd	s1,8(sp)
    80002370:	01213023          	sd	s2,0(sp)
    80002374:	02010413          	addi	s0,sp,32
    80002378:	00050493          	mv	s1,a0
    8000237c:	00058913          	mv	s2,a1
    auto* sem = (MySemaphore*)kmem_cache_alloc(get_sem_cache());
    80002380:	00000097          	auipc	ra,0x0
    80002384:	f74080e7          	jalr	-140(ra) # 800022f4 <_ZN11MySemaphore13get_sem_cacheEv>
    80002388:	00053503          	ld	a0,0(a0)
    8000238c:	00003097          	auipc	ra,0x3
    80002390:	dc4080e7          	jalr	-572(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    sem->val = (int)init;
    80002394:	01252023          	sw	s2,0(a0)
    *handle = sem;
    80002398:	00a4b023          	sd	a0,0(s1)
}
    8000239c:	00000513          	li	a0,0
    800023a0:	01813083          	ld	ra,24(sp)
    800023a4:	01013403          	ld	s0,16(sp)
    800023a8:	00813483          	ld	s1,8(sp)
    800023ac:	00013903          	ld	s2,0(sp)
    800023b0:	02010113          	addi	sp,sp,32
    800023b4:	00008067          	ret

00000000800023b8 <_ZN14periodicThread3putEP3TCB>:
#include "../h/TCB.hpp"

TCB* periodicThread::head = nullptr;
TCB* periodicThread::tail = nullptr;

void periodicThread::put(TCB *thread) {
    800023b8:	ff010113          	addi	sp,sp,-16
    800023bc:	00813423          	sd	s0,8(sp)
    800023c0:	01010413          	addi	s0,sp,16
    if(!head)head = thread;
    800023c4:	0000d797          	auipc	a5,0xd
    800023c8:	56c7b783          	ld	a5,1388(a5) # 8000f930 <_ZN14periodicThread4headE>
    800023cc:	02078263          	beqz	a5,800023f0 <_ZN14periodicThread3putEP3TCB+0x38>
    else tail->set_next_period(thread); // tail->next_period = thread;
    800023d0:	0000d797          	auipc	a5,0xd
    800023d4:	5687b783          	ld	a5,1384(a5) # 8000f938 <_ZN14periodicThread4tailE>
    uint64 get_time_slice()const{ return time_slice; }
    void set_periodic(bool b){
        periodic = b;
        periodicThread::getInstance().put(this);
    }
    void set_next_period(TCB* tcb){ next_period = tcb; }
    800023d8:	06b7b423          	sd	a1,104(a5)
    tail = thread;
    800023dc:	0000d797          	auipc	a5,0xd
    800023e0:	54b7be23          	sd	a1,1372(a5) # 8000f938 <_ZN14periodicThread4tailE>
}
    800023e4:	00813403          	ld	s0,8(sp)
    800023e8:	01010113          	addi	sp,sp,16
    800023ec:	00008067          	ret
    if(!head)head = thread;
    800023f0:	0000d797          	auipc	a5,0xd
    800023f4:	54b7b023          	sd	a1,1344(a5) # 8000f930 <_ZN14periodicThread4headE>
    800023f8:	fe5ff06f          	j	800023dc <_ZN14periodicThread3putEP3TCB+0x24>

00000000800023fc <_ZN14periodicThread3getEv>:

TCB *periodicThread::get() {
    800023fc:	ff010113          	addi	sp,sp,-16
    80002400:	00813423          	sd	s0,8(sp)
    80002404:	01010413          	addi	s0,sp,16
    if(!head)return nullptr;
    80002408:	0000d517          	auipc	a0,0xd
    8000240c:	52853503          	ld	a0,1320(a0) # 8000f930 <_ZN14periodicThread4headE>
    80002410:	00050c63          	beqz	a0,80002428 <_ZN14periodicThread3getEv+0x2c>
    TCB* get_next_period()const{return next_period;}
    80002414:	06853783          	ld	a5,104(a0)
    TCB* tmp = head;
    head = head->get_next_period(); // head = head->next_period
    80002418:	0000d717          	auipc	a4,0xd
    8000241c:	50f73c23          	sd	a5,1304(a4) # 8000f930 <_ZN14periodicThread4headE>
    void set_next_period(TCB* tcb){ next_period = tcb; }
    80002420:	06053423          	sd	zero,104(a0)
    tmp->set_next_period(nullptr);
    if(!head)tail = nullptr;
    80002424:	00078863          	beqz	a5,80002434 <_ZN14periodicThread3getEv+0x38>
    return tmp;
}
    80002428:	00813403          	ld	s0,8(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret
    if(!head)tail = nullptr;
    80002434:	0000d797          	auipc	a5,0xd
    80002438:	5007b223          	sd	zero,1284(a5) # 8000f938 <_ZN14periodicThread4tailE>
    8000243c:	fedff06f          	j	80002428 <_ZN14periodicThread3getEv+0x2c>

0000000080002440 <_Z10size_startPKc>:
//
#include "../h/String.h"
#include "../test/printing.hpp"

// does name start with size-, 1 if true, 0 if not
bool size_start(const char *name){
    80002440:	ff010113          	addi	sp,sp,-16
    80002444:	00813423          	sd	s0,8(sp)
    80002448:	01010413          	addi	s0,sp,16
    // Check if the input string starts with "size-"
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    8000244c:	00054703          	lbu	a4,0(a0)
    80002450:	07300793          	li	a5,115
    80002454:	00f70a63          	beq	a4,a5,80002468 <_Z10size_startPKc+0x28>
        return true;
    }
    return false;
    80002458:	00000513          	li	a0,0
}
    8000245c:	00813403          	ld	s0,8(sp)
    80002460:	01010113          	addi	sp,sp,16
    80002464:	00008067          	ret
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    80002468:	00154703          	lbu	a4,1(a0)
    8000246c:	06900793          	li	a5,105
    80002470:	00f70663          	beq	a4,a5,8000247c <_Z10size_startPKc+0x3c>
    return false;
    80002474:	00000513          	li	a0,0
    80002478:	fe5ff06f          	j	8000245c <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    8000247c:	00254703          	lbu	a4,2(a0)
    80002480:	07a00793          	li	a5,122
    80002484:	00f70663          	beq	a4,a5,80002490 <_Z10size_startPKc+0x50>
    return false;
    80002488:	00000513          	li	a0,0
    8000248c:	fd1ff06f          	j	8000245c <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    80002490:	00354703          	lbu	a4,3(a0)
    80002494:	06500793          	li	a5,101
    80002498:	00f70663          	beq	a4,a5,800024a4 <_Z10size_startPKc+0x64>
    return false;
    8000249c:	00000513          	li	a0,0
    800024a0:	fbdff06f          	j	8000245c <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    800024a4:	00454703          	lbu	a4,4(a0)
    800024a8:	02d00793          	li	a5,45
    800024ac:	00f70663          	beq	a4,a5,800024b8 <_Z10size_startPKc+0x78>
    return false;
    800024b0:	00000513          	li	a0,0
    800024b4:	fa9ff06f          	j	8000245c <_Z10size_startPKc+0x1c>
        return true;
    800024b8:	00100513          	li	a0,1
    800024bc:	fa1ff06f          	j	8000245c <_Z10size_startPKc+0x1c>

00000000800024c0 <_Z14get_int_lengthi>:

int get_int_length(int number) {
    800024c0:	ff010113          	addi	sp,sp,-16
    800024c4:	00813423          	sd	s0,8(sp)
    800024c8:	01010413          	addi	s0,sp,16
    800024cc:	00050793          	mv	a5,a0
    int length = 0;
    800024d0:	00000513          	li	a0,0
    while (number != 0) {
    800024d4:	00078a63          	beqz	a5,800024e8 <_Z14get_int_lengthi+0x28>
        number /= 10;
    800024d8:	00a00713          	li	a4,10
    800024dc:	02e7c7bb          	divw	a5,a5,a4
        length++;
    800024e0:	0015051b          	addiw	a0,a0,1
    while (number != 0) {
    800024e4:	ff1ff06f          	j	800024d4 <_Z14get_int_lengthi+0x14>
    }
    return length;
}
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_Z13int_to_stringiPci>:

void int_to_string(int number, char* buffer, int bufferSize) {
    800024f4:	fd010113          	addi	sp,sp,-48
    800024f8:	02113423          	sd	ra,40(sp)
    800024fc:	02813023          	sd	s0,32(sp)
    80002500:	00913c23          	sd	s1,24(sp)
    80002504:	01213823          	sd	s2,16(sp)
    80002508:	01313423          	sd	s3,8(sp)
    8000250c:	03010413          	addi	s0,sp,48
    80002510:	00050493          	mv	s1,a0
    80002514:	00058913          	mv	s2,a1
    80002518:	00060993          	mv	s3,a2
    int length = get_int_length(number);
    8000251c:	00000097          	auipc	ra,0x0
    80002520:	fa4080e7          	jalr	-92(ra) # 800024c0 <_Z14get_int_lengthi>

    if (length >= bufferSize) {
    80002524:	03355a63          	bge	a0,s3,80002558 <_Z13int_to_stringiPci+0x64>
        // Handle buffer overflow
        return;
    }

    for (int i = length - 1; i >= 0; i--) {
    80002528:	fff5079b          	addiw	a5,a0,-1
    8000252c:	0207c263          	bltz	a5,80002550 <_Z13int_to_stringiPci+0x5c>
        buffer[i] = '0' + (number % 10);
    80002530:	00a00693          	li	a3,10
    80002534:	02d4e73b          	remw	a4,s1,a3
    80002538:	00f90633          	add	a2,s2,a5
    8000253c:	0307071b          	addiw	a4,a4,48
    80002540:	00e60023          	sb	a4,0(a2)
        number /= 10;
    80002544:	02d4c4bb          	divw	s1,s1,a3
    for (int i = length - 1; i >= 0; i--) {
    80002548:	fff7879b          	addiw	a5,a5,-1
    8000254c:	fe1ff06f          	j	8000252c <_Z13int_to_stringiPci+0x38>
    }
    buffer[length] = '\0';
    80002550:	00a90933          	add	s2,s2,a0
    80002554:	00090023          	sb	zero,0(s2)
}
    80002558:	02813083          	ld	ra,40(sp)
    8000255c:	02013403          	ld	s0,32(sp)
    80002560:	01813483          	ld	s1,24(sp)
    80002564:	01013903          	ld	s2,16(sp)
    80002568:	00813983          	ld	s3,8(sp)
    8000256c:	03010113          	addi	sp,sp,48
    80002570:	00008067          	ret

0000000080002574 <_Z27concatenate_int_to_char_ptri>:

char* concatenate_int_to_char_ptr(int number) {
    80002574:	fe010113          	addi	sp,sp,-32
    80002578:	00113c23          	sd	ra,24(sp)
    8000257c:	00813823          	sd	s0,16(sp)
    80002580:	00913423          	sd	s1,8(sp)
    80002584:	02010413          	addi	s0,sp,32
    80002588:	00050493          	mv	s1,a0
    char* baseString = (char*)"size-xxxxxx";
    int length = get_int_length(number);
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	f34080e7          	jalr	-204(ra) # 800024c0 <_Z14get_int_lengthi>
    for(int i = 5 + length; i >= 5; i--){
    80002594:	0055051b          	addiw	a0,a0,5
    80002598:	00050793          	mv	a5,a0
    8000259c:	0180006f          	j	800025b4 <_Z27concatenate_int_to_char_ptri+0x40>
        if(i == 5 + length){
            baseString[i] = '\0';
    800025a0:	0000a717          	auipc	a4,0xa
    800025a4:	aa070713          	addi	a4,a4,-1376 # 8000c040 <CONSOLE_STATUS+0x30>
    800025a8:	00e78733          	add	a4,a5,a4
    800025ac:	00070023          	sb	zero,0(a4)
    for(int i = 5 + length; i >= 5; i--){
    800025b0:	fff7879b          	addiw	a5,a5,-1
    800025b4:	00400713          	li	a4,4
    800025b8:	02f75863          	bge	a4,a5,800025e8 <_Z27concatenate_int_to_char_ptri+0x74>
        if(i == 5 + length){
    800025bc:	fea782e3          	beq	a5,a0,800025a0 <_Z27concatenate_int_to_char_ptri+0x2c>
        }else{
            int mod = number % 10;
    800025c0:	00a00693          	li	a3,10
    800025c4:	02d4e73b          	remw	a4,s1,a3
            number /= 10;
    800025c8:	02d4c4bb          	divw	s1,s1,a3
            char num_char = '0' + mod;
    800025cc:	0ff77713          	andi	a4,a4,255
    800025d0:	0307071b          	addiw	a4,a4,48
            baseString[i] = num_char;
    800025d4:	0000a697          	auipc	a3,0xa
    800025d8:	a6c68693          	addi	a3,a3,-1428 # 8000c040 <CONSOLE_STATUS+0x30>
    800025dc:	00d786b3          	add	a3,a5,a3
    800025e0:	00e68023          	sb	a4,0(a3)
    800025e4:	fcdff06f          	j	800025b0 <_Z27concatenate_int_to_char_ptri+0x3c>
        }
    }
    return baseString;

}
    800025e8:	0000a517          	auipc	a0,0xa
    800025ec:	a5850513          	addi	a0,a0,-1448 # 8000c040 <CONSOLE_STATUS+0x30>
    800025f0:	01813083          	ld	ra,24(sp)
    800025f4:	01013403          	ld	s0,16(sp)
    800025f8:	00813483          	ld	s1,8(sp)
    800025fc:	02010113          	addi	sp,sp,32
    80002600:	00008067          	ret

0000000080002604 <_Z14string_comparePKcS0_>:

bool string_compare(const char* str1, const char* str2) {
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00813423          	sd	s0,8(sp)
    8000260c:	01010413          	addi	s0,sp,16
    80002610:	00c0006f          	j	8000261c <_Z14string_comparePKcS0_+0x18>
    while (*str1 != '\0' && *str2 != '\0') {
        if (*str1 != *str2) {
            return false;
        }
        str1++;
    80002614:	00150513          	addi	a0,a0,1
        str2++;
    80002618:	00158593          	addi	a1,a1,1
    while (*str1 != '\0' && *str2 != '\0') {
    8000261c:	00054783          	lbu	a5,0(a0)
    80002620:	00078c63          	beqz	a5,80002638 <_Z14string_comparePKcS0_+0x34>
    80002624:	0005c703          	lbu	a4,0(a1)
    80002628:	00070863          	beqz	a4,80002638 <_Z14string_comparePKcS0_+0x34>
        if (*str1 != *str2) {
    8000262c:	fee784e3          	beq	a5,a4,80002614 <_Z14string_comparePKcS0_+0x10>
            return false;
    80002630:	00000513          	li	a0,0
    80002634:	01c0006f          	j	80002650 <_Z14string_comparePKcS0_+0x4c>
    }

    // Check if both strings have reached the end simultaneously
    return (*str1 == '\0' && *str2 == '\0');
    80002638:	00079a63          	bnez	a5,8000264c <_Z14string_comparePKcS0_+0x48>
    8000263c:	0005c783          	lbu	a5,0(a1)
    80002640:	00078e63          	beqz	a5,8000265c <_Z14string_comparePKcS0_+0x58>
    80002644:	00000513          	li	a0,0
    80002648:	0080006f          	j	80002650 <_Z14string_comparePKcS0_+0x4c>
    8000264c:	00000513          	li	a0,0
    80002650:	00813403          	ld	s0,8(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret
    return (*str1 == '\0' && *str2 == '\0');
    8000265c:	00100513          	li	a0,1
    80002660:	ff1ff06f          	j	80002650 <_Z14string_comparePKcS0_+0x4c>

0000000080002664 <_Z13idle_functionPv>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../test/userMain.hpp"
#include "../h/SlabI.h"

void idle_function(void* arg){
    80002664:	ff010113          	addi	sp,sp,-16
    80002668:	00113423          	sd	ra,8(sp)
    8000266c:	00813023          	sd	s0,0(sp)
    80002670:	01010413          	addi	s0,sp,16
    while(1){
        thread_dispatch();
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	d2c080e7          	jalr	-724(ra) # 800013a0 <thread_dispatch>
    while(1){
    8000267c:	ff9ff06f          	j	80002674 <_Z13idle_functionPv+0x10>

0000000080002680 <_Z13putc_functionPv>:
    }
}

void putc_function(void* arg){
    80002680:	fe010113          	addi	sp,sp,-32
    80002684:	00113c23          	sd	ra,24(sp)
    80002688:	00813823          	sd	s0,16(sp)
    8000268c:	00913423          	sd	s1,8(sp)
    80002690:	02010413          	addi	s0,sp,32
    switch_to_priviledged();
    80002694:	fffff097          	auipc	ra,0xfffff
    80002698:	0a4080e7          	jalr	164(ra) # 80001738 <switch_to_priviledged>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000269c:	00200793          	li	a5,2
    800026a0:	1007b073          	csrc	sstatus,a5
}
    800026a4:	0240006f          	j	800026c8 <_Z13putc_functionPv+0x48>
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(1){
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
              /*&& Console::getInstance().get_output_size()*/) {
            *((char*)CONSOLE_TX_DATA) = Console::getInstance().get_from_output();
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	30c080e7          	jalr	780(ra) # 800029b4 <_ZN7Console11getInstanceEv>
    800026b0:	0000d797          	auipc	a5,0xd
    800026b4:	2007b783          	ld	a5,512(a5) # 8000f8b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800026b8:	0007b483          	ld	s1,0(a5)
    800026bc:	00000097          	auipc	ra,0x0
    800026c0:	2c8080e7          	jalr	712(ra) # 80002984 <_ZN7Console15get_from_outputEv>
    800026c4:	00a48023          	sb	a0,0(s1)
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
    800026c8:	0000d797          	auipc	a5,0xd
    800026cc:	1c87b783          	ld	a5,456(a5) # 8000f890 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026d0:	0007b783          	ld	a5,0(a5)
    800026d4:	0007c783          	lbu	a5,0(a5)
    800026d8:	0207f793          	andi	a5,a5,32
    800026dc:	fc0796e3          	bnez	a5,800026a8 <_Z13putc_functionPv+0x28>
        }
        thread_dispatch();
    800026e0:	fffff097          	auipc	ra,0xfffff
    800026e4:	cc0080e7          	jalr	-832(ra) # 800013a0 <thread_dispatch>
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
    800026e8:	fe1ff06f          	j	800026c8 <_Z13putc_functionPv+0x48>

00000000800026ec <_Z17user_main_wrapperPv>:
    }
}

static bool is_user_main_finished = false;
void user_main_wrapper(void* arg){
    800026ec:	ff010113          	addi	sp,sp,-16
    800026f0:	00113423          	sd	ra,8(sp)
    800026f4:	00813023          	sd	s0,0(sp)
    800026f8:	01010413          	addi	s0,sp,16
    switch_to_user();
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	fec080e7          	jalr	-20(ra) # 800016e8 <switch_to_user>
    userMain();
    80002704:	00006097          	auipc	ra,0x6
    80002708:	ba4080e7          	jalr	-1116(ra) # 800082a8 <_Z8userMainv>
    switch_to_priviledged();
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	02c080e7          	jalr	44(ra) # 80001738 <switch_to_priviledged>
    is_user_main_finished = true;
    80002714:	00100793          	li	a5,1
    80002718:	0000d717          	auipc	a4,0xd
    8000271c:	22f70423          	sb	a5,552(a4) # 8000f940 <_ZL21is_user_main_finished>
}
    80002720:	00813083          	ld	ra,8(sp)
    80002724:	00013403          	ld	s0,0(sp)
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret

0000000080002730 <_Z12memory_setupv>:

void memory_setup(){
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00113423          	sd	ra,8(sp)
    80002738:	00813023          	sd	s0,0(sp)
    8000273c:	01010413          	addi	s0,sp,16
    void * space = (void*)HEAP_START_ADDR;
    80002740:	0000d797          	auipc	a5,0xd
    80002744:	1587b783          	ld	a5,344(a5) # 8000f898 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002748:	0007b503          	ld	a0,0(a5)
    int block_num = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 / BLOCK_SIZE;
    8000274c:	0000d797          	auipc	a5,0xd
    80002750:	1847b783          	ld	a5,388(a5) # 8000f8d0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002754:	0007b583          	ld	a1,0(a5)
    80002758:	40a585b3          	sub	a1,a1,a0
    8000275c:	00f5d593          	srli	a1,a1,0xf
    kmem_init(space, block_num);
    80002760:	0005859b          	sext.w	a1,a1
    80002764:	00003097          	auipc	ra,0x3
    80002768:	8c0080e7          	jalr	-1856(ra) # 80005024 <_Z9kmem_initPvi>
//    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_start());
//    printString("\n");
//    printString("Memory allocator heap end: ");
//    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_end());
//    printString("\n\n");
}
    8000276c:	00813083          	ld	ra,8(sp)
    80002770:	00013403          	ld	s0,0(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret

000000008000277c <main>:
#include "../test/userMain.hpp"
#include "../h/fun.hpp"



int main(){
    8000277c:	fc010113          	addi	sp,sp,-64
    80002780:	02113c23          	sd	ra,56(sp)
    80002784:	02813823          	sd	s0,48(sp)
    80002788:	02913423          	sd	s1,40(sp)
    8000278c:	04010413          	addi	s0,sp,64

    // ###################################################################################################
    // upis u stvec
    uint64 address = reinterpret_cast<uint64>(&Riscv::supervisorTrap);
    80002790:	0000d797          	auipc	a5,0xd
    80002794:	1107b783          	ld	a5,272(a5) # 8000f8a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002798:	10579073          	csrw	stvec,a5
    Riscv::w_stvec(address);

    memory_setup();
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	f94080e7          	jalr	-108(ra) # 80002730 <_Z12memory_setupv>

    // kreiranje main niti
    thread_t mainThread = nullptr;
    800027a4:	fc043c23          	sd	zero,-40(s0)
    thread_create(&mainThread, nullptr, nullptr);
    800027a8:	00000613          	li	a2,0
    800027ac:	00000593          	li	a1,0
    800027b0:	fd840513          	addi	a0,s0,-40
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	b48080e7          	jalr	-1208(ra) # 800012fc <thread_create>
    TCB::running = (TCB*)mainThread;
    800027bc:	0000d797          	auipc	a5,0xd
    800027c0:	10c7b783          	ld	a5,268(a5) # 8000f8c8 <_GLOBAL_OFFSET_TABLE_+0x48>
    800027c4:	fd843703          	ld	a4,-40(s0)
    800027c8:	00e7b023          	sd	a4,0(a5)

    // kreiranje idle niti
    thread_create((thread_t*)&TCB::idle, &idle_function, nullptr);
    800027cc:	00000613          	li	a2,0
    800027d0:	00000597          	auipc	a1,0x0
    800027d4:	e9458593          	addi	a1,a1,-364 # 80002664 <_Z13idle_functionPv>
    800027d8:	0000d517          	auipc	a0,0xd
    800027dc:	0d053503          	ld	a0,208(a0) # 8000f8a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	b1c080e7          	jalr	-1252(ra) # 800012fc <thread_create>

    // kreiranje userMain niti
//    thread_t userMainThread = nullptr;
//    thread_create(&userMainThread, &userMain, nullptr);

    thread_t userMainThread = nullptr;
    800027e8:	fc043823          	sd	zero,-48(s0)
    thread_create(&userMainThread, &user_main_wrapper, nullptr);
    800027ec:	00000613          	li	a2,0
    800027f0:	00000597          	auipc	a1,0x0
    800027f4:	efc58593          	addi	a1,a1,-260 # 800026ec <_Z17user_main_wrapperPv>
    800027f8:	fd040513          	addi	a0,s0,-48
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	b00080e7          	jalr	-1280(ra) # 800012fc <thread_create>

    // kreiranje niti za ispis
    thread_t consoleWriter = nullptr;
    80002804:	fc043423          	sd	zero,-56(s0)
    thread_create(&consoleWriter, &putc_function, nullptr);
    80002808:	00000613          	li	a2,0
    8000280c:	00000597          	auipc	a1,0x0
    80002810:	e7458593          	addi	a1,a1,-396 # 80002680 <_Z13putc_functionPv>
    80002814:	fc840513          	addi	a0,s0,-56
    80002818:	fffff097          	auipc	ra,0xfffff
    8000281c:	ae4080e7          	jalr	-1308(ra) # 800012fc <thread_create>

    // memory and console setup
    Console::getInstance();
    80002820:	00000097          	auipc	ra,0x0
    80002824:	194080e7          	jalr	404(ra) # 800029b4 <_ZN7Console11getInstanceEv>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002828:	00200793          	li	a5,2
    8000282c:	1007a073          	csrs	sstatus,a5
}
    80002830:	00c0006f          	j	8000283c <main+0xc0>
//    while(!((TCB*)userMainThread)->is_finished()){
//        thread_dispatch();
//    }

    while(!is_user_main_finished || Console::getInstance().get_output_size()){
        thread_dispatch();
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	b6c080e7          	jalr	-1172(ra) # 800013a0 <thread_dispatch>
    while(!is_user_main_finished || Console::getInstance().get_output_size()){
    8000283c:	0000d797          	auipc	a5,0xd
    80002840:	1047c783          	lbu	a5,260(a5) # 8000f940 <_ZL21is_user_main_finished>
    80002844:	fe0788e3          	beqz	a5,80002834 <main+0xb8>
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	16c080e7          	jalr	364(ra) # 800029b4 <_ZN7Console11getInstanceEv>

    void put_in_input(char c);
    char get_from_input();
    void put_in_output(char c);
    char get_from_output();
    int get_output_size(){ return output_buffer->getCnt(); }
    80002850:	00853503          	ld	a0,8(a0)
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	218080e7          	jalr	536(ra) # 80001a6c <_ZN8MyBuffer6getCntEv>
    8000285c:	fc051ce3          	bnez	a0,80002834 <main+0xb8>
    }


    delete Console::getInstance().get_input_buff();
    80002860:	00000097          	auipc	ra,0x0
    80002864:	154080e7          	jalr	340(ra) # 800029b4 <_ZN7Console11getInstanceEv>
    int get_input_size(){ return input_buffer->getCnt(); }

    MyBuffer* get_input_buff(){return input_buffer;}
    80002868:	00053483          	ld	s1,0(a0)
    8000286c:	00048e63          	beqz	s1,80002888 <main+0x10c>
        MyBuffer** arr =  (MyBuffer**)kmalloc(num_of_elem);
        return (void*)arr;
    }

    void operator delete(void* p)noexcept{
        kmem_cache_free(get_buffer_cache(), p);
    80002870:	fffff097          	auipc	ra,0xfffff
    80002874:	284080e7          	jalr	644(ra) # 80001af4 <_ZN8MyBuffer16get_buffer_cacheEv>
    80002878:	00048593          	mv	a1,s1
    8000287c:	00053503          	ld	a0,0(a0)
    80002880:	00003097          	auipc	ra,0x3
    80002884:	92c080e7          	jalr	-1748(ra) # 800051ac <_Z15kmem_cache_freeP12kmem_cache_sPv>
    return 0;
    80002888:	00000513          	li	a0,0
    8000288c:	03813083          	ld	ra,56(sp)
    80002890:	03013403          	ld	s0,48(sp)
    80002894:	02813483          	ld	s1,40(sp)
    80002898:	04010113          	addi	sp,sp,64
    8000289c:	00008067          	ret

00000000800028a0 <_ZN7Console13console_setupEPv>:
    }
    return *console_instance;

}

void Console::console_setup(void *myConsole) {
    800028a0:	fe010113          	addi	sp,sp,-32
    800028a4:	00113c23          	sd	ra,24(sp)
    800028a8:	00813823          	sd	s0,16(sp)
    800028ac:	00913423          	sd	s1,8(sp)
    800028b0:	02010413          	addi	s0,sp,32
    800028b4:	00050493          	mv	s1,a0
    auto* cons = (Console*)myConsole;
    cons->input_buffer = (MyBuffer*)kmem_cache_alloc(MyBuffer::get_buffer_cache());
    800028b8:	fffff097          	auipc	ra,0xfffff
    800028bc:	23c080e7          	jalr	572(ra) # 80001af4 <_ZN8MyBuffer16get_buffer_cacheEv>
    800028c0:	00053503          	ld	a0,0(a0)
    800028c4:	00003097          	auipc	ra,0x3
    800028c8:	88c080e7          	jalr	-1908(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    800028cc:	00a4b023          	sd	a0,0(s1)
    cons->output_buffer = (MyBuffer*) kmem_cache_alloc(MyBuffer::get_buffer_cache());
    800028d0:	fffff097          	auipc	ra,0xfffff
    800028d4:	224080e7          	jalr	548(ra) # 80001af4 <_ZN8MyBuffer16get_buffer_cacheEv>
    800028d8:	00053503          	ld	a0,0(a0)
    800028dc:	00003097          	auipc	ra,0x3
    800028e0:	874080e7          	jalr	-1932(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    800028e4:	00a4b423          	sd	a0,8(s1)
}
    800028e8:	01813083          	ld	ra,24(sp)
    800028ec:	01013403          	ld	s0,16(sp)
    800028f0:	00813483          	ld	s1,8(sp)
    800028f4:	02010113          	addi	sp,sp,32
    800028f8:	00008067          	ret

00000000800028fc <_ZN7Console12put_in_inputEc>:
void Console::put_in_input(char c){
    800028fc:	ff010113          	addi	sp,sp,-16
    80002900:	00113423          	sd	ra,8(sp)
    80002904:	00813023          	sd	s0,0(sp)
    80002908:	01010413          	addi	s0,sp,16
    input_buffer->put(c);
    8000290c:	00053503          	ld	a0,0(a0)
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	000080e7          	jalr	ra # 80001910 <_ZN8MyBuffer3putEi>
}
    80002918:	00813083          	ld	ra,8(sp)
    8000291c:	00013403          	ld	s0,0(sp)
    80002920:	01010113          	addi	sp,sp,16
    80002924:	00008067          	ret

0000000080002928 <_ZN7Console14get_from_inputEv>:
char Console::get_from_input(){
    80002928:	ff010113          	addi	sp,sp,-16
    8000292c:	00113423          	sd	ra,8(sp)
    80002930:	00813023          	sd	s0,0(sp)
    80002934:	01010413          	addi	s0,sp,16
    return (char)input_buffer->get();
    80002938:	00053503          	ld	a0,0(a0)
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	084080e7          	jalr	132(ra) # 800019c0 <_ZN8MyBuffer3getEv>
}
    80002944:	0ff57513          	andi	a0,a0,255
    80002948:	00813083          	ld	ra,8(sp)
    8000294c:	00013403          	ld	s0,0(sp)
    80002950:	01010113          	addi	sp,sp,16
    80002954:	00008067          	ret

0000000080002958 <_ZN7Console13put_in_outputEc>:
void Console::put_in_output(char c){
    80002958:	ff010113          	addi	sp,sp,-16
    8000295c:	00113423          	sd	ra,8(sp)
    80002960:	00813023          	sd	s0,0(sp)
    80002964:	01010413          	addi	s0,sp,16
    output_buffer->put(c);
    80002968:	00853503          	ld	a0,8(a0)
    8000296c:	fffff097          	auipc	ra,0xfffff
    80002970:	fa4080e7          	jalr	-92(ra) # 80001910 <_ZN8MyBuffer3putEi>
}
    80002974:	00813083          	ld	ra,8(sp)
    80002978:	00013403          	ld	s0,0(sp)
    8000297c:	01010113          	addi	sp,sp,16
    80002980:	00008067          	ret

0000000080002984 <_ZN7Console15get_from_outputEv>:
char Console::get_from_output(){
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00113423          	sd	ra,8(sp)
    8000298c:	00813023          	sd	s0,0(sp)
    80002990:	01010413          	addi	s0,sp,16
    return (char)output_buffer->get();
    80002994:	00853503          	ld	a0,8(a0)
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	028080e7          	jalr	40(ra) # 800019c0 <_ZN8MyBuffer3getEv>
}
    800029a0:	0ff57513          	andi	a0,a0,255
    800029a4:	00813083          	ld	ra,8(sp)
    800029a8:	00013403          	ld	s0,0(sp)
    800029ac:	01010113          	addi	sp,sp,16
    800029b0:	00008067          	ret

00000000800029b4 <_ZN7Console11getInstanceEv>:
    if(!console_instance){
    800029b4:	0000d797          	auipc	a5,0xd
    800029b8:	f947b783          	ld	a5,-108(a5) # 8000f948 <_ZN7Console16console_instanceE>
    800029bc:	00078863          	beqz	a5,800029cc <_ZN7Console11getInstanceEv+0x18>
}
    800029c0:	0000d517          	auipc	a0,0xd
    800029c4:	f8853503          	ld	a0,-120(a0) # 8000f948 <_ZN7Console16console_instanceE>
    800029c8:	00008067          	ret
Console &Console::getInstance() {
    800029cc:	fe010113          	addi	sp,sp,-32
    800029d0:	00113c23          	sd	ra,24(sp)
    800029d4:	00813823          	sd	s0,16(sp)
    800029d8:	00913423          	sd	s1,8(sp)
    800029dc:	02010413          	addi	s0,sp,32
        console_cache = (kmem_cache_t*) kmem_cache_create("console_cache", sizeof(Console), &console_setup, nullptr);
    800029e0:	00000693          	li	a3,0
    800029e4:	00000617          	auipc	a2,0x0
    800029e8:	ebc60613          	addi	a2,a2,-324 # 800028a0 <_ZN7Console13console_setupEPv>
    800029ec:	01000593          	li	a1,16
    800029f0:	00009517          	auipc	a0,0x9
    800029f4:	66050513          	addi	a0,a0,1632 # 8000c050 <CONSOLE_STATUS+0x40>
    800029f8:	00002097          	auipc	ra,0x2
    800029fc:	6b0080e7          	jalr	1712(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80002a00:	0000d497          	auipc	s1,0xd
    80002a04:	f4848493          	addi	s1,s1,-184 # 8000f948 <_ZN7Console16console_instanceE>
    80002a08:	00a4b423          	sd	a0,8(s1)
        console_instance = (Console*)kmem_cache_alloc(console_cache);
    80002a0c:	00002097          	auipc	ra,0x2
    80002a10:	744080e7          	jalr	1860(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002a14:	00a4b023          	sd	a0,0(s1)
}
    80002a18:	0000d517          	auipc	a0,0xd
    80002a1c:	f3053503          	ld	a0,-208(a0) # 8000f948 <_ZN7Console16console_instanceE>
    80002a20:	01813083          	ld	ra,24(sp)
    80002a24:	01013403          	ld	s0,16(sp)
    80002a28:	00813483          	ld	s1,8(sp)
    80002a2c:	02010113          	addi	sp,sp,32
    80002a30:	00008067          	ret

0000000080002a34 <_ZN12kmem_cache_s16create_free_slabEv>:
        this->growing = true;
        return nullptr;
    }
}

void kmem_cache_s::create_free_slab() {
    80002a34:	fd010113          	addi	sp,sp,-48
    80002a38:	02113423          	sd	ra,40(sp)
    80002a3c:	02813023          	sd	s0,32(sp)
    80002a40:	00913c23          	sd	s1,24(sp)
    80002a44:	01213823          	sd	s2,16(sp)
    80002a48:	01313423          	sd	s3,8(sp)
    80002a4c:	01413023          	sd	s4,0(sp)
    80002a50:	03010413          	addi	s0,sp,48
    80002a54:	00050493          	mv	s1,a0

    void* buddyAlloc(size_t size);
    void buddyFree(size_t addr);

    static BuddySystem& getInstance(void *space = nullptr, int block_num = 0){
        static BuddySystem bs;
    80002a58:	0000d797          	auipc	a5,0xd
    80002a5c:	f087c783          	lbu	a5,-248(a5) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002a60:	06078863          	beqz	a5,80002ad0 <_ZN12kmem_cache_s16create_free_slabEv+0x9c>
    Slab* tmp = (Slab*)(BuddySystem::getInstance().buddyAlloc(this->num * this->objsize + sizeof(Slab) + this->num * sizeof(bool)));
    80002a64:	0304b583          	ld	a1,48(s1)
    80002a68:	0384b783          	ld	a5,56(s1)
    80002a6c:	00158593          	addi	a1,a1,1
    80002a70:	02f585b3          	mul	a1,a1,a5
    80002a74:	01858593          	addi	a1,a1,24
    80002a78:	0000d517          	auipc	a0,0xd
    80002a7c:	ef050513          	addi	a0,a0,-272 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002a80:	fffff097          	auipc	ra,0xfffff
    80002a84:	250080e7          	jalr	592(ra) # 80001cd0 <_ZN11BuddySystem10buddyAllocEm>
    80002a88:	00050a13          	mv	s4,a0
    tmp->num_active = 0;
    80002a8c:	00053023          	sd	zero,0(a0)
    tmp->next = nullptr;
    80002a90:	00053423          	sd	zero,8(a0)
    this->slabs_free = tmp;
    80002a94:	00a4b823          	sd	a0,16(s1)
    tmp->first_addr = ((size_t)tmp + sizeof(Slab) + this->size_of_arr * sizeof(size_t));
    80002a98:	0404b903          	ld	s2,64(s1)
    80002a9c:	00391913          	slli	s2,s2,0x3
    80002aa0:	01250933          	add	s2,a0,s2
    80002aa4:	01890913          	addi	s2,s2,24
    80002aa8:	01253823          	sd	s2,16(a0)

    for(size_t  i = 0; i < this->size_of_arr; i++){
    80002aac:	00000713          	li	a4,0
    80002ab0:	0404b783          	ld	a5,64(s1)
    80002ab4:	02f77e63          	bgeu	a4,a5,80002af0 <_ZN12kmem_cache_s16create_free_slabEv+0xbc>
        tmp->free_objects[i] = 0;
    80002ab8:	00270793          	addi	a5,a4,2
    80002abc:	00379793          	slli	a5,a5,0x3
    80002ac0:	00fa07b3          	add	a5,s4,a5
    80002ac4:	0007b423          	sd	zero,8(a5)
    for(size_t  i = 0; i < this->size_of_arr; i++){
    80002ac8:	00170713          	addi	a4,a4,1
    80002acc:	fe5ff06f          	j	80002ab0 <_ZN12kmem_cache_s16create_free_slabEv+0x7c>
    80002ad0:	0000d517          	auipc	a0,0xd
    80002ad4:	e9850513          	addi	a0,a0,-360 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002ad8:	fffff097          	auipc	ra,0xfffff
    80002adc:	088080e7          	jalr	136(ra) # 80001b60 <_ZN11BuddySystemC1Ev>
    80002ae0:	00100793          	li	a5,1
    80002ae4:	0000d717          	auipc	a4,0xd
    80002ae8:	e6f70e23          	sb	a5,-388(a4) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002aec:	f79ff06f          	j	80002a64 <_ZN12kmem_cache_s16create_free_slabEv+0x30>
    }

    // initialize slab if there is constructor
    if(this->ctor != nullptr){
    80002af0:	0504b783          	ld	a5,80(s1)
    80002af4:	02078663          	beqz	a5,80002b20 <_ZN12kmem_cache_s16create_free_slabEv+0xec>
        size_t addr = tmp->first_addr;
        for(size_t i = 0; i < this->num; i++){
    80002af8:	00000993          	li	s3,0
    80002afc:	0384b783          	ld	a5,56(s1)
    80002b00:	02f9f063          	bgeu	s3,a5,80002b20 <_ZN12kmem_cache_s16create_free_slabEv+0xec>
            this->ctor((void*)addr);
    80002b04:	0504b783          	ld	a5,80(s1)
    80002b08:	00090513          	mv	a0,s2
    80002b0c:	000780e7          	jalr	a5
            addr += objsize;
    80002b10:	0304b783          	ld	a5,48(s1)
    80002b14:	00f90933          	add	s2,s2,a5
        for(size_t i = 0; i < this->num; i++){
    80002b18:	00198993          	addi	s3,s3,1
    80002b1c:	fe1ff06f          	j	80002afc <_ZN12kmem_cache_s16create_free_slabEv+0xc8>
        }
    }

    // set free pointer and increment number of free slabs
    this->slabs_free = tmp;
    80002b20:	0144b823          	sd	s4,16(s1)
    this->num_slabs_free++;
    80002b24:	0284b783          	ld	a5,40(s1)
    80002b28:	00178793          	addi	a5,a5,1
    80002b2c:	02f4b423          	sd	a5,40(s1)
}
    80002b30:	02813083          	ld	ra,40(sp)
    80002b34:	02013403          	ld	s0,32(sp)
    80002b38:	01813483          	ld	s1,24(sp)
    80002b3c:	01013903          	ld	s2,16(sp)
    80002b40:	00813983          	ld	s3,8(sp)
    80002b44:	00013a03          	ld	s4,0(sp)
    80002b48:	03010113          	addi	sp,sp,48
    80002b4c:	00008067          	ret

0000000080002b50 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>:
void* kmem_cache_s::kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    80002b50:	fc010113          	addi	sp,sp,-64
    80002b54:	02113c23          	sd	ra,56(sp)
    80002b58:	02813823          	sd	s0,48(sp)
    80002b5c:	02913423          	sd	s1,40(sp)
    80002b60:	03213023          	sd	s2,32(sp)
    80002b64:	01313c23          	sd	s3,24(sp)
    80002b68:	01413823          	sd	s4,16(sp)
    80002b6c:	01513423          	sd	s5,8(sp)
    80002b70:	04010413          	addi	s0,sp,64
    80002b74:	00050993          	mv	s3,a0
    80002b78:	00058913          	mv	s2,a1
    80002b7c:	00060a93          	mv	s5,a2
    80002b80:	00068a13          	mv	s4,a3
    for(kmem_cache_s* curr = kmem_cache_s::head; curr; curr = curr->next){
    80002b84:	0000d797          	auipc	a5,0xd
    80002b88:	dd47b783          	ld	a5,-556(a5) # 8000f958 <_ZN12kmem_cache_s4headE>
    80002b8c:	00078a63          	beqz	a5,80002ba0 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x50>
        if(curr->name == name){
    80002b90:	0607b703          	ld	a4,96(a5)
    80002b94:	15370663          	beq	a4,s3,80002ce0 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x190>
    for(kmem_cache_s* curr = kmem_cache_s::head; curr; curr = curr->next){
    80002b98:	0687b783          	ld	a5,104(a5)
    80002b9c:	ff1ff06f          	j	80002b8c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x3c>
    80002ba0:	0000d797          	auipc	a5,0xd
    80002ba4:	dc07c783          	lbu	a5,-576(a5) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002ba8:	08078063          	beqz	a5,80002c28 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xd8>
    kmem_cache_s* tmp = (kmem_cache_s*)BuddySystem::getInstance().buddyAlloc(BLOCK_SIZE - sizeof(size_t));
    80002bac:	000015b7          	lui	a1,0x1
    80002bb0:	ff858593          	addi	a1,a1,-8 # ff8 <_entry-0x7ffff008>
    80002bb4:	0000d517          	auipc	a0,0xd
    80002bb8:	db450513          	addi	a0,a0,-588 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002bbc:	fffff097          	auipc	ra,0xfffff
    80002bc0:	114080e7          	jalr	276(ra) # 80001cd0 <_ZN11BuddySystem10buddyAllocEm>
    80002bc4:	00050493          	mv	s1,a0
    tmp->name = name;
    80002bc8:	07353023          	sd	s3,96(a0)
    tmp->objsize = size;
    80002bcc:	03253823          	sd	s2,48(a0)
    tmp->ctor = ctor;
    80002bd0:	05553823          	sd	s5,80(a0)
    tmp->dtor = dtor;
    80002bd4:	05453c23          	sd	s4,88(a0)
    tmp->slabs_full = tmp->slabs_partial = tmp->slabs_free = nullptr;
    80002bd8:	00053823          	sd	zero,16(a0)
    80002bdc:	00053423          	sd	zero,8(a0)
    80002be0:	00053023          	sd	zero,0(a0)
    tmp->num_slabs_full = tmp->num_slabs_partial = tmp->num_slabs_free = tmp->num_active_obj = tmp->shrink = 0;
    80002be4:	08053023          	sd	zero,128(a0)
    80002be8:	06053823          	sd	zero,112(a0)
    80002bec:	02053423          	sd	zero,40(a0)
    80002bf0:	02053023          	sd	zero,32(a0)
    80002bf4:	00053c23          	sd	zero,24(a0)
    tmp->growing = false;
    80002bf8:	06050c23          	sb	zero,120(a0)
    tmp->size_in_blocks = 1;
    80002bfc:	00100793          	li	a5,1
    80002c00:	04f53423          	sd	a5,72(a0)
    size_t min_size_of_objects = tmp->objsize * NUM_OF_OBJECTS_IN_SLAB;
    80002c04:	00291613          	slli	a2,s2,0x2
    80002c08:	01260633          	add	a2,a2,s2
    while(tmp->size_in_blocks * BLOCK_SIZE < sizeof(size_t)*2 + sizeof(Slab) + min_size_of_arr + min_size_of_objects){
    80002c0c:	0484b703          	ld	a4,72(s1)
    80002c10:	00c71693          	slli	a3,a4,0xc
    80002c14:	03860793          	addi	a5,a2,56
    80002c18:	06f6f663          	bgeu	a3,a5,80002c84 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x134>
        tmp->size_in_blocks++;
    80002c1c:	00170713          	addi	a4,a4,1
    80002c20:	04e4b423          	sd	a4,72(s1)
    while(tmp->size_in_blocks * BLOCK_SIZE < sizeof(size_t)*2 + sizeof(Slab) + min_size_of_arr + min_size_of_objects){
    80002c24:	fe9ff06f          	j	80002c0c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xbc>
    80002c28:	0000d517          	auipc	a0,0xd
    80002c2c:	d4050513          	addi	a0,a0,-704 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002c30:	fffff097          	auipc	ra,0xfffff
    80002c34:	f30080e7          	jalr	-208(ra) # 80001b60 <_ZN11BuddySystemC1Ev>
    80002c38:	00100793          	li	a5,1
    80002c3c:	0000d717          	auipc	a4,0xd
    80002c40:	d2f70223          	sb	a5,-732(a4) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002c44:	f69ff06f          	j	80002bac <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x5c>
void* kmem_cache_s::kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    80002c48:	00050813          	mv	a6,a0
    while((how_many_objects_into_one_slab + 1) * tmp->objsize <=
    80002c4c:	0018069b          	addiw	a3,a6,1
    80002c50:	0006851b          	sext.w	a0,a3
    80002c54:	032508b3          	mul	a7,a0,s2
            (int)(tmp->size_in_blocks * BLOCK_SIZE - sizeof(size_t)*2 - sizeof(Slab) - current_size_of_arr * sizeof(size_t))){
    80002c58:	00971793          	slli	a5,a4,0x9
    80002c5c:	40b787b3          	sub	a5,a5,a1
    80002c60:	20000637          	lui	a2,0x20000
    80002c64:	ffb6061b          	addiw	a2,a2,-5
    80002c68:	00c787bb          	addw	a5,a5,a2
    80002c6c:	0037979b          	slliw	a5,a5,0x3
    while((how_many_objects_into_one_slab + 1) * tmp->objsize <=
    80002c70:	0317e063          	bltu	a5,a7,80002c90 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x140>
        if(++how_many_objects_into_one_slab % 8 == 0){
    80002c74:	0076f693          	andi	a3,a3,7
    80002c78:	fc0698e3          	bnez	a3,80002c48 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xf8>
            current_size_of_arr++;
    80002c7c:	0015859b          	addiw	a1,a1,1
    80002c80:	fc9ff06f          	j	80002c48 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xf8>
    int current_size_of_arr = 2;
    80002c84:	00200593          	li	a1,2
    int how_many_objects_into_one_slab = 10;
    80002c88:	00a00813          	li	a6,10
    80002c8c:	fc1ff06f          	j	80002c4c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xfc>
    tmp->num = how_many_objects_into_one_slab;
    80002c90:	0304bc23          	sd	a6,56(s1)
    tmp->size_of_arr = current_size_of_arr;
    80002c94:	04b4b023          	sd	a1,64(s1)
    tmp->create_free_slab();
    80002c98:	00048513          	mv	a0,s1
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	d98080e7          	jalr	-616(ra) # 80002a34 <_ZN12kmem_cache_s16create_free_slabEv>
    tmp->next = kmem_cache_s::head;
    80002ca4:	0000d797          	auipc	a5,0xd
    80002ca8:	cb478793          	addi	a5,a5,-844 # 8000f958 <_ZN12kmem_cache_s4headE>
    80002cac:	0007b703          	ld	a4,0(a5)
    80002cb0:	06e4b423          	sd	a4,104(s1)
    kmem_cache_s::head = tmp;
    80002cb4:	0097b023          	sd	s1,0(a5)
}
    80002cb8:	00048513          	mv	a0,s1
    80002cbc:	03813083          	ld	ra,56(sp)
    80002cc0:	03013403          	ld	s0,48(sp)
    80002cc4:	02813483          	ld	s1,40(sp)
    80002cc8:	02013903          	ld	s2,32(sp)
    80002ccc:	01813983          	ld	s3,24(sp)
    80002cd0:	01013a03          	ld	s4,16(sp)
    80002cd4:	00813a83          	ld	s5,8(sp)
    80002cd8:	04010113          	addi	sp,sp,64
    80002cdc:	00008067          	ret
            return nullptr;
    80002ce0:	00000493          	li	s1,0
    80002ce4:	fd5ff06f          	j	80002cb8 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x168>

0000000080002ce8 <_ZN4Slab8set_maskEib>:

void Slab::set_mask(int position,  bool flag){
    80002ce8:	ff010113          	addi	sp,sp,-16
    80002cec:	00813423          	sd	s0,8(sp)
    80002cf0:	01010413          	addi	s0,sp,16
    int pos = position / sizeof(size_t);
    80002cf4:	4035d813          	srai	a6,a1,0x3
    int relative_pos = position % sizeof(size_t);
    80002cf8:	0075f593          	andi	a1,a1,7
    size_t mask = 1;
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    80002cfc:	00000713          	li	a4,0
    size_t mask = 1;
    80002d00:	00100693          	li	a3,1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    80002d04:	00700793          	li	a5,7
    80002d08:	40b787b3          	sub	a5,a5,a1
    80002d0c:	00f77863          	bgeu	a4,a5,80002d1c <_ZN4Slab8set_maskEib+0x34>
        mask <<= 1;
    80002d10:	00169693          	slli	a3,a3,0x1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    80002d14:	0017071b          	addiw	a4,a4,1
    80002d18:	fedff06f          	j	80002d04 <_ZN4Slab8set_maskEib+0x1c>
    }
    if(flag){
    80002d1c:	02060463          	beqz	a2,80002d44 <_ZN4Slab8set_maskEib+0x5c>
        // setujemo bit na jedan
        this->free_objects[pos] |= mask;
    80002d20:	00280813          	addi	a6,a6,2
    80002d24:	00381813          	slli	a6,a6,0x3
    80002d28:	01050533          	add	a0,a0,a6
    80002d2c:	00853783          	ld	a5,8(a0)
    80002d30:	00d7e6b3          	or	a3,a5,a3
    80002d34:	00d53423          	sd	a3,8(a0)
        // setujemo bit na nula
        mask = ~mask;
        this->free_objects[pos] &= mask;
    }
    return;
}
    80002d38:	00813403          	ld	s0,8(sp)
    80002d3c:	01010113          	addi	sp,sp,16
    80002d40:	00008067          	ret
        mask = ~mask;
    80002d44:	fff6c693          	not	a3,a3
        this->free_objects[pos] &= mask;
    80002d48:	00280813          	addi	a6,a6,2
    80002d4c:	00381813          	slli	a6,a6,0x3
    80002d50:	01050533          	add	a0,a0,a6
    80002d54:	00853783          	ld	a5,8(a0)
    80002d58:	00d7f6b3          	and	a3,a5,a3
    80002d5c:	00d53423          	sd	a3,8(a0)
    return;
    80002d60:	fd9ff06f          	j	80002d38 <_ZN4Slab8set_maskEib+0x50>

0000000080002d64 <_ZN4Slab9is_activeEi>:

bool Slab::is_active(int position){
    80002d64:	ff010113          	addi	sp,sp,-16
    80002d68:	00813423          	sd	s0,8(sp)
    80002d6c:	01010413          	addi	s0,sp,16
    int pos = position / sizeof(size_t);
    80002d70:	4035d613          	srai	a2,a1,0x3
    int relative_pos = position % sizeof(size_t);
    80002d74:	0075f593          	andi	a1,a1,7
    size_t mask = 1;
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    80002d78:	00000713          	li	a4,0
    size_t mask = 1;
    80002d7c:	00100693          	li	a3,1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    80002d80:	00700793          	li	a5,7
    80002d84:	40b787b3          	sub	a5,a5,a1
    80002d88:	00f77863          	bgeu	a4,a5,80002d98 <_ZN4Slab9is_activeEi+0x34>
        mask <<= 1;
    80002d8c:	00169693          	slli	a3,a3,0x1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    80002d90:	0017071b          	addiw	a4,a4,1
    80002d94:	fedff06f          	j	80002d80 <_ZN4Slab9is_activeEi+0x1c>
    }
    return this->free_objects[pos] & mask;
    80002d98:	00260793          	addi	a5,a2,2 # 20000002 <_entry-0x5ffffffe>
    80002d9c:	00379793          	slli	a5,a5,0x3
    80002da0:	00f50533          	add	a0,a0,a5
    80002da4:	00853503          	ld	a0,8(a0)
    80002da8:	00d57533          	and	a0,a0,a3
}
    80002dac:	00a03533          	snez	a0,a0
    80002db0:	00813403          	ld	s0,8(sp)
    80002db4:	01010113          	addi	sp,sp,16
    80002db8:	00008067          	ret

0000000080002dbc <_ZN12kmem_cache_s15kmem_cache_freeEPv>:

// returns -1 if object not found and 0 if removal is completed
int kmem_cache_s::kmem_cache_free(void *objp) {
    80002dbc:	fd010113          	addi	sp,sp,-48
    80002dc0:	02113423          	sd	ra,40(sp)
    80002dc4:	02813023          	sd	s0,32(sp)
    80002dc8:	00913c23          	sd	s1,24(sp)
    80002dcc:	01213823          	sd	s2,16(sp)
    80002dd0:	01313423          	sd	s3,8(sp)
    80002dd4:	01413023          	sd	s4,0(sp)
    80002dd8:	03010413          	addi	s0,sp,48
    80002ddc:	00050a13          	mv	s4,a0
    80002de0:	00058993          	mv	s3,a1
    // check firstly in partial
    Slab* prev = nullptr;
    for(Slab* tmp = this->slabs_partial; tmp; tmp = tmp->next){
    80002de4:	00853483          	ld	s1,8(a0)
    Slab* prev = nullptr;
    80002de8:	00000913          	li	s2,0
    80002dec:	0180006f          	j	80002e04 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x48>
            tmp->decrement_num_of_active();
            size_t number_of_active = tmp->get_number_of_active_objects();
            if(number_of_active == 0){
                // move from partial to free
                if(prev)prev->next = tmp->next;
                else slabs_partial = tmp->next;
    80002df0:	0084b783          	ld	a5,8(s1)
    80002df4:	00fa3423          	sd	a5,8(s4)
    80002df8:	0940006f          	j	80002e8c <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xd0>
                this->num_slabs_partial--;
                this->num_slabs_free++;
            }
            return 0;
        }
        prev = tmp;
    80002dfc:	00048913          	mv	s2,s1
    for(Slab* tmp = this->slabs_partial; tmp; tmp = tmp->next){
    80002e00:	0084b483          	ld	s1,8(s1)
    80002e04:	0a048a63          	beqz	s1,80002eb8 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xfc>
        if((size_t)objp > (size_t)tmp &&
    80002e08:	ff34fae3          	bgeu	s1,s3,80002dfc <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x40>
        (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
    80002e0c:	048a3783          	ld	a5,72(s4)
    80002e10:	00c79793          	slli	a5,a5,0xc
    80002e14:	00f487b3          	add	a5,s1,a5
    80002e18:	ff878793          	addi	a5,a5,-8
        if((size_t)objp > (size_t)tmp &&
    80002e1c:	fef9f0e3          	bgeu	s3,a5,80002dfc <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x40>
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
    80002e20:	0104b583          	ld	a1,16(s1)
    80002e24:	40b98733          	sub	a4,s3,a1
    80002e28:	030a3583          	ld	a1,48(s4)
    80002e2c:	02b755b3          	divu	a1,a4,a1
            tmp->set_mask(position, false);
    80002e30:	00000613          	li	a2,0
    80002e34:	0005859b          	sext.w	a1,a1
    80002e38:	00048513          	mv	a0,s1
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	eac080e7          	jalr	-340(ra) # 80002ce8 <_ZN4Slab8set_maskEib>
            if(this->dtor){
    80002e44:	058a3783          	ld	a5,88(s4)
    80002e48:	00078663          	beqz	a5,80002e54 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x98>
                this->dtor(objp);
    80002e4c:	00098513          	mv	a0,s3
    80002e50:	000780e7          	jalr	a5
            if(this->ctor){
    80002e54:	050a3783          	ld	a5,80(s4)
    80002e58:	00078663          	beqz	a5,80002e64 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xa8>
                this->ctor(objp);
    80002e5c:	00098513          	mv	a0,s3
    80002e60:	000780e7          	jalr	a5
            this->num_active_obj--;
    80002e64:	070a3783          	ld	a5,112(s4)
    80002e68:	fff78793          	addi	a5,a5,-1
    80002e6c:	06fa3823          	sd	a5,112(s4)
public:
    void clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *));
    size_t get_number_of_active_objects(){return num_active;}
    void* return_first_free_object_and_rearange_list(int, int);
    void increment_num_of_active(){num_active++;}
    void decrement_num_of_active(){num_active--;}
    80002e70:	0004b783          	ld	a5,0(s1)
    80002e74:	fff78793          	addi	a5,a5,-1
    80002e78:	00f4b023          	sd	a5,0(s1)
            if(number_of_active == 0){
    80002e7c:	02079a63          	bnez	a5,80002eb0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xf4>
                if(prev)prev->next = tmp->next;
    80002e80:	f60908e3          	beqz	s2,80002df0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x34>
    80002e84:	0084b783          	ld	a5,8(s1)
    80002e88:	00f93423          	sd	a5,8(s2)
                tmp->next = this->slabs_free;
    80002e8c:	010a3783          	ld	a5,16(s4)
    80002e90:	00f4b423          	sd	a5,8(s1)
                this->slabs_free = tmp;
    80002e94:	009a3823          	sd	s1,16(s4)
                this->num_slabs_partial--;
    80002e98:	020a3783          	ld	a5,32(s4)
    80002e9c:	fff78793          	addi	a5,a5,-1
    80002ea0:	02fa3023          	sd	a5,32(s4)
                this->num_slabs_free++;
    80002ea4:	028a3783          	ld	a5,40(s4)
    80002ea8:	00178793          	addi	a5,a5,1
    80002eac:	02fa3423          	sd	a5,40(s4)
            return 0;
    80002eb0:	00000513          	li	a0,0
    80002eb4:	0d40006f          	j	80002f88 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1cc>
    }
    // check in full
    prev = nullptr;
    for(Slab* tmp = this->slabs_full; tmp; tmp = tmp->next){
    80002eb8:	000a3903          	ld	s2,0(s4)
    80002ebc:	0180006f          	j	80002ed4 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x118>
            this->num_active_obj--;
            tmp->decrement_num_of_active();

            // move from full to partial
            if(prev)prev->next = tmp->next;
            else slabs_full = tmp->next;
    80002ec0:	00893783          	ld	a5,8(s2)
    80002ec4:	00fa3023          	sd	a5,0(s4)
    80002ec8:	0900006f          	j	80002f58 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x19c>
            this->num_slabs_full--;
            this->num_slabs_partial++;

            return 0;
        }
        prev = tmp;
    80002ecc:	00090493          	mv	s1,s2
    for(Slab* tmp = this->slabs_full; tmp; tmp = tmp->next){
    80002ed0:	00893903          	ld	s2,8(s2)
    80002ed4:	0a090863          	beqz	s2,80002f84 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1c8>
        if((size_t)objp > (size_t)tmp &&
    80002ed8:	ff397ae3          	bgeu	s2,s3,80002ecc <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x110>
           (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
    80002edc:	048a3783          	ld	a5,72(s4)
    80002ee0:	00c79793          	slli	a5,a5,0xc
    80002ee4:	00f907b3          	add	a5,s2,a5
    80002ee8:	ff878793          	addi	a5,a5,-8
        if((size_t)objp > (size_t)tmp &&
    80002eec:	fef9f0e3          	bgeu	s3,a5,80002ecc <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x110>
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
    80002ef0:	01093583          	ld	a1,16(s2)
    80002ef4:	40b98733          	sub	a4,s3,a1
    80002ef8:	030a3583          	ld	a1,48(s4)
    80002efc:	02b755b3          	divu	a1,a4,a1
            tmp->set_mask(position, false);
    80002f00:	00000613          	li	a2,0
    80002f04:	0005859b          	sext.w	a1,a1
    80002f08:	00090513          	mv	a0,s2
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	ddc080e7          	jalr	-548(ra) # 80002ce8 <_ZN4Slab8set_maskEib>
            if(this->dtor){
    80002f14:	058a3783          	ld	a5,88(s4)
    80002f18:	00078663          	beqz	a5,80002f24 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x168>
                this->dtor(objp);
    80002f1c:	00098513          	mv	a0,s3
    80002f20:	000780e7          	jalr	a5
            if(this->ctor){
    80002f24:	050a3783          	ld	a5,80(s4)
    80002f28:	00078663          	beqz	a5,80002f34 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x178>
                this->ctor(objp);
    80002f2c:	00098513          	mv	a0,s3
    80002f30:	000780e7          	jalr	a5
            this->num_active_obj--;
    80002f34:	070a3783          	ld	a5,112(s4)
    80002f38:	fff78793          	addi	a5,a5,-1
    80002f3c:	06fa3823          	sd	a5,112(s4)
    80002f40:	00093783          	ld	a5,0(s2)
    80002f44:	fff78793          	addi	a5,a5,-1
    80002f48:	00f93023          	sd	a5,0(s2)
            if(prev)prev->next = tmp->next;
    80002f4c:	f6048ae3          	beqz	s1,80002ec0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x104>
    80002f50:	00893783          	ld	a5,8(s2)
    80002f54:	00f4b423          	sd	a5,8(s1)
            tmp->next = this->slabs_partial;
    80002f58:	008a3783          	ld	a5,8(s4)
    80002f5c:	00f93423          	sd	a5,8(s2)
            this->slabs_partial = tmp;
    80002f60:	012a3423          	sd	s2,8(s4)
            this->num_slabs_full--;
    80002f64:	018a3783          	ld	a5,24(s4)
    80002f68:	fff78793          	addi	a5,a5,-1
    80002f6c:	00fa3c23          	sd	a5,24(s4)
            this->num_slabs_partial++;
    80002f70:	020a3783          	ld	a5,32(s4)
    80002f74:	00178793          	addi	a5,a5,1
    80002f78:	02fa3023          	sd	a5,32(s4)
            return 0;
    80002f7c:	00000513          	li	a0,0
    80002f80:	0080006f          	j	80002f88 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1cc>
    }
    return -1;
    80002f84:	fff00513          	li	a0,-1
}
    80002f88:	02813083          	ld	ra,40(sp)
    80002f8c:	02013403          	ld	s0,32(sp)
    80002f90:	01813483          	ld	s1,24(sp)
    80002f94:	01013903          	ld	s2,16(sp)
    80002f98:	00813983          	ld	s3,8(sp)
    80002f9c:	00013a03          	ld	s4,0(sp)
    80002fa0:	03010113          	addi	sp,sp,48
    80002fa4:	00008067          	ret

0000000080002fa8 <_ZN12kmem_cache_s20check_if_name_existsEPKc>:
    void* elem = tmp->kmem_cache_alloc();
    return elem;
}

// returns cache with given name, or nullptr if there is no such cache
kmem_cache_s *kmem_cache_s::check_if_name_exists(const char* name) {
    80002fa8:	fe010113          	addi	sp,sp,-32
    80002fac:	00113c23          	sd	ra,24(sp)
    80002fb0:	00813823          	sd	s0,16(sp)
    80002fb4:	00913423          	sd	s1,8(sp)
    80002fb8:	01213023          	sd	s2,0(sp)
    80002fbc:	02010413          	addi	s0,sp,32
    80002fc0:	00050913          	mv	s2,a0
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80002fc4:	0000d497          	auipc	s1,0xd
    80002fc8:	9944b483          	ld	s1,-1644(s1) # 8000f958 <_ZN12kmem_cache_s4headE>
    80002fcc:	02048063          	beqz	s1,80002fec <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x44>
        if(string_compare(tmp->name, name)){
    80002fd0:	00090593          	mv	a1,s2
    80002fd4:	0604b503          	ld	a0,96(s1)
    80002fd8:	fffff097          	auipc	ra,0xfffff
    80002fdc:	62c080e7          	jalr	1580(ra) # 80002604 <_Z14string_comparePKcS0_>
    80002fe0:	00051663          	bnez	a0,80002fec <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x44>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80002fe4:	0684b483          	ld	s1,104(s1)
    80002fe8:	fe5ff06f          	j	80002fcc <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x24>
            return tmp;
        }
    }
    return nullptr;
}
    80002fec:	00048513          	mv	a0,s1
    80002ff0:	01813083          	ld	ra,24(sp)
    80002ff4:	01013403          	ld	s0,16(sp)
    80002ff8:	00813483          	ld	s1,8(sp)
    80002ffc:	00013903          	ld	s2,0(sp)
    80003000:	02010113          	addi	sp,sp,32
    80003004:	00008067          	ret

0000000080003008 <_ZN12kmem_cache_s3powEm>:

size_t kmem_cache_s::pow(size_t deg){
    80003008:	ff010113          	addi	sp,sp,-16
    8000300c:	00813423          	sd	s0,8(sp)
    80003010:	01010413          	addi	s0,sp,16
    80003014:	00050713          	mv	a4,a0
    size_t tmp = 1;
    for(size_t i = 0; i < deg; i++){
    80003018:	00000793          	li	a5,0
    size_t tmp = 1;
    8000301c:	00100513          	li	a0,1
    for(size_t i = 0; i < deg; i++){
    80003020:	00e7f863          	bgeu	a5,a4,80003030 <_ZN12kmem_cache_s3powEm+0x28>
        tmp <<= 1;
    80003024:	00151513          	slli	a0,a0,0x1
    for(size_t i = 0; i < deg; i++){
    80003028:	00178793          	addi	a5,a5,1
    8000302c:	ff5ff06f          	j	80003020 <_ZN12kmem_cache_s3powEm+0x18>
    }
    return tmp;
}
    80003030:	00813403          	ld	s0,8(sp)
    80003034:	01010113          	addi	sp,sp,16
    80003038:	00008067          	ret

000000008000303c <_ZN12kmem_cache_s28is_small_buffer_size_correctEm>:

int kmem_cache_s::is_small_buffer_size_correct(size_t size) {
    8000303c:	fe010113          	addi	sp,sp,-32
    80003040:	00113c23          	sd	ra,24(sp)
    80003044:	00813823          	sd	s0,16(sp)
    80003048:	00913423          	sd	s1,8(sp)
    8000304c:	02010413          	addi	s0,sp,32
    80003050:	00050493          	mv	s1,a0
    int deg = 5;
    size_t val = pow(deg);
    80003054:	00500513          	li	a0,5
    80003058:	00000097          	auipc	ra,0x0
    8000305c:	fb0080e7          	jalr	-80(ra) # 80003008 <_ZN12kmem_cache_s3powEm>
    int deg = 5;
    80003060:	00500793          	li	a5,5
    while(size > val){
    80003064:	00957863          	bgeu	a0,s1,80003074 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x38>
        deg++;
    80003068:	0017879b          	addiw	a5,a5,1
        val <<= 1;
    8000306c:	00151513          	slli	a0,a0,0x1
    while(size > val){
    80003070:	ff5ff06f          	j	80003064 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x28>
    }
    if(deg > 17)return 0;
    80003074:	01100713          	li	a4,17
    80003078:	00f74e63          	blt	a4,a5,80003094 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x58>
    return (int)val;
    8000307c:	0005051b          	sext.w	a0,a0
}
    80003080:	01813083          	ld	ra,24(sp)
    80003084:	01013403          	ld	s0,16(sp)
    80003088:	00813483          	ld	s1,8(sp)
    8000308c:	02010113          	addi	sp,sp,32
    80003090:	00008067          	ret
    if(deg > 17)return 0;
    80003094:	00000513          	li	a0,0
    80003098:	fe9ff06f          	j	80003080 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x44>

000000008000309c <_ZN12kmem_cache_s5kfreeEPKv>:

// returns 0 if delete is executed, -1 if not
int kmem_cache_s::kfree(const void *objp) {
    8000309c:	fe010113          	addi	sp,sp,-32
    800030a0:	00113c23          	sd	ra,24(sp)
    800030a4:	00813823          	sd	s0,16(sp)
    800030a8:	00913423          	sd	s1,8(sp)
    800030ac:	01213023          	sd	s2,0(sp)
    800030b0:	02010413          	addi	s0,sp,32
    800030b4:	00050913          	mv	s2,a0
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    800030b8:	0000d497          	auipc	s1,0xd
    800030bc:	8a04b483          	ld	s1,-1888(s1) # 8000f958 <_ZN12kmem_cache_s4headE>
    800030c0:	02048063          	beqz	s1,800030e0 <_ZN12kmem_cache_s5kfreeEPKv+0x44>
        if(tmp->kmem_cache_free((void*)objp) == 0)return 0;
    800030c4:	00090593          	mv	a1,s2
    800030c8:	00048513          	mv	a0,s1
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	cf0080e7          	jalr	-784(ra) # 80002dbc <_ZN12kmem_cache_s15kmem_cache_freeEPv>
    800030d4:	00050863          	beqz	a0,800030e4 <_ZN12kmem_cache_s5kfreeEPKv+0x48>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    800030d8:	0684b483          	ld	s1,104(s1)
    800030dc:	fe5ff06f          	j	800030c0 <_ZN12kmem_cache_s5kfreeEPKv+0x24>
    }
    // if not found return 1;
    return -1;
    800030e0:	fff00513          	li	a0,-1
}
    800030e4:	01813083          	ld	ra,24(sp)
    800030e8:	01013403          	ld	s0,16(sp)
    800030ec:	00813483          	ld	s1,8(sp)
    800030f0:	00013903          	ld	s2,0(sp)
    800030f4:	02010113          	addi	sp,sp,32
    800030f8:	00008067          	ret

00000000800030fc <_ZN12kmem_cache_s15kmem_cache_infoEv>:
        cache = cache->next;
    }
    return -1;
}

void kmem_cache_s::kmem_cache_info() {
    800030fc:	fd010113          	addi	sp,sp,-48
    80003100:	02113423          	sd	ra,40(sp)
    80003104:	02813023          	sd	s0,32(sp)
    80003108:	00913c23          	sd	s1,24(sp)
    8000310c:	01213823          	sd	s2,16(sp)
    80003110:	01313423          	sd	s3,8(sp)
    80003114:	01413023          	sd	s4,0(sp)
    80003118:	03010413          	addi	s0,sp,48
    8000311c:	00050913          	mv	s2,a0

    printString("------------------- CACHE INFO -------------------\n");
    80003120:	00009517          	auipc	a0,0x9
    80003124:	f4050513          	addi	a0,a0,-192 # 8000c060 <CONSOLE_STATUS+0x50>
    80003128:	00002097          	auipc	ra,0x2
    8000312c:	564080e7          	jalr	1380(ra) # 8000568c <_Z11printStringPKc>
    // print name and object size
    printString("Ime: ");
    80003130:	00009517          	auipc	a0,0x9
    80003134:	f6850513          	addi	a0,a0,-152 # 8000c098 <CONSOLE_STATUS+0x88>
    80003138:	00002097          	auipc	ra,0x2
    8000313c:	554080e7          	jalr	1364(ra) # 8000568c <_Z11printStringPKc>
    printString(name);
    80003140:	06093503          	ld	a0,96(s2)
    80003144:	00002097          	auipc	ra,0x2
    80003148:	548080e7          	jalr	1352(ra) # 8000568c <_Z11printStringPKc>
    printString("\n");
    8000314c:	00009517          	auipc	a0,0x9
    80003150:	12c50513          	addi	a0,a0,300 # 8000c278 <CONSOLE_STATUS+0x268>
    80003154:	00002097          	auipc	ra,0x2
    80003158:	538080e7          	jalr	1336(ra) # 8000568c <_Z11printStringPKc>
    printString("Velicina objekta: ");
    8000315c:	00009517          	auipc	a0,0x9
    80003160:	f4450513          	addi	a0,a0,-188 # 8000c0a0 <CONSOLE_STATUS+0x90>
    80003164:	00002097          	auipc	ra,0x2
    80003168:	528080e7          	jalr	1320(ra) # 8000568c <_Z11printStringPKc>
    printInt(objsize);
    8000316c:	00000613          	li	a2,0
    80003170:	00a00593          	li	a1,10
    80003174:	03092503          	lw	a0,48(s2)
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	6ac080e7          	jalr	1708(ra) # 80005824 <_Z8printIntiii>
    printString("\n");
    80003180:	00009517          	auipc	a0,0x9
    80003184:	0f850513          	addi	a0,a0,248 # 8000c278 <CONSOLE_STATUS+0x268>
    80003188:	00002097          	auipc	ra,0x2
    8000318c:	504080e7          	jalr	1284(ra) # 8000568c <_Z11printStringPKc>

    // print size of cache (in blocks)
    size_t num_of_slabs = num_slabs_full + num_slabs_partial + num_slabs_free;
    80003190:	01893983          	ld	s3,24(s2)
    80003194:	02093783          	ld	a5,32(s2)
    80003198:	00f989b3          	add	s3,s3,a5
    8000319c:	02893503          	ld	a0,40(s2)
    800031a0:	00a989b3          	add	s3,s3,a0
    size_t size_of_cache_in_blocks = num_of_slabs * size_in_blocks + 1;
    800031a4:	04893483          	ld	s1,72(s2)
    800031a8:	033484b3          	mul	s1,s1,s3
    800031ac:	00148493          	addi	s1,s1,1
    printString("Velicina kesa u blokovima: ");
    800031b0:	00009517          	auipc	a0,0x9
    800031b4:	f0850513          	addi	a0,a0,-248 # 8000c0b8 <CONSOLE_STATUS+0xa8>
    800031b8:	00002097          	auipc	ra,0x2
    800031bc:	4d4080e7          	jalr	1236(ra) # 8000568c <_Z11printStringPKc>
    printInt(size_of_cache_in_blocks);
    800031c0:	00000613          	li	a2,0
    800031c4:	00a00593          	li	a1,10
    800031c8:	0004851b          	sext.w	a0,s1
    800031cc:	00002097          	auipc	ra,0x2
    800031d0:	658080e7          	jalr	1624(ra) # 80005824 <_Z8printIntiii>
    printString("\n");
    800031d4:	00009517          	auipc	a0,0x9
    800031d8:	0a450513          	addi	a0,a0,164 # 8000c278 <CONSOLE_STATUS+0x268>
    800031dc:	00002097          	auipc	ra,0x2
    800031e0:	4b0080e7          	jalr	1200(ra) # 8000568c <_Z11printStringPKc>

    // print number of slabs in cache
    printString("Broj ploca u kesu: ");
    800031e4:	00009517          	auipc	a0,0x9
    800031e8:	ef450513          	addi	a0,a0,-268 # 8000c0d8 <CONSOLE_STATUS+0xc8>
    800031ec:	00002097          	auipc	ra,0x2
    800031f0:	4a0080e7          	jalr	1184(ra) # 8000568c <_Z11printStringPKc>
    printInt(num_of_slabs);
    800031f4:	00000613          	li	a2,0
    800031f8:	00a00593          	li	a1,10
    800031fc:	0009851b          	sext.w	a0,s3
    80003200:	00002097          	auipc	ra,0x2
    80003204:	624080e7          	jalr	1572(ra) # 80005824 <_Z8printIntiii>
    printString("\n");
    80003208:	00009517          	auipc	a0,0x9
    8000320c:	07050513          	addi	a0,a0,112 # 8000c278 <CONSOLE_STATUS+0x268>
    80003210:	00002097          	auipc	ra,0x2
    80003214:	47c080e7          	jalr	1148(ra) # 8000568c <_Z11printStringPKc>

    // number of objects in one slab
    printString("Broj objekata koji staju u jednu plocu: ");
    80003218:	00009517          	auipc	a0,0x9
    8000321c:	ed850513          	addi	a0,a0,-296 # 8000c0f0 <CONSOLE_STATUS+0xe0>
    80003220:	00002097          	auipc	ra,0x2
    80003224:	46c080e7          	jalr	1132(ra) # 8000568c <_Z11printStringPKc>
    printInt(num);
    80003228:	00000613          	li	a2,0
    8000322c:	00a00593          	li	a1,10
    80003230:	03892503          	lw	a0,56(s2)
    80003234:	00002097          	auipc	ra,0x2
    80003238:	5f0080e7          	jalr	1520(ra) # 80005824 <_Z8printIntiii>
    printString("\n");
    8000323c:	00009517          	auipc	a0,0x9
    80003240:	03c50513          	addi	a0,a0,60 # 8000c278 <CONSOLE_STATUS+0x268>
    80003244:	00002097          	auipc	ra,0x2
    80003248:	448080e7          	jalr	1096(ra) # 8000568c <_Z11printStringPKc>

    // number of objects in one slab
    printString("Broj aktivnih objekata u kesu: ");
    8000324c:	00009517          	auipc	a0,0x9
    80003250:	ed450513          	addi	a0,a0,-300 # 8000c120 <CONSOLE_STATUS+0x110>
    80003254:	00002097          	auipc	ra,0x2
    80003258:	438080e7          	jalr	1080(ra) # 8000568c <_Z11printStringPKc>
    printInt(num_active_obj);
    8000325c:	00000613          	li	a2,0
    80003260:	00a00593          	li	a1,10
    80003264:	07092503          	lw	a0,112(s2)
    80003268:	00002097          	auipc	ra,0x2
    8000326c:	5bc080e7          	jalr	1468(ra) # 80005824 <_Z8printIntiii>
    printString("\n");
    80003270:	00009517          	auipc	a0,0x9
    80003274:	00850513          	addi	a0,a0,8 # 8000c278 <CONSOLE_STATUS+0x268>
    80003278:	00002097          	auipc	ra,0x2
    8000327c:	414080e7          	jalr	1044(ra) # 8000568c <_Z11printStringPKc>

    // stanje u slabovima
    printString("slobodni: ");
    80003280:	00009517          	auipc	a0,0x9
    80003284:	ec050513          	addi	a0,a0,-320 # 8000c140 <CONSOLE_STATUS+0x130>
    80003288:	00002097          	auipc	ra,0x2
    8000328c:	404080e7          	jalr	1028(ra) # 8000568c <_Z11printStringPKc>
    for(Slab* tmp = slabs_free; tmp; tmp = tmp->next){
    80003290:	01093483          	ld	s1,16(s2)
    80003294:	02048863          	beqz	s1,800032c4 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x1c8>
        printInt(tmp->get_number_of_active_objects());
    80003298:	00000613          	li	a2,0
    8000329c:	00a00593          	li	a1,10
    800032a0:	0004a503          	lw	a0,0(s1)
    800032a4:	00002097          	auipc	ra,0x2
    800032a8:	580080e7          	jalr	1408(ra) # 80005824 <_Z8printIntiii>
        printString(" ");
    800032ac:	00009517          	auipc	a0,0x9
    800032b0:	50450513          	addi	a0,a0,1284 # 8000c7b0 <CONSOLE_STATUS+0x7a0>
    800032b4:	00002097          	auipc	ra,0x2
    800032b8:	3d8080e7          	jalr	984(ra) # 8000568c <_Z11printStringPKc>
    for(Slab* tmp = slabs_free; tmp; tmp = tmp->next){
    800032bc:	0084b483          	ld	s1,8(s1)
    800032c0:	fd5ff06f          	j	80003294 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x198>
    }
    printString("\n");
    800032c4:	00009517          	auipc	a0,0x9
    800032c8:	fb450513          	addi	a0,a0,-76 # 8000c278 <CONSOLE_STATUS+0x268>
    800032cc:	00002097          	auipc	ra,0x2
    800032d0:	3c0080e7          	jalr	960(ra) # 8000568c <_Z11printStringPKc>
    printString("zaprljani: ");
    800032d4:	00009517          	auipc	a0,0x9
    800032d8:	e7c50513          	addi	a0,a0,-388 # 8000c150 <CONSOLE_STATUS+0x140>
    800032dc:	00002097          	auipc	ra,0x2
    800032e0:	3b0080e7          	jalr	944(ra) # 8000568c <_Z11printStringPKc>
    for(Slab* tmp = slabs_partial; tmp; tmp = tmp->next){
    800032e4:	00893483          	ld	s1,8(s2)
    800032e8:	02048863          	beqz	s1,80003318 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x21c>
        printInt(tmp->get_number_of_active_objects());
    800032ec:	00000613          	li	a2,0
    800032f0:	00a00593          	li	a1,10
    800032f4:	0004a503          	lw	a0,0(s1)
    800032f8:	00002097          	auipc	ra,0x2
    800032fc:	52c080e7          	jalr	1324(ra) # 80005824 <_Z8printIntiii>
        printString(" ");
    80003300:	00009517          	auipc	a0,0x9
    80003304:	4b050513          	addi	a0,a0,1200 # 8000c7b0 <CONSOLE_STATUS+0x7a0>
    80003308:	00002097          	auipc	ra,0x2
    8000330c:	384080e7          	jalr	900(ra) # 8000568c <_Z11printStringPKc>
    for(Slab* tmp = slabs_partial; tmp; tmp = tmp->next){
    80003310:	0084b483          	ld	s1,8(s1)
    80003314:	fd5ff06f          	j	800032e8 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x1ec>
    }
    printString("\n");
    80003318:	00009517          	auipc	a0,0x9
    8000331c:	f6050513          	addi	a0,a0,-160 # 8000c278 <CONSOLE_STATUS+0x268>
    80003320:	00002097          	auipc	ra,0x2
    80003324:	36c080e7          	jalr	876(ra) # 8000568c <_Z11printStringPKc>
    printString("puni: ");
    80003328:	00009517          	auipc	a0,0x9
    8000332c:	e3850513          	addi	a0,a0,-456 # 8000c160 <CONSOLE_STATUS+0x150>
    80003330:	00002097          	auipc	ra,0x2
    80003334:	35c080e7          	jalr	860(ra) # 8000568c <_Z11printStringPKc>
    for(Slab* tmp = slabs_full; tmp; tmp = tmp->next){
    80003338:	00093483          	ld	s1,0(s2)
    8000333c:	02048863          	beqz	s1,8000336c <_ZN12kmem_cache_s15kmem_cache_infoEv+0x270>
        printInt(tmp->get_number_of_active_objects());
    80003340:	00000613          	li	a2,0
    80003344:	00a00593          	li	a1,10
    80003348:	0004a503          	lw	a0,0(s1)
    8000334c:	00002097          	auipc	ra,0x2
    80003350:	4d8080e7          	jalr	1240(ra) # 80005824 <_Z8printIntiii>
        printString(" ");
    80003354:	00009517          	auipc	a0,0x9
    80003358:	45c50513          	addi	a0,a0,1116 # 8000c7b0 <CONSOLE_STATUS+0x7a0>
    8000335c:	00002097          	auipc	ra,0x2
    80003360:	330080e7          	jalr	816(ra) # 8000568c <_Z11printStringPKc>
    for(Slab* tmp = slabs_full; tmp; tmp = tmp->next){
    80003364:	0084b483          	ld	s1,8(s1)
    80003368:	fd5ff06f          	j	8000333c <_ZN12kmem_cache_s15kmem_cache_infoEv+0x240>
    }
    printString("\n");
    8000336c:	00009517          	auipc	a0,0x9
    80003370:	f0c50513          	addi	a0,a0,-244 # 8000c278 <CONSOLE_STATUS+0x268>
    80003374:	00002097          	auipc	ra,0x2
    80003378:	318080e7          	jalr	792(ra) # 8000568c <_Z11printStringPKc>

    // number of times cache shrank
    printString("Broj uspesnih smanjenja kesa: ");
    8000337c:	00009517          	auipc	a0,0x9
    80003380:	dec50513          	addi	a0,a0,-532 # 8000c168 <CONSOLE_STATUS+0x158>
    80003384:	00002097          	auipc	ra,0x2
    80003388:	308080e7          	jalr	776(ra) # 8000568c <_Z11printStringPKc>
    printInt(shrink);
    8000338c:	00000613          	li	a2,0
    80003390:	00a00593          	li	a1,10
    80003394:	08092503          	lw	a0,128(s2)
    80003398:	00002097          	auipc	ra,0x2
    8000339c:	48c080e7          	jalr	1164(ra) # 80005824 <_Z8printIntiii>
    printString("\n");
    800033a0:	00009517          	auipc	a0,0x9
    800033a4:	ed850513          	addi	a0,a0,-296 # 8000c278 <CONSOLE_STATUS+0x268>
    800033a8:	00002097          	auipc	ra,0x2
    800033ac:	2e4080e7          	jalr	740(ra) # 8000568c <_Z11printStringPKc>

    // metedata
    printString("Velicina metapodataka za kmem_cache_s: ");
    800033b0:	00009517          	auipc	a0,0x9
    800033b4:	dd850513          	addi	a0,a0,-552 # 8000c188 <CONSOLE_STATUS+0x178>
    800033b8:	00002097          	auipc	ra,0x2
    800033bc:	2d4080e7          	jalr	724(ra) # 8000568c <_Z11printStringPKc>
    printInt(sizeof(kmem_cache_s));
    800033c0:	00000613          	li	a2,0
    800033c4:	00a00593          	li	a1,10
    800033c8:	08800513          	li	a0,136
    800033cc:	00002097          	auipc	ra,0x2
    800033d0:	458080e7          	jalr	1112(ra) # 80005824 <_Z8printIntiii>
    printString("\n");
    800033d4:	00009517          	auipc	a0,0x9
    800033d8:	ea450513          	addi	a0,a0,-348 # 8000c278 <CONSOLE_STATUS+0x268>
    800033dc:	00002097          	auipc	ra,0x2
    800033e0:	2b0080e7          	jalr	688(ra) # 8000568c <_Z11printStringPKc>
    printString("Velicina metapodataka za Slab: ");
    800033e4:	00009517          	auipc	a0,0x9
    800033e8:	dcc50513          	addi	a0,a0,-564 # 8000c1b0 <CONSOLE_STATUS+0x1a0>
    800033ec:	00002097          	auipc	ra,0x2
    800033f0:	2a0080e7          	jalr	672(ra) # 8000568c <_Z11printStringPKc>
    size_t size_of_slab = sizeof(Slab) + this->size_of_arr * sizeof(size_t) + sizeof(size_t);
    800033f4:	04093483          	ld	s1,64(s2)
    800033f8:	00448493          	addi	s1,s1,4
    800033fc:	00349493          	slli	s1,s1,0x3
    printInt(size_of_slab);
    80003400:	00000613          	li	a2,0
    80003404:	00a00593          	li	a1,10
    80003408:	0004851b          	sext.w	a0,s1
    8000340c:	00002097          	auipc	ra,0x2
    80003410:	418080e7          	jalr	1048(ra) # 80005824 <_Z8printIntiii>
    printString("\n");
    80003414:	00009517          	auipc	a0,0x9
    80003418:	e6450513          	addi	a0,a0,-412 # 8000c278 <CONSOLE_STATUS+0x268>
    8000341c:	00002097          	auipc	ra,0x2
    80003420:	270080e7          	jalr	624(ra) # 8000568c <_Z11printStringPKc>

    // percentage of fullfilment of cache
    size_t neto = sizeof(kmem_cache_s) + num_of_slabs * size_of_slab + num_active_obj * objsize;
    80003424:	029984b3          	mul	s1,s3,s1
    80003428:	07093783          	ld	a5,112(s2)
    8000342c:	03093703          	ld	a4,48(s2)
    80003430:	02e787b3          	mul	a5,a5,a4
    80003434:	00f484b3          	add	s1,s1,a5
    80003438:	08848493          	addi	s1,s1,136
    size_t bruto = (1 + num_of_slabs * size_in_blocks) * BLOCK_SIZE;
    8000343c:	04893a03          	ld	s4,72(s2)
    80003440:	033a0a33          	mul	s4,s4,s3
    80003444:	001a0a13          	addi	s4,s4,1
    80003448:	00ca1a13          	slli	s4,s4,0xc

    printString("Realna iskoriscenost prostora: ");
    8000344c:	00009517          	auipc	a0,0x9
    80003450:	d8450513          	addi	a0,a0,-636 # 8000c1d0 <CONSOLE_STATUS+0x1c0>
    80003454:	00002097          	auipc	ra,0x2
    80003458:	238080e7          	jalr	568(ra) # 8000568c <_Z11printStringPKc>
    printInt(neto);
    8000345c:	00000613          	li	a2,0
    80003460:	00a00593          	li	a1,10
    80003464:	0004851b          	sext.w	a0,s1
    80003468:	00002097          	auipc	ra,0x2
    8000346c:	3bc080e7          	jalr	956(ra) # 80005824 <_Z8printIntiii>
    printString("/");
    80003470:	00009517          	auipc	a0,0x9
    80003474:	d8050513          	addi	a0,a0,-640 # 8000c1f0 <CONSOLE_STATUS+0x1e0>
    80003478:	00002097          	auipc	ra,0x2
    8000347c:	214080e7          	jalr	532(ra) # 8000568c <_Z11printStringPKc>
    printInt(bruto);
    80003480:	00000613          	li	a2,0
    80003484:	00a00593          	li	a1,10
    80003488:	000a051b          	sext.w	a0,s4
    8000348c:	00002097          	auipc	ra,0x2
    80003490:	398080e7          	jalr	920(ra) # 80005824 <_Z8printIntiii>
    printString("\n");
    80003494:	00009517          	auipc	a0,0x9
    80003498:	de450513          	addi	a0,a0,-540 # 8000c278 <CONSOLE_STATUS+0x268>
    8000349c:	00002097          	auipc	ra,0x2
    800034a0:	1f0080e7          	jalr	496(ra) # 8000568c <_Z11printStringPKc>
    printString("Efektivna iskoriscenost prostora: ");
    800034a4:	00009517          	auipc	a0,0x9
    800034a8:	d5450513          	addi	a0,a0,-684 # 8000c1f8 <CONSOLE_STATUS+0x1e8>
    800034ac:	00002097          	auipc	ra,0x2
    800034b0:	1e0080e7          	jalr	480(ra) # 8000568c <_Z11printStringPKc>
    printInt(num_active_obj * objsize);
    800034b4:	07093503          	ld	a0,112(s2)
    800034b8:	03093783          	ld	a5,48(s2)
    800034bc:	00000613          	li	a2,0
    800034c0:	00a00593          	li	a1,10
    800034c4:	02f5053b          	mulw	a0,a0,a5
    800034c8:	00002097          	auipc	ra,0x2
    800034cc:	35c080e7          	jalr	860(ra) # 80005824 <_Z8printIntiii>
    printString("/");
    800034d0:	00009517          	auipc	a0,0x9
    800034d4:	d2050513          	addi	a0,a0,-736 # 8000c1f0 <CONSOLE_STATUS+0x1e0>
    800034d8:	00002097          	auipc	ra,0x2
    800034dc:	1b4080e7          	jalr	436(ra) # 8000568c <_Z11printStringPKc>
    size_t real_bruto = num_of_slabs * size_in_blocks * BLOCK_SIZE - num_of_slabs * sizeof(Slab);
    800034e0:	04893503          	ld	a0,72(s2)
    800034e4:	03350533          	mul	a0,a0,s3
    800034e8:	00c51513          	slli	a0,a0,0xc
    800034ec:	00199793          	slli	a5,s3,0x1
    800034f0:	013789b3          	add	s3,a5,s3
    800034f4:	00399993          	slli	s3,s3,0x3
    printInt(real_bruto);
    800034f8:	00000613          	li	a2,0
    800034fc:	00a00593          	li	a1,10
    80003500:	4135053b          	subw	a0,a0,s3
    80003504:	00002097          	auipc	ra,0x2
    80003508:	320080e7          	jalr	800(ra) # 80005824 <_Z8printIntiii>
    printString("\n");
    8000350c:	00009517          	auipc	a0,0x9
    80003510:	d6c50513          	addi	a0,a0,-660 # 8000c278 <CONSOLE_STATUS+0x268>
    80003514:	00002097          	auipc	ra,0x2
    80003518:	178080e7          	jalr	376(ra) # 8000568c <_Z11printStringPKc>

    printString("----------------------- END ----------------------\n");
    8000351c:	00009517          	auipc	a0,0x9
    80003520:	d0450513          	addi	a0,a0,-764 # 8000c220 <CONSOLE_STATUS+0x210>
    80003524:	00002097          	auipc	ra,0x2
    80003528:	168080e7          	jalr	360(ra) # 8000568c <_Z11printStringPKc>
}
    8000352c:	02813083          	ld	ra,40(sp)
    80003530:	02013403          	ld	s0,32(sp)
    80003534:	01813483          	ld	s1,24(sp)
    80003538:	01013903          	ld	s2,16(sp)
    8000353c:	00813983          	ld	s3,8(sp)
    80003540:	00013a03          	ld	s4,0(sp)
    80003544:	03010113          	addi	sp,sp,48
    80003548:	00008067          	ret

000000008000354c <_ZN12kmem_cache_s21print_info_all_cachesEv>:

void kmem_cache_s::print_info_all_caches() {
    8000354c:	fe010113          	addi	sp,sp,-32
    80003550:	00113c23          	sd	ra,24(sp)
    80003554:	00813823          	sd	s0,16(sp)
    80003558:	00913423          	sd	s1,8(sp)
    8000355c:	02010413          	addi	s0,sp,32
    printString("\n\t\t\t ### PRINT ALL CACHES ###\t\t\t\n");
    80003560:	00009517          	auipc	a0,0x9
    80003564:	cf850513          	addi	a0,a0,-776 # 8000c258 <CONSOLE_STATUS+0x248>
    80003568:	00002097          	auipc	ra,0x2
    8000356c:	124080e7          	jalr	292(ra) # 8000568c <_Z11printStringPKc>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003570:	0000c497          	auipc	s1,0xc
    80003574:	3e84b483          	ld	s1,1000(s1) # 8000f958 <_ZN12kmem_cache_s4headE>
    80003578:	00048c63          	beqz	s1,80003590 <_ZN12kmem_cache_s21print_info_all_cachesEv+0x44>
        tmp->kmem_cache_info();
    8000357c:	00048513          	mv	a0,s1
    80003580:	00000097          	auipc	ra,0x0
    80003584:	b7c080e7          	jalr	-1156(ra) # 800030fc <_ZN12kmem_cache_s15kmem_cache_infoEv>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003588:	0684b483          	ld	s1,104(s1)
    8000358c:	fedff06f          	j	80003578 <_ZN12kmem_cache_s21print_info_all_cachesEv+0x2c>
    }
    printString("\t\t\t\t    ### END ###\t\t\t\n");
    80003590:	00009517          	auipc	a0,0x9
    80003594:	cf050513          	addi	a0,a0,-784 # 8000c280 <CONSOLE_STATUS+0x270>
    80003598:	00002097          	auipc	ra,0x2
    8000359c:	0f4080e7          	jalr	244(ra) # 8000568c <_Z11printStringPKc>
}
    800035a0:	01813083          	ld	ra,24(sp)
    800035a4:	01013403          	ld	s0,16(sp)
    800035a8:	00813483          	ld	s1,8(sp)
    800035ac:	02010113          	addi	sp,sp,32
    800035b0:	00008067          	ret

00000000800035b4 <_ZN4Slab42return_first_free_object_and_rearange_listEii>:

void *Slab::return_first_free_object_and_rearange_list(int number_of_objects_in_slab, int size_of_object) {
    800035b4:	fd010113          	addi	sp,sp,-48
    800035b8:	02113423          	sd	ra,40(sp)
    800035bc:	02813023          	sd	s0,32(sp)
    800035c0:	00913c23          	sd	s1,24(sp)
    800035c4:	01213823          	sd	s2,16(sp)
    800035c8:	01313423          	sd	s3,8(sp)
    800035cc:	01413023          	sd	s4,0(sp)
    800035d0:	03010413          	addi	s0,sp,48
    800035d4:	00050993          	mv	s3,a0
    800035d8:	00058913          	mv	s2,a1
    800035dc:	00060a13          	mv	s4,a2
    int i = 0;
    800035e0:	00000493          	li	s1,0
    while(i < number_of_objects_in_slab && this->is_active(i)){
    800035e4:	0324d063          	bge	s1,s2,80003604 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x50>
    800035e8:	00048593          	mv	a1,s1
    800035ec:	00098513          	mv	a0,s3
    800035f0:	fffff097          	auipc	ra,0xfffff
    800035f4:	774080e7          	jalr	1908(ra) # 80002d64 <_ZN4Slab9is_activeEi>
    800035f8:	00050663          	beqz	a0,80003604 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x50>
        i++;
    800035fc:	0014849b          	addiw	s1,s1,1
    while(i < number_of_objects_in_slab && this->is_active(i)){
    80003600:	fe5ff06f          	j	800035e4 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x30>
    }
    if(i >= number_of_objects_in_slab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    80003604:	0524d263          	bge	s1,s2,80003648 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x94>
    this->set_mask(i, true);
    80003608:	00100613          	li	a2,1
    8000360c:	00048593          	mv	a1,s1
    80003610:	00098513          	mv	a0,s3
    80003614:	fffff097          	auipc	ra,0xfffff
    80003618:	6d4080e7          	jalr	1748(ra) # 80002ce8 <_ZN4Slab8set_maskEib>
    return (void*)(this->first_addr + size_of_object * i);
    8000361c:	0109b503          	ld	a0,16(s3)
    80003620:	034484bb          	mulw	s1,s1,s4
    80003624:	00950533          	add	a0,a0,s1
}
    80003628:	02813083          	ld	ra,40(sp)
    8000362c:	02013403          	ld	s0,32(sp)
    80003630:	01813483          	ld	s1,24(sp)
    80003634:	01013903          	ld	s2,16(sp)
    80003638:	00813983          	ld	s3,8(sp)
    8000363c:	00013a03          	ld	s4,0(sp)
    80003640:	03010113          	addi	sp,sp,48
    80003644:	00008067          	ret
    if(i >= number_of_objects_in_slab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    80003648:	00000513          	li	a0,0
    8000364c:	fddff06f          	j	80003628 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x74>

0000000080003650 <_ZN12kmem_cache_s16kmem_cache_allocEv>:
void *kmem_cache_s::kmem_cache_alloc() {
    80003650:	fe010113          	addi	sp,sp,-32
    80003654:	00113c23          	sd	ra,24(sp)
    80003658:	00813823          	sd	s0,16(sp)
    8000365c:	00913423          	sd	s1,8(sp)
    80003660:	02010413          	addi	s0,sp,32
    80003664:	00050493          	mv	s1,a0
    if(num_slabs_partial != 0){
    80003668:	02053783          	ld	a5,32(a0)
    8000366c:	06079e63          	bnez	a5,800036e8 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x98>
    else if(num_slabs_free != 0){
    80003670:	02853783          	ld	a5,40(a0)
    80003674:	0e078263          	beqz	a5,80003758 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x108>
        void* addr1 = this->slabs_free->return_first_free_object_and_rearange_list(this->num, this->objsize);
    80003678:	03052603          	lw	a2,48(a0)
    8000367c:	03852583          	lw	a1,56(a0)
    80003680:	01053503          	ld	a0,16(a0)
    80003684:	00000097          	auipc	ra,0x0
    80003688:	f30080e7          	jalr	-208(ra) # 800035b4 <_ZN4Slab42return_first_free_object_and_rearange_listEii>
        this->num_active_obj++;
    8000368c:	0704b783          	ld	a5,112(s1)
    80003690:	00178793          	addi	a5,a5,1
    80003694:	06f4b823          	sd	a5,112(s1)
        Slab* tmp = this->slabs_free;
    80003698:	0104b783          	ld	a5,16(s1)
        this->slabs_free = this->slabs_free->next;
    8000369c:	0087b703          	ld	a4,8(a5)
    800036a0:	00e4b823          	sd	a4,16(s1)
        tmp->next = this->slabs_partial;
    800036a4:	0084b703          	ld	a4,8(s1)
    800036a8:	00e7b423          	sd	a4,8(a5)
    void increment_num_of_active(){num_active++;}
    800036ac:	0007b703          	ld	a4,0(a5)
    800036b0:	00170713          	addi	a4,a4,1
    800036b4:	00e7b023          	sd	a4,0(a5)
        this->slabs_partial = tmp;
    800036b8:	00f4b423          	sd	a5,8(s1)
        this->num_slabs_free--;
    800036bc:	0284b783          	ld	a5,40(s1)
    800036c0:	fff78793          	addi	a5,a5,-1
    800036c4:	02f4b423          	sd	a5,40(s1)
        this->num_slabs_partial++;
    800036c8:	0204b783          	ld	a5,32(s1)
    800036cc:	00178793          	addi	a5,a5,1
    800036d0:	02f4b023          	sd	a5,32(s1)
}
    800036d4:	01813083          	ld	ra,24(sp)
    800036d8:	01013403          	ld	s0,16(sp)
    800036dc:	00813483          	ld	s1,8(sp)
    800036e0:	02010113          	addi	sp,sp,32
    800036e4:	00008067          	ret
        void* addr = this->slabs_partial->return_first_free_object_and_rearange_list(this->num, this->objsize);
    800036e8:	03052603          	lw	a2,48(a0)
    800036ec:	03852583          	lw	a1,56(a0)
    800036f0:	00853503          	ld	a0,8(a0)
    800036f4:	00000097          	auipc	ra,0x0
    800036f8:	ec0080e7          	jalr	-320(ra) # 800035b4 <_ZN4Slab42return_first_free_object_and_rearange_listEii>
        this->num_active_obj++;
    800036fc:	0704b783          	ld	a5,112(s1)
    80003700:	00178793          	addi	a5,a5,1
    80003704:	06f4b823          	sd	a5,112(s1)
        this->slabs_partial->increment_num_of_active();
    80003708:	0084b703          	ld	a4,8(s1)
    8000370c:	00073783          	ld	a5,0(a4)
    80003710:	00178793          	addi	a5,a5,1
    80003714:	00f73023          	sd	a5,0(a4)
        if(this->slabs_partial->get_number_of_active_objects() == this->num){
    80003718:	0084b783          	ld	a5,8(s1)
    size_t get_number_of_active_objects(){return num_active;}
    8000371c:	0007b703          	ld	a4,0(a5)
    80003720:	0384b683          	ld	a3,56(s1)
    80003724:	fae698e3          	bne	a3,a4,800036d4 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>
            this->slabs_partial = this->slabs_partial->next;
    80003728:	0087b703          	ld	a4,8(a5)
    8000372c:	00e4b423          	sd	a4,8(s1)
            tmp->next = this->slabs_full;
    80003730:	0004b703          	ld	a4,0(s1)
    80003734:	00e7b423          	sd	a4,8(a5)
            this->slabs_full = tmp;
    80003738:	00f4b023          	sd	a5,0(s1)
            this->num_slabs_partial--;
    8000373c:	0204b783          	ld	a5,32(s1)
    80003740:	fff78793          	addi	a5,a5,-1
    80003744:	02f4b023          	sd	a5,32(s1)
            this->num_slabs_full++;
    80003748:	0184b783          	ld	a5,24(s1)
    8000374c:	00178793          	addi	a5,a5,1
    80003750:	00f4bc23          	sd	a5,24(s1)
        return addr;
    80003754:	f81ff06f          	j	800036d4 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>
        create_free_slab();
    80003758:	fffff097          	auipc	ra,0xfffff
    8000375c:	2dc080e7          	jalr	732(ra) # 80002a34 <_ZN12kmem_cache_s16create_free_slabEv>
        this->growing = true;
    80003760:	00100793          	li	a5,1
    80003764:	06f48c23          	sb	a5,120(s1)
        return nullptr;
    80003768:	00000513          	li	a0,0
    8000376c:	f69ff06f          	j	800036d4 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>

0000000080003770 <_ZN12kmem_cache_s7kmallocEm>:
void *kmem_cache_s::kmalloc(size_t size) {
    80003770:	fe010113          	addi	sp,sp,-32
    80003774:	00113c23          	sd	ra,24(sp)
    80003778:	00813823          	sd	s0,16(sp)
    8000377c:	00913423          	sd	s1,8(sp)
    80003780:	01213023          	sd	s2,0(sp)
    80003784:	02010413          	addi	s0,sp,32
    80003788:	00050493          	mv	s1,a0
    const char* n = (const char*)concatenate_int_to_char_ptr((int)size);
    8000378c:	0005051b          	sext.w	a0,a0
    80003790:	fffff097          	auipc	ra,0xfffff
    80003794:	de4080e7          	jalr	-540(ra) # 80002574 <_Z27concatenate_int_to_char_ptri>
    80003798:	00050913          	mv	s2,a0
    kmem_cache_s* tmp = check_if_name_exists(n);
    8000379c:	00000097          	auipc	ra,0x0
    800037a0:	80c080e7          	jalr	-2036(ra) # 80002fa8 <_ZN12kmem_cache_s20check_if_name_existsEPKc>
    if(tmp == nullptr){
    800037a4:	02050263          	beqz	a0,800037c8 <_ZN12kmem_cache_s7kmallocEm+0x58>
    void* elem = tmp->kmem_cache_alloc();
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	ea8080e7          	jalr	-344(ra) # 80003650 <_ZN12kmem_cache_s16kmem_cache_allocEv>
}
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00813483          	ld	s1,8(sp)
    800037bc:	00013903          	ld	s2,0(sp)
    800037c0:	02010113          	addi	sp,sp,32
    800037c4:	00008067          	ret
        tmp = (kmem_cache_s*)kmem_cache_create(n, size, nullptr, nullptr);
    800037c8:	00000693          	li	a3,0
    800037cc:	00000613          	li	a2,0
    800037d0:	00048593          	mv	a1,s1
    800037d4:	00090513          	mv	a0,s2
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	378080e7          	jalr	888(ra) # 80002b50 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>
        if(!tmp)return nullptr;
    800037e0:	fc0514e3          	bnez	a0,800037a8 <_ZN12kmem_cache_s7kmallocEm+0x38>
    800037e4:	fcdff06f          	j	800037b0 <_ZN12kmem_cache_s7kmallocEm+0x40>

00000000800037e8 <_ZN4Slab10clear_slabEiiPFvPvE>:

void Slab::clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *)) {
    if(dtor == nullptr)return;
    800037e8:	08068a63          	beqz	a3,8000387c <_ZN4Slab10clear_slabEiiPFvPvE+0x94>
void Slab::clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *)) {
    800037ec:	fc010113          	addi	sp,sp,-64
    800037f0:	02113c23          	sd	ra,56(sp)
    800037f4:	02813823          	sd	s0,48(sp)
    800037f8:	02913423          	sd	s1,40(sp)
    800037fc:	03213023          	sd	s2,32(sp)
    80003800:	01313c23          	sd	s3,24(sp)
    80003804:	01413823          	sd	s4,16(sp)
    80003808:	01513423          	sd	s5,8(sp)
    8000380c:	04010413          	addi	s0,sp,64
    80003810:	00050913          	mv	s2,a0
    80003814:	00058993          	mv	s3,a1
    80003818:	00060a93          	mv	s5,a2
    8000381c:	00068a13          	mv	s4,a3
    for(int i = 0; i < num_of_objects_in_slab; i++){
    80003820:	00000493          	li	s1,0
    80003824:	0080006f          	j	8000382c <_ZN4Slab10clear_slabEiiPFvPvE+0x44>
    80003828:	0014849b          	addiw	s1,s1,1
    8000382c:	0334d663          	bge	s1,s3,80003858 <_ZN4Slab10clear_slabEiiPFvPvE+0x70>
        if(this->is_active(i)){
    80003830:	00048593          	mv	a1,s1
    80003834:	00090513          	mv	a0,s2
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	52c080e7          	jalr	1324(ra) # 80002d64 <_ZN4Slab9is_activeEi>
    80003840:	fe0504e3          	beqz	a0,80003828 <_ZN4Slab10clear_slabEiiPFvPvE+0x40>
            dtor((void*)(this->first_addr + i * objsize));
    80003844:	01093503          	ld	a0,16(s2)
    80003848:	035487bb          	mulw	a5,s1,s5
    8000384c:	00f50533          	add	a0,a0,a5
    80003850:	000a00e7          	jalr	s4
    80003854:	fd5ff06f          	j	80003828 <_ZN4Slab10clear_slabEiiPFvPvE+0x40>
        }
    }
}
    80003858:	03813083          	ld	ra,56(sp)
    8000385c:	03013403          	ld	s0,48(sp)
    80003860:	02813483          	ld	s1,40(sp)
    80003864:	02013903          	ld	s2,32(sp)
    80003868:	01813983          	ld	s3,24(sp)
    8000386c:	01013a03          	ld	s4,16(sp)
    80003870:	00813a83          	ld	s5,8(sp)
    80003874:	04010113          	addi	sp,sp,64
    80003878:	00008067          	ret
    8000387c:	00008067          	ret

0000000080003880 <_ZN12kmem_cache_s17kmem_cache_shrinkEv>:
size_t kmem_cache_s::kmem_cache_shrink() {
    80003880:	fd010113          	addi	sp,sp,-48
    80003884:	02113423          	sd	ra,40(sp)
    80003888:	02813023          	sd	s0,32(sp)
    8000388c:	00913c23          	sd	s1,24(sp)
    80003890:	01213823          	sd	s2,16(sp)
    80003894:	01313423          	sd	s3,8(sp)
    80003898:	01413023          	sd	s4,0(sp)
    8000389c:	03010413          	addi	s0,sp,48
    800038a0:	00050913          	mv	s2,a0
    if(this->growing){
    800038a4:	07854783          	lbu	a5,120(a0)
    800038a8:	00079863          	bnez	a5,800038b8 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x38>
    Slab* curr = this->slabs_free, *prev;
    800038ac:	01053483          	ld	s1,16(a0)
    int cnt = (int)this->num_slabs_free;
    800038b0:	02852a03          	lw	s4,40(a0)
    800038b4:	0440006f          	j	800038f8 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x78>
        this->growing = false;
    800038b8:	06050c23          	sb	zero,120(a0)
        return 0;
    800038bc:	00000513          	li	a0,0
    800038c0:	0880006f          	j	80003948 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0xc8>
    800038c4:	0000c517          	auipc	a0,0xc
    800038c8:	0a450513          	addi	a0,a0,164 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	294080e7          	jalr	660(ra) # 80001b60 <_ZN11BuddySystemC1Ev>
    800038d4:	00100793          	li	a5,1
    800038d8:	0000c717          	auipc	a4,0xc
    800038dc:	08f70423          	sb	a5,136(a4) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    800038e0:	00048593          	mv	a1,s1
    800038e4:	0000c517          	auipc	a0,0xc
    800038e8:	08450513          	addi	a0,a0,132 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	574080e7          	jalr	1396(ra) # 80001e60 <_ZN11BuddySystem9buddyFreeEm>
        curr = curr->next;
    800038f4:	00098493          	mv	s1,s3
    while(curr){
    800038f8:	02048863          	beqz	s1,80003928 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0xa8>
        curr = curr->next;
    800038fc:	0084b983          	ld	s3,8(s1)
        prev->clear_slab(num, objsize, dtor);
    80003900:	05893683          	ld	a3,88(s2)
    80003904:	03092603          	lw	a2,48(s2)
    80003908:	03892583          	lw	a1,56(s2)
    8000390c:	00048513          	mv	a0,s1
    80003910:	00000097          	auipc	ra,0x0
    80003914:	ed8080e7          	jalr	-296(ra) # 800037e8 <_ZN4Slab10clear_slabEiiPFvPvE>
    80003918:	0000c797          	auipc	a5,0xc
    8000391c:	0487c783          	lbu	a5,72(a5) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003920:	fc0790e3          	bnez	a5,800038e0 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x60>
    80003924:	fa1ff06f          	j	800038c4 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x44>
    this->slabs_free = nullptr;
    80003928:	00093823          	sd	zero,16(s2)
    this->num_slabs_free = 0;
    8000392c:	02093423          	sd	zero,40(s2)
    this->growing = false;
    80003930:	06090c23          	sb	zero,120(s2)
    this->shrink++;
    80003934:	08093783          	ld	a5,128(s2)
    80003938:	00178793          	addi	a5,a5,1
    8000393c:	08f93023          	sd	a5,128(s2)
    return cnt * this->size_in_blocks;
    80003940:	04893503          	ld	a0,72(s2)
    80003944:	02aa0533          	mul	a0,s4,a0
}
    80003948:	02813083          	ld	ra,40(sp)
    8000394c:	02013403          	ld	s0,32(sp)
    80003950:	01813483          	ld	s1,24(sp)
    80003954:	01013903          	ld	s2,16(sp)
    80003958:	00813983          	ld	s3,8(sp)
    8000395c:	00013a03          	ld	s4,0(sp)
    80003960:	03010113          	addi	sp,sp,48
    80003964:	00008067          	ret

0000000080003968 <_ZN12kmem_cache_s18kmem_cache_destroyEm>:
int kmem_cache_s::kmem_cache_destroy(size_t addr) {
    80003968:	fd010113          	addi	sp,sp,-48
    8000396c:	02113423          	sd	ra,40(sp)
    80003970:	02813023          	sd	s0,32(sp)
    80003974:	00913c23          	sd	s1,24(sp)
    80003978:	01213823          	sd	s2,16(sp)
    8000397c:	01313423          	sd	s3,8(sp)
    80003980:	01413023          	sd	s4,0(sp)
    80003984:	03010413          	addi	s0,sp,48
    80003988:	00050493          	mv	s1,a0
    8000398c:	00058a13          	mv	s4,a1
    Slab *prev = nullptr, *tmp = this->slabs_full;
    80003990:	00053903          	ld	s2,0(a0)
    80003994:	01c0006f          	j	800039b0 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x48>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003998:	00090593          	mv	a1,s2
    8000399c:	0000c517          	auipc	a0,0xc
    800039a0:	fcc50513          	addi	a0,a0,-52 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	4bc080e7          	jalr	1212(ra) # 80001e60 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    800039ac:	00098913          	mv	s2,s3
    while (tmp) {
    800039b0:	04090663          	beqz	s2,800039fc <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x94>
        tmp = tmp->next;
    800039b4:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    800039b8:	0584b683          	ld	a3,88(s1)
    800039bc:	0304a603          	lw	a2,48(s1)
    800039c0:	0384a583          	lw	a1,56(s1)
    800039c4:	00090513          	mv	a0,s2
    800039c8:	00000097          	auipc	ra,0x0
    800039cc:	e20080e7          	jalr	-480(ra) # 800037e8 <_ZN4Slab10clear_slabEiiPFvPvE>
    800039d0:	0000c797          	auipc	a5,0xc
    800039d4:	f907c783          	lbu	a5,-112(a5) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    800039d8:	fc0790e3          	bnez	a5,80003998 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x30>
    800039dc:	0000c517          	auipc	a0,0xc
    800039e0:	f8c50513          	addi	a0,a0,-116 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	17c080e7          	jalr	380(ra) # 80001b60 <_ZN11BuddySystemC1Ev>
    800039ec:	00100793          	li	a5,1
    800039f0:	0000c717          	auipc	a4,0xc
    800039f4:	f6f70823          	sb	a5,-144(a4) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    800039f8:	fa1ff06f          	j	80003998 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x30>
    prev = nullptr; tmp = this->slabs_partial;
    800039fc:	0084b903          	ld	s2,8(s1)
    80003a00:	0380006f          	j	80003a38 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xd0>
    80003a04:	0000c517          	auipc	a0,0xc
    80003a08:	f6450513          	addi	a0,a0,-156 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003a0c:	ffffe097          	auipc	ra,0xffffe
    80003a10:	154080e7          	jalr	340(ra) # 80001b60 <_ZN11BuddySystemC1Ev>
    80003a14:	00100793          	li	a5,1
    80003a18:	0000c717          	auipc	a4,0xc
    80003a1c:	f4f70423          	sb	a5,-184(a4) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003a20:	00090593          	mv	a1,s2
    80003a24:	0000c517          	auipc	a0,0xc
    80003a28:	f4450513          	addi	a0,a0,-188 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	434080e7          	jalr	1076(ra) # 80001e60 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003a34:	00098913          	mv	s2,s3
    while (tmp) {
    80003a38:	02090863          	beqz	s2,80003a68 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x100>
        tmp = tmp->next;
    80003a3c:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    80003a40:	0584b683          	ld	a3,88(s1)
    80003a44:	0304a603          	lw	a2,48(s1)
    80003a48:	0384a583          	lw	a1,56(s1)
    80003a4c:	00090513          	mv	a0,s2
    80003a50:	00000097          	auipc	ra,0x0
    80003a54:	d98080e7          	jalr	-616(ra) # 800037e8 <_ZN4Slab10clear_slabEiiPFvPvE>
    80003a58:	0000c797          	auipc	a5,0xc
    80003a5c:	f087c783          	lbu	a5,-248(a5) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003a60:	fc0790e3          	bnez	a5,80003a20 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xb8>
    80003a64:	fa1ff06f          	j	80003a04 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x9c>
    prev = nullptr; tmp = this->slabs_free;
    80003a68:	0104b903          	ld	s2,16(s1)
    80003a6c:	0380006f          	j	80003aa4 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x13c>
    80003a70:	0000c517          	auipc	a0,0xc
    80003a74:	ef850513          	addi	a0,a0,-264 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003a78:	ffffe097          	auipc	ra,0xffffe
    80003a7c:	0e8080e7          	jalr	232(ra) # 80001b60 <_ZN11BuddySystemC1Ev>
    80003a80:	00100793          	li	a5,1
    80003a84:	0000c717          	auipc	a4,0xc
    80003a88:	ecf70e23          	sb	a5,-292(a4) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003a8c:	00090593          	mv	a1,s2
    80003a90:	0000c517          	auipc	a0,0xc
    80003a94:	ed850513          	addi	a0,a0,-296 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003a98:	ffffe097          	auipc	ra,0xffffe
    80003a9c:	3c8080e7          	jalr	968(ra) # 80001e60 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003aa0:	00098913          	mv	s2,s3
    while (tmp) {
    80003aa4:	02090863          	beqz	s2,80003ad4 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x16c>
        tmp = tmp->next;
    80003aa8:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    80003aac:	0584b683          	ld	a3,88(s1)
    80003ab0:	0304a603          	lw	a2,48(s1)
    80003ab4:	0384a583          	lw	a1,56(s1)
    80003ab8:	00090513          	mv	a0,s2
    80003abc:	00000097          	auipc	ra,0x0
    80003ac0:	d2c080e7          	jalr	-724(ra) # 800037e8 <_ZN4Slab10clear_slabEiiPFvPvE>
    80003ac4:	0000c797          	auipc	a5,0xc
    80003ac8:	e9c7c783          	lbu	a5,-356(a5) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003acc:	fc0790e3          	bnez	a5,80003a8c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x124>
    80003ad0:	fa1ff06f          	j	80003a70 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x108>
    kmem_cache_s* cache = kmem_cache_s::head, *prev_cache = nullptr;
    80003ad4:	0000c797          	auipc	a5,0xc
    80003ad8:	e847b783          	ld	a5,-380(a5) # 8000f958 <_ZN12kmem_cache_s4headE>
    80003adc:	02c0006f          	j	80003b08 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1a0>
    80003ae0:	0000c517          	auipc	a0,0xc
    80003ae4:	e8850513          	addi	a0,a0,-376 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003ae8:	ffffe097          	auipc	ra,0xffffe
    80003aec:	078080e7          	jalr	120(ra) # 80001b60 <_ZN11BuddySystemC1Ev>
    80003af0:	00100793          	li	a5,1
    80003af4:	0000c717          	auipc	a4,0xc
    80003af8:	e6f70623          	sb	a5,-404(a4) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003afc:	0340006f          	j	80003b30 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1c8>
        prev_cache = cache;
    80003b00:	00078913          	mv	s2,a5
        cache = cache->next;
    80003b04:	0687b783          	ld	a5,104(a5)
    while(cache){
    80003b08:	04078263          	beqz	a5,80003b4c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1e4>
        if((size_t)cache == addr){
    80003b0c:	00078493          	mv	s1,a5
    80003b10:	ff4798e3          	bne	a5,s4,80003b00 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x198>
            if(prev_cache){
    80003b14:	fe0906e3          	beqz	s2,80003b00 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x198>
                prev_cache->next = cache->next;
    80003b18:	0687b703          	ld	a4,104(a5)
    80003b1c:	06e93423          	sd	a4,104(s2)
                cache->next = nullptr;
    80003b20:	0607b423          	sd	zero,104(a5)
    80003b24:	0000c797          	auipc	a5,0xc
    80003b28:	e3c7c783          	lbu	a5,-452(a5) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003b2c:	fa078ae3          	beqz	a5,80003ae0 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x178>
                BuddySystem::getInstance().buddyFree((size_t)cache);
    80003b30:	00048593          	mv	a1,s1
    80003b34:	0000c517          	auipc	a0,0xc
    80003b38:	e3450513          	addi	a0,a0,-460 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	324080e7          	jalr	804(ra) # 80001e60 <_ZN11BuddySystem9buddyFreeEm>
                return 0;
    80003b44:	00000513          	li	a0,0
    80003b48:	0080006f          	j	80003b50 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1e8>
    return -1;
    80003b4c:	fff00513          	li	a0,-1
}
    80003b50:	02813083          	ld	ra,40(sp)
    80003b54:	02013403          	ld	s0,32(sp)
    80003b58:	01813483          	ld	s1,24(sp)
    80003b5c:	01013903          	ld	s2,16(sp)
    80003b60:	00813983          	ld	s3,8(sp)
    80003b64:	00013a03          	ld	s4,0(sp)
    80003b68:	03010113          	addi	sp,sp,48
    80003b6c:	00008067          	ret

0000000080003b70 <_ZN6Thread11wrapper_runEPv>:
    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));

}

void Thread::wrapper_run(void* thread) {
    80003b70:	ff010113          	addi	sp,sp,-16
    80003b74:	00113423          	sd	ra,8(sp)
    80003b78:	00813023          	sd	s0,0(sp)
    80003b7c:	01010413          	addi	s0,sp,16
    ((Thread*)(thread))->run();
    80003b80:	00053783          	ld	a5,0(a0)
    80003b84:	0107b783          	ld	a5,16(a5)
    80003b88:	000780e7          	jalr	a5
}
    80003b8c:	00813083          	ld	ra,8(sp)
    80003b90:	00013403          	ld	s0,0(sp)
    80003b94:	01010113          	addi	sp,sp,16
    80003b98:	00008067          	ret

0000000080003b9c <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80003b9c:	fe010113          	addi	sp,sp,-32
    80003ba0:	00113c23          	sd	ra,24(sp)
    80003ba4:	00813823          	sd	s0,16(sp)
    80003ba8:	00913423          	sd	s1,8(sp)
    80003bac:	02010413          	addi	s0,sp,32
    80003bb0:	0000c797          	auipc	a5,0xc
    80003bb4:	a6878793          	addi	a5,a5,-1432 # 8000f618 <_ZTV6Thread+0x10>
    80003bb8:	00f53023          	sd	a5,0(a0)
    delete (TCB*)(myHandle);
    80003bbc:	00853483          	ld	s1,8(a0)
    80003bc0:	00048e63          	beqz	s1,80003bdc <_ZN6ThreadD1Ev+0x40>
        TCB** arr =  (TCB**)kmalloc(num_of_elem);
        return (void*)arr;
    }

    void operator delete(void* p)noexcept{
        kmem_cache_free(get_tcb_cache(), p);
    80003bc4:	00001097          	auipc	ra,0x1
    80003bc8:	c94080e7          	jalr	-876(ra) # 80004858 <_ZN3TCB13get_tcb_cacheEv>
    80003bcc:	00048593          	mv	a1,s1
    80003bd0:	00053503          	ld	a0,0(a0)
    80003bd4:	00001097          	auipc	ra,0x1
    80003bd8:	5d8080e7          	jalr	1496(ra) # 800051ac <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    80003bdc:	01813083          	ld	ra,24(sp)
    80003be0:	01013403          	ld	s0,16(sp)
    80003be4:	00813483          	ld	s1,8(sp)
    80003be8:	02010113          	addi	sp,sp,32
    80003bec:	00008067          	ret

0000000080003bf0 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80003bf0:	fe010113          	addi	sp,sp,-32
    80003bf4:	00113c23          	sd	ra,24(sp)
    80003bf8:	00813823          	sd	s0,16(sp)
    80003bfc:	00913423          	sd	s1,8(sp)
    80003c00:	02010413          	addi	s0,sp,32
    80003c04:	0000c797          	auipc	a5,0xc
    80003c08:	a3c78793          	addi	a5,a5,-1476 # 8000f640 <_ZTV9Semaphore+0x10>
    80003c0c:	00f53023          	sd	a5,0(a0)
    delete (MySemaphore*)myHandle;
    80003c10:	00853483          	ld	s1,8(a0)
    80003c14:	00048e63          	beqz	s1,80003c30 <_ZN9SemaphoreD1Ev+0x40>
        MySemaphore** arr =  (MySemaphore**)kmalloc(num_of_elem);
        return (void*)arr;
    }

    void operator delete(void* p)noexcept{
        kmem_cache_free(get_sem_cache(), p);
    80003c18:	ffffe097          	auipc	ra,0xffffe
    80003c1c:	6dc080e7          	jalr	1756(ra) # 800022f4 <_ZN11MySemaphore13get_sem_cacheEv>
    80003c20:	00048593          	mv	a1,s1
    80003c24:	00053503          	ld	a0,0(a0)
    80003c28:	00001097          	auipc	ra,0x1
    80003c2c:	584080e7          	jalr	1412(ra) # 800051ac <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    80003c30:	01813083          	ld	ra,24(sp)
    80003c34:	01013403          	ld	s0,16(sp)
    80003c38:	00813483          	ld	s1,8(sp)
    80003c3c:	02010113          	addi	sp,sp,32
    80003c40:	00008067          	ret

0000000080003c44 <_Znwm>:
void* operator new(size_t n) {
    80003c44:	ff010113          	addi	sp,sp,-16
    80003c48:	00113423          	sd	ra,8(sp)
    80003c4c:	00813023          	sd	s0,0(sp)
    80003c50:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80003c54:	ffffd097          	auipc	ra,0xffffd
    80003c58:	5f0080e7          	jalr	1520(ra) # 80001244 <mem_alloc>
}
    80003c5c:	00813083          	ld	ra,8(sp)
    80003c60:	00013403          	ld	s0,0(sp)
    80003c64:	01010113          	addi	sp,sp,16
    80003c68:	00008067          	ret

0000000080003c6c <_Znam>:
void* operator new[](size_t n) {
    80003c6c:	ff010113          	addi	sp,sp,-16
    80003c70:	00113423          	sd	ra,8(sp)
    80003c74:	00813023          	sd	s0,0(sp)
    80003c78:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80003c7c:	ffffd097          	auipc	ra,0xffffd
    80003c80:	5c8080e7          	jalr	1480(ra) # 80001244 <mem_alloc>
}
    80003c84:	00813083          	ld	ra,8(sp)
    80003c88:	00013403          	ld	s0,0(sp)
    80003c8c:	01010113          	addi	sp,sp,16
    80003c90:	00008067          	ret

0000000080003c94 <_ZdlPv>:
void operator delete(void* ptr) {
    80003c94:	ff010113          	addi	sp,sp,-16
    80003c98:	00113423          	sd	ra,8(sp)
    80003c9c:	00813023          	sd	s0,0(sp)
    80003ca0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80003ca4:	ffffd097          	auipc	ra,0xffffd
    80003ca8:	5f8080e7          	jalr	1528(ra) # 8000129c <mem_free>
}
    80003cac:	00813083          	ld	ra,8(sp)
    80003cb0:	00013403          	ld	s0,0(sp)
    80003cb4:	01010113          	addi	sp,sp,16
    80003cb8:	00008067          	ret

0000000080003cbc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80003cbc:	fe010113          	addi	sp,sp,-32
    80003cc0:	00113c23          	sd	ra,24(sp)
    80003cc4:	00813823          	sd	s0,16(sp)
    80003cc8:	00913423          	sd	s1,8(sp)
    80003ccc:	02010413          	addi	s0,sp,32
    80003cd0:	00050493          	mv	s1,a0
}
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	ec8080e7          	jalr	-312(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80003cdc:	00048513          	mv	a0,s1
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	fb4080e7          	jalr	-76(ra) # 80003c94 <_ZdlPv>
    80003ce8:	01813083          	ld	ra,24(sp)
    80003cec:	01013403          	ld	s0,16(sp)
    80003cf0:	00813483          	ld	s1,8(sp)
    80003cf4:	02010113          	addi	sp,sp,32
    80003cf8:	00008067          	ret

0000000080003cfc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003cfc:	fe010113          	addi	sp,sp,-32
    80003d00:	00113c23          	sd	ra,24(sp)
    80003d04:	00813823          	sd	s0,16(sp)
    80003d08:	00913423          	sd	s1,8(sp)
    80003d0c:	02010413          	addi	s0,sp,32
    80003d10:	00050493          	mv	s1,a0
}
    80003d14:	00000097          	auipc	ra,0x0
    80003d18:	edc080e7          	jalr	-292(ra) # 80003bf0 <_ZN9SemaphoreD1Ev>
    80003d1c:	00048513          	mv	a0,s1
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	f74080e7          	jalr	-140(ra) # 80003c94 <_ZdlPv>
    80003d28:	01813083          	ld	ra,24(sp)
    80003d2c:	01013403          	ld	s0,16(sp)
    80003d30:	00813483          	ld	s1,8(sp)
    80003d34:	02010113          	addi	sp,sp,32
    80003d38:	00008067          	ret

0000000080003d3c <_ZdaPv>:
void operator delete[](void* ptr) {
    80003d3c:	ff010113          	addi	sp,sp,-16
    80003d40:	00113423          	sd	ra,8(sp)
    80003d44:	00813023          	sd	s0,0(sp)
    80003d48:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80003d4c:	ffffd097          	auipc	ra,0xffffd
    80003d50:	550080e7          	jalr	1360(ra) # 8000129c <mem_free>
}
    80003d54:	00813083          	ld	ra,8(sp)
    80003d58:	00013403          	ld	s0,0(sp)
    80003d5c:	01010113          	addi	sp,sp,16
    80003d60:	00008067          	ret

0000000080003d64 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void *arg) {
    80003d64:	f9010113          	addi	sp,sp,-112
    80003d68:	06113423          	sd	ra,104(sp)
    80003d6c:	06813023          	sd	s0,96(sp)
    80003d70:	04913c23          	sd	s1,88(sp)
    80003d74:	05213823          	sd	s2,80(sp)
    80003d78:	05313423          	sd	s3,72(sp)
    80003d7c:	07010413          	addi	s0,sp,112
    80003d80:	00050493          	mv	s1,a0
    80003d84:	00058913          	mv	s2,a1
    80003d88:	00060993          	mv	s3,a2
    80003d8c:	0000c797          	auipc	a5,0xc
    80003d90:	88c78793          	addi	a5,a5,-1908 # 8000f618 <_ZTV6Thread+0x10>
    80003d94:	00f53023          	sd	a5,0(a0)
    void* stack = kmalloc(DEFAULT_STACK_SIZE);
    80003d98:	00001537          	lui	a0,0x1
    80003d9c:	00001097          	auipc	ra,0x1
    80003da0:	438080e7          	jalr	1080(ra) # 800051d4 <_Z7kmallocm>
    if(stack == nullptr){
    80003da4:	04050c63          	beqz	a0,80003dfc <_ZN6ThreadC1EPFvPvES0_+0x98>
    uint64 a4 = (body != nullptr) ? (uint64)stack : 0;
    80003da8:	04090e63          	beqz	s2,80003e04 <_ZN6ThreadC1EPFvPvES0_+0xa0>
    a1 = (uint64)&myHandle;
    80003dac:	00848493          	addi	s1,s1,8
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80003db0:	01100793          	li	a5,17
    80003db4:	f8f43823          	sd	a5,-112(s0)
    80003db8:	f8943c23          	sd	s1,-104(s0)
    80003dbc:	fb243023          	sd	s2,-96(s0)
    80003dc0:	fb343423          	sd	s3,-88(s0)
    80003dc4:	faa43823          	sd	a0,-80(s0)
    80003dc8:	fa043c23          	sd	zero,-72(s0)
    80003dcc:	fc043023          	sd	zero,-64(s0)
    80003dd0:	fc043423          	sd	zero,-56(s0)
    abi::sys_call(reinterpret_cast<void *>(empty));
    80003dd4:	f9040513          	addi	a0,s0,-112
    80003dd8:	00001097          	auipc	ra,0x1
    80003ddc:	08c080e7          	jalr	140(ra) # 80004e64 <_ZN3abi8sys_callEPv>
}
    80003de0:	06813083          	ld	ra,104(sp)
    80003de4:	06013403          	ld	s0,96(sp)
    80003de8:	05813483          	ld	s1,88(sp)
    80003dec:	05013903          	ld	s2,80(sp)
    80003df0:	04813983          	ld	s3,72(sp)
    80003df4:	07010113          	addi	sp,sp,112
    80003df8:	00008067          	ret
        this->myHandle = nullptr;
    80003dfc:	0004b423          	sd	zero,8(s1)
        return;
    80003e00:	fe1ff06f          	j	80003de0 <_ZN6ThreadC1EPFvPvES0_+0x7c>
    uint64 a4 = (body != nullptr) ? (uint64)stack : 0;
    80003e04:	00000513          	li	a0,0
    80003e08:	fa5ff06f          	j	80003dac <_ZN6ThreadC1EPFvPvES0_+0x48>

0000000080003e0c <_ZN6Thread5startEv>:
int Thread::start() {
    80003e0c:	ff010113          	addi	sp,sp,-16
    80003e10:	00113423          	sd	ra,8(sp)
    80003e14:	00813023          	sd	s0,0(sp)
    80003e18:	01010413          	addi	s0,sp,16
    put_in_scheduler(myHandle);
    80003e1c:	00853503          	ld	a0,8(a0) # 1008 <_entry-0x7fffeff8>
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	878080e7          	jalr	-1928(ra) # 80001698 <put_in_scheduler>
}
    80003e28:	00000513          	li	a0,0
    80003e2c:	00813083          	ld	ra,8(sp)
    80003e30:	00013403          	ld	s0,0(sp)
    80003e34:	01010113          	addi	sp,sp,16
    80003e38:	00008067          	ret

0000000080003e3c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003e3c:	ff010113          	addi	sp,sp,-16
    80003e40:	00113423          	sd	ra,8(sp)
    80003e44:	00813023          	sd	s0,0(sp)
    80003e48:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003e4c:	ffffd097          	auipc	ra,0xffffd
    80003e50:	554080e7          	jalr	1364(ra) # 800013a0 <thread_dispatch>
}
    80003e54:	00813083          	ld	ra,8(sp)
    80003e58:	00013403          	ld	s0,0(sp)
    80003e5c:	01010113          	addi	sp,sp,16
    80003e60:	00008067          	ret

0000000080003e64 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80003e64:	ff010113          	addi	sp,sp,-16
    80003e68:	00113423          	sd	ra,8(sp)
    80003e6c:	00813023          	sd	s0,0(sp)
    80003e70:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80003e74:	ffffd097          	auipc	ra,0xffffd
    80003e78:	5d0080e7          	jalr	1488(ra) # 80001444 <time_sleep>
}
    80003e7c:	00813083          	ld	ra,8(sp)
    80003e80:	00013403          	ld	s0,0(sp)
    80003e84:	01010113          	addi	sp,sp,16
    80003e88:	00008067          	ret

0000000080003e8c <_ZN14PeriodicThread3runEv>:
    time = period;
    flag_stop = true;
    set_periodic((thread_t)this);
}

void PeriodicThread::run() {
    80003e8c:	fe010113          	addi	sp,sp,-32
    80003e90:	00113c23          	sd	ra,24(sp)
    80003e94:	00813823          	sd	s0,16(sp)
    80003e98:	00913423          	sd	s1,8(sp)
    80003e9c:	02010413          	addi	s0,sp,32
    80003ea0:	00050493          	mv	s1,a0
    while(flag_stop){
    80003ea4:	0184c783          	lbu	a5,24(s1)
    80003ea8:	02078263          	beqz	a5,80003ecc <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80003eac:	0004b783          	ld	a5,0(s1)
    80003eb0:	0187b783          	ld	a5,24(a5)
    80003eb4:	00048513          	mv	a0,s1
    80003eb8:	000780e7          	jalr	a5
        sleep(time);
    80003ebc:	0104b503          	ld	a0,16(s1)
    80003ec0:	00000097          	auipc	ra,0x0
    80003ec4:	fa4080e7          	jalr	-92(ra) # 80003e64 <_ZN6Thread5sleepEm>
    while(flag_stop){
    80003ec8:	fddff06f          	j	80003ea4 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80003ecc:	01813083          	ld	ra,24(sp)
    80003ed0:	01013403          	ld	s0,16(sp)
    80003ed4:	00813483          	ld	s1,8(sp)
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret

0000000080003ee0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80003ee0:	fa010113          	addi	sp,sp,-96
    80003ee4:	04113c23          	sd	ra,88(sp)
    80003ee8:	04813823          	sd	s0,80(sp)
    80003eec:	04913423          	sd	s1,72(sp)
    80003ef0:	06010413          	addi	s0,sp,96
    80003ef4:	00050493          	mv	s1,a0
    80003ef8:	0000b797          	auipc	a5,0xb
    80003efc:	72078793          	addi	a5,a5,1824 # 8000f618 <_ZTV6Thread+0x10>
    80003f00:	00f53023          	sd	a5,0(a0)
    uint64 a4 = (uint64)mem_alloc(DEFAULT_STACK_SIZE);
    80003f04:	00001537          	lui	a0,0x1
    80003f08:	ffffd097          	auipc	ra,0xffffd
    80003f0c:	33c080e7          	jalr	828(ra) # 80001244 <mem_alloc>
    a1 = (uint64)&myHandle;
    80003f10:	00848793          	addi	a5,s1,8
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80003f14:	01100713          	li	a4,17
    80003f18:	fae43023          	sd	a4,-96(s0)
    80003f1c:	faf43423          	sd	a5,-88(s0)
    80003f20:	00000797          	auipc	a5,0x0
    80003f24:	c5078793          	addi	a5,a5,-944 # 80003b70 <_ZN6Thread11wrapper_runEPv>
    80003f28:	faf43823          	sd	a5,-80(s0)
    80003f2c:	fa943c23          	sd	s1,-72(s0)
    80003f30:	fca43023          	sd	a0,-64(s0)
    80003f34:	fc043423          	sd	zero,-56(s0)
    80003f38:	fc043823          	sd	zero,-48(s0)
    80003f3c:	fc043c23          	sd	zero,-40(s0)
    abi::sys_call(reinterpret_cast<void *>(empty));
    80003f40:	fa040513          	addi	a0,s0,-96
    80003f44:	00001097          	auipc	ra,0x1
    80003f48:	f20080e7          	jalr	-224(ra) # 80004e64 <_ZN3abi8sys_callEPv>
}
    80003f4c:	05813083          	ld	ra,88(sp)
    80003f50:	05013403          	ld	s0,80(sp)
    80003f54:	04813483          	ld	s1,72(sp)
    80003f58:	06010113          	addi	sp,sp,96
    80003f5c:	00008067          	ret

0000000080003f60 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80003f60:	ff010113          	addi	sp,sp,-16
    80003f64:	00113423          	sd	ra,8(sp)
    80003f68:	00813023          	sd	s0,0(sp)
    80003f6c:	01010413          	addi	s0,sp,16
    80003f70:	0000b797          	auipc	a5,0xb
    80003f74:	6d078793          	addi	a5,a5,1744 # 8000f640 <_ZTV9Semaphore+0x10>
    80003f78:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    sem_open(&myHandle, init);
    80003f7c:	02059593          	slli	a1,a1,0x20
    80003f80:	0205d593          	srli	a1,a1,0x20
    80003f84:	00850513          	addi	a0,a0,8
    80003f88:	ffffd097          	auipc	ra,0xffffd
    80003f8c:	51c080e7          	jalr	1308(ra) # 800014a4 <sem_open>
}
    80003f90:	00813083          	ld	ra,8(sp)
    80003f94:	00013403          	ld	s0,0(sp)
    80003f98:	01010113          	addi	sp,sp,16
    80003f9c:	00008067          	ret

0000000080003fa0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80003fa0:	ff010113          	addi	sp,sp,-16
    80003fa4:	00113423          	sd	ra,8(sp)
    80003fa8:	00813023          	sd	s0,0(sp)
    80003fac:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003fb0:	00853503          	ld	a0,8(a0)
    80003fb4:	ffffd097          	auipc	ra,0xffffd
    80003fb8:	598080e7          	jalr	1432(ra) # 8000154c <sem_wait>
}
    80003fbc:	00813083          	ld	ra,8(sp)
    80003fc0:	00013403          	ld	s0,0(sp)
    80003fc4:	01010113          	addi	sp,sp,16
    80003fc8:	00008067          	ret

0000000080003fcc <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80003fcc:	ff010113          	addi	sp,sp,-16
    80003fd0:	00113423          	sd	ra,8(sp)
    80003fd4:	00813023          	sd	s0,0(sp)
    80003fd8:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003fdc:	00853503          	ld	a0,8(a0)
    80003fe0:	ffffd097          	auipc	ra,0xffffd
    80003fe4:	5c0080e7          	jalr	1472(ra) # 800015a0 <sem_signal>
}
    80003fe8:	00813083          	ld	ra,8(sp)
    80003fec:	00013403          	ld	s0,0(sp)
    80003ff0:	01010113          	addi	sp,sp,16
    80003ff4:	00008067          	ret

0000000080003ff8 <_ZN7Console4getcEv>:
char Console::getc() {
    80003ff8:	ff010113          	addi	sp,sp,-16
    80003ffc:	00113423          	sd	ra,8(sp)
    80004000:	00813023          	sd	s0,0(sp)
    80004004:	01010413          	addi	s0,sp,16
    return ::getc();
    80004008:	ffffd097          	auipc	ra,0xffffd
    8000400c:	5ec080e7          	jalr	1516(ra) # 800015f4 <getc>
}
    80004010:	00813083          	ld	ra,8(sp)
    80004014:	00013403          	ld	s0,0(sp)
    80004018:	01010113          	addi	sp,sp,16
    8000401c:	00008067          	ret

0000000080004020 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80004020:	ff010113          	addi	sp,sp,-16
    80004024:	00113423          	sd	ra,8(sp)
    80004028:	00813023          	sd	s0,0(sp)
    8000402c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80004030:	ffffd097          	auipc	ra,0xffffd
    80004034:	618080e7          	jalr	1560(ra) # 80001648 <putc>
}
    80004038:	00813083          	ld	ra,8(sp)
    8000403c:	00013403          	ld	s0,0(sp)
    80004040:	01010113          	addi	sp,sp,16
    80004044:	00008067          	ret

0000000080004048 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80004048:	fe010113          	addi	sp,sp,-32
    8000404c:	00113c23          	sd	ra,24(sp)
    80004050:	00813823          	sd	s0,16(sp)
    80004054:	00913423          	sd	s1,8(sp)
    80004058:	01213023          	sd	s2,0(sp)
    8000405c:	02010413          	addi	s0,sp,32
    80004060:	00050493          	mv	s1,a0
    80004064:	00058913          	mv	s2,a1
    80004068:	00000097          	auipc	ra,0x0
    8000406c:	e78080e7          	jalr	-392(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80004070:	0000b797          	auipc	a5,0xb
    80004074:	5f078793          	addi	a5,a5,1520 # 8000f660 <_ZTV14PeriodicThread+0x10>
    80004078:	00f4b023          	sd	a5,0(s1)
    8000407c:	0000c717          	auipc	a4,0xc
    80004080:	a4470713          	addi	a4,a4,-1468 # 8000fac0 <_ZN14PeriodicThread2IDE>
    80004084:	00073783          	ld	a5,0(a4)
    80004088:	00178693          	addi	a3,a5,1
    8000408c:	00d73023          	sd	a3,0(a4)
    80004090:	02f4b023          	sd	a5,32(s1)
    time = period;
    80004094:	0124b823          	sd	s2,16(s1)
    flag_stop = true;
    80004098:	00100793          	li	a5,1
    8000409c:	00f48c23          	sb	a5,24(s1)
    set_periodic((thread_t)this);
    800040a0:	00048513          	mv	a0,s1
    800040a4:	ffffd097          	auipc	ra,0xffffd
    800040a8:	6e4080e7          	jalr	1764(ra) # 80001788 <set_periodic>
    800040ac:	0200006f          	j	800040cc <_ZN14PeriodicThreadC1Em+0x84>
    800040b0:	00050913          	mv	s2,a0
PeriodicThread::PeriodicThread(time_t period) {
    800040b4:	00048513          	mv	a0,s1
    800040b8:	00000097          	auipc	ra,0x0
    800040bc:	ae4080e7          	jalr	-1308(ra) # 80003b9c <_ZN6ThreadD1Ev>
    800040c0:	00090513          	mv	a0,s2
    800040c4:	000d0097          	auipc	ra,0xd0
    800040c8:	0a4080e7          	jalr	164(ra) # 800d4168 <_Unwind_Resume>
}
    800040cc:	01813083          	ld	ra,24(sp)
    800040d0:	01013403          	ld	s0,16(sp)
    800040d4:	00813483          	ld	s1,8(sp)
    800040d8:	00013903          	ld	s2,0(sp)
    800040dc:	02010113          	addi	sp,sp,32
    800040e0:	00008067          	ret

00000000800040e4 <_ZN6Thread3runEv>:



protected:
    Thread();
    virtual void run() {}
    800040e4:	ff010113          	addi	sp,sp,-16
    800040e8:	00813423          	sd	s0,8(sp)
    800040ec:	01010413          	addi	s0,sp,16
    800040f0:	00813403          	ld	s0,8(sp)
    800040f4:	01010113          	addi	sp,sp,16
    800040f8:	00008067          	ret

00000000800040fc <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void stop(){flag_stop = false;}
//    uint64 getId()const{ id; }
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation(){}
    800040fc:	ff010113          	addi	sp,sp,-16
    80004100:	00813423          	sd	s0,8(sp)
    80004104:	01010413          	addi	s0,sp,16
    80004108:	00813403          	ld	s0,8(sp)
    8000410c:	01010113          	addi	sp,sp,16
    80004110:	00008067          	ret

0000000080004114 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80004114:	ff010113          	addi	sp,sp,-16
    80004118:	00113423          	sd	ra,8(sp)
    8000411c:	00813023          	sd	s0,0(sp)
    80004120:	01010413          	addi	s0,sp,16
    80004124:	0000b797          	auipc	a5,0xb
    80004128:	53c78793          	addi	a5,a5,1340 # 8000f660 <_ZTV14PeriodicThread+0x10>
    8000412c:	00f53023          	sd	a5,0(a0)
    80004130:	00000097          	auipc	ra,0x0
    80004134:	a6c080e7          	jalr	-1428(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80004138:	00813083          	ld	ra,8(sp)
    8000413c:	00013403          	ld	s0,0(sp)
    80004140:	01010113          	addi	sp,sp,16
    80004144:	00008067          	ret

0000000080004148 <_ZN14PeriodicThreadD0Ev>:
    80004148:	fe010113          	addi	sp,sp,-32
    8000414c:	00113c23          	sd	ra,24(sp)
    80004150:	00813823          	sd	s0,16(sp)
    80004154:	00913423          	sd	s1,8(sp)
    80004158:	02010413          	addi	s0,sp,32
    8000415c:	00050493          	mv	s1,a0
    80004160:	0000b797          	auipc	a5,0xb
    80004164:	50078793          	addi	a5,a5,1280 # 8000f660 <_ZTV14PeriodicThread+0x10>
    80004168:	00f53023          	sd	a5,0(a0)
    8000416c:	00000097          	auipc	ra,0x0
    80004170:	a30080e7          	jalr	-1488(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80004174:	00048513          	mv	a0,s1
    80004178:	00000097          	auipc	ra,0x0
    8000417c:	b1c080e7          	jalr	-1252(ra) # 80003c94 <_ZdlPv>
    80004180:	01813083          	ld	ra,24(sp)
    80004184:	01013403          	ld	s0,16(sp)
    80004188:	00813483          	ld	s1,8(sp)
    8000418c:	02010113          	addi	sp,sp,32
    80004190:	00008067          	ret

0000000080004194 <_ZN5Riscv14switch_to_userEv>:
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/semaphore.hpp"
#include "../h/console.hpp"

void Riscv::switch_to_user(){
    80004194:	ff010113          	addi	sp,sp,-16
    80004198:	00813423          	sd	s0,8(sp)
    8000419c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800041a0:	10000793          	li	a5,256
    800041a4:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
}
    800041a8:	00813403          	ld	s0,8(sp)
    800041ac:	01010113          	addi	sp,sp,16
    800041b0:	00008067          	ret

00000000800041b4 <_ZN5Riscv21switch_to_priviledgedEv>:

void Riscv::switch_to_priviledged() {
    800041b4:	ff010113          	addi	sp,sp,-16
    800041b8:	00813423          	sd	s0,8(sp)
    800041bc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800041c0:	10000793          	li	a5,256
    800041c4:	1007a073          	csrs	sstatus,a5
    ms_sstatus(SSTATUS_SPP);
}
    800041c8:	00813403          	ld	s0,8(sp)
    800041cc:	01010113          	addi	sp,sp,16
    800041d0:	00008067          	ret

00000000800041d4 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie(){
    800041d4:	ff010113          	addi	sp,sp,-16
    800041d8:	00813423          	sd	s0,8(sp)
    800041dc:	01010413          	addi	s0,sp,16

    __asm__ volatile("csrw sepc, ra");
    800041e0:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800041e4:	10200073          	sret
}
    800041e8:	00813403          	ld	s0,8(sp)
    800041ec:	01010113          	addi	sp,sp,16
    800041f0:	00008067          	ret

00000000800041f4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    800041f4:	f5010113          	addi	sp,sp,-176
    800041f8:	0a113423          	sd	ra,168(sp)
    800041fc:	0a813023          	sd	s0,160(sp)
    80004200:	08913c23          	sd	s1,152(sp)
    80004204:	09213823          	sd	s2,144(sp)
    80004208:	0b010413          	addi	s0,sp,176

//    uint64 arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7;
    uint64 args[8];
    __asm__ volatile("mv %[arg0], a0" : [arg0]"=r"(*args)); // za kod sistemskog poziva
    8000420c:	00050793          	mv	a5,a0
    80004210:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("mv %[arg1], a1" : [arg1]"=r"(*(args + 1))); // argumenti s leva na desno
    80004214:	00058793          	mv	a5,a1
    80004218:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile("mv %[arg2], a2" : [arg2]"=r"(*(args + 2)));
    8000421c:	00060793          	mv	a5,a2
    80004220:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile("mv %[arg3], a3" : [arg3]"=r"(*(args + 3)));
    80004224:	00068793          	mv	a5,a3
    80004228:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %[arg4], a4" : [arg4]"=r"(*(args + 4)));
    8000422c:	00070793          	mv	a5,a4
    80004230:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("mv %[arg5], a5" : [arg5]"=r"(*(args + 5)));
    80004234:	00078793          	mv	a5,a5
    80004238:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("mv %[arg6], a6" : [arg6]"=r"(*(args + 6)));
    8000423c:	00080793          	mv	a5,a6
    80004240:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("mv %[arg7], a7" : [arg7]"=r"(*(args + 7)));
    80004244:	00088793          	mv	a5,a7
    80004248:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000424c:	142027f3          	csrr	a5,scause
    80004250:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80004254:	f7843703          	ld	a4,-136(s0)

    uint64 scause = r_scause();

    if (scause == 0x8000000000000001UL){
    80004258:	fff00793          	li	a5,-1
    8000425c:	03f79793          	slli	a5,a5,0x3f
    80004260:	00178793          	addi	a5,a5,1
    80004264:	02f70c63          	beq	a4,a5,8000429c <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

    }
    else if(scause == 0x0000000000000009UL || scause == 0x0000000000000008UL){
    80004268:	ff870793          	addi	a5,a4,-8
    8000426c:	00100693          	li	a3,1
    80004270:	0af6f463          	bgeu	a3,a5,80004318 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
            // pomeramo pc za 4 bajta unapred
            w_sepc(sepc);
            if(*args != 0x60 && *args != 0x61)
                w_sstatus(sstatus);
    }
    else if (scause == 0x8000000000000009UL)
    80004274:	fff00793          	li	a5,-1
    80004278:	03f79793          	slli	a5,a5,0x3f
    8000427c:	00978793          	addi	a5,a5,9
    80004280:	3cf70263          	beq	a4,a5,80004644 <_ZN5Riscv20handleSupervisorTrapEv+0x450>
        // unexpected trap cause
        // print scause
        // print sepc
        // print stval
    }
    80004284:	0a813083          	ld	ra,168(sp)
    80004288:	0a013403          	ld	s0,160(sp)
    8000428c:	09813483          	ld	s1,152(sp)
    80004290:	09013903          	ld	s2,144(sp)
    80004294:	0b010113          	addi	sp,sp,176
    80004298:	00008067          	ret
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000429c:	00200793          	li	a5,2
    800042a0:	1447b073          	csrc	sip,a5
        TCB::time_slice_counter++;
    800042a4:	0000b497          	auipc	s1,0xb
    800042a8:	61c4b483          	ld	s1,1564(s1) # 8000f8c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800042ac:	0004b783          	ld	a5,0(s1)
    800042b0:	00178793          	addi	a5,a5,1
    800042b4:	00f4b023          	sd	a5,0(s1)
        TS::decrement_and_remove();
    800042b8:	00001097          	auipc	ra,0x1
    800042bc:	c70080e7          	jalr	-912(ra) # 80004f28 <_ZN2TS20decrement_and_removeEv>
        if (TCB::time_slice_counter >= TCB::running->get_time_slice()) {
    800042c0:	0000b797          	auipc	a5,0xb
    800042c4:	6087b783          	ld	a5,1544(a5) # 8000f8c8 <_GLOBAL_OFFSET_TABLE_+0x48>
    800042c8:	0007b783          	ld	a5,0(a5)
    uint64 get_time_slice()const{ return time_slice; }
    800042cc:	0507b783          	ld	a5,80(a5)
    800042d0:	0004b703          	ld	a4,0(s1)
    800042d4:	faf768e3          	bltu	a4,a5,80004284 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800042d8:	141027f3          	csrr	a5,sepc
    800042dc:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    800042e0:	f8843783          	ld	a5,-120(s0)
            uint64 volatile sepc = r_sepc();
    800042e4:	f4f43c23          	sd	a5,-168(s0)

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800042e8:	100027f3          	csrr	a5,sstatus
    800042ec:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    800042f0:	f8043783          	ld	a5,-128(s0)
            uint64 volatile sstatus = r_sstatus();
    800042f4:	f6f43023          	sd	a5,-160(s0)
            TCB::time_slice_counter = 0;
    800042f8:	0004b023          	sd	zero,0(s1)
            TCB::thread_dispatch();
    800042fc:	00000097          	auipc	ra,0x0
    80004300:	6a4080e7          	jalr	1700(ra) # 800049a0 <_ZN3TCB15thread_dispatchEv>
            w_sstatus(sstatus);
    80004304:	f6043783          	ld	a5,-160(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80004308:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000430c:	f5843783          	ld	a5,-168(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80004310:	14179073          	csrw	sepc,a5
}
    80004314:	f71ff06f          	j	80004284 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80004318:	141027f3          	csrr	a5,sepc
    8000431c:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80004320:	f9843783          	ld	a5,-104(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80004324:	00478793          	addi	a5,a5,4
    80004328:	f6f43423          	sd	a5,-152(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000432c:	100027f3          	csrr	a5,sstatus
    80004330:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80004334:	f9043783          	ld	a5,-112(s0)
        uint64 volatile sstatus = r_sstatus();
    80004338:	f6f43823          	sd	a5,-144(s0)
            switch(*args){
    8000433c:	fa043783          	ld	a5,-96(s0)
    80004340:	07000713          	li	a4,112
    80004344:	02f76463          	bltu	a4,a5,8000436c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80004348:	2e078663          	beqz	a5,80004634 <_ZN5Riscv20handleSupervisorTrapEv+0x440>
    8000434c:	2ef76863          	bltu	a4,a5,8000463c <_ZN5Riscv20handleSupervisorTrapEv+0x448>
    80004350:	00279793          	slli	a5,a5,0x2
    80004354:	00008717          	auipc	a4,0x8
    80004358:	f4470713          	addi	a4,a4,-188 # 8000c298 <CONSOLE_STATUS+0x288>
    8000435c:	00e787b3          	add	a5,a5,a4
    80004360:	0007a783          	lw	a5,0(a5)
    80004364:	00e787b3          	add	a5,a5,a4
    80004368:	00078067          	jr	a5
    8000436c:	11100713          	li	a4,273
    80004370:	00e79c63          	bne	a5,a4,80004388 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    void set_finished(bool f){ this->finished = f; }
    80004374:	fa843783          	ld	a5,-88(s0)
    80004378:	00100713          	li	a4,1
    8000437c:	02e78423          	sb	a4,40(a5)
                    retVal = 0;
    80004380:	00000513          	li	a0,0
    80004384:	0080006f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
            switch(*args){
    80004388:	00000513          	li	a0,0
            __asm__ volatile("mv a0, %[ret]" : : [ret]"r"(retVal));
    8000438c:	00050513          	mv	a0,a0
            __asm__ volatile("sd a0, 10 * 8(s0)");
    80004390:	04a43823          	sd	a0,80(s0)
            w_sepc(sepc);
    80004394:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80004398:	14179073          	csrw	sepc,a5
            if(*args != 0x60 && *args != 0x61)
    8000439c:	fa043783          	ld	a5,-96(s0)
    800043a0:	fa078793          	addi	a5,a5,-96
    800043a4:	00100713          	li	a4,1
    800043a8:	ecf77ee3          	bgeu	a4,a5,80004284 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
                w_sstatus(sstatus);
    800043ac:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800043b0:	10079073          	csrw	sstatus,a5
}
    800043b4:	ed1ff06f          	j	80004284 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    800043b8:	0000b797          	auipc	a5,0xb
    800043bc:	7207c783          	lbu	a5,1824(a5) # 8000fad8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800043c0:	00078e63          	beqz	a5,800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_alloc(*(args + 1)));
    800043c4:	fa843583          	ld	a1,-88(s0)
    800043c8:	0000b517          	auipc	a0,0xb
    800043cc:	71850513          	addi	a0,a0,1816 # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800043d0:	00001097          	auipc	ra,0x1
    800043d4:	838080e7          	jalr	-1992(ra) # 80004c08 <_ZN15MemoryAllocator12memory_allocEm>
                    break;
    800043d8:	fb5ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    800043dc:	0000b617          	auipc	a2,0xb
    800043e0:	70460613          	addi	a2,a2,1796 # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800043e4:	0000b797          	auipc	a5,0xb
    800043e8:	4ec7b783          	ld	a5,1260(a5) # 8000f8d0 <_GLOBAL_OFFSET_TABLE_+0x50>
    800043ec:	0007b703          	ld	a4,0(a5)
    800043f0:	0000b797          	auipc	a5,0xb
    800043f4:	4a87b783          	ld	a5,1192(a5) # 8000f898 <_GLOBAL_OFFSET_TABLE_+0x18>
    800043f8:	0007b783          	ld	a5,0(a5)
    800043fc:	40f706b3          	sub	a3,a4,a5
    80004400:	0036d693          	srli	a3,a3,0x3
    80004404:	00d787b3          	add	a5,a5,a3
    80004408:	00178793          	addi	a5,a5,1
    8000440c:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80004410:	fff70713          	addi	a4,a4,-1
    80004414:	00e63823          	sd	a4,16(a2)

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80004418:	03f7f693          	andi	a3,a5,63
    8000441c:	00068663          	beqz	a3,80004428 <_ZN5Riscv20handleSupervisorTrapEv+0x234>
    80004420:	04000613          	li	a2,64
    80004424:	40d606b3          	sub	a3,a2,a3
    80004428:	00d787b3          	add	a5,a5,a3
    8000442c:	0000b697          	auipc	a3,0xb
    80004430:	6af6ba23          	sd	a5,1716(a3) # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80004434:	40f70733          	sub	a4,a4,a5
    80004438:	00675713          	srli	a4,a4,0x6

        // napravi node

        fmem_head->next = nullptr;
    8000443c:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004440:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004444:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004448:	00100793          	li	a5,1
    8000444c:	0000b717          	auipc	a4,0xb
    80004450:	68f70623          	sb	a5,1676(a4) # 8000fad8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004454:	f71ff06f          	j	800043c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    80004458:	0000b797          	auipc	a5,0xb
    8000445c:	6807c783          	lbu	a5,1664(a5) # 8000fad8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004460:	00078e63          	beqz	a5,8000447c <_ZN5Riscv20handleSupervisorTrapEv+0x288>
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_free((void*)*(args + 1)));
    80004464:	fa843583          	ld	a1,-88(s0)
    80004468:	0000b517          	auipc	a0,0xb
    8000446c:	67850513          	addi	a0,a0,1656 # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80004470:	00001097          	auipc	ra,0x1
    80004474:	86c080e7          	jalr	-1940(ra) # 80004cdc <_ZN15MemoryAllocator11memory_freeEPv>
                    break;
    80004478:	f15ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    MemoryAllocator(){
    8000447c:	0000b617          	auipc	a2,0xb
    80004480:	66460613          	addi	a2,a2,1636 # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80004484:	0000b797          	auipc	a5,0xb
    80004488:	44c7b783          	ld	a5,1100(a5) # 8000f8d0 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000448c:	0007b703          	ld	a4,0(a5)
    80004490:	0000b797          	auipc	a5,0xb
    80004494:	4087b783          	ld	a5,1032(a5) # 8000f898 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004498:	0007b783          	ld	a5,0(a5)
    8000449c:	40f706b3          	sub	a3,a4,a5
    800044a0:	0036d693          	srli	a3,a3,0x3
    800044a4:	00d787b3          	add	a5,a5,a3
    800044a8:	00178793          	addi	a5,a5,1
    800044ac:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800044b0:	fff70713          	addi	a4,a4,-1
    800044b4:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800044b8:	03f7f693          	andi	a3,a5,63
    800044bc:	00068663          	beqz	a3,800044c8 <_ZN5Riscv20handleSupervisorTrapEv+0x2d4>
    800044c0:	04000613          	li	a2,64
    800044c4:	40d606b3          	sub	a3,a2,a3
    800044c8:	00d787b3          	add	a5,a5,a3
    800044cc:	0000b697          	auipc	a3,0xb
    800044d0:	60f6ba23          	sd	a5,1556(a3) # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    800044d4:	40f70733          	sub	a4,a4,a5
    800044d8:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    800044dc:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    800044e0:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    800044e4:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    800044e8:	00100793          	li	a5,1
    800044ec:	0000b717          	auipc	a4,0xb
    800044f0:	5ef70623          	sb	a5,1516(a4) # 8000fad8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800044f4:	f71ff06f          	j	80004464 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
                    retVal = (uint64)(TCB::thread_create((TCB**)*(args + 1),
    800044f8:	fd043703          	ld	a4,-48(s0)
    800044fc:	00e03733          	snez	a4,a4
    80004500:	fc043683          	ld	a3,-64(s0)
    80004504:	fb843603          	ld	a2,-72(s0)
    80004508:	fb043583          	ld	a1,-80(s0)
    8000450c:	fa843503          	ld	a0,-88(s0)
    80004510:	00000097          	auipc	ra,0x0
    80004514:	3b0080e7          	jalr	944(ra) # 800048c0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b>
                    break;
    80004518:	e75ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = TCB::thread_exit();
    8000451c:	00000097          	auipc	ra,0x0
    80004520:	524080e7          	jalr	1316(ra) # 80004a40 <_ZN3TCB11thread_exitEv>
                    break;
    80004524:	e69ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    TCB::thread_dispatch();
    80004528:	00000097          	auipc	ra,0x0
    8000452c:	478080e7          	jalr	1144(ra) # 800049a0 <_ZN3TCB15thread_dispatchEv>
        uint64 retVal = 0;
    80004530:	00000513          	li	a0,0
    80004534:	e59ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_open((MySemaphore**)*(args + 1),
    80004538:	fb043583          	ld	a1,-80(s0)
    8000453c:	fa843503          	ld	a0,-88(s0)
    80004540:	ffffe097          	auipc	ra,0xffffe
    80004544:	e20080e7          	jalr	-480(ra) # 80002360 <_ZN11MySemaphore8sem_openEPPS_m>
                    break;
    80004548:	e45ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_close((MySemaphore*)*(args + 1)));
    8000454c:	fa843503          	ld	a0,-88(s0)
    80004550:	ffffe097          	auipc	ra,0xffffe
    80004554:	b88080e7          	jalr	-1144(ra) # 800020d8 <_ZN11MySemaphore9sem_closeEPS_>
                    break;
    80004558:	e35ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_wait((MySemaphore*)*(args + 1)));
    8000455c:	fa843503          	ld	a0,-88(s0)
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	c88080e7          	jalr	-888(ra) # 800021e8 <_ZN11MySemaphore8sem_waitEPS_>
                    break;
    80004568:	e25ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_signal((MySemaphore*)*(args + 1)));
    8000456c:	fa843503          	ld	a0,-88(s0)
    80004570:	ffffe097          	auipc	ra,0xffffe
    80004574:	d24080e7          	jalr	-732(ra) # 80002294 <_ZN11MySemaphore10sem_signalEPS_>
                    break;
    80004578:	e15ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    TCB::time_sleep(*(args + 1));
    8000457c:	fa843503          	ld	a0,-88(s0)
    80004580:	00000097          	auipc	ra,0x0
    80004584:	1f8080e7          	jalr	504(ra) # 80004778 <_ZN3TCB10time_sleepEm>
        uint64 retVal = 0;
    80004588:	00000513          	li	a0,0
    8000458c:	e01ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = Console::getInstance().get_from_input();
    80004590:	ffffe097          	auipc	ra,0xffffe
    80004594:	424080e7          	jalr	1060(ra) # 800029b4 <_ZN7Console11getInstanceEv>
    80004598:	ffffe097          	auipc	ra,0xffffe
    8000459c:	390080e7          	jalr	912(ra) # 80002928 <_ZN7Console14get_from_inputEv>
                    break;
    800045a0:	dedff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Console::getInstance().put_in_output((char)*(args + 1));
    800045a4:	ffffe097          	auipc	ra,0xffffe
    800045a8:	410080e7          	jalr	1040(ra) # 800029b4 <_ZN7Console11getInstanceEv>
    800045ac:	fa844583          	lbu	a1,-88(s0)
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	3a8080e7          	jalr	936(ra) # 80002958 <_ZN7Console13put_in_outputEc>
        uint64 retVal = 0;
    800045b8:	00000513          	li	a0,0
    800045bc:	dd1ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Scheduler::getInstance().put((TCB*)*(args + 1));
    800045c0:	00000097          	auipc	ra,0x0
    800045c4:	5cc080e7          	jalr	1484(ra) # 80004b8c <_ZN9Scheduler11getInstanceEv>
    800045c8:	fa843583          	ld	a1,-88(s0)
    800045cc:	00000097          	auipc	ra,0x0
    800045d0:	560080e7          	jalr	1376(ra) # 80004b2c <_ZN9Scheduler3putEP3TCB>
        uint64 retVal = 0;
    800045d4:	00000513          	li	a0,0
    800045d8:	db5ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Riscv::switch_to_user();
    800045dc:	00000097          	auipc	ra,0x0
    800045e0:	bb8080e7          	jalr	-1096(ra) # 80004194 <_ZN5Riscv14switch_to_userEv>
        uint64 retVal = 0;
    800045e4:	00000513          	li	a0,0
                    break;
    800045e8:	da5ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Riscv::switch_to_priviledged();
    800045ec:	00000097          	auipc	ra,0x0
    800045f0:	bc8080e7          	jalr	-1080(ra) # 800041b4 <_ZN5Riscv21switch_to_priviledgedEv>
        uint64 retVal = 0;
    800045f4:	00000513          	li	a0,0
                    break;
    800045f8:	d95ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    ((TCB*)*(args + 1))->set_periodic(true);
    800045fc:	fa843583          	ld	a1,-88(s0)
        periodic = b;
    80004600:	00100793          	li	a5,1
    80004604:	06f580a3          	sb	a5,97(a1)

class periodicThread{

public:
    static periodicThread& getInstance(){
        static periodicThread instance;
    80004608:	0000b797          	auipc	a5,0xb
    8000460c:	4c07c783          	lbu	a5,1216(a5) # 8000fac8 <_ZGVZN14periodicThread11getInstanceEvE8instance>
    80004610:	00079863          	bnez	a5,80004620 <_ZN5Riscv20handleSupervisorTrapEv+0x42c>
    80004614:	00100793          	li	a5,1
    80004618:	0000b717          	auipc	a4,0xb
    8000461c:	4af70823          	sb	a5,1200(a4) # 8000fac8 <_ZGVZN14periodicThread11getInstanceEvE8instance>
        periodicThread::getInstance().put(this);
    80004620:	0000b517          	auipc	a0,0xb
    80004624:	4b050513          	addi	a0,a0,1200 # 8000fad0 <_ZZN14periodicThread11getInstanceEvE8instance>
    80004628:	ffffe097          	auipc	ra,0xffffe
    8000462c:	d90080e7          	jalr	-624(ra) # 800023b8 <_ZN14periodicThread3putEP3TCB>
    }
    80004630:	d45ff06f          	j	80004374 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
            switch(*args){
    80004634:	00000513          	li	a0,0
    80004638:	d55ff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    8000463c:	00000513          	li	a0,0
    80004640:	d4dff06f          	j	8000438c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        int irq = plic_claim();
    80004644:	00005097          	auipc	ra,0x5
    80004648:	440080e7          	jalr	1088(ra) # 80009a84 <plic_claim>
    8000464c:	00050913          	mv	s2,a0
        if(irq == CONSOLE_IRQ){
    80004650:	00a00793          	li	a5,10
    80004654:	02f50663          	beq	a0,a5,80004680 <_ZN5Riscv20handleSupervisorTrapEv+0x48c>
        plic_complete(irq);
    80004658:	00090513          	mv	a0,s2
    8000465c:	00005097          	auipc	ra,0x5
    80004660:	460080e7          	jalr	1120(ra) # 80009abc <plic_complete>
    80004664:	c21ff06f          	j	80004284 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
                    TCB* tmp = periodicThread::getInstance().get();
    80004668:	0000b517          	auipc	a0,0xb
    8000466c:	46850513          	addi	a0,a0,1128 # 8000fad0 <_ZZN14periodicThread11getInstanceEvE8instance>
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	d8c080e7          	jalr	-628(ra) # 800023fc <_ZN14periodicThread3getEv>
    void set_finished(bool f){ this->finished = f; }
    80004678:	00100793          	li	a5,1
    8000467c:	02f50423          	sb	a5,40(a0)
            while(*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80004680:	0000b797          	auipc	a5,0xb
    80004684:	2107b783          	ld	a5,528(a5) # 8000f890 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004688:	0007b783          	ld	a5,0(a5)
    8000468c:	0007c783          	lbu	a5,0(a5)
    80004690:	0017f793          	andi	a5,a5,1
    80004694:	fc0782e3          	beqz	a5,80004658 <_ZN5Riscv20handleSupervisorTrapEv+0x464>
                Console::getInstance().put_in_input(*((char*)CONSOLE_RX_DATA));
    80004698:	ffffe097          	auipc	ra,0xffffe
    8000469c:	31c080e7          	jalr	796(ra) # 800029b4 <_ZN7Console11getInstanceEv>
    800046a0:	0000b797          	auipc	a5,0xb
    800046a4:	1e87b783          	ld	a5,488(a5) # 8000f888 <_GLOBAL_OFFSET_TABLE_+0x8>
    800046a8:	0007b483          	ld	s1,0(a5)
    800046ac:	0004c583          	lbu	a1,0(s1)
    800046b0:	ffffe097          	auipc	ra,0xffffe
    800046b4:	24c080e7          	jalr	588(ra) # 800028fc <_ZN7Console12put_in_inputEc>
                if(*((char*)CONSOLE_RX_DATA) == 107){
    800046b8:	0004c703          	lbu	a4,0(s1)
    800046bc:	06b00793          	li	a5,107
    800046c0:	fcf710e3          	bne	a4,a5,80004680 <_ZN5Riscv20handleSupervisorTrapEv+0x48c>
    800046c4:	0000b797          	auipc	a5,0xb
    800046c8:	4047c783          	lbu	a5,1028(a5) # 8000fac8 <_ZGVZN14periodicThread11getInstanceEvE8instance>
    800046cc:	f8079ee3          	bnez	a5,80004668 <_ZN5Riscv20handleSupervisorTrapEv+0x474>
    800046d0:	00100793          	li	a5,1
    800046d4:	0000b717          	auipc	a4,0xb
    800046d8:	3ef70a23          	sb	a5,1012(a4) # 8000fac8 <_ZGVZN14periodicThread11getInstanceEvE8instance>
    800046dc:	f8dff06f          	j	80004668 <_ZN5Riscv20handleSupervisorTrapEv+0x474>

00000000800046e0 <_ZN3TCB11tcb_destroyEPv>:
    return tcb_cache;
}

void TCB::tcb_destroy(void *MyTCB) {
    TCB* tcb = (TCB*)MyTCB;
    if(tcb->stack)kfree(tcb->stack);
    800046e0:	01053503          	ld	a0,16(a0)
    800046e4:	02050663          	beqz	a0,80004710 <_ZN3TCB11tcb_destroyEPv+0x30>
void TCB::tcb_destroy(void *MyTCB) {
    800046e8:	ff010113          	addi	sp,sp,-16
    800046ec:	00113423          	sd	ra,8(sp)
    800046f0:	00813023          	sd	s0,0(sp)
    800046f4:	01010413          	addi	s0,sp,16
    if(tcb->stack)kfree(tcb->stack);
    800046f8:	00001097          	auipc	ra,0x1
    800046fc:	b18080e7          	jalr	-1256(ra) # 80005210 <_Z5kfreePKv>
}
    80004700:	00813083          	ld	ra,8(sp)
    80004704:	00013403          	ld	s0,0(sp)
    80004708:	01010113          	addi	sp,sp,16
    8000470c:	00008067          	ret
    80004710:	00008067          	ret

0000000080004714 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80004714:	fe010113          	addi	sp,sp,-32
    80004718:	00113c23          	sd	ra,24(sp)
    8000471c:	00813823          	sd	s0,16(sp)
    80004720:	00913423          	sd	s1,8(sp)
    80004724:	01213023          	sd	s2,0(sp)
    80004728:	02010413          	addi	s0,sp,32
    TCB * old = running;
    8000472c:	0000b497          	auipc	s1,0xb
    80004730:	3cc48493          	addi	s1,s1,972 # 8000faf8 <_ZN3TCB7runningE>
    80004734:	0004b903          	ld	s2,0(s1)
    running = Scheduler::getInstance().get();
    80004738:	00000097          	auipc	ra,0x0
    8000473c:	454080e7          	jalr	1108(ra) # 80004b8c <_ZN9Scheduler11getInstanceEv>
    80004740:	00000097          	auipc	ra,0x0
    80004744:	380080e7          	jalr	896(ra) # 80004ac0 <_ZN9Scheduler3getEv>
    80004748:	00a4b023          	sd	a0,0(s1)
    TCB::time_slice_counter = 0;
    8000474c:	0004b423          	sd	zero,8(s1)
    TCB::context_switch(&old->context, &running->context);
    80004750:	01850593          	addi	a1,a0,24
    80004754:	01890513          	addi	a0,s2,24
    80004758:	ffffd097          	auipc	ra,0xffffd
    8000475c:	ad8080e7          	jalr	-1320(ra) # 80001230 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80004760:	01813083          	ld	ra,24(sp)
    80004764:	01013403          	ld	s0,16(sp)
    80004768:	00813483          	ld	s1,8(sp)
    8000476c:	00013903          	ld	s2,0(sp)
    80004770:	02010113          	addi	sp,sp,32
    80004774:	00008067          	ret

0000000080004778 <_ZN3TCB10time_sleepEm>:
int TCB::time_sleep(uint64 time) {
    80004778:	fe010113          	addi	sp,sp,-32
    8000477c:	00113c23          	sd	ra,24(sp)
    80004780:	00813823          	sd	s0,16(sp)
    80004784:	00913423          	sd	s1,8(sp)
    80004788:	02010413          	addi	s0,sp,32
    running->set_time_sleep(time);
    8000478c:	0000b497          	auipc	s1,0xb
    80004790:	36c48493          	addi	s1,s1,876 # 8000faf8 <_ZN3TCB7runningE>
    80004794:	0004b783          	ld	a5,0(s1)
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    80004798:	04a7b423          	sd	a0,72(a5)
    TS::getInstance().put(running);
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	80c080e7          	jalr	-2036(ra) # 80004fa8 <_ZN2TS11getInstanceEv>
    800047a4:	0004b503          	ld	a0,0(s1)
    800047a8:	00000097          	auipc	ra,0x0
    800047ac:	6fc080e7          	jalr	1788(ra) # 80004ea4 <_ZN2TS3putEP3TCB>
    TCB::yield();
    800047b0:	00000097          	auipc	ra,0x0
    800047b4:	f64080e7          	jalr	-156(ra) # 80004714 <_ZN3TCB5yieldEv>
}
    800047b8:	00000513          	li	a0,0
    800047bc:	01813083          	ld	ra,24(sp)
    800047c0:	01013403          	ld	s0,16(sp)
    800047c4:	00813483          	ld	s1,8(sp)
    800047c8:	02010113          	addi	sp,sp,32
    800047cc:	00008067          	ret

00000000800047d0 <_ZN3TCB9TCB_setupEPFvPvES0_S0_b>:
void TCB::TCB_setup(TCB::Body body_init, void *arg, void *stack_space, bool b) {
    800047d0:	ff010113          	addi	sp,sp,-16
    800047d4:	00813423          	sd	s0,8(sp)
    800047d8:	01010413          	addi	s0,sp,16
    body = body_init;
    800047dc:	00b53023          	sd	a1,0(a0)
    argument = arg;
    800047e0:	00c53423          	sd	a2,8(a0)
    stack = (uint64*)stack_space;
    800047e4:	00d53823          	sd	a3,16(a0)
    context.ra = (uint64) &thread_wrapper;
    800047e8:	00000797          	auipc	a5,0x0
    800047ec:	29478793          	addi	a5,a5,660 # 80004a7c <_ZN3TCB14thread_wrapperEv>
    800047f0:	00f53c23          	sd	a5,24(a0)
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    800047f4:	04068e63          	beqz	a3,80004850 <_ZN3TCB9TCB_setupEPFvPvES0_S0_b+0x80>
    800047f8:	000017b7          	lui	a5,0x1
    800047fc:	00f686b3          	add	a3,a3,a5
    80004800:	02d53023          	sd	a3,32(a0)
    finished = false;
    80004804:	02050423          	sb	zero,40(a0)
    next_scheduler = nullptr;
    80004808:	02053823          	sd	zero,48(a0)
    next_sleep = nullptr;
    8000480c:	02053c23          	sd	zero,56(a0)
    next_blocked = nullptr;
    80004810:	04053023          	sd	zero,64(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80004814:	00200793          	li	a5,2
    80004818:	04f53823          	sd	a5,80(a0)
    sleep = 0;
    8000481c:	04053423          	sd	zero,72(a0)
    id = ID++;
    80004820:	0000b697          	auipc	a3,0xb
    80004824:	2d868693          	addi	a3,a3,728 # 8000faf8 <_ZN3TCB7runningE>
    80004828:	0106b783          	ld	a5,16(a3)
    8000482c:	00178613          	addi	a2,a5,1 # 1001 <_entry-0x7fffefff>
    80004830:	00c6b823          	sd	a2,16(a3)
    80004834:	04f53c23          	sd	a5,88(a0)
    flag = b;
    80004838:	06e50023          	sb	a4,96(a0)
    periodic = false;
    8000483c:	060500a3          	sb	zero,97(a0)
    next_period = nullptr;
    80004840:	06053423          	sd	zero,104(a0)
}
    80004844:	00813403          	ld	s0,8(sp)
    80004848:	01010113          	addi	sp,sp,16
    8000484c:	00008067          	ret
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    80004850:	00000693          	li	a3,0
    80004854:	fadff06f          	j	80004800 <_ZN3TCB9TCB_setupEPFvPvES0_S0_b+0x30>

0000000080004858 <_ZN3TCB13get_tcb_cacheEv>:
    if(!tcb_cache){
    80004858:	0000b797          	auipc	a5,0xb
    8000485c:	2b87b783          	ld	a5,696(a5) # 8000fb10 <_ZN3TCB9tcb_cacheE>
    80004860:	00078863          	beqz	a5,80004870 <_ZN3TCB13get_tcb_cacheEv+0x18>
}
    80004864:	0000b517          	auipc	a0,0xb
    80004868:	2ac50513          	addi	a0,a0,684 # 8000fb10 <_ZN3TCB9tcb_cacheE>
    8000486c:	00008067          	ret
kmem_cache_t* &TCB::get_tcb_cache() {
    80004870:	ff010113          	addi	sp,sp,-16
    80004874:	00113423          	sd	ra,8(sp)
    80004878:	00813023          	sd	s0,0(sp)
    8000487c:	01010413          	addi	s0,sp,16
        tcb_cache = (kmem_cache_t*) kmem_cache_create("tcb_cache", sizeof(TCB), nullptr, &tcb_destroy);
    80004880:	00000697          	auipc	a3,0x0
    80004884:	e6068693          	addi	a3,a3,-416 # 800046e0 <_ZN3TCB11tcb_destroyEPv>
    80004888:	00000613          	li	a2,0
    8000488c:	07000593          	li	a1,112
    80004890:	00008517          	auipc	a0,0x8
    80004894:	bd050513          	addi	a0,a0,-1072 # 8000c460 <CONSOLE_STATUS+0x450>
    80004898:	00001097          	auipc	ra,0x1
    8000489c:	810080e7          	jalr	-2032(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800048a0:	0000b797          	auipc	a5,0xb
    800048a4:	26a7b823          	sd	a0,624(a5) # 8000fb10 <_ZN3TCB9tcb_cacheE>
}
    800048a8:	0000b517          	auipc	a0,0xb
    800048ac:	26850513          	addi	a0,a0,616 # 8000fb10 <_ZN3TCB9tcb_cacheE>
    800048b0:	00813083          	ld	ra,8(sp)
    800048b4:	00013403          	ld	s0,0(sp)
    800048b8:	01010113          	addi	sp,sp,16
    800048bc:	00008067          	ret

00000000800048c0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b>:
) {
    800048c0:	fc010113          	addi	sp,sp,-64
    800048c4:	02113c23          	sd	ra,56(sp)
    800048c8:	02813823          	sd	s0,48(sp)
    800048cc:	02913423          	sd	s1,40(sp)
    800048d0:	03213023          	sd	s2,32(sp)
    800048d4:	01313c23          	sd	s3,24(sp)
    800048d8:	01413823          	sd	s4,16(sp)
    800048dc:	01513423          	sd	s5,8(sp)
    800048e0:	01613023          	sd	s6,0(sp)
    800048e4:	04010413          	addi	s0,sp,64
    800048e8:	00050913          	mv	s2,a0
    800048ec:	00058993          	mv	s3,a1
    800048f0:	00060a93          	mv	s5,a2
    800048f4:	00068b13          	mv	s6,a3
    800048f8:	00070a13          	mv	s4,a4
    TCB* tmp = (TCB*) kmem_cache_alloc(get_tcb_cache());
    800048fc:	00000097          	auipc	ra,0x0
    80004900:	f5c080e7          	jalr	-164(ra) # 80004858 <_ZN3TCB13get_tcb_cacheEv>
    80004904:	00053503          	ld	a0,0(a0)
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	848080e7          	jalr	-1976(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    80004910:	00050493          	mv	s1,a0
    if(tmp)tmp->TCB_setup(start_routine, arg, stack_space, flag);
    80004914:	00050e63          	beqz	a0,80004930 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x70>
    80004918:	000a0713          	mv	a4,s4
    8000491c:	000b0693          	mv	a3,s6
    80004920:	000a8613          	mv	a2,s5
    80004924:	00098593          	mv	a1,s3
    80004928:	00000097          	auipc	ra,0x0
    8000492c:	ea8080e7          	jalr	-344(ra) # 800047d0 <_ZN3TCB9TCB_setupEPFvPvES0_S0_b>
    *handle = tmp;
    80004930:	00993023          	sd	s1,0(s2)
    if (tmp && start_routine != nullptr && tmp != TCB::idle && flag) {
    80004934:	00048c63          	beqz	s1,8000494c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x8c>
    80004938:	00098a63          	beqz	s3,8000494c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x8c>
    8000493c:	0000b797          	auipc	a5,0xb
    80004940:	1dc7b783          	ld	a5,476(a5) # 8000fb18 <_ZN3TCB4idleE>
    80004944:	00978463          	beq	a5,s1,8000494c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x8c>
    80004948:	020a1c63          	bnez	s4,80004980 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xc0>
    if(*handle) return 0;
    8000494c:	00093783          	ld	a5,0(s2)
    80004950:	04078463          	beqz	a5,80004998 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xd8>
    80004954:	00000513          	li	a0,0
}
    80004958:	03813083          	ld	ra,56(sp)
    8000495c:	03013403          	ld	s0,48(sp)
    80004960:	02813483          	ld	s1,40(sp)
    80004964:	02013903          	ld	s2,32(sp)
    80004968:	01813983          	ld	s3,24(sp)
    8000496c:	01013a03          	ld	s4,16(sp)
    80004970:	00813a83          	ld	s5,8(sp)
    80004974:	00013b03          	ld	s6,0(sp)
    80004978:	04010113          	addi	sp,sp,64
    8000497c:	00008067          	ret
        Scheduler::getInstance().put(tmp);
    80004980:	00000097          	auipc	ra,0x0
    80004984:	20c080e7          	jalr	524(ra) # 80004b8c <_ZN9Scheduler11getInstanceEv>
    80004988:	00048593          	mv	a1,s1
    8000498c:	00000097          	auipc	ra,0x0
    80004990:	1a0080e7          	jalr	416(ra) # 80004b2c <_ZN9Scheduler3putEP3TCB>
    80004994:	fb9ff06f          	j	8000494c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x8c>
    else return -1;
    80004998:	fff00513          	li	a0,-1
    8000499c:	fbdff06f          	j	80004958 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x98>

00000000800049a0 <_ZN3TCB15thread_dispatchEv>:
void TCB::thread_dispatch() {
    800049a0:	fe010113          	addi	sp,sp,-32
    800049a4:	00113c23          	sd	ra,24(sp)
    800049a8:	00813823          	sd	s0,16(sp)
    800049ac:	00913423          	sd	s1,8(sp)
    800049b0:	01213023          	sd	s2,0(sp)
    800049b4:	02010413          	addi	s0,sp,32
    TCB * old = running;
    800049b8:	0000b917          	auipc	s2,0xb
    800049bc:	14090913          	addi	s2,s2,320 # 8000faf8 <_ZN3TCB7runningE>
    800049c0:	00093483          	ld	s1,0(s2)
    running = Scheduler::getInstance().get();
    800049c4:	00000097          	auipc	ra,0x0
    800049c8:	1c8080e7          	jalr	456(ra) # 80004b8c <_ZN9Scheduler11getInstanceEv>
    800049cc:	00000097          	auipc	ra,0x0
    800049d0:	0f4080e7          	jalr	244(ra) # 80004ac0 <_ZN9Scheduler3getEv>
    800049d4:	00a93023          	sd	a0,0(s2)
    bool is_finished()const{return finished;}
    800049d8:	0284c783          	lbu	a5,40(s1)
    if (!old->is_finished()) {
    800049dc:	04079463          	bnez	a5,80004a24 <_ZN3TCB15thread_dispatchEv+0x84>
        Scheduler::getInstance().put(old);
    800049e0:	00000097          	auipc	ra,0x0
    800049e4:	1ac080e7          	jalr	428(ra) # 80004b8c <_ZN9Scheduler11getInstanceEv>
    800049e8:	00048593          	mv	a1,s1
    800049ec:	00000097          	auipc	ra,0x0
    800049f0:	140080e7          	jalr	320(ra) # 80004b2c <_ZN9Scheduler3putEP3TCB>
    TCB::context_switch(&old->context, &running->context);
    800049f4:	0000b597          	auipc	a1,0xb
    800049f8:	1045b583          	ld	a1,260(a1) # 8000faf8 <_ZN3TCB7runningE>
    800049fc:	01858593          	addi	a1,a1,24
    80004a00:	01848513          	addi	a0,s1,24
    80004a04:	ffffd097          	auipc	ra,0xffffd
    80004a08:	82c080e7          	jalr	-2004(ra) # 80001230 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80004a0c:	01813083          	ld	ra,24(sp)
    80004a10:	01013403          	ld	s0,16(sp)
    80004a14:	00813483          	ld	s1,8(sp)
    80004a18:	00013903          	ld	s2,0(sp)
    80004a1c:	02010113          	addi	sp,sp,32
    80004a20:	00008067          	ret
        TCB** arr =  (TCB**)kmalloc(num_of_elem);
        return (void*)arr;
    }

    void operator delete(void* p)noexcept{
        kmem_cache_free(get_tcb_cache(), p);
    80004a24:	00000097          	auipc	ra,0x0
    80004a28:	e34080e7          	jalr	-460(ra) # 80004858 <_ZN3TCB13get_tcb_cacheEv>
    80004a2c:	00048593          	mv	a1,s1
    80004a30:	00053503          	ld	a0,0(a0)
    80004a34:	00000097          	auipc	ra,0x0
    80004a38:	778080e7          	jalr	1912(ra) # 800051ac <_Z15kmem_cache_freeP12kmem_cache_sPv>
    }
    80004a3c:	fb9ff06f          	j	800049f4 <_ZN3TCB15thread_dispatchEv+0x54>

0000000080004a40 <_ZN3TCB11thread_exitEv>:
int TCB::thread_exit() {
    80004a40:	ff010113          	addi	sp,sp,-16
    80004a44:	00113423          	sd	ra,8(sp)
    80004a48:	00813023          	sd	s0,0(sp)
    80004a4c:	01010413          	addi	s0,sp,16
    void set_finished(bool f){ this->finished = f; }
    80004a50:	0000b797          	auipc	a5,0xb
    80004a54:	0a87b783          	ld	a5,168(a5) # 8000faf8 <_ZN3TCB7runningE>
    80004a58:	00100713          	li	a4,1
    80004a5c:	02e78423          	sb	a4,40(a5)
    TCB::thread_dispatch();
    80004a60:	00000097          	auipc	ra,0x0
    80004a64:	f40080e7          	jalr	-192(ra) # 800049a0 <_ZN3TCB15thread_dispatchEv>
}
    80004a68:	fff00513          	li	a0,-1
    80004a6c:	00813083          	ld	ra,8(sp)
    80004a70:	00013403          	ld	s0,0(sp)
    80004a74:	01010113          	addi	sp,sp,16
    80004a78:	00008067          	ret

0000000080004a7c <_ZN3TCB14thread_wrapperEv>:
void TCB::thread_wrapper() {
    80004a7c:	ff010113          	addi	sp,sp,-16
    80004a80:	00113423          	sd	ra,8(sp)
    80004a84:	00813023          	sd	s0,0(sp)
    80004a88:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80004a8c:	fffff097          	auipc	ra,0xfffff
    80004a90:	748080e7          	jalr	1864(ra) # 800041d4 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80004a94:	0000b797          	auipc	a5,0xb
    80004a98:	0647b783          	ld	a5,100(a5) # 8000faf8 <_ZN3TCB7runningE>
    80004a9c:	0007b703          	ld	a4,0(a5)
    80004aa0:	0087b503          	ld	a0,8(a5)
    80004aa4:	000700e7          	jalr	a4
    thread_exit();
    80004aa8:	00000097          	auipc	ra,0x0
    80004aac:	f98080e7          	jalr	-104(ra) # 80004a40 <_ZN3TCB11thread_exitEv>
}
    80004ab0:	00813083          	ld	ra,8(sp)
    80004ab4:	00013403          	ld	s0,0(sp)
    80004ab8:	01010113          	addi	sp,sp,16
    80004abc:	00008067          	ret

0000000080004ac0 <_ZN9Scheduler3getEv>:
kmem_cache_t* Scheduler::scheduler_cache = nullptr;

TCB* Scheduler::head = nullptr;
TCB* Scheduler::tail = nullptr;

TCB* Scheduler::get(){
    80004ac0:	ff010113          	addi	sp,sp,-16
    80004ac4:	00813423          	sd	s0,8(sp)
    80004ac8:	01010413          	addi	s0,sp,16
    80004acc:	0200006f          	j	80004aec <_ZN9Scheduler3getEv+0x2c>
    while(head) {
        if (!head) { return TCB::idle; }
        TCB *tmp = head;
        if (head == tail) head = tail = nullptr;
    80004ad0:	0000b797          	auipc	a5,0xb
    80004ad4:	05078793          	addi	a5,a5,80 # 8000fb20 <_ZN9Scheduler4headE>
    80004ad8:	0007b423          	sd	zero,8(a5)
    80004adc:	0007b023          	sd	zero,0(a5)
    uint64 get_thread_id()const{ return id; }

    // getteri i setteri
    void set_finished(bool f){ this->finished = f; }
    bool is_finished()const{return finished;}
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    80004ae0:	02053823          	sd	zero,48(a0)
    bool is_finished()const{return finished;}
    80004ae4:	02854783          	lbu	a5,40(a0)
        else head = head->get_next_scheduler();
        tmp->set_next_scheduler(nullptr);
        if(!tmp->is_finished())return tmp;
    80004ae8:	02078c63          	beqz	a5,80004b20 <_ZN9Scheduler3getEv+0x60>
    while(head) {
    80004aec:	0000b517          	auipc	a0,0xb
    80004af0:	03453503          	ld	a0,52(a0) # 8000fb20 <_ZN9Scheduler4headE>
    80004af4:	02050063          	beqz	a0,80004b14 <_ZN9Scheduler3getEv+0x54>
        if (head == tail) head = tail = nullptr;
    80004af8:	0000b797          	auipc	a5,0xb
    80004afc:	0307b783          	ld	a5,48(a5) # 8000fb28 <_ZN9Scheduler4tailE>
    80004b00:	fcf508e3          	beq	a0,a5,80004ad0 <_ZN9Scheduler3getEv+0x10>
    TCB* get_next_scheduler()const{ return next_scheduler; }
    80004b04:	03053783          	ld	a5,48(a0)
        else head = head->get_next_scheduler();
    80004b08:	0000b717          	auipc	a4,0xb
    80004b0c:	00f73c23          	sd	a5,24(a4) # 8000fb20 <_ZN9Scheduler4headE>
    80004b10:	fd1ff06f          	j	80004ae0 <_ZN9Scheduler3getEv+0x20>
    }
    return TCB::idle;
    80004b14:	0000b797          	auipc	a5,0xb
    80004b18:	d947b783          	ld	a5,-620(a5) # 8000f8a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80004b1c:	0007b503          	ld	a0,0(a5)
}
    80004b20:	00813403          	ld	s0,8(sp)
    80004b24:	01010113          	addi	sp,sp,16
    80004b28:	00008067          	ret

0000000080004b2c <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB* tcb){
    80004b2c:	ff010113          	addi	sp,sp,-16
    80004b30:	00813423          	sd	s0,8(sp)
    80004b34:	01010413          	addi	s0,sp,16
    if(tcb == TCB::idle)return;
    80004b38:	0000b797          	auipc	a5,0xb
    80004b3c:	d707b783          	ld	a5,-656(a5) # 8000f8a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80004b40:	0007b783          	ld	a5,0(a5)
    80004b44:	02b78463          	beq	a5,a1,80004b6c <_ZN9Scheduler3putEP3TCB+0x40>
    bool is_finished()const{return finished;}
    80004b48:	0285c783          	lbu	a5,40(a1)
    if(tcb->is_finished())return;
    80004b4c:	02079063          	bnez	a5,80004b6c <_ZN9Scheduler3putEP3TCB+0x40>
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    80004b50:	0205b823          	sd	zero,48(a1)
    tcb->set_next_scheduler(nullptr);
    if(tail){
    80004b54:	0000b797          	auipc	a5,0xb
    80004b58:	fd47b783          	ld	a5,-44(a5) # 8000fb28 <_ZN9Scheduler4tailE>
    80004b5c:	00078e63          	beqz	a5,80004b78 <_ZN9Scheduler3putEP3TCB+0x4c>
    80004b60:	02b7b823          	sd	a1,48(a5)
        tail->set_next_scheduler(tcb);
        tail = tail->get_next_scheduler();
    80004b64:	0000b797          	auipc	a5,0xb
    80004b68:	fcb7b223          	sd	a1,-60(a5) # 8000fb28 <_ZN9Scheduler4tailE>
    }
    else head = tail = tcb;
}
    80004b6c:	00813403          	ld	s0,8(sp)
    80004b70:	01010113          	addi	sp,sp,16
    80004b74:	00008067          	ret
    else head = tail = tcb;
    80004b78:	0000b797          	auipc	a5,0xb
    80004b7c:	fa878793          	addi	a5,a5,-88 # 8000fb20 <_ZN9Scheduler4headE>
    80004b80:	00b7b423          	sd	a1,8(a5)
    80004b84:	00b7b023          	sd	a1,0(a5)
    80004b88:	fe5ff06f          	j	80004b6c <_ZN9Scheduler3putEP3TCB+0x40>

0000000080004b8c <_ZN9Scheduler11getInstanceEv>:

Scheduler &Scheduler::getInstance() {
    if(!scheduler_instance){
    80004b8c:	0000b797          	auipc	a5,0xb
    80004b90:	fa47b783          	ld	a5,-92(a5) # 8000fb30 <_ZN9Scheduler18scheduler_instanceE>
    80004b94:	00078863          	beqz	a5,80004ba4 <_ZN9Scheduler11getInstanceEv+0x18>
        scheduler_cache = (kmem_cache_t*) kmem_cache_create("scheduler_cache", sizeof(Scheduler), nullptr, nullptr);
        scheduler_instance = (Scheduler*)kmem_cache_alloc(scheduler_cache);
    }
    return *scheduler_instance;
}
    80004b98:	0000b517          	auipc	a0,0xb
    80004b9c:	f9853503          	ld	a0,-104(a0) # 8000fb30 <_ZN9Scheduler18scheduler_instanceE>
    80004ba0:	00008067          	ret
Scheduler &Scheduler::getInstance() {
    80004ba4:	fe010113          	addi	sp,sp,-32
    80004ba8:	00113c23          	sd	ra,24(sp)
    80004bac:	00813823          	sd	s0,16(sp)
    80004bb0:	00913423          	sd	s1,8(sp)
    80004bb4:	02010413          	addi	s0,sp,32
        scheduler_cache = (kmem_cache_t*) kmem_cache_create("scheduler_cache", sizeof(Scheduler), nullptr, nullptr);
    80004bb8:	00000693          	li	a3,0
    80004bbc:	00000613          	li	a2,0
    80004bc0:	00100593          	li	a1,1
    80004bc4:	00008517          	auipc	a0,0x8
    80004bc8:	8ac50513          	addi	a0,a0,-1876 # 8000c470 <CONSOLE_STATUS+0x460>
    80004bcc:	00000097          	auipc	ra,0x0
    80004bd0:	4dc080e7          	jalr	1244(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004bd4:	0000b497          	auipc	s1,0xb
    80004bd8:	f4c48493          	addi	s1,s1,-180 # 8000fb20 <_ZN9Scheduler4headE>
    80004bdc:	00a4bc23          	sd	a0,24(s1)
        scheduler_instance = (Scheduler*)kmem_cache_alloc(scheduler_cache);
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	570080e7          	jalr	1392(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    80004be8:	00a4b823          	sd	a0,16(s1)
}
    80004bec:	0000b517          	auipc	a0,0xb
    80004bf0:	f4453503          	ld	a0,-188(a0) # 8000fb30 <_ZN9Scheduler18scheduler_instanceE>
    80004bf4:	01813083          	ld	ra,24(sp)
    80004bf8:	01013403          	ld	s0,16(sp)
    80004bfc:	00813483          	ld	s1,8(sp)
    80004c00:	02010113          	addi	sp,sp,32
    80004c04:	00008067          	ret

0000000080004c08 <_ZN15MemoryAllocator12memory_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::memory_alloc (size_t ssize){
    80004c08:	ff010113          	addi	sp,sp,-16
    80004c0c:	00813423          	sd	s0,8(sp)
    80004c10:	01010413          	addi	s0,sp,16
    80004c14:	00050713          	mv	a4,a0
    for(FreeMem* cur = fmem_head; cur != nullptr; cur = cur->next   ){ //  cur =  (FreeMem*)(*((char*)cur + 1))
    80004c18:	00053503          	ld	a0,0(a0)
    80004c1c:	06050063          	beqz	a0,80004c7c <_ZN15MemoryAllocator12memory_allocEm+0x74>
//        printString("velicina u blokovima: ");
//        printInteger(this->fmem_head->size);
//        printString("\n");

        // <= stavljamo jer zelimo size + 1 blok u tom dodatnom cuvam podatak o broju blokova
        if(*((size_t*)cur) <= ssize) continue;
    80004c20:	00053783          	ld	a5,0(a0)
    80004c24:	06f5f263          	bgeu	a1,a5,80004c88 <_ZN15MemoryAllocator12memory_allocEm+0x80>

        // slucaj da imamo jedan blok viska, dodajemo ga jer ne mozemo nista sa njim (trebaju min 2)
        if(cur->size == ssize + 2){
    80004c28:	00258693          	addi	a3,a1,2
    80004c2c:	06d78263          	beq	a5,a3,80004c90 <_ZN15MemoryAllocator12memory_allocEm+0x88>

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = ssize + 1;
        }
        else {
            FreeMem *newfrgm = (FreeMem *) ((char *) cur + (ssize + 1) * MEM_BLOCK_SIZE);
    80004c30:	00158793          	addi	a5,a1,1
    80004c34:	00679793          	slli	a5,a5,0x6
    80004c38:	00f507b3          	add	a5,a0,a5

            // ubacivanje ostatka adresa u evidenciju slobodnih adresa
            if (cur->prev) cur->prev->next = newfrgm;
    80004c3c:	01053683          	ld	a3,16(a0)
    80004c40:	08068a63          	beqz	a3,80004cd4 <_ZN15MemoryAllocator12memory_allocEm+0xcc>
    80004c44:	00f6b423          	sd	a5,8(a3)
            else fmem_head = newfrgm;
            if (cur->next)cur->next->prev = newfrgm;
    80004c48:	00853703          	ld	a4,8(a0)
    80004c4c:	00070463          	beqz	a4,80004c54 <_ZN15MemoryAllocator12memory_allocEm+0x4c>
    80004c50:	00f73823          	sd	a5,16(a4)
            newfrgm->prev = cur->prev;
    80004c54:	01053703          	ld	a4,16(a0)
    80004c58:	00e7b823          	sd	a4,16(a5)
            newfrgm->next = cur->next;
    80004c5c:	00853703          	ld	a4,8(a0)
    80004c60:	00e7b423          	sd	a4,8(a5)
            newfrgm->size = cur->size - ssize - 1;
    80004c64:	00053703          	ld	a4,0(a0)
    80004c68:	40b70733          	sub	a4,a4,a1
    80004c6c:	fff70713          	addi	a4,a4,-1
    80004c70:	00e7b023          	sd	a4,0(a5)

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = ssize;
    80004c74:	00b50023          	sb	a1,0(a0)
        }
        return (void*)((char*)cur + MEM_BLOCK_SIZE);
    80004c78:	04050513          	addi	a0,a0,64
    }
    return nullptr;
}
    80004c7c:	00813403          	ld	s0,8(sp)
    80004c80:	01010113          	addi	sp,sp,16
    80004c84:	00008067          	ret
    for(FreeMem* cur = fmem_head; cur != nullptr; cur = cur->next   ){ //  cur =  (FreeMem*)(*((char*)cur + 1))
    80004c88:	00853503          	ld	a0,8(a0)
    80004c8c:	f91ff06f          	j	80004c1c <_ZN15MemoryAllocator12memory_allocEm+0x14>
            if (cur->prev) {
    80004c90:	01053783          	ld	a5,16(a0)
    80004c94:	02078463          	beqz	a5,80004cbc <_ZN15MemoryAllocator12memory_allocEm+0xb4>
                cur->prev->next = cur->next;
    80004c98:	00853703          	ld	a4,8(a0)
    80004c9c:	00e7b423          	sd	a4,8(a5)
                if(cur->next)cur->next->prev = cur->prev;
    80004ca0:	00853783          	ld	a5,8(a0)
    80004ca4:	00078663          	beqz	a5,80004cb0 <_ZN15MemoryAllocator12memory_allocEm+0xa8>
    80004ca8:	01053703          	ld	a4,16(a0)
    80004cac:	00e7b823          	sd	a4,16(a5)
            *((char*)cur) = ssize + 1;
    80004cb0:	0015859b          	addiw	a1,a1,1
    80004cb4:	00b50023          	sb	a1,0(a0)
    80004cb8:	fc1ff06f          	j	80004c78 <_ZN15MemoryAllocator12memory_allocEm+0x70>
                fmem_head = cur->next;
    80004cbc:	00853783          	ld	a5,8(a0)
    80004cc0:	00f73023          	sd	a5,0(a4)
                if(cur->next)cur->next->prev = nullptr;
    80004cc4:	00853783          	ld	a5,8(a0)
    80004cc8:	fe0784e3          	beqz	a5,80004cb0 <_ZN15MemoryAllocator12memory_allocEm+0xa8>
    80004ccc:	0007b823          	sd	zero,16(a5)
    80004cd0:	fe1ff06f          	j	80004cb0 <_ZN15MemoryAllocator12memory_allocEm+0xa8>
            else fmem_head = newfrgm;
    80004cd4:	00f73023          	sd	a5,0(a4)
    80004cd8:	f71ff06f          	j	80004c48 <_ZN15MemoryAllocator12memory_allocEm+0x40>

0000000080004cdc <_ZN15MemoryAllocator11memory_freeEPv>:

int MemoryAllocator::memory_free(void * add) {
    80004cdc:	ff010113          	addi	sp,sp,-16
    80004ce0:	00813423          	sd	s0,8(sp)
    80004ce4:	01010413          	addi	s0,sp,16
    // u slucaju prosledjenog nullptr
    if(add == nullptr)return 0;
    80004ce8:	16058263          	beqz	a1,80004e4c <_ZN15MemoryAllocator11memory_freeEPv+0x170>
    // dalja obrada
    FreeMem* cur = nullptr;
    char* addr = (char*)add;
    size_t size = *(addr - MEM_BLOCK_SIZE);
    80004cec:	fc05c603          	lbu	a2,-64(a1)
    // u slucaju da smo prosledili adresu van heap - a
    if(addr < (char*)HEAP_START_ADDR || addr >= (char*)HEAP_END_ADDR)return -1; // address out of bounds exception
    80004cf0:	0000b797          	auipc	a5,0xb
    80004cf4:	ba87b783          	ld	a5,-1112(a5) # 8000f898 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004cf8:	0007b783          	ld	a5,0(a5)
    80004cfc:	14f5ec63          	bltu	a1,a5,80004e54 <_ZN15MemoryAllocator11memory_freeEPv+0x178>
    80004d00:	0000b797          	auipc	a5,0xb
    80004d04:	bd07b783          	ld	a5,-1072(a5) # 8000f8d0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80004d08:	0007b783          	ld	a5,0(a5)
    80004d0c:	14f5f863          	bgeu	a1,a5,80004e5c <_ZN15MemoryAllocator11memory_freeEPv+0x180>
    if(!fmem_head || addr < (char*)fmem_head)
    80004d10:	00053683          	ld	a3,0(a0)
    80004d14:	06068c63          	beqz	a3,80004d8c <_ZN15MemoryAllocator11memory_freeEPv+0xb0>
    80004d18:	06d5ee63          	bltu	a1,a3,80004d94 <_ZN15MemoryAllocator11memory_freeEPv+0xb8>
        cur = nullptr;
    else
        for(cur = fmem_head; cur->next != nullptr && addr > (char*)(cur->next); cur = cur->next);
    80004d1c:	00068793          	mv	a5,a3
    80004d20:	00078713          	mv	a4,a5
    80004d24:	0087b783          	ld	a5,8(a5)
    80004d28:	00078463          	beqz	a5,80004d30 <_ZN15MemoryAllocator11memory_freeEPv+0x54>
    80004d2c:	feb7eae3          	bltu	a5,a1,80004d20 <_ZN15MemoryAllocator11memory_freeEPv+0x44>

    // Try to append it to the previous free segment cur
    if(cur && (char*)cur + (cur->size + 1) * MEM_BLOCK_SIZE == addr){
    80004d30:	06070463          	beqz	a4,80004d98 <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
    80004d34:	00073883          	ld	a7,0(a4)
    80004d38:	00188813          	addi	a6,a7,1
    80004d3c:	00681813          	slli	a6,a6,0x6
    80004d40:	01070833          	add	a6,a4,a6
    80004d44:	04b81a63          	bne	a6,a1,80004d98 <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
        cur->size += size + 1; // dodajemo jos jedan zbog bloka za evidenciju
    80004d48:	00c886b3          	add	a3,a7,a2
    80004d4c:	00168693          	addi	a3,a3,1
    80004d50:	00d73023          	sd	a3,0(a4)
        // Try to join cur with the next free segment
        // ovde je ranije stajalo (cur->size + 1) * MEM_BLOCK_SIZE ali je +1 obrisan jer je taj prostor vec oslobodjen pa gadjamo najnormalnije adresu
        if(cur->next && (char*)cur + cur->size * MEM_BLOCK_SIZE == (char*)(cur->next)){
    80004d54:	00078863          	beqz	a5,80004d64 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
    80004d58:	00669613          	slli	a2,a3,0x6
    80004d5c:	00c70633          	add	a2,a4,a2
    80004d60:	00c78663          	beq	a5,a2,80004d6c <_ZN15MemoryAllocator11memory_freeEPv+0x90>
            // Remove the cur->next segment
            cur->size += cur->next->size; // dodajemo jos jedan zbog bloka za evidenciju
            cur->next = cur->next->next;
            if(cur->next) cur->next->prev = cur;
        }
        return 0;
    80004d64:	00000513          	li	a0,0
    80004d68:	07c0006f          	j	80004de4 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
            cur->size += cur->next->size; // dodajemo jos jedan zbog bloka za evidenciju
    80004d6c:	0007b603          	ld	a2,0(a5)
    80004d70:	00c686b3          	add	a3,a3,a2
    80004d74:	00d73023          	sd	a3,0(a4)
            cur->next = cur->next->next;
    80004d78:	0087b783          	ld	a5,8(a5)
    80004d7c:	00f73423          	sd	a5,8(a4)
            if(cur->next) cur->next->prev = cur;
    80004d80:	fe0782e3          	beqz	a5,80004d64 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
    80004d84:	00e7b823          	sd	a4,16(a5)
    80004d88:	fddff06f          	j	80004d64 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
        cur = nullptr;
    80004d8c:	00068713          	mv	a4,a3
    80004d90:	0080006f          	j	80004d98 <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
    80004d94:	00000713          	li	a4,0
    }

    FreeMem* newSeg = (FreeMem*)(addr - MEM_BLOCK_SIZE); // moramo da ga vratimo unazad
    80004d98:	fc058813          	addi	a6,a1,-64

    // Try to append it to the next free segment:
    FreeMem* nxtSeg = cur?cur->next:fmem_head;
    80004d9c:	00070463          	beqz	a4,80004da4 <_ZN15MemoryAllocator11memory_freeEPv+0xc8>
    80004da0:	00873683          	ld	a3,8(a4)
    // ovde sa obrisao (size + 1) jer ne vracam ni addr za jedan blok unazad pa se to kompenzuje
    if(nxtSeg && addr + size * MEM_BLOCK_SIZE == (char*)nxtSeg){
    80004da4:	00068863          	beqz	a3,80004db4 <_ZN15MemoryAllocator11memory_freeEPv+0xd8>
    80004da8:	00661793          	slli	a5,a2,0x6
    80004dac:	00f587b3          	add	a5,a1,a5
    80004db0:	04d78063          	beq	a5,a3,80004df0 <_ZN15MemoryAllocator11memory_freeEPv+0x114>
        else fmem_head = newSeg;
        return 0;
    }

    // No need to join; insert the new segment after cur
    newSeg->size = size + 1;
    80004db4:	00160613          	addi	a2,a2,1
    80004db8:	fcc5b023          	sd	a2,-64(a1)
    newSeg->prev = cur;
    80004dbc:	fce5b823          	sd	a4,-48(a1)
    if(cur)newSeg->next = cur->next;
    80004dc0:	06070a63          	beqz	a4,80004e34 <_ZN15MemoryAllocator11memory_freeEPv+0x158>
    80004dc4:	00873783          	ld	a5,8(a4)
    80004dc8:	fcf5b423          	sd	a5,-56(a1)
    else newSeg->next = fmem_head;
    if(newSeg->next) newSeg->next->prev = newSeg;
    80004dcc:	fc85b783          	ld	a5,-56(a1)
    80004dd0:	00078463          	beqz	a5,80004dd8 <_ZN15MemoryAllocator11memory_freeEPv+0xfc>
    80004dd4:	0107b823          	sd	a6,16(a5)
    if(cur)cur->next = newSeg;
    80004dd8:	06070463          	beqz	a4,80004e40 <_ZN15MemoryAllocator11memory_freeEPv+0x164>
    80004ddc:	01073423          	sd	a6,8(a4)
    else fmem_head = newSeg;

    return 0;
    80004de0:	00000513          	li	a0,0
}
    80004de4:	00813403          	ld	s0,8(sp)
    80004de8:	01010113          	addi	sp,sp,16
    80004dec:	00008067          	ret
        newSeg->size = nxtSeg->size + size + 1;
    80004df0:	0006b783          	ld	a5,0(a3)
    80004df4:	00c78633          	add	a2,a5,a2
    80004df8:	00160613          	addi	a2,a2,1
    80004dfc:	fcc5b023          	sd	a2,-64(a1)
        newSeg->prev = nxtSeg->prev;
    80004e00:	0106b783          	ld	a5,16(a3)
    80004e04:	fcf5b823          	sd	a5,-48(a1)
        newSeg->next = nxtSeg->next;
    80004e08:	0086b783          	ld	a5,8(a3)
    80004e0c:	fcf5b423          	sd	a5,-56(a1)
        if(nxtSeg->next)nxtSeg->next->prev = newSeg;
    80004e10:	00078463          	beqz	a5,80004e18 <_ZN15MemoryAllocator11memory_freeEPv+0x13c>
    80004e14:	0107b823          	sd	a6,16(a5)
        if(nxtSeg->prev)nxtSeg->prev->next = newSeg;
    80004e18:	0106b783          	ld	a5,16(a3)
    80004e1c:	00078863          	beqz	a5,80004e2c <_ZN15MemoryAllocator11memory_freeEPv+0x150>
    80004e20:	0107b423          	sd	a6,8(a5)
        return 0;
    80004e24:	00000513          	li	a0,0
    80004e28:	fbdff06f          	j	80004de4 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
        else fmem_head = newSeg;
    80004e2c:	01053023          	sd	a6,0(a0)
    80004e30:	ff5ff06f          	j	80004e24 <_ZN15MemoryAllocator11memory_freeEPv+0x148>
    else newSeg->next = fmem_head;
    80004e34:	00053783          	ld	a5,0(a0)
    80004e38:	fcf5b423          	sd	a5,-56(a1)
    80004e3c:	f91ff06f          	j	80004dcc <_ZN15MemoryAllocator11memory_freeEPv+0xf0>
    else fmem_head = newSeg;
    80004e40:	01053023          	sd	a6,0(a0)
    return 0;
    80004e44:	00000513          	li	a0,0
    80004e48:	f9dff06f          	j	80004de4 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    if(add == nullptr)return 0;
    80004e4c:	00000513          	li	a0,0
    80004e50:	f95ff06f          	j	80004de4 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    if(addr < (char*)HEAP_START_ADDR || addr >= (char*)HEAP_END_ADDR)return -1; // address out of bounds exception
    80004e54:	fff00513          	li	a0,-1
    80004e58:	f8dff06f          	j	80004de4 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    80004e5c:	fff00513          	li	a0,-1
    80004e60:	f85ff06f          	j	80004de4 <_ZN15MemoryAllocator11memory_freeEPv+0x108>

0000000080004e64 <_ZN3abi8sys_callEPv>:
#include "../h/abi.hpp"

void* abi::sys_call(void *param) {
    80004e64:	ff010113          	addi	sp,sp,-16
    80004e68:	00813423          	sd	s0,8(sp)
    80004e6c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ld a1, 8(a0)");
    80004e70:	00853583          	ld	a1,8(a0)
    __asm__ volatile("ld a2, 16(a0)");
    80004e74:	01053603          	ld	a2,16(a0)
    __asm__ volatile("ld a3, 24(a0)");
    80004e78:	01853683          	ld	a3,24(a0)
    __asm__ volatile("ld a4, 32(a0)");
    80004e7c:	02053703          	ld	a4,32(a0)
    __asm__ volatile("ld a5, 40(a0)");
    80004e80:	02853783          	ld	a5,40(a0)
    __asm__ volatile("ld a6, 48(a0)");
    80004e84:	03053803          	ld	a6,48(a0)
    __asm__ volatile("ld a7, 56(a0)");
    80004e88:	03853883          	ld	a7,56(a0)
    __asm__ volatile("ld a0, (a0)");
    80004e8c:	00053503          	ld	a0,0(a0)

    __asm__ volatile("ecall");
    80004e90:	00000073          	ecall
    // u a0 se nalazi povratna vrednost
    uint64 ret0;
    __asm__ volatile("mv %[ret], a0" : [ret]"=r"(ret0));
    80004e94:	00050513          	mv	a0,a0
    return (void*)ret0;
}
    80004e98:	00813403          	ld	s0,8(sp)
    80004e9c:	01010113          	addi	sp,sp,16
    80004ea0:	00008067          	ret

0000000080004ea4 <_ZN2TS3putEP3TCB>:
//        tmp = tmp->get_next_sleep();
//    }
//    printString("\n");
//}

void TS::put(TCB *tcb) {
    80004ea4:	ff010113          	addi	sp,sp,-16
    80004ea8:	00813423          	sd	s0,8(sp)
    80004eac:	01010413          	addi	s0,sp,16

    if(!head){
    80004eb0:	0000b797          	auipc	a5,0xb
    80004eb4:	c907b783          	ld	a5,-880(a5) # 8000fb40 <_ZN2TS4headE>
    80004eb8:	02078463          	beqz	a5,80004ee0 <_ZN2TS3putEP3TCB+0x3c>
    uint64 get_time_sleep()const{ return sleep; }
    80004ebc:	04853703          	ld	a4,72(a0)
        head->set_next_sleep(nullptr);
//        printTS();
        return;
    }

    TCB* tmp = head, *prev = nullptr;
    80004ec0:	00000613          	li	a2,0
    uint64 t_sleep = tcb->get_time_sleep();

    while(tmp && t_sleep >= tmp->get_time_sleep()){
    80004ec4:	02078663          	beqz	a5,80004ef0 <_ZN2TS3putEP3TCB+0x4c>
    80004ec8:	0487b683          	ld	a3,72(a5)
    80004ecc:	02d76263          	bltu	a4,a3,80004ef0 <_ZN2TS3putEP3TCB+0x4c>
        t_sleep -= tmp->get_time_sleep();
    80004ed0:	40d70733          	sub	a4,a4,a3
        prev = tmp;
    80004ed4:	00078613          	mv	a2,a5
        tmp = tmp->get_next_sleep();
    80004ed8:	0387b783          	ld	a5,56(a5)
    while(tmp && t_sleep >= tmp->get_time_sleep()){
    80004edc:	fe9ff06f          	j	80004ec4 <_ZN2TS3putEP3TCB+0x20>
        head = tcb;
    80004ee0:	0000b797          	auipc	a5,0xb
    80004ee4:	c6a7b023          	sd	a0,-928(a5) # 8000fb40 <_ZN2TS4headE>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    80004ee8:	02053c23          	sd	zero,56(a0)
        return;
    80004eec:	0240006f          	j	80004f10 <_ZN2TS3putEP3TCB+0x6c>
    80004ef0:	02f53c23          	sd	a5,56(a0)

    }

    tcb->set_next_sleep(tmp);
    if(tmp)tmp->set_time_sleep(tmp->get_time_sleep() - t_sleep);
    80004ef4:	00078863          	beqz	a5,80004f04 <_ZN2TS3putEP3TCB+0x60>
    uint64 get_time_sleep()const{ return sleep; }
    80004ef8:	0487b683          	ld	a3,72(a5)
    80004efc:	40e686b3          	sub	a3,a3,a4
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    80004f00:	04d7b423          	sd	a3,72(a5)
    80004f04:	04e53423          	sd	a4,72(a0)
    tcb->set_time_sleep(t_sleep);
    if(prev){
    80004f08:	00060a63          	beqz	a2,80004f1c <_ZN2TS3putEP3TCB+0x78>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    80004f0c:	02a63c23          	sd	a0,56(a2)
//    printTS();

    return;


}
    80004f10:	00813403          	ld	s0,8(sp)
    80004f14:	01010113          	addi	sp,sp,16
    80004f18:	00008067          	ret
        head = tcb;
    80004f1c:	0000b797          	auipc	a5,0xb
    80004f20:	c2a7b223          	sd	a0,-988(a5) # 8000fb40 <_ZN2TS4headE>
    80004f24:	fedff06f          	j	80004f10 <_ZN2TS3putEP3TCB+0x6c>

0000000080004f28 <_ZN2TS20decrement_and_removeEv>:

void TS::decrement_and_remove() {

    if(!head)return;
    80004f28:	0000b797          	auipc	a5,0xb
    80004f2c:	c187b783          	ld	a5,-1000(a5) # 8000fb40 <_ZN2TS4headE>
    80004f30:	06078a63          	beqz	a5,80004fa4 <_ZN2TS20decrement_and_removeEv+0x7c>
void TS::decrement_and_remove() {
    80004f34:	fe010113          	addi	sp,sp,-32
    80004f38:	00113c23          	sd	ra,24(sp)
    80004f3c:	00813823          	sd	s0,16(sp)
    80004f40:	00913423          	sd	s1,8(sp)
    80004f44:	02010413          	addi	s0,sp,32
    uint64 get_time_sleep()const{ return sleep; }
    80004f48:	0487b703          	ld	a4,72(a5)

    head->set_time_sleep(head->get_time_sleep() - 1);
    80004f4c:	fff70713          	addi	a4,a4,-1
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    80004f50:	04e7b423          	sd	a4,72(a5)
    TCB* tmp;
    while(head && !head->get_time_sleep()){
    80004f54:	0000b497          	auipc	s1,0xb
    80004f58:	bec4b483          	ld	s1,-1044(s1) # 8000fb40 <_ZN2TS4headE>
    80004f5c:	02048a63          	beqz	s1,80004f90 <_ZN2TS20decrement_and_removeEv+0x68>
    uint64 get_time_sleep()const{ return sleep; }
    80004f60:	0484b783          	ld	a5,72(s1)
    80004f64:	02079663          	bnez	a5,80004f90 <_ZN2TS20decrement_and_removeEv+0x68>
    TCB* get_next_sleep()const{ return next_sleep; }
    80004f68:	0384b783          	ld	a5,56(s1)
        tmp = head;
        head = head->get_next_sleep();
    80004f6c:	0000b717          	auipc	a4,0xb
    80004f70:	bcf73a23          	sd	a5,-1068(a4) # 8000fb40 <_ZN2TS4headE>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    80004f74:	0204bc23          	sd	zero,56(s1)
        tmp->set_next_sleep(nullptr);
        Scheduler::getInstance().put(tmp);
    80004f78:	00000097          	auipc	ra,0x0
    80004f7c:	c14080e7          	jalr	-1004(ra) # 80004b8c <_ZN9Scheduler11getInstanceEv>
    80004f80:	00048593          	mv	a1,s1
    80004f84:	00000097          	auipc	ra,0x0
    80004f88:	ba8080e7          	jalr	-1112(ra) # 80004b2c <_ZN9Scheduler3putEP3TCB>
    while(head && !head->get_time_sleep()){
    80004f8c:	fc9ff06f          	j	80004f54 <_ZN2TS20decrement_and_removeEv+0x2c>
    }
    return;

}
    80004f90:	01813083          	ld	ra,24(sp)
    80004f94:	01013403          	ld	s0,16(sp)
    80004f98:	00813483          	ld	s1,8(sp)
    80004f9c:	02010113          	addi	sp,sp,32
    80004fa0:	00008067          	ret
    80004fa4:	00008067          	ret

0000000080004fa8 <_ZN2TS11getInstanceEv>:

TS &TS::getInstance() {
    if(!ts_instance){
    80004fa8:	0000b797          	auipc	a5,0xb
    80004fac:	ba07b783          	ld	a5,-1120(a5) # 8000fb48 <_ZN2TS11ts_instanceE>
    80004fb0:	00078863          	beqz	a5,80004fc0 <_ZN2TS11getInstanceEv+0x18>
        ts_cache = (kmem_cache_t*) kmem_cache_create("ts_cache", sizeof(TS), nullptr, nullptr);
        ts_instance = (TS*)kmem_cache_alloc(ts_cache);
    }
    return *ts_instance;
}
    80004fb4:	0000b517          	auipc	a0,0xb
    80004fb8:	b9453503          	ld	a0,-1132(a0) # 8000fb48 <_ZN2TS11ts_instanceE>
    80004fbc:	00008067          	ret
TS &TS::getInstance() {
    80004fc0:	fe010113          	addi	sp,sp,-32
    80004fc4:	00113c23          	sd	ra,24(sp)
    80004fc8:	00813823          	sd	s0,16(sp)
    80004fcc:	00913423          	sd	s1,8(sp)
    80004fd0:	02010413          	addi	s0,sp,32
        ts_cache = (kmem_cache_t*) kmem_cache_create("ts_cache", sizeof(TS), nullptr, nullptr);
    80004fd4:	00000693          	li	a3,0
    80004fd8:	00000613          	li	a2,0
    80004fdc:	00100593          	li	a1,1
    80004fe0:	00007517          	auipc	a0,0x7
    80004fe4:	4a050513          	addi	a0,a0,1184 # 8000c480 <CONSOLE_STATUS+0x470>
    80004fe8:	00000097          	auipc	ra,0x0
    80004fec:	0c0080e7          	jalr	192(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004ff0:	0000b497          	auipc	s1,0xb
    80004ff4:	b5048493          	addi	s1,s1,-1200 # 8000fb40 <_ZN2TS4headE>
    80004ff8:	00a4b823          	sd	a0,16(s1)
        ts_instance = (TS*)kmem_cache_alloc(ts_cache);
    80004ffc:	00000097          	auipc	ra,0x0
    80005000:	154080e7          	jalr	340(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    80005004:	00a4b423          	sd	a0,8(s1)
}
    80005008:	0000b517          	auipc	a0,0xb
    8000500c:	b4053503          	ld	a0,-1216(a0) # 8000fb48 <_ZN2TS11ts_instanceE>
    80005010:	01813083          	ld	ra,24(sp)
    80005014:	01013403          	ld	s0,16(sp)
    80005018:	00813483          	ld	s1,8(sp)
    8000501c:	02010113          	addi	sp,sp,32
    80005020:	00008067          	ret

0000000080005024 <_Z9kmem_initPvi>:
#include "../h/SlabI.h"
#include "../h/Buddy.h"
#include "../h/Slab.h"

//
void kmem_init(void *space, int block_num) {
    80005024:	fe010113          	addi	sp,sp,-32
    80005028:	00113c23          	sd	ra,24(sp)
    8000502c:	00813823          	sd	s0,16(sp)
    80005030:	00913423          	sd	s1,8(sp)
    80005034:	01213023          	sd	s2,0(sp)
    80005038:	02010413          	addi	s0,sp,32
    8000503c:	00050913          	mv	s2,a0
    80005040:	00058493          	mv	s1,a1
        static BuddySystem bs;
    80005044:	0000b797          	auipc	a5,0xb
    80005048:	91c7c783          	lbu	a5,-1764(a5) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    8000504c:	02078e63          	beqz	a5,80005088 <_Z9kmem_initPvi+0x64>
        if(block_num != 0 && space != nullptr){
    80005050:	02048063          	beqz	s1,80005070 <_Z9kmem_initPvi+0x4c>
    80005054:	00090e63          	beqz	s2,80005070 <_Z9kmem_initPvi+0x4c>
            bs.buddyHeapStart = (size_t)space;
    80005058:	0000b517          	auipc	a0,0xb
    8000505c:	91050513          	addi	a0,a0,-1776 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80005060:	15253023          	sd	s2,320(a0)
            bs.buddyNumOfBlocks = block_num;
    80005064:	14953823          	sd	s1,336(a0)
            bs.initBuddy();
    80005068:	ffffd097          	auipc	ra,0xffffd
    8000506c:	f30080e7          	jalr	-208(ra) # 80001f98 <_ZN11BuddySystem9initBuddyEv>
    BuddySystem::getInstance(space, block_num);
}
    80005070:	01813083          	ld	ra,24(sp)
    80005074:	01013403          	ld	s0,16(sp)
    80005078:	00813483          	ld	s1,8(sp)
    8000507c:	00013903          	ld	s2,0(sp)
    80005080:	02010113          	addi	sp,sp,32
    80005084:	00008067          	ret
        static BuddySystem bs;
    80005088:	0000b517          	auipc	a0,0xb
    8000508c:	8e050513          	addi	a0,a0,-1824 # 8000f968 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80005090:	ffffd097          	auipc	ra,0xffffd
    80005094:	ad0080e7          	jalr	-1328(ra) # 80001b60 <_ZN11BuddySystemC1Ev>
    80005098:	00100793          	li	a5,1
    8000509c:	0000b717          	auipc	a4,0xb
    800050a0:	8cf70223          	sb	a5,-1852(a4) # 8000f960 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    800050a4:	fadff06f          	j	80005050 <_Z9kmem_initPvi+0x2c>

00000000800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>:

kmem_cache_t *kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    800050a8:	fd010113          	addi	sp,sp,-48
    800050ac:	02113423          	sd	ra,40(sp)
    800050b0:	02813023          	sd	s0,32(sp)
    800050b4:	00913c23          	sd	s1,24(sp)
    800050b8:	01213823          	sd	s2,16(sp)
    800050bc:	01313423          	sd	s3,8(sp)
    800050c0:	01413023          	sd	s4,0(sp)
    800050c4:	03010413          	addi	s0,sp,48
    800050c8:	00050493          	mv	s1,a0
    800050cc:	00058913          	mv	s2,a1
    800050d0:	00060993          	mv	s3,a2
    800050d4:	00068a13          	mv	s4,a3
    if(size_start(name)){
    800050d8:	ffffd097          	auipc	ra,0xffffd
    800050dc:	368080e7          	jalr	872(ra) # 80002440 <_Z10size_startPKc>
    800050e0:	02051e63          	bnez	a0,8000511c <_Z17kmem_cache_createPKcmPFvPvES3_+0x74>
        return nullptr;
    }
    kmem_cache_t* cache = (kmem_cache_t*)kmem_cache_s::kmem_cache_create(name, size, ctor, dtor);
    800050e4:	000a0693          	mv	a3,s4
    800050e8:	00098613          	mv	a2,s3
    800050ec:	00090593          	mv	a1,s2
    800050f0:	00048513          	mv	a0,s1
    800050f4:	ffffe097          	auipc	ra,0xffffe
    800050f8:	a5c080e7          	jalr	-1444(ra) # 80002b50 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>
    if(cache == nullptr)return nullptr;
    return cache;
}
    800050fc:	02813083          	ld	ra,40(sp)
    80005100:	02013403          	ld	s0,32(sp)
    80005104:	01813483          	ld	s1,24(sp)
    80005108:	01013903          	ld	s2,16(sp)
    8000510c:	00813983          	ld	s3,8(sp)
    80005110:	00013a03          	ld	s4,0(sp)
    80005114:	03010113          	addi	sp,sp,48
    80005118:	00008067          	ret
        return nullptr;
    8000511c:	00000513          	li	a0,0
    80005120:	fddff06f          	j	800050fc <_Z17kmem_cache_createPKcmPFvPvES3_+0x54>

0000000080005124 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep) {
    80005124:	ff010113          	addi	sp,sp,-16
    80005128:	00113423          	sd	ra,8(sp)
    8000512c:	00813023          	sd	s0,0(sp)
    80005130:	01010413          	addi	s0,sp,16
    return cachep->kmem_cache_shrink();
    80005134:	ffffe097          	auipc	ra,0xffffe
    80005138:	74c080e7          	jalr	1868(ra) # 80003880 <_ZN12kmem_cache_s17kmem_cache_shrinkEv>
}
    8000513c:	0005051b          	sext.w	a0,a0
    80005140:	00813083          	ld	ra,8(sp)
    80005144:	00013403          	ld	s0,0(sp)
    80005148:	01010113          	addi	sp,sp,16
    8000514c:	00008067          	ret

0000000080005150 <_Z16kmem_cache_allocP12kmem_cache_s>:

void *kmem_cache_alloc(kmem_cache_t *cachep) {
    80005150:	fe010113          	addi	sp,sp,-32
    80005154:	00113c23          	sd	ra,24(sp)
    80005158:	00813823          	sd	s0,16(sp)
    8000515c:	00913423          	sd	s1,8(sp)
    80005160:	01213023          	sd	s2,0(sp)
    80005164:	02010413          	addi	s0,sp,32
    80005168:	00050913          	mv	s2,a0
    for(int i = 0; i < 2; i++){
    8000516c:	00000493          	li	s1,0
    80005170:	00100793          	li	a5,1
    80005174:	0097ce63          	blt	a5,s1,80005190 <_Z16kmem_cache_allocP12kmem_cache_s+0x40>
        void* tmp = cachep->kmem_cache_alloc();
    80005178:	00090513          	mv	a0,s2
    8000517c:	ffffe097          	auipc	ra,0xffffe
    80005180:	4d4080e7          	jalr	1236(ra) # 80003650 <_ZN12kmem_cache_s16kmem_cache_allocEv>
        if(tmp != nullptr)return tmp;
    80005184:	00051863          	bnez	a0,80005194 <_Z16kmem_cache_allocP12kmem_cache_s+0x44>
    for(int i = 0; i < 2; i++){
    80005188:	0014849b          	addiw	s1,s1,1
    8000518c:	fe5ff06f          	j	80005170 <_Z16kmem_cache_allocP12kmem_cache_s+0x20>
    }
    // not enough memory, or exception triggered
    return nullptr;
    80005190:	00000513          	li	a0,0
}
    80005194:	01813083          	ld	ra,24(sp)
    80005198:	01013403          	ld	s0,16(sp)
    8000519c:	00813483          	ld	s1,8(sp)
    800051a0:	00013903          	ld	s2,0(sp)
    800051a4:	02010113          	addi	sp,sp,32
    800051a8:	00008067          	ret

00000000800051ac <_Z15kmem_cache_freeP12kmem_cache_sPv>:

int kmem_cache_free(kmem_cache_t *cachep, void *objp) {
    800051ac:	ff010113          	addi	sp,sp,-16
    800051b0:	00113423          	sd	ra,8(sp)
    800051b4:	00813023          	sd	s0,0(sp)
    800051b8:	01010413          	addi	s0,sp,16
    return cachep->kmem_cache_free(objp);
    800051bc:	ffffe097          	auipc	ra,0xffffe
    800051c0:	c00080e7          	jalr	-1024(ra) # 80002dbc <_ZN12kmem_cache_s15kmem_cache_freeEPv>
}
    800051c4:	00813083          	ld	ra,8(sp)
    800051c8:	00013403          	ld	s0,0(sp)
    800051cc:	01010113          	addi	sp,sp,16
    800051d0:	00008067          	ret

00000000800051d4 <_Z7kmallocm>:

void *kmalloc(size_t size) {
    800051d4:	ff010113          	addi	sp,sp,-16
    800051d8:	00113423          	sd	ra,8(sp)
    800051dc:	00813023          	sd	s0,0(sp)
    800051e0:	01010413          	addi	s0,sp,16
    int ret = kmem_cache_t::is_small_buffer_size_correct(size);
    800051e4:	ffffe097          	auipc	ra,0xffffe
    800051e8:	e58080e7          	jalr	-424(ra) # 8000303c <_ZN12kmem_cache_s28is_small_buffer_size_correctEm>
    if(!ret)return nullptr;
    800051ec:	00050e63          	beqz	a0,80005208 <_Z7kmallocm+0x34>
    return kmem_cache_t::kmalloc(ret);
    800051f0:	ffffe097          	auipc	ra,0xffffe
    800051f4:	580080e7          	jalr	1408(ra) # 80003770 <_ZN12kmem_cache_s7kmallocEm>
}
    800051f8:	00813083          	ld	ra,8(sp)
    800051fc:	00013403          	ld	s0,0(sp)
    80005200:	01010113          	addi	sp,sp,16
    80005204:	00008067          	ret
    if(!ret)return nullptr;
    80005208:	00000513          	li	a0,0
    8000520c:	fedff06f          	j	800051f8 <_Z7kmallocm+0x24>

0000000080005210 <_Z5kfreePKv>:

void kfree(const void *objp) {
    80005210:	ff010113          	addi	sp,sp,-16
    80005214:	00113423          	sd	ra,8(sp)
    80005218:	00813023          	sd	s0,0(sp)
    8000521c:	01010413          	addi	s0,sp,16
    kmem_cache_t::kfree(objp);
    80005220:	ffffe097          	auipc	ra,0xffffe
    80005224:	e7c080e7          	jalr	-388(ra) # 8000309c <_ZN12kmem_cache_s5kfreeEPKv>
}
    80005228:	00813083          	ld	ra,8(sp)
    8000522c:	00013403          	ld	s0,0(sp)
    80005230:	01010113          	addi	sp,sp,16
    80005234:	00008067          	ret

0000000080005238 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep) {
    80005238:	ff010113          	addi	sp,sp,-16
    8000523c:	00113423          	sd	ra,8(sp)
    80005240:	00813023          	sd	s0,0(sp)
    80005244:	01010413          	addi	s0,sp,16
    80005248:	00050593          	mv	a1,a0
    cachep->kmem_cache_destroy((size_t)cachep);
    8000524c:	ffffe097          	auipc	ra,0xffffe
    80005250:	71c080e7          	jalr	1820(ra) # 80003968 <_ZN12kmem_cache_s18kmem_cache_destroyEm>
}
    80005254:	00813083          	ld	ra,8(sp)
    80005258:	00013403          	ld	s0,0(sp)
    8000525c:	01010113          	addi	sp,sp,16
    80005260:	00008067          	ret

0000000080005264 <_Z15kmem_cache_infoP12kmem_cache_s>:

void kmem_cache_info(kmem_cache_t *cachep) {
    80005264:	ff010113          	addi	sp,sp,-16
    80005268:	00113423          	sd	ra,8(sp)
    8000526c:	00813023          	sd	s0,0(sp)
    80005270:	01010413          	addi	s0,sp,16
    cachep->kmem_cache_info();
    80005274:	ffffe097          	auipc	ra,0xffffe
    80005278:	e88080e7          	jalr	-376(ra) # 800030fc <_ZN12kmem_cache_s15kmem_cache_infoEv>
}
    8000527c:	00813083          	ld	ra,8(sp)
    80005280:	00013403          	ld	s0,0(sp)
    80005284:	01010113          	addi	sp,sp,16
    80005288:	00008067          	ret

000000008000528c <_Z16print_all_cachesv>:

void print_all_caches() {
    8000528c:	ff010113          	addi	sp,sp,-16
    80005290:	00113423          	sd	ra,8(sp)
    80005294:	00813023          	sd	s0,0(sp)
    80005298:	01010413          	addi	s0,sp,16
    kmem_cache_t::print_info_all_caches();
    8000529c:	ffffe097          	auipc	ra,0xffffe
    800052a0:	2b0080e7          	jalr	688(ra) # 8000354c <_ZN12kmem_cache_s21print_info_all_cachesEv>
}
    800052a4:	00813083          	ld	ra,8(sp)
    800052a8:	00013403          	ld	s0,0(sp)
    800052ac:	01010113          	addi	sp,sp,16
    800052b0:	00008067          	ret

00000000800052b4 <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    800052b4:	ff010113          	addi	sp,sp,-16
    800052b8:	00813423          	sd	s0,8(sp)
    800052bc:	01010413          	addi	s0,sp,16
    char *ptr = (char *)data;
    for (int j = 0; j < size; j++) {
    800052c0:	00000793          	li	a5,0
    800052c4:	00b7da63          	bge	a5,a1,800052d8 <_Z6memsetPKvii+0x24>
        ptr[j] = (char)value;
    800052c8:	00f50733          	add	a4,a0,a5
    800052cc:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    800052d0:	0017879b          	addiw	a5,a5,1
    800052d4:	ff1ff06f          	j	800052c4 <_Z6memsetPKvii+0x10>
    }
}
    800052d8:	00813403          	ld	s0,8(sp)
    800052dc:	01010113          	addi	sp,sp,16
    800052e0:	00008067          	ret

00000000800052e4 <_Z9constructPv>:

void construct(void *data) {
    800052e4:	fe010113          	addi	sp,sp,-32
    800052e8:	00113c23          	sd	ra,24(sp)
    800052ec:	00813823          	sd	s0,16(sp)
    800052f0:	00913423          	sd	s1,8(sp)
    800052f4:	02010413          	addi	s0,sp,32
    800052f8:	00050493          	mv	s1,a0
    static int i = 1;
    printInt(i++);
    800052fc:	0000a797          	auipc	a5,0xa
    80005300:	38478793          	addi	a5,a5,900 # 8000f680 <_ZZ9constructPvE1i>
    80005304:	0007a503          	lw	a0,0(a5)
    80005308:	0015071b          	addiw	a4,a0,1
    8000530c:	00e7a023          	sw	a4,0(a5)
    80005310:	00000613          	li	a2,0
    80005314:	00a00593          	li	a1,10
    80005318:	00000097          	auipc	ra,0x0
    8000531c:	50c080e7          	jalr	1292(ra) # 80005824 <_Z8printIntiii>
    printString("Shared object constructed.\n");
    80005320:	00007517          	auipc	a0,0x7
    80005324:	17050513          	addi	a0,a0,368 # 8000c490 <CONSOLE_STATUS+0x480>
    80005328:	00000097          	auipc	ra,0x0
    8000532c:	364080e7          	jalr	868(ra) # 8000568c <_Z11printStringPKc>
    memset(data, shared_size, MASK);
    80005330:	0a500613          	li	a2,165
    80005334:	00700593          	li	a1,7
    80005338:	00048513          	mv	a0,s1
    8000533c:	00000097          	auipc	ra,0x0
    80005340:	f78080e7          	jalr	-136(ra) # 800052b4 <_Z6memsetPKvii>
}
    80005344:	01813083          	ld	ra,24(sp)
    80005348:	01013403          	ld	s0,16(sp)
    8000534c:	00813483          	ld	s1,8(sp)
    80005350:	02010113          	addi	sp,sp,32
    80005354:	00008067          	ret

0000000080005358 <_Z5checkPvm>:

int check(void *data, size_t size) {
    80005358:	ff010113          	addi	sp,sp,-16
    8000535c:	00813423          	sd	s0,8(sp)
    80005360:	01010413          	addi	s0,sp,16
    80005364:	00050613          	mv	a2,a0
    int ret = 1;
    for (int i = 0; i < size; i++) {
    80005368:	00000793          	li	a5,0
    int ret = 1;
    8000536c:	00100513          	li	a0,1
    80005370:	0080006f          	j	80005378 <_Z5checkPvm+0x20>
    for (int i = 0; i < size; i++) {
    80005374:	0017879b          	addiw	a5,a5,1
    80005378:	00b7fe63          	bgeu	a5,a1,80005394 <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    8000537c:	00f60733          	add	a4,a2,a5
    80005380:	00074683          	lbu	a3,0(a4)
    80005384:	0a500713          	li	a4,165
    80005388:	fee686e3          	beq	a3,a4,80005374 <_Z5checkPvm+0x1c>
            ret = 0;
    8000538c:	00000513          	li	a0,0
    80005390:	fe5ff06f          	j	80005374 <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    80005394:	00813403          	ld	s0,8(sp)
    80005398:	01010113          	addi	sp,sp,16
    8000539c:	00008067          	ret

00000000800053a0 <_Z4workPv>:
struct objects_s {
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata) {
    800053a0:	f8010113          	addi	sp,sp,-128
    800053a4:	06113c23          	sd	ra,120(sp)
    800053a8:	06813823          	sd	s0,112(sp)
    800053ac:	06913423          	sd	s1,104(sp)
    800053b0:	07213023          	sd	s2,96(sp)
    800053b4:	05313c23          	sd	s3,88(sp)
    800053b8:	05413823          	sd	s4,80(sp)
    800053bc:	05513423          	sd	s5,72(sp)
    800053c0:	05613023          	sd	s6,64(sp)
    800053c4:	03713c23          	sd	s7,56(sp)
    800053c8:	03813823          	sd	s8,48(sp)
    800053cc:	03913423          	sd	s9,40(sp)
    800053d0:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    800053d4:	00053c03          	ld	s8,0(a0)
    800053d8:	f9843423          	sd	s8,-120(s0)
    800053dc:	00853783          	ld	a5,8(a0)
    800053e0:	f8f43823          	sd	a5,-112(s0)
    800053e4:	01053783          	ld	a5,16(a0)
    800053e8:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    800053ec:	000c079b          	sext.w	a5,s8
    800053f0:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    800053f4:	00379713          	slli	a4,a5,0x3
    800053f8:	0000a797          	auipc	a5,0xa
    800053fc:	29078793          	addi	a5,a5,656 # 8000f688 <_ZL11CACHE_NAMES>
    80005400:	00e787b3          	add	a5,a5,a4
    80005404:	000c0b13          	mv	s6,s8
    80005408:	00000693          	li	a3,0
    8000540c:	00000613          	li	a2,0
    80005410:	000c0593          	mv	a1,s8
    80005414:	0007b503          	ld	a0,0(a5)
    80005418:	00000097          	auipc	ra,0x0
    8000541c:	c90080e7          	jalr	-880(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005420:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    80005424:	f9842b83          	lw	s7,-104(s0)
    80005428:	004b9513          	slli	a0,s7,0x4
    8000542c:	00000097          	auipc	ra,0x0
    80005430:	da8080e7          	jalr	-600(ra) # 800051d4 <_Z7kmallocm>
    80005434:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    80005438:	00000493          	li	s1,0
    int size = 0;
    8000543c:	00000993          	li	s3,0
    80005440:	0380006f          	j	80005478 <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                printString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    80005444:	00499913          	slli	s2,s3,0x4
    80005448:	012a8933          	add	s2,s5,s2
    8000544c:	000a0513          	mv	a0,s4
    80005450:	00000097          	auipc	ra,0x0
    80005454:	d00080e7          	jalr	-768(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    80005458:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    8000545c:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    80005460:	0a500613          	li	a2,165
    80005464:	000c0593          	mv	a1,s8
    80005468:	00000097          	auipc	ra,0x0
    8000546c:	e4c080e7          	jalr	-436(ra) # 800052b4 <_Z6memsetPKvii>
        }
        size++;
    80005470:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    80005474:	0014849b          	addiw	s1,s1,1
    80005478:	0574da63          	bge	s1,s7,800054cc <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    8000547c:	06400793          	li	a5,100
    80005480:	02f4e7bb          	remw	a5,s1,a5
    80005484:	fc0790e3          	bnez	a5,80005444 <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80005488:	f9043c83          	ld	s9,-112(s0)
    8000548c:	00499913          	slli	s2,s3,0x4
    80005490:	012a8933          	add	s2,s5,s2
    80005494:	000c8513          	mv	a0,s9
    80005498:	00000097          	auipc	ra,0x0
    8000549c:	cb8080e7          	jalr	-840(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    800054a0:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    800054a4:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    800054a8:	00700593          	li	a1,7
    800054ac:	00000097          	auipc	ra,0x0
    800054b0:	eac080e7          	jalr	-340(ra) # 80005358 <_Z5checkPvm>
    800054b4:	fa051ee3          	bnez	a0,80005470 <_Z4workPv+0xd0>
                printString("Value not correct!");
    800054b8:	00007517          	auipc	a0,0x7
    800054bc:	ff850513          	addi	a0,a0,-8 # 8000c4b0 <CONSOLE_STATUS+0x4a0>
    800054c0:	00000097          	auipc	ra,0x0
    800054c4:	1cc080e7          	jalr	460(ra) # 8000568c <_Z11printStringPKc>
    800054c8:	fa9ff06f          	j	80005470 <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    800054cc:	000a0513          	mv	a0,s4
    800054d0:	00000097          	auipc	ra,0x0
    800054d4:	d94080e7          	jalr	-620(ra) # 80005264 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    800054d8:	f9043503          	ld	a0,-112(s0)
    800054dc:	00000097          	auipc	ra,0x0
    800054e0:	d88080e7          	jalr	-632(ra) # 80005264 <_Z15kmem_cache_infoP12kmem_cache_s>

    for (int i = 0; i < size; i++) {
    800054e4:	00000913          	li	s2,0
    800054e8:	0300006f          	j	80005518 <_Z4workPv+0x178>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    800054ec:	000b0593          	mv	a1,s6
    800054f0:	0440006f          	j	80005534 <_Z4workPv+0x194>
            printString("Value not correct!");
    800054f4:	00007517          	auipc	a0,0x7
    800054f8:	fbc50513          	addi	a0,a0,-68 # 8000c4b0 <CONSOLE_STATUS+0x4a0>
    800054fc:	00000097          	auipc	ra,0x0
    80005500:	190080e7          	jalr	400(ra) # 8000568c <_Z11printStringPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    80005504:	0084b583          	ld	a1,8(s1)
    80005508:	0004b503          	ld	a0,0(s1)
    8000550c:	00000097          	auipc	ra,0x0
    80005510:	ca0080e7          	jalr	-864(ra) # 800051ac <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    80005514:	0019091b          	addiw	s2,s2,1
    80005518:	03395663          	bge	s2,s3,80005544 <_Z4workPv+0x1a4>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    8000551c:	00491493          	slli	s1,s2,0x4
    80005520:	009a84b3          	add	s1,s5,s1
    80005524:	0084b503          	ld	a0,8(s1)
    80005528:	0004b783          	ld	a5,0(s1)
    8000552c:	fd4780e3          	beq	a5,s4,800054ec <_Z4workPv+0x14c>
    80005530:	00700593          	li	a1,7
    80005534:	00000097          	auipc	ra,0x0
    80005538:	e24080e7          	jalr	-476(ra) # 80005358 <_Z5checkPvm>
    8000553c:	fc0514e3          	bnez	a0,80005504 <_Z4workPv+0x164>
    80005540:	fb5ff06f          	j	800054f4 <_Z4workPv+0x154>
    }

    kfree(objs);
    80005544:	000a8513          	mv	a0,s5
    80005548:	00000097          	auipc	ra,0x0
    8000554c:	cc8080e7          	jalr	-824(ra) # 80005210 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    80005550:	000a0513          	mv	a0,s4
    80005554:	00000097          	auipc	ra,0x0
    80005558:	ce4080e7          	jalr	-796(ra) # 80005238 <_Z18kmem_cache_destroyP12kmem_cache_s>
}
    8000555c:	07813083          	ld	ra,120(sp)
    80005560:	07013403          	ld	s0,112(sp)
    80005564:	06813483          	ld	s1,104(sp)
    80005568:	06013903          	ld	s2,96(sp)
    8000556c:	05813983          	ld	s3,88(sp)
    80005570:	05013a03          	ld	s4,80(sp)
    80005574:	04813a83          	ld	s5,72(sp)
    80005578:	04013b03          	ld	s6,64(sp)
    8000557c:	03813b83          	ld	s7,56(sp)
    80005580:	03013c03          	ld	s8,48(sp)
    80005584:	02813c83          	ld	s9,40(sp)
    80005588:	08010113          	addi	sp,sp,128
    8000558c:	00008067          	ret

0000000080005590 <_Z4runsPFvPvEP6data_si>:



void runs(void(*work)(void*), struct data_s* data, int num) {
    80005590:	fb010113          	addi	sp,sp,-80
    80005594:	04113423          	sd	ra,72(sp)
    80005598:	04813023          	sd	s0,64(sp)
    8000559c:	02913c23          	sd	s1,56(sp)
    800055a0:	03213823          	sd	s2,48(sp)
    800055a4:	03313423          	sd	s3,40(sp)
    800055a8:	03413023          	sd	s4,32(sp)
    800055ac:	05010413          	addi	s0,sp,80
    800055b0:	00050a13          	mv	s4,a0
    800055b4:	00058913          	mv	s2,a1
    800055b8:	00060993          	mv	s3,a2
    for (int i = 0; i < num; i++) { // 5 puta
    800055bc:	00000493          	li	s1,0
    800055c0:	0334d863          	bge	s1,s3,800055f0 <_Z4runsPFvPvEP6data_si+0x60>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    800055c4:	00093783          	ld	a5,0(s2)
    800055c8:	faf43c23          	sd	a5,-72(s0)
    800055cc:	00893783          	ld	a5,8(s2)
    800055d0:	fcf43023          	sd	a5,-64(s0)
    800055d4:	01093783          	ld	a5,16(s2)
    800055d8:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    800055dc:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    800055e0:	fb840513          	addi	a0,s0,-72
    800055e4:	000a00e7          	jalr	s4
    for (int i = 0; i < num; i++) { // 5 puta
    800055e8:	0014849b          	addiw	s1,s1,1
    800055ec:	fd5ff06f          	j	800055c0 <_Z4runsPFvPvEP6data_si+0x30>
    }
}
    800055f0:	04813083          	ld	ra,72(sp)
    800055f4:	04013403          	ld	s0,64(sp)
    800055f8:	03813483          	ld	s1,56(sp)
    800055fc:	03013903          	ld	s2,48(sp)
    80005600:	02813983          	ld	s3,40(sp)
    80005604:	02013a03          	ld	s4,32(sp)
    80005608:	05010113          	addi	sp,sp,80
    8000560c:	00008067          	ret

0000000080005610 <_Z10test_drugiv>:

void test_drugi() {
    80005610:	fc010113          	addi	sp,sp,-64
    80005614:	02113c23          	sd	ra,56(sp)
    80005618:	02813823          	sd	s0,48(sp)
    8000561c:	02913423          	sd	s1,40(sp)
    80005620:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    80005624:	00000693          	li	a3,0
    80005628:	00000617          	auipc	a2,0x0
    8000562c:	cbc60613          	addi	a2,a2,-836 # 800052e4 <_Z9constructPv>
    80005630:	00700593          	li	a1,7
    80005634:	00007517          	auipc	a0,0x7
    80005638:	e9450513          	addi	a0,a0,-364 # 8000c4c8 <CONSOLE_STATUS+0x4b8>
    8000563c:	00000097          	auipc	ra,0x0
    80005640:	a6c080e7          	jalr	-1428(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005644:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    80005648:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    8000564c:	3e800793          	li	a5,1000
    80005650:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    80005654:	00500613          	li	a2,5
    80005658:	fc840593          	addi	a1,s0,-56
    8000565c:	00000517          	auipc	a0,0x0
    80005660:	d4450513          	addi	a0,a0,-700 # 800053a0 <_Z4workPv>
    80005664:	00000097          	auipc	ra,0x0
    80005668:	f2c080e7          	jalr	-212(ra) # 80005590 <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    8000566c:	00048513          	mv	a0,s1
    80005670:	00000097          	auipc	ra,0x0
    80005674:	bc8080e7          	jalr	-1080(ra) # 80005238 <_Z18kmem_cache_destroyP12kmem_cache_s>
    80005678:	03813083          	ld	ra,56(sp)
    8000567c:	03013403          	ld	s0,48(sp)
    80005680:	02813483          	ld	s1,40(sp)
    80005684:	04010113          	addi	sp,sp,64
    80005688:	00008067          	ret

000000008000568c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000568c:	fe010113          	addi	sp,sp,-32
    80005690:	00113c23          	sd	ra,24(sp)
    80005694:	00813823          	sd	s0,16(sp)
    80005698:	00913423          	sd	s1,8(sp)
    8000569c:	02010413          	addi	s0,sp,32
    800056a0:	00050493          	mv	s1,a0
    LOCK();
    800056a4:	00100613          	li	a2,1
    800056a8:	00000593          	li	a1,0
    800056ac:	0000a517          	auipc	a0,0xa
    800056b0:	4ac50513          	addi	a0,a0,1196 # 8000fb58 <lockPrint>
    800056b4:	ffffc097          	auipc	ra,0xffffc
    800056b8:	a44080e7          	jalr	-1468(ra) # 800010f8 <copy_and_swap>
    800056bc:	fe0514e3          	bnez	a0,800056a4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800056c0:	0004c503          	lbu	a0,0(s1)
    800056c4:	00050a63          	beqz	a0,800056d8 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800056c8:	ffffc097          	auipc	ra,0xffffc
    800056cc:	f80080e7          	jalr	-128(ra) # 80001648 <putc>
        string++;
    800056d0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800056d4:	fedff06f          	j	800056c0 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800056d8:	00000613          	li	a2,0
    800056dc:	00100593          	li	a1,1
    800056e0:	0000a517          	auipc	a0,0xa
    800056e4:	47850513          	addi	a0,a0,1144 # 8000fb58 <lockPrint>
    800056e8:	ffffc097          	auipc	ra,0xffffc
    800056ec:	a10080e7          	jalr	-1520(ra) # 800010f8 <copy_and_swap>
    800056f0:	fe0514e3          	bnez	a0,800056d8 <_Z11printStringPKc+0x4c>
}
    800056f4:	01813083          	ld	ra,24(sp)
    800056f8:	01013403          	ld	s0,16(sp)
    800056fc:	00813483          	ld	s1,8(sp)
    80005700:	02010113          	addi	sp,sp,32
    80005704:	00008067          	ret

0000000080005708 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005708:	fd010113          	addi	sp,sp,-48
    8000570c:	02113423          	sd	ra,40(sp)
    80005710:	02813023          	sd	s0,32(sp)
    80005714:	00913c23          	sd	s1,24(sp)
    80005718:	01213823          	sd	s2,16(sp)
    8000571c:	01313423          	sd	s3,8(sp)
    80005720:	01413023          	sd	s4,0(sp)
    80005724:	03010413          	addi	s0,sp,48
    80005728:	00050993          	mv	s3,a0
    8000572c:	00058a13          	mv	s4,a1
    LOCK();
    80005730:	00100613          	li	a2,1
    80005734:	00000593          	li	a1,0
    80005738:	0000a517          	auipc	a0,0xa
    8000573c:	42050513          	addi	a0,a0,1056 # 8000fb58 <lockPrint>
    80005740:	ffffc097          	auipc	ra,0xffffc
    80005744:	9b8080e7          	jalr	-1608(ra) # 800010f8 <copy_and_swap>
    80005748:	fe0514e3          	bnez	a0,80005730 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000574c:	00000913          	li	s2,0
    80005750:	00090493          	mv	s1,s2
    80005754:	0019091b          	addiw	s2,s2,1
    80005758:	03495a63          	bge	s2,s4,8000578c <_Z9getStringPci+0x84>
        cc = getc();
    8000575c:	ffffc097          	auipc	ra,0xffffc
    80005760:	e98080e7          	jalr	-360(ra) # 800015f4 <getc>
        if(cc < 1)
    80005764:	02050463          	beqz	a0,8000578c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005768:	009984b3          	add	s1,s3,s1
    8000576c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005770:	00a00793          	li	a5,10
    80005774:	00f50a63          	beq	a0,a5,80005788 <_Z9getStringPci+0x80>
    80005778:	00d00793          	li	a5,13
    8000577c:	fcf51ae3          	bne	a0,a5,80005750 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005780:	00090493          	mv	s1,s2
    80005784:	0080006f          	j	8000578c <_Z9getStringPci+0x84>
    80005788:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000578c:	009984b3          	add	s1,s3,s1
    80005790:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005794:	00000613          	li	a2,0
    80005798:	00100593          	li	a1,1
    8000579c:	0000a517          	auipc	a0,0xa
    800057a0:	3bc50513          	addi	a0,a0,956 # 8000fb58 <lockPrint>
    800057a4:	ffffc097          	auipc	ra,0xffffc
    800057a8:	954080e7          	jalr	-1708(ra) # 800010f8 <copy_and_swap>
    800057ac:	fe0514e3          	bnez	a0,80005794 <_Z9getStringPci+0x8c>
    return buf;
}
    800057b0:	00098513          	mv	a0,s3
    800057b4:	02813083          	ld	ra,40(sp)
    800057b8:	02013403          	ld	s0,32(sp)
    800057bc:	01813483          	ld	s1,24(sp)
    800057c0:	01013903          	ld	s2,16(sp)
    800057c4:	00813983          	ld	s3,8(sp)
    800057c8:	00013a03          	ld	s4,0(sp)
    800057cc:	03010113          	addi	sp,sp,48
    800057d0:	00008067          	ret

00000000800057d4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800057d4:	ff010113          	addi	sp,sp,-16
    800057d8:	00813423          	sd	s0,8(sp)
    800057dc:	01010413          	addi	s0,sp,16
    800057e0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800057e4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800057e8:	0006c603          	lbu	a2,0(a3)
    800057ec:	fd06071b          	addiw	a4,a2,-48
    800057f0:	0ff77713          	andi	a4,a4,255
    800057f4:	00900793          	li	a5,9
    800057f8:	02e7e063          	bltu	a5,a4,80005818 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800057fc:	0025179b          	slliw	a5,a0,0x2
    80005800:	00a787bb          	addw	a5,a5,a0
    80005804:	0017979b          	slliw	a5,a5,0x1
    80005808:	00168693          	addi	a3,a3,1
    8000580c:	00c787bb          	addw	a5,a5,a2
    80005810:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005814:	fd5ff06f          	j	800057e8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005818:	00813403          	ld	s0,8(sp)
    8000581c:	01010113          	addi	sp,sp,16
    80005820:	00008067          	ret

0000000080005824 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005824:	fc010113          	addi	sp,sp,-64
    80005828:	02113c23          	sd	ra,56(sp)
    8000582c:	02813823          	sd	s0,48(sp)
    80005830:	02913423          	sd	s1,40(sp)
    80005834:	03213023          	sd	s2,32(sp)
    80005838:	01313c23          	sd	s3,24(sp)
    8000583c:	04010413          	addi	s0,sp,64
    80005840:	00050493          	mv	s1,a0
    80005844:	00058913          	mv	s2,a1
    80005848:	00060993          	mv	s3,a2
    LOCK();
    8000584c:	00100613          	li	a2,1
    80005850:	00000593          	li	a1,0
    80005854:	0000a517          	auipc	a0,0xa
    80005858:	30450513          	addi	a0,a0,772 # 8000fb58 <lockPrint>
    8000585c:	ffffc097          	auipc	ra,0xffffc
    80005860:	89c080e7          	jalr	-1892(ra) # 800010f8 <copy_and_swap>
    80005864:	fe0514e3          	bnez	a0,8000584c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005868:	00098463          	beqz	s3,80005870 <_Z8printIntiii+0x4c>
    8000586c:	0804c463          	bltz	s1,800058f4 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005870:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005874:	00000593          	li	a1,0
    }

    i = 0;
    80005878:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000587c:	0009079b          	sext.w	a5,s2
    80005880:	0325773b          	remuw	a4,a0,s2
    80005884:	00048613          	mv	a2,s1
    80005888:	0014849b          	addiw	s1,s1,1
    8000588c:	02071693          	slli	a3,a4,0x20
    80005890:	0206d693          	srli	a3,a3,0x20
    80005894:	0000a717          	auipc	a4,0xa
    80005898:	e1c70713          	addi	a4,a4,-484 # 8000f6b0 <digits>
    8000589c:	00d70733          	add	a4,a4,a3
    800058a0:	00074683          	lbu	a3,0(a4)
    800058a4:	fd040713          	addi	a4,s0,-48
    800058a8:	00c70733          	add	a4,a4,a2
    800058ac:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800058b0:	0005071b          	sext.w	a4,a0
    800058b4:	0325553b          	divuw	a0,a0,s2
    800058b8:	fcf772e3          	bgeu	a4,a5,8000587c <_Z8printIntiii+0x58>
    if(neg)
    800058bc:	00058c63          	beqz	a1,800058d4 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800058c0:	fd040793          	addi	a5,s0,-48
    800058c4:	009784b3          	add	s1,a5,s1
    800058c8:	02d00793          	li	a5,45
    800058cc:	fef48823          	sb	a5,-16(s1)
    800058d0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800058d4:	fff4849b          	addiw	s1,s1,-1
    800058d8:	0204c463          	bltz	s1,80005900 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800058dc:	fd040793          	addi	a5,s0,-48
    800058e0:	009787b3          	add	a5,a5,s1
    800058e4:	ff07c503          	lbu	a0,-16(a5)
    800058e8:	ffffc097          	auipc	ra,0xffffc
    800058ec:	d60080e7          	jalr	-672(ra) # 80001648 <putc>
    800058f0:	fe5ff06f          	j	800058d4 <_Z8printIntiii+0xb0>
        x = -xx;
    800058f4:	4090053b          	negw	a0,s1
        neg = 1;
    800058f8:	00100593          	li	a1,1
        x = -xx;
    800058fc:	f7dff06f          	j	80005878 <_Z8printIntiii+0x54>

    UNLOCK();
    80005900:	00000613          	li	a2,0
    80005904:	00100593          	li	a1,1
    80005908:	0000a517          	auipc	a0,0xa
    8000590c:	25050513          	addi	a0,a0,592 # 8000fb58 <lockPrint>
    80005910:	ffffb097          	auipc	ra,0xffffb
    80005914:	7e8080e7          	jalr	2024(ra) # 800010f8 <copy_and_swap>
    80005918:	fe0514e3          	bnez	a0,80005900 <_Z8printIntiii+0xdc>
    8000591c:	03813083          	ld	ra,56(sp)
    80005920:	03013403          	ld	s0,48(sp)
    80005924:	02813483          	ld	s1,40(sp)
    80005928:	02013903          	ld	s2,32(sp)
    8000592c:	01813983          	ld	s3,24(sp)
    80005930:	04010113          	addi	sp,sp,64
    80005934:	00008067          	ret

0000000080005938 <_ZN9BufferCPPC1Ei>:
#include "../test/buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005938:	fd010113          	addi	sp,sp,-48
    8000593c:	02113423          	sd	ra,40(sp)
    80005940:	02813023          	sd	s0,32(sp)
    80005944:	00913c23          	sd	s1,24(sp)
    80005948:	01213823          	sd	s2,16(sp)
    8000594c:	01313423          	sd	s3,8(sp)
    80005950:	03010413          	addi	s0,sp,48
    80005954:	00050493          	mv	s1,a0
    80005958:	00058993          	mv	s3,a1
    8000595c:	0015879b          	addiw	a5,a1,1
    80005960:	0007851b          	sext.w	a0,a5
    80005964:	00f4a023          	sw	a5,0(s1)
    80005968:	0004a823          	sw	zero,16(s1)
    8000596c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005970:	00251513          	slli	a0,a0,0x2
    80005974:	ffffc097          	auipc	ra,0xffffc
    80005978:	8d0080e7          	jalr	-1840(ra) # 80001244 <mem_alloc>
    8000597c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005980:	01000513          	li	a0,16
    80005984:	ffffe097          	auipc	ra,0xffffe
    80005988:	2c0080e7          	jalr	704(ra) # 80003c44 <_Znwm>
    8000598c:	00050913          	mv	s2,a0
    80005990:	00050863          	beqz	a0,800059a0 <_ZN9BufferCPPC1Ei+0x68>
    80005994:	00000593          	li	a1,0
    80005998:	ffffe097          	auipc	ra,0xffffe
    8000599c:	5c8080e7          	jalr	1480(ra) # 80003f60 <_ZN9SemaphoreC1Ej>
    800059a0:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800059a4:	01000513          	li	a0,16
    800059a8:	ffffe097          	auipc	ra,0xffffe
    800059ac:	29c080e7          	jalr	668(ra) # 80003c44 <_Znwm>
    800059b0:	00050913          	mv	s2,a0
    800059b4:	00050863          	beqz	a0,800059c4 <_ZN9BufferCPPC1Ei+0x8c>
    800059b8:	00098593          	mv	a1,s3
    800059bc:	ffffe097          	auipc	ra,0xffffe
    800059c0:	5a4080e7          	jalr	1444(ra) # 80003f60 <_ZN9SemaphoreC1Ej>
    800059c4:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    800059c8:	01000513          	li	a0,16
    800059cc:	ffffe097          	auipc	ra,0xffffe
    800059d0:	278080e7          	jalr	632(ra) # 80003c44 <_Znwm>
    800059d4:	00050913          	mv	s2,a0
    800059d8:	00050863          	beqz	a0,800059e8 <_ZN9BufferCPPC1Ei+0xb0>
    800059dc:	00100593          	li	a1,1
    800059e0:	ffffe097          	auipc	ra,0xffffe
    800059e4:	580080e7          	jalr	1408(ra) # 80003f60 <_ZN9SemaphoreC1Ej>
    800059e8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800059ec:	01000513          	li	a0,16
    800059f0:	ffffe097          	auipc	ra,0xffffe
    800059f4:	254080e7          	jalr	596(ra) # 80003c44 <_Znwm>
    800059f8:	00050913          	mv	s2,a0
    800059fc:	00050863          	beqz	a0,80005a0c <_ZN9BufferCPPC1Ei+0xd4>
    80005a00:	00100593          	li	a1,1
    80005a04:	ffffe097          	auipc	ra,0xffffe
    80005a08:	55c080e7          	jalr	1372(ra) # 80003f60 <_ZN9SemaphoreC1Ej>
    80005a0c:	0324b823          	sd	s2,48(s1)
}
    80005a10:	02813083          	ld	ra,40(sp)
    80005a14:	02013403          	ld	s0,32(sp)
    80005a18:	01813483          	ld	s1,24(sp)
    80005a1c:	01013903          	ld	s2,16(sp)
    80005a20:	00813983          	ld	s3,8(sp)
    80005a24:	03010113          	addi	sp,sp,48
    80005a28:	00008067          	ret
    80005a2c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005a30:	00090513          	mv	a0,s2
    80005a34:	ffffe097          	auipc	ra,0xffffe
    80005a38:	260080e7          	jalr	608(ra) # 80003c94 <_ZdlPv>
    80005a3c:	00048513          	mv	a0,s1
    80005a40:	000ce097          	auipc	ra,0xce
    80005a44:	728080e7          	jalr	1832(ra) # 800d4168 <_Unwind_Resume>
    80005a48:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005a4c:	00090513          	mv	a0,s2
    80005a50:	ffffe097          	auipc	ra,0xffffe
    80005a54:	244080e7          	jalr	580(ra) # 80003c94 <_ZdlPv>
    80005a58:	00048513          	mv	a0,s1
    80005a5c:	000ce097          	auipc	ra,0xce
    80005a60:	70c080e7          	jalr	1804(ra) # 800d4168 <_Unwind_Resume>
    80005a64:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005a68:	00090513          	mv	a0,s2
    80005a6c:	ffffe097          	auipc	ra,0xffffe
    80005a70:	228080e7          	jalr	552(ra) # 80003c94 <_ZdlPv>
    80005a74:	00048513          	mv	a0,s1
    80005a78:	000ce097          	auipc	ra,0xce
    80005a7c:	6f0080e7          	jalr	1776(ra) # 800d4168 <_Unwind_Resume>
    80005a80:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005a84:	00090513          	mv	a0,s2
    80005a88:	ffffe097          	auipc	ra,0xffffe
    80005a8c:	20c080e7          	jalr	524(ra) # 80003c94 <_ZdlPv>
    80005a90:	00048513          	mv	a0,s1
    80005a94:	000ce097          	auipc	ra,0xce
    80005a98:	6d4080e7          	jalr	1748(ra) # 800d4168 <_Unwind_Resume>

0000000080005a9c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005a9c:	fe010113          	addi	sp,sp,-32
    80005aa0:	00113c23          	sd	ra,24(sp)
    80005aa4:	00813823          	sd	s0,16(sp)
    80005aa8:	00913423          	sd	s1,8(sp)
    80005aac:	01213023          	sd	s2,0(sp)
    80005ab0:	02010413          	addi	s0,sp,32
    80005ab4:	00050493          	mv	s1,a0
    80005ab8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005abc:	01853503          	ld	a0,24(a0)
    80005ac0:	ffffe097          	auipc	ra,0xffffe
    80005ac4:	4e0080e7          	jalr	1248(ra) # 80003fa0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005ac8:	0304b503          	ld	a0,48(s1)
    80005acc:	ffffe097          	auipc	ra,0xffffe
    80005ad0:	4d4080e7          	jalr	1236(ra) # 80003fa0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005ad4:	0084b783          	ld	a5,8(s1)
    80005ad8:	0144a703          	lw	a4,20(s1)
    80005adc:	00271713          	slli	a4,a4,0x2
    80005ae0:	00e787b3          	add	a5,a5,a4
    80005ae4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005ae8:	0144a783          	lw	a5,20(s1)
    80005aec:	0017879b          	addiw	a5,a5,1
    80005af0:	0004a703          	lw	a4,0(s1)
    80005af4:	02e7e7bb          	remw	a5,a5,a4
    80005af8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005afc:	0304b503          	ld	a0,48(s1)
    80005b00:	ffffe097          	auipc	ra,0xffffe
    80005b04:	4cc080e7          	jalr	1228(ra) # 80003fcc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005b08:	0204b503          	ld	a0,32(s1)
    80005b0c:	ffffe097          	auipc	ra,0xffffe
    80005b10:	4c0080e7          	jalr	1216(ra) # 80003fcc <_ZN9Semaphore6signalEv>

}
    80005b14:	01813083          	ld	ra,24(sp)
    80005b18:	01013403          	ld	s0,16(sp)
    80005b1c:	00813483          	ld	s1,8(sp)
    80005b20:	00013903          	ld	s2,0(sp)
    80005b24:	02010113          	addi	sp,sp,32
    80005b28:	00008067          	ret

0000000080005b2c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005b2c:	fe010113          	addi	sp,sp,-32
    80005b30:	00113c23          	sd	ra,24(sp)
    80005b34:	00813823          	sd	s0,16(sp)
    80005b38:	00913423          	sd	s1,8(sp)
    80005b3c:	01213023          	sd	s2,0(sp)
    80005b40:	02010413          	addi	s0,sp,32
    80005b44:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005b48:	02053503          	ld	a0,32(a0)
    80005b4c:	ffffe097          	auipc	ra,0xffffe
    80005b50:	454080e7          	jalr	1108(ra) # 80003fa0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005b54:	0284b503          	ld	a0,40(s1)
    80005b58:	ffffe097          	auipc	ra,0xffffe
    80005b5c:	448080e7          	jalr	1096(ra) # 80003fa0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005b60:	0084b703          	ld	a4,8(s1)
    80005b64:	0104a783          	lw	a5,16(s1)
    80005b68:	00279693          	slli	a3,a5,0x2
    80005b6c:	00d70733          	add	a4,a4,a3
    80005b70:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005b74:	0017879b          	addiw	a5,a5,1
    80005b78:	0004a703          	lw	a4,0(s1)
    80005b7c:	02e7e7bb          	remw	a5,a5,a4
    80005b80:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005b84:	0284b503          	ld	a0,40(s1)
    80005b88:	ffffe097          	auipc	ra,0xffffe
    80005b8c:	444080e7          	jalr	1092(ra) # 80003fcc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005b90:	0184b503          	ld	a0,24(s1)
    80005b94:	ffffe097          	auipc	ra,0xffffe
    80005b98:	438080e7          	jalr	1080(ra) # 80003fcc <_ZN9Semaphore6signalEv>

    return ret;
}
    80005b9c:	00090513          	mv	a0,s2
    80005ba0:	01813083          	ld	ra,24(sp)
    80005ba4:	01013403          	ld	s0,16(sp)
    80005ba8:	00813483          	ld	s1,8(sp)
    80005bac:	00013903          	ld	s2,0(sp)
    80005bb0:	02010113          	addi	sp,sp,32
    80005bb4:	00008067          	ret

0000000080005bb8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005bb8:	fe010113          	addi	sp,sp,-32
    80005bbc:	00113c23          	sd	ra,24(sp)
    80005bc0:	00813823          	sd	s0,16(sp)
    80005bc4:	00913423          	sd	s1,8(sp)
    80005bc8:	01213023          	sd	s2,0(sp)
    80005bcc:	02010413          	addi	s0,sp,32
    80005bd0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005bd4:	02853503          	ld	a0,40(a0)
    80005bd8:	ffffe097          	auipc	ra,0xffffe
    80005bdc:	3c8080e7          	jalr	968(ra) # 80003fa0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005be0:	0304b503          	ld	a0,48(s1)
    80005be4:	ffffe097          	auipc	ra,0xffffe
    80005be8:	3bc080e7          	jalr	956(ra) # 80003fa0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005bec:	0144a783          	lw	a5,20(s1)
    80005bf0:	0104a903          	lw	s2,16(s1)
    80005bf4:	0327ce63          	blt	a5,s2,80005c30 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005bf8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005bfc:	0304b503          	ld	a0,48(s1)
    80005c00:	ffffe097          	auipc	ra,0xffffe
    80005c04:	3cc080e7          	jalr	972(ra) # 80003fcc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005c08:	0284b503          	ld	a0,40(s1)
    80005c0c:	ffffe097          	auipc	ra,0xffffe
    80005c10:	3c0080e7          	jalr	960(ra) # 80003fcc <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c14:	00090513          	mv	a0,s2
    80005c18:	01813083          	ld	ra,24(sp)
    80005c1c:	01013403          	ld	s0,16(sp)
    80005c20:	00813483          	ld	s1,8(sp)
    80005c24:	00013903          	ld	s2,0(sp)
    80005c28:	02010113          	addi	sp,sp,32
    80005c2c:	00008067          	ret
        ret = cap - head + tail;
    80005c30:	0004a703          	lw	a4,0(s1)
    80005c34:	4127093b          	subw	s2,a4,s2
    80005c38:	00f9093b          	addw	s2,s2,a5
    80005c3c:	fc1ff06f          	j	80005bfc <_ZN9BufferCPP6getCntEv+0x44>

0000000080005c40 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005c40:	fe010113          	addi	sp,sp,-32
    80005c44:	00113c23          	sd	ra,24(sp)
    80005c48:	00813823          	sd	s0,16(sp)
    80005c4c:	00913423          	sd	s1,8(sp)
    80005c50:	02010413          	addi	s0,sp,32
    80005c54:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005c58:	00a00513          	li	a0,10
    80005c5c:	ffffe097          	auipc	ra,0xffffe
    80005c60:	3c4080e7          	jalr	964(ra) # 80004020 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005c64:	00007517          	auipc	a0,0x7
    80005c68:	89c50513          	addi	a0,a0,-1892 # 8000c500 <CONSOLE_STATUS+0x4f0>
    80005c6c:	00000097          	auipc	ra,0x0
    80005c70:	a20080e7          	jalr	-1504(ra) # 8000568c <_Z11printStringPKc>
    while (getCnt()) {
    80005c74:	00048513          	mv	a0,s1
    80005c78:	00000097          	auipc	ra,0x0
    80005c7c:	f40080e7          	jalr	-192(ra) # 80005bb8 <_ZN9BufferCPP6getCntEv>
    80005c80:	02050c63          	beqz	a0,80005cb8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005c84:	0084b783          	ld	a5,8(s1)
    80005c88:	0104a703          	lw	a4,16(s1)
    80005c8c:	00271713          	slli	a4,a4,0x2
    80005c90:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005c94:	0007c503          	lbu	a0,0(a5)
    80005c98:	ffffe097          	auipc	ra,0xffffe
    80005c9c:	388080e7          	jalr	904(ra) # 80004020 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005ca0:	0104a783          	lw	a5,16(s1)
    80005ca4:	0017879b          	addiw	a5,a5,1
    80005ca8:	0004a703          	lw	a4,0(s1)
    80005cac:	02e7e7bb          	remw	a5,a5,a4
    80005cb0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005cb4:	fc1ff06f          	j	80005c74 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005cb8:	02100513          	li	a0,33
    80005cbc:	ffffe097          	auipc	ra,0xffffe
    80005cc0:	364080e7          	jalr	868(ra) # 80004020 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005cc4:	00a00513          	li	a0,10
    80005cc8:	ffffe097          	auipc	ra,0xffffe
    80005ccc:	358080e7          	jalr	856(ra) # 80004020 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005cd0:	0084b503          	ld	a0,8(s1)
    80005cd4:	ffffb097          	auipc	ra,0xffffb
    80005cd8:	5c8080e7          	jalr	1480(ra) # 8000129c <mem_free>
    delete itemAvailable;
    80005cdc:	0204b503          	ld	a0,32(s1)
    80005ce0:	00050863          	beqz	a0,80005cf0 <_ZN9BufferCPPD1Ev+0xb0>
    80005ce4:	00053783          	ld	a5,0(a0)
    80005ce8:	0087b783          	ld	a5,8(a5)
    80005cec:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005cf0:	0184b503          	ld	a0,24(s1)
    80005cf4:	00050863          	beqz	a0,80005d04 <_ZN9BufferCPPD1Ev+0xc4>
    80005cf8:	00053783          	ld	a5,0(a0)
    80005cfc:	0087b783          	ld	a5,8(a5)
    80005d00:	000780e7          	jalr	a5
    delete mutexTail;
    80005d04:	0304b503          	ld	a0,48(s1)
    80005d08:	00050863          	beqz	a0,80005d18 <_ZN9BufferCPPD1Ev+0xd8>
    80005d0c:	00053783          	ld	a5,0(a0)
    80005d10:	0087b783          	ld	a5,8(a5)
    80005d14:	000780e7          	jalr	a5
    delete mutexHead;
    80005d18:	0284b503          	ld	a0,40(s1)
    80005d1c:	00050863          	beqz	a0,80005d2c <_ZN9BufferCPPD1Ev+0xec>
    80005d20:	00053783          	ld	a5,0(a0)
    80005d24:	0087b783          	ld	a5,8(a5)
    80005d28:	000780e7          	jalr	a5
}
    80005d2c:	01813083          	ld	ra,24(sp)
    80005d30:	01013403          	ld	s0,16(sp)
    80005d34:	00813483          	ld	s1,8(sp)
    80005d38:	02010113          	addi	sp,sp,32
    80005d3c:	00008067          	ret

0000000080005d40 <_ZN18Threads_C_API_test11workerBodyEEPv>:
        printString("D finished!\n");
        finishedD = true;
        thread_dispatch();
    }

    void workerBodyE(void* arg) {
    80005d40:	ff010113          	addi	sp,sp,-16
    80005d44:	00113423          	sd	ra,8(sp)
    80005d48:	00813023          	sd	s0,0(sp)
    80005d4c:	01010413          	addi	s0,sp,16
//
//    for (; i < 16; i++) {
//        printString("D: i="); printInt(i); printString("\n");
//    }

        printString("E finished!\n");
    80005d50:	00006517          	auipc	a0,0x6
    80005d54:	7c850513          	addi	a0,a0,1992 # 8000c518 <CONSOLE_STATUS+0x508>
    80005d58:	00000097          	auipc	ra,0x0
    80005d5c:	934080e7          	jalr	-1740(ra) # 8000568c <_Z11printStringPKc>
        finishedE = true;
    80005d60:	00100793          	li	a5,1
    80005d64:	0000a717          	auipc	a4,0xa
    80005d68:	def70e23          	sb	a5,-516(a4) # 8000fb60 <_ZN18Threads_C_API_test9finishedEE>
        thread_dispatch();
    80005d6c:	ffffb097          	auipc	ra,0xffffb
    80005d70:	634080e7          	jalr	1588(ra) # 800013a0 <thread_dispatch>
    }
    80005d74:	00813083          	ld	ra,8(sp)
    80005d78:	00013403          	ld	s0,0(sp)
    80005d7c:	01010113          	addi	sp,sp,16
    80005d80:	00008067          	ret

0000000080005d84 <_ZN18Threads_C_API_test11workerBodyAEPv>:
    void workerBodyA(void* arg) {
    80005d84:	fe010113          	addi	sp,sp,-32
    80005d88:	00113c23          	sd	ra,24(sp)
    80005d8c:	00813823          	sd	s0,16(sp)
    80005d90:	00913423          	sd	s1,8(sp)
    80005d94:	01213023          	sd	s2,0(sp)
    80005d98:	02010413          	addi	s0,sp,32
        for (uint64 i = 0; i < 10; i++) {
    80005d9c:	00000913          	li	s2,0
    80005da0:	0380006f          	j	80005dd8 <_ZN18Threads_C_API_test11workerBodyAEPv+0x54>
                thread_dispatch();
    80005da4:	ffffb097          	auipc	ra,0xffffb
    80005da8:	5fc080e7          	jalr	1532(ra) # 800013a0 <thread_dispatch>
            for (uint64 j = 0; j < 10000; j++) {
    80005dac:	00148493          	addi	s1,s1,1
    80005db0:	000027b7          	lui	a5,0x2
    80005db4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005db8:	0097ee63          	bltu	a5,s1,80005dd4 <_ZN18Threads_C_API_test11workerBodyAEPv+0x50>
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005dbc:	00000713          	li	a4,0
    80005dc0:	000077b7          	lui	a5,0x7
    80005dc4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005dc8:	fce7eee3          	bltu	a5,a4,80005da4 <_ZN18Threads_C_API_test11workerBodyAEPv+0x20>
    80005dcc:	00170713          	addi	a4,a4,1
    80005dd0:	ff1ff06f          	j	80005dc0 <_ZN18Threads_C_API_test11workerBodyAEPv+0x3c>
        for (uint64 i = 0; i < 10; i++) {
    80005dd4:	00190913          	addi	s2,s2,1
    80005dd8:	00900793          	li	a5,9
    80005ddc:	0527e063          	bltu	a5,s2,80005e1c <_ZN18Threads_C_API_test11workerBodyAEPv+0x98>
            printString("A: i="); printInt(i); printString("\n");
    80005de0:	00006517          	auipc	a0,0x6
    80005de4:	74850513          	addi	a0,a0,1864 # 8000c528 <CONSOLE_STATUS+0x518>
    80005de8:	00000097          	auipc	ra,0x0
    80005dec:	8a4080e7          	jalr	-1884(ra) # 8000568c <_Z11printStringPKc>
    80005df0:	00000613          	li	a2,0
    80005df4:	00a00593          	li	a1,10
    80005df8:	0009051b          	sext.w	a0,s2
    80005dfc:	00000097          	auipc	ra,0x0
    80005e00:	a28080e7          	jalr	-1496(ra) # 80005824 <_Z8printIntiii>
    80005e04:	00006517          	auipc	a0,0x6
    80005e08:	47450513          	addi	a0,a0,1140 # 8000c278 <CONSOLE_STATUS+0x268>
    80005e0c:	00000097          	auipc	ra,0x0
    80005e10:	880080e7          	jalr	-1920(ra) # 8000568c <_Z11printStringPKc>
            for (uint64 j = 0; j < 10000; j++) {
    80005e14:	00000493          	li	s1,0
    80005e18:	f99ff06f          	j	80005db0 <_ZN18Threads_C_API_test11workerBodyAEPv+0x2c>
        printString("A finished!\n");
    80005e1c:	00006517          	auipc	a0,0x6
    80005e20:	71450513          	addi	a0,a0,1812 # 8000c530 <CONSOLE_STATUS+0x520>
    80005e24:	00000097          	auipc	ra,0x0
    80005e28:	868080e7          	jalr	-1944(ra) # 8000568c <_Z11printStringPKc>
        finishedA = true;
    80005e2c:	00100793          	li	a5,1
    80005e30:	0000a717          	auipc	a4,0xa
    80005e34:	d2f708a3          	sb	a5,-719(a4) # 8000fb61 <_ZN18Threads_C_API_test9finishedAE>
    }
    80005e38:	01813083          	ld	ra,24(sp)
    80005e3c:	01013403          	ld	s0,16(sp)
    80005e40:	00813483          	ld	s1,8(sp)
    80005e44:	00013903          	ld	s2,0(sp)
    80005e48:	02010113          	addi	sp,sp,32
    80005e4c:	00008067          	ret

0000000080005e50 <_ZN18Threads_C_API_test11workerBodyBEPv>:
    void workerBodyB(void* arg) {
    80005e50:	fe010113          	addi	sp,sp,-32
    80005e54:	00113c23          	sd	ra,24(sp)
    80005e58:	00813823          	sd	s0,16(sp)
    80005e5c:	00913423          	sd	s1,8(sp)
    80005e60:	01213023          	sd	s2,0(sp)
    80005e64:	02010413          	addi	s0,sp,32
        for (uint64 i = 0; i < 16; i++) {
    80005e68:	00000913          	li	s2,0
    80005e6c:	0380006f          	j	80005ea4 <_ZN18Threads_C_API_test11workerBodyBEPv+0x54>
                thread_dispatch();
    80005e70:	ffffb097          	auipc	ra,0xffffb
    80005e74:	530080e7          	jalr	1328(ra) # 800013a0 <thread_dispatch>
            for (uint64 j = 0; j < 10000; j++) {
    80005e78:	00148493          	addi	s1,s1,1
    80005e7c:	000027b7          	lui	a5,0x2
    80005e80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005e84:	0097ee63          	bltu	a5,s1,80005ea0 <_ZN18Threads_C_API_test11workerBodyBEPv+0x50>
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005e88:	00000713          	li	a4,0
    80005e8c:	000077b7          	lui	a5,0x7
    80005e90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005e94:	fce7eee3          	bltu	a5,a4,80005e70 <_ZN18Threads_C_API_test11workerBodyBEPv+0x20>
    80005e98:	00170713          	addi	a4,a4,1
    80005e9c:	ff1ff06f          	j	80005e8c <_ZN18Threads_C_API_test11workerBodyBEPv+0x3c>
        for (uint64 i = 0; i < 16; i++) {
    80005ea0:	00190913          	addi	s2,s2,1
    80005ea4:	00f00793          	li	a5,15
    80005ea8:	0527e063          	bltu	a5,s2,80005ee8 <_ZN18Threads_C_API_test11workerBodyBEPv+0x98>
            printString("B: i="); printInt(i); printString("\n");
    80005eac:	00006517          	auipc	a0,0x6
    80005eb0:	69450513          	addi	a0,a0,1684 # 8000c540 <CONSOLE_STATUS+0x530>
    80005eb4:	fffff097          	auipc	ra,0xfffff
    80005eb8:	7d8080e7          	jalr	2008(ra) # 8000568c <_Z11printStringPKc>
    80005ebc:	00000613          	li	a2,0
    80005ec0:	00a00593          	li	a1,10
    80005ec4:	0009051b          	sext.w	a0,s2
    80005ec8:	00000097          	auipc	ra,0x0
    80005ecc:	95c080e7          	jalr	-1700(ra) # 80005824 <_Z8printIntiii>
    80005ed0:	00006517          	auipc	a0,0x6
    80005ed4:	3a850513          	addi	a0,a0,936 # 8000c278 <CONSOLE_STATUS+0x268>
    80005ed8:	fffff097          	auipc	ra,0xfffff
    80005edc:	7b4080e7          	jalr	1972(ra) # 8000568c <_Z11printStringPKc>
            for (uint64 j = 0; j < 10000; j++) {
    80005ee0:	00000493          	li	s1,0
    80005ee4:	f99ff06f          	j	80005e7c <_ZN18Threads_C_API_test11workerBodyBEPv+0x2c>
        printString("B finished!\n");
    80005ee8:	00006517          	auipc	a0,0x6
    80005eec:	66050513          	addi	a0,a0,1632 # 8000c548 <CONSOLE_STATUS+0x538>
    80005ef0:	fffff097          	auipc	ra,0xfffff
    80005ef4:	79c080e7          	jalr	1948(ra) # 8000568c <_Z11printStringPKc>
        finishedB = true;
    80005ef8:	00100793          	li	a5,1
    80005efc:	0000a717          	auipc	a4,0xa
    80005f00:	c6f70323          	sb	a5,-922(a4) # 8000fb62 <_ZN18Threads_C_API_test9finishedBE>
        thread_dispatch();
    80005f04:	ffffb097          	auipc	ra,0xffffb
    80005f08:	49c080e7          	jalr	1180(ra) # 800013a0 <thread_dispatch>
    }
    80005f0c:	01813083          	ld	ra,24(sp)
    80005f10:	01013403          	ld	s0,16(sp)
    80005f14:	00813483          	ld	s1,8(sp)
    80005f18:	00013903          	ld	s2,0(sp)
    80005f1c:	02010113          	addi	sp,sp,32
    80005f20:	00008067          	ret

0000000080005f24 <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv>:
        sem_t wait;
    };

    volatile int threadEnd = 0;

    void producerKeyboard(void *arg) {
    80005f24:	fe010113          	addi	sp,sp,-32
    80005f28:	00113c23          	sd	ra,24(sp)
    80005f2c:	00813823          	sd	s0,16(sp)
    80005f30:	00913423          	sd	s1,8(sp)
    80005f34:	01213023          	sd	s2,0(sp)
    80005f38:	02010413          	addi	s0,sp,32
    80005f3c:	00050493          	mv	s1,a0
        struct thread_data *data = (struct thread_data *) arg;

        int key;
        int i = 0;
    80005f40:	00000913          	li	s2,0
    80005f44:	00c0006f          	j	80005f50 <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv+0x2c>
        while ((key = getc()) != 0x1b) {
            data->buffer->put(key);
            i++;

            if (i % (10 * data->id) == 0) {
                thread_dispatch();
    80005f48:	ffffb097          	auipc	ra,0xffffb
    80005f4c:	458080e7          	jalr	1112(ra) # 800013a0 <thread_dispatch>
        while ((key = getc()) != 0x1b) {
    80005f50:	ffffb097          	auipc	ra,0xffffb
    80005f54:	6a4080e7          	jalr	1700(ra) # 800015f4 <getc>
    80005f58:	0005059b          	sext.w	a1,a0
    80005f5c:	01b00793          	li	a5,27
    80005f60:	02f58a63          	beq	a1,a5,80005f94 <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv+0x70>
            data->buffer->put(key);
    80005f64:	0084b503          	ld	a0,8(s1)
    80005f68:	00003097          	auipc	ra,0x3
    80005f6c:	03c080e7          	jalr	60(ra) # 80008fa4 <_ZN6Buffer3putEi>
            i++;
    80005f70:	0019071b          	addiw	a4,s2,1
    80005f74:	0007091b          	sext.w	s2,a4
            if (i % (10 * data->id) == 0) {
    80005f78:	0004a683          	lw	a3,0(s1)
    80005f7c:	0026979b          	slliw	a5,a3,0x2
    80005f80:	00d787bb          	addw	a5,a5,a3
    80005f84:	0017979b          	slliw	a5,a5,0x1
    80005f88:	02f767bb          	remw	a5,a4,a5
    80005f8c:	fc0792e3          	bnez	a5,80005f50 <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv+0x2c>
    80005f90:	fb9ff06f          	j	80005f48 <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv+0x24>
            }
        }

        threadEnd = 1;
    80005f94:	00100793          	li	a5,1
    80005f98:	0000a717          	auipc	a4,0xa
    80005f9c:	bcf72623          	sw	a5,-1076(a4) # 8000fb64 <_ZN27ConsumerProducer_C_API_test9threadEndE>
        data->buffer->put('!');
    80005fa0:	02100593          	li	a1,33
    80005fa4:	0084b503          	ld	a0,8(s1)
    80005fa8:	00003097          	auipc	ra,0x3
    80005fac:	ffc080e7          	jalr	-4(ra) # 80008fa4 <_ZN6Buffer3putEi>

        sem_signal(data->wait);
    80005fb0:	0104b503          	ld	a0,16(s1)
    80005fb4:	ffffb097          	auipc	ra,0xffffb
    80005fb8:	5ec080e7          	jalr	1516(ra) # 800015a0 <sem_signal>
    }
    80005fbc:	01813083          	ld	ra,24(sp)
    80005fc0:	01013403          	ld	s0,16(sp)
    80005fc4:	00813483          	ld	s1,8(sp)
    80005fc8:	00013903          	ld	s2,0(sp)
    80005fcc:	02010113          	addi	sp,sp,32
    80005fd0:	00008067          	ret

0000000080005fd4 <_ZN27ConsumerProducer_C_API_test8producerEPv>:

    void producer(void *arg) {
    80005fd4:	fe010113          	addi	sp,sp,-32
    80005fd8:	00113c23          	sd	ra,24(sp)
    80005fdc:	00813823          	sd	s0,16(sp)
    80005fe0:	00913423          	sd	s1,8(sp)
    80005fe4:	01213023          	sd	s2,0(sp)
    80005fe8:	02010413          	addi	s0,sp,32
    80005fec:	00050493          	mv	s1,a0
        struct thread_data *data = (struct thread_data *) arg;

        int i = 0;
    80005ff0:	00000913          	li	s2,0
    80005ff4:	00c0006f          	j	80006000 <_ZN27ConsumerProducer_C_API_test8producerEPv+0x2c>
        while (!threadEnd) {
            data->buffer->put(data->id + '0');
            i++;

            if (i % (10 * data->id) == 0) {
                thread_dispatch();
    80005ff8:	ffffb097          	auipc	ra,0xffffb
    80005ffc:	3a8080e7          	jalr	936(ra) # 800013a0 <thread_dispatch>
        while (!threadEnd) {
    80006000:	0000a797          	auipc	a5,0xa
    80006004:	b647a783          	lw	a5,-1180(a5) # 8000fb64 <_ZN27ConsumerProducer_C_API_test9threadEndE>
    80006008:	02079e63          	bnez	a5,80006044 <_ZN27ConsumerProducer_C_API_test8producerEPv+0x70>
            data->buffer->put(data->id + '0');
    8000600c:	0004a583          	lw	a1,0(s1)
    80006010:	0305859b          	addiw	a1,a1,48
    80006014:	0084b503          	ld	a0,8(s1)
    80006018:	00003097          	auipc	ra,0x3
    8000601c:	f8c080e7          	jalr	-116(ra) # 80008fa4 <_ZN6Buffer3putEi>
            i++;
    80006020:	0019071b          	addiw	a4,s2,1
    80006024:	0007091b          	sext.w	s2,a4
            if (i % (10 * data->id) == 0) {
    80006028:	0004a683          	lw	a3,0(s1)
    8000602c:	0026979b          	slliw	a5,a3,0x2
    80006030:	00d787bb          	addw	a5,a5,a3
    80006034:	0017979b          	slliw	a5,a5,0x1
    80006038:	02f767bb          	remw	a5,a4,a5
    8000603c:	fc0792e3          	bnez	a5,80006000 <_ZN27ConsumerProducer_C_API_test8producerEPv+0x2c>
    80006040:	fb9ff06f          	j	80005ff8 <_ZN27ConsumerProducer_C_API_test8producerEPv+0x24>
            }
        }

        sem_signal(data->wait);
    80006044:	0104b503          	ld	a0,16(s1)
    80006048:	ffffb097          	auipc	ra,0xffffb
    8000604c:	558080e7          	jalr	1368(ra) # 800015a0 <sem_signal>
    }
    80006050:	01813083          	ld	ra,24(sp)
    80006054:	01013403          	ld	s0,16(sp)
    80006058:	00813483          	ld	s1,8(sp)
    8000605c:	00013903          	ld	s2,0(sp)
    80006060:	02010113          	addi	sp,sp,32
    80006064:	00008067          	ret

0000000080006068 <_ZN27ConsumerProducer_C_API_test8consumerEPv>:

    void consumer(void *arg) {
    80006068:	fd010113          	addi	sp,sp,-48
    8000606c:	02113423          	sd	ra,40(sp)
    80006070:	02813023          	sd	s0,32(sp)
    80006074:	00913c23          	sd	s1,24(sp)
    80006078:	01213823          	sd	s2,16(sp)
    8000607c:	01313423          	sd	s3,8(sp)
    80006080:	03010413          	addi	s0,sp,48
    80006084:	00050913          	mv	s2,a0
        struct thread_data *data = (struct thread_data *) arg;

        int i = 0;
    80006088:	00000993          	li	s3,0
    8000608c:	01c0006f          	j	800060a8 <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x40>
            i++;

            putc(key);

            if (i % (5 * data->id) == 0) {
                thread_dispatch();
    80006090:	ffffb097          	auipc	ra,0xffffb
    80006094:	310080e7          	jalr	784(ra) # 800013a0 <thread_dispatch>
    80006098:	0500006f          	j	800060e8 <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x80>
            }

            if (i % 80 == 0) {
                putc('\n');
    8000609c:	00a00513          	li	a0,10
    800060a0:	ffffb097          	auipc	ra,0xffffb
    800060a4:	5a8080e7          	jalr	1448(ra) # 80001648 <putc>
        while (!threadEnd) {
    800060a8:	0000a797          	auipc	a5,0xa
    800060ac:	abc7a783          	lw	a5,-1348(a5) # 8000fb64 <_ZN27ConsumerProducer_C_API_test9threadEndE>
    800060b0:	06079063          	bnez	a5,80006110 <_ZN27ConsumerProducer_C_API_test8consumerEPv+0xa8>
            int key = data->buffer->get();
    800060b4:	00893503          	ld	a0,8(s2)
    800060b8:	00003097          	auipc	ra,0x3
    800060bc:	f7c080e7          	jalr	-132(ra) # 80009034 <_ZN6Buffer3getEv>
            i++;
    800060c0:	0019849b          	addiw	s1,s3,1
    800060c4:	0004899b          	sext.w	s3,s1
            putc(key);
    800060c8:	0ff57513          	andi	a0,a0,255
    800060cc:	ffffb097          	auipc	ra,0xffffb
    800060d0:	57c080e7          	jalr	1404(ra) # 80001648 <putc>
            if (i % (5 * data->id) == 0) {
    800060d4:	00092703          	lw	a4,0(s2)
    800060d8:	0027179b          	slliw	a5,a4,0x2
    800060dc:	00e787bb          	addw	a5,a5,a4
    800060e0:	02f4e7bb          	remw	a5,s1,a5
    800060e4:	fa0786e3          	beqz	a5,80006090 <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x28>
            if (i % 80 == 0) {
    800060e8:	05000793          	li	a5,80
    800060ec:	02f4e4bb          	remw	s1,s1,a5
    800060f0:	fa049ce3          	bnez	s1,800060a8 <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x40>
    800060f4:	fa9ff06f          	j	8000609c <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x34>
            }
        }

        while (data->buffer->getCnt() > 0) {
            int key = data->buffer->get();
    800060f8:	00893503          	ld	a0,8(s2)
    800060fc:	00003097          	auipc	ra,0x3
    80006100:	f38080e7          	jalr	-200(ra) # 80009034 <_ZN6Buffer3getEv>
            putc(key);
    80006104:	0ff57513          	andi	a0,a0,255
    80006108:	ffffb097          	auipc	ra,0xffffb
    8000610c:	540080e7          	jalr	1344(ra) # 80001648 <putc>
        while (data->buffer->getCnt() > 0) {
    80006110:	00893503          	ld	a0,8(s2)
    80006114:	00003097          	auipc	ra,0x3
    80006118:	fac080e7          	jalr	-84(ra) # 800090c0 <_ZN6Buffer6getCntEv>
    8000611c:	fca04ee3          	bgtz	a0,800060f8 <_ZN27ConsumerProducer_C_API_test8consumerEPv+0x90>
        }

        sem_signal(data->wait);
    80006120:	01093503          	ld	a0,16(s2)
    80006124:	ffffb097          	auipc	ra,0xffffb
    80006128:	47c080e7          	jalr	1148(ra) # 800015a0 <sem_signal>
    }
    8000612c:	02813083          	ld	ra,40(sp)
    80006130:	02013403          	ld	s0,32(sp)
    80006134:	01813483          	ld	s1,24(sp)
    80006138:	01013903          	ld	s2,16(sp)
    8000613c:	00813983          	ld	s3,8(sp)
    80006140:	03010113          	addi	sp,sp,48
    80006144:	00008067          	ret

0000000080006148 <_ZN22ThreadSleep_C_API_test9sleepyRunEPv>:

namespace ThreadSleep_C_API_test {

    bool finished[2];

    void sleepyRun(void *arg) {
    80006148:	fe010113          	addi	sp,sp,-32
    8000614c:	00113c23          	sd	ra,24(sp)
    80006150:	00813823          	sd	s0,16(sp)
    80006154:	00913423          	sd	s1,8(sp)
    80006158:	01213023          	sd	s2,0(sp)
    8000615c:	02010413          	addi	s0,sp,32
        time_t sleep_time = *((time_t *) arg);
    80006160:	00053903          	ld	s2,0(a0)
        int i = 6;
    80006164:	00600493          	li	s1,6
        while (--i > 0) {
    80006168:	fff4849b          	addiw	s1,s1,-1
    8000616c:	04905463          	blez	s1,800061b4 <_ZN22ThreadSleep_C_API_test9sleepyRunEPv+0x6c>

            printString("Hello ");
    80006170:	00006517          	auipc	a0,0x6
    80006174:	3e850513          	addi	a0,a0,1000 # 8000c558 <CONSOLE_STATUS+0x548>
    80006178:	fffff097          	auipc	ra,0xfffff
    8000617c:	514080e7          	jalr	1300(ra) # 8000568c <_Z11printStringPKc>
            printInt(sleep_time);
    80006180:	00000613          	li	a2,0
    80006184:	00a00593          	li	a1,10
    80006188:	0009051b          	sext.w	a0,s2
    8000618c:	fffff097          	auipc	ra,0xfffff
    80006190:	698080e7          	jalr	1688(ra) # 80005824 <_Z8printIntiii>
            printString(" !\n");
    80006194:	00006517          	auipc	a0,0x6
    80006198:	3cc50513          	addi	a0,a0,972 # 8000c560 <CONSOLE_STATUS+0x550>
    8000619c:	fffff097          	auipc	ra,0xfffff
    800061a0:	4f0080e7          	jalr	1264(ra) # 8000568c <_Z11printStringPKc>
            time_sleep(sleep_time);
    800061a4:	00090513          	mv	a0,s2
    800061a8:	ffffb097          	auipc	ra,0xffffb
    800061ac:	29c080e7          	jalr	668(ra) # 80001444 <time_sleep>
        while (--i > 0) {
    800061b0:	fb9ff06f          	j	80006168 <_ZN22ThreadSleep_C_API_test9sleepyRunEPv+0x20>
        }
        finished[sleep_time/10-1] = true;
    800061b4:	00a00793          	li	a5,10
    800061b8:	02f95933          	divu	s2,s2,a5
    800061bc:	fff90913          	addi	s2,s2,-1
    800061c0:	0000a797          	auipc	a5,0xa
    800061c4:	9a078793          	addi	a5,a5,-1632 # 8000fb60 <_ZN18Threads_C_API_test9finishedEE>
    800061c8:	01278933          	add	s2,a5,s2
    800061cc:	00100793          	li	a5,1
    800061d0:	00f90823          	sb	a5,16(s2)
    }
    800061d4:	01813083          	ld	ra,24(sp)
    800061d8:	01013403          	ld	s0,16(sp)
    800061dc:	00813483          	ld	s1,8(sp)
    800061e0:	00013903          	ld	s2,0(sp)
    800061e4:	02010113          	addi	sp,sp,32
    800061e8:	00008067          	ret

00000000800061ec <_ZN18Threads_C_API_test9fibonacciEm>:
    uint64 fibonacci(uint64 n) {
    800061ec:	fe010113          	addi	sp,sp,-32
    800061f0:	00113c23          	sd	ra,24(sp)
    800061f4:	00813823          	sd	s0,16(sp)
    800061f8:	00913423          	sd	s1,8(sp)
    800061fc:	01213023          	sd	s2,0(sp)
    80006200:	02010413          	addi	s0,sp,32
    80006204:	00050493          	mv	s1,a0
        if (n == 0 || n == 1) { return n; }
    80006208:	00100793          	li	a5,1
    8000620c:	02a7f863          	bgeu	a5,a0,8000623c <_ZN18Threads_C_API_test9fibonacciEm+0x50>
        if (n % 10 == 0) { thread_dispatch(); }
    80006210:	00a00793          	li	a5,10
    80006214:	02f577b3          	remu	a5,a0,a5
    80006218:	02078e63          	beqz	a5,80006254 <_ZN18Threads_C_API_test9fibonacciEm+0x68>
        return fibonacci(n - 1) + fibonacci(n - 2);
    8000621c:	fff48513          	addi	a0,s1,-1
    80006220:	00000097          	auipc	ra,0x0
    80006224:	fcc080e7          	jalr	-52(ra) # 800061ec <_ZN18Threads_C_API_test9fibonacciEm>
    80006228:	00050913          	mv	s2,a0
    8000622c:	ffe48513          	addi	a0,s1,-2
    80006230:	00000097          	auipc	ra,0x0
    80006234:	fbc080e7          	jalr	-68(ra) # 800061ec <_ZN18Threads_C_API_test9fibonacciEm>
    80006238:	00a90533          	add	a0,s2,a0
    }
    8000623c:	01813083          	ld	ra,24(sp)
    80006240:	01013403          	ld	s0,16(sp)
    80006244:	00813483          	ld	s1,8(sp)
    80006248:	00013903          	ld	s2,0(sp)
    8000624c:	02010113          	addi	sp,sp,32
    80006250:	00008067          	ret
        if (n % 10 == 0) { thread_dispatch(); }
    80006254:	ffffb097          	auipc	ra,0xffffb
    80006258:	14c080e7          	jalr	332(ra) # 800013a0 <thread_dispatch>
    8000625c:	fc1ff06f          	j	8000621c <_ZN18Threads_C_API_test9fibonacciEm+0x30>

0000000080006260 <_ZN18Threads_C_API_test11workerBodyCEPv>:
    void workerBodyC(void* arg) {
    80006260:	fe010113          	addi	sp,sp,-32
    80006264:	00113c23          	sd	ra,24(sp)
    80006268:	00813823          	sd	s0,16(sp)
    8000626c:	00913423          	sd	s1,8(sp)
    80006270:	01213023          	sd	s2,0(sp)
    80006274:	02010413          	addi	s0,sp,32
        uint8 i = 0;
    80006278:	00000493          	li	s1,0
    8000627c:	0400006f          	j	800062bc <_ZN18Threads_C_API_test11workerBodyCEPv+0x5c>
            printString("C: i="); printInt(i); printString("\n");
    80006280:	00006517          	auipc	a0,0x6
    80006284:	2e850513          	addi	a0,a0,744 # 8000c568 <CONSOLE_STATUS+0x558>
    80006288:	fffff097          	auipc	ra,0xfffff
    8000628c:	404080e7          	jalr	1028(ra) # 8000568c <_Z11printStringPKc>
    80006290:	00000613          	li	a2,0
    80006294:	00a00593          	li	a1,10
    80006298:	00048513          	mv	a0,s1
    8000629c:	fffff097          	auipc	ra,0xfffff
    800062a0:	588080e7          	jalr	1416(ra) # 80005824 <_Z8printIntiii>
    800062a4:	00006517          	auipc	a0,0x6
    800062a8:	fd450513          	addi	a0,a0,-44 # 8000c278 <CONSOLE_STATUS+0x268>
    800062ac:	fffff097          	auipc	ra,0xfffff
    800062b0:	3e0080e7          	jalr	992(ra) # 8000568c <_Z11printStringPKc>
        for (; i < 3; i++) {
    800062b4:	0014849b          	addiw	s1,s1,1
    800062b8:	0ff4f493          	andi	s1,s1,255
    800062bc:	00200793          	li	a5,2
    800062c0:	fc97f0e3          	bgeu	a5,s1,80006280 <_ZN18Threads_C_API_test11workerBodyCEPv+0x20>
        printString("C: dispatch\n");
    800062c4:	00006517          	auipc	a0,0x6
    800062c8:	2ac50513          	addi	a0,a0,684 # 8000c570 <CONSOLE_STATUS+0x560>
    800062cc:	fffff097          	auipc	ra,0xfffff
    800062d0:	3c0080e7          	jalr	960(ra) # 8000568c <_Z11printStringPKc>
        __asm__ ("li t1, 7");
    800062d4:	00700313          	li	t1,7
        thread_dispatch();
    800062d8:	ffffb097          	auipc	ra,0xffffb
    800062dc:	0c8080e7          	jalr	200(ra) # 800013a0 <thread_dispatch>
        __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800062e0:	00030913          	mv	s2,t1
        printString("C: t1="); printInt(t1); printString("\n");
    800062e4:	00006517          	auipc	a0,0x6
    800062e8:	29c50513          	addi	a0,a0,668 # 8000c580 <CONSOLE_STATUS+0x570>
    800062ec:	fffff097          	auipc	ra,0xfffff
    800062f0:	3a0080e7          	jalr	928(ra) # 8000568c <_Z11printStringPKc>
    800062f4:	00000613          	li	a2,0
    800062f8:	00a00593          	li	a1,10
    800062fc:	0009051b          	sext.w	a0,s2
    80006300:	fffff097          	auipc	ra,0xfffff
    80006304:	524080e7          	jalr	1316(ra) # 80005824 <_Z8printIntiii>
    80006308:	00006517          	auipc	a0,0x6
    8000630c:	f7050513          	addi	a0,a0,-144 # 8000c278 <CONSOLE_STATUS+0x268>
    80006310:	fffff097          	auipc	ra,0xfffff
    80006314:	37c080e7          	jalr	892(ra) # 8000568c <_Z11printStringPKc>
        uint64 result = fibonacci(12);
    80006318:	00c00513          	li	a0,12
    8000631c:	00000097          	auipc	ra,0x0
    80006320:	ed0080e7          	jalr	-304(ra) # 800061ec <_ZN18Threads_C_API_test9fibonacciEm>
    80006324:	00050913          	mv	s2,a0
        printString("C: fibonaci="); printInt(result); printString("\n");
    80006328:	00006517          	auipc	a0,0x6
    8000632c:	26050513          	addi	a0,a0,608 # 8000c588 <CONSOLE_STATUS+0x578>
    80006330:	fffff097          	auipc	ra,0xfffff
    80006334:	35c080e7          	jalr	860(ra) # 8000568c <_Z11printStringPKc>
    80006338:	00000613          	li	a2,0
    8000633c:	00a00593          	li	a1,10
    80006340:	0009051b          	sext.w	a0,s2
    80006344:	fffff097          	auipc	ra,0xfffff
    80006348:	4e0080e7          	jalr	1248(ra) # 80005824 <_Z8printIntiii>
    8000634c:	00006517          	auipc	a0,0x6
    80006350:	f2c50513          	addi	a0,a0,-212 # 8000c278 <CONSOLE_STATUS+0x268>
    80006354:	fffff097          	auipc	ra,0xfffff
    80006358:	338080e7          	jalr	824(ra) # 8000568c <_Z11printStringPKc>
    8000635c:	0400006f          	j	8000639c <_ZN18Threads_C_API_test11workerBodyCEPv+0x13c>
            printString("C: i="); printInt(i); printString("\n");
    80006360:	00006517          	auipc	a0,0x6
    80006364:	20850513          	addi	a0,a0,520 # 8000c568 <CONSOLE_STATUS+0x558>
    80006368:	fffff097          	auipc	ra,0xfffff
    8000636c:	324080e7          	jalr	804(ra) # 8000568c <_Z11printStringPKc>
    80006370:	00000613          	li	a2,0
    80006374:	00a00593          	li	a1,10
    80006378:	00048513          	mv	a0,s1
    8000637c:	fffff097          	auipc	ra,0xfffff
    80006380:	4a8080e7          	jalr	1192(ra) # 80005824 <_Z8printIntiii>
    80006384:	00006517          	auipc	a0,0x6
    80006388:	ef450513          	addi	a0,a0,-268 # 8000c278 <CONSOLE_STATUS+0x268>
    8000638c:	fffff097          	auipc	ra,0xfffff
    80006390:	300080e7          	jalr	768(ra) # 8000568c <_Z11printStringPKc>
        for (; i < 6; i++) {
    80006394:	0014849b          	addiw	s1,s1,1
    80006398:	0ff4f493          	andi	s1,s1,255
    8000639c:	00500793          	li	a5,5
    800063a0:	fc97f0e3          	bgeu	a5,s1,80006360 <_ZN18Threads_C_API_test11workerBodyCEPv+0x100>
        printString("A finished!\n");
    800063a4:	00006517          	auipc	a0,0x6
    800063a8:	18c50513          	addi	a0,a0,396 # 8000c530 <CONSOLE_STATUS+0x520>
    800063ac:	fffff097          	auipc	ra,0xfffff
    800063b0:	2e0080e7          	jalr	736(ra) # 8000568c <_Z11printStringPKc>
        finishedC = true;
    800063b4:	00100793          	li	a5,1
    800063b8:	00009717          	auipc	a4,0x9
    800063bc:	7af70d23          	sb	a5,1978(a4) # 8000fb72 <_ZN18Threads_C_API_test9finishedCE>
        thread_dispatch();
    800063c0:	ffffb097          	auipc	ra,0xffffb
    800063c4:	fe0080e7          	jalr	-32(ra) # 800013a0 <thread_dispatch>
    }
    800063c8:	01813083          	ld	ra,24(sp)
    800063cc:	01013403          	ld	s0,16(sp)
    800063d0:	00813483          	ld	s1,8(sp)
    800063d4:	00013903          	ld	s2,0(sp)
    800063d8:	02010113          	addi	sp,sp,32
    800063dc:	00008067          	ret

00000000800063e0 <_ZN18Threads_C_API_test11workerBodyDEPv>:
    void workerBodyD(void* arg) {
    800063e0:	fe010113          	addi	sp,sp,-32
    800063e4:	00113c23          	sd	ra,24(sp)
    800063e8:	00813823          	sd	s0,16(sp)
    800063ec:	00913423          	sd	s1,8(sp)
    800063f0:	01213023          	sd	s2,0(sp)
    800063f4:	02010413          	addi	s0,sp,32
        uint8 i = 10;
    800063f8:	00a00493          	li	s1,10
    800063fc:	0400006f          	j	8000643c <_ZN18Threads_C_API_test11workerBodyDEPv+0x5c>
            printString("D: i="); printInt(i); printString("\n");
    80006400:	00006517          	auipc	a0,0x6
    80006404:	19850513          	addi	a0,a0,408 # 8000c598 <CONSOLE_STATUS+0x588>
    80006408:	fffff097          	auipc	ra,0xfffff
    8000640c:	284080e7          	jalr	644(ra) # 8000568c <_Z11printStringPKc>
    80006410:	00000613          	li	a2,0
    80006414:	00a00593          	li	a1,10
    80006418:	00048513          	mv	a0,s1
    8000641c:	fffff097          	auipc	ra,0xfffff
    80006420:	408080e7          	jalr	1032(ra) # 80005824 <_Z8printIntiii>
    80006424:	00006517          	auipc	a0,0x6
    80006428:	e5450513          	addi	a0,a0,-428 # 8000c278 <CONSOLE_STATUS+0x268>
    8000642c:	fffff097          	auipc	ra,0xfffff
    80006430:	260080e7          	jalr	608(ra) # 8000568c <_Z11printStringPKc>
        for (; i < 13; i++) {
    80006434:	0014849b          	addiw	s1,s1,1
    80006438:	0ff4f493          	andi	s1,s1,255
    8000643c:	00c00793          	li	a5,12
    80006440:	fc97f0e3          	bgeu	a5,s1,80006400 <_ZN18Threads_C_API_test11workerBodyDEPv+0x20>
        printString("D: dispatch\n");
    80006444:	00006517          	auipc	a0,0x6
    80006448:	15c50513          	addi	a0,a0,348 # 8000c5a0 <CONSOLE_STATUS+0x590>
    8000644c:	fffff097          	auipc	ra,0xfffff
    80006450:	240080e7          	jalr	576(ra) # 8000568c <_Z11printStringPKc>
        __asm__ ("li t1, 5");
    80006454:	00500313          	li	t1,5
        thread_dispatch();
    80006458:	ffffb097          	auipc	ra,0xffffb
    8000645c:	f48080e7          	jalr	-184(ra) # 800013a0 <thread_dispatch>
        uint64 result = fibonacci(16);
    80006460:	01000513          	li	a0,16
    80006464:	00000097          	auipc	ra,0x0
    80006468:	d88080e7          	jalr	-632(ra) # 800061ec <_ZN18Threads_C_API_test9fibonacciEm>
    8000646c:	00050913          	mv	s2,a0
        printString("D: fibonaci="); printInt(result); printString("\n");
    80006470:	00006517          	auipc	a0,0x6
    80006474:	14050513          	addi	a0,a0,320 # 8000c5b0 <CONSOLE_STATUS+0x5a0>
    80006478:	fffff097          	auipc	ra,0xfffff
    8000647c:	214080e7          	jalr	532(ra) # 8000568c <_Z11printStringPKc>
    80006480:	00000613          	li	a2,0
    80006484:	00a00593          	li	a1,10
    80006488:	0009051b          	sext.w	a0,s2
    8000648c:	fffff097          	auipc	ra,0xfffff
    80006490:	398080e7          	jalr	920(ra) # 80005824 <_Z8printIntiii>
    80006494:	00006517          	auipc	a0,0x6
    80006498:	de450513          	addi	a0,a0,-540 # 8000c278 <CONSOLE_STATUS+0x268>
    8000649c:	fffff097          	auipc	ra,0xfffff
    800064a0:	1f0080e7          	jalr	496(ra) # 8000568c <_Z11printStringPKc>
    800064a4:	0400006f          	j	800064e4 <_ZN18Threads_C_API_test11workerBodyDEPv+0x104>
            printString("D: i="); printInt(i); printString("\n");
    800064a8:	00006517          	auipc	a0,0x6
    800064ac:	0f050513          	addi	a0,a0,240 # 8000c598 <CONSOLE_STATUS+0x588>
    800064b0:	fffff097          	auipc	ra,0xfffff
    800064b4:	1dc080e7          	jalr	476(ra) # 8000568c <_Z11printStringPKc>
    800064b8:	00000613          	li	a2,0
    800064bc:	00a00593          	li	a1,10
    800064c0:	00048513          	mv	a0,s1
    800064c4:	fffff097          	auipc	ra,0xfffff
    800064c8:	360080e7          	jalr	864(ra) # 80005824 <_Z8printIntiii>
    800064cc:	00006517          	auipc	a0,0x6
    800064d0:	dac50513          	addi	a0,a0,-596 # 8000c278 <CONSOLE_STATUS+0x268>
    800064d4:	fffff097          	auipc	ra,0xfffff
    800064d8:	1b8080e7          	jalr	440(ra) # 8000568c <_Z11printStringPKc>
        for (; i < 16; i++) {
    800064dc:	0014849b          	addiw	s1,s1,1
    800064e0:	0ff4f493          	andi	s1,s1,255
    800064e4:	00f00793          	li	a5,15
    800064e8:	fc97f0e3          	bgeu	a5,s1,800064a8 <_ZN18Threads_C_API_test11workerBodyDEPv+0xc8>
        printString("D finished!\n");
    800064ec:	00006517          	auipc	a0,0x6
    800064f0:	0d450513          	addi	a0,a0,212 # 8000c5c0 <CONSOLE_STATUS+0x5b0>
    800064f4:	fffff097          	auipc	ra,0xfffff
    800064f8:	198080e7          	jalr	408(ra) # 8000568c <_Z11printStringPKc>
        finishedD = true;
    800064fc:	00100793          	li	a5,1
    80006500:	00009717          	auipc	a4,0x9
    80006504:	66f709a3          	sb	a5,1651(a4) # 8000fb73 <_ZN18Threads_C_API_test9finishedDE>
        thread_dispatch();
    80006508:	ffffb097          	auipc	ra,0xffffb
    8000650c:	e98080e7          	jalr	-360(ra) # 800013a0 <thread_dispatch>
    }
    80006510:	01813083          	ld	ra,24(sp)
    80006514:	01013403          	ld	s0,16(sp)
    80006518:	00813483          	ld	s1,8(sp)
    8000651c:	00013903          	ld	s2,0(sp)
    80006520:	02010113          	addi	sp,sp,32
    80006524:	00008067          	ret

0000000080006528 <_ZN18Threads_C_API_test18Threads_C_API_testEv>:


    void Threads_C_API_test() {
    80006528:	fc010113          	addi	sp,sp,-64
    8000652c:	02113c23          	sd	ra,56(sp)
    80006530:	02813823          	sd	s0,48(sp)
    80006534:	04010413          	addi	s0,sp,64
        thread_t threads[5];
        thread_create(&threads[0], workerBodyA, nullptr);
    80006538:	00000613          	li	a2,0
    8000653c:	00000597          	auipc	a1,0x0
    80006540:	84858593          	addi	a1,a1,-1976 # 80005d84 <_ZN18Threads_C_API_test11workerBodyAEPv>
    80006544:	fc840513          	addi	a0,s0,-56
    80006548:	ffffb097          	auipc	ra,0xffffb
    8000654c:	db4080e7          	jalr	-588(ra) # 800012fc <thread_create>
        printString("ThreadA created\n");
    80006550:	00006517          	auipc	a0,0x6
    80006554:	08050513          	addi	a0,a0,128 # 8000c5d0 <CONSOLE_STATUS+0x5c0>
    80006558:	fffff097          	auipc	ra,0xfffff
    8000655c:	134080e7          	jalr	308(ra) # 8000568c <_Z11printStringPKc>

        thread_create(&threads[1], workerBodyB, nullptr);
    80006560:	00000613          	li	a2,0
    80006564:	00000597          	auipc	a1,0x0
    80006568:	8ec58593          	addi	a1,a1,-1812 # 80005e50 <_ZN18Threads_C_API_test11workerBodyBEPv>
    8000656c:	fd040513          	addi	a0,s0,-48
    80006570:	ffffb097          	auipc	ra,0xffffb
    80006574:	d8c080e7          	jalr	-628(ra) # 800012fc <thread_create>
        printString("ThreadB created\n");
    80006578:	00006517          	auipc	a0,0x6
    8000657c:	07050513          	addi	a0,a0,112 # 8000c5e8 <CONSOLE_STATUS+0x5d8>
    80006580:	fffff097          	auipc	ra,0xfffff
    80006584:	10c080e7          	jalr	268(ra) # 8000568c <_Z11printStringPKc>

        thread_create(&threads[2], workerBodyC, nullptr);
    80006588:	00000613          	li	a2,0
    8000658c:	00000597          	auipc	a1,0x0
    80006590:	cd458593          	addi	a1,a1,-812 # 80006260 <_ZN18Threads_C_API_test11workerBodyCEPv>
    80006594:	fd840513          	addi	a0,s0,-40
    80006598:	ffffb097          	auipc	ra,0xffffb
    8000659c:	d64080e7          	jalr	-668(ra) # 800012fc <thread_create>
        printString("ThreadC created\n");
    800065a0:	00006517          	auipc	a0,0x6
    800065a4:	06050513          	addi	a0,a0,96 # 8000c600 <CONSOLE_STATUS+0x5f0>
    800065a8:	fffff097          	auipc	ra,0xfffff
    800065ac:	0e4080e7          	jalr	228(ra) # 8000568c <_Z11printStringPKc>

        thread_create(&threads[3], workerBodyD, nullptr);
    800065b0:	00000613          	li	a2,0
    800065b4:	00000597          	auipc	a1,0x0
    800065b8:	e2c58593          	addi	a1,a1,-468 # 800063e0 <_ZN18Threads_C_API_test11workerBodyDEPv>
    800065bc:	fe040513          	addi	a0,s0,-32
    800065c0:	ffffb097          	auipc	ra,0xffffb
    800065c4:	d3c080e7          	jalr	-708(ra) # 800012fc <thread_create>
        printString("ThreadD created\n");
    800065c8:	00006517          	auipc	a0,0x6
    800065cc:	05050513          	addi	a0,a0,80 # 8000c618 <CONSOLE_STATUS+0x608>
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	0bc080e7          	jalr	188(ra) # 8000568c <_Z11printStringPKc>

        thread_create(&threads[4], workerBodyE, nullptr);
    800065d8:	00000613          	li	a2,0
    800065dc:	fffff597          	auipc	a1,0xfffff
    800065e0:	76458593          	addi	a1,a1,1892 # 80005d40 <_ZN18Threads_C_API_test11workerBodyEEPv>
    800065e4:	fe840513          	addi	a0,s0,-24
    800065e8:	ffffb097          	auipc	ra,0xffffb
    800065ec:	d14080e7          	jalr	-748(ra) # 800012fc <thread_create>
        printString("ThreadE created\n");
    800065f0:	00006517          	auipc	a0,0x6
    800065f4:	04050513          	addi	a0,a0,64 # 8000c630 <CONSOLE_STATUS+0x620>
    800065f8:	fffff097          	auipc	ra,0xfffff
    800065fc:	094080e7          	jalr	148(ra) # 8000568c <_Z11printStringPKc>
    80006600:	00c0006f          	j	8000660c <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xe4>


        while (!(finishedA && finishedB && finishedC && finishedD && finishedE)) {
            thread_dispatch();
    80006604:	ffffb097          	auipc	ra,0xffffb
    80006608:	d9c080e7          	jalr	-612(ra) # 800013a0 <thread_dispatch>
        while (!(finishedA && finishedB && finishedC && finishedD && finishedE)) {
    8000660c:	00009797          	auipc	a5,0x9
    80006610:	5557c783          	lbu	a5,1365(a5) # 8000fb61 <_ZN18Threads_C_API_test9finishedAE>
    80006614:	fe0788e3          	beqz	a5,80006604 <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xdc>
    80006618:	00009797          	auipc	a5,0x9
    8000661c:	54a7c783          	lbu	a5,1354(a5) # 8000fb62 <_ZN18Threads_C_API_test9finishedBE>
    80006620:	fe0782e3          	beqz	a5,80006604 <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xdc>
    80006624:	00009797          	auipc	a5,0x9
    80006628:	54e7c783          	lbu	a5,1358(a5) # 8000fb72 <_ZN18Threads_C_API_test9finishedCE>
    8000662c:	fc078ce3          	beqz	a5,80006604 <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xdc>
    80006630:	00009797          	auipc	a5,0x9
    80006634:	5437c783          	lbu	a5,1347(a5) # 8000fb73 <_ZN18Threads_C_API_test9finishedDE>
    80006638:	fc0786e3          	beqz	a5,80006604 <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xdc>
    8000663c:	00009797          	auipc	a5,0x9
    80006640:	5247c783          	lbu	a5,1316(a5) # 8000fb60 <_ZN18Threads_C_API_test9finishedEE>
    80006644:	fc0780e3          	beqz	a5,80006604 <_ZN18Threads_C_API_test18Threads_C_API_testEv+0xdc>
        }

    }
    80006648:	03813083          	ld	ra,56(sp)
    8000664c:	03013403          	ld	s0,48(sp)
    80006650:	04010113          	addi	sp,sp,64
    80006654:	00008067          	ret

0000000080006658 <_ZN20Threads_CPP_API_test9fibonacciEm>:
    bool finishedA = false;
    bool finishedB = false;
    bool finishedC = false;
    bool finishedD = false;

    uint64 fibonacci(uint64 n) {
    80006658:	fe010113          	addi	sp,sp,-32
    8000665c:	00113c23          	sd	ra,24(sp)
    80006660:	00813823          	sd	s0,16(sp)
    80006664:	00913423          	sd	s1,8(sp)
    80006668:	01213023          	sd	s2,0(sp)
    8000666c:	02010413          	addi	s0,sp,32
    80006670:	00050493          	mv	s1,a0
        if (n == 0 || n == 1) { return n; }
    80006674:	00100793          	li	a5,1
    80006678:	02a7f863          	bgeu	a5,a0,800066a8 <_ZN20Threads_CPP_API_test9fibonacciEm+0x50>
        if (n % 10 == 0) { thread_dispatch(); }
    8000667c:	00a00793          	li	a5,10
    80006680:	02f577b3          	remu	a5,a0,a5
    80006684:	02078e63          	beqz	a5,800066c0 <_ZN20Threads_CPP_API_test9fibonacciEm+0x68>
        return fibonacci(n - 1) + fibonacci(n - 2);
    80006688:	fff48513          	addi	a0,s1,-1
    8000668c:	00000097          	auipc	ra,0x0
    80006690:	fcc080e7          	jalr	-52(ra) # 80006658 <_ZN20Threads_CPP_API_test9fibonacciEm>
    80006694:	00050913          	mv	s2,a0
    80006698:	ffe48513          	addi	a0,s1,-2
    8000669c:	00000097          	auipc	ra,0x0
    800066a0:	fbc080e7          	jalr	-68(ra) # 80006658 <_ZN20Threads_CPP_API_test9fibonacciEm>
    800066a4:	00a90533          	add	a0,s2,a0
    }
    800066a8:	01813083          	ld	ra,24(sp)
    800066ac:	01013403          	ld	s0,16(sp)
    800066b0:	00813483          	ld	s1,8(sp)
    800066b4:	00013903          	ld	s2,0(sp)
    800066b8:	02010113          	addi	sp,sp,32
    800066bc:	00008067          	ret
        if (n % 10 == 0) { thread_dispatch(); }
    800066c0:	ffffb097          	auipc	ra,0xffffb
    800066c4:	ce0080e7          	jalr	-800(ra) # 800013a0 <thread_dispatch>
    800066c8:	fc1ff06f          	j	80006688 <_ZN20Threads_CPP_API_test9fibonacciEm+0x30>

00000000800066cc <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv>:
        void run() override {
            workerBodyD(nullptr);
        }
    };

    void WorkerA::workerBodyA(void *arg) {
    800066cc:	fe010113          	addi	sp,sp,-32
    800066d0:	00113c23          	sd	ra,24(sp)
    800066d4:	00813823          	sd	s0,16(sp)
    800066d8:	00913423          	sd	s1,8(sp)
    800066dc:	01213023          	sd	s2,0(sp)
    800066e0:	02010413          	addi	s0,sp,32
        for (uint64 i = 0; i < 10; i++) {
    800066e4:	00000913          	li	s2,0
    800066e8:	0380006f          	j	80006720 <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x54>
            printString("A: i="); printInt(i); printString("\n");
            for (uint64 j = 0; j < 10000; j++) {
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
                thread_dispatch();
    800066ec:	ffffb097          	auipc	ra,0xffffb
    800066f0:	cb4080e7          	jalr	-844(ra) # 800013a0 <thread_dispatch>
            for (uint64 j = 0; j < 10000; j++) {
    800066f4:	00148493          	addi	s1,s1,1
    800066f8:	000027b7          	lui	a5,0x2
    800066fc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006700:	0097ee63          	bltu	a5,s1,8000671c <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x50>
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006704:	00000713          	li	a4,0
    80006708:	000077b7          	lui	a5,0x7
    8000670c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006710:	fce7eee3          	bltu	a5,a4,800066ec <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x20>
    80006714:	00170713          	addi	a4,a4,1
    80006718:	ff1ff06f          	j	80006708 <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x3c>
        for (uint64 i = 0; i < 10; i++) {
    8000671c:	00190913          	addi	s2,s2,1
    80006720:	00900793          	li	a5,9
    80006724:	0527e063          	bltu	a5,s2,80006764 <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x98>
            printString("A: i="); printInt(i); printString("\n");
    80006728:	00006517          	auipc	a0,0x6
    8000672c:	e0050513          	addi	a0,a0,-512 # 8000c528 <CONSOLE_STATUS+0x518>
    80006730:	fffff097          	auipc	ra,0xfffff
    80006734:	f5c080e7          	jalr	-164(ra) # 8000568c <_Z11printStringPKc>
    80006738:	00000613          	li	a2,0
    8000673c:	00a00593          	li	a1,10
    80006740:	0009051b          	sext.w	a0,s2
    80006744:	fffff097          	auipc	ra,0xfffff
    80006748:	0e0080e7          	jalr	224(ra) # 80005824 <_Z8printIntiii>
    8000674c:	00006517          	auipc	a0,0x6
    80006750:	b2c50513          	addi	a0,a0,-1236 # 8000c278 <CONSOLE_STATUS+0x268>
    80006754:	fffff097          	auipc	ra,0xfffff
    80006758:	f38080e7          	jalr	-200(ra) # 8000568c <_Z11printStringPKc>
            for (uint64 j = 0; j < 10000; j++) {
    8000675c:	00000493          	li	s1,0
    80006760:	f99ff06f          	j	800066f8 <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv+0x2c>
            }
        }
        printString("A finished!\n");
    80006764:	00006517          	auipc	a0,0x6
    80006768:	dcc50513          	addi	a0,a0,-564 # 8000c530 <CONSOLE_STATUS+0x520>
    8000676c:	fffff097          	auipc	ra,0xfffff
    80006770:	f20080e7          	jalr	-224(ra) # 8000568c <_Z11printStringPKc>
        finishedA = true;
    80006774:	00100793          	li	a5,1
    80006778:	00009717          	auipc	a4,0x9
    8000677c:	3ef70e23          	sb	a5,1020(a4) # 8000fb74 <_ZN20Threads_CPP_API_test9finishedAE>
    }
    80006780:	01813083          	ld	ra,24(sp)
    80006784:	01013403          	ld	s0,16(sp)
    80006788:	00813483          	ld	s1,8(sp)
    8000678c:	00013903          	ld	s2,0(sp)
    80006790:	02010113          	addi	sp,sp,32
    80006794:	00008067          	ret

0000000080006798 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv>:

    void WorkerB::workerBodyB(void *arg) {
    80006798:	fe010113          	addi	sp,sp,-32
    8000679c:	00113c23          	sd	ra,24(sp)
    800067a0:	00813823          	sd	s0,16(sp)
    800067a4:	00913423          	sd	s1,8(sp)
    800067a8:	01213023          	sd	s2,0(sp)
    800067ac:	02010413          	addi	s0,sp,32
        for (uint64 i = 0; i < 16; i++) {
    800067b0:	00000913          	li	s2,0
    800067b4:	0380006f          	j	800067ec <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x54>
            printString("B: i="); printInt(i); printString("\n");
            for (uint64 j = 0; j < 10000; j++) {
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
                thread_dispatch();
    800067b8:	ffffb097          	auipc	ra,0xffffb
    800067bc:	be8080e7          	jalr	-1048(ra) # 800013a0 <thread_dispatch>
            for (uint64 j = 0; j < 10000; j++) {
    800067c0:	00148493          	addi	s1,s1,1
    800067c4:	000027b7          	lui	a5,0x2
    800067c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800067cc:	0097ee63          	bltu	a5,s1,800067e8 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x50>
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800067d0:	00000713          	li	a4,0
    800067d4:	000077b7          	lui	a5,0x7
    800067d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800067dc:	fce7eee3          	bltu	a5,a4,800067b8 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x20>
    800067e0:	00170713          	addi	a4,a4,1
    800067e4:	ff1ff06f          	j	800067d4 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x3c>
        for (uint64 i = 0; i < 16; i++) {
    800067e8:	00190913          	addi	s2,s2,1
    800067ec:	00f00793          	li	a5,15
    800067f0:	0527e063          	bltu	a5,s2,80006830 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x98>
            printString("B: i="); printInt(i); printString("\n");
    800067f4:	00006517          	auipc	a0,0x6
    800067f8:	d4c50513          	addi	a0,a0,-692 # 8000c540 <CONSOLE_STATUS+0x530>
    800067fc:	fffff097          	auipc	ra,0xfffff
    80006800:	e90080e7          	jalr	-368(ra) # 8000568c <_Z11printStringPKc>
    80006804:	00000613          	li	a2,0
    80006808:	00a00593          	li	a1,10
    8000680c:	0009051b          	sext.w	a0,s2
    80006810:	fffff097          	auipc	ra,0xfffff
    80006814:	014080e7          	jalr	20(ra) # 80005824 <_Z8printIntiii>
    80006818:	00006517          	auipc	a0,0x6
    8000681c:	a6050513          	addi	a0,a0,-1440 # 8000c278 <CONSOLE_STATUS+0x268>
    80006820:	fffff097          	auipc	ra,0xfffff
    80006824:	e6c080e7          	jalr	-404(ra) # 8000568c <_Z11printStringPKc>
            for (uint64 j = 0; j < 10000; j++) {
    80006828:	00000493          	li	s1,0
    8000682c:	f99ff06f          	j	800067c4 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv+0x2c>
            }
        }
        printString("B finished!\n");
    80006830:	00006517          	auipc	a0,0x6
    80006834:	d1850513          	addi	a0,a0,-744 # 8000c548 <CONSOLE_STATUS+0x538>
    80006838:	fffff097          	auipc	ra,0xfffff
    8000683c:	e54080e7          	jalr	-428(ra) # 8000568c <_Z11printStringPKc>
        finishedB = true;
    80006840:	00100793          	li	a5,1
    80006844:	00009717          	auipc	a4,0x9
    80006848:	32f708a3          	sb	a5,817(a4) # 8000fb75 <_ZN20Threads_CPP_API_test9finishedBE>
        thread_dispatch();
    8000684c:	ffffb097          	auipc	ra,0xffffb
    80006850:	b54080e7          	jalr	-1196(ra) # 800013a0 <thread_dispatch>
    }
    80006854:	01813083          	ld	ra,24(sp)
    80006858:	01013403          	ld	s0,16(sp)
    8000685c:	00813483          	ld	s1,8(sp)
    80006860:	00013903          	ld	s2,0(sp)
    80006864:	02010113          	addi	sp,sp,32
    80006868:	00008067          	ret

000000008000686c <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv>:

    void WorkerC::workerBodyC(void *arg) {
    8000686c:	fe010113          	addi	sp,sp,-32
    80006870:	00113c23          	sd	ra,24(sp)
    80006874:	00813823          	sd	s0,16(sp)
    80006878:	00913423          	sd	s1,8(sp)
    8000687c:	01213023          	sd	s2,0(sp)
    80006880:	02010413          	addi	s0,sp,32
        uint8 i = 0;
    80006884:	00000493          	li	s1,0
    80006888:	0400006f          	j	800068c8 <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv+0x5c>
        for (; i < 3; i++) {
            printString("C: i="); printInt(i); printString("\n");
    8000688c:	00006517          	auipc	a0,0x6
    80006890:	cdc50513          	addi	a0,a0,-804 # 8000c568 <CONSOLE_STATUS+0x558>
    80006894:	fffff097          	auipc	ra,0xfffff
    80006898:	df8080e7          	jalr	-520(ra) # 8000568c <_Z11printStringPKc>
    8000689c:	00000613          	li	a2,0
    800068a0:	00a00593          	li	a1,10
    800068a4:	00048513          	mv	a0,s1
    800068a8:	fffff097          	auipc	ra,0xfffff
    800068ac:	f7c080e7          	jalr	-132(ra) # 80005824 <_Z8printIntiii>
    800068b0:	00006517          	auipc	a0,0x6
    800068b4:	9c850513          	addi	a0,a0,-1592 # 8000c278 <CONSOLE_STATUS+0x268>
    800068b8:	fffff097          	auipc	ra,0xfffff
    800068bc:	dd4080e7          	jalr	-556(ra) # 8000568c <_Z11printStringPKc>
        for (; i < 3; i++) {
    800068c0:	0014849b          	addiw	s1,s1,1
    800068c4:	0ff4f493          	andi	s1,s1,255
    800068c8:	00200793          	li	a5,2
    800068cc:	fc97f0e3          	bgeu	a5,s1,8000688c <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv+0x20>
        }

        printString("C: dispatch\n");
    800068d0:	00006517          	auipc	a0,0x6
    800068d4:	ca050513          	addi	a0,a0,-864 # 8000c570 <CONSOLE_STATUS+0x560>
    800068d8:	fffff097          	auipc	ra,0xfffff
    800068dc:	db4080e7          	jalr	-588(ra) # 8000568c <_Z11printStringPKc>
        __asm__ ("li t1, 7");
    800068e0:	00700313          	li	t1,7
        thread_dispatch();
    800068e4:	ffffb097          	auipc	ra,0xffffb
    800068e8:	abc080e7          	jalr	-1348(ra) # 800013a0 <thread_dispatch>

        uint64 t1 = 0;
        __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800068ec:	00030913          	mv	s2,t1

        printString("C: t1="); printInt(t1); printString("\n");
    800068f0:	00006517          	auipc	a0,0x6
    800068f4:	c9050513          	addi	a0,a0,-880 # 8000c580 <CONSOLE_STATUS+0x570>
    800068f8:	fffff097          	auipc	ra,0xfffff
    800068fc:	d94080e7          	jalr	-620(ra) # 8000568c <_Z11printStringPKc>
    80006900:	00000613          	li	a2,0
    80006904:	00a00593          	li	a1,10
    80006908:	0009051b          	sext.w	a0,s2
    8000690c:	fffff097          	auipc	ra,0xfffff
    80006910:	f18080e7          	jalr	-232(ra) # 80005824 <_Z8printIntiii>
    80006914:	00006517          	auipc	a0,0x6
    80006918:	96450513          	addi	a0,a0,-1692 # 8000c278 <CONSOLE_STATUS+0x268>
    8000691c:	fffff097          	auipc	ra,0xfffff
    80006920:	d70080e7          	jalr	-656(ra) # 8000568c <_Z11printStringPKc>

        uint64 result = fibonacci(12);
    80006924:	00c00513          	li	a0,12
    80006928:	00000097          	auipc	ra,0x0
    8000692c:	d30080e7          	jalr	-720(ra) # 80006658 <_ZN20Threads_CPP_API_test9fibonacciEm>
    80006930:	00050913          	mv	s2,a0
        printString("C: fibonaci="); printInt(result); printString("\n");
    80006934:	00006517          	auipc	a0,0x6
    80006938:	c5450513          	addi	a0,a0,-940 # 8000c588 <CONSOLE_STATUS+0x578>
    8000693c:	fffff097          	auipc	ra,0xfffff
    80006940:	d50080e7          	jalr	-688(ra) # 8000568c <_Z11printStringPKc>
    80006944:	00000613          	li	a2,0
    80006948:	00a00593          	li	a1,10
    8000694c:	0009051b          	sext.w	a0,s2
    80006950:	fffff097          	auipc	ra,0xfffff
    80006954:	ed4080e7          	jalr	-300(ra) # 80005824 <_Z8printIntiii>
    80006958:	00006517          	auipc	a0,0x6
    8000695c:	92050513          	addi	a0,a0,-1760 # 8000c278 <CONSOLE_STATUS+0x268>
    80006960:	fffff097          	auipc	ra,0xfffff
    80006964:	d2c080e7          	jalr	-724(ra) # 8000568c <_Z11printStringPKc>
    80006968:	0400006f          	j	800069a8 <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv+0x13c>

        for (; i < 6; i++) {
            printString("C: i="); printInt(i); printString("\n");
    8000696c:	00006517          	auipc	a0,0x6
    80006970:	bfc50513          	addi	a0,a0,-1028 # 8000c568 <CONSOLE_STATUS+0x558>
    80006974:	fffff097          	auipc	ra,0xfffff
    80006978:	d18080e7          	jalr	-744(ra) # 8000568c <_Z11printStringPKc>
    8000697c:	00000613          	li	a2,0
    80006980:	00a00593          	li	a1,10
    80006984:	00048513          	mv	a0,s1
    80006988:	fffff097          	auipc	ra,0xfffff
    8000698c:	e9c080e7          	jalr	-356(ra) # 80005824 <_Z8printIntiii>
    80006990:	00006517          	auipc	a0,0x6
    80006994:	8e850513          	addi	a0,a0,-1816 # 8000c278 <CONSOLE_STATUS+0x268>
    80006998:	fffff097          	auipc	ra,0xfffff
    8000699c:	cf4080e7          	jalr	-780(ra) # 8000568c <_Z11printStringPKc>
        for (; i < 6; i++) {
    800069a0:	0014849b          	addiw	s1,s1,1
    800069a4:	0ff4f493          	andi	s1,s1,255
    800069a8:	00500793          	li	a5,5
    800069ac:	fc97f0e3          	bgeu	a5,s1,8000696c <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv+0x100>
        }

        printString("A finished!\n");
    800069b0:	00006517          	auipc	a0,0x6
    800069b4:	b8050513          	addi	a0,a0,-1152 # 8000c530 <CONSOLE_STATUS+0x520>
    800069b8:	fffff097          	auipc	ra,0xfffff
    800069bc:	cd4080e7          	jalr	-812(ra) # 8000568c <_Z11printStringPKc>
        finishedC = true;
    800069c0:	00100793          	li	a5,1
    800069c4:	00009717          	auipc	a4,0x9
    800069c8:	1af70923          	sb	a5,434(a4) # 8000fb76 <_ZN20Threads_CPP_API_test9finishedCE>
        thread_dispatch();
    800069cc:	ffffb097          	auipc	ra,0xffffb
    800069d0:	9d4080e7          	jalr	-1580(ra) # 800013a0 <thread_dispatch>
    }
    800069d4:	01813083          	ld	ra,24(sp)
    800069d8:	01013403          	ld	s0,16(sp)
    800069dc:	00813483          	ld	s1,8(sp)
    800069e0:	00013903          	ld	s2,0(sp)
    800069e4:	02010113          	addi	sp,sp,32
    800069e8:	00008067          	ret

00000000800069ec <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv>:

    void WorkerD::workerBodyD(void* arg) {
    800069ec:	fe010113          	addi	sp,sp,-32
    800069f0:	00113c23          	sd	ra,24(sp)
    800069f4:	00813823          	sd	s0,16(sp)
    800069f8:	00913423          	sd	s1,8(sp)
    800069fc:	01213023          	sd	s2,0(sp)
    80006a00:	02010413          	addi	s0,sp,32
        uint8 i = 10;
    80006a04:	00a00493          	li	s1,10
    80006a08:	0400006f          	j	80006a48 <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv+0x5c>
        for (; i < 13; i++) {
            printString("D: i="); printInt(i); printString("\n");
    80006a0c:	00006517          	auipc	a0,0x6
    80006a10:	b8c50513          	addi	a0,a0,-1140 # 8000c598 <CONSOLE_STATUS+0x588>
    80006a14:	fffff097          	auipc	ra,0xfffff
    80006a18:	c78080e7          	jalr	-904(ra) # 8000568c <_Z11printStringPKc>
    80006a1c:	00000613          	li	a2,0
    80006a20:	00a00593          	li	a1,10
    80006a24:	00048513          	mv	a0,s1
    80006a28:	fffff097          	auipc	ra,0xfffff
    80006a2c:	dfc080e7          	jalr	-516(ra) # 80005824 <_Z8printIntiii>
    80006a30:	00006517          	auipc	a0,0x6
    80006a34:	84850513          	addi	a0,a0,-1976 # 8000c278 <CONSOLE_STATUS+0x268>
    80006a38:	fffff097          	auipc	ra,0xfffff
    80006a3c:	c54080e7          	jalr	-940(ra) # 8000568c <_Z11printStringPKc>
        for (; i < 13; i++) {
    80006a40:	0014849b          	addiw	s1,s1,1
    80006a44:	0ff4f493          	andi	s1,s1,255
    80006a48:	00c00793          	li	a5,12
    80006a4c:	fc97f0e3          	bgeu	a5,s1,80006a0c <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv+0x20>
        }

        printString("D: dispatch\n");
    80006a50:	00006517          	auipc	a0,0x6
    80006a54:	b5050513          	addi	a0,a0,-1200 # 8000c5a0 <CONSOLE_STATUS+0x590>
    80006a58:	fffff097          	auipc	ra,0xfffff
    80006a5c:	c34080e7          	jalr	-972(ra) # 8000568c <_Z11printStringPKc>
        __asm__ ("li t1, 5");
    80006a60:	00500313          	li	t1,5
        thread_dispatch();
    80006a64:	ffffb097          	auipc	ra,0xffffb
    80006a68:	93c080e7          	jalr	-1732(ra) # 800013a0 <thread_dispatch>

        uint64 result = fibonacci(16);
    80006a6c:	01000513          	li	a0,16
    80006a70:	00000097          	auipc	ra,0x0
    80006a74:	be8080e7          	jalr	-1048(ra) # 80006658 <_ZN20Threads_CPP_API_test9fibonacciEm>
    80006a78:	00050913          	mv	s2,a0
        printString("D: fibonaci="); printInt(result); printString("\n");
    80006a7c:	00006517          	auipc	a0,0x6
    80006a80:	b3450513          	addi	a0,a0,-1228 # 8000c5b0 <CONSOLE_STATUS+0x5a0>
    80006a84:	fffff097          	auipc	ra,0xfffff
    80006a88:	c08080e7          	jalr	-1016(ra) # 8000568c <_Z11printStringPKc>
    80006a8c:	00000613          	li	a2,0
    80006a90:	00a00593          	li	a1,10
    80006a94:	0009051b          	sext.w	a0,s2
    80006a98:	fffff097          	auipc	ra,0xfffff
    80006a9c:	d8c080e7          	jalr	-628(ra) # 80005824 <_Z8printIntiii>
    80006aa0:	00005517          	auipc	a0,0x5
    80006aa4:	7d850513          	addi	a0,a0,2008 # 8000c278 <CONSOLE_STATUS+0x268>
    80006aa8:	fffff097          	auipc	ra,0xfffff
    80006aac:	be4080e7          	jalr	-1052(ra) # 8000568c <_Z11printStringPKc>
    80006ab0:	0400006f          	j	80006af0 <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv+0x104>

        for (; i < 16; i++) {
            printString("D: i="); printInt(i); printString("\n");
    80006ab4:	00006517          	auipc	a0,0x6
    80006ab8:	ae450513          	addi	a0,a0,-1308 # 8000c598 <CONSOLE_STATUS+0x588>
    80006abc:	fffff097          	auipc	ra,0xfffff
    80006ac0:	bd0080e7          	jalr	-1072(ra) # 8000568c <_Z11printStringPKc>
    80006ac4:	00000613          	li	a2,0
    80006ac8:	00a00593          	li	a1,10
    80006acc:	00048513          	mv	a0,s1
    80006ad0:	fffff097          	auipc	ra,0xfffff
    80006ad4:	d54080e7          	jalr	-684(ra) # 80005824 <_Z8printIntiii>
    80006ad8:	00005517          	auipc	a0,0x5
    80006adc:	7a050513          	addi	a0,a0,1952 # 8000c278 <CONSOLE_STATUS+0x268>
    80006ae0:	fffff097          	auipc	ra,0xfffff
    80006ae4:	bac080e7          	jalr	-1108(ra) # 8000568c <_Z11printStringPKc>
        for (; i < 16; i++) {
    80006ae8:	0014849b          	addiw	s1,s1,1
    80006aec:	0ff4f493          	andi	s1,s1,255
    80006af0:	00f00793          	li	a5,15
    80006af4:	fc97f0e3          	bgeu	a5,s1,80006ab4 <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv+0xc8>
        }

        printString("D finished!\n");
    80006af8:	00006517          	auipc	a0,0x6
    80006afc:	ac850513          	addi	a0,a0,-1336 # 8000c5c0 <CONSOLE_STATUS+0x5b0>
    80006b00:	fffff097          	auipc	ra,0xfffff
    80006b04:	b8c080e7          	jalr	-1140(ra) # 8000568c <_Z11printStringPKc>
        finishedD = true;
    80006b08:	00100793          	li	a5,1
    80006b0c:	00009717          	auipc	a4,0x9
    80006b10:	06f705a3          	sb	a5,107(a4) # 8000fb77 <_ZN20Threads_CPP_API_test9finishedDE>
        thread_dispatch();
    80006b14:	ffffb097          	auipc	ra,0xffffb
    80006b18:	88c080e7          	jalr	-1908(ra) # 800013a0 <thread_dispatch>
    }
    80006b1c:	01813083          	ld	ra,24(sp)
    80006b20:	01013403          	ld	s0,16(sp)
    80006b24:	00813483          	ld	s1,8(sp)
    80006b28:	00013903          	ld	s2,0(sp)
    80006b2c:	02010113          	addi	sp,sp,32
    80006b30:	00008067          	ret

0000000080006b34 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv>:


    void Threads_CPP_API_test() {
    80006b34:	fc010113          	addi	sp,sp,-64
    80006b38:	02113c23          	sd	ra,56(sp)
    80006b3c:	02813823          	sd	s0,48(sp)
    80006b40:	02913423          	sd	s1,40(sp)
    80006b44:	03213023          	sd	s2,32(sp)
    80006b48:	04010413          	addi	s0,sp,64
        Thread* threads[4];

        threads[0] = new WorkerA();
    80006b4c:	01000513          	li	a0,16
    80006b50:	ffffd097          	auipc	ra,0xffffd
    80006b54:	0f4080e7          	jalr	244(ra) # 80003c44 <_Znwm>
    80006b58:	00050493          	mv	s1,a0
    80006b5c:	00050c63          	beqz	a0,80006b74 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x40>
        WorkerA():Thread() {}
    80006b60:	ffffd097          	auipc	ra,0xffffd
    80006b64:	380080e7          	jalr	896(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80006b68:	00009797          	auipc	a5,0x9
    80006b6c:	b7078793          	addi	a5,a5,-1168 # 8000f6d8 <_ZTVN20Threads_CPP_API_test7WorkerAE+0x10>
    80006b70:	00f4b023          	sd	a5,0(s1)
        threads[0] = new WorkerA();
    80006b74:	fc943023          	sd	s1,-64(s0)
        printString("ThreadA created\n");
    80006b78:	00006517          	auipc	a0,0x6
    80006b7c:	a5850513          	addi	a0,a0,-1448 # 8000c5d0 <CONSOLE_STATUS+0x5c0>
    80006b80:	fffff097          	auipc	ra,0xfffff
    80006b84:	b0c080e7          	jalr	-1268(ra) # 8000568c <_Z11printStringPKc>

        threads[1] = new WorkerB();
    80006b88:	01000513          	li	a0,16
    80006b8c:	ffffd097          	auipc	ra,0xffffd
    80006b90:	0b8080e7          	jalr	184(ra) # 80003c44 <_Znwm>
    80006b94:	00050493          	mv	s1,a0
    80006b98:	00050c63          	beqz	a0,80006bb0 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x7c>
        WorkerB():Thread() {}
    80006b9c:	ffffd097          	auipc	ra,0xffffd
    80006ba0:	344080e7          	jalr	836(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80006ba4:	00009797          	auipc	a5,0x9
    80006ba8:	b5c78793          	addi	a5,a5,-1188 # 8000f700 <_ZTVN20Threads_CPP_API_test7WorkerBE+0x10>
    80006bac:	00f4b023          	sd	a5,0(s1)
        threads[1] = new WorkerB();
    80006bb0:	fc943423          	sd	s1,-56(s0)
        printString("ThreadB created\n");
    80006bb4:	00006517          	auipc	a0,0x6
    80006bb8:	a3450513          	addi	a0,a0,-1484 # 8000c5e8 <CONSOLE_STATUS+0x5d8>
    80006bbc:	fffff097          	auipc	ra,0xfffff
    80006bc0:	ad0080e7          	jalr	-1328(ra) # 8000568c <_Z11printStringPKc>

        threads[2] = new WorkerC();
    80006bc4:	01000513          	li	a0,16
    80006bc8:	ffffd097          	auipc	ra,0xffffd
    80006bcc:	07c080e7          	jalr	124(ra) # 80003c44 <_Znwm>
    80006bd0:	00050493          	mv	s1,a0
    80006bd4:	00050c63          	beqz	a0,80006bec <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0xb8>
        WorkerC():Thread() {}
    80006bd8:	ffffd097          	auipc	ra,0xffffd
    80006bdc:	308080e7          	jalr	776(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80006be0:	00009797          	auipc	a5,0x9
    80006be4:	b4878793          	addi	a5,a5,-1208 # 8000f728 <_ZTVN20Threads_CPP_API_test7WorkerCE+0x10>
    80006be8:	00f4b023          	sd	a5,0(s1)
        threads[2] = new WorkerC();
    80006bec:	fc943823          	sd	s1,-48(s0)
        printString("ThreadC created\n");
    80006bf0:	00006517          	auipc	a0,0x6
    80006bf4:	a1050513          	addi	a0,a0,-1520 # 8000c600 <CONSOLE_STATUS+0x5f0>
    80006bf8:	fffff097          	auipc	ra,0xfffff
    80006bfc:	a94080e7          	jalr	-1388(ra) # 8000568c <_Z11printStringPKc>

        threads[3] = new WorkerD();
    80006c00:	01000513          	li	a0,16
    80006c04:	ffffd097          	auipc	ra,0xffffd
    80006c08:	040080e7          	jalr	64(ra) # 80003c44 <_Znwm>
    80006c0c:	00050493          	mv	s1,a0
    80006c10:	00050c63          	beqz	a0,80006c28 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0xf4>
        WorkerD():Thread() {}
    80006c14:	ffffd097          	auipc	ra,0xffffd
    80006c18:	2cc080e7          	jalr	716(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80006c1c:	00009797          	auipc	a5,0x9
    80006c20:	b3478793          	addi	a5,a5,-1228 # 8000f750 <_ZTVN20Threads_CPP_API_test7WorkerDE+0x10>
    80006c24:	00f4b023          	sd	a5,0(s1)
        threads[3] = new WorkerD();
    80006c28:	fc943c23          	sd	s1,-40(s0)
        printString("ThreadD created\n");
    80006c2c:	00006517          	auipc	a0,0x6
    80006c30:	9ec50513          	addi	a0,a0,-1556 # 8000c618 <CONSOLE_STATUS+0x608>
    80006c34:	fffff097          	auipc	ra,0xfffff
    80006c38:	a58080e7          	jalr	-1448(ra) # 8000568c <_Z11printStringPKc>

        for(int i=0; i<4; i++) {
    80006c3c:	00000493          	li	s1,0
    80006c40:	00300793          	li	a5,3
    80006c44:	0297c663          	blt	a5,s1,80006c70 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x13c>
            threads[i]->start();
    80006c48:	00349793          	slli	a5,s1,0x3
    80006c4c:	fe040713          	addi	a4,s0,-32
    80006c50:	00f707b3          	add	a5,a4,a5
    80006c54:	fe07b503          	ld	a0,-32(a5)
    80006c58:	ffffd097          	auipc	ra,0xffffd
    80006c5c:	1b4080e7          	jalr	436(ra) # 80003e0c <_ZN6Thread5startEv>
        for(int i=0; i<4; i++) {
    80006c60:	0014849b          	addiw	s1,s1,1
    80006c64:	fddff06f          	j	80006c40 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x10c>
        }

        while (!(finishedA && finishedB && finishedC && finishedD)) {
            Thread::dispatch();
    80006c68:	ffffd097          	auipc	ra,0xffffd
    80006c6c:	1d4080e7          	jalr	468(ra) # 80003e3c <_ZN6Thread8dispatchEv>
        while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006c70:	00009797          	auipc	a5,0x9
    80006c74:	f047c783          	lbu	a5,-252(a5) # 8000fb74 <_ZN20Threads_CPP_API_test9finishedAE>
    80006c78:	fe0788e3          	beqz	a5,80006c68 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x134>
    80006c7c:	00009797          	auipc	a5,0x9
    80006c80:	ef97c783          	lbu	a5,-263(a5) # 8000fb75 <_ZN20Threads_CPP_API_test9finishedBE>
    80006c84:	fe0782e3          	beqz	a5,80006c68 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x134>
    80006c88:	00009797          	auipc	a5,0x9
    80006c8c:	eee7c783          	lbu	a5,-274(a5) # 8000fb76 <_ZN20Threads_CPP_API_test9finishedCE>
    80006c90:	fc078ce3          	beqz	a5,80006c68 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x134>
    80006c94:	00009797          	auipc	a5,0x9
    80006c98:	ee37c783          	lbu	a5,-285(a5) # 8000fb77 <_ZN20Threads_CPP_API_test9finishedDE>
    80006c9c:	fc0786e3          	beqz	a5,80006c68 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x134>
        }

        for (auto thread: threads) { delete thread; }
    80006ca0:	fc040493          	addi	s1,s0,-64
    80006ca4:	0080006f          	j	80006cac <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x178>
    80006ca8:	00848493          	addi	s1,s1,8
    80006cac:	fe040793          	addi	a5,s0,-32
    80006cb0:	08f48663          	beq	s1,a5,80006d3c <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x208>
    80006cb4:	0004b503          	ld	a0,0(s1)
    80006cb8:	fe0508e3          	beqz	a0,80006ca8 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x174>
    80006cbc:	00053783          	ld	a5,0(a0)
    80006cc0:	0087b783          	ld	a5,8(a5)
    80006cc4:	000780e7          	jalr	a5
    80006cc8:	fe1ff06f          	j	80006ca8 <_ZN20Threads_CPP_API_test20Threads_CPP_API_testEv+0x174>
    80006ccc:	00050913          	mv	s2,a0
        threads[0] = new WorkerA();
    80006cd0:	00048513          	mv	a0,s1
    80006cd4:	ffffd097          	auipc	ra,0xffffd
    80006cd8:	fc0080e7          	jalr	-64(ra) # 80003c94 <_ZdlPv>
    80006cdc:	00090513          	mv	a0,s2
    80006ce0:	000cd097          	auipc	ra,0xcd
    80006ce4:	488080e7          	jalr	1160(ra) # 800d4168 <_Unwind_Resume>
    80006ce8:	00050913          	mv	s2,a0
        threads[1] = new WorkerB();
    80006cec:	00048513          	mv	a0,s1
    80006cf0:	ffffd097          	auipc	ra,0xffffd
    80006cf4:	fa4080e7          	jalr	-92(ra) # 80003c94 <_ZdlPv>
    80006cf8:	00090513          	mv	a0,s2
    80006cfc:	000cd097          	auipc	ra,0xcd
    80006d00:	46c080e7          	jalr	1132(ra) # 800d4168 <_Unwind_Resume>
    80006d04:	00050913          	mv	s2,a0
        threads[2] = new WorkerC();
    80006d08:	00048513          	mv	a0,s1
    80006d0c:	ffffd097          	auipc	ra,0xffffd
    80006d10:	f88080e7          	jalr	-120(ra) # 80003c94 <_ZdlPv>
    80006d14:	00090513          	mv	a0,s2
    80006d18:	000cd097          	auipc	ra,0xcd
    80006d1c:	450080e7          	jalr	1104(ra) # 800d4168 <_Unwind_Resume>
    80006d20:	00050913          	mv	s2,a0
        threads[3] = new WorkerD();
    80006d24:	00048513          	mv	a0,s1
    80006d28:	ffffd097          	auipc	ra,0xffffd
    80006d2c:	f6c080e7          	jalr	-148(ra) # 80003c94 <_ZdlPv>
    80006d30:	00090513          	mv	a0,s2
    80006d34:	000cd097          	auipc	ra,0xcd
    80006d38:	434080e7          	jalr	1076(ra) # 800d4168 <_Unwind_Resume>
    }
    80006d3c:	03813083          	ld	ra,56(sp)
    80006d40:	03013403          	ld	s0,48(sp)
    80006d44:	02813483          	ld	s1,40(sp)
    80006d48:	02013903          	ld	s2,32(sp)
    80006d4c:	04010113          	addi	sp,sp,64
    80006d50:	00008067          	ret

0000000080006d54 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv>:

    void producerConsumer_C_API() {
    80006d54:	f9010113          	addi	sp,sp,-112
    80006d58:	06113423          	sd	ra,104(sp)
    80006d5c:	06813023          	sd	s0,96(sp)
    80006d60:	04913c23          	sd	s1,88(sp)
    80006d64:	05213823          	sd	s2,80(sp)
    80006d68:	05313423          	sd	s3,72(sp)
    80006d6c:	05413023          	sd	s4,64(sp)
    80006d70:	03513c23          	sd	s5,56(sp)
    80006d74:	03613823          	sd	s6,48(sp)
    80006d78:	07010413          	addi	s0,sp,112
            sem_wait(waitForAll);
        }

        sem_close(waitForAll);

        delete buffer;
    80006d7c:	00010b13          	mv	s6,sp
        printString("Unesite broj proizvodjaca?\n");
    80006d80:	00006517          	auipc	a0,0x6
    80006d84:	8c850513          	addi	a0,a0,-1848 # 8000c648 <CONSOLE_STATUS+0x638>
    80006d88:	fffff097          	auipc	ra,0xfffff
    80006d8c:	904080e7          	jalr	-1788(ra) # 8000568c <_Z11printStringPKc>
        getString(input, 30);
    80006d90:	01e00593          	li	a1,30
    80006d94:	fa040493          	addi	s1,s0,-96
    80006d98:	00048513          	mv	a0,s1
    80006d9c:	fffff097          	auipc	ra,0xfffff
    80006da0:	96c080e7          	jalr	-1684(ra) # 80005708 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80006da4:	00048513          	mv	a0,s1
    80006da8:	fffff097          	auipc	ra,0xfffff
    80006dac:	a2c080e7          	jalr	-1492(ra) # 800057d4 <_Z11stringToIntPKc>
    80006db0:	00050913          	mv	s2,a0
        printString("Unesite velicinu bafera?\n");
    80006db4:	00006517          	auipc	a0,0x6
    80006db8:	8b450513          	addi	a0,a0,-1868 # 8000c668 <CONSOLE_STATUS+0x658>
    80006dbc:	fffff097          	auipc	ra,0xfffff
    80006dc0:	8d0080e7          	jalr	-1840(ra) # 8000568c <_Z11printStringPKc>
        getString(input, 30);
    80006dc4:	01e00593          	li	a1,30
    80006dc8:	00048513          	mv	a0,s1
    80006dcc:	fffff097          	auipc	ra,0xfffff
    80006dd0:	93c080e7          	jalr	-1732(ra) # 80005708 <_Z9getStringPci>
        n = stringToInt(input);
    80006dd4:	00048513          	mv	a0,s1
    80006dd8:	fffff097          	auipc	ra,0xfffff
    80006ddc:	9fc080e7          	jalr	-1540(ra) # 800057d4 <_Z11stringToIntPKc>
    80006de0:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80006de4:	00006517          	auipc	a0,0x6
    80006de8:	8a450513          	addi	a0,a0,-1884 # 8000c688 <CONSOLE_STATUS+0x678>
    80006dec:	fffff097          	auipc	ra,0xfffff
    80006df0:	8a0080e7          	jalr	-1888(ra) # 8000568c <_Z11printStringPKc>
    80006df4:	00000613          	li	a2,0
    80006df8:	00a00593          	li	a1,10
    80006dfc:	00090513          	mv	a0,s2
    80006e00:	fffff097          	auipc	ra,0xfffff
    80006e04:	a24080e7          	jalr	-1500(ra) # 80005824 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80006e08:	00006517          	auipc	a0,0x6
    80006e0c:	89850513          	addi	a0,a0,-1896 # 8000c6a0 <CONSOLE_STATUS+0x690>
    80006e10:	fffff097          	auipc	ra,0xfffff
    80006e14:	87c080e7          	jalr	-1924(ra) # 8000568c <_Z11printStringPKc>
    80006e18:	00000613          	li	a2,0
    80006e1c:	00a00593          	li	a1,10
    80006e20:	00048513          	mv	a0,s1
    80006e24:	fffff097          	auipc	ra,0xfffff
    80006e28:	a00080e7          	jalr	-1536(ra) # 80005824 <_Z8printIntiii>
        printString(".\n");
    80006e2c:	00006517          	auipc	a0,0x6
    80006e30:	88c50513          	addi	a0,a0,-1908 # 8000c6b8 <CONSOLE_STATUS+0x6a8>
    80006e34:	fffff097          	auipc	ra,0xfffff
    80006e38:	858080e7          	jalr	-1960(ra) # 8000568c <_Z11printStringPKc>
        if(threadNum > n) {
    80006e3c:	0524c063          	blt	s1,s2,80006e7c <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x128>
        } else if (threadNum < 1) {
    80006e40:	05205863          	blez	s2,80006e90 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x13c>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    80006e44:	00009797          	auipc	a5,0x9
    80006e48:	c947c783          	lbu	a5,-876(a5) # 8000fad8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80006e4c:	04078e63          	beqz	a5,80006ea8 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x154>
    int getCnt();

    // operatori
    void *operator new(uint64 n){
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    80006e50:	00100593          	li	a1,1
    80006e54:	00009517          	auipc	a0,0x9
    80006e58:	c8c50513          	addi	a0,a0,-884 # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80006e5c:	ffffe097          	auipc	ra,0xffffe
    80006e60:	dac080e7          	jalr	-596(ra) # 80004c08 <_ZN15MemoryAllocator12memory_allocEm>
    80006e64:	00050a13          	mv	s4,a0
        Buffer *buffer = new Buffer(n);
    80006e68:	0a050e63          	beqz	a0,80006f24 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x1d0>
    80006e6c:	00048593          	mv	a1,s1
    80006e70:	00002097          	auipc	ra,0x2
    80006e74:	098080e7          	jalr	152(ra) # 80008f08 <_ZN6BufferC1Ei>
    80006e78:	0ac0006f          	j	80006f24 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x1d0>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80006e7c:	00006517          	auipc	a0,0x6
    80006e80:	84450513          	addi	a0,a0,-1980 # 8000c6c0 <CONSOLE_STATUS+0x6b0>
    80006e84:	fffff097          	auipc	ra,0xfffff
    80006e88:	808080e7          	jalr	-2040(ra) # 8000568c <_Z11printStringPKc>
            return;
    80006e8c:	0140006f          	j	80006ea0 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x14c>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80006e90:	00006517          	auipc	a0,0x6
    80006e94:	87050513          	addi	a0,a0,-1936 # 8000c700 <CONSOLE_STATUS+0x6f0>
    80006e98:	ffffe097          	auipc	ra,0xffffe
    80006e9c:	7f4080e7          	jalr	2036(ra) # 8000568c <_Z11printStringPKc>
            return;
    80006ea0:	000b0113          	mv	sp,s6
    80006ea4:	1e00006f          	j	80007084 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x330>

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    80006ea8:	00009617          	auipc	a2,0x9
    80006eac:	c3860613          	addi	a2,a2,-968 # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80006eb0:	00009797          	auipc	a5,0x9
    80006eb4:	a207b783          	ld	a5,-1504(a5) # 8000f8d0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80006eb8:	0007b703          	ld	a4,0(a5)
    80006ebc:	00009797          	auipc	a5,0x9
    80006ec0:	9dc7b783          	ld	a5,-1572(a5) # 8000f898 <_GLOBAL_OFFSET_TABLE_+0x18>
    80006ec4:	0007b783          	ld	a5,0(a5)
    80006ec8:	40f706b3          	sub	a3,a4,a5
    80006ecc:	0036d693          	srli	a3,a3,0x3
    80006ed0:	00d787b3          	add	a5,a5,a3
    80006ed4:	00178793          	addi	a5,a5,1
    80006ed8:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80006edc:	fff70713          	addi	a4,a4,-1
    80006ee0:	00e63823          	sd	a4,16(a2)

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80006ee4:	03f7f693          	andi	a3,a5,63
    80006ee8:	00068663          	beqz	a3,80006ef4 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x1a0>
    80006eec:	04000613          	li	a2,64
    80006ef0:	40d606b3          	sub	a3,a2,a3
    80006ef4:	00d787b3          	add	a5,a5,a3
    80006ef8:	00009697          	auipc	a3,0x9
    80006efc:	bef6b423          	sd	a5,-1048(a3) # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80006f00:	40f70733          	sub	a4,a4,a5
    80006f04:	00675713          	srli	a4,a4,0x6

        // napravi node

        fmem_head->next = nullptr;
    80006f08:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80006f0c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80006f10:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80006f14:	00100793          	li	a5,1
    80006f18:	00009717          	auipc	a4,0x9
    80006f1c:	bcf70023          	sb	a5,-1088(a4) # 8000fad8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80006f20:	f31ff06f          	j	80006e50 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0xfc>
        sem_open(&waitForAll, 0);
    80006f24:	00000593          	li	a1,0
    80006f28:	00009517          	auipc	a0,0x9
    80006f2c:	c5050513          	addi	a0,a0,-944 # 8000fb78 <_ZN27ConsumerProducer_C_API_test10waitForAllE>
    80006f30:	ffffa097          	auipc	ra,0xffffa
    80006f34:	574080e7          	jalr	1396(ra) # 800014a4 <sem_open>
        thread_t threads[threadNum];
    80006f38:	00391793          	slli	a5,s2,0x3
    80006f3c:	00f78793          	addi	a5,a5,15
    80006f40:	ff07f793          	andi	a5,a5,-16
    80006f44:	40f10133          	sub	sp,sp,a5
    80006f48:	00010a93          	mv	s5,sp
        struct thread_data data[threadNum + 1];
    80006f4c:	0019071b          	addiw	a4,s2,1
    80006f50:	00171793          	slli	a5,a4,0x1
    80006f54:	00e787b3          	add	a5,a5,a4
    80006f58:	00379793          	slli	a5,a5,0x3
    80006f5c:	00f78793          	addi	a5,a5,15
    80006f60:	ff07f793          	andi	a5,a5,-16
    80006f64:	40f10133          	sub	sp,sp,a5
    80006f68:	00010993          	mv	s3,sp
        data[threadNum].id = threadNum;
    80006f6c:	00191613          	slli	a2,s2,0x1
    80006f70:	012607b3          	add	a5,a2,s2
    80006f74:	00379793          	slli	a5,a5,0x3
    80006f78:	00f987b3          	add	a5,s3,a5
    80006f7c:	0127a023          	sw	s2,0(a5)
        data[threadNum].buffer = buffer;
    80006f80:	0147b423          	sd	s4,8(a5)
        data[threadNum].wait = waitForAll;
    80006f84:	00009717          	auipc	a4,0x9
    80006f88:	bf473703          	ld	a4,-1036(a4) # 8000fb78 <_ZN27ConsumerProducer_C_API_test10waitForAllE>
    80006f8c:	00e7b823          	sd	a4,16(a5)
        thread_create(&consumerThread, consumer, data + threadNum);
    80006f90:	00078613          	mv	a2,a5
    80006f94:	fffff597          	auipc	a1,0xfffff
    80006f98:	0d458593          	addi	a1,a1,212 # 80006068 <_ZN27ConsumerProducer_C_API_test8consumerEPv>
    80006f9c:	f9840513          	addi	a0,s0,-104
    80006fa0:	ffffa097          	auipc	ra,0xffffa
    80006fa4:	35c080e7          	jalr	860(ra) # 800012fc <thread_create>
        for (int i = 0; i < threadNum; i++) {
    80006fa8:	00000493          	li	s1,0
    80006fac:	0280006f          	j	80006fd4 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x280>
            thread_create(threads + i,
    80006fb0:	fffff597          	auipc	a1,0xfffff
    80006fb4:	f7458593          	addi	a1,a1,-140 # 80005f24 <_ZN27ConsumerProducer_C_API_test16producerKeyboardEPv>
                          data + i);
    80006fb8:	00179613          	slli	a2,a5,0x1
    80006fbc:	00f60633          	add	a2,a2,a5
    80006fc0:	00361613          	slli	a2,a2,0x3
            thread_create(threads + i,
    80006fc4:	00c98633          	add	a2,s3,a2
    80006fc8:	ffffa097          	auipc	ra,0xffffa
    80006fcc:	334080e7          	jalr	820(ra) # 800012fc <thread_create>
        for (int i = 0; i < threadNum; i++) {
    80006fd0:	0014849b          	addiw	s1,s1,1
    80006fd4:	0524d263          	bge	s1,s2,80007018 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x2c4>
            data[i].id = i;
    80006fd8:	00149793          	slli	a5,s1,0x1
    80006fdc:	009787b3          	add	a5,a5,s1
    80006fe0:	00379793          	slli	a5,a5,0x3
    80006fe4:	00f987b3          	add	a5,s3,a5
    80006fe8:	0097a023          	sw	s1,0(a5)
            data[i].buffer = buffer;
    80006fec:	0147b423          	sd	s4,8(a5)
            data[i].wait = waitForAll;
    80006ff0:	00009717          	auipc	a4,0x9
    80006ff4:	b8873703          	ld	a4,-1144(a4) # 8000fb78 <_ZN27ConsumerProducer_C_API_test10waitForAllE>
    80006ff8:	00e7b823          	sd	a4,16(a5)
            thread_create(threads + i,
    80006ffc:	00048793          	mv	a5,s1
    80007000:	00349513          	slli	a0,s1,0x3
    80007004:	00aa8533          	add	a0,s5,a0
    80007008:	fa9054e3          	blez	s1,80006fb0 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x25c>
    8000700c:	fffff597          	auipc	a1,0xfffff
    80007010:	fc858593          	addi	a1,a1,-56 # 80005fd4 <_ZN27ConsumerProducer_C_API_test8producerEPv>
    80007014:	fa5ff06f          	j	80006fb8 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x264>
        thread_dispatch();
    80007018:	ffffa097          	auipc	ra,0xffffa
    8000701c:	388080e7          	jalr	904(ra) # 800013a0 <thread_dispatch>
        for (int i = 0; i <= threadNum; i++) {
    80007020:	00000493          	li	s1,0
    80007024:	00994e63          	blt	s2,s1,80007040 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x2ec>
            sem_wait(waitForAll);
    80007028:	00009517          	auipc	a0,0x9
    8000702c:	b5053503          	ld	a0,-1200(a0) # 8000fb78 <_ZN27ConsumerProducer_C_API_test10waitForAllE>
    80007030:	ffffa097          	auipc	ra,0xffffa
    80007034:	51c080e7          	jalr	1308(ra) # 8000154c <sem_wait>
        for (int i = 0; i <= threadNum; i++) {
    80007038:	0014849b          	addiw	s1,s1,1
    8000703c:	fe9ff06f          	j	80007024 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x2d0>
        sem_close(waitForAll);
    80007040:	00009517          	auipc	a0,0x9
    80007044:	b3853503          	ld	a0,-1224(a0) # 8000fb78 <_ZN27ConsumerProducer_C_API_test10waitForAllE>
    80007048:	ffffa097          	auipc	ra,0xffffa
    8000704c:	4b0080e7          	jalr	1200(ra) # 800014f8 <sem_close>
        delete buffer;
    80007050:	020a0863          	beqz	s4,80007080 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x32c>
    80007054:	000a0513          	mv	a0,s4
    80007058:	00002097          	auipc	ra,0x2
    8000705c:	0f0080e7          	jalr	240(ra) # 80009148 <_ZN6BufferD1Ev>
    80007060:	00009797          	auipc	a5,0x9
    80007064:	a787c783          	lbu	a5,-1416(a5) # 8000fad8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80007068:	04078463          	beqz	a5,800070b0 <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x35c>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    8000706c:	000a0593          	mv	a1,s4
    80007070:	00009517          	auipc	a0,0x9
    80007074:	a7050513          	addi	a0,a0,-1424 # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80007078:	ffffe097          	auipc	ra,0xffffe
    8000707c:	c64080e7          	jalr	-924(ra) # 80004cdc <_ZN15MemoryAllocator11memory_freeEPv>
    80007080:	000b0113          	mv	sp,s6

    }
    80007084:	f9040113          	addi	sp,s0,-112
    80007088:	06813083          	ld	ra,104(sp)
    8000708c:	06013403          	ld	s0,96(sp)
    80007090:	05813483          	ld	s1,88(sp)
    80007094:	05013903          	ld	s2,80(sp)
    80007098:	04813983          	ld	s3,72(sp)
    8000709c:	04013a03          	ld	s4,64(sp)
    800070a0:	03813a83          	ld	s5,56(sp)
    800070a4:	03013b03          	ld	s6,48(sp)
    800070a8:	07010113          	addi	sp,sp,112
    800070ac:	00008067          	ret
    MemoryAllocator(){
    800070b0:	00009617          	auipc	a2,0x9
    800070b4:	a3060613          	addi	a2,a2,-1488 # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800070b8:	00009797          	auipc	a5,0x9
    800070bc:	8187b783          	ld	a5,-2024(a5) # 8000f8d0 <_GLOBAL_OFFSET_TABLE_+0x50>
    800070c0:	0007b703          	ld	a4,0(a5)
    800070c4:	00008797          	auipc	a5,0x8
    800070c8:	7d47b783          	ld	a5,2004(a5) # 8000f898 <_GLOBAL_OFFSET_TABLE_+0x18>
    800070cc:	0007b783          	ld	a5,0(a5)
    800070d0:	40f706b3          	sub	a3,a4,a5
    800070d4:	0036d693          	srli	a3,a3,0x3
    800070d8:	00d787b3          	add	a5,a5,a3
    800070dc:	00178793          	addi	a5,a5,1
    800070e0:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800070e4:	fff70713          	addi	a4,a4,-1
    800070e8:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800070ec:	03f7f693          	andi	a3,a5,63
    800070f0:	00068663          	beqz	a3,800070fc <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x3a8>
    800070f4:	04000613          	li	a2,64
    800070f8:	40d606b3          	sub	a3,a2,a3
    800070fc:	00d787b3          	add	a5,a5,a3
    80007100:	00009697          	auipc	a3,0x9
    80007104:	9ef6b023          	sd	a5,-1568(a3) # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80007108:	40f70733          	sub	a4,a4,a5
    8000710c:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80007110:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80007114:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80007118:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    8000711c:	00100793          	li	a5,1
    80007120:	00009717          	auipc	a4,0x9
    80007124:	9af70c23          	sb	a5,-1608(a4) # 8000fad8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80007128:	f45ff06f          	j	8000706c <_ZN27ConsumerProducer_C_API_test22producerConsumer_C_APIEv+0x318>
    8000712c:	00050493          	mv	s1,a0
        Buffer *buffer = new Buffer(n);
    80007130:	000a0513          	mv	a0,s4
    80007134:	00002097          	auipc	ra,0x2
    80007138:	934080e7          	jalr	-1740(ra) # 80008a68 <_ZN6BufferdlEPv>
    8000713c:	00048513          	mv	a0,s1
    80007140:	000cd097          	auipc	ra,0xcd
    80007144:	028080e7          	jalr	40(ra) # 800d4168 <_Unwind_Resume>

0000000080007148 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv>:
        void run() override {
            producerKeyboard(td);
        }
    };

    void ProducerKeyboard::producerKeyboard(void *arg) {
    80007148:	fd010113          	addi	sp,sp,-48
    8000714c:	02113423          	sd	ra,40(sp)
    80007150:	02813023          	sd	s0,32(sp)
    80007154:	00913c23          	sd	s1,24(sp)
    80007158:	01213823          	sd	s2,16(sp)
    8000715c:	01313423          	sd	s3,8(sp)
    80007160:	03010413          	addi	s0,sp,48
    80007164:	00050993          	mv	s3,a0
    80007168:	00058493          	mv	s1,a1
        struct thread_data *data = (struct thread_data *) arg;

        int key;
        int i = 0;
    8000716c:	00000913          	li	s2,0
    80007170:	00c0006f          	j	8000717c <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv+0x34>
        while ((key = getc()) != 0x1b) {
            data->buffer->put(key);
            i++;

            if (i % (10 * data->id) == 0) {
                Thread::dispatch();
    80007174:	ffffd097          	auipc	ra,0xffffd
    80007178:	cc8080e7          	jalr	-824(ra) # 80003e3c <_ZN6Thread8dispatchEv>
        while ((key = getc()) != 0x1b) {
    8000717c:	ffffa097          	auipc	ra,0xffffa
    80007180:	478080e7          	jalr	1144(ra) # 800015f4 <getc>
    80007184:	0005059b          	sext.w	a1,a0
    80007188:	01b00793          	li	a5,27
    8000718c:	02f58a63          	beq	a1,a5,800071c0 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv+0x78>
            data->buffer->put(key);
    80007190:	0084b503          	ld	a0,8(s1)
    80007194:	fffff097          	auipc	ra,0xfffff
    80007198:	908080e7          	jalr	-1784(ra) # 80005a9c <_ZN9BufferCPP3putEi>
            i++;
    8000719c:	0019071b          	addiw	a4,s2,1
    800071a0:	0007091b          	sext.w	s2,a4
            if (i % (10 * data->id) == 0) {
    800071a4:	0004a683          	lw	a3,0(s1)
    800071a8:	0026979b          	slliw	a5,a3,0x2
    800071ac:	00d787bb          	addw	a5,a5,a3
    800071b0:	0017979b          	slliw	a5,a5,0x1
    800071b4:	02f767bb          	remw	a5,a4,a5
    800071b8:	fc0792e3          	bnez	a5,8000717c <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv+0x34>
    800071bc:	fb9ff06f          	j	80007174 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv+0x2c>
            }
        }

        threadEnd = 1;
    800071c0:	00100793          	li	a5,1
    800071c4:	00009717          	auipc	a4,0x9
    800071c8:	9af72e23          	sw	a5,-1604(a4) # 8000fb80 <_ZN34ConsumerProducer_CPP_Sync_API_test9threadEndE>
        td->buffer->put('!');
    800071cc:	0109b783          	ld	a5,16(s3)
    800071d0:	02100593          	li	a1,33
    800071d4:	0087b503          	ld	a0,8(a5)
    800071d8:	fffff097          	auipc	ra,0xfffff
    800071dc:	8c4080e7          	jalr	-1852(ra) # 80005a9c <_ZN9BufferCPP3putEi>

        data->wait->signal();
    800071e0:	0104b503          	ld	a0,16(s1)
    800071e4:	ffffd097          	auipc	ra,0xffffd
    800071e8:	de8080e7          	jalr	-536(ra) # 80003fcc <_ZN9Semaphore6signalEv>
    }
    800071ec:	02813083          	ld	ra,40(sp)
    800071f0:	02013403          	ld	s0,32(sp)
    800071f4:	01813483          	ld	s1,24(sp)
    800071f8:	01013903          	ld	s2,16(sp)
    800071fc:	00813983          	ld	s3,8(sp)
    80007200:	03010113          	addi	sp,sp,48
    80007204:	00008067          	ret

0000000080007208 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv>:
        void run() override {
            producer(td);
        }
    };

    void Producer::producer(void *arg) {
    80007208:	fe010113          	addi	sp,sp,-32
    8000720c:	00113c23          	sd	ra,24(sp)
    80007210:	00813823          	sd	s0,16(sp)
    80007214:	00913423          	sd	s1,8(sp)
    80007218:	01213023          	sd	s2,0(sp)
    8000721c:	02010413          	addi	s0,sp,32
    80007220:	00058493          	mv	s1,a1
        struct thread_data *data = (struct thread_data *) arg;

        int i = 0;
    80007224:	00000913          	li	s2,0
    80007228:	00c0006f          	j	80007234 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv+0x2c>
        while (!threadEnd) {
            data->buffer->put(data->id + '0');
            i++;

            if (i % (10 * data->id) == 0) {
                Thread::dispatch();
    8000722c:	ffffd097          	auipc	ra,0xffffd
    80007230:	c10080e7          	jalr	-1008(ra) # 80003e3c <_ZN6Thread8dispatchEv>
        while (!threadEnd) {
    80007234:	00009797          	auipc	a5,0x9
    80007238:	94c7a783          	lw	a5,-1716(a5) # 8000fb80 <_ZN34ConsumerProducer_CPP_Sync_API_test9threadEndE>
    8000723c:	02079e63          	bnez	a5,80007278 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv+0x70>
            data->buffer->put(data->id + '0');
    80007240:	0004a583          	lw	a1,0(s1)
    80007244:	0305859b          	addiw	a1,a1,48
    80007248:	0084b503          	ld	a0,8(s1)
    8000724c:	fffff097          	auipc	ra,0xfffff
    80007250:	850080e7          	jalr	-1968(ra) # 80005a9c <_ZN9BufferCPP3putEi>
            i++;
    80007254:	0019071b          	addiw	a4,s2,1
    80007258:	0007091b          	sext.w	s2,a4
            if (i % (10 * data->id) == 0) {
    8000725c:	0004a683          	lw	a3,0(s1)
    80007260:	0026979b          	slliw	a5,a3,0x2
    80007264:	00d787bb          	addw	a5,a5,a3
    80007268:	0017979b          	slliw	a5,a5,0x1
    8000726c:	02f767bb          	remw	a5,a4,a5
    80007270:	fc0792e3          	bnez	a5,80007234 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv+0x2c>
    80007274:	fb9ff06f          	j	8000722c <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv+0x24>
            }
        }

        data->wait->signal();
    80007278:	0104b503          	ld	a0,16(s1)
    8000727c:	ffffd097          	auipc	ra,0xffffd
    80007280:	d50080e7          	jalr	-688(ra) # 80003fcc <_ZN9Semaphore6signalEv>
    }
    80007284:	01813083          	ld	ra,24(sp)
    80007288:	01013403          	ld	s0,16(sp)
    8000728c:	00813483          	ld	s1,8(sp)
    80007290:	00013903          	ld	s2,0(sp)
    80007294:	02010113          	addi	sp,sp,32
    80007298:	00008067          	ret

000000008000729c <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv>:
        void run() override {
            consumer(td);
        }
    };

    void Consumer::consumer(void *arg) {
    8000729c:	fd010113          	addi	sp,sp,-48
    800072a0:	02113423          	sd	ra,40(sp)
    800072a4:	02813023          	sd	s0,32(sp)
    800072a8:	00913c23          	sd	s1,24(sp)
    800072ac:	01213823          	sd	s2,16(sp)
    800072b0:	01313423          	sd	s3,8(sp)
    800072b4:	01413023          	sd	s4,0(sp)
    800072b8:	03010413          	addi	s0,sp,48
    800072bc:	00050993          	mv	s3,a0
    800072c0:	00058913          	mv	s2,a1
        struct thread_data *data = (struct thread_data *) arg;

        int i = 0;
    800072c4:	00000a13          	li	s4,0
    800072c8:	01c0006f          	j	800072e4 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x48>
            i++;

            putc(key);

            if (i % (5 * data->id) == 0) {
                Thread::dispatch();
    800072cc:	ffffd097          	auipc	ra,0xffffd
    800072d0:	b70080e7          	jalr	-1168(ra) # 80003e3c <_ZN6Thread8dispatchEv>
    800072d4:	0500006f          	j	80007324 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x88>
            }

            if (i % 80 == 0) {
                putc('\n');
    800072d8:	00a00513          	li	a0,10
    800072dc:	ffffa097          	auipc	ra,0xffffa
    800072e0:	36c080e7          	jalr	876(ra) # 80001648 <putc>
        while (!threadEnd) {
    800072e4:	00009797          	auipc	a5,0x9
    800072e8:	89c7a783          	lw	a5,-1892(a5) # 8000fb80 <_ZN34ConsumerProducer_CPP_Sync_API_test9threadEndE>
    800072ec:	06079263          	bnez	a5,80007350 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0xb4>
            int key = data->buffer->get();
    800072f0:	00893503          	ld	a0,8(s2)
    800072f4:	fffff097          	auipc	ra,0xfffff
    800072f8:	838080e7          	jalr	-1992(ra) # 80005b2c <_ZN9BufferCPP3getEv>
            i++;
    800072fc:	001a049b          	addiw	s1,s4,1
    80007300:	00048a1b          	sext.w	s4,s1
            putc(key);
    80007304:	0ff57513          	andi	a0,a0,255
    80007308:	ffffa097          	auipc	ra,0xffffa
    8000730c:	340080e7          	jalr	832(ra) # 80001648 <putc>
            if (i % (5 * data->id) == 0) {
    80007310:	00092703          	lw	a4,0(s2)
    80007314:	0027179b          	slliw	a5,a4,0x2
    80007318:	00e787bb          	addw	a5,a5,a4
    8000731c:	02f4e7bb          	remw	a5,s1,a5
    80007320:	fa0786e3          	beqz	a5,800072cc <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x30>
            if (i % 80 == 0) {
    80007324:	05000793          	li	a5,80
    80007328:	02f4e4bb          	remw	s1,s1,a5
    8000732c:	fa049ce3          	bnez	s1,800072e4 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x48>
    80007330:	fa9ff06f          	j	800072d8 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x3c>
            }
        }


        while (td->buffer->getCnt() > 0) {
            int key = td->buffer->get();
    80007334:	0109b783          	ld	a5,16(s3)
    80007338:	0087b503          	ld	a0,8(a5)
    8000733c:	ffffe097          	auipc	ra,0xffffe
    80007340:	7f0080e7          	jalr	2032(ra) # 80005b2c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80007344:	0ff57513          	andi	a0,a0,255
    80007348:	ffffd097          	auipc	ra,0xffffd
    8000734c:	cd8080e7          	jalr	-808(ra) # 80004020 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80007350:	0109b783          	ld	a5,16(s3)
    80007354:	0087b503          	ld	a0,8(a5)
    80007358:	fffff097          	auipc	ra,0xfffff
    8000735c:	860080e7          	jalr	-1952(ra) # 80005bb8 <_ZN9BufferCPP6getCntEv>
    80007360:	fca04ae3          	bgtz	a0,80007334 <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv+0x98>
        }

        data->wait->signal();
    80007364:	01093503          	ld	a0,16(s2)
    80007368:	ffffd097          	auipc	ra,0xffffd
    8000736c:	c64080e7          	jalr	-924(ra) # 80003fcc <_ZN9Semaphore6signalEv>
    }
    80007370:	02813083          	ld	ra,40(sp)
    80007374:	02013403          	ld	s0,32(sp)
    80007378:	01813483          	ld	s1,24(sp)
    8000737c:	01013903          	ld	s2,16(sp)
    80007380:	00813983          	ld	s3,8(sp)
    80007384:	00013a03          	ld	s4,0(sp)
    80007388:	03010113          	addi	sp,sp,48
    8000738c:	00008067          	ret

0000000080007390 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv>:

    void producerConsumer_CPP_Sync_API() {
    80007390:	f8010113          	addi	sp,sp,-128
    80007394:	06113c23          	sd	ra,120(sp)
    80007398:	06813823          	sd	s0,112(sp)
    8000739c:	06913423          	sd	s1,104(sp)
    800073a0:	07213023          	sd	s2,96(sp)
    800073a4:	05313c23          	sd	s3,88(sp)
    800073a8:	05413823          	sd	s4,80(sp)
    800073ac:	05513423          	sd	s5,72(sp)
    800073b0:	05613023          	sd	s6,64(sp)
    800073b4:	03713c23          	sd	s7,56(sp)
    800073b8:	03813823          	sd	s8,48(sp)
    800073bc:	03913423          	sd	s9,40(sp)
    800073c0:	08010413          	addi	s0,sp,128
        for (int i = 0; i < threadNum; i++) {
            delete threads[i];
        }
        delete consumerThread;
        delete waitForAll;
        delete buffer;
    800073c4:	00010b93          	mv	s7,sp
        printString("Unesite broj proizvodjaca?\n");
    800073c8:	00005517          	auipc	a0,0x5
    800073cc:	28050513          	addi	a0,a0,640 # 8000c648 <CONSOLE_STATUS+0x638>
    800073d0:	ffffe097          	auipc	ra,0xffffe
    800073d4:	2bc080e7          	jalr	700(ra) # 8000568c <_Z11printStringPKc>
        getString(input, 30);
    800073d8:	01e00593          	li	a1,30
    800073dc:	f8040493          	addi	s1,s0,-128
    800073e0:	00048513          	mv	a0,s1
    800073e4:	ffffe097          	auipc	ra,0xffffe
    800073e8:	324080e7          	jalr	804(ra) # 80005708 <_Z9getStringPci>
        threadNum = stringToInt(input);
    800073ec:	00048513          	mv	a0,s1
    800073f0:	ffffe097          	auipc	ra,0xffffe
    800073f4:	3e4080e7          	jalr	996(ra) # 800057d4 <_Z11stringToIntPKc>
    800073f8:	00050913          	mv	s2,a0
        printString("Unesite velicinu bafera?\n");
    800073fc:	00005517          	auipc	a0,0x5
    80007400:	26c50513          	addi	a0,a0,620 # 8000c668 <CONSOLE_STATUS+0x658>
    80007404:	ffffe097          	auipc	ra,0xffffe
    80007408:	288080e7          	jalr	648(ra) # 8000568c <_Z11printStringPKc>
        getString(input, 30);
    8000740c:	01e00593          	li	a1,30
    80007410:	00048513          	mv	a0,s1
    80007414:	ffffe097          	auipc	ra,0xffffe
    80007418:	2f4080e7          	jalr	756(ra) # 80005708 <_Z9getStringPci>
        n = stringToInt(input);
    8000741c:	00048513          	mv	a0,s1
    80007420:	ffffe097          	auipc	ra,0xffffe
    80007424:	3b4080e7          	jalr	948(ra) # 800057d4 <_Z11stringToIntPKc>
    80007428:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    8000742c:	00005517          	auipc	a0,0x5
    80007430:	25c50513          	addi	a0,a0,604 # 8000c688 <CONSOLE_STATUS+0x678>
    80007434:	ffffe097          	auipc	ra,0xffffe
    80007438:	258080e7          	jalr	600(ra) # 8000568c <_Z11printStringPKc>
    8000743c:	00000613          	li	a2,0
    80007440:	00a00593          	li	a1,10
    80007444:	00090513          	mv	a0,s2
    80007448:	ffffe097          	auipc	ra,0xffffe
    8000744c:	3dc080e7          	jalr	988(ra) # 80005824 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80007450:	00005517          	auipc	a0,0x5
    80007454:	25050513          	addi	a0,a0,592 # 8000c6a0 <CONSOLE_STATUS+0x690>
    80007458:	ffffe097          	auipc	ra,0xffffe
    8000745c:	234080e7          	jalr	564(ra) # 8000568c <_Z11printStringPKc>
    80007460:	00000613          	li	a2,0
    80007464:	00a00593          	li	a1,10
    80007468:	00048513          	mv	a0,s1
    8000746c:	ffffe097          	auipc	ra,0xffffe
    80007470:	3b8080e7          	jalr	952(ra) # 80005824 <_Z8printIntiii>
        printString(".\n");
    80007474:	00005517          	auipc	a0,0x5
    80007478:	24450513          	addi	a0,a0,580 # 8000c6b8 <CONSOLE_STATUS+0x6a8>
    8000747c:	ffffe097          	auipc	ra,0xffffe
    80007480:	210080e7          	jalr	528(ra) # 8000568c <_Z11printStringPKc>
        if(threadNum > n) {
    80007484:	0324c663          	blt	s1,s2,800074b0 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x120>
        } else if (threadNum < 1) {
    80007488:	03205e63          	blez	s2,800074c4 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x134>
        BufferCPP *buffer = new BufferCPP(n);
    8000748c:	03800513          	li	a0,56
    80007490:	ffffc097          	auipc	ra,0xffffc
    80007494:	7b4080e7          	jalr	1972(ra) # 80003c44 <_Znwm>
    80007498:	00050a93          	mv	s5,a0
    8000749c:	04050063          	beqz	a0,800074dc <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x14c>
    800074a0:	00048593          	mv	a1,s1
    800074a4:	ffffe097          	auipc	ra,0xffffe
    800074a8:	494080e7          	jalr	1172(ra) # 80005938 <_ZN9BufferCPPC1Ei>
    800074ac:	0300006f          	j	800074dc <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x14c>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800074b0:	00005517          	auipc	a0,0x5
    800074b4:	21050513          	addi	a0,a0,528 # 8000c6c0 <CONSOLE_STATUS+0x6b0>
    800074b8:	ffffe097          	auipc	ra,0xffffe
    800074bc:	1d4080e7          	jalr	468(ra) # 8000568c <_Z11printStringPKc>
            return;
    800074c0:	0140006f          	j	800074d4 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x144>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    800074c4:	00005517          	auipc	a0,0x5
    800074c8:	23c50513          	addi	a0,a0,572 # 8000c700 <CONSOLE_STATUS+0x6f0>
    800074cc:	ffffe097          	auipc	ra,0xffffe
    800074d0:	1c0080e7          	jalr	448(ra) # 8000568c <_Z11printStringPKc>
            return;
    800074d4:	000b8113          	mv	sp,s7
    800074d8:	2540006f          	j	8000772c <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x39c>
        waitForAll = new Semaphore(0);
    800074dc:	01000513          	li	a0,16
    800074e0:	ffffc097          	auipc	ra,0xffffc
    800074e4:	764080e7          	jalr	1892(ra) # 80003c44 <_Znwm>
    800074e8:	00050493          	mv	s1,a0
    800074ec:	00050863          	beqz	a0,800074fc <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x16c>
    800074f0:	00000593          	li	a1,0
    800074f4:	ffffd097          	auipc	ra,0xffffd
    800074f8:	a6c080e7          	jalr	-1428(ra) # 80003f60 <_ZN9SemaphoreC1Ej>
    800074fc:	00008717          	auipc	a4,0x8
    80007500:	66470713          	addi	a4,a4,1636 # 8000fb60 <_ZN18Threads_C_API_test9finishedEE>
    80007504:	02973423          	sd	s1,40(a4)
        Thread* threads[threadNum];
    80007508:	00391793          	slli	a5,s2,0x3
    8000750c:	00f78793          	addi	a5,a5,15
    80007510:	ff07f793          	andi	a5,a5,-16
    80007514:	40f10133          	sub	sp,sp,a5
    80007518:	00010993          	mv	s3,sp
        struct thread_data data[threadNum + 1];
    8000751c:	0019069b          	addiw	a3,s2,1
    80007520:	00169793          	slli	a5,a3,0x1
    80007524:	00d787b3          	add	a5,a5,a3
    80007528:	00379793          	slli	a5,a5,0x3
    8000752c:	00f78793          	addi	a5,a5,15
    80007530:	ff07f793          	andi	a5,a5,-16
    80007534:	40f10133          	sub	sp,sp,a5
    80007538:	00010a13          	mv	s4,sp
        data[threadNum].id = threadNum;
    8000753c:	00191793          	slli	a5,s2,0x1
    80007540:	012787b3          	add	a5,a5,s2
    80007544:	00379793          	slli	a5,a5,0x3
    80007548:	00fa07b3          	add	a5,s4,a5
    8000754c:	0127a023          	sw	s2,0(a5)
        data[threadNum].buffer = buffer;
    80007550:	0157b423          	sd	s5,8(a5)
        data[threadNum].wait = waitForAll;
    80007554:	02873703          	ld	a4,40(a4)
    80007558:	00e7b823          	sd	a4,16(a5)
        consumerThread = new Consumer(data+threadNum);
    8000755c:	01800513          	li	a0,24
    80007560:	ffffc097          	auipc	ra,0xffffc
    80007564:	6e4080e7          	jalr	1764(ra) # 80003c44 <_Znwm>
    80007568:	00050b13          	mv	s6,a0
    8000756c:	02050663          	beqz	a0,80007598 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x208>
    80007570:	00191493          	slli	s1,s2,0x1
    80007574:	012484b3          	add	s1,s1,s2
    80007578:	00349493          	slli	s1,s1,0x3
    8000757c:	009a04b3          	add	s1,s4,s1
        Consumer(thread_data* _td):Thread(), td(_td) {}
    80007580:	ffffd097          	auipc	ra,0xffffd
    80007584:	960080e7          	jalr	-1696(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80007588:	00008797          	auipc	a5,0x8
    8000758c:	24078793          	addi	a5,a5,576 # 8000f7c8 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ConsumerE+0x10>
    80007590:	00fb3023          	sd	a5,0(s6)
    80007594:	009b3823          	sd	s1,16(s6)
        consumerThread->start();
    80007598:	000b0513          	mv	a0,s6
    8000759c:	ffffd097          	auipc	ra,0xffffd
    800075a0:	870080e7          	jalr	-1936(ra) # 80003e0c <_ZN6Thread5startEv>
        for (int i = 0; i < threadNum; i++) {
    800075a4:	00000493          	li	s1,0
    800075a8:	0380006f          	j	800075e0 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x250>
        Producer(thread_data* _td):Thread(), td(_td) {}
    800075ac:	00008797          	auipc	a5,0x8
    800075b0:	1f478793          	addi	a5,a5,500 # 8000f7a0 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ProducerE+0x10>
    800075b4:	00fc3023          	sd	a5,0(s8)
    800075b8:	019c3823          	sd	s9,16(s8)
                threads[i] = new Producer(data+i);
    800075bc:	00349793          	slli	a5,s1,0x3
    800075c0:	00f987b3          	add	a5,s3,a5
    800075c4:	0187b023          	sd	s8,0(a5)
            threads[i]->start();
    800075c8:	00349793          	slli	a5,s1,0x3
    800075cc:	00f987b3          	add	a5,s3,a5
    800075d0:	0007b503          	ld	a0,0(a5)
    800075d4:	ffffd097          	auipc	ra,0xffffd
    800075d8:	838080e7          	jalr	-1992(ra) # 80003e0c <_ZN6Thread5startEv>
        for (int i = 0; i < threadNum; i++) {
    800075dc:	0014849b          	addiw	s1,s1,1
    800075e0:	0b24d463          	bge	s1,s2,80007688 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x2f8>
            data[i].id = i;
    800075e4:	00149793          	slli	a5,s1,0x1
    800075e8:	009787b3          	add	a5,a5,s1
    800075ec:	00379793          	slli	a5,a5,0x3
    800075f0:	00fa07b3          	add	a5,s4,a5
    800075f4:	0097a023          	sw	s1,0(a5)
            data[i].buffer = buffer;
    800075f8:	0157b423          	sd	s5,8(a5)
            data[i].wait = waitForAll;
    800075fc:	00008717          	auipc	a4,0x8
    80007600:	58c73703          	ld	a4,1420(a4) # 8000fb88 <_ZN34ConsumerProducer_CPP_Sync_API_test10waitForAllE>
    80007604:	00e7b823          	sd	a4,16(a5)
            if(i>0) {
    80007608:	02905a63          	blez	s1,8000763c <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x2ac>
                threads[i] = new Producer(data+i);
    8000760c:	01800513          	li	a0,24
    80007610:	ffffc097          	auipc	ra,0xffffc
    80007614:	634080e7          	jalr	1588(ra) # 80003c44 <_Znwm>
    80007618:	00050c13          	mv	s8,a0
    8000761c:	fa0500e3          	beqz	a0,800075bc <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x22c>
    80007620:	00149c93          	slli	s9,s1,0x1
    80007624:	009c8cb3          	add	s9,s9,s1
    80007628:	003c9c93          	slli	s9,s9,0x3
    8000762c:	019a0cb3          	add	s9,s4,s9
        Producer(thread_data* _td):Thread(), td(_td) {}
    80007630:	ffffd097          	auipc	ra,0xffffd
    80007634:	8b0080e7          	jalr	-1872(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80007638:	f75ff06f          	j	800075ac <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x21c>
                threads[i] = new ProducerKeyboard(data+i);
    8000763c:	01800513          	li	a0,24
    80007640:	ffffc097          	auipc	ra,0xffffc
    80007644:	604080e7          	jalr	1540(ra) # 80003c44 <_Znwm>
    80007648:	00050c13          	mv	s8,a0
    8000764c:	02050663          	beqz	a0,80007678 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x2e8>
    80007650:	00149c93          	slli	s9,s1,0x1
    80007654:	009c8cb3          	add	s9,s9,s1
    80007658:	003c9c93          	slli	s9,s9,0x3
    8000765c:	019a0cb3          	add	s9,s4,s9
        ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80007660:	ffffd097          	auipc	ra,0xffffd
    80007664:	880080e7          	jalr	-1920(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80007668:	00008797          	auipc	a5,0x8
    8000766c:	11078793          	addi	a5,a5,272 # 8000f778 <_ZTVN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboardE+0x10>
    80007670:	00fc3023          	sd	a5,0(s8)
    80007674:	019c3823          	sd	s9,16(s8)
                threads[i] = new ProducerKeyboard(data+i);
    80007678:	00349793          	slli	a5,s1,0x3
    8000767c:	00f987b3          	add	a5,s3,a5
    80007680:	0187b023          	sd	s8,0(a5)
    80007684:	f45ff06f          	j	800075c8 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x238>
        Thread::dispatch();
    80007688:	ffffc097          	auipc	ra,0xffffc
    8000768c:	7b4080e7          	jalr	1972(ra) # 80003e3c <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80007690:	00000493          	li	s1,0
    80007694:	00994e63          	blt	s2,s1,800076b0 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x320>
            waitForAll->wait();
    80007698:	00008517          	auipc	a0,0x8
    8000769c:	4f053503          	ld	a0,1264(a0) # 8000fb88 <_ZN34ConsumerProducer_CPP_Sync_API_test10waitForAllE>
    800076a0:	ffffd097          	auipc	ra,0xffffd
    800076a4:	900080e7          	jalr	-1792(ra) # 80003fa0 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    800076a8:	0014849b          	addiw	s1,s1,1
    800076ac:	fe9ff06f          	j	80007694 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x304>
        for (int i = 0; i < threadNum; i++) {
    800076b0:	00000493          	li	s1,0
    800076b4:	0080006f          	j	800076bc <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x32c>
    800076b8:	0014849b          	addiw	s1,s1,1
    800076bc:	0324d263          	bge	s1,s2,800076e0 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x350>
            delete threads[i];
    800076c0:	00349793          	slli	a5,s1,0x3
    800076c4:	00f987b3          	add	a5,s3,a5
    800076c8:	0007b503          	ld	a0,0(a5)
    800076cc:	fe0506e3          	beqz	a0,800076b8 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x328>
    800076d0:	00053783          	ld	a5,0(a0)
    800076d4:	0087b783          	ld	a5,8(a5)
    800076d8:	000780e7          	jalr	a5
    800076dc:	fddff06f          	j	800076b8 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x328>
        delete consumerThread;
    800076e0:	000b0a63          	beqz	s6,800076f4 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x364>
    800076e4:	000b3783          	ld	a5,0(s6)
    800076e8:	0087b783          	ld	a5,8(a5)
    800076ec:	000b0513          	mv	a0,s6
    800076f0:	000780e7          	jalr	a5
        delete waitForAll;
    800076f4:	00008517          	auipc	a0,0x8
    800076f8:	49453503          	ld	a0,1172(a0) # 8000fb88 <_ZN34ConsumerProducer_CPP_Sync_API_test10waitForAllE>
    800076fc:	00050863          	beqz	a0,8000770c <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x37c>
    80007700:	00053783          	ld	a5,0(a0)
    80007704:	0087b783          	ld	a5,8(a5)
    80007708:	000780e7          	jalr	a5
        delete buffer;
    8000770c:	000a8e63          	beqz	s5,80007728 <_ZN34ConsumerProducer_CPP_Sync_API_test29producerConsumer_CPP_Sync_APIEv+0x398>
    80007710:	000a8513          	mv	a0,s5
    80007714:	ffffe097          	auipc	ra,0xffffe
    80007718:	52c080e7          	jalr	1324(ra) # 80005c40 <_ZN9BufferCPPD1Ev>
    8000771c:	000a8513          	mv	a0,s5
    80007720:	ffffc097          	auipc	ra,0xffffc
    80007724:	574080e7          	jalr	1396(ra) # 80003c94 <_ZdlPv>
    80007728:	000b8113          	mv	sp,s7

    }
    8000772c:	f8040113          	addi	sp,s0,-128
    80007730:	07813083          	ld	ra,120(sp)
    80007734:	07013403          	ld	s0,112(sp)
    80007738:	06813483          	ld	s1,104(sp)
    8000773c:	06013903          	ld	s2,96(sp)
    80007740:	05813983          	ld	s3,88(sp)
    80007744:	05013a03          	ld	s4,80(sp)
    80007748:	04813a83          	ld	s5,72(sp)
    8000774c:	04013b03          	ld	s6,64(sp)
    80007750:	03813b83          	ld	s7,56(sp)
    80007754:	03013c03          	ld	s8,48(sp)
    80007758:	02813c83          	ld	s9,40(sp)
    8000775c:	08010113          	addi	sp,sp,128
    80007760:	00008067          	ret
    80007764:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80007768:	000a8513          	mv	a0,s5
    8000776c:	ffffc097          	auipc	ra,0xffffc
    80007770:	528080e7          	jalr	1320(ra) # 80003c94 <_ZdlPv>
    80007774:	00048513          	mv	a0,s1
    80007778:	000cd097          	auipc	ra,0xcd
    8000777c:	9f0080e7          	jalr	-1552(ra) # 800d4168 <_Unwind_Resume>
    80007780:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80007784:	00048513          	mv	a0,s1
    80007788:	ffffc097          	auipc	ra,0xffffc
    8000778c:	50c080e7          	jalr	1292(ra) # 80003c94 <_ZdlPv>
    80007790:	00090513          	mv	a0,s2
    80007794:	000cd097          	auipc	ra,0xcd
    80007798:	9d4080e7          	jalr	-1580(ra) # 800d4168 <_Unwind_Resume>
    8000779c:	00050493          	mv	s1,a0
        consumerThread = new Consumer(data+threadNum);
    800077a0:	000b0513          	mv	a0,s6
    800077a4:	ffffc097          	auipc	ra,0xffffc
    800077a8:	4f0080e7          	jalr	1264(ra) # 80003c94 <_ZdlPv>
    800077ac:	00048513          	mv	a0,s1
    800077b0:	000cd097          	auipc	ra,0xcd
    800077b4:	9b8080e7          	jalr	-1608(ra) # 800d4168 <_Unwind_Resume>
    800077b8:	00050493          	mv	s1,a0
                threads[i] = new Producer(data+i);
    800077bc:	000c0513          	mv	a0,s8
    800077c0:	ffffc097          	auipc	ra,0xffffc
    800077c4:	4d4080e7          	jalr	1236(ra) # 80003c94 <_ZdlPv>
    800077c8:	00048513          	mv	a0,s1
    800077cc:	000cd097          	auipc	ra,0xcd
    800077d0:	99c080e7          	jalr	-1636(ra) # 800d4168 <_Unwind_Resume>
    800077d4:	00050493          	mv	s1,a0
                threads[i] = new ProducerKeyboard(data+i);
    800077d8:	000c0513          	mv	a0,s8
    800077dc:	ffffc097          	auipc	ra,0xffffc
    800077e0:	4b8080e7          	jalr	1208(ra) # 80003c94 <_ZdlPv>
    800077e4:	00048513          	mv	a0,s1
    800077e8:	000cd097          	auipc	ra,0xcd
    800077ec:	980080e7          	jalr	-1664(ra) # 800d4168 <_Unwind_Resume>

00000000800077f0 <_ZN22ThreadSleep_C_API_test12testSleepingEv>:

    void testSleeping() {
    800077f0:	fc010113          	addi	sp,sp,-64
    800077f4:	02113c23          	sd	ra,56(sp)
    800077f8:	02813823          	sd	s0,48(sp)
    800077fc:	02913423          	sd	s1,40(sp)
    80007800:	04010413          	addi	s0,sp,64
        const int sleepy_thread_count = 2;
        time_t sleep_times[sleepy_thread_count] = {10, 20};
    80007804:	00a00793          	li	a5,10
    80007808:	fcf43823          	sd	a5,-48(s0)
    8000780c:	01400793          	li	a5,20
    80007810:	fcf43c23          	sd	a5,-40(s0)
        thread_t sleepyThread[sleepy_thread_count];

        for (int i = 0; i < sleepy_thread_count; i++) {
    80007814:	00000493          	li	s1,0
    80007818:	02c0006f          	j	80007844 <_ZN22ThreadSleep_C_API_test12testSleepingEv+0x54>
            thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000781c:	00349793          	slli	a5,s1,0x3
    80007820:	fd040613          	addi	a2,s0,-48
    80007824:	00f60633          	add	a2,a2,a5
    80007828:	fffff597          	auipc	a1,0xfffff
    8000782c:	92058593          	addi	a1,a1,-1760 # 80006148 <_ZN22ThreadSleep_C_API_test9sleepyRunEPv>
    80007830:	fc040513          	addi	a0,s0,-64
    80007834:	00f50533          	add	a0,a0,a5
    80007838:	ffffa097          	auipc	ra,0xffffa
    8000783c:	ac4080e7          	jalr	-1340(ra) # 800012fc <thread_create>
        for (int i = 0; i < sleepy_thread_count; i++) {
    80007840:	0014849b          	addiw	s1,s1,1
    80007844:	00100793          	li	a5,1
    80007848:	fc97dae3          	bge	a5,s1,8000781c <_ZN22ThreadSleep_C_API_test12testSleepingEv+0x2c>
        }

        while (!(finished[0] && finished[1])) {}
    8000784c:	00008797          	auipc	a5,0x8
    80007850:	3247c783          	lbu	a5,804(a5) # 8000fb70 <_ZN22ThreadSleep_C_API_test8finishedE>
    80007854:	fe078ce3          	beqz	a5,8000784c <_ZN22ThreadSleep_C_API_test12testSleepingEv+0x5c>
    80007858:	00008797          	auipc	a5,0x8
    8000785c:	3197c783          	lbu	a5,793(a5) # 8000fb71 <_ZN22ThreadSleep_C_API_test8finishedE+0x1>
    80007860:	fe0786e3          	beqz	a5,8000784c <_ZN22ThreadSleep_C_API_test12testSleepingEv+0x5c>
    }
    80007864:	03813083          	ld	ra,56(sp)
    80007868:	03013403          	ld	s0,48(sp)
    8000786c:	02813483          	ld	s1,40(sp)
    80007870:	04010113          	addi	sp,sp,64
    80007874:	00008067          	ret

0000000080007878 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80007878:	f8010113          	addi	sp,sp,-128
    8000787c:	06113c23          	sd	ra,120(sp)
    80007880:	06813823          	sd	s0,112(sp)
    80007884:	06913423          	sd	s1,104(sp)
    80007888:	07213023          	sd	s2,96(sp)
    8000788c:	05313c23          	sd	s3,88(sp)
    80007890:	05413823          	sd	s4,80(sp)
    80007894:	05513423          	sd	s5,72(sp)
    80007898:	05613023          	sd	s6,64(sp)
    8000789c:	03713c23          	sd	s7,56(sp)
    800078a0:	03813823          	sd	s8,48(sp)
    800078a4:	03913423          	sd	s9,40(sp)
    800078a8:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    800078ac:	00010b93          	mv	s7,sp
        printString("Unesite broj proizvodjaca?\n");
    800078b0:	00005517          	auipc	a0,0x5
    800078b4:	d9850513          	addi	a0,a0,-616 # 8000c648 <CONSOLE_STATUS+0x638>
    800078b8:	ffffe097          	auipc	ra,0xffffe
    800078bc:	dd4080e7          	jalr	-556(ra) # 8000568c <_Z11printStringPKc>
        getString(input, 30);
    800078c0:	01e00593          	li	a1,30
    800078c4:	f8040493          	addi	s1,s0,-128
    800078c8:	00048513          	mv	a0,s1
    800078cc:	ffffe097          	auipc	ra,0xffffe
    800078d0:	e3c080e7          	jalr	-452(ra) # 80005708 <_Z9getStringPci>
        threadNum = stringToInt(input);
    800078d4:	00048513          	mv	a0,s1
    800078d8:	ffffe097          	auipc	ra,0xffffe
    800078dc:	efc080e7          	jalr	-260(ra) # 800057d4 <_Z11stringToIntPKc>
    800078e0:	00050913          	mv	s2,a0
        printString("Unesite velicinu bafera?\n");
    800078e4:	00005517          	auipc	a0,0x5
    800078e8:	d8450513          	addi	a0,a0,-636 # 8000c668 <CONSOLE_STATUS+0x658>
    800078ec:	ffffe097          	auipc	ra,0xffffe
    800078f0:	da0080e7          	jalr	-608(ra) # 8000568c <_Z11printStringPKc>
        getString(input, 30);
    800078f4:	01e00593          	li	a1,30
    800078f8:	00048513          	mv	a0,s1
    800078fc:	ffffe097          	auipc	ra,0xffffe
    80007900:	e0c080e7          	jalr	-500(ra) # 80005708 <_Z9getStringPci>
        n = stringToInt(input);
    80007904:	00048513          	mv	a0,s1
    80007908:	ffffe097          	auipc	ra,0xffffe
    8000790c:	ecc080e7          	jalr	-308(ra) # 800057d4 <_Z11stringToIntPKc>
    80007910:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80007914:	00005517          	auipc	a0,0x5
    80007918:	d7450513          	addi	a0,a0,-652 # 8000c688 <CONSOLE_STATUS+0x678>
    8000791c:	ffffe097          	auipc	ra,0xffffe
    80007920:	d70080e7          	jalr	-656(ra) # 8000568c <_Z11printStringPKc>
    80007924:	00000613          	li	a2,0
    80007928:	00a00593          	li	a1,10
    8000792c:	00090513          	mv	a0,s2
    80007930:	ffffe097          	auipc	ra,0xffffe
    80007934:	ef4080e7          	jalr	-268(ra) # 80005824 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80007938:	00005517          	auipc	a0,0x5
    8000793c:	d6850513          	addi	a0,a0,-664 # 8000c6a0 <CONSOLE_STATUS+0x690>
    80007940:	ffffe097          	auipc	ra,0xffffe
    80007944:	d4c080e7          	jalr	-692(ra) # 8000568c <_Z11printStringPKc>
    80007948:	00000613          	li	a2,0
    8000794c:	00a00593          	li	a1,10
    80007950:	00048513          	mv	a0,s1
    80007954:	ffffe097          	auipc	ra,0xffffe
    80007958:	ed0080e7          	jalr	-304(ra) # 80005824 <_Z8printIntiii>
        printString(".\n");
    8000795c:	00005517          	auipc	a0,0x5
    80007960:	d5c50513          	addi	a0,a0,-676 # 8000c6b8 <CONSOLE_STATUS+0x6a8>
    80007964:	ffffe097          	auipc	ra,0xffffe
    80007968:	d28080e7          	jalr	-728(ra) # 8000568c <_Z11printStringPKc>
        if(threadNum > n) {
    8000796c:	0324c663          	blt	s1,s2,80007998 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x120>
        } else if (threadNum < 1) {
    80007970:	03205e63          	blez	s2,800079ac <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x134>
        BufferCPP *buffer = new BufferCPP(n);
    80007974:	03800513          	li	a0,56
    80007978:	ffffc097          	auipc	ra,0xffffc
    8000797c:	2cc080e7          	jalr	716(ra) # 80003c44 <_Znwm>
    80007980:	00050a93          	mv	s5,a0
    80007984:	04050063          	beqz	a0,800079c4 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x14c>
    80007988:	00048593          	mv	a1,s1
    8000798c:	ffffe097          	auipc	ra,0xffffe
    80007990:	fac080e7          	jalr	-84(ra) # 80005938 <_ZN9BufferCPPC1Ei>
    80007994:	0300006f          	j	800079c4 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x14c>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80007998:	00005517          	auipc	a0,0x5
    8000799c:	d2850513          	addi	a0,a0,-728 # 8000c6c0 <CONSOLE_STATUS+0x6b0>
    800079a0:	ffffe097          	auipc	ra,0xffffe
    800079a4:	cec080e7          	jalr	-788(ra) # 8000568c <_Z11printStringPKc>
            return;
    800079a8:	0140006f          	j	800079bc <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x144>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    800079ac:	00005517          	auipc	a0,0x5
    800079b0:	d5450513          	addi	a0,a0,-684 # 8000c700 <CONSOLE_STATUS+0x6f0>
    800079b4:	ffffe097          	auipc	ra,0xffffe
    800079b8:	cd8080e7          	jalr	-808(ra) # 8000568c <_Z11printStringPKc>
            return;
    800079bc:	000b8113          	mv	sp,s7
    800079c0:	24c0006f          	j	80007c0c <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x394>
        waitForAll = new Semaphore(0);
    800079c4:	01000513          	li	a0,16
    800079c8:	ffffc097          	auipc	ra,0xffffc
    800079cc:	27c080e7          	jalr	636(ra) # 80003c44 <_Znwm>
    800079d0:	00050493          	mv	s1,a0
    800079d4:	00050863          	beqz	a0,800079e4 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x16c>
    800079d8:	00000593          	li	a1,0
    800079dc:	ffffc097          	auipc	ra,0xffffc
    800079e0:	584080e7          	jalr	1412(ra) # 80003f60 <_ZN9SemaphoreC1Ej>
    800079e4:	00008717          	auipc	a4,0x8
    800079e8:	17c70713          	addi	a4,a4,380 # 8000fb60 <_ZN18Threads_C_API_test9finishedEE>
    800079ec:	02973823          	sd	s1,48(a4)
        Thread *producers[threadNum];
    800079f0:	00391793          	slli	a5,s2,0x3
    800079f4:	00f78793          	addi	a5,a5,15
    800079f8:	ff07f793          	andi	a5,a5,-16
    800079fc:	40f10133          	sub	sp,sp,a5
    80007a00:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80007a04:	0019069b          	addiw	a3,s2,1
    80007a08:	00169793          	slli	a5,a3,0x1
    80007a0c:	00d787b3          	add	a5,a5,a3
    80007a10:	00379793          	slli	a5,a5,0x3
    80007a14:	00f78793          	addi	a5,a5,15
    80007a18:	ff07f793          	andi	a5,a5,-16
    80007a1c:	40f10133          	sub	sp,sp,a5
    80007a20:	00010993          	mv	s3,sp
        threadData[threadNum].id = threadNum;
    80007a24:	00191793          	slli	a5,s2,0x1
    80007a28:	012787b3          	add	a5,a5,s2
    80007a2c:	00379793          	slli	a5,a5,0x3
    80007a30:	00f987b3          	add	a5,s3,a5
    80007a34:	0127a023          	sw	s2,0(a5)
        threadData[threadNum].buffer = buffer;
    80007a38:	0157b423          	sd	s5,8(a5)
        threadData[threadNum].sem = waitForAll;
    80007a3c:	03073703          	ld	a4,48(a4)
    80007a40:	00e7b823          	sd	a4,16(a5)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80007a44:	01800513          	li	a0,24
    80007a48:	ffffc097          	auipc	ra,0xffffc
    80007a4c:	1fc080e7          	jalr	508(ra) # 80003c44 <_Znwm>
    80007a50:	00050b13          	mv	s6,a0
    80007a54:	02050663          	beqz	a0,80007a80 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x208>
    80007a58:	00191493          	slli	s1,s2,0x1
    80007a5c:	012484b3          	add	s1,s1,s2
    80007a60:	00349493          	slli	s1,s1,0x3
    80007a64:	009984b3          	add	s1,s3,s1
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80007a68:	ffffc097          	auipc	ra,0xffffc
    80007a6c:	478080e7          	jalr	1144(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80007a70:	00008797          	auipc	a5,0x8
    80007a74:	dd078793          	addi	a5,a5,-560 # 8000f840 <_ZTVN28ConsumerProducerCPP_API_test8ConsumerE+0x10>
    80007a78:	00fb3023          	sd	a5,0(s6)
    80007a7c:	009b3823          	sd	s1,16(s6)
        consumer->start();
    80007a80:	000b0513          	mv	a0,s6
    80007a84:	ffffc097          	auipc	ra,0xffffc
    80007a88:	388080e7          	jalr	904(ra) # 80003e0c <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80007a8c:	0009a023          	sw	zero,0(s3)
        threadData[0].buffer = buffer;
    80007a90:	0159b423          	sd	s5,8(s3)
        threadData[0].sem = waitForAll;
    80007a94:	00008797          	auipc	a5,0x8
    80007a98:	0fc7b783          	ld	a5,252(a5) # 8000fb90 <_ZN28ConsumerProducerCPP_API_test10waitForAllE>
    80007a9c:	00f9b823          	sd	a5,16(s3)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80007aa0:	01800513          	li	a0,24
    80007aa4:	ffffc097          	auipc	ra,0xffffc
    80007aa8:	1a0080e7          	jalr	416(ra) # 80003c44 <_Znwm>
    80007aac:	00050493          	mv	s1,a0
    80007ab0:	00050e63          	beqz	a0,80007acc <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x254>
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80007ab4:	ffffc097          	auipc	ra,0xffffc
    80007ab8:	42c080e7          	jalr	1068(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80007abc:	00008797          	auipc	a5,0x8
    80007ac0:	d3478793          	addi	a5,a5,-716 # 8000f7f0 <_ZTVN28ConsumerProducerCPP_API_test16ProducerKeyboradE+0x10>
    80007ac4:	00f4b023          	sd	a5,0(s1)
    80007ac8:	0134b823          	sd	s3,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80007acc:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80007ad0:	00048513          	mv	a0,s1
    80007ad4:	ffffc097          	auipc	ra,0xffffc
    80007ad8:	338080e7          	jalr	824(ra) # 80003e0c <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80007adc:	00100493          	li	s1,1
    80007ae0:	0300006f          	j	80007b10 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x298>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80007ae4:	00008797          	auipc	a5,0x8
    80007ae8:	d3478793          	addi	a5,a5,-716 # 8000f818 <_ZTVN28ConsumerProducerCPP_API_test8ProducerE+0x10>
    80007aec:	00fc3023          	sd	a5,0(s8)
    80007af0:	019c3823          	sd	s9,16(s8)
            producers[i] = new Producer(&threadData[i]);
    80007af4:	00349793          	slli	a5,s1,0x3
    80007af8:	00fa07b3          	add	a5,s4,a5
    80007afc:	0187b023          	sd	s8,0(a5)
            producers[i]->start();
    80007b00:	000c0513          	mv	a0,s8
    80007b04:	ffffc097          	auipc	ra,0xffffc
    80007b08:	308080e7          	jalr	776(ra) # 80003e0c <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80007b0c:	0014849b          	addiw	s1,s1,1
    80007b10:	0524dc63          	bge	s1,s2,80007b68 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x2f0>
            threadData[i].id = i;
    80007b14:	00149793          	slli	a5,s1,0x1
    80007b18:	009787b3          	add	a5,a5,s1
    80007b1c:	00379793          	slli	a5,a5,0x3
    80007b20:	00f987b3          	add	a5,s3,a5
    80007b24:	0097a023          	sw	s1,0(a5)
            threadData[i].buffer = buffer;
    80007b28:	0157b423          	sd	s5,8(a5)
            threadData[i].sem = waitForAll;
    80007b2c:	00008717          	auipc	a4,0x8
    80007b30:	06473703          	ld	a4,100(a4) # 8000fb90 <_ZN28ConsumerProducerCPP_API_test10waitForAllE>
    80007b34:	00e7b823          	sd	a4,16(a5)
            producers[i] = new Producer(&threadData[i]);
    80007b38:	01800513          	li	a0,24
    80007b3c:	ffffc097          	auipc	ra,0xffffc
    80007b40:	108080e7          	jalr	264(ra) # 80003c44 <_Znwm>
    80007b44:	00050c13          	mv	s8,a0
    80007b48:	fa0506e3          	beqz	a0,80007af4 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x27c>
    80007b4c:	00149c93          	slli	s9,s1,0x1
    80007b50:	009c8cb3          	add	s9,s9,s1
    80007b54:	003c9c93          	slli	s9,s9,0x3
    80007b58:	01998cb3          	add	s9,s3,s9
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80007b5c:	ffffc097          	auipc	ra,0xffffc
    80007b60:	384080e7          	jalr	900(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80007b64:	f81ff06f          	j	80007ae4 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x26c>
        Thread::dispatch();
    80007b68:	ffffc097          	auipc	ra,0xffffc
    80007b6c:	2d4080e7          	jalr	724(ra) # 80003e3c <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80007b70:	00000493          	li	s1,0
    80007b74:	00994e63          	blt	s2,s1,80007b90 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x318>
            waitForAll->wait();
    80007b78:	00008517          	auipc	a0,0x8
    80007b7c:	01853503          	ld	a0,24(a0) # 8000fb90 <_ZN28ConsumerProducerCPP_API_test10waitForAllE>
    80007b80:	ffffc097          	auipc	ra,0xffffc
    80007b84:	420080e7          	jalr	1056(ra) # 80003fa0 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80007b88:	0014849b          	addiw	s1,s1,1
    80007b8c:	fe9ff06f          	j	80007b74 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x2fc>
        delete waitForAll;
    80007b90:	00008517          	auipc	a0,0x8
    80007b94:	00053503          	ld	a0,0(a0) # 8000fb90 <_ZN28ConsumerProducerCPP_API_test10waitForAllE>
    80007b98:	00050863          	beqz	a0,80007ba8 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x330>
    80007b9c:	00053783          	ld	a5,0(a0)
    80007ba0:	0087b783          	ld	a5,8(a5)
    80007ba4:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80007ba8:	00000493          	li	s1,0
    80007bac:	0080006f          	j	80007bb4 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x33c>
        for (int i = 0; i < threadNum; i++) {
    80007bb0:	0014849b          	addiw	s1,s1,1
    80007bb4:	0324d263          	bge	s1,s2,80007bd8 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x360>
            delete producers[i];
    80007bb8:	00349793          	slli	a5,s1,0x3
    80007bbc:	00fa07b3          	add	a5,s4,a5
    80007bc0:	0007b503          	ld	a0,0(a5)
    80007bc4:	fe0506e3          	beqz	a0,80007bb0 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x338>
    80007bc8:	00053783          	ld	a5,0(a0)
    80007bcc:	0087b783          	ld	a5,8(a5)
    80007bd0:	000780e7          	jalr	a5
    80007bd4:	fddff06f          	j	80007bb0 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x338>
        delete consumer;
    80007bd8:	000b0a63          	beqz	s6,80007bec <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x374>
    80007bdc:	000b3783          	ld	a5,0(s6)
    80007be0:	0087b783          	ld	a5,8(a5)
    80007be4:	000b0513          	mv	a0,s6
    80007be8:	000780e7          	jalr	a5
        delete buffer;
    80007bec:	000a8e63          	beqz	s5,80007c08 <_ZN28ConsumerProducerCPP_API_test20testConsumerProducerEv+0x390>
    80007bf0:	000a8513          	mv	a0,s5
    80007bf4:	ffffe097          	auipc	ra,0xffffe
    80007bf8:	04c080e7          	jalr	76(ra) # 80005c40 <_ZN9BufferCPPD1Ev>
    80007bfc:	000a8513          	mv	a0,s5
    80007c00:	ffffc097          	auipc	ra,0xffffc
    80007c04:	094080e7          	jalr	148(ra) # 80003c94 <_ZdlPv>
    80007c08:	000b8113          	mv	sp,s7
    }
    80007c0c:	f8040113          	addi	sp,s0,-128
    80007c10:	07813083          	ld	ra,120(sp)
    80007c14:	07013403          	ld	s0,112(sp)
    80007c18:	06813483          	ld	s1,104(sp)
    80007c1c:	06013903          	ld	s2,96(sp)
    80007c20:	05813983          	ld	s3,88(sp)
    80007c24:	05013a03          	ld	s4,80(sp)
    80007c28:	04813a83          	ld	s5,72(sp)
    80007c2c:	04013b03          	ld	s6,64(sp)
    80007c30:	03813b83          	ld	s7,56(sp)
    80007c34:	03013c03          	ld	s8,48(sp)
    80007c38:	02813c83          	ld	s9,40(sp)
    80007c3c:	08010113          	addi	sp,sp,128
    80007c40:	00008067          	ret
    80007c44:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80007c48:	000a8513          	mv	a0,s5
    80007c4c:	ffffc097          	auipc	ra,0xffffc
    80007c50:	048080e7          	jalr	72(ra) # 80003c94 <_ZdlPv>
    80007c54:	00048513          	mv	a0,s1
    80007c58:	000cc097          	auipc	ra,0xcc
    80007c5c:	510080e7          	jalr	1296(ra) # 800d4168 <_Unwind_Resume>
    80007c60:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80007c64:	00048513          	mv	a0,s1
    80007c68:	ffffc097          	auipc	ra,0xffffc
    80007c6c:	02c080e7          	jalr	44(ra) # 80003c94 <_ZdlPv>
    80007c70:	00090513          	mv	a0,s2
    80007c74:	000cc097          	auipc	ra,0xcc
    80007c78:	4f4080e7          	jalr	1268(ra) # 800d4168 <_Unwind_Resume>
    80007c7c:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80007c80:	000b0513          	mv	a0,s6
    80007c84:	ffffc097          	auipc	ra,0xffffc
    80007c88:	010080e7          	jalr	16(ra) # 80003c94 <_ZdlPv>
    80007c8c:	00048513          	mv	a0,s1
    80007c90:	000cc097          	auipc	ra,0xcc
    80007c94:	4d8080e7          	jalr	1240(ra) # 800d4168 <_Unwind_Resume>
    80007c98:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80007c9c:	00048513          	mv	a0,s1
    80007ca0:	ffffc097          	auipc	ra,0xffffc
    80007ca4:	ff4080e7          	jalr	-12(ra) # 80003c94 <_ZdlPv>
    80007ca8:	00090513          	mv	a0,s2
    80007cac:	000cc097          	auipc	ra,0xcc
    80007cb0:	4bc080e7          	jalr	1212(ra) # 800d4168 <_Unwind_Resume>
    80007cb4:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80007cb8:	000c0513          	mv	a0,s8
    80007cbc:	ffffc097          	auipc	ra,0xffffc
    80007cc0:	fd8080e7          	jalr	-40(ra) # 80003c94 <_ZdlPv>
    80007cc4:	00048513          	mv	a0,s1
    80007cc8:	000cc097          	auipc	ra,0xcc
    80007ccc:	4a0080e7          	jalr	1184(ra) # 800d4168 <_Unwind_Resume>

0000000080007cd0 <_Z11test_adresev>:
class Class1 {
public:
    char c;
};

void test_adrese(){
    80007cd0:	fd010113          	addi	sp,sp,-48
    80007cd4:	02113423          	sd	ra,40(sp)
    80007cd8:	02813023          	sd	s0,32(sp)
    80007cdc:	00913c23          	sd	s1,24(sp)
    80007ce0:	01213823          	sd	s2,16(sp)
    80007ce4:	01313423          	sd	s3,8(sp)
    80007ce8:	03010413          	addi	s0,sp,48
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    80007cec:	00000693          	li	a3,0
    80007cf0:	00000613          	li	a2,0
    80007cf4:	00100593          	li	a1,1
    80007cf8:	00005517          	auipc	a0,0x5
    80007cfc:	a3850513          	addi	a0,a0,-1480 # 8000c730 <CONSOLE_STATUS+0x720>
    80007d00:	ffffd097          	auipc	ra,0xffffd
    80007d04:	3a8080e7          	jalr	936(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80007d08:	00050993          	mv	s3,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80007d0c:	00005517          	auipc	a0,0x5
    80007d10:	a2c50513          	addi	a0,a0,-1492 # 8000c738 <CONSOLE_STATUS+0x728>
    80007d14:	ffffe097          	auipc	ra,0xffffe
    80007d18:	978080e7          	jalr	-1672(ra) # 8000568c <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80007d1c:	00098513          	mv	a0,s3
    80007d20:	ffffd097          	auipc	ra,0xffffd
    80007d24:	544080e7          	jalr	1348(ra) # 80005264 <_Z15kmem_cache_infoP12kmem_cache_s>
    const int arrSize = 1000;
    Class1* arr[arrSize];
    for (int i = 0; i < arrSize; i++) {
    80007d28:	00000493          	li	s1,0
    80007d2c:	0180006f          	j	80007d44 <_Z11test_adresev+0x74>
        printString(") ");
        printInt((size_t)arr[i]);
        if (i % 100 == 0)
            printString("\n");
        else
            printString(" ");
    80007d30:	00005517          	auipc	a0,0x5
    80007d34:	a8050513          	addi	a0,a0,-1408 # 8000c7b0 <CONSOLE_STATUS+0x7a0>
    80007d38:	ffffe097          	auipc	ra,0xffffe
    80007d3c:	954080e7          	jalr	-1708(ra) # 8000568c <_Z11printStringPKc>
    for (int i = 0; i < arrSize; i++) {
    80007d40:	0014849b          	addiw	s1,s1,1
    80007d44:	3e700793          	li	a5,999
    80007d48:	0697ce63          	blt	a5,s1,80007dc4 <_Z11test_adresev+0xf4>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    80007d4c:	00098513          	mv	a0,s3
    80007d50:	ffffd097          	auipc	ra,0xffffd
    80007d54:	400080e7          	jalr	1024(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    80007d58:	00050913          	mv	s2,a0
        printString("(");
    80007d5c:	00005517          	auipc	a0,0x5
    80007d60:	a2c50513          	addi	a0,a0,-1492 # 8000c788 <CONSOLE_STATUS+0x778>
    80007d64:	ffffe097          	auipc	ra,0xffffe
    80007d68:	928080e7          	jalr	-1752(ra) # 8000568c <_Z11printStringPKc>
        printInt(i);
    80007d6c:	00000613          	li	a2,0
    80007d70:	00a00593          	li	a1,10
    80007d74:	00048513          	mv	a0,s1
    80007d78:	ffffe097          	auipc	ra,0xffffe
    80007d7c:	aac080e7          	jalr	-1364(ra) # 80005824 <_Z8printIntiii>
        printString(") ");
    80007d80:	00005517          	auipc	a0,0x5
    80007d84:	a1050513          	addi	a0,a0,-1520 # 8000c790 <CONSOLE_STATUS+0x780>
    80007d88:	ffffe097          	auipc	ra,0xffffe
    80007d8c:	904080e7          	jalr	-1788(ra) # 8000568c <_Z11printStringPKc>
        printInt((size_t)arr[i]);
    80007d90:	00000613          	li	a2,0
    80007d94:	00a00593          	li	a1,10
    80007d98:	0009051b          	sext.w	a0,s2
    80007d9c:	ffffe097          	auipc	ra,0xffffe
    80007da0:	a88080e7          	jalr	-1400(ra) # 80005824 <_Z8printIntiii>
        if (i % 100 == 0)
    80007da4:	06400793          	li	a5,100
    80007da8:	02f4e7bb          	remw	a5,s1,a5
    80007dac:	f80792e3          	bnez	a5,80007d30 <_Z11test_adresev+0x60>
            printString("\n");
    80007db0:	00004517          	auipc	a0,0x4
    80007db4:	4c850513          	addi	a0,a0,1224 # 8000c278 <CONSOLE_STATUS+0x268>
    80007db8:	ffffe097          	auipc	ra,0xffffe
    80007dbc:	8d4080e7          	jalr	-1836(ra) # 8000568c <_Z11printStringPKc>
    80007dc0:	f81ff06f          	j	80007d40 <_Z11test_adresev+0x70>
    }
    printString("\n");
    80007dc4:	00004517          	auipc	a0,0x4
    80007dc8:	4b450513          	addi	a0,a0,1204 # 8000c278 <CONSOLE_STATUS+0x268>
    80007dcc:	ffffe097          	auipc	ra,0xffffe
    80007dd0:	8c0080e7          	jalr	-1856(ra) # 8000568c <_Z11printStringPKc>
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80007dd4:	00005517          	auipc	a0,0x5
    80007dd8:	96450513          	addi	a0,a0,-1692 # 8000c738 <CONSOLE_STATUS+0x728>
    80007ddc:	ffffe097          	auipc	ra,0xffffe
    80007de0:	8b0080e7          	jalr	-1872(ra) # 8000568c <_Z11printStringPKc>
}
    80007de4:	02813083          	ld	ra,40(sp)
    80007de8:	02013403          	ld	s0,32(sp)
    80007dec:	01813483          	ld	s1,24(sp)
    80007df0:	01013903          	ld	s2,16(sp)
    80007df4:	00813983          	ld	s3,8(sp)
    80007df8:	03010113          	addi	sp,sp,48
    80007dfc:	00008067          	ret

0000000080007e00 <_Z22test_pristup_parametruv>:

void test_pristup_parametru(){
    80007e00:	fd010113          	addi	sp,sp,-48
    80007e04:	02113423          	sd	ra,40(sp)
    80007e08:	02813023          	sd	s0,32(sp)
    80007e0c:	00913c23          	sd	s1,24(sp)
    80007e10:	01213823          	sd	s2,16(sp)
    80007e14:	01313423          	sd	s3,8(sp)
    80007e18:	01413023          	sd	s4,0(sp)
    80007e1c:	03010413          	addi	s0,sp,48
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    80007e20:	00000693          	li	a3,0
    80007e24:	00000613          	li	a2,0
    80007e28:	00100593          	li	a1,1
    80007e2c:	00005517          	auipc	a0,0x5
    80007e30:	90450513          	addi	a0,a0,-1788 # 8000c730 <CONSOLE_STATUS+0x720>
    80007e34:	ffffd097          	auipc	ra,0xffffd
    80007e38:	274080e7          	jalr	628(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80007e3c:	00050a13          	mv	s4,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80007e40:	00005517          	auipc	a0,0x5
    80007e44:	8f850513          	addi	a0,a0,-1800 # 8000c738 <CONSOLE_STATUS+0x728>
    80007e48:	ffffe097          	auipc	ra,0xffffe
    80007e4c:	844080e7          	jalr	-1980(ra) # 8000568c <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80007e50:	000a0513          	mv	a0,s4
    80007e54:	ffffd097          	auipc	ra,0xffffd
    80007e58:	410080e7          	jalr	1040(ra) # 80005264 <_Z15kmem_cache_infoP12kmem_cache_s>
    const int arrSize = 8000;
    Class1* arr[arrSize];
    char c = 'a';
    for (int i = 0; i < arrSize; i++) {
    80007e5c:	00000913          	li	s2,0
    char c = 'a';
    80007e60:	06100993          	li	s3,97
    80007e64:	0200006f          	j	80007e84 <_Z22test_pristup_parametruv+0x84>
        printString("(");
        printInt(i);
        printString(") ");
        arr[i]->c = c;
        if(c++ == 'a' + 30){
            c = 'a';
    80007e68:	06100993          	li	s3,97
    80007e6c:	0800006f          	j	80007eec <_Z22test_pristup_parametruv+0xec>
        printInt((size_t)arr[i]);
        printString("\t");
        if (i % 100 == 0)
            printString("\n");
        else
            printString(" ");
    80007e70:	00005517          	auipc	a0,0x5
    80007e74:	94050513          	addi	a0,a0,-1728 # 8000c7b0 <CONSOLE_STATUS+0x7a0>
    80007e78:	ffffe097          	auipc	ra,0xffffe
    80007e7c:	814080e7          	jalr	-2028(ra) # 8000568c <_Z11printStringPKc>
    for (int i = 0; i < arrSize; i++) {
    80007e80:	0019091b          	addiw	s2,s2,1
    80007e84:	000027b7          	lui	a5,0x2
    80007e88:	f3f78793          	addi	a5,a5,-193 # 1f3f <_entry-0x7fffe0c1>
    80007e8c:	0d27cc63          	blt	a5,s2,80007f64 <_Z22test_pristup_parametruv+0x164>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    80007e90:	000a0513          	mv	a0,s4
    80007e94:	ffffd097          	auipc	ra,0xffffd
    80007e98:	2bc080e7          	jalr	700(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    80007e9c:	00050493          	mv	s1,a0
        printString("(");
    80007ea0:	00005517          	auipc	a0,0x5
    80007ea4:	8e850513          	addi	a0,a0,-1816 # 8000c788 <CONSOLE_STATUS+0x778>
    80007ea8:	ffffd097          	auipc	ra,0xffffd
    80007eac:	7e4080e7          	jalr	2020(ra) # 8000568c <_Z11printStringPKc>
        printInt(i);
    80007eb0:	00000613          	li	a2,0
    80007eb4:	00a00593          	li	a1,10
    80007eb8:	00090513          	mv	a0,s2
    80007ebc:	ffffe097          	auipc	ra,0xffffe
    80007ec0:	968080e7          	jalr	-1688(ra) # 80005824 <_Z8printIntiii>
        printString(") ");
    80007ec4:	00005517          	auipc	a0,0x5
    80007ec8:	8cc50513          	addi	a0,a0,-1844 # 8000c790 <CONSOLE_STATUS+0x780>
    80007ecc:	ffffd097          	auipc	ra,0xffffd
    80007ed0:	7c0080e7          	jalr	1984(ra) # 8000568c <_Z11printStringPKc>
        arr[i]->c = c;
    80007ed4:	01348023          	sb	s3,0(s1)
        if(c++ == 'a' + 30){
    80007ed8:	0019879b          	addiw	a5,s3,1
    80007edc:	0ff7f793          	andi	a5,a5,255
    80007ee0:	07f00713          	li	a4,127
    80007ee4:	f8e982e3          	beq	s3,a4,80007e68 <_Z22test_pristup_parametruv+0x68>
    80007ee8:	00078993          	mv	s3,a5
        printString("podatak: ");
    80007eec:	00005517          	auipc	a0,0x5
    80007ef0:	8ac50513          	addi	a0,a0,-1876 # 8000c798 <CONSOLE_STATUS+0x788>
    80007ef4:	ffffd097          	auipc	ra,0xffffd
    80007ef8:	798080e7          	jalr	1944(ra) # 8000568c <_Z11printStringPKc>
        printInt(arr[i]->c);
    80007efc:	00000613          	li	a2,0
    80007f00:	00a00593          	li	a1,10
    80007f04:	0004c503          	lbu	a0,0(s1)
    80007f08:	ffffe097          	auipc	ra,0xffffe
    80007f0c:	91c080e7          	jalr	-1764(ra) # 80005824 <_Z8printIntiii>
        printString(" adresa: ");
    80007f10:	00005517          	auipc	a0,0x5
    80007f14:	89850513          	addi	a0,a0,-1896 # 8000c7a8 <CONSOLE_STATUS+0x798>
    80007f18:	ffffd097          	auipc	ra,0xffffd
    80007f1c:	774080e7          	jalr	1908(ra) # 8000568c <_Z11printStringPKc>
        printInt((size_t)arr[i]);
    80007f20:	00000613          	li	a2,0
    80007f24:	00a00593          	li	a1,10
    80007f28:	0004851b          	sext.w	a0,s1
    80007f2c:	ffffe097          	auipc	ra,0xffffe
    80007f30:	8f8080e7          	jalr	-1800(ra) # 80005824 <_Z8printIntiii>
        printString("\t");
    80007f34:	00005517          	auipc	a0,0x5
    80007f38:	88450513          	addi	a0,a0,-1916 # 8000c7b8 <CONSOLE_STATUS+0x7a8>
    80007f3c:	ffffd097          	auipc	ra,0xffffd
    80007f40:	750080e7          	jalr	1872(ra) # 8000568c <_Z11printStringPKc>
        if (i % 100 == 0)
    80007f44:	06400793          	li	a5,100
    80007f48:	02f967bb          	remw	a5,s2,a5
    80007f4c:	f20792e3          	bnez	a5,80007e70 <_Z22test_pristup_parametruv+0x70>
            printString("\n");
    80007f50:	00004517          	auipc	a0,0x4
    80007f54:	32850513          	addi	a0,a0,808 # 8000c278 <CONSOLE_STATUS+0x268>
    80007f58:	ffffd097          	auipc	ra,0xffffd
    80007f5c:	734080e7          	jalr	1844(ra) # 8000568c <_Z11printStringPKc>
    80007f60:	f21ff06f          	j	80007e80 <_Z22test_pristup_parametruv+0x80>
    }
    printString("\n");
    80007f64:	00004517          	auipc	a0,0x4
    80007f68:	31450513          	addi	a0,a0,788 # 8000c278 <CONSOLE_STATUS+0x268>
    80007f6c:	ffffd097          	auipc	ra,0xffffd
    80007f70:	720080e7          	jalr	1824(ra) # 8000568c <_Z11printStringPKc>
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80007f74:	00004517          	auipc	a0,0x4
    80007f78:	7c450513          	addi	a0,a0,1988 # 8000c738 <CONSOLE_STATUS+0x728>
    80007f7c:	ffffd097          	auipc	ra,0xffffd
    80007f80:	710080e7          	jalr	1808(ra) # 8000568c <_Z11printStringPKc>
}
    80007f84:	02813083          	ld	ra,40(sp)
    80007f88:	02013403          	ld	s0,32(sp)
    80007f8c:	01813483          	ld	s1,24(sp)
    80007f90:	01013903          	ld	s2,16(sp)
    80007f94:	00813983          	ld	s3,8(sp)
    80007f98:	00013a03          	ld	s4,0(sp)
    80007f9c:	03010113          	addi	sp,sp,48
    80007fa0:	00008067          	ret

0000000080007fa4 <_Z16test_performansiv>:

const int arrSize = 100000;
//const int arrSize = 2032;
Class1* arr[arrSize];

void test_performansi() {
    80007fa4:	fe010113          	addi	sp,sp,-32
    80007fa8:	00113c23          	sd	ra,24(sp)
    80007fac:	00813823          	sd	s0,16(sp)
    80007fb0:	00913423          	sd	s1,8(sp)
    80007fb4:	01213023          	sd	s2,0(sp)
    80007fb8:	02010413          	addi	s0,sp,32
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    80007fbc:	00000693          	li	a3,0
    80007fc0:	00000613          	li	a2,0
    80007fc4:	00100593          	li	a1,1
    80007fc8:	00004517          	auipc	a0,0x4
    80007fcc:	76850513          	addi	a0,a0,1896 # 8000c730 <CONSOLE_STATUS+0x720>
    80007fd0:	ffffd097          	auipc	ra,0xffffd
    80007fd4:	0d8080e7          	jalr	216(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80007fd8:	00050913          	mv	s2,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80007fdc:	00004517          	auipc	a0,0x4
    80007fe0:	75c50513          	addi	a0,a0,1884 # 8000c738 <CONSOLE_STATUS+0x728>
    80007fe4:	ffffd097          	auipc	ra,0xffffd
    80007fe8:	6a8080e7          	jalr	1704(ra) # 8000568c <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80007fec:	00090513          	mv	a0,s2
    80007ff0:	ffffd097          	auipc	ra,0xffffd
    80007ff4:	274080e7          	jalr	628(ra) # 80005264 <_Z15kmem_cache_infoP12kmem_cache_s>
    for (int i = 0; i < arrSize; i++) {
    80007ff8:	00000493          	li	s1,0
    80007ffc:	000187b7          	lui	a5,0x18
    80008000:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    80008004:	0297c663          	blt	a5,s1,80008030 <_Z16test_performansiv+0x8c>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    80008008:	00090513          	mv	a0,s2
    8000800c:	ffffd097          	auipc	ra,0xffffd
    80008010:	144080e7          	jalr	324(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    80008014:	00349713          	slli	a4,s1,0x3
    80008018:	00008797          	auipc	a5,0x8
    8000801c:	b8078793          	addi	a5,a5,-1152 # 8000fb98 <arr>
    80008020:	00e787b3          	add	a5,a5,a4
    80008024:	00a7b023          	sd	a0,0(a5)
    for (int i = 0; i < arrSize; i++) {
    80008028:	0014849b          	addiw	s1,s1,1
    8000802c:	fd1ff06f          	j	80007ffc <_Z16test_performansiv+0x58>
//        printInt((size_t)arr[i]);
//        printString("\n");
    }
    printString("*****************************AFTER ALLOCATION******************************\n\n");
    80008030:	00004517          	auipc	a0,0x4
    80008034:	79050513          	addi	a0,a0,1936 # 8000c7c0 <CONSOLE_STATUS+0x7b0>
    80008038:	ffffd097          	auipc	ra,0xffffd
    8000803c:	654080e7          	jalr	1620(ra) # 8000568c <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80008040:	00090513          	mv	a0,s2
    80008044:	ffffd097          	auipc	ra,0xffffd
    80008048:	220080e7          	jalr	544(ra) # 80005264 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_free(cache1, arr[0]);
    8000804c:	00008597          	auipc	a1,0x8
    80008050:	b4c5b583          	ld	a1,-1204(a1) # 8000fb98 <arr>
    80008054:	00090513          	mv	a0,s2
    80008058:	ffffd097          	auipc	ra,0xffffd
    8000805c:	154080e7          	jalr	340(ra) # 800051ac <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < arrSize; i++) {
    80008060:	00000493          	li	s1,0
    80008064:	0700006f          	j	800080d4 <_Z16test_performansiv+0x130>
        int ret = kmem_cache_free(cache1, arr[i]);
        if(ret == -1){
//            if(i == 2023){
//                kmem_cache_info(cache1);
//            }
            printString("Neuspesna dealokacija: ");
    80008068:	00004517          	auipc	a0,0x4
    8000806c:	7a850513          	addi	a0,a0,1960 # 8000c810 <CONSOLE_STATUS+0x800>
    80008070:	ffffd097          	auipc	ra,0xffffd
    80008074:	61c080e7          	jalr	1564(ra) # 8000568c <_Z11printStringPKc>
            printInt(i);
    80008078:	00000613          	li	a2,0
    8000807c:	00a00593          	li	a1,10
    80008080:	00048513          	mv	a0,s1
    80008084:	ffffd097          	auipc	ra,0xffffd
    80008088:	7a0080e7          	jalr	1952(ra) # 80005824 <_Z8printIntiii>
            printString(", na adresi: ");
    8000808c:	00004517          	auipc	a0,0x4
    80008090:	79c50513          	addi	a0,a0,1948 # 8000c828 <CONSOLE_STATUS+0x818>
    80008094:	ffffd097          	auipc	ra,0xffffd
    80008098:	5f8080e7          	jalr	1528(ra) # 8000568c <_Z11printStringPKc>
            printInt((size_t)arr[i]);
    8000809c:	00349713          	slli	a4,s1,0x3
    800080a0:	00008797          	auipc	a5,0x8
    800080a4:	af878793          	addi	a5,a5,-1288 # 8000fb98 <arr>
    800080a8:	00e787b3          	add	a5,a5,a4
    800080ac:	00000613          	li	a2,0
    800080b0:	00a00593          	li	a1,10
    800080b4:	0007a503          	lw	a0,0(a5)
    800080b8:	ffffd097          	auipc	ra,0xffffd
    800080bc:	76c080e7          	jalr	1900(ra) # 80005824 <_Z8printIntiii>
            printString("\n");
    800080c0:	00004517          	auipc	a0,0x4
    800080c4:	1b850513          	addi	a0,a0,440 # 8000c278 <CONSOLE_STATUS+0x268>
    800080c8:	ffffd097          	auipc	ra,0xffffd
    800080cc:	5c4080e7          	jalr	1476(ra) # 8000568c <_Z11printStringPKc>
    for (int i = 0; i < arrSize; i++) {
    800080d0:	0014849b          	addiw	s1,s1,1
    800080d4:	000187b7          	lui	a5,0x18
    800080d8:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    800080dc:	0297c863          	blt	a5,s1,8000810c <_Z16test_performansiv+0x168>
        int ret = kmem_cache_free(cache1, arr[i]);
    800080e0:	00349713          	slli	a4,s1,0x3
    800080e4:	00008797          	auipc	a5,0x8
    800080e8:	ab478793          	addi	a5,a5,-1356 # 8000fb98 <arr>
    800080ec:	00e787b3          	add	a5,a5,a4
    800080f0:	0007b583          	ld	a1,0(a5)
    800080f4:	00090513          	mv	a0,s2
    800080f8:	ffffd097          	auipc	ra,0xffffd
    800080fc:	0b4080e7          	jalr	180(ra) # 800051ac <_Z15kmem_cache_freeP12kmem_cache_sPv>
        if(ret == -1){
    80008100:	fff00793          	li	a5,-1
    80008104:	fcf516e3          	bne	a0,a5,800080d0 <_Z16test_performansiv+0x12c>
    80008108:	f61ff06f          	j	80008068 <_Z16test_performansiv+0xc4>
        }
    }
    printString("*****************************AFTER DEALLOCATION****************************\n\n");
    8000810c:	00004517          	auipc	a0,0x4
    80008110:	72c50513          	addi	a0,a0,1836 # 8000c838 <CONSOLE_STATUS+0x828>
    80008114:	ffffd097          	auipc	ra,0xffffd
    80008118:	578080e7          	jalr	1400(ra) # 8000568c <_Z11printStringPKc>
    kmem_cache_info(cache1);
    8000811c:	00090513          	mv	a0,s2
    80008120:	ffffd097          	auipc	ra,0xffffd
    80008124:	144080e7          	jalr	324(ra) # 80005264 <_Z15kmem_cache_infoP12kmem_cache_s>
}
    80008128:	01813083          	ld	ra,24(sp)
    8000812c:	01013403          	ld	s0,16(sp)
    80008130:	00813483          	ld	s1,8(sp)
    80008134:	00013903          	ld	s2,0(sp)
    80008138:	02010113          	addi	sp,sp,32
    8000813c:	00008067          	ret

0000000080008140 <_Z23test_razlika_u_adresamav>:

void test_razlika_u_adresama(){
    80008140:	fc010113          	addi	sp,sp,-64
    80008144:	02113c23          	sd	ra,56(sp)
    80008148:	02813823          	sd	s0,48(sp)
    8000814c:	02913423          	sd	s1,40(sp)
    80008150:	03213023          	sd	s2,32(sp)
    80008154:	01313c23          	sd	s3,24(sp)
    80008158:	01413823          	sd	s4,16(sp)
    8000815c:	01513423          	sd	s5,8(sp)
    80008160:	04010413          	addi	s0,sp,64
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    80008164:	00000693          	li	a3,0
    80008168:	00000613          	li	a2,0
    8000816c:	00100593          	li	a1,1
    80008170:	00004517          	auipc	a0,0x4
    80008174:	5c050513          	addi	a0,a0,1472 # 8000c730 <CONSOLE_STATUS+0x720>
    80008178:	ffffd097          	auipc	ra,0xffffd
    8000817c:	f30080e7          	jalr	-208(ra) # 800050a8 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80008180:	00050a93          	mv	s5,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80008184:	00004517          	auipc	a0,0x4
    80008188:	5b450513          	addi	a0,a0,1460 # 8000c738 <CONSOLE_STATUS+0x728>
    8000818c:	ffffd097          	auipc	ra,0xffffd
    80008190:	500080e7          	jalr	1280(ra) # 8000568c <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80008194:	000a8513          	mv	a0,s5
    80008198:	ffffd097          	auipc	ra,0xffffd
    8000819c:	0cc080e7          	jalr	204(ra) # 80005264 <_Z15kmem_cache_infoP12kmem_cache_s>
    Class1* arr[arrSize];
    size_t prevAddr = 0;
    for (int i = 0; i < arrSize; i++) {
    800081a0:	00000993          	li	s3,0
    size_t prevAddr = 0;
    800081a4:	00000913          	li	s2,0
    800081a8:	0440006f          	j	800081ec <_Z23test_razlika_u_adresamav+0xac>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
        if ((size_t)arr[i] - prevAddr != 1 && prevAddr != 0) {
            printString("Nadjena razlika sa prethodnom adresom: ");
    800081ac:	00004517          	auipc	a0,0x4
    800081b0:	6dc50513          	addi	a0,a0,1756 # 8000c888 <CONSOLE_STATUS+0x878>
    800081b4:	ffffd097          	auipc	ra,0xffffd
    800081b8:	4d8080e7          	jalr	1240(ra) # 8000568c <_Z11printStringPKc>
            printInt((size_t)arr[i]);
    800081bc:	00000613          	li	a2,0
    800081c0:	00a00593          	li	a1,10
    800081c4:	0004851b          	sext.w	a0,s1
    800081c8:	ffffd097          	auipc	ra,0xffffd
    800081cc:	65c080e7          	jalr	1628(ra) # 80005824 <_Z8printIntiii>
            printString("\n");
    800081d0:	00004517          	auipc	a0,0x4
    800081d4:	0a850513          	addi	a0,a0,168 # 8000c278 <CONSOLE_STATUS+0x268>
    800081d8:	ffffd097          	auipc	ra,0xffffd
    800081dc:	4b4080e7          	jalr	1204(ra) # 8000568c <_Z11printStringPKc>
        }
        if((size_t)arr[i] - prevAddr == 0){
    800081e0:	052a0063          	beq	s4,s2,80008220 <_Z23test_razlika_u_adresamav+0xe0>
    for (int i = 0; i < arrSize; i++) {
    800081e4:	0019899b          	addiw	s3,s3,1
//                printString("Ova adresa ima duplikat: ");
//                printInt((size_t)arr[i]);
//                printString("\n");
//            }
//        }
        prevAddr = (size_t)arr[i];
    800081e8:	00048913          	mv	s2,s1
    for (int i = 0; i < arrSize; i++) {
    800081ec:	000187b7          	lui	a5,0x18
    800081f0:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    800081f4:	0737c263          	blt	a5,s3,80008258 <_Z23test_razlika_u_adresamav+0x118>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    800081f8:	000a8513          	mv	a0,s5
    800081fc:	ffffd097          	auipc	ra,0xffffd
    80008200:	f54080e7          	jalr	-172(ra) # 80005150 <_Z16kmem_cache_allocP12kmem_cache_s>
    80008204:	00050493          	mv	s1,a0
        if ((size_t)arr[i] - prevAddr != 1 && prevAddr != 0) {
    80008208:	00050a13          	mv	s4,a0
    8000820c:	41250733          	sub	a4,a0,s2
    80008210:	00100793          	li	a5,1
    80008214:	fcf706e3          	beq	a4,a5,800081e0 <_Z23test_razlika_u_adresamav+0xa0>
    80008218:	fc0904e3          	beqz	s2,800081e0 <_Z23test_razlika_u_adresamav+0xa0>
    8000821c:	f91ff06f          	j	800081ac <_Z23test_razlika_u_adresamav+0x6c>
            printString("Nadjene dve uzastopne iste adrese");
    80008220:	00004517          	auipc	a0,0x4
    80008224:	69050513          	addi	a0,a0,1680 # 8000c8b0 <CONSOLE_STATUS+0x8a0>
    80008228:	ffffd097          	auipc	ra,0xffffd
    8000822c:	464080e7          	jalr	1124(ra) # 8000568c <_Z11printStringPKc>
            printInt((size_t)arr[i]);
    80008230:	00000613          	li	a2,0
    80008234:	00a00593          	li	a1,10
    80008238:	0004851b          	sext.w	a0,s1
    8000823c:	ffffd097          	auipc	ra,0xffffd
    80008240:	5e8080e7          	jalr	1512(ra) # 80005824 <_Z8printIntiii>
            printString("\n");
    80008244:	00004517          	auipc	a0,0x4
    80008248:	03450513          	addi	a0,a0,52 # 8000c278 <CONSOLE_STATUS+0x268>
    8000824c:	ffffd097          	auipc	ra,0xffffd
    80008250:	440080e7          	jalr	1088(ra) # 8000568c <_Z11printStringPKc>
    80008254:	f91ff06f          	j	800081e4 <_Z23test_razlika_u_adresamav+0xa4>

    }
    printString("*****************************AFTER ALLOCATION******************************\n\n");
    80008258:	00004517          	auipc	a0,0x4
    8000825c:	56850513          	addi	a0,a0,1384 # 8000c7c0 <CONSOLE_STATUS+0x7b0>
    80008260:	ffffd097          	auipc	ra,0xffffd
    80008264:	42c080e7          	jalr	1068(ra) # 8000568c <_Z11printStringPKc>
    printString("\n");
    80008268:	00004517          	auipc	a0,0x4
    8000826c:	01050513          	addi	a0,a0,16 # 8000c278 <CONSOLE_STATUS+0x268>
    80008270:	ffffd097          	auipc	ra,0xffffd
    80008274:	41c080e7          	jalr	1052(ra) # 8000568c <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80008278:	000a8513          	mv	a0,s5
    8000827c:	ffffd097          	auipc	ra,0xffffd
    80008280:	fe8080e7          	jalr	-24(ra) # 80005264 <_Z15kmem_cache_infoP12kmem_cache_s>
}
    80008284:	03813083          	ld	ra,56(sp)
    80008288:	03013403          	ld	s0,48(sp)
    8000828c:	02813483          	ld	s1,40(sp)
    80008290:	02013903          	ld	s2,32(sp)
    80008294:	01813983          	ld	s3,24(sp)
    80008298:	01013a03          	ld	s4,16(sp)
    8000829c:	00813a83          	ld	s5,8(sp)
    800082a0:	04010113          	addi	sp,sp,64
    800082a4:	00008067          	ret

00000000800082a8 <_Z8userMainv>:

class Class2{
    char a[4096000];
};

void userMain() {
    800082a8:	ff010113          	addi	sp,sp,-16
    800082ac:	00113423          	sd	ra,8(sp)
    800082b0:	00813023          	sd	s0,0(sp)
    800082b4:	01010413          	addi	s0,sp,16
//    test_performansi();

//    test_niti();

//    test_prvi();
    test_drugi();
    800082b8:	ffffd097          	auipc	ra,0xffffd
    800082bc:	358080e7          	jalr	856(ra) # 80005610 <_Z10test_drugiv>
//    ConsumerProducerCPP_API_test::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

//    testModif();
//    testPrenosParametara();

    800082c0:	00813083          	ld	ra,8(sp)
    800082c4:	00013403          	ld	s0,0(sp)
    800082c8:	01010113          	addi	sp,sp,16
    800082cc:	00008067          	ret

00000000800082d0 <_ZN20Threads_CPP_API_test7WorkerAD1Ev>:
    class WorkerA: public Thread {
    800082d0:	ff010113          	addi	sp,sp,-16
    800082d4:	00113423          	sd	ra,8(sp)
    800082d8:	00813023          	sd	s0,0(sp)
    800082dc:	01010413          	addi	s0,sp,16
    800082e0:	00007797          	auipc	a5,0x7
    800082e4:	3f878793          	addi	a5,a5,1016 # 8000f6d8 <_ZTVN20Threads_CPP_API_test7WorkerAE+0x10>
    800082e8:	00f53023          	sd	a5,0(a0)
    800082ec:	ffffc097          	auipc	ra,0xffffc
    800082f0:	8b0080e7          	jalr	-1872(ra) # 80003b9c <_ZN6ThreadD1Ev>
    800082f4:	00813083          	ld	ra,8(sp)
    800082f8:	00013403          	ld	s0,0(sp)
    800082fc:	01010113          	addi	sp,sp,16
    80008300:	00008067          	ret

0000000080008304 <_ZN20Threads_CPP_API_test7WorkerAD0Ev>:
    80008304:	fe010113          	addi	sp,sp,-32
    80008308:	00113c23          	sd	ra,24(sp)
    8000830c:	00813823          	sd	s0,16(sp)
    80008310:	00913423          	sd	s1,8(sp)
    80008314:	02010413          	addi	s0,sp,32
    80008318:	00050493          	mv	s1,a0
    8000831c:	00007797          	auipc	a5,0x7
    80008320:	3bc78793          	addi	a5,a5,956 # 8000f6d8 <_ZTVN20Threads_CPP_API_test7WorkerAE+0x10>
    80008324:	00f53023          	sd	a5,0(a0)
    80008328:	ffffc097          	auipc	ra,0xffffc
    8000832c:	874080e7          	jalr	-1932(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008330:	00048513          	mv	a0,s1
    80008334:	ffffc097          	auipc	ra,0xffffc
    80008338:	960080e7          	jalr	-1696(ra) # 80003c94 <_ZdlPv>
    8000833c:	01813083          	ld	ra,24(sp)
    80008340:	01013403          	ld	s0,16(sp)
    80008344:	00813483          	ld	s1,8(sp)
    80008348:	02010113          	addi	sp,sp,32
    8000834c:	00008067          	ret

0000000080008350 <_ZN20Threads_CPP_API_test7WorkerBD1Ev>:
    class WorkerB: public Thread {
    80008350:	ff010113          	addi	sp,sp,-16
    80008354:	00113423          	sd	ra,8(sp)
    80008358:	00813023          	sd	s0,0(sp)
    8000835c:	01010413          	addi	s0,sp,16
    80008360:	00007797          	auipc	a5,0x7
    80008364:	3a078793          	addi	a5,a5,928 # 8000f700 <_ZTVN20Threads_CPP_API_test7WorkerBE+0x10>
    80008368:	00f53023          	sd	a5,0(a0)
    8000836c:	ffffc097          	auipc	ra,0xffffc
    80008370:	830080e7          	jalr	-2000(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008374:	00813083          	ld	ra,8(sp)
    80008378:	00013403          	ld	s0,0(sp)
    8000837c:	01010113          	addi	sp,sp,16
    80008380:	00008067          	ret

0000000080008384 <_ZN20Threads_CPP_API_test7WorkerBD0Ev>:
    80008384:	fe010113          	addi	sp,sp,-32
    80008388:	00113c23          	sd	ra,24(sp)
    8000838c:	00813823          	sd	s0,16(sp)
    80008390:	00913423          	sd	s1,8(sp)
    80008394:	02010413          	addi	s0,sp,32
    80008398:	00050493          	mv	s1,a0
    8000839c:	00007797          	auipc	a5,0x7
    800083a0:	36478793          	addi	a5,a5,868 # 8000f700 <_ZTVN20Threads_CPP_API_test7WorkerBE+0x10>
    800083a4:	00f53023          	sd	a5,0(a0)
    800083a8:	ffffb097          	auipc	ra,0xffffb
    800083ac:	7f4080e7          	jalr	2036(ra) # 80003b9c <_ZN6ThreadD1Ev>
    800083b0:	00048513          	mv	a0,s1
    800083b4:	ffffc097          	auipc	ra,0xffffc
    800083b8:	8e0080e7          	jalr	-1824(ra) # 80003c94 <_ZdlPv>
    800083bc:	01813083          	ld	ra,24(sp)
    800083c0:	01013403          	ld	s0,16(sp)
    800083c4:	00813483          	ld	s1,8(sp)
    800083c8:	02010113          	addi	sp,sp,32
    800083cc:	00008067          	ret

00000000800083d0 <_ZN20Threads_CPP_API_test7WorkerCD1Ev>:
    class WorkerC: public Thread {
    800083d0:	ff010113          	addi	sp,sp,-16
    800083d4:	00113423          	sd	ra,8(sp)
    800083d8:	00813023          	sd	s0,0(sp)
    800083dc:	01010413          	addi	s0,sp,16
    800083e0:	00007797          	auipc	a5,0x7
    800083e4:	34878793          	addi	a5,a5,840 # 8000f728 <_ZTVN20Threads_CPP_API_test7WorkerCE+0x10>
    800083e8:	00f53023          	sd	a5,0(a0)
    800083ec:	ffffb097          	auipc	ra,0xffffb
    800083f0:	7b0080e7          	jalr	1968(ra) # 80003b9c <_ZN6ThreadD1Ev>
    800083f4:	00813083          	ld	ra,8(sp)
    800083f8:	00013403          	ld	s0,0(sp)
    800083fc:	01010113          	addi	sp,sp,16
    80008400:	00008067          	ret

0000000080008404 <_ZN20Threads_CPP_API_test7WorkerCD0Ev>:
    80008404:	fe010113          	addi	sp,sp,-32
    80008408:	00113c23          	sd	ra,24(sp)
    8000840c:	00813823          	sd	s0,16(sp)
    80008410:	00913423          	sd	s1,8(sp)
    80008414:	02010413          	addi	s0,sp,32
    80008418:	00050493          	mv	s1,a0
    8000841c:	00007797          	auipc	a5,0x7
    80008420:	30c78793          	addi	a5,a5,780 # 8000f728 <_ZTVN20Threads_CPP_API_test7WorkerCE+0x10>
    80008424:	00f53023          	sd	a5,0(a0)
    80008428:	ffffb097          	auipc	ra,0xffffb
    8000842c:	774080e7          	jalr	1908(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008430:	00048513          	mv	a0,s1
    80008434:	ffffc097          	auipc	ra,0xffffc
    80008438:	860080e7          	jalr	-1952(ra) # 80003c94 <_ZdlPv>
    8000843c:	01813083          	ld	ra,24(sp)
    80008440:	01013403          	ld	s0,16(sp)
    80008444:	00813483          	ld	s1,8(sp)
    80008448:	02010113          	addi	sp,sp,32
    8000844c:	00008067          	ret

0000000080008450 <_ZN20Threads_CPP_API_test7WorkerDD1Ev>:
    class WorkerD: public Thread {
    80008450:	ff010113          	addi	sp,sp,-16
    80008454:	00113423          	sd	ra,8(sp)
    80008458:	00813023          	sd	s0,0(sp)
    8000845c:	01010413          	addi	s0,sp,16
    80008460:	00007797          	auipc	a5,0x7
    80008464:	2f078793          	addi	a5,a5,752 # 8000f750 <_ZTVN20Threads_CPP_API_test7WorkerDE+0x10>
    80008468:	00f53023          	sd	a5,0(a0)
    8000846c:	ffffb097          	auipc	ra,0xffffb
    80008470:	730080e7          	jalr	1840(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008474:	00813083          	ld	ra,8(sp)
    80008478:	00013403          	ld	s0,0(sp)
    8000847c:	01010113          	addi	sp,sp,16
    80008480:	00008067          	ret

0000000080008484 <_ZN20Threads_CPP_API_test7WorkerDD0Ev>:
    80008484:	fe010113          	addi	sp,sp,-32
    80008488:	00113c23          	sd	ra,24(sp)
    8000848c:	00813823          	sd	s0,16(sp)
    80008490:	00913423          	sd	s1,8(sp)
    80008494:	02010413          	addi	s0,sp,32
    80008498:	00050493          	mv	s1,a0
    8000849c:	00007797          	auipc	a5,0x7
    800084a0:	2b478793          	addi	a5,a5,692 # 8000f750 <_ZTVN20Threads_CPP_API_test7WorkerDE+0x10>
    800084a4:	00f53023          	sd	a5,0(a0)
    800084a8:	ffffb097          	auipc	ra,0xffffb
    800084ac:	6f4080e7          	jalr	1780(ra) # 80003b9c <_ZN6ThreadD1Ev>
    800084b0:	00048513          	mv	a0,s1
    800084b4:	ffffb097          	auipc	ra,0xffffb
    800084b8:	7e0080e7          	jalr	2016(ra) # 80003c94 <_ZdlPv>
    800084bc:	01813083          	ld	ra,24(sp)
    800084c0:	01013403          	ld	s0,16(sp)
    800084c4:	00813483          	ld	s1,8(sp)
    800084c8:	02010113          	addi	sp,sp,32
    800084cc:	00008067          	ret

00000000800084d0 <_ZN34ConsumerProducer_CPP_Sync_API_test8ConsumerD1Ev>:
    class Consumer:public Thread {
    800084d0:	ff010113          	addi	sp,sp,-16
    800084d4:	00113423          	sd	ra,8(sp)
    800084d8:	00813023          	sd	s0,0(sp)
    800084dc:	01010413          	addi	s0,sp,16
    800084e0:	00007797          	auipc	a5,0x7
    800084e4:	2e878793          	addi	a5,a5,744 # 8000f7c8 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ConsumerE+0x10>
    800084e8:	00f53023          	sd	a5,0(a0)
    800084ec:	ffffb097          	auipc	ra,0xffffb
    800084f0:	6b0080e7          	jalr	1712(ra) # 80003b9c <_ZN6ThreadD1Ev>
    800084f4:	00813083          	ld	ra,8(sp)
    800084f8:	00013403          	ld	s0,0(sp)
    800084fc:	01010113          	addi	sp,sp,16
    80008500:	00008067          	ret

0000000080008504 <_ZN34ConsumerProducer_CPP_Sync_API_test8ConsumerD0Ev>:
    80008504:	fe010113          	addi	sp,sp,-32
    80008508:	00113c23          	sd	ra,24(sp)
    8000850c:	00813823          	sd	s0,16(sp)
    80008510:	00913423          	sd	s1,8(sp)
    80008514:	02010413          	addi	s0,sp,32
    80008518:	00050493          	mv	s1,a0
    8000851c:	00007797          	auipc	a5,0x7
    80008520:	2ac78793          	addi	a5,a5,684 # 8000f7c8 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ConsumerE+0x10>
    80008524:	00f53023          	sd	a5,0(a0)
    80008528:	ffffb097          	auipc	ra,0xffffb
    8000852c:	674080e7          	jalr	1652(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008530:	00048513          	mv	a0,s1
    80008534:	ffffb097          	auipc	ra,0xffffb
    80008538:	760080e7          	jalr	1888(ra) # 80003c94 <_ZdlPv>
    8000853c:	01813083          	ld	ra,24(sp)
    80008540:	01013403          	ld	s0,16(sp)
    80008544:	00813483          	ld	s1,8(sp)
    80008548:	02010113          	addi	sp,sp,32
    8000854c:	00008067          	ret

0000000080008550 <_ZN34ConsumerProducer_CPP_Sync_API_test8ProducerD1Ev>:
    class Producer:public Thread {
    80008550:	ff010113          	addi	sp,sp,-16
    80008554:	00113423          	sd	ra,8(sp)
    80008558:	00813023          	sd	s0,0(sp)
    8000855c:	01010413          	addi	s0,sp,16
    80008560:	00007797          	auipc	a5,0x7
    80008564:	24078793          	addi	a5,a5,576 # 8000f7a0 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ProducerE+0x10>
    80008568:	00f53023          	sd	a5,0(a0)
    8000856c:	ffffb097          	auipc	ra,0xffffb
    80008570:	630080e7          	jalr	1584(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008574:	00813083          	ld	ra,8(sp)
    80008578:	00013403          	ld	s0,0(sp)
    8000857c:	01010113          	addi	sp,sp,16
    80008580:	00008067          	ret

0000000080008584 <_ZN34ConsumerProducer_CPP_Sync_API_test8ProducerD0Ev>:
    80008584:	fe010113          	addi	sp,sp,-32
    80008588:	00113c23          	sd	ra,24(sp)
    8000858c:	00813823          	sd	s0,16(sp)
    80008590:	00913423          	sd	s1,8(sp)
    80008594:	02010413          	addi	s0,sp,32
    80008598:	00050493          	mv	s1,a0
    8000859c:	00007797          	auipc	a5,0x7
    800085a0:	20478793          	addi	a5,a5,516 # 8000f7a0 <_ZTVN34ConsumerProducer_CPP_Sync_API_test8ProducerE+0x10>
    800085a4:	00f53023          	sd	a5,0(a0)
    800085a8:	ffffb097          	auipc	ra,0xffffb
    800085ac:	5f4080e7          	jalr	1524(ra) # 80003b9c <_ZN6ThreadD1Ev>
    800085b0:	00048513          	mv	a0,s1
    800085b4:	ffffb097          	auipc	ra,0xffffb
    800085b8:	6e0080e7          	jalr	1760(ra) # 80003c94 <_ZdlPv>
    800085bc:	01813083          	ld	ra,24(sp)
    800085c0:	01013403          	ld	s0,16(sp)
    800085c4:	00813483          	ld	s1,8(sp)
    800085c8:	02010113          	addi	sp,sp,32
    800085cc:	00008067          	ret

00000000800085d0 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboardD1Ev>:
    class ProducerKeyboard:public Thread {
    800085d0:	ff010113          	addi	sp,sp,-16
    800085d4:	00113423          	sd	ra,8(sp)
    800085d8:	00813023          	sd	s0,0(sp)
    800085dc:	01010413          	addi	s0,sp,16
    800085e0:	00007797          	auipc	a5,0x7
    800085e4:	19878793          	addi	a5,a5,408 # 8000f778 <_ZTVN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboardE+0x10>
    800085e8:	00f53023          	sd	a5,0(a0)
    800085ec:	ffffb097          	auipc	ra,0xffffb
    800085f0:	5b0080e7          	jalr	1456(ra) # 80003b9c <_ZN6ThreadD1Ev>
    800085f4:	00813083          	ld	ra,8(sp)
    800085f8:	00013403          	ld	s0,0(sp)
    800085fc:	01010113          	addi	sp,sp,16
    80008600:	00008067          	ret

0000000080008604 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboardD0Ev>:
    80008604:	fe010113          	addi	sp,sp,-32
    80008608:	00113c23          	sd	ra,24(sp)
    8000860c:	00813823          	sd	s0,16(sp)
    80008610:	00913423          	sd	s1,8(sp)
    80008614:	02010413          	addi	s0,sp,32
    80008618:	00050493          	mv	s1,a0
    8000861c:	00007797          	auipc	a5,0x7
    80008620:	15c78793          	addi	a5,a5,348 # 8000f778 <_ZTVN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboardE+0x10>
    80008624:	00f53023          	sd	a5,0(a0)
    80008628:	ffffb097          	auipc	ra,0xffffb
    8000862c:	574080e7          	jalr	1396(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008630:	00048513          	mv	a0,s1
    80008634:	ffffb097          	auipc	ra,0xffffb
    80008638:	660080e7          	jalr	1632(ra) # 80003c94 <_ZdlPv>
    8000863c:	01813083          	ld	ra,24(sp)
    80008640:	01013403          	ld	s0,16(sp)
    80008644:	00813483          	ld	s1,8(sp)
    80008648:	02010113          	addi	sp,sp,32
    8000864c:	00008067          	ret

0000000080008650 <_ZN28ConsumerProducerCPP_API_test8ConsumerD1Ev>:
    class Consumer : public Thread {
    80008650:	ff010113          	addi	sp,sp,-16
    80008654:	00113423          	sd	ra,8(sp)
    80008658:	00813023          	sd	s0,0(sp)
    8000865c:	01010413          	addi	s0,sp,16
    80008660:	00007797          	auipc	a5,0x7
    80008664:	1e078793          	addi	a5,a5,480 # 8000f840 <_ZTVN28ConsumerProducerCPP_API_test8ConsumerE+0x10>
    80008668:	00f53023          	sd	a5,0(a0)
    8000866c:	ffffb097          	auipc	ra,0xffffb
    80008670:	530080e7          	jalr	1328(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008674:	00813083          	ld	ra,8(sp)
    80008678:	00013403          	ld	s0,0(sp)
    8000867c:	01010113          	addi	sp,sp,16
    80008680:	00008067          	ret

0000000080008684 <_ZN28ConsumerProducerCPP_API_test8ConsumerD0Ev>:
    80008684:	fe010113          	addi	sp,sp,-32
    80008688:	00113c23          	sd	ra,24(sp)
    8000868c:	00813823          	sd	s0,16(sp)
    80008690:	00913423          	sd	s1,8(sp)
    80008694:	02010413          	addi	s0,sp,32
    80008698:	00050493          	mv	s1,a0
    8000869c:	00007797          	auipc	a5,0x7
    800086a0:	1a478793          	addi	a5,a5,420 # 8000f840 <_ZTVN28ConsumerProducerCPP_API_test8ConsumerE+0x10>
    800086a4:	00f53023          	sd	a5,0(a0)
    800086a8:	ffffb097          	auipc	ra,0xffffb
    800086ac:	4f4080e7          	jalr	1268(ra) # 80003b9c <_ZN6ThreadD1Ev>
    800086b0:	00048513          	mv	a0,s1
    800086b4:	ffffb097          	auipc	ra,0xffffb
    800086b8:	5e0080e7          	jalr	1504(ra) # 80003c94 <_ZdlPv>
    800086bc:	01813083          	ld	ra,24(sp)
    800086c0:	01013403          	ld	s0,16(sp)
    800086c4:	00813483          	ld	s1,8(sp)
    800086c8:	02010113          	addi	sp,sp,32
    800086cc:	00008067          	ret

00000000800086d0 <_ZN28ConsumerProducerCPP_API_test16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    800086d0:	ff010113          	addi	sp,sp,-16
    800086d4:	00113423          	sd	ra,8(sp)
    800086d8:	00813023          	sd	s0,0(sp)
    800086dc:	01010413          	addi	s0,sp,16
    800086e0:	00007797          	auipc	a5,0x7
    800086e4:	11078793          	addi	a5,a5,272 # 8000f7f0 <_ZTVN28ConsumerProducerCPP_API_test16ProducerKeyboradE+0x10>
    800086e8:	00f53023          	sd	a5,0(a0)
    800086ec:	ffffb097          	auipc	ra,0xffffb
    800086f0:	4b0080e7          	jalr	1200(ra) # 80003b9c <_ZN6ThreadD1Ev>
    800086f4:	00813083          	ld	ra,8(sp)
    800086f8:	00013403          	ld	s0,0(sp)
    800086fc:	01010113          	addi	sp,sp,16
    80008700:	00008067          	ret

0000000080008704 <_ZN28ConsumerProducerCPP_API_test16ProducerKeyboradD0Ev>:
    80008704:	fe010113          	addi	sp,sp,-32
    80008708:	00113c23          	sd	ra,24(sp)
    8000870c:	00813823          	sd	s0,16(sp)
    80008710:	00913423          	sd	s1,8(sp)
    80008714:	02010413          	addi	s0,sp,32
    80008718:	00050493          	mv	s1,a0
    8000871c:	00007797          	auipc	a5,0x7
    80008720:	0d478793          	addi	a5,a5,212 # 8000f7f0 <_ZTVN28ConsumerProducerCPP_API_test16ProducerKeyboradE+0x10>
    80008724:	00f53023          	sd	a5,0(a0)
    80008728:	ffffb097          	auipc	ra,0xffffb
    8000872c:	474080e7          	jalr	1140(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008730:	00048513          	mv	a0,s1
    80008734:	ffffb097          	auipc	ra,0xffffb
    80008738:	560080e7          	jalr	1376(ra) # 80003c94 <_ZdlPv>
    8000873c:	01813083          	ld	ra,24(sp)
    80008740:	01013403          	ld	s0,16(sp)
    80008744:	00813483          	ld	s1,8(sp)
    80008748:	02010113          	addi	sp,sp,32
    8000874c:	00008067          	ret

0000000080008750 <_ZN28ConsumerProducerCPP_API_test8ProducerD1Ev>:
    class Producer : public Thread {
    80008750:	ff010113          	addi	sp,sp,-16
    80008754:	00113423          	sd	ra,8(sp)
    80008758:	00813023          	sd	s0,0(sp)
    8000875c:	01010413          	addi	s0,sp,16
    80008760:	00007797          	auipc	a5,0x7
    80008764:	0b878793          	addi	a5,a5,184 # 8000f818 <_ZTVN28ConsumerProducerCPP_API_test8ProducerE+0x10>
    80008768:	00f53023          	sd	a5,0(a0)
    8000876c:	ffffb097          	auipc	ra,0xffffb
    80008770:	430080e7          	jalr	1072(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008774:	00813083          	ld	ra,8(sp)
    80008778:	00013403          	ld	s0,0(sp)
    8000877c:	01010113          	addi	sp,sp,16
    80008780:	00008067          	ret

0000000080008784 <_ZN28ConsumerProducerCPP_API_test8ProducerD0Ev>:
    80008784:	fe010113          	addi	sp,sp,-32
    80008788:	00113c23          	sd	ra,24(sp)
    8000878c:	00813823          	sd	s0,16(sp)
    80008790:	00913423          	sd	s1,8(sp)
    80008794:	02010413          	addi	s0,sp,32
    80008798:	00050493          	mv	s1,a0
    8000879c:	00007797          	auipc	a5,0x7
    800087a0:	07c78793          	addi	a5,a5,124 # 8000f818 <_ZTVN28ConsumerProducerCPP_API_test8ProducerE+0x10>
    800087a4:	00f53023          	sd	a5,0(a0)
    800087a8:	ffffb097          	auipc	ra,0xffffb
    800087ac:	3f4080e7          	jalr	1012(ra) # 80003b9c <_ZN6ThreadD1Ev>
    800087b0:	00048513          	mv	a0,s1
    800087b4:	ffffb097          	auipc	ra,0xffffb
    800087b8:	4e0080e7          	jalr	1248(ra) # 80003c94 <_ZdlPv>
    800087bc:	01813083          	ld	ra,24(sp)
    800087c0:	01013403          	ld	s0,16(sp)
    800087c4:	00813483          	ld	s1,8(sp)
    800087c8:	02010113          	addi	sp,sp,32
    800087cc:	00008067          	ret

00000000800087d0 <_ZN28ConsumerProducerCPP_API_test16ProducerKeyborad3runEv>:
        void run() override {
    800087d0:	fe010113          	addi	sp,sp,-32
    800087d4:	00113c23          	sd	ra,24(sp)
    800087d8:	00813823          	sd	s0,16(sp)
    800087dc:	00913423          	sd	s1,8(sp)
    800087e0:	02010413          	addi	s0,sp,32
    800087e4:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    800087e8:	ffff9097          	auipc	ra,0xffff9
    800087ec:	e0c080e7          	jalr	-500(ra) # 800015f4 <getc>
    800087f0:	0005059b          	sext.w	a1,a0
    800087f4:	01b00793          	li	a5,27
    800087f8:	00f58c63          	beq	a1,a5,80008810 <_ZN28ConsumerProducerCPP_API_test16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    800087fc:	0104b783          	ld	a5,16(s1)
    80008800:	0087b503          	ld	a0,8(a5)
    80008804:	ffffd097          	auipc	ra,0xffffd
    80008808:	298080e7          	jalr	664(ra) # 80005a9c <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    8000880c:	fddff06f          	j	800087e8 <_ZN28ConsumerProducerCPP_API_test16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80008810:	00100793          	li	a5,1
    80008814:	00007717          	auipc	a4,0x7
    80008818:	34f72a23          	sw	a5,852(a4) # 8000fb68 <_ZN28ConsumerProducerCPP_API_test9threadEndE>
            td->buffer->put('!');
    8000881c:	0104b783          	ld	a5,16(s1)
    80008820:	02100593          	li	a1,33
    80008824:	0087b503          	ld	a0,8(a5)
    80008828:	ffffd097          	auipc	ra,0xffffd
    8000882c:	274080e7          	jalr	628(ra) # 80005a9c <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80008830:	0104b783          	ld	a5,16(s1)
    80008834:	0107b503          	ld	a0,16(a5)
    80008838:	ffffb097          	auipc	ra,0xffffb
    8000883c:	794080e7          	jalr	1940(ra) # 80003fcc <_ZN9Semaphore6signalEv>
        }
    80008840:	01813083          	ld	ra,24(sp)
    80008844:	01013403          	ld	s0,16(sp)
    80008848:	00813483          	ld	s1,8(sp)
    8000884c:	02010113          	addi	sp,sp,32
    80008850:	00008067          	ret

0000000080008854 <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv>:
        void run() override {
    80008854:	fd010113          	addi	sp,sp,-48
    80008858:	02113423          	sd	ra,40(sp)
    8000885c:	02813023          	sd	s0,32(sp)
    80008860:	00913c23          	sd	s1,24(sp)
    80008864:	01213823          	sd	s2,16(sp)
    80008868:	01313423          	sd	s3,8(sp)
    8000886c:	03010413          	addi	s0,sp,48
    80008870:	00050913          	mv	s2,a0
            int i = 0;
    80008874:	00000993          	li	s3,0
    80008878:	0100006f          	j	80008888 <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv+0x34>
                    Console::putc('\n');
    8000887c:	00a00513          	li	a0,10
    80008880:	ffffb097          	auipc	ra,0xffffb
    80008884:	7a0080e7          	jalr	1952(ra) # 80004020 <_ZN7Console4putcEc>
            while (!threadEnd) {
    80008888:	00007797          	auipc	a5,0x7
    8000888c:	2e07a783          	lw	a5,736(a5) # 8000fb68 <_ZN28ConsumerProducerCPP_API_test9threadEndE>
    80008890:	04079a63          	bnez	a5,800088e4 <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80008894:	01093783          	ld	a5,16(s2)
    80008898:	0087b503          	ld	a0,8(a5)
    8000889c:	ffffd097          	auipc	ra,0xffffd
    800088a0:	290080e7          	jalr	656(ra) # 80005b2c <_ZN9BufferCPP3getEv>
                i++;
    800088a4:	0019849b          	addiw	s1,s3,1
    800088a8:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    800088ac:	0ff57513          	andi	a0,a0,255
    800088b0:	ffffb097          	auipc	ra,0xffffb
    800088b4:	770080e7          	jalr	1904(ra) # 80004020 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    800088b8:	05000793          	li	a5,80
    800088bc:	02f4e4bb          	remw	s1,s1,a5
    800088c0:	fc0494e3          	bnez	s1,80008888 <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv+0x34>
    800088c4:	fb9ff06f          	j	8000887c <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv+0x28>
                int key = td->buffer->get();
    800088c8:	01093783          	ld	a5,16(s2)
    800088cc:	0087b503          	ld	a0,8(a5)
    800088d0:	ffffd097          	auipc	ra,0xffffd
    800088d4:	25c080e7          	jalr	604(ra) # 80005b2c <_ZN9BufferCPP3getEv>
                Console::putc(key);
    800088d8:	0ff57513          	andi	a0,a0,255
    800088dc:	ffffb097          	auipc	ra,0xffffb
    800088e0:	744080e7          	jalr	1860(ra) # 80004020 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    800088e4:	01093783          	ld	a5,16(s2)
    800088e8:	0087b503          	ld	a0,8(a5)
    800088ec:	ffffd097          	auipc	ra,0xffffd
    800088f0:	2cc080e7          	jalr	716(ra) # 80005bb8 <_ZN9BufferCPP6getCntEv>
    800088f4:	fca04ae3          	bgtz	a0,800088c8 <_ZN28ConsumerProducerCPP_API_test8Consumer3runEv+0x74>
            td->sem->signal();
    800088f8:	01093783          	ld	a5,16(s2)
    800088fc:	0107b503          	ld	a0,16(a5)
    80008900:	ffffb097          	auipc	ra,0xffffb
    80008904:	6cc080e7          	jalr	1740(ra) # 80003fcc <_ZN9Semaphore6signalEv>
        }
    80008908:	02813083          	ld	ra,40(sp)
    8000890c:	02013403          	ld	s0,32(sp)
    80008910:	01813483          	ld	s1,24(sp)
    80008914:	01013903          	ld	s2,16(sp)
    80008918:	00813983          	ld	s3,8(sp)
    8000891c:	03010113          	addi	sp,sp,48
    80008920:	00008067          	ret

0000000080008924 <_ZN28ConsumerProducerCPP_API_test8Producer3runEv>:
        void run() override {
    80008924:	fe010113          	addi	sp,sp,-32
    80008928:	00113c23          	sd	ra,24(sp)
    8000892c:	00813823          	sd	s0,16(sp)
    80008930:	00913423          	sd	s1,8(sp)
    80008934:	01213023          	sd	s2,0(sp)
    80008938:	02010413          	addi	s0,sp,32
    8000893c:	00050493          	mv	s1,a0
            int i = 0;
    80008940:	00000913          	li	s2,0
            while (!threadEnd) {
    80008944:	00007797          	auipc	a5,0x7
    80008948:	2247a783          	lw	a5,548(a5) # 8000fb68 <_ZN28ConsumerProducerCPP_API_test9threadEndE>
    8000894c:	04079263          	bnez	a5,80008990 <_ZN28ConsumerProducerCPP_API_test8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80008950:	0104b783          	ld	a5,16(s1)
    80008954:	0007a583          	lw	a1,0(a5)
    80008958:	0305859b          	addiw	a1,a1,48
    8000895c:	0087b503          	ld	a0,8(a5)
    80008960:	ffffd097          	auipc	ra,0xffffd
    80008964:	13c080e7          	jalr	316(ra) # 80005a9c <_ZN9BufferCPP3putEi>
                i++;
    80008968:	0019071b          	addiw	a4,s2,1
    8000896c:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80008970:	0104b783          	ld	a5,16(s1)
    80008974:	0007a783          	lw	a5,0(a5)
    80008978:	00e787bb          	addw	a5,a5,a4
    8000897c:	00500513          	li	a0,5
    80008980:	02a7e53b          	remw	a0,a5,a0
    80008984:	ffffb097          	auipc	ra,0xffffb
    80008988:	4e0080e7          	jalr	1248(ra) # 80003e64 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    8000898c:	fb9ff06f          	j	80008944 <_ZN28ConsumerProducerCPP_API_test8Producer3runEv+0x20>
            td->sem->signal();
    80008990:	0104b783          	ld	a5,16(s1)
    80008994:	0107b503          	ld	a0,16(a5)
    80008998:	ffffb097          	auipc	ra,0xffffb
    8000899c:	634080e7          	jalr	1588(ra) # 80003fcc <_ZN9Semaphore6signalEv>
        }
    800089a0:	01813083          	ld	ra,24(sp)
    800089a4:	01013403          	ld	s0,16(sp)
    800089a8:	00813483          	ld	s1,8(sp)
    800089ac:	00013903          	ld	s2,0(sp)
    800089b0:	02010113          	addi	sp,sp,32
    800089b4:	00008067          	ret

00000000800089b8 <_ZN20Threads_CPP_API_test7WorkerA3runEv>:
        void run() override {
    800089b8:	ff010113          	addi	sp,sp,-16
    800089bc:	00113423          	sd	ra,8(sp)
    800089c0:	00813023          	sd	s0,0(sp)
    800089c4:	01010413          	addi	s0,sp,16
            workerBodyA(nullptr);
    800089c8:	00000593          	li	a1,0
    800089cc:	ffffe097          	auipc	ra,0xffffe
    800089d0:	d00080e7          	jalr	-768(ra) # 800066cc <_ZN20Threads_CPP_API_test7WorkerA11workerBodyAEPv>
        }
    800089d4:	00813083          	ld	ra,8(sp)
    800089d8:	00013403          	ld	s0,0(sp)
    800089dc:	01010113          	addi	sp,sp,16
    800089e0:	00008067          	ret

00000000800089e4 <_ZN20Threads_CPP_API_test7WorkerB3runEv>:
        void run() override {
    800089e4:	ff010113          	addi	sp,sp,-16
    800089e8:	00113423          	sd	ra,8(sp)
    800089ec:	00813023          	sd	s0,0(sp)
    800089f0:	01010413          	addi	s0,sp,16
            workerBodyB(nullptr);
    800089f4:	00000593          	li	a1,0
    800089f8:	ffffe097          	auipc	ra,0xffffe
    800089fc:	da0080e7          	jalr	-608(ra) # 80006798 <_ZN20Threads_CPP_API_test7WorkerB11workerBodyBEPv>
        }
    80008a00:	00813083          	ld	ra,8(sp)
    80008a04:	00013403          	ld	s0,0(sp)
    80008a08:	01010113          	addi	sp,sp,16
    80008a0c:	00008067          	ret

0000000080008a10 <_ZN20Threads_CPP_API_test7WorkerC3runEv>:
        void run() override {
    80008a10:	ff010113          	addi	sp,sp,-16
    80008a14:	00113423          	sd	ra,8(sp)
    80008a18:	00813023          	sd	s0,0(sp)
    80008a1c:	01010413          	addi	s0,sp,16
            workerBodyC(nullptr);
    80008a20:	00000593          	li	a1,0
    80008a24:	ffffe097          	auipc	ra,0xffffe
    80008a28:	e48080e7          	jalr	-440(ra) # 8000686c <_ZN20Threads_CPP_API_test7WorkerC11workerBodyCEPv>
        }
    80008a2c:	00813083          	ld	ra,8(sp)
    80008a30:	00013403          	ld	s0,0(sp)
    80008a34:	01010113          	addi	sp,sp,16
    80008a38:	00008067          	ret

0000000080008a3c <_ZN20Threads_CPP_API_test7WorkerD3runEv>:
        void run() override {
    80008a3c:	ff010113          	addi	sp,sp,-16
    80008a40:	00113423          	sd	ra,8(sp)
    80008a44:	00813023          	sd	s0,0(sp)
    80008a48:	01010413          	addi	s0,sp,16
            workerBodyD(nullptr);
    80008a4c:	00000593          	li	a1,0
    80008a50:	ffffe097          	auipc	ra,0xffffe
    80008a54:	f9c080e7          	jalr	-100(ra) # 800069ec <_ZN20Threads_CPP_API_test7WorkerD11workerBodyDEPv>
        }
    80008a58:	00813083          	ld	ra,8(sp)
    80008a5c:	00013403          	ld	s0,0(sp)
    80008a60:	01010113          	addi	sp,sp,16
    80008a64:	00008067          	ret

0000000080008a68 <_ZN6BufferdlEPv>:
    void operator delete(void* p)noexcept{
    80008a68:	ff010113          	addi	sp,sp,-16
    80008a6c:	00113423          	sd	ra,8(sp)
    80008a70:	00813023          	sd	s0,0(sp)
    80008a74:	01010413          	addi	s0,sp,16
    80008a78:	00050593          	mv	a1,a0
    80008a7c:	00007797          	auipc	a5,0x7
    80008a80:	05c7c783          	lbu	a5,92(a5) # 8000fad8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80008a84:	02078263          	beqz	a5,80008aa8 <_ZN6BufferdlEPv+0x40>
        MemoryAllocator::getInstance().memory_free(p);
    80008a88:	00007517          	auipc	a0,0x7
    80008a8c:	05850513          	addi	a0,a0,88 # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80008a90:	ffffc097          	auipc	ra,0xffffc
    80008a94:	24c080e7          	jalr	588(ra) # 80004cdc <_ZN15MemoryAllocator11memory_freeEPv>
    }
    80008a98:	00813083          	ld	ra,8(sp)
    80008a9c:	00013403          	ld	s0,0(sp)
    80008aa0:	01010113          	addi	sp,sp,16
    80008aa4:	00008067          	ret
    MemoryAllocator(){
    80008aa8:	00007617          	auipc	a2,0x7
    80008aac:	03860613          	addi	a2,a2,56 # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80008ab0:	00007797          	auipc	a5,0x7
    80008ab4:	e207b783          	ld	a5,-480(a5) # 8000f8d0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80008ab8:	0007b703          	ld	a4,0(a5)
    80008abc:	00007797          	auipc	a5,0x7
    80008ac0:	ddc7b783          	ld	a5,-548(a5) # 8000f898 <_GLOBAL_OFFSET_TABLE_+0x18>
    80008ac4:	0007b783          	ld	a5,0(a5)
    80008ac8:	40f706b3          	sub	a3,a4,a5
    80008acc:	0036d693          	srli	a3,a3,0x3
    80008ad0:	00d787b3          	add	a5,a5,a3
    80008ad4:	00178793          	addi	a5,a5,1
    80008ad8:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80008adc:	fff70713          	addi	a4,a4,-1
    80008ae0:	00e63823          	sd	a4,16(a2)
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80008ae4:	03f7f693          	andi	a3,a5,63
    80008ae8:	00068663          	beqz	a3,80008af4 <_ZN6BufferdlEPv+0x8c>
    80008aec:	04000613          	li	a2,64
    80008af0:	40d606b3          	sub	a3,a2,a3
    80008af4:	00d787b3          	add	a5,a5,a3
    80008af8:	00007697          	auipc	a3,0x7
    80008afc:	fef6b423          	sd	a5,-24(a3) # 8000fae0 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        size_t sizeInBlocks = (heapEnd - (size_t)fmem_head) / MEM_BLOCK_SIZE;
    80008b00:	40f70733          	sub	a4,a4,a5
    80008b04:	00675713          	srli	a4,a4,0x6
        fmem_head->next = nullptr;
    80008b08:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80008b0c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80008b10:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80008b14:	00100793          	li	a5,1
    80008b18:	00007717          	auipc	a4,0x7
    80008b1c:	fcf70023          	sb	a5,-64(a4) # 8000fad8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80008b20:	f69ff06f          	j	80008a88 <_ZN6BufferdlEPv+0x20>

0000000080008b24 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard3runEv>:
        void run() override {
    80008b24:	ff010113          	addi	sp,sp,-16
    80008b28:	00113423          	sd	ra,8(sp)
    80008b2c:	00813023          	sd	s0,0(sp)
    80008b30:	01010413          	addi	s0,sp,16
            producerKeyboard(td);
    80008b34:	01053583          	ld	a1,16(a0)
    80008b38:	ffffe097          	auipc	ra,0xffffe
    80008b3c:	610080e7          	jalr	1552(ra) # 80007148 <_ZN34ConsumerProducer_CPP_Sync_API_test16ProducerKeyboard16producerKeyboardEPv>
        }
    80008b40:	00813083          	ld	ra,8(sp)
    80008b44:	00013403          	ld	s0,0(sp)
    80008b48:	01010113          	addi	sp,sp,16
    80008b4c:	00008067          	ret

0000000080008b50 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer3runEv>:
        void run() override {
    80008b50:	ff010113          	addi	sp,sp,-16
    80008b54:	00113423          	sd	ra,8(sp)
    80008b58:	00813023          	sd	s0,0(sp)
    80008b5c:	01010413          	addi	s0,sp,16
            producer(td);
    80008b60:	01053583          	ld	a1,16(a0)
    80008b64:	ffffe097          	auipc	ra,0xffffe
    80008b68:	6a4080e7          	jalr	1700(ra) # 80007208 <_ZN34ConsumerProducer_CPP_Sync_API_test8Producer8producerEPv>
        }
    80008b6c:	00813083          	ld	ra,8(sp)
    80008b70:	00013403          	ld	s0,0(sp)
    80008b74:	01010113          	addi	sp,sp,16
    80008b78:	00008067          	ret

0000000080008b7c <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer3runEv>:
        void run() override {
    80008b7c:	ff010113          	addi	sp,sp,-16
    80008b80:	00113423          	sd	ra,8(sp)
    80008b84:	00813023          	sd	s0,0(sp)
    80008b88:	01010413          	addi	s0,sp,16
            consumer(td);
    80008b8c:	01053583          	ld	a1,16(a0)
    80008b90:	ffffe097          	auipc	ra,0xffffe
    80008b94:	70c080e7          	jalr	1804(ra) # 8000729c <_ZN34ConsumerProducer_CPP_Sync_API_test8Consumer8consumerEPv>
        }
    80008b98:	00813083          	ld	ra,8(sp)
    80008b9c:	00013403          	ld	s0,0(sp)
    80008ba0:	01010113          	addi	sp,sp,16
    80008ba4:	00008067          	ret

0000000080008ba8 <_Z9test_prviv>:
    long id;
    bool finished;
};


void test_prvi() {
    80008ba8:	fc010113          	addi	sp,sp,-64
    80008bac:	02113c23          	sd	ra,56(sp)
    80008bb0:	02813823          	sd	s0,48(sp)
    80008bb4:	02913423          	sd	s1,40(sp)
    80008bb8:	04010413          	addi	s0,sp,64
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80008bbc:	fc040493          	addi	s1,s0,-64
    80008bc0:	00048513          	mv	a0,s1
    80008bc4:	ffffb097          	auipc	ra,0xffffb
    80008bc8:	31c080e7          	jalr	796(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80008bcc:	00007797          	auipc	a5,0x7
    80008bd0:	c9c78793          	addi	a5,a5,-868 # 8000f868 <_ZTV10ForkThread+0x10>
    80008bd4:	fcf43023          	sd	a5,-64(s0)
    80008bd8:	00100793          	li	a5,1
    80008bdc:	fcf43823          	sd	a5,-48(s0)
    80008be0:	fc040c23          	sb	zero,-40(s0)
    ForkThread thread(1);

    thread.start();
    80008be4:	00048513          	mv	a0,s1
    80008be8:	ffffb097          	auipc	ra,0xffffb
    80008bec:	224080e7          	jalr	548(ra) # 80003e0c <_ZN6Thread5startEv>
        return finished;
    80008bf0:	fd844783          	lbu	a5,-40(s0)

    while (!thread.isFinished()) {
    80008bf4:	00079863          	bnez	a5,80008c04 <_Z9test_prviv+0x5c>
        thread_dispatch();
    80008bf8:	ffff8097          	auipc	ra,0xffff8
    80008bfc:	7a8080e7          	jalr	1960(ra) # 800013a0 <thread_dispatch>
    80008c00:	ff1ff06f          	j	80008bf0 <_Z9test_prviv+0x48>
    }

    printString("User main finished\n");
    80008c04:	00004517          	auipc	a0,0x4
    80008c08:	d0450513          	addi	a0,a0,-764 # 8000c908 <CONSOLE_STATUS+0x8f8>
    80008c0c:	ffffd097          	auipc	ra,0xffffd
    80008c10:	a80080e7          	jalr	-1408(ra) # 8000568c <_Z11printStringPKc>
class ForkThread : public Thread {
    80008c14:	00007797          	auipc	a5,0x7
    80008c18:	c5478793          	addi	a5,a5,-940 # 8000f868 <_ZTV10ForkThread+0x10>
    80008c1c:	fcf43023          	sd	a5,-64(s0)
    80008c20:	fc040513          	addi	a0,s0,-64
    80008c24:	ffffb097          	auipc	ra,0xffffb
    80008c28:	f78080e7          	jalr	-136(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008c2c:	03813083          	ld	ra,56(sp)
    80008c30:	03013403          	ld	s0,48(sp)
    80008c34:	02813483          	ld	s1,40(sp)
    80008c38:	04010113          	addi	sp,sp,64
    80008c3c:	00008067          	ret
    80008c40:	00050493          	mv	s1,a0
class ForkThread : public Thread {
    80008c44:	00007797          	auipc	a5,0x7
    80008c48:	c2478793          	addi	a5,a5,-988 # 8000f868 <_ZTV10ForkThread+0x10>
    80008c4c:	fcf43023          	sd	a5,-64(s0)
    80008c50:	fc040513          	addi	a0,s0,-64
    80008c54:	ffffb097          	auipc	ra,0xffffb
    80008c58:	f48080e7          	jalr	-184(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008c5c:	00048513          	mv	a0,s1
    80008c60:	000cb097          	auipc	ra,0xcb
    80008c64:	508080e7          	jalr	1288(ra) # 800d4168 <_Unwind_Resume>

0000000080008c68 <_ZN10ForkThread3runEv>:
    virtual void run() {
    80008c68:	fc010113          	addi	sp,sp,-64
    80008c6c:	02113c23          	sd	ra,56(sp)
    80008c70:	02813823          	sd	s0,48(sp)
    80008c74:	02913423          	sd	s1,40(sp)
    80008c78:	03213023          	sd	s2,32(sp)
    80008c7c:	01313c23          	sd	s3,24(sp)
    80008c80:	01413823          	sd	s4,16(sp)
    80008c84:	01513423          	sd	s5,8(sp)
    80008c88:	01613023          	sd	s6,0(sp)
    80008c8c:	04010413          	addi	s0,sp,64
    80008c90:	00050a13          	mv	s4,a0
        printString("Started thread id:");
    80008c94:	00004517          	auipc	a0,0x4
    80008c98:	c4450513          	addi	a0,a0,-956 # 8000c8d8 <CONSOLE_STATUS+0x8c8>
    80008c9c:	ffffd097          	auipc	ra,0xffffd
    80008ca0:	9f0080e7          	jalr	-1552(ra) # 8000568c <_Z11printStringPKc>
        printInt(id);
    80008ca4:	00000613          	li	a2,0
    80008ca8:	00a00593          	li	a1,10
    80008cac:	010a2503          	lw	a0,16(s4)
    80008cb0:	ffffd097          	auipc	ra,0xffffd
    80008cb4:	b74080e7          	jalr	-1164(ra) # 80005824 <_Z8printIntiii>
        printString("\n");
    80008cb8:	00003517          	auipc	a0,0x3
    80008cbc:	5c050513          	addi	a0,a0,1472 # 8000c278 <CONSOLE_STATUS+0x268>
    80008cc0:	ffffd097          	auipc	ra,0xffffd
    80008cc4:	9cc080e7          	jalr	-1588(ra) # 8000568c <_Z11printStringPKc>
        ForkThread* thread = new ForkThread(id + 1);
    80008cc8:	02000513          	li	a0,32
    80008ccc:	ffffb097          	auipc	ra,0xffffb
    80008cd0:	f78080e7          	jalr	-136(ra) # 80003c44 <_Znwm>
    80008cd4:	00050993          	mv	s3,a0
    80008cd8:	02050463          	beqz	a0,80008d00 <_ZN10ForkThread3runEv+0x98>
    80008cdc:	010a3483          	ld	s1,16(s4)
    80008ce0:	00148493          	addi	s1,s1,1
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80008ce4:	ffffb097          	auipc	ra,0xffffb
    80008ce8:	1fc080e7          	jalr	508(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80008cec:	00007797          	auipc	a5,0x7
    80008cf0:	b7c78793          	addi	a5,a5,-1156 # 8000f868 <_ZTV10ForkThread+0x10>
    80008cf4:	00f9b023          	sd	a5,0(s3)
    80008cf8:	0099b823          	sd	s1,16(s3)
    80008cfc:	00098c23          	sb	zero,24(s3)
        ForkThread** threads = (ForkThread**) mem_alloc(sizeof(ForkThread*) * id);
    80008d00:	010a3503          	ld	a0,16(s4)
    80008d04:	00351513          	slli	a0,a0,0x3
    80008d08:	ffff8097          	auipc	ra,0xffff8
    80008d0c:	53c080e7          	jalr	1340(ra) # 80001244 <mem_alloc>
    80008d10:	00050a93          	mv	s5,a0
        if (threads != nullptr) {
    80008d14:	10050863          	beqz	a0,80008e24 <_ZN10ForkThread3runEv+0x1bc>
            for (long i = 0; i < id; i++) {
    80008d18:	00000913          	li	s2,0
    80008d1c:	0140006f          	j	80008d30 <_ZN10ForkThread3runEv+0xc8>
                threads[i] = new ForkThread(id);
    80008d20:	00391793          	slli	a5,s2,0x3
    80008d24:	00fa87b3          	add	a5,s5,a5
    80008d28:	0097b023          	sd	s1,0(a5)
            for (long i = 0; i < id; i++) {
    80008d2c:	00190913          	addi	s2,s2,1
    80008d30:	010a3783          	ld	a5,16(s4)
    80008d34:	02f95e63          	bge	s2,a5,80008d70 <_ZN10ForkThread3runEv+0x108>
                threads[i] = new ForkThread(id);
    80008d38:	02000513          	li	a0,32
    80008d3c:	ffffb097          	auipc	ra,0xffffb
    80008d40:	f08080e7          	jalr	-248(ra) # 80003c44 <_Znwm>
    80008d44:	00050493          	mv	s1,a0
    80008d48:	fc050ce3          	beqz	a0,80008d20 <_ZN10ForkThread3runEv+0xb8>
    80008d4c:	010a3b03          	ld	s6,16(s4)
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80008d50:	ffffb097          	auipc	ra,0xffffb
    80008d54:	190080e7          	jalr	400(ra) # 80003ee0 <_ZN6ThreadC1Ev>
    80008d58:	00007797          	auipc	a5,0x7
    80008d5c:	b1078793          	addi	a5,a5,-1264 # 8000f868 <_ZTV10ForkThread+0x10>
    80008d60:	00f4b023          	sd	a5,0(s1)
    80008d64:	0164b823          	sd	s6,16(s1)
    80008d68:	00048c23          	sb	zero,24(s1)
    80008d6c:	fb5ff06f          	j	80008d20 <_ZN10ForkThread3runEv+0xb8>
            if (thread != nullptr) {
    80008d70:	06098a63          	beqz	s3,80008de4 <_ZN10ForkThread3runEv+0x17c>
                if (thread->start() == 0) {
    80008d74:	00098513          	mv	a0,s3
    80008d78:	ffffb097          	auipc	ra,0xffffb
    80008d7c:	094080e7          	jalr	148(ra) # 80003e0c <_ZN6Thread5startEv>
    80008d80:	00050913          	mv	s2,a0
    80008d84:	04051863          	bnez	a0,80008dd4 <_ZN10ForkThread3runEv+0x16c>
                    for (int i = 0; i < 5000; i++) {
    80008d88:	00050493          	mv	s1,a0
    80008d8c:	0100006f          	j	80008d9c <_ZN10ForkThread3runEv+0x134>
                        thread_dispatch();
    80008d90:	ffff8097          	auipc	ra,0xffff8
    80008d94:	610080e7          	jalr	1552(ra) # 800013a0 <thread_dispatch>
                    for (int i = 0; i < 5000; i++) {
    80008d98:	0014849b          	addiw	s1,s1,1
    80008d9c:	000017b7          	lui	a5,0x1
    80008da0:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80008da4:	0097ce63          	blt	a5,s1,80008dc0 <_ZN10ForkThread3runEv+0x158>
                        for (int j = 0; j < 5000; j++) {
    80008da8:	00090713          	mv	a4,s2
    80008dac:	000017b7          	lui	a5,0x1
    80008db0:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80008db4:	fce7cee3          	blt	a5,a4,80008d90 <_ZN10ForkThread3runEv+0x128>
    80008db8:	0017071b          	addiw	a4,a4,1
    80008dbc:	ff1ff06f          	j	80008dac <_ZN10ForkThread3runEv+0x144>
        return finished;
    80008dc0:	0189c783          	lbu	a5,24(s3)
                    while (!thread->isFinished()) {
    80008dc4:	00079863          	bnez	a5,80008dd4 <_ZN10ForkThread3runEv+0x16c>
                        thread_dispatch();
    80008dc8:	ffff8097          	auipc	ra,0xffff8
    80008dcc:	5d8080e7          	jalr	1496(ra) # 800013a0 <thread_dispatch>
                    while (!thread->isFinished()) {
    80008dd0:	ff1ff06f          	j	80008dc0 <_ZN10ForkThread3runEv+0x158>
                delete thread;
    80008dd4:	0009b783          	ld	a5,0(s3)
    80008dd8:	0087b783          	ld	a5,8(a5)
    80008ddc:	00098513          	mv	a0,s3
    80008de0:	000780e7          	jalr	a5
                        for (int j = 0; j < 5000; j++) {
    80008de4:	00000493          	li	s1,0
    80008de8:	0080006f          	j	80008df0 <_ZN10ForkThread3runEv+0x188>
            for (long i = 0; i < id; i++) {
    80008dec:	00148493          	addi	s1,s1,1
    80008df0:	010a3783          	ld	a5,16(s4)
    80008df4:	02f4d263          	bge	s1,a5,80008e18 <_ZN10ForkThread3runEv+0x1b0>
                delete threads[i];
    80008df8:	00349793          	slli	a5,s1,0x3
    80008dfc:	00fa87b3          	add	a5,s5,a5
    80008e00:	0007b503          	ld	a0,0(a5)
    80008e04:	fe0504e3          	beqz	a0,80008dec <_ZN10ForkThread3runEv+0x184>
    80008e08:	00053783          	ld	a5,0(a0)
    80008e0c:	0087b783          	ld	a5,8(a5)
    80008e10:	000780e7          	jalr	a5
    80008e14:	fd9ff06f          	j	80008dec <_ZN10ForkThread3runEv+0x184>
            mem_free(threads);
    80008e18:	000a8513          	mv	a0,s5
    80008e1c:	ffff8097          	auipc	ra,0xffff8
    80008e20:	480080e7          	jalr	1152(ra) # 8000129c <mem_free>
        printString("Finished thread id:");
    80008e24:	00004517          	auipc	a0,0x4
    80008e28:	acc50513          	addi	a0,a0,-1332 # 8000c8f0 <CONSOLE_STATUS+0x8e0>
    80008e2c:	ffffd097          	auipc	ra,0xffffd
    80008e30:	860080e7          	jalr	-1952(ra) # 8000568c <_Z11printStringPKc>
        printInt(id);
    80008e34:	00000613          	li	a2,0
    80008e38:	00a00593          	li	a1,10
    80008e3c:	010a2503          	lw	a0,16(s4)
    80008e40:	ffffd097          	auipc	ra,0xffffd
    80008e44:	9e4080e7          	jalr	-1564(ra) # 80005824 <_Z8printIntiii>
        printString("\n");
    80008e48:	00003517          	auipc	a0,0x3
    80008e4c:	43050513          	addi	a0,a0,1072 # 8000c278 <CONSOLE_STATUS+0x268>
    80008e50:	ffffd097          	auipc	ra,0xffffd
    80008e54:	83c080e7          	jalr	-1988(ra) # 8000568c <_Z11printStringPKc>
        finished = true;
    80008e58:	00100793          	li	a5,1
    80008e5c:	00fa0c23          	sb	a5,24(s4)
    }
    80008e60:	03813083          	ld	ra,56(sp)
    80008e64:	03013403          	ld	s0,48(sp)
    80008e68:	02813483          	ld	s1,40(sp)
    80008e6c:	02013903          	ld	s2,32(sp)
    80008e70:	01813983          	ld	s3,24(sp)
    80008e74:	01013a03          	ld	s4,16(sp)
    80008e78:	00813a83          	ld	s5,8(sp)
    80008e7c:	00013b03          	ld	s6,0(sp)
    80008e80:	04010113          	addi	sp,sp,64
    80008e84:	00008067          	ret

0000000080008e88 <_ZN10ForkThreadD1Ev>:
class ForkThread : public Thread {
    80008e88:	ff010113          	addi	sp,sp,-16
    80008e8c:	00113423          	sd	ra,8(sp)
    80008e90:	00813023          	sd	s0,0(sp)
    80008e94:	01010413          	addi	s0,sp,16
    80008e98:	00007797          	auipc	a5,0x7
    80008e9c:	9d078793          	addi	a5,a5,-1584 # 8000f868 <_ZTV10ForkThread+0x10>
    80008ea0:	00f53023          	sd	a5,0(a0)
    80008ea4:	ffffb097          	auipc	ra,0xffffb
    80008ea8:	cf8080e7          	jalr	-776(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008eac:	00813083          	ld	ra,8(sp)
    80008eb0:	00013403          	ld	s0,0(sp)
    80008eb4:	01010113          	addi	sp,sp,16
    80008eb8:	00008067          	ret

0000000080008ebc <_ZN10ForkThreadD0Ev>:
    80008ebc:	fe010113          	addi	sp,sp,-32
    80008ec0:	00113c23          	sd	ra,24(sp)
    80008ec4:	00813823          	sd	s0,16(sp)
    80008ec8:	00913423          	sd	s1,8(sp)
    80008ecc:	02010413          	addi	s0,sp,32
    80008ed0:	00050493          	mv	s1,a0
    80008ed4:	00007797          	auipc	a5,0x7
    80008ed8:	99478793          	addi	a5,a5,-1644 # 8000f868 <_ZTV10ForkThread+0x10>
    80008edc:	00f53023          	sd	a5,0(a0)
    80008ee0:	ffffb097          	auipc	ra,0xffffb
    80008ee4:	cbc080e7          	jalr	-836(ra) # 80003b9c <_ZN6ThreadD1Ev>
    80008ee8:	00048513          	mv	a0,s1
    80008eec:	ffffb097          	auipc	ra,0xffffb
    80008ef0:	da8080e7          	jalr	-600(ra) # 80003c94 <_ZdlPv>
    80008ef4:	01813083          	ld	ra,24(sp)
    80008ef8:	01013403          	ld	s0,16(sp)
    80008efc:	00813483          	ld	s1,8(sp)
    80008f00:	02010113          	addi	sp,sp,32
    80008f04:	00008067          	ret

0000000080008f08 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80008f08:	fe010113          	addi	sp,sp,-32
    80008f0c:	00113c23          	sd	ra,24(sp)
    80008f10:	00813823          	sd	s0,16(sp)
    80008f14:	00913423          	sd	s1,8(sp)
    80008f18:	01213023          	sd	s2,0(sp)
    80008f1c:	02010413          	addi	s0,sp,32
    80008f20:	00050493          	mv	s1,a0
    80008f24:	00058913          	mv	s2,a1
    80008f28:	0015879b          	addiw	a5,a1,1
    80008f2c:	0007851b          	sext.w	a0,a5
    80008f30:	00f4a023          	sw	a5,0(s1)
    80008f34:	0004a823          	sw	zero,16(s1)
    80008f38:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80008f3c:	00251513          	slli	a0,a0,0x2
    80008f40:	ffff8097          	auipc	ra,0xffff8
    80008f44:	304080e7          	jalr	772(ra) # 80001244 <mem_alloc>
    80008f48:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80008f4c:	00000593          	li	a1,0
    80008f50:	02048513          	addi	a0,s1,32
    80008f54:	ffff8097          	auipc	ra,0xffff8
    80008f58:	550080e7          	jalr	1360(ra) # 800014a4 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80008f5c:	00090593          	mv	a1,s2
    80008f60:	01848513          	addi	a0,s1,24
    80008f64:	ffff8097          	auipc	ra,0xffff8
    80008f68:	540080e7          	jalr	1344(ra) # 800014a4 <sem_open>
    sem_open(&mutexHead, 1);
    80008f6c:	00100593          	li	a1,1
    80008f70:	02848513          	addi	a0,s1,40
    80008f74:	ffff8097          	auipc	ra,0xffff8
    80008f78:	530080e7          	jalr	1328(ra) # 800014a4 <sem_open>
    sem_open(&mutexTail, 1);
    80008f7c:	00100593          	li	a1,1
    80008f80:	03048513          	addi	a0,s1,48
    80008f84:	ffff8097          	auipc	ra,0xffff8
    80008f88:	520080e7          	jalr	1312(ra) # 800014a4 <sem_open>
}
    80008f8c:	01813083          	ld	ra,24(sp)
    80008f90:	01013403          	ld	s0,16(sp)
    80008f94:	00813483          	ld	s1,8(sp)
    80008f98:	00013903          	ld	s2,0(sp)
    80008f9c:	02010113          	addi	sp,sp,32
    80008fa0:	00008067          	ret

0000000080008fa4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80008fa4:	fe010113          	addi	sp,sp,-32
    80008fa8:	00113c23          	sd	ra,24(sp)
    80008fac:	00813823          	sd	s0,16(sp)
    80008fb0:	00913423          	sd	s1,8(sp)
    80008fb4:	01213023          	sd	s2,0(sp)
    80008fb8:	02010413          	addi	s0,sp,32
    80008fbc:	00050493          	mv	s1,a0
    80008fc0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80008fc4:	01853503          	ld	a0,24(a0)
    80008fc8:	ffff8097          	auipc	ra,0xffff8
    80008fcc:	584080e7          	jalr	1412(ra) # 8000154c <sem_wait>

    sem_wait(mutexTail);
    80008fd0:	0304b503          	ld	a0,48(s1)
    80008fd4:	ffff8097          	auipc	ra,0xffff8
    80008fd8:	578080e7          	jalr	1400(ra) # 8000154c <sem_wait>
    buffer[tail] = val;
    80008fdc:	0084b783          	ld	a5,8(s1)
    80008fe0:	0144a703          	lw	a4,20(s1)
    80008fe4:	00271713          	slli	a4,a4,0x2
    80008fe8:	00e787b3          	add	a5,a5,a4
    80008fec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80008ff0:	0144a783          	lw	a5,20(s1)
    80008ff4:	0017879b          	addiw	a5,a5,1
    80008ff8:	0004a703          	lw	a4,0(s1)
    80008ffc:	02e7e7bb          	remw	a5,a5,a4
    80009000:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80009004:	0304b503          	ld	a0,48(s1)
    80009008:	ffff8097          	auipc	ra,0xffff8
    8000900c:	598080e7          	jalr	1432(ra) # 800015a0 <sem_signal>

    sem_signal(itemAvailable);
    80009010:	0204b503          	ld	a0,32(s1)
    80009014:	ffff8097          	auipc	ra,0xffff8
    80009018:	58c080e7          	jalr	1420(ra) # 800015a0 <sem_signal>

}
    8000901c:	01813083          	ld	ra,24(sp)
    80009020:	01013403          	ld	s0,16(sp)
    80009024:	00813483          	ld	s1,8(sp)
    80009028:	00013903          	ld	s2,0(sp)
    8000902c:	02010113          	addi	sp,sp,32
    80009030:	00008067          	ret

0000000080009034 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80009034:	fe010113          	addi	sp,sp,-32
    80009038:	00113c23          	sd	ra,24(sp)
    8000903c:	00813823          	sd	s0,16(sp)
    80009040:	00913423          	sd	s1,8(sp)
    80009044:	01213023          	sd	s2,0(sp)
    80009048:	02010413          	addi	s0,sp,32
    8000904c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80009050:	02053503          	ld	a0,32(a0)
    80009054:	ffff8097          	auipc	ra,0xffff8
    80009058:	4f8080e7          	jalr	1272(ra) # 8000154c <sem_wait>

    sem_wait(mutexHead);
    8000905c:	0284b503          	ld	a0,40(s1)
    80009060:	ffff8097          	auipc	ra,0xffff8
    80009064:	4ec080e7          	jalr	1260(ra) # 8000154c <sem_wait>

    int ret = buffer[head];
    80009068:	0084b703          	ld	a4,8(s1)
    8000906c:	0104a783          	lw	a5,16(s1)
    80009070:	00279693          	slli	a3,a5,0x2
    80009074:	00d70733          	add	a4,a4,a3
    80009078:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000907c:	0017879b          	addiw	a5,a5,1
    80009080:	0004a703          	lw	a4,0(s1)
    80009084:	02e7e7bb          	remw	a5,a5,a4
    80009088:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000908c:	0284b503          	ld	a0,40(s1)
    80009090:	ffff8097          	auipc	ra,0xffff8
    80009094:	510080e7          	jalr	1296(ra) # 800015a0 <sem_signal>

    sem_signal(spaceAvailable);
    80009098:	0184b503          	ld	a0,24(s1)
    8000909c:	ffff8097          	auipc	ra,0xffff8
    800090a0:	504080e7          	jalr	1284(ra) # 800015a0 <sem_signal>

    return ret;
}
    800090a4:	00090513          	mv	a0,s2
    800090a8:	01813083          	ld	ra,24(sp)
    800090ac:	01013403          	ld	s0,16(sp)
    800090b0:	00813483          	ld	s1,8(sp)
    800090b4:	00013903          	ld	s2,0(sp)
    800090b8:	02010113          	addi	sp,sp,32
    800090bc:	00008067          	ret

00000000800090c0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800090c0:	fe010113          	addi	sp,sp,-32
    800090c4:	00113c23          	sd	ra,24(sp)
    800090c8:	00813823          	sd	s0,16(sp)
    800090cc:	00913423          	sd	s1,8(sp)
    800090d0:	01213023          	sd	s2,0(sp)
    800090d4:	02010413          	addi	s0,sp,32
    800090d8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800090dc:	02853503          	ld	a0,40(a0)
    800090e0:	ffff8097          	auipc	ra,0xffff8
    800090e4:	46c080e7          	jalr	1132(ra) # 8000154c <sem_wait>
    sem_wait(mutexTail);
    800090e8:	0304b503          	ld	a0,48(s1)
    800090ec:	ffff8097          	auipc	ra,0xffff8
    800090f0:	460080e7          	jalr	1120(ra) # 8000154c <sem_wait>

    if (tail >= head) {
    800090f4:	0144a783          	lw	a5,20(s1)
    800090f8:	0104a903          	lw	s2,16(s1)
    800090fc:	0327ce63          	blt	a5,s2,80009138 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80009100:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80009104:	0304b503          	ld	a0,48(s1)
    80009108:	ffff8097          	auipc	ra,0xffff8
    8000910c:	498080e7          	jalr	1176(ra) # 800015a0 <sem_signal>
    sem_signal(mutexHead);
    80009110:	0284b503          	ld	a0,40(s1)
    80009114:	ffff8097          	auipc	ra,0xffff8
    80009118:	48c080e7          	jalr	1164(ra) # 800015a0 <sem_signal>

    return ret;
}
    8000911c:	00090513          	mv	a0,s2
    80009120:	01813083          	ld	ra,24(sp)
    80009124:	01013403          	ld	s0,16(sp)
    80009128:	00813483          	ld	s1,8(sp)
    8000912c:	00013903          	ld	s2,0(sp)
    80009130:	02010113          	addi	sp,sp,32
    80009134:	00008067          	ret
        ret = cap - head + tail;
    80009138:	0004a703          	lw	a4,0(s1)
    8000913c:	4127093b          	subw	s2,a4,s2
    80009140:	00f9093b          	addw	s2,s2,a5
    80009144:	fc1ff06f          	j	80009104 <_ZN6Buffer6getCntEv+0x44>

0000000080009148 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80009148:	fe010113          	addi	sp,sp,-32
    8000914c:	00113c23          	sd	ra,24(sp)
    80009150:	00813823          	sd	s0,16(sp)
    80009154:	00913423          	sd	s1,8(sp)
    80009158:	02010413          	addi	s0,sp,32
    8000915c:	00050493          	mv	s1,a0
    putc('\n');
    80009160:	00a00513          	li	a0,10
    80009164:	ffff8097          	auipc	ra,0xffff8
    80009168:	4e4080e7          	jalr	1252(ra) # 80001648 <putc>
    printString("Buffer deleted!\n");
    8000916c:	00003517          	auipc	a0,0x3
    80009170:	39450513          	addi	a0,a0,916 # 8000c500 <CONSOLE_STATUS+0x4f0>
    80009174:	ffffc097          	auipc	ra,0xffffc
    80009178:	518080e7          	jalr	1304(ra) # 8000568c <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000917c:	00048513          	mv	a0,s1
    80009180:	00000097          	auipc	ra,0x0
    80009184:	f40080e7          	jalr	-192(ra) # 800090c0 <_ZN6Buffer6getCntEv>
    80009188:	02a05c63          	blez	a0,800091c0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000918c:	0084b783          	ld	a5,8(s1)
    80009190:	0104a703          	lw	a4,16(s1)
    80009194:	00271713          	slli	a4,a4,0x2
    80009198:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000919c:	0007c503          	lbu	a0,0(a5)
    800091a0:	ffff8097          	auipc	ra,0xffff8
    800091a4:	4a8080e7          	jalr	1192(ra) # 80001648 <putc>
        head = (head + 1) % cap;
    800091a8:	0104a783          	lw	a5,16(s1)
    800091ac:	0017879b          	addiw	a5,a5,1
    800091b0:	0004a703          	lw	a4,0(s1)
    800091b4:	02e7e7bb          	remw	a5,a5,a4
    800091b8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800091bc:	fc1ff06f          	j	8000917c <_ZN6BufferD1Ev+0x34>
    putc('!');
    800091c0:	02100513          	li	a0,33
    800091c4:	ffff8097          	auipc	ra,0xffff8
    800091c8:	484080e7          	jalr	1156(ra) # 80001648 <putc>
    putc('\n');
    800091cc:	00a00513          	li	a0,10
    800091d0:	ffff8097          	auipc	ra,0xffff8
    800091d4:	478080e7          	jalr	1144(ra) # 80001648 <putc>
    mem_free(buffer);
    800091d8:	0084b503          	ld	a0,8(s1)
    800091dc:	ffff8097          	auipc	ra,0xffff8
    800091e0:	0c0080e7          	jalr	192(ra) # 8000129c <mem_free>
    sem_close(itemAvailable);
    800091e4:	0204b503          	ld	a0,32(s1)
    800091e8:	ffff8097          	auipc	ra,0xffff8
    800091ec:	310080e7          	jalr	784(ra) # 800014f8 <sem_close>
    sem_close(spaceAvailable);
    800091f0:	0184b503          	ld	a0,24(s1)
    800091f4:	ffff8097          	auipc	ra,0xffff8
    800091f8:	304080e7          	jalr	772(ra) # 800014f8 <sem_close>
    sem_close(mutexTail);
    800091fc:	0304b503          	ld	a0,48(s1)
    80009200:	ffff8097          	auipc	ra,0xffff8
    80009204:	2f8080e7          	jalr	760(ra) # 800014f8 <sem_close>
    sem_close(mutexHead);
    80009208:	0284b503          	ld	a0,40(s1)
    8000920c:	ffff8097          	auipc	ra,0xffff8
    80009210:	2ec080e7          	jalr	748(ra) # 800014f8 <sem_close>
}
    80009214:	01813083          	ld	ra,24(sp)
    80009218:	01013403          	ld	s0,16(sp)
    8000921c:	00813483          	ld	s1,8(sp)
    80009220:	02010113          	addi	sp,sp,32
    80009224:	00008067          	ret

0000000080009228 <start>:
    80009228:	ff010113          	addi	sp,sp,-16
    8000922c:	00813423          	sd	s0,8(sp)
    80009230:	01010413          	addi	s0,sp,16
    80009234:	300027f3          	csrr	a5,mstatus
    80009238:	ffffe737          	lui	a4,0xffffe
    8000923c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ff2a4ff>
    80009240:	00e7f7b3          	and	a5,a5,a4
    80009244:	00001737          	lui	a4,0x1
    80009248:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000924c:	00e7e7b3          	or	a5,a5,a4
    80009250:	30079073          	csrw	mstatus,a5
    80009254:	00000797          	auipc	a5,0x0
    80009258:	16078793          	addi	a5,a5,352 # 800093b4 <system_main>
    8000925c:	34179073          	csrw	mepc,a5
    80009260:	00000793          	li	a5,0
    80009264:	18079073          	csrw	satp,a5
    80009268:	000107b7          	lui	a5,0x10
    8000926c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80009270:	30279073          	csrw	medeleg,a5
    80009274:	30379073          	csrw	mideleg,a5
    80009278:	104027f3          	csrr	a5,sie
    8000927c:	2227e793          	ori	a5,a5,546
    80009280:	10479073          	csrw	sie,a5
    80009284:	fff00793          	li	a5,-1
    80009288:	00a7d793          	srli	a5,a5,0xa
    8000928c:	3b079073          	csrw	pmpaddr0,a5
    80009290:	00f00793          	li	a5,15
    80009294:	3a079073          	csrw	pmpcfg0,a5
    80009298:	f14027f3          	csrr	a5,mhartid
    8000929c:	0200c737          	lui	a4,0x200c
    800092a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800092a4:	0007869b          	sext.w	a3,a5
    800092a8:	00269713          	slli	a4,a3,0x2
    800092ac:	000f4637          	lui	a2,0xf4
    800092b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800092b4:	00d70733          	add	a4,a4,a3
    800092b8:	0037979b          	slliw	a5,a5,0x3
    800092bc:	020046b7          	lui	a3,0x2004
    800092c0:	00d787b3          	add	a5,a5,a3
    800092c4:	00c585b3          	add	a1,a1,a2
    800092c8:	00371693          	slli	a3,a4,0x3
    800092cc:	000ca717          	auipc	a4,0xca
    800092d0:	dd470713          	addi	a4,a4,-556 # 800d30a0 <timer_scratch>
    800092d4:	00b7b023          	sd	a1,0(a5)
    800092d8:	00d70733          	add	a4,a4,a3
    800092dc:	00f73c23          	sd	a5,24(a4)
    800092e0:	02c73023          	sd	a2,32(a4)
    800092e4:	34071073          	csrw	mscratch,a4
    800092e8:	00000797          	auipc	a5,0x0
    800092ec:	6e878793          	addi	a5,a5,1768 # 800099d0 <timervec>
    800092f0:	30579073          	csrw	mtvec,a5
    800092f4:	300027f3          	csrr	a5,mstatus
    800092f8:	0087e793          	ori	a5,a5,8
    800092fc:	30079073          	csrw	mstatus,a5
    80009300:	304027f3          	csrr	a5,mie
    80009304:	0807e793          	ori	a5,a5,128
    80009308:	30479073          	csrw	mie,a5
    8000930c:	f14027f3          	csrr	a5,mhartid
    80009310:	0007879b          	sext.w	a5,a5
    80009314:	00078213          	mv	tp,a5
    80009318:	30200073          	mret
    8000931c:	00813403          	ld	s0,8(sp)
    80009320:	01010113          	addi	sp,sp,16
    80009324:	00008067          	ret

0000000080009328 <timerinit>:
    80009328:	ff010113          	addi	sp,sp,-16
    8000932c:	00813423          	sd	s0,8(sp)
    80009330:	01010413          	addi	s0,sp,16
    80009334:	f14027f3          	csrr	a5,mhartid
    80009338:	0200c737          	lui	a4,0x200c
    8000933c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80009340:	0007869b          	sext.w	a3,a5
    80009344:	00269713          	slli	a4,a3,0x2
    80009348:	000f4637          	lui	a2,0xf4
    8000934c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80009350:	00d70733          	add	a4,a4,a3
    80009354:	0037979b          	slliw	a5,a5,0x3
    80009358:	020046b7          	lui	a3,0x2004
    8000935c:	00d787b3          	add	a5,a5,a3
    80009360:	00c585b3          	add	a1,a1,a2
    80009364:	00371693          	slli	a3,a4,0x3
    80009368:	000ca717          	auipc	a4,0xca
    8000936c:	d3870713          	addi	a4,a4,-712 # 800d30a0 <timer_scratch>
    80009370:	00b7b023          	sd	a1,0(a5)
    80009374:	00d70733          	add	a4,a4,a3
    80009378:	00f73c23          	sd	a5,24(a4)
    8000937c:	02c73023          	sd	a2,32(a4)
    80009380:	34071073          	csrw	mscratch,a4
    80009384:	00000797          	auipc	a5,0x0
    80009388:	64c78793          	addi	a5,a5,1612 # 800099d0 <timervec>
    8000938c:	30579073          	csrw	mtvec,a5
    80009390:	300027f3          	csrr	a5,mstatus
    80009394:	0087e793          	ori	a5,a5,8
    80009398:	30079073          	csrw	mstatus,a5
    8000939c:	304027f3          	csrr	a5,mie
    800093a0:	0807e793          	ori	a5,a5,128
    800093a4:	30479073          	csrw	mie,a5
    800093a8:	00813403          	ld	s0,8(sp)
    800093ac:	01010113          	addi	sp,sp,16
    800093b0:	00008067          	ret

00000000800093b4 <system_main>:
    800093b4:	fe010113          	addi	sp,sp,-32
    800093b8:	00813823          	sd	s0,16(sp)
    800093bc:	00913423          	sd	s1,8(sp)
    800093c0:	00113c23          	sd	ra,24(sp)
    800093c4:	02010413          	addi	s0,sp,32
    800093c8:	00000097          	auipc	ra,0x0
    800093cc:	0c4080e7          	jalr	196(ra) # 8000948c <cpuid>
    800093d0:	00006497          	auipc	s1,0x6
    800093d4:	52048493          	addi	s1,s1,1312 # 8000f8f0 <started>
    800093d8:	02050263          	beqz	a0,800093fc <system_main+0x48>
    800093dc:	0004a783          	lw	a5,0(s1)
    800093e0:	0007879b          	sext.w	a5,a5
    800093e4:	fe078ce3          	beqz	a5,800093dc <system_main+0x28>
    800093e8:	0ff0000f          	fence
    800093ec:	00003517          	auipc	a0,0x3
    800093f0:	56450513          	addi	a0,a0,1380 # 8000c950 <CONSOLE_STATUS+0x940>
    800093f4:	00001097          	auipc	ra,0x1
    800093f8:	a78080e7          	jalr	-1416(ra) # 80009e6c <panic>
    800093fc:	00001097          	auipc	ra,0x1
    80009400:	9cc080e7          	jalr	-1588(ra) # 80009dc8 <consoleinit>
    80009404:	00001097          	auipc	ra,0x1
    80009408:	158080e7          	jalr	344(ra) # 8000a55c <printfinit>
    8000940c:	00003517          	auipc	a0,0x3
    80009410:	e6c50513          	addi	a0,a0,-404 # 8000c278 <CONSOLE_STATUS+0x268>
    80009414:	00001097          	auipc	ra,0x1
    80009418:	ab4080e7          	jalr	-1356(ra) # 80009ec8 <__printf>
    8000941c:	00003517          	auipc	a0,0x3
    80009420:	50450513          	addi	a0,a0,1284 # 8000c920 <CONSOLE_STATUS+0x910>
    80009424:	00001097          	auipc	ra,0x1
    80009428:	aa4080e7          	jalr	-1372(ra) # 80009ec8 <__printf>
    8000942c:	00003517          	auipc	a0,0x3
    80009430:	e4c50513          	addi	a0,a0,-436 # 8000c278 <CONSOLE_STATUS+0x268>
    80009434:	00001097          	auipc	ra,0x1
    80009438:	a94080e7          	jalr	-1388(ra) # 80009ec8 <__printf>
    8000943c:	00001097          	auipc	ra,0x1
    80009440:	4ac080e7          	jalr	1196(ra) # 8000a8e8 <kinit>
    80009444:	00000097          	auipc	ra,0x0
    80009448:	148080e7          	jalr	328(ra) # 8000958c <trapinit>
    8000944c:	00000097          	auipc	ra,0x0
    80009450:	16c080e7          	jalr	364(ra) # 800095b8 <trapinithart>
    80009454:	00000097          	auipc	ra,0x0
    80009458:	5bc080e7          	jalr	1468(ra) # 80009a10 <plicinit>
    8000945c:	00000097          	auipc	ra,0x0
    80009460:	5dc080e7          	jalr	1500(ra) # 80009a38 <plicinithart>
    80009464:	00000097          	auipc	ra,0x0
    80009468:	078080e7          	jalr	120(ra) # 800094dc <userinit>
    8000946c:	0ff0000f          	fence
    80009470:	00100793          	li	a5,1
    80009474:	00003517          	auipc	a0,0x3
    80009478:	4c450513          	addi	a0,a0,1220 # 8000c938 <CONSOLE_STATUS+0x928>
    8000947c:	00f4a023          	sw	a5,0(s1)
    80009480:	00001097          	auipc	ra,0x1
    80009484:	a48080e7          	jalr	-1464(ra) # 80009ec8 <__printf>
    80009488:	0000006f          	j	80009488 <system_main+0xd4>

000000008000948c <cpuid>:
    8000948c:	ff010113          	addi	sp,sp,-16
    80009490:	00813423          	sd	s0,8(sp)
    80009494:	01010413          	addi	s0,sp,16
    80009498:	00020513          	mv	a0,tp
    8000949c:	00813403          	ld	s0,8(sp)
    800094a0:	0005051b          	sext.w	a0,a0
    800094a4:	01010113          	addi	sp,sp,16
    800094a8:	00008067          	ret

00000000800094ac <mycpu>:
    800094ac:	ff010113          	addi	sp,sp,-16
    800094b0:	00813423          	sd	s0,8(sp)
    800094b4:	01010413          	addi	s0,sp,16
    800094b8:	00020793          	mv	a5,tp
    800094bc:	00813403          	ld	s0,8(sp)
    800094c0:	0007879b          	sext.w	a5,a5
    800094c4:	00779793          	slli	a5,a5,0x7
    800094c8:	000cb517          	auipc	a0,0xcb
    800094cc:	c0850513          	addi	a0,a0,-1016 # 800d40d0 <cpus>
    800094d0:	00f50533          	add	a0,a0,a5
    800094d4:	01010113          	addi	sp,sp,16
    800094d8:	00008067          	ret

00000000800094dc <userinit>:
    800094dc:	ff010113          	addi	sp,sp,-16
    800094e0:	00813423          	sd	s0,8(sp)
    800094e4:	01010413          	addi	s0,sp,16
    800094e8:	00813403          	ld	s0,8(sp)
    800094ec:	01010113          	addi	sp,sp,16
    800094f0:	ffff9317          	auipc	t1,0xffff9
    800094f4:	28c30067          	jr	652(t1) # 8000277c <main>

00000000800094f8 <either_copyout>:
    800094f8:	ff010113          	addi	sp,sp,-16
    800094fc:	00813023          	sd	s0,0(sp)
    80009500:	00113423          	sd	ra,8(sp)
    80009504:	01010413          	addi	s0,sp,16
    80009508:	02051663          	bnez	a0,80009534 <either_copyout+0x3c>
    8000950c:	00058513          	mv	a0,a1
    80009510:	00060593          	mv	a1,a2
    80009514:	0006861b          	sext.w	a2,a3
    80009518:	00002097          	auipc	ra,0x2
    8000951c:	c5c080e7          	jalr	-932(ra) # 8000b174 <__memmove>
    80009520:	00813083          	ld	ra,8(sp)
    80009524:	00013403          	ld	s0,0(sp)
    80009528:	00000513          	li	a0,0
    8000952c:	01010113          	addi	sp,sp,16
    80009530:	00008067          	ret
    80009534:	00003517          	auipc	a0,0x3
    80009538:	44450513          	addi	a0,a0,1092 # 8000c978 <CONSOLE_STATUS+0x968>
    8000953c:	00001097          	auipc	ra,0x1
    80009540:	930080e7          	jalr	-1744(ra) # 80009e6c <panic>

0000000080009544 <either_copyin>:
    80009544:	ff010113          	addi	sp,sp,-16
    80009548:	00813023          	sd	s0,0(sp)
    8000954c:	00113423          	sd	ra,8(sp)
    80009550:	01010413          	addi	s0,sp,16
    80009554:	02059463          	bnez	a1,8000957c <either_copyin+0x38>
    80009558:	00060593          	mv	a1,a2
    8000955c:	0006861b          	sext.w	a2,a3
    80009560:	00002097          	auipc	ra,0x2
    80009564:	c14080e7          	jalr	-1004(ra) # 8000b174 <__memmove>
    80009568:	00813083          	ld	ra,8(sp)
    8000956c:	00013403          	ld	s0,0(sp)
    80009570:	00000513          	li	a0,0
    80009574:	01010113          	addi	sp,sp,16
    80009578:	00008067          	ret
    8000957c:	00003517          	auipc	a0,0x3
    80009580:	42450513          	addi	a0,a0,1060 # 8000c9a0 <CONSOLE_STATUS+0x990>
    80009584:	00001097          	auipc	ra,0x1
    80009588:	8e8080e7          	jalr	-1816(ra) # 80009e6c <panic>

000000008000958c <trapinit>:
    8000958c:	ff010113          	addi	sp,sp,-16
    80009590:	00813423          	sd	s0,8(sp)
    80009594:	01010413          	addi	s0,sp,16
    80009598:	00813403          	ld	s0,8(sp)
    8000959c:	00003597          	auipc	a1,0x3
    800095a0:	42c58593          	addi	a1,a1,1068 # 8000c9c8 <CONSOLE_STATUS+0x9b8>
    800095a4:	000cb517          	auipc	a0,0xcb
    800095a8:	bac50513          	addi	a0,a0,-1108 # 800d4150 <tickslock>
    800095ac:	01010113          	addi	sp,sp,16
    800095b0:	00001317          	auipc	t1,0x1
    800095b4:	5c830067          	jr	1480(t1) # 8000ab78 <initlock>

00000000800095b8 <trapinithart>:
    800095b8:	ff010113          	addi	sp,sp,-16
    800095bc:	00813423          	sd	s0,8(sp)
    800095c0:	01010413          	addi	s0,sp,16
    800095c4:	00000797          	auipc	a5,0x0
    800095c8:	2fc78793          	addi	a5,a5,764 # 800098c0 <kernelvec>
    800095cc:	10579073          	csrw	stvec,a5
    800095d0:	00813403          	ld	s0,8(sp)
    800095d4:	01010113          	addi	sp,sp,16
    800095d8:	00008067          	ret

00000000800095dc <usertrap>:
    800095dc:	ff010113          	addi	sp,sp,-16
    800095e0:	00813423          	sd	s0,8(sp)
    800095e4:	01010413          	addi	s0,sp,16
    800095e8:	00813403          	ld	s0,8(sp)
    800095ec:	01010113          	addi	sp,sp,16
    800095f0:	00008067          	ret

00000000800095f4 <usertrapret>:
    800095f4:	ff010113          	addi	sp,sp,-16
    800095f8:	00813423          	sd	s0,8(sp)
    800095fc:	01010413          	addi	s0,sp,16
    80009600:	00813403          	ld	s0,8(sp)
    80009604:	01010113          	addi	sp,sp,16
    80009608:	00008067          	ret

000000008000960c <kerneltrap>:
    8000960c:	fe010113          	addi	sp,sp,-32
    80009610:	00813823          	sd	s0,16(sp)
    80009614:	00113c23          	sd	ra,24(sp)
    80009618:	00913423          	sd	s1,8(sp)
    8000961c:	02010413          	addi	s0,sp,32
    80009620:	142025f3          	csrr	a1,scause
    80009624:	100027f3          	csrr	a5,sstatus
    80009628:	0027f793          	andi	a5,a5,2
    8000962c:	10079c63          	bnez	a5,80009744 <kerneltrap+0x138>
    80009630:	142027f3          	csrr	a5,scause
    80009634:	0207ce63          	bltz	a5,80009670 <kerneltrap+0x64>
    80009638:	00003517          	auipc	a0,0x3
    8000963c:	3d850513          	addi	a0,a0,984 # 8000ca10 <CONSOLE_STATUS+0xa00>
    80009640:	00001097          	auipc	ra,0x1
    80009644:	888080e7          	jalr	-1912(ra) # 80009ec8 <__printf>
    80009648:	141025f3          	csrr	a1,sepc
    8000964c:	14302673          	csrr	a2,stval
    80009650:	00003517          	auipc	a0,0x3
    80009654:	3d050513          	addi	a0,a0,976 # 8000ca20 <CONSOLE_STATUS+0xa10>
    80009658:	00001097          	auipc	ra,0x1
    8000965c:	870080e7          	jalr	-1936(ra) # 80009ec8 <__printf>
    80009660:	00003517          	auipc	a0,0x3
    80009664:	3d850513          	addi	a0,a0,984 # 8000ca38 <CONSOLE_STATUS+0xa28>
    80009668:	00001097          	auipc	ra,0x1
    8000966c:	804080e7          	jalr	-2044(ra) # 80009e6c <panic>
    80009670:	0ff7f713          	andi	a4,a5,255
    80009674:	00900693          	li	a3,9
    80009678:	04d70063          	beq	a4,a3,800096b8 <kerneltrap+0xac>
    8000967c:	fff00713          	li	a4,-1
    80009680:	03f71713          	slli	a4,a4,0x3f
    80009684:	00170713          	addi	a4,a4,1
    80009688:	fae798e3          	bne	a5,a4,80009638 <kerneltrap+0x2c>
    8000968c:	00000097          	auipc	ra,0x0
    80009690:	e00080e7          	jalr	-512(ra) # 8000948c <cpuid>
    80009694:	06050663          	beqz	a0,80009700 <kerneltrap+0xf4>
    80009698:	144027f3          	csrr	a5,sip
    8000969c:	ffd7f793          	andi	a5,a5,-3
    800096a0:	14479073          	csrw	sip,a5
    800096a4:	01813083          	ld	ra,24(sp)
    800096a8:	01013403          	ld	s0,16(sp)
    800096ac:	00813483          	ld	s1,8(sp)
    800096b0:	02010113          	addi	sp,sp,32
    800096b4:	00008067          	ret
    800096b8:	00000097          	auipc	ra,0x0
    800096bc:	3cc080e7          	jalr	972(ra) # 80009a84 <plic_claim>
    800096c0:	00a00793          	li	a5,10
    800096c4:	00050493          	mv	s1,a0
    800096c8:	06f50863          	beq	a0,a5,80009738 <kerneltrap+0x12c>
    800096cc:	fc050ce3          	beqz	a0,800096a4 <kerneltrap+0x98>
    800096d0:	00050593          	mv	a1,a0
    800096d4:	00003517          	auipc	a0,0x3
    800096d8:	31c50513          	addi	a0,a0,796 # 8000c9f0 <CONSOLE_STATUS+0x9e0>
    800096dc:	00000097          	auipc	ra,0x0
    800096e0:	7ec080e7          	jalr	2028(ra) # 80009ec8 <__printf>
    800096e4:	01013403          	ld	s0,16(sp)
    800096e8:	01813083          	ld	ra,24(sp)
    800096ec:	00048513          	mv	a0,s1
    800096f0:	00813483          	ld	s1,8(sp)
    800096f4:	02010113          	addi	sp,sp,32
    800096f8:	00000317          	auipc	t1,0x0
    800096fc:	3c430067          	jr	964(t1) # 80009abc <plic_complete>
    80009700:	000cb517          	auipc	a0,0xcb
    80009704:	a5050513          	addi	a0,a0,-1456 # 800d4150 <tickslock>
    80009708:	00001097          	auipc	ra,0x1
    8000970c:	494080e7          	jalr	1172(ra) # 8000ab9c <acquire>
    80009710:	00006717          	auipc	a4,0x6
    80009714:	1e470713          	addi	a4,a4,484 # 8000f8f4 <ticks>
    80009718:	00072783          	lw	a5,0(a4)
    8000971c:	000cb517          	auipc	a0,0xcb
    80009720:	a3450513          	addi	a0,a0,-1484 # 800d4150 <tickslock>
    80009724:	0017879b          	addiw	a5,a5,1
    80009728:	00f72023          	sw	a5,0(a4)
    8000972c:	00001097          	auipc	ra,0x1
    80009730:	53c080e7          	jalr	1340(ra) # 8000ac68 <release>
    80009734:	f65ff06f          	j	80009698 <kerneltrap+0x8c>
    80009738:	00001097          	auipc	ra,0x1
    8000973c:	098080e7          	jalr	152(ra) # 8000a7d0 <uartintr>
    80009740:	fa5ff06f          	j	800096e4 <kerneltrap+0xd8>
    80009744:	00003517          	auipc	a0,0x3
    80009748:	28c50513          	addi	a0,a0,652 # 8000c9d0 <CONSOLE_STATUS+0x9c0>
    8000974c:	00000097          	auipc	ra,0x0
    80009750:	720080e7          	jalr	1824(ra) # 80009e6c <panic>

0000000080009754 <clockintr>:
    80009754:	fe010113          	addi	sp,sp,-32
    80009758:	00813823          	sd	s0,16(sp)
    8000975c:	00913423          	sd	s1,8(sp)
    80009760:	00113c23          	sd	ra,24(sp)
    80009764:	02010413          	addi	s0,sp,32
    80009768:	000cb497          	auipc	s1,0xcb
    8000976c:	9e848493          	addi	s1,s1,-1560 # 800d4150 <tickslock>
    80009770:	00048513          	mv	a0,s1
    80009774:	00001097          	auipc	ra,0x1
    80009778:	428080e7          	jalr	1064(ra) # 8000ab9c <acquire>
    8000977c:	00006717          	auipc	a4,0x6
    80009780:	17870713          	addi	a4,a4,376 # 8000f8f4 <ticks>
    80009784:	00072783          	lw	a5,0(a4)
    80009788:	01013403          	ld	s0,16(sp)
    8000978c:	01813083          	ld	ra,24(sp)
    80009790:	00048513          	mv	a0,s1
    80009794:	0017879b          	addiw	a5,a5,1
    80009798:	00813483          	ld	s1,8(sp)
    8000979c:	00f72023          	sw	a5,0(a4)
    800097a0:	02010113          	addi	sp,sp,32
    800097a4:	00001317          	auipc	t1,0x1
    800097a8:	4c430067          	jr	1220(t1) # 8000ac68 <release>

00000000800097ac <devintr>:
    800097ac:	142027f3          	csrr	a5,scause
    800097b0:	00000513          	li	a0,0
    800097b4:	0007c463          	bltz	a5,800097bc <devintr+0x10>
    800097b8:	00008067          	ret
    800097bc:	fe010113          	addi	sp,sp,-32
    800097c0:	00813823          	sd	s0,16(sp)
    800097c4:	00113c23          	sd	ra,24(sp)
    800097c8:	00913423          	sd	s1,8(sp)
    800097cc:	02010413          	addi	s0,sp,32
    800097d0:	0ff7f713          	andi	a4,a5,255
    800097d4:	00900693          	li	a3,9
    800097d8:	04d70c63          	beq	a4,a3,80009830 <devintr+0x84>
    800097dc:	fff00713          	li	a4,-1
    800097e0:	03f71713          	slli	a4,a4,0x3f
    800097e4:	00170713          	addi	a4,a4,1
    800097e8:	00e78c63          	beq	a5,a4,80009800 <devintr+0x54>
    800097ec:	01813083          	ld	ra,24(sp)
    800097f0:	01013403          	ld	s0,16(sp)
    800097f4:	00813483          	ld	s1,8(sp)
    800097f8:	02010113          	addi	sp,sp,32
    800097fc:	00008067          	ret
    80009800:	00000097          	auipc	ra,0x0
    80009804:	c8c080e7          	jalr	-884(ra) # 8000948c <cpuid>
    80009808:	06050663          	beqz	a0,80009874 <devintr+0xc8>
    8000980c:	144027f3          	csrr	a5,sip
    80009810:	ffd7f793          	andi	a5,a5,-3
    80009814:	14479073          	csrw	sip,a5
    80009818:	01813083          	ld	ra,24(sp)
    8000981c:	01013403          	ld	s0,16(sp)
    80009820:	00813483          	ld	s1,8(sp)
    80009824:	00200513          	li	a0,2
    80009828:	02010113          	addi	sp,sp,32
    8000982c:	00008067          	ret
    80009830:	00000097          	auipc	ra,0x0
    80009834:	254080e7          	jalr	596(ra) # 80009a84 <plic_claim>
    80009838:	00a00793          	li	a5,10
    8000983c:	00050493          	mv	s1,a0
    80009840:	06f50663          	beq	a0,a5,800098ac <devintr+0x100>
    80009844:	00100513          	li	a0,1
    80009848:	fa0482e3          	beqz	s1,800097ec <devintr+0x40>
    8000984c:	00048593          	mv	a1,s1
    80009850:	00003517          	auipc	a0,0x3
    80009854:	1a050513          	addi	a0,a0,416 # 8000c9f0 <CONSOLE_STATUS+0x9e0>
    80009858:	00000097          	auipc	ra,0x0
    8000985c:	670080e7          	jalr	1648(ra) # 80009ec8 <__printf>
    80009860:	00048513          	mv	a0,s1
    80009864:	00000097          	auipc	ra,0x0
    80009868:	258080e7          	jalr	600(ra) # 80009abc <plic_complete>
    8000986c:	00100513          	li	a0,1
    80009870:	f7dff06f          	j	800097ec <devintr+0x40>
    80009874:	000cb517          	auipc	a0,0xcb
    80009878:	8dc50513          	addi	a0,a0,-1828 # 800d4150 <tickslock>
    8000987c:	00001097          	auipc	ra,0x1
    80009880:	320080e7          	jalr	800(ra) # 8000ab9c <acquire>
    80009884:	00006717          	auipc	a4,0x6
    80009888:	07070713          	addi	a4,a4,112 # 8000f8f4 <ticks>
    8000988c:	00072783          	lw	a5,0(a4)
    80009890:	000cb517          	auipc	a0,0xcb
    80009894:	8c050513          	addi	a0,a0,-1856 # 800d4150 <tickslock>
    80009898:	0017879b          	addiw	a5,a5,1
    8000989c:	00f72023          	sw	a5,0(a4)
    800098a0:	00001097          	auipc	ra,0x1
    800098a4:	3c8080e7          	jalr	968(ra) # 8000ac68 <release>
    800098a8:	f65ff06f          	j	8000980c <devintr+0x60>
    800098ac:	00001097          	auipc	ra,0x1
    800098b0:	f24080e7          	jalr	-220(ra) # 8000a7d0 <uartintr>
    800098b4:	fadff06f          	j	80009860 <devintr+0xb4>
	...

00000000800098c0 <kernelvec>:
    800098c0:	f0010113          	addi	sp,sp,-256
    800098c4:	00113023          	sd	ra,0(sp)
    800098c8:	00213423          	sd	sp,8(sp)
    800098cc:	00313823          	sd	gp,16(sp)
    800098d0:	00413c23          	sd	tp,24(sp)
    800098d4:	02513023          	sd	t0,32(sp)
    800098d8:	02613423          	sd	t1,40(sp)
    800098dc:	02713823          	sd	t2,48(sp)
    800098e0:	02813c23          	sd	s0,56(sp)
    800098e4:	04913023          	sd	s1,64(sp)
    800098e8:	04a13423          	sd	a0,72(sp)
    800098ec:	04b13823          	sd	a1,80(sp)
    800098f0:	04c13c23          	sd	a2,88(sp)
    800098f4:	06d13023          	sd	a3,96(sp)
    800098f8:	06e13423          	sd	a4,104(sp)
    800098fc:	06f13823          	sd	a5,112(sp)
    80009900:	07013c23          	sd	a6,120(sp)
    80009904:	09113023          	sd	a7,128(sp)
    80009908:	09213423          	sd	s2,136(sp)
    8000990c:	09313823          	sd	s3,144(sp)
    80009910:	09413c23          	sd	s4,152(sp)
    80009914:	0b513023          	sd	s5,160(sp)
    80009918:	0b613423          	sd	s6,168(sp)
    8000991c:	0b713823          	sd	s7,176(sp)
    80009920:	0b813c23          	sd	s8,184(sp)
    80009924:	0d913023          	sd	s9,192(sp)
    80009928:	0da13423          	sd	s10,200(sp)
    8000992c:	0db13823          	sd	s11,208(sp)
    80009930:	0dc13c23          	sd	t3,216(sp)
    80009934:	0fd13023          	sd	t4,224(sp)
    80009938:	0fe13423          	sd	t5,232(sp)
    8000993c:	0ff13823          	sd	t6,240(sp)
    80009940:	ccdff0ef          	jal	ra,8000960c <kerneltrap>
    80009944:	00013083          	ld	ra,0(sp)
    80009948:	00813103          	ld	sp,8(sp)
    8000994c:	01013183          	ld	gp,16(sp)
    80009950:	02013283          	ld	t0,32(sp)
    80009954:	02813303          	ld	t1,40(sp)
    80009958:	03013383          	ld	t2,48(sp)
    8000995c:	03813403          	ld	s0,56(sp)
    80009960:	04013483          	ld	s1,64(sp)
    80009964:	04813503          	ld	a0,72(sp)
    80009968:	05013583          	ld	a1,80(sp)
    8000996c:	05813603          	ld	a2,88(sp)
    80009970:	06013683          	ld	a3,96(sp)
    80009974:	06813703          	ld	a4,104(sp)
    80009978:	07013783          	ld	a5,112(sp)
    8000997c:	07813803          	ld	a6,120(sp)
    80009980:	08013883          	ld	a7,128(sp)
    80009984:	08813903          	ld	s2,136(sp)
    80009988:	09013983          	ld	s3,144(sp)
    8000998c:	09813a03          	ld	s4,152(sp)
    80009990:	0a013a83          	ld	s5,160(sp)
    80009994:	0a813b03          	ld	s6,168(sp)
    80009998:	0b013b83          	ld	s7,176(sp)
    8000999c:	0b813c03          	ld	s8,184(sp)
    800099a0:	0c013c83          	ld	s9,192(sp)
    800099a4:	0c813d03          	ld	s10,200(sp)
    800099a8:	0d013d83          	ld	s11,208(sp)
    800099ac:	0d813e03          	ld	t3,216(sp)
    800099b0:	0e013e83          	ld	t4,224(sp)
    800099b4:	0e813f03          	ld	t5,232(sp)
    800099b8:	0f013f83          	ld	t6,240(sp)
    800099bc:	10010113          	addi	sp,sp,256
    800099c0:	10200073          	sret
    800099c4:	00000013          	nop
    800099c8:	00000013          	nop
    800099cc:	00000013          	nop

00000000800099d0 <timervec>:
    800099d0:	34051573          	csrrw	a0,mscratch,a0
    800099d4:	00b53023          	sd	a1,0(a0)
    800099d8:	00c53423          	sd	a2,8(a0)
    800099dc:	00d53823          	sd	a3,16(a0)
    800099e0:	01853583          	ld	a1,24(a0)
    800099e4:	02053603          	ld	a2,32(a0)
    800099e8:	0005b683          	ld	a3,0(a1)
    800099ec:	00c686b3          	add	a3,a3,a2
    800099f0:	00d5b023          	sd	a3,0(a1)
    800099f4:	00200593          	li	a1,2
    800099f8:	14459073          	csrw	sip,a1
    800099fc:	01053683          	ld	a3,16(a0)
    80009a00:	00853603          	ld	a2,8(a0)
    80009a04:	00053583          	ld	a1,0(a0)
    80009a08:	34051573          	csrrw	a0,mscratch,a0
    80009a0c:	30200073          	mret

0000000080009a10 <plicinit>:
    80009a10:	ff010113          	addi	sp,sp,-16
    80009a14:	00813423          	sd	s0,8(sp)
    80009a18:	01010413          	addi	s0,sp,16
    80009a1c:	00813403          	ld	s0,8(sp)
    80009a20:	0c0007b7          	lui	a5,0xc000
    80009a24:	00100713          	li	a4,1
    80009a28:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80009a2c:	00e7a223          	sw	a4,4(a5)
    80009a30:	01010113          	addi	sp,sp,16
    80009a34:	00008067          	ret

0000000080009a38 <plicinithart>:
    80009a38:	ff010113          	addi	sp,sp,-16
    80009a3c:	00813023          	sd	s0,0(sp)
    80009a40:	00113423          	sd	ra,8(sp)
    80009a44:	01010413          	addi	s0,sp,16
    80009a48:	00000097          	auipc	ra,0x0
    80009a4c:	a44080e7          	jalr	-1468(ra) # 8000948c <cpuid>
    80009a50:	0085171b          	slliw	a4,a0,0x8
    80009a54:	0c0027b7          	lui	a5,0xc002
    80009a58:	00e787b3          	add	a5,a5,a4
    80009a5c:	40200713          	li	a4,1026
    80009a60:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80009a64:	00813083          	ld	ra,8(sp)
    80009a68:	00013403          	ld	s0,0(sp)
    80009a6c:	00d5151b          	slliw	a0,a0,0xd
    80009a70:	0c2017b7          	lui	a5,0xc201
    80009a74:	00a78533          	add	a0,a5,a0
    80009a78:	00052023          	sw	zero,0(a0)
    80009a7c:	01010113          	addi	sp,sp,16
    80009a80:	00008067          	ret

0000000080009a84 <plic_claim>:
    80009a84:	ff010113          	addi	sp,sp,-16
    80009a88:	00813023          	sd	s0,0(sp)
    80009a8c:	00113423          	sd	ra,8(sp)
    80009a90:	01010413          	addi	s0,sp,16
    80009a94:	00000097          	auipc	ra,0x0
    80009a98:	9f8080e7          	jalr	-1544(ra) # 8000948c <cpuid>
    80009a9c:	00813083          	ld	ra,8(sp)
    80009aa0:	00013403          	ld	s0,0(sp)
    80009aa4:	00d5151b          	slliw	a0,a0,0xd
    80009aa8:	0c2017b7          	lui	a5,0xc201
    80009aac:	00a78533          	add	a0,a5,a0
    80009ab0:	00452503          	lw	a0,4(a0)
    80009ab4:	01010113          	addi	sp,sp,16
    80009ab8:	00008067          	ret

0000000080009abc <plic_complete>:
    80009abc:	fe010113          	addi	sp,sp,-32
    80009ac0:	00813823          	sd	s0,16(sp)
    80009ac4:	00913423          	sd	s1,8(sp)
    80009ac8:	00113c23          	sd	ra,24(sp)
    80009acc:	02010413          	addi	s0,sp,32
    80009ad0:	00050493          	mv	s1,a0
    80009ad4:	00000097          	auipc	ra,0x0
    80009ad8:	9b8080e7          	jalr	-1608(ra) # 8000948c <cpuid>
    80009adc:	01813083          	ld	ra,24(sp)
    80009ae0:	01013403          	ld	s0,16(sp)
    80009ae4:	00d5179b          	slliw	a5,a0,0xd
    80009ae8:	0c201737          	lui	a4,0xc201
    80009aec:	00f707b3          	add	a5,a4,a5
    80009af0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80009af4:	00813483          	ld	s1,8(sp)
    80009af8:	02010113          	addi	sp,sp,32
    80009afc:	00008067          	ret

0000000080009b00 <consolewrite>:
    80009b00:	fb010113          	addi	sp,sp,-80
    80009b04:	04813023          	sd	s0,64(sp)
    80009b08:	04113423          	sd	ra,72(sp)
    80009b0c:	02913c23          	sd	s1,56(sp)
    80009b10:	03213823          	sd	s2,48(sp)
    80009b14:	03313423          	sd	s3,40(sp)
    80009b18:	03413023          	sd	s4,32(sp)
    80009b1c:	01513c23          	sd	s5,24(sp)
    80009b20:	05010413          	addi	s0,sp,80
    80009b24:	06c05c63          	blez	a2,80009b9c <consolewrite+0x9c>
    80009b28:	00060993          	mv	s3,a2
    80009b2c:	00050a13          	mv	s4,a0
    80009b30:	00058493          	mv	s1,a1
    80009b34:	00000913          	li	s2,0
    80009b38:	fff00a93          	li	s5,-1
    80009b3c:	01c0006f          	j	80009b58 <consolewrite+0x58>
    80009b40:	fbf44503          	lbu	a0,-65(s0)
    80009b44:	0019091b          	addiw	s2,s2,1
    80009b48:	00148493          	addi	s1,s1,1
    80009b4c:	00001097          	auipc	ra,0x1
    80009b50:	a9c080e7          	jalr	-1380(ra) # 8000a5e8 <uartputc>
    80009b54:	03298063          	beq	s3,s2,80009b74 <consolewrite+0x74>
    80009b58:	00048613          	mv	a2,s1
    80009b5c:	00100693          	li	a3,1
    80009b60:	000a0593          	mv	a1,s4
    80009b64:	fbf40513          	addi	a0,s0,-65
    80009b68:	00000097          	auipc	ra,0x0
    80009b6c:	9dc080e7          	jalr	-1572(ra) # 80009544 <either_copyin>
    80009b70:	fd5518e3          	bne	a0,s5,80009b40 <consolewrite+0x40>
    80009b74:	04813083          	ld	ra,72(sp)
    80009b78:	04013403          	ld	s0,64(sp)
    80009b7c:	03813483          	ld	s1,56(sp)
    80009b80:	02813983          	ld	s3,40(sp)
    80009b84:	02013a03          	ld	s4,32(sp)
    80009b88:	01813a83          	ld	s5,24(sp)
    80009b8c:	00090513          	mv	a0,s2
    80009b90:	03013903          	ld	s2,48(sp)
    80009b94:	05010113          	addi	sp,sp,80
    80009b98:	00008067          	ret
    80009b9c:	00000913          	li	s2,0
    80009ba0:	fd5ff06f          	j	80009b74 <consolewrite+0x74>

0000000080009ba4 <consoleread>:
    80009ba4:	f9010113          	addi	sp,sp,-112
    80009ba8:	06813023          	sd	s0,96(sp)
    80009bac:	04913c23          	sd	s1,88(sp)
    80009bb0:	05213823          	sd	s2,80(sp)
    80009bb4:	05313423          	sd	s3,72(sp)
    80009bb8:	05413023          	sd	s4,64(sp)
    80009bbc:	03513c23          	sd	s5,56(sp)
    80009bc0:	03613823          	sd	s6,48(sp)
    80009bc4:	03713423          	sd	s7,40(sp)
    80009bc8:	03813023          	sd	s8,32(sp)
    80009bcc:	06113423          	sd	ra,104(sp)
    80009bd0:	01913c23          	sd	s9,24(sp)
    80009bd4:	07010413          	addi	s0,sp,112
    80009bd8:	00060b93          	mv	s7,a2
    80009bdc:	00050913          	mv	s2,a0
    80009be0:	00058c13          	mv	s8,a1
    80009be4:	00060b1b          	sext.w	s6,a2
    80009be8:	000ca497          	auipc	s1,0xca
    80009bec:	59048493          	addi	s1,s1,1424 # 800d4178 <cons>
    80009bf0:	00400993          	li	s3,4
    80009bf4:	fff00a13          	li	s4,-1
    80009bf8:	00a00a93          	li	s5,10
    80009bfc:	05705e63          	blez	s7,80009c58 <consoleread+0xb4>
    80009c00:	09c4a703          	lw	a4,156(s1)
    80009c04:	0984a783          	lw	a5,152(s1)
    80009c08:	0007071b          	sext.w	a4,a4
    80009c0c:	08e78463          	beq	a5,a4,80009c94 <consoleread+0xf0>
    80009c10:	07f7f713          	andi	a4,a5,127
    80009c14:	00e48733          	add	a4,s1,a4
    80009c18:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80009c1c:	0017869b          	addiw	a3,a5,1
    80009c20:	08d4ac23          	sw	a3,152(s1)
    80009c24:	00070c9b          	sext.w	s9,a4
    80009c28:	0b370663          	beq	a4,s3,80009cd4 <consoleread+0x130>
    80009c2c:	00100693          	li	a3,1
    80009c30:	f9f40613          	addi	a2,s0,-97
    80009c34:	000c0593          	mv	a1,s8
    80009c38:	00090513          	mv	a0,s2
    80009c3c:	f8e40fa3          	sb	a4,-97(s0)
    80009c40:	00000097          	auipc	ra,0x0
    80009c44:	8b8080e7          	jalr	-1864(ra) # 800094f8 <either_copyout>
    80009c48:	01450863          	beq	a0,s4,80009c58 <consoleread+0xb4>
    80009c4c:	001c0c13          	addi	s8,s8,1
    80009c50:	fffb8b9b          	addiw	s7,s7,-1
    80009c54:	fb5c94e3          	bne	s9,s5,80009bfc <consoleread+0x58>
    80009c58:	000b851b          	sext.w	a0,s7
    80009c5c:	06813083          	ld	ra,104(sp)
    80009c60:	06013403          	ld	s0,96(sp)
    80009c64:	05813483          	ld	s1,88(sp)
    80009c68:	05013903          	ld	s2,80(sp)
    80009c6c:	04813983          	ld	s3,72(sp)
    80009c70:	04013a03          	ld	s4,64(sp)
    80009c74:	03813a83          	ld	s5,56(sp)
    80009c78:	02813b83          	ld	s7,40(sp)
    80009c7c:	02013c03          	ld	s8,32(sp)
    80009c80:	01813c83          	ld	s9,24(sp)
    80009c84:	40ab053b          	subw	a0,s6,a0
    80009c88:	03013b03          	ld	s6,48(sp)
    80009c8c:	07010113          	addi	sp,sp,112
    80009c90:	00008067          	ret
    80009c94:	00001097          	auipc	ra,0x1
    80009c98:	1d8080e7          	jalr	472(ra) # 8000ae6c <push_on>
    80009c9c:	0984a703          	lw	a4,152(s1)
    80009ca0:	09c4a783          	lw	a5,156(s1)
    80009ca4:	0007879b          	sext.w	a5,a5
    80009ca8:	fef70ce3          	beq	a4,a5,80009ca0 <consoleread+0xfc>
    80009cac:	00001097          	auipc	ra,0x1
    80009cb0:	234080e7          	jalr	564(ra) # 8000aee0 <pop_on>
    80009cb4:	0984a783          	lw	a5,152(s1)
    80009cb8:	07f7f713          	andi	a4,a5,127
    80009cbc:	00e48733          	add	a4,s1,a4
    80009cc0:	01874703          	lbu	a4,24(a4)
    80009cc4:	0017869b          	addiw	a3,a5,1
    80009cc8:	08d4ac23          	sw	a3,152(s1)
    80009ccc:	00070c9b          	sext.w	s9,a4
    80009cd0:	f5371ee3          	bne	a4,s3,80009c2c <consoleread+0x88>
    80009cd4:	000b851b          	sext.w	a0,s7
    80009cd8:	f96bf2e3          	bgeu	s7,s6,80009c5c <consoleread+0xb8>
    80009cdc:	08f4ac23          	sw	a5,152(s1)
    80009ce0:	f7dff06f          	j	80009c5c <consoleread+0xb8>

0000000080009ce4 <consputc>:
    80009ce4:	10000793          	li	a5,256
    80009ce8:	00f50663          	beq	a0,a5,80009cf4 <consputc+0x10>
    80009cec:	00001317          	auipc	t1,0x1
    80009cf0:	9f430067          	jr	-1548(t1) # 8000a6e0 <uartputc_sync>
    80009cf4:	ff010113          	addi	sp,sp,-16
    80009cf8:	00113423          	sd	ra,8(sp)
    80009cfc:	00813023          	sd	s0,0(sp)
    80009d00:	01010413          	addi	s0,sp,16
    80009d04:	00800513          	li	a0,8
    80009d08:	00001097          	auipc	ra,0x1
    80009d0c:	9d8080e7          	jalr	-1576(ra) # 8000a6e0 <uartputc_sync>
    80009d10:	02000513          	li	a0,32
    80009d14:	00001097          	auipc	ra,0x1
    80009d18:	9cc080e7          	jalr	-1588(ra) # 8000a6e0 <uartputc_sync>
    80009d1c:	00013403          	ld	s0,0(sp)
    80009d20:	00813083          	ld	ra,8(sp)
    80009d24:	00800513          	li	a0,8
    80009d28:	01010113          	addi	sp,sp,16
    80009d2c:	00001317          	auipc	t1,0x1
    80009d30:	9b430067          	jr	-1612(t1) # 8000a6e0 <uartputc_sync>

0000000080009d34 <consoleintr>:
    80009d34:	fe010113          	addi	sp,sp,-32
    80009d38:	00813823          	sd	s0,16(sp)
    80009d3c:	00913423          	sd	s1,8(sp)
    80009d40:	01213023          	sd	s2,0(sp)
    80009d44:	00113c23          	sd	ra,24(sp)
    80009d48:	02010413          	addi	s0,sp,32
    80009d4c:	000ca917          	auipc	s2,0xca
    80009d50:	42c90913          	addi	s2,s2,1068 # 800d4178 <cons>
    80009d54:	00050493          	mv	s1,a0
    80009d58:	00090513          	mv	a0,s2
    80009d5c:	00001097          	auipc	ra,0x1
    80009d60:	e40080e7          	jalr	-448(ra) # 8000ab9c <acquire>
    80009d64:	02048c63          	beqz	s1,80009d9c <consoleintr+0x68>
    80009d68:	0a092783          	lw	a5,160(s2)
    80009d6c:	09892703          	lw	a4,152(s2)
    80009d70:	07f00693          	li	a3,127
    80009d74:	40e7873b          	subw	a4,a5,a4
    80009d78:	02e6e263          	bltu	a3,a4,80009d9c <consoleintr+0x68>
    80009d7c:	00d00713          	li	a4,13
    80009d80:	04e48063          	beq	s1,a4,80009dc0 <consoleintr+0x8c>
    80009d84:	07f7f713          	andi	a4,a5,127
    80009d88:	00e90733          	add	a4,s2,a4
    80009d8c:	0017879b          	addiw	a5,a5,1
    80009d90:	0af92023          	sw	a5,160(s2)
    80009d94:	00970c23          	sb	s1,24(a4)
    80009d98:	08f92e23          	sw	a5,156(s2)
    80009d9c:	01013403          	ld	s0,16(sp)
    80009da0:	01813083          	ld	ra,24(sp)
    80009da4:	00813483          	ld	s1,8(sp)
    80009da8:	00013903          	ld	s2,0(sp)
    80009dac:	000ca517          	auipc	a0,0xca
    80009db0:	3cc50513          	addi	a0,a0,972 # 800d4178 <cons>
    80009db4:	02010113          	addi	sp,sp,32
    80009db8:	00001317          	auipc	t1,0x1
    80009dbc:	eb030067          	jr	-336(t1) # 8000ac68 <release>
    80009dc0:	00a00493          	li	s1,10
    80009dc4:	fc1ff06f          	j	80009d84 <consoleintr+0x50>

0000000080009dc8 <consoleinit>:
    80009dc8:	fe010113          	addi	sp,sp,-32
    80009dcc:	00113c23          	sd	ra,24(sp)
    80009dd0:	00813823          	sd	s0,16(sp)
    80009dd4:	00913423          	sd	s1,8(sp)
    80009dd8:	02010413          	addi	s0,sp,32
    80009ddc:	000ca497          	auipc	s1,0xca
    80009de0:	39c48493          	addi	s1,s1,924 # 800d4178 <cons>
    80009de4:	00048513          	mv	a0,s1
    80009de8:	00003597          	auipc	a1,0x3
    80009dec:	c6058593          	addi	a1,a1,-928 # 8000ca48 <CONSOLE_STATUS+0xa38>
    80009df0:	00001097          	auipc	ra,0x1
    80009df4:	d88080e7          	jalr	-632(ra) # 8000ab78 <initlock>
    80009df8:	00000097          	auipc	ra,0x0
    80009dfc:	7ac080e7          	jalr	1964(ra) # 8000a5a4 <uartinit>
    80009e00:	01813083          	ld	ra,24(sp)
    80009e04:	01013403          	ld	s0,16(sp)
    80009e08:	00000797          	auipc	a5,0x0
    80009e0c:	d9c78793          	addi	a5,a5,-612 # 80009ba4 <consoleread>
    80009e10:	0af4bc23          	sd	a5,184(s1)
    80009e14:	00000797          	auipc	a5,0x0
    80009e18:	cec78793          	addi	a5,a5,-788 # 80009b00 <consolewrite>
    80009e1c:	0cf4b023          	sd	a5,192(s1)
    80009e20:	00813483          	ld	s1,8(sp)
    80009e24:	02010113          	addi	sp,sp,32
    80009e28:	00008067          	ret

0000000080009e2c <console_read>:
    80009e2c:	ff010113          	addi	sp,sp,-16
    80009e30:	00813423          	sd	s0,8(sp)
    80009e34:	01010413          	addi	s0,sp,16
    80009e38:	00813403          	ld	s0,8(sp)
    80009e3c:	000ca317          	auipc	t1,0xca
    80009e40:	3f433303          	ld	t1,1012(t1) # 800d4230 <devsw+0x10>
    80009e44:	01010113          	addi	sp,sp,16
    80009e48:	00030067          	jr	t1

0000000080009e4c <console_write>:
    80009e4c:	ff010113          	addi	sp,sp,-16
    80009e50:	00813423          	sd	s0,8(sp)
    80009e54:	01010413          	addi	s0,sp,16
    80009e58:	00813403          	ld	s0,8(sp)
    80009e5c:	000ca317          	auipc	t1,0xca
    80009e60:	3dc33303          	ld	t1,988(t1) # 800d4238 <devsw+0x18>
    80009e64:	01010113          	addi	sp,sp,16
    80009e68:	00030067          	jr	t1

0000000080009e6c <panic>:
    80009e6c:	fe010113          	addi	sp,sp,-32
    80009e70:	00113c23          	sd	ra,24(sp)
    80009e74:	00813823          	sd	s0,16(sp)
    80009e78:	00913423          	sd	s1,8(sp)
    80009e7c:	02010413          	addi	s0,sp,32
    80009e80:	00050493          	mv	s1,a0
    80009e84:	00003517          	auipc	a0,0x3
    80009e88:	bcc50513          	addi	a0,a0,-1076 # 8000ca50 <CONSOLE_STATUS+0xa40>
    80009e8c:	000ca797          	auipc	a5,0xca
    80009e90:	4407a623          	sw	zero,1100(a5) # 800d42d8 <pr+0x18>
    80009e94:	00000097          	auipc	ra,0x0
    80009e98:	034080e7          	jalr	52(ra) # 80009ec8 <__printf>
    80009e9c:	00048513          	mv	a0,s1
    80009ea0:	00000097          	auipc	ra,0x0
    80009ea4:	028080e7          	jalr	40(ra) # 80009ec8 <__printf>
    80009ea8:	00002517          	auipc	a0,0x2
    80009eac:	3d050513          	addi	a0,a0,976 # 8000c278 <CONSOLE_STATUS+0x268>
    80009eb0:	00000097          	auipc	ra,0x0
    80009eb4:	018080e7          	jalr	24(ra) # 80009ec8 <__printf>
    80009eb8:	00100793          	li	a5,1
    80009ebc:	00006717          	auipc	a4,0x6
    80009ec0:	a2f72e23          	sw	a5,-1476(a4) # 8000f8f8 <panicked>
    80009ec4:	0000006f          	j	80009ec4 <panic+0x58>

0000000080009ec8 <__printf>:
    80009ec8:	f3010113          	addi	sp,sp,-208
    80009ecc:	08813023          	sd	s0,128(sp)
    80009ed0:	07313423          	sd	s3,104(sp)
    80009ed4:	09010413          	addi	s0,sp,144
    80009ed8:	05813023          	sd	s8,64(sp)
    80009edc:	08113423          	sd	ra,136(sp)
    80009ee0:	06913c23          	sd	s1,120(sp)
    80009ee4:	07213823          	sd	s2,112(sp)
    80009ee8:	07413023          	sd	s4,96(sp)
    80009eec:	05513c23          	sd	s5,88(sp)
    80009ef0:	05613823          	sd	s6,80(sp)
    80009ef4:	05713423          	sd	s7,72(sp)
    80009ef8:	03913c23          	sd	s9,56(sp)
    80009efc:	03a13823          	sd	s10,48(sp)
    80009f00:	03b13423          	sd	s11,40(sp)
    80009f04:	000ca317          	auipc	t1,0xca
    80009f08:	3bc30313          	addi	t1,t1,956 # 800d42c0 <pr>
    80009f0c:	01832c03          	lw	s8,24(t1)
    80009f10:	00b43423          	sd	a1,8(s0)
    80009f14:	00c43823          	sd	a2,16(s0)
    80009f18:	00d43c23          	sd	a3,24(s0)
    80009f1c:	02e43023          	sd	a4,32(s0)
    80009f20:	02f43423          	sd	a5,40(s0)
    80009f24:	03043823          	sd	a6,48(s0)
    80009f28:	03143c23          	sd	a7,56(s0)
    80009f2c:	00050993          	mv	s3,a0
    80009f30:	4a0c1663          	bnez	s8,8000a3dc <__printf+0x514>
    80009f34:	60098c63          	beqz	s3,8000a54c <__printf+0x684>
    80009f38:	0009c503          	lbu	a0,0(s3)
    80009f3c:	00840793          	addi	a5,s0,8
    80009f40:	f6f43c23          	sd	a5,-136(s0)
    80009f44:	00000493          	li	s1,0
    80009f48:	22050063          	beqz	a0,8000a168 <__printf+0x2a0>
    80009f4c:	00002a37          	lui	s4,0x2
    80009f50:	00018ab7          	lui	s5,0x18
    80009f54:	000f4b37          	lui	s6,0xf4
    80009f58:	00989bb7          	lui	s7,0x989
    80009f5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80009f60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80009f64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80009f68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80009f6c:	00148c9b          	addiw	s9,s1,1
    80009f70:	02500793          	li	a5,37
    80009f74:	01998933          	add	s2,s3,s9
    80009f78:	38f51263          	bne	a0,a5,8000a2fc <__printf+0x434>
    80009f7c:	00094783          	lbu	a5,0(s2)
    80009f80:	00078c9b          	sext.w	s9,a5
    80009f84:	1e078263          	beqz	a5,8000a168 <__printf+0x2a0>
    80009f88:	0024849b          	addiw	s1,s1,2
    80009f8c:	07000713          	li	a4,112
    80009f90:	00998933          	add	s2,s3,s1
    80009f94:	38e78a63          	beq	a5,a4,8000a328 <__printf+0x460>
    80009f98:	20f76863          	bltu	a4,a5,8000a1a8 <__printf+0x2e0>
    80009f9c:	42a78863          	beq	a5,a0,8000a3cc <__printf+0x504>
    80009fa0:	06400713          	li	a4,100
    80009fa4:	40e79663          	bne	a5,a4,8000a3b0 <__printf+0x4e8>
    80009fa8:	f7843783          	ld	a5,-136(s0)
    80009fac:	0007a603          	lw	a2,0(a5)
    80009fb0:	00878793          	addi	a5,a5,8
    80009fb4:	f6f43c23          	sd	a5,-136(s0)
    80009fb8:	42064a63          	bltz	a2,8000a3ec <__printf+0x524>
    80009fbc:	00a00713          	li	a4,10
    80009fc0:	02e677bb          	remuw	a5,a2,a4
    80009fc4:	00003d97          	auipc	s11,0x3
    80009fc8:	ab4d8d93          	addi	s11,s11,-1356 # 8000ca78 <digits>
    80009fcc:	00900593          	li	a1,9
    80009fd0:	0006051b          	sext.w	a0,a2
    80009fd4:	00000c93          	li	s9,0
    80009fd8:	02079793          	slli	a5,a5,0x20
    80009fdc:	0207d793          	srli	a5,a5,0x20
    80009fe0:	00fd87b3          	add	a5,s11,a5
    80009fe4:	0007c783          	lbu	a5,0(a5)
    80009fe8:	02e656bb          	divuw	a3,a2,a4
    80009fec:	f8f40023          	sb	a5,-128(s0)
    80009ff0:	14c5d863          	bge	a1,a2,8000a140 <__printf+0x278>
    80009ff4:	06300593          	li	a1,99
    80009ff8:	00100c93          	li	s9,1
    80009ffc:	02e6f7bb          	remuw	a5,a3,a4
    8000a000:	02079793          	slli	a5,a5,0x20
    8000a004:	0207d793          	srli	a5,a5,0x20
    8000a008:	00fd87b3          	add	a5,s11,a5
    8000a00c:	0007c783          	lbu	a5,0(a5)
    8000a010:	02e6d73b          	divuw	a4,a3,a4
    8000a014:	f8f400a3          	sb	a5,-127(s0)
    8000a018:	12a5f463          	bgeu	a1,a0,8000a140 <__printf+0x278>
    8000a01c:	00a00693          	li	a3,10
    8000a020:	00900593          	li	a1,9
    8000a024:	02d777bb          	remuw	a5,a4,a3
    8000a028:	02079793          	slli	a5,a5,0x20
    8000a02c:	0207d793          	srli	a5,a5,0x20
    8000a030:	00fd87b3          	add	a5,s11,a5
    8000a034:	0007c503          	lbu	a0,0(a5)
    8000a038:	02d757bb          	divuw	a5,a4,a3
    8000a03c:	f8a40123          	sb	a0,-126(s0)
    8000a040:	48e5f263          	bgeu	a1,a4,8000a4c4 <__printf+0x5fc>
    8000a044:	06300513          	li	a0,99
    8000a048:	02d7f5bb          	remuw	a1,a5,a3
    8000a04c:	02059593          	slli	a1,a1,0x20
    8000a050:	0205d593          	srli	a1,a1,0x20
    8000a054:	00bd85b3          	add	a1,s11,a1
    8000a058:	0005c583          	lbu	a1,0(a1)
    8000a05c:	02d7d7bb          	divuw	a5,a5,a3
    8000a060:	f8b401a3          	sb	a1,-125(s0)
    8000a064:	48e57263          	bgeu	a0,a4,8000a4e8 <__printf+0x620>
    8000a068:	3e700513          	li	a0,999
    8000a06c:	02d7f5bb          	remuw	a1,a5,a3
    8000a070:	02059593          	slli	a1,a1,0x20
    8000a074:	0205d593          	srli	a1,a1,0x20
    8000a078:	00bd85b3          	add	a1,s11,a1
    8000a07c:	0005c583          	lbu	a1,0(a1)
    8000a080:	02d7d7bb          	divuw	a5,a5,a3
    8000a084:	f8b40223          	sb	a1,-124(s0)
    8000a088:	46e57663          	bgeu	a0,a4,8000a4f4 <__printf+0x62c>
    8000a08c:	02d7f5bb          	remuw	a1,a5,a3
    8000a090:	02059593          	slli	a1,a1,0x20
    8000a094:	0205d593          	srli	a1,a1,0x20
    8000a098:	00bd85b3          	add	a1,s11,a1
    8000a09c:	0005c583          	lbu	a1,0(a1)
    8000a0a0:	02d7d7bb          	divuw	a5,a5,a3
    8000a0a4:	f8b402a3          	sb	a1,-123(s0)
    8000a0a8:	46ea7863          	bgeu	s4,a4,8000a518 <__printf+0x650>
    8000a0ac:	02d7f5bb          	remuw	a1,a5,a3
    8000a0b0:	02059593          	slli	a1,a1,0x20
    8000a0b4:	0205d593          	srli	a1,a1,0x20
    8000a0b8:	00bd85b3          	add	a1,s11,a1
    8000a0bc:	0005c583          	lbu	a1,0(a1)
    8000a0c0:	02d7d7bb          	divuw	a5,a5,a3
    8000a0c4:	f8b40323          	sb	a1,-122(s0)
    8000a0c8:	3eeaf863          	bgeu	s5,a4,8000a4b8 <__printf+0x5f0>
    8000a0cc:	02d7f5bb          	remuw	a1,a5,a3
    8000a0d0:	02059593          	slli	a1,a1,0x20
    8000a0d4:	0205d593          	srli	a1,a1,0x20
    8000a0d8:	00bd85b3          	add	a1,s11,a1
    8000a0dc:	0005c583          	lbu	a1,0(a1)
    8000a0e0:	02d7d7bb          	divuw	a5,a5,a3
    8000a0e4:	f8b403a3          	sb	a1,-121(s0)
    8000a0e8:	42eb7e63          	bgeu	s6,a4,8000a524 <__printf+0x65c>
    8000a0ec:	02d7f5bb          	remuw	a1,a5,a3
    8000a0f0:	02059593          	slli	a1,a1,0x20
    8000a0f4:	0205d593          	srli	a1,a1,0x20
    8000a0f8:	00bd85b3          	add	a1,s11,a1
    8000a0fc:	0005c583          	lbu	a1,0(a1)
    8000a100:	02d7d7bb          	divuw	a5,a5,a3
    8000a104:	f8b40423          	sb	a1,-120(s0)
    8000a108:	42ebfc63          	bgeu	s7,a4,8000a540 <__printf+0x678>
    8000a10c:	02079793          	slli	a5,a5,0x20
    8000a110:	0207d793          	srli	a5,a5,0x20
    8000a114:	00fd8db3          	add	s11,s11,a5
    8000a118:	000dc703          	lbu	a4,0(s11)
    8000a11c:	00a00793          	li	a5,10
    8000a120:	00900c93          	li	s9,9
    8000a124:	f8e404a3          	sb	a4,-119(s0)
    8000a128:	00065c63          	bgez	a2,8000a140 <__printf+0x278>
    8000a12c:	f9040713          	addi	a4,s0,-112
    8000a130:	00f70733          	add	a4,a4,a5
    8000a134:	02d00693          	li	a3,45
    8000a138:	fed70823          	sb	a3,-16(a4)
    8000a13c:	00078c93          	mv	s9,a5
    8000a140:	f8040793          	addi	a5,s0,-128
    8000a144:	01978cb3          	add	s9,a5,s9
    8000a148:	f7f40d13          	addi	s10,s0,-129
    8000a14c:	000cc503          	lbu	a0,0(s9)
    8000a150:	fffc8c93          	addi	s9,s9,-1
    8000a154:	00000097          	auipc	ra,0x0
    8000a158:	b90080e7          	jalr	-1136(ra) # 80009ce4 <consputc>
    8000a15c:	ffac98e3          	bne	s9,s10,8000a14c <__printf+0x284>
    8000a160:	00094503          	lbu	a0,0(s2)
    8000a164:	e00514e3          	bnez	a0,80009f6c <__printf+0xa4>
    8000a168:	1a0c1663          	bnez	s8,8000a314 <__printf+0x44c>
    8000a16c:	08813083          	ld	ra,136(sp)
    8000a170:	08013403          	ld	s0,128(sp)
    8000a174:	07813483          	ld	s1,120(sp)
    8000a178:	07013903          	ld	s2,112(sp)
    8000a17c:	06813983          	ld	s3,104(sp)
    8000a180:	06013a03          	ld	s4,96(sp)
    8000a184:	05813a83          	ld	s5,88(sp)
    8000a188:	05013b03          	ld	s6,80(sp)
    8000a18c:	04813b83          	ld	s7,72(sp)
    8000a190:	04013c03          	ld	s8,64(sp)
    8000a194:	03813c83          	ld	s9,56(sp)
    8000a198:	03013d03          	ld	s10,48(sp)
    8000a19c:	02813d83          	ld	s11,40(sp)
    8000a1a0:	0d010113          	addi	sp,sp,208
    8000a1a4:	00008067          	ret
    8000a1a8:	07300713          	li	a4,115
    8000a1ac:	1ce78a63          	beq	a5,a4,8000a380 <__printf+0x4b8>
    8000a1b0:	07800713          	li	a4,120
    8000a1b4:	1ee79e63          	bne	a5,a4,8000a3b0 <__printf+0x4e8>
    8000a1b8:	f7843783          	ld	a5,-136(s0)
    8000a1bc:	0007a703          	lw	a4,0(a5)
    8000a1c0:	00878793          	addi	a5,a5,8
    8000a1c4:	f6f43c23          	sd	a5,-136(s0)
    8000a1c8:	28074263          	bltz	a4,8000a44c <__printf+0x584>
    8000a1cc:	00003d97          	auipc	s11,0x3
    8000a1d0:	8acd8d93          	addi	s11,s11,-1876 # 8000ca78 <digits>
    8000a1d4:	00f77793          	andi	a5,a4,15
    8000a1d8:	00fd87b3          	add	a5,s11,a5
    8000a1dc:	0007c683          	lbu	a3,0(a5)
    8000a1e0:	00f00613          	li	a2,15
    8000a1e4:	0007079b          	sext.w	a5,a4
    8000a1e8:	f8d40023          	sb	a3,-128(s0)
    8000a1ec:	0047559b          	srliw	a1,a4,0x4
    8000a1f0:	0047569b          	srliw	a3,a4,0x4
    8000a1f4:	00000c93          	li	s9,0
    8000a1f8:	0ee65063          	bge	a2,a4,8000a2d8 <__printf+0x410>
    8000a1fc:	00f6f693          	andi	a3,a3,15
    8000a200:	00dd86b3          	add	a3,s11,a3
    8000a204:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    8000a208:	0087d79b          	srliw	a5,a5,0x8
    8000a20c:	00100c93          	li	s9,1
    8000a210:	f8d400a3          	sb	a3,-127(s0)
    8000a214:	0cb67263          	bgeu	a2,a1,8000a2d8 <__printf+0x410>
    8000a218:	00f7f693          	andi	a3,a5,15
    8000a21c:	00dd86b3          	add	a3,s11,a3
    8000a220:	0006c583          	lbu	a1,0(a3)
    8000a224:	00f00613          	li	a2,15
    8000a228:	0047d69b          	srliw	a3,a5,0x4
    8000a22c:	f8b40123          	sb	a1,-126(s0)
    8000a230:	0047d593          	srli	a1,a5,0x4
    8000a234:	28f67e63          	bgeu	a2,a5,8000a4d0 <__printf+0x608>
    8000a238:	00f6f693          	andi	a3,a3,15
    8000a23c:	00dd86b3          	add	a3,s11,a3
    8000a240:	0006c503          	lbu	a0,0(a3)
    8000a244:	0087d813          	srli	a6,a5,0x8
    8000a248:	0087d69b          	srliw	a3,a5,0x8
    8000a24c:	f8a401a3          	sb	a0,-125(s0)
    8000a250:	28b67663          	bgeu	a2,a1,8000a4dc <__printf+0x614>
    8000a254:	00f6f693          	andi	a3,a3,15
    8000a258:	00dd86b3          	add	a3,s11,a3
    8000a25c:	0006c583          	lbu	a1,0(a3)
    8000a260:	00c7d513          	srli	a0,a5,0xc
    8000a264:	00c7d69b          	srliw	a3,a5,0xc
    8000a268:	f8b40223          	sb	a1,-124(s0)
    8000a26c:	29067a63          	bgeu	a2,a6,8000a500 <__printf+0x638>
    8000a270:	00f6f693          	andi	a3,a3,15
    8000a274:	00dd86b3          	add	a3,s11,a3
    8000a278:	0006c583          	lbu	a1,0(a3)
    8000a27c:	0107d813          	srli	a6,a5,0x10
    8000a280:	0107d69b          	srliw	a3,a5,0x10
    8000a284:	f8b402a3          	sb	a1,-123(s0)
    8000a288:	28a67263          	bgeu	a2,a0,8000a50c <__printf+0x644>
    8000a28c:	00f6f693          	andi	a3,a3,15
    8000a290:	00dd86b3          	add	a3,s11,a3
    8000a294:	0006c683          	lbu	a3,0(a3)
    8000a298:	0147d79b          	srliw	a5,a5,0x14
    8000a29c:	f8d40323          	sb	a3,-122(s0)
    8000a2a0:	21067663          	bgeu	a2,a6,8000a4ac <__printf+0x5e4>
    8000a2a4:	02079793          	slli	a5,a5,0x20
    8000a2a8:	0207d793          	srli	a5,a5,0x20
    8000a2ac:	00fd8db3          	add	s11,s11,a5
    8000a2b0:	000dc683          	lbu	a3,0(s11)
    8000a2b4:	00800793          	li	a5,8
    8000a2b8:	00700c93          	li	s9,7
    8000a2bc:	f8d403a3          	sb	a3,-121(s0)
    8000a2c0:	00075c63          	bgez	a4,8000a2d8 <__printf+0x410>
    8000a2c4:	f9040713          	addi	a4,s0,-112
    8000a2c8:	00f70733          	add	a4,a4,a5
    8000a2cc:	02d00693          	li	a3,45
    8000a2d0:	fed70823          	sb	a3,-16(a4)
    8000a2d4:	00078c93          	mv	s9,a5
    8000a2d8:	f8040793          	addi	a5,s0,-128
    8000a2dc:	01978cb3          	add	s9,a5,s9
    8000a2e0:	f7f40d13          	addi	s10,s0,-129
    8000a2e4:	000cc503          	lbu	a0,0(s9)
    8000a2e8:	fffc8c93          	addi	s9,s9,-1
    8000a2ec:	00000097          	auipc	ra,0x0
    8000a2f0:	9f8080e7          	jalr	-1544(ra) # 80009ce4 <consputc>
    8000a2f4:	ff9d18e3          	bne	s10,s9,8000a2e4 <__printf+0x41c>
    8000a2f8:	0100006f          	j	8000a308 <__printf+0x440>
    8000a2fc:	00000097          	auipc	ra,0x0
    8000a300:	9e8080e7          	jalr	-1560(ra) # 80009ce4 <consputc>
    8000a304:	000c8493          	mv	s1,s9
    8000a308:	00094503          	lbu	a0,0(s2)
    8000a30c:	c60510e3          	bnez	a0,80009f6c <__printf+0xa4>
    8000a310:	e40c0ee3          	beqz	s8,8000a16c <__printf+0x2a4>
    8000a314:	000ca517          	auipc	a0,0xca
    8000a318:	fac50513          	addi	a0,a0,-84 # 800d42c0 <pr>
    8000a31c:	00001097          	auipc	ra,0x1
    8000a320:	94c080e7          	jalr	-1716(ra) # 8000ac68 <release>
    8000a324:	e49ff06f          	j	8000a16c <__printf+0x2a4>
    8000a328:	f7843783          	ld	a5,-136(s0)
    8000a32c:	03000513          	li	a0,48
    8000a330:	01000d13          	li	s10,16
    8000a334:	00878713          	addi	a4,a5,8
    8000a338:	0007bc83          	ld	s9,0(a5)
    8000a33c:	f6e43c23          	sd	a4,-136(s0)
    8000a340:	00000097          	auipc	ra,0x0
    8000a344:	9a4080e7          	jalr	-1628(ra) # 80009ce4 <consputc>
    8000a348:	07800513          	li	a0,120
    8000a34c:	00000097          	auipc	ra,0x0
    8000a350:	998080e7          	jalr	-1640(ra) # 80009ce4 <consputc>
    8000a354:	00002d97          	auipc	s11,0x2
    8000a358:	724d8d93          	addi	s11,s11,1828 # 8000ca78 <digits>
    8000a35c:	03ccd793          	srli	a5,s9,0x3c
    8000a360:	00fd87b3          	add	a5,s11,a5
    8000a364:	0007c503          	lbu	a0,0(a5)
    8000a368:	fffd0d1b          	addiw	s10,s10,-1
    8000a36c:	004c9c93          	slli	s9,s9,0x4
    8000a370:	00000097          	auipc	ra,0x0
    8000a374:	974080e7          	jalr	-1676(ra) # 80009ce4 <consputc>
    8000a378:	fe0d12e3          	bnez	s10,8000a35c <__printf+0x494>
    8000a37c:	f8dff06f          	j	8000a308 <__printf+0x440>
    8000a380:	f7843783          	ld	a5,-136(s0)
    8000a384:	0007bc83          	ld	s9,0(a5)
    8000a388:	00878793          	addi	a5,a5,8
    8000a38c:	f6f43c23          	sd	a5,-136(s0)
    8000a390:	000c9a63          	bnez	s9,8000a3a4 <__printf+0x4dc>
    8000a394:	1080006f          	j	8000a49c <__printf+0x5d4>
    8000a398:	001c8c93          	addi	s9,s9,1
    8000a39c:	00000097          	auipc	ra,0x0
    8000a3a0:	948080e7          	jalr	-1720(ra) # 80009ce4 <consputc>
    8000a3a4:	000cc503          	lbu	a0,0(s9)
    8000a3a8:	fe0518e3          	bnez	a0,8000a398 <__printf+0x4d0>
    8000a3ac:	f5dff06f          	j	8000a308 <__printf+0x440>
    8000a3b0:	02500513          	li	a0,37
    8000a3b4:	00000097          	auipc	ra,0x0
    8000a3b8:	930080e7          	jalr	-1744(ra) # 80009ce4 <consputc>
    8000a3bc:	000c8513          	mv	a0,s9
    8000a3c0:	00000097          	auipc	ra,0x0
    8000a3c4:	924080e7          	jalr	-1756(ra) # 80009ce4 <consputc>
    8000a3c8:	f41ff06f          	j	8000a308 <__printf+0x440>
    8000a3cc:	02500513          	li	a0,37
    8000a3d0:	00000097          	auipc	ra,0x0
    8000a3d4:	914080e7          	jalr	-1772(ra) # 80009ce4 <consputc>
    8000a3d8:	f31ff06f          	j	8000a308 <__printf+0x440>
    8000a3dc:	00030513          	mv	a0,t1
    8000a3e0:	00000097          	auipc	ra,0x0
    8000a3e4:	7bc080e7          	jalr	1980(ra) # 8000ab9c <acquire>
    8000a3e8:	b4dff06f          	j	80009f34 <__printf+0x6c>
    8000a3ec:	40c0053b          	negw	a0,a2
    8000a3f0:	00a00713          	li	a4,10
    8000a3f4:	02e576bb          	remuw	a3,a0,a4
    8000a3f8:	00002d97          	auipc	s11,0x2
    8000a3fc:	680d8d93          	addi	s11,s11,1664 # 8000ca78 <digits>
    8000a400:	ff700593          	li	a1,-9
    8000a404:	02069693          	slli	a3,a3,0x20
    8000a408:	0206d693          	srli	a3,a3,0x20
    8000a40c:	00dd86b3          	add	a3,s11,a3
    8000a410:	0006c683          	lbu	a3,0(a3)
    8000a414:	02e557bb          	divuw	a5,a0,a4
    8000a418:	f8d40023          	sb	a3,-128(s0)
    8000a41c:	10b65e63          	bge	a2,a1,8000a538 <__printf+0x670>
    8000a420:	06300593          	li	a1,99
    8000a424:	02e7f6bb          	remuw	a3,a5,a4
    8000a428:	02069693          	slli	a3,a3,0x20
    8000a42c:	0206d693          	srli	a3,a3,0x20
    8000a430:	00dd86b3          	add	a3,s11,a3
    8000a434:	0006c683          	lbu	a3,0(a3)
    8000a438:	02e7d73b          	divuw	a4,a5,a4
    8000a43c:	00200793          	li	a5,2
    8000a440:	f8d400a3          	sb	a3,-127(s0)
    8000a444:	bca5ece3          	bltu	a1,a0,8000a01c <__printf+0x154>
    8000a448:	ce5ff06f          	j	8000a12c <__printf+0x264>
    8000a44c:	40e007bb          	negw	a5,a4
    8000a450:	00002d97          	auipc	s11,0x2
    8000a454:	628d8d93          	addi	s11,s11,1576 # 8000ca78 <digits>
    8000a458:	00f7f693          	andi	a3,a5,15
    8000a45c:	00dd86b3          	add	a3,s11,a3
    8000a460:	0006c583          	lbu	a1,0(a3)
    8000a464:	ff100613          	li	a2,-15
    8000a468:	0047d69b          	srliw	a3,a5,0x4
    8000a46c:	f8b40023          	sb	a1,-128(s0)
    8000a470:	0047d59b          	srliw	a1,a5,0x4
    8000a474:	0ac75e63          	bge	a4,a2,8000a530 <__printf+0x668>
    8000a478:	00f6f693          	andi	a3,a3,15
    8000a47c:	00dd86b3          	add	a3,s11,a3
    8000a480:	0006c603          	lbu	a2,0(a3)
    8000a484:	00f00693          	li	a3,15
    8000a488:	0087d79b          	srliw	a5,a5,0x8
    8000a48c:	f8c400a3          	sb	a2,-127(s0)
    8000a490:	d8b6e4e3          	bltu	a3,a1,8000a218 <__printf+0x350>
    8000a494:	00200793          	li	a5,2
    8000a498:	e2dff06f          	j	8000a2c4 <__printf+0x3fc>
    8000a49c:	00002c97          	auipc	s9,0x2
    8000a4a0:	5bcc8c93          	addi	s9,s9,1468 # 8000ca58 <CONSOLE_STATUS+0xa48>
    8000a4a4:	02800513          	li	a0,40
    8000a4a8:	ef1ff06f          	j	8000a398 <__printf+0x4d0>
    8000a4ac:	00700793          	li	a5,7
    8000a4b0:	00600c93          	li	s9,6
    8000a4b4:	e0dff06f          	j	8000a2c0 <__printf+0x3f8>
    8000a4b8:	00700793          	li	a5,7
    8000a4bc:	00600c93          	li	s9,6
    8000a4c0:	c69ff06f          	j	8000a128 <__printf+0x260>
    8000a4c4:	00300793          	li	a5,3
    8000a4c8:	00200c93          	li	s9,2
    8000a4cc:	c5dff06f          	j	8000a128 <__printf+0x260>
    8000a4d0:	00300793          	li	a5,3
    8000a4d4:	00200c93          	li	s9,2
    8000a4d8:	de9ff06f          	j	8000a2c0 <__printf+0x3f8>
    8000a4dc:	00400793          	li	a5,4
    8000a4e0:	00300c93          	li	s9,3
    8000a4e4:	dddff06f          	j	8000a2c0 <__printf+0x3f8>
    8000a4e8:	00400793          	li	a5,4
    8000a4ec:	00300c93          	li	s9,3
    8000a4f0:	c39ff06f          	j	8000a128 <__printf+0x260>
    8000a4f4:	00500793          	li	a5,5
    8000a4f8:	00400c93          	li	s9,4
    8000a4fc:	c2dff06f          	j	8000a128 <__printf+0x260>
    8000a500:	00500793          	li	a5,5
    8000a504:	00400c93          	li	s9,4
    8000a508:	db9ff06f          	j	8000a2c0 <__printf+0x3f8>
    8000a50c:	00600793          	li	a5,6
    8000a510:	00500c93          	li	s9,5
    8000a514:	dadff06f          	j	8000a2c0 <__printf+0x3f8>
    8000a518:	00600793          	li	a5,6
    8000a51c:	00500c93          	li	s9,5
    8000a520:	c09ff06f          	j	8000a128 <__printf+0x260>
    8000a524:	00800793          	li	a5,8
    8000a528:	00700c93          	li	s9,7
    8000a52c:	bfdff06f          	j	8000a128 <__printf+0x260>
    8000a530:	00100793          	li	a5,1
    8000a534:	d91ff06f          	j	8000a2c4 <__printf+0x3fc>
    8000a538:	00100793          	li	a5,1
    8000a53c:	bf1ff06f          	j	8000a12c <__printf+0x264>
    8000a540:	00900793          	li	a5,9
    8000a544:	00800c93          	li	s9,8
    8000a548:	be1ff06f          	j	8000a128 <__printf+0x260>
    8000a54c:	00002517          	auipc	a0,0x2
    8000a550:	51450513          	addi	a0,a0,1300 # 8000ca60 <CONSOLE_STATUS+0xa50>
    8000a554:	00000097          	auipc	ra,0x0
    8000a558:	918080e7          	jalr	-1768(ra) # 80009e6c <panic>

000000008000a55c <printfinit>:
    8000a55c:	fe010113          	addi	sp,sp,-32
    8000a560:	00813823          	sd	s0,16(sp)
    8000a564:	00913423          	sd	s1,8(sp)
    8000a568:	00113c23          	sd	ra,24(sp)
    8000a56c:	02010413          	addi	s0,sp,32
    8000a570:	000ca497          	auipc	s1,0xca
    8000a574:	d5048493          	addi	s1,s1,-688 # 800d42c0 <pr>
    8000a578:	00048513          	mv	a0,s1
    8000a57c:	00002597          	auipc	a1,0x2
    8000a580:	4f458593          	addi	a1,a1,1268 # 8000ca70 <CONSOLE_STATUS+0xa60>
    8000a584:	00000097          	auipc	ra,0x0
    8000a588:	5f4080e7          	jalr	1524(ra) # 8000ab78 <initlock>
    8000a58c:	01813083          	ld	ra,24(sp)
    8000a590:	01013403          	ld	s0,16(sp)
    8000a594:	0004ac23          	sw	zero,24(s1)
    8000a598:	00813483          	ld	s1,8(sp)
    8000a59c:	02010113          	addi	sp,sp,32
    8000a5a0:	00008067          	ret

000000008000a5a4 <uartinit>:
    8000a5a4:	ff010113          	addi	sp,sp,-16
    8000a5a8:	00813423          	sd	s0,8(sp)
    8000a5ac:	01010413          	addi	s0,sp,16
    8000a5b0:	100007b7          	lui	a5,0x10000
    8000a5b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    8000a5b8:	f8000713          	li	a4,-128
    8000a5bc:	00e781a3          	sb	a4,3(a5)
    8000a5c0:	00300713          	li	a4,3
    8000a5c4:	00e78023          	sb	a4,0(a5)
    8000a5c8:	000780a3          	sb	zero,1(a5)
    8000a5cc:	00e781a3          	sb	a4,3(a5)
    8000a5d0:	00700693          	li	a3,7
    8000a5d4:	00d78123          	sb	a3,2(a5)
    8000a5d8:	00e780a3          	sb	a4,1(a5)
    8000a5dc:	00813403          	ld	s0,8(sp)
    8000a5e0:	01010113          	addi	sp,sp,16
    8000a5e4:	00008067          	ret

000000008000a5e8 <uartputc>:
    8000a5e8:	00005797          	auipc	a5,0x5
    8000a5ec:	3107a783          	lw	a5,784(a5) # 8000f8f8 <panicked>
    8000a5f0:	00078463          	beqz	a5,8000a5f8 <uartputc+0x10>
    8000a5f4:	0000006f          	j	8000a5f4 <uartputc+0xc>
    8000a5f8:	fd010113          	addi	sp,sp,-48
    8000a5fc:	02813023          	sd	s0,32(sp)
    8000a600:	00913c23          	sd	s1,24(sp)
    8000a604:	01213823          	sd	s2,16(sp)
    8000a608:	01313423          	sd	s3,8(sp)
    8000a60c:	02113423          	sd	ra,40(sp)
    8000a610:	03010413          	addi	s0,sp,48
    8000a614:	00005917          	auipc	s2,0x5
    8000a618:	2ec90913          	addi	s2,s2,748 # 8000f900 <uart_tx_r>
    8000a61c:	00093783          	ld	a5,0(s2)
    8000a620:	00005497          	auipc	s1,0x5
    8000a624:	2e848493          	addi	s1,s1,744 # 8000f908 <uart_tx_w>
    8000a628:	0004b703          	ld	a4,0(s1)
    8000a62c:	02078693          	addi	a3,a5,32
    8000a630:	00050993          	mv	s3,a0
    8000a634:	02e69c63          	bne	a3,a4,8000a66c <uartputc+0x84>
    8000a638:	00001097          	auipc	ra,0x1
    8000a63c:	834080e7          	jalr	-1996(ra) # 8000ae6c <push_on>
    8000a640:	00093783          	ld	a5,0(s2)
    8000a644:	0004b703          	ld	a4,0(s1)
    8000a648:	02078793          	addi	a5,a5,32
    8000a64c:	00e79463          	bne	a5,a4,8000a654 <uartputc+0x6c>
    8000a650:	0000006f          	j	8000a650 <uartputc+0x68>
    8000a654:	00001097          	auipc	ra,0x1
    8000a658:	88c080e7          	jalr	-1908(ra) # 8000aee0 <pop_on>
    8000a65c:	00093783          	ld	a5,0(s2)
    8000a660:	0004b703          	ld	a4,0(s1)
    8000a664:	02078693          	addi	a3,a5,32
    8000a668:	fce688e3          	beq	a3,a4,8000a638 <uartputc+0x50>
    8000a66c:	01f77693          	andi	a3,a4,31
    8000a670:	000ca597          	auipc	a1,0xca
    8000a674:	c7058593          	addi	a1,a1,-912 # 800d42e0 <uart_tx_buf>
    8000a678:	00d586b3          	add	a3,a1,a3
    8000a67c:	00170713          	addi	a4,a4,1
    8000a680:	01368023          	sb	s3,0(a3)
    8000a684:	00e4b023          	sd	a4,0(s1)
    8000a688:	10000637          	lui	a2,0x10000
    8000a68c:	02f71063          	bne	a4,a5,8000a6ac <uartputc+0xc4>
    8000a690:	0340006f          	j	8000a6c4 <uartputc+0xdc>
    8000a694:	00074703          	lbu	a4,0(a4)
    8000a698:	00f93023          	sd	a5,0(s2)
    8000a69c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    8000a6a0:	00093783          	ld	a5,0(s2)
    8000a6a4:	0004b703          	ld	a4,0(s1)
    8000a6a8:	00f70e63          	beq	a4,a5,8000a6c4 <uartputc+0xdc>
    8000a6ac:	00564683          	lbu	a3,5(a2)
    8000a6b0:	01f7f713          	andi	a4,a5,31
    8000a6b4:	00e58733          	add	a4,a1,a4
    8000a6b8:	0206f693          	andi	a3,a3,32
    8000a6bc:	00178793          	addi	a5,a5,1
    8000a6c0:	fc069ae3          	bnez	a3,8000a694 <uartputc+0xac>
    8000a6c4:	02813083          	ld	ra,40(sp)
    8000a6c8:	02013403          	ld	s0,32(sp)
    8000a6cc:	01813483          	ld	s1,24(sp)
    8000a6d0:	01013903          	ld	s2,16(sp)
    8000a6d4:	00813983          	ld	s3,8(sp)
    8000a6d8:	03010113          	addi	sp,sp,48
    8000a6dc:	00008067          	ret

000000008000a6e0 <uartputc_sync>:
    8000a6e0:	ff010113          	addi	sp,sp,-16
    8000a6e4:	00813423          	sd	s0,8(sp)
    8000a6e8:	01010413          	addi	s0,sp,16
    8000a6ec:	00005717          	auipc	a4,0x5
    8000a6f0:	20c72703          	lw	a4,524(a4) # 8000f8f8 <panicked>
    8000a6f4:	02071663          	bnez	a4,8000a720 <uartputc_sync+0x40>
    8000a6f8:	00050793          	mv	a5,a0
    8000a6fc:	100006b7          	lui	a3,0x10000
    8000a700:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    8000a704:	02077713          	andi	a4,a4,32
    8000a708:	fe070ce3          	beqz	a4,8000a700 <uartputc_sync+0x20>
    8000a70c:	0ff7f793          	andi	a5,a5,255
    8000a710:	00f68023          	sb	a5,0(a3)
    8000a714:	00813403          	ld	s0,8(sp)
    8000a718:	01010113          	addi	sp,sp,16
    8000a71c:	00008067          	ret
    8000a720:	0000006f          	j	8000a720 <uartputc_sync+0x40>

000000008000a724 <uartstart>:
    8000a724:	ff010113          	addi	sp,sp,-16
    8000a728:	00813423          	sd	s0,8(sp)
    8000a72c:	01010413          	addi	s0,sp,16
    8000a730:	00005617          	auipc	a2,0x5
    8000a734:	1d060613          	addi	a2,a2,464 # 8000f900 <uart_tx_r>
    8000a738:	00005517          	auipc	a0,0x5
    8000a73c:	1d050513          	addi	a0,a0,464 # 8000f908 <uart_tx_w>
    8000a740:	00063783          	ld	a5,0(a2)
    8000a744:	00053703          	ld	a4,0(a0)
    8000a748:	04f70263          	beq	a4,a5,8000a78c <uartstart+0x68>
    8000a74c:	100005b7          	lui	a1,0x10000
    8000a750:	000ca817          	auipc	a6,0xca
    8000a754:	b9080813          	addi	a6,a6,-1136 # 800d42e0 <uart_tx_buf>
    8000a758:	01c0006f          	j	8000a774 <uartstart+0x50>
    8000a75c:	0006c703          	lbu	a4,0(a3)
    8000a760:	00f63023          	sd	a5,0(a2)
    8000a764:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000a768:	00063783          	ld	a5,0(a2)
    8000a76c:	00053703          	ld	a4,0(a0)
    8000a770:	00f70e63          	beq	a4,a5,8000a78c <uartstart+0x68>
    8000a774:	01f7f713          	andi	a4,a5,31
    8000a778:	00e806b3          	add	a3,a6,a4
    8000a77c:	0055c703          	lbu	a4,5(a1)
    8000a780:	00178793          	addi	a5,a5,1
    8000a784:	02077713          	andi	a4,a4,32
    8000a788:	fc071ae3          	bnez	a4,8000a75c <uartstart+0x38>
    8000a78c:	00813403          	ld	s0,8(sp)
    8000a790:	01010113          	addi	sp,sp,16
    8000a794:	00008067          	ret

000000008000a798 <uartgetc>:
    8000a798:	ff010113          	addi	sp,sp,-16
    8000a79c:	00813423          	sd	s0,8(sp)
    8000a7a0:	01010413          	addi	s0,sp,16
    8000a7a4:	10000737          	lui	a4,0x10000
    8000a7a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000a7ac:	0017f793          	andi	a5,a5,1
    8000a7b0:	00078c63          	beqz	a5,8000a7c8 <uartgetc+0x30>
    8000a7b4:	00074503          	lbu	a0,0(a4)
    8000a7b8:	0ff57513          	andi	a0,a0,255
    8000a7bc:	00813403          	ld	s0,8(sp)
    8000a7c0:	01010113          	addi	sp,sp,16
    8000a7c4:	00008067          	ret
    8000a7c8:	fff00513          	li	a0,-1
    8000a7cc:	ff1ff06f          	j	8000a7bc <uartgetc+0x24>

000000008000a7d0 <uartintr>:
    8000a7d0:	100007b7          	lui	a5,0x10000
    8000a7d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    8000a7d8:	0017f793          	andi	a5,a5,1
    8000a7dc:	0a078463          	beqz	a5,8000a884 <uartintr+0xb4>
    8000a7e0:	fe010113          	addi	sp,sp,-32
    8000a7e4:	00813823          	sd	s0,16(sp)
    8000a7e8:	00913423          	sd	s1,8(sp)
    8000a7ec:	00113c23          	sd	ra,24(sp)
    8000a7f0:	02010413          	addi	s0,sp,32
    8000a7f4:	100004b7          	lui	s1,0x10000
    8000a7f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000a7fc:	0ff57513          	andi	a0,a0,255
    8000a800:	fffff097          	auipc	ra,0xfffff
    8000a804:	534080e7          	jalr	1332(ra) # 80009d34 <consoleintr>
    8000a808:	0054c783          	lbu	a5,5(s1)
    8000a80c:	0017f793          	andi	a5,a5,1
    8000a810:	fe0794e3          	bnez	a5,8000a7f8 <uartintr+0x28>
    8000a814:	00005617          	auipc	a2,0x5
    8000a818:	0ec60613          	addi	a2,a2,236 # 8000f900 <uart_tx_r>
    8000a81c:	00005517          	auipc	a0,0x5
    8000a820:	0ec50513          	addi	a0,a0,236 # 8000f908 <uart_tx_w>
    8000a824:	00063783          	ld	a5,0(a2)
    8000a828:	00053703          	ld	a4,0(a0)
    8000a82c:	04f70263          	beq	a4,a5,8000a870 <uartintr+0xa0>
    8000a830:	100005b7          	lui	a1,0x10000
    8000a834:	000ca817          	auipc	a6,0xca
    8000a838:	aac80813          	addi	a6,a6,-1364 # 800d42e0 <uart_tx_buf>
    8000a83c:	01c0006f          	j	8000a858 <uartintr+0x88>
    8000a840:	0006c703          	lbu	a4,0(a3)
    8000a844:	00f63023          	sd	a5,0(a2)
    8000a848:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000a84c:	00063783          	ld	a5,0(a2)
    8000a850:	00053703          	ld	a4,0(a0)
    8000a854:	00f70e63          	beq	a4,a5,8000a870 <uartintr+0xa0>
    8000a858:	01f7f713          	andi	a4,a5,31
    8000a85c:	00e806b3          	add	a3,a6,a4
    8000a860:	0055c703          	lbu	a4,5(a1)
    8000a864:	00178793          	addi	a5,a5,1
    8000a868:	02077713          	andi	a4,a4,32
    8000a86c:	fc071ae3          	bnez	a4,8000a840 <uartintr+0x70>
    8000a870:	01813083          	ld	ra,24(sp)
    8000a874:	01013403          	ld	s0,16(sp)
    8000a878:	00813483          	ld	s1,8(sp)
    8000a87c:	02010113          	addi	sp,sp,32
    8000a880:	00008067          	ret
    8000a884:	00005617          	auipc	a2,0x5
    8000a888:	07c60613          	addi	a2,a2,124 # 8000f900 <uart_tx_r>
    8000a88c:	00005517          	auipc	a0,0x5
    8000a890:	07c50513          	addi	a0,a0,124 # 8000f908 <uart_tx_w>
    8000a894:	00063783          	ld	a5,0(a2)
    8000a898:	00053703          	ld	a4,0(a0)
    8000a89c:	04f70263          	beq	a4,a5,8000a8e0 <uartintr+0x110>
    8000a8a0:	100005b7          	lui	a1,0x10000
    8000a8a4:	000ca817          	auipc	a6,0xca
    8000a8a8:	a3c80813          	addi	a6,a6,-1476 # 800d42e0 <uart_tx_buf>
    8000a8ac:	01c0006f          	j	8000a8c8 <uartintr+0xf8>
    8000a8b0:	0006c703          	lbu	a4,0(a3)
    8000a8b4:	00f63023          	sd	a5,0(a2)
    8000a8b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000a8bc:	00063783          	ld	a5,0(a2)
    8000a8c0:	00053703          	ld	a4,0(a0)
    8000a8c4:	02f70063          	beq	a4,a5,8000a8e4 <uartintr+0x114>
    8000a8c8:	01f7f713          	andi	a4,a5,31
    8000a8cc:	00e806b3          	add	a3,a6,a4
    8000a8d0:	0055c703          	lbu	a4,5(a1)
    8000a8d4:	00178793          	addi	a5,a5,1
    8000a8d8:	02077713          	andi	a4,a4,32
    8000a8dc:	fc071ae3          	bnez	a4,8000a8b0 <uartintr+0xe0>
    8000a8e0:	00008067          	ret
    8000a8e4:	00008067          	ret

000000008000a8e8 <kinit>:
    8000a8e8:	fc010113          	addi	sp,sp,-64
    8000a8ec:	02913423          	sd	s1,40(sp)
    8000a8f0:	fffff7b7          	lui	a5,0xfffff
    8000a8f4:	000cb497          	auipc	s1,0xcb
    8000a8f8:	a0b48493          	addi	s1,s1,-1525 # 800d52ff <end+0xfff>
    8000a8fc:	02813823          	sd	s0,48(sp)
    8000a900:	01313c23          	sd	s3,24(sp)
    8000a904:	00f4f4b3          	and	s1,s1,a5
    8000a908:	02113c23          	sd	ra,56(sp)
    8000a90c:	03213023          	sd	s2,32(sp)
    8000a910:	01413823          	sd	s4,16(sp)
    8000a914:	01513423          	sd	s5,8(sp)
    8000a918:	04010413          	addi	s0,sp,64
    8000a91c:	000017b7          	lui	a5,0x1
    8000a920:	01100993          	li	s3,17
    8000a924:	00f487b3          	add	a5,s1,a5
    8000a928:	01b99993          	slli	s3,s3,0x1b
    8000a92c:	06f9e063          	bltu	s3,a5,8000a98c <kinit+0xa4>
    8000a930:	000caa97          	auipc	s5,0xca
    8000a934:	9d0a8a93          	addi	s5,s5,-1584 # 800d4300 <end>
    8000a938:	0754ec63          	bltu	s1,s5,8000a9b0 <kinit+0xc8>
    8000a93c:	0734fa63          	bgeu	s1,s3,8000a9b0 <kinit+0xc8>
    8000a940:	00088a37          	lui	s4,0x88
    8000a944:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    8000a948:	00005917          	auipc	s2,0x5
    8000a94c:	fc890913          	addi	s2,s2,-56 # 8000f910 <kmem>
    8000a950:	00ca1a13          	slli	s4,s4,0xc
    8000a954:	0140006f          	j	8000a968 <kinit+0x80>
    8000a958:	000017b7          	lui	a5,0x1
    8000a95c:	00f484b3          	add	s1,s1,a5
    8000a960:	0554e863          	bltu	s1,s5,8000a9b0 <kinit+0xc8>
    8000a964:	0534f663          	bgeu	s1,s3,8000a9b0 <kinit+0xc8>
    8000a968:	00001637          	lui	a2,0x1
    8000a96c:	00100593          	li	a1,1
    8000a970:	00048513          	mv	a0,s1
    8000a974:	00000097          	auipc	ra,0x0
    8000a978:	5e4080e7          	jalr	1508(ra) # 8000af58 <__memset>
    8000a97c:	00093783          	ld	a5,0(s2)
    8000a980:	00f4b023          	sd	a5,0(s1)
    8000a984:	00993023          	sd	s1,0(s2)
    8000a988:	fd4498e3          	bne	s1,s4,8000a958 <kinit+0x70>
    8000a98c:	03813083          	ld	ra,56(sp)
    8000a990:	03013403          	ld	s0,48(sp)
    8000a994:	02813483          	ld	s1,40(sp)
    8000a998:	02013903          	ld	s2,32(sp)
    8000a99c:	01813983          	ld	s3,24(sp)
    8000a9a0:	01013a03          	ld	s4,16(sp)
    8000a9a4:	00813a83          	ld	s5,8(sp)
    8000a9a8:	04010113          	addi	sp,sp,64
    8000a9ac:	00008067          	ret
    8000a9b0:	00002517          	auipc	a0,0x2
    8000a9b4:	0e050513          	addi	a0,a0,224 # 8000ca90 <digits+0x18>
    8000a9b8:	fffff097          	auipc	ra,0xfffff
    8000a9bc:	4b4080e7          	jalr	1204(ra) # 80009e6c <panic>

000000008000a9c0 <freerange>:
    8000a9c0:	fc010113          	addi	sp,sp,-64
    8000a9c4:	000017b7          	lui	a5,0x1
    8000a9c8:	02913423          	sd	s1,40(sp)
    8000a9cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    8000a9d0:	009504b3          	add	s1,a0,s1
    8000a9d4:	fffff537          	lui	a0,0xfffff
    8000a9d8:	02813823          	sd	s0,48(sp)
    8000a9dc:	02113c23          	sd	ra,56(sp)
    8000a9e0:	03213023          	sd	s2,32(sp)
    8000a9e4:	01313c23          	sd	s3,24(sp)
    8000a9e8:	01413823          	sd	s4,16(sp)
    8000a9ec:	01513423          	sd	s5,8(sp)
    8000a9f0:	01613023          	sd	s6,0(sp)
    8000a9f4:	04010413          	addi	s0,sp,64
    8000a9f8:	00a4f4b3          	and	s1,s1,a0
    8000a9fc:	00f487b3          	add	a5,s1,a5
    8000aa00:	06f5e463          	bltu	a1,a5,8000aa68 <freerange+0xa8>
    8000aa04:	000caa97          	auipc	s5,0xca
    8000aa08:	8fca8a93          	addi	s5,s5,-1796 # 800d4300 <end>
    8000aa0c:	0954e263          	bltu	s1,s5,8000aa90 <freerange+0xd0>
    8000aa10:	01100993          	li	s3,17
    8000aa14:	01b99993          	slli	s3,s3,0x1b
    8000aa18:	0734fc63          	bgeu	s1,s3,8000aa90 <freerange+0xd0>
    8000aa1c:	00058a13          	mv	s4,a1
    8000aa20:	00005917          	auipc	s2,0x5
    8000aa24:	ef090913          	addi	s2,s2,-272 # 8000f910 <kmem>
    8000aa28:	00002b37          	lui	s6,0x2
    8000aa2c:	0140006f          	j	8000aa40 <freerange+0x80>
    8000aa30:	000017b7          	lui	a5,0x1
    8000aa34:	00f484b3          	add	s1,s1,a5
    8000aa38:	0554ec63          	bltu	s1,s5,8000aa90 <freerange+0xd0>
    8000aa3c:	0534fa63          	bgeu	s1,s3,8000aa90 <freerange+0xd0>
    8000aa40:	00001637          	lui	a2,0x1
    8000aa44:	00100593          	li	a1,1
    8000aa48:	00048513          	mv	a0,s1
    8000aa4c:	00000097          	auipc	ra,0x0
    8000aa50:	50c080e7          	jalr	1292(ra) # 8000af58 <__memset>
    8000aa54:	00093703          	ld	a4,0(s2)
    8000aa58:	016487b3          	add	a5,s1,s6
    8000aa5c:	00e4b023          	sd	a4,0(s1)
    8000aa60:	00993023          	sd	s1,0(s2)
    8000aa64:	fcfa76e3          	bgeu	s4,a5,8000aa30 <freerange+0x70>
    8000aa68:	03813083          	ld	ra,56(sp)
    8000aa6c:	03013403          	ld	s0,48(sp)
    8000aa70:	02813483          	ld	s1,40(sp)
    8000aa74:	02013903          	ld	s2,32(sp)
    8000aa78:	01813983          	ld	s3,24(sp)
    8000aa7c:	01013a03          	ld	s4,16(sp)
    8000aa80:	00813a83          	ld	s5,8(sp)
    8000aa84:	00013b03          	ld	s6,0(sp)
    8000aa88:	04010113          	addi	sp,sp,64
    8000aa8c:	00008067          	ret
    8000aa90:	00002517          	auipc	a0,0x2
    8000aa94:	00050513          	mv	a0,a0
    8000aa98:	fffff097          	auipc	ra,0xfffff
    8000aa9c:	3d4080e7          	jalr	980(ra) # 80009e6c <panic>

000000008000aaa0 <kfree>:
    8000aaa0:	fe010113          	addi	sp,sp,-32
    8000aaa4:	00813823          	sd	s0,16(sp)
    8000aaa8:	00113c23          	sd	ra,24(sp)
    8000aaac:	00913423          	sd	s1,8(sp)
    8000aab0:	02010413          	addi	s0,sp,32
    8000aab4:	03451793          	slli	a5,a0,0x34
    8000aab8:	04079c63          	bnez	a5,8000ab10 <kfree+0x70>
    8000aabc:	000ca797          	auipc	a5,0xca
    8000aac0:	84478793          	addi	a5,a5,-1980 # 800d4300 <end>
    8000aac4:	00050493          	mv	s1,a0
    8000aac8:	04f56463          	bltu	a0,a5,8000ab10 <kfree+0x70>
    8000aacc:	01100793          	li	a5,17
    8000aad0:	01b79793          	slli	a5,a5,0x1b
    8000aad4:	02f57e63          	bgeu	a0,a5,8000ab10 <kfree+0x70>
    8000aad8:	00001637          	lui	a2,0x1
    8000aadc:	00100593          	li	a1,1
    8000aae0:	00000097          	auipc	ra,0x0
    8000aae4:	478080e7          	jalr	1144(ra) # 8000af58 <__memset>
    8000aae8:	00005797          	auipc	a5,0x5
    8000aaec:	e2878793          	addi	a5,a5,-472 # 8000f910 <kmem>
    8000aaf0:	0007b703          	ld	a4,0(a5)
    8000aaf4:	01813083          	ld	ra,24(sp)
    8000aaf8:	01013403          	ld	s0,16(sp)
    8000aafc:	00e4b023          	sd	a4,0(s1)
    8000ab00:	0097b023          	sd	s1,0(a5)
    8000ab04:	00813483          	ld	s1,8(sp)
    8000ab08:	02010113          	addi	sp,sp,32
    8000ab0c:	00008067          	ret
    8000ab10:	00002517          	auipc	a0,0x2
    8000ab14:	f8050513          	addi	a0,a0,-128 # 8000ca90 <digits+0x18>
    8000ab18:	fffff097          	auipc	ra,0xfffff
    8000ab1c:	354080e7          	jalr	852(ra) # 80009e6c <panic>

000000008000ab20 <kalloc>:
    8000ab20:	fe010113          	addi	sp,sp,-32
    8000ab24:	00813823          	sd	s0,16(sp)
    8000ab28:	00913423          	sd	s1,8(sp)
    8000ab2c:	00113c23          	sd	ra,24(sp)
    8000ab30:	02010413          	addi	s0,sp,32
    8000ab34:	00005797          	auipc	a5,0x5
    8000ab38:	ddc78793          	addi	a5,a5,-548 # 8000f910 <kmem>
    8000ab3c:	0007b483          	ld	s1,0(a5)
    8000ab40:	02048063          	beqz	s1,8000ab60 <kalloc+0x40>
    8000ab44:	0004b703          	ld	a4,0(s1)
    8000ab48:	00001637          	lui	a2,0x1
    8000ab4c:	00500593          	li	a1,5
    8000ab50:	00048513          	mv	a0,s1
    8000ab54:	00e7b023          	sd	a4,0(a5)
    8000ab58:	00000097          	auipc	ra,0x0
    8000ab5c:	400080e7          	jalr	1024(ra) # 8000af58 <__memset>
    8000ab60:	01813083          	ld	ra,24(sp)
    8000ab64:	01013403          	ld	s0,16(sp)
    8000ab68:	00048513          	mv	a0,s1
    8000ab6c:	00813483          	ld	s1,8(sp)
    8000ab70:	02010113          	addi	sp,sp,32
    8000ab74:	00008067          	ret

000000008000ab78 <initlock>:
    8000ab78:	ff010113          	addi	sp,sp,-16
    8000ab7c:	00813423          	sd	s0,8(sp)
    8000ab80:	01010413          	addi	s0,sp,16
    8000ab84:	00813403          	ld	s0,8(sp)
    8000ab88:	00b53423          	sd	a1,8(a0)
    8000ab8c:	00052023          	sw	zero,0(a0)
    8000ab90:	00053823          	sd	zero,16(a0)
    8000ab94:	01010113          	addi	sp,sp,16
    8000ab98:	00008067          	ret

000000008000ab9c <acquire>:
    8000ab9c:	fe010113          	addi	sp,sp,-32
    8000aba0:	00813823          	sd	s0,16(sp)
    8000aba4:	00913423          	sd	s1,8(sp)
    8000aba8:	00113c23          	sd	ra,24(sp)
    8000abac:	01213023          	sd	s2,0(sp)
    8000abb0:	02010413          	addi	s0,sp,32
    8000abb4:	00050493          	mv	s1,a0
    8000abb8:	10002973          	csrr	s2,sstatus
    8000abbc:	100027f3          	csrr	a5,sstatus
    8000abc0:	ffd7f793          	andi	a5,a5,-3
    8000abc4:	10079073          	csrw	sstatus,a5
    8000abc8:	fffff097          	auipc	ra,0xfffff
    8000abcc:	8e4080e7          	jalr	-1820(ra) # 800094ac <mycpu>
    8000abd0:	07852783          	lw	a5,120(a0)
    8000abd4:	06078e63          	beqz	a5,8000ac50 <acquire+0xb4>
    8000abd8:	fffff097          	auipc	ra,0xfffff
    8000abdc:	8d4080e7          	jalr	-1836(ra) # 800094ac <mycpu>
    8000abe0:	07852783          	lw	a5,120(a0)
    8000abe4:	0004a703          	lw	a4,0(s1)
    8000abe8:	0017879b          	addiw	a5,a5,1
    8000abec:	06f52c23          	sw	a5,120(a0)
    8000abf0:	04071063          	bnez	a4,8000ac30 <acquire+0x94>
    8000abf4:	00100713          	li	a4,1
    8000abf8:	00070793          	mv	a5,a4
    8000abfc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    8000ac00:	0007879b          	sext.w	a5,a5
    8000ac04:	fe079ae3          	bnez	a5,8000abf8 <acquire+0x5c>
    8000ac08:	0ff0000f          	fence
    8000ac0c:	fffff097          	auipc	ra,0xfffff
    8000ac10:	8a0080e7          	jalr	-1888(ra) # 800094ac <mycpu>
    8000ac14:	01813083          	ld	ra,24(sp)
    8000ac18:	01013403          	ld	s0,16(sp)
    8000ac1c:	00a4b823          	sd	a0,16(s1)
    8000ac20:	00013903          	ld	s2,0(sp)
    8000ac24:	00813483          	ld	s1,8(sp)
    8000ac28:	02010113          	addi	sp,sp,32
    8000ac2c:	00008067          	ret
    8000ac30:	0104b903          	ld	s2,16(s1)
    8000ac34:	fffff097          	auipc	ra,0xfffff
    8000ac38:	878080e7          	jalr	-1928(ra) # 800094ac <mycpu>
    8000ac3c:	faa91ce3          	bne	s2,a0,8000abf4 <acquire+0x58>
    8000ac40:	00002517          	auipc	a0,0x2
    8000ac44:	e5850513          	addi	a0,a0,-424 # 8000ca98 <digits+0x20>
    8000ac48:	fffff097          	auipc	ra,0xfffff
    8000ac4c:	224080e7          	jalr	548(ra) # 80009e6c <panic>
    8000ac50:	00195913          	srli	s2,s2,0x1
    8000ac54:	fffff097          	auipc	ra,0xfffff
    8000ac58:	858080e7          	jalr	-1960(ra) # 800094ac <mycpu>
    8000ac5c:	00197913          	andi	s2,s2,1
    8000ac60:	07252e23          	sw	s2,124(a0)
    8000ac64:	f75ff06f          	j	8000abd8 <acquire+0x3c>

000000008000ac68 <release>:
    8000ac68:	fe010113          	addi	sp,sp,-32
    8000ac6c:	00813823          	sd	s0,16(sp)
    8000ac70:	00113c23          	sd	ra,24(sp)
    8000ac74:	00913423          	sd	s1,8(sp)
    8000ac78:	01213023          	sd	s2,0(sp)
    8000ac7c:	02010413          	addi	s0,sp,32
    8000ac80:	00052783          	lw	a5,0(a0)
    8000ac84:	00079a63          	bnez	a5,8000ac98 <release+0x30>
    8000ac88:	00002517          	auipc	a0,0x2
    8000ac8c:	e1850513          	addi	a0,a0,-488 # 8000caa0 <digits+0x28>
    8000ac90:	fffff097          	auipc	ra,0xfffff
    8000ac94:	1dc080e7          	jalr	476(ra) # 80009e6c <panic>
    8000ac98:	01053903          	ld	s2,16(a0)
    8000ac9c:	00050493          	mv	s1,a0
    8000aca0:	fffff097          	auipc	ra,0xfffff
    8000aca4:	80c080e7          	jalr	-2036(ra) # 800094ac <mycpu>
    8000aca8:	fea910e3          	bne	s2,a0,8000ac88 <release+0x20>
    8000acac:	0004b823          	sd	zero,16(s1)
    8000acb0:	0ff0000f          	fence
    8000acb4:	0f50000f          	fence	iorw,ow
    8000acb8:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000acbc:	ffffe097          	auipc	ra,0xffffe
    8000acc0:	7f0080e7          	jalr	2032(ra) # 800094ac <mycpu>
    8000acc4:	100027f3          	csrr	a5,sstatus
    8000acc8:	0027f793          	andi	a5,a5,2
    8000accc:	04079a63          	bnez	a5,8000ad20 <release+0xb8>
    8000acd0:	07852783          	lw	a5,120(a0)
    8000acd4:	02f05e63          	blez	a5,8000ad10 <release+0xa8>
    8000acd8:	fff7871b          	addiw	a4,a5,-1
    8000acdc:	06e52c23          	sw	a4,120(a0)
    8000ace0:	00071c63          	bnez	a4,8000acf8 <release+0x90>
    8000ace4:	07c52783          	lw	a5,124(a0)
    8000ace8:	00078863          	beqz	a5,8000acf8 <release+0x90>
    8000acec:	100027f3          	csrr	a5,sstatus
    8000acf0:	0027e793          	ori	a5,a5,2
    8000acf4:	10079073          	csrw	sstatus,a5
    8000acf8:	01813083          	ld	ra,24(sp)
    8000acfc:	01013403          	ld	s0,16(sp)
    8000ad00:	00813483          	ld	s1,8(sp)
    8000ad04:	00013903          	ld	s2,0(sp)
    8000ad08:	02010113          	addi	sp,sp,32
    8000ad0c:	00008067          	ret
    8000ad10:	00002517          	auipc	a0,0x2
    8000ad14:	db050513          	addi	a0,a0,-592 # 8000cac0 <digits+0x48>
    8000ad18:	fffff097          	auipc	ra,0xfffff
    8000ad1c:	154080e7          	jalr	340(ra) # 80009e6c <panic>
    8000ad20:	00002517          	auipc	a0,0x2
    8000ad24:	d8850513          	addi	a0,a0,-632 # 8000caa8 <digits+0x30>
    8000ad28:	fffff097          	auipc	ra,0xfffff
    8000ad2c:	144080e7          	jalr	324(ra) # 80009e6c <panic>

000000008000ad30 <holding>:
    8000ad30:	00052783          	lw	a5,0(a0)
    8000ad34:	00079663          	bnez	a5,8000ad40 <holding+0x10>
    8000ad38:	00000513          	li	a0,0
    8000ad3c:	00008067          	ret
    8000ad40:	fe010113          	addi	sp,sp,-32
    8000ad44:	00813823          	sd	s0,16(sp)
    8000ad48:	00913423          	sd	s1,8(sp)
    8000ad4c:	00113c23          	sd	ra,24(sp)
    8000ad50:	02010413          	addi	s0,sp,32
    8000ad54:	01053483          	ld	s1,16(a0)
    8000ad58:	ffffe097          	auipc	ra,0xffffe
    8000ad5c:	754080e7          	jalr	1876(ra) # 800094ac <mycpu>
    8000ad60:	01813083          	ld	ra,24(sp)
    8000ad64:	01013403          	ld	s0,16(sp)
    8000ad68:	40a48533          	sub	a0,s1,a0
    8000ad6c:	00153513          	seqz	a0,a0
    8000ad70:	00813483          	ld	s1,8(sp)
    8000ad74:	02010113          	addi	sp,sp,32
    8000ad78:	00008067          	ret

000000008000ad7c <push_off>:
    8000ad7c:	fe010113          	addi	sp,sp,-32
    8000ad80:	00813823          	sd	s0,16(sp)
    8000ad84:	00113c23          	sd	ra,24(sp)
    8000ad88:	00913423          	sd	s1,8(sp)
    8000ad8c:	02010413          	addi	s0,sp,32
    8000ad90:	100024f3          	csrr	s1,sstatus
    8000ad94:	100027f3          	csrr	a5,sstatus
    8000ad98:	ffd7f793          	andi	a5,a5,-3
    8000ad9c:	10079073          	csrw	sstatus,a5
    8000ada0:	ffffe097          	auipc	ra,0xffffe
    8000ada4:	70c080e7          	jalr	1804(ra) # 800094ac <mycpu>
    8000ada8:	07852783          	lw	a5,120(a0)
    8000adac:	02078663          	beqz	a5,8000add8 <push_off+0x5c>
    8000adb0:	ffffe097          	auipc	ra,0xffffe
    8000adb4:	6fc080e7          	jalr	1788(ra) # 800094ac <mycpu>
    8000adb8:	07852783          	lw	a5,120(a0)
    8000adbc:	01813083          	ld	ra,24(sp)
    8000adc0:	01013403          	ld	s0,16(sp)
    8000adc4:	0017879b          	addiw	a5,a5,1
    8000adc8:	06f52c23          	sw	a5,120(a0)
    8000adcc:	00813483          	ld	s1,8(sp)
    8000add0:	02010113          	addi	sp,sp,32
    8000add4:	00008067          	ret
    8000add8:	0014d493          	srli	s1,s1,0x1
    8000addc:	ffffe097          	auipc	ra,0xffffe
    8000ade0:	6d0080e7          	jalr	1744(ra) # 800094ac <mycpu>
    8000ade4:	0014f493          	andi	s1,s1,1
    8000ade8:	06952e23          	sw	s1,124(a0)
    8000adec:	fc5ff06f          	j	8000adb0 <push_off+0x34>

000000008000adf0 <pop_off>:
    8000adf0:	ff010113          	addi	sp,sp,-16
    8000adf4:	00813023          	sd	s0,0(sp)
    8000adf8:	00113423          	sd	ra,8(sp)
    8000adfc:	01010413          	addi	s0,sp,16
    8000ae00:	ffffe097          	auipc	ra,0xffffe
    8000ae04:	6ac080e7          	jalr	1708(ra) # 800094ac <mycpu>
    8000ae08:	100027f3          	csrr	a5,sstatus
    8000ae0c:	0027f793          	andi	a5,a5,2
    8000ae10:	04079663          	bnez	a5,8000ae5c <pop_off+0x6c>
    8000ae14:	07852783          	lw	a5,120(a0)
    8000ae18:	02f05a63          	blez	a5,8000ae4c <pop_off+0x5c>
    8000ae1c:	fff7871b          	addiw	a4,a5,-1
    8000ae20:	06e52c23          	sw	a4,120(a0)
    8000ae24:	00071c63          	bnez	a4,8000ae3c <pop_off+0x4c>
    8000ae28:	07c52783          	lw	a5,124(a0)
    8000ae2c:	00078863          	beqz	a5,8000ae3c <pop_off+0x4c>
    8000ae30:	100027f3          	csrr	a5,sstatus
    8000ae34:	0027e793          	ori	a5,a5,2
    8000ae38:	10079073          	csrw	sstatus,a5
    8000ae3c:	00813083          	ld	ra,8(sp)
    8000ae40:	00013403          	ld	s0,0(sp)
    8000ae44:	01010113          	addi	sp,sp,16
    8000ae48:	00008067          	ret
    8000ae4c:	00002517          	auipc	a0,0x2
    8000ae50:	c7450513          	addi	a0,a0,-908 # 8000cac0 <digits+0x48>
    8000ae54:	fffff097          	auipc	ra,0xfffff
    8000ae58:	018080e7          	jalr	24(ra) # 80009e6c <panic>
    8000ae5c:	00002517          	auipc	a0,0x2
    8000ae60:	c4c50513          	addi	a0,a0,-948 # 8000caa8 <digits+0x30>
    8000ae64:	fffff097          	auipc	ra,0xfffff
    8000ae68:	008080e7          	jalr	8(ra) # 80009e6c <panic>

000000008000ae6c <push_on>:
    8000ae6c:	fe010113          	addi	sp,sp,-32
    8000ae70:	00813823          	sd	s0,16(sp)
    8000ae74:	00113c23          	sd	ra,24(sp)
    8000ae78:	00913423          	sd	s1,8(sp)
    8000ae7c:	02010413          	addi	s0,sp,32
    8000ae80:	100024f3          	csrr	s1,sstatus
    8000ae84:	100027f3          	csrr	a5,sstatus
    8000ae88:	0027e793          	ori	a5,a5,2
    8000ae8c:	10079073          	csrw	sstatus,a5
    8000ae90:	ffffe097          	auipc	ra,0xffffe
    8000ae94:	61c080e7          	jalr	1564(ra) # 800094ac <mycpu>
    8000ae98:	07852783          	lw	a5,120(a0)
    8000ae9c:	02078663          	beqz	a5,8000aec8 <push_on+0x5c>
    8000aea0:	ffffe097          	auipc	ra,0xffffe
    8000aea4:	60c080e7          	jalr	1548(ra) # 800094ac <mycpu>
    8000aea8:	07852783          	lw	a5,120(a0)
    8000aeac:	01813083          	ld	ra,24(sp)
    8000aeb0:	01013403          	ld	s0,16(sp)
    8000aeb4:	0017879b          	addiw	a5,a5,1
    8000aeb8:	06f52c23          	sw	a5,120(a0)
    8000aebc:	00813483          	ld	s1,8(sp)
    8000aec0:	02010113          	addi	sp,sp,32
    8000aec4:	00008067          	ret
    8000aec8:	0014d493          	srli	s1,s1,0x1
    8000aecc:	ffffe097          	auipc	ra,0xffffe
    8000aed0:	5e0080e7          	jalr	1504(ra) # 800094ac <mycpu>
    8000aed4:	0014f493          	andi	s1,s1,1
    8000aed8:	06952e23          	sw	s1,124(a0)
    8000aedc:	fc5ff06f          	j	8000aea0 <push_on+0x34>

000000008000aee0 <pop_on>:
    8000aee0:	ff010113          	addi	sp,sp,-16
    8000aee4:	00813023          	sd	s0,0(sp)
    8000aee8:	00113423          	sd	ra,8(sp)
    8000aeec:	01010413          	addi	s0,sp,16
    8000aef0:	ffffe097          	auipc	ra,0xffffe
    8000aef4:	5bc080e7          	jalr	1468(ra) # 800094ac <mycpu>
    8000aef8:	100027f3          	csrr	a5,sstatus
    8000aefc:	0027f793          	andi	a5,a5,2
    8000af00:	04078463          	beqz	a5,8000af48 <pop_on+0x68>
    8000af04:	07852783          	lw	a5,120(a0)
    8000af08:	02f05863          	blez	a5,8000af38 <pop_on+0x58>
    8000af0c:	fff7879b          	addiw	a5,a5,-1
    8000af10:	06f52c23          	sw	a5,120(a0)
    8000af14:	07853783          	ld	a5,120(a0)
    8000af18:	00079863          	bnez	a5,8000af28 <pop_on+0x48>
    8000af1c:	100027f3          	csrr	a5,sstatus
    8000af20:	ffd7f793          	andi	a5,a5,-3
    8000af24:	10079073          	csrw	sstatus,a5
    8000af28:	00813083          	ld	ra,8(sp)
    8000af2c:	00013403          	ld	s0,0(sp)
    8000af30:	01010113          	addi	sp,sp,16
    8000af34:	00008067          	ret
    8000af38:	00002517          	auipc	a0,0x2
    8000af3c:	bb050513          	addi	a0,a0,-1104 # 8000cae8 <digits+0x70>
    8000af40:	fffff097          	auipc	ra,0xfffff
    8000af44:	f2c080e7          	jalr	-212(ra) # 80009e6c <panic>
    8000af48:	00002517          	auipc	a0,0x2
    8000af4c:	b8050513          	addi	a0,a0,-1152 # 8000cac8 <digits+0x50>
    8000af50:	fffff097          	auipc	ra,0xfffff
    8000af54:	f1c080e7          	jalr	-228(ra) # 80009e6c <panic>

000000008000af58 <__memset>:
    8000af58:	ff010113          	addi	sp,sp,-16
    8000af5c:	00813423          	sd	s0,8(sp)
    8000af60:	01010413          	addi	s0,sp,16
    8000af64:	1a060e63          	beqz	a2,8000b120 <__memset+0x1c8>
    8000af68:	40a007b3          	neg	a5,a0
    8000af6c:	0077f793          	andi	a5,a5,7
    8000af70:	00778693          	addi	a3,a5,7
    8000af74:	00b00813          	li	a6,11
    8000af78:	0ff5f593          	andi	a1,a1,255
    8000af7c:	fff6071b          	addiw	a4,a2,-1
    8000af80:	1b06e663          	bltu	a3,a6,8000b12c <__memset+0x1d4>
    8000af84:	1cd76463          	bltu	a4,a3,8000b14c <__memset+0x1f4>
    8000af88:	1a078e63          	beqz	a5,8000b144 <__memset+0x1ec>
    8000af8c:	00b50023          	sb	a1,0(a0)
    8000af90:	00100713          	li	a4,1
    8000af94:	1ae78463          	beq	a5,a4,8000b13c <__memset+0x1e4>
    8000af98:	00b500a3          	sb	a1,1(a0)
    8000af9c:	00200713          	li	a4,2
    8000afa0:	1ae78a63          	beq	a5,a4,8000b154 <__memset+0x1fc>
    8000afa4:	00b50123          	sb	a1,2(a0)
    8000afa8:	00300713          	li	a4,3
    8000afac:	18e78463          	beq	a5,a4,8000b134 <__memset+0x1dc>
    8000afb0:	00b501a3          	sb	a1,3(a0)
    8000afb4:	00400713          	li	a4,4
    8000afb8:	1ae78263          	beq	a5,a4,8000b15c <__memset+0x204>
    8000afbc:	00b50223          	sb	a1,4(a0)
    8000afc0:	00500713          	li	a4,5
    8000afc4:	1ae78063          	beq	a5,a4,8000b164 <__memset+0x20c>
    8000afc8:	00b502a3          	sb	a1,5(a0)
    8000afcc:	00700713          	li	a4,7
    8000afd0:	18e79e63          	bne	a5,a4,8000b16c <__memset+0x214>
    8000afd4:	00b50323          	sb	a1,6(a0)
    8000afd8:	00700e93          	li	t4,7
    8000afdc:	00859713          	slli	a4,a1,0x8
    8000afe0:	00e5e733          	or	a4,a1,a4
    8000afe4:	01059e13          	slli	t3,a1,0x10
    8000afe8:	01c76e33          	or	t3,a4,t3
    8000afec:	01859313          	slli	t1,a1,0x18
    8000aff0:	006e6333          	or	t1,t3,t1
    8000aff4:	02059893          	slli	a7,a1,0x20
    8000aff8:	40f60e3b          	subw	t3,a2,a5
    8000affc:	011368b3          	or	a7,t1,a7
    8000b000:	02859813          	slli	a6,a1,0x28
    8000b004:	0108e833          	or	a6,a7,a6
    8000b008:	03059693          	slli	a3,a1,0x30
    8000b00c:	003e589b          	srliw	a7,t3,0x3
    8000b010:	00d866b3          	or	a3,a6,a3
    8000b014:	03859713          	slli	a4,a1,0x38
    8000b018:	00389813          	slli	a6,a7,0x3
    8000b01c:	00f507b3          	add	a5,a0,a5
    8000b020:	00e6e733          	or	a4,a3,a4
    8000b024:	000e089b          	sext.w	a7,t3
    8000b028:	00f806b3          	add	a3,a6,a5
    8000b02c:	00e7b023          	sd	a4,0(a5)
    8000b030:	00878793          	addi	a5,a5,8
    8000b034:	fed79ce3          	bne	a5,a3,8000b02c <__memset+0xd4>
    8000b038:	ff8e7793          	andi	a5,t3,-8
    8000b03c:	0007871b          	sext.w	a4,a5
    8000b040:	01d787bb          	addw	a5,a5,t4
    8000b044:	0ce88e63          	beq	a7,a4,8000b120 <__memset+0x1c8>
    8000b048:	00f50733          	add	a4,a0,a5
    8000b04c:	00b70023          	sb	a1,0(a4)
    8000b050:	0017871b          	addiw	a4,a5,1
    8000b054:	0cc77663          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b058:	00e50733          	add	a4,a0,a4
    8000b05c:	00b70023          	sb	a1,0(a4)
    8000b060:	0027871b          	addiw	a4,a5,2
    8000b064:	0ac77e63          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b068:	00e50733          	add	a4,a0,a4
    8000b06c:	00b70023          	sb	a1,0(a4)
    8000b070:	0037871b          	addiw	a4,a5,3
    8000b074:	0ac77663          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b078:	00e50733          	add	a4,a0,a4
    8000b07c:	00b70023          	sb	a1,0(a4)
    8000b080:	0047871b          	addiw	a4,a5,4
    8000b084:	08c77e63          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b088:	00e50733          	add	a4,a0,a4
    8000b08c:	00b70023          	sb	a1,0(a4)
    8000b090:	0057871b          	addiw	a4,a5,5
    8000b094:	08c77663          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b098:	00e50733          	add	a4,a0,a4
    8000b09c:	00b70023          	sb	a1,0(a4)
    8000b0a0:	0067871b          	addiw	a4,a5,6
    8000b0a4:	06c77e63          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b0a8:	00e50733          	add	a4,a0,a4
    8000b0ac:	00b70023          	sb	a1,0(a4)
    8000b0b0:	0077871b          	addiw	a4,a5,7
    8000b0b4:	06c77663          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b0b8:	00e50733          	add	a4,a0,a4
    8000b0bc:	00b70023          	sb	a1,0(a4)
    8000b0c0:	0087871b          	addiw	a4,a5,8
    8000b0c4:	04c77e63          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b0c8:	00e50733          	add	a4,a0,a4
    8000b0cc:	00b70023          	sb	a1,0(a4)
    8000b0d0:	0097871b          	addiw	a4,a5,9
    8000b0d4:	04c77663          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b0d8:	00e50733          	add	a4,a0,a4
    8000b0dc:	00b70023          	sb	a1,0(a4)
    8000b0e0:	00a7871b          	addiw	a4,a5,10
    8000b0e4:	02c77e63          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b0e8:	00e50733          	add	a4,a0,a4
    8000b0ec:	00b70023          	sb	a1,0(a4)
    8000b0f0:	00b7871b          	addiw	a4,a5,11
    8000b0f4:	02c77663          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b0f8:	00e50733          	add	a4,a0,a4
    8000b0fc:	00b70023          	sb	a1,0(a4)
    8000b100:	00c7871b          	addiw	a4,a5,12
    8000b104:	00c77e63          	bgeu	a4,a2,8000b120 <__memset+0x1c8>
    8000b108:	00e50733          	add	a4,a0,a4
    8000b10c:	00b70023          	sb	a1,0(a4)
    8000b110:	00d7879b          	addiw	a5,a5,13
    8000b114:	00c7f663          	bgeu	a5,a2,8000b120 <__memset+0x1c8>
    8000b118:	00f507b3          	add	a5,a0,a5
    8000b11c:	00b78023          	sb	a1,0(a5)
    8000b120:	00813403          	ld	s0,8(sp)
    8000b124:	01010113          	addi	sp,sp,16
    8000b128:	00008067          	ret
    8000b12c:	00b00693          	li	a3,11
    8000b130:	e55ff06f          	j	8000af84 <__memset+0x2c>
    8000b134:	00300e93          	li	t4,3
    8000b138:	ea5ff06f          	j	8000afdc <__memset+0x84>
    8000b13c:	00100e93          	li	t4,1
    8000b140:	e9dff06f          	j	8000afdc <__memset+0x84>
    8000b144:	00000e93          	li	t4,0
    8000b148:	e95ff06f          	j	8000afdc <__memset+0x84>
    8000b14c:	00000793          	li	a5,0
    8000b150:	ef9ff06f          	j	8000b048 <__memset+0xf0>
    8000b154:	00200e93          	li	t4,2
    8000b158:	e85ff06f          	j	8000afdc <__memset+0x84>
    8000b15c:	00400e93          	li	t4,4
    8000b160:	e7dff06f          	j	8000afdc <__memset+0x84>
    8000b164:	00500e93          	li	t4,5
    8000b168:	e75ff06f          	j	8000afdc <__memset+0x84>
    8000b16c:	00600e93          	li	t4,6
    8000b170:	e6dff06f          	j	8000afdc <__memset+0x84>

000000008000b174 <__memmove>:
    8000b174:	ff010113          	addi	sp,sp,-16
    8000b178:	00813423          	sd	s0,8(sp)
    8000b17c:	01010413          	addi	s0,sp,16
    8000b180:	0e060863          	beqz	a2,8000b270 <__memmove+0xfc>
    8000b184:	fff6069b          	addiw	a3,a2,-1
    8000b188:	0006881b          	sext.w	a6,a3
    8000b18c:	0ea5e863          	bltu	a1,a0,8000b27c <__memmove+0x108>
    8000b190:	00758713          	addi	a4,a1,7
    8000b194:	00a5e7b3          	or	a5,a1,a0
    8000b198:	40a70733          	sub	a4,a4,a0
    8000b19c:	0077f793          	andi	a5,a5,7
    8000b1a0:	00f73713          	sltiu	a4,a4,15
    8000b1a4:	00174713          	xori	a4,a4,1
    8000b1a8:	0017b793          	seqz	a5,a5
    8000b1ac:	00e7f7b3          	and	a5,a5,a4
    8000b1b0:	10078863          	beqz	a5,8000b2c0 <__memmove+0x14c>
    8000b1b4:	00900793          	li	a5,9
    8000b1b8:	1107f463          	bgeu	a5,a6,8000b2c0 <__memmove+0x14c>
    8000b1bc:	0036581b          	srliw	a6,a2,0x3
    8000b1c0:	fff8081b          	addiw	a6,a6,-1
    8000b1c4:	02081813          	slli	a6,a6,0x20
    8000b1c8:	01d85893          	srli	a7,a6,0x1d
    8000b1cc:	00858813          	addi	a6,a1,8
    8000b1d0:	00058793          	mv	a5,a1
    8000b1d4:	00050713          	mv	a4,a0
    8000b1d8:	01088833          	add	a6,a7,a6
    8000b1dc:	0007b883          	ld	a7,0(a5)
    8000b1e0:	00878793          	addi	a5,a5,8
    8000b1e4:	00870713          	addi	a4,a4,8
    8000b1e8:	ff173c23          	sd	a7,-8(a4)
    8000b1ec:	ff0798e3          	bne	a5,a6,8000b1dc <__memmove+0x68>
    8000b1f0:	ff867713          	andi	a4,a2,-8
    8000b1f4:	02071793          	slli	a5,a4,0x20
    8000b1f8:	0207d793          	srli	a5,a5,0x20
    8000b1fc:	00f585b3          	add	a1,a1,a5
    8000b200:	40e686bb          	subw	a3,a3,a4
    8000b204:	00f507b3          	add	a5,a0,a5
    8000b208:	06e60463          	beq	a2,a4,8000b270 <__memmove+0xfc>
    8000b20c:	0005c703          	lbu	a4,0(a1)
    8000b210:	00e78023          	sb	a4,0(a5)
    8000b214:	04068e63          	beqz	a3,8000b270 <__memmove+0xfc>
    8000b218:	0015c603          	lbu	a2,1(a1)
    8000b21c:	00100713          	li	a4,1
    8000b220:	00c780a3          	sb	a2,1(a5)
    8000b224:	04e68663          	beq	a3,a4,8000b270 <__memmove+0xfc>
    8000b228:	0025c603          	lbu	a2,2(a1)
    8000b22c:	00200713          	li	a4,2
    8000b230:	00c78123          	sb	a2,2(a5)
    8000b234:	02e68e63          	beq	a3,a4,8000b270 <__memmove+0xfc>
    8000b238:	0035c603          	lbu	a2,3(a1)
    8000b23c:	00300713          	li	a4,3
    8000b240:	00c781a3          	sb	a2,3(a5)
    8000b244:	02e68663          	beq	a3,a4,8000b270 <__memmove+0xfc>
    8000b248:	0045c603          	lbu	a2,4(a1)
    8000b24c:	00400713          	li	a4,4
    8000b250:	00c78223          	sb	a2,4(a5)
    8000b254:	00e68e63          	beq	a3,a4,8000b270 <__memmove+0xfc>
    8000b258:	0055c603          	lbu	a2,5(a1)
    8000b25c:	00500713          	li	a4,5
    8000b260:	00c782a3          	sb	a2,5(a5)
    8000b264:	00e68663          	beq	a3,a4,8000b270 <__memmove+0xfc>
    8000b268:	0065c703          	lbu	a4,6(a1)
    8000b26c:	00e78323          	sb	a4,6(a5)
    8000b270:	00813403          	ld	s0,8(sp)
    8000b274:	01010113          	addi	sp,sp,16
    8000b278:	00008067          	ret
    8000b27c:	02061713          	slli	a4,a2,0x20
    8000b280:	02075713          	srli	a4,a4,0x20
    8000b284:	00e587b3          	add	a5,a1,a4
    8000b288:	f0f574e3          	bgeu	a0,a5,8000b190 <__memmove+0x1c>
    8000b28c:	02069613          	slli	a2,a3,0x20
    8000b290:	02065613          	srli	a2,a2,0x20
    8000b294:	fff64613          	not	a2,a2
    8000b298:	00e50733          	add	a4,a0,a4
    8000b29c:	00c78633          	add	a2,a5,a2
    8000b2a0:	fff7c683          	lbu	a3,-1(a5)
    8000b2a4:	fff78793          	addi	a5,a5,-1
    8000b2a8:	fff70713          	addi	a4,a4,-1
    8000b2ac:	00d70023          	sb	a3,0(a4)
    8000b2b0:	fec798e3          	bne	a5,a2,8000b2a0 <__memmove+0x12c>
    8000b2b4:	00813403          	ld	s0,8(sp)
    8000b2b8:	01010113          	addi	sp,sp,16
    8000b2bc:	00008067          	ret
    8000b2c0:	02069713          	slli	a4,a3,0x20
    8000b2c4:	02075713          	srli	a4,a4,0x20
    8000b2c8:	00170713          	addi	a4,a4,1
    8000b2cc:	00e50733          	add	a4,a0,a4
    8000b2d0:	00050793          	mv	a5,a0
    8000b2d4:	0005c683          	lbu	a3,0(a1)
    8000b2d8:	00178793          	addi	a5,a5,1
    8000b2dc:	00158593          	addi	a1,a1,1
    8000b2e0:	fed78fa3          	sb	a3,-1(a5)
    8000b2e4:	fee798e3          	bne	a5,a4,8000b2d4 <__memmove+0x160>
    8000b2e8:	f89ff06f          	j	8000b270 <__memmove+0xfc>
	...

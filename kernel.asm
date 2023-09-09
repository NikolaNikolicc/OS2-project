
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	e6013103          	ld	sp,-416(sp) # 8000ce60 <_GLOBAL_OFFSET_TABLE_+0x50>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	369070ef          	jal	ra,80007b84 <start>

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
    800011a4:	584030ef          	jal	ra,80004728 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001288:	274080e7          	jalr	628(ra) # 800054f8 <_ZN3abi8sys_callEPv>
}
    8000128c:	04813083          	ld	ra,72(sp)
    80001290:	04013403          	ld	s0,64(sp)
    80001294:	05010113          	addi	sp,sp,80
    80001298:	00008067          	ret

000000008000129c <mem_free>:

int mem_free(void *addr) {
    8000129c:	fb010113          	addi	sp,sp,-80
    800012a0:	04113423          	sd	ra,72(sp)
    800012a4:	04813023          	sd	s0,64(sp)
    800012a8:	05010413          	addi	s0,sp,80
    uint64 a5 = 0;
    uint64 a6 = 0;
    uint64 a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800012ac:	00200793          	li	a5,2
    800012b0:	faf43823          	sd	a5,-80(s0)
    800012b4:	faa43c23          	sd	a0,-72(s0)
    800012b8:	fc043023          	sd	zero,-64(s0)
    800012bc:	fc043423          	sd	zero,-56(s0)
    800012c0:	fc043823          	sd	zero,-48(s0)
    800012c4:	fc043c23          	sd	zero,-40(s0)
    800012c8:	fe043023          	sd	zero,-32(s0)
    800012cc:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64) abi::sys_call(reinterpret_cast<void *>(empty));
    800012d0:	fb040513          	addi	a0,s0,-80
    800012d4:	00004097          	auipc	ra,0x4
    800012d8:	224080e7          	jalr	548(ra) # 800054f8 <_ZN3abi8sys_callEPv>
}
    800012dc:	0005051b          	sext.w	a0,a0
    800012e0:	04813083          	ld	ra,72(sp)
    800012e4:	04013403          	ld	s0,64(sp)
    800012e8:	05010113          	addi	sp,sp,80
    800012ec:	00008067          	ret

00000000800012f0 <thread_create>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800012f0:	f9010113          	addi	sp,sp,-112
    800012f4:	06113423          	sd	ra,104(sp)
    800012f8:	06813023          	sd	s0,96(sp)
    800012fc:	04913c23          	sd	s1,88(sp)
    80001300:	05213823          	sd	s2,80(sp)
    80001304:	05313423          	sd	s3,72(sp)
    80001308:	07010413          	addi	s0,sp,112
    8000130c:	00050993          	mv	s3,a0
    80001310:	00058493          	mv	s1,a1
    80001314:	00060913          	mv	s2,a2

    // inicijalizacija steka
    uint64 a4 = (start_routine != nullptr) ? (uint64)mem_alloc(DEFAULT_STACK_SIZE) : 0;
    80001318:	06058263          	beqz	a1,8000137c <thread_create+0x8c>
    8000131c:	00001537          	lui	a0,0x1
    80001320:	00000097          	auipc	ra,0x0
    80001324:	f24080e7          	jalr	-220(ra) # 80001244 <mem_alloc>
    a6 = (uint64)true;

    a5 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001328:	01100793          	li	a5,17
    8000132c:	f8f43823          	sd	a5,-112(s0)
    80001330:	f9343c23          	sd	s3,-104(s0)
    80001334:	fa943023          	sd	s1,-96(s0)
    80001338:	fb243423          	sd	s2,-88(s0)
    8000133c:	faa43823          	sd	a0,-80(s0)
    80001340:	fa043c23          	sd	zero,-72(s0)
    80001344:	00100793          	li	a5,1
    80001348:	fcf43023          	sd	a5,-64(s0)
    8000134c:	fc043423          	sd	zero,-56(s0)

    // sistemski poziv
    return (uint64) abi::sys_call(reinterpret_cast<void *>(empty));
    80001350:	f9040513          	addi	a0,s0,-112
    80001354:	00004097          	auipc	ra,0x4
    80001358:	1a4080e7          	jalr	420(ra) # 800054f8 <_ZN3abi8sys_callEPv>

}
    8000135c:	0005051b          	sext.w	a0,a0
    80001360:	06813083          	ld	ra,104(sp)
    80001364:	06013403          	ld	s0,96(sp)
    80001368:	05813483          	ld	s1,88(sp)
    8000136c:	05013903          	ld	s2,80(sp)
    80001370:	04813983          	ld	s3,72(sp)
    80001374:	07010113          	addi	sp,sp,112
    80001378:	00008067          	ret
    uint64 a4 = (start_routine != nullptr) ? (uint64)mem_alloc(DEFAULT_STACK_SIZE) : 0;
    8000137c:	00000513          	li	a0,0
    80001380:	fa9ff06f          	j	80001328 <thread_create+0x38>

0000000080001384 <thread_dispatch>:

void thread_dispatch() {
    80001384:	fb010113          	addi	sp,sp,-80
    80001388:	04113423          	sd	ra,72(sp)
    8000138c:	04813023          	sd	s0,64(sp)
    80001390:	05010413          	addi	s0,sp,80
    uint64  a1, a2, a3, a4, a5, a6, a7;

    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001394:	01300793          	li	a5,19
    80001398:	faf43823          	sd	a5,-80(s0)
    8000139c:	fa043c23          	sd	zero,-72(s0)
    800013a0:	fc043023          	sd	zero,-64(s0)
    800013a4:	fc043423          	sd	zero,-56(s0)
    800013a8:	fc043823          	sd	zero,-48(s0)
    800013ac:	fc043c23          	sd	zero,-40(s0)
    800013b0:	fe043023          	sd	zero,-32(s0)
    800013b4:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    800013b8:	fb040513          	addi	a0,s0,-80
    800013bc:	00004097          	auipc	ra,0x4
    800013c0:	13c080e7          	jalr	316(ra) # 800054f8 <_ZN3abi8sys_callEPv>

    // povratak
    return;

}
    800013c4:	04813083          	ld	ra,72(sp)
    800013c8:	04013403          	ld	s0,64(sp)
    800013cc:	05010113          	addi	sp,sp,80
    800013d0:	00008067          	ret

00000000800013d4 <thread_exit>:

int thread_exit() {
    800013d4:	fb010113          	addi	sp,sp,-80
    800013d8:	04113423          	sd	ra,72(sp)
    800013dc:	04813023          	sd	s0,64(sp)
    800013e0:	05010413          	addi	s0,sp,80
    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800013e4:	01200793          	li	a5,18
    800013e8:	faf43823          	sd	a5,-80(s0)
    800013ec:	fa043c23          	sd	zero,-72(s0)
    800013f0:	fc043023          	sd	zero,-64(s0)
    800013f4:	fc043423          	sd	zero,-56(s0)
    800013f8:	fc043823          	sd	zero,-48(s0)
    800013fc:	fc043c23          	sd	zero,-40(s0)
    80001400:	fe043023          	sd	zero,-32(s0)
    80001404:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    80001408:	fb040513          	addi	a0,s0,-80
    8000140c:	00004097          	auipc	ra,0x4
    80001410:	0ec080e7          	jalr	236(ra) # 800054f8 <_ZN3abi8sys_callEPv>

//    return 0;
}
    80001414:	0005051b          	sext.w	a0,a0
    80001418:	04813083          	ld	ra,72(sp)
    8000141c:	04013403          	ld	s0,64(sp)
    80001420:	05010113          	addi	sp,sp,80
    80001424:	00008067          	ret

0000000080001428 <time_sleep>:

int time_sleep(time_t time) {

    if(time == 0)return 0;
    80001428:	00051663          	bnez	a0,80001434 <time_sleep+0xc>
    8000142c:	00000513          	li	a0,0

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));

//    return 0;
}
    80001430:	00008067          	ret
int time_sleep(time_t time) {
    80001434:	fb010113          	addi	sp,sp,-80
    80001438:	04113423          	sd	ra,72(sp)
    8000143c:	04813023          	sd	s0,64(sp)
    80001440:	05010413          	addi	s0,sp,80
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001444:	03100793          	li	a5,49
    80001448:	faf43823          	sd	a5,-80(s0)
    8000144c:	faa43c23          	sd	a0,-72(s0)
    80001450:	fc043023          	sd	zero,-64(s0)
    80001454:	fc043423          	sd	zero,-56(s0)
    80001458:	fc043823          	sd	zero,-48(s0)
    8000145c:	fc043c23          	sd	zero,-40(s0)
    80001460:	fe043023          	sd	zero,-32(s0)
    80001464:	fe043423          	sd	zero,-24(s0)
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    80001468:	fb040513          	addi	a0,s0,-80
    8000146c:	00004097          	auipc	ra,0x4
    80001470:	08c080e7          	jalr	140(ra) # 800054f8 <_ZN3abi8sys_callEPv>
    80001474:	0005051b          	sext.w	a0,a0
}
    80001478:	04813083          	ld	ra,72(sp)
    8000147c:	04013403          	ld	s0,64(sp)
    80001480:	05010113          	addi	sp,sp,80
    80001484:	00008067          	ret

0000000080001488 <sem_open>:

int sem_open(sem_t *handle, uint64 init) {
    80001488:	fb010113          	addi	sp,sp,-80
    8000148c:	04113423          	sd	ra,72(sp)
    80001490:	04813023          	sd	s0,64(sp)
    80001494:	05010413          	addi	s0,sp,80
    a1 = (uint64)handle;
    a2 = init;
    a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001498:	02100793          	li	a5,33
    8000149c:	faf43823          	sd	a5,-80(s0)
    800014a0:	faa43c23          	sd	a0,-72(s0)
    800014a4:	fcb43023          	sd	a1,-64(s0)
    800014a8:	fc043423          	sd	zero,-56(s0)
    800014ac:	fc043823          	sd	zero,-48(s0)
    800014b0:	fc043c23          	sd	zero,-40(s0)
    800014b4:	fe043023          	sd	zero,-32(s0)
    800014b8:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    800014bc:	fb040513          	addi	a0,s0,-80
    800014c0:	00004097          	auipc	ra,0x4
    800014c4:	038080e7          	jalr	56(ra) # 800054f8 <_ZN3abi8sys_callEPv>
}
    800014c8:	0005051b          	sext.w	a0,a0
    800014cc:	04813083          	ld	ra,72(sp)
    800014d0:	04013403          	ld	s0,64(sp)
    800014d4:	05010113          	addi	sp,sp,80
    800014d8:	00008067          	ret

00000000800014dc <sem_close>:

int sem_close(sem_t handle) {
    800014dc:	fb010113          	addi	sp,sp,-80
    800014e0:	04113423          	sd	ra,72(sp)
    800014e4:	04813023          	sd	s0,64(sp)
    800014e8:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)handle;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800014ec:	02200793          	li	a5,34
    800014f0:	faf43823          	sd	a5,-80(s0)
    800014f4:	faa43c23          	sd	a0,-72(s0)
    800014f8:	fc043023          	sd	zero,-64(s0)
    800014fc:	fc043423          	sd	zero,-56(s0)
    80001500:	fc043823          	sd	zero,-48(s0)
    80001504:	fc043c23          	sd	zero,-40(s0)
    80001508:	fe043023          	sd	zero,-32(s0)
    8000150c:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    80001510:	fb040513          	addi	a0,s0,-80
    80001514:	00004097          	auipc	ra,0x4
    80001518:	fe4080e7          	jalr	-28(ra) # 800054f8 <_ZN3abi8sys_callEPv>
}
    8000151c:	0005051b          	sext.w	a0,a0
    80001520:	04813083          	ld	ra,72(sp)
    80001524:	04013403          	ld	s0,64(sp)
    80001528:	05010113          	addi	sp,sp,80
    8000152c:	00008067          	ret

0000000080001530 <sem_wait>:

int sem_wait(sem_t id) {
    80001530:	fb010113          	addi	sp,sp,-80
    80001534:	04113423          	sd	ra,72(sp)
    80001538:	04813023          	sd	s0,64(sp)
    8000153c:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)id;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001540:	02300793          	li	a5,35
    80001544:	faf43823          	sd	a5,-80(s0)
    80001548:	faa43c23          	sd	a0,-72(s0)
    8000154c:	fc043023          	sd	zero,-64(s0)
    80001550:	fc043423          	sd	zero,-56(s0)
    80001554:	fc043823          	sd	zero,-48(s0)
    80001558:	fc043c23          	sd	zero,-40(s0)
    8000155c:	fe043023          	sd	zero,-32(s0)
    80001560:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    80001564:	fb040513          	addi	a0,s0,-80
    80001568:	00004097          	auipc	ra,0x4
    8000156c:	f90080e7          	jalr	-112(ra) # 800054f8 <_ZN3abi8sys_callEPv>
}
    80001570:	0005051b          	sext.w	a0,a0
    80001574:	04813083          	ld	ra,72(sp)
    80001578:	04013403          	ld	s0,64(sp)
    8000157c:	05010113          	addi	sp,sp,80
    80001580:	00008067          	ret

0000000080001584 <sem_signal>:

int sem_signal(sem_t id) {
    80001584:	fb010113          	addi	sp,sp,-80
    80001588:	04113423          	sd	ra,72(sp)
    8000158c:	04813023          	sd	s0,64(sp)
    80001590:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)id;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80001594:	02400793          	li	a5,36
    80001598:	faf43823          	sd	a5,-80(s0)
    8000159c:	faa43c23          	sd	a0,-72(s0)
    800015a0:	fc043023          	sd	zero,-64(s0)
    800015a4:	fc043423          	sd	zero,-56(s0)
    800015a8:	fc043823          	sd	zero,-48(s0)
    800015ac:	fc043c23          	sd	zero,-40(s0)
    800015b0:	fe043023          	sd	zero,-32(s0)
    800015b4:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    800015b8:	fb040513          	addi	a0,s0,-80
    800015bc:	00004097          	auipc	ra,0x4
    800015c0:	f3c080e7          	jalr	-196(ra) # 800054f8 <_ZN3abi8sys_callEPv>
}
    800015c4:	0005051b          	sext.w	a0,a0
    800015c8:	04813083          	ld	ra,72(sp)
    800015cc:	04013403          	ld	s0,64(sp)
    800015d0:	05010113          	addi	sp,sp,80
    800015d4:	00008067          	ret

00000000800015d8 <getc>:

char getc() {
    800015d8:	fb010113          	addi	sp,sp,-80
    800015dc:	04113423          	sd	ra,72(sp)
    800015e0:	04813023          	sd	s0,64(sp)
    800015e4:	05010413          	addi	s0,sp,80
    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800015e8:	04100793          	li	a5,65
    800015ec:	faf43823          	sd	a5,-80(s0)
    800015f0:	fa043c23          	sd	zero,-72(s0)
    800015f4:	fc043023          	sd	zero,-64(s0)
    800015f8:	fc043423          	sd	zero,-56(s0)
    800015fc:	fc043823          	sd	zero,-48(s0)
    80001600:	fc043c23          	sd	zero,-40(s0)
    80001604:	fe043023          	sd	zero,-32(s0)
    80001608:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    uint64 ch = (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
    8000160c:	fb040513          	addi	a0,s0,-80
    80001610:	00004097          	auipc	ra,0x4
    80001614:	ee8080e7          	jalr	-280(ra) # 800054f8 <_ZN3abi8sys_callEPv>

    return ch;
}
    80001618:	0ff57513          	andi	a0,a0,255
    8000161c:	04813083          	ld	ra,72(sp)
    80001620:	04013403          	ld	s0,64(sp)
    80001624:	05010113          	addi	sp,sp,80
    80001628:	00008067          	ret

000000008000162c <putc>:

void putc(char c) {
    8000162c:	fb010113          	addi	sp,sp,-80
    80001630:	04113423          	sd	ra,72(sp)
    80001634:	04813023          	sd	s0,64(sp)
    80001638:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)c;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    8000163c:	04200793          	li	a5,66
    80001640:	faf43823          	sd	a5,-80(s0)
    80001644:	faa43c23          	sd	a0,-72(s0)
    80001648:	fc043023          	sd	zero,-64(s0)
    8000164c:	fc043423          	sd	zero,-56(s0)
    80001650:	fc043823          	sd	zero,-48(s0)
    80001654:	fc043c23          	sd	zero,-40(s0)
    80001658:	fe043023          	sd	zero,-32(s0)
    8000165c:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    80001660:	fb040513          	addi	a0,s0,-80
    80001664:	00004097          	auipc	ra,0x4
    80001668:	e94080e7          	jalr	-364(ra) # 800054f8 <_ZN3abi8sys_callEPv>
    return;
}
    8000166c:	04813083          	ld	ra,72(sp)
    80001670:	04013403          	ld	s0,64(sp)
    80001674:	05010113          	addi	sp,sp,80
    80001678:	00008067          	ret

000000008000167c <put_in_scheduler>:

void put_in_scheduler(thread_t tcb) {
    8000167c:	fb010113          	addi	sp,sp,-80
    80001680:	04113423          	sd	ra,72(sp)
    80001684:	04813023          	sd	s0,64(sp)
    80001688:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)tcb;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    8000168c:	05000793          	li	a5,80
    80001690:	faf43823          	sd	a5,-80(s0)
    80001694:	faa43c23          	sd	a0,-72(s0)
    80001698:	fc043023          	sd	zero,-64(s0)
    8000169c:	fc043423          	sd	zero,-56(s0)
    800016a0:	fc043823          	sd	zero,-48(s0)
    800016a4:	fc043c23          	sd	zero,-40(s0)
    800016a8:	fe043023          	sd	zero,-32(s0)
    800016ac:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    800016b0:	fb040513          	addi	a0,s0,-80
    800016b4:	00004097          	auipc	ra,0x4
    800016b8:	e44080e7          	jalr	-444(ra) # 800054f8 <_ZN3abi8sys_callEPv>
    return;
}
    800016bc:	04813083          	ld	ra,72(sp)
    800016c0:	04013403          	ld	s0,64(sp)
    800016c4:	05010113          	addi	sp,sp,80
    800016c8:	00008067          	ret

00000000800016cc <switch_to_user>:

void switch_to_user() {
    800016cc:	fb010113          	addi	sp,sp,-80
    800016d0:	04113423          	sd	ra,72(sp)
    800016d4:	04813023          	sd	s0,64(sp)
    800016d8:	05010413          	addi	s0,sp,80
    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800016dc:	06000793          	li	a5,96
    800016e0:	faf43823          	sd	a5,-80(s0)
    800016e4:	fa043c23          	sd	zero,-72(s0)
    800016e8:	fc043023          	sd	zero,-64(s0)
    800016ec:	fc043423          	sd	zero,-56(s0)
    800016f0:	fc043823          	sd	zero,-48(s0)
    800016f4:	fc043c23          	sd	zero,-40(s0)
    800016f8:	fe043023          	sd	zero,-32(s0)
    800016fc:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    80001700:	fb040513          	addi	a0,s0,-80
    80001704:	00004097          	auipc	ra,0x4
    80001708:	df4080e7          	jalr	-524(ra) # 800054f8 <_ZN3abi8sys_callEPv>
    return;
}
    8000170c:	04813083          	ld	ra,72(sp)
    80001710:	04013403          	ld	s0,64(sp)
    80001714:	05010113          	addi	sp,sp,80
    80001718:	00008067          	ret

000000008000171c <switch_to_priviledged>:

void switch_to_priviledged() {
    8000171c:	fb010113          	addi	sp,sp,-80
    80001720:	04113423          	sd	ra,72(sp)
    80001724:	04813023          	sd	s0,64(sp)
    80001728:	05010413          	addi	s0,sp,80
    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    8000172c:	06100793          	li	a5,97
    80001730:	faf43823          	sd	a5,-80(s0)
    80001734:	fa043c23          	sd	zero,-72(s0)
    80001738:	fc043023          	sd	zero,-64(s0)
    8000173c:	fc043423          	sd	zero,-56(s0)
    80001740:	fc043823          	sd	zero,-48(s0)
    80001744:	fc043c23          	sd	zero,-40(s0)
    80001748:	fe043023          	sd	zero,-32(s0)
    8000174c:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    80001750:	fb040513          	addi	a0,s0,-80
    80001754:	00004097          	auipc	ra,0x4
    80001758:	da4080e7          	jalr	-604(ra) # 800054f8 <_ZN3abi8sys_callEPv>
    return;
}
    8000175c:	04813083          	ld	ra,72(sp)
    80001760:	04013403          	ld	s0,64(sp)
    80001764:	05010113          	addi	sp,sp,80
    80001768:	00008067          	ret

000000008000176c <set_periodic>:

void set_periodic(thread_t periodic_thread) {
    8000176c:	fb010113          	addi	sp,sp,-80
    80001770:	04113423          	sd	ra,72(sp)
    80001774:	04813023          	sd	s0,64(sp)
    80001778:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)periodic_thread;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    8000177c:	07000793          	li	a5,112
    80001780:	faf43823          	sd	a5,-80(s0)
    80001784:	faa43c23          	sd	a0,-72(s0)
    80001788:	fc043023          	sd	zero,-64(s0)
    8000178c:	fc043423          	sd	zero,-56(s0)
    80001790:	fc043823          	sd	zero,-48(s0)
    80001794:	fc043c23          	sd	zero,-40(s0)
    80001798:	fe043023          	sd	zero,-32(s0)
    8000179c:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    800017a0:	fb040513          	addi	a0,s0,-80
    800017a4:	00004097          	auipc	ra,0x4
    800017a8:	d54080e7          	jalr	-684(ra) # 800054f8 <_ZN3abi8sys_callEPv>
    return;
}
    800017ac:	04813083          	ld	ra,72(sp)
    800017b0:	04013403          	ld	s0,64(sp)
    800017b4:	05010113          	addi	sp,sp,80
    800017b8:	00008067          	ret

00000000800017bc <kill>:

void kill(thread_t thread) {
    800017bc:	fb010113          	addi	sp,sp,-80
    800017c0:	04113423          	sd	ra,72(sp)
    800017c4:	04813023          	sd	s0,64(sp)
    800017c8:	05010413          	addi	s0,sp,80
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)thread;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800017cc:	11100793          	li	a5,273
    800017d0:	faf43823          	sd	a5,-80(s0)
    800017d4:	faa43c23          	sd	a0,-72(s0)
    800017d8:	fc043023          	sd	zero,-64(s0)
    800017dc:	fc043423          	sd	zero,-56(s0)
    800017e0:	fc043823          	sd	zero,-48(s0)
    800017e4:	fc043c23          	sd	zero,-40(s0)
    800017e8:	fe043023          	sd	zero,-32(s0)
    800017ec:	fe043423          	sd	zero,-24(s0)

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    800017f0:	fb040513          	addi	a0,s0,-80
    800017f4:	00004097          	auipc	ra,0x4
    800017f8:	d04080e7          	jalr	-764(ra) # 800054f8 <_ZN3abi8sys_callEPv>
    return;
}
    800017fc:	04813083          	ld	ra,72(sp)
    80001800:	04013403          	ld	s0,64(sp)
    80001804:	05010113          	addi	sp,sp,80
    80001808:	00008067          	ret

000000008000180c <_ZN8MyBufferC1Ei>:
#include "../h/my_buffer.hpp"

MyBuffer::MyBuffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000180c:	fe010113          	addi	sp,sp,-32
    80001810:	00113c23          	sd	ra,24(sp)
    80001814:	00813823          	sd	s0,16(sp)
    80001818:	00913423          	sd	s1,8(sp)
    8000181c:	01213023          	sd	s2,0(sp)
    80001820:	02010413          	addi	s0,sp,32
    80001824:	00050493          	mv	s1,a0
    80001828:	00058913          	mv	s2,a1
    8000182c:	0015879b          	addiw	a5,a1,1
    80001830:	00f52023          	sw	a5,0(a0) # 1000 <_entry-0x7ffff000>
    80001834:	00052823          	sw	zero,16(a0)
    80001838:	00052a23          	sw	zero,20(a0)
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    8000183c:	0000b797          	auipc	a5,0xb
    80001840:	6847c783          	lbu	a5,1668(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001844:	06078c63          	beqz	a5,800018bc <_ZN8MyBufferC1Ei+0xb0>
    buffer = (int *)MemoryAllocator::getInstance().memory_alloc(sizeof(int) * cap);
    80001848:	0004a583          	lw	a1,0(s1)
    8000184c:	00259593          	slli	a1,a1,0x2
    80001850:	0000b517          	auipc	a0,0xb
    80001854:	67850513          	addi	a0,a0,1656 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001858:	00004097          	auipc	ra,0x4
    8000185c:	a44080e7          	jalr	-1468(ra) # 8000529c <_ZN15MemoryAllocator12memory_allocEm>
    80001860:	00a4b423          	sd	a0,8(s1)
    MySemaphore::sem_open(&itemAvailable, 0);
    80001864:	00000593          	li	a1,0
    80001868:	02048513          	addi	a0,s1,32
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	880080e7          	jalr	-1920(ra) # 800020ec <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&spaceAvailable, _cap);
    80001874:	00090593          	mv	a1,s2
    80001878:	01848513          	addi	a0,s1,24
    8000187c:	00001097          	auipc	ra,0x1
    80001880:	870080e7          	jalr	-1936(ra) # 800020ec <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&mutexHead, 1);
    80001884:	00100593          	li	a1,1
    80001888:	02848513          	addi	a0,s1,40
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	860080e7          	jalr	-1952(ra) # 800020ec <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&mutexTail, 1);
    80001894:	00100593          	li	a1,1
    80001898:	03048513          	addi	a0,s1,48
    8000189c:	00001097          	auipc	ra,0x1
    800018a0:	850080e7          	jalr	-1968(ra) # 800020ec <_ZN11MySemaphore8sem_openEPPS_m>
}
    800018a4:	01813083          	ld	ra,24(sp)
    800018a8:	01013403          	ld	s0,16(sp)
    800018ac:	00813483          	ld	s1,8(sp)
    800018b0:	00013903          	ld	s2,0(sp)
    800018b4:	02010113          	addi	sp,sp,32
    800018b8:	00008067          	ret

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    800018bc:	0000b617          	auipc	a2,0xb
    800018c0:	60c60613          	addi	a2,a2,1548 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800018c4:	0000b797          	auipc	a5,0xb
    800018c8:	5b47b783          	ld	a5,1460(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    800018cc:	0007b703          	ld	a4,0(a5)
    800018d0:	0000b797          	auipc	a5,0xb
    800018d4:	5607b783          	ld	a5,1376(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018d8:	0007b783          	ld	a5,0(a5)
    800018dc:	40f706b3          	sub	a3,a4,a5
    800018e0:	0036d693          	srli	a3,a3,0x3
    800018e4:	00d787b3          	add	a5,a5,a3
    800018e8:	00178793          	addi	a5,a5,1
    800018ec:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800018f0:	fff70713          	addi	a4,a4,-1
    800018f4:	00e63823          	sd	a4,16(a2)

        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    800018f8:	40f70733          	sub	a4,a4,a5
    800018fc:	00675713          	srli	a4,a4,0x6

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80001900:	03f7f693          	andi	a3,a5,63
    80001904:	00068663          	beqz	a3,80001910 <_ZN8MyBufferC1Ei+0x104>
    80001908:	04000613          	li	a2,64
    8000190c:	40d606b3          	sub	a3,a2,a3
    80001910:	00d787b3          	add	a5,a5,a3
    80001914:	0000b697          	auipc	a3,0xb
    80001918:	5af6ba23          	sd	a5,1460(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    8000191c:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80001920:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80001924:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80001928:	00100793          	li	a5,1
    8000192c:	0000b717          	auipc	a4,0xb
    80001930:	58f70a23          	sb	a5,1428(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001934:	f15ff06f          	j	80001848 <_ZN8MyBufferC1Ei+0x3c>

0000000080001938 <_ZN8MyBufferD1Ev>:

MyBuffer::~MyBuffer() {
    80001938:	fe010113          	addi	sp,sp,-32
    8000193c:	00113c23          	sd	ra,24(sp)
    80001940:	00813823          	sd	s0,16(sp)
    80001944:	00913423          	sd	s1,8(sp)
    80001948:	02010413          	addi	s0,sp,32
    8000194c:	00050493          	mv	s1,a0
    80001950:	0000b797          	auipc	a5,0xb
    80001954:	5707c783          	lbu	a5,1392(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001958:	04078e63          	beqz	a5,800019b4 <_ZN8MyBufferD1Ev+0x7c>
    MemoryAllocator::getInstance().memory_free((void*)buffer);
    8000195c:	0084b583          	ld	a1,8(s1)
    80001960:	0000b517          	auipc	a0,0xb
    80001964:	56850513          	addi	a0,a0,1384 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001968:	00004097          	auipc	ra,0x4
    8000196c:	a08080e7          	jalr	-1528(ra) # 80005370 <_ZN15MemoryAllocator11memory_freeEPv>
    MySemaphore::sem_close(itemAvailable);
    80001970:	0204b503          	ld	a0,32(s1)
    80001974:	00001097          	auipc	ra,0x1
    80001978:	8a8080e7          	jalr	-1880(ra) # 8000221c <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(spaceAvailable);
    8000197c:	0184b503          	ld	a0,24(s1)
    80001980:	00001097          	auipc	ra,0x1
    80001984:	89c080e7          	jalr	-1892(ra) # 8000221c <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(mutexTail);
    80001988:	0304b503          	ld	a0,48(s1)
    8000198c:	00001097          	auipc	ra,0x1
    80001990:	890080e7          	jalr	-1904(ra) # 8000221c <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(mutexHead);
    80001994:	0284b503          	ld	a0,40(s1)
    80001998:	00001097          	auipc	ra,0x1
    8000199c:	884080e7          	jalr	-1916(ra) # 8000221c <_ZN11MySemaphore9sem_closeEPS_>
}
    800019a0:	01813083          	ld	ra,24(sp)
    800019a4:	01013403          	ld	s0,16(sp)
    800019a8:	00813483          	ld	s1,8(sp)
    800019ac:	02010113          	addi	sp,sp,32
    800019b0:	00008067          	ret
    MemoryAllocator(){
    800019b4:	0000b617          	auipc	a2,0xb
    800019b8:	51460613          	addi	a2,a2,1300 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800019bc:	0000b797          	auipc	a5,0xb
    800019c0:	4bc7b783          	ld	a5,1212(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    800019c4:	0007b703          	ld	a4,0(a5)
    800019c8:	0000b797          	auipc	a5,0xb
    800019cc:	4687b783          	ld	a5,1128(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019d0:	0007b783          	ld	a5,0(a5)
    800019d4:	40f706b3          	sub	a3,a4,a5
    800019d8:	0036d693          	srli	a3,a3,0x3
    800019dc:	00d787b3          	add	a5,a5,a3
    800019e0:	00178793          	addi	a5,a5,1
    800019e4:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800019e8:	fff70713          	addi	a4,a4,-1
    800019ec:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    800019f0:	40f70733          	sub	a4,a4,a5
    800019f4:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800019f8:	03f7f693          	andi	a3,a5,63
    800019fc:	00068663          	beqz	a3,80001a08 <_ZN8MyBufferD1Ev+0xd0>
    80001a00:	04000613          	li	a2,64
    80001a04:	40d606b3          	sub	a3,a2,a3
    80001a08:	00d787b3          	add	a5,a5,a3
    80001a0c:	0000b697          	auipc	a3,0xb
    80001a10:	4af6be23          	sd	a5,1212(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80001a14:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80001a18:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80001a1c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80001a20:	00100793          	li	a5,1
    80001a24:	0000b717          	auipc	a4,0xb
    80001a28:	48f70e23          	sb	a5,1180(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001a2c:	f31ff06f          	j	8000195c <_ZN8MyBufferD1Ev+0x24>

0000000080001a30 <_ZN8MyBuffer3putEi>:

void MyBuffer::put(int val) {
    80001a30:	fe010113          	addi	sp,sp,-32
    80001a34:	00113c23          	sd	ra,24(sp)
    80001a38:	00813823          	sd	s0,16(sp)
    80001a3c:	00913423          	sd	s1,8(sp)
    80001a40:	01213023          	sd	s2,0(sp)
    80001a44:	02010413          	addi	s0,sp,32
    80001a48:	00050493          	mv	s1,a0
    80001a4c:	00058913          	mv	s2,a1
    MySemaphore::sem_wait(spaceAvailable);
    80001a50:	01853503          	ld	a0,24(a0)
    80001a54:	00001097          	auipc	ra,0x1
    80001a58:	8e0080e7          	jalr	-1824(ra) # 80002334 <_ZN11MySemaphore8sem_waitEPS_>

    MySemaphore::sem_wait(mutexTail);
    80001a5c:	0304b503          	ld	a0,48(s1)
    80001a60:	00001097          	auipc	ra,0x1
    80001a64:	8d4080e7          	jalr	-1836(ra) # 80002334 <_ZN11MySemaphore8sem_waitEPS_>
    buffer[tail] = val;
    80001a68:	0084b783          	ld	a5,8(s1)
    80001a6c:	0144a703          	lw	a4,20(s1)
    80001a70:	00271713          	slli	a4,a4,0x2
    80001a74:	00e787b3          	add	a5,a5,a4
    80001a78:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80001a7c:	0144a783          	lw	a5,20(s1)
    80001a80:	0017879b          	addiw	a5,a5,1
    80001a84:	0004a703          	lw	a4,0(s1)
    80001a88:	02e7e7bb          	remw	a5,a5,a4
    80001a8c:	00f4aa23          	sw	a5,20(s1)
    MySemaphore::sem_signal(mutexTail);
    80001a90:	0304b503          	ld	a0,48(s1)
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	970080e7          	jalr	-1680(ra) # 80002404 <_ZN11MySemaphore10sem_signalEPS_>

    MySemaphore::sem_signal(itemAvailable);
    80001a9c:	0204b503          	ld	a0,32(s1)
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	964080e7          	jalr	-1692(ra) # 80002404 <_ZN11MySemaphore10sem_signalEPS_>

}
    80001aa8:	01813083          	ld	ra,24(sp)
    80001aac:	01013403          	ld	s0,16(sp)
    80001ab0:	00813483          	ld	s1,8(sp)
    80001ab4:	00013903          	ld	s2,0(sp)
    80001ab8:	02010113          	addi	sp,sp,32
    80001abc:	00008067          	ret

0000000080001ac0 <_ZN8MyBuffer3getEv>:

int MyBuffer::get() {
    80001ac0:	fe010113          	addi	sp,sp,-32
    80001ac4:	00113c23          	sd	ra,24(sp)
    80001ac8:	00813823          	sd	s0,16(sp)
    80001acc:	00913423          	sd	s1,8(sp)
    80001ad0:	01213023          	sd	s2,0(sp)
    80001ad4:	02010413          	addi	s0,sp,32
    80001ad8:	00050493          	mv	s1,a0
    MySemaphore::sem_wait(itemAvailable);
    80001adc:	02053503          	ld	a0,32(a0)
    80001ae0:	00001097          	auipc	ra,0x1
    80001ae4:	854080e7          	jalr	-1964(ra) # 80002334 <_ZN11MySemaphore8sem_waitEPS_>

    MySemaphore::sem_wait(mutexHead);
    80001ae8:	0284b503          	ld	a0,40(s1)
    80001aec:	00001097          	auipc	ra,0x1
    80001af0:	848080e7          	jalr	-1976(ra) # 80002334 <_ZN11MySemaphore8sem_waitEPS_>

    int ret = buffer[head];
    80001af4:	0084b703          	ld	a4,8(s1)
    80001af8:	0104a783          	lw	a5,16(s1)
    80001afc:	00279693          	slli	a3,a5,0x2
    80001b00:	00d70733          	add	a4,a4,a3
    80001b04:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80001b08:	0017879b          	addiw	a5,a5,1
    80001b0c:	0004a703          	lw	a4,0(s1)
    80001b10:	02e7e7bb          	remw	a5,a5,a4
    80001b14:	00f4a823          	sw	a5,16(s1)
    MySemaphore::sem_signal(mutexHead);
    80001b18:	0284b503          	ld	a0,40(s1)
    80001b1c:	00001097          	auipc	ra,0x1
    80001b20:	8e8080e7          	jalr	-1816(ra) # 80002404 <_ZN11MySemaphore10sem_signalEPS_>

    MySemaphore::sem_signal(spaceAvailable);
    80001b24:	0184b503          	ld	a0,24(s1)
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	8dc080e7          	jalr	-1828(ra) # 80002404 <_ZN11MySemaphore10sem_signalEPS_>

    return ret;
}
    80001b30:	00090513          	mv	a0,s2
    80001b34:	01813083          	ld	ra,24(sp)
    80001b38:	01013403          	ld	s0,16(sp)
    80001b3c:	00813483          	ld	s1,8(sp)
    80001b40:	00013903          	ld	s2,0(sp)
    80001b44:	02010113          	addi	sp,sp,32
    80001b48:	00008067          	ret

0000000080001b4c <_ZN8MyBuffer6getCntEv>:

int MyBuffer::getCnt() {
    80001b4c:	fe010113          	addi	sp,sp,-32
    80001b50:	00113c23          	sd	ra,24(sp)
    80001b54:	00813823          	sd	s0,16(sp)
    80001b58:	00913423          	sd	s1,8(sp)
    80001b5c:	01213023          	sd	s2,0(sp)
    80001b60:	02010413          	addi	s0,sp,32
    80001b64:	00050493          	mv	s1,a0
    int ret;

    MySemaphore::sem_wait(mutexHead);
    80001b68:	02853503          	ld	a0,40(a0)
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	7c8080e7          	jalr	1992(ra) # 80002334 <_ZN11MySemaphore8sem_waitEPS_>
    MySemaphore::sem_wait(mutexTail);
    80001b74:	0304b503          	ld	a0,48(s1)
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	7bc080e7          	jalr	1980(ra) # 80002334 <_ZN11MySemaphore8sem_waitEPS_>

    if (tail >= head) {
    80001b80:	0144a783          	lw	a5,20(s1)
    80001b84:	0104a903          	lw	s2,16(s1)
    80001b88:	0327ce63          	blt	a5,s2,80001bc4 <_ZN8MyBuffer6getCntEv+0x78>
        ret = tail - head;
    80001b8c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    MySemaphore::sem_signal(mutexTail);
    80001b90:	0304b503          	ld	a0,48(s1)
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	870080e7          	jalr	-1936(ra) # 80002404 <_ZN11MySemaphore10sem_signalEPS_>
    MySemaphore::sem_signal(mutexHead);
    80001b9c:	0284b503          	ld	a0,40(s1)
    80001ba0:	00001097          	auipc	ra,0x1
    80001ba4:	864080e7          	jalr	-1948(ra) # 80002404 <_ZN11MySemaphore10sem_signalEPS_>

    return ret;
}
    80001ba8:	00090513          	mv	a0,s2
    80001bac:	01813083          	ld	ra,24(sp)
    80001bb0:	01013403          	ld	s0,16(sp)
    80001bb4:	00813483          	ld	s1,8(sp)
    80001bb8:	00013903          	ld	s2,0(sp)
    80001bbc:	02010113          	addi	sp,sp,32
    80001bc0:	00008067          	ret
        ret = cap - head + tail;
    80001bc4:	0004a703          	lw	a4,0(s1)
    80001bc8:	4127093b          	subw	s2,a4,s2
    80001bcc:	00f9093b          	addw	s2,s2,a5
    80001bd0:	fc1ff06f          	j	80001b90 <_ZN8MyBuffer6getCntEv+0x44>

0000000080001bd4 <_ZN11BuddySystemC1Ev>:
//
// Created by os on 8/12/23.

#include "../h/Buddy.h"

BuddySystem::BuddySystem(){
    80001bd4:	ff010113          	addi	sp,sp,-16
    80001bd8:	00813423          	sd	s0,8(sp)
    80001bdc:	01010413          	addi	s0,sp,16

}
    80001be0:	00813403          	ld	s0,8(sp)
    80001be4:	01010113          	addi	sp,sp,16
    80001be8:	00008067          	ret

0000000080001bec <_ZN11BuddySystem13insertInArrayEmm>:
    }
    return position;
}

// vraca na kojem mestu je node ubacen u nizu arr[position]
int BuddySystem::insertInArray(size_t position, size_t addr) {
    80001bec:	ff010113          	addi	sp,sp,-16
    80001bf0:	00813423          	sd	s0,8(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    80001bf8:	00050693          	mv	a3,a0
    MemNode* node = (MemNode*)addr;

    if(!arr[position]){
    80001bfc:	00359793          	slli	a5,a1,0x3
    80001c00:	00f507b3          	add	a5,a0,a5
    80001c04:	0007b783          	ld	a5,0(a5)
    80001c08:	02078263          	beqz	a5,80001c2c <_ZN11BuddySystem13insertInArrayEmm+0x40>
        arr[position] = node;
        return 0;
    }

    int cnt = 0;
    MemNode* prev = nullptr, * curr = arr[position];
    80001c0c:	00000713          	li	a4,0
    int cnt = 0;
    80001c10:	00000513          	li	a0,0
    while(curr and (size_t)curr < (size_t)node){
    80001c14:	02078663          	beqz	a5,80001c40 <_ZN11BuddySystem13insertInArrayEmm+0x54>
    80001c18:	02c7f463          	bgeu	a5,a2,80001c40 <_ZN11BuddySystem13insertInArrayEmm+0x54>
        prev = curr;
        curr = curr->next;
        cnt++;
    80001c1c:	0015051b          	addiw	a0,a0,1
        prev = curr;
    80001c20:	00078713          	mv	a4,a5
        curr = curr->next;
    80001c24:	0007b783          	ld	a5,0(a5)
    while(curr and (size_t)curr < (size_t)node){
    80001c28:	fedff06f          	j	80001c14 <_ZN11BuddySystem13insertInArrayEmm+0x28>
        arr[position] = node;
    80001c2c:	00359593          	slli	a1,a1,0x3
    80001c30:	00b506b3          	add	a3,a0,a1
    80001c34:	00c6b023          	sd	a2,0(a3)
        return 0;
    80001c38:	00000513          	li	a0,0
    80001c3c:	0100006f          	j	80001c4c <_ZN11BuddySystem13insertInArrayEmm+0x60>
    }
    node->next = curr;
    80001c40:	00f63023          	sd	a5,0(a2)
    if(prev)prev->next = node;
    80001c44:	00070a63          	beqz	a4,80001c58 <_ZN11BuddySystem13insertInArrayEmm+0x6c>
    80001c48:	00c73023          	sd	a2,0(a4)
    else arr[position] = node;
    return cnt;
}
    80001c4c:	00813403          	ld	s0,8(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret
    else arr[position] = node;
    80001c58:	00359593          	slli	a1,a1,0x3
    80001c5c:	00b686b3          	add	a3,a3,a1
    80001c60:	00c6b023          	sd	a2,0(a3)
    80001c64:	fe9ff06f          	j	80001c4c <_ZN11BuddySystem13insertInArrayEmm+0x60>

0000000080001c68 <_ZN11BuddySystem13splitAndOrderEmm>:
size_t BuddySystem::splitAndOrder(size_t position, size_t required_size) {
    80001c68:	fc010113          	addi	sp,sp,-64
    80001c6c:	02113c23          	sd	ra,56(sp)
    80001c70:	02813823          	sd	s0,48(sp)
    80001c74:	02913423          	sd	s1,40(sp)
    80001c78:	03213023          	sd	s2,32(sp)
    80001c7c:	01313c23          	sd	s3,24(sp)
    80001c80:	01413823          	sd	s4,16(sp)
    80001c84:	01513423          	sd	s5,8(sp)
    80001c88:	04010413          	addi	s0,sp,64
    80001c8c:	00050a13          	mv	s4,a0
    80001c90:	00058493          	mv	s1,a1
    80001c94:	00060a93          	mv	s5,a2
    int insertInArray(size_t position, size_t addr);
    int tryToMerge(MemNode* left, MemNode* right, size_t position);

    size_t static pow(size_t deg){
        size_t tmp = 1;
        for(size_t i = 0; i < deg; i++){
    80001c98:	00000793          	li	a5,0
        size_t tmp = 1;
    80001c9c:	00100913          	li	s2,1
        for(size_t i = 0; i < deg; i++){
    80001ca0:	0097f863          	bgeu	a5,s1,80001cb0 <_ZN11BuddySystem13splitAndOrderEmm+0x48>
            tmp <<= 1;
    80001ca4:	00191913          	slli	s2,s2,0x1
        for(size_t i = 0; i < deg; i++){
    80001ca8:	00178793          	addi	a5,a5,1
    80001cac:	ff5ff06f          	j	80001ca0 <_ZN11BuddySystem13splitAndOrderEmm+0x38>
    while((val >> 1) >= required_size && (val >> 1) >= BLOCK_SIZE){
    80001cb0:	00195913          	srli	s2,s2,0x1
    80001cb4:	07596463          	bltu	s2,s5,80001d1c <_ZN11BuddySystem13splitAndOrderEmm+0xb4>
    80001cb8:	000017b7          	lui	a5,0x1
    80001cbc:	06f96063          	bltu	s2,a5,80001d1c <_ZN11BuddySystem13splitAndOrderEmm+0xb4>
        MemNode* tmp = arr[position];
    80001cc0:	00349793          	slli	a5,s1,0x3
    80001cc4:	00fa07b3          	add	a5,s4,a5
    80001cc8:	0007b603          	ld	a2,0(a5) # 1000 <_entry-0x7ffff000>
        arr[position] = arr[position]->next;
    80001ccc:	00063703          	ld	a4,0(a2)
    80001cd0:	00e7b023          	sd	a4,0(a5)
        tmp->next = nullptr;
    80001cd4:	00063023          	sd	zero,0(a2)
        tmp->size >>= 1;
    80001cd8:	00863783          	ld	a5,8(a2)
    80001cdc:	0017d793          	srli	a5,a5,0x1
    80001ce0:	00f63423          	sd	a5,8(a2)
        MemNode* newNode = (MemNode*)((size_t)tmp + tmp->size);
    80001ce4:	00c789b3          	add	s3,a5,a2
        newNode->size = tmp->size;
    80001ce8:	00f9b423          	sd	a5,8(s3)
        newNode->next = nullptr;
    80001cec:	0009b023          	sd	zero,0(s3)
        position--;
    80001cf0:	fff48493          	addi	s1,s1,-1
        insertInArray(position, (size_t)tmp);
    80001cf4:	00048593          	mv	a1,s1
    80001cf8:	000a0513          	mv	a0,s4
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	ef0080e7          	jalr	-272(ra) # 80001bec <_ZN11BuddySystem13insertInArrayEmm>
        insertInArray(position, (size_t)newNode);
    80001d04:	00098613          	mv	a2,s3
    80001d08:	00048593          	mv	a1,s1
    80001d0c:	000a0513          	mv	a0,s4
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	edc080e7          	jalr	-292(ra) # 80001bec <_ZN11BuddySystem13insertInArrayEmm>
    while((val >> 1) >= required_size && (val >> 1) >= BLOCK_SIZE){
    80001d18:	f99ff06f          	j	80001cb0 <_ZN11BuddySystem13splitAndOrderEmm+0x48>
}
    80001d1c:	00048513          	mv	a0,s1
    80001d20:	03813083          	ld	ra,56(sp)
    80001d24:	03013403          	ld	s0,48(sp)
    80001d28:	02813483          	ld	s1,40(sp)
    80001d2c:	02013903          	ld	s2,32(sp)
    80001d30:	01813983          	ld	s3,24(sp)
    80001d34:	01013a03          	ld	s4,16(sp)
    80001d38:	00813a83          	ld	s5,8(sp)
    80001d3c:	04010113          	addi	sp,sp,64
    80001d40:	00008067          	ret

0000000080001d44 <_ZN11BuddySystem10buddyAllocEm>:
void* BuddySystem::buddyAlloc(size_t size) {
    80001d44:	fe010113          	addi	sp,sp,-32
    80001d48:	00113c23          	sd	ra,24(sp)
    80001d4c:	00813823          	sd	s0,16(sp)
    80001d50:	00913423          	sd	s1,8(sp)
    80001d54:	02010413          	addi	s0,sp,32
    80001d58:	00050493          	mv	s1,a0
    80001d5c:	00058713          	mv	a4,a1
    for(size_t i = 0; i < 40; i++){
    80001d60:	00000593          	li	a1,0
    80001d64:	0080006f          	j	80001d6c <_ZN11BuddySystem10buddyAllocEm+0x28>
    80001d68:	00158593          	addi	a1,a1,1
    80001d6c:	02700793          	li	a5,39
    80001d70:	06b7e063          	bltu	a5,a1,80001dd0 <_ZN11BuddySystem10buddyAllocEm+0x8c>
        if(arr[i] && arr[i]->size >= size + sizeof(size_t)){
    80001d74:	00359793          	slli	a5,a1,0x3
    80001d78:	00f487b3          	add	a5,s1,a5
    80001d7c:	0007b783          	ld	a5,0(a5)
    80001d80:	fe0784e3          	beqz	a5,80001d68 <_ZN11BuddySystem10buddyAllocEm+0x24>
    80001d84:	0087b783          	ld	a5,8(a5)
    80001d88:	00870613          	addi	a2,a4,8
    80001d8c:	fcc7eee3          	bltu	a5,a2,80001d68 <_ZN11BuddySystem10buddyAllocEm+0x24>
            position = splitAndOrder(i, size + sizeof(size_t));
    80001d90:	00048513          	mv	a0,s1
    80001d94:	00000097          	auipc	ra,0x0
    80001d98:	ed4080e7          	jalr	-300(ra) # 80001c68 <_ZN11BuddySystem13splitAndOrderEmm>
    if(position == 50)return nullptr;
    80001d9c:	03200793          	li	a5,50
    80001da0:	04f50a63          	beq	a0,a5,80001df4 <_ZN11BuddySystem10buddyAllocEm+0xb0>
    MemNode* node = arr[position];
    80001da4:	00351793          	slli	a5,a0,0x3
    80001da8:	00f484b3          	add	s1,s1,a5
    80001dac:	0004b683          	ld	a3,0(s1)
    arr[position] = arr[position]->next;
    80001db0:	0006b783          	ld	a5,0(a3)
    80001db4:	00f4b023          	sd	a5,0(s1)
    80001db8:	00000793          	li	a5,0
        size_t tmp = 1;
    80001dbc:	00100713          	li	a4,1
        for(size_t i = 0; i < deg; i++){
    80001dc0:	00a7fc63          	bgeu	a5,a0,80001dd8 <_ZN11BuddySystem10buddyAllocEm+0x94>
            tmp <<= 1;
    80001dc4:	00171713          	slli	a4,a4,0x1
        for(size_t i = 0; i < deg; i++){
    80001dc8:	00178793          	addi	a5,a5,1
    80001dcc:	ff5ff06f          	j	80001dc0 <_ZN11BuddySystem10buddyAllocEm+0x7c>
    size_t position = 50;
    80001dd0:	03200513          	li	a0,50
    80001dd4:	fc9ff06f          	j	80001d9c <_ZN11BuddySystem10buddyAllocEm+0x58>
    *((size_t*)node) = pow(position);
    80001dd8:	00e6b023          	sd	a4,0(a3)
    return (void*)((size_t)node + sizeof(size_t));
    80001ddc:	00868513          	addi	a0,a3,8
}
    80001de0:	01813083          	ld	ra,24(sp)
    80001de4:	01013403          	ld	s0,16(sp)
    80001de8:	00813483          	ld	s1,8(sp)
    80001dec:	02010113          	addi	sp,sp,32
    80001df0:	00008067          	ret
    if(position == 50)return nullptr;
    80001df4:	00000513          	li	a0,0
    80001df8:	fe9ff06f          	j	80001de0 <_ZN11BuddySystem10buddyAllocEm+0x9c>

0000000080001dfc <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>:

// vraca -1 ukoliko nije spojeno, ukoliko jeste vraca poziciju na kojoj je element ubacen
int BuddySystem::tryToMerge(BuddySystem::MemNode *left, BuddySystem::MemNode *right, size_t position) {
    if(left && right && ((size_t)left + left->size == (size_t)right) && (((size_t)left - buddyHeapStart) % pow(position) == 0)){
    80001dfc:	0a058c63          	beqz	a1,80001eb4 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xb8>
    80001e00:	0a060e63          	beqz	a2,80001ebc <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xc0>
    80001e04:	0085b883          	ld	a7,8(a1)
    80001e08:	00b887b3          	add	a5,a7,a1
    80001e0c:	0ac79c63          	bne	a5,a2,80001ec4 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xc8>
    80001e10:	14053703          	ld	a4,320(a0)
    80001e14:	40e58833          	sub	a6,a1,a4
    80001e18:	00000793          	li	a5,0
        size_t tmp = 1;
    80001e1c:	00100713          	li	a4,1
        for(size_t i = 0; i < deg; i++){
    80001e20:	00d7f863          	bgeu	a5,a3,80001e30 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x34>
            tmp <<= 1;
    80001e24:	00171713          	slli	a4,a4,0x1
        for(size_t i = 0; i < deg; i++){
    80001e28:	00178793          	addi	a5,a5,1
    80001e2c:	ff5ff06f          	j	80001e20 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x24>
    80001e30:	02e87733          	remu	a4,a6,a4
    80001e34:	08071c63          	bnez	a4,80001ecc <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xd0>
int BuddySystem::tryToMerge(BuddySystem::MemNode *left, BuddySystem::MemNode *right, size_t position) {
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00113423          	sd	ra,8(sp)
    80001e40:	00813023          	sd	s0,0(sp)
    80001e44:	01010413          	addi	s0,sp,16
        left->size <<= 1;
    80001e48:	00189893          	slli	a7,a7,0x1
    80001e4c:	0115b423          	sd	a7,8(a1)
        MemNode* prev = nullptr;
        for(MemNode* curr = arr[position]; curr != left; curr = curr->next){
    80001e50:	00369793          	slli	a5,a3,0x3
    80001e54:	00f507b3          	add	a5,a0,a5
    80001e58:	0007b783          	ld	a5,0(a5)
    80001e5c:	00b78863          	beq	a5,a1,80001e6c <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x70>
            prev = curr;
    80001e60:	00078713          	mv	a4,a5
        for(MemNode* curr = arr[position]; curr != left; curr = curr->next){
    80001e64:	0007b783          	ld	a5,0(a5)
    80001e68:	ff5ff06f          	j	80001e5c <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x60>
        }
        if(prev){
    80001e6c:	02070a63          	beqz	a4,80001ea0 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xa4>
            prev->next = right->next;
    80001e70:	00063783          	ld	a5,0(a2)
    80001e74:	00f73023          	sd	a5,0(a4)
        }else{
            arr[position] = right->next;
        }
        right->next = nullptr;
    80001e78:	00063023          	sd	zero,0(a2)
        left->next = nullptr;
    80001e7c:	0005b023          	sd	zero,0(a1)
//        *(size_t*)(left - sizeof(size_t)) = left->size;
        size_t insertPosition = insertInArray(position + 1, (size_t)left);
    80001e80:	00058613          	mv	a2,a1
    80001e84:	00168593          	addi	a1,a3,1
    80001e88:	00000097          	auipc	ra,0x0
    80001e8c:	d64080e7          	jalr	-668(ra) # 80001bec <_ZN11BuddySystem13insertInArrayEmm>
        // nema svrhu, samo testiranje da ne bi bilo optimizacije
        left = arr[position];
        return (int)insertPosition;
    }
    return -1;
}
    80001e90:	00813083          	ld	ra,8(sp)
    80001e94:	00013403          	ld	s0,0(sp)
    80001e98:	01010113          	addi	sp,sp,16
    80001e9c:	00008067          	ret
            arr[position] = right->next;
    80001ea0:	00063703          	ld	a4,0(a2)
    80001ea4:	00369793          	slli	a5,a3,0x3
    80001ea8:	00f507b3          	add	a5,a0,a5
    80001eac:	00e7b023          	sd	a4,0(a5)
    80001eb0:	fc9ff06f          	j	80001e78 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x7c>
    return -1;
    80001eb4:	fff00513          	li	a0,-1
    80001eb8:	00008067          	ret
    80001ebc:	fff00513          	li	a0,-1
    80001ec0:	00008067          	ret
    80001ec4:	fff00513          	li	a0,-1
    80001ec8:	00008067          	ret
    80001ecc:	fff00513          	li	a0,-1
}
    80001ed0:	00008067          	ret

0000000080001ed4 <_ZN11BuddySystem9buddyFreeEm>:
    size_t size = *(size_t*)(addr - sizeof(size_t));
    80001ed4:	ff85b683          	ld	a3,-8(a1)
    if((void*)addr == nullptr || size == 0)return;
    80001ed8:	12058863          	beqz	a1,80002008 <_ZN11BuddySystem9buddyFreeEm+0x134>
void BuddySystem::buddyFree(size_t addr) {
    80001edc:	fd010113          	addi	sp,sp,-48
    80001ee0:	02113423          	sd	ra,40(sp)
    80001ee4:	02813023          	sd	s0,32(sp)
    80001ee8:	00913c23          	sd	s1,24(sp)
    80001eec:	01213823          	sd	s2,16(sp)
    80001ef0:	01313423          	sd	s3,8(sp)
    80001ef4:	01413023          	sd	s4,0(sp)
    80001ef8:	03010413          	addi	s0,sp,48
    80001efc:	00050a13          	mv	s4,a0
    80001f00:	ff858613          	addi	a2,a1,-8
    if((void*)addr == nullptr || size == 0)return;
    80001f04:	0e068263          	beqz	a3,80001fe8 <_ZN11BuddySystem9buddyFreeEm+0x114>
    80001f08:	00068793          	mv	a5,a3
        }
        return tmp;
    }

    size_t static log(size_t size){
        size_t deg = 0;
    80001f0c:	00000993          	li	s3,0
        while(size > 1){
    80001f10:	00100713          	li	a4,1
    80001f14:	00f77863          	bgeu	a4,a5,80001f24 <_ZN11BuddySystem9buddyFreeEm+0x50>
            size >>= 1;
    80001f18:	0017d793          	srli	a5,a5,0x1
            deg++;
    80001f1c:	00198993          	addi	s3,s3,1
        while(size > 1){
    80001f20:	ff1ff06f          	j	80001f10 <_ZN11BuddySystem9buddyFreeEm+0x3c>
    newNode->next = nullptr;
    80001f24:	fe05bc23          	sd	zero,-8(a1)
    newNode->size = size;
    80001f28:	00d63423          	sd	a3,8(a2)
    int merged = (int)insertInArray(position, (size_t)newNode);
    80001f2c:	00098593          	mv	a1,s3
    80001f30:	000a0513          	mv	a0,s4
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	cb8080e7          	jalr	-840(ra) # 80001bec <_ZN11BuddySystem13insertInArrayEmm>
    80001f3c:	07c0006f          	j	80001fb8 <_ZN11BuddySystem9buddyFreeEm+0xe4>
        for(int i = 0; i < merged; i++){
    80001f40:	0017071b          	addiw	a4,a4,1
            prev = curr;
    80001f44:	00048593          	mv	a1,s1
            curr = curr->next;
    80001f48:	00078493          	mv	s1,a5
        for(int i = 0; i < merged; i++){
    80001f4c:	00a75a63          	bge	a4,a0,80001f60 <_ZN11BuddySystem9buddyFreeEm+0x8c>
            curr = curr->next;
    80001f50:	0004b783          	ld	a5,0(s1)
            if(curr)next = curr->next;
    80001f54:	fe0786e3          	beqz	a5,80001f40 <_ZN11BuddySystem9buddyFreeEm+0x6c>
    80001f58:	0007b903          	ld	s2,0(a5)
    80001f5c:	fe5ff06f          	j	80001f40 <_ZN11BuddySystem9buddyFreeEm+0x6c>
        if(merged == 0 && curr){
    80001f60:	00051663          	bnez	a0,80001f6c <_ZN11BuddySystem9buddyFreeEm+0x98>
    80001f64:	00048463          	beqz	s1,80001f6c <_ZN11BuddySystem9buddyFreeEm+0x98>
            next = curr->next;
    80001f68:	0004b903          	ld	s2,0(s1)
        if(!prev && !next){
    80001f6c:	06058863          	beqz	a1,80001fdc <_ZN11BuddySystem9buddyFreeEm+0x108>
        if(prev){
    80001f70:	00058c63          	beqz	a1,80001f88 <_ZN11BuddySystem9buddyFreeEm+0xb4>
            merged = tryToMerge(prev, curr, position);
    80001f74:	00098693          	mv	a3,s3
    80001f78:	00048613          	mv	a2,s1
    80001f7c:	000a0513          	mv	a0,s4
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	e7c080e7          	jalr	-388(ra) # 80001dfc <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>
        if((merged != -1) && next){
    80001f88:	fff00793          	li	a5,-1
    80001f8c:	02f50063          	beq	a0,a5,80001fac <_ZN11BuddySystem9buddyFreeEm+0xd8>
    80001f90:	00090e63          	beqz	s2,80001fac <_ZN11BuddySystem9buddyFreeEm+0xd8>
            merged = tryToMerge(curr, next, position);
    80001f94:	00098693          	mv	a3,s3
    80001f98:	00090613          	mv	a2,s2
    80001f9c:	00048593          	mv	a1,s1
    80001fa0:	000a0513          	mv	a0,s4
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	e58080e7          	jalr	-424(ra) # 80001dfc <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>
        if(merged != -1)position++;
    80001fac:	fff00793          	li	a5,-1
    80001fb0:	00f50463          	beq	a0,a5,80001fb8 <_ZN11BuddySystem9buddyFreeEm+0xe4>
    80001fb4:	00198993          	addi	s3,s3,1
    while(merged != -1){
    80001fb8:	fff00793          	li	a5,-1
    80001fbc:	02f50663          	beq	a0,a5,80001fe8 <_ZN11BuddySystem9buddyFreeEm+0x114>
        MemNode* curr = arr[position], *prev = nullptr, *next = nullptr;
    80001fc0:	00399793          	slli	a5,s3,0x3
    80001fc4:	00fa07b3          	add	a5,s4,a5
    80001fc8:	0007b483          	ld	s1,0(a5)
        for(int i = 0; i < merged; i++){
    80001fcc:	00000713          	li	a4,0
        MemNode* curr = arr[position], *prev = nullptr, *next = nullptr;
    80001fd0:	00000913          	li	s2,0
    80001fd4:	00000593          	li	a1,0
    80001fd8:	f75ff06f          	j	80001f4c <_ZN11BuddySystem9buddyFreeEm+0x78>
        if(!prev && !next){
    80001fdc:	f8091ae3          	bnez	s2,80001f70 <_ZN11BuddySystem9buddyFreeEm+0x9c>
            merged = -1;
    80001fe0:	fff00513          	li	a0,-1
    80001fe4:	f8dff06f          	j	80001f70 <_ZN11BuddySystem9buddyFreeEm+0x9c>
}
    80001fe8:	02813083          	ld	ra,40(sp)
    80001fec:	02013403          	ld	s0,32(sp)
    80001ff0:	01813483          	ld	s1,24(sp)
    80001ff4:	01013903          	ld	s2,16(sp)
    80001ff8:	00813983          	ld	s3,8(sp)
    80001ffc:	00013a03          	ld	s4,0(sp)
    80002000:	03010113          	addi	sp,sp,48
    80002004:	00008067          	ret
    80002008:	00008067          	ret

000000008000200c <_ZN11BuddySystem9initBuddyEv>:

void BuddySystem::initBuddy() {
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00813423          	sd	s0,8(sp)
    80002014:	01010413          	addi	s0,sp,16
    buddyHeapEnd = buddyHeapStart + buddyNumOfBlocks * BLOCK_SIZE;
    80002018:	14053603          	ld	a2,320(a0)
    8000201c:	15053783          	ld	a5,336(a0)
    80002020:	00c79793          	slli	a5,a5,0xc
    80002024:	00f60633          	add	a2,a2,a5
    80002028:	14c53423          	sd	a2,328(a0)
//    buddyHeapEnd = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - 1 - (size_t)HEAP_START_ADDR) / 8;
    size_t deg = 0, size = 1, realSize = buddyHeapEnd - (size_t)HEAP_START_ADDR, heapStart = (size_t)HEAP_START_ADDR;
    8000202c:	0000b797          	auipc	a5,0xb
    80002030:	e047b783          	ld	a5,-508(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002034:	0007b683          	ld	a3,0(a5)
    80002038:	40d60633          	sub	a2,a2,a3
    8000203c:	00100793          	li	a5,1
    80002040:	00000713          	li	a4,0

    while(size <= realSize){
    80002044:	00f66863          	bltu	a2,a5,80002054 <_ZN11BuddySystem9initBuddyEv+0x48>
        deg++;
    80002048:	00170713          	addi	a4,a4,1
        size <<= 1;
    8000204c:	00179793          	slli	a5,a5,0x1
    while(size <= realSize){
    80002050:	ff5ff06f          	j	80002044 <_ZN11BuddySystem9initBuddyEv+0x38>
    }
    size >>= 1;
    80002054:	0017d793          	srli	a5,a5,0x1
    deg--;
    80002058:	fff70713          	addi	a4,a4,-1
        size_t deg = 0;
    8000205c:	00000813          	li	a6,0
    80002060:	000015b7          	lui	a1,0x1
        while(size > 1){
    80002064:	00100893          	li	a7,1
    80002068:	00b8fc63          	bgeu	a7,a1,80002080 <_ZN11BuddySystem9initBuddyEv+0x74>
            size >>= 1;
    8000206c:	0015d593          	srli	a1,a1,0x1
            deg++;
    80002070:	00180813          	addi	a6,a6,1
        while(size > 1){
    80002074:	ff1ff06f          	j	80002064 <_ZN11BuddySystem9initBuddyEv+0x58>
    int cnt = 0;
    size_t boundary = log(BLOCK_SIZE);
    while(heapStart < buddyHeapEnd && size >= boundary) {
        cnt++;
        if(realSize < size){
            deg--;
    80002078:	fff70713          	addi	a4,a4,-1
            size >>=1;
    8000207c:	0017d793          	srli	a5,a5,0x1
    while(heapStart < buddyHeapEnd && size >= boundary) {
    80002080:	14853583          	ld	a1,328(a0)
    80002084:	02b6fa63          	bgeu	a3,a1,800020b8 <_ZN11BuddySystem9initBuddyEv+0xac>
    80002088:	0307e863          	bltu	a5,a6,800020b8 <_ZN11BuddySystem9initBuddyEv+0xac>
        if(realSize < size){
    8000208c:	fef666e3          	bltu	a2,a5,80002078 <_ZN11BuddySystem9initBuddyEv+0x6c>
            continue;
        }

        MemNode *newNode = (MemNode *) heapStart;
        newNode->next = nullptr;
    80002090:	0006b023          	sd	zero,0(a3)
        newNode->size = size;
    80002094:	00f6b423          	sd	a5,8(a3)
        arr[deg] = newNode;
    80002098:	00371593          	slli	a1,a4,0x3
    8000209c:	00b505b3          	add	a1,a0,a1
    800020a0:	00d5b023          	sd	a3,0(a1) # 1000 <_entry-0x7ffff000>

        realSize -= size;
    800020a4:	40f60633          	sub	a2,a2,a5
        heapStart += size;
    800020a8:	00f686b3          	add	a3,a3,a5
        deg--;
    800020ac:	fff70713          	addi	a4,a4,-1
        size >>= 1;
    800020b0:	0017d793          	srli	a5,a5,0x1
    800020b4:	fcdff06f          	j	80002080 <_ZN11BuddySystem9initBuddyEv+0x74>
    }
};
    800020b8:	00813403          	ld	s0,8(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret

00000000800020c4 <_ZN11MySemaphoreC1Em>:
    if( id->get_val() <= 0)id->unblock();
    if(!id->get_indicator())return 0;
    else return -1;
}

MySemaphore::MySemaphore(uint64 init) {
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00813423          	sd	s0,8(sp)
    800020cc:	01010413          	addi	s0,sp,16
    val = init;
    800020d0:	00b52023          	sw	a1,0(a0)
    head = tail = nullptr;
    800020d4:	00053823          	sd	zero,16(a0)
    800020d8:	00053423          	sd	zero,8(a0)
    indicator = false;
    800020dc:	00050223          	sb	zero,4(a0)
}
    800020e0:	00813403          	ld	s0,8(sp)
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00008067          	ret

00000000800020ec <_ZN11MySemaphore8sem_openEPPS_m>:
int MySemaphore::sem_open(MySemaphore **handle, uint64 init) {
    800020ec:	fd010113          	addi	sp,sp,-48
    800020f0:	02113423          	sd	ra,40(sp)
    800020f4:	02813023          	sd	s0,32(sp)
    800020f8:	00913c23          	sd	s1,24(sp)
    800020fc:	01213823          	sd	s2,16(sp)
    80002100:	01313423          	sd	s3,8(sp)
    80002104:	03010413          	addi	s0,sp,48
    80002108:	00050493          	mv	s1,a0
    8000210c:	00058993          	mv	s3,a1
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    80002110:	0000b797          	auipc	a5,0xb
    80002114:	db07c783          	lbu	a5,-592(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002118:	04078663          	beqz	a5,80002164 <_ZN11MySemaphore8sem_openEPPS_m+0x78>
    void set_val(int v){ val = v; }

    // operatori
    void *operator new(uint64 n){
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    8000211c:	00100593          	li	a1,1
    80002120:	0000b517          	auipc	a0,0xb
    80002124:	da850513          	addi	a0,a0,-600 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002128:	00003097          	auipc	ra,0x3
    8000212c:	174080e7          	jalr	372(ra) # 8000529c <_ZN15MemoryAllocator12memory_allocEm>
    80002130:	00050913          	mv	s2,a0
    *handle = new MySemaphore(init);
    80002134:	00098593          	mv	a1,s3
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	f8c080e7          	jalr	-116(ra) # 800020c4 <_ZN11MySemaphoreC1Em>
    80002140:	0124b023          	sd	s2,0(s1)
}
    80002144:	00000513          	li	a0,0
    80002148:	02813083          	ld	ra,40(sp)
    8000214c:	02013403          	ld	s0,32(sp)
    80002150:	01813483          	ld	s1,24(sp)
    80002154:	01013903          	ld	s2,16(sp)
    80002158:	00813983          	ld	s3,8(sp)
    8000215c:	03010113          	addi	sp,sp,48
    80002160:	00008067          	ret

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    80002164:	0000b617          	auipc	a2,0xb
    80002168:	d6460613          	addi	a2,a2,-668 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    8000216c:	0000b797          	auipc	a5,0xb
    80002170:	d0c7b783          	ld	a5,-756(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002174:	0007b703          	ld	a4,0(a5)
    80002178:	0000b797          	auipc	a5,0xb
    8000217c:	cb87b783          	ld	a5,-840(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002180:	0007b783          	ld	a5,0(a5)
    80002184:	40f706b3          	sub	a3,a4,a5
    80002188:	0036d693          	srli	a3,a3,0x3
    8000218c:	00d787b3          	add	a5,a5,a3
    80002190:	00178793          	addi	a5,a5,1
    80002194:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002198:	fff70713          	addi	a4,a4,-1
    8000219c:	00e63823          	sd	a4,16(a2)

        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    800021a0:	40f70733          	sub	a4,a4,a5
    800021a4:	00675713          	srli	a4,a4,0x6

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800021a8:	03f7f693          	andi	a3,a5,63
    800021ac:	00068663          	beqz	a3,800021b8 <_ZN11MySemaphore8sem_openEPPS_m+0xcc>
    800021b0:	04000613          	li	a2,64
    800021b4:	40d606b3          	sub	a3,a2,a3
    800021b8:	00d787b3          	add	a5,a5,a3
    800021bc:	0000b697          	auipc	a3,0xb
    800021c0:	d0f6b623          	sd	a5,-756(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    800021c4:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    800021c8:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    800021cc:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    800021d0:	00100793          	li	a5,1
    800021d4:	0000b717          	auipc	a4,0xb
    800021d8:	cef70623          	sb	a5,-788(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800021dc:	f41ff06f          	j	8000211c <_ZN11MySemaphore8sem_openEPPS_m+0x30>

00000000800021e0 <_ZN11MySemaphore16get_from_blockedEv>:

TCB* MySemaphore::get_from_blocked() {
    800021e0:	ff010113          	addi	sp,sp,-16
    800021e4:	00813423          	sd	s0,8(sp)
    800021e8:	01010413          	addi	s0,sp,16
    800021ec:	00050793          	mv	a5,a0
    if(head){
    800021f0:	00853503          	ld	a0,8(a0)
    800021f4:	00050a63          	beqz	a0,80002208 <_ZN11MySemaphore16get_from_blockedEv+0x28>

    TCB* get_next_sleep()const{ return next_sleep; }

    void set_next_blocked(TCB* nextThread){ next_blocked = nextThread; }

    TCB* get_next_blocked()const{ return next_blocked; }
    800021f8:	04053703          	ld	a4,64(a0)
        TCB* tmp = head;
        head = head->get_next_blocked();
    800021fc:	00e7b423          	sd	a4,8(a5)
        if(!head)tail = nullptr;
    80002200:	00070a63          	beqz	a4,80002214 <_ZN11MySemaphore16get_from_blockedEv+0x34>
    void set_next_blocked(TCB* nextThread){ next_blocked = nextThread; }
    80002204:	04053023          	sd	zero,64(a0)
        tmp->set_next_blocked(nullptr);
        return tmp;
    }
    return nullptr;
}
    80002208:	00813403          	ld	s0,8(sp)
    8000220c:	01010113          	addi	sp,sp,16
    80002210:	00008067          	ret
        if(!head)tail = nullptr;
    80002214:	0007b823          	sd	zero,16(a5)
    80002218:	fedff06f          	j	80002204 <_ZN11MySemaphore16get_from_blockedEv+0x24>

000000008000221c <_ZN11MySemaphore9sem_closeEPS_>:
int MySemaphore::sem_close(MySemaphore* handle){
    8000221c:	fe010113          	addi	sp,sp,-32
    80002220:	00113c23          	sd	ra,24(sp)
    80002224:	00813823          	sd	s0,16(sp)
    80002228:	00913423          	sd	s1,8(sp)
    8000222c:	01213023          	sd	s2,0(sp)
    80002230:	02010413          	addi	s0,sp,32
    80002234:	00050913          	mv	s2,a0
    TCB* tmp = handle->head;
    80002238:	00853483          	ld	s1,8(a0)
    8000223c:	0180006f          	j	80002254 <_ZN11MySemaphore9sem_closeEPS_+0x38>
        if(tmp)Scheduler::getInstance().put(tmp);
    80002240:	00048593          	mv	a1,s1
    80002244:	0000b517          	auipc	a0,0xb
    80002248:	ca450513          	addi	a0,a0,-860 # 8000cee8 <_ZZN9Scheduler11getInstanceEvE8instance>
    8000224c:	00003097          	auipc	ra,0x3
    80002250:	ff0080e7          	jalr	-16(ra) # 8000523c <_ZN9Scheduler3putEP3TCB>
    while(tmp){
    80002254:	04048663          	beqz	s1,800022a0 <_ZN11MySemaphore9sem_closeEPS_+0x84>
        tmp = handle->get_from_blocked();
    80002258:	00090513          	mv	a0,s2
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	f84080e7          	jalr	-124(ra) # 800021e0 <_ZN11MySemaphore16get_from_blockedEv>
    80002264:	00050493          	mv	s1,a0
        if(tmp)Scheduler::getInstance().put(tmp);
    80002268:	fe0506e3          	beqz	a0,80002254 <_ZN11MySemaphore9sem_closeEPS_+0x38>

class Scheduler{
public:

    static Scheduler& getInstance(){
        static Scheduler instance;
    8000226c:	0000b797          	auipc	a5,0xb
    80002270:	c747c783          	lbu	a5,-908(a5) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80002274:	fc0796e3          	bnez	a5,80002240 <_ZN11MySemaphore9sem_closeEPS_+0x24>
//    static void printScheduler();

private:

    Scheduler(){
        head = nullptr;
    80002278:	0000b797          	auipc	a5,0xb
    8000227c:	bd87b783          	ld	a5,-1064(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002280:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80002284:	0000b797          	auipc	a5,0xb
    80002288:	ba47b783          	ld	a5,-1116(a5) # 8000ce28 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000228c:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80002290:	00100793          	li	a5,1
    80002294:	0000b717          	auipc	a4,0xb
    80002298:	c4f70623          	sb	a5,-948(a4) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    8000229c:	fa5ff06f          	j	80002240 <_ZN11MySemaphore9sem_closeEPS_+0x24>
    void set_indicator(bool v){ indicator = v; }
    800022a0:	00100793          	li	a5,1
    800022a4:	00f90223          	sb	a5,4(s2)
}
    800022a8:	00000513          	li	a0,0
    800022ac:	01813083          	ld	ra,24(sp)
    800022b0:	01013403          	ld	s0,16(sp)
    800022b4:	00813483          	ld	s1,8(sp)
    800022b8:	00013903          	ld	s2,0(sp)
    800022bc:	02010113          	addi	sp,sp,32
    800022c0:	00008067          	ret

00000000800022c4 <_ZN11MySemaphore14put_in_blockedEP3TCB>:

void MySemaphore::put_in_blocked(TCB *tcb) {
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00813423          	sd	s0,8(sp)
    800022cc:	01010413          	addi	s0,sp,16
    if(!head)head = tcb;
    800022d0:	00853783          	ld	a5,8(a0)
    800022d4:	00078e63          	beqz	a5,800022f0 <_ZN11MySemaphore14put_in_blockedEP3TCB+0x2c>
    else tail->set_next_blocked(tcb);
    800022d8:	01053783          	ld	a5,16(a0)
    800022dc:	04b7b023          	sd	a1,64(a5)
    tail = tcb;
    800022e0:	00b53823          	sd	a1,16(a0)
}
    800022e4:	00813403          	ld	s0,8(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret
    if(!head)head = tcb;
    800022f0:	00b53423          	sd	a1,8(a0)
    800022f4:	fedff06f          	j	800022e0 <_ZN11MySemaphore14put_in_blockedEP3TCB+0x1c>

00000000800022f8 <_ZN11MySemaphore5blockEv>:

void MySemaphore::block() {
    800022f8:	ff010113          	addi	sp,sp,-16
    800022fc:	00113423          	sd	ra,8(sp)
    80002300:	00813023          	sd	s0,0(sp)
    80002304:	01010413          	addi	s0,sp,16
    TCB* old = TCB::running;
    put_in_blocked(old);
    80002308:	0000b797          	auipc	a5,0xb
    8000230c:	b687b783          	ld	a5,-1176(a5) # 8000ce70 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002310:	0007b583          	ld	a1,0(a5)
    80002314:	00000097          	auipc	ra,0x0
    80002318:	fb0080e7          	jalr	-80(ra) # 800022c4 <_ZN11MySemaphore14put_in_blockedEP3TCB>
    TCB::yield();
    8000231c:	00003097          	auipc	ra,0x3
    80002320:	dbc080e7          	jalr	-580(ra) # 800050d8 <_ZN3TCB5yieldEv>
}
    80002324:	00813083          	ld	ra,8(sp)
    80002328:	00013403          	ld	s0,0(sp)
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <_ZN11MySemaphore8sem_waitEPS_>:
int MySemaphore::sem_wait(MySemaphore *id) {
    80002334:	fe010113          	addi	sp,sp,-32
    80002338:	00113c23          	sd	ra,24(sp)
    8000233c:	00813823          	sd	s0,16(sp)
    80002340:	00913423          	sd	s1,8(sp)
    80002344:	02010413          	addi	s0,sp,32
    80002348:	00050493          	mv	s1,a0
    int get_val()const{ return val; }
    8000234c:	00052783          	lw	a5,0(a0)
    id->set_val(id->get_val() - 1);
    80002350:	fff7879b          	addiw	a5,a5,-1
    void set_val(int v){ val = v; }
    80002354:	00f52023          	sw	a5,0(a0)
    if( id->get_val() < 0)id->block();
    80002358:	02079713          	slli	a4,a5,0x20
    8000235c:	02074263          	bltz	a4,80002380 <_ZN11MySemaphore8sem_waitEPS_+0x4c>
    bool get_indicator()const{ return indicator; }
    80002360:	0044c783          	lbu	a5,4(s1)
    if(!id->get_indicator())return 0;
    80002364:	02079463          	bnez	a5,8000238c <_ZN11MySemaphore8sem_waitEPS_+0x58>
    80002368:	00000513          	li	a0,0
}
    8000236c:	01813083          	ld	ra,24(sp)
    80002370:	01013403          	ld	s0,16(sp)
    80002374:	00813483          	ld	s1,8(sp)
    80002378:	02010113          	addi	sp,sp,32
    8000237c:	00008067          	ret
    if( id->get_val() < 0)id->block();
    80002380:	00000097          	auipc	ra,0x0
    80002384:	f78080e7          	jalr	-136(ra) # 800022f8 <_ZN11MySemaphore5blockEv>
    80002388:	fd9ff06f          	j	80002360 <_ZN11MySemaphore8sem_waitEPS_+0x2c>
    else return -1;
    8000238c:	fff00513          	li	a0,-1
    80002390:	fddff06f          	j	8000236c <_ZN11MySemaphore8sem_waitEPS_+0x38>

0000000080002394 <_ZN11MySemaphore7unblockEv>:

void MySemaphore::unblock() {
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00113423          	sd	ra,8(sp)
    8000239c:	00813023          	sd	s0,0(sp)
    800023a0:	01010413          	addi	s0,sp,16
    TCB* tmp = get_from_blocked();
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	e3c080e7          	jalr	-452(ra) # 800021e0 <_ZN11MySemaphore16get_from_blockedEv>
    if(tmp)Scheduler::getInstance().put(tmp);
    800023ac:	04050463          	beqz	a0,800023f4 <_ZN11MySemaphore7unblockEv+0x60>
    800023b0:	00050593          	mv	a1,a0
    800023b4:	0000b797          	auipc	a5,0xb
    800023b8:	b2c7c783          	lbu	a5,-1236(a5) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    800023bc:	02079463          	bnez	a5,800023e4 <_ZN11MySemaphore7unblockEv+0x50>
        head = nullptr;
    800023c0:	0000b797          	auipc	a5,0xb
    800023c4:	a907b783          	ld	a5,-1392(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x40>
    800023c8:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    800023cc:	0000b797          	auipc	a5,0xb
    800023d0:	a5c7b783          	ld	a5,-1444(a5) # 8000ce28 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023d4:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    800023d8:	00100793          	li	a5,1
    800023dc:	0000b717          	auipc	a4,0xb
    800023e0:	b0f70223          	sb	a5,-1276(a4) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    800023e4:	0000b517          	auipc	a0,0xb
    800023e8:	b0450513          	addi	a0,a0,-1276 # 8000cee8 <_ZZN9Scheduler11getInstanceEvE8instance>
    800023ec:	00003097          	auipc	ra,0x3
    800023f0:	e50080e7          	jalr	-432(ra) # 8000523c <_ZN9Scheduler3putEP3TCB>
}
    800023f4:	00813083          	ld	ra,8(sp)
    800023f8:	00013403          	ld	s0,0(sp)
    800023fc:	01010113          	addi	sp,sp,16
    80002400:	00008067          	ret

0000000080002404 <_ZN11MySemaphore10sem_signalEPS_>:
int MySemaphore::sem_signal(MySemaphore *id) {
    80002404:	fe010113          	addi	sp,sp,-32
    80002408:	00113c23          	sd	ra,24(sp)
    8000240c:	00813823          	sd	s0,16(sp)
    80002410:	00913423          	sd	s1,8(sp)
    80002414:	02010413          	addi	s0,sp,32
    80002418:	00050493          	mv	s1,a0
    int get_val()const{ return val; }
    8000241c:	00052783          	lw	a5,0(a0)
    id->set_val(id->get_val() + 1);
    80002420:	0017879b          	addiw	a5,a5,1
    80002424:	0007871b          	sext.w	a4,a5
    void set_val(int v){ val = v; }
    80002428:	00f52023          	sw	a5,0(a0)
    if( id->get_val() <= 0)id->unblock();
    8000242c:	02e05263          	blez	a4,80002450 <_ZN11MySemaphore10sem_signalEPS_+0x4c>
    bool get_indicator()const{ return indicator; }
    80002430:	0044c783          	lbu	a5,4(s1)
    if(!id->get_indicator())return 0;
    80002434:	02079463          	bnez	a5,8000245c <_ZN11MySemaphore10sem_signalEPS_+0x58>
    80002438:	00000513          	li	a0,0
}
    8000243c:	01813083          	ld	ra,24(sp)
    80002440:	01013403          	ld	s0,16(sp)
    80002444:	00813483          	ld	s1,8(sp)
    80002448:	02010113          	addi	sp,sp,32
    8000244c:	00008067          	ret
    if( id->get_val() <= 0)id->unblock();
    80002450:	00000097          	auipc	ra,0x0
    80002454:	f44080e7          	jalr	-188(ra) # 80002394 <_ZN11MySemaphore7unblockEv>
    80002458:	fd9ff06f          	j	80002430 <_ZN11MySemaphore10sem_signalEPS_+0x2c>
    else return -1;
    8000245c:	fff00513          	li	a0,-1
    80002460:	fddff06f          	j	8000243c <_ZN11MySemaphore10sem_signalEPS_+0x38>

0000000080002464 <_ZN14periodicThread3putEP3TCB>:
#include "../h/TCB.hpp"

TCB* periodicThread::head = nullptr;
TCB* periodicThread::tail = nullptr;

void periodicThread::put(TCB *thread) {
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00813423          	sd	s0,8(sp)
    8000246c:	01010413          	addi	s0,sp,16
    if(!head)head = thread;
    80002470:	0000b797          	auipc	a5,0xb
    80002474:	a807b783          	ld	a5,-1408(a5) # 8000cef0 <_ZN14periodicThread4headE>
    80002478:	02078263          	beqz	a5,8000249c <_ZN14periodicThread3putEP3TCB+0x38>
    else tail->set_next_period(thread); // tail->next_period = thread;
    8000247c:	0000b797          	auipc	a5,0xb
    80002480:	a7c7b783          	ld	a5,-1412(a5) # 8000cef8 <_ZN14periodicThread4tailE>
    void set_periodic(bool b){
        periodic = b;
        periodicThread::getInstance().put(this);
    }

    void set_next_period(TCB* tcb){ next_period = tcb; }
    80002484:	06b7b423          	sd	a1,104(a5)
    tail = thread;
    80002488:	0000b797          	auipc	a5,0xb
    8000248c:	a6b7b823          	sd	a1,-1424(a5) # 8000cef8 <_ZN14periodicThread4tailE>
}
    80002490:	00813403          	ld	s0,8(sp)
    80002494:	01010113          	addi	sp,sp,16
    80002498:	00008067          	ret
    if(!head)head = thread;
    8000249c:	0000b797          	auipc	a5,0xb
    800024a0:	a4b7ba23          	sd	a1,-1452(a5) # 8000cef0 <_ZN14periodicThread4headE>
    800024a4:	fe5ff06f          	j	80002488 <_ZN14periodicThread3putEP3TCB+0x24>

00000000800024a8 <_ZN14periodicThread3getEv>:

TCB *periodicThread::get() {
    800024a8:	ff010113          	addi	sp,sp,-16
    800024ac:	00813423          	sd	s0,8(sp)
    800024b0:	01010413          	addi	s0,sp,16
    if(!head)return nullptr;
    800024b4:	0000b517          	auipc	a0,0xb
    800024b8:	a3c53503          	ld	a0,-1476(a0) # 8000cef0 <_ZN14periodicThread4headE>
    800024bc:	00050c63          	beqz	a0,800024d4 <_ZN14periodicThread3getEv+0x2c>

    TCB* get_next_period()const{return next_period;}
    800024c0:	06853783          	ld	a5,104(a0)
    TCB* tmp = head;
    head = head->get_next_period(); // head = head->next_period
    800024c4:	0000b717          	auipc	a4,0xb
    800024c8:	a2f73623          	sd	a5,-1492(a4) # 8000cef0 <_ZN14periodicThread4headE>
    void set_next_period(TCB* tcb){ next_period = tcb; }
    800024cc:	06053423          	sd	zero,104(a0)
    tmp->set_next_period(nullptr);
    if(!head)tail = nullptr;
    800024d0:	00078863          	beqz	a5,800024e0 <_ZN14periodicThread3getEv+0x38>
    return tmp;
}
    800024d4:	00813403          	ld	s0,8(sp)
    800024d8:	01010113          	addi	sp,sp,16
    800024dc:	00008067          	ret
    if(!head)tail = nullptr;
    800024e0:	0000b797          	auipc	a5,0xb
    800024e4:	a007bc23          	sd	zero,-1512(a5) # 8000cef8 <_ZN14periodicThread4tailE>
    800024e8:	fedff06f          	j	800024d4 <_ZN14periodicThread3getEv+0x2c>

00000000800024ec <_Z10size_startPKc>:
//
#include "../h/String.h"
#include "../test/printing.hpp"

// does name start with size-, 1 if true, 0 if not
bool size_start(const char *name){
    800024ec:	ff010113          	addi	sp,sp,-16
    800024f0:	00813423          	sd	s0,8(sp)
    800024f4:	01010413          	addi	s0,sp,16
    // Check if the input string starts with "size-"
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    800024f8:	00054703          	lbu	a4,0(a0)
    800024fc:	07300793          	li	a5,115
    80002500:	00f70a63          	beq	a4,a5,80002514 <_Z10size_startPKc+0x28>
        return true;
    }
    return false;
    80002504:	00000513          	li	a0,0
}
    80002508:	00813403          	ld	s0,8(sp)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	00008067          	ret
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    80002514:	00154703          	lbu	a4,1(a0)
    80002518:	06900793          	li	a5,105
    8000251c:	00f70663          	beq	a4,a5,80002528 <_Z10size_startPKc+0x3c>
    return false;
    80002520:	00000513          	li	a0,0
    80002524:	fe5ff06f          	j	80002508 <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    80002528:	00254703          	lbu	a4,2(a0)
    8000252c:	07a00793          	li	a5,122
    80002530:	00f70663          	beq	a4,a5,8000253c <_Z10size_startPKc+0x50>
    return false;
    80002534:	00000513          	li	a0,0
    80002538:	fd1ff06f          	j	80002508 <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    8000253c:	00354703          	lbu	a4,3(a0)
    80002540:	06500793          	li	a5,101
    80002544:	00f70663          	beq	a4,a5,80002550 <_Z10size_startPKc+0x64>
    return false;
    80002548:	00000513          	li	a0,0
    8000254c:	fbdff06f          	j	80002508 <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    80002550:	00454703          	lbu	a4,4(a0)
    80002554:	02d00793          	li	a5,45
    80002558:	00f70663          	beq	a4,a5,80002564 <_Z10size_startPKc+0x78>
    return false;
    8000255c:	00000513          	li	a0,0
    80002560:	fa9ff06f          	j	80002508 <_Z10size_startPKc+0x1c>
        return true;
    80002564:	00100513          	li	a0,1
    80002568:	fa1ff06f          	j	80002508 <_Z10size_startPKc+0x1c>

000000008000256c <_Z14get_int_lengthi>:

int get_int_length(int number) {
    8000256c:	ff010113          	addi	sp,sp,-16
    80002570:	00813423          	sd	s0,8(sp)
    80002574:	01010413          	addi	s0,sp,16
    80002578:	00050793          	mv	a5,a0
    int length = 0;
    8000257c:	00000513          	li	a0,0
    while (number != 0) {
    80002580:	00078a63          	beqz	a5,80002594 <_Z14get_int_lengthi+0x28>
        number /= 10;
    80002584:	00a00713          	li	a4,10
    80002588:	02e7c7bb          	divw	a5,a5,a4
        length++;
    8000258c:	0015051b          	addiw	a0,a0,1
    while (number != 0) {
    80002590:	ff1ff06f          	j	80002580 <_Z14get_int_lengthi+0x14>
    }
    return length;
}
    80002594:	00813403          	ld	s0,8(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_Z13int_to_stringiPci>:

void int_to_string(int number, char* buffer, int bufferSize) {
    800025a0:	fd010113          	addi	sp,sp,-48
    800025a4:	02113423          	sd	ra,40(sp)
    800025a8:	02813023          	sd	s0,32(sp)
    800025ac:	00913c23          	sd	s1,24(sp)
    800025b0:	01213823          	sd	s2,16(sp)
    800025b4:	01313423          	sd	s3,8(sp)
    800025b8:	03010413          	addi	s0,sp,48
    800025bc:	00050493          	mv	s1,a0
    800025c0:	00058913          	mv	s2,a1
    800025c4:	00060993          	mv	s3,a2
    int length = get_int_length(number);
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	fa4080e7          	jalr	-92(ra) # 8000256c <_Z14get_int_lengthi>

    if (length >= bufferSize) {
    800025d0:	03355a63          	bge	a0,s3,80002604 <_Z13int_to_stringiPci+0x64>
        // Handle buffer overflow
        return;
    }

    for (int i = length - 1; i >= 0; i--) {
    800025d4:	fff5079b          	addiw	a5,a0,-1
    800025d8:	0207c263          	bltz	a5,800025fc <_Z13int_to_stringiPci+0x5c>
        buffer[i] = '0' + (number % 10);
    800025dc:	00a00693          	li	a3,10
    800025e0:	02d4e73b          	remw	a4,s1,a3
    800025e4:	00f90633          	add	a2,s2,a5
    800025e8:	0307071b          	addiw	a4,a4,48
    800025ec:	00e60023          	sb	a4,0(a2)
        number /= 10;
    800025f0:	02d4c4bb          	divw	s1,s1,a3
    for (int i = length - 1; i >= 0; i--) {
    800025f4:	fff7879b          	addiw	a5,a5,-1
    800025f8:	fe1ff06f          	j	800025d8 <_Z13int_to_stringiPci+0x38>
    }
    buffer[length] = '\0';
    800025fc:	00a90933          	add	s2,s2,a0
    80002600:	00090023          	sb	zero,0(s2)
}
    80002604:	02813083          	ld	ra,40(sp)
    80002608:	02013403          	ld	s0,32(sp)
    8000260c:	01813483          	ld	s1,24(sp)
    80002610:	01013903          	ld	s2,16(sp)
    80002614:	00813983          	ld	s3,8(sp)
    80002618:	03010113          	addi	sp,sp,48
    8000261c:	00008067          	ret

0000000080002620 <_Z27concatenate_int_to_char_ptri>:

char* concatenate_int_to_char_ptr(int number) {
    80002620:	fe010113          	addi	sp,sp,-32
    80002624:	00113c23          	sd	ra,24(sp)
    80002628:	00813823          	sd	s0,16(sp)
    8000262c:	00913423          	sd	s1,8(sp)
    80002630:	02010413          	addi	s0,sp,32
    80002634:	00050493          	mv	s1,a0
    char* baseString = (char*)"size-xxxxxx";
    int length = get_int_length(number);
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	f34080e7          	jalr	-204(ra) # 8000256c <_Z14get_int_lengthi>
    for(int i = 5 + length; i >= 5; i--){
    80002640:	0055051b          	addiw	a0,a0,5
    80002644:	00050793          	mv	a5,a0
    80002648:	0180006f          	j	80002660 <_Z27concatenate_int_to_char_ptri+0x40>
        if(i == 5 + length){
            baseString[i] = '\0';
    8000264c:	00008717          	auipc	a4,0x8
    80002650:	9d470713          	addi	a4,a4,-1580 # 8000a020 <CONSOLE_STATUS+0x10>
    80002654:	00e78733          	add	a4,a5,a4
    80002658:	00070023          	sb	zero,0(a4)
    for(int i = 5 + length; i >= 5; i--){
    8000265c:	fff7879b          	addiw	a5,a5,-1
    80002660:	00400713          	li	a4,4
    80002664:	02f75863          	bge	a4,a5,80002694 <_Z27concatenate_int_to_char_ptri+0x74>
        if(i == 5 + length){
    80002668:	fea782e3          	beq	a5,a0,8000264c <_Z27concatenate_int_to_char_ptri+0x2c>
        }else{
            int mod = number % 10;
    8000266c:	00a00693          	li	a3,10
    80002670:	02d4e73b          	remw	a4,s1,a3
            number /= 10;
    80002674:	02d4c4bb          	divw	s1,s1,a3
            char num_char = '0' + mod;
    80002678:	0ff77713          	andi	a4,a4,255
    8000267c:	0307071b          	addiw	a4,a4,48
            baseString[i] = num_char;
    80002680:	00008697          	auipc	a3,0x8
    80002684:	9a068693          	addi	a3,a3,-1632 # 8000a020 <CONSOLE_STATUS+0x10>
    80002688:	00d786b3          	add	a3,a5,a3
    8000268c:	00e68023          	sb	a4,0(a3)
    80002690:	fcdff06f          	j	8000265c <_Z27concatenate_int_to_char_ptri+0x3c>
        }
    }
    return baseString;

}
    80002694:	00008517          	auipc	a0,0x8
    80002698:	98c50513          	addi	a0,a0,-1652 # 8000a020 <CONSOLE_STATUS+0x10>
    8000269c:	01813083          	ld	ra,24(sp)
    800026a0:	01013403          	ld	s0,16(sp)
    800026a4:	00813483          	ld	s1,8(sp)
    800026a8:	02010113          	addi	sp,sp,32
    800026ac:	00008067          	ret

00000000800026b0 <_Z14string_comparePKcS0_>:

bool string_compare(const char* str1, const char* str2) {
    800026b0:	ff010113          	addi	sp,sp,-16
    800026b4:	00813423          	sd	s0,8(sp)
    800026b8:	01010413          	addi	s0,sp,16
    800026bc:	00c0006f          	j	800026c8 <_Z14string_comparePKcS0_+0x18>
    while (*str1 != '\0' && *str2 != '\0') {
        if (*str1 != *str2) {
            return false;
        }
        str1++;
    800026c0:	00150513          	addi	a0,a0,1
        str2++;
    800026c4:	00158593          	addi	a1,a1,1
    while (*str1 != '\0' && *str2 != '\0') {
    800026c8:	00054783          	lbu	a5,0(a0)
    800026cc:	00078c63          	beqz	a5,800026e4 <_Z14string_comparePKcS0_+0x34>
    800026d0:	0005c703          	lbu	a4,0(a1)
    800026d4:	00070863          	beqz	a4,800026e4 <_Z14string_comparePKcS0_+0x34>
        if (*str1 != *str2) {
    800026d8:	fee784e3          	beq	a5,a4,800026c0 <_Z14string_comparePKcS0_+0x10>
            return false;
    800026dc:	00000513          	li	a0,0
    800026e0:	01c0006f          	j	800026fc <_Z14string_comparePKcS0_+0x4c>
    }

    // Check if both strings have reached the end simultaneously
    return (*str1 == '\0' && *str2 == '\0');
    800026e4:	00079a63          	bnez	a5,800026f8 <_Z14string_comparePKcS0_+0x48>
    800026e8:	0005c783          	lbu	a5,0(a1)
    800026ec:	00078e63          	beqz	a5,80002708 <_Z14string_comparePKcS0_+0x58>
    800026f0:	00000513          	li	a0,0
    800026f4:	0080006f          	j	800026fc <_Z14string_comparePKcS0_+0x4c>
    800026f8:	00000513          	li	a0,0
    800026fc:	00813403          	ld	s0,8(sp)
    80002700:	01010113          	addi	sp,sp,16
    80002704:	00008067          	ret
    return (*str1 == '\0' && *str2 == '\0');
    80002708:	00100513          	li	a0,1
    8000270c:	ff1ff06f          	j	800026fc <_Z14string_comparePKcS0_+0x4c>

0000000080002710 <_Z13idle_functionPv>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../test/userMain.hpp"
#include "../h/SlabI.h"

void idle_function(void* arg){
    80002710:	ff010113          	addi	sp,sp,-16
    80002714:	00113423          	sd	ra,8(sp)
    80002718:	00813023          	sd	s0,0(sp)
    8000271c:	01010413          	addi	s0,sp,16
    while(1){
        thread_dispatch();
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	c64080e7          	jalr	-924(ra) # 80001384 <thread_dispatch>
    while(1){
    80002728:	ff9ff06f          	j	80002720 <_Z13idle_functionPv+0x10>

000000008000272c <_Z13putc_functionPv>:
    }
}

void putc_function(void* arg){
    8000272c:	fe010113          	addi	sp,sp,-32
    80002730:	00113c23          	sd	ra,24(sp)
    80002734:	00813823          	sd	s0,16(sp)
    80002738:	00913423          	sd	s1,8(sp)
    8000273c:	02010413          	addi	s0,sp,32
    switch_to_priviledged();
    80002740:	fffff097          	auipc	ra,0xfffff
    80002744:	fdc080e7          	jalr	-36(ra) # 8000171c <switch_to_priviledged>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002748:	00200793          	li	a5,2
    8000274c:	1007b073          	csrc	sstatus,a5
}
    80002750:	0400006f          	j	80002790 <_Z13putc_functionPv+0x64>

class Console{
public:

    static Console& getInstance(){
        static Console instance;
    80002754:	0000a517          	auipc	a0,0xa
    80002758:	7bc50513          	addi	a0,a0,1980 # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	320080e7          	jalr	800(ra) # 80002a7c <_ZN7ConsoleC1Ev>
    80002764:	00100793          	li	a5,1
    80002768:	0000a717          	auipc	a4,0xa
    8000276c:	7af70023          	sb	a5,1952(a4) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(1){
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
              /*&& Console::getInstance().get_output_size()*/) {
            *((char*)CONSOLE_TX_DATA) = Console::getInstance().get_from_output();
    80002770:	0000a797          	auipc	a5,0xa
    80002774:	6e87b783          	ld	a5,1768(a5) # 8000ce58 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002778:	0007b483          	ld	s1,0(a5)
    8000277c:	0000a517          	auipc	a0,0xa
    80002780:	79450513          	addi	a0,a0,1940 # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    80002784:	00000097          	auipc	ra,0x0
    80002788:	554080e7          	jalr	1364(ra) # 80002cd8 <_ZN7Console15get_from_outputEv>
    8000278c:	00a48023          	sb	a0,0(s1)
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
    80002790:	0000a797          	auipc	a5,0xa
    80002794:	6907b783          	ld	a5,1680(a5) # 8000ce20 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002798:	0007b783          	ld	a5,0(a5)
    8000279c:	0007c783          	lbu	a5,0(a5)
    800027a0:	0207f793          	andi	a5,a5,32
    800027a4:	00078a63          	beqz	a5,800027b8 <_Z13putc_functionPv+0x8c>
    800027a8:	0000a797          	auipc	a5,0xa
    800027ac:	7607c783          	lbu	a5,1888(a5) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    800027b0:	fc0790e3          	bnez	a5,80002770 <_Z13putc_functionPv+0x44>
    800027b4:	fa1ff06f          	j	80002754 <_Z13putc_functionPv+0x28>
        }
        thread_dispatch();
    800027b8:	fffff097          	auipc	ra,0xfffff
    800027bc:	bcc080e7          	jalr	-1076(ra) # 80001384 <thread_dispatch>
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
    800027c0:	fd1ff06f          	j	80002790 <_Z13putc_functionPv+0x64>

00000000800027c4 <_Z17user_main_wrapperPv>:
    }
}

static bool is_user_main_finished = false;
void user_main_wrapper(void* arg){
    800027c4:	ff010113          	addi	sp,sp,-16
    800027c8:	00113423          	sd	ra,8(sp)
    800027cc:	00813023          	sd	s0,0(sp)
    800027d0:	01010413          	addi	s0,sp,16
    switch_to_user();
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	ef8080e7          	jalr	-264(ra) # 800016cc <switch_to_user>
    userMain();
    800027dc:	00005097          	auipc	ra,0x5
    800027e0:	ba4080e7          	jalr	-1116(ra) # 80007380 <_Z8userMainv>
    switch_to_priviledged();
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	f38080e7          	jalr	-200(ra) # 8000171c <switch_to_priviledged>
    is_user_main_finished = true;
    800027ec:	00100793          	li	a5,1
    800027f0:	0000a717          	auipc	a4,0xa
    800027f4:	70f70823          	sb	a5,1808(a4) # 8000cf00 <_ZL21is_user_main_finished>
}
    800027f8:	00813083          	ld	ra,8(sp)
    800027fc:	00013403          	ld	s0,0(sp)
    80002800:	01010113          	addi	sp,sp,16
    80002804:	00008067          	ret

0000000080002808 <_Z12memory_setupv>:

void memory_setup(){
    80002808:	ff010113          	addi	sp,sp,-16
    8000280c:	00113423          	sd	ra,8(sp)
    80002810:	00813023          	sd	s0,0(sp)
    80002814:	01010413          	addi	s0,sp,16
    void * space = (void*)HEAP_START_ADDR;
    80002818:	0000a797          	auipc	a5,0xa
    8000281c:	6187b783          	ld	a5,1560(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002820:	0007b503          	ld	a0,0(a5)
    int block_num = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 / BLOCK_SIZE;
    80002824:	0000a797          	auipc	a5,0xa
    80002828:	6547b783          	ld	a5,1620(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000282c:	0007b583          	ld	a1,0(a5)
    80002830:	40a585b3          	sub	a1,a1,a0
    80002834:	00f5d593          	srli	a1,a1,0xf
    kmem_init(space, block_num);
    80002838:	0005859b          	sext.w	a1,a1
    8000283c:	00003097          	auipc	ra,0x3
    80002840:	e3c080e7          	jalr	-452(ra) # 80005678 <_Z9kmem_initPvi>
//    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_start());
//    printString("\n");
//    printString("Memory allocator heap end: ");
//    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_end());
//    printString("\n\n");
}
    80002844:	00813083          	ld	ra,8(sp)
    80002848:	00013403          	ld	s0,0(sp)
    8000284c:	01010113          	addi	sp,sp,16
    80002850:	00008067          	ret

0000000080002854 <main>:
#include "../test/userMain.hpp"
#include "../h/fun.hpp"



int main(){
    80002854:	fc010113          	addi	sp,sp,-64
    80002858:	02113c23          	sd	ra,56(sp)
    8000285c:	02813823          	sd	s0,48(sp)
    80002860:	02913423          	sd	s1,40(sp)
    80002864:	04010413          	addi	s0,sp,64

    // ###################################################################################################
    // upis u stvec
    uint64 address = reinterpret_cast<uint64>(&Riscv::supervisorTrap);
    80002868:	0000a797          	auipc	a5,0xa
    8000286c:	5d87b783          	ld	a5,1496(a5) # 8000ce40 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002870:	10579073          	csrw	stvec,a5
    Riscv::w_stvec(address);

    // kreiranje main niti
    thread_t mainThread = nullptr;
    80002874:	fc043c23          	sd	zero,-40(s0)
    thread_create(&mainThread, nullptr, nullptr);
    80002878:	00000613          	li	a2,0
    8000287c:	00000593          	li	a1,0
    80002880:	fd840513          	addi	a0,s0,-40
    80002884:	fffff097          	auipc	ra,0xfffff
    80002888:	a6c080e7          	jalr	-1428(ra) # 800012f0 <thread_create>
    TCB::running = (TCB*)mainThread;
    8000288c:	0000a797          	auipc	a5,0xa
    80002890:	5e47b783          	ld	a5,1508(a5) # 8000ce70 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002894:	fd843703          	ld	a4,-40(s0)
    80002898:	00e7b023          	sd	a4,0(a5)

    // kreiranje idle niti
    thread_create((thread_t*)&TCB::idle, &idle_function, nullptr);
    8000289c:	00000613          	li	a2,0
    800028a0:	00000597          	auipc	a1,0x0
    800028a4:	e7058593          	addi	a1,a1,-400 # 80002710 <_Z13idle_functionPv>
    800028a8:	0000a517          	auipc	a0,0xa
    800028ac:	5a053503          	ld	a0,1440(a0) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x38>
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	a40080e7          	jalr	-1472(ra) # 800012f0 <thread_create>

    // kreiranje userMain niti
//    thread_t userMainThread = nullptr;
//    thread_create(&userMainThread, &userMain, nullptr);

    thread_t userMainThread = nullptr;
    800028b8:	fc043823          	sd	zero,-48(s0)
    thread_create(&userMainThread, &user_main_wrapper, nullptr);
    800028bc:	00000613          	li	a2,0
    800028c0:	00000597          	auipc	a1,0x0
    800028c4:	f0458593          	addi	a1,a1,-252 # 800027c4 <_Z17user_main_wrapperPv>
    800028c8:	fd040513          	addi	a0,s0,-48
    800028cc:	fffff097          	auipc	ra,0xfffff
    800028d0:	a24080e7          	jalr	-1500(ra) # 800012f0 <thread_create>

    // kreiranje niti za ispis
    thread_t consoleWriter = nullptr;
    800028d4:	fc043423          	sd	zero,-56(s0)
    thread_create(&consoleWriter, &putc_function, nullptr);
    800028d8:	00000613          	li	a2,0
    800028dc:	00000597          	auipc	a1,0x0
    800028e0:	e5058593          	addi	a1,a1,-432 # 8000272c <_Z13putc_functionPv>
    800028e4:	fc840513          	addi	a0,s0,-56
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	a08080e7          	jalr	-1528(ra) # 800012f0 <thread_create>
    800028f0:	0000a797          	auipc	a5,0xa
    800028f4:	6187c783          	lbu	a5,1560(a5) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    800028f8:	00078c63          	beqz	a5,80002910 <main+0xbc>
    Console::getInstance();
    memory_setup();
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	f0c080e7          	jalr	-244(ra) # 80002808 <_Z12memory_setupv>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002904:	00200793          	li	a5,2
    80002908:	1007a073          	csrs	sstatus,a5
}
    8000290c:	05c0006f          	j	80002968 <main+0x114>
    80002910:	0000a517          	auipc	a0,0xa
    80002914:	60050513          	addi	a0,a0,1536 # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	164080e7          	jalr	356(ra) # 80002a7c <_ZN7ConsoleC1Ev>
    80002920:	00100793          	li	a5,1
    80002924:	0000a717          	auipc	a4,0xa
    80002928:	5ef70223          	sb	a5,1508(a4) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    8000292c:	fd1ff06f          	j	800028fc <main+0xa8>
    80002930:	0000a517          	auipc	a0,0xa
    80002934:	5e050513          	addi	a0,a0,1504 # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	144080e7          	jalr	324(ra) # 80002a7c <_ZN7ConsoleC1Ev>
    80002940:	00100793          	li	a5,1
    80002944:	0000a717          	auipc	a4,0xa
    80002948:	5cf70223          	sb	a5,1476(a4) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>

    void put_in_input(char c);
    char get_from_input();
    void put_in_output(char c);
    char get_from_output();
    int get_output_size(){ return output_buffer->getCnt(); }
    8000294c:	0000a517          	auipc	a0,0xa
    80002950:	5cc53503          	ld	a0,1484(a0) # 8000cf18 <_ZZN7Console11getInstanceEvE8instance+0x8>
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	1f8080e7          	jalr	504(ra) # 80001b4c <_ZN8MyBuffer6getCntEv>
    // ako sam obrisao userMain pristupam nepostojecoj strukturi
//    while(!((TCB*)userMainThread)->is_finished()){
//        thread_dispatch();
//    }

    while(!is_user_main_finished || Console::getInstance().get_output_size()){
    8000295c:	02050463          	beqz	a0,80002984 <main+0x130>
        thread_dispatch();
    80002960:	fffff097          	auipc	ra,0xfffff
    80002964:	a24080e7          	jalr	-1500(ra) # 80001384 <thread_dispatch>
    while(!is_user_main_finished || Console::getInstance().get_output_size()){
    80002968:	0000a797          	auipc	a5,0xa
    8000296c:	5987c783          	lbu	a5,1432(a5) # 8000cf00 <_ZL21is_user_main_finished>
    80002970:	fe0788e3          	beqz	a5,80002960 <main+0x10c>
        static Console instance;
    80002974:	0000a797          	auipc	a5,0xa
    80002978:	5947c783          	lbu	a5,1428(a5) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    8000297c:	fc0798e3          	bnez	a5,8000294c <main+0xf8>
    80002980:	fb1ff06f          	j	80002930 <main+0xdc>
    80002984:	0000a797          	auipc	a5,0xa
    80002988:	5847c783          	lbu	a5,1412(a5) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    8000298c:	04078a63          	beqz	a5,800029e0 <main+0x18c>
    int get_input_size(){ return input_buffer->getCnt(); }

    MyBuffer* get_input_buff(){return input_buffer;}
    80002990:	0000a497          	auipc	s1,0xa
    80002994:	5804b483          	ld	s1,1408(s1) # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    }


    delete Console::getInstance().get_input_buff();
    80002998:	02048863          	beqz	s1,800029c8 <main+0x174>
    8000299c:	00048513          	mv	a0,s1
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	f98080e7          	jalr	-104(ra) # 80001938 <_ZN8MyBufferD1Ev>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    800029a8:	0000a797          	auipc	a5,0xa
    800029ac:	5187c783          	lbu	a5,1304(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800029b0:	04078863          	beqz	a5,80002a00 <main+0x1ac>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    800029b4:	00048593          	mv	a1,s1
    800029b8:	0000a517          	auipc	a0,0xa
    800029bc:	51050513          	addi	a0,a0,1296 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800029c0:	00003097          	auipc	ra,0x3
    800029c4:	9b0080e7          	jalr	-1616(ra) # 80005370 <_ZN15MemoryAllocator11memory_freeEPv>
    return 0;
    800029c8:	00000513          	li	a0,0
    800029cc:	03813083          	ld	ra,56(sp)
    800029d0:	03013403          	ld	s0,48(sp)
    800029d4:	02813483          	ld	s1,40(sp)
    800029d8:	04010113          	addi	sp,sp,64
    800029dc:	00008067          	ret
        static Console instance;
    800029e0:	0000a517          	auipc	a0,0xa
    800029e4:	53050513          	addi	a0,a0,1328 # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	094080e7          	jalr	148(ra) # 80002a7c <_ZN7ConsoleC1Ev>
    800029f0:	00100793          	li	a5,1
    800029f4:	0000a717          	auipc	a4,0xa
    800029f8:	50f70a23          	sb	a5,1300(a4) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    800029fc:	f95ff06f          	j	80002990 <main+0x13c>

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    80002a00:	0000a617          	auipc	a2,0xa
    80002a04:	4c860613          	addi	a2,a2,1224 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80002a08:	0000a797          	auipc	a5,0xa
    80002a0c:	4707b783          	ld	a5,1136(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a10:	0007b703          	ld	a4,0(a5)
    80002a14:	0000a797          	auipc	a5,0xa
    80002a18:	41c7b783          	ld	a5,1052(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002a1c:	0007b783          	ld	a5,0(a5)
    80002a20:	40f706b3          	sub	a3,a4,a5
    80002a24:	0036d693          	srli	a3,a3,0x3
    80002a28:	00d787b3          	add	a5,a5,a3
    80002a2c:	00178793          	addi	a5,a5,1
    80002a30:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002a34:	fff70713          	addi	a4,a4,-1
    80002a38:	00e63823          	sd	a4,16(a2)

        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002a3c:	40f70733          	sub	a4,a4,a5
    80002a40:	00675713          	srli	a4,a4,0x6

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002a44:	03f7f693          	andi	a3,a5,63
    80002a48:	00068663          	beqz	a3,80002a54 <main+0x200>
    80002a4c:	04000613          	li	a2,64
    80002a50:	40d606b3          	sub	a3,a2,a3
    80002a54:	00d787b3          	add	a5,a5,a3
    80002a58:	0000a697          	auipc	a3,0xa
    80002a5c:	46f6b823          	sd	a5,1136(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    80002a60:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002a64:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002a68:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002a6c:	00100793          	li	a5,1
    80002a70:	0000a717          	auipc	a4,0xa
    80002a74:	44f70823          	sb	a5,1104(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002a78:	f3dff06f          	j	800029b4 <main+0x160>

0000000080002a7c <_ZN7ConsoleC1Ev>:

#include "../h/console.hpp"

Console::Console() {
    80002a7c:	fe010113          	addi	sp,sp,-32
    80002a80:	00113c23          	sd	ra,24(sp)
    80002a84:	00813823          	sd	s0,16(sp)
    80002a88:	00913423          	sd	s1,8(sp)
    80002a8c:	01213023          	sd	s2,0(sp)
    80002a90:	02010413          	addi	s0,sp,32
    80002a94:	00050493          	mv	s1,a0
    80002a98:	0000a797          	auipc	a5,0xa
    80002a9c:	4287c783          	lbu	a5,1064(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002aa0:	02078663          	beqz	a5,80002acc <_ZN7ConsoleC1Ev+0x50>
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    80002aa4:	00100593          	li	a1,1
    80002aa8:	0000a517          	auipc	a0,0xa
    80002aac:	42050513          	addi	a0,a0,1056 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002ab0:	00002097          	auipc	ra,0x2
    80002ab4:	7ec080e7          	jalr	2028(ra) # 8000529c <_ZN15MemoryAllocator12memory_allocEm>
    80002ab8:	00050913          	mv	s2,a0
    input_buffer = new MyBuffer(1024);
    80002abc:	40000593          	li	a1,1024
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	d4c080e7          	jalr	-692(ra) # 8000180c <_ZN8MyBufferC1Ei>
    80002ac8:	0800006f          	j	80002b48 <_ZN7ConsoleC1Ev+0xcc>
    MemoryAllocator(){
    80002acc:	0000a617          	auipc	a2,0xa
    80002ad0:	3fc60613          	addi	a2,a2,1020 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80002ad4:	0000a797          	auipc	a5,0xa
    80002ad8:	3a47b783          	ld	a5,932(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002adc:	0007b703          	ld	a4,0(a5)
    80002ae0:	0000a797          	auipc	a5,0xa
    80002ae4:	3507b783          	ld	a5,848(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ae8:	0007b783          	ld	a5,0(a5)
    80002aec:	40f706b3          	sub	a3,a4,a5
    80002af0:	0036d693          	srli	a3,a3,0x3
    80002af4:	00d787b3          	add	a5,a5,a3
    80002af8:	00178793          	addi	a5,a5,1
    80002afc:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002b00:	fff70713          	addi	a4,a4,-1
    80002b04:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002b08:	40f70733          	sub	a4,a4,a5
    80002b0c:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002b10:	03f7f693          	andi	a3,a5,63
    80002b14:	00068663          	beqz	a3,80002b20 <_ZN7ConsoleC1Ev+0xa4>
    80002b18:	04000613          	li	a2,64
    80002b1c:	40d606b3          	sub	a3,a2,a3
    80002b20:	00d787b3          	add	a5,a5,a3
    80002b24:	0000a697          	auipc	a3,0xa
    80002b28:	3af6b223          	sd	a5,932(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80002b2c:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002b30:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002b34:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002b38:	00100793          	li	a5,1
    80002b3c:	0000a717          	auipc	a4,0xa
    80002b40:	38f70223          	sb	a5,900(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002b44:	f61ff06f          	j	80002aa4 <_ZN7ConsoleC1Ev+0x28>
    80002b48:	0124b023          	sd	s2,0(s1)
    80002b4c:	0000a797          	auipc	a5,0xa
    80002b50:	3747c783          	lbu	a5,884(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002b54:	02078663          	beqz	a5,80002b80 <_ZN7ConsoleC1Ev+0x104>
    80002b58:	00100593          	li	a1,1
    80002b5c:	0000a517          	auipc	a0,0xa
    80002b60:	36c50513          	addi	a0,a0,876 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002b64:	00002097          	auipc	ra,0x2
    80002b68:	738080e7          	jalr	1848(ra) # 8000529c <_ZN15MemoryAllocator12memory_allocEm>
    80002b6c:	00050913          	mv	s2,a0
    output_buffer = new MyBuffer(1024);
    80002b70:	40000593          	li	a1,1024
    80002b74:	fffff097          	auipc	ra,0xfffff
    80002b78:	c98080e7          	jalr	-872(ra) # 8000180c <_ZN8MyBufferC1Ei>
    80002b7c:	0800006f          	j	80002bfc <_ZN7ConsoleC1Ev+0x180>
    MemoryAllocator(){
    80002b80:	0000a617          	auipc	a2,0xa
    80002b84:	34860613          	addi	a2,a2,840 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80002b88:	0000a797          	auipc	a5,0xa
    80002b8c:	2f07b783          	ld	a5,752(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b90:	0007b703          	ld	a4,0(a5)
    80002b94:	0000a797          	auipc	a5,0xa
    80002b98:	29c7b783          	ld	a5,668(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002b9c:	0007b783          	ld	a5,0(a5)
    80002ba0:	40f706b3          	sub	a3,a4,a5
    80002ba4:	0036d693          	srli	a3,a3,0x3
    80002ba8:	00d787b3          	add	a5,a5,a3
    80002bac:	00178793          	addi	a5,a5,1
    80002bb0:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002bb4:	fff70713          	addi	a4,a4,-1
    80002bb8:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002bbc:	40f70733          	sub	a4,a4,a5
    80002bc0:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002bc4:	03f7f693          	andi	a3,a5,63
    80002bc8:	00068663          	beqz	a3,80002bd4 <_ZN7ConsoleC1Ev+0x158>
    80002bcc:	04000613          	li	a2,64
    80002bd0:	40d606b3          	sub	a3,a2,a3
    80002bd4:	00d787b3          	add	a5,a5,a3
    80002bd8:	0000a697          	auipc	a3,0xa
    80002bdc:	2ef6b823          	sd	a5,752(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80002be0:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002be4:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002be8:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002bec:	00100793          	li	a5,1
    80002bf0:	0000a717          	auipc	a4,0xa
    80002bf4:	2cf70823          	sb	a5,720(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002bf8:	f61ff06f          	j	80002b58 <_ZN7ConsoleC1Ev+0xdc>
    80002bfc:	0124b423          	sd	s2,8(s1)
}
    80002c00:	01813083          	ld	ra,24(sp)
    80002c04:	01013403          	ld	s0,16(sp)
    80002c08:	00813483          	ld	s1,8(sp)
    80002c0c:	00013903          	ld	s2,0(sp)
    80002c10:	02010113          	addi	sp,sp,32
    80002c14:	00008067          	ret
    80002c18:	00050493          	mv	s1,a0
    input_buffer = new MyBuffer(1024);
    80002c1c:	00090513          	mv	a0,s2
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	0e8080e7          	jalr	232(ra) # 80002d08 <_ZN8MyBufferdlEPv>
    80002c28:	00048513          	mv	a0,s1
    80002c2c:	000cf097          	auipc	ra,0xcf
    80002c30:	a9c080e7          	jalr	-1380(ra) # 800d16c8 <_Unwind_Resume>
    80002c34:	00050493          	mv	s1,a0
    output_buffer = new MyBuffer(1024);
    80002c38:	00090513          	mv	a0,s2
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	0cc080e7          	jalr	204(ra) # 80002d08 <_ZN8MyBufferdlEPv>
    80002c44:	00048513          	mv	a0,s1
    80002c48:	000cf097          	auipc	ra,0xcf
    80002c4c:	a80080e7          	jalr	-1408(ra) # 800d16c8 <_Unwind_Resume>

0000000080002c50 <_ZN7Console12put_in_inputEc>:

void Console::put_in_input(char c){
    80002c50:	ff010113          	addi	sp,sp,-16
    80002c54:	00113423          	sd	ra,8(sp)
    80002c58:	00813023          	sd	s0,0(sp)
    80002c5c:	01010413          	addi	s0,sp,16
    input_buffer->put(c);
    80002c60:	00053503          	ld	a0,0(a0)
    80002c64:	fffff097          	auipc	ra,0xfffff
    80002c68:	dcc080e7          	jalr	-564(ra) # 80001a30 <_ZN8MyBuffer3putEi>
}
    80002c6c:	00813083          	ld	ra,8(sp)
    80002c70:	00013403          	ld	s0,0(sp)
    80002c74:	01010113          	addi	sp,sp,16
    80002c78:	00008067          	ret

0000000080002c7c <_ZN7Console14get_from_inputEv>:

char Console::get_from_input(){
    80002c7c:	ff010113          	addi	sp,sp,-16
    80002c80:	00113423          	sd	ra,8(sp)
    80002c84:	00813023          	sd	s0,0(sp)
    80002c88:	01010413          	addi	s0,sp,16
    return (char)input_buffer->get();
    80002c8c:	00053503          	ld	a0,0(a0)
    80002c90:	fffff097          	auipc	ra,0xfffff
    80002c94:	e30080e7          	jalr	-464(ra) # 80001ac0 <_ZN8MyBuffer3getEv>
}
    80002c98:	0ff57513          	andi	a0,a0,255
    80002c9c:	00813083          	ld	ra,8(sp)
    80002ca0:	00013403          	ld	s0,0(sp)
    80002ca4:	01010113          	addi	sp,sp,16
    80002ca8:	00008067          	ret

0000000080002cac <_ZN7Console13put_in_outputEc>:

void Console::put_in_output(char c){
    80002cac:	ff010113          	addi	sp,sp,-16
    80002cb0:	00113423          	sd	ra,8(sp)
    80002cb4:	00813023          	sd	s0,0(sp)
    80002cb8:	01010413          	addi	s0,sp,16
    output_buffer->put(c);
    80002cbc:	00853503          	ld	a0,8(a0)
    80002cc0:	fffff097          	auipc	ra,0xfffff
    80002cc4:	d70080e7          	jalr	-656(ra) # 80001a30 <_ZN8MyBuffer3putEi>
}
    80002cc8:	00813083          	ld	ra,8(sp)
    80002ccc:	00013403          	ld	s0,0(sp)
    80002cd0:	01010113          	addi	sp,sp,16
    80002cd4:	00008067          	ret

0000000080002cd8 <_ZN7Console15get_from_outputEv>:
char Console::get_from_output(){
    80002cd8:	ff010113          	addi	sp,sp,-16
    80002cdc:	00113423          	sd	ra,8(sp)
    80002ce0:	00813023          	sd	s0,0(sp)
    80002ce4:	01010413          	addi	s0,sp,16
    return (char)output_buffer->get();
    80002ce8:	00853503          	ld	a0,8(a0)
    80002cec:	fffff097          	auipc	ra,0xfffff
    80002cf0:	dd4080e7          	jalr	-556(ra) # 80001ac0 <_ZN8MyBuffer3getEv>
    80002cf4:	0ff57513          	andi	a0,a0,255
    80002cf8:	00813083          	ld	ra,8(sp)
    80002cfc:	00013403          	ld	s0,0(sp)
    80002d00:	01010113          	addi	sp,sp,16
    80002d04:	00008067          	ret

0000000080002d08 <_ZN8MyBufferdlEPv>:
    void operator delete(void* p)noexcept{
    80002d08:	ff010113          	addi	sp,sp,-16
    80002d0c:	00113423          	sd	ra,8(sp)
    80002d10:	00813023          	sd	s0,0(sp)
    80002d14:	01010413          	addi	s0,sp,16
    80002d18:	00050593          	mv	a1,a0
    80002d1c:	0000a797          	auipc	a5,0xa
    80002d20:	1a47c783          	lbu	a5,420(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002d24:	02078263          	beqz	a5,80002d48 <_ZN8MyBufferdlEPv+0x40>
        MemoryAllocator::getInstance().memory_free(p);
    80002d28:	0000a517          	auipc	a0,0xa
    80002d2c:	1a050513          	addi	a0,a0,416 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002d30:	00002097          	auipc	ra,0x2
    80002d34:	640080e7          	jalr	1600(ra) # 80005370 <_ZN15MemoryAllocator11memory_freeEPv>
    }
    80002d38:	00813083          	ld	ra,8(sp)
    80002d3c:	00013403          	ld	s0,0(sp)
    80002d40:	01010113          	addi	sp,sp,16
    80002d44:	00008067          	ret
    MemoryAllocator(){
    80002d48:	0000a617          	auipc	a2,0xa
    80002d4c:	18060613          	addi	a2,a2,384 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80002d50:	0000a797          	auipc	a5,0xa
    80002d54:	1287b783          	ld	a5,296(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d58:	0007b703          	ld	a4,0(a5)
    80002d5c:	0000a797          	auipc	a5,0xa
    80002d60:	0d47b783          	ld	a5,212(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d64:	0007b783          	ld	a5,0(a5)
    80002d68:	40f706b3          	sub	a3,a4,a5
    80002d6c:	0036d693          	srli	a3,a3,0x3
    80002d70:	00d787b3          	add	a5,a5,a3
    80002d74:	00178793          	addi	a5,a5,1
    80002d78:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002d7c:	fff70713          	addi	a4,a4,-1
    80002d80:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002d84:	40f70733          	sub	a4,a4,a5
    80002d88:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002d8c:	03f7f693          	andi	a3,a5,63
    80002d90:	00068663          	beqz	a3,80002d9c <_ZN8MyBufferdlEPv+0x94>
    80002d94:	04000613          	li	a2,64
    80002d98:	40d606b3          	sub	a3,a2,a3
    80002d9c:	00d787b3          	add	a5,a5,a3
    80002da0:	0000a697          	auipc	a3,0xa
    80002da4:	12f6b423          	sd	a5,296(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80002da8:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002dac:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002db0:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002db4:	00100793          	li	a5,1
    80002db8:	0000a717          	auipc	a4,0xa
    80002dbc:	10f70423          	sb	a5,264(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002dc0:	f69ff06f          	j	80002d28 <_ZN8MyBufferdlEPv+0x20>

0000000080002dc4 <_ZN12kmem_cache_s16create_free_slabEv>:
        this->growing = true;
        return nullptr;
    }
}

void kmem_cache_s::create_free_slab() {
    80002dc4:	fd010113          	addi	sp,sp,-48
    80002dc8:	02113423          	sd	ra,40(sp)
    80002dcc:	02813023          	sd	s0,32(sp)
    80002dd0:	00913c23          	sd	s1,24(sp)
    80002dd4:	01213823          	sd	s2,16(sp)
    80002dd8:	01313423          	sd	s3,8(sp)
    80002ddc:	01413023          	sd	s4,0(sp)
    80002de0:	03010413          	addi	s0,sp,48
    80002de4:	00050493          	mv	s1,a0

    void* buddyAlloc(size_t size);
    void buddyFree(size_t addr);

    static BuddySystem& getInstance(void *space = nullptr, int block_num = 0){
        static BuddySystem bs;
    80002de8:	0000a797          	auipc	a5,0xa
    80002dec:	1407c783          	lbu	a5,320(a5) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002df0:	06078863          	beqz	a5,80002e60 <_ZN12kmem_cache_s16create_free_slabEv+0x9c>
    Slab* tmp = (Slab*)(BuddySystem::getInstance().buddyAlloc(this->num * this->objsize + sizeof(Slab) + this->num * sizeof(bool)));
    80002df4:	0304b583          	ld	a1,48(s1)
    80002df8:	0384b783          	ld	a5,56(s1)
    80002dfc:	00158593          	addi	a1,a1,1
    80002e00:	02f585b3          	mul	a1,a1,a5
    80002e04:	01858593          	addi	a1,a1,24
    80002e08:	0000a517          	auipc	a0,0xa
    80002e0c:	12850513          	addi	a0,a0,296 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002e10:	fffff097          	auipc	ra,0xfffff
    80002e14:	f34080e7          	jalr	-204(ra) # 80001d44 <_ZN11BuddySystem10buddyAllocEm>
    80002e18:	00050a13          	mv	s4,a0
    tmp->num_active = 0;
    80002e1c:	00053023          	sd	zero,0(a0)
    tmp->next = nullptr;
    80002e20:	00053423          	sd	zero,8(a0)
    this->slabs_free = tmp;
    80002e24:	00a4b823          	sd	a0,16(s1)
    tmp->first_addr = ((size_t)tmp + sizeof(Slab) + this->size_of_arr * sizeof(size_t));
    80002e28:	0404b903          	ld	s2,64(s1)
    80002e2c:	00391913          	slli	s2,s2,0x3
    80002e30:	01250933          	add	s2,a0,s2
    80002e34:	01890913          	addi	s2,s2,24
    80002e38:	01253823          	sd	s2,16(a0)

    for(size_t  i = 0; i < this->size_of_arr; i++){
    80002e3c:	00000713          	li	a4,0
    80002e40:	0404b783          	ld	a5,64(s1)
    80002e44:	02f77e63          	bgeu	a4,a5,80002e80 <_ZN12kmem_cache_s16create_free_slabEv+0xbc>
        tmp->free_objects[i] = 0;
    80002e48:	00270793          	addi	a5,a4,2
    80002e4c:	00379793          	slli	a5,a5,0x3
    80002e50:	00fa07b3          	add	a5,s4,a5
    80002e54:	0007b423          	sd	zero,8(a5)
    for(size_t  i = 0; i < this->size_of_arr; i++){
    80002e58:	00170713          	addi	a4,a4,1
    80002e5c:	fe5ff06f          	j	80002e40 <_ZN12kmem_cache_s16create_free_slabEv+0x7c>
    80002e60:	0000a517          	auipc	a0,0xa
    80002e64:	0d050513          	addi	a0,a0,208 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002e68:	fffff097          	auipc	ra,0xfffff
    80002e6c:	d6c080e7          	jalr	-660(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80002e70:	00100793          	li	a5,1
    80002e74:	0000a717          	auipc	a4,0xa
    80002e78:	0af70a23          	sb	a5,180(a4) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002e7c:	f79ff06f          	j	80002df4 <_ZN12kmem_cache_s16create_free_slabEv+0x30>
    }

    // initialize slab if there is constructor
    if(this->ctor != nullptr){
    80002e80:	0504b783          	ld	a5,80(s1)
    80002e84:	02078663          	beqz	a5,80002eb0 <_ZN12kmem_cache_s16create_free_slabEv+0xec>
        for(size_t i = 0, addr = tmp->first_addr; i < this->num; i++, addr += this->objsize){
    80002e88:	00000993          	li	s3,0
    80002e8c:	0384b783          	ld	a5,56(s1)
    80002e90:	02f9f063          	bgeu	s3,a5,80002eb0 <_ZN12kmem_cache_s16create_free_slabEv+0xec>
            this->ctor((void*)addr);
    80002e94:	0504b783          	ld	a5,80(s1)
    80002e98:	00090513          	mv	a0,s2
    80002e9c:	000780e7          	jalr	a5
        for(size_t i = 0, addr = tmp->first_addr; i < this->num; i++, addr += this->objsize){
    80002ea0:	00198993          	addi	s3,s3,1
    80002ea4:	0304b783          	ld	a5,48(s1)
    80002ea8:	00f90933          	add	s2,s2,a5
    80002eac:	fe1ff06f          	j	80002e8c <_ZN12kmem_cache_s16create_free_slabEv+0xc8>
        }
    }

    // set free pointer and increment number of free slabs
    this->slabs_free = tmp;
    80002eb0:	0144b823          	sd	s4,16(s1)
    this->num_slabs_free++;
    80002eb4:	0284b783          	ld	a5,40(s1)
    80002eb8:	00178793          	addi	a5,a5,1
    80002ebc:	02f4b423          	sd	a5,40(s1)
}
    80002ec0:	02813083          	ld	ra,40(sp)
    80002ec4:	02013403          	ld	s0,32(sp)
    80002ec8:	01813483          	ld	s1,24(sp)
    80002ecc:	01013903          	ld	s2,16(sp)
    80002ed0:	00813983          	ld	s3,8(sp)
    80002ed4:	00013a03          	ld	s4,0(sp)
    80002ed8:	03010113          	addi	sp,sp,48
    80002edc:	00008067          	ret

0000000080002ee0 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>:
void* kmem_cache_s::kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    80002ee0:	fc010113          	addi	sp,sp,-64
    80002ee4:	02113c23          	sd	ra,56(sp)
    80002ee8:	02813823          	sd	s0,48(sp)
    80002eec:	02913423          	sd	s1,40(sp)
    80002ef0:	03213023          	sd	s2,32(sp)
    80002ef4:	01313c23          	sd	s3,24(sp)
    80002ef8:	01413823          	sd	s4,16(sp)
    80002efc:	01513423          	sd	s5,8(sp)
    80002f00:	04010413          	addi	s0,sp,64
    80002f04:	00050993          	mv	s3,a0
    80002f08:	00058913          	mv	s2,a1
    80002f0c:	00060a93          	mv	s5,a2
    80002f10:	00068a13          	mv	s4,a3
    for(kmem_cache_s* curr = kmem_cache_s::head; curr; curr = curr->next){
    80002f14:	0000a797          	auipc	a5,0xa
    80002f18:	00c7b783          	ld	a5,12(a5) # 8000cf20 <_ZN12kmem_cache_s4headE>
    80002f1c:	00078a63          	beqz	a5,80002f30 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x50>
        if(curr->name == name){
    80002f20:	0607b703          	ld	a4,96(a5)
    80002f24:	15370463          	beq	a4,s3,8000306c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x18c>
    for(kmem_cache_s* curr = kmem_cache_s::head; curr; curr = curr->next){
    80002f28:	0687b783          	ld	a5,104(a5)
    80002f2c:	ff1ff06f          	j	80002f1c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x3c>
    80002f30:	0000a797          	auipc	a5,0xa
    80002f34:	ff87c783          	lbu	a5,-8(a5) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002f38:	08078263          	beqz	a5,80002fbc <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xdc>
    kmem_cache_s* tmp = (kmem_cache_s*)BuddySystem::getInstance().buddyAlloc(BLOCK_SIZE - sizeof(size_t));
    80002f3c:	000015b7          	lui	a1,0x1
    80002f40:	ff858593          	addi	a1,a1,-8 # ff8 <_entry-0x7ffff008>
    80002f44:	0000a517          	auipc	a0,0xa
    80002f48:	fec50513          	addi	a0,a0,-20 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002f4c:	fffff097          	auipc	ra,0xfffff
    80002f50:	df8080e7          	jalr	-520(ra) # 80001d44 <_ZN11BuddySystem10buddyAllocEm>
    80002f54:	00050493          	mv	s1,a0
    tmp->name = name;
    80002f58:	07353023          	sd	s3,96(a0)
    tmp->objsize = size;
    80002f5c:	03253823          	sd	s2,48(a0)
    tmp->ctor = ctor;
    80002f60:	05553823          	sd	s5,80(a0)
    tmp->dtor = dtor;
    80002f64:	05453c23          	sd	s4,88(a0)
    tmp->slabs_full = tmp->slabs_partial = tmp->slabs_free = nullptr;
    80002f68:	00053823          	sd	zero,16(a0)
    80002f6c:	00053423          	sd	zero,8(a0)
    80002f70:	00053023          	sd	zero,0(a0)
    tmp->num_slabs_full = tmp->num_slabs_partial = tmp->num_slabs_free = tmp->num_active_obj = tmp->shrink = 0;
    80002f74:	08053023          	sd	zero,128(a0)
    80002f78:	06053823          	sd	zero,112(a0)
    80002f7c:	02053423          	sd	zero,40(a0)
    80002f80:	02053023          	sd	zero,32(a0)
    80002f84:	00053c23          	sd	zero,24(a0)
    tmp->growing = false;
    80002f88:	06050c23          	sb	zero,120(a0)
    tmp->size_in_blocks = 1;
    80002f8c:	00100793          	li	a5,1
    80002f90:	04f53423          	sd	a5,72(a0)
    size_t min_size_of_objects = tmp->objsize * NUM_OF_OBJECTS_IN_SLAB;
    80002f94:	00291613          	slli	a2,s2,0x2
    80002f98:	01260633          	add	a2,a2,s2
    80002f9c:	00161613          	slli	a2,a2,0x1
    while(tmp->size_in_blocks * BLOCK_SIZE < sizeof(size_t)*2 + sizeof(Slab) + min_size_of_arr + min_size_of_objects){
    80002fa0:	0484b703          	ld	a4,72(s1)
    80002fa4:	00c71693          	slli	a3,a4,0xc
    80002fa8:	03860793          	addi	a5,a2,56
    80002fac:	02f6f863          	bgeu	a3,a5,80002fdc <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xfc>
        tmp->size_in_blocks++;
    80002fb0:	00170713          	addi	a4,a4,1
    80002fb4:	04e4b423          	sd	a4,72(s1)
    while(tmp->size_in_blocks * BLOCK_SIZE < sizeof(size_t)*2 + sizeof(Slab) + min_size_of_arr + min_size_of_objects){
    80002fb8:	fe9ff06f          	j	80002fa0 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xc0>
    80002fbc:	0000a517          	auipc	a0,0xa
    80002fc0:	f7450513          	addi	a0,a0,-140 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	c10080e7          	jalr	-1008(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80002fcc:	00100793          	li	a5,1
    80002fd0:	0000a717          	auipc	a4,0xa
    80002fd4:	f4f70c23          	sb	a5,-168(a4) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002fd8:	f65ff06f          	j	80002f3c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x5c>
    int current_size_of_arr = 2;
    80002fdc:	00200513          	li	a0,2
    int how_many_objects_into_one_slab = 10;
    80002fe0:	00a00593          	li	a1,10
    while(how_many_objects_into_one_slab * tmp->objsize <=
    80002fe4:	032586b3          	mul	a3,a1,s2
            (int)(tmp->size_in_blocks * BLOCK_SIZE - sizeof(size_t)*2 - sizeof(Slab) - current_size_of_arr * sizeof(size_t))){
    80002fe8:	00971793          	slli	a5,a4,0x9
    80002fec:	40a787b3          	sub	a5,a5,a0
    80002ff0:	20000637          	lui	a2,0x20000
    80002ff4:	ffb6061b          	addiw	a2,a2,-5
    80002ff8:	00c787bb          	addw	a5,a5,a2
    80002ffc:	0037979b          	slliw	a5,a5,0x3
    while(how_many_objects_into_one_slab * tmp->objsize <=
    80003000:	00d7ee63          	bltu	a5,a3,8000301c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x13c>
        if(++how_many_objects_into_one_slab % 8 == 0){
    80003004:	0015879b          	addiw	a5,a1,1
    80003008:	0007859b          	sext.w	a1,a5
    8000300c:	0077f793          	andi	a5,a5,7
    80003010:	fc079ae3          	bnez	a5,80002fe4 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x104>
            current_size_of_arr++;
    80003014:	0015051b          	addiw	a0,a0,1
    80003018:	fcdff06f          	j	80002fe4 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x104>
    tmp->num = how_many_objects_into_one_slab;
    8000301c:	02b4bc23          	sd	a1,56(s1)
    tmp->size_of_arr = current_size_of_arr;
    80003020:	04a4b023          	sd	a0,64(s1)
    tmp->create_free_slab();
    80003024:	00048513          	mv	a0,s1
    80003028:	00000097          	auipc	ra,0x0
    8000302c:	d9c080e7          	jalr	-612(ra) # 80002dc4 <_ZN12kmem_cache_s16create_free_slabEv>
    tmp->next = kmem_cache_s::head;
    80003030:	0000a797          	auipc	a5,0xa
    80003034:	ef078793          	addi	a5,a5,-272 # 8000cf20 <_ZN12kmem_cache_s4headE>
    80003038:	0007b703          	ld	a4,0(a5)
    8000303c:	06e4b423          	sd	a4,104(s1)
    kmem_cache_s::head = tmp;
    80003040:	0097b023          	sd	s1,0(a5)
}
    80003044:	00048513          	mv	a0,s1
    80003048:	03813083          	ld	ra,56(sp)
    8000304c:	03013403          	ld	s0,48(sp)
    80003050:	02813483          	ld	s1,40(sp)
    80003054:	02013903          	ld	s2,32(sp)
    80003058:	01813983          	ld	s3,24(sp)
    8000305c:	01013a03          	ld	s4,16(sp)
    80003060:	00813a83          	ld	s5,8(sp)
    80003064:	04010113          	addi	sp,sp,64
    80003068:	00008067          	ret
            return nullptr;
    8000306c:	00000493          	li	s1,0
    80003070:	fd5ff06f          	j	80003044 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x164>

0000000080003074 <_ZN4Slab8set_maskEib>:

void Slab::set_mask(int position,  bool flag){
    80003074:	ff010113          	addi	sp,sp,-16
    80003078:	00813423          	sd	s0,8(sp)
    8000307c:	01010413          	addi	s0,sp,16
    int pos = position / sizeof(size_t);
    80003080:	4035d813          	srai	a6,a1,0x3
    int relative_pos = position % sizeof(size_t);
    80003084:	0075f593          	andi	a1,a1,7
    size_t mask = 1;
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    80003088:	00000713          	li	a4,0
    size_t mask = 1;
    8000308c:	00100693          	li	a3,1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    80003090:	00700793          	li	a5,7
    80003094:	40b787b3          	sub	a5,a5,a1
    80003098:	00f77863          	bgeu	a4,a5,800030a8 <_ZN4Slab8set_maskEib+0x34>
        mask <<= 1;
    8000309c:	00169693          	slli	a3,a3,0x1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    800030a0:	0017071b          	addiw	a4,a4,1
    800030a4:	fedff06f          	j	80003090 <_ZN4Slab8set_maskEib+0x1c>
    }
    if(flag){
    800030a8:	02060463          	beqz	a2,800030d0 <_ZN4Slab8set_maskEib+0x5c>
        // setujemo bit na jedan
        this->free_objects[pos] |= mask;
    800030ac:	00280813          	addi	a6,a6,2
    800030b0:	00381813          	slli	a6,a6,0x3
    800030b4:	01050533          	add	a0,a0,a6
    800030b8:	00853783          	ld	a5,8(a0)
    800030bc:	00d7e6b3          	or	a3,a5,a3
    800030c0:	00d53423          	sd	a3,8(a0)
        // setujemo bit na nula
        mask = ~mask;
        this->free_objects[pos] &= mask;
    }
    return;
}
    800030c4:	00813403          	ld	s0,8(sp)
    800030c8:	01010113          	addi	sp,sp,16
    800030cc:	00008067          	ret
        mask = ~mask;
    800030d0:	fff6c693          	not	a3,a3
        this->free_objects[pos] &= mask;
    800030d4:	00280813          	addi	a6,a6,2
    800030d8:	00381813          	slli	a6,a6,0x3
    800030dc:	01050533          	add	a0,a0,a6
    800030e0:	00853783          	ld	a5,8(a0)
    800030e4:	00d7f6b3          	and	a3,a5,a3
    800030e8:	00d53423          	sd	a3,8(a0)
    return;
    800030ec:	fd9ff06f          	j	800030c4 <_ZN4Slab8set_maskEib+0x50>

00000000800030f0 <_ZN4Slab9is_activeEi>:

bool Slab::is_active(int position){
    800030f0:	ff010113          	addi	sp,sp,-16
    800030f4:	00813423          	sd	s0,8(sp)
    800030f8:	01010413          	addi	s0,sp,16
    int pos = position / sizeof(size_t);
    800030fc:	4035d613          	srai	a2,a1,0x3
    int relative_pos = position % sizeof(size_t);
    80003100:	0075f593          	andi	a1,a1,7
    size_t mask = 1;
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    80003104:	00000713          	li	a4,0
    size_t mask = 1;
    80003108:	00100693          	li	a3,1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    8000310c:	00700793          	li	a5,7
    80003110:	40b787b3          	sub	a5,a5,a1
    80003114:	00f77863          	bgeu	a4,a5,80003124 <_ZN4Slab9is_activeEi+0x34>
        mask <<= 1;
    80003118:	00169693          	slli	a3,a3,0x1
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
    8000311c:	0017071b          	addiw	a4,a4,1
    80003120:	fedff06f          	j	8000310c <_ZN4Slab9is_activeEi+0x1c>
    }
    return this->free_objects[pos] & mask;
    80003124:	00260793          	addi	a5,a2,2 # 20000002 <_entry-0x5ffffffe>
    80003128:	00379793          	slli	a5,a5,0x3
    8000312c:	00f50533          	add	a0,a0,a5
    80003130:	00853503          	ld	a0,8(a0)
    80003134:	00d57533          	and	a0,a0,a3
}
    80003138:	00a03533          	snez	a0,a0
    8000313c:	00813403          	ld	s0,8(sp)
    80003140:	01010113          	addi	sp,sp,16
    80003144:	00008067          	ret

0000000080003148 <_ZN12kmem_cache_s15kmem_cache_freeEPv>:

// returns -1 if object not found and 0 if removal is completed
int kmem_cache_s::kmem_cache_free(void *objp) {
    80003148:	fd010113          	addi	sp,sp,-48
    8000314c:	02113423          	sd	ra,40(sp)
    80003150:	02813023          	sd	s0,32(sp)
    80003154:	00913c23          	sd	s1,24(sp)
    80003158:	01213823          	sd	s2,16(sp)
    8000315c:	01313423          	sd	s3,8(sp)
    80003160:	01413023          	sd	s4,0(sp)
    80003164:	03010413          	addi	s0,sp,48
    80003168:	00050a13          	mv	s4,a0
    8000316c:	00058993          	mv	s3,a1
    // check firstly in partial
    Slab* prev = nullptr;
    for(Slab* tmp = this->slabs_partial; tmp; tmp = tmp->next){
    80003170:	00853483          	ld	s1,8(a0)
    Slab* prev = nullptr;
    80003174:	00000913          	li	s2,0
    80003178:	0180006f          	j	80003190 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x48>
            tmp->decrement_num_of_active();
            size_t number_of_active = tmp->get_number_of_active_objects();
            if(number_of_active == 0){
                // move from partial to free
                if(prev)prev->next = tmp->next;
                else slabs_partial = tmp->next;
    8000317c:	0084b783          	ld	a5,8(s1)
    80003180:	00fa3423          	sd	a5,8(s4)
    80003184:	0940006f          	j	80003218 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xd0>
                this->num_slabs_partial--;
                this->num_slabs_free++;
            }
            return 0;
        }
        prev = tmp;
    80003188:	00048913          	mv	s2,s1
    for(Slab* tmp = this->slabs_partial; tmp; tmp = tmp->next){
    8000318c:	0084b483          	ld	s1,8(s1)
    80003190:	0a048a63          	beqz	s1,80003244 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xfc>
        if((size_t)objp > (size_t)tmp &&
    80003194:	ff34fae3          	bgeu	s1,s3,80003188 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x40>
        (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
    80003198:	048a3783          	ld	a5,72(s4)
    8000319c:	00c79793          	slli	a5,a5,0xc
    800031a0:	00f487b3          	add	a5,s1,a5
    800031a4:	ff878793          	addi	a5,a5,-8
        if((size_t)objp > (size_t)tmp &&
    800031a8:	fef9f0e3          	bgeu	s3,a5,80003188 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x40>
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
    800031ac:	0104b583          	ld	a1,16(s1)
    800031b0:	40b98733          	sub	a4,s3,a1
    800031b4:	030a3583          	ld	a1,48(s4)
    800031b8:	02b755b3          	divu	a1,a4,a1
            tmp->set_mask(position, false);
    800031bc:	00000613          	li	a2,0
    800031c0:	0005859b          	sext.w	a1,a1
    800031c4:	00048513          	mv	a0,s1
    800031c8:	00000097          	auipc	ra,0x0
    800031cc:	eac080e7          	jalr	-340(ra) # 80003074 <_ZN4Slab8set_maskEib>
            if(this->dtor){
    800031d0:	058a3783          	ld	a5,88(s4)
    800031d4:	00078663          	beqz	a5,800031e0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x98>
                this->dtor(objp);
    800031d8:	00098513          	mv	a0,s3
    800031dc:	000780e7          	jalr	a5
            if(this->ctor){
    800031e0:	050a3783          	ld	a5,80(s4)
    800031e4:	00078663          	beqz	a5,800031f0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xa8>
                this->ctor(objp);
    800031e8:	00098513          	mv	a0,s3
    800031ec:	000780e7          	jalr	a5
            this->num_active_obj--;
    800031f0:	070a3783          	ld	a5,112(s4)
    800031f4:	fff78793          	addi	a5,a5,-1
    800031f8:	06fa3823          	sd	a5,112(s4)
public:
    void clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *));
    size_t get_number_of_active_objects(){return num_active;}
    void* return_first_free_object_and_rearange_list(int, int);
    void increment_num_of_active(){num_active++;}
    void decrement_num_of_active(){num_active--;}
    800031fc:	0004b783          	ld	a5,0(s1)
    80003200:	fff78793          	addi	a5,a5,-1
    80003204:	00f4b023          	sd	a5,0(s1)
            if(number_of_active == 0){
    80003208:	02079a63          	bnez	a5,8000323c <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xf4>
                if(prev)prev->next = tmp->next;
    8000320c:	f60908e3          	beqz	s2,8000317c <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x34>
    80003210:	0084b783          	ld	a5,8(s1)
    80003214:	00f93423          	sd	a5,8(s2)
                tmp->next = this->slabs_free;
    80003218:	010a3783          	ld	a5,16(s4)
    8000321c:	00f4b423          	sd	a5,8(s1)
                this->slabs_free = tmp;
    80003220:	009a3823          	sd	s1,16(s4)
                this->num_slabs_partial--;
    80003224:	020a3783          	ld	a5,32(s4)
    80003228:	fff78793          	addi	a5,a5,-1
    8000322c:	02fa3023          	sd	a5,32(s4)
                this->num_slabs_free++;
    80003230:	028a3783          	ld	a5,40(s4)
    80003234:	00178793          	addi	a5,a5,1
    80003238:	02fa3423          	sd	a5,40(s4)
            return 0;
    8000323c:	00000513          	li	a0,0
    80003240:	0d40006f          	j	80003314 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1cc>
    }
    // check in full
    prev = nullptr;
    for(Slab* tmp = this->slabs_full; tmp; tmp = tmp->next){
    80003244:	000a3903          	ld	s2,0(s4)
    80003248:	0180006f          	j	80003260 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x118>
            this->num_active_obj--;
            tmp->decrement_num_of_active();

            // move from full to partial
            if(prev)prev->next = tmp->next;
            else slabs_full = tmp->next;
    8000324c:	00893783          	ld	a5,8(s2)
    80003250:	00fa3023          	sd	a5,0(s4)
    80003254:	0900006f          	j	800032e4 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x19c>
            this->num_slabs_full--;
            this->num_slabs_partial++;

            return 0;
        }
        prev = tmp;
    80003258:	00090493          	mv	s1,s2
    for(Slab* tmp = this->slabs_full; tmp; tmp = tmp->next){
    8000325c:	00893903          	ld	s2,8(s2)
    80003260:	0a090863          	beqz	s2,80003310 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1c8>
        if((size_t)objp > (size_t)tmp &&
    80003264:	ff397ae3          	bgeu	s2,s3,80003258 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x110>
           (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
    80003268:	048a3783          	ld	a5,72(s4)
    8000326c:	00c79793          	slli	a5,a5,0xc
    80003270:	00f907b3          	add	a5,s2,a5
    80003274:	ff878793          	addi	a5,a5,-8
        if((size_t)objp > (size_t)tmp &&
    80003278:	fef9f0e3          	bgeu	s3,a5,80003258 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x110>
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
    8000327c:	01093583          	ld	a1,16(s2)
    80003280:	40b98733          	sub	a4,s3,a1
    80003284:	030a3583          	ld	a1,48(s4)
    80003288:	02b755b3          	divu	a1,a4,a1
            tmp->set_mask(position, false);
    8000328c:	00000613          	li	a2,0
    80003290:	0005859b          	sext.w	a1,a1
    80003294:	00090513          	mv	a0,s2
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	ddc080e7          	jalr	-548(ra) # 80003074 <_ZN4Slab8set_maskEib>
            if(this->dtor){
    800032a0:	058a3783          	ld	a5,88(s4)
    800032a4:	00078663          	beqz	a5,800032b0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x168>
                this->dtor(objp);
    800032a8:	00098513          	mv	a0,s3
    800032ac:	000780e7          	jalr	a5
            if(this->ctor){
    800032b0:	050a3783          	ld	a5,80(s4)
    800032b4:	00078663          	beqz	a5,800032c0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x178>
                this->ctor(objp);
    800032b8:	00098513          	mv	a0,s3
    800032bc:	000780e7          	jalr	a5
            this->num_active_obj--;
    800032c0:	070a3783          	ld	a5,112(s4)
    800032c4:	fff78793          	addi	a5,a5,-1
    800032c8:	06fa3823          	sd	a5,112(s4)
    800032cc:	00093783          	ld	a5,0(s2)
    800032d0:	fff78793          	addi	a5,a5,-1
    800032d4:	00f93023          	sd	a5,0(s2)
            if(prev)prev->next = tmp->next;
    800032d8:	f6048ae3          	beqz	s1,8000324c <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x104>
    800032dc:	00893783          	ld	a5,8(s2)
    800032e0:	00f4b423          	sd	a5,8(s1)
            tmp->next = this->slabs_partial;
    800032e4:	008a3783          	ld	a5,8(s4)
    800032e8:	00f93423          	sd	a5,8(s2)
            this->slabs_partial = tmp;
    800032ec:	012a3423          	sd	s2,8(s4)
            this->num_slabs_full--;
    800032f0:	018a3783          	ld	a5,24(s4)
    800032f4:	fff78793          	addi	a5,a5,-1
    800032f8:	00fa3c23          	sd	a5,24(s4)
            this->num_slabs_partial++;
    800032fc:	020a3783          	ld	a5,32(s4)
    80003300:	00178793          	addi	a5,a5,1
    80003304:	02fa3023          	sd	a5,32(s4)
            return 0;
    80003308:	00000513          	li	a0,0
    8000330c:	0080006f          	j	80003314 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1cc>
    }
    return -1;
    80003310:	fff00513          	li	a0,-1
}
    80003314:	02813083          	ld	ra,40(sp)
    80003318:	02013403          	ld	s0,32(sp)
    8000331c:	01813483          	ld	s1,24(sp)
    80003320:	01013903          	ld	s2,16(sp)
    80003324:	00813983          	ld	s3,8(sp)
    80003328:	00013a03          	ld	s4,0(sp)
    8000332c:	03010113          	addi	sp,sp,48
    80003330:	00008067          	ret

0000000080003334 <_ZN12kmem_cache_s20check_if_name_existsEPKc>:
    void* elem = cache->kmem_cache_alloc();
    return elem;
}

// returns cache with given name, or nullptr if there is no such cache
kmem_cache_s *kmem_cache_s::check_if_name_exists(const char* name) {
    80003334:	fe010113          	addi	sp,sp,-32
    80003338:	00113c23          	sd	ra,24(sp)
    8000333c:	00813823          	sd	s0,16(sp)
    80003340:	00913423          	sd	s1,8(sp)
    80003344:	01213023          	sd	s2,0(sp)
    80003348:	02010413          	addi	s0,sp,32
    8000334c:	00050913          	mv	s2,a0
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003350:	0000a497          	auipc	s1,0xa
    80003354:	bd04b483          	ld	s1,-1072(s1) # 8000cf20 <_ZN12kmem_cache_s4headE>
    80003358:	02048063          	beqz	s1,80003378 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x44>
        if(string_compare(tmp->name, name)){
    8000335c:	00090593          	mv	a1,s2
    80003360:	0604b503          	ld	a0,96(s1)
    80003364:	fffff097          	auipc	ra,0xfffff
    80003368:	34c080e7          	jalr	844(ra) # 800026b0 <_Z14string_comparePKcS0_>
    8000336c:	00051663          	bnez	a0,80003378 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x44>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003370:	0684b483          	ld	s1,104(s1)
    80003374:	fe5ff06f          	j	80003358 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x24>
            return tmp;
        }
    }
    return nullptr;
}
    80003378:	00048513          	mv	a0,s1
    8000337c:	01813083          	ld	ra,24(sp)
    80003380:	01013403          	ld	s0,16(sp)
    80003384:	00813483          	ld	s1,8(sp)
    80003388:	00013903          	ld	s2,0(sp)
    8000338c:	02010113          	addi	sp,sp,32
    80003390:	00008067          	ret

0000000080003394 <_ZN12kmem_cache_s3powEm>:

size_t kmem_cache_s::pow(size_t deg){
    80003394:	ff010113          	addi	sp,sp,-16
    80003398:	00813423          	sd	s0,8(sp)
    8000339c:	01010413          	addi	s0,sp,16
    800033a0:	00050713          	mv	a4,a0
    size_t tmp = 1;
    for(size_t i = 0; i < deg; i++){
    800033a4:	00000793          	li	a5,0
    size_t tmp = 1;
    800033a8:	00100513          	li	a0,1
    for(size_t i = 0; i < deg; i++){
    800033ac:	00e7f863          	bgeu	a5,a4,800033bc <_ZN12kmem_cache_s3powEm+0x28>
        tmp <<= 1;
    800033b0:	00151513          	slli	a0,a0,0x1
    for(size_t i = 0; i < deg; i++){
    800033b4:	00178793          	addi	a5,a5,1
    800033b8:	ff5ff06f          	j	800033ac <_ZN12kmem_cache_s3powEm+0x18>
    }
    return tmp;
}
    800033bc:	00813403          	ld	s0,8(sp)
    800033c0:	01010113          	addi	sp,sp,16
    800033c4:	00008067          	ret

00000000800033c8 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm>:

int kmem_cache_s::is_small_buffer_size_correct(size_t size) {
    800033c8:	fe010113          	addi	sp,sp,-32
    800033cc:	00113c23          	sd	ra,24(sp)
    800033d0:	00813823          	sd	s0,16(sp)
    800033d4:	00913423          	sd	s1,8(sp)
    800033d8:	02010413          	addi	s0,sp,32
    800033dc:	00050493          	mv	s1,a0
    int deg = 5;
    size_t val = pow(deg);
    800033e0:	00500513          	li	a0,5
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	fb0080e7          	jalr	-80(ra) # 80003394 <_ZN12kmem_cache_s3powEm>
    int deg = 5;
    800033ec:	00500793          	li	a5,5
    while(size > val){
    800033f0:	00957863          	bgeu	a0,s1,80003400 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x38>
        deg++;
    800033f4:	0017879b          	addiw	a5,a5,1
        val <<= 1;
    800033f8:	00151513          	slli	a0,a0,0x1
    while(size > val){
    800033fc:	ff5ff06f          	j	800033f0 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x28>
    }
    if(deg > 17)return 0;
    80003400:	01100713          	li	a4,17
    80003404:	00f74e63          	blt	a4,a5,80003420 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x58>
    return (int)val;
    80003408:	0005051b          	sext.w	a0,a0
}
    8000340c:	01813083          	ld	ra,24(sp)
    80003410:	01013403          	ld	s0,16(sp)
    80003414:	00813483          	ld	s1,8(sp)
    80003418:	02010113          	addi	sp,sp,32
    8000341c:	00008067          	ret
    if(deg > 17)return 0;
    80003420:	00000513          	li	a0,0
    80003424:	fe9ff06f          	j	8000340c <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x44>

0000000080003428 <_ZN12kmem_cache_s5kfreeEPKv>:

// returns 0 if delete is executed, -1 if not
int kmem_cache_s::kfree(const void *objp) {
    80003428:	fe010113          	addi	sp,sp,-32
    8000342c:	00113c23          	sd	ra,24(sp)
    80003430:	00813823          	sd	s0,16(sp)
    80003434:	00913423          	sd	s1,8(sp)
    80003438:	01213023          	sd	s2,0(sp)
    8000343c:	02010413          	addi	s0,sp,32
    80003440:	00050913          	mv	s2,a0
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003444:	0000a497          	auipc	s1,0xa
    80003448:	adc4b483          	ld	s1,-1316(s1) # 8000cf20 <_ZN12kmem_cache_s4headE>
    8000344c:	02048063          	beqz	s1,8000346c <_ZN12kmem_cache_s5kfreeEPKv+0x44>
        if(tmp->kmem_cache_free((void*)objp) == 0)return 0;
    80003450:	00090593          	mv	a1,s2
    80003454:	00048513          	mv	a0,s1
    80003458:	00000097          	auipc	ra,0x0
    8000345c:	cf0080e7          	jalr	-784(ra) # 80003148 <_ZN12kmem_cache_s15kmem_cache_freeEPv>
    80003460:	00050863          	beqz	a0,80003470 <_ZN12kmem_cache_s5kfreeEPKv+0x48>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003464:	0684b483          	ld	s1,104(s1)
    80003468:	fe5ff06f          	j	8000344c <_ZN12kmem_cache_s5kfreeEPKv+0x24>
    }
    // if not found return 1;
    return -1;
    8000346c:	fff00513          	li	a0,-1
}
    80003470:	01813083          	ld	ra,24(sp)
    80003474:	01013403          	ld	s0,16(sp)
    80003478:	00813483          	ld	s1,8(sp)
    8000347c:	00013903          	ld	s2,0(sp)
    80003480:	02010113          	addi	sp,sp,32
    80003484:	00008067          	ret

0000000080003488 <_ZN12kmem_cache_s15kmem_cache_infoEv>:
        cache = cache->next;
    }
    return -1;
}

void kmem_cache_s::kmem_cache_info() {
    80003488:	fd010113          	addi	sp,sp,-48
    8000348c:	02113423          	sd	ra,40(sp)
    80003490:	02813023          	sd	s0,32(sp)
    80003494:	00913c23          	sd	s1,24(sp)
    80003498:	01213823          	sd	s2,16(sp)
    8000349c:	01313423          	sd	s3,8(sp)
    800034a0:	01413023          	sd	s4,0(sp)
    800034a4:	03010413          	addi	s0,sp,48
    800034a8:	00050913          	mv	s2,a0

    printString("------------------- CACHE INFO -------------------\n");
    800034ac:	00007517          	auipc	a0,0x7
    800034b0:	b8450513          	addi	a0,a0,-1148 # 8000a030 <CONSOLE_STATUS+0x20>
    800034b4:	00002097          	auipc	ra,0x2
    800034b8:	454080e7          	jalr	1108(ra) # 80005908 <_Z11printStringPKc>
    // print name and object size
    printString("Ime: ");
    800034bc:	00007517          	auipc	a0,0x7
    800034c0:	bac50513          	addi	a0,a0,-1108 # 8000a068 <CONSOLE_STATUS+0x58>
    800034c4:	00002097          	auipc	ra,0x2
    800034c8:	444080e7          	jalr	1092(ra) # 80005908 <_Z11printStringPKc>
    printString(name);
    800034cc:	06093503          	ld	a0,96(s2)
    800034d0:	00002097          	auipc	ra,0x2
    800034d4:	438080e7          	jalr	1080(ra) # 80005908 <_Z11printStringPKc>
    printString("\n");
    800034d8:	00007517          	auipc	a0,0x7
    800034dc:	d7050513          	addi	a0,a0,-656 # 8000a248 <CONSOLE_STATUS+0x238>
    800034e0:	00002097          	auipc	ra,0x2
    800034e4:	428080e7          	jalr	1064(ra) # 80005908 <_Z11printStringPKc>
    printString("Velicina objekta: ");
    800034e8:	00007517          	auipc	a0,0x7
    800034ec:	b8850513          	addi	a0,a0,-1144 # 8000a070 <CONSOLE_STATUS+0x60>
    800034f0:	00002097          	auipc	ra,0x2
    800034f4:	418080e7          	jalr	1048(ra) # 80005908 <_Z11printStringPKc>
    printInt(objsize);
    800034f8:	00000613          	li	a2,0
    800034fc:	00a00593          	li	a1,10
    80003500:	03092503          	lw	a0,48(s2)
    80003504:	00002097          	auipc	ra,0x2
    80003508:	59c080e7          	jalr	1436(ra) # 80005aa0 <_Z8printIntiii>
    printString("\n");
    8000350c:	00007517          	auipc	a0,0x7
    80003510:	d3c50513          	addi	a0,a0,-708 # 8000a248 <CONSOLE_STATUS+0x238>
    80003514:	00002097          	auipc	ra,0x2
    80003518:	3f4080e7          	jalr	1012(ra) # 80005908 <_Z11printStringPKc>

    // print size of cache (in blocks)
    size_t num_of_slabs = num_slabs_full + num_slabs_partial + num_slabs_free;
    8000351c:	01893983          	ld	s3,24(s2)
    80003520:	02093783          	ld	a5,32(s2)
    80003524:	00f989b3          	add	s3,s3,a5
    80003528:	02893503          	ld	a0,40(s2)
    8000352c:	00a989b3          	add	s3,s3,a0
    size_t size_of_cache_in_blocks = num_of_slabs * size_in_blocks + 1;
    80003530:	04893483          	ld	s1,72(s2)
    80003534:	033484b3          	mul	s1,s1,s3
    80003538:	00148493          	addi	s1,s1,1
    printString("Velicina kesa u blokovima: ");
    8000353c:	00007517          	auipc	a0,0x7
    80003540:	b4c50513          	addi	a0,a0,-1204 # 8000a088 <CONSOLE_STATUS+0x78>
    80003544:	00002097          	auipc	ra,0x2
    80003548:	3c4080e7          	jalr	964(ra) # 80005908 <_Z11printStringPKc>
    printInt(size_of_cache_in_blocks);
    8000354c:	00000613          	li	a2,0
    80003550:	00a00593          	li	a1,10
    80003554:	0004851b          	sext.w	a0,s1
    80003558:	00002097          	auipc	ra,0x2
    8000355c:	548080e7          	jalr	1352(ra) # 80005aa0 <_Z8printIntiii>
    printString("\n");
    80003560:	00007517          	auipc	a0,0x7
    80003564:	ce850513          	addi	a0,a0,-792 # 8000a248 <CONSOLE_STATUS+0x238>
    80003568:	00002097          	auipc	ra,0x2
    8000356c:	3a0080e7          	jalr	928(ra) # 80005908 <_Z11printStringPKc>

    // print number of slabs in cache
    printString("Broj ploca u kesu: ");
    80003570:	00007517          	auipc	a0,0x7
    80003574:	b3850513          	addi	a0,a0,-1224 # 8000a0a8 <CONSOLE_STATUS+0x98>
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	390080e7          	jalr	912(ra) # 80005908 <_Z11printStringPKc>
    printInt(num_of_slabs);
    80003580:	00000613          	li	a2,0
    80003584:	00a00593          	li	a1,10
    80003588:	0009851b          	sext.w	a0,s3
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	514080e7          	jalr	1300(ra) # 80005aa0 <_Z8printIntiii>
    printString("\n");
    80003594:	00007517          	auipc	a0,0x7
    80003598:	cb450513          	addi	a0,a0,-844 # 8000a248 <CONSOLE_STATUS+0x238>
    8000359c:	00002097          	auipc	ra,0x2
    800035a0:	36c080e7          	jalr	876(ra) # 80005908 <_Z11printStringPKc>

    // number of objects in one slab
    printString("Broj objekata koji staju u jednu plocu: ");
    800035a4:	00007517          	auipc	a0,0x7
    800035a8:	b1c50513          	addi	a0,a0,-1252 # 8000a0c0 <CONSOLE_STATUS+0xb0>
    800035ac:	00002097          	auipc	ra,0x2
    800035b0:	35c080e7          	jalr	860(ra) # 80005908 <_Z11printStringPKc>
    printInt(num);
    800035b4:	00000613          	li	a2,0
    800035b8:	00a00593          	li	a1,10
    800035bc:	03892503          	lw	a0,56(s2)
    800035c0:	00002097          	auipc	ra,0x2
    800035c4:	4e0080e7          	jalr	1248(ra) # 80005aa0 <_Z8printIntiii>
    printString("\n");
    800035c8:	00007517          	auipc	a0,0x7
    800035cc:	c8050513          	addi	a0,a0,-896 # 8000a248 <CONSOLE_STATUS+0x238>
    800035d0:	00002097          	auipc	ra,0x2
    800035d4:	338080e7          	jalr	824(ra) # 80005908 <_Z11printStringPKc>

    // number of objects in one slab
    printString("Broj aktivnih objekata u kesu: ");
    800035d8:	00007517          	auipc	a0,0x7
    800035dc:	b1850513          	addi	a0,a0,-1256 # 8000a0f0 <CONSOLE_STATUS+0xe0>
    800035e0:	00002097          	auipc	ra,0x2
    800035e4:	328080e7          	jalr	808(ra) # 80005908 <_Z11printStringPKc>
    printInt(num_active_obj);
    800035e8:	00000613          	li	a2,0
    800035ec:	00a00593          	li	a1,10
    800035f0:	07092503          	lw	a0,112(s2)
    800035f4:	00002097          	auipc	ra,0x2
    800035f8:	4ac080e7          	jalr	1196(ra) # 80005aa0 <_Z8printIntiii>
    printString("\n");
    800035fc:	00007517          	auipc	a0,0x7
    80003600:	c4c50513          	addi	a0,a0,-948 # 8000a248 <CONSOLE_STATUS+0x238>
    80003604:	00002097          	auipc	ra,0x2
    80003608:	304080e7          	jalr	772(ra) # 80005908 <_Z11printStringPKc>

    // stanje u slabovima
    printString("slobodni: ");
    8000360c:	00007517          	auipc	a0,0x7
    80003610:	b0450513          	addi	a0,a0,-1276 # 8000a110 <CONSOLE_STATUS+0x100>
    80003614:	00002097          	auipc	ra,0x2
    80003618:	2f4080e7          	jalr	756(ra) # 80005908 <_Z11printStringPKc>
    for(Slab* tmp = slabs_free; tmp; tmp = tmp->next){
    8000361c:	01093483          	ld	s1,16(s2)
    80003620:	02048863          	beqz	s1,80003650 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x1c8>
        printInt(tmp->get_number_of_active_objects());
    80003624:	00000613          	li	a2,0
    80003628:	00a00593          	li	a1,10
    8000362c:	0004a503          	lw	a0,0(s1)
    80003630:	00002097          	auipc	ra,0x2
    80003634:	470080e7          	jalr	1136(ra) # 80005aa0 <_Z8printIntiii>
        printString(" ");
    80003638:	00007517          	auipc	a0,0x7
    8000363c:	07050513          	addi	a0,a0,112 # 8000a6a8 <CONSOLE_STATUS+0x698>
    80003640:	00002097          	auipc	ra,0x2
    80003644:	2c8080e7          	jalr	712(ra) # 80005908 <_Z11printStringPKc>
    for(Slab* tmp = slabs_free; tmp; tmp = tmp->next){
    80003648:	0084b483          	ld	s1,8(s1)
    8000364c:	fd5ff06f          	j	80003620 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x198>
    }
    printString("\n");
    80003650:	00007517          	auipc	a0,0x7
    80003654:	bf850513          	addi	a0,a0,-1032 # 8000a248 <CONSOLE_STATUS+0x238>
    80003658:	00002097          	auipc	ra,0x2
    8000365c:	2b0080e7          	jalr	688(ra) # 80005908 <_Z11printStringPKc>
    printString("zaprljani: ");
    80003660:	00007517          	auipc	a0,0x7
    80003664:	ac050513          	addi	a0,a0,-1344 # 8000a120 <CONSOLE_STATUS+0x110>
    80003668:	00002097          	auipc	ra,0x2
    8000366c:	2a0080e7          	jalr	672(ra) # 80005908 <_Z11printStringPKc>
    for(Slab* tmp = slabs_partial; tmp; tmp = tmp->next){
    80003670:	00893483          	ld	s1,8(s2)
    80003674:	02048863          	beqz	s1,800036a4 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x21c>
        printInt(tmp->get_number_of_active_objects());
    80003678:	00000613          	li	a2,0
    8000367c:	00a00593          	li	a1,10
    80003680:	0004a503          	lw	a0,0(s1)
    80003684:	00002097          	auipc	ra,0x2
    80003688:	41c080e7          	jalr	1052(ra) # 80005aa0 <_Z8printIntiii>
        printString(" ");
    8000368c:	00007517          	auipc	a0,0x7
    80003690:	01c50513          	addi	a0,a0,28 # 8000a6a8 <CONSOLE_STATUS+0x698>
    80003694:	00002097          	auipc	ra,0x2
    80003698:	274080e7          	jalr	628(ra) # 80005908 <_Z11printStringPKc>
    for(Slab* tmp = slabs_partial; tmp; tmp = tmp->next){
    8000369c:	0084b483          	ld	s1,8(s1)
    800036a0:	fd5ff06f          	j	80003674 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x1ec>
    }
    printString("\n");
    800036a4:	00007517          	auipc	a0,0x7
    800036a8:	ba450513          	addi	a0,a0,-1116 # 8000a248 <CONSOLE_STATUS+0x238>
    800036ac:	00002097          	auipc	ra,0x2
    800036b0:	25c080e7          	jalr	604(ra) # 80005908 <_Z11printStringPKc>
    printString("puni: ");
    800036b4:	00007517          	auipc	a0,0x7
    800036b8:	a7c50513          	addi	a0,a0,-1412 # 8000a130 <CONSOLE_STATUS+0x120>
    800036bc:	00002097          	auipc	ra,0x2
    800036c0:	24c080e7          	jalr	588(ra) # 80005908 <_Z11printStringPKc>
    for(Slab* tmp = slabs_full; tmp; tmp = tmp->next){
    800036c4:	00093483          	ld	s1,0(s2)
    800036c8:	02048863          	beqz	s1,800036f8 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x270>
        printInt(tmp->get_number_of_active_objects());
    800036cc:	00000613          	li	a2,0
    800036d0:	00a00593          	li	a1,10
    800036d4:	0004a503          	lw	a0,0(s1)
    800036d8:	00002097          	auipc	ra,0x2
    800036dc:	3c8080e7          	jalr	968(ra) # 80005aa0 <_Z8printIntiii>
        printString(" ");
    800036e0:	00007517          	auipc	a0,0x7
    800036e4:	fc850513          	addi	a0,a0,-56 # 8000a6a8 <CONSOLE_STATUS+0x698>
    800036e8:	00002097          	auipc	ra,0x2
    800036ec:	220080e7          	jalr	544(ra) # 80005908 <_Z11printStringPKc>
    for(Slab* tmp = slabs_full; tmp; tmp = tmp->next){
    800036f0:	0084b483          	ld	s1,8(s1)
    800036f4:	fd5ff06f          	j	800036c8 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x240>
    }
    printString("\n");
    800036f8:	00007517          	auipc	a0,0x7
    800036fc:	b5050513          	addi	a0,a0,-1200 # 8000a248 <CONSOLE_STATUS+0x238>
    80003700:	00002097          	auipc	ra,0x2
    80003704:	208080e7          	jalr	520(ra) # 80005908 <_Z11printStringPKc>

    // number of times cache shrank
    printString("Broj uspesnih smanjenja kesa: ");
    80003708:	00007517          	auipc	a0,0x7
    8000370c:	a3050513          	addi	a0,a0,-1488 # 8000a138 <CONSOLE_STATUS+0x128>
    80003710:	00002097          	auipc	ra,0x2
    80003714:	1f8080e7          	jalr	504(ra) # 80005908 <_Z11printStringPKc>
    printInt(shrink);
    80003718:	00000613          	li	a2,0
    8000371c:	00a00593          	li	a1,10
    80003720:	08092503          	lw	a0,128(s2)
    80003724:	00002097          	auipc	ra,0x2
    80003728:	37c080e7          	jalr	892(ra) # 80005aa0 <_Z8printIntiii>
    printString("\n");
    8000372c:	00007517          	auipc	a0,0x7
    80003730:	b1c50513          	addi	a0,a0,-1252 # 8000a248 <CONSOLE_STATUS+0x238>
    80003734:	00002097          	auipc	ra,0x2
    80003738:	1d4080e7          	jalr	468(ra) # 80005908 <_Z11printStringPKc>

    // metedata
    printString("Velicina metapodataka za kmem_cache_s: ");
    8000373c:	00007517          	auipc	a0,0x7
    80003740:	a1c50513          	addi	a0,a0,-1508 # 8000a158 <CONSOLE_STATUS+0x148>
    80003744:	00002097          	auipc	ra,0x2
    80003748:	1c4080e7          	jalr	452(ra) # 80005908 <_Z11printStringPKc>
    printInt(sizeof(kmem_cache_s));
    8000374c:	00000613          	li	a2,0
    80003750:	00a00593          	li	a1,10
    80003754:	08800513          	li	a0,136
    80003758:	00002097          	auipc	ra,0x2
    8000375c:	348080e7          	jalr	840(ra) # 80005aa0 <_Z8printIntiii>
    printString("\n");
    80003760:	00007517          	auipc	a0,0x7
    80003764:	ae850513          	addi	a0,a0,-1304 # 8000a248 <CONSOLE_STATUS+0x238>
    80003768:	00002097          	auipc	ra,0x2
    8000376c:	1a0080e7          	jalr	416(ra) # 80005908 <_Z11printStringPKc>
    printString("Velicina metapodataka za Slab: ");
    80003770:	00007517          	auipc	a0,0x7
    80003774:	a1050513          	addi	a0,a0,-1520 # 8000a180 <CONSOLE_STATUS+0x170>
    80003778:	00002097          	auipc	ra,0x2
    8000377c:	190080e7          	jalr	400(ra) # 80005908 <_Z11printStringPKc>
    size_t size_of_slab = sizeof(Slab) + this->size_of_arr * sizeof(size_t) + sizeof(size_t);
    80003780:	04093483          	ld	s1,64(s2)
    80003784:	00448493          	addi	s1,s1,4
    80003788:	00349493          	slli	s1,s1,0x3
    printInt(size_of_slab);
    8000378c:	00000613          	li	a2,0
    80003790:	00a00593          	li	a1,10
    80003794:	0004851b          	sext.w	a0,s1
    80003798:	00002097          	auipc	ra,0x2
    8000379c:	308080e7          	jalr	776(ra) # 80005aa0 <_Z8printIntiii>
    printString("\n");
    800037a0:	00007517          	auipc	a0,0x7
    800037a4:	aa850513          	addi	a0,a0,-1368 # 8000a248 <CONSOLE_STATUS+0x238>
    800037a8:	00002097          	auipc	ra,0x2
    800037ac:	160080e7          	jalr	352(ra) # 80005908 <_Z11printStringPKc>

    // percentage of fullfilment of cache
    size_t neto = sizeof(kmem_cache_s) + num_of_slabs * size_of_slab + num_active_obj * objsize;
    800037b0:	029984b3          	mul	s1,s3,s1
    800037b4:	07093783          	ld	a5,112(s2)
    800037b8:	03093703          	ld	a4,48(s2)
    800037bc:	02e787b3          	mul	a5,a5,a4
    800037c0:	00f484b3          	add	s1,s1,a5
    800037c4:	08848493          	addi	s1,s1,136
    size_t bruto = (1 + num_of_slabs * size_in_blocks) * BLOCK_SIZE;
    800037c8:	04893a03          	ld	s4,72(s2)
    800037cc:	033a0a33          	mul	s4,s4,s3
    800037d0:	001a0a13          	addi	s4,s4,1
    800037d4:	00ca1a13          	slli	s4,s4,0xc

    printString("Realna iskoriscenost prostora: ");
    800037d8:	00007517          	auipc	a0,0x7
    800037dc:	9c850513          	addi	a0,a0,-1592 # 8000a1a0 <CONSOLE_STATUS+0x190>
    800037e0:	00002097          	auipc	ra,0x2
    800037e4:	128080e7          	jalr	296(ra) # 80005908 <_Z11printStringPKc>
    printInt(neto);
    800037e8:	00000613          	li	a2,0
    800037ec:	00a00593          	li	a1,10
    800037f0:	0004851b          	sext.w	a0,s1
    800037f4:	00002097          	auipc	ra,0x2
    800037f8:	2ac080e7          	jalr	684(ra) # 80005aa0 <_Z8printIntiii>
    printString("/");
    800037fc:	00007517          	auipc	a0,0x7
    80003800:	9c450513          	addi	a0,a0,-1596 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80003804:	00002097          	auipc	ra,0x2
    80003808:	104080e7          	jalr	260(ra) # 80005908 <_Z11printStringPKc>
    printInt(bruto);
    8000380c:	00000613          	li	a2,0
    80003810:	00a00593          	li	a1,10
    80003814:	000a051b          	sext.w	a0,s4
    80003818:	00002097          	auipc	ra,0x2
    8000381c:	288080e7          	jalr	648(ra) # 80005aa0 <_Z8printIntiii>
    printString("\n");
    80003820:	00007517          	auipc	a0,0x7
    80003824:	a2850513          	addi	a0,a0,-1496 # 8000a248 <CONSOLE_STATUS+0x238>
    80003828:	00002097          	auipc	ra,0x2
    8000382c:	0e0080e7          	jalr	224(ra) # 80005908 <_Z11printStringPKc>
    printString("Efektivna iskoriscenost prostora: ");
    80003830:	00007517          	auipc	a0,0x7
    80003834:	99850513          	addi	a0,a0,-1640 # 8000a1c8 <CONSOLE_STATUS+0x1b8>
    80003838:	00002097          	auipc	ra,0x2
    8000383c:	0d0080e7          	jalr	208(ra) # 80005908 <_Z11printStringPKc>
    printInt(num_active_obj * objsize);
    80003840:	07093503          	ld	a0,112(s2)
    80003844:	03093783          	ld	a5,48(s2)
    80003848:	00000613          	li	a2,0
    8000384c:	00a00593          	li	a1,10
    80003850:	02f5053b          	mulw	a0,a0,a5
    80003854:	00002097          	auipc	ra,0x2
    80003858:	24c080e7          	jalr	588(ra) # 80005aa0 <_Z8printIntiii>
    printString("/");
    8000385c:	00007517          	auipc	a0,0x7
    80003860:	96450513          	addi	a0,a0,-1692 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80003864:	00002097          	auipc	ra,0x2
    80003868:	0a4080e7          	jalr	164(ra) # 80005908 <_Z11printStringPKc>
    size_t real_bruto = num_of_slabs * size_in_blocks * BLOCK_SIZE - num_of_slabs * sizeof(Slab);
    8000386c:	04893503          	ld	a0,72(s2)
    80003870:	03350533          	mul	a0,a0,s3
    80003874:	00c51513          	slli	a0,a0,0xc
    80003878:	00199793          	slli	a5,s3,0x1
    8000387c:	013789b3          	add	s3,a5,s3
    80003880:	00399993          	slli	s3,s3,0x3
    printInt(real_bruto);
    80003884:	00000613          	li	a2,0
    80003888:	00a00593          	li	a1,10
    8000388c:	4135053b          	subw	a0,a0,s3
    80003890:	00002097          	auipc	ra,0x2
    80003894:	210080e7          	jalr	528(ra) # 80005aa0 <_Z8printIntiii>
    printString("\n");
    80003898:	00007517          	auipc	a0,0x7
    8000389c:	9b050513          	addi	a0,a0,-1616 # 8000a248 <CONSOLE_STATUS+0x238>
    800038a0:	00002097          	auipc	ra,0x2
    800038a4:	068080e7          	jalr	104(ra) # 80005908 <_Z11printStringPKc>

    printString("----------------------- END ----------------------\n");
    800038a8:	00007517          	auipc	a0,0x7
    800038ac:	94850513          	addi	a0,a0,-1720 # 8000a1f0 <CONSOLE_STATUS+0x1e0>
    800038b0:	00002097          	auipc	ra,0x2
    800038b4:	058080e7          	jalr	88(ra) # 80005908 <_Z11printStringPKc>
}
    800038b8:	02813083          	ld	ra,40(sp)
    800038bc:	02013403          	ld	s0,32(sp)
    800038c0:	01813483          	ld	s1,24(sp)
    800038c4:	01013903          	ld	s2,16(sp)
    800038c8:	00813983          	ld	s3,8(sp)
    800038cc:	00013a03          	ld	s4,0(sp)
    800038d0:	03010113          	addi	sp,sp,48
    800038d4:	00008067          	ret

00000000800038d8 <_ZN12kmem_cache_s21print_info_all_cachesEv>:

void kmem_cache_s::print_info_all_caches() {
    800038d8:	fe010113          	addi	sp,sp,-32
    800038dc:	00113c23          	sd	ra,24(sp)
    800038e0:	00813823          	sd	s0,16(sp)
    800038e4:	00913423          	sd	s1,8(sp)
    800038e8:	02010413          	addi	s0,sp,32
    printString("\n\t\t\t ### PRINT ALL CACHES ###\t\t\t\n");
    800038ec:	00007517          	auipc	a0,0x7
    800038f0:	93c50513          	addi	a0,a0,-1732 # 8000a228 <CONSOLE_STATUS+0x218>
    800038f4:	00002097          	auipc	ra,0x2
    800038f8:	014080e7          	jalr	20(ra) # 80005908 <_Z11printStringPKc>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    800038fc:	00009497          	auipc	s1,0x9
    80003900:	6244b483          	ld	s1,1572(s1) # 8000cf20 <_ZN12kmem_cache_s4headE>
    80003904:	00048c63          	beqz	s1,8000391c <_ZN12kmem_cache_s21print_info_all_cachesEv+0x44>
        tmp->kmem_cache_info();
    80003908:	00048513          	mv	a0,s1
    8000390c:	00000097          	auipc	ra,0x0
    80003910:	b7c080e7          	jalr	-1156(ra) # 80003488 <_ZN12kmem_cache_s15kmem_cache_infoEv>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003914:	0684b483          	ld	s1,104(s1)
    80003918:	fedff06f          	j	80003904 <_ZN12kmem_cache_s21print_info_all_cachesEv+0x2c>
    }
    printString("\t\t\t\t    ### END ###\t\t\t\n");
    8000391c:	00007517          	auipc	a0,0x7
    80003920:	93450513          	addi	a0,a0,-1740 # 8000a250 <CONSOLE_STATUS+0x240>
    80003924:	00002097          	auipc	ra,0x2
    80003928:	fe4080e7          	jalr	-28(ra) # 80005908 <_Z11printStringPKc>
}
    8000392c:	01813083          	ld	ra,24(sp)
    80003930:	01013403          	ld	s0,16(sp)
    80003934:	00813483          	ld	s1,8(sp)
    80003938:	02010113          	addi	sp,sp,32
    8000393c:	00008067          	ret

0000000080003940 <_ZN4Slab42return_first_free_object_and_rearange_listEii>:

void *Slab::return_first_free_object_and_rearange_list(int number_of_objects_in_slab, int size_of_object) {
    80003940:	fd010113          	addi	sp,sp,-48
    80003944:	02113423          	sd	ra,40(sp)
    80003948:	02813023          	sd	s0,32(sp)
    8000394c:	00913c23          	sd	s1,24(sp)
    80003950:	01213823          	sd	s2,16(sp)
    80003954:	01313423          	sd	s3,8(sp)
    80003958:	01413023          	sd	s4,0(sp)
    8000395c:	03010413          	addi	s0,sp,48
    80003960:	00050993          	mv	s3,a0
    80003964:	00058913          	mv	s2,a1
    80003968:	00060a13          	mv	s4,a2
    int i = 0;
    8000396c:	00000493          	li	s1,0
    while(i < number_of_objects_in_slab && this->is_active(i)){
    80003970:	0324d063          	bge	s1,s2,80003990 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x50>
    80003974:	00048593          	mv	a1,s1
    80003978:	00098513          	mv	a0,s3
    8000397c:	fffff097          	auipc	ra,0xfffff
    80003980:	774080e7          	jalr	1908(ra) # 800030f0 <_ZN4Slab9is_activeEi>
    80003984:	00050663          	beqz	a0,80003990 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x50>
        i++;
    80003988:	0014849b          	addiw	s1,s1,1
    while(i < number_of_objects_in_slab && this->is_active(i)){
    8000398c:	fe5ff06f          	j	80003970 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x30>
    }
    if(i >= number_of_objects_in_slab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    80003990:	0524d263          	bge	s1,s2,800039d4 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x94>
    this->set_mask(i, true);
    80003994:	00100613          	li	a2,1
    80003998:	00048593          	mv	a1,s1
    8000399c:	00098513          	mv	a0,s3
    800039a0:	fffff097          	auipc	ra,0xfffff
    800039a4:	6d4080e7          	jalr	1748(ra) # 80003074 <_ZN4Slab8set_maskEib>
    return (void*)(this->first_addr + size_of_object * i);
    800039a8:	0109b503          	ld	a0,16(s3)
    800039ac:	034484bb          	mulw	s1,s1,s4
    800039b0:	00950533          	add	a0,a0,s1
}
    800039b4:	02813083          	ld	ra,40(sp)
    800039b8:	02013403          	ld	s0,32(sp)
    800039bc:	01813483          	ld	s1,24(sp)
    800039c0:	01013903          	ld	s2,16(sp)
    800039c4:	00813983          	ld	s3,8(sp)
    800039c8:	00013a03          	ld	s4,0(sp)
    800039cc:	03010113          	addi	sp,sp,48
    800039d0:	00008067          	ret
    if(i >= number_of_objects_in_slab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    800039d4:	00000513          	li	a0,0
    800039d8:	fddff06f          	j	800039b4 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x74>

00000000800039dc <_ZN12kmem_cache_s16kmem_cache_allocEv>:
void *kmem_cache_s::kmem_cache_alloc() {
    800039dc:	fe010113          	addi	sp,sp,-32
    800039e0:	00113c23          	sd	ra,24(sp)
    800039e4:	00813823          	sd	s0,16(sp)
    800039e8:	00913423          	sd	s1,8(sp)
    800039ec:	02010413          	addi	s0,sp,32
    800039f0:	00050493          	mv	s1,a0
    if(num_slabs_partial != 0){
    800039f4:	02053783          	ld	a5,32(a0)
    800039f8:	06079e63          	bnez	a5,80003a74 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x98>
    else if(num_slabs_free != 0){
    800039fc:	02853783          	ld	a5,40(a0)
    80003a00:	0e078263          	beqz	a5,80003ae4 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x108>
        void* addr1 = this->slabs_free->return_first_free_object_and_rearange_list(this->num, this->objsize);
    80003a04:	03052603          	lw	a2,48(a0)
    80003a08:	03852583          	lw	a1,56(a0)
    80003a0c:	01053503          	ld	a0,16(a0)
    80003a10:	00000097          	auipc	ra,0x0
    80003a14:	f30080e7          	jalr	-208(ra) # 80003940 <_ZN4Slab42return_first_free_object_and_rearange_listEii>
        this->num_active_obj++;
    80003a18:	0704b783          	ld	a5,112(s1)
    80003a1c:	00178793          	addi	a5,a5,1
    80003a20:	06f4b823          	sd	a5,112(s1)
        Slab* tmp = this->slabs_free;
    80003a24:	0104b783          	ld	a5,16(s1)
        this->slabs_free = this->slabs_free->next;
    80003a28:	0087b703          	ld	a4,8(a5)
    80003a2c:	00e4b823          	sd	a4,16(s1)
        tmp->next = this->slabs_partial;
    80003a30:	0084b703          	ld	a4,8(s1)
    80003a34:	00e7b423          	sd	a4,8(a5)
    void increment_num_of_active(){num_active++;}
    80003a38:	0007b703          	ld	a4,0(a5)
    80003a3c:	00170713          	addi	a4,a4,1
    80003a40:	00e7b023          	sd	a4,0(a5)
        this->slabs_partial = tmp;
    80003a44:	00f4b423          	sd	a5,8(s1)
        this->num_slabs_free--;
    80003a48:	0284b783          	ld	a5,40(s1)
    80003a4c:	fff78793          	addi	a5,a5,-1
    80003a50:	02f4b423          	sd	a5,40(s1)
        this->num_slabs_partial++;
    80003a54:	0204b783          	ld	a5,32(s1)
    80003a58:	00178793          	addi	a5,a5,1
    80003a5c:	02f4b023          	sd	a5,32(s1)
}
    80003a60:	01813083          	ld	ra,24(sp)
    80003a64:	01013403          	ld	s0,16(sp)
    80003a68:	00813483          	ld	s1,8(sp)
    80003a6c:	02010113          	addi	sp,sp,32
    80003a70:	00008067          	ret
        void* addr = this->slabs_partial->return_first_free_object_and_rearange_list(this->num, this->objsize);
    80003a74:	03052603          	lw	a2,48(a0)
    80003a78:	03852583          	lw	a1,56(a0)
    80003a7c:	00853503          	ld	a0,8(a0)
    80003a80:	00000097          	auipc	ra,0x0
    80003a84:	ec0080e7          	jalr	-320(ra) # 80003940 <_ZN4Slab42return_first_free_object_and_rearange_listEii>
        this->num_active_obj++;
    80003a88:	0704b783          	ld	a5,112(s1)
    80003a8c:	00178793          	addi	a5,a5,1
    80003a90:	06f4b823          	sd	a5,112(s1)
        this->slabs_partial->increment_num_of_active();
    80003a94:	0084b703          	ld	a4,8(s1)
    80003a98:	00073783          	ld	a5,0(a4)
    80003a9c:	00178793          	addi	a5,a5,1
    80003aa0:	00f73023          	sd	a5,0(a4)
        if(this->slabs_partial->get_number_of_active_objects() == this->num){
    80003aa4:	0084b783          	ld	a5,8(s1)
    size_t get_number_of_active_objects(){return num_active;}
    80003aa8:	0007b703          	ld	a4,0(a5)
    80003aac:	0384b683          	ld	a3,56(s1)
    80003ab0:	fae698e3          	bne	a3,a4,80003a60 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>
            this->slabs_partial = this->slabs_partial->next;
    80003ab4:	0087b703          	ld	a4,8(a5)
    80003ab8:	00e4b423          	sd	a4,8(s1)
            tmp->next = this->slabs_full;
    80003abc:	0004b703          	ld	a4,0(s1)
    80003ac0:	00e7b423          	sd	a4,8(a5)
            this->slabs_full = tmp;
    80003ac4:	00f4b023          	sd	a5,0(s1)
            this->num_slabs_partial--;
    80003ac8:	0204b783          	ld	a5,32(s1)
    80003acc:	fff78793          	addi	a5,a5,-1
    80003ad0:	02f4b023          	sd	a5,32(s1)
            this->num_slabs_full++;
    80003ad4:	0184b783          	ld	a5,24(s1)
    80003ad8:	00178793          	addi	a5,a5,1
    80003adc:	00f4bc23          	sd	a5,24(s1)
        return addr;
    80003ae0:	f81ff06f          	j	80003a60 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>
        create_free_slab();
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	2e0080e7          	jalr	736(ra) # 80002dc4 <_ZN12kmem_cache_s16create_free_slabEv>
        this->growing = true;
    80003aec:	00100793          	li	a5,1
    80003af0:	06f48c23          	sb	a5,120(s1)
        return nullptr;
    80003af4:	00000513          	li	a0,0
    80003af8:	f69ff06f          	j	80003a60 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>

0000000080003afc <_ZN12kmem_cache_s7kmallocEm>:
void *kmem_cache_s::kmalloc(size_t size) {
    80003afc:	fe010113          	addi	sp,sp,-32
    80003b00:	00113c23          	sd	ra,24(sp)
    80003b04:	00813823          	sd	s0,16(sp)
    80003b08:	00913423          	sd	s1,8(sp)
    80003b0c:	01213023          	sd	s2,0(sp)
    80003b10:	02010413          	addi	s0,sp,32
    80003b14:	00050493          	mv	s1,a0
    const char* n = (const char*)concatenate_int_to_char_ptr((int)size);
    80003b18:	0005051b          	sext.w	a0,a0
    80003b1c:	fffff097          	auipc	ra,0xfffff
    80003b20:	b04080e7          	jalr	-1276(ra) # 80002620 <_Z27concatenate_int_to_char_ptri>
    80003b24:	00050913          	mv	s2,a0
    kmem_cache_s* tmp = check_if_name_exists(n);
    80003b28:	00000097          	auipc	ra,0x0
    80003b2c:	80c080e7          	jalr	-2036(ra) # 80003334 <_ZN12kmem_cache_s20check_if_name_existsEPKc>
    if(tmp == nullptr){
    80003b30:	02050463          	beqz	a0,80003b58 <_ZN12kmem_cache_s7kmallocEm+0x5c>
    kmem_cache_s* cache = nullptr;
    80003b34:	00000513          	li	a0,0
    void* elem = cache->kmem_cache_alloc();
    80003b38:	00000097          	auipc	ra,0x0
    80003b3c:	ea4080e7          	jalr	-348(ra) # 800039dc <_ZN12kmem_cache_s16kmem_cache_allocEv>
}
    80003b40:	01813083          	ld	ra,24(sp)
    80003b44:	01013403          	ld	s0,16(sp)
    80003b48:	00813483          	ld	s1,8(sp)
    80003b4c:	00013903          	ld	s2,0(sp)
    80003b50:	02010113          	addi	sp,sp,32
    80003b54:	00008067          	ret
        cache = (kmem_cache_s*)kmem_cache_create(n, size, nullptr, nullptr);
    80003b58:	00000693          	li	a3,0
    80003b5c:	00000613          	li	a2,0
    80003b60:	00048593          	mv	a1,s1
    80003b64:	00090513          	mv	a0,s2
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	378080e7          	jalr	888(ra) # 80002ee0 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>
        if(!cache)return nullptr;
    80003b70:	fc0514e3          	bnez	a0,80003b38 <_ZN12kmem_cache_s7kmallocEm+0x3c>
    80003b74:	fcdff06f          	j	80003b40 <_ZN12kmem_cache_s7kmallocEm+0x44>

0000000080003b78 <_ZN4Slab10clear_slabEiiPFvPvE>:

void Slab::clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *)) {
    if(dtor == nullptr)return;
    80003b78:	08068a63          	beqz	a3,80003c0c <_ZN4Slab10clear_slabEiiPFvPvE+0x94>
void Slab::clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *)) {
    80003b7c:	fc010113          	addi	sp,sp,-64
    80003b80:	02113c23          	sd	ra,56(sp)
    80003b84:	02813823          	sd	s0,48(sp)
    80003b88:	02913423          	sd	s1,40(sp)
    80003b8c:	03213023          	sd	s2,32(sp)
    80003b90:	01313c23          	sd	s3,24(sp)
    80003b94:	01413823          	sd	s4,16(sp)
    80003b98:	01513423          	sd	s5,8(sp)
    80003b9c:	04010413          	addi	s0,sp,64
    80003ba0:	00050913          	mv	s2,a0
    80003ba4:	00058993          	mv	s3,a1
    80003ba8:	00060a93          	mv	s5,a2
    80003bac:	00068a13          	mv	s4,a3
    for(int i = 0; i < num_of_objects_in_slab; i++){
    80003bb0:	00000493          	li	s1,0
    80003bb4:	0080006f          	j	80003bbc <_ZN4Slab10clear_slabEiiPFvPvE+0x44>
    80003bb8:	0014849b          	addiw	s1,s1,1
    80003bbc:	0334d663          	bge	s1,s3,80003be8 <_ZN4Slab10clear_slabEiiPFvPvE+0x70>
        if(this->is_active(i)){
    80003bc0:	00048593          	mv	a1,s1
    80003bc4:	00090513          	mv	a0,s2
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	528080e7          	jalr	1320(ra) # 800030f0 <_ZN4Slab9is_activeEi>
    80003bd0:	fe0504e3          	beqz	a0,80003bb8 <_ZN4Slab10clear_slabEiiPFvPvE+0x40>
            dtor((void*)(this->first_addr + i * objsize));
    80003bd4:	01093503          	ld	a0,16(s2)
    80003bd8:	035487bb          	mulw	a5,s1,s5
    80003bdc:	00f50533          	add	a0,a0,a5
    80003be0:	000a00e7          	jalr	s4
    80003be4:	fd5ff06f          	j	80003bb8 <_ZN4Slab10clear_slabEiiPFvPvE+0x40>
        }
    }
}
    80003be8:	03813083          	ld	ra,56(sp)
    80003bec:	03013403          	ld	s0,48(sp)
    80003bf0:	02813483          	ld	s1,40(sp)
    80003bf4:	02013903          	ld	s2,32(sp)
    80003bf8:	01813983          	ld	s3,24(sp)
    80003bfc:	01013a03          	ld	s4,16(sp)
    80003c00:	00813a83          	ld	s5,8(sp)
    80003c04:	04010113          	addi	sp,sp,64
    80003c08:	00008067          	ret
    80003c0c:	00008067          	ret

0000000080003c10 <_ZN12kmem_cache_s17kmem_cache_shrinkEv>:
size_t kmem_cache_s::kmem_cache_shrink() {
    80003c10:	fd010113          	addi	sp,sp,-48
    80003c14:	02113423          	sd	ra,40(sp)
    80003c18:	02813023          	sd	s0,32(sp)
    80003c1c:	00913c23          	sd	s1,24(sp)
    80003c20:	01213823          	sd	s2,16(sp)
    80003c24:	01313423          	sd	s3,8(sp)
    80003c28:	01413023          	sd	s4,0(sp)
    80003c2c:	03010413          	addi	s0,sp,48
    80003c30:	00050913          	mv	s2,a0
    if(this->growing){
    80003c34:	07854783          	lbu	a5,120(a0)
    80003c38:	00079863          	bnez	a5,80003c48 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x38>
    Slab* curr = this->slabs_free, *prev;
    80003c3c:	01053483          	ld	s1,16(a0)
    int cnt = (int)this->num_slabs_free;
    80003c40:	02852a03          	lw	s4,40(a0)
    80003c44:	0440006f          	j	80003c88 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x78>
        this->growing = false;
    80003c48:	06050c23          	sb	zero,120(a0)
        return 0;
    80003c4c:	00000513          	li	a0,0
    80003c50:	0880006f          	j	80003cd8 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0xc8>
    80003c54:	00009517          	auipc	a0,0x9
    80003c58:	2dc50513          	addi	a0,a0,732 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003c5c:	ffffe097          	auipc	ra,0xffffe
    80003c60:	f78080e7          	jalr	-136(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80003c64:	00100793          	li	a5,1
    80003c68:	00009717          	auipc	a4,0x9
    80003c6c:	2cf70023          	sb	a5,704(a4) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003c70:	00048593          	mv	a1,s1
    80003c74:	00009517          	auipc	a0,0x9
    80003c78:	2bc50513          	addi	a0,a0,700 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	258080e7          	jalr	600(ra) # 80001ed4 <_ZN11BuddySystem9buddyFreeEm>
        curr = curr->next;
    80003c84:	00098493          	mv	s1,s3
    while(curr){
    80003c88:	02048863          	beqz	s1,80003cb8 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0xa8>
        curr = curr->next;
    80003c8c:	0084b983          	ld	s3,8(s1)
        prev->clear_slab(num, objsize, dtor);
    80003c90:	05893683          	ld	a3,88(s2)
    80003c94:	03092603          	lw	a2,48(s2)
    80003c98:	03892583          	lw	a1,56(s2)
    80003c9c:	00048513          	mv	a0,s1
    80003ca0:	00000097          	auipc	ra,0x0
    80003ca4:	ed8080e7          	jalr	-296(ra) # 80003b78 <_ZN4Slab10clear_slabEiiPFvPvE>
    80003ca8:	00009797          	auipc	a5,0x9
    80003cac:	2807c783          	lbu	a5,640(a5) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003cb0:	fc0790e3          	bnez	a5,80003c70 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x60>
    80003cb4:	fa1ff06f          	j	80003c54 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x44>
    this->slabs_free = nullptr;
    80003cb8:	00093823          	sd	zero,16(s2)
    this->num_slabs_free = 0;
    80003cbc:	02093423          	sd	zero,40(s2)
    this->growing = false;
    80003cc0:	06090c23          	sb	zero,120(s2)
    this->shrink++;
    80003cc4:	08093783          	ld	a5,128(s2)
    80003cc8:	00178793          	addi	a5,a5,1
    80003ccc:	08f93023          	sd	a5,128(s2)
    return cnt * this->size_in_blocks;
    80003cd0:	04893503          	ld	a0,72(s2)
    80003cd4:	02aa0533          	mul	a0,s4,a0
}
    80003cd8:	02813083          	ld	ra,40(sp)
    80003cdc:	02013403          	ld	s0,32(sp)
    80003ce0:	01813483          	ld	s1,24(sp)
    80003ce4:	01013903          	ld	s2,16(sp)
    80003ce8:	00813983          	ld	s3,8(sp)
    80003cec:	00013a03          	ld	s4,0(sp)
    80003cf0:	03010113          	addi	sp,sp,48
    80003cf4:	00008067          	ret

0000000080003cf8 <_ZN12kmem_cache_s18kmem_cache_destroyEm>:
int kmem_cache_s::kmem_cache_destroy(size_t addr) {
    80003cf8:	fd010113          	addi	sp,sp,-48
    80003cfc:	02113423          	sd	ra,40(sp)
    80003d00:	02813023          	sd	s0,32(sp)
    80003d04:	00913c23          	sd	s1,24(sp)
    80003d08:	01213823          	sd	s2,16(sp)
    80003d0c:	01313423          	sd	s3,8(sp)
    80003d10:	01413023          	sd	s4,0(sp)
    80003d14:	03010413          	addi	s0,sp,48
    80003d18:	00050493          	mv	s1,a0
    80003d1c:	00058a13          	mv	s4,a1
    Slab *prev = nullptr, *tmp = this->slabs_full;
    80003d20:	00053903          	ld	s2,0(a0)
    80003d24:	01c0006f          	j	80003d40 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x48>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003d28:	00090593          	mv	a1,s2
    80003d2c:	00009517          	auipc	a0,0x9
    80003d30:	20450513          	addi	a0,a0,516 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003d34:	ffffe097          	auipc	ra,0xffffe
    80003d38:	1a0080e7          	jalr	416(ra) # 80001ed4 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003d3c:	00098913          	mv	s2,s3
    while (tmp) {
    80003d40:	04090663          	beqz	s2,80003d8c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x94>
        tmp = tmp->next;
    80003d44:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    80003d48:	0584b683          	ld	a3,88(s1)
    80003d4c:	0304a603          	lw	a2,48(s1)
    80003d50:	0384a583          	lw	a1,56(s1)
    80003d54:	00090513          	mv	a0,s2
    80003d58:	00000097          	auipc	ra,0x0
    80003d5c:	e20080e7          	jalr	-480(ra) # 80003b78 <_ZN4Slab10clear_slabEiiPFvPvE>
    80003d60:	00009797          	auipc	a5,0x9
    80003d64:	1c87c783          	lbu	a5,456(a5) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003d68:	fc0790e3          	bnez	a5,80003d28 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x30>
    80003d6c:	00009517          	auipc	a0,0x9
    80003d70:	1c450513          	addi	a0,a0,452 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	e60080e7          	jalr	-416(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80003d7c:	00100793          	li	a5,1
    80003d80:	00009717          	auipc	a4,0x9
    80003d84:	1af70423          	sb	a5,424(a4) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003d88:	fa1ff06f          	j	80003d28 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x30>
    prev = nullptr; tmp = this->slabs_partial;
    80003d8c:	0084b903          	ld	s2,8(s1)
    80003d90:	0380006f          	j	80003dc8 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xd0>
    80003d94:	00009517          	auipc	a0,0x9
    80003d98:	19c50513          	addi	a0,a0,412 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003d9c:	ffffe097          	auipc	ra,0xffffe
    80003da0:	e38080e7          	jalr	-456(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80003da4:	00100793          	li	a5,1
    80003da8:	00009717          	auipc	a4,0x9
    80003dac:	18f70023          	sb	a5,384(a4) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003db0:	00090593          	mv	a1,s2
    80003db4:	00009517          	auipc	a0,0x9
    80003db8:	17c50513          	addi	a0,a0,380 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003dbc:	ffffe097          	auipc	ra,0xffffe
    80003dc0:	118080e7          	jalr	280(ra) # 80001ed4 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003dc4:	00098913          	mv	s2,s3
    while (tmp) {
    80003dc8:	02090863          	beqz	s2,80003df8 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x100>
        tmp = tmp->next;
    80003dcc:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    80003dd0:	0584b683          	ld	a3,88(s1)
    80003dd4:	0304a603          	lw	a2,48(s1)
    80003dd8:	0384a583          	lw	a1,56(s1)
    80003ddc:	00090513          	mv	a0,s2
    80003de0:	00000097          	auipc	ra,0x0
    80003de4:	d98080e7          	jalr	-616(ra) # 80003b78 <_ZN4Slab10clear_slabEiiPFvPvE>
    80003de8:	00009797          	auipc	a5,0x9
    80003dec:	1407c783          	lbu	a5,320(a5) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003df0:	fc0790e3          	bnez	a5,80003db0 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xb8>
    80003df4:	fa1ff06f          	j	80003d94 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x9c>
    prev = nullptr; tmp = this->slabs_free;
    80003df8:	0104b903          	ld	s2,16(s1)
    80003dfc:	0380006f          	j	80003e34 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x13c>
    80003e00:	00009517          	auipc	a0,0x9
    80003e04:	13050513          	addi	a0,a0,304 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003e08:	ffffe097          	auipc	ra,0xffffe
    80003e0c:	dcc080e7          	jalr	-564(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80003e10:	00100793          	li	a5,1
    80003e14:	00009717          	auipc	a4,0x9
    80003e18:	10f70a23          	sb	a5,276(a4) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003e1c:	00090593          	mv	a1,s2
    80003e20:	00009517          	auipc	a0,0x9
    80003e24:	11050513          	addi	a0,a0,272 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003e28:	ffffe097          	auipc	ra,0xffffe
    80003e2c:	0ac080e7          	jalr	172(ra) # 80001ed4 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003e30:	00098913          	mv	s2,s3
    while (tmp) {
    80003e34:	02090863          	beqz	s2,80003e64 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x16c>
        tmp = tmp->next;
    80003e38:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    80003e3c:	0584b683          	ld	a3,88(s1)
    80003e40:	0304a603          	lw	a2,48(s1)
    80003e44:	0384a583          	lw	a1,56(s1)
    80003e48:	00090513          	mv	a0,s2
    80003e4c:	00000097          	auipc	ra,0x0
    80003e50:	d2c080e7          	jalr	-724(ra) # 80003b78 <_ZN4Slab10clear_slabEiiPFvPvE>
    80003e54:	00009797          	auipc	a5,0x9
    80003e58:	0d47c783          	lbu	a5,212(a5) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003e5c:	fc0790e3          	bnez	a5,80003e1c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x124>
    80003e60:	fa1ff06f          	j	80003e00 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x108>
    kmem_cache_s* cache = kmem_cache_s::head, *prev_cache = nullptr;
    80003e64:	00009797          	auipc	a5,0x9
    80003e68:	0bc7b783          	ld	a5,188(a5) # 8000cf20 <_ZN12kmem_cache_s4headE>
    80003e6c:	02c0006f          	j	80003e98 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1a0>
    80003e70:	00009517          	auipc	a0,0x9
    80003e74:	0c050513          	addi	a0,a0,192 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003e78:	ffffe097          	auipc	ra,0xffffe
    80003e7c:	d5c080e7          	jalr	-676(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80003e80:	00100793          	li	a5,1
    80003e84:	00009717          	auipc	a4,0x9
    80003e88:	0af70223          	sb	a5,164(a4) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003e8c:	0340006f          	j	80003ec0 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1c8>
        prev_cache = cache;
    80003e90:	00078913          	mv	s2,a5
        cache = cache->next;
    80003e94:	0687b783          	ld	a5,104(a5)
    while(cache){
    80003e98:	04078263          	beqz	a5,80003edc <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1e4>
        if((size_t)cache == addr){
    80003e9c:	00078493          	mv	s1,a5
    80003ea0:	ff4798e3          	bne	a5,s4,80003e90 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x198>
            if(prev_cache){
    80003ea4:	fe0906e3          	beqz	s2,80003e90 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x198>
                prev_cache->next = cache->next;
    80003ea8:	0687b703          	ld	a4,104(a5)
    80003eac:	06e93423          	sd	a4,104(s2)
                cache->next = nullptr;
    80003eb0:	0607b423          	sd	zero,104(a5)
    80003eb4:	00009797          	auipc	a5,0x9
    80003eb8:	0747c783          	lbu	a5,116(a5) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003ebc:	fa078ae3          	beqz	a5,80003e70 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x178>
                BuddySystem::getInstance().buddyFree((size_t)cache);
    80003ec0:	00048593          	mv	a1,s1
    80003ec4:	00009517          	auipc	a0,0x9
    80003ec8:	06c50513          	addi	a0,a0,108 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003ecc:	ffffe097          	auipc	ra,0xffffe
    80003ed0:	008080e7          	jalr	8(ra) # 80001ed4 <_ZN11BuddySystem9buddyFreeEm>
                return 0;
    80003ed4:	00000513          	li	a0,0
    80003ed8:	0080006f          	j	80003ee0 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1e8>
    return -1;
    80003edc:	fff00513          	li	a0,-1
}
    80003ee0:	02813083          	ld	ra,40(sp)
    80003ee4:	02013403          	ld	s0,32(sp)
    80003ee8:	01813483          	ld	s1,24(sp)
    80003eec:	01013903          	ld	s2,16(sp)
    80003ef0:	00813983          	ld	s3,8(sp)
    80003ef4:	00013a03          	ld	s4,0(sp)
    80003ef8:	03010113          	addi	sp,sp,48
    80003efc:	00008067          	ret

0000000080003f00 <_ZN6Thread11wrapper_runEPv>:
    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));

}

void Thread::wrapper_run(void* thread) {
    80003f00:	ff010113          	addi	sp,sp,-16
    80003f04:	00113423          	sd	ra,8(sp)
    80003f08:	00813023          	sd	s0,0(sp)
    80003f0c:	01010413          	addi	s0,sp,16
    ((Thread*)(thread))->run();
    80003f10:	00053783          	ld	a5,0(a0)
    80003f14:	0107b783          	ld	a5,16(a5)
    80003f18:	000780e7          	jalr	a5
}
    80003f1c:	00813083          	ld	ra,8(sp)
    80003f20:	00013403          	ld	s0,0(sp)
    80003f24:	01010113          	addi	sp,sp,16
    80003f28:	00008067          	ret

0000000080003f2c <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80003f2c:	fe010113          	addi	sp,sp,-32
    80003f30:	00113c23          	sd	ra,24(sp)
    80003f34:	00813823          	sd	s0,16(sp)
    80003f38:	00913423          	sd	s1,8(sp)
    80003f3c:	02010413          	addi	s0,sp,32
    80003f40:	00009797          	auipc	a5,0x9
    80003f44:	d6078793          	addi	a5,a5,-672 # 8000cca0 <_ZTV9Semaphore+0x10>
    80003f48:	00f53023          	sd	a5,0(a0)
    delete (MySemaphore*)myHandle;
    80003f4c:	00853483          	ld	s1,8(a0)
    80003f50:	02048863          	beqz	s1,80003f80 <_ZN9SemaphoreD1Ev+0x54>
    ~MySemaphore(){ sem_close(this);}
    80003f54:	00048513          	mv	a0,s1
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	2c4080e7          	jalr	708(ra) # 8000221c <_ZN11MySemaphore9sem_closeEPS_>
    80003f60:	00009797          	auipc	a5,0x9
    80003f64:	f607c783          	lbu	a5,-160(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003f68:	02078663          	beqz	a5,80003f94 <_ZN9SemaphoreD1Ev+0x68>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80003f6c:	00048593          	mv	a1,s1
    80003f70:	00009517          	auipc	a0,0x9
    80003f74:	f5850513          	addi	a0,a0,-168 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80003f78:	00001097          	auipc	ra,0x1
    80003f7c:	3f8080e7          	jalr	1016(ra) # 80005370 <_ZN15MemoryAllocator11memory_freeEPv>
}
    80003f80:	01813083          	ld	ra,24(sp)
    80003f84:	01013403          	ld	s0,16(sp)
    80003f88:	00813483          	ld	s1,8(sp)
    80003f8c:	02010113          	addi	sp,sp,32
    80003f90:	00008067          	ret
    MemoryAllocator(){
    80003f94:	00009617          	auipc	a2,0x9
    80003f98:	f3460613          	addi	a2,a2,-204 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80003f9c:	00009797          	auipc	a5,0x9
    80003fa0:	edc7b783          	ld	a5,-292(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003fa4:	0007b703          	ld	a4,0(a5)
    80003fa8:	00009797          	auipc	a5,0x9
    80003fac:	e887b783          	ld	a5,-376(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003fb0:	0007b783          	ld	a5,0(a5)
    80003fb4:	40f706b3          	sub	a3,a4,a5
    80003fb8:	0036d693          	srli	a3,a3,0x3
    80003fbc:	00d787b3          	add	a5,a5,a3
    80003fc0:	00178793          	addi	a5,a5,1
    80003fc4:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80003fc8:	fff70713          	addi	a4,a4,-1
    80003fcc:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80003fd0:	40f70733          	sub	a4,a4,a5
    80003fd4:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80003fd8:	03f7f693          	andi	a3,a5,63
    80003fdc:	00068663          	beqz	a3,80003fe8 <_ZN9SemaphoreD1Ev+0xbc>
    80003fe0:	04000613          	li	a2,64
    80003fe4:	40d606b3          	sub	a3,a2,a3
    80003fe8:	00d787b3          	add	a5,a5,a3
    80003fec:	00009697          	auipc	a3,0x9
    80003ff0:	ecf6be23          	sd	a5,-292(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80003ff4:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80003ff8:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80003ffc:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004000:	00100793          	li	a5,1
    80004004:	00009717          	auipc	a4,0x9
    80004008:	eaf70e23          	sb	a5,-324(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000400c:	f61ff06f          	j	80003f6c <_ZN9SemaphoreD1Ev+0x40>

0000000080004010 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80004010:	fe010113          	addi	sp,sp,-32
    80004014:	00113c23          	sd	ra,24(sp)
    80004018:	00813823          	sd	s0,16(sp)
    8000401c:	00913423          	sd	s1,8(sp)
    80004020:	02010413          	addi	s0,sp,32
    80004024:	00009797          	auipc	a5,0x9
    80004028:	c5478793          	addi	a5,a5,-940 # 8000cc78 <_ZTV6Thread+0x10>
    8000402c:	00f53023          	sd	a5,0(a0)
    delete (TCB*)(myHandle);
    80004030:	00853483          	ld	s1,8(a0)
    80004034:	04048263          	beqz	s1,80004078 <_ZN6ThreadD1Ev+0x68>
    80004038:	00009797          	auipc	a5,0x9
    8000403c:	e887c783          	lbu	a5,-376(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004040:	04078663          	beqz	a5,8000408c <_ZN6ThreadD1Ev+0x7c>

class TCB{
public:

    ~TCB(){
        MemoryAllocator::getInstance().memory_free((void*)stack);
    80004044:	0104b583          	ld	a1,16(s1)
    80004048:	00009517          	auipc	a0,0x9
    8000404c:	e8050513          	addi	a0,a0,-384 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80004050:	00001097          	auipc	ra,0x1
    80004054:	320080e7          	jalr	800(ra) # 80005370 <_ZN15MemoryAllocator11memory_freeEPv>
    80004058:	00009797          	auipc	a5,0x9
    8000405c:	e687c783          	lbu	a5,-408(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004060:	0a078463          	beqz	a5,80004108 <_ZN6ThreadD1Ev+0xf8>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80004064:	00048593          	mv	a1,s1
    80004068:	00009517          	auipc	a0,0x9
    8000406c:	e6050513          	addi	a0,a0,-416 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80004070:	00001097          	auipc	ra,0x1
    80004074:	300080e7          	jalr	768(ra) # 80005370 <_ZN15MemoryAllocator11memory_freeEPv>
}
    80004078:	01813083          	ld	ra,24(sp)
    8000407c:	01013403          	ld	s0,16(sp)
    80004080:	00813483          	ld	s1,8(sp)
    80004084:	02010113          	addi	sp,sp,32
    80004088:	00008067          	ret
    MemoryAllocator(){
    8000408c:	00009617          	auipc	a2,0x9
    80004090:	e3c60613          	addi	a2,a2,-452 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80004094:	00009797          	auipc	a5,0x9
    80004098:	de47b783          	ld	a5,-540(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000409c:	0007b703          	ld	a4,0(a5)
    800040a0:	00009797          	auipc	a5,0x9
    800040a4:	d907b783          	ld	a5,-624(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    800040a8:	0007b783          	ld	a5,0(a5)
    800040ac:	40f706b3          	sub	a3,a4,a5
    800040b0:	0036d693          	srli	a3,a3,0x3
    800040b4:	00d787b3          	add	a5,a5,a3
    800040b8:	00178793          	addi	a5,a5,1
    800040bc:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800040c0:	fff70713          	addi	a4,a4,-1
    800040c4:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    800040c8:	40f70733          	sub	a4,a4,a5
    800040cc:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800040d0:	03f7f693          	andi	a3,a5,63
    800040d4:	00068663          	beqz	a3,800040e0 <_ZN6ThreadD1Ev+0xd0>
    800040d8:	04000613          	li	a2,64
    800040dc:	40d606b3          	sub	a3,a2,a3
    800040e0:	00d787b3          	add	a5,a5,a3
    800040e4:	00009697          	auipc	a3,0x9
    800040e8:	def6b223          	sd	a5,-540(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    800040ec:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    800040f0:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    800040f4:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    800040f8:	00100793          	li	a5,1
    800040fc:	00009717          	auipc	a4,0x9
    80004100:	dcf70223          	sb	a5,-572(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004104:	f41ff06f          	j	80004044 <_ZN6ThreadD1Ev+0x34>
    MemoryAllocator(){
    80004108:	00009617          	auipc	a2,0x9
    8000410c:	dc060613          	addi	a2,a2,-576 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80004110:	00009797          	auipc	a5,0x9
    80004114:	d687b783          	ld	a5,-664(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004118:	0007b703          	ld	a4,0(a5)
    8000411c:	00009797          	auipc	a5,0x9
    80004120:	d147b783          	ld	a5,-748(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004124:	0007b783          	ld	a5,0(a5)
    80004128:	40f706b3          	sub	a3,a4,a5
    8000412c:	0036d693          	srli	a3,a3,0x3
    80004130:	00d787b3          	add	a5,a5,a3
    80004134:	00178793          	addi	a5,a5,1
    80004138:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    8000413c:	fff70713          	addi	a4,a4,-1
    80004140:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80004144:	40f70733          	sub	a4,a4,a5
    80004148:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    8000414c:	03f7f693          	andi	a3,a5,63
    80004150:	00068663          	beqz	a3,8000415c <_ZN6ThreadD1Ev+0x14c>
    80004154:	04000613          	li	a2,64
    80004158:	40d606b3          	sub	a3,a2,a3
    8000415c:	00d787b3          	add	a5,a5,a3
    80004160:	00009697          	auipc	a3,0x9
    80004164:	d6f6b423          	sd	a5,-664(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80004168:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    8000416c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004170:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004174:	00100793          	li	a5,1
    80004178:	00009717          	auipc	a4,0x9
    8000417c:	d4f70423          	sb	a5,-696(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004180:	ee5ff06f          	j	80004064 <_ZN6ThreadD1Ev+0x54>

0000000080004184 <_Znwm>:
void* operator new(size_t n) {
    80004184:	ff010113          	addi	sp,sp,-16
    80004188:	00113423          	sd	ra,8(sp)
    8000418c:	00813023          	sd	s0,0(sp)
    80004190:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80004194:	ffffd097          	auipc	ra,0xffffd
    80004198:	0b0080e7          	jalr	176(ra) # 80001244 <mem_alloc>
}
    8000419c:	00813083          	ld	ra,8(sp)
    800041a0:	00013403          	ld	s0,0(sp)
    800041a4:	01010113          	addi	sp,sp,16
    800041a8:	00008067          	ret

00000000800041ac <_Znam>:
void* operator new[](size_t n) {
    800041ac:	ff010113          	addi	sp,sp,-16
    800041b0:	00113423          	sd	ra,8(sp)
    800041b4:	00813023          	sd	s0,0(sp)
    800041b8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800041bc:	ffffd097          	auipc	ra,0xffffd
    800041c0:	088080e7          	jalr	136(ra) # 80001244 <mem_alloc>
}
    800041c4:	00813083          	ld	ra,8(sp)
    800041c8:	00013403          	ld	s0,0(sp)
    800041cc:	01010113          	addi	sp,sp,16
    800041d0:	00008067          	ret

00000000800041d4 <_ZdlPv>:
void operator delete(void* ptr) {
    800041d4:	ff010113          	addi	sp,sp,-16
    800041d8:	00113423          	sd	ra,8(sp)
    800041dc:	00813023          	sd	s0,0(sp)
    800041e0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800041e4:	ffffd097          	auipc	ra,0xffffd
    800041e8:	0b8080e7          	jalr	184(ra) # 8000129c <mem_free>
}
    800041ec:	00813083          	ld	ra,8(sp)
    800041f0:	00013403          	ld	s0,0(sp)
    800041f4:	01010113          	addi	sp,sp,16
    800041f8:	00008067          	ret

00000000800041fc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800041fc:	fe010113          	addi	sp,sp,-32
    80004200:	00113c23          	sd	ra,24(sp)
    80004204:	00813823          	sd	s0,16(sp)
    80004208:	00913423          	sd	s1,8(sp)
    8000420c:	02010413          	addi	s0,sp,32
    80004210:	00050493          	mv	s1,a0
}
    80004214:	00000097          	auipc	ra,0x0
    80004218:	dfc080e7          	jalr	-516(ra) # 80004010 <_ZN6ThreadD1Ev>
    8000421c:	00048513          	mv	a0,s1
    80004220:	00000097          	auipc	ra,0x0
    80004224:	fb4080e7          	jalr	-76(ra) # 800041d4 <_ZdlPv>
    80004228:	01813083          	ld	ra,24(sp)
    8000422c:	01013403          	ld	s0,16(sp)
    80004230:	00813483          	ld	s1,8(sp)
    80004234:	02010113          	addi	sp,sp,32
    80004238:	00008067          	ret

000000008000423c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000423c:	fe010113          	addi	sp,sp,-32
    80004240:	00113c23          	sd	ra,24(sp)
    80004244:	00813823          	sd	s0,16(sp)
    80004248:	00913423          	sd	s1,8(sp)
    8000424c:	02010413          	addi	s0,sp,32
    80004250:	00050493          	mv	s1,a0
}
    80004254:	00000097          	auipc	ra,0x0
    80004258:	cd8080e7          	jalr	-808(ra) # 80003f2c <_ZN9SemaphoreD1Ev>
    8000425c:	00048513          	mv	a0,s1
    80004260:	00000097          	auipc	ra,0x0
    80004264:	f74080e7          	jalr	-140(ra) # 800041d4 <_ZdlPv>
    80004268:	01813083          	ld	ra,24(sp)
    8000426c:	01013403          	ld	s0,16(sp)
    80004270:	00813483          	ld	s1,8(sp)
    80004274:	02010113          	addi	sp,sp,32
    80004278:	00008067          	ret

000000008000427c <_ZdaPv>:
void operator delete[](void* ptr) {
    8000427c:	ff010113          	addi	sp,sp,-16
    80004280:	00113423          	sd	ra,8(sp)
    80004284:	00813023          	sd	s0,0(sp)
    80004288:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000428c:	ffffd097          	auipc	ra,0xffffd
    80004290:	010080e7          	jalr	16(ra) # 8000129c <mem_free>
}
    80004294:	00813083          	ld	ra,8(sp)
    80004298:	00013403          	ld	s0,0(sp)
    8000429c:	01010113          	addi	sp,sp,16
    800042a0:	00008067          	ret

00000000800042a4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void *arg) {
    800042a4:	f9010113          	addi	sp,sp,-112
    800042a8:	06113423          	sd	ra,104(sp)
    800042ac:	06813023          	sd	s0,96(sp)
    800042b0:	04913c23          	sd	s1,88(sp)
    800042b4:	05213823          	sd	s2,80(sp)
    800042b8:	05313423          	sd	s3,72(sp)
    800042bc:	07010413          	addi	s0,sp,112
    800042c0:	00050493          	mv	s1,a0
    800042c4:	00058913          	mv	s2,a1
    800042c8:	00060993          	mv	s3,a2
    800042cc:	00009797          	auipc	a5,0x9
    800042d0:	9ac78793          	addi	a5,a5,-1620 # 8000cc78 <_ZTV6Thread+0x10>
    800042d4:	00f53023          	sd	a5,0(a0)
    uint64 a4 = (body != nullptr) ? (uint64)mem_alloc(DEFAULT_STACK_SIZE) : 0;
    800042d8:	06058063          	beqz	a1,80004338 <_ZN6ThreadC1EPFvPvES0_+0x94>
    800042dc:	00001537          	lui	a0,0x1
    800042e0:	ffffd097          	auipc	ra,0xffffd
    800042e4:	f64080e7          	jalr	-156(ra) # 80001244 <mem_alloc>
    a1 = (uint64)&myHandle;
    800042e8:	00848493          	addi	s1,s1,8
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    800042ec:	01100793          	li	a5,17
    800042f0:	f8f43823          	sd	a5,-112(s0)
    800042f4:	f8943c23          	sd	s1,-104(s0)
    800042f8:	fb243023          	sd	s2,-96(s0)
    800042fc:	fb343423          	sd	s3,-88(s0)
    80004300:	faa43823          	sd	a0,-80(s0)
    80004304:	fa043c23          	sd	zero,-72(s0)
    80004308:	fc043023          	sd	zero,-64(s0)
    8000430c:	fc043423          	sd	zero,-56(s0)
    abi::sys_call(reinterpret_cast<void *>(empty));
    80004310:	f9040513          	addi	a0,s0,-112
    80004314:	00001097          	auipc	ra,0x1
    80004318:	1e4080e7          	jalr	484(ra) # 800054f8 <_ZN3abi8sys_callEPv>
}
    8000431c:	06813083          	ld	ra,104(sp)
    80004320:	06013403          	ld	s0,96(sp)
    80004324:	05813483          	ld	s1,88(sp)
    80004328:	05013903          	ld	s2,80(sp)
    8000432c:	04813983          	ld	s3,72(sp)
    80004330:	07010113          	addi	sp,sp,112
    80004334:	00008067          	ret
    uint64 a4 = (body != nullptr) ? (uint64)mem_alloc(DEFAULT_STACK_SIZE) : 0;
    80004338:	00000513          	li	a0,0
    8000433c:	fadff06f          	j	800042e8 <_ZN6ThreadC1EPFvPvES0_+0x44>

0000000080004340 <_ZN6Thread5startEv>:
int Thread::start() {
    80004340:	ff010113          	addi	sp,sp,-16
    80004344:	00113423          	sd	ra,8(sp)
    80004348:	00813023          	sd	s0,0(sp)
    8000434c:	01010413          	addi	s0,sp,16
    put_in_scheduler(myHandle);
    80004350:	00853503          	ld	a0,8(a0) # 1008 <_entry-0x7fffeff8>
    80004354:	ffffd097          	auipc	ra,0xffffd
    80004358:	328080e7          	jalr	808(ra) # 8000167c <put_in_scheduler>
}
    8000435c:	00000513          	li	a0,0
    80004360:	00813083          	ld	ra,8(sp)
    80004364:	00013403          	ld	s0,0(sp)
    80004368:	01010113          	addi	sp,sp,16
    8000436c:	00008067          	ret

0000000080004370 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80004370:	ff010113          	addi	sp,sp,-16
    80004374:	00113423          	sd	ra,8(sp)
    80004378:	00813023          	sd	s0,0(sp)
    8000437c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80004380:	ffffd097          	auipc	ra,0xffffd
    80004384:	004080e7          	jalr	4(ra) # 80001384 <thread_dispatch>
}
    80004388:	00813083          	ld	ra,8(sp)
    8000438c:	00013403          	ld	s0,0(sp)
    80004390:	01010113          	addi	sp,sp,16
    80004394:	00008067          	ret

0000000080004398 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80004398:	ff010113          	addi	sp,sp,-16
    8000439c:	00113423          	sd	ra,8(sp)
    800043a0:	00813023          	sd	s0,0(sp)
    800043a4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800043a8:	ffffd097          	auipc	ra,0xffffd
    800043ac:	080080e7          	jalr	128(ra) # 80001428 <time_sleep>
}
    800043b0:	00813083          	ld	ra,8(sp)
    800043b4:	00013403          	ld	s0,0(sp)
    800043b8:	01010113          	addi	sp,sp,16
    800043bc:	00008067          	ret

00000000800043c0 <_ZN14PeriodicThread3runEv>:
    time = period;
    flag_stop = true;
    set_periodic((thread_t)this);
}

void PeriodicThread::run() {
    800043c0:	fe010113          	addi	sp,sp,-32
    800043c4:	00113c23          	sd	ra,24(sp)
    800043c8:	00813823          	sd	s0,16(sp)
    800043cc:	00913423          	sd	s1,8(sp)
    800043d0:	02010413          	addi	s0,sp,32
    800043d4:	00050493          	mv	s1,a0
    while(flag_stop){
    800043d8:	0184c783          	lbu	a5,24(s1)
    800043dc:	02078263          	beqz	a5,80004400 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    800043e0:	0004b783          	ld	a5,0(s1)
    800043e4:	0187b783          	ld	a5,24(a5)
    800043e8:	00048513          	mv	a0,s1
    800043ec:	000780e7          	jalr	a5
        sleep(time);
    800043f0:	0104b503          	ld	a0,16(s1)
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	fa4080e7          	jalr	-92(ra) # 80004398 <_ZN6Thread5sleepEm>
    while(flag_stop){
    800043fc:	fddff06f          	j	800043d8 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80004400:	01813083          	ld	ra,24(sp)
    80004404:	01013403          	ld	s0,16(sp)
    80004408:	00813483          	ld	s1,8(sp)
    8000440c:	02010113          	addi	sp,sp,32
    80004410:	00008067          	ret

0000000080004414 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80004414:	fa010113          	addi	sp,sp,-96
    80004418:	04113c23          	sd	ra,88(sp)
    8000441c:	04813823          	sd	s0,80(sp)
    80004420:	04913423          	sd	s1,72(sp)
    80004424:	06010413          	addi	s0,sp,96
    80004428:	00050493          	mv	s1,a0
    8000442c:	00009797          	auipc	a5,0x9
    80004430:	84c78793          	addi	a5,a5,-1972 # 8000cc78 <_ZTV6Thread+0x10>
    80004434:	00f53023          	sd	a5,0(a0)
    uint64 a4 = (uint64)mem_alloc(DEFAULT_STACK_SIZE);
    80004438:	00001537          	lui	a0,0x1
    8000443c:	ffffd097          	auipc	ra,0xffffd
    80004440:	e08080e7          	jalr	-504(ra) # 80001244 <mem_alloc>
    a1 = (uint64)&myHandle;
    80004444:	00848793          	addi	a5,s1,8
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80004448:	01100713          	li	a4,17
    8000444c:	fae43023          	sd	a4,-96(s0)
    80004450:	faf43423          	sd	a5,-88(s0)
    80004454:	00000797          	auipc	a5,0x0
    80004458:	aac78793          	addi	a5,a5,-1364 # 80003f00 <_ZN6Thread11wrapper_runEPv>
    8000445c:	faf43823          	sd	a5,-80(s0)
    80004460:	fa943c23          	sd	s1,-72(s0)
    80004464:	fca43023          	sd	a0,-64(s0)
    80004468:	fc043423          	sd	zero,-56(s0)
    8000446c:	fc043823          	sd	zero,-48(s0)
    80004470:	fc043c23          	sd	zero,-40(s0)
    abi::sys_call(reinterpret_cast<void *>(empty));
    80004474:	fa040513          	addi	a0,s0,-96
    80004478:	00001097          	auipc	ra,0x1
    8000447c:	080080e7          	jalr	128(ra) # 800054f8 <_ZN3abi8sys_callEPv>
}
    80004480:	05813083          	ld	ra,88(sp)
    80004484:	05013403          	ld	s0,80(sp)
    80004488:	04813483          	ld	s1,72(sp)
    8000448c:	06010113          	addi	sp,sp,96
    80004490:	00008067          	ret

0000000080004494 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80004494:	ff010113          	addi	sp,sp,-16
    80004498:	00113423          	sd	ra,8(sp)
    8000449c:	00813023          	sd	s0,0(sp)
    800044a0:	01010413          	addi	s0,sp,16
    800044a4:	00008797          	auipc	a5,0x8
    800044a8:	7fc78793          	addi	a5,a5,2044 # 8000cca0 <_ZTV9Semaphore+0x10>
    800044ac:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    sem_open(&myHandle, init);
    800044b0:	02059593          	slli	a1,a1,0x20
    800044b4:	0205d593          	srli	a1,a1,0x20
    800044b8:	00850513          	addi	a0,a0,8
    800044bc:	ffffd097          	auipc	ra,0xffffd
    800044c0:	fcc080e7          	jalr	-52(ra) # 80001488 <sem_open>
}
    800044c4:	00813083          	ld	ra,8(sp)
    800044c8:	00013403          	ld	s0,0(sp)
    800044cc:	01010113          	addi	sp,sp,16
    800044d0:	00008067          	ret

00000000800044d4 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800044d4:	ff010113          	addi	sp,sp,-16
    800044d8:	00113423          	sd	ra,8(sp)
    800044dc:	00813023          	sd	s0,0(sp)
    800044e0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800044e4:	00853503          	ld	a0,8(a0)
    800044e8:	ffffd097          	auipc	ra,0xffffd
    800044ec:	048080e7          	jalr	72(ra) # 80001530 <sem_wait>
}
    800044f0:	00813083          	ld	ra,8(sp)
    800044f4:	00013403          	ld	s0,0(sp)
    800044f8:	01010113          	addi	sp,sp,16
    800044fc:	00008067          	ret

0000000080004500 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80004500:	ff010113          	addi	sp,sp,-16
    80004504:	00113423          	sd	ra,8(sp)
    80004508:	00813023          	sd	s0,0(sp)
    8000450c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80004510:	00853503          	ld	a0,8(a0)
    80004514:	ffffd097          	auipc	ra,0xffffd
    80004518:	070080e7          	jalr	112(ra) # 80001584 <sem_signal>
}
    8000451c:	00813083          	ld	ra,8(sp)
    80004520:	00013403          	ld	s0,0(sp)
    80004524:	01010113          	addi	sp,sp,16
    80004528:	00008067          	ret

000000008000452c <_ZN7Console4getcEv>:
char Console::getc() {
    8000452c:	ff010113          	addi	sp,sp,-16
    80004530:	00113423          	sd	ra,8(sp)
    80004534:	00813023          	sd	s0,0(sp)
    80004538:	01010413          	addi	s0,sp,16
    return ::getc();
    8000453c:	ffffd097          	auipc	ra,0xffffd
    80004540:	09c080e7          	jalr	156(ra) # 800015d8 <getc>
}
    80004544:	00813083          	ld	ra,8(sp)
    80004548:	00013403          	ld	s0,0(sp)
    8000454c:	01010113          	addi	sp,sp,16
    80004550:	00008067          	ret

0000000080004554 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80004554:	ff010113          	addi	sp,sp,-16
    80004558:	00113423          	sd	ra,8(sp)
    8000455c:	00813023          	sd	s0,0(sp)
    80004560:	01010413          	addi	s0,sp,16
    ::putc(c);
    80004564:	ffffd097          	auipc	ra,0xffffd
    80004568:	0c8080e7          	jalr	200(ra) # 8000162c <putc>
}
    8000456c:	00813083          	ld	ra,8(sp)
    80004570:	00013403          	ld	s0,0(sp)
    80004574:	01010113          	addi	sp,sp,16
    80004578:	00008067          	ret

000000008000457c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    8000457c:	fe010113          	addi	sp,sp,-32
    80004580:	00113c23          	sd	ra,24(sp)
    80004584:	00813823          	sd	s0,16(sp)
    80004588:	00913423          	sd	s1,8(sp)
    8000458c:	01213023          	sd	s2,0(sp)
    80004590:	02010413          	addi	s0,sp,32
    80004594:	00050493          	mv	s1,a0
    80004598:	00058913          	mv	s2,a1
    8000459c:	00000097          	auipc	ra,0x0
    800045a0:	e78080e7          	jalr	-392(ra) # 80004414 <_ZN6ThreadC1Ev>
    800045a4:	00008797          	auipc	a5,0x8
    800045a8:	71c78793          	addi	a5,a5,1820 # 8000ccc0 <_ZTV14PeriodicThread+0x10>
    800045ac:	00f4b023          	sd	a5,0(s1)
    800045b0:	00009717          	auipc	a4,0x9
    800045b4:	ad870713          	addi	a4,a4,-1320 # 8000d088 <_ZN14PeriodicThread2IDE>
    800045b8:	00073783          	ld	a5,0(a4)
    800045bc:	00178693          	addi	a3,a5,1
    800045c0:	00d73023          	sd	a3,0(a4)
    800045c4:	02f4b023          	sd	a5,32(s1)
    time = period;
    800045c8:	0124b823          	sd	s2,16(s1)
    flag_stop = true;
    800045cc:	00100793          	li	a5,1
    800045d0:	00f48c23          	sb	a5,24(s1)
    set_periodic((thread_t)this);
    800045d4:	00048513          	mv	a0,s1
    800045d8:	ffffd097          	auipc	ra,0xffffd
    800045dc:	194080e7          	jalr	404(ra) # 8000176c <set_periodic>
    800045e0:	0200006f          	j	80004600 <_ZN14PeriodicThreadC1Em+0x84>
    800045e4:	00050913          	mv	s2,a0
PeriodicThread::PeriodicThread(time_t period) {
    800045e8:	00048513          	mv	a0,s1
    800045ec:	00000097          	auipc	ra,0x0
    800045f0:	a24080e7          	jalr	-1500(ra) # 80004010 <_ZN6ThreadD1Ev>
    800045f4:	00090513          	mv	a0,s2
    800045f8:	000cd097          	auipc	ra,0xcd
    800045fc:	0d0080e7          	jalr	208(ra) # 800d16c8 <_Unwind_Resume>
}
    80004600:	01813083          	ld	ra,24(sp)
    80004604:	01013403          	ld	s0,16(sp)
    80004608:	00813483          	ld	s1,8(sp)
    8000460c:	00013903          	ld	s2,0(sp)
    80004610:	02010113          	addi	sp,sp,32
    80004614:	00008067          	ret

0000000080004618 <_ZN6Thread3runEv>:



protected:
    Thread();
    virtual void run() {}
    80004618:	ff010113          	addi	sp,sp,-16
    8000461c:	00813423          	sd	s0,8(sp)
    80004620:	01010413          	addi	s0,sp,16
    80004624:	00813403          	ld	s0,8(sp)
    80004628:	01010113          	addi	sp,sp,16
    8000462c:	00008067          	ret

0000000080004630 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void stop(){flag_stop = false;}
//    uint64 getId()const{ id; }
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation(){}
    80004630:	ff010113          	addi	sp,sp,-16
    80004634:	00813423          	sd	s0,8(sp)
    80004638:	01010413          	addi	s0,sp,16
    8000463c:	00813403          	ld	s0,8(sp)
    80004640:	01010113          	addi	sp,sp,16
    80004644:	00008067          	ret

0000000080004648 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80004648:	ff010113          	addi	sp,sp,-16
    8000464c:	00113423          	sd	ra,8(sp)
    80004650:	00813023          	sd	s0,0(sp)
    80004654:	01010413          	addi	s0,sp,16
    80004658:	00008797          	auipc	a5,0x8
    8000465c:	66878793          	addi	a5,a5,1640 # 8000ccc0 <_ZTV14PeriodicThread+0x10>
    80004660:	00f53023          	sd	a5,0(a0)
    80004664:	00000097          	auipc	ra,0x0
    80004668:	9ac080e7          	jalr	-1620(ra) # 80004010 <_ZN6ThreadD1Ev>
    8000466c:	00813083          	ld	ra,8(sp)
    80004670:	00013403          	ld	s0,0(sp)
    80004674:	01010113          	addi	sp,sp,16
    80004678:	00008067          	ret

000000008000467c <_ZN14PeriodicThreadD0Ev>:
    8000467c:	fe010113          	addi	sp,sp,-32
    80004680:	00113c23          	sd	ra,24(sp)
    80004684:	00813823          	sd	s0,16(sp)
    80004688:	00913423          	sd	s1,8(sp)
    8000468c:	02010413          	addi	s0,sp,32
    80004690:	00050493          	mv	s1,a0
    80004694:	00008797          	auipc	a5,0x8
    80004698:	62c78793          	addi	a5,a5,1580 # 8000ccc0 <_ZTV14PeriodicThread+0x10>
    8000469c:	00f53023          	sd	a5,0(a0)
    800046a0:	00000097          	auipc	ra,0x0
    800046a4:	970080e7          	jalr	-1680(ra) # 80004010 <_ZN6ThreadD1Ev>
    800046a8:	00048513          	mv	a0,s1
    800046ac:	00000097          	auipc	ra,0x0
    800046b0:	b28080e7          	jalr	-1240(ra) # 800041d4 <_ZdlPv>
    800046b4:	01813083          	ld	ra,24(sp)
    800046b8:	01013403          	ld	s0,16(sp)
    800046bc:	00813483          	ld	s1,8(sp)
    800046c0:	02010113          	addi	sp,sp,32
    800046c4:	00008067          	ret

00000000800046c8 <_ZN5Riscv14switch_to_userEv>:
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/semaphore.hpp"
#include "../h/console.hpp"

void Riscv::switch_to_user(){
    800046c8:	ff010113          	addi	sp,sp,-16
    800046cc:	00813423          	sd	s0,8(sp)
    800046d0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800046d4:	10000793          	li	a5,256
    800046d8:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
}
    800046dc:	00813403          	ld	s0,8(sp)
    800046e0:	01010113          	addi	sp,sp,16
    800046e4:	00008067          	ret

00000000800046e8 <_ZN5Riscv21switch_to_priviledgedEv>:

void Riscv::switch_to_priviledged() {
    800046e8:	ff010113          	addi	sp,sp,-16
    800046ec:	00813423          	sd	s0,8(sp)
    800046f0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800046f4:	10000793          	li	a5,256
    800046f8:	1007a073          	csrs	sstatus,a5
    ms_sstatus(SSTATUS_SPP);
}
    800046fc:	00813403          	ld	s0,8(sp)
    80004700:	01010113          	addi	sp,sp,16
    80004704:	00008067          	ret

0000000080004708 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie(){
    80004708:	ff010113          	addi	sp,sp,-16
    8000470c:	00813423          	sd	s0,8(sp)
    80004710:	01010413          	addi	s0,sp,16

    __asm__ volatile("csrw sepc, ra");
    80004714:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80004718:	10200073          	sret
}
    8000471c:	00813403          	ld	s0,8(sp)
    80004720:	01010113          	addi	sp,sp,16
    80004724:	00008067          	ret

0000000080004728 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80004728:	f5010113          	addi	sp,sp,-176
    8000472c:	0a113423          	sd	ra,168(sp)
    80004730:	0a813023          	sd	s0,160(sp)
    80004734:	08913c23          	sd	s1,152(sp)
    80004738:	09213823          	sd	s2,144(sp)
    8000473c:	0b010413          	addi	s0,sp,176

//    uint64 arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7;
    uint64 args[8];
    __asm__ volatile("mv %[arg0], a0" : [arg0]"=r"(*args)); // za kod sistemskog poziva
    80004740:	00050793          	mv	a5,a0
    80004744:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("mv %[arg1], a1" : [arg1]"=r"(*(args + 1))); // argumenti s leva na desno
    80004748:	00058793          	mv	a5,a1
    8000474c:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile("mv %[arg2], a2" : [arg2]"=r"(*(args + 2)));
    80004750:	00060793          	mv	a5,a2
    80004754:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile("mv %[arg3], a3" : [arg3]"=r"(*(args + 3)));
    80004758:	00068793          	mv	a5,a3
    8000475c:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %[arg4], a4" : [arg4]"=r"(*(args + 4)));
    80004760:	00070793          	mv	a5,a4
    80004764:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("mv %[arg5], a5" : [arg5]"=r"(*(args + 5)));
    80004768:	00078793          	mv	a5,a5
    8000476c:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("mv %[arg6], a6" : [arg6]"=r"(*(args + 6)));
    80004770:	00080793          	mv	a5,a6
    80004774:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("mv %[arg7], a7" : [arg7]"=r"(*(args + 7)));
    80004778:	00088793          	mv	a5,a7
    8000477c:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80004780:	142027f3          	csrr	a5,scause
    80004784:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80004788:	f7843703          	ld	a4,-136(s0)

    uint64 scause = r_scause();

    if (scause == 0x8000000000000001UL){
    8000478c:	fff00793          	li	a5,-1
    80004790:	03f79793          	slli	a5,a5,0x3f
    80004794:	00178793          	addi	a5,a5,1
    80004798:	02f70c63          	beq	a4,a5,800047d0 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

    }
    else if(scause == 0x0000000000000009UL || scause == 0x0000000000000008UL){
    8000479c:	ff870793          	addi	a5,a4,-8
    800047a0:	00100693          	li	a3,1
    800047a4:	0af6f463          	bgeu	a3,a5,8000484c <_ZN5Riscv20handleSupervisorTrapEv+0x124>
            // pomeramo pc za 4 bajta unapred
            w_sepc(sepc);
            if(*args != 0x60 && *args != 0x61)
                w_sstatus(sstatus);
    }
    else if (scause == 0x8000000000000009UL)
    800047a8:	fff00793          	li	a5,-1
    800047ac:	03f79793          	slli	a5,a5,0x3f
    800047b0:	00978793          	addi	a5,a5,9
    800047b4:	44f70663          	beq	a4,a5,80004c00 <_ZN5Riscv20handleSupervisorTrapEv+0x4d8>
        // unexpected trap cause
        // print scause
        // print sepc
        // print stval
    }
    800047b8:	0a813083          	ld	ra,168(sp)
    800047bc:	0a013403          	ld	s0,160(sp)
    800047c0:	09813483          	ld	s1,152(sp)
    800047c4:	09013903          	ld	s2,144(sp)
    800047c8:	0b010113          	addi	sp,sp,176
    800047cc:	00008067          	ret
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800047d0:	00200793          	li	a5,2
    800047d4:	1447b073          	csrc	sip,a5
        TCB::time_slice_counter++;
    800047d8:	00008497          	auipc	s1,0x8
    800047dc:	6904b483          	ld	s1,1680(s1) # 8000ce68 <_GLOBAL_OFFSET_TABLE_+0x58>
    800047e0:	0004b783          	ld	a5,0(s1)
    800047e4:	00178793          	addi	a5,a5,1
    800047e8:	00f4b023          	sd	a5,0(s1)
        TS::decrement_and_remove();
    800047ec:	00001097          	auipc	ra,0x1
    800047f0:	dd0080e7          	jalr	-560(ra) # 800055bc <_ZN2TS20decrement_and_removeEv>
        if (TCB::time_slice_counter >= TCB::running->get_time_slice()) {
    800047f4:	00008797          	auipc	a5,0x8
    800047f8:	67c7b783          	ld	a5,1660(a5) # 8000ce70 <_GLOBAL_OFFSET_TABLE_+0x60>
    800047fc:	0007b783          	ld	a5,0(a5)
    uint64 get_time_slice()const{ return time_slice; }
    80004800:	0507b783          	ld	a5,80(a5)
    80004804:	0004b703          	ld	a4,0(s1)
    80004808:	faf768e3          	bltu	a4,a5,800047b8 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000480c:	141027f3          	csrr	a5,sepc
    80004810:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80004814:	f8843783          	ld	a5,-120(s0)
            uint64 volatile sepc = r_sepc();
    80004818:	f4f43c23          	sd	a5,-168(s0)

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000481c:	100027f3          	csrr	a5,sstatus
    80004820:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80004824:	f8043783          	ld	a5,-128(s0)
            uint64 volatile sstatus = r_sstatus();
    80004828:	f6f43023          	sd	a5,-160(s0)
            TCB::time_slice_counter = 0;
    8000482c:	0004b023          	sd	zero,0(s1)
            TCB::thread_dispatch();
    80004830:	00000097          	auipc	ra,0x0
    80004834:	498080e7          	jalr	1176(ra) # 80004cc8 <_ZN3TCB15thread_dispatchEv>
            w_sstatus(sstatus);
    80004838:	f6043783          	ld	a5,-160(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000483c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80004840:	f5843783          	ld	a5,-168(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80004844:	14179073          	csrw	sepc,a5
}
    80004848:	f71ff06f          	j	800047b8 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000484c:	141027f3          	csrr	a5,sepc
    80004850:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80004854:	f9843783          	ld	a5,-104(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80004858:	00478793          	addi	a5,a5,4
    8000485c:	f6f43423          	sd	a5,-152(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80004860:	100027f3          	csrr	a5,sstatus
    80004864:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80004868:	f9043783          	ld	a5,-112(s0)
        uint64 volatile sstatus = r_sstatus();
    8000486c:	f6f43823          	sd	a5,-144(s0)
            switch(*args){
    80004870:	fa043783          	ld	a5,-96(s0)
    80004874:	07000713          	li	a4,112
    80004878:	02f76463          	bltu	a4,a5,800048a0 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    8000487c:	36078a63          	beqz	a5,80004bf0 <_ZN5Riscv20handleSupervisorTrapEv+0x4c8>
    80004880:	36f76c63          	bltu	a4,a5,80004bf8 <_ZN5Riscv20handleSupervisorTrapEv+0x4d0>
    80004884:	00279793          	slli	a5,a5,0x2
    80004888:	00006717          	auipc	a4,0x6
    8000488c:	9e070713          	addi	a4,a4,-1568 # 8000a268 <CONSOLE_STATUS+0x258>
    80004890:	00e787b3          	add	a5,a5,a4
    80004894:	0007a783          	lw	a5,0(a5)
    80004898:	00e787b3          	add	a5,a5,a4
    8000489c:	00078067          	jr	a5
    800048a0:	11100713          	li	a4,273
    800048a4:	00e79c63          	bne	a5,a4,800048bc <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    void set_finished(bool f){ this->finished = f; }
    800048a8:	fa843783          	ld	a5,-88(s0)
    800048ac:	00100713          	li	a4,1
    800048b0:	02e78423          	sb	a4,40(a5)
                    retVal = 0;
    800048b4:	00000513          	li	a0,0
    800048b8:	0080006f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
            switch(*args){
    800048bc:	00000513          	li	a0,0
            __asm__ volatile("mv a0, %[ret]" : : [ret]"r"(retVal));
    800048c0:	00050513          	mv	a0,a0
            __asm__ volatile("sd a0, 10 * 8(s0)");
    800048c4:	04a43823          	sd	a0,80(s0)
            w_sepc(sepc);
    800048c8:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800048cc:	14179073          	csrw	sepc,a5
            if(*args != 0x60 && *args != 0x61)
    800048d0:	fa043783          	ld	a5,-96(s0)
    800048d4:	fa078793          	addi	a5,a5,-96
    800048d8:	00100713          	li	a4,1
    800048dc:	ecf77ee3          	bgeu	a4,a5,800047b8 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
                w_sstatus(sstatus);
    800048e0:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800048e4:	10079073          	csrw	sstatus,a5
}
    800048e8:	ed1ff06f          	j	800047b8 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    800048ec:	00008797          	auipc	a5,0x8
    800048f0:	5d47c783          	lbu	a5,1492(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800048f4:	00078e63          	beqz	a5,80004910 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_alloc(*(args + 1)));
    800048f8:	fa843583          	ld	a1,-88(s0)
    800048fc:	00008517          	auipc	a0,0x8
    80004900:	5cc50513          	addi	a0,a0,1484 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80004904:	00001097          	auipc	ra,0x1
    80004908:	998080e7          	jalr	-1640(ra) # 8000529c <_ZN15MemoryAllocator12memory_allocEm>
                    break;
    8000490c:	fb5ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    80004910:	00008617          	auipc	a2,0x8
    80004914:	5b860613          	addi	a2,a2,1464 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80004918:	00008797          	auipc	a5,0x8
    8000491c:	5607b783          	ld	a5,1376(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004920:	0007b703          	ld	a4,0(a5)
    80004924:	00008797          	auipc	a5,0x8
    80004928:	50c7b783          	ld	a5,1292(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000492c:	0007b783          	ld	a5,0(a5)
    80004930:	40f706b3          	sub	a3,a4,a5
    80004934:	0036d693          	srli	a3,a3,0x3
    80004938:	00d787b3          	add	a5,a5,a3
    8000493c:	00178793          	addi	a5,a5,1
    80004940:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80004944:	fff70713          	addi	a4,a4,-1
    80004948:	00e63823          	sd	a4,16(a2)

        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    8000494c:	40f70733          	sub	a4,a4,a5
    80004950:	00675713          	srli	a4,a4,0x6

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80004954:	03f7f693          	andi	a3,a5,63
    80004958:	00068663          	beqz	a3,80004964 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
    8000495c:	04000613          	li	a2,64
    80004960:	40d606b3          	sub	a3,a2,a3
    80004964:	00d787b3          	add	a5,a5,a3
    80004968:	00008697          	auipc	a3,0x8
    8000496c:	56f6b023          	sd	a5,1376(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    80004970:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004974:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004978:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    8000497c:	00100793          	li	a5,1
    80004980:	00008717          	auipc	a4,0x8
    80004984:	54f70023          	sb	a5,1344(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004988:	f71ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    8000498c:	00008797          	auipc	a5,0x8
    80004990:	5347c783          	lbu	a5,1332(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004994:	00078e63          	beqz	a5,800049b0 <_ZN5Riscv20handleSupervisorTrapEv+0x288>
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_free((void*)*(args + 1)));
    80004998:	fa843583          	ld	a1,-88(s0)
    8000499c:	00008517          	auipc	a0,0x8
    800049a0:	52c50513          	addi	a0,a0,1324 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800049a4:	00001097          	auipc	ra,0x1
    800049a8:	9cc080e7          	jalr	-1588(ra) # 80005370 <_ZN15MemoryAllocator11memory_freeEPv>
                    break;
    800049ac:	f15ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    MemoryAllocator(){
    800049b0:	00008617          	auipc	a2,0x8
    800049b4:	51860613          	addi	a2,a2,1304 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800049b8:	00008797          	auipc	a5,0x8
    800049bc:	4c07b783          	ld	a5,1216(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    800049c0:	0007b703          	ld	a4,0(a5)
    800049c4:	00008797          	auipc	a5,0x8
    800049c8:	46c7b783          	ld	a5,1132(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    800049cc:	0007b783          	ld	a5,0(a5)
    800049d0:	40f706b3          	sub	a3,a4,a5
    800049d4:	0036d693          	srli	a3,a3,0x3
    800049d8:	00d787b3          	add	a5,a5,a3
    800049dc:	00178793          	addi	a5,a5,1
    800049e0:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800049e4:	fff70713          	addi	a4,a4,-1
    800049e8:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    800049ec:	40f70733          	sub	a4,a4,a5
    800049f0:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800049f4:	03f7f693          	andi	a3,a5,63
    800049f8:	00068663          	beqz	a3,80004a04 <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
    800049fc:	04000613          	li	a2,64
    80004a00:	40d606b3          	sub	a3,a2,a3
    80004a04:	00d787b3          	add	a5,a5,a3
    80004a08:	00008697          	auipc	a3,0x8
    80004a0c:	4cf6b023          	sd	a5,1216(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80004a10:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004a14:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004a18:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004a1c:	00100793          	li	a5,1
    80004a20:	00008717          	auipc	a4,0x8
    80004a24:	4af70023          	sb	a5,1184(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004a28:	f71ff06f          	j	80004998 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
                    retVal = (uint64)(TCB::thread_create((TCB**)*(args + 1),
    80004a2c:	fd043703          	ld	a4,-48(s0)
    80004a30:	00e03733          	snez	a4,a4
    80004a34:	fc043683          	ld	a3,-64(s0)
    80004a38:	fb843603          	ld	a2,-72(s0)
    80004a3c:	fb043583          	ld	a1,-80(s0)
    80004a40:	fa843503          	ld	a0,-88(s0)
    80004a44:	00000097          	auipc	ra,0x0
    80004a48:	508080e7          	jalr	1288(ra) # 80004f4c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b>
                    break;
    80004a4c:	e75ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = TCB::thread_exit();
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	3f4080e7          	jalr	1012(ra) # 80004e44 <_ZN3TCB11thread_exitEv>
                    break;
    80004a58:	e69ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    TCB::thread_dispatch();
    80004a5c:	00000097          	auipc	ra,0x0
    80004a60:	26c080e7          	jalr	620(ra) # 80004cc8 <_ZN3TCB15thread_dispatchEv>
        uint64 retVal = 0;
    80004a64:	00000513          	li	a0,0
    80004a68:	e59ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_open((MySemaphore**)*(args + 1),
    80004a6c:	fb043583          	ld	a1,-80(s0)
    80004a70:	fa843503          	ld	a0,-88(s0)
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	678080e7          	jalr	1656(ra) # 800020ec <_ZN11MySemaphore8sem_openEPPS_m>
                    break;
    80004a7c:	e45ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_close((MySemaphore*)*(args + 1)));
    80004a80:	fa843503          	ld	a0,-88(s0)
    80004a84:	ffffd097          	auipc	ra,0xffffd
    80004a88:	798080e7          	jalr	1944(ra) # 8000221c <_ZN11MySemaphore9sem_closeEPS_>
                    break;
    80004a8c:	e35ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_wait((MySemaphore*)*(args + 1)));
    80004a90:	fa843503          	ld	a0,-88(s0)
    80004a94:	ffffe097          	auipc	ra,0xffffe
    80004a98:	8a0080e7          	jalr	-1888(ra) # 80002334 <_ZN11MySemaphore8sem_waitEPS_>
                    break;
    80004a9c:	e25ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_signal((MySemaphore*)*(args + 1)));
    80004aa0:	fa843503          	ld	a0,-88(s0)
    80004aa4:	ffffe097          	auipc	ra,0xffffe
    80004aa8:	960080e7          	jalr	-1696(ra) # 80002404 <_ZN11MySemaphore10sem_signalEPS_>
                    break;
    80004aac:	e15ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    TCB::time_sleep(*(args + 1));
    80004ab0:	fa843503          	ld	a0,-88(s0)
    80004ab4:	00000097          	auipc	ra,0x0
    80004ab8:	6b4080e7          	jalr	1716(ra) # 80005168 <_ZN3TCB10time_sleepEm>
        uint64 retVal = 0;
    80004abc:	00000513          	li	a0,0
    80004ac0:	e01ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004ac4:	00008797          	auipc	a5,0x8
    80004ac8:	4447c783          	lbu	a5,1092(a5) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    80004acc:	00078c63          	beqz	a5,80004ae4 <_ZN5Riscv20handleSupervisorTrapEv+0x3bc>
                    retVal = Console::getInstance().get_from_input();
    80004ad0:	00008517          	auipc	a0,0x8
    80004ad4:	44050513          	addi	a0,a0,1088 # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    80004ad8:	ffffe097          	auipc	ra,0xffffe
    80004adc:	1a4080e7          	jalr	420(ra) # 80002c7c <_ZN7Console14get_from_inputEv>
                    break;
    80004ae0:	de1ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004ae4:	00008517          	auipc	a0,0x8
    80004ae8:	42c50513          	addi	a0,a0,1068 # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    80004aec:	ffffe097          	auipc	ra,0xffffe
    80004af0:	f90080e7          	jalr	-112(ra) # 80002a7c <_ZN7ConsoleC1Ev>
    80004af4:	00100793          	li	a5,1
    80004af8:	00008717          	auipc	a4,0x8
    80004afc:	40f70823          	sb	a5,1040(a4) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    80004b00:	fd1ff06f          	j	80004ad0 <_ZN5Riscv20handleSupervisorTrapEv+0x3a8>
    80004b04:	00008797          	auipc	a5,0x8
    80004b08:	4047c783          	lbu	a5,1028(a5) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    80004b0c:	02078063          	beqz	a5,80004b2c <_ZN5Riscv20handleSupervisorTrapEv+0x404>
                    Console::getInstance().put_in_output((char)*(args + 1));
    80004b10:	fa844583          	lbu	a1,-88(s0)
    80004b14:	00008517          	auipc	a0,0x8
    80004b18:	3fc50513          	addi	a0,a0,1020 # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    80004b1c:	ffffe097          	auipc	ra,0xffffe
    80004b20:	190080e7          	jalr	400(ra) # 80002cac <_ZN7Console13put_in_outputEc>
        uint64 retVal = 0;
    80004b24:	00000513          	li	a0,0
    80004b28:	d99ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004b2c:	00008517          	auipc	a0,0x8
    80004b30:	3e450513          	addi	a0,a0,996 # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    80004b34:	ffffe097          	auipc	ra,0xffffe
    80004b38:	f48080e7          	jalr	-184(ra) # 80002a7c <_ZN7ConsoleC1Ev>
    80004b3c:	00100793          	li	a5,1
    80004b40:	00008717          	auipc	a4,0x8
    80004b44:	3cf70423          	sb	a5,968(a4) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    80004b48:	fc9ff06f          	j	80004b10 <_ZN5Riscv20handleSupervisorTrapEv+0x3e8>
    80004b4c:	00008797          	auipc	a5,0x8
    80004b50:	3947c783          	lbu	a5,916(a5) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004b54:	02079463          	bnez	a5,80004b7c <_ZN5Riscv20handleSupervisorTrapEv+0x454>
        head = nullptr;
    80004b58:	00008797          	auipc	a5,0x8
    80004b5c:	2f87b783          	ld	a5,760(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004b60:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004b64:	00008797          	auipc	a5,0x8
    80004b68:	2c47b783          	ld	a5,708(a5) # 8000ce28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004b6c:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004b70:	00100793          	li	a5,1
    80004b74:	00008717          	auipc	a4,0x8
    80004b78:	36f70623          	sb	a5,876(a4) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
                    Scheduler::getInstance().put((TCB*)*(args + 1));
    80004b7c:	fa843583          	ld	a1,-88(s0)
    80004b80:	00008517          	auipc	a0,0x8
    80004b84:	36850513          	addi	a0,a0,872 # 8000cee8 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004b88:	00000097          	auipc	ra,0x0
    80004b8c:	6b4080e7          	jalr	1716(ra) # 8000523c <_ZN9Scheduler3putEP3TCB>
        uint64 retVal = 0;
    80004b90:	00000513          	li	a0,0
    80004b94:	d2dff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Riscv::switch_to_user();
    80004b98:	00000097          	auipc	ra,0x0
    80004b9c:	b30080e7          	jalr	-1232(ra) # 800046c8 <_ZN5Riscv14switch_to_userEv>
        uint64 retVal = 0;
    80004ba0:	00000513          	li	a0,0
                    break;
    80004ba4:	d1dff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Riscv::switch_to_priviledged();
    80004ba8:	00000097          	auipc	ra,0x0
    80004bac:	b40080e7          	jalr	-1216(ra) # 800046e8 <_ZN5Riscv21switch_to_priviledgedEv>
        uint64 retVal = 0;
    80004bb0:	00000513          	li	a0,0
                    break;
    80004bb4:	d0dff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    ((TCB*)*(args + 1))->set_periodic(true);
    80004bb8:	fa843583          	ld	a1,-88(s0)
        periodic = b;
    80004bbc:	00100793          	li	a5,1
    80004bc0:	06f580a3          	sb	a5,97(a1)

class periodicThread{

public:
    static periodicThread& getInstance(){
        static periodicThread instance;
    80004bc4:	00008797          	auipc	a5,0x8
    80004bc8:	4cc7c783          	lbu	a5,1228(a5) # 8000d090 <_ZGVZN14periodicThread11getInstanceEvE8instance>
    80004bcc:	00079863          	bnez	a5,80004bdc <_ZN5Riscv20handleSupervisorTrapEv+0x4b4>
    80004bd0:	00100793          	li	a5,1
    80004bd4:	00008717          	auipc	a4,0x8
    80004bd8:	4af70e23          	sb	a5,1212(a4) # 8000d090 <_ZGVZN14periodicThread11getInstanceEvE8instance>
        periodicThread::getInstance().put(this);
    80004bdc:	00008517          	auipc	a0,0x8
    80004be0:	4bc50513          	addi	a0,a0,1212 # 8000d098 <_ZZN14periodicThread11getInstanceEvE8instance>
    80004be4:	ffffe097          	auipc	ra,0xffffe
    80004be8:	880080e7          	jalr	-1920(ra) # 80002464 <_ZN14periodicThread3putEP3TCB>
    }
    80004bec:	cbdff06f          	j	800048a8 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
            switch(*args){
    80004bf0:	00000513          	li	a0,0
    80004bf4:	ccdff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004bf8:	00000513          	li	a0,0
    80004bfc:	cc5ff06f          	j	800048c0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        int irq = plic_claim();
    80004c00:	00003097          	auipc	ra,0x3
    80004c04:	7e4080e7          	jalr	2020(ra) # 800083e4 <plic_claim>
    80004c08:	00050913          	mv	s2,a0
        if(irq == CONSOLE_IRQ){
    80004c0c:	00a00793          	li	a5,10
    80004c10:	04f50e63          	beq	a0,a5,80004c6c <_ZN5Riscv20handleSupervisorTrapEv+0x544>
        plic_complete(irq);
    80004c14:	00090513          	mv	a0,s2
    80004c18:	00004097          	auipc	ra,0x4
    80004c1c:	804080e7          	jalr	-2044(ra) # 8000841c <plic_complete>
    80004c20:	b99ff06f          	j	800047b8 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    80004c24:	00008517          	auipc	a0,0x8
    80004c28:	2ec50513          	addi	a0,a0,748 # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    80004c2c:	ffffe097          	auipc	ra,0xffffe
    80004c30:	e50080e7          	jalr	-432(ra) # 80002a7c <_ZN7ConsoleC1Ev>
    80004c34:	00100793          	li	a5,1
    80004c38:	00008717          	auipc	a4,0x8
    80004c3c:	2cf70823          	sb	a5,720(a4) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
                Console::getInstance().put_in_input(*((char*)CONSOLE_RX_DATA));
    80004c40:	00008797          	auipc	a5,0x8
    80004c44:	1d87b783          	ld	a5,472(a5) # 8000ce18 <_GLOBAL_OFFSET_TABLE_+0x8>
    80004c48:	0007b483          	ld	s1,0(a5)
    80004c4c:	0004c583          	lbu	a1,0(s1)
    80004c50:	00008517          	auipc	a0,0x8
    80004c54:	2c050513          	addi	a0,a0,704 # 8000cf10 <_ZZN7Console11getInstanceEvE8instance>
    80004c58:	ffffe097          	auipc	ra,0xffffe
    80004c5c:	ff8080e7          	jalr	-8(ra) # 80002c50 <_ZN7Console12put_in_inputEc>
                if(*((char*)CONSOLE_RX_DATA) == 107){
    80004c60:	0004c703          	lbu	a4,0(s1)
    80004c64:	06b00793          	li	a5,107
    80004c68:	02f70663          	beq	a4,a5,80004c94 <_ZN5Riscv20handleSupervisorTrapEv+0x56c>
            while(*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80004c6c:	00008797          	auipc	a5,0x8
    80004c70:	1b47b783          	ld	a5,436(a5) # 8000ce20 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004c74:	0007b783          	ld	a5,0(a5)
    80004c78:	0007c783          	lbu	a5,0(a5)
    80004c7c:	0017f793          	andi	a5,a5,1
    80004c80:	f8078ae3          	beqz	a5,80004c14 <_ZN5Riscv20handleSupervisorTrapEv+0x4ec>
    80004c84:	00008797          	auipc	a5,0x8
    80004c88:	2847c783          	lbu	a5,644(a5) # 8000cf08 <_ZGVZN7Console11getInstanceEvE8instance>
    80004c8c:	fa079ae3          	bnez	a5,80004c40 <_ZN5Riscv20handleSupervisorTrapEv+0x518>
    80004c90:	f95ff06f          	j	80004c24 <_ZN5Riscv20handleSupervisorTrapEv+0x4fc>
    80004c94:	00008797          	auipc	a5,0x8
    80004c98:	3fc7c783          	lbu	a5,1020(a5) # 8000d090 <_ZGVZN14periodicThread11getInstanceEvE8instance>
    80004c9c:	00079863          	bnez	a5,80004cac <_ZN5Riscv20handleSupervisorTrapEv+0x584>
    80004ca0:	00100793          	li	a5,1
    80004ca4:	00008717          	auipc	a4,0x8
    80004ca8:	3ef70623          	sb	a5,1004(a4) # 8000d090 <_ZGVZN14periodicThread11getInstanceEvE8instance>
                    TCB* tmp = periodicThread::getInstance().get();
    80004cac:	00008517          	auipc	a0,0x8
    80004cb0:	3ec50513          	addi	a0,a0,1004 # 8000d098 <_ZZN14periodicThread11getInstanceEvE8instance>
    80004cb4:	ffffd097          	auipc	ra,0xffffd
    80004cb8:	7f4080e7          	jalr	2036(ra) # 800024a8 <_ZN14periodicThread3getEv>
    void set_finished(bool f){ this->finished = f; }
    80004cbc:	00100793          	li	a5,1
    80004cc0:	02f50423          	sb	a5,40(a0)
    80004cc4:	fa9ff06f          	j	80004c6c <_ZN5Riscv20handleSupervisorTrapEv+0x544>

0000000080004cc8 <_ZN3TCB15thread_dispatchEv>:
    TCB::thread_dispatch();
    // do ovog dela nece nikad doci jer thread_dispatch nece nit koju gasimo staviti u scheduler
    return -1;
}

void TCB::thread_dispatch() {
    80004cc8:	fe010113          	addi	sp,sp,-32
    80004ccc:	00113c23          	sd	ra,24(sp)
    80004cd0:	00813823          	sd	s0,16(sp)
    80004cd4:	00913423          	sd	s1,8(sp)
    80004cd8:	02010413          	addi	s0,sp,32
//    Scheduler::printScheduler();
    TCB * old = running;
    80004cdc:	00008497          	auipc	s1,0x8
    80004ce0:	3c44b483          	ld	s1,964(s1) # 8000d0a0 <_ZN3TCB7runningE>
    80004ce4:	00008797          	auipc	a5,0x8
    80004ce8:	1fc7c783          	lbu	a5,508(a5) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004cec:	02079463          	bnez	a5,80004d14 <_ZN3TCB15thread_dispatchEv+0x4c>
        head = nullptr;
    80004cf0:	00008797          	auipc	a5,0x8
    80004cf4:	1607b783          	ld	a5,352(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004cf8:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004cfc:	00008797          	auipc	a5,0x8
    80004d00:	12c7b783          	ld	a5,300(a5) # 8000ce28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004d04:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004d08:	00100793          	li	a5,1
    80004d0c:	00008717          	auipc	a4,0x8
    80004d10:	1cf70a23          	sb	a5,468(a4) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    running = Scheduler::getInstance().get();
    80004d14:	00008517          	auipc	a0,0x8
    80004d18:	1d450513          	addi	a0,a0,468 # 8000cee8 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004d1c:	00000097          	auipc	ra,0x0
    80004d20:	4b4080e7          	jalr	1204(ra) # 800051d0 <_ZN9Scheduler3getEv>
    80004d24:	00008797          	auipc	a5,0x8
    80004d28:	36a7be23          	sd	a0,892(a5) # 8000d0a0 <_ZN3TCB7runningE>
    bool is_finished()const{return finished;}
    80004d2c:	0284c783          	lbu	a5,40(s1)
    if (!old->is_finished()) {
    80004d30:	06079a63          	bnez	a5,80004da4 <_ZN3TCB15thread_dispatchEv+0xdc>
    80004d34:	00008797          	auipc	a5,0x8
    80004d38:	1ac7c783          	lbu	a5,428(a5) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004d3c:	02079463          	bnez	a5,80004d64 <_ZN3TCB15thread_dispatchEv+0x9c>
        head = nullptr;
    80004d40:	00008797          	auipc	a5,0x8
    80004d44:	1107b783          	ld	a5,272(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004d48:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004d4c:	00008797          	auipc	a5,0x8
    80004d50:	0dc7b783          	ld	a5,220(a5) # 8000ce28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004d54:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004d58:	00100793          	li	a5,1
    80004d5c:	00008717          	auipc	a4,0x8
    80004d60:	18f70223          	sb	a5,388(a4) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
        Scheduler::getInstance().put(old);
    80004d64:	00048593          	mv	a1,s1
    80004d68:	00008517          	auipc	a0,0x8
    80004d6c:	18050513          	addi	a0,a0,384 # 8000cee8 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004d70:	00000097          	auipc	ra,0x0
    80004d74:	4cc080e7          	jalr	1228(ra) # 8000523c <_ZN9Scheduler3putEP3TCB>
    }
    else{
        TCB::operator delete(old);
    }
//    TCB::time_slice_counter = 0;
    TCB::context_switch(&old->context, &running->context);
    80004d78:	00008597          	auipc	a1,0x8
    80004d7c:	3285b583          	ld	a1,808(a1) # 8000d0a0 <_ZN3TCB7runningE>
    80004d80:	01858593          	addi	a1,a1,24
    80004d84:	01848513          	addi	a0,s1,24
    80004d88:	ffffc097          	auipc	ra,0xffffc
    80004d8c:	4a8080e7          	jalr	1192(ra) # 80001230 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80004d90:	01813083          	ld	ra,24(sp)
    80004d94:	01013403          	ld	s0,16(sp)
    80004d98:	00813483          	ld	s1,8(sp)
    80004d9c:	02010113          	addi	sp,sp,32
    80004da0:	00008067          	ret
    80004da4:	00008797          	auipc	a5,0x8
    80004da8:	11c7c783          	lbu	a5,284(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004dac:	00078e63          	beqz	a5,80004dc8 <_ZN3TCB15thread_dispatchEv+0x100>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80004db0:	00048593          	mv	a1,s1
    80004db4:	00008517          	auipc	a0,0x8
    80004db8:	11450513          	addi	a0,a0,276 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80004dbc:	00000097          	auipc	ra,0x0
    80004dc0:	5b4080e7          	jalr	1460(ra) # 80005370 <_ZN15MemoryAllocator11memory_freeEPv>
    }
    80004dc4:	fb5ff06f          	j	80004d78 <_ZN3TCB15thread_dispatchEv+0xb0>
    MemoryAllocator(){
    80004dc8:	00008617          	auipc	a2,0x8
    80004dcc:	10060613          	addi	a2,a2,256 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80004dd0:	00008797          	auipc	a5,0x8
    80004dd4:	0a87b783          	ld	a5,168(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004dd8:	0007b703          	ld	a4,0(a5)
    80004ddc:	00008797          	auipc	a5,0x8
    80004de0:	0547b783          	ld	a5,84(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004de4:	0007b783          	ld	a5,0(a5)
    80004de8:	40f706b3          	sub	a3,a4,a5
    80004dec:	0036d693          	srli	a3,a3,0x3
    80004df0:	00d787b3          	add	a5,a5,a3
    80004df4:	00178793          	addi	a5,a5,1
    80004df8:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80004dfc:	fff70713          	addi	a4,a4,-1
    80004e00:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80004e04:	40f70733          	sub	a4,a4,a5
    80004e08:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80004e0c:	03f7f693          	andi	a3,a5,63
    80004e10:	00068663          	beqz	a3,80004e1c <_ZN3TCB15thread_dispatchEv+0x154>
    80004e14:	04000613          	li	a2,64
    80004e18:	40d606b3          	sub	a3,a2,a3
    80004e1c:	00d787b3          	add	a5,a5,a3
    80004e20:	00008697          	auipc	a3,0x8
    80004e24:	0af6b423          	sd	a5,168(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80004e28:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004e2c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004e30:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004e34:	00100793          	li	a5,1
    80004e38:	00008717          	auipc	a4,0x8
    80004e3c:	08f70423          	sb	a5,136(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004e40:	f71ff06f          	j	80004db0 <_ZN3TCB15thread_dispatchEv+0xe8>

0000000080004e44 <_ZN3TCB11thread_exitEv>:
int TCB::thread_exit() {
    80004e44:	ff010113          	addi	sp,sp,-16
    80004e48:	00113423          	sd	ra,8(sp)
    80004e4c:	00813023          	sd	s0,0(sp)
    80004e50:	01010413          	addi	s0,sp,16
    void set_finished(bool f){ this->finished = f; }
    80004e54:	00008797          	auipc	a5,0x8
    80004e58:	24c7b783          	ld	a5,588(a5) # 8000d0a0 <_ZN3TCB7runningE>
    80004e5c:	00100713          	li	a4,1
    80004e60:	02e78423          	sb	a4,40(a5)
    TCB::thread_dispatch();
    80004e64:	00000097          	auipc	ra,0x0
    80004e68:	e64080e7          	jalr	-412(ra) # 80004cc8 <_ZN3TCB15thread_dispatchEv>
}
    80004e6c:	fff00513          	li	a0,-1
    80004e70:	00813083          	ld	ra,8(sp)
    80004e74:	00013403          	ld	s0,0(sp)
    80004e78:	01010113          	addi	sp,sp,16
    80004e7c:	00008067          	ret

0000000080004e80 <_ZN3TCB14thread_wrapperEv>:

void TCB::thread_wrapper() {
    80004e80:	ff010113          	addi	sp,sp,-16
    80004e84:	00113423          	sd	ra,8(sp)
    80004e88:	00813023          	sd	s0,0(sp)
    80004e8c:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80004e90:	00000097          	auipc	ra,0x0
    80004e94:	878080e7          	jalr	-1928(ra) # 80004708 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80004e98:	00008797          	auipc	a5,0x8
    80004e9c:	2087b783          	ld	a5,520(a5) # 8000d0a0 <_ZN3TCB7runningE>
    80004ea0:	0007b703          	ld	a4,0(a5)
    80004ea4:	0087b503          	ld	a0,8(a5)
    80004ea8:	000700e7          	jalr	a4
    thread_exit();
    80004eac:	00000097          	auipc	ra,0x0
    80004eb0:	f98080e7          	jalr	-104(ra) # 80004e44 <_ZN3TCB11thread_exitEv>
}
    80004eb4:	00813083          	ld	ra,8(sp)
    80004eb8:	00013403          	ld	s0,0(sp)
    80004ebc:	01010113          	addi	sp,sp,16
    80004ec0:	00008067          	ret

0000000080004ec4 <_ZN3TCBC1EPFvPvES0_S0_b>:

TCB::TCB(Body body_init, void *arg, void *stack_space, bool b) {
    80004ec4:	ff010113          	addi	sp,sp,-16
    80004ec8:	00813423          	sd	s0,8(sp)
    80004ecc:	01010413          	addi	s0,sp,16
    body = body_init;
    80004ed0:	00b53023          	sd	a1,0(a0)
    argument = arg;
    80004ed4:	00c53423          	sd	a2,8(a0)
    stack = (uint64*)stack_space;
    80004ed8:	00d53823          	sd	a3,16(a0)
    context.ra = (uint64) &thread_wrapper;
    80004edc:	00000797          	auipc	a5,0x0
    80004ee0:	fa478793          	addi	a5,a5,-92 # 80004e80 <_ZN3TCB14thread_wrapperEv>
    80004ee4:	00f53c23          	sd	a5,24(a0)
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    80004ee8:	04068e63          	beqz	a3,80004f44 <_ZN3TCBC1EPFvPvES0_S0_b+0x80>
    80004eec:	000017b7          	lui	a5,0x1
    80004ef0:	00f686b3          	add	a3,a3,a5
    80004ef4:	02d53023          	sd	a3,32(a0)
    finished = false;
    80004ef8:	02050423          	sb	zero,40(a0)
    next_scheduler = nullptr;
    80004efc:	02053823          	sd	zero,48(a0)
    next_sleep = nullptr;
    80004f00:	02053c23          	sd	zero,56(a0)
    next_blocked = nullptr;
    80004f04:	04053023          	sd	zero,64(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80004f08:	00200793          	li	a5,2
    80004f0c:	04f53823          	sd	a5,80(a0)
    sleep = 0;
    80004f10:	04053423          	sd	zero,72(a0)
    id = ID++;
    80004f14:	00008697          	auipc	a3,0x8
    80004f18:	18c68693          	addi	a3,a3,396 # 8000d0a0 <_ZN3TCB7runningE>
    80004f1c:	0086b783          	ld	a5,8(a3)
    80004f20:	00178613          	addi	a2,a5,1 # 1001 <_entry-0x7fffefff>
    80004f24:	00c6b423          	sd	a2,8(a3)
    80004f28:	04f53c23          	sd	a5,88(a0)
    flag = b;
    80004f2c:	06e50023          	sb	a4,96(a0)
    periodic = false;
    80004f30:	060500a3          	sb	zero,97(a0)
    next_period = nullptr;
    80004f34:	06053423          	sd	zero,104(a0)
}
    80004f38:	00813403          	ld	s0,8(sp)
    80004f3c:	01010113          	addi	sp,sp,16
    80004f40:	00008067          	ret
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    80004f44:	00000693          	li	a3,0
    80004f48:	fadff06f          	j	80004ef4 <_ZN3TCBC1EPFvPvES0_S0_b+0x30>

0000000080004f4c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b>:
                       ) {
    80004f4c:	fc010113          	addi	sp,sp,-64
    80004f50:	02113c23          	sd	ra,56(sp)
    80004f54:	02813823          	sd	s0,48(sp)
    80004f58:	02913423          	sd	s1,40(sp)
    80004f5c:	03213023          	sd	s2,32(sp)
    80004f60:	01313c23          	sd	s3,24(sp)
    80004f64:	01413823          	sd	s4,16(sp)
    80004f68:	01513423          	sd	s5,8(sp)
    80004f6c:	01613023          	sd	s6,0(sp)
    80004f70:	04010413          	addi	s0,sp,64
    80004f74:	00050493          	mv	s1,a0
    80004f78:	00058913          	mv	s2,a1
    80004f7c:	00060a93          	mv	s5,a2
    80004f80:	00068b13          	mv	s6,a3
    80004f84:	00070a13          	mv	s4,a4
    80004f88:	00008797          	auipc	a5,0x8
    80004f8c:	f387c783          	lbu	a5,-200(a5) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004f90:	0c078263          	beqz	a5,80005054 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x108>
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    80004f94:	00200593          	li	a1,2
    80004f98:	00008517          	auipc	a0,0x8
    80004f9c:	f3050513          	addi	a0,a0,-208 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80004fa0:	00000097          	auipc	ra,0x0
    80004fa4:	2fc080e7          	jalr	764(ra) # 8000529c <_ZN15MemoryAllocator12memory_allocEm>
    80004fa8:	00050993          	mv	s3,a0
    TCB* tmp = (TCB*)new TCB(start_routine, arg, stack_space, flag);
    80004fac:	000a0713          	mv	a4,s4
    80004fb0:	000b0693          	mv	a3,s6
    80004fb4:	000a8613          	mv	a2,s5
    80004fb8:	00090593          	mv	a1,s2
    80004fbc:	00000097          	auipc	ra,0x0
    80004fc0:	f08080e7          	jalr	-248(ra) # 80004ec4 <_ZN3TCBC1EPFvPvES0_S0_b>
    *handle = tmp;
    80004fc4:	0134b023          	sd	s3,0(s1)
    if (start_routine != nullptr && tmp != TCB::idle && flag) {
    80004fc8:	04090c63          	beqz	s2,80005020 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xd4>
    80004fcc:	00008797          	auipc	a5,0x8
    80004fd0:	0e47b783          	ld	a5,228(a5) # 8000d0b0 <_ZN3TCB4idleE>
    80004fd4:	05378663          	beq	a5,s3,80005020 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xd4>
    80004fd8:	040a0463          	beqz	s4,80005020 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xd4>
    80004fdc:	00008797          	auipc	a5,0x8
    80004fe0:	f047c783          	lbu	a5,-252(a5) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004fe4:	02079463          	bnez	a5,8000500c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xc0>
        head = nullptr;
    80004fe8:	00008797          	auipc	a5,0x8
    80004fec:	e687b783          	ld	a5,-408(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004ff0:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004ff4:	00008797          	auipc	a5,0x8
    80004ff8:	e347b783          	ld	a5,-460(a5) # 8000ce28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004ffc:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80005000:	00100793          	li	a5,1
    80005004:	00008717          	auipc	a4,0x8
    80005008:	ecf70e23          	sb	a5,-292(a4) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
        Scheduler::getInstance().put(tmp);
    8000500c:	00098593          	mv	a1,s3
    80005010:	00008517          	auipc	a0,0x8
    80005014:	ed850513          	addi	a0,a0,-296 # 8000cee8 <_ZZN9Scheduler11getInstanceEvE8instance>
    80005018:	00000097          	auipc	ra,0x0
    8000501c:	224080e7          	jalr	548(ra) # 8000523c <_ZN9Scheduler3putEP3TCB>
    if(*handle) return 0;
    80005020:	0004b783          	ld	a5,0(s1)
    80005024:	0a078663          	beqz	a5,800050d0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x184>
    80005028:	00000513          	li	a0,0
}
    8000502c:	03813083          	ld	ra,56(sp)
    80005030:	03013403          	ld	s0,48(sp)
    80005034:	02813483          	ld	s1,40(sp)
    80005038:	02013903          	ld	s2,32(sp)
    8000503c:	01813983          	ld	s3,24(sp)
    80005040:	01013a03          	ld	s4,16(sp)
    80005044:	00813a83          	ld	s5,8(sp)
    80005048:	00013b03          	ld	s6,0(sp)
    8000504c:	04010113          	addi	sp,sp,64
    80005050:	00008067          	ret
    MemoryAllocator(){
    80005054:	00008617          	auipc	a2,0x8
    80005058:	e7460613          	addi	a2,a2,-396 # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    8000505c:	00008797          	auipc	a5,0x8
    80005060:	e1c7b783          	ld	a5,-484(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005064:	0007b703          	ld	a4,0(a5)
    80005068:	00008797          	auipc	a5,0x8
    8000506c:	dc87b783          	ld	a5,-568(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005070:	0007b783          	ld	a5,0(a5)
    80005074:	40f706b3          	sub	a3,a4,a5
    80005078:	0036d693          	srli	a3,a3,0x3
    8000507c:	00d787b3          	add	a5,a5,a3
    80005080:	00178793          	addi	a5,a5,1
    80005084:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80005088:	fff70713          	addi	a4,a4,-1
    8000508c:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80005090:	40f70733          	sub	a4,a4,a5
    80005094:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80005098:	03f7f693          	andi	a3,a5,63
    8000509c:	00068663          	beqz	a3,800050a8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x15c>
    800050a0:	04000613          	li	a2,64
    800050a4:	40d606b3          	sub	a3,a2,a3
    800050a8:	00d787b3          	add	a5,a5,a3
    800050ac:	00008697          	auipc	a3,0x8
    800050b0:	e0f6be23          	sd	a5,-484(a3) # 8000cec8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    800050b4:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    800050b8:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    800050bc:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    800050c0:	00100793          	li	a5,1
    800050c4:	00008717          	auipc	a4,0x8
    800050c8:	def70e23          	sb	a5,-516(a4) # 8000cec0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800050cc:	ec9ff06f          	j	80004f94 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x48>
    else return -1;
    800050d0:	fff00513          	li	a0,-1
    800050d4:	f59ff06f          	j	8000502c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xe0>

00000000800050d8 <_ZN3TCB5yieldEv>:
    TS::getInstance().put(running);
    TCB::yield();
    return 0;
}

void TCB::yield() {
    800050d8:	fe010113          	addi	sp,sp,-32
    800050dc:	00113c23          	sd	ra,24(sp)
    800050e0:	00813823          	sd	s0,16(sp)
    800050e4:	00913423          	sd	s1,8(sp)
    800050e8:	02010413          	addi	s0,sp,32
    TCB * old = running;
    800050ec:	00008497          	auipc	s1,0x8
    800050f0:	fb44b483          	ld	s1,-76(s1) # 8000d0a0 <_ZN3TCB7runningE>
    800050f4:	00008797          	auipc	a5,0x8
    800050f8:	dec7c783          	lbu	a5,-532(a5) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    800050fc:	02079463          	bnez	a5,80005124 <_ZN3TCB5yieldEv+0x4c>
        head = nullptr;
    80005100:	00008797          	auipc	a5,0x8
    80005104:	d507b783          	ld	a5,-688(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x40>
    80005108:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    8000510c:	00008797          	auipc	a5,0x8
    80005110:	d1c7b783          	ld	a5,-740(a5) # 8000ce28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005114:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80005118:	00100793          	li	a5,1
    8000511c:	00008717          	auipc	a4,0x8
    80005120:	dcf70223          	sb	a5,-572(a4) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    running = Scheduler::getInstance().get();
    80005124:	00008517          	auipc	a0,0x8
    80005128:	dc450513          	addi	a0,a0,-572 # 8000cee8 <_ZZN9Scheduler11getInstanceEvE8instance>
    8000512c:	00000097          	auipc	ra,0x0
    80005130:	0a4080e7          	jalr	164(ra) # 800051d0 <_ZN9Scheduler3getEv>
    80005134:	00008797          	auipc	a5,0x8
    80005138:	f6c78793          	addi	a5,a5,-148 # 8000d0a0 <_ZN3TCB7runningE>
    8000513c:	00a7b023          	sd	a0,0(a5)
    TCB::time_slice_counter = 0;
    80005140:	0007bc23          	sd	zero,24(a5)
    TCB::context_switch(&old->context, &running->context);
    80005144:	01850593          	addi	a1,a0,24
    80005148:	01848513          	addi	a0,s1,24
    8000514c:	ffffc097          	auipc	ra,0xffffc
    80005150:	0e4080e7          	jalr	228(ra) # 80001230 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80005154:	01813083          	ld	ra,24(sp)
    80005158:	01013403          	ld	s0,16(sp)
    8000515c:	00813483          	ld	s1,8(sp)
    80005160:	02010113          	addi	sp,sp,32
    80005164:	00008067          	ret

0000000080005168 <_ZN3TCB10time_sleepEm>:
int TCB::time_sleep(uint64 time) {
    80005168:	ff010113          	addi	sp,sp,-16
    8000516c:	00113423          	sd	ra,8(sp)
    80005170:	00813023          	sd	s0,0(sp)
    80005174:	01010413          	addi	s0,sp,16
    running->set_time_sleep(time);
    80005178:	00008797          	auipc	a5,0x8
    8000517c:	f287b783          	ld	a5,-216(a5) # 8000d0a0 <_ZN3TCB7runningE>
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    80005180:	04a7b423          	sd	a0,72(a5)

class TS{
public:

    static TS& getInstance(){
        static TS instance;
    80005184:	00008717          	auipc	a4,0x8
    80005188:	f3c74703          	lbu	a4,-196(a4) # 8000d0c0 <_ZGVZN2TS11getInstanceEvE8instance>
    8000518c:	00071e63          	bnez	a4,800051a8 <_ZN3TCB10time_sleepEm+0x40>
    static void decrement_and_remove();

//    static void printTS();

private:
    TS(){head = nullptr;}
    80005190:	00008717          	auipc	a4,0x8
    80005194:	ca873703          	ld	a4,-856(a4) # 8000ce38 <_GLOBAL_OFFSET_TABLE_+0x28>
    80005198:	00073023          	sd	zero,0(a4)
        static TS instance;
    8000519c:	00100713          	li	a4,1
    800051a0:	00008697          	auipc	a3,0x8
    800051a4:	f2e68023          	sb	a4,-224(a3) # 8000d0c0 <_ZGVZN2TS11getInstanceEvE8instance>
    TS::getInstance().put(running);
    800051a8:	00078513          	mv	a0,a5
    800051ac:	00000097          	auipc	ra,0x0
    800051b0:	38c080e7          	jalr	908(ra) # 80005538 <_ZN2TS3putEP3TCB>
    TCB::yield();
    800051b4:	00000097          	auipc	ra,0x0
    800051b8:	f24080e7          	jalr	-220(ra) # 800050d8 <_ZN3TCB5yieldEv>
}
    800051bc:	00000513          	li	a0,0
    800051c0:	00813083          	ld	ra,8(sp)
    800051c4:	00013403          	ld	s0,0(sp)
    800051c8:	01010113          	addi	sp,sp,16
    800051cc:	00008067          	ret

00000000800051d0 <_ZN9Scheduler3getEv>:
#include "../h/TCB.hpp"

TCB* Scheduler::head;
TCB* Scheduler::tail;

TCB* Scheduler::get(){
    800051d0:	ff010113          	addi	sp,sp,-16
    800051d4:	00813423          	sd	s0,8(sp)
    800051d8:	01010413          	addi	s0,sp,16
    800051dc:	0200006f          	j	800051fc <_ZN9Scheduler3getEv+0x2c>
    while(head) {
        if (!head) { return TCB::idle; }
        TCB *tmp = head;
        if (head == tail) head = tail = nullptr;
    800051e0:	00008797          	auipc	a5,0x8
    800051e4:	ee878793          	addi	a5,a5,-280 # 8000d0c8 <_ZN9Scheduler4headE>
    800051e8:	0007b423          	sd	zero,8(a5)
    800051ec:	0007b023          	sd	zero,0(a5)
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    800051f0:	02053823          	sd	zero,48(a0)
    bool is_finished()const{return finished;}
    800051f4:	02854783          	lbu	a5,40(a0)
        else head = head->get_next_scheduler();
        tmp->set_next_scheduler(nullptr);
        if(!tmp->is_finished())return tmp;
    800051f8:	02078c63          	beqz	a5,80005230 <_ZN9Scheduler3getEv+0x60>
    while(head) {
    800051fc:	00008517          	auipc	a0,0x8
    80005200:	ecc53503          	ld	a0,-308(a0) # 8000d0c8 <_ZN9Scheduler4headE>
    80005204:	02050063          	beqz	a0,80005224 <_ZN9Scheduler3getEv+0x54>
        if (head == tail) head = tail = nullptr;
    80005208:	00008797          	auipc	a5,0x8
    8000520c:	ec87b783          	ld	a5,-312(a5) # 8000d0d0 <_ZN9Scheduler4tailE>
    80005210:	fcf508e3          	beq	a0,a5,800051e0 <_ZN9Scheduler3getEv+0x10>
    TCB* get_next_scheduler()const{ return next_scheduler; }
    80005214:	03053783          	ld	a5,48(a0)
        else head = head->get_next_scheduler();
    80005218:	00008717          	auipc	a4,0x8
    8000521c:	eaf73823          	sd	a5,-336(a4) # 8000d0c8 <_ZN9Scheduler4headE>
    80005220:	fd1ff06f          	j	800051f0 <_ZN9Scheduler3getEv+0x20>
    }
    return TCB::idle;
    80005224:	00008797          	auipc	a5,0x8
    80005228:	c247b783          	ld	a5,-988(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000522c:	0007b503          	ld	a0,0(a5)
}
    80005230:	00813403          	ld	s0,8(sp)
    80005234:	01010113          	addi	sp,sp,16
    80005238:	00008067          	ret

000000008000523c <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB* tcb){
    8000523c:	ff010113          	addi	sp,sp,-16
    80005240:	00813423          	sd	s0,8(sp)
    80005244:	01010413          	addi	s0,sp,16
    if(tcb == TCB::idle)return;
    80005248:	00008797          	auipc	a5,0x8
    8000524c:	c007b783          	ld	a5,-1024(a5) # 8000ce48 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005250:	0007b783          	ld	a5,0(a5)
    80005254:	02b78463          	beq	a5,a1,8000527c <_ZN9Scheduler3putEP3TCB+0x40>
    bool is_finished()const{return finished;}
    80005258:	0285c783          	lbu	a5,40(a1)
    if(tcb->is_finished())return;
    8000525c:	02079063          	bnez	a5,8000527c <_ZN9Scheduler3putEP3TCB+0x40>
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    80005260:	0205b823          	sd	zero,48(a1)
    tcb->set_next_scheduler(nullptr);
    if(tail){
    80005264:	00008797          	auipc	a5,0x8
    80005268:	e6c7b783          	ld	a5,-404(a5) # 8000d0d0 <_ZN9Scheduler4tailE>
    8000526c:	00078e63          	beqz	a5,80005288 <_ZN9Scheduler3putEP3TCB+0x4c>
    80005270:	02b7b823          	sd	a1,48(a5)
        tail->set_next_scheduler(tcb);
        tail = tail->get_next_scheduler();
    80005274:	00008797          	auipc	a5,0x8
    80005278:	e4b7be23          	sd	a1,-420(a5) # 8000d0d0 <_ZN9Scheduler4tailE>
    }
    else head = tail = tcb;
}
    8000527c:	00813403          	ld	s0,8(sp)
    80005280:	01010113          	addi	sp,sp,16
    80005284:	00008067          	ret
    else head = tail = tcb;
    80005288:	00008797          	auipc	a5,0x8
    8000528c:	e4078793          	addi	a5,a5,-448 # 8000d0c8 <_ZN9Scheduler4headE>
    80005290:	00b7b423          	sd	a1,8(a5)
    80005294:	00b7b023          	sd	a1,0(a5)
    80005298:	fe5ff06f          	j	8000527c <_ZN9Scheduler3putEP3TCB+0x40>

000000008000529c <_ZN15MemoryAllocator12memory_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::memory_alloc (size_t size){
    8000529c:	ff010113          	addi	sp,sp,-16
    800052a0:	00813423          	sd	s0,8(sp)
    800052a4:	01010413          	addi	s0,sp,16
    800052a8:	00050713          	mv	a4,a0
    for(FreeMem* cur = fmem_head; cur != nullptr; cur = cur->next   ){ //  cur =  (FreeMem*)(*((char*)cur + 1))
    800052ac:	00053503          	ld	a0,0(a0)
    800052b0:	06050063          	beqz	a0,80005310 <_ZN15MemoryAllocator12memory_allocEm+0x74>
//        printString("velicina u blokovima: ");
//        printInteger(this->fmem_head->size);
//        printString("\n");

        // <= stavljamo jer zelimo size + 1 blok u tom dodatnom cuvam podatak o broju blokova
        if(*((size_t*)cur) <= size) continue;
    800052b4:	00053783          	ld	a5,0(a0)
    800052b8:	06f5f263          	bgeu	a1,a5,8000531c <_ZN15MemoryAllocator12memory_allocEm+0x80>

        // slucaj da imamo jedan blok viska, dodajemo ga jer ne mozemo nista sa njim (trebaju min 2)
        if(cur->size == size + 2){
    800052bc:	00258693          	addi	a3,a1,2
    800052c0:	06d78263          	beq	a5,a3,80005324 <_ZN15MemoryAllocator12memory_allocEm+0x88>

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = size + 1;
        }
        else {
            FreeMem *newfrgm = (FreeMem *) ((char *) cur + (size + 1) * MEM_BLOCK_SIZE);
    800052c4:	00158793          	addi	a5,a1,1
    800052c8:	00679793          	slli	a5,a5,0x6
    800052cc:	00f507b3          	add	a5,a0,a5

            // ubacivanje ostatka adresa u evidenciju slobodnih adresa
            if (cur->prev) cur->prev->next = newfrgm;
    800052d0:	01053683          	ld	a3,16(a0)
    800052d4:	08068a63          	beqz	a3,80005368 <_ZN15MemoryAllocator12memory_allocEm+0xcc>
    800052d8:	00f6b423          	sd	a5,8(a3)
            else fmem_head = newfrgm;
            if (cur->next)cur->next->prev = newfrgm;
    800052dc:	00853703          	ld	a4,8(a0)
    800052e0:	00070463          	beqz	a4,800052e8 <_ZN15MemoryAllocator12memory_allocEm+0x4c>
    800052e4:	00f73823          	sd	a5,16(a4)
            newfrgm->prev = cur->prev;
    800052e8:	01053703          	ld	a4,16(a0)
    800052ec:	00e7b823          	sd	a4,16(a5)
            newfrgm->next = cur->next;
    800052f0:	00853703          	ld	a4,8(a0)
    800052f4:	00e7b423          	sd	a4,8(a5)
            newfrgm->size = cur->size - size - 1;
    800052f8:	00053703          	ld	a4,0(a0)
    800052fc:	40b70733          	sub	a4,a4,a1
    80005300:	fff70713          	addi	a4,a4,-1
    80005304:	00e7b023          	sd	a4,0(a5)

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = size;
    80005308:	00b50023          	sb	a1,0(a0)
        }
        return (void*)((char*)cur + MEM_BLOCK_SIZE);
    8000530c:	04050513          	addi	a0,a0,64
    }
    return nullptr;
}
    80005310:	00813403          	ld	s0,8(sp)
    80005314:	01010113          	addi	sp,sp,16
    80005318:	00008067          	ret
    for(FreeMem* cur = fmem_head; cur != nullptr; cur = cur->next   ){ //  cur =  (FreeMem*)(*((char*)cur + 1))
    8000531c:	00853503          	ld	a0,8(a0)
    80005320:	f91ff06f          	j	800052b0 <_ZN15MemoryAllocator12memory_allocEm+0x14>
            if (cur->prev) {
    80005324:	01053783          	ld	a5,16(a0)
    80005328:	02078463          	beqz	a5,80005350 <_ZN15MemoryAllocator12memory_allocEm+0xb4>
                cur->prev->next = cur->next;
    8000532c:	00853703          	ld	a4,8(a0)
    80005330:	00e7b423          	sd	a4,8(a5)
                if(cur->next)cur->next->prev = cur->prev;
    80005334:	00853783          	ld	a5,8(a0)
    80005338:	00078663          	beqz	a5,80005344 <_ZN15MemoryAllocator12memory_allocEm+0xa8>
    8000533c:	01053703          	ld	a4,16(a0)
    80005340:	00e7b823          	sd	a4,16(a5)
            *((char*)cur) = size + 1;
    80005344:	0015859b          	addiw	a1,a1,1
    80005348:	00b50023          	sb	a1,0(a0)
    8000534c:	fc1ff06f          	j	8000530c <_ZN15MemoryAllocator12memory_allocEm+0x70>
                fmem_head = cur->next;
    80005350:	00853783          	ld	a5,8(a0)
    80005354:	00f73023          	sd	a5,0(a4)
                if(cur->next)cur->next->prev = nullptr;
    80005358:	00853783          	ld	a5,8(a0)
    8000535c:	fe0784e3          	beqz	a5,80005344 <_ZN15MemoryAllocator12memory_allocEm+0xa8>
    80005360:	0007b823          	sd	zero,16(a5)
    80005364:	fe1ff06f          	j	80005344 <_ZN15MemoryAllocator12memory_allocEm+0xa8>
            else fmem_head = newfrgm;
    80005368:	00f73023          	sd	a5,0(a4)
    8000536c:	f71ff06f          	j	800052dc <_ZN15MemoryAllocator12memory_allocEm+0x40>

0000000080005370 <_ZN15MemoryAllocator11memory_freeEPv>:

int MemoryAllocator::memory_free(void * add) {
    80005370:	ff010113          	addi	sp,sp,-16
    80005374:	00813423          	sd	s0,8(sp)
    80005378:	01010413          	addi	s0,sp,16
    // u slucaju prosledjenog nullptr
    if(add == nullptr)return 0;
    8000537c:	16058263          	beqz	a1,800054e0 <_ZN15MemoryAllocator11memory_freeEPv+0x170>
    // dalja obrada
    FreeMem* cur = nullptr;
    char* addr = (char*)add;
    size_t size = *(addr - MEM_BLOCK_SIZE);
    80005380:	fc05c603          	lbu	a2,-64(a1)
    // u slucaju da smo prosledili adresu van heap - a
    if(addr < (char*)HEAP_START_ADDR || addr >= (char*)HEAP_END_ADDR)return -1; // address out of bounds exception
    80005384:	00008797          	auipc	a5,0x8
    80005388:	aac7b783          	ld	a5,-1364(a5) # 8000ce30 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000538c:	0007b783          	ld	a5,0(a5)
    80005390:	14f5ec63          	bltu	a1,a5,800054e8 <_ZN15MemoryAllocator11memory_freeEPv+0x178>
    80005394:	00008797          	auipc	a5,0x8
    80005398:	ae47b783          	ld	a5,-1308(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000539c:	0007b783          	ld	a5,0(a5)
    800053a0:	14f5f863          	bgeu	a1,a5,800054f0 <_ZN15MemoryAllocator11memory_freeEPv+0x180>
    if(!fmem_head || addr < (char*)fmem_head)
    800053a4:	00053683          	ld	a3,0(a0)
    800053a8:	06068c63          	beqz	a3,80005420 <_ZN15MemoryAllocator11memory_freeEPv+0xb0>
    800053ac:	06d5ee63          	bltu	a1,a3,80005428 <_ZN15MemoryAllocator11memory_freeEPv+0xb8>
        cur = nullptr;
    else
        for(cur = fmem_head; cur->next != nullptr && addr > (char*)(cur->next); cur = cur->next);
    800053b0:	00068793          	mv	a5,a3
    800053b4:	00078713          	mv	a4,a5
    800053b8:	0087b783          	ld	a5,8(a5)
    800053bc:	00078463          	beqz	a5,800053c4 <_ZN15MemoryAllocator11memory_freeEPv+0x54>
    800053c0:	feb7eae3          	bltu	a5,a1,800053b4 <_ZN15MemoryAllocator11memory_freeEPv+0x44>

    // Try to append it to the previous free segment cur
    if(cur && (char*)cur + (cur->size + 1) * MEM_BLOCK_SIZE == addr){
    800053c4:	06070463          	beqz	a4,8000542c <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
    800053c8:	00073883          	ld	a7,0(a4)
    800053cc:	00188813          	addi	a6,a7,1
    800053d0:	00681813          	slli	a6,a6,0x6
    800053d4:	01070833          	add	a6,a4,a6
    800053d8:	04b81a63          	bne	a6,a1,8000542c <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
        cur->size += size + 1; // dodajemo jos jedan zbog bloka za evidenciju
    800053dc:	00c886b3          	add	a3,a7,a2
    800053e0:	00168693          	addi	a3,a3,1
    800053e4:	00d73023          	sd	a3,0(a4)
        // Try to join cur with the next free segment
        // ovde je ranije stajalo (cur->size + 1) * MEM_BLOCK_SIZE ali je +1 obrisan jer je taj prostor vec oslobodjen pa gadjamo najnormalnije adresu
        if(cur->next && (char*)cur + cur->size * MEM_BLOCK_SIZE == (char*)(cur->next)){
    800053e8:	00078863          	beqz	a5,800053f8 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
    800053ec:	00669613          	slli	a2,a3,0x6
    800053f0:	00c70633          	add	a2,a4,a2
    800053f4:	00c78663          	beq	a5,a2,80005400 <_ZN15MemoryAllocator11memory_freeEPv+0x90>
            // Remove the cur->next segment
            cur->size += cur->next->size; // dodajemo jos jedan zbog bloka za evidenciju
            cur->next = cur->next->next;
            if(cur->next) cur->next->prev = cur;
        }
        return 0;
    800053f8:	00000513          	li	a0,0
    800053fc:	07c0006f          	j	80005478 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
            cur->size += cur->next->size; // dodajemo jos jedan zbog bloka za evidenciju
    80005400:	0007b603          	ld	a2,0(a5)
    80005404:	00c686b3          	add	a3,a3,a2
    80005408:	00d73023          	sd	a3,0(a4)
            cur->next = cur->next->next;
    8000540c:	0087b783          	ld	a5,8(a5)
    80005410:	00f73423          	sd	a5,8(a4)
            if(cur->next) cur->next->prev = cur;
    80005414:	fe0782e3          	beqz	a5,800053f8 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
    80005418:	00e7b823          	sd	a4,16(a5)
    8000541c:	fddff06f          	j	800053f8 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
        cur = nullptr;
    80005420:	00068713          	mv	a4,a3
    80005424:	0080006f          	j	8000542c <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
    80005428:	00000713          	li	a4,0
    }

    FreeMem* newSeg = (FreeMem*)(addr - MEM_BLOCK_SIZE); // moramo da ga vratimo unazad
    8000542c:	fc058813          	addi	a6,a1,-64

    // Try to append it to the next free segment:
    FreeMem* nxtSeg = cur?cur->next:fmem_head;
    80005430:	00070463          	beqz	a4,80005438 <_ZN15MemoryAllocator11memory_freeEPv+0xc8>
    80005434:	00873683          	ld	a3,8(a4)
    // ovde sa obrisao (size + 1) jer ne vracam ni addr za jedan blok unazad pa se to kompenzuje
    if(nxtSeg && addr + size * MEM_BLOCK_SIZE == (char*)nxtSeg){
    80005438:	00068863          	beqz	a3,80005448 <_ZN15MemoryAllocator11memory_freeEPv+0xd8>
    8000543c:	00661793          	slli	a5,a2,0x6
    80005440:	00f587b3          	add	a5,a1,a5
    80005444:	04d78063          	beq	a5,a3,80005484 <_ZN15MemoryAllocator11memory_freeEPv+0x114>
        else fmem_head = newSeg;
        return 0;
    }

    // No need to join; insert the new segment after cur
    newSeg->size = size + 1;
    80005448:	00160613          	addi	a2,a2,1
    8000544c:	fcc5b023          	sd	a2,-64(a1)
    newSeg->prev = cur;
    80005450:	fce5b823          	sd	a4,-48(a1)
    if(cur)newSeg->next = cur->next;
    80005454:	06070a63          	beqz	a4,800054c8 <_ZN15MemoryAllocator11memory_freeEPv+0x158>
    80005458:	00873783          	ld	a5,8(a4)
    8000545c:	fcf5b423          	sd	a5,-56(a1)
    else newSeg->next = fmem_head;
    if(newSeg->next) newSeg->next->prev = newSeg;
    80005460:	fc85b783          	ld	a5,-56(a1)
    80005464:	00078463          	beqz	a5,8000546c <_ZN15MemoryAllocator11memory_freeEPv+0xfc>
    80005468:	0107b823          	sd	a6,16(a5)
    if(cur)cur->next = newSeg;
    8000546c:	06070463          	beqz	a4,800054d4 <_ZN15MemoryAllocator11memory_freeEPv+0x164>
    80005470:	01073423          	sd	a6,8(a4)
    else fmem_head = newSeg;

    return 0;
    80005474:	00000513          	li	a0,0
}
    80005478:	00813403          	ld	s0,8(sp)
    8000547c:	01010113          	addi	sp,sp,16
    80005480:	00008067          	ret
        newSeg->size = nxtSeg->size + size + 1;
    80005484:	0006b783          	ld	a5,0(a3)
    80005488:	00c78633          	add	a2,a5,a2
    8000548c:	00160613          	addi	a2,a2,1
    80005490:	fcc5b023          	sd	a2,-64(a1)
        newSeg->prev = nxtSeg->prev;
    80005494:	0106b783          	ld	a5,16(a3)
    80005498:	fcf5b823          	sd	a5,-48(a1)
        newSeg->next = nxtSeg->next;
    8000549c:	0086b783          	ld	a5,8(a3)
    800054a0:	fcf5b423          	sd	a5,-56(a1)
        if(nxtSeg->next)nxtSeg->next->prev = newSeg;
    800054a4:	00078463          	beqz	a5,800054ac <_ZN15MemoryAllocator11memory_freeEPv+0x13c>
    800054a8:	0107b823          	sd	a6,16(a5)
        if(nxtSeg->prev)nxtSeg->prev->next = newSeg;
    800054ac:	0106b783          	ld	a5,16(a3)
    800054b0:	00078863          	beqz	a5,800054c0 <_ZN15MemoryAllocator11memory_freeEPv+0x150>
    800054b4:	0107b423          	sd	a6,8(a5)
        return 0;
    800054b8:	00000513          	li	a0,0
    800054bc:	fbdff06f          	j	80005478 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
        else fmem_head = newSeg;
    800054c0:	01053023          	sd	a6,0(a0)
    800054c4:	ff5ff06f          	j	800054b8 <_ZN15MemoryAllocator11memory_freeEPv+0x148>
    else newSeg->next = fmem_head;
    800054c8:	00053783          	ld	a5,0(a0)
    800054cc:	fcf5b423          	sd	a5,-56(a1)
    800054d0:	f91ff06f          	j	80005460 <_ZN15MemoryAllocator11memory_freeEPv+0xf0>
    else fmem_head = newSeg;
    800054d4:	01053023          	sd	a6,0(a0)
    return 0;
    800054d8:	00000513          	li	a0,0
    800054dc:	f9dff06f          	j	80005478 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    if(add == nullptr)return 0;
    800054e0:	00000513          	li	a0,0
    800054e4:	f95ff06f          	j	80005478 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    if(addr < (char*)HEAP_START_ADDR || addr >= (char*)HEAP_END_ADDR)return -1; // address out of bounds exception
    800054e8:	fff00513          	li	a0,-1
    800054ec:	f8dff06f          	j	80005478 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    800054f0:	fff00513          	li	a0,-1
    800054f4:	f85ff06f          	j	80005478 <_ZN15MemoryAllocator11memory_freeEPv+0x108>

00000000800054f8 <_ZN3abi8sys_callEPv>:
#include "../h/abi.hpp"

void* abi::sys_call(void *param) {
    800054f8:	ff010113          	addi	sp,sp,-16
    800054fc:	00813423          	sd	s0,8(sp)
    80005500:	01010413          	addi	s0,sp,16
    __asm__ volatile("ld a1, 8(a0)");
    80005504:	00853583          	ld	a1,8(a0)
    __asm__ volatile("ld a2, 16(a0)");
    80005508:	01053603          	ld	a2,16(a0)
    __asm__ volatile("ld a3, 24(a0)");
    8000550c:	01853683          	ld	a3,24(a0)
    __asm__ volatile("ld a4, 32(a0)");
    80005510:	02053703          	ld	a4,32(a0)
    __asm__ volatile("ld a5, 40(a0)");
    80005514:	02853783          	ld	a5,40(a0)
    __asm__ volatile("ld a6, 48(a0)");
    80005518:	03053803          	ld	a6,48(a0)
    __asm__ volatile("ld a7, 56(a0)");
    8000551c:	03853883          	ld	a7,56(a0)
    __asm__ volatile("ld a0, (a0)");
    80005520:	00053503          	ld	a0,0(a0)

    __asm__ volatile("ecall");
    80005524:	00000073          	ecall
    // u a0 se nalazi povratna vrednost
    uint64 ret0;
    __asm__ volatile("mv %[ret], a0" : [ret]"=r"(ret0));
    80005528:	00050513          	mv	a0,a0
    return (void*)ret0;
}
    8000552c:	00813403          	ld	s0,8(sp)
    80005530:	01010113          	addi	sp,sp,16
    80005534:	00008067          	ret

0000000080005538 <_ZN2TS3putEP3TCB>:
//        tmp = tmp->get_next_sleep();
//    }
//    printString("\n");
//}

void TS::put(TCB *tcb) {
    80005538:	ff010113          	addi	sp,sp,-16
    8000553c:	00813423          	sd	s0,8(sp)
    80005540:	01010413          	addi	s0,sp,16

    if(!head){
    80005544:	00008797          	auipc	a5,0x8
    80005548:	b947b783          	ld	a5,-1132(a5) # 8000d0d8 <_ZN2TS4headE>
    8000554c:	02078463          	beqz	a5,80005574 <_ZN2TS3putEP3TCB+0x3c>
    uint64 get_time_sleep()const{ return sleep; }
    80005550:	04853703          	ld	a4,72(a0)
        head->set_next_sleep(nullptr);
//        printTS();
        return;
    }

    TCB* tmp = head, *prev = nullptr;
    80005554:	00000613          	li	a2,0
    uint64 t_sleep = tcb->get_time_sleep();

    while(tmp && t_sleep >= tmp->get_time_sleep()){
    80005558:	02078663          	beqz	a5,80005584 <_ZN2TS3putEP3TCB+0x4c>
    8000555c:	0487b683          	ld	a3,72(a5)
    80005560:	02d76263          	bltu	a4,a3,80005584 <_ZN2TS3putEP3TCB+0x4c>
        t_sleep -= tmp->get_time_sleep();
    80005564:	40d70733          	sub	a4,a4,a3
        prev = tmp;
    80005568:	00078613          	mv	a2,a5
        tmp = tmp->get_next_sleep();
    8000556c:	0387b783          	ld	a5,56(a5)
    while(tmp && t_sleep >= tmp->get_time_sleep()){
    80005570:	fe9ff06f          	j	80005558 <_ZN2TS3putEP3TCB+0x20>
        head = tcb;
    80005574:	00008797          	auipc	a5,0x8
    80005578:	b6a7b223          	sd	a0,-1180(a5) # 8000d0d8 <_ZN2TS4headE>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    8000557c:	02053c23          	sd	zero,56(a0)
        return;
    80005580:	0240006f          	j	800055a4 <_ZN2TS3putEP3TCB+0x6c>
    80005584:	02f53c23          	sd	a5,56(a0)

    }

    tcb->set_next_sleep(tmp);
    if(tmp)tmp->set_time_sleep(tmp->get_time_sleep() - t_sleep);
    80005588:	00078863          	beqz	a5,80005598 <_ZN2TS3putEP3TCB+0x60>
    uint64 get_time_sleep()const{ return sleep; }
    8000558c:	0487b683          	ld	a3,72(a5)
    80005590:	40e686b3          	sub	a3,a3,a4
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    80005594:	04d7b423          	sd	a3,72(a5)
    80005598:	04e53423          	sd	a4,72(a0)
    tcb->set_time_sleep(t_sleep);
    if(prev){
    8000559c:	00060a63          	beqz	a2,800055b0 <_ZN2TS3putEP3TCB+0x78>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    800055a0:	02a63c23          	sd	a0,56(a2)
//    printTS();

    return;


}
    800055a4:	00813403          	ld	s0,8(sp)
    800055a8:	01010113          	addi	sp,sp,16
    800055ac:	00008067          	ret
        head = tcb;
    800055b0:	00008797          	auipc	a5,0x8
    800055b4:	b2a7b423          	sd	a0,-1240(a5) # 8000d0d8 <_ZN2TS4headE>
    800055b8:	fedff06f          	j	800055a4 <_ZN2TS3putEP3TCB+0x6c>

00000000800055bc <_ZN2TS20decrement_and_removeEv>:

void TS::decrement_and_remove() {

    if(!head)return;
    800055bc:	00008797          	auipc	a5,0x8
    800055c0:	b1c7b783          	ld	a5,-1252(a5) # 8000d0d8 <_ZN2TS4headE>
    800055c4:	0a078863          	beqz	a5,80005674 <_ZN2TS20decrement_and_removeEv+0xb8>
    uint64 get_time_sleep()const{ return sleep; }
    800055c8:	0487b703          	ld	a4,72(a5)

    head->set_time_sleep(head->get_time_sleep() - 1);
    800055cc:	fff70713          	addi	a4,a4,-1
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    800055d0:	04e7b423          	sd	a4,72(a5)
    TCB* tmp;
    while(head && !head->get_time_sleep()){
    800055d4:	00008597          	auipc	a1,0x8
    800055d8:	b045b583          	ld	a1,-1276(a1) # 8000d0d8 <_ZN2TS4headE>
    800055dc:	08058c63          	beqz	a1,80005674 <_ZN2TS20decrement_and_removeEv+0xb8>
    uint64 get_time_sleep()const{ return sleep; }
    800055e0:	0485b783          	ld	a5,72(a1)
    800055e4:	08079863          	bnez	a5,80005674 <_ZN2TS20decrement_and_removeEv+0xb8>
void TS::decrement_and_remove() {
    800055e8:	ff010113          	addi	sp,sp,-16
    800055ec:	00113423          	sd	ra,8(sp)
    800055f0:	00813023          	sd	s0,0(sp)
    800055f4:	01010413          	addi	s0,sp,16
    800055f8:	0280006f          	j	80005620 <_ZN2TS20decrement_and_removeEv+0x64>
        tmp = head;
        head = head->get_next_sleep();
        tmp->set_next_sleep(nullptr);
        Scheduler::getInstance().put(tmp);
    800055fc:	00008517          	auipc	a0,0x8
    80005600:	8ec50513          	addi	a0,a0,-1812 # 8000cee8 <_ZZN9Scheduler11getInstanceEvE8instance>
    80005604:	00000097          	auipc	ra,0x0
    80005608:	c38080e7          	jalr	-968(ra) # 8000523c <_ZN9Scheduler3putEP3TCB>
    while(head && !head->get_time_sleep()){
    8000560c:	00008597          	auipc	a1,0x8
    80005610:	acc5b583          	ld	a1,-1332(a1) # 8000d0d8 <_ZN2TS4headE>
    80005614:	04058863          	beqz	a1,80005664 <_ZN2TS20decrement_and_removeEv+0xa8>
    80005618:	0485b783          	ld	a5,72(a1)
    8000561c:	04079463          	bnez	a5,80005664 <_ZN2TS20decrement_and_removeEv+0xa8>
    TCB* get_next_sleep()const{ return next_sleep; }
    80005620:	0385b783          	ld	a5,56(a1)
        head = head->get_next_sleep();
    80005624:	00008717          	auipc	a4,0x8
    80005628:	aaf73a23          	sd	a5,-1356(a4) # 8000d0d8 <_ZN2TS4headE>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    8000562c:	0205bc23          	sd	zero,56(a1)
    80005630:	00008797          	auipc	a5,0x8
    80005634:	8b07c783          	lbu	a5,-1872(a5) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80005638:	fc0792e3          	bnez	a5,800055fc <_ZN2TS20decrement_and_removeEv+0x40>
        head = nullptr;
    8000563c:	00008797          	auipc	a5,0x8
    80005640:	8147b783          	ld	a5,-2028(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x40>
    80005644:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80005648:	00007797          	auipc	a5,0x7
    8000564c:	7e07b783          	ld	a5,2016(a5) # 8000ce28 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005650:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80005654:	00100793          	li	a5,1
    80005658:	00008717          	auipc	a4,0x8
    8000565c:	88f70423          	sb	a5,-1912(a4) # 8000cee0 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80005660:	f9dff06f          	j	800055fc <_ZN2TS20decrement_and_removeEv+0x40>
    }
    return;

}
    80005664:	00813083          	ld	ra,8(sp)
    80005668:	00013403          	ld	s0,0(sp)
    8000566c:	01010113          	addi	sp,sp,16
    80005670:	00008067          	ret
    80005674:	00008067          	ret

0000000080005678 <_Z9kmem_initPvi>:
#include "../h/SlabI.h"
#include "../h/Buddy.h"
#include "../h/Slab.h"

//
void kmem_init(void *space, int block_num) {
    80005678:	fe010113          	addi	sp,sp,-32
    8000567c:	00113c23          	sd	ra,24(sp)
    80005680:	00813823          	sd	s0,16(sp)
    80005684:	00913423          	sd	s1,8(sp)
    80005688:	01213023          	sd	s2,0(sp)
    8000568c:	02010413          	addi	s0,sp,32
    80005690:	00050913          	mv	s2,a0
    80005694:	00058493          	mv	s1,a1
        static BuddySystem bs;
    80005698:	00008797          	auipc	a5,0x8
    8000569c:	8907c783          	lbu	a5,-1904(a5) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    800056a0:	02078e63          	beqz	a5,800056dc <_Z9kmem_initPvi+0x64>
        if(block_num != 0 && space != nullptr){
    800056a4:	02048063          	beqz	s1,800056c4 <_Z9kmem_initPvi+0x4c>
    800056a8:	00090e63          	beqz	s2,800056c4 <_Z9kmem_initPvi+0x4c>
            bs.buddyHeapStart = (size_t)space;
    800056ac:	00008517          	auipc	a0,0x8
    800056b0:	88450513          	addi	a0,a0,-1916 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    800056b4:	15253023          	sd	s2,320(a0)
            bs.buddyNumOfBlocks = block_num;
    800056b8:	14953823          	sd	s1,336(a0)
            bs.initBuddy();
    800056bc:	ffffd097          	auipc	ra,0xffffd
    800056c0:	950080e7          	jalr	-1712(ra) # 8000200c <_ZN11BuddySystem9initBuddyEv>
    BuddySystem::getInstance(space, block_num);
}
    800056c4:	01813083          	ld	ra,24(sp)
    800056c8:	01013403          	ld	s0,16(sp)
    800056cc:	00813483          	ld	s1,8(sp)
    800056d0:	00013903          	ld	s2,0(sp)
    800056d4:	02010113          	addi	sp,sp,32
    800056d8:	00008067          	ret
        static BuddySystem bs;
    800056dc:	00008517          	auipc	a0,0x8
    800056e0:	85450513          	addi	a0,a0,-1964 # 8000cf30 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    800056e4:	ffffc097          	auipc	ra,0xffffc
    800056e8:	4f0080e7          	jalr	1264(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    800056ec:	00100793          	li	a5,1
    800056f0:	00008717          	auipc	a4,0x8
    800056f4:	82f70c23          	sb	a5,-1992(a4) # 8000cf28 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    800056f8:	fadff06f          	j	800056a4 <_Z9kmem_initPvi+0x2c>

00000000800056fc <_Z17kmem_cache_createPKcmPFvPvES3_>:

kmem_cache_t *kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    800056fc:	fd010113          	addi	sp,sp,-48
    80005700:	02113423          	sd	ra,40(sp)
    80005704:	02813023          	sd	s0,32(sp)
    80005708:	00913c23          	sd	s1,24(sp)
    8000570c:	01213823          	sd	s2,16(sp)
    80005710:	01313423          	sd	s3,8(sp)
    80005714:	01413023          	sd	s4,0(sp)
    80005718:	03010413          	addi	s0,sp,48
    8000571c:	00050493          	mv	s1,a0
    80005720:	00058913          	mv	s2,a1
    80005724:	00060993          	mv	s3,a2
    80005728:	00068a13          	mv	s4,a3
    if(size_start(name)){
    8000572c:	ffffd097          	auipc	ra,0xffffd
    80005730:	dc0080e7          	jalr	-576(ra) # 800024ec <_Z10size_startPKc>
    80005734:	02051e63          	bnez	a0,80005770 <_Z17kmem_cache_createPKcmPFvPvES3_+0x74>
        return nullptr;
    }
    kmem_cache_t* cache = (kmem_cache_t*)kmem_cache_s::kmem_cache_create(name, size, ctor, dtor);
    80005738:	000a0693          	mv	a3,s4
    8000573c:	00098613          	mv	a2,s3
    80005740:	00090593          	mv	a1,s2
    80005744:	00048513          	mv	a0,s1
    80005748:	ffffd097          	auipc	ra,0xffffd
    8000574c:	798080e7          	jalr	1944(ra) # 80002ee0 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>
    if(cache == nullptr)return nullptr;
    return cache;
}
    80005750:	02813083          	ld	ra,40(sp)
    80005754:	02013403          	ld	s0,32(sp)
    80005758:	01813483          	ld	s1,24(sp)
    8000575c:	01013903          	ld	s2,16(sp)
    80005760:	00813983          	ld	s3,8(sp)
    80005764:	00013a03          	ld	s4,0(sp)
    80005768:	03010113          	addi	sp,sp,48
    8000576c:	00008067          	ret
        return nullptr;
    80005770:	00000513          	li	a0,0
    80005774:	fddff06f          	j	80005750 <_Z17kmem_cache_createPKcmPFvPvES3_+0x54>

0000000080005778 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep) {
    80005778:	ff010113          	addi	sp,sp,-16
    8000577c:	00113423          	sd	ra,8(sp)
    80005780:	00813023          	sd	s0,0(sp)
    80005784:	01010413          	addi	s0,sp,16
    return cachep->kmem_cache_shrink();
    80005788:	ffffe097          	auipc	ra,0xffffe
    8000578c:	488080e7          	jalr	1160(ra) # 80003c10 <_ZN12kmem_cache_s17kmem_cache_shrinkEv>
}
    80005790:	0005051b          	sext.w	a0,a0
    80005794:	00813083          	ld	ra,8(sp)
    80005798:	00013403          	ld	s0,0(sp)
    8000579c:	01010113          	addi	sp,sp,16
    800057a0:	00008067          	ret

00000000800057a4 <_Z16kmem_cache_allocP12kmem_cache_s>:

void *kmem_cache_alloc(kmem_cache_t *cachep) {
    800057a4:	fe010113          	addi	sp,sp,-32
    800057a8:	00113c23          	sd	ra,24(sp)
    800057ac:	00813823          	sd	s0,16(sp)
    800057b0:	00913423          	sd	s1,8(sp)
    800057b4:	01213023          	sd	s2,0(sp)
    800057b8:	02010413          	addi	s0,sp,32
    800057bc:	00050913          	mv	s2,a0
    for(int i = 0; i < 2; i++){
    800057c0:	00000493          	li	s1,0
    800057c4:	00100793          	li	a5,1
    800057c8:	0097ce63          	blt	a5,s1,800057e4 <_Z16kmem_cache_allocP12kmem_cache_s+0x40>
        void* tmp = cachep->kmem_cache_alloc();
    800057cc:	00090513          	mv	a0,s2
    800057d0:	ffffe097          	auipc	ra,0xffffe
    800057d4:	20c080e7          	jalr	524(ra) # 800039dc <_ZN12kmem_cache_s16kmem_cache_allocEv>
        if(tmp != nullptr)return tmp;
    800057d8:	00051863          	bnez	a0,800057e8 <_Z16kmem_cache_allocP12kmem_cache_s+0x44>
    for(int i = 0; i < 2; i++){
    800057dc:	0014849b          	addiw	s1,s1,1
    800057e0:	fe5ff06f          	j	800057c4 <_Z16kmem_cache_allocP12kmem_cache_s+0x20>
    }
    // not enough memory, or exception triggered
    return nullptr;
    800057e4:	00000513          	li	a0,0
}
    800057e8:	01813083          	ld	ra,24(sp)
    800057ec:	01013403          	ld	s0,16(sp)
    800057f0:	00813483          	ld	s1,8(sp)
    800057f4:	00013903          	ld	s2,0(sp)
    800057f8:	02010113          	addi	sp,sp,32
    800057fc:	00008067          	ret

0000000080005800 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

int kmem_cache_free(kmem_cache_t *cachep, void *objp) {
    80005800:	ff010113          	addi	sp,sp,-16
    80005804:	00113423          	sd	ra,8(sp)
    80005808:	00813023          	sd	s0,0(sp)
    8000580c:	01010413          	addi	s0,sp,16
    return cachep->kmem_cache_free(objp);
    80005810:	ffffe097          	auipc	ra,0xffffe
    80005814:	938080e7          	jalr	-1736(ra) # 80003148 <_ZN12kmem_cache_s15kmem_cache_freeEPv>
}
    80005818:	00813083          	ld	ra,8(sp)
    8000581c:	00013403          	ld	s0,0(sp)
    80005820:	01010113          	addi	sp,sp,16
    80005824:	00008067          	ret

0000000080005828 <_Z7kmallocm>:

void *kmalloc(size_t size) {
    80005828:	ff010113          	addi	sp,sp,-16
    8000582c:	00113423          	sd	ra,8(sp)
    80005830:	00813023          	sd	s0,0(sp)
    80005834:	01010413          	addi	s0,sp,16
    int ret = kmem_cache_t::is_small_buffer_size_correct(size);
    80005838:	ffffe097          	auipc	ra,0xffffe
    8000583c:	b90080e7          	jalr	-1136(ra) # 800033c8 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm>
    if(!ret)return nullptr;
    80005840:	00050e63          	beqz	a0,8000585c <_Z7kmallocm+0x34>
    return kmem_cache_t::kmalloc(ret);
    80005844:	ffffe097          	auipc	ra,0xffffe
    80005848:	2b8080e7          	jalr	696(ra) # 80003afc <_ZN12kmem_cache_s7kmallocEm>
}
    8000584c:	00813083          	ld	ra,8(sp)
    80005850:	00013403          	ld	s0,0(sp)
    80005854:	01010113          	addi	sp,sp,16
    80005858:	00008067          	ret
    if(!ret)return nullptr;
    8000585c:	00000513          	li	a0,0
    80005860:	fedff06f          	j	8000584c <_Z7kmallocm+0x24>

0000000080005864 <_Z5kfreePKv>:

void kfree(const void *objp) {
    80005864:	ff010113          	addi	sp,sp,-16
    80005868:	00113423          	sd	ra,8(sp)
    8000586c:	00813023          	sd	s0,0(sp)
    80005870:	01010413          	addi	s0,sp,16
    kmem_cache_t::kfree(objp);
    80005874:	ffffe097          	auipc	ra,0xffffe
    80005878:	bb4080e7          	jalr	-1100(ra) # 80003428 <_ZN12kmem_cache_s5kfreeEPKv>
}
    8000587c:	00813083          	ld	ra,8(sp)
    80005880:	00013403          	ld	s0,0(sp)
    80005884:	01010113          	addi	sp,sp,16
    80005888:	00008067          	ret

000000008000588c <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep) {
    8000588c:	ff010113          	addi	sp,sp,-16
    80005890:	00113423          	sd	ra,8(sp)
    80005894:	00813023          	sd	s0,0(sp)
    80005898:	01010413          	addi	s0,sp,16
    8000589c:	00050593          	mv	a1,a0
    cachep->kmem_cache_destroy((size_t)cachep);
    800058a0:	ffffe097          	auipc	ra,0xffffe
    800058a4:	458080e7          	jalr	1112(ra) # 80003cf8 <_ZN12kmem_cache_s18kmem_cache_destroyEm>
}
    800058a8:	00813083          	ld	ra,8(sp)
    800058ac:	00013403          	ld	s0,0(sp)
    800058b0:	01010113          	addi	sp,sp,16
    800058b4:	00008067          	ret

00000000800058b8 <_Z15kmem_cache_infoP12kmem_cache_s>:

void kmem_cache_info(kmem_cache_t *cachep) {
    800058b8:	ff010113          	addi	sp,sp,-16
    800058bc:	00113423          	sd	ra,8(sp)
    800058c0:	00813023          	sd	s0,0(sp)
    800058c4:	01010413          	addi	s0,sp,16
    cachep->kmem_cache_info();
    800058c8:	ffffe097          	auipc	ra,0xffffe
    800058cc:	bc0080e7          	jalr	-1088(ra) # 80003488 <_ZN12kmem_cache_s15kmem_cache_infoEv>
}
    800058d0:	00813083          	ld	ra,8(sp)
    800058d4:	00013403          	ld	s0,0(sp)
    800058d8:	01010113          	addi	sp,sp,16
    800058dc:	00008067          	ret

00000000800058e0 <_Z16print_all_cachesv>:

void print_all_caches() {
    800058e0:	ff010113          	addi	sp,sp,-16
    800058e4:	00113423          	sd	ra,8(sp)
    800058e8:	00813023          	sd	s0,0(sp)
    800058ec:	01010413          	addi	s0,sp,16
    kmem_cache_t::print_info_all_caches();
    800058f0:	ffffe097          	auipc	ra,0xffffe
    800058f4:	fe8080e7          	jalr	-24(ra) # 800038d8 <_ZN12kmem_cache_s21print_info_all_cachesEv>
}
    800058f8:	00813083          	ld	ra,8(sp)
    800058fc:	00013403          	ld	s0,0(sp)
    80005900:	01010113          	addi	sp,sp,16
    80005904:	00008067          	ret

0000000080005908 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005908:	fe010113          	addi	sp,sp,-32
    8000590c:	00113c23          	sd	ra,24(sp)
    80005910:	00813823          	sd	s0,16(sp)
    80005914:	00913423          	sd	s1,8(sp)
    80005918:	02010413          	addi	s0,sp,32
    8000591c:	00050493          	mv	s1,a0
    LOCK();
    80005920:	00100613          	li	a2,1
    80005924:	00000593          	li	a1,0
    80005928:	00007517          	auipc	a0,0x7
    8000592c:	7b850513          	addi	a0,a0,1976 # 8000d0e0 <lockPrint>
    80005930:	ffffb097          	auipc	ra,0xffffb
    80005934:	7c8080e7          	jalr	1992(ra) # 800010f8 <copy_and_swap>
    80005938:	fe0514e3          	bnez	a0,80005920 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000593c:	0004c503          	lbu	a0,0(s1)
    80005940:	00050a63          	beqz	a0,80005954 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80005944:	ffffc097          	auipc	ra,0xffffc
    80005948:	ce8080e7          	jalr	-792(ra) # 8000162c <putc>
        string++;
    8000594c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005950:	fedff06f          	j	8000593c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80005954:	00000613          	li	a2,0
    80005958:	00100593          	li	a1,1
    8000595c:	00007517          	auipc	a0,0x7
    80005960:	78450513          	addi	a0,a0,1924 # 8000d0e0 <lockPrint>
    80005964:	ffffb097          	auipc	ra,0xffffb
    80005968:	794080e7          	jalr	1940(ra) # 800010f8 <copy_and_swap>
    8000596c:	fe0514e3          	bnez	a0,80005954 <_Z11printStringPKc+0x4c>
}
    80005970:	01813083          	ld	ra,24(sp)
    80005974:	01013403          	ld	s0,16(sp)
    80005978:	00813483          	ld	s1,8(sp)
    8000597c:	02010113          	addi	sp,sp,32
    80005980:	00008067          	ret

0000000080005984 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005984:	fd010113          	addi	sp,sp,-48
    80005988:	02113423          	sd	ra,40(sp)
    8000598c:	02813023          	sd	s0,32(sp)
    80005990:	00913c23          	sd	s1,24(sp)
    80005994:	01213823          	sd	s2,16(sp)
    80005998:	01313423          	sd	s3,8(sp)
    8000599c:	01413023          	sd	s4,0(sp)
    800059a0:	03010413          	addi	s0,sp,48
    800059a4:	00050993          	mv	s3,a0
    800059a8:	00058a13          	mv	s4,a1
    LOCK();
    800059ac:	00100613          	li	a2,1
    800059b0:	00000593          	li	a1,0
    800059b4:	00007517          	auipc	a0,0x7
    800059b8:	72c50513          	addi	a0,a0,1836 # 8000d0e0 <lockPrint>
    800059bc:	ffffb097          	auipc	ra,0xffffb
    800059c0:	73c080e7          	jalr	1852(ra) # 800010f8 <copy_and_swap>
    800059c4:	fe0514e3          	bnez	a0,800059ac <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800059c8:	00000913          	li	s2,0
    800059cc:	00090493          	mv	s1,s2
    800059d0:	0019091b          	addiw	s2,s2,1
    800059d4:	03495a63          	bge	s2,s4,80005a08 <_Z9getStringPci+0x84>
        cc = getc();
    800059d8:	ffffc097          	auipc	ra,0xffffc
    800059dc:	c00080e7          	jalr	-1024(ra) # 800015d8 <getc>
        if(cc < 1)
    800059e0:	02050463          	beqz	a0,80005a08 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800059e4:	009984b3          	add	s1,s3,s1
    800059e8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800059ec:	00a00793          	li	a5,10
    800059f0:	00f50a63          	beq	a0,a5,80005a04 <_Z9getStringPci+0x80>
    800059f4:	00d00793          	li	a5,13
    800059f8:	fcf51ae3          	bne	a0,a5,800059cc <_Z9getStringPci+0x48>
        buf[i++] = c;
    800059fc:	00090493          	mv	s1,s2
    80005a00:	0080006f          	j	80005a08 <_Z9getStringPci+0x84>
    80005a04:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005a08:	009984b3          	add	s1,s3,s1
    80005a0c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005a10:	00000613          	li	a2,0
    80005a14:	00100593          	li	a1,1
    80005a18:	00007517          	auipc	a0,0x7
    80005a1c:	6c850513          	addi	a0,a0,1736 # 8000d0e0 <lockPrint>
    80005a20:	ffffb097          	auipc	ra,0xffffb
    80005a24:	6d8080e7          	jalr	1752(ra) # 800010f8 <copy_and_swap>
    80005a28:	fe0514e3          	bnez	a0,80005a10 <_Z9getStringPci+0x8c>
    return buf;
}
    80005a2c:	00098513          	mv	a0,s3
    80005a30:	02813083          	ld	ra,40(sp)
    80005a34:	02013403          	ld	s0,32(sp)
    80005a38:	01813483          	ld	s1,24(sp)
    80005a3c:	01013903          	ld	s2,16(sp)
    80005a40:	00813983          	ld	s3,8(sp)
    80005a44:	00013a03          	ld	s4,0(sp)
    80005a48:	03010113          	addi	sp,sp,48
    80005a4c:	00008067          	ret

0000000080005a50 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005a50:	ff010113          	addi	sp,sp,-16
    80005a54:	00813423          	sd	s0,8(sp)
    80005a58:	01010413          	addi	s0,sp,16
    80005a5c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005a60:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005a64:	0006c603          	lbu	a2,0(a3)
    80005a68:	fd06071b          	addiw	a4,a2,-48
    80005a6c:	0ff77713          	andi	a4,a4,255
    80005a70:	00900793          	li	a5,9
    80005a74:	02e7e063          	bltu	a5,a4,80005a94 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005a78:	0025179b          	slliw	a5,a0,0x2
    80005a7c:	00a787bb          	addw	a5,a5,a0
    80005a80:	0017979b          	slliw	a5,a5,0x1
    80005a84:	00168693          	addi	a3,a3,1
    80005a88:	00c787bb          	addw	a5,a5,a2
    80005a8c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005a90:	fd5ff06f          	j	80005a64 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005a94:	00813403          	ld	s0,8(sp)
    80005a98:	01010113          	addi	sp,sp,16
    80005a9c:	00008067          	ret

0000000080005aa0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005aa0:	fc010113          	addi	sp,sp,-64
    80005aa4:	02113c23          	sd	ra,56(sp)
    80005aa8:	02813823          	sd	s0,48(sp)
    80005aac:	02913423          	sd	s1,40(sp)
    80005ab0:	03213023          	sd	s2,32(sp)
    80005ab4:	01313c23          	sd	s3,24(sp)
    80005ab8:	04010413          	addi	s0,sp,64
    80005abc:	00050493          	mv	s1,a0
    80005ac0:	00058913          	mv	s2,a1
    80005ac4:	00060993          	mv	s3,a2
    LOCK();
    80005ac8:	00100613          	li	a2,1
    80005acc:	00000593          	li	a1,0
    80005ad0:	00007517          	auipc	a0,0x7
    80005ad4:	61050513          	addi	a0,a0,1552 # 8000d0e0 <lockPrint>
    80005ad8:	ffffb097          	auipc	ra,0xffffb
    80005adc:	620080e7          	jalr	1568(ra) # 800010f8 <copy_and_swap>
    80005ae0:	fe0514e3          	bnez	a0,80005ac8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005ae4:	00098463          	beqz	s3,80005aec <_Z8printIntiii+0x4c>
    80005ae8:	0804c463          	bltz	s1,80005b70 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005aec:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005af0:	00000593          	li	a1,0
    }

    i = 0;
    80005af4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005af8:	0009079b          	sext.w	a5,s2
    80005afc:	0325773b          	remuw	a4,a0,s2
    80005b00:	00048613          	mv	a2,s1
    80005b04:	0014849b          	addiw	s1,s1,1
    80005b08:	02071693          	slli	a3,a4,0x20
    80005b0c:	0206d693          	srli	a3,a3,0x20
    80005b10:	00007717          	auipc	a4,0x7
    80005b14:	1d070713          	addi	a4,a4,464 # 8000cce0 <digits>
    80005b18:	00d70733          	add	a4,a4,a3
    80005b1c:	00074683          	lbu	a3,0(a4)
    80005b20:	fd040713          	addi	a4,s0,-48
    80005b24:	00c70733          	add	a4,a4,a2
    80005b28:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005b2c:	0005071b          	sext.w	a4,a0
    80005b30:	0325553b          	divuw	a0,a0,s2
    80005b34:	fcf772e3          	bgeu	a4,a5,80005af8 <_Z8printIntiii+0x58>
    if(neg)
    80005b38:	00058c63          	beqz	a1,80005b50 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005b3c:	fd040793          	addi	a5,s0,-48
    80005b40:	009784b3          	add	s1,a5,s1
    80005b44:	02d00793          	li	a5,45
    80005b48:	fef48823          	sb	a5,-16(s1)
    80005b4c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005b50:	fff4849b          	addiw	s1,s1,-1
    80005b54:	0204c463          	bltz	s1,80005b7c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005b58:	fd040793          	addi	a5,s0,-48
    80005b5c:	009787b3          	add	a5,a5,s1
    80005b60:	ff07c503          	lbu	a0,-16(a5)
    80005b64:	ffffc097          	auipc	ra,0xffffc
    80005b68:	ac8080e7          	jalr	-1336(ra) # 8000162c <putc>
    80005b6c:	fe5ff06f          	j	80005b50 <_Z8printIntiii+0xb0>
        x = -xx;
    80005b70:	4090053b          	negw	a0,s1
        neg = 1;
    80005b74:	00100593          	li	a1,1
        x = -xx;
    80005b78:	f7dff06f          	j	80005af4 <_Z8printIntiii+0x54>

    UNLOCK();
    80005b7c:	00000613          	li	a2,0
    80005b80:	00100593          	li	a1,1
    80005b84:	00007517          	auipc	a0,0x7
    80005b88:	55c50513          	addi	a0,a0,1372 # 8000d0e0 <lockPrint>
    80005b8c:	ffffb097          	auipc	ra,0xffffb
    80005b90:	56c080e7          	jalr	1388(ra) # 800010f8 <copy_and_swap>
    80005b94:	fe0514e3          	bnez	a0,80005b7c <_Z8printIntiii+0xdc>
    80005b98:	03813083          	ld	ra,56(sp)
    80005b9c:	03013403          	ld	s0,48(sp)
    80005ba0:	02813483          	ld	s1,40(sp)
    80005ba4:	02013903          	ld	s2,32(sp)
    80005ba8:	01813983          	ld	s3,24(sp)
    80005bac:	04010113          	addi	sp,sp,64
    80005bb0:	00008067          	ret

0000000080005bb4 <_ZN9BufferCPPC1Ei>:
#include "../test/buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005bb4:	fd010113          	addi	sp,sp,-48
    80005bb8:	02113423          	sd	ra,40(sp)
    80005bbc:	02813023          	sd	s0,32(sp)
    80005bc0:	00913c23          	sd	s1,24(sp)
    80005bc4:	01213823          	sd	s2,16(sp)
    80005bc8:	01313423          	sd	s3,8(sp)
    80005bcc:	03010413          	addi	s0,sp,48
    80005bd0:	00050493          	mv	s1,a0
    80005bd4:	00058913          	mv	s2,a1
    80005bd8:	0015879b          	addiw	a5,a1,1
    80005bdc:	0007851b          	sext.w	a0,a5
    80005be0:	00f4a023          	sw	a5,0(s1)
    80005be4:	0004a823          	sw	zero,16(s1)
    80005be8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005bec:	00251513          	slli	a0,a0,0x2
    80005bf0:	ffffb097          	auipc	ra,0xffffb
    80005bf4:	654080e7          	jalr	1620(ra) # 80001244 <mem_alloc>
    80005bf8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005bfc:	01000513          	li	a0,16
    80005c00:	ffffe097          	auipc	ra,0xffffe
    80005c04:	584080e7          	jalr	1412(ra) # 80004184 <_Znwm>
    80005c08:	00050993          	mv	s3,a0
    80005c0c:	00000593          	li	a1,0
    80005c10:	fffff097          	auipc	ra,0xfffff
    80005c14:	884080e7          	jalr	-1916(ra) # 80004494 <_ZN9SemaphoreC1Ej>
    80005c18:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005c1c:	01000513          	li	a0,16
    80005c20:	ffffe097          	auipc	ra,0xffffe
    80005c24:	564080e7          	jalr	1380(ra) # 80004184 <_Znwm>
    80005c28:	00050993          	mv	s3,a0
    80005c2c:	00090593          	mv	a1,s2
    80005c30:	fffff097          	auipc	ra,0xfffff
    80005c34:	864080e7          	jalr	-1948(ra) # 80004494 <_ZN9SemaphoreC1Ej>
    80005c38:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005c3c:	01000513          	li	a0,16
    80005c40:	ffffe097          	auipc	ra,0xffffe
    80005c44:	544080e7          	jalr	1348(ra) # 80004184 <_Znwm>
    80005c48:	00050913          	mv	s2,a0
    80005c4c:	00100593          	li	a1,1
    80005c50:	fffff097          	auipc	ra,0xfffff
    80005c54:	844080e7          	jalr	-1980(ra) # 80004494 <_ZN9SemaphoreC1Ej>
    80005c58:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005c5c:	01000513          	li	a0,16
    80005c60:	ffffe097          	auipc	ra,0xffffe
    80005c64:	524080e7          	jalr	1316(ra) # 80004184 <_Znwm>
    80005c68:	00050913          	mv	s2,a0
    80005c6c:	00100593          	li	a1,1
    80005c70:	fffff097          	auipc	ra,0xfffff
    80005c74:	824080e7          	jalr	-2012(ra) # 80004494 <_ZN9SemaphoreC1Ej>
    80005c78:	0324b823          	sd	s2,48(s1)
}
    80005c7c:	02813083          	ld	ra,40(sp)
    80005c80:	02013403          	ld	s0,32(sp)
    80005c84:	01813483          	ld	s1,24(sp)
    80005c88:	01013903          	ld	s2,16(sp)
    80005c8c:	00813983          	ld	s3,8(sp)
    80005c90:	03010113          	addi	sp,sp,48
    80005c94:	00008067          	ret
    80005c98:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005c9c:	00098513          	mv	a0,s3
    80005ca0:	ffffe097          	auipc	ra,0xffffe
    80005ca4:	534080e7          	jalr	1332(ra) # 800041d4 <_ZdlPv>
    80005ca8:	00048513          	mv	a0,s1
    80005cac:	000cc097          	auipc	ra,0xcc
    80005cb0:	a1c080e7          	jalr	-1508(ra) # 800d16c8 <_Unwind_Resume>
    80005cb4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005cb8:	00098513          	mv	a0,s3
    80005cbc:	ffffe097          	auipc	ra,0xffffe
    80005cc0:	518080e7          	jalr	1304(ra) # 800041d4 <_ZdlPv>
    80005cc4:	00048513          	mv	a0,s1
    80005cc8:	000cc097          	auipc	ra,0xcc
    80005ccc:	a00080e7          	jalr	-1536(ra) # 800d16c8 <_Unwind_Resume>
    80005cd0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005cd4:	00090513          	mv	a0,s2
    80005cd8:	ffffe097          	auipc	ra,0xffffe
    80005cdc:	4fc080e7          	jalr	1276(ra) # 800041d4 <_ZdlPv>
    80005ce0:	00048513          	mv	a0,s1
    80005ce4:	000cc097          	auipc	ra,0xcc
    80005ce8:	9e4080e7          	jalr	-1564(ra) # 800d16c8 <_Unwind_Resume>
    80005cec:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005cf0:	00090513          	mv	a0,s2
    80005cf4:	ffffe097          	auipc	ra,0xffffe
    80005cf8:	4e0080e7          	jalr	1248(ra) # 800041d4 <_ZdlPv>
    80005cfc:	00048513          	mv	a0,s1
    80005d00:	000cc097          	auipc	ra,0xcc
    80005d04:	9c8080e7          	jalr	-1592(ra) # 800d16c8 <_Unwind_Resume>

0000000080005d08 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005d08:	fe010113          	addi	sp,sp,-32
    80005d0c:	00113c23          	sd	ra,24(sp)
    80005d10:	00813823          	sd	s0,16(sp)
    80005d14:	00913423          	sd	s1,8(sp)
    80005d18:	01213023          	sd	s2,0(sp)
    80005d1c:	02010413          	addi	s0,sp,32
    80005d20:	00050493          	mv	s1,a0
    80005d24:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005d28:	01853503          	ld	a0,24(a0)
    80005d2c:	ffffe097          	auipc	ra,0xffffe
    80005d30:	7a8080e7          	jalr	1960(ra) # 800044d4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005d34:	0304b503          	ld	a0,48(s1)
    80005d38:	ffffe097          	auipc	ra,0xffffe
    80005d3c:	79c080e7          	jalr	1948(ra) # 800044d4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005d40:	0084b783          	ld	a5,8(s1)
    80005d44:	0144a703          	lw	a4,20(s1)
    80005d48:	00271713          	slli	a4,a4,0x2
    80005d4c:	00e787b3          	add	a5,a5,a4
    80005d50:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005d54:	0144a783          	lw	a5,20(s1)
    80005d58:	0017879b          	addiw	a5,a5,1
    80005d5c:	0004a703          	lw	a4,0(s1)
    80005d60:	02e7e7bb          	remw	a5,a5,a4
    80005d64:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005d68:	0304b503          	ld	a0,48(s1)
    80005d6c:	ffffe097          	auipc	ra,0xffffe
    80005d70:	794080e7          	jalr	1940(ra) # 80004500 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005d74:	0204b503          	ld	a0,32(s1)
    80005d78:	ffffe097          	auipc	ra,0xffffe
    80005d7c:	788080e7          	jalr	1928(ra) # 80004500 <_ZN9Semaphore6signalEv>

}
    80005d80:	01813083          	ld	ra,24(sp)
    80005d84:	01013403          	ld	s0,16(sp)
    80005d88:	00813483          	ld	s1,8(sp)
    80005d8c:	00013903          	ld	s2,0(sp)
    80005d90:	02010113          	addi	sp,sp,32
    80005d94:	00008067          	ret

0000000080005d98 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005d98:	fe010113          	addi	sp,sp,-32
    80005d9c:	00113c23          	sd	ra,24(sp)
    80005da0:	00813823          	sd	s0,16(sp)
    80005da4:	00913423          	sd	s1,8(sp)
    80005da8:	01213023          	sd	s2,0(sp)
    80005dac:	02010413          	addi	s0,sp,32
    80005db0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005db4:	02053503          	ld	a0,32(a0)
    80005db8:	ffffe097          	auipc	ra,0xffffe
    80005dbc:	71c080e7          	jalr	1820(ra) # 800044d4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005dc0:	0284b503          	ld	a0,40(s1)
    80005dc4:	ffffe097          	auipc	ra,0xffffe
    80005dc8:	710080e7          	jalr	1808(ra) # 800044d4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005dcc:	0084b703          	ld	a4,8(s1)
    80005dd0:	0104a783          	lw	a5,16(s1)
    80005dd4:	00279693          	slli	a3,a5,0x2
    80005dd8:	00d70733          	add	a4,a4,a3
    80005ddc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005de0:	0017879b          	addiw	a5,a5,1
    80005de4:	0004a703          	lw	a4,0(s1)
    80005de8:	02e7e7bb          	remw	a5,a5,a4
    80005dec:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005df0:	0284b503          	ld	a0,40(s1)
    80005df4:	ffffe097          	auipc	ra,0xffffe
    80005df8:	70c080e7          	jalr	1804(ra) # 80004500 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005dfc:	0184b503          	ld	a0,24(s1)
    80005e00:	ffffe097          	auipc	ra,0xffffe
    80005e04:	700080e7          	jalr	1792(ra) # 80004500 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005e08:	00090513          	mv	a0,s2
    80005e0c:	01813083          	ld	ra,24(sp)
    80005e10:	01013403          	ld	s0,16(sp)
    80005e14:	00813483          	ld	s1,8(sp)
    80005e18:	00013903          	ld	s2,0(sp)
    80005e1c:	02010113          	addi	sp,sp,32
    80005e20:	00008067          	ret

0000000080005e24 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005e24:	fe010113          	addi	sp,sp,-32
    80005e28:	00113c23          	sd	ra,24(sp)
    80005e2c:	00813823          	sd	s0,16(sp)
    80005e30:	00913423          	sd	s1,8(sp)
    80005e34:	01213023          	sd	s2,0(sp)
    80005e38:	02010413          	addi	s0,sp,32
    80005e3c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005e40:	02853503          	ld	a0,40(a0)
    80005e44:	ffffe097          	auipc	ra,0xffffe
    80005e48:	690080e7          	jalr	1680(ra) # 800044d4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005e4c:	0304b503          	ld	a0,48(s1)
    80005e50:	ffffe097          	auipc	ra,0xffffe
    80005e54:	684080e7          	jalr	1668(ra) # 800044d4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005e58:	0144a783          	lw	a5,20(s1)
    80005e5c:	0104a903          	lw	s2,16(s1)
    80005e60:	0327ce63          	blt	a5,s2,80005e9c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005e64:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005e68:	0304b503          	ld	a0,48(s1)
    80005e6c:	ffffe097          	auipc	ra,0xffffe
    80005e70:	694080e7          	jalr	1684(ra) # 80004500 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005e74:	0284b503          	ld	a0,40(s1)
    80005e78:	ffffe097          	auipc	ra,0xffffe
    80005e7c:	688080e7          	jalr	1672(ra) # 80004500 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005e80:	00090513          	mv	a0,s2
    80005e84:	01813083          	ld	ra,24(sp)
    80005e88:	01013403          	ld	s0,16(sp)
    80005e8c:	00813483          	ld	s1,8(sp)
    80005e90:	00013903          	ld	s2,0(sp)
    80005e94:	02010113          	addi	sp,sp,32
    80005e98:	00008067          	ret
        ret = cap - head + tail;
    80005e9c:	0004a703          	lw	a4,0(s1)
    80005ea0:	4127093b          	subw	s2,a4,s2
    80005ea4:	00f9093b          	addw	s2,s2,a5
    80005ea8:	fc1ff06f          	j	80005e68 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005eac <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005eac:	fe010113          	addi	sp,sp,-32
    80005eb0:	00113c23          	sd	ra,24(sp)
    80005eb4:	00813823          	sd	s0,16(sp)
    80005eb8:	00913423          	sd	s1,8(sp)
    80005ebc:	02010413          	addi	s0,sp,32
    80005ec0:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005ec4:	00a00513          	li	a0,10
    80005ec8:	ffffe097          	auipc	ra,0xffffe
    80005ecc:	68c080e7          	jalr	1676(ra) # 80004554 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005ed0:	00004517          	auipc	a0,0x4
    80005ed4:	56050513          	addi	a0,a0,1376 # 8000a430 <CONSOLE_STATUS+0x420>
    80005ed8:	00000097          	auipc	ra,0x0
    80005edc:	a30080e7          	jalr	-1488(ra) # 80005908 <_Z11printStringPKc>
    while (getCnt()) {
    80005ee0:	00048513          	mv	a0,s1
    80005ee4:	00000097          	auipc	ra,0x0
    80005ee8:	f40080e7          	jalr	-192(ra) # 80005e24 <_ZN9BufferCPP6getCntEv>
    80005eec:	02050c63          	beqz	a0,80005f24 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005ef0:	0084b783          	ld	a5,8(s1)
    80005ef4:	0104a703          	lw	a4,16(s1)
    80005ef8:	00271713          	slli	a4,a4,0x2
    80005efc:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005f00:	0007c503          	lbu	a0,0(a5)
    80005f04:	ffffe097          	auipc	ra,0xffffe
    80005f08:	650080e7          	jalr	1616(ra) # 80004554 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005f0c:	0104a783          	lw	a5,16(s1)
    80005f10:	0017879b          	addiw	a5,a5,1
    80005f14:	0004a703          	lw	a4,0(s1)
    80005f18:	02e7e7bb          	remw	a5,a5,a4
    80005f1c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005f20:	fc1ff06f          	j	80005ee0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005f24:	02100513          	li	a0,33
    80005f28:	ffffe097          	auipc	ra,0xffffe
    80005f2c:	62c080e7          	jalr	1580(ra) # 80004554 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005f30:	00a00513          	li	a0,10
    80005f34:	ffffe097          	auipc	ra,0xffffe
    80005f38:	620080e7          	jalr	1568(ra) # 80004554 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005f3c:	0084b503          	ld	a0,8(s1)
    80005f40:	ffffb097          	auipc	ra,0xffffb
    80005f44:	35c080e7          	jalr	860(ra) # 8000129c <mem_free>
    delete itemAvailable;
    80005f48:	0204b503          	ld	a0,32(s1)
    80005f4c:	00050863          	beqz	a0,80005f5c <_ZN9BufferCPPD1Ev+0xb0>
    80005f50:	00053783          	ld	a5,0(a0)
    80005f54:	0087b783          	ld	a5,8(a5)
    80005f58:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005f5c:	0184b503          	ld	a0,24(s1)
    80005f60:	00050863          	beqz	a0,80005f70 <_ZN9BufferCPPD1Ev+0xc4>
    80005f64:	00053783          	ld	a5,0(a0)
    80005f68:	0087b783          	ld	a5,8(a5)
    80005f6c:	000780e7          	jalr	a5
    delete mutexTail;
    80005f70:	0304b503          	ld	a0,48(s1)
    80005f74:	00050863          	beqz	a0,80005f84 <_ZN9BufferCPPD1Ev+0xd8>
    80005f78:	00053783          	ld	a5,0(a0)
    80005f7c:	0087b783          	ld	a5,8(a5)
    80005f80:	000780e7          	jalr	a5
    delete mutexHead;
    80005f84:	0284b503          	ld	a0,40(s1)
    80005f88:	00050863          	beqz	a0,80005f98 <_ZN9BufferCPPD1Ev+0xec>
    80005f8c:	00053783          	ld	a5,0(a0)
    80005f90:	0087b783          	ld	a5,8(a5)
    80005f94:	000780e7          	jalr	a5
}
    80005f98:	01813083          	ld	ra,24(sp)
    80005f9c:	01013403          	ld	s0,16(sp)
    80005fa0:	00813483          	ld	s1,8(sp)
    80005fa4:	02010113          	addi	sp,sp,32
    80005fa8:	00008067          	ret

0000000080005fac <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    80005fac:	fe010113          	addi	sp,sp,-32
    80005fb0:	00113c23          	sd	ra,24(sp)
    80005fb4:	00813823          	sd	s0,16(sp)
    80005fb8:	00913423          	sd	s1,8(sp)
    80005fbc:	01213023          	sd	s2,0(sp)
    80005fc0:	02010413          	addi	s0,sp,32
    80005fc4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005fc8:	00100793          	li	a5,1
    80005fcc:	02a7f863          	bgeu	a5,a0,80005ffc <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005fd0:	00a00793          	li	a5,10
    80005fd4:	02f577b3          	remu	a5,a0,a5
    80005fd8:	02078e63          	beqz	a5,80006014 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005fdc:	fff48513          	addi	a0,s1,-1
    80005fe0:	00000097          	auipc	ra,0x0
    80005fe4:	fcc080e7          	jalr	-52(ra) # 80005fac <_Z9fibonaccim>
    80005fe8:	00050913          	mv	s2,a0
    80005fec:	ffe48513          	addi	a0,s1,-2
    80005ff0:	00000097          	auipc	ra,0x0
    80005ff4:	fbc080e7          	jalr	-68(ra) # 80005fac <_Z9fibonaccim>
    80005ff8:	00a90533          	add	a0,s2,a0
}
    80005ffc:	01813083          	ld	ra,24(sp)
    80006000:	01013403          	ld	s0,16(sp)
    80006004:	00813483          	ld	s1,8(sp)
    80006008:	00013903          	ld	s2,0(sp)
    8000600c:	02010113          	addi	sp,sp,32
    80006010:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006014:	ffffb097          	auipc	ra,0xffffb
    80006018:	370080e7          	jalr	880(ra) # 80001384 <thread_dispatch>
    8000601c:	fc1ff06f          	j	80005fdc <_Z9fibonaccim+0x30>

0000000080006020 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80006020:	fe010113          	addi	sp,sp,-32
    80006024:	00113c23          	sd	ra,24(sp)
    80006028:	00813823          	sd	s0,16(sp)
    8000602c:	00913423          	sd	s1,8(sp)
    80006030:	01213023          	sd	s2,0(sp)
    80006034:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006038:	00000913          	li	s2,0
    8000603c:	0380006f          	j	80006074 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80006040:	ffffb097          	auipc	ra,0xffffb
    80006044:	344080e7          	jalr	836(ra) # 80001384 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006048:	00148493          	addi	s1,s1,1
    8000604c:	000027b7          	lui	a5,0x2
    80006050:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006054:	0097ee63          	bltu	a5,s1,80006070 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006058:	00000713          	li	a4,0
    8000605c:	000077b7          	lui	a5,0x7
    80006060:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006064:	fce7eee3          	bltu	a5,a4,80006040 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80006068:	00170713          	addi	a4,a4,1
    8000606c:	ff1ff06f          	j	8000605c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006070:	00190913          	addi	s2,s2,1
    80006074:	00900793          	li	a5,9
    80006078:	0527e063          	bltu	a5,s2,800060b8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000607c:	00004517          	auipc	a0,0x4
    80006080:	3cc50513          	addi	a0,a0,972 # 8000a448 <CONSOLE_STATUS+0x438>
    80006084:	00000097          	auipc	ra,0x0
    80006088:	884080e7          	jalr	-1916(ra) # 80005908 <_Z11printStringPKc>
    8000608c:	00000613          	li	a2,0
    80006090:	00a00593          	li	a1,10
    80006094:	0009051b          	sext.w	a0,s2
    80006098:	00000097          	auipc	ra,0x0
    8000609c:	a08080e7          	jalr	-1528(ra) # 80005aa0 <_Z8printIntiii>
    800060a0:	00004517          	auipc	a0,0x4
    800060a4:	1a850513          	addi	a0,a0,424 # 8000a248 <CONSOLE_STATUS+0x238>
    800060a8:	00000097          	auipc	ra,0x0
    800060ac:	860080e7          	jalr	-1952(ra) # 80005908 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800060b0:	00000493          	li	s1,0
    800060b4:	f99ff06f          	j	8000604c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800060b8:	00004517          	auipc	a0,0x4
    800060bc:	39850513          	addi	a0,a0,920 # 8000a450 <CONSOLE_STATUS+0x440>
    800060c0:	00000097          	auipc	ra,0x0
    800060c4:	848080e7          	jalr	-1976(ra) # 80005908 <_Z11printStringPKc>
    finishedA = true;
    800060c8:	00100793          	li	a5,1
    800060cc:	00007717          	auipc	a4,0x7
    800060d0:	00f70e23          	sb	a5,28(a4) # 8000d0e8 <finishedA>
}
    800060d4:	01813083          	ld	ra,24(sp)
    800060d8:	01013403          	ld	s0,16(sp)
    800060dc:	00813483          	ld	s1,8(sp)
    800060e0:	00013903          	ld	s2,0(sp)
    800060e4:	02010113          	addi	sp,sp,32
    800060e8:	00008067          	ret

00000000800060ec <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800060ec:	fe010113          	addi	sp,sp,-32
    800060f0:	00113c23          	sd	ra,24(sp)
    800060f4:	00813823          	sd	s0,16(sp)
    800060f8:	00913423          	sd	s1,8(sp)
    800060fc:	01213023          	sd	s2,0(sp)
    80006100:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006104:	00000913          	li	s2,0
    80006108:	0380006f          	j	80006140 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000610c:	ffffb097          	auipc	ra,0xffffb
    80006110:	278080e7          	jalr	632(ra) # 80001384 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80006114:	00148493          	addi	s1,s1,1
    80006118:	000027b7          	lui	a5,0x2
    8000611c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006120:	0097ee63          	bltu	a5,s1,8000613c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006124:	00000713          	li	a4,0
    80006128:	000077b7          	lui	a5,0x7
    8000612c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006130:	fce7eee3          	bltu	a5,a4,8000610c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80006134:	00170713          	addi	a4,a4,1
    80006138:	ff1ff06f          	j	80006128 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000613c:	00190913          	addi	s2,s2,1
    80006140:	00f00793          	li	a5,15
    80006144:	0527e063          	bltu	a5,s2,80006184 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80006148:	00004517          	auipc	a0,0x4
    8000614c:	31850513          	addi	a0,a0,792 # 8000a460 <CONSOLE_STATUS+0x450>
    80006150:	fffff097          	auipc	ra,0xfffff
    80006154:	7b8080e7          	jalr	1976(ra) # 80005908 <_Z11printStringPKc>
    80006158:	00000613          	li	a2,0
    8000615c:	00a00593          	li	a1,10
    80006160:	0009051b          	sext.w	a0,s2
    80006164:	00000097          	auipc	ra,0x0
    80006168:	93c080e7          	jalr	-1732(ra) # 80005aa0 <_Z8printIntiii>
    8000616c:	00004517          	auipc	a0,0x4
    80006170:	0dc50513          	addi	a0,a0,220 # 8000a248 <CONSOLE_STATUS+0x238>
    80006174:	fffff097          	auipc	ra,0xfffff
    80006178:	794080e7          	jalr	1940(ra) # 80005908 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000617c:	00000493          	li	s1,0
    80006180:	f99ff06f          	j	80006118 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80006184:	00004517          	auipc	a0,0x4
    80006188:	2e450513          	addi	a0,a0,740 # 8000a468 <CONSOLE_STATUS+0x458>
    8000618c:	fffff097          	auipc	ra,0xfffff
    80006190:	77c080e7          	jalr	1916(ra) # 80005908 <_Z11printStringPKc>
    finishedB = true;
    80006194:	00100793          	li	a5,1
    80006198:	00007717          	auipc	a4,0x7
    8000619c:	f4f708a3          	sb	a5,-175(a4) # 8000d0e9 <finishedB>
    thread_dispatch();
    800061a0:	ffffb097          	auipc	ra,0xffffb
    800061a4:	1e4080e7          	jalr	484(ra) # 80001384 <thread_dispatch>
}
    800061a8:	01813083          	ld	ra,24(sp)
    800061ac:	01013403          	ld	s0,16(sp)
    800061b0:	00813483          	ld	s1,8(sp)
    800061b4:	00013903          	ld	s2,0(sp)
    800061b8:	02010113          	addi	sp,sp,32
    800061bc:	00008067          	ret

00000000800061c0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800061c0:	fe010113          	addi	sp,sp,-32
    800061c4:	00113c23          	sd	ra,24(sp)
    800061c8:	00813823          	sd	s0,16(sp)
    800061cc:	00913423          	sd	s1,8(sp)
    800061d0:	01213023          	sd	s2,0(sp)
    800061d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800061d8:	00000493          	li	s1,0
    800061dc:	0400006f          	j	8000621c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800061e0:	00004517          	auipc	a0,0x4
    800061e4:	29850513          	addi	a0,a0,664 # 8000a478 <CONSOLE_STATUS+0x468>
    800061e8:	fffff097          	auipc	ra,0xfffff
    800061ec:	720080e7          	jalr	1824(ra) # 80005908 <_Z11printStringPKc>
    800061f0:	00000613          	li	a2,0
    800061f4:	00a00593          	li	a1,10
    800061f8:	00048513          	mv	a0,s1
    800061fc:	00000097          	auipc	ra,0x0
    80006200:	8a4080e7          	jalr	-1884(ra) # 80005aa0 <_Z8printIntiii>
    80006204:	00004517          	auipc	a0,0x4
    80006208:	04450513          	addi	a0,a0,68 # 8000a248 <CONSOLE_STATUS+0x238>
    8000620c:	fffff097          	auipc	ra,0xfffff
    80006210:	6fc080e7          	jalr	1788(ra) # 80005908 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006214:	0014849b          	addiw	s1,s1,1
    80006218:	0ff4f493          	andi	s1,s1,255
    8000621c:	00200793          	li	a5,2
    80006220:	fc97f0e3          	bgeu	a5,s1,800061e0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80006224:	00004517          	auipc	a0,0x4
    80006228:	25c50513          	addi	a0,a0,604 # 8000a480 <CONSOLE_STATUS+0x470>
    8000622c:	fffff097          	auipc	ra,0xfffff
    80006230:	6dc080e7          	jalr	1756(ra) # 80005908 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006234:	00700313          	li	t1,7
    thread_dispatch();
    80006238:	ffffb097          	auipc	ra,0xffffb
    8000623c:	14c080e7          	jalr	332(ra) # 80001384 <thread_dispatch>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006240:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80006244:	00004517          	auipc	a0,0x4
    80006248:	24c50513          	addi	a0,a0,588 # 8000a490 <CONSOLE_STATUS+0x480>
    8000624c:	fffff097          	auipc	ra,0xfffff
    80006250:	6bc080e7          	jalr	1724(ra) # 80005908 <_Z11printStringPKc>
    80006254:	00000613          	li	a2,0
    80006258:	00a00593          	li	a1,10
    8000625c:	0009051b          	sext.w	a0,s2
    80006260:	00000097          	auipc	ra,0x0
    80006264:	840080e7          	jalr	-1984(ra) # 80005aa0 <_Z8printIntiii>
    80006268:	00004517          	auipc	a0,0x4
    8000626c:	fe050513          	addi	a0,a0,-32 # 8000a248 <CONSOLE_STATUS+0x238>
    80006270:	fffff097          	auipc	ra,0xfffff
    80006274:	698080e7          	jalr	1688(ra) # 80005908 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80006278:	00c00513          	li	a0,12
    8000627c:	00000097          	auipc	ra,0x0
    80006280:	d30080e7          	jalr	-720(ra) # 80005fac <_Z9fibonaccim>
    80006284:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006288:	00004517          	auipc	a0,0x4
    8000628c:	21050513          	addi	a0,a0,528 # 8000a498 <CONSOLE_STATUS+0x488>
    80006290:	fffff097          	auipc	ra,0xfffff
    80006294:	678080e7          	jalr	1656(ra) # 80005908 <_Z11printStringPKc>
    80006298:	00000613          	li	a2,0
    8000629c:	00a00593          	li	a1,10
    800062a0:	0009051b          	sext.w	a0,s2
    800062a4:	fffff097          	auipc	ra,0xfffff
    800062a8:	7fc080e7          	jalr	2044(ra) # 80005aa0 <_Z8printIntiii>
    800062ac:	00004517          	auipc	a0,0x4
    800062b0:	f9c50513          	addi	a0,a0,-100 # 8000a248 <CONSOLE_STATUS+0x238>
    800062b4:	fffff097          	auipc	ra,0xfffff
    800062b8:	654080e7          	jalr	1620(ra) # 80005908 <_Z11printStringPKc>
    800062bc:	0400006f          	j	800062fc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800062c0:	00004517          	auipc	a0,0x4
    800062c4:	1b850513          	addi	a0,a0,440 # 8000a478 <CONSOLE_STATUS+0x468>
    800062c8:	fffff097          	auipc	ra,0xfffff
    800062cc:	640080e7          	jalr	1600(ra) # 80005908 <_Z11printStringPKc>
    800062d0:	00000613          	li	a2,0
    800062d4:	00a00593          	li	a1,10
    800062d8:	00048513          	mv	a0,s1
    800062dc:	fffff097          	auipc	ra,0xfffff
    800062e0:	7c4080e7          	jalr	1988(ra) # 80005aa0 <_Z8printIntiii>
    800062e4:	00004517          	auipc	a0,0x4
    800062e8:	f6450513          	addi	a0,a0,-156 # 8000a248 <CONSOLE_STATUS+0x238>
    800062ec:	fffff097          	auipc	ra,0xfffff
    800062f0:	61c080e7          	jalr	1564(ra) # 80005908 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800062f4:	0014849b          	addiw	s1,s1,1
    800062f8:	0ff4f493          	andi	s1,s1,255
    800062fc:	00500793          	li	a5,5
    80006300:	fc97f0e3          	bgeu	a5,s1,800062c0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80006304:	00004517          	auipc	a0,0x4
    80006308:	14c50513          	addi	a0,a0,332 # 8000a450 <CONSOLE_STATUS+0x440>
    8000630c:	fffff097          	auipc	ra,0xfffff
    80006310:	5fc080e7          	jalr	1532(ra) # 80005908 <_Z11printStringPKc>
    finishedC = true;
    80006314:	00100793          	li	a5,1
    80006318:	00007717          	auipc	a4,0x7
    8000631c:	dcf70923          	sb	a5,-558(a4) # 8000d0ea <finishedC>
    thread_dispatch();
    80006320:	ffffb097          	auipc	ra,0xffffb
    80006324:	064080e7          	jalr	100(ra) # 80001384 <thread_dispatch>
}
    80006328:	01813083          	ld	ra,24(sp)
    8000632c:	01013403          	ld	s0,16(sp)
    80006330:	00813483          	ld	s1,8(sp)
    80006334:	00013903          	ld	s2,0(sp)
    80006338:	02010113          	addi	sp,sp,32
    8000633c:	00008067          	ret

0000000080006340 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80006340:	fe010113          	addi	sp,sp,-32
    80006344:	00113c23          	sd	ra,24(sp)
    80006348:	00813823          	sd	s0,16(sp)
    8000634c:	00913423          	sd	s1,8(sp)
    80006350:	01213023          	sd	s2,0(sp)
    80006354:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006358:	00a00493          	li	s1,10
    8000635c:	0400006f          	j	8000639c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006360:	00004517          	auipc	a0,0x4
    80006364:	14850513          	addi	a0,a0,328 # 8000a4a8 <CONSOLE_STATUS+0x498>
    80006368:	fffff097          	auipc	ra,0xfffff
    8000636c:	5a0080e7          	jalr	1440(ra) # 80005908 <_Z11printStringPKc>
    80006370:	00000613          	li	a2,0
    80006374:	00a00593          	li	a1,10
    80006378:	00048513          	mv	a0,s1
    8000637c:	fffff097          	auipc	ra,0xfffff
    80006380:	724080e7          	jalr	1828(ra) # 80005aa0 <_Z8printIntiii>
    80006384:	00004517          	auipc	a0,0x4
    80006388:	ec450513          	addi	a0,a0,-316 # 8000a248 <CONSOLE_STATUS+0x238>
    8000638c:	fffff097          	auipc	ra,0xfffff
    80006390:	57c080e7          	jalr	1404(ra) # 80005908 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006394:	0014849b          	addiw	s1,s1,1
    80006398:	0ff4f493          	andi	s1,s1,255
    8000639c:	00c00793          	li	a5,12
    800063a0:	fc97f0e3          	bgeu	a5,s1,80006360 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800063a4:	00004517          	auipc	a0,0x4
    800063a8:	10c50513          	addi	a0,a0,268 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    800063ac:	fffff097          	auipc	ra,0xfffff
    800063b0:	55c080e7          	jalr	1372(ra) # 80005908 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800063b4:	00500313          	li	t1,5
    thread_dispatch();
    800063b8:	ffffb097          	auipc	ra,0xffffb
    800063bc:	fcc080e7          	jalr	-52(ra) # 80001384 <thread_dispatch>

    uint64 result = fibonacci(16);
    800063c0:	01000513          	li	a0,16
    800063c4:	00000097          	auipc	ra,0x0
    800063c8:	be8080e7          	jalr	-1048(ra) # 80005fac <_Z9fibonaccim>
    800063cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800063d0:	00004517          	auipc	a0,0x4
    800063d4:	0f050513          	addi	a0,a0,240 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    800063d8:	fffff097          	auipc	ra,0xfffff
    800063dc:	530080e7          	jalr	1328(ra) # 80005908 <_Z11printStringPKc>
    800063e0:	00000613          	li	a2,0
    800063e4:	00a00593          	li	a1,10
    800063e8:	0009051b          	sext.w	a0,s2
    800063ec:	fffff097          	auipc	ra,0xfffff
    800063f0:	6b4080e7          	jalr	1716(ra) # 80005aa0 <_Z8printIntiii>
    800063f4:	00004517          	auipc	a0,0x4
    800063f8:	e5450513          	addi	a0,a0,-428 # 8000a248 <CONSOLE_STATUS+0x238>
    800063fc:	fffff097          	auipc	ra,0xfffff
    80006400:	50c080e7          	jalr	1292(ra) # 80005908 <_Z11printStringPKc>
    80006404:	0400006f          	j	80006444 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006408:	00004517          	auipc	a0,0x4
    8000640c:	0a050513          	addi	a0,a0,160 # 8000a4a8 <CONSOLE_STATUS+0x498>
    80006410:	fffff097          	auipc	ra,0xfffff
    80006414:	4f8080e7          	jalr	1272(ra) # 80005908 <_Z11printStringPKc>
    80006418:	00000613          	li	a2,0
    8000641c:	00a00593          	li	a1,10
    80006420:	00048513          	mv	a0,s1
    80006424:	fffff097          	auipc	ra,0xfffff
    80006428:	67c080e7          	jalr	1660(ra) # 80005aa0 <_Z8printIntiii>
    8000642c:	00004517          	auipc	a0,0x4
    80006430:	e1c50513          	addi	a0,a0,-484 # 8000a248 <CONSOLE_STATUS+0x238>
    80006434:	fffff097          	auipc	ra,0xfffff
    80006438:	4d4080e7          	jalr	1236(ra) # 80005908 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000643c:	0014849b          	addiw	s1,s1,1
    80006440:	0ff4f493          	andi	s1,s1,255
    80006444:	00f00793          	li	a5,15
    80006448:	fc97f0e3          	bgeu	a5,s1,80006408 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000644c:	00004517          	auipc	a0,0x4
    80006450:	08450513          	addi	a0,a0,132 # 8000a4d0 <CONSOLE_STATUS+0x4c0>
    80006454:	fffff097          	auipc	ra,0xfffff
    80006458:	4b4080e7          	jalr	1204(ra) # 80005908 <_Z11printStringPKc>
    finishedD = true;
    8000645c:	00100793          	li	a5,1
    80006460:	00007717          	auipc	a4,0x7
    80006464:	c8f705a3          	sb	a5,-885(a4) # 8000d0eb <finishedD>
    thread_dispatch();
    80006468:	ffffb097          	auipc	ra,0xffffb
    8000646c:	f1c080e7          	jalr	-228(ra) # 80001384 <thread_dispatch>
}
    80006470:	01813083          	ld	ra,24(sp)
    80006474:	01013403          	ld	s0,16(sp)
    80006478:	00813483          	ld	s1,8(sp)
    8000647c:	00013903          	ld	s2,0(sp)
    80006480:	02010113          	addi	sp,sp,32
    80006484:	00008067          	ret

0000000080006488 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80006488:	fc010113          	addi	sp,sp,-64
    8000648c:	02113c23          	sd	ra,56(sp)
    80006490:	02813823          	sd	s0,48(sp)
    80006494:	02913423          	sd	s1,40(sp)
    80006498:	03213023          	sd	s2,32(sp)
    8000649c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800064a0:	01000513          	li	a0,16
    800064a4:	ffffe097          	auipc	ra,0xffffe
    800064a8:	ce0080e7          	jalr	-800(ra) # 80004184 <_Znwm>
    800064ac:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800064b0:	ffffe097          	auipc	ra,0xffffe
    800064b4:	f64080e7          	jalr	-156(ra) # 80004414 <_ZN6ThreadC1Ev>
    800064b8:	00007797          	auipc	a5,0x7
    800064bc:	85078793          	addi	a5,a5,-1968 # 8000cd08 <_ZTV7WorkerA+0x10>
    800064c0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800064c4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800064c8:	00004517          	auipc	a0,0x4
    800064cc:	01850513          	addi	a0,a0,24 # 8000a4e0 <CONSOLE_STATUS+0x4d0>
    800064d0:	fffff097          	auipc	ra,0xfffff
    800064d4:	438080e7          	jalr	1080(ra) # 80005908 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800064d8:	01000513          	li	a0,16
    800064dc:	ffffe097          	auipc	ra,0xffffe
    800064e0:	ca8080e7          	jalr	-856(ra) # 80004184 <_Znwm>
    800064e4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800064e8:	ffffe097          	auipc	ra,0xffffe
    800064ec:	f2c080e7          	jalr	-212(ra) # 80004414 <_ZN6ThreadC1Ev>
    800064f0:	00007797          	auipc	a5,0x7
    800064f4:	84078793          	addi	a5,a5,-1984 # 8000cd30 <_ZTV7WorkerB+0x10>
    800064f8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800064fc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80006500:	00004517          	auipc	a0,0x4
    80006504:	ff850513          	addi	a0,a0,-8 # 8000a4f8 <CONSOLE_STATUS+0x4e8>
    80006508:	fffff097          	auipc	ra,0xfffff
    8000650c:	400080e7          	jalr	1024(ra) # 80005908 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80006510:	01000513          	li	a0,16
    80006514:	ffffe097          	auipc	ra,0xffffe
    80006518:	c70080e7          	jalr	-912(ra) # 80004184 <_Znwm>
    8000651c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80006520:	ffffe097          	auipc	ra,0xffffe
    80006524:	ef4080e7          	jalr	-268(ra) # 80004414 <_ZN6ThreadC1Ev>
    80006528:	00007797          	auipc	a5,0x7
    8000652c:	83078793          	addi	a5,a5,-2000 # 8000cd58 <_ZTV7WorkerC+0x10>
    80006530:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80006534:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80006538:	00004517          	auipc	a0,0x4
    8000653c:	fd850513          	addi	a0,a0,-40 # 8000a510 <CONSOLE_STATUS+0x500>
    80006540:	fffff097          	auipc	ra,0xfffff
    80006544:	3c8080e7          	jalr	968(ra) # 80005908 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80006548:	01000513          	li	a0,16
    8000654c:	ffffe097          	auipc	ra,0xffffe
    80006550:	c38080e7          	jalr	-968(ra) # 80004184 <_Znwm>
    80006554:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80006558:	ffffe097          	auipc	ra,0xffffe
    8000655c:	ebc080e7          	jalr	-324(ra) # 80004414 <_ZN6ThreadC1Ev>
    80006560:	00007797          	auipc	a5,0x7
    80006564:	82078793          	addi	a5,a5,-2016 # 8000cd80 <_ZTV7WorkerD+0x10>
    80006568:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000656c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80006570:	00004517          	auipc	a0,0x4
    80006574:	fb850513          	addi	a0,a0,-72 # 8000a528 <CONSOLE_STATUS+0x518>
    80006578:	fffff097          	auipc	ra,0xfffff
    8000657c:	390080e7          	jalr	912(ra) # 80005908 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80006580:	00000493          	li	s1,0
    80006584:	00300793          	li	a5,3
    80006588:	0297c663          	blt	a5,s1,800065b4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000658c:	00349793          	slli	a5,s1,0x3
    80006590:	fe040713          	addi	a4,s0,-32
    80006594:	00f707b3          	add	a5,a4,a5
    80006598:	fe07b503          	ld	a0,-32(a5)
    8000659c:	ffffe097          	auipc	ra,0xffffe
    800065a0:	da4080e7          	jalr	-604(ra) # 80004340 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800065a4:	0014849b          	addiw	s1,s1,1
    800065a8:	fddff06f          	j	80006584 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800065ac:	ffffe097          	auipc	ra,0xffffe
    800065b0:	dc4080e7          	jalr	-572(ra) # 80004370 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800065b4:	00007797          	auipc	a5,0x7
    800065b8:	b347c783          	lbu	a5,-1228(a5) # 8000d0e8 <finishedA>
    800065bc:	fe0788e3          	beqz	a5,800065ac <_Z20Threads_CPP_API_testv+0x124>
    800065c0:	00007797          	auipc	a5,0x7
    800065c4:	b297c783          	lbu	a5,-1239(a5) # 8000d0e9 <finishedB>
    800065c8:	fe0782e3          	beqz	a5,800065ac <_Z20Threads_CPP_API_testv+0x124>
    800065cc:	00007797          	auipc	a5,0x7
    800065d0:	b1e7c783          	lbu	a5,-1250(a5) # 8000d0ea <finishedC>
    800065d4:	fc078ce3          	beqz	a5,800065ac <_Z20Threads_CPP_API_testv+0x124>
    800065d8:	00007797          	auipc	a5,0x7
    800065dc:	b137c783          	lbu	a5,-1261(a5) # 8000d0eb <finishedD>
    800065e0:	fc0786e3          	beqz	a5,800065ac <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    800065e4:	fc040493          	addi	s1,s0,-64
    800065e8:	0080006f          	j	800065f0 <_Z20Threads_CPP_API_testv+0x168>
    800065ec:	00848493          	addi	s1,s1,8
    800065f0:	fe040793          	addi	a5,s0,-32
    800065f4:	08f48663          	beq	s1,a5,80006680 <_Z20Threads_CPP_API_testv+0x1f8>
    800065f8:	0004b503          	ld	a0,0(s1)
    800065fc:	fe0508e3          	beqz	a0,800065ec <_Z20Threads_CPP_API_testv+0x164>
    80006600:	00053783          	ld	a5,0(a0)
    80006604:	0087b783          	ld	a5,8(a5)
    80006608:	000780e7          	jalr	a5
    8000660c:	fe1ff06f          	j	800065ec <_Z20Threads_CPP_API_testv+0x164>
    80006610:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80006614:	00048513          	mv	a0,s1
    80006618:	ffffe097          	auipc	ra,0xffffe
    8000661c:	bbc080e7          	jalr	-1092(ra) # 800041d4 <_ZdlPv>
    80006620:	00090513          	mv	a0,s2
    80006624:	000cb097          	auipc	ra,0xcb
    80006628:	0a4080e7          	jalr	164(ra) # 800d16c8 <_Unwind_Resume>
    8000662c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80006630:	00048513          	mv	a0,s1
    80006634:	ffffe097          	auipc	ra,0xffffe
    80006638:	ba0080e7          	jalr	-1120(ra) # 800041d4 <_ZdlPv>
    8000663c:	00090513          	mv	a0,s2
    80006640:	000cb097          	auipc	ra,0xcb
    80006644:	088080e7          	jalr	136(ra) # 800d16c8 <_Unwind_Resume>
    80006648:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000664c:	00048513          	mv	a0,s1
    80006650:	ffffe097          	auipc	ra,0xffffe
    80006654:	b84080e7          	jalr	-1148(ra) # 800041d4 <_ZdlPv>
    80006658:	00090513          	mv	a0,s2
    8000665c:	000cb097          	auipc	ra,0xcb
    80006660:	06c080e7          	jalr	108(ra) # 800d16c8 <_Unwind_Resume>
    80006664:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80006668:	00048513          	mv	a0,s1
    8000666c:	ffffe097          	auipc	ra,0xffffe
    80006670:	b68080e7          	jalr	-1176(ra) # 800041d4 <_ZdlPv>
    80006674:	00090513          	mv	a0,s2
    80006678:	000cb097          	auipc	ra,0xcb
    8000667c:	050080e7          	jalr	80(ra) # 800d16c8 <_Unwind_Resume>
}
    80006680:	03813083          	ld	ra,56(sp)
    80006684:	03013403          	ld	s0,48(sp)
    80006688:	02813483          	ld	s1,40(sp)
    8000668c:	02013903          	ld	s2,32(sp)
    80006690:	04010113          	addi	sp,sp,64
    80006694:	00008067          	ret

0000000080006698 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80006698:	fd010113          	addi	sp,sp,-48
    8000669c:	02113423          	sd	ra,40(sp)
    800066a0:	02813023          	sd	s0,32(sp)
    800066a4:	00913c23          	sd	s1,24(sp)
    800066a8:	01213823          	sd	s2,16(sp)
    800066ac:	01313423          	sd	s3,8(sp)
    800066b0:	03010413          	addi	s0,sp,48
    800066b4:	00050993          	mv	s3,a0
    800066b8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800066bc:	00000913          	li	s2,0
    800066c0:	00c0006f          	j	800066cc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800066c4:	ffffe097          	auipc	ra,0xffffe
    800066c8:	cac080e7          	jalr	-852(ra) # 80004370 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800066cc:	ffffb097          	auipc	ra,0xffffb
    800066d0:	f0c080e7          	jalr	-244(ra) # 800015d8 <getc>
    800066d4:	0005059b          	sext.w	a1,a0
    800066d8:	01b00793          	li	a5,27
    800066dc:	02f58a63          	beq	a1,a5,80006710 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800066e0:	0084b503          	ld	a0,8(s1)
    800066e4:	fffff097          	auipc	ra,0xfffff
    800066e8:	624080e7          	jalr	1572(ra) # 80005d08 <_ZN9BufferCPP3putEi>
        i++;
    800066ec:	0019071b          	addiw	a4,s2,1
    800066f0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800066f4:	0004a683          	lw	a3,0(s1)
    800066f8:	0026979b          	slliw	a5,a3,0x2
    800066fc:	00d787bb          	addw	a5,a5,a3
    80006700:	0017979b          	slliw	a5,a5,0x1
    80006704:	02f767bb          	remw	a5,a4,a5
    80006708:	fc0792e3          	bnez	a5,800066cc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000670c:	fb9ff06f          	j	800066c4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80006710:	00100793          	li	a5,1
    80006714:	00007717          	auipc	a4,0x7
    80006718:	9cf72c23          	sw	a5,-1576(a4) # 8000d0ec <threadEnd>
    td->buffer->put('!');
    8000671c:	0109b783          	ld	a5,16(s3)
    80006720:	02100593          	li	a1,33
    80006724:	0087b503          	ld	a0,8(a5)
    80006728:	fffff097          	auipc	ra,0xfffff
    8000672c:	5e0080e7          	jalr	1504(ra) # 80005d08 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80006730:	0104b503          	ld	a0,16(s1)
    80006734:	ffffe097          	auipc	ra,0xffffe
    80006738:	dcc080e7          	jalr	-564(ra) # 80004500 <_ZN9Semaphore6signalEv>
}
    8000673c:	02813083          	ld	ra,40(sp)
    80006740:	02013403          	ld	s0,32(sp)
    80006744:	01813483          	ld	s1,24(sp)
    80006748:	01013903          	ld	s2,16(sp)
    8000674c:	00813983          	ld	s3,8(sp)
    80006750:	03010113          	addi	sp,sp,48
    80006754:	00008067          	ret

0000000080006758 <_ZN8Producer8producerEPv>:
    void run() override {
        producer(td);
    }
};

void Producer::producer(void *arg) {
    80006758:	fe010113          	addi	sp,sp,-32
    8000675c:	00113c23          	sd	ra,24(sp)
    80006760:	00813823          	sd	s0,16(sp)
    80006764:	00913423          	sd	s1,8(sp)
    80006768:	01213023          	sd	s2,0(sp)
    8000676c:	02010413          	addi	s0,sp,32
    80006770:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80006774:	00000913          	li	s2,0
    80006778:	00c0006f          	j	80006784 <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000677c:	ffffe097          	auipc	ra,0xffffe
    80006780:	bf4080e7          	jalr	-1036(ra) # 80004370 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80006784:	00007797          	auipc	a5,0x7
    80006788:	9687a783          	lw	a5,-1688(a5) # 8000d0ec <threadEnd>
    8000678c:	02079e63          	bnez	a5,800067c8 <_ZN8Producer8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80006790:	0004a583          	lw	a1,0(s1)
    80006794:	0305859b          	addiw	a1,a1,48
    80006798:	0084b503          	ld	a0,8(s1)
    8000679c:	fffff097          	auipc	ra,0xfffff
    800067a0:	56c080e7          	jalr	1388(ra) # 80005d08 <_ZN9BufferCPP3putEi>
        i++;
    800067a4:	0019071b          	addiw	a4,s2,1
    800067a8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800067ac:	0004a683          	lw	a3,0(s1)
    800067b0:	0026979b          	slliw	a5,a3,0x2
    800067b4:	00d787bb          	addw	a5,a5,a3
    800067b8:	0017979b          	slliw	a5,a5,0x1
    800067bc:	02f767bb          	remw	a5,a4,a5
    800067c0:	fc0792e3          	bnez	a5,80006784 <_ZN8Producer8producerEPv+0x2c>
    800067c4:	fb9ff06f          	j	8000677c <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800067c8:	0104b503          	ld	a0,16(s1)
    800067cc:	ffffe097          	auipc	ra,0xffffe
    800067d0:	d34080e7          	jalr	-716(ra) # 80004500 <_ZN9Semaphore6signalEv>
}
    800067d4:	01813083          	ld	ra,24(sp)
    800067d8:	01013403          	ld	s0,16(sp)
    800067dc:	00813483          	ld	s1,8(sp)
    800067e0:	00013903          	ld	s2,0(sp)
    800067e4:	02010113          	addi	sp,sp,32
    800067e8:	00008067          	ret

00000000800067ec <_ZN8Consumer8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void Consumer::consumer(void *arg) {
    800067ec:	fd010113          	addi	sp,sp,-48
    800067f0:	02113423          	sd	ra,40(sp)
    800067f4:	02813023          	sd	s0,32(sp)
    800067f8:	00913c23          	sd	s1,24(sp)
    800067fc:	01213823          	sd	s2,16(sp)
    80006800:	01313423          	sd	s3,8(sp)
    80006804:	01413023          	sd	s4,0(sp)
    80006808:	03010413          	addi	s0,sp,48
    8000680c:	00050993          	mv	s3,a0
    80006810:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80006814:	00000a13          	li	s4,0
    80006818:	01c0006f          	j	80006834 <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000681c:	ffffe097          	auipc	ra,0xffffe
    80006820:	b54080e7          	jalr	-1196(ra) # 80004370 <_ZN6Thread8dispatchEv>
    80006824:	0500006f          	j	80006874 <_ZN8Consumer8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80006828:	00a00513          	li	a0,10
    8000682c:	ffffb097          	auipc	ra,0xffffb
    80006830:	e00080e7          	jalr	-512(ra) # 8000162c <putc>
    while (!threadEnd) {
    80006834:	00007797          	auipc	a5,0x7
    80006838:	8b87a783          	lw	a5,-1864(a5) # 8000d0ec <threadEnd>
    8000683c:	06079263          	bnez	a5,800068a0 <_ZN8Consumer8consumerEPv+0xb4>
        int key = data->buffer->get();
    80006840:	00893503          	ld	a0,8(s2)
    80006844:	fffff097          	auipc	ra,0xfffff
    80006848:	554080e7          	jalr	1364(ra) # 80005d98 <_ZN9BufferCPP3getEv>
        i++;
    8000684c:	001a049b          	addiw	s1,s4,1
    80006850:	00048a1b          	sext.w	s4,s1
        putc(key);
    80006854:	0ff57513          	andi	a0,a0,255
    80006858:	ffffb097          	auipc	ra,0xffffb
    8000685c:	dd4080e7          	jalr	-556(ra) # 8000162c <putc>
        if (i % (5 * data->id) == 0) {
    80006860:	00092703          	lw	a4,0(s2)
    80006864:	0027179b          	slliw	a5,a4,0x2
    80006868:	00e787bb          	addw	a5,a5,a4
    8000686c:	02f4e7bb          	remw	a5,s1,a5
    80006870:	fa0786e3          	beqz	a5,8000681c <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    80006874:	05000793          	li	a5,80
    80006878:	02f4e4bb          	remw	s1,s1,a5
    8000687c:	fa049ce3          	bnez	s1,80006834 <_ZN8Consumer8consumerEPv+0x48>
    80006880:	fa9ff06f          	j	80006828 <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80006884:	0109b783          	ld	a5,16(s3)
    80006888:	0087b503          	ld	a0,8(a5)
    8000688c:	fffff097          	auipc	ra,0xfffff
    80006890:	50c080e7          	jalr	1292(ra) # 80005d98 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80006894:	0ff57513          	andi	a0,a0,255
    80006898:	ffffe097          	auipc	ra,0xffffe
    8000689c:	cbc080e7          	jalr	-836(ra) # 80004554 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800068a0:	0109b783          	ld	a5,16(s3)
    800068a4:	0087b503          	ld	a0,8(a5)
    800068a8:	fffff097          	auipc	ra,0xfffff
    800068ac:	57c080e7          	jalr	1404(ra) # 80005e24 <_ZN9BufferCPP6getCntEv>
    800068b0:	fca04ae3          	bgtz	a0,80006884 <_ZN8Consumer8consumerEPv+0x98>
    }

    data->wait->signal();
    800068b4:	01093503          	ld	a0,16(s2)
    800068b8:	ffffe097          	auipc	ra,0xffffe
    800068bc:	c48080e7          	jalr	-952(ra) # 80004500 <_ZN9Semaphore6signalEv>
}
    800068c0:	02813083          	ld	ra,40(sp)
    800068c4:	02013403          	ld	s0,32(sp)
    800068c8:	01813483          	ld	s1,24(sp)
    800068cc:	01013903          	ld	s2,16(sp)
    800068d0:	00813983          	ld	s3,8(sp)
    800068d4:	00013a03          	ld	s4,0(sp)
    800068d8:	03010113          	addi	sp,sp,48
    800068dc:	00008067          	ret

00000000800068e0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800068e0:	f8010113          	addi	sp,sp,-128
    800068e4:	06113c23          	sd	ra,120(sp)
    800068e8:	06813823          	sd	s0,112(sp)
    800068ec:	06913423          	sd	s1,104(sp)
    800068f0:	07213023          	sd	s2,96(sp)
    800068f4:	05313c23          	sd	s3,88(sp)
    800068f8:	05413823          	sd	s4,80(sp)
    800068fc:	05513423          	sd	s5,72(sp)
    80006900:	05613023          	sd	s6,64(sp)
    80006904:	03713c23          	sd	s7,56(sp)
    80006908:	03813823          	sd	s8,48(sp)
    8000690c:	03913423          	sd	s9,40(sp)
    80006910:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80006914:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80006918:	00004517          	auipc	a0,0x4
    8000691c:	c2850513          	addi	a0,a0,-984 # 8000a540 <CONSOLE_STATUS+0x530>
    80006920:	fffff097          	auipc	ra,0xfffff
    80006924:	fe8080e7          	jalr	-24(ra) # 80005908 <_Z11printStringPKc>
    getString(input, 30);
    80006928:	01e00593          	li	a1,30
    8000692c:	f8040493          	addi	s1,s0,-128
    80006930:	00048513          	mv	a0,s1
    80006934:	fffff097          	auipc	ra,0xfffff
    80006938:	050080e7          	jalr	80(ra) # 80005984 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000693c:	00048513          	mv	a0,s1
    80006940:	fffff097          	auipc	ra,0xfffff
    80006944:	110080e7          	jalr	272(ra) # 80005a50 <_Z11stringToIntPKc>
    80006948:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000694c:	00004517          	auipc	a0,0x4
    80006950:	c1450513          	addi	a0,a0,-1004 # 8000a560 <CONSOLE_STATUS+0x550>
    80006954:	fffff097          	auipc	ra,0xfffff
    80006958:	fb4080e7          	jalr	-76(ra) # 80005908 <_Z11printStringPKc>
    getString(input, 30);
    8000695c:	01e00593          	li	a1,30
    80006960:	00048513          	mv	a0,s1
    80006964:	fffff097          	auipc	ra,0xfffff
    80006968:	020080e7          	jalr	32(ra) # 80005984 <_Z9getStringPci>
    n = stringToInt(input);
    8000696c:	00048513          	mv	a0,s1
    80006970:	fffff097          	auipc	ra,0xfffff
    80006974:	0e0080e7          	jalr	224(ra) # 80005a50 <_Z11stringToIntPKc>
    80006978:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000697c:	00004517          	auipc	a0,0x4
    80006980:	c0450513          	addi	a0,a0,-1020 # 8000a580 <CONSOLE_STATUS+0x570>
    80006984:	fffff097          	auipc	ra,0xfffff
    80006988:	f84080e7          	jalr	-124(ra) # 80005908 <_Z11printStringPKc>
    8000698c:	00000613          	li	a2,0
    80006990:	00a00593          	li	a1,10
    80006994:	00090513          	mv	a0,s2
    80006998:	fffff097          	auipc	ra,0xfffff
    8000699c:	108080e7          	jalr	264(ra) # 80005aa0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800069a0:	00004517          	auipc	a0,0x4
    800069a4:	bf850513          	addi	a0,a0,-1032 # 8000a598 <CONSOLE_STATUS+0x588>
    800069a8:	fffff097          	auipc	ra,0xfffff
    800069ac:	f60080e7          	jalr	-160(ra) # 80005908 <_Z11printStringPKc>
    800069b0:	00000613          	li	a2,0
    800069b4:	00a00593          	li	a1,10
    800069b8:	00048513          	mv	a0,s1
    800069bc:	fffff097          	auipc	ra,0xfffff
    800069c0:	0e4080e7          	jalr	228(ra) # 80005aa0 <_Z8printIntiii>
    printString(".\n");
    800069c4:	00004517          	auipc	a0,0x4
    800069c8:	bec50513          	addi	a0,a0,-1044 # 8000a5b0 <CONSOLE_STATUS+0x5a0>
    800069cc:	fffff097          	auipc	ra,0xfffff
    800069d0:	f3c080e7          	jalr	-196(ra) # 80005908 <_Z11printStringPKc>
    if(threadNum > n) {
    800069d4:	0324c463          	blt	s1,s2,800069fc <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800069d8:	03205c63          	blez	s2,80006a10 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800069dc:	03800513          	li	a0,56
    800069e0:	ffffd097          	auipc	ra,0xffffd
    800069e4:	7a4080e7          	jalr	1956(ra) # 80004184 <_Znwm>
    800069e8:	00050a93          	mv	s5,a0
    800069ec:	00048593          	mv	a1,s1
    800069f0:	fffff097          	auipc	ra,0xfffff
    800069f4:	1c4080e7          	jalr	452(ra) # 80005bb4 <_ZN9BufferCPPC1Ei>
    800069f8:	0300006f          	j	80006a28 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800069fc:	00004517          	auipc	a0,0x4
    80006a00:	bbc50513          	addi	a0,a0,-1092 # 8000a5b8 <CONSOLE_STATUS+0x5a8>
    80006a04:	fffff097          	auipc	ra,0xfffff
    80006a08:	f04080e7          	jalr	-252(ra) # 80005908 <_Z11printStringPKc>
        return;
    80006a0c:	0140006f          	j	80006a20 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80006a10:	00004517          	auipc	a0,0x4
    80006a14:	be850513          	addi	a0,a0,-1048 # 8000a5f8 <CONSOLE_STATUS+0x5e8>
    80006a18:	fffff097          	auipc	ra,0xfffff
    80006a1c:	ef0080e7          	jalr	-272(ra) # 80005908 <_Z11printStringPKc>
        return;
    80006a20:	000b8113          	mv	sp,s7
    80006a24:	2400006f          	j	80006c64 <_Z29producerConsumer_CPP_Sync_APIv+0x384>
    waitForAll = new Semaphore(0);
    80006a28:	01000513          	li	a0,16
    80006a2c:	ffffd097          	auipc	ra,0xffffd
    80006a30:	758080e7          	jalr	1880(ra) # 80004184 <_Znwm>
    80006a34:	00050493          	mv	s1,a0
    80006a38:	00000593          	li	a1,0
    80006a3c:	ffffe097          	auipc	ra,0xffffe
    80006a40:	a58080e7          	jalr	-1448(ra) # 80004494 <_ZN9SemaphoreC1Ej>
    80006a44:	00006717          	auipc	a4,0x6
    80006a48:	6a470713          	addi	a4,a4,1700 # 8000d0e8 <finishedA>
    80006a4c:	00973423          	sd	s1,8(a4)
    Thread* threads[threadNum];
    80006a50:	00391793          	slli	a5,s2,0x3
    80006a54:	00f78793          	addi	a5,a5,15
    80006a58:	ff07f793          	andi	a5,a5,-16
    80006a5c:	40f10133          	sub	sp,sp,a5
    80006a60:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80006a64:	0019069b          	addiw	a3,s2,1
    80006a68:	00169793          	slli	a5,a3,0x1
    80006a6c:	00d787b3          	add	a5,a5,a3
    80006a70:	00379793          	slli	a5,a5,0x3
    80006a74:	00f78793          	addi	a5,a5,15
    80006a78:	ff07f793          	andi	a5,a5,-16
    80006a7c:	40f10133          	sub	sp,sp,a5
    80006a80:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80006a84:	00191493          	slli	s1,s2,0x1
    80006a88:	012487b3          	add	a5,s1,s2
    80006a8c:	00379793          	slli	a5,a5,0x3
    80006a90:	00fa07b3          	add	a5,s4,a5
    80006a94:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80006a98:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80006a9c:	00873703          	ld	a4,8(a4)
    80006aa0:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    80006aa4:	01800513          	li	a0,24
    80006aa8:	ffffd097          	auipc	ra,0xffffd
    80006aac:	6dc080e7          	jalr	1756(ra) # 80004184 <_Znwm>
    80006ab0:	00050b13          	mv	s6,a0
    80006ab4:	012484b3          	add	s1,s1,s2
    80006ab8:	00349493          	slli	s1,s1,0x3
    80006abc:	009a04b3          	add	s1,s4,s1
    Consumer(thread_data* _td):Thread(), td(_td) {}
    80006ac0:	ffffe097          	auipc	ra,0xffffe
    80006ac4:	954080e7          	jalr	-1708(ra) # 80004414 <_ZN6ThreadC1Ev>
    80006ac8:	00006797          	auipc	a5,0x6
    80006acc:	33078793          	addi	a5,a5,816 # 8000cdf8 <_ZTV8Consumer+0x10>
    80006ad0:	00fb3023          	sd	a5,0(s6)
    80006ad4:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    80006ad8:	000b0513          	mv	a0,s6
    80006adc:	ffffe097          	auipc	ra,0xffffe
    80006ae0:	864080e7          	jalr	-1948(ra) # 80004340 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80006ae4:	00000493          	li	s1,0
    80006ae8:	0380006f          	j	80006b20 <_Z29producerConsumer_CPP_Sync_APIv+0x240>
    Producer(thread_data* _td):Thread(), td(_td) {}
    80006aec:	00006797          	auipc	a5,0x6
    80006af0:	2e478793          	addi	a5,a5,740 # 8000cdd0 <_ZTV8Producer+0x10>
    80006af4:	00fcb023          	sd	a5,0(s9)
    80006af8:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    80006afc:	00349793          	slli	a5,s1,0x3
    80006b00:	00f987b3          	add	a5,s3,a5
    80006b04:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80006b08:	00349793          	slli	a5,s1,0x3
    80006b0c:	00f987b3          	add	a5,s3,a5
    80006b10:	0007b503          	ld	a0,0(a5)
    80006b14:	ffffe097          	auipc	ra,0xffffe
    80006b18:	82c080e7          	jalr	-2004(ra) # 80004340 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80006b1c:	0014849b          	addiw	s1,s1,1
    80006b20:	0b24d063          	bge	s1,s2,80006bc0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e0>
        data[i].id = i;
    80006b24:	00149793          	slli	a5,s1,0x1
    80006b28:	009787b3          	add	a5,a5,s1
    80006b2c:	00379793          	slli	a5,a5,0x3
    80006b30:	00fa07b3          	add	a5,s4,a5
    80006b34:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80006b38:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80006b3c:	00006717          	auipc	a4,0x6
    80006b40:	5b473703          	ld	a4,1460(a4) # 8000d0f0 <waitForAll>
    80006b44:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80006b48:	02905863          	blez	s1,80006b78 <_Z29producerConsumer_CPP_Sync_APIv+0x298>
            threads[i] = new Producer(data+i);
    80006b4c:	01800513          	li	a0,24
    80006b50:	ffffd097          	auipc	ra,0xffffd
    80006b54:	634080e7          	jalr	1588(ra) # 80004184 <_Znwm>
    80006b58:	00050c93          	mv	s9,a0
    80006b5c:	00149c13          	slli	s8,s1,0x1
    80006b60:	009c0c33          	add	s8,s8,s1
    80006b64:	003c1c13          	slli	s8,s8,0x3
    80006b68:	018a0c33          	add	s8,s4,s8
    Producer(thread_data* _td):Thread(), td(_td) {}
    80006b6c:	ffffe097          	auipc	ra,0xffffe
    80006b70:	8a8080e7          	jalr	-1880(ra) # 80004414 <_ZN6ThreadC1Ev>
    80006b74:	f79ff06f          	j	80006aec <_Z29producerConsumer_CPP_Sync_APIv+0x20c>
            threads[i] = new ProducerKeyboard(data+i);
    80006b78:	01800513          	li	a0,24
    80006b7c:	ffffd097          	auipc	ra,0xffffd
    80006b80:	608080e7          	jalr	1544(ra) # 80004184 <_Znwm>
    80006b84:	00050c93          	mv	s9,a0
    80006b88:	00149c13          	slli	s8,s1,0x1
    80006b8c:	009c0c33          	add	s8,s8,s1
    80006b90:	003c1c13          	slli	s8,s8,0x3
    80006b94:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80006b98:	ffffe097          	auipc	ra,0xffffe
    80006b9c:	87c080e7          	jalr	-1924(ra) # 80004414 <_ZN6ThreadC1Ev>
    80006ba0:	00006797          	auipc	a5,0x6
    80006ba4:	20878793          	addi	a5,a5,520 # 8000cda8 <_ZTV16ProducerKeyboard+0x10>
    80006ba8:	00fcb023          	sd	a5,0(s9)
    80006bac:	018cb823          	sd	s8,16(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80006bb0:	00349793          	slli	a5,s1,0x3
    80006bb4:	00f987b3          	add	a5,s3,a5
    80006bb8:	0197b023          	sd	s9,0(a5)
    80006bbc:	f4dff06f          	j	80006b08 <_Z29producerConsumer_CPP_Sync_APIv+0x228>
    Thread::dispatch();
    80006bc0:	ffffd097          	auipc	ra,0xffffd
    80006bc4:	7b0080e7          	jalr	1968(ra) # 80004370 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80006bc8:	00000493          	li	s1,0
    80006bcc:	00994e63          	blt	s2,s1,80006be8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
        waitForAll->wait();
    80006bd0:	00006517          	auipc	a0,0x6
    80006bd4:	52053503          	ld	a0,1312(a0) # 8000d0f0 <waitForAll>
    80006bd8:	ffffe097          	auipc	ra,0xffffe
    80006bdc:	8fc080e7          	jalr	-1796(ra) # 800044d4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80006be0:	0014849b          	addiw	s1,s1,1
    80006be4:	fe9ff06f          	j	80006bcc <_Z29producerConsumer_CPP_Sync_APIv+0x2ec>
    for (int i = 0; i < threadNum; i++) {
    80006be8:	00000493          	li	s1,0
    80006bec:	0080006f          	j	80006bf4 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
    80006bf0:	0014849b          	addiw	s1,s1,1
    80006bf4:	0324d263          	bge	s1,s2,80006c18 <_Z29producerConsumer_CPP_Sync_APIv+0x338>
        delete threads[i];
    80006bf8:	00349793          	slli	a5,s1,0x3
    80006bfc:	00f987b3          	add	a5,s3,a5
    80006c00:	0007b503          	ld	a0,0(a5)
    80006c04:	fe0506e3          	beqz	a0,80006bf0 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    80006c08:	00053783          	ld	a5,0(a0)
    80006c0c:	0087b783          	ld	a5,8(a5)
    80006c10:	000780e7          	jalr	a5
    80006c14:	fddff06f          	j	80006bf0 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    delete consumerThread;
    80006c18:	000b0a63          	beqz	s6,80006c2c <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
    80006c1c:	000b3783          	ld	a5,0(s6)
    80006c20:	0087b783          	ld	a5,8(a5)
    80006c24:	000b0513          	mv	a0,s6
    80006c28:	000780e7          	jalr	a5
    delete waitForAll;
    80006c2c:	00006517          	auipc	a0,0x6
    80006c30:	4c453503          	ld	a0,1220(a0) # 8000d0f0 <waitForAll>
    80006c34:	00050863          	beqz	a0,80006c44 <_Z29producerConsumer_CPP_Sync_APIv+0x364>
    80006c38:	00053783          	ld	a5,0(a0)
    80006c3c:	0087b783          	ld	a5,8(a5)
    80006c40:	000780e7          	jalr	a5
    delete buffer;
    80006c44:	000a8e63          	beqz	s5,80006c60 <_Z29producerConsumer_CPP_Sync_APIv+0x380>
    80006c48:	000a8513          	mv	a0,s5
    80006c4c:	fffff097          	auipc	ra,0xfffff
    80006c50:	260080e7          	jalr	608(ra) # 80005eac <_ZN9BufferCPPD1Ev>
    80006c54:	000a8513          	mv	a0,s5
    80006c58:	ffffd097          	auipc	ra,0xffffd
    80006c5c:	57c080e7          	jalr	1404(ra) # 800041d4 <_ZdlPv>
    80006c60:	000b8113          	mv	sp,s7

}
    80006c64:	f8040113          	addi	sp,s0,-128
    80006c68:	07813083          	ld	ra,120(sp)
    80006c6c:	07013403          	ld	s0,112(sp)
    80006c70:	06813483          	ld	s1,104(sp)
    80006c74:	06013903          	ld	s2,96(sp)
    80006c78:	05813983          	ld	s3,88(sp)
    80006c7c:	05013a03          	ld	s4,80(sp)
    80006c80:	04813a83          	ld	s5,72(sp)
    80006c84:	04013b03          	ld	s6,64(sp)
    80006c88:	03813b83          	ld	s7,56(sp)
    80006c8c:	03013c03          	ld	s8,48(sp)
    80006c90:	02813c83          	ld	s9,40(sp)
    80006c94:	08010113          	addi	sp,sp,128
    80006c98:	00008067          	ret
    80006c9c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80006ca0:	000a8513          	mv	a0,s5
    80006ca4:	ffffd097          	auipc	ra,0xffffd
    80006ca8:	530080e7          	jalr	1328(ra) # 800041d4 <_ZdlPv>
    80006cac:	00048513          	mv	a0,s1
    80006cb0:	000cb097          	auipc	ra,0xcb
    80006cb4:	a18080e7          	jalr	-1512(ra) # 800d16c8 <_Unwind_Resume>
    80006cb8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80006cbc:	00048513          	mv	a0,s1
    80006cc0:	ffffd097          	auipc	ra,0xffffd
    80006cc4:	514080e7          	jalr	1300(ra) # 800041d4 <_ZdlPv>
    80006cc8:	00090513          	mv	a0,s2
    80006ccc:	000cb097          	auipc	ra,0xcb
    80006cd0:	9fc080e7          	jalr	-1540(ra) # 800d16c8 <_Unwind_Resume>
    80006cd4:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    80006cd8:	000b0513          	mv	a0,s6
    80006cdc:	ffffd097          	auipc	ra,0xffffd
    80006ce0:	4f8080e7          	jalr	1272(ra) # 800041d4 <_ZdlPv>
    80006ce4:	00048513          	mv	a0,s1
    80006ce8:	000cb097          	auipc	ra,0xcb
    80006cec:	9e0080e7          	jalr	-1568(ra) # 800d16c8 <_Unwind_Resume>
    80006cf0:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    80006cf4:	000c8513          	mv	a0,s9
    80006cf8:	ffffd097          	auipc	ra,0xffffd
    80006cfc:	4dc080e7          	jalr	1244(ra) # 800041d4 <_ZdlPv>
    80006d00:	00048513          	mv	a0,s1
    80006d04:	000cb097          	auipc	ra,0xcb
    80006d08:	9c4080e7          	jalr	-1596(ra) # 800d16c8 <_Unwind_Resume>
    80006d0c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80006d10:	000c8513          	mv	a0,s9
    80006d14:	ffffd097          	auipc	ra,0xffffd
    80006d18:	4c0080e7          	jalr	1216(ra) # 800041d4 <_ZdlPv>
    80006d1c:	00048513          	mv	a0,s1
    80006d20:	000cb097          	auipc	ra,0xcb
    80006d24:	9a8080e7          	jalr	-1624(ra) # 800d16c8 <_Unwind_Resume>

0000000080006d28 <_Z11test_adresev>:
class Class1 {
public:
    char c;
};

void test_adrese(){
    80006d28:	fd010113          	addi	sp,sp,-48
    80006d2c:	02113423          	sd	ra,40(sp)
    80006d30:	02813023          	sd	s0,32(sp)
    80006d34:	00913c23          	sd	s1,24(sp)
    80006d38:	01213823          	sd	s2,16(sp)
    80006d3c:	01313423          	sd	s3,8(sp)
    80006d40:	03010413          	addi	s0,sp,48
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    80006d44:	00000693          	li	a3,0
    80006d48:	00000613          	li	a2,0
    80006d4c:	00100593          	li	a1,1
    80006d50:	00004517          	auipc	a0,0x4
    80006d54:	8d850513          	addi	a0,a0,-1832 # 8000a628 <CONSOLE_STATUS+0x618>
    80006d58:	fffff097          	auipc	ra,0xfffff
    80006d5c:	9a4080e7          	jalr	-1628(ra) # 800056fc <_Z17kmem_cache_createPKcmPFvPvES3_>
    80006d60:	00050993          	mv	s3,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80006d64:	00004517          	auipc	a0,0x4
    80006d68:	8cc50513          	addi	a0,a0,-1844 # 8000a630 <CONSOLE_STATUS+0x620>
    80006d6c:	fffff097          	auipc	ra,0xfffff
    80006d70:	b9c080e7          	jalr	-1124(ra) # 80005908 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80006d74:	00098513          	mv	a0,s3
    80006d78:	fffff097          	auipc	ra,0xfffff
    80006d7c:	b40080e7          	jalr	-1216(ra) # 800058b8 <_Z15kmem_cache_infoP12kmem_cache_s>
    const int arrSize = 1000;
    Class1* arr[arrSize];
    for (int i = 0; i < arrSize; i++) {
    80006d80:	00000493          	li	s1,0
    80006d84:	0180006f          	j	80006d9c <_Z11test_adresev+0x74>
        printString(") ");
        printInt((size_t)arr[i]);
        if (i % 100 == 0)
            printString("\n");
        else
            printString(" ");
    80006d88:	00004517          	auipc	a0,0x4
    80006d8c:	92050513          	addi	a0,a0,-1760 # 8000a6a8 <CONSOLE_STATUS+0x698>
    80006d90:	fffff097          	auipc	ra,0xfffff
    80006d94:	b78080e7          	jalr	-1160(ra) # 80005908 <_Z11printStringPKc>
    for (int i = 0; i < arrSize; i++) {
    80006d98:	0014849b          	addiw	s1,s1,1
    80006d9c:	3e700793          	li	a5,999
    80006da0:	0697ce63          	blt	a5,s1,80006e1c <_Z11test_adresev+0xf4>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    80006da4:	00098513          	mv	a0,s3
    80006da8:	fffff097          	auipc	ra,0xfffff
    80006dac:	9fc080e7          	jalr	-1540(ra) # 800057a4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80006db0:	00050913          	mv	s2,a0
        printString("(");
    80006db4:	00004517          	auipc	a0,0x4
    80006db8:	8cc50513          	addi	a0,a0,-1844 # 8000a680 <CONSOLE_STATUS+0x670>
    80006dbc:	fffff097          	auipc	ra,0xfffff
    80006dc0:	b4c080e7          	jalr	-1204(ra) # 80005908 <_Z11printStringPKc>
        printInt(i);
    80006dc4:	00000613          	li	a2,0
    80006dc8:	00a00593          	li	a1,10
    80006dcc:	00048513          	mv	a0,s1
    80006dd0:	fffff097          	auipc	ra,0xfffff
    80006dd4:	cd0080e7          	jalr	-816(ra) # 80005aa0 <_Z8printIntiii>
        printString(") ");
    80006dd8:	00004517          	auipc	a0,0x4
    80006ddc:	8b050513          	addi	a0,a0,-1872 # 8000a688 <CONSOLE_STATUS+0x678>
    80006de0:	fffff097          	auipc	ra,0xfffff
    80006de4:	b28080e7          	jalr	-1240(ra) # 80005908 <_Z11printStringPKc>
        printInt((size_t)arr[i]);
    80006de8:	00000613          	li	a2,0
    80006dec:	00a00593          	li	a1,10
    80006df0:	0009051b          	sext.w	a0,s2
    80006df4:	fffff097          	auipc	ra,0xfffff
    80006df8:	cac080e7          	jalr	-852(ra) # 80005aa0 <_Z8printIntiii>
        if (i % 100 == 0)
    80006dfc:	06400793          	li	a5,100
    80006e00:	02f4e7bb          	remw	a5,s1,a5
    80006e04:	f80792e3          	bnez	a5,80006d88 <_Z11test_adresev+0x60>
            printString("\n");
    80006e08:	00003517          	auipc	a0,0x3
    80006e0c:	44050513          	addi	a0,a0,1088 # 8000a248 <CONSOLE_STATUS+0x238>
    80006e10:	fffff097          	auipc	ra,0xfffff
    80006e14:	af8080e7          	jalr	-1288(ra) # 80005908 <_Z11printStringPKc>
    80006e18:	f81ff06f          	j	80006d98 <_Z11test_adresev+0x70>
    }
    printString("\n");
    80006e1c:	00003517          	auipc	a0,0x3
    80006e20:	42c50513          	addi	a0,a0,1068 # 8000a248 <CONSOLE_STATUS+0x238>
    80006e24:	fffff097          	auipc	ra,0xfffff
    80006e28:	ae4080e7          	jalr	-1308(ra) # 80005908 <_Z11printStringPKc>
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80006e2c:	00004517          	auipc	a0,0x4
    80006e30:	80450513          	addi	a0,a0,-2044 # 8000a630 <CONSOLE_STATUS+0x620>
    80006e34:	fffff097          	auipc	ra,0xfffff
    80006e38:	ad4080e7          	jalr	-1324(ra) # 80005908 <_Z11printStringPKc>
}
    80006e3c:	02813083          	ld	ra,40(sp)
    80006e40:	02013403          	ld	s0,32(sp)
    80006e44:	01813483          	ld	s1,24(sp)
    80006e48:	01013903          	ld	s2,16(sp)
    80006e4c:	00813983          	ld	s3,8(sp)
    80006e50:	03010113          	addi	sp,sp,48
    80006e54:	00008067          	ret

0000000080006e58 <_Z22test_pristup_parametruv>:

void test_pristup_parametru(){
    80006e58:	fd010113          	addi	sp,sp,-48
    80006e5c:	02113423          	sd	ra,40(sp)
    80006e60:	02813023          	sd	s0,32(sp)
    80006e64:	00913c23          	sd	s1,24(sp)
    80006e68:	01213823          	sd	s2,16(sp)
    80006e6c:	01313423          	sd	s3,8(sp)
    80006e70:	01413023          	sd	s4,0(sp)
    80006e74:	03010413          	addi	s0,sp,48
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    80006e78:	00000693          	li	a3,0
    80006e7c:	00000613          	li	a2,0
    80006e80:	00100593          	li	a1,1
    80006e84:	00003517          	auipc	a0,0x3
    80006e88:	7a450513          	addi	a0,a0,1956 # 8000a628 <CONSOLE_STATUS+0x618>
    80006e8c:	fffff097          	auipc	ra,0xfffff
    80006e90:	870080e7          	jalr	-1936(ra) # 800056fc <_Z17kmem_cache_createPKcmPFvPvES3_>
    80006e94:	00050a13          	mv	s4,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80006e98:	00003517          	auipc	a0,0x3
    80006e9c:	79850513          	addi	a0,a0,1944 # 8000a630 <CONSOLE_STATUS+0x620>
    80006ea0:	fffff097          	auipc	ra,0xfffff
    80006ea4:	a68080e7          	jalr	-1432(ra) # 80005908 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80006ea8:	000a0513          	mv	a0,s4
    80006eac:	fffff097          	auipc	ra,0xfffff
    80006eb0:	a0c080e7          	jalr	-1524(ra) # 800058b8 <_Z15kmem_cache_infoP12kmem_cache_s>
    const int arrSize = 8000;
    Class1* arr[arrSize];
    char c = 'a';
    for (int i = 0; i < arrSize; i++) {
    80006eb4:	00000913          	li	s2,0
    char c = 'a';
    80006eb8:	06100993          	li	s3,97
    80006ebc:	0200006f          	j	80006edc <_Z22test_pristup_parametruv+0x84>
        printString("(");
        printInt(i);
        printString(") ");
        arr[i]->c = c;
        if(c++ == 'a' + 30){
            c = 'a';
    80006ec0:	06100993          	li	s3,97
    80006ec4:	0800006f          	j	80006f44 <_Z22test_pristup_parametruv+0xec>
        printInt((size_t)arr[i]);
        printString("\t");
        if (i % 100 == 0)
            printString("\n");
        else
            printString(" ");
    80006ec8:	00003517          	auipc	a0,0x3
    80006ecc:	7e050513          	addi	a0,a0,2016 # 8000a6a8 <CONSOLE_STATUS+0x698>
    80006ed0:	fffff097          	auipc	ra,0xfffff
    80006ed4:	a38080e7          	jalr	-1480(ra) # 80005908 <_Z11printStringPKc>
    for (int i = 0; i < arrSize; i++) {
    80006ed8:	0019091b          	addiw	s2,s2,1
    80006edc:	000027b7          	lui	a5,0x2
    80006ee0:	f3f78793          	addi	a5,a5,-193 # 1f3f <_entry-0x7fffe0c1>
    80006ee4:	0d27cc63          	blt	a5,s2,80006fbc <_Z22test_pristup_parametruv+0x164>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    80006ee8:	000a0513          	mv	a0,s4
    80006eec:	fffff097          	auipc	ra,0xfffff
    80006ef0:	8b8080e7          	jalr	-1864(ra) # 800057a4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80006ef4:	00050493          	mv	s1,a0
        printString("(");
    80006ef8:	00003517          	auipc	a0,0x3
    80006efc:	78850513          	addi	a0,a0,1928 # 8000a680 <CONSOLE_STATUS+0x670>
    80006f00:	fffff097          	auipc	ra,0xfffff
    80006f04:	a08080e7          	jalr	-1528(ra) # 80005908 <_Z11printStringPKc>
        printInt(i);
    80006f08:	00000613          	li	a2,0
    80006f0c:	00a00593          	li	a1,10
    80006f10:	00090513          	mv	a0,s2
    80006f14:	fffff097          	auipc	ra,0xfffff
    80006f18:	b8c080e7          	jalr	-1140(ra) # 80005aa0 <_Z8printIntiii>
        printString(") ");
    80006f1c:	00003517          	auipc	a0,0x3
    80006f20:	76c50513          	addi	a0,a0,1900 # 8000a688 <CONSOLE_STATUS+0x678>
    80006f24:	fffff097          	auipc	ra,0xfffff
    80006f28:	9e4080e7          	jalr	-1564(ra) # 80005908 <_Z11printStringPKc>
        arr[i]->c = c;
    80006f2c:	01348023          	sb	s3,0(s1)
        if(c++ == 'a' + 30){
    80006f30:	0019879b          	addiw	a5,s3,1
    80006f34:	0ff7f793          	andi	a5,a5,255
    80006f38:	07f00713          	li	a4,127
    80006f3c:	f8e982e3          	beq	s3,a4,80006ec0 <_Z22test_pristup_parametruv+0x68>
    80006f40:	00078993          	mv	s3,a5
        printString("podatak: ");
    80006f44:	00003517          	auipc	a0,0x3
    80006f48:	74c50513          	addi	a0,a0,1868 # 8000a690 <CONSOLE_STATUS+0x680>
    80006f4c:	fffff097          	auipc	ra,0xfffff
    80006f50:	9bc080e7          	jalr	-1604(ra) # 80005908 <_Z11printStringPKc>
        printInt(arr[i]->c);
    80006f54:	00000613          	li	a2,0
    80006f58:	00a00593          	li	a1,10
    80006f5c:	0004c503          	lbu	a0,0(s1)
    80006f60:	fffff097          	auipc	ra,0xfffff
    80006f64:	b40080e7          	jalr	-1216(ra) # 80005aa0 <_Z8printIntiii>
        printString(" adresa: ");
    80006f68:	00003517          	auipc	a0,0x3
    80006f6c:	73850513          	addi	a0,a0,1848 # 8000a6a0 <CONSOLE_STATUS+0x690>
    80006f70:	fffff097          	auipc	ra,0xfffff
    80006f74:	998080e7          	jalr	-1640(ra) # 80005908 <_Z11printStringPKc>
        printInt((size_t)arr[i]);
    80006f78:	00000613          	li	a2,0
    80006f7c:	00a00593          	li	a1,10
    80006f80:	0004851b          	sext.w	a0,s1
    80006f84:	fffff097          	auipc	ra,0xfffff
    80006f88:	b1c080e7          	jalr	-1252(ra) # 80005aa0 <_Z8printIntiii>
        printString("\t");
    80006f8c:	00003517          	auipc	a0,0x3
    80006f90:	72450513          	addi	a0,a0,1828 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    80006f94:	fffff097          	auipc	ra,0xfffff
    80006f98:	974080e7          	jalr	-1676(ra) # 80005908 <_Z11printStringPKc>
        if (i % 100 == 0)
    80006f9c:	06400793          	li	a5,100
    80006fa0:	02f967bb          	remw	a5,s2,a5
    80006fa4:	f20792e3          	bnez	a5,80006ec8 <_Z22test_pristup_parametruv+0x70>
            printString("\n");
    80006fa8:	00003517          	auipc	a0,0x3
    80006fac:	2a050513          	addi	a0,a0,672 # 8000a248 <CONSOLE_STATUS+0x238>
    80006fb0:	fffff097          	auipc	ra,0xfffff
    80006fb4:	958080e7          	jalr	-1704(ra) # 80005908 <_Z11printStringPKc>
    80006fb8:	f21ff06f          	j	80006ed8 <_Z22test_pristup_parametruv+0x80>
    }
    printString("\n");
    80006fbc:	00003517          	auipc	a0,0x3
    80006fc0:	28c50513          	addi	a0,a0,652 # 8000a248 <CONSOLE_STATUS+0x238>
    80006fc4:	fffff097          	auipc	ra,0xfffff
    80006fc8:	944080e7          	jalr	-1724(ra) # 80005908 <_Z11printStringPKc>
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80006fcc:	00003517          	auipc	a0,0x3
    80006fd0:	66450513          	addi	a0,a0,1636 # 8000a630 <CONSOLE_STATUS+0x620>
    80006fd4:	fffff097          	auipc	ra,0xfffff
    80006fd8:	934080e7          	jalr	-1740(ra) # 80005908 <_Z11printStringPKc>
}
    80006fdc:	02813083          	ld	ra,40(sp)
    80006fe0:	02013403          	ld	s0,32(sp)
    80006fe4:	01813483          	ld	s1,24(sp)
    80006fe8:	01013903          	ld	s2,16(sp)
    80006fec:	00813983          	ld	s3,8(sp)
    80006ff0:	00013a03          	ld	s4,0(sp)
    80006ff4:	03010113          	addi	sp,sp,48
    80006ff8:	00008067          	ret

0000000080006ffc <_Z16test_performansiv>:

const int arrSize = 100000;
//const int arrSize = 2032;
Class1* arr[arrSize];

void test_performansi() {
    80006ffc:	fe010113          	addi	sp,sp,-32
    80007000:	00113c23          	sd	ra,24(sp)
    80007004:	00813823          	sd	s0,16(sp)
    80007008:	00913423          	sd	s1,8(sp)
    8000700c:	01213023          	sd	s2,0(sp)
    80007010:	02010413          	addi	s0,sp,32
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    80007014:	00000693          	li	a3,0
    80007018:	00000613          	li	a2,0
    8000701c:	00100593          	li	a1,1
    80007020:	00003517          	auipc	a0,0x3
    80007024:	60850513          	addi	a0,a0,1544 # 8000a628 <CONSOLE_STATUS+0x618>
    80007028:	ffffe097          	auipc	ra,0xffffe
    8000702c:	6d4080e7          	jalr	1748(ra) # 800056fc <_Z17kmem_cache_createPKcmPFvPvES3_>
    80007030:	00050913          	mv	s2,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    80007034:	00003517          	auipc	a0,0x3
    80007038:	5fc50513          	addi	a0,a0,1532 # 8000a630 <CONSOLE_STATUS+0x620>
    8000703c:	fffff097          	auipc	ra,0xfffff
    80007040:	8cc080e7          	jalr	-1844(ra) # 80005908 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80007044:	00090513          	mv	a0,s2
    80007048:	fffff097          	auipc	ra,0xfffff
    8000704c:	870080e7          	jalr	-1936(ra) # 800058b8 <_Z15kmem_cache_infoP12kmem_cache_s>
    for (int i = 0; i < arrSize; i++) {
    80007050:	00000493          	li	s1,0
    80007054:	000187b7          	lui	a5,0x18
    80007058:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    8000705c:	0297c663          	blt	a5,s1,80007088 <_Z16test_performansiv+0x8c>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    80007060:	00090513          	mv	a0,s2
    80007064:	ffffe097          	auipc	ra,0xffffe
    80007068:	740080e7          	jalr	1856(ra) # 800057a4 <_Z16kmem_cache_allocP12kmem_cache_s>
    8000706c:	00349713          	slli	a4,s1,0x3
    80007070:	00006797          	auipc	a5,0x6
    80007074:	08878793          	addi	a5,a5,136 # 8000d0f8 <arr>
    80007078:	00e787b3          	add	a5,a5,a4
    8000707c:	00a7b023          	sd	a0,0(a5)
    for (int i = 0; i < arrSize; i++) {
    80007080:	0014849b          	addiw	s1,s1,1
    80007084:	fd1ff06f          	j	80007054 <_Z16test_performansiv+0x58>
//        printInt((size_t)arr[i]);
//        printString("\n");
    }
    printString("*****************************AFTER ALLOCATION******************************\n\n");
    80007088:	00003517          	auipc	a0,0x3
    8000708c:	63050513          	addi	a0,a0,1584 # 8000a6b8 <CONSOLE_STATUS+0x6a8>
    80007090:	fffff097          	auipc	ra,0xfffff
    80007094:	878080e7          	jalr	-1928(ra) # 80005908 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80007098:	00090513          	mv	a0,s2
    8000709c:	fffff097          	auipc	ra,0xfffff
    800070a0:	81c080e7          	jalr	-2020(ra) # 800058b8 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_free(cache1, arr[0]);
    800070a4:	00006597          	auipc	a1,0x6
    800070a8:	0545b583          	ld	a1,84(a1) # 8000d0f8 <arr>
    800070ac:	00090513          	mv	a0,s2
    800070b0:	ffffe097          	auipc	ra,0xffffe
    800070b4:	750080e7          	jalr	1872(ra) # 80005800 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < arrSize; i++) {
    800070b8:	00000493          	li	s1,0
    800070bc:	0700006f          	j	8000712c <_Z16test_performansiv+0x130>
        int ret = kmem_cache_free(cache1, arr[i]);
        if(ret == -1){
//            if(i == 2023){
//                kmem_cache_info(cache1);
//            }
            printString("Neuspesna dealokacija: ");
    800070c0:	00003517          	auipc	a0,0x3
    800070c4:	64850513          	addi	a0,a0,1608 # 8000a708 <CONSOLE_STATUS+0x6f8>
    800070c8:	fffff097          	auipc	ra,0xfffff
    800070cc:	840080e7          	jalr	-1984(ra) # 80005908 <_Z11printStringPKc>
            printInt(i);
    800070d0:	00000613          	li	a2,0
    800070d4:	00a00593          	li	a1,10
    800070d8:	00048513          	mv	a0,s1
    800070dc:	fffff097          	auipc	ra,0xfffff
    800070e0:	9c4080e7          	jalr	-1596(ra) # 80005aa0 <_Z8printIntiii>
            printString(", na adresi: ");
    800070e4:	00003517          	auipc	a0,0x3
    800070e8:	63c50513          	addi	a0,a0,1596 # 8000a720 <CONSOLE_STATUS+0x710>
    800070ec:	fffff097          	auipc	ra,0xfffff
    800070f0:	81c080e7          	jalr	-2020(ra) # 80005908 <_Z11printStringPKc>
            printInt((size_t)arr[i]);
    800070f4:	00349713          	slli	a4,s1,0x3
    800070f8:	00006797          	auipc	a5,0x6
    800070fc:	00078793          	mv	a5,a5
    80007100:	00e787b3          	add	a5,a5,a4
    80007104:	00000613          	li	a2,0
    80007108:	00a00593          	li	a1,10
    8000710c:	0007a503          	lw	a0,0(a5) # 8000d0f8 <arr>
    80007110:	fffff097          	auipc	ra,0xfffff
    80007114:	990080e7          	jalr	-1648(ra) # 80005aa0 <_Z8printIntiii>
            printString("\n");
    80007118:	00003517          	auipc	a0,0x3
    8000711c:	13050513          	addi	a0,a0,304 # 8000a248 <CONSOLE_STATUS+0x238>
    80007120:	ffffe097          	auipc	ra,0xffffe
    80007124:	7e8080e7          	jalr	2024(ra) # 80005908 <_Z11printStringPKc>
    for (int i = 0; i < arrSize; i++) {
    80007128:	0014849b          	addiw	s1,s1,1
    8000712c:	000187b7          	lui	a5,0x18
    80007130:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    80007134:	0297c863          	blt	a5,s1,80007164 <_Z16test_performansiv+0x168>
        int ret = kmem_cache_free(cache1, arr[i]);
    80007138:	00349713          	slli	a4,s1,0x3
    8000713c:	00006797          	auipc	a5,0x6
    80007140:	fbc78793          	addi	a5,a5,-68 # 8000d0f8 <arr>
    80007144:	00e787b3          	add	a5,a5,a4
    80007148:	0007b583          	ld	a1,0(a5)
    8000714c:	00090513          	mv	a0,s2
    80007150:	ffffe097          	auipc	ra,0xffffe
    80007154:	6b0080e7          	jalr	1712(ra) # 80005800 <_Z15kmem_cache_freeP12kmem_cache_sPv>
        if(ret == -1){
    80007158:	fff00793          	li	a5,-1
    8000715c:	fcf516e3          	bne	a0,a5,80007128 <_Z16test_performansiv+0x12c>
    80007160:	f61ff06f          	j	800070c0 <_Z16test_performansiv+0xc4>
        }
    }
    printString("*****************************AFTER DEALLOCATION****************************\n\n");
    80007164:	00003517          	auipc	a0,0x3
    80007168:	5cc50513          	addi	a0,a0,1484 # 8000a730 <CONSOLE_STATUS+0x720>
    8000716c:	ffffe097          	auipc	ra,0xffffe
    80007170:	79c080e7          	jalr	1948(ra) # 80005908 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    80007174:	00090513          	mv	a0,s2
    80007178:	ffffe097          	auipc	ra,0xffffe
    8000717c:	740080e7          	jalr	1856(ra) # 800058b8 <_Z15kmem_cache_infoP12kmem_cache_s>
}
    80007180:	01813083          	ld	ra,24(sp)
    80007184:	01013403          	ld	s0,16(sp)
    80007188:	00813483          	ld	s1,8(sp)
    8000718c:	00013903          	ld	s2,0(sp)
    80007190:	02010113          	addi	sp,sp,32
    80007194:	00008067          	ret

0000000080007198 <_Z23test_razlika_u_adresamav>:

void test_razlika_u_adresama(){
    80007198:	fc010113          	addi	sp,sp,-64
    8000719c:	02113c23          	sd	ra,56(sp)
    800071a0:	02813823          	sd	s0,48(sp)
    800071a4:	02913423          	sd	s1,40(sp)
    800071a8:	03213023          	sd	s2,32(sp)
    800071ac:	01313c23          	sd	s3,24(sp)
    800071b0:	01413823          	sd	s4,16(sp)
    800071b4:	01513423          	sd	s5,8(sp)
    800071b8:	04010413          	addi	s0,sp,64
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    800071bc:	00000693          	li	a3,0
    800071c0:	00000613          	li	a2,0
    800071c4:	00100593          	li	a1,1
    800071c8:	00003517          	auipc	a0,0x3
    800071cc:	46050513          	addi	a0,a0,1120 # 8000a628 <CONSOLE_STATUS+0x618>
    800071d0:	ffffe097          	auipc	ra,0xffffe
    800071d4:	52c080e7          	jalr	1324(ra) # 800056fc <_Z17kmem_cache_createPKcmPFvPvES3_>
    800071d8:	00050a93          	mv	s5,a0
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    800071dc:	00003517          	auipc	a0,0x3
    800071e0:	45450513          	addi	a0,a0,1108 # 8000a630 <CONSOLE_STATUS+0x620>
    800071e4:	ffffe097          	auipc	ra,0xffffe
    800071e8:	724080e7          	jalr	1828(ra) # 80005908 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    800071ec:	000a8513          	mv	a0,s5
    800071f0:	ffffe097          	auipc	ra,0xffffe
    800071f4:	6c8080e7          	jalr	1736(ra) # 800058b8 <_Z15kmem_cache_infoP12kmem_cache_s>
    Class1* arr[arrSize];
    size_t prevAddr = 0;
    for (int i = 0; i < arrSize; i++) {
    800071f8:	00000993          	li	s3,0
    size_t prevAddr = 0;
    800071fc:	00000913          	li	s2,0
    80007200:	0440006f          	j	80007244 <_Z23test_razlika_u_adresamav+0xac>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
        if ((size_t)arr[i] - prevAddr != 1 && prevAddr != 0) {
            printString("Nadjena razlika sa prethodnom adresom: ");
    80007204:	00003517          	auipc	a0,0x3
    80007208:	57c50513          	addi	a0,a0,1404 # 8000a780 <CONSOLE_STATUS+0x770>
    8000720c:	ffffe097          	auipc	ra,0xffffe
    80007210:	6fc080e7          	jalr	1788(ra) # 80005908 <_Z11printStringPKc>
            printInt((size_t)arr[i]);
    80007214:	00000613          	li	a2,0
    80007218:	00a00593          	li	a1,10
    8000721c:	0004851b          	sext.w	a0,s1
    80007220:	fffff097          	auipc	ra,0xfffff
    80007224:	880080e7          	jalr	-1920(ra) # 80005aa0 <_Z8printIntiii>
            printString("\n");
    80007228:	00003517          	auipc	a0,0x3
    8000722c:	02050513          	addi	a0,a0,32 # 8000a248 <CONSOLE_STATUS+0x238>
    80007230:	ffffe097          	auipc	ra,0xffffe
    80007234:	6d8080e7          	jalr	1752(ra) # 80005908 <_Z11printStringPKc>
        }
        if((size_t)arr[i] - prevAddr == 0){
    80007238:	052a0063          	beq	s4,s2,80007278 <_Z23test_razlika_u_adresamav+0xe0>
    for (int i = 0; i < arrSize; i++) {
    8000723c:	0019899b          	addiw	s3,s3,1
//                printString("Ova adresa ima duplikat: ");
//                printInt((size_t)arr[i]);
//                printString("\n");
//            }
//        }
        prevAddr = (size_t)arr[i];
    80007240:	00048913          	mv	s2,s1
    for (int i = 0; i < arrSize; i++) {
    80007244:	000187b7          	lui	a5,0x18
    80007248:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    8000724c:	0737c263          	blt	a5,s3,800072b0 <_Z23test_razlika_u_adresamav+0x118>
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
    80007250:	000a8513          	mv	a0,s5
    80007254:	ffffe097          	auipc	ra,0xffffe
    80007258:	550080e7          	jalr	1360(ra) # 800057a4 <_Z16kmem_cache_allocP12kmem_cache_s>
    8000725c:	00050493          	mv	s1,a0
        if ((size_t)arr[i] - prevAddr != 1 && prevAddr != 0) {
    80007260:	00050a13          	mv	s4,a0
    80007264:	41250733          	sub	a4,a0,s2
    80007268:	00100793          	li	a5,1
    8000726c:	fcf706e3          	beq	a4,a5,80007238 <_Z23test_razlika_u_adresamav+0xa0>
    80007270:	fc0904e3          	beqz	s2,80007238 <_Z23test_razlika_u_adresamav+0xa0>
    80007274:	f91ff06f          	j	80007204 <_Z23test_razlika_u_adresamav+0x6c>
            printString("Nadjene dve uzastopne iste adrese");
    80007278:	00003517          	auipc	a0,0x3
    8000727c:	53050513          	addi	a0,a0,1328 # 8000a7a8 <CONSOLE_STATUS+0x798>
    80007280:	ffffe097          	auipc	ra,0xffffe
    80007284:	688080e7          	jalr	1672(ra) # 80005908 <_Z11printStringPKc>
            printInt((size_t)arr[i]);
    80007288:	00000613          	li	a2,0
    8000728c:	00a00593          	li	a1,10
    80007290:	0004851b          	sext.w	a0,s1
    80007294:	fffff097          	auipc	ra,0xfffff
    80007298:	80c080e7          	jalr	-2036(ra) # 80005aa0 <_Z8printIntiii>
            printString("\n");
    8000729c:	00003517          	auipc	a0,0x3
    800072a0:	fac50513          	addi	a0,a0,-84 # 8000a248 <CONSOLE_STATUS+0x238>
    800072a4:	ffffe097          	auipc	ra,0xffffe
    800072a8:	664080e7          	jalr	1636(ra) # 80005908 <_Z11printStringPKc>
    800072ac:	f91ff06f          	j	8000723c <_Z23test_razlika_u_adresamav+0xa4>

    }
    printString("*****************************AFTER ALLOCATION******************************\n\n");
    800072b0:	00003517          	auipc	a0,0x3
    800072b4:	40850513          	addi	a0,a0,1032 # 8000a6b8 <CONSOLE_STATUS+0x6a8>
    800072b8:	ffffe097          	auipc	ra,0xffffe
    800072bc:	650080e7          	jalr	1616(ra) # 80005908 <_Z11printStringPKc>
    printString("\n");
    800072c0:	00003517          	auipc	a0,0x3
    800072c4:	f8850513          	addi	a0,a0,-120 # 8000a248 <CONSOLE_STATUS+0x238>
    800072c8:	ffffe097          	auipc	ra,0xffffe
    800072cc:	640080e7          	jalr	1600(ra) # 80005908 <_Z11printStringPKc>
    kmem_cache_info(cache1);
    800072d0:	000a8513          	mv	a0,s5
    800072d4:	ffffe097          	auipc	ra,0xffffe
    800072d8:	5e4080e7          	jalr	1508(ra) # 800058b8 <_Z15kmem_cache_infoP12kmem_cache_s>
}
    800072dc:	03813083          	ld	ra,56(sp)
    800072e0:	03013403          	ld	s0,48(sp)
    800072e4:	02813483          	ld	s1,40(sp)
    800072e8:	02013903          	ld	s2,32(sp)
    800072ec:	01813983          	ld	s3,24(sp)
    800072f0:	01013a03          	ld	s4,16(sp)
    800072f4:	00813a83          	ld	s5,8(sp)
    800072f8:	04010113          	addi	sp,sp,64
    800072fc:	00008067          	ret

0000000080007300 <_Z9test_nitiv>:

void test_niti(){
    80007300:	fe010113          	addi	sp,sp,-32
    80007304:	00113c23          	sd	ra,24(sp)
    80007308:	00813823          	sd	s0,16(sp)
    8000730c:	00913423          	sd	s1,8(sp)
    80007310:	01213023          	sd	s2,0(sp)
    80007314:	02010413          	addi	s0,sp,32
    Thread* threads[4];

    threads[0] = new WorkerA();
    80007318:	01000513          	li	a0,16
    8000731c:	ffffd097          	auipc	ra,0xffffd
    80007320:	e68080e7          	jalr	-408(ra) # 80004184 <_Znwm>
    80007324:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80007328:	ffffd097          	auipc	ra,0xffffd
    8000732c:	0ec080e7          	jalr	236(ra) # 80004414 <_ZN6ThreadC1Ev>
    80007330:	00006797          	auipc	a5,0x6
    80007334:	9d878793          	addi	a5,a5,-1576 # 8000cd08 <_ZTV7WorkerA+0x10>
    80007338:	00f4b023          	sd	a5,0(s1)
    printString("ThreadA created\n");
    8000733c:	00003517          	auipc	a0,0x3
    80007340:	1a450513          	addi	a0,a0,420 # 8000a4e0 <CONSOLE_STATUS+0x4d0>
    80007344:	ffffe097          	auipc	ra,0xffffe
    80007348:	5c4080e7          	jalr	1476(ra) # 80005908 <_Z11printStringPKc>
//    threads[0]->start();
}
    8000734c:	01813083          	ld	ra,24(sp)
    80007350:	01013403          	ld	s0,16(sp)
    80007354:	00813483          	ld	s1,8(sp)
    80007358:	00013903          	ld	s2,0(sp)
    8000735c:	02010113          	addi	sp,sp,32
    80007360:	00008067          	ret
    80007364:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80007368:	00048513          	mv	a0,s1
    8000736c:	ffffd097          	auipc	ra,0xffffd
    80007370:	e68080e7          	jalr	-408(ra) # 800041d4 <_ZdlPv>
    80007374:	00090513          	mv	a0,s2
    80007378:	000ca097          	auipc	ra,0xca
    8000737c:	350080e7          	jalr	848(ra) # 800d16c8 <_Unwind_Resume>

0000000080007380 <_Z8userMainv>:

void userMain() {
    80007380:	ff010113          	addi	sp,sp,-16
    80007384:	00113423          	sd	ra,8(sp)
    80007388:	00813023          	sd	s0,0(sp)
    8000738c:	01010413          	addi	s0,sp,16
//    test_adrese();
//    test_pristup_parametru();
//    test_razlika_u_adresama();
//    test_performansi();

    test_niti();
    80007390:	00000097          	auipc	ra,0x0
    80007394:	f70080e7          	jalr	-144(ra) # 80007300 <_Z9test_nitiv>

//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80007398:	fffff097          	auipc	ra,0xfffff
    8000739c:	0f0080e7          	jalr	240(ra) # 80006488 <_Z20Threads_CPP_API_testv>
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

//    testModif();
//    testPrenosParametara();

    800073a0:	00813083          	ld	ra,8(sp)
    800073a4:	00013403          	ld	s0,0(sp)
    800073a8:	01010113          	addi	sp,sp,16
    800073ac:	00008067          	ret

00000000800073b0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800073b0:	ff010113          	addi	sp,sp,-16
    800073b4:	00113423          	sd	ra,8(sp)
    800073b8:	00813023          	sd	s0,0(sp)
    800073bc:	01010413          	addi	s0,sp,16
    800073c0:	00006797          	auipc	a5,0x6
    800073c4:	94878793          	addi	a5,a5,-1720 # 8000cd08 <_ZTV7WorkerA+0x10>
    800073c8:	00f53023          	sd	a5,0(a0)
    800073cc:	ffffd097          	auipc	ra,0xffffd
    800073d0:	c44080e7          	jalr	-956(ra) # 80004010 <_ZN6ThreadD1Ev>
    800073d4:	00813083          	ld	ra,8(sp)
    800073d8:	00013403          	ld	s0,0(sp)
    800073dc:	01010113          	addi	sp,sp,16
    800073e0:	00008067          	ret

00000000800073e4 <_ZN7WorkerAD0Ev>:
    800073e4:	fe010113          	addi	sp,sp,-32
    800073e8:	00113c23          	sd	ra,24(sp)
    800073ec:	00813823          	sd	s0,16(sp)
    800073f0:	00913423          	sd	s1,8(sp)
    800073f4:	02010413          	addi	s0,sp,32
    800073f8:	00050493          	mv	s1,a0
    800073fc:	00006797          	auipc	a5,0x6
    80007400:	90c78793          	addi	a5,a5,-1780 # 8000cd08 <_ZTV7WorkerA+0x10>
    80007404:	00f53023          	sd	a5,0(a0)
    80007408:	ffffd097          	auipc	ra,0xffffd
    8000740c:	c08080e7          	jalr	-1016(ra) # 80004010 <_ZN6ThreadD1Ev>
    80007410:	00048513          	mv	a0,s1
    80007414:	ffffd097          	auipc	ra,0xffffd
    80007418:	dc0080e7          	jalr	-576(ra) # 800041d4 <_ZdlPv>
    8000741c:	01813083          	ld	ra,24(sp)
    80007420:	01013403          	ld	s0,16(sp)
    80007424:	00813483          	ld	s1,8(sp)
    80007428:	02010113          	addi	sp,sp,32
    8000742c:	00008067          	ret

0000000080007430 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80007430:	ff010113          	addi	sp,sp,-16
    80007434:	00113423          	sd	ra,8(sp)
    80007438:	00813023          	sd	s0,0(sp)
    8000743c:	01010413          	addi	s0,sp,16
    80007440:	00006797          	auipc	a5,0x6
    80007444:	8f078793          	addi	a5,a5,-1808 # 8000cd30 <_ZTV7WorkerB+0x10>
    80007448:	00f53023          	sd	a5,0(a0)
    8000744c:	ffffd097          	auipc	ra,0xffffd
    80007450:	bc4080e7          	jalr	-1084(ra) # 80004010 <_ZN6ThreadD1Ev>
    80007454:	00813083          	ld	ra,8(sp)
    80007458:	00013403          	ld	s0,0(sp)
    8000745c:	01010113          	addi	sp,sp,16
    80007460:	00008067          	ret

0000000080007464 <_ZN7WorkerBD0Ev>:
    80007464:	fe010113          	addi	sp,sp,-32
    80007468:	00113c23          	sd	ra,24(sp)
    8000746c:	00813823          	sd	s0,16(sp)
    80007470:	00913423          	sd	s1,8(sp)
    80007474:	02010413          	addi	s0,sp,32
    80007478:	00050493          	mv	s1,a0
    8000747c:	00006797          	auipc	a5,0x6
    80007480:	8b478793          	addi	a5,a5,-1868 # 8000cd30 <_ZTV7WorkerB+0x10>
    80007484:	00f53023          	sd	a5,0(a0)
    80007488:	ffffd097          	auipc	ra,0xffffd
    8000748c:	b88080e7          	jalr	-1144(ra) # 80004010 <_ZN6ThreadD1Ev>
    80007490:	00048513          	mv	a0,s1
    80007494:	ffffd097          	auipc	ra,0xffffd
    80007498:	d40080e7          	jalr	-704(ra) # 800041d4 <_ZdlPv>
    8000749c:	01813083          	ld	ra,24(sp)
    800074a0:	01013403          	ld	s0,16(sp)
    800074a4:	00813483          	ld	s1,8(sp)
    800074a8:	02010113          	addi	sp,sp,32
    800074ac:	00008067          	ret

00000000800074b0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800074b0:	ff010113          	addi	sp,sp,-16
    800074b4:	00113423          	sd	ra,8(sp)
    800074b8:	00813023          	sd	s0,0(sp)
    800074bc:	01010413          	addi	s0,sp,16
    800074c0:	00006797          	auipc	a5,0x6
    800074c4:	89878793          	addi	a5,a5,-1896 # 8000cd58 <_ZTV7WorkerC+0x10>
    800074c8:	00f53023          	sd	a5,0(a0)
    800074cc:	ffffd097          	auipc	ra,0xffffd
    800074d0:	b44080e7          	jalr	-1212(ra) # 80004010 <_ZN6ThreadD1Ev>
    800074d4:	00813083          	ld	ra,8(sp)
    800074d8:	00013403          	ld	s0,0(sp)
    800074dc:	01010113          	addi	sp,sp,16
    800074e0:	00008067          	ret

00000000800074e4 <_ZN7WorkerCD0Ev>:
    800074e4:	fe010113          	addi	sp,sp,-32
    800074e8:	00113c23          	sd	ra,24(sp)
    800074ec:	00813823          	sd	s0,16(sp)
    800074f0:	00913423          	sd	s1,8(sp)
    800074f4:	02010413          	addi	s0,sp,32
    800074f8:	00050493          	mv	s1,a0
    800074fc:	00006797          	auipc	a5,0x6
    80007500:	85c78793          	addi	a5,a5,-1956 # 8000cd58 <_ZTV7WorkerC+0x10>
    80007504:	00f53023          	sd	a5,0(a0)
    80007508:	ffffd097          	auipc	ra,0xffffd
    8000750c:	b08080e7          	jalr	-1272(ra) # 80004010 <_ZN6ThreadD1Ev>
    80007510:	00048513          	mv	a0,s1
    80007514:	ffffd097          	auipc	ra,0xffffd
    80007518:	cc0080e7          	jalr	-832(ra) # 800041d4 <_ZdlPv>
    8000751c:	01813083          	ld	ra,24(sp)
    80007520:	01013403          	ld	s0,16(sp)
    80007524:	00813483          	ld	s1,8(sp)
    80007528:	02010113          	addi	sp,sp,32
    8000752c:	00008067          	ret

0000000080007530 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80007530:	ff010113          	addi	sp,sp,-16
    80007534:	00113423          	sd	ra,8(sp)
    80007538:	00813023          	sd	s0,0(sp)
    8000753c:	01010413          	addi	s0,sp,16
    80007540:	00006797          	auipc	a5,0x6
    80007544:	84078793          	addi	a5,a5,-1984 # 8000cd80 <_ZTV7WorkerD+0x10>
    80007548:	00f53023          	sd	a5,0(a0)
    8000754c:	ffffd097          	auipc	ra,0xffffd
    80007550:	ac4080e7          	jalr	-1340(ra) # 80004010 <_ZN6ThreadD1Ev>
    80007554:	00813083          	ld	ra,8(sp)
    80007558:	00013403          	ld	s0,0(sp)
    8000755c:	01010113          	addi	sp,sp,16
    80007560:	00008067          	ret

0000000080007564 <_ZN7WorkerDD0Ev>:
    80007564:	fe010113          	addi	sp,sp,-32
    80007568:	00113c23          	sd	ra,24(sp)
    8000756c:	00813823          	sd	s0,16(sp)
    80007570:	00913423          	sd	s1,8(sp)
    80007574:	02010413          	addi	s0,sp,32
    80007578:	00050493          	mv	s1,a0
    8000757c:	00006797          	auipc	a5,0x6
    80007580:	80478793          	addi	a5,a5,-2044 # 8000cd80 <_ZTV7WorkerD+0x10>
    80007584:	00f53023          	sd	a5,0(a0)
    80007588:	ffffd097          	auipc	ra,0xffffd
    8000758c:	a88080e7          	jalr	-1400(ra) # 80004010 <_ZN6ThreadD1Ev>
    80007590:	00048513          	mv	a0,s1
    80007594:	ffffd097          	auipc	ra,0xffffd
    80007598:	c40080e7          	jalr	-960(ra) # 800041d4 <_ZdlPv>
    8000759c:	01813083          	ld	ra,24(sp)
    800075a0:	01013403          	ld	s0,16(sp)
    800075a4:	00813483          	ld	s1,8(sp)
    800075a8:	02010113          	addi	sp,sp,32
    800075ac:	00008067          	ret

00000000800075b0 <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    800075b0:	ff010113          	addi	sp,sp,-16
    800075b4:	00113423          	sd	ra,8(sp)
    800075b8:	00813023          	sd	s0,0(sp)
    800075bc:	01010413          	addi	s0,sp,16
    800075c0:	00006797          	auipc	a5,0x6
    800075c4:	83878793          	addi	a5,a5,-1992 # 8000cdf8 <_ZTV8Consumer+0x10>
    800075c8:	00f53023          	sd	a5,0(a0)
    800075cc:	ffffd097          	auipc	ra,0xffffd
    800075d0:	a44080e7          	jalr	-1468(ra) # 80004010 <_ZN6ThreadD1Ev>
    800075d4:	00813083          	ld	ra,8(sp)
    800075d8:	00013403          	ld	s0,0(sp)
    800075dc:	01010113          	addi	sp,sp,16
    800075e0:	00008067          	ret

00000000800075e4 <_ZN8ConsumerD0Ev>:
    800075e4:	fe010113          	addi	sp,sp,-32
    800075e8:	00113c23          	sd	ra,24(sp)
    800075ec:	00813823          	sd	s0,16(sp)
    800075f0:	00913423          	sd	s1,8(sp)
    800075f4:	02010413          	addi	s0,sp,32
    800075f8:	00050493          	mv	s1,a0
    800075fc:	00005797          	auipc	a5,0x5
    80007600:	7fc78793          	addi	a5,a5,2044 # 8000cdf8 <_ZTV8Consumer+0x10>
    80007604:	00f53023          	sd	a5,0(a0)
    80007608:	ffffd097          	auipc	ra,0xffffd
    8000760c:	a08080e7          	jalr	-1528(ra) # 80004010 <_ZN6ThreadD1Ev>
    80007610:	00048513          	mv	a0,s1
    80007614:	ffffd097          	auipc	ra,0xffffd
    80007618:	bc0080e7          	jalr	-1088(ra) # 800041d4 <_ZdlPv>
    8000761c:	01813083          	ld	ra,24(sp)
    80007620:	01013403          	ld	s0,16(sp)
    80007624:	00813483          	ld	s1,8(sp)
    80007628:	02010113          	addi	sp,sp,32
    8000762c:	00008067          	ret

0000000080007630 <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    80007630:	ff010113          	addi	sp,sp,-16
    80007634:	00113423          	sd	ra,8(sp)
    80007638:	00813023          	sd	s0,0(sp)
    8000763c:	01010413          	addi	s0,sp,16
    80007640:	00005797          	auipc	a5,0x5
    80007644:	79078793          	addi	a5,a5,1936 # 8000cdd0 <_ZTV8Producer+0x10>
    80007648:	00f53023          	sd	a5,0(a0)
    8000764c:	ffffd097          	auipc	ra,0xffffd
    80007650:	9c4080e7          	jalr	-1596(ra) # 80004010 <_ZN6ThreadD1Ev>
    80007654:	00813083          	ld	ra,8(sp)
    80007658:	00013403          	ld	s0,0(sp)
    8000765c:	01010113          	addi	sp,sp,16
    80007660:	00008067          	ret

0000000080007664 <_ZN8ProducerD0Ev>:
    80007664:	fe010113          	addi	sp,sp,-32
    80007668:	00113c23          	sd	ra,24(sp)
    8000766c:	00813823          	sd	s0,16(sp)
    80007670:	00913423          	sd	s1,8(sp)
    80007674:	02010413          	addi	s0,sp,32
    80007678:	00050493          	mv	s1,a0
    8000767c:	00005797          	auipc	a5,0x5
    80007680:	75478793          	addi	a5,a5,1876 # 8000cdd0 <_ZTV8Producer+0x10>
    80007684:	00f53023          	sd	a5,0(a0)
    80007688:	ffffd097          	auipc	ra,0xffffd
    8000768c:	988080e7          	jalr	-1656(ra) # 80004010 <_ZN6ThreadD1Ev>
    80007690:	00048513          	mv	a0,s1
    80007694:	ffffd097          	auipc	ra,0xffffd
    80007698:	b40080e7          	jalr	-1216(ra) # 800041d4 <_ZdlPv>
    8000769c:	01813083          	ld	ra,24(sp)
    800076a0:	01013403          	ld	s0,16(sp)
    800076a4:	00813483          	ld	s1,8(sp)
    800076a8:	02010113          	addi	sp,sp,32
    800076ac:	00008067          	ret

00000000800076b0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800076b0:	ff010113          	addi	sp,sp,-16
    800076b4:	00113423          	sd	ra,8(sp)
    800076b8:	00813023          	sd	s0,0(sp)
    800076bc:	01010413          	addi	s0,sp,16
    800076c0:	00005797          	auipc	a5,0x5
    800076c4:	6e878793          	addi	a5,a5,1768 # 8000cda8 <_ZTV16ProducerKeyboard+0x10>
    800076c8:	00f53023          	sd	a5,0(a0)
    800076cc:	ffffd097          	auipc	ra,0xffffd
    800076d0:	944080e7          	jalr	-1724(ra) # 80004010 <_ZN6ThreadD1Ev>
    800076d4:	00813083          	ld	ra,8(sp)
    800076d8:	00013403          	ld	s0,0(sp)
    800076dc:	01010113          	addi	sp,sp,16
    800076e0:	00008067          	ret

00000000800076e4 <_ZN16ProducerKeyboardD0Ev>:
    800076e4:	fe010113          	addi	sp,sp,-32
    800076e8:	00113c23          	sd	ra,24(sp)
    800076ec:	00813823          	sd	s0,16(sp)
    800076f0:	00913423          	sd	s1,8(sp)
    800076f4:	02010413          	addi	s0,sp,32
    800076f8:	00050493          	mv	s1,a0
    800076fc:	00005797          	auipc	a5,0x5
    80007700:	6ac78793          	addi	a5,a5,1708 # 8000cda8 <_ZTV16ProducerKeyboard+0x10>
    80007704:	00f53023          	sd	a5,0(a0)
    80007708:	ffffd097          	auipc	ra,0xffffd
    8000770c:	908080e7          	jalr	-1784(ra) # 80004010 <_ZN6ThreadD1Ev>
    80007710:	00048513          	mv	a0,s1
    80007714:	ffffd097          	auipc	ra,0xffffd
    80007718:	ac0080e7          	jalr	-1344(ra) # 800041d4 <_ZdlPv>
    8000771c:	01813083          	ld	ra,24(sp)
    80007720:	01013403          	ld	s0,16(sp)
    80007724:	00813483          	ld	s1,8(sp)
    80007728:	02010113          	addi	sp,sp,32
    8000772c:	00008067          	ret

0000000080007730 <_ZN7WorkerA3runEv>:
    void run() override {
    80007730:	ff010113          	addi	sp,sp,-16
    80007734:	00113423          	sd	ra,8(sp)
    80007738:	00813023          	sd	s0,0(sp)
    8000773c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80007740:	00000593          	li	a1,0
    80007744:	fffff097          	auipc	ra,0xfffff
    80007748:	8dc080e7          	jalr	-1828(ra) # 80006020 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000774c:	00813083          	ld	ra,8(sp)
    80007750:	00013403          	ld	s0,0(sp)
    80007754:	01010113          	addi	sp,sp,16
    80007758:	00008067          	ret

000000008000775c <_ZN7WorkerB3runEv>:
    void run() override {
    8000775c:	ff010113          	addi	sp,sp,-16
    80007760:	00113423          	sd	ra,8(sp)
    80007764:	00813023          	sd	s0,0(sp)
    80007768:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000776c:	00000593          	li	a1,0
    80007770:	fffff097          	auipc	ra,0xfffff
    80007774:	97c080e7          	jalr	-1668(ra) # 800060ec <_ZN7WorkerB11workerBodyBEPv>
    }
    80007778:	00813083          	ld	ra,8(sp)
    8000777c:	00013403          	ld	s0,0(sp)
    80007780:	01010113          	addi	sp,sp,16
    80007784:	00008067          	ret

0000000080007788 <_ZN7WorkerC3runEv>:
    void run() override {
    80007788:	ff010113          	addi	sp,sp,-16
    8000778c:	00113423          	sd	ra,8(sp)
    80007790:	00813023          	sd	s0,0(sp)
    80007794:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80007798:	00000593          	li	a1,0
    8000779c:	fffff097          	auipc	ra,0xfffff
    800077a0:	a24080e7          	jalr	-1500(ra) # 800061c0 <_ZN7WorkerC11workerBodyCEPv>
    }
    800077a4:	00813083          	ld	ra,8(sp)
    800077a8:	00013403          	ld	s0,0(sp)
    800077ac:	01010113          	addi	sp,sp,16
    800077b0:	00008067          	ret

00000000800077b4 <_ZN7WorkerD3runEv>:
    void run() override {
    800077b4:	ff010113          	addi	sp,sp,-16
    800077b8:	00113423          	sd	ra,8(sp)
    800077bc:	00813023          	sd	s0,0(sp)
    800077c0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800077c4:	00000593          	li	a1,0
    800077c8:	fffff097          	auipc	ra,0xfffff
    800077cc:	b78080e7          	jalr	-1160(ra) # 80006340 <_ZN7WorkerD11workerBodyDEPv>
    }
    800077d0:	00813083          	ld	ra,8(sp)
    800077d4:	00013403          	ld	s0,0(sp)
    800077d8:	01010113          	addi	sp,sp,16
    800077dc:	00008067          	ret

00000000800077e0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800077e0:	ff010113          	addi	sp,sp,-16
    800077e4:	00113423          	sd	ra,8(sp)
    800077e8:	00813023          	sd	s0,0(sp)
    800077ec:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800077f0:	01053583          	ld	a1,16(a0)
    800077f4:	fffff097          	auipc	ra,0xfffff
    800077f8:	ea4080e7          	jalr	-348(ra) # 80006698 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800077fc:	00813083          	ld	ra,8(sp)
    80007800:	00013403          	ld	s0,0(sp)
    80007804:	01010113          	addi	sp,sp,16
    80007808:	00008067          	ret

000000008000780c <_ZN8Producer3runEv>:
    void run() override {
    8000780c:	ff010113          	addi	sp,sp,-16
    80007810:	00113423          	sd	ra,8(sp)
    80007814:	00813023          	sd	s0,0(sp)
    80007818:	01010413          	addi	s0,sp,16
        producer(td);
    8000781c:	01053583          	ld	a1,16(a0)
    80007820:	fffff097          	auipc	ra,0xfffff
    80007824:	f38080e7          	jalr	-200(ra) # 80006758 <_ZN8Producer8producerEPv>
    }
    80007828:	00813083          	ld	ra,8(sp)
    8000782c:	00013403          	ld	s0,0(sp)
    80007830:	01010113          	addi	sp,sp,16
    80007834:	00008067          	ret

0000000080007838 <_ZN8Consumer3runEv>:
    void run() override {
    80007838:	ff010113          	addi	sp,sp,-16
    8000783c:	00113423          	sd	ra,8(sp)
    80007840:	00813023          	sd	s0,0(sp)
    80007844:	01010413          	addi	s0,sp,16
        consumer(td);
    80007848:	01053583          	ld	a1,16(a0)
    8000784c:	fffff097          	auipc	ra,0xfffff
    80007850:	fa0080e7          	jalr	-96(ra) # 800067ec <_ZN8Consumer8consumerEPv>
    }
    80007854:	00813083          	ld	ra,8(sp)
    80007858:	00013403          	ld	s0,0(sp)
    8000785c:	01010113          	addi	sp,sp,16
    80007860:	00008067          	ret

0000000080007864 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80007864:	fe010113          	addi	sp,sp,-32
    80007868:	00113c23          	sd	ra,24(sp)
    8000786c:	00813823          	sd	s0,16(sp)
    80007870:	00913423          	sd	s1,8(sp)
    80007874:	01213023          	sd	s2,0(sp)
    80007878:	02010413          	addi	s0,sp,32
    8000787c:	00050493          	mv	s1,a0
    80007880:	00058913          	mv	s2,a1
    80007884:	0015879b          	addiw	a5,a1,1
    80007888:	0007851b          	sext.w	a0,a5
    8000788c:	00f4a023          	sw	a5,0(s1)
    80007890:	0004a823          	sw	zero,16(s1)
    80007894:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80007898:	00251513          	slli	a0,a0,0x2
    8000789c:	ffffa097          	auipc	ra,0xffffa
    800078a0:	9a8080e7          	jalr	-1624(ra) # 80001244 <mem_alloc>
    800078a4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800078a8:	00000593          	li	a1,0
    800078ac:	02048513          	addi	a0,s1,32
    800078b0:	ffffa097          	auipc	ra,0xffffa
    800078b4:	bd8080e7          	jalr	-1064(ra) # 80001488 <sem_open>
    sem_open(&spaceAvailable, _cap);
    800078b8:	00090593          	mv	a1,s2
    800078bc:	01848513          	addi	a0,s1,24
    800078c0:	ffffa097          	auipc	ra,0xffffa
    800078c4:	bc8080e7          	jalr	-1080(ra) # 80001488 <sem_open>
    sem_open(&mutexHead, 1);
    800078c8:	00100593          	li	a1,1
    800078cc:	02848513          	addi	a0,s1,40
    800078d0:	ffffa097          	auipc	ra,0xffffa
    800078d4:	bb8080e7          	jalr	-1096(ra) # 80001488 <sem_open>
    sem_open(&mutexTail, 1);
    800078d8:	00100593          	li	a1,1
    800078dc:	03048513          	addi	a0,s1,48
    800078e0:	ffffa097          	auipc	ra,0xffffa
    800078e4:	ba8080e7          	jalr	-1112(ra) # 80001488 <sem_open>
}
    800078e8:	01813083          	ld	ra,24(sp)
    800078ec:	01013403          	ld	s0,16(sp)
    800078f0:	00813483          	ld	s1,8(sp)
    800078f4:	00013903          	ld	s2,0(sp)
    800078f8:	02010113          	addi	sp,sp,32
    800078fc:	00008067          	ret

0000000080007900 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80007900:	fe010113          	addi	sp,sp,-32
    80007904:	00113c23          	sd	ra,24(sp)
    80007908:	00813823          	sd	s0,16(sp)
    8000790c:	00913423          	sd	s1,8(sp)
    80007910:	01213023          	sd	s2,0(sp)
    80007914:	02010413          	addi	s0,sp,32
    80007918:	00050493          	mv	s1,a0
    8000791c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80007920:	01853503          	ld	a0,24(a0)
    80007924:	ffffa097          	auipc	ra,0xffffa
    80007928:	c0c080e7          	jalr	-1012(ra) # 80001530 <sem_wait>

    sem_wait(mutexTail);
    8000792c:	0304b503          	ld	a0,48(s1)
    80007930:	ffffa097          	auipc	ra,0xffffa
    80007934:	c00080e7          	jalr	-1024(ra) # 80001530 <sem_wait>
    buffer[tail] = val;
    80007938:	0084b783          	ld	a5,8(s1)
    8000793c:	0144a703          	lw	a4,20(s1)
    80007940:	00271713          	slli	a4,a4,0x2
    80007944:	00e787b3          	add	a5,a5,a4
    80007948:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000794c:	0144a783          	lw	a5,20(s1)
    80007950:	0017879b          	addiw	a5,a5,1
    80007954:	0004a703          	lw	a4,0(s1)
    80007958:	02e7e7bb          	remw	a5,a5,a4
    8000795c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80007960:	0304b503          	ld	a0,48(s1)
    80007964:	ffffa097          	auipc	ra,0xffffa
    80007968:	c20080e7          	jalr	-992(ra) # 80001584 <sem_signal>

    sem_signal(itemAvailable);
    8000796c:	0204b503          	ld	a0,32(s1)
    80007970:	ffffa097          	auipc	ra,0xffffa
    80007974:	c14080e7          	jalr	-1004(ra) # 80001584 <sem_signal>

}
    80007978:	01813083          	ld	ra,24(sp)
    8000797c:	01013403          	ld	s0,16(sp)
    80007980:	00813483          	ld	s1,8(sp)
    80007984:	00013903          	ld	s2,0(sp)
    80007988:	02010113          	addi	sp,sp,32
    8000798c:	00008067          	ret

0000000080007990 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80007990:	fe010113          	addi	sp,sp,-32
    80007994:	00113c23          	sd	ra,24(sp)
    80007998:	00813823          	sd	s0,16(sp)
    8000799c:	00913423          	sd	s1,8(sp)
    800079a0:	01213023          	sd	s2,0(sp)
    800079a4:	02010413          	addi	s0,sp,32
    800079a8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800079ac:	02053503          	ld	a0,32(a0)
    800079b0:	ffffa097          	auipc	ra,0xffffa
    800079b4:	b80080e7          	jalr	-1152(ra) # 80001530 <sem_wait>

    sem_wait(mutexHead);
    800079b8:	0284b503          	ld	a0,40(s1)
    800079bc:	ffffa097          	auipc	ra,0xffffa
    800079c0:	b74080e7          	jalr	-1164(ra) # 80001530 <sem_wait>

    int ret = buffer[head];
    800079c4:	0084b703          	ld	a4,8(s1)
    800079c8:	0104a783          	lw	a5,16(s1)
    800079cc:	00279693          	slli	a3,a5,0x2
    800079d0:	00d70733          	add	a4,a4,a3
    800079d4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800079d8:	0017879b          	addiw	a5,a5,1
    800079dc:	0004a703          	lw	a4,0(s1)
    800079e0:	02e7e7bb          	remw	a5,a5,a4
    800079e4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800079e8:	0284b503          	ld	a0,40(s1)
    800079ec:	ffffa097          	auipc	ra,0xffffa
    800079f0:	b98080e7          	jalr	-1128(ra) # 80001584 <sem_signal>

    sem_signal(spaceAvailable);
    800079f4:	0184b503          	ld	a0,24(s1)
    800079f8:	ffffa097          	auipc	ra,0xffffa
    800079fc:	b8c080e7          	jalr	-1140(ra) # 80001584 <sem_signal>

    return ret;
}
    80007a00:	00090513          	mv	a0,s2
    80007a04:	01813083          	ld	ra,24(sp)
    80007a08:	01013403          	ld	s0,16(sp)
    80007a0c:	00813483          	ld	s1,8(sp)
    80007a10:	00013903          	ld	s2,0(sp)
    80007a14:	02010113          	addi	sp,sp,32
    80007a18:	00008067          	ret

0000000080007a1c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80007a1c:	fe010113          	addi	sp,sp,-32
    80007a20:	00113c23          	sd	ra,24(sp)
    80007a24:	00813823          	sd	s0,16(sp)
    80007a28:	00913423          	sd	s1,8(sp)
    80007a2c:	01213023          	sd	s2,0(sp)
    80007a30:	02010413          	addi	s0,sp,32
    80007a34:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80007a38:	02853503          	ld	a0,40(a0)
    80007a3c:	ffffa097          	auipc	ra,0xffffa
    80007a40:	af4080e7          	jalr	-1292(ra) # 80001530 <sem_wait>
    sem_wait(mutexTail);
    80007a44:	0304b503          	ld	a0,48(s1)
    80007a48:	ffffa097          	auipc	ra,0xffffa
    80007a4c:	ae8080e7          	jalr	-1304(ra) # 80001530 <sem_wait>

    if (tail >= head) {
    80007a50:	0144a783          	lw	a5,20(s1)
    80007a54:	0104a903          	lw	s2,16(s1)
    80007a58:	0327ce63          	blt	a5,s2,80007a94 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80007a5c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80007a60:	0304b503          	ld	a0,48(s1)
    80007a64:	ffffa097          	auipc	ra,0xffffa
    80007a68:	b20080e7          	jalr	-1248(ra) # 80001584 <sem_signal>
    sem_signal(mutexHead);
    80007a6c:	0284b503          	ld	a0,40(s1)
    80007a70:	ffffa097          	auipc	ra,0xffffa
    80007a74:	b14080e7          	jalr	-1260(ra) # 80001584 <sem_signal>

    return ret;
}
    80007a78:	00090513          	mv	a0,s2
    80007a7c:	01813083          	ld	ra,24(sp)
    80007a80:	01013403          	ld	s0,16(sp)
    80007a84:	00813483          	ld	s1,8(sp)
    80007a88:	00013903          	ld	s2,0(sp)
    80007a8c:	02010113          	addi	sp,sp,32
    80007a90:	00008067          	ret
        ret = cap - head + tail;
    80007a94:	0004a703          	lw	a4,0(s1)
    80007a98:	4127093b          	subw	s2,a4,s2
    80007a9c:	00f9093b          	addw	s2,s2,a5
    80007aa0:	fc1ff06f          	j	80007a60 <_ZN6Buffer6getCntEv+0x44>

0000000080007aa4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80007aa4:	fe010113          	addi	sp,sp,-32
    80007aa8:	00113c23          	sd	ra,24(sp)
    80007aac:	00813823          	sd	s0,16(sp)
    80007ab0:	00913423          	sd	s1,8(sp)
    80007ab4:	02010413          	addi	s0,sp,32
    80007ab8:	00050493          	mv	s1,a0
    putc('\n');
    80007abc:	00a00513          	li	a0,10
    80007ac0:	ffffa097          	auipc	ra,0xffffa
    80007ac4:	b6c080e7          	jalr	-1172(ra) # 8000162c <putc>
    printString("Buffer deleted!\n");
    80007ac8:	00003517          	auipc	a0,0x3
    80007acc:	96850513          	addi	a0,a0,-1688 # 8000a430 <CONSOLE_STATUS+0x420>
    80007ad0:	ffffe097          	auipc	ra,0xffffe
    80007ad4:	e38080e7          	jalr	-456(ra) # 80005908 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80007ad8:	00048513          	mv	a0,s1
    80007adc:	00000097          	auipc	ra,0x0
    80007ae0:	f40080e7          	jalr	-192(ra) # 80007a1c <_ZN6Buffer6getCntEv>
    80007ae4:	02a05c63          	blez	a0,80007b1c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80007ae8:	0084b783          	ld	a5,8(s1)
    80007aec:	0104a703          	lw	a4,16(s1)
    80007af0:	00271713          	slli	a4,a4,0x2
    80007af4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007af8:	0007c503          	lbu	a0,0(a5)
    80007afc:	ffffa097          	auipc	ra,0xffffa
    80007b00:	b30080e7          	jalr	-1232(ra) # 8000162c <putc>
        head = (head + 1) % cap;
    80007b04:	0104a783          	lw	a5,16(s1)
    80007b08:	0017879b          	addiw	a5,a5,1
    80007b0c:	0004a703          	lw	a4,0(s1)
    80007b10:	02e7e7bb          	remw	a5,a5,a4
    80007b14:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80007b18:	fc1ff06f          	j	80007ad8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80007b1c:	02100513          	li	a0,33
    80007b20:	ffffa097          	auipc	ra,0xffffa
    80007b24:	b0c080e7          	jalr	-1268(ra) # 8000162c <putc>
    putc('\n');
    80007b28:	00a00513          	li	a0,10
    80007b2c:	ffffa097          	auipc	ra,0xffffa
    80007b30:	b00080e7          	jalr	-1280(ra) # 8000162c <putc>
    mem_free(buffer);
    80007b34:	0084b503          	ld	a0,8(s1)
    80007b38:	ffff9097          	auipc	ra,0xffff9
    80007b3c:	764080e7          	jalr	1892(ra) # 8000129c <mem_free>
    sem_close(itemAvailable);
    80007b40:	0204b503          	ld	a0,32(s1)
    80007b44:	ffffa097          	auipc	ra,0xffffa
    80007b48:	998080e7          	jalr	-1640(ra) # 800014dc <sem_close>
    sem_close(spaceAvailable);
    80007b4c:	0184b503          	ld	a0,24(s1)
    80007b50:	ffffa097          	auipc	ra,0xffffa
    80007b54:	98c080e7          	jalr	-1652(ra) # 800014dc <sem_close>
    sem_close(mutexTail);
    80007b58:	0304b503          	ld	a0,48(s1)
    80007b5c:	ffffa097          	auipc	ra,0xffffa
    80007b60:	980080e7          	jalr	-1664(ra) # 800014dc <sem_close>
    sem_close(mutexHead);
    80007b64:	0284b503          	ld	a0,40(s1)
    80007b68:	ffffa097          	auipc	ra,0xffffa
    80007b6c:	974080e7          	jalr	-1676(ra) # 800014dc <sem_close>
}
    80007b70:	01813083          	ld	ra,24(sp)
    80007b74:	01013403          	ld	s0,16(sp)
    80007b78:	00813483          	ld	s1,8(sp)
    80007b7c:	02010113          	addi	sp,sp,32
    80007b80:	00008067          	ret

0000000080007b84 <start>:
    80007b84:	ff010113          	addi	sp,sp,-16
    80007b88:	00813423          	sd	s0,8(sp)
    80007b8c:	01010413          	addi	s0,sp,16
    80007b90:	300027f3          	csrr	a5,mstatus
    80007b94:	ffffe737          	lui	a4,0xffffe
    80007b98:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ff2cf9f>
    80007b9c:	00e7f7b3          	and	a5,a5,a4
    80007ba0:	00001737          	lui	a4,0x1
    80007ba4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007ba8:	00e7e7b3          	or	a5,a5,a4
    80007bac:	30079073          	csrw	mstatus,a5
    80007bb0:	00000797          	auipc	a5,0x0
    80007bb4:	16078793          	addi	a5,a5,352 # 80007d10 <system_main>
    80007bb8:	34179073          	csrw	mepc,a5
    80007bbc:	00000793          	li	a5,0
    80007bc0:	18079073          	csrw	satp,a5
    80007bc4:	000107b7          	lui	a5,0x10
    80007bc8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007bcc:	30279073          	csrw	medeleg,a5
    80007bd0:	30379073          	csrw	mideleg,a5
    80007bd4:	104027f3          	csrr	a5,sie
    80007bd8:	2227e793          	ori	a5,a5,546
    80007bdc:	10479073          	csrw	sie,a5
    80007be0:	fff00793          	li	a5,-1
    80007be4:	00a7d793          	srli	a5,a5,0xa
    80007be8:	3b079073          	csrw	pmpaddr0,a5
    80007bec:	00f00793          	li	a5,15
    80007bf0:	3a079073          	csrw	pmpcfg0,a5
    80007bf4:	f14027f3          	csrr	a5,mhartid
    80007bf8:	0200c737          	lui	a4,0x200c
    80007bfc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007c00:	0007869b          	sext.w	a3,a5
    80007c04:	00269713          	slli	a4,a3,0x2
    80007c08:	000f4637          	lui	a2,0xf4
    80007c0c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007c10:	00d70733          	add	a4,a4,a3
    80007c14:	0037979b          	slliw	a5,a5,0x3
    80007c18:	020046b7          	lui	a3,0x2004
    80007c1c:	00d787b3          	add	a5,a5,a3
    80007c20:	00c585b3          	add	a1,a1,a2
    80007c24:	00371693          	slli	a3,a4,0x3
    80007c28:	000c9717          	auipc	a4,0xc9
    80007c2c:	9d870713          	addi	a4,a4,-1576 # 800d0600 <timer_scratch>
    80007c30:	00b7b023          	sd	a1,0(a5)
    80007c34:	00d70733          	add	a4,a4,a3
    80007c38:	00f73c23          	sd	a5,24(a4)
    80007c3c:	02c73023          	sd	a2,32(a4)
    80007c40:	34071073          	csrw	mscratch,a4
    80007c44:	00000797          	auipc	a5,0x0
    80007c48:	6ec78793          	addi	a5,a5,1772 # 80008330 <timervec>
    80007c4c:	30579073          	csrw	mtvec,a5
    80007c50:	300027f3          	csrr	a5,mstatus
    80007c54:	0087e793          	ori	a5,a5,8
    80007c58:	30079073          	csrw	mstatus,a5
    80007c5c:	304027f3          	csrr	a5,mie
    80007c60:	0807e793          	ori	a5,a5,128
    80007c64:	30479073          	csrw	mie,a5
    80007c68:	f14027f3          	csrr	a5,mhartid
    80007c6c:	0007879b          	sext.w	a5,a5
    80007c70:	00078213          	mv	tp,a5
    80007c74:	30200073          	mret
    80007c78:	00813403          	ld	s0,8(sp)
    80007c7c:	01010113          	addi	sp,sp,16
    80007c80:	00008067          	ret

0000000080007c84 <timerinit>:
    80007c84:	ff010113          	addi	sp,sp,-16
    80007c88:	00813423          	sd	s0,8(sp)
    80007c8c:	01010413          	addi	s0,sp,16
    80007c90:	f14027f3          	csrr	a5,mhartid
    80007c94:	0200c737          	lui	a4,0x200c
    80007c98:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007c9c:	0007869b          	sext.w	a3,a5
    80007ca0:	00269713          	slli	a4,a3,0x2
    80007ca4:	000f4637          	lui	a2,0xf4
    80007ca8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007cac:	00d70733          	add	a4,a4,a3
    80007cb0:	0037979b          	slliw	a5,a5,0x3
    80007cb4:	020046b7          	lui	a3,0x2004
    80007cb8:	00d787b3          	add	a5,a5,a3
    80007cbc:	00c585b3          	add	a1,a1,a2
    80007cc0:	00371693          	slli	a3,a4,0x3
    80007cc4:	000c9717          	auipc	a4,0xc9
    80007cc8:	93c70713          	addi	a4,a4,-1732 # 800d0600 <timer_scratch>
    80007ccc:	00b7b023          	sd	a1,0(a5)
    80007cd0:	00d70733          	add	a4,a4,a3
    80007cd4:	00f73c23          	sd	a5,24(a4)
    80007cd8:	02c73023          	sd	a2,32(a4)
    80007cdc:	34071073          	csrw	mscratch,a4
    80007ce0:	00000797          	auipc	a5,0x0
    80007ce4:	65078793          	addi	a5,a5,1616 # 80008330 <timervec>
    80007ce8:	30579073          	csrw	mtvec,a5
    80007cec:	300027f3          	csrr	a5,mstatus
    80007cf0:	0087e793          	ori	a5,a5,8
    80007cf4:	30079073          	csrw	mstatus,a5
    80007cf8:	304027f3          	csrr	a5,mie
    80007cfc:	0807e793          	ori	a5,a5,128
    80007d00:	30479073          	csrw	mie,a5
    80007d04:	00813403          	ld	s0,8(sp)
    80007d08:	01010113          	addi	sp,sp,16
    80007d0c:	00008067          	ret

0000000080007d10 <system_main>:
    80007d10:	fe010113          	addi	sp,sp,-32
    80007d14:	00813823          	sd	s0,16(sp)
    80007d18:	00913423          	sd	s1,8(sp)
    80007d1c:	00113c23          	sd	ra,24(sp)
    80007d20:	02010413          	addi	s0,sp,32
    80007d24:	00000097          	auipc	ra,0x0
    80007d28:	0c4080e7          	jalr	196(ra) # 80007de8 <cpuid>
    80007d2c:	00005497          	auipc	s1,0x5
    80007d30:	16448493          	addi	s1,s1,356 # 8000ce90 <started>
    80007d34:	02050263          	beqz	a0,80007d58 <system_main+0x48>
    80007d38:	0004a783          	lw	a5,0(s1)
    80007d3c:	0007879b          	sext.w	a5,a5
    80007d40:	fe078ce3          	beqz	a5,80007d38 <system_main+0x28>
    80007d44:	0ff0000f          	fence
    80007d48:	00003517          	auipc	a0,0x3
    80007d4c:	ab850513          	addi	a0,a0,-1352 # 8000a800 <CONSOLE_STATUS+0x7f0>
    80007d50:	00001097          	auipc	ra,0x1
    80007d54:	a7c080e7          	jalr	-1412(ra) # 800087cc <panic>
    80007d58:	00001097          	auipc	ra,0x1
    80007d5c:	9d0080e7          	jalr	-1584(ra) # 80008728 <consoleinit>
    80007d60:	00001097          	auipc	ra,0x1
    80007d64:	15c080e7          	jalr	348(ra) # 80008ebc <printfinit>
    80007d68:	00002517          	auipc	a0,0x2
    80007d6c:	4e050513          	addi	a0,a0,1248 # 8000a248 <CONSOLE_STATUS+0x238>
    80007d70:	00001097          	auipc	ra,0x1
    80007d74:	ab8080e7          	jalr	-1352(ra) # 80008828 <__printf>
    80007d78:	00003517          	auipc	a0,0x3
    80007d7c:	a5850513          	addi	a0,a0,-1448 # 8000a7d0 <CONSOLE_STATUS+0x7c0>
    80007d80:	00001097          	auipc	ra,0x1
    80007d84:	aa8080e7          	jalr	-1368(ra) # 80008828 <__printf>
    80007d88:	00002517          	auipc	a0,0x2
    80007d8c:	4c050513          	addi	a0,a0,1216 # 8000a248 <CONSOLE_STATUS+0x238>
    80007d90:	00001097          	auipc	ra,0x1
    80007d94:	a98080e7          	jalr	-1384(ra) # 80008828 <__printf>
    80007d98:	00001097          	auipc	ra,0x1
    80007d9c:	4b0080e7          	jalr	1200(ra) # 80009248 <kinit>
    80007da0:	00000097          	auipc	ra,0x0
    80007da4:	148080e7          	jalr	328(ra) # 80007ee8 <trapinit>
    80007da8:	00000097          	auipc	ra,0x0
    80007dac:	16c080e7          	jalr	364(ra) # 80007f14 <trapinithart>
    80007db0:	00000097          	auipc	ra,0x0
    80007db4:	5c0080e7          	jalr	1472(ra) # 80008370 <plicinit>
    80007db8:	00000097          	auipc	ra,0x0
    80007dbc:	5e0080e7          	jalr	1504(ra) # 80008398 <plicinithart>
    80007dc0:	00000097          	auipc	ra,0x0
    80007dc4:	078080e7          	jalr	120(ra) # 80007e38 <userinit>
    80007dc8:	0ff0000f          	fence
    80007dcc:	00100793          	li	a5,1
    80007dd0:	00003517          	auipc	a0,0x3
    80007dd4:	a1850513          	addi	a0,a0,-1512 # 8000a7e8 <CONSOLE_STATUS+0x7d8>
    80007dd8:	00f4a023          	sw	a5,0(s1)
    80007ddc:	00001097          	auipc	ra,0x1
    80007de0:	a4c080e7          	jalr	-1460(ra) # 80008828 <__printf>
    80007de4:	0000006f          	j	80007de4 <system_main+0xd4>

0000000080007de8 <cpuid>:
    80007de8:	ff010113          	addi	sp,sp,-16
    80007dec:	00813423          	sd	s0,8(sp)
    80007df0:	01010413          	addi	s0,sp,16
    80007df4:	00020513          	mv	a0,tp
    80007df8:	00813403          	ld	s0,8(sp)
    80007dfc:	0005051b          	sext.w	a0,a0
    80007e00:	01010113          	addi	sp,sp,16
    80007e04:	00008067          	ret

0000000080007e08 <mycpu>:
    80007e08:	ff010113          	addi	sp,sp,-16
    80007e0c:	00813423          	sd	s0,8(sp)
    80007e10:	01010413          	addi	s0,sp,16
    80007e14:	00020793          	mv	a5,tp
    80007e18:	00813403          	ld	s0,8(sp)
    80007e1c:	0007879b          	sext.w	a5,a5
    80007e20:	00779793          	slli	a5,a5,0x7
    80007e24:	000ca517          	auipc	a0,0xca
    80007e28:	80c50513          	addi	a0,a0,-2036 # 800d1630 <cpus>
    80007e2c:	00f50533          	add	a0,a0,a5
    80007e30:	01010113          	addi	sp,sp,16
    80007e34:	00008067          	ret

0000000080007e38 <userinit>:
    80007e38:	ff010113          	addi	sp,sp,-16
    80007e3c:	00813423          	sd	s0,8(sp)
    80007e40:	01010413          	addi	s0,sp,16
    80007e44:	00813403          	ld	s0,8(sp)
    80007e48:	01010113          	addi	sp,sp,16
    80007e4c:	ffffb317          	auipc	t1,0xffffb
    80007e50:	a0830067          	jr	-1528(t1) # 80002854 <main>

0000000080007e54 <either_copyout>:
    80007e54:	ff010113          	addi	sp,sp,-16
    80007e58:	00813023          	sd	s0,0(sp)
    80007e5c:	00113423          	sd	ra,8(sp)
    80007e60:	01010413          	addi	s0,sp,16
    80007e64:	02051663          	bnez	a0,80007e90 <either_copyout+0x3c>
    80007e68:	00058513          	mv	a0,a1
    80007e6c:	00060593          	mv	a1,a2
    80007e70:	0006861b          	sext.w	a2,a3
    80007e74:	00002097          	auipc	ra,0x2
    80007e78:	c60080e7          	jalr	-928(ra) # 80009ad4 <__memmove>
    80007e7c:	00813083          	ld	ra,8(sp)
    80007e80:	00013403          	ld	s0,0(sp)
    80007e84:	00000513          	li	a0,0
    80007e88:	01010113          	addi	sp,sp,16
    80007e8c:	00008067          	ret
    80007e90:	00003517          	auipc	a0,0x3
    80007e94:	99850513          	addi	a0,a0,-1640 # 8000a828 <CONSOLE_STATUS+0x818>
    80007e98:	00001097          	auipc	ra,0x1
    80007e9c:	934080e7          	jalr	-1740(ra) # 800087cc <panic>

0000000080007ea0 <either_copyin>:
    80007ea0:	ff010113          	addi	sp,sp,-16
    80007ea4:	00813023          	sd	s0,0(sp)
    80007ea8:	00113423          	sd	ra,8(sp)
    80007eac:	01010413          	addi	s0,sp,16
    80007eb0:	02059463          	bnez	a1,80007ed8 <either_copyin+0x38>
    80007eb4:	00060593          	mv	a1,a2
    80007eb8:	0006861b          	sext.w	a2,a3
    80007ebc:	00002097          	auipc	ra,0x2
    80007ec0:	c18080e7          	jalr	-1000(ra) # 80009ad4 <__memmove>
    80007ec4:	00813083          	ld	ra,8(sp)
    80007ec8:	00013403          	ld	s0,0(sp)
    80007ecc:	00000513          	li	a0,0
    80007ed0:	01010113          	addi	sp,sp,16
    80007ed4:	00008067          	ret
    80007ed8:	00003517          	auipc	a0,0x3
    80007edc:	97850513          	addi	a0,a0,-1672 # 8000a850 <CONSOLE_STATUS+0x840>
    80007ee0:	00001097          	auipc	ra,0x1
    80007ee4:	8ec080e7          	jalr	-1812(ra) # 800087cc <panic>

0000000080007ee8 <trapinit>:
    80007ee8:	ff010113          	addi	sp,sp,-16
    80007eec:	00813423          	sd	s0,8(sp)
    80007ef0:	01010413          	addi	s0,sp,16
    80007ef4:	00813403          	ld	s0,8(sp)
    80007ef8:	00003597          	auipc	a1,0x3
    80007efc:	98058593          	addi	a1,a1,-1664 # 8000a878 <CONSOLE_STATUS+0x868>
    80007f00:	000c9517          	auipc	a0,0xc9
    80007f04:	7b050513          	addi	a0,a0,1968 # 800d16b0 <tickslock>
    80007f08:	01010113          	addi	sp,sp,16
    80007f0c:	00001317          	auipc	t1,0x1
    80007f10:	5cc30067          	jr	1484(t1) # 800094d8 <initlock>

0000000080007f14 <trapinithart>:
    80007f14:	ff010113          	addi	sp,sp,-16
    80007f18:	00813423          	sd	s0,8(sp)
    80007f1c:	01010413          	addi	s0,sp,16
    80007f20:	00000797          	auipc	a5,0x0
    80007f24:	30078793          	addi	a5,a5,768 # 80008220 <kernelvec>
    80007f28:	10579073          	csrw	stvec,a5
    80007f2c:	00813403          	ld	s0,8(sp)
    80007f30:	01010113          	addi	sp,sp,16
    80007f34:	00008067          	ret

0000000080007f38 <usertrap>:
    80007f38:	ff010113          	addi	sp,sp,-16
    80007f3c:	00813423          	sd	s0,8(sp)
    80007f40:	01010413          	addi	s0,sp,16
    80007f44:	00813403          	ld	s0,8(sp)
    80007f48:	01010113          	addi	sp,sp,16
    80007f4c:	00008067          	ret

0000000080007f50 <usertrapret>:
    80007f50:	ff010113          	addi	sp,sp,-16
    80007f54:	00813423          	sd	s0,8(sp)
    80007f58:	01010413          	addi	s0,sp,16
    80007f5c:	00813403          	ld	s0,8(sp)
    80007f60:	01010113          	addi	sp,sp,16
    80007f64:	00008067          	ret

0000000080007f68 <kerneltrap>:
    80007f68:	fe010113          	addi	sp,sp,-32
    80007f6c:	00813823          	sd	s0,16(sp)
    80007f70:	00113c23          	sd	ra,24(sp)
    80007f74:	00913423          	sd	s1,8(sp)
    80007f78:	02010413          	addi	s0,sp,32
    80007f7c:	142025f3          	csrr	a1,scause
    80007f80:	100027f3          	csrr	a5,sstatus
    80007f84:	0027f793          	andi	a5,a5,2
    80007f88:	10079c63          	bnez	a5,800080a0 <kerneltrap+0x138>
    80007f8c:	142027f3          	csrr	a5,scause
    80007f90:	0207ce63          	bltz	a5,80007fcc <kerneltrap+0x64>
    80007f94:	00003517          	auipc	a0,0x3
    80007f98:	92c50513          	addi	a0,a0,-1748 # 8000a8c0 <CONSOLE_STATUS+0x8b0>
    80007f9c:	00001097          	auipc	ra,0x1
    80007fa0:	88c080e7          	jalr	-1908(ra) # 80008828 <__printf>
    80007fa4:	141025f3          	csrr	a1,sepc
    80007fa8:	14302673          	csrr	a2,stval
    80007fac:	00003517          	auipc	a0,0x3
    80007fb0:	92450513          	addi	a0,a0,-1756 # 8000a8d0 <CONSOLE_STATUS+0x8c0>
    80007fb4:	00001097          	auipc	ra,0x1
    80007fb8:	874080e7          	jalr	-1932(ra) # 80008828 <__printf>
    80007fbc:	00003517          	auipc	a0,0x3
    80007fc0:	92c50513          	addi	a0,a0,-1748 # 8000a8e8 <CONSOLE_STATUS+0x8d8>
    80007fc4:	00001097          	auipc	ra,0x1
    80007fc8:	808080e7          	jalr	-2040(ra) # 800087cc <panic>
    80007fcc:	0ff7f713          	andi	a4,a5,255
    80007fd0:	00900693          	li	a3,9
    80007fd4:	04d70063          	beq	a4,a3,80008014 <kerneltrap+0xac>
    80007fd8:	fff00713          	li	a4,-1
    80007fdc:	03f71713          	slli	a4,a4,0x3f
    80007fe0:	00170713          	addi	a4,a4,1
    80007fe4:	fae798e3          	bne	a5,a4,80007f94 <kerneltrap+0x2c>
    80007fe8:	00000097          	auipc	ra,0x0
    80007fec:	e00080e7          	jalr	-512(ra) # 80007de8 <cpuid>
    80007ff0:	06050663          	beqz	a0,8000805c <kerneltrap+0xf4>
    80007ff4:	144027f3          	csrr	a5,sip
    80007ff8:	ffd7f793          	andi	a5,a5,-3
    80007ffc:	14479073          	csrw	sip,a5
    80008000:	01813083          	ld	ra,24(sp)
    80008004:	01013403          	ld	s0,16(sp)
    80008008:	00813483          	ld	s1,8(sp)
    8000800c:	02010113          	addi	sp,sp,32
    80008010:	00008067          	ret
    80008014:	00000097          	auipc	ra,0x0
    80008018:	3d0080e7          	jalr	976(ra) # 800083e4 <plic_claim>
    8000801c:	00a00793          	li	a5,10
    80008020:	00050493          	mv	s1,a0
    80008024:	06f50863          	beq	a0,a5,80008094 <kerneltrap+0x12c>
    80008028:	fc050ce3          	beqz	a0,80008000 <kerneltrap+0x98>
    8000802c:	00050593          	mv	a1,a0
    80008030:	00003517          	auipc	a0,0x3
    80008034:	87050513          	addi	a0,a0,-1936 # 8000a8a0 <CONSOLE_STATUS+0x890>
    80008038:	00000097          	auipc	ra,0x0
    8000803c:	7f0080e7          	jalr	2032(ra) # 80008828 <__printf>
    80008040:	01013403          	ld	s0,16(sp)
    80008044:	01813083          	ld	ra,24(sp)
    80008048:	00048513          	mv	a0,s1
    8000804c:	00813483          	ld	s1,8(sp)
    80008050:	02010113          	addi	sp,sp,32
    80008054:	00000317          	auipc	t1,0x0
    80008058:	3c830067          	jr	968(t1) # 8000841c <plic_complete>
    8000805c:	000c9517          	auipc	a0,0xc9
    80008060:	65450513          	addi	a0,a0,1620 # 800d16b0 <tickslock>
    80008064:	00001097          	auipc	ra,0x1
    80008068:	498080e7          	jalr	1176(ra) # 800094fc <acquire>
    8000806c:	00005717          	auipc	a4,0x5
    80008070:	e2870713          	addi	a4,a4,-472 # 8000ce94 <ticks>
    80008074:	00072783          	lw	a5,0(a4)
    80008078:	000c9517          	auipc	a0,0xc9
    8000807c:	63850513          	addi	a0,a0,1592 # 800d16b0 <tickslock>
    80008080:	0017879b          	addiw	a5,a5,1
    80008084:	00f72023          	sw	a5,0(a4)
    80008088:	00001097          	auipc	ra,0x1
    8000808c:	540080e7          	jalr	1344(ra) # 800095c8 <release>
    80008090:	f65ff06f          	j	80007ff4 <kerneltrap+0x8c>
    80008094:	00001097          	auipc	ra,0x1
    80008098:	09c080e7          	jalr	156(ra) # 80009130 <uartintr>
    8000809c:	fa5ff06f          	j	80008040 <kerneltrap+0xd8>
    800080a0:	00002517          	auipc	a0,0x2
    800080a4:	7e050513          	addi	a0,a0,2016 # 8000a880 <CONSOLE_STATUS+0x870>
    800080a8:	00000097          	auipc	ra,0x0
    800080ac:	724080e7          	jalr	1828(ra) # 800087cc <panic>

00000000800080b0 <clockintr>:
    800080b0:	fe010113          	addi	sp,sp,-32
    800080b4:	00813823          	sd	s0,16(sp)
    800080b8:	00913423          	sd	s1,8(sp)
    800080bc:	00113c23          	sd	ra,24(sp)
    800080c0:	02010413          	addi	s0,sp,32
    800080c4:	000c9497          	auipc	s1,0xc9
    800080c8:	5ec48493          	addi	s1,s1,1516 # 800d16b0 <tickslock>
    800080cc:	00048513          	mv	a0,s1
    800080d0:	00001097          	auipc	ra,0x1
    800080d4:	42c080e7          	jalr	1068(ra) # 800094fc <acquire>
    800080d8:	00005717          	auipc	a4,0x5
    800080dc:	dbc70713          	addi	a4,a4,-580 # 8000ce94 <ticks>
    800080e0:	00072783          	lw	a5,0(a4)
    800080e4:	01013403          	ld	s0,16(sp)
    800080e8:	01813083          	ld	ra,24(sp)
    800080ec:	00048513          	mv	a0,s1
    800080f0:	0017879b          	addiw	a5,a5,1
    800080f4:	00813483          	ld	s1,8(sp)
    800080f8:	00f72023          	sw	a5,0(a4)
    800080fc:	02010113          	addi	sp,sp,32
    80008100:	00001317          	auipc	t1,0x1
    80008104:	4c830067          	jr	1224(t1) # 800095c8 <release>

0000000080008108 <devintr>:
    80008108:	142027f3          	csrr	a5,scause
    8000810c:	00000513          	li	a0,0
    80008110:	0007c463          	bltz	a5,80008118 <devintr+0x10>
    80008114:	00008067          	ret
    80008118:	fe010113          	addi	sp,sp,-32
    8000811c:	00813823          	sd	s0,16(sp)
    80008120:	00113c23          	sd	ra,24(sp)
    80008124:	00913423          	sd	s1,8(sp)
    80008128:	02010413          	addi	s0,sp,32
    8000812c:	0ff7f713          	andi	a4,a5,255
    80008130:	00900693          	li	a3,9
    80008134:	04d70c63          	beq	a4,a3,8000818c <devintr+0x84>
    80008138:	fff00713          	li	a4,-1
    8000813c:	03f71713          	slli	a4,a4,0x3f
    80008140:	00170713          	addi	a4,a4,1
    80008144:	00e78c63          	beq	a5,a4,8000815c <devintr+0x54>
    80008148:	01813083          	ld	ra,24(sp)
    8000814c:	01013403          	ld	s0,16(sp)
    80008150:	00813483          	ld	s1,8(sp)
    80008154:	02010113          	addi	sp,sp,32
    80008158:	00008067          	ret
    8000815c:	00000097          	auipc	ra,0x0
    80008160:	c8c080e7          	jalr	-884(ra) # 80007de8 <cpuid>
    80008164:	06050663          	beqz	a0,800081d0 <devintr+0xc8>
    80008168:	144027f3          	csrr	a5,sip
    8000816c:	ffd7f793          	andi	a5,a5,-3
    80008170:	14479073          	csrw	sip,a5
    80008174:	01813083          	ld	ra,24(sp)
    80008178:	01013403          	ld	s0,16(sp)
    8000817c:	00813483          	ld	s1,8(sp)
    80008180:	00200513          	li	a0,2
    80008184:	02010113          	addi	sp,sp,32
    80008188:	00008067          	ret
    8000818c:	00000097          	auipc	ra,0x0
    80008190:	258080e7          	jalr	600(ra) # 800083e4 <plic_claim>
    80008194:	00a00793          	li	a5,10
    80008198:	00050493          	mv	s1,a0
    8000819c:	06f50663          	beq	a0,a5,80008208 <devintr+0x100>
    800081a0:	00100513          	li	a0,1
    800081a4:	fa0482e3          	beqz	s1,80008148 <devintr+0x40>
    800081a8:	00048593          	mv	a1,s1
    800081ac:	00002517          	auipc	a0,0x2
    800081b0:	6f450513          	addi	a0,a0,1780 # 8000a8a0 <CONSOLE_STATUS+0x890>
    800081b4:	00000097          	auipc	ra,0x0
    800081b8:	674080e7          	jalr	1652(ra) # 80008828 <__printf>
    800081bc:	00048513          	mv	a0,s1
    800081c0:	00000097          	auipc	ra,0x0
    800081c4:	25c080e7          	jalr	604(ra) # 8000841c <plic_complete>
    800081c8:	00100513          	li	a0,1
    800081cc:	f7dff06f          	j	80008148 <devintr+0x40>
    800081d0:	000c9517          	auipc	a0,0xc9
    800081d4:	4e050513          	addi	a0,a0,1248 # 800d16b0 <tickslock>
    800081d8:	00001097          	auipc	ra,0x1
    800081dc:	324080e7          	jalr	804(ra) # 800094fc <acquire>
    800081e0:	00005717          	auipc	a4,0x5
    800081e4:	cb470713          	addi	a4,a4,-844 # 8000ce94 <ticks>
    800081e8:	00072783          	lw	a5,0(a4)
    800081ec:	000c9517          	auipc	a0,0xc9
    800081f0:	4c450513          	addi	a0,a0,1220 # 800d16b0 <tickslock>
    800081f4:	0017879b          	addiw	a5,a5,1
    800081f8:	00f72023          	sw	a5,0(a4)
    800081fc:	00001097          	auipc	ra,0x1
    80008200:	3cc080e7          	jalr	972(ra) # 800095c8 <release>
    80008204:	f65ff06f          	j	80008168 <devintr+0x60>
    80008208:	00001097          	auipc	ra,0x1
    8000820c:	f28080e7          	jalr	-216(ra) # 80009130 <uartintr>
    80008210:	fadff06f          	j	800081bc <devintr+0xb4>
	...

0000000080008220 <kernelvec>:
    80008220:	f0010113          	addi	sp,sp,-256
    80008224:	00113023          	sd	ra,0(sp)
    80008228:	00213423          	sd	sp,8(sp)
    8000822c:	00313823          	sd	gp,16(sp)
    80008230:	00413c23          	sd	tp,24(sp)
    80008234:	02513023          	sd	t0,32(sp)
    80008238:	02613423          	sd	t1,40(sp)
    8000823c:	02713823          	sd	t2,48(sp)
    80008240:	02813c23          	sd	s0,56(sp)
    80008244:	04913023          	sd	s1,64(sp)
    80008248:	04a13423          	sd	a0,72(sp)
    8000824c:	04b13823          	sd	a1,80(sp)
    80008250:	04c13c23          	sd	a2,88(sp)
    80008254:	06d13023          	sd	a3,96(sp)
    80008258:	06e13423          	sd	a4,104(sp)
    8000825c:	06f13823          	sd	a5,112(sp)
    80008260:	07013c23          	sd	a6,120(sp)
    80008264:	09113023          	sd	a7,128(sp)
    80008268:	09213423          	sd	s2,136(sp)
    8000826c:	09313823          	sd	s3,144(sp)
    80008270:	09413c23          	sd	s4,152(sp)
    80008274:	0b513023          	sd	s5,160(sp)
    80008278:	0b613423          	sd	s6,168(sp)
    8000827c:	0b713823          	sd	s7,176(sp)
    80008280:	0b813c23          	sd	s8,184(sp)
    80008284:	0d913023          	sd	s9,192(sp)
    80008288:	0da13423          	sd	s10,200(sp)
    8000828c:	0db13823          	sd	s11,208(sp)
    80008290:	0dc13c23          	sd	t3,216(sp)
    80008294:	0fd13023          	sd	t4,224(sp)
    80008298:	0fe13423          	sd	t5,232(sp)
    8000829c:	0ff13823          	sd	t6,240(sp)
    800082a0:	cc9ff0ef          	jal	ra,80007f68 <kerneltrap>
    800082a4:	00013083          	ld	ra,0(sp)
    800082a8:	00813103          	ld	sp,8(sp)
    800082ac:	01013183          	ld	gp,16(sp)
    800082b0:	02013283          	ld	t0,32(sp)
    800082b4:	02813303          	ld	t1,40(sp)
    800082b8:	03013383          	ld	t2,48(sp)
    800082bc:	03813403          	ld	s0,56(sp)
    800082c0:	04013483          	ld	s1,64(sp)
    800082c4:	04813503          	ld	a0,72(sp)
    800082c8:	05013583          	ld	a1,80(sp)
    800082cc:	05813603          	ld	a2,88(sp)
    800082d0:	06013683          	ld	a3,96(sp)
    800082d4:	06813703          	ld	a4,104(sp)
    800082d8:	07013783          	ld	a5,112(sp)
    800082dc:	07813803          	ld	a6,120(sp)
    800082e0:	08013883          	ld	a7,128(sp)
    800082e4:	08813903          	ld	s2,136(sp)
    800082e8:	09013983          	ld	s3,144(sp)
    800082ec:	09813a03          	ld	s4,152(sp)
    800082f0:	0a013a83          	ld	s5,160(sp)
    800082f4:	0a813b03          	ld	s6,168(sp)
    800082f8:	0b013b83          	ld	s7,176(sp)
    800082fc:	0b813c03          	ld	s8,184(sp)
    80008300:	0c013c83          	ld	s9,192(sp)
    80008304:	0c813d03          	ld	s10,200(sp)
    80008308:	0d013d83          	ld	s11,208(sp)
    8000830c:	0d813e03          	ld	t3,216(sp)
    80008310:	0e013e83          	ld	t4,224(sp)
    80008314:	0e813f03          	ld	t5,232(sp)
    80008318:	0f013f83          	ld	t6,240(sp)
    8000831c:	10010113          	addi	sp,sp,256
    80008320:	10200073          	sret
    80008324:	00000013          	nop
    80008328:	00000013          	nop
    8000832c:	00000013          	nop

0000000080008330 <timervec>:
    80008330:	34051573          	csrrw	a0,mscratch,a0
    80008334:	00b53023          	sd	a1,0(a0)
    80008338:	00c53423          	sd	a2,8(a0)
    8000833c:	00d53823          	sd	a3,16(a0)
    80008340:	01853583          	ld	a1,24(a0)
    80008344:	02053603          	ld	a2,32(a0)
    80008348:	0005b683          	ld	a3,0(a1)
    8000834c:	00c686b3          	add	a3,a3,a2
    80008350:	00d5b023          	sd	a3,0(a1)
    80008354:	00200593          	li	a1,2
    80008358:	14459073          	csrw	sip,a1
    8000835c:	01053683          	ld	a3,16(a0)
    80008360:	00853603          	ld	a2,8(a0)
    80008364:	00053583          	ld	a1,0(a0)
    80008368:	34051573          	csrrw	a0,mscratch,a0
    8000836c:	30200073          	mret

0000000080008370 <plicinit>:
    80008370:	ff010113          	addi	sp,sp,-16
    80008374:	00813423          	sd	s0,8(sp)
    80008378:	01010413          	addi	s0,sp,16
    8000837c:	00813403          	ld	s0,8(sp)
    80008380:	0c0007b7          	lui	a5,0xc000
    80008384:	00100713          	li	a4,1
    80008388:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000838c:	00e7a223          	sw	a4,4(a5)
    80008390:	01010113          	addi	sp,sp,16
    80008394:	00008067          	ret

0000000080008398 <plicinithart>:
    80008398:	ff010113          	addi	sp,sp,-16
    8000839c:	00813023          	sd	s0,0(sp)
    800083a0:	00113423          	sd	ra,8(sp)
    800083a4:	01010413          	addi	s0,sp,16
    800083a8:	00000097          	auipc	ra,0x0
    800083ac:	a40080e7          	jalr	-1472(ra) # 80007de8 <cpuid>
    800083b0:	0085171b          	slliw	a4,a0,0x8
    800083b4:	0c0027b7          	lui	a5,0xc002
    800083b8:	00e787b3          	add	a5,a5,a4
    800083bc:	40200713          	li	a4,1026
    800083c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800083c4:	00813083          	ld	ra,8(sp)
    800083c8:	00013403          	ld	s0,0(sp)
    800083cc:	00d5151b          	slliw	a0,a0,0xd
    800083d0:	0c2017b7          	lui	a5,0xc201
    800083d4:	00a78533          	add	a0,a5,a0
    800083d8:	00052023          	sw	zero,0(a0)
    800083dc:	01010113          	addi	sp,sp,16
    800083e0:	00008067          	ret

00000000800083e4 <plic_claim>:
    800083e4:	ff010113          	addi	sp,sp,-16
    800083e8:	00813023          	sd	s0,0(sp)
    800083ec:	00113423          	sd	ra,8(sp)
    800083f0:	01010413          	addi	s0,sp,16
    800083f4:	00000097          	auipc	ra,0x0
    800083f8:	9f4080e7          	jalr	-1548(ra) # 80007de8 <cpuid>
    800083fc:	00813083          	ld	ra,8(sp)
    80008400:	00013403          	ld	s0,0(sp)
    80008404:	00d5151b          	slliw	a0,a0,0xd
    80008408:	0c2017b7          	lui	a5,0xc201
    8000840c:	00a78533          	add	a0,a5,a0
    80008410:	00452503          	lw	a0,4(a0)
    80008414:	01010113          	addi	sp,sp,16
    80008418:	00008067          	ret

000000008000841c <plic_complete>:
    8000841c:	fe010113          	addi	sp,sp,-32
    80008420:	00813823          	sd	s0,16(sp)
    80008424:	00913423          	sd	s1,8(sp)
    80008428:	00113c23          	sd	ra,24(sp)
    8000842c:	02010413          	addi	s0,sp,32
    80008430:	00050493          	mv	s1,a0
    80008434:	00000097          	auipc	ra,0x0
    80008438:	9b4080e7          	jalr	-1612(ra) # 80007de8 <cpuid>
    8000843c:	01813083          	ld	ra,24(sp)
    80008440:	01013403          	ld	s0,16(sp)
    80008444:	00d5179b          	slliw	a5,a0,0xd
    80008448:	0c201737          	lui	a4,0xc201
    8000844c:	00f707b3          	add	a5,a4,a5
    80008450:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80008454:	00813483          	ld	s1,8(sp)
    80008458:	02010113          	addi	sp,sp,32
    8000845c:	00008067          	ret

0000000080008460 <consolewrite>:
    80008460:	fb010113          	addi	sp,sp,-80
    80008464:	04813023          	sd	s0,64(sp)
    80008468:	04113423          	sd	ra,72(sp)
    8000846c:	02913c23          	sd	s1,56(sp)
    80008470:	03213823          	sd	s2,48(sp)
    80008474:	03313423          	sd	s3,40(sp)
    80008478:	03413023          	sd	s4,32(sp)
    8000847c:	01513c23          	sd	s5,24(sp)
    80008480:	05010413          	addi	s0,sp,80
    80008484:	06c05c63          	blez	a2,800084fc <consolewrite+0x9c>
    80008488:	00060993          	mv	s3,a2
    8000848c:	00050a13          	mv	s4,a0
    80008490:	00058493          	mv	s1,a1
    80008494:	00000913          	li	s2,0
    80008498:	fff00a93          	li	s5,-1
    8000849c:	01c0006f          	j	800084b8 <consolewrite+0x58>
    800084a0:	fbf44503          	lbu	a0,-65(s0)
    800084a4:	0019091b          	addiw	s2,s2,1
    800084a8:	00148493          	addi	s1,s1,1
    800084ac:	00001097          	auipc	ra,0x1
    800084b0:	a9c080e7          	jalr	-1380(ra) # 80008f48 <uartputc>
    800084b4:	03298063          	beq	s3,s2,800084d4 <consolewrite+0x74>
    800084b8:	00048613          	mv	a2,s1
    800084bc:	00100693          	li	a3,1
    800084c0:	000a0593          	mv	a1,s4
    800084c4:	fbf40513          	addi	a0,s0,-65
    800084c8:	00000097          	auipc	ra,0x0
    800084cc:	9d8080e7          	jalr	-1576(ra) # 80007ea0 <either_copyin>
    800084d0:	fd5518e3          	bne	a0,s5,800084a0 <consolewrite+0x40>
    800084d4:	04813083          	ld	ra,72(sp)
    800084d8:	04013403          	ld	s0,64(sp)
    800084dc:	03813483          	ld	s1,56(sp)
    800084e0:	02813983          	ld	s3,40(sp)
    800084e4:	02013a03          	ld	s4,32(sp)
    800084e8:	01813a83          	ld	s5,24(sp)
    800084ec:	00090513          	mv	a0,s2
    800084f0:	03013903          	ld	s2,48(sp)
    800084f4:	05010113          	addi	sp,sp,80
    800084f8:	00008067          	ret
    800084fc:	00000913          	li	s2,0
    80008500:	fd5ff06f          	j	800084d4 <consolewrite+0x74>

0000000080008504 <consoleread>:
    80008504:	f9010113          	addi	sp,sp,-112
    80008508:	06813023          	sd	s0,96(sp)
    8000850c:	04913c23          	sd	s1,88(sp)
    80008510:	05213823          	sd	s2,80(sp)
    80008514:	05313423          	sd	s3,72(sp)
    80008518:	05413023          	sd	s4,64(sp)
    8000851c:	03513c23          	sd	s5,56(sp)
    80008520:	03613823          	sd	s6,48(sp)
    80008524:	03713423          	sd	s7,40(sp)
    80008528:	03813023          	sd	s8,32(sp)
    8000852c:	06113423          	sd	ra,104(sp)
    80008530:	01913c23          	sd	s9,24(sp)
    80008534:	07010413          	addi	s0,sp,112
    80008538:	00060b93          	mv	s7,a2
    8000853c:	00050913          	mv	s2,a0
    80008540:	00058c13          	mv	s8,a1
    80008544:	00060b1b          	sext.w	s6,a2
    80008548:	000c9497          	auipc	s1,0xc9
    8000854c:	19048493          	addi	s1,s1,400 # 800d16d8 <cons>
    80008550:	00400993          	li	s3,4
    80008554:	fff00a13          	li	s4,-1
    80008558:	00a00a93          	li	s5,10
    8000855c:	05705e63          	blez	s7,800085b8 <consoleread+0xb4>
    80008560:	09c4a703          	lw	a4,156(s1)
    80008564:	0984a783          	lw	a5,152(s1)
    80008568:	0007071b          	sext.w	a4,a4
    8000856c:	08e78463          	beq	a5,a4,800085f4 <consoleread+0xf0>
    80008570:	07f7f713          	andi	a4,a5,127
    80008574:	00e48733          	add	a4,s1,a4
    80008578:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000857c:	0017869b          	addiw	a3,a5,1
    80008580:	08d4ac23          	sw	a3,152(s1)
    80008584:	00070c9b          	sext.w	s9,a4
    80008588:	0b370663          	beq	a4,s3,80008634 <consoleread+0x130>
    8000858c:	00100693          	li	a3,1
    80008590:	f9f40613          	addi	a2,s0,-97
    80008594:	000c0593          	mv	a1,s8
    80008598:	00090513          	mv	a0,s2
    8000859c:	f8e40fa3          	sb	a4,-97(s0)
    800085a0:	00000097          	auipc	ra,0x0
    800085a4:	8b4080e7          	jalr	-1868(ra) # 80007e54 <either_copyout>
    800085a8:	01450863          	beq	a0,s4,800085b8 <consoleread+0xb4>
    800085ac:	001c0c13          	addi	s8,s8,1
    800085b0:	fffb8b9b          	addiw	s7,s7,-1
    800085b4:	fb5c94e3          	bne	s9,s5,8000855c <consoleread+0x58>
    800085b8:	000b851b          	sext.w	a0,s7
    800085bc:	06813083          	ld	ra,104(sp)
    800085c0:	06013403          	ld	s0,96(sp)
    800085c4:	05813483          	ld	s1,88(sp)
    800085c8:	05013903          	ld	s2,80(sp)
    800085cc:	04813983          	ld	s3,72(sp)
    800085d0:	04013a03          	ld	s4,64(sp)
    800085d4:	03813a83          	ld	s5,56(sp)
    800085d8:	02813b83          	ld	s7,40(sp)
    800085dc:	02013c03          	ld	s8,32(sp)
    800085e0:	01813c83          	ld	s9,24(sp)
    800085e4:	40ab053b          	subw	a0,s6,a0
    800085e8:	03013b03          	ld	s6,48(sp)
    800085ec:	07010113          	addi	sp,sp,112
    800085f0:	00008067          	ret
    800085f4:	00001097          	auipc	ra,0x1
    800085f8:	1d8080e7          	jalr	472(ra) # 800097cc <push_on>
    800085fc:	0984a703          	lw	a4,152(s1)
    80008600:	09c4a783          	lw	a5,156(s1)
    80008604:	0007879b          	sext.w	a5,a5
    80008608:	fef70ce3          	beq	a4,a5,80008600 <consoleread+0xfc>
    8000860c:	00001097          	auipc	ra,0x1
    80008610:	234080e7          	jalr	564(ra) # 80009840 <pop_on>
    80008614:	0984a783          	lw	a5,152(s1)
    80008618:	07f7f713          	andi	a4,a5,127
    8000861c:	00e48733          	add	a4,s1,a4
    80008620:	01874703          	lbu	a4,24(a4)
    80008624:	0017869b          	addiw	a3,a5,1
    80008628:	08d4ac23          	sw	a3,152(s1)
    8000862c:	00070c9b          	sext.w	s9,a4
    80008630:	f5371ee3          	bne	a4,s3,8000858c <consoleread+0x88>
    80008634:	000b851b          	sext.w	a0,s7
    80008638:	f96bf2e3          	bgeu	s7,s6,800085bc <consoleread+0xb8>
    8000863c:	08f4ac23          	sw	a5,152(s1)
    80008640:	f7dff06f          	j	800085bc <consoleread+0xb8>

0000000080008644 <consputc>:
    80008644:	10000793          	li	a5,256
    80008648:	00f50663          	beq	a0,a5,80008654 <consputc+0x10>
    8000864c:	00001317          	auipc	t1,0x1
    80008650:	9f430067          	jr	-1548(t1) # 80009040 <uartputc_sync>
    80008654:	ff010113          	addi	sp,sp,-16
    80008658:	00113423          	sd	ra,8(sp)
    8000865c:	00813023          	sd	s0,0(sp)
    80008660:	01010413          	addi	s0,sp,16
    80008664:	00800513          	li	a0,8
    80008668:	00001097          	auipc	ra,0x1
    8000866c:	9d8080e7          	jalr	-1576(ra) # 80009040 <uartputc_sync>
    80008670:	02000513          	li	a0,32
    80008674:	00001097          	auipc	ra,0x1
    80008678:	9cc080e7          	jalr	-1588(ra) # 80009040 <uartputc_sync>
    8000867c:	00013403          	ld	s0,0(sp)
    80008680:	00813083          	ld	ra,8(sp)
    80008684:	00800513          	li	a0,8
    80008688:	01010113          	addi	sp,sp,16
    8000868c:	00001317          	auipc	t1,0x1
    80008690:	9b430067          	jr	-1612(t1) # 80009040 <uartputc_sync>

0000000080008694 <consoleintr>:
    80008694:	fe010113          	addi	sp,sp,-32
    80008698:	00813823          	sd	s0,16(sp)
    8000869c:	00913423          	sd	s1,8(sp)
    800086a0:	01213023          	sd	s2,0(sp)
    800086a4:	00113c23          	sd	ra,24(sp)
    800086a8:	02010413          	addi	s0,sp,32
    800086ac:	000c9917          	auipc	s2,0xc9
    800086b0:	02c90913          	addi	s2,s2,44 # 800d16d8 <cons>
    800086b4:	00050493          	mv	s1,a0
    800086b8:	00090513          	mv	a0,s2
    800086bc:	00001097          	auipc	ra,0x1
    800086c0:	e40080e7          	jalr	-448(ra) # 800094fc <acquire>
    800086c4:	02048c63          	beqz	s1,800086fc <consoleintr+0x68>
    800086c8:	0a092783          	lw	a5,160(s2)
    800086cc:	09892703          	lw	a4,152(s2)
    800086d0:	07f00693          	li	a3,127
    800086d4:	40e7873b          	subw	a4,a5,a4
    800086d8:	02e6e263          	bltu	a3,a4,800086fc <consoleintr+0x68>
    800086dc:	00d00713          	li	a4,13
    800086e0:	04e48063          	beq	s1,a4,80008720 <consoleintr+0x8c>
    800086e4:	07f7f713          	andi	a4,a5,127
    800086e8:	00e90733          	add	a4,s2,a4
    800086ec:	0017879b          	addiw	a5,a5,1
    800086f0:	0af92023          	sw	a5,160(s2)
    800086f4:	00970c23          	sb	s1,24(a4)
    800086f8:	08f92e23          	sw	a5,156(s2)
    800086fc:	01013403          	ld	s0,16(sp)
    80008700:	01813083          	ld	ra,24(sp)
    80008704:	00813483          	ld	s1,8(sp)
    80008708:	00013903          	ld	s2,0(sp)
    8000870c:	000c9517          	auipc	a0,0xc9
    80008710:	fcc50513          	addi	a0,a0,-52 # 800d16d8 <cons>
    80008714:	02010113          	addi	sp,sp,32
    80008718:	00001317          	auipc	t1,0x1
    8000871c:	eb030067          	jr	-336(t1) # 800095c8 <release>
    80008720:	00a00493          	li	s1,10
    80008724:	fc1ff06f          	j	800086e4 <consoleintr+0x50>

0000000080008728 <consoleinit>:
    80008728:	fe010113          	addi	sp,sp,-32
    8000872c:	00113c23          	sd	ra,24(sp)
    80008730:	00813823          	sd	s0,16(sp)
    80008734:	00913423          	sd	s1,8(sp)
    80008738:	02010413          	addi	s0,sp,32
    8000873c:	000c9497          	auipc	s1,0xc9
    80008740:	f9c48493          	addi	s1,s1,-100 # 800d16d8 <cons>
    80008744:	00048513          	mv	a0,s1
    80008748:	00002597          	auipc	a1,0x2
    8000874c:	1b058593          	addi	a1,a1,432 # 8000a8f8 <CONSOLE_STATUS+0x8e8>
    80008750:	00001097          	auipc	ra,0x1
    80008754:	d88080e7          	jalr	-632(ra) # 800094d8 <initlock>
    80008758:	00000097          	auipc	ra,0x0
    8000875c:	7ac080e7          	jalr	1964(ra) # 80008f04 <uartinit>
    80008760:	01813083          	ld	ra,24(sp)
    80008764:	01013403          	ld	s0,16(sp)
    80008768:	00000797          	auipc	a5,0x0
    8000876c:	d9c78793          	addi	a5,a5,-612 # 80008504 <consoleread>
    80008770:	0af4bc23          	sd	a5,184(s1)
    80008774:	00000797          	auipc	a5,0x0
    80008778:	cec78793          	addi	a5,a5,-788 # 80008460 <consolewrite>
    8000877c:	0cf4b023          	sd	a5,192(s1)
    80008780:	00813483          	ld	s1,8(sp)
    80008784:	02010113          	addi	sp,sp,32
    80008788:	00008067          	ret

000000008000878c <console_read>:
    8000878c:	ff010113          	addi	sp,sp,-16
    80008790:	00813423          	sd	s0,8(sp)
    80008794:	01010413          	addi	s0,sp,16
    80008798:	00813403          	ld	s0,8(sp)
    8000879c:	000c9317          	auipc	t1,0xc9
    800087a0:	ff433303          	ld	t1,-12(t1) # 800d1790 <devsw+0x10>
    800087a4:	01010113          	addi	sp,sp,16
    800087a8:	00030067          	jr	t1

00000000800087ac <console_write>:
    800087ac:	ff010113          	addi	sp,sp,-16
    800087b0:	00813423          	sd	s0,8(sp)
    800087b4:	01010413          	addi	s0,sp,16
    800087b8:	00813403          	ld	s0,8(sp)
    800087bc:	000c9317          	auipc	t1,0xc9
    800087c0:	fdc33303          	ld	t1,-36(t1) # 800d1798 <devsw+0x18>
    800087c4:	01010113          	addi	sp,sp,16
    800087c8:	00030067          	jr	t1

00000000800087cc <panic>:
    800087cc:	fe010113          	addi	sp,sp,-32
    800087d0:	00113c23          	sd	ra,24(sp)
    800087d4:	00813823          	sd	s0,16(sp)
    800087d8:	00913423          	sd	s1,8(sp)
    800087dc:	02010413          	addi	s0,sp,32
    800087e0:	00050493          	mv	s1,a0
    800087e4:	00002517          	auipc	a0,0x2
    800087e8:	11c50513          	addi	a0,a0,284 # 8000a900 <CONSOLE_STATUS+0x8f0>
    800087ec:	000c9797          	auipc	a5,0xc9
    800087f0:	0407a623          	sw	zero,76(a5) # 800d1838 <pr+0x18>
    800087f4:	00000097          	auipc	ra,0x0
    800087f8:	034080e7          	jalr	52(ra) # 80008828 <__printf>
    800087fc:	00048513          	mv	a0,s1
    80008800:	00000097          	auipc	ra,0x0
    80008804:	028080e7          	jalr	40(ra) # 80008828 <__printf>
    80008808:	00002517          	auipc	a0,0x2
    8000880c:	a4050513          	addi	a0,a0,-1472 # 8000a248 <CONSOLE_STATUS+0x238>
    80008810:	00000097          	auipc	ra,0x0
    80008814:	018080e7          	jalr	24(ra) # 80008828 <__printf>
    80008818:	00100793          	li	a5,1
    8000881c:	00004717          	auipc	a4,0x4
    80008820:	66f72e23          	sw	a5,1660(a4) # 8000ce98 <panicked>
    80008824:	0000006f          	j	80008824 <panic+0x58>

0000000080008828 <__printf>:
    80008828:	f3010113          	addi	sp,sp,-208
    8000882c:	08813023          	sd	s0,128(sp)
    80008830:	07313423          	sd	s3,104(sp)
    80008834:	09010413          	addi	s0,sp,144
    80008838:	05813023          	sd	s8,64(sp)
    8000883c:	08113423          	sd	ra,136(sp)
    80008840:	06913c23          	sd	s1,120(sp)
    80008844:	07213823          	sd	s2,112(sp)
    80008848:	07413023          	sd	s4,96(sp)
    8000884c:	05513c23          	sd	s5,88(sp)
    80008850:	05613823          	sd	s6,80(sp)
    80008854:	05713423          	sd	s7,72(sp)
    80008858:	03913c23          	sd	s9,56(sp)
    8000885c:	03a13823          	sd	s10,48(sp)
    80008860:	03b13423          	sd	s11,40(sp)
    80008864:	000c9317          	auipc	t1,0xc9
    80008868:	fbc30313          	addi	t1,t1,-68 # 800d1820 <pr>
    8000886c:	01832c03          	lw	s8,24(t1)
    80008870:	00b43423          	sd	a1,8(s0)
    80008874:	00c43823          	sd	a2,16(s0)
    80008878:	00d43c23          	sd	a3,24(s0)
    8000887c:	02e43023          	sd	a4,32(s0)
    80008880:	02f43423          	sd	a5,40(s0)
    80008884:	03043823          	sd	a6,48(s0)
    80008888:	03143c23          	sd	a7,56(s0)
    8000888c:	00050993          	mv	s3,a0
    80008890:	4a0c1663          	bnez	s8,80008d3c <__printf+0x514>
    80008894:	60098c63          	beqz	s3,80008eac <__printf+0x684>
    80008898:	0009c503          	lbu	a0,0(s3)
    8000889c:	00840793          	addi	a5,s0,8
    800088a0:	f6f43c23          	sd	a5,-136(s0)
    800088a4:	00000493          	li	s1,0
    800088a8:	22050063          	beqz	a0,80008ac8 <__printf+0x2a0>
    800088ac:	00002a37          	lui	s4,0x2
    800088b0:	00018ab7          	lui	s5,0x18
    800088b4:	000f4b37          	lui	s6,0xf4
    800088b8:	00989bb7          	lui	s7,0x989
    800088bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800088c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800088c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800088c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800088cc:	00148c9b          	addiw	s9,s1,1
    800088d0:	02500793          	li	a5,37
    800088d4:	01998933          	add	s2,s3,s9
    800088d8:	38f51263          	bne	a0,a5,80008c5c <__printf+0x434>
    800088dc:	00094783          	lbu	a5,0(s2)
    800088e0:	00078c9b          	sext.w	s9,a5
    800088e4:	1e078263          	beqz	a5,80008ac8 <__printf+0x2a0>
    800088e8:	0024849b          	addiw	s1,s1,2
    800088ec:	07000713          	li	a4,112
    800088f0:	00998933          	add	s2,s3,s1
    800088f4:	38e78a63          	beq	a5,a4,80008c88 <__printf+0x460>
    800088f8:	20f76863          	bltu	a4,a5,80008b08 <__printf+0x2e0>
    800088fc:	42a78863          	beq	a5,a0,80008d2c <__printf+0x504>
    80008900:	06400713          	li	a4,100
    80008904:	40e79663          	bne	a5,a4,80008d10 <__printf+0x4e8>
    80008908:	f7843783          	ld	a5,-136(s0)
    8000890c:	0007a603          	lw	a2,0(a5)
    80008910:	00878793          	addi	a5,a5,8
    80008914:	f6f43c23          	sd	a5,-136(s0)
    80008918:	42064a63          	bltz	a2,80008d4c <__printf+0x524>
    8000891c:	00a00713          	li	a4,10
    80008920:	02e677bb          	remuw	a5,a2,a4
    80008924:	00002d97          	auipc	s11,0x2
    80008928:	004d8d93          	addi	s11,s11,4 # 8000a928 <digits>
    8000892c:	00900593          	li	a1,9
    80008930:	0006051b          	sext.w	a0,a2
    80008934:	00000c93          	li	s9,0
    80008938:	02079793          	slli	a5,a5,0x20
    8000893c:	0207d793          	srli	a5,a5,0x20
    80008940:	00fd87b3          	add	a5,s11,a5
    80008944:	0007c783          	lbu	a5,0(a5)
    80008948:	02e656bb          	divuw	a3,a2,a4
    8000894c:	f8f40023          	sb	a5,-128(s0)
    80008950:	14c5d863          	bge	a1,a2,80008aa0 <__printf+0x278>
    80008954:	06300593          	li	a1,99
    80008958:	00100c93          	li	s9,1
    8000895c:	02e6f7bb          	remuw	a5,a3,a4
    80008960:	02079793          	slli	a5,a5,0x20
    80008964:	0207d793          	srli	a5,a5,0x20
    80008968:	00fd87b3          	add	a5,s11,a5
    8000896c:	0007c783          	lbu	a5,0(a5)
    80008970:	02e6d73b          	divuw	a4,a3,a4
    80008974:	f8f400a3          	sb	a5,-127(s0)
    80008978:	12a5f463          	bgeu	a1,a0,80008aa0 <__printf+0x278>
    8000897c:	00a00693          	li	a3,10
    80008980:	00900593          	li	a1,9
    80008984:	02d777bb          	remuw	a5,a4,a3
    80008988:	02079793          	slli	a5,a5,0x20
    8000898c:	0207d793          	srli	a5,a5,0x20
    80008990:	00fd87b3          	add	a5,s11,a5
    80008994:	0007c503          	lbu	a0,0(a5)
    80008998:	02d757bb          	divuw	a5,a4,a3
    8000899c:	f8a40123          	sb	a0,-126(s0)
    800089a0:	48e5f263          	bgeu	a1,a4,80008e24 <__printf+0x5fc>
    800089a4:	06300513          	li	a0,99
    800089a8:	02d7f5bb          	remuw	a1,a5,a3
    800089ac:	02059593          	slli	a1,a1,0x20
    800089b0:	0205d593          	srli	a1,a1,0x20
    800089b4:	00bd85b3          	add	a1,s11,a1
    800089b8:	0005c583          	lbu	a1,0(a1)
    800089bc:	02d7d7bb          	divuw	a5,a5,a3
    800089c0:	f8b401a3          	sb	a1,-125(s0)
    800089c4:	48e57263          	bgeu	a0,a4,80008e48 <__printf+0x620>
    800089c8:	3e700513          	li	a0,999
    800089cc:	02d7f5bb          	remuw	a1,a5,a3
    800089d0:	02059593          	slli	a1,a1,0x20
    800089d4:	0205d593          	srli	a1,a1,0x20
    800089d8:	00bd85b3          	add	a1,s11,a1
    800089dc:	0005c583          	lbu	a1,0(a1)
    800089e0:	02d7d7bb          	divuw	a5,a5,a3
    800089e4:	f8b40223          	sb	a1,-124(s0)
    800089e8:	46e57663          	bgeu	a0,a4,80008e54 <__printf+0x62c>
    800089ec:	02d7f5bb          	remuw	a1,a5,a3
    800089f0:	02059593          	slli	a1,a1,0x20
    800089f4:	0205d593          	srli	a1,a1,0x20
    800089f8:	00bd85b3          	add	a1,s11,a1
    800089fc:	0005c583          	lbu	a1,0(a1)
    80008a00:	02d7d7bb          	divuw	a5,a5,a3
    80008a04:	f8b402a3          	sb	a1,-123(s0)
    80008a08:	46ea7863          	bgeu	s4,a4,80008e78 <__printf+0x650>
    80008a0c:	02d7f5bb          	remuw	a1,a5,a3
    80008a10:	02059593          	slli	a1,a1,0x20
    80008a14:	0205d593          	srli	a1,a1,0x20
    80008a18:	00bd85b3          	add	a1,s11,a1
    80008a1c:	0005c583          	lbu	a1,0(a1)
    80008a20:	02d7d7bb          	divuw	a5,a5,a3
    80008a24:	f8b40323          	sb	a1,-122(s0)
    80008a28:	3eeaf863          	bgeu	s5,a4,80008e18 <__printf+0x5f0>
    80008a2c:	02d7f5bb          	remuw	a1,a5,a3
    80008a30:	02059593          	slli	a1,a1,0x20
    80008a34:	0205d593          	srli	a1,a1,0x20
    80008a38:	00bd85b3          	add	a1,s11,a1
    80008a3c:	0005c583          	lbu	a1,0(a1)
    80008a40:	02d7d7bb          	divuw	a5,a5,a3
    80008a44:	f8b403a3          	sb	a1,-121(s0)
    80008a48:	42eb7e63          	bgeu	s6,a4,80008e84 <__printf+0x65c>
    80008a4c:	02d7f5bb          	remuw	a1,a5,a3
    80008a50:	02059593          	slli	a1,a1,0x20
    80008a54:	0205d593          	srli	a1,a1,0x20
    80008a58:	00bd85b3          	add	a1,s11,a1
    80008a5c:	0005c583          	lbu	a1,0(a1)
    80008a60:	02d7d7bb          	divuw	a5,a5,a3
    80008a64:	f8b40423          	sb	a1,-120(s0)
    80008a68:	42ebfc63          	bgeu	s7,a4,80008ea0 <__printf+0x678>
    80008a6c:	02079793          	slli	a5,a5,0x20
    80008a70:	0207d793          	srli	a5,a5,0x20
    80008a74:	00fd8db3          	add	s11,s11,a5
    80008a78:	000dc703          	lbu	a4,0(s11)
    80008a7c:	00a00793          	li	a5,10
    80008a80:	00900c93          	li	s9,9
    80008a84:	f8e404a3          	sb	a4,-119(s0)
    80008a88:	00065c63          	bgez	a2,80008aa0 <__printf+0x278>
    80008a8c:	f9040713          	addi	a4,s0,-112
    80008a90:	00f70733          	add	a4,a4,a5
    80008a94:	02d00693          	li	a3,45
    80008a98:	fed70823          	sb	a3,-16(a4)
    80008a9c:	00078c93          	mv	s9,a5
    80008aa0:	f8040793          	addi	a5,s0,-128
    80008aa4:	01978cb3          	add	s9,a5,s9
    80008aa8:	f7f40d13          	addi	s10,s0,-129
    80008aac:	000cc503          	lbu	a0,0(s9)
    80008ab0:	fffc8c93          	addi	s9,s9,-1
    80008ab4:	00000097          	auipc	ra,0x0
    80008ab8:	b90080e7          	jalr	-1136(ra) # 80008644 <consputc>
    80008abc:	ffac98e3          	bne	s9,s10,80008aac <__printf+0x284>
    80008ac0:	00094503          	lbu	a0,0(s2)
    80008ac4:	e00514e3          	bnez	a0,800088cc <__printf+0xa4>
    80008ac8:	1a0c1663          	bnez	s8,80008c74 <__printf+0x44c>
    80008acc:	08813083          	ld	ra,136(sp)
    80008ad0:	08013403          	ld	s0,128(sp)
    80008ad4:	07813483          	ld	s1,120(sp)
    80008ad8:	07013903          	ld	s2,112(sp)
    80008adc:	06813983          	ld	s3,104(sp)
    80008ae0:	06013a03          	ld	s4,96(sp)
    80008ae4:	05813a83          	ld	s5,88(sp)
    80008ae8:	05013b03          	ld	s6,80(sp)
    80008aec:	04813b83          	ld	s7,72(sp)
    80008af0:	04013c03          	ld	s8,64(sp)
    80008af4:	03813c83          	ld	s9,56(sp)
    80008af8:	03013d03          	ld	s10,48(sp)
    80008afc:	02813d83          	ld	s11,40(sp)
    80008b00:	0d010113          	addi	sp,sp,208
    80008b04:	00008067          	ret
    80008b08:	07300713          	li	a4,115
    80008b0c:	1ce78a63          	beq	a5,a4,80008ce0 <__printf+0x4b8>
    80008b10:	07800713          	li	a4,120
    80008b14:	1ee79e63          	bne	a5,a4,80008d10 <__printf+0x4e8>
    80008b18:	f7843783          	ld	a5,-136(s0)
    80008b1c:	0007a703          	lw	a4,0(a5)
    80008b20:	00878793          	addi	a5,a5,8
    80008b24:	f6f43c23          	sd	a5,-136(s0)
    80008b28:	28074263          	bltz	a4,80008dac <__printf+0x584>
    80008b2c:	00002d97          	auipc	s11,0x2
    80008b30:	dfcd8d93          	addi	s11,s11,-516 # 8000a928 <digits>
    80008b34:	00f77793          	andi	a5,a4,15
    80008b38:	00fd87b3          	add	a5,s11,a5
    80008b3c:	0007c683          	lbu	a3,0(a5)
    80008b40:	00f00613          	li	a2,15
    80008b44:	0007079b          	sext.w	a5,a4
    80008b48:	f8d40023          	sb	a3,-128(s0)
    80008b4c:	0047559b          	srliw	a1,a4,0x4
    80008b50:	0047569b          	srliw	a3,a4,0x4
    80008b54:	00000c93          	li	s9,0
    80008b58:	0ee65063          	bge	a2,a4,80008c38 <__printf+0x410>
    80008b5c:	00f6f693          	andi	a3,a3,15
    80008b60:	00dd86b3          	add	a3,s11,a3
    80008b64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008b68:	0087d79b          	srliw	a5,a5,0x8
    80008b6c:	00100c93          	li	s9,1
    80008b70:	f8d400a3          	sb	a3,-127(s0)
    80008b74:	0cb67263          	bgeu	a2,a1,80008c38 <__printf+0x410>
    80008b78:	00f7f693          	andi	a3,a5,15
    80008b7c:	00dd86b3          	add	a3,s11,a3
    80008b80:	0006c583          	lbu	a1,0(a3)
    80008b84:	00f00613          	li	a2,15
    80008b88:	0047d69b          	srliw	a3,a5,0x4
    80008b8c:	f8b40123          	sb	a1,-126(s0)
    80008b90:	0047d593          	srli	a1,a5,0x4
    80008b94:	28f67e63          	bgeu	a2,a5,80008e30 <__printf+0x608>
    80008b98:	00f6f693          	andi	a3,a3,15
    80008b9c:	00dd86b3          	add	a3,s11,a3
    80008ba0:	0006c503          	lbu	a0,0(a3)
    80008ba4:	0087d813          	srli	a6,a5,0x8
    80008ba8:	0087d69b          	srliw	a3,a5,0x8
    80008bac:	f8a401a3          	sb	a0,-125(s0)
    80008bb0:	28b67663          	bgeu	a2,a1,80008e3c <__printf+0x614>
    80008bb4:	00f6f693          	andi	a3,a3,15
    80008bb8:	00dd86b3          	add	a3,s11,a3
    80008bbc:	0006c583          	lbu	a1,0(a3)
    80008bc0:	00c7d513          	srli	a0,a5,0xc
    80008bc4:	00c7d69b          	srliw	a3,a5,0xc
    80008bc8:	f8b40223          	sb	a1,-124(s0)
    80008bcc:	29067a63          	bgeu	a2,a6,80008e60 <__printf+0x638>
    80008bd0:	00f6f693          	andi	a3,a3,15
    80008bd4:	00dd86b3          	add	a3,s11,a3
    80008bd8:	0006c583          	lbu	a1,0(a3)
    80008bdc:	0107d813          	srli	a6,a5,0x10
    80008be0:	0107d69b          	srliw	a3,a5,0x10
    80008be4:	f8b402a3          	sb	a1,-123(s0)
    80008be8:	28a67263          	bgeu	a2,a0,80008e6c <__printf+0x644>
    80008bec:	00f6f693          	andi	a3,a3,15
    80008bf0:	00dd86b3          	add	a3,s11,a3
    80008bf4:	0006c683          	lbu	a3,0(a3)
    80008bf8:	0147d79b          	srliw	a5,a5,0x14
    80008bfc:	f8d40323          	sb	a3,-122(s0)
    80008c00:	21067663          	bgeu	a2,a6,80008e0c <__printf+0x5e4>
    80008c04:	02079793          	slli	a5,a5,0x20
    80008c08:	0207d793          	srli	a5,a5,0x20
    80008c0c:	00fd8db3          	add	s11,s11,a5
    80008c10:	000dc683          	lbu	a3,0(s11)
    80008c14:	00800793          	li	a5,8
    80008c18:	00700c93          	li	s9,7
    80008c1c:	f8d403a3          	sb	a3,-121(s0)
    80008c20:	00075c63          	bgez	a4,80008c38 <__printf+0x410>
    80008c24:	f9040713          	addi	a4,s0,-112
    80008c28:	00f70733          	add	a4,a4,a5
    80008c2c:	02d00693          	li	a3,45
    80008c30:	fed70823          	sb	a3,-16(a4)
    80008c34:	00078c93          	mv	s9,a5
    80008c38:	f8040793          	addi	a5,s0,-128
    80008c3c:	01978cb3          	add	s9,a5,s9
    80008c40:	f7f40d13          	addi	s10,s0,-129
    80008c44:	000cc503          	lbu	a0,0(s9)
    80008c48:	fffc8c93          	addi	s9,s9,-1
    80008c4c:	00000097          	auipc	ra,0x0
    80008c50:	9f8080e7          	jalr	-1544(ra) # 80008644 <consputc>
    80008c54:	ff9d18e3          	bne	s10,s9,80008c44 <__printf+0x41c>
    80008c58:	0100006f          	j	80008c68 <__printf+0x440>
    80008c5c:	00000097          	auipc	ra,0x0
    80008c60:	9e8080e7          	jalr	-1560(ra) # 80008644 <consputc>
    80008c64:	000c8493          	mv	s1,s9
    80008c68:	00094503          	lbu	a0,0(s2)
    80008c6c:	c60510e3          	bnez	a0,800088cc <__printf+0xa4>
    80008c70:	e40c0ee3          	beqz	s8,80008acc <__printf+0x2a4>
    80008c74:	000c9517          	auipc	a0,0xc9
    80008c78:	bac50513          	addi	a0,a0,-1108 # 800d1820 <pr>
    80008c7c:	00001097          	auipc	ra,0x1
    80008c80:	94c080e7          	jalr	-1716(ra) # 800095c8 <release>
    80008c84:	e49ff06f          	j	80008acc <__printf+0x2a4>
    80008c88:	f7843783          	ld	a5,-136(s0)
    80008c8c:	03000513          	li	a0,48
    80008c90:	01000d13          	li	s10,16
    80008c94:	00878713          	addi	a4,a5,8
    80008c98:	0007bc83          	ld	s9,0(a5)
    80008c9c:	f6e43c23          	sd	a4,-136(s0)
    80008ca0:	00000097          	auipc	ra,0x0
    80008ca4:	9a4080e7          	jalr	-1628(ra) # 80008644 <consputc>
    80008ca8:	07800513          	li	a0,120
    80008cac:	00000097          	auipc	ra,0x0
    80008cb0:	998080e7          	jalr	-1640(ra) # 80008644 <consputc>
    80008cb4:	00002d97          	auipc	s11,0x2
    80008cb8:	c74d8d93          	addi	s11,s11,-908 # 8000a928 <digits>
    80008cbc:	03ccd793          	srli	a5,s9,0x3c
    80008cc0:	00fd87b3          	add	a5,s11,a5
    80008cc4:	0007c503          	lbu	a0,0(a5)
    80008cc8:	fffd0d1b          	addiw	s10,s10,-1
    80008ccc:	004c9c93          	slli	s9,s9,0x4
    80008cd0:	00000097          	auipc	ra,0x0
    80008cd4:	974080e7          	jalr	-1676(ra) # 80008644 <consputc>
    80008cd8:	fe0d12e3          	bnez	s10,80008cbc <__printf+0x494>
    80008cdc:	f8dff06f          	j	80008c68 <__printf+0x440>
    80008ce0:	f7843783          	ld	a5,-136(s0)
    80008ce4:	0007bc83          	ld	s9,0(a5)
    80008ce8:	00878793          	addi	a5,a5,8
    80008cec:	f6f43c23          	sd	a5,-136(s0)
    80008cf0:	000c9a63          	bnez	s9,80008d04 <__printf+0x4dc>
    80008cf4:	1080006f          	j	80008dfc <__printf+0x5d4>
    80008cf8:	001c8c93          	addi	s9,s9,1
    80008cfc:	00000097          	auipc	ra,0x0
    80008d00:	948080e7          	jalr	-1720(ra) # 80008644 <consputc>
    80008d04:	000cc503          	lbu	a0,0(s9)
    80008d08:	fe0518e3          	bnez	a0,80008cf8 <__printf+0x4d0>
    80008d0c:	f5dff06f          	j	80008c68 <__printf+0x440>
    80008d10:	02500513          	li	a0,37
    80008d14:	00000097          	auipc	ra,0x0
    80008d18:	930080e7          	jalr	-1744(ra) # 80008644 <consputc>
    80008d1c:	000c8513          	mv	a0,s9
    80008d20:	00000097          	auipc	ra,0x0
    80008d24:	924080e7          	jalr	-1756(ra) # 80008644 <consputc>
    80008d28:	f41ff06f          	j	80008c68 <__printf+0x440>
    80008d2c:	02500513          	li	a0,37
    80008d30:	00000097          	auipc	ra,0x0
    80008d34:	914080e7          	jalr	-1772(ra) # 80008644 <consputc>
    80008d38:	f31ff06f          	j	80008c68 <__printf+0x440>
    80008d3c:	00030513          	mv	a0,t1
    80008d40:	00000097          	auipc	ra,0x0
    80008d44:	7bc080e7          	jalr	1980(ra) # 800094fc <acquire>
    80008d48:	b4dff06f          	j	80008894 <__printf+0x6c>
    80008d4c:	40c0053b          	negw	a0,a2
    80008d50:	00a00713          	li	a4,10
    80008d54:	02e576bb          	remuw	a3,a0,a4
    80008d58:	00002d97          	auipc	s11,0x2
    80008d5c:	bd0d8d93          	addi	s11,s11,-1072 # 8000a928 <digits>
    80008d60:	ff700593          	li	a1,-9
    80008d64:	02069693          	slli	a3,a3,0x20
    80008d68:	0206d693          	srli	a3,a3,0x20
    80008d6c:	00dd86b3          	add	a3,s11,a3
    80008d70:	0006c683          	lbu	a3,0(a3)
    80008d74:	02e557bb          	divuw	a5,a0,a4
    80008d78:	f8d40023          	sb	a3,-128(s0)
    80008d7c:	10b65e63          	bge	a2,a1,80008e98 <__printf+0x670>
    80008d80:	06300593          	li	a1,99
    80008d84:	02e7f6bb          	remuw	a3,a5,a4
    80008d88:	02069693          	slli	a3,a3,0x20
    80008d8c:	0206d693          	srli	a3,a3,0x20
    80008d90:	00dd86b3          	add	a3,s11,a3
    80008d94:	0006c683          	lbu	a3,0(a3)
    80008d98:	02e7d73b          	divuw	a4,a5,a4
    80008d9c:	00200793          	li	a5,2
    80008da0:	f8d400a3          	sb	a3,-127(s0)
    80008da4:	bca5ece3          	bltu	a1,a0,8000897c <__printf+0x154>
    80008da8:	ce5ff06f          	j	80008a8c <__printf+0x264>
    80008dac:	40e007bb          	negw	a5,a4
    80008db0:	00002d97          	auipc	s11,0x2
    80008db4:	b78d8d93          	addi	s11,s11,-1160 # 8000a928 <digits>
    80008db8:	00f7f693          	andi	a3,a5,15
    80008dbc:	00dd86b3          	add	a3,s11,a3
    80008dc0:	0006c583          	lbu	a1,0(a3)
    80008dc4:	ff100613          	li	a2,-15
    80008dc8:	0047d69b          	srliw	a3,a5,0x4
    80008dcc:	f8b40023          	sb	a1,-128(s0)
    80008dd0:	0047d59b          	srliw	a1,a5,0x4
    80008dd4:	0ac75e63          	bge	a4,a2,80008e90 <__printf+0x668>
    80008dd8:	00f6f693          	andi	a3,a3,15
    80008ddc:	00dd86b3          	add	a3,s11,a3
    80008de0:	0006c603          	lbu	a2,0(a3)
    80008de4:	00f00693          	li	a3,15
    80008de8:	0087d79b          	srliw	a5,a5,0x8
    80008dec:	f8c400a3          	sb	a2,-127(s0)
    80008df0:	d8b6e4e3          	bltu	a3,a1,80008b78 <__printf+0x350>
    80008df4:	00200793          	li	a5,2
    80008df8:	e2dff06f          	j	80008c24 <__printf+0x3fc>
    80008dfc:	00002c97          	auipc	s9,0x2
    80008e00:	b0cc8c93          	addi	s9,s9,-1268 # 8000a908 <CONSOLE_STATUS+0x8f8>
    80008e04:	02800513          	li	a0,40
    80008e08:	ef1ff06f          	j	80008cf8 <__printf+0x4d0>
    80008e0c:	00700793          	li	a5,7
    80008e10:	00600c93          	li	s9,6
    80008e14:	e0dff06f          	j	80008c20 <__printf+0x3f8>
    80008e18:	00700793          	li	a5,7
    80008e1c:	00600c93          	li	s9,6
    80008e20:	c69ff06f          	j	80008a88 <__printf+0x260>
    80008e24:	00300793          	li	a5,3
    80008e28:	00200c93          	li	s9,2
    80008e2c:	c5dff06f          	j	80008a88 <__printf+0x260>
    80008e30:	00300793          	li	a5,3
    80008e34:	00200c93          	li	s9,2
    80008e38:	de9ff06f          	j	80008c20 <__printf+0x3f8>
    80008e3c:	00400793          	li	a5,4
    80008e40:	00300c93          	li	s9,3
    80008e44:	dddff06f          	j	80008c20 <__printf+0x3f8>
    80008e48:	00400793          	li	a5,4
    80008e4c:	00300c93          	li	s9,3
    80008e50:	c39ff06f          	j	80008a88 <__printf+0x260>
    80008e54:	00500793          	li	a5,5
    80008e58:	00400c93          	li	s9,4
    80008e5c:	c2dff06f          	j	80008a88 <__printf+0x260>
    80008e60:	00500793          	li	a5,5
    80008e64:	00400c93          	li	s9,4
    80008e68:	db9ff06f          	j	80008c20 <__printf+0x3f8>
    80008e6c:	00600793          	li	a5,6
    80008e70:	00500c93          	li	s9,5
    80008e74:	dadff06f          	j	80008c20 <__printf+0x3f8>
    80008e78:	00600793          	li	a5,6
    80008e7c:	00500c93          	li	s9,5
    80008e80:	c09ff06f          	j	80008a88 <__printf+0x260>
    80008e84:	00800793          	li	a5,8
    80008e88:	00700c93          	li	s9,7
    80008e8c:	bfdff06f          	j	80008a88 <__printf+0x260>
    80008e90:	00100793          	li	a5,1
    80008e94:	d91ff06f          	j	80008c24 <__printf+0x3fc>
    80008e98:	00100793          	li	a5,1
    80008e9c:	bf1ff06f          	j	80008a8c <__printf+0x264>
    80008ea0:	00900793          	li	a5,9
    80008ea4:	00800c93          	li	s9,8
    80008ea8:	be1ff06f          	j	80008a88 <__printf+0x260>
    80008eac:	00002517          	auipc	a0,0x2
    80008eb0:	a6450513          	addi	a0,a0,-1436 # 8000a910 <CONSOLE_STATUS+0x900>
    80008eb4:	00000097          	auipc	ra,0x0
    80008eb8:	918080e7          	jalr	-1768(ra) # 800087cc <panic>

0000000080008ebc <printfinit>:
    80008ebc:	fe010113          	addi	sp,sp,-32
    80008ec0:	00813823          	sd	s0,16(sp)
    80008ec4:	00913423          	sd	s1,8(sp)
    80008ec8:	00113c23          	sd	ra,24(sp)
    80008ecc:	02010413          	addi	s0,sp,32
    80008ed0:	000c9497          	auipc	s1,0xc9
    80008ed4:	95048493          	addi	s1,s1,-1712 # 800d1820 <pr>
    80008ed8:	00048513          	mv	a0,s1
    80008edc:	00002597          	auipc	a1,0x2
    80008ee0:	a4458593          	addi	a1,a1,-1468 # 8000a920 <CONSOLE_STATUS+0x910>
    80008ee4:	00000097          	auipc	ra,0x0
    80008ee8:	5f4080e7          	jalr	1524(ra) # 800094d8 <initlock>
    80008eec:	01813083          	ld	ra,24(sp)
    80008ef0:	01013403          	ld	s0,16(sp)
    80008ef4:	0004ac23          	sw	zero,24(s1)
    80008ef8:	00813483          	ld	s1,8(sp)
    80008efc:	02010113          	addi	sp,sp,32
    80008f00:	00008067          	ret

0000000080008f04 <uartinit>:
    80008f04:	ff010113          	addi	sp,sp,-16
    80008f08:	00813423          	sd	s0,8(sp)
    80008f0c:	01010413          	addi	s0,sp,16
    80008f10:	100007b7          	lui	a5,0x10000
    80008f14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008f18:	f8000713          	li	a4,-128
    80008f1c:	00e781a3          	sb	a4,3(a5)
    80008f20:	00300713          	li	a4,3
    80008f24:	00e78023          	sb	a4,0(a5)
    80008f28:	000780a3          	sb	zero,1(a5)
    80008f2c:	00e781a3          	sb	a4,3(a5)
    80008f30:	00700693          	li	a3,7
    80008f34:	00d78123          	sb	a3,2(a5)
    80008f38:	00e780a3          	sb	a4,1(a5)
    80008f3c:	00813403          	ld	s0,8(sp)
    80008f40:	01010113          	addi	sp,sp,16
    80008f44:	00008067          	ret

0000000080008f48 <uartputc>:
    80008f48:	00004797          	auipc	a5,0x4
    80008f4c:	f507a783          	lw	a5,-176(a5) # 8000ce98 <panicked>
    80008f50:	00078463          	beqz	a5,80008f58 <uartputc+0x10>
    80008f54:	0000006f          	j	80008f54 <uartputc+0xc>
    80008f58:	fd010113          	addi	sp,sp,-48
    80008f5c:	02813023          	sd	s0,32(sp)
    80008f60:	00913c23          	sd	s1,24(sp)
    80008f64:	01213823          	sd	s2,16(sp)
    80008f68:	01313423          	sd	s3,8(sp)
    80008f6c:	02113423          	sd	ra,40(sp)
    80008f70:	03010413          	addi	s0,sp,48
    80008f74:	00004917          	auipc	s2,0x4
    80008f78:	f2c90913          	addi	s2,s2,-212 # 8000cea0 <uart_tx_r>
    80008f7c:	00093783          	ld	a5,0(s2)
    80008f80:	00004497          	auipc	s1,0x4
    80008f84:	f2848493          	addi	s1,s1,-216 # 8000cea8 <uart_tx_w>
    80008f88:	0004b703          	ld	a4,0(s1)
    80008f8c:	02078693          	addi	a3,a5,32
    80008f90:	00050993          	mv	s3,a0
    80008f94:	02e69c63          	bne	a3,a4,80008fcc <uartputc+0x84>
    80008f98:	00001097          	auipc	ra,0x1
    80008f9c:	834080e7          	jalr	-1996(ra) # 800097cc <push_on>
    80008fa0:	00093783          	ld	a5,0(s2)
    80008fa4:	0004b703          	ld	a4,0(s1)
    80008fa8:	02078793          	addi	a5,a5,32
    80008fac:	00e79463          	bne	a5,a4,80008fb4 <uartputc+0x6c>
    80008fb0:	0000006f          	j	80008fb0 <uartputc+0x68>
    80008fb4:	00001097          	auipc	ra,0x1
    80008fb8:	88c080e7          	jalr	-1908(ra) # 80009840 <pop_on>
    80008fbc:	00093783          	ld	a5,0(s2)
    80008fc0:	0004b703          	ld	a4,0(s1)
    80008fc4:	02078693          	addi	a3,a5,32
    80008fc8:	fce688e3          	beq	a3,a4,80008f98 <uartputc+0x50>
    80008fcc:	01f77693          	andi	a3,a4,31
    80008fd0:	000c9597          	auipc	a1,0xc9
    80008fd4:	87058593          	addi	a1,a1,-1936 # 800d1840 <uart_tx_buf>
    80008fd8:	00d586b3          	add	a3,a1,a3
    80008fdc:	00170713          	addi	a4,a4,1
    80008fe0:	01368023          	sb	s3,0(a3)
    80008fe4:	00e4b023          	sd	a4,0(s1)
    80008fe8:	10000637          	lui	a2,0x10000
    80008fec:	02f71063          	bne	a4,a5,8000900c <uartputc+0xc4>
    80008ff0:	0340006f          	j	80009024 <uartputc+0xdc>
    80008ff4:	00074703          	lbu	a4,0(a4)
    80008ff8:	00f93023          	sd	a5,0(s2)
    80008ffc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80009000:	00093783          	ld	a5,0(s2)
    80009004:	0004b703          	ld	a4,0(s1)
    80009008:	00f70e63          	beq	a4,a5,80009024 <uartputc+0xdc>
    8000900c:	00564683          	lbu	a3,5(a2)
    80009010:	01f7f713          	andi	a4,a5,31
    80009014:	00e58733          	add	a4,a1,a4
    80009018:	0206f693          	andi	a3,a3,32
    8000901c:	00178793          	addi	a5,a5,1
    80009020:	fc069ae3          	bnez	a3,80008ff4 <uartputc+0xac>
    80009024:	02813083          	ld	ra,40(sp)
    80009028:	02013403          	ld	s0,32(sp)
    8000902c:	01813483          	ld	s1,24(sp)
    80009030:	01013903          	ld	s2,16(sp)
    80009034:	00813983          	ld	s3,8(sp)
    80009038:	03010113          	addi	sp,sp,48
    8000903c:	00008067          	ret

0000000080009040 <uartputc_sync>:
    80009040:	ff010113          	addi	sp,sp,-16
    80009044:	00813423          	sd	s0,8(sp)
    80009048:	01010413          	addi	s0,sp,16
    8000904c:	00004717          	auipc	a4,0x4
    80009050:	e4c72703          	lw	a4,-436(a4) # 8000ce98 <panicked>
    80009054:	02071663          	bnez	a4,80009080 <uartputc_sync+0x40>
    80009058:	00050793          	mv	a5,a0
    8000905c:	100006b7          	lui	a3,0x10000
    80009060:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80009064:	02077713          	andi	a4,a4,32
    80009068:	fe070ce3          	beqz	a4,80009060 <uartputc_sync+0x20>
    8000906c:	0ff7f793          	andi	a5,a5,255
    80009070:	00f68023          	sb	a5,0(a3)
    80009074:	00813403          	ld	s0,8(sp)
    80009078:	01010113          	addi	sp,sp,16
    8000907c:	00008067          	ret
    80009080:	0000006f          	j	80009080 <uartputc_sync+0x40>

0000000080009084 <uartstart>:
    80009084:	ff010113          	addi	sp,sp,-16
    80009088:	00813423          	sd	s0,8(sp)
    8000908c:	01010413          	addi	s0,sp,16
    80009090:	00004617          	auipc	a2,0x4
    80009094:	e1060613          	addi	a2,a2,-496 # 8000cea0 <uart_tx_r>
    80009098:	00004517          	auipc	a0,0x4
    8000909c:	e1050513          	addi	a0,a0,-496 # 8000cea8 <uart_tx_w>
    800090a0:	00063783          	ld	a5,0(a2)
    800090a4:	00053703          	ld	a4,0(a0)
    800090a8:	04f70263          	beq	a4,a5,800090ec <uartstart+0x68>
    800090ac:	100005b7          	lui	a1,0x10000
    800090b0:	000c8817          	auipc	a6,0xc8
    800090b4:	79080813          	addi	a6,a6,1936 # 800d1840 <uart_tx_buf>
    800090b8:	01c0006f          	j	800090d4 <uartstart+0x50>
    800090bc:	0006c703          	lbu	a4,0(a3)
    800090c0:	00f63023          	sd	a5,0(a2)
    800090c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800090c8:	00063783          	ld	a5,0(a2)
    800090cc:	00053703          	ld	a4,0(a0)
    800090d0:	00f70e63          	beq	a4,a5,800090ec <uartstart+0x68>
    800090d4:	01f7f713          	andi	a4,a5,31
    800090d8:	00e806b3          	add	a3,a6,a4
    800090dc:	0055c703          	lbu	a4,5(a1)
    800090e0:	00178793          	addi	a5,a5,1
    800090e4:	02077713          	andi	a4,a4,32
    800090e8:	fc071ae3          	bnez	a4,800090bc <uartstart+0x38>
    800090ec:	00813403          	ld	s0,8(sp)
    800090f0:	01010113          	addi	sp,sp,16
    800090f4:	00008067          	ret

00000000800090f8 <uartgetc>:
    800090f8:	ff010113          	addi	sp,sp,-16
    800090fc:	00813423          	sd	s0,8(sp)
    80009100:	01010413          	addi	s0,sp,16
    80009104:	10000737          	lui	a4,0x10000
    80009108:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000910c:	0017f793          	andi	a5,a5,1
    80009110:	00078c63          	beqz	a5,80009128 <uartgetc+0x30>
    80009114:	00074503          	lbu	a0,0(a4)
    80009118:	0ff57513          	andi	a0,a0,255
    8000911c:	00813403          	ld	s0,8(sp)
    80009120:	01010113          	addi	sp,sp,16
    80009124:	00008067          	ret
    80009128:	fff00513          	li	a0,-1
    8000912c:	ff1ff06f          	j	8000911c <uartgetc+0x24>

0000000080009130 <uartintr>:
    80009130:	100007b7          	lui	a5,0x10000
    80009134:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80009138:	0017f793          	andi	a5,a5,1
    8000913c:	0a078463          	beqz	a5,800091e4 <uartintr+0xb4>
    80009140:	fe010113          	addi	sp,sp,-32
    80009144:	00813823          	sd	s0,16(sp)
    80009148:	00913423          	sd	s1,8(sp)
    8000914c:	00113c23          	sd	ra,24(sp)
    80009150:	02010413          	addi	s0,sp,32
    80009154:	100004b7          	lui	s1,0x10000
    80009158:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000915c:	0ff57513          	andi	a0,a0,255
    80009160:	fffff097          	auipc	ra,0xfffff
    80009164:	534080e7          	jalr	1332(ra) # 80008694 <consoleintr>
    80009168:	0054c783          	lbu	a5,5(s1)
    8000916c:	0017f793          	andi	a5,a5,1
    80009170:	fe0794e3          	bnez	a5,80009158 <uartintr+0x28>
    80009174:	00004617          	auipc	a2,0x4
    80009178:	d2c60613          	addi	a2,a2,-724 # 8000cea0 <uart_tx_r>
    8000917c:	00004517          	auipc	a0,0x4
    80009180:	d2c50513          	addi	a0,a0,-724 # 8000cea8 <uart_tx_w>
    80009184:	00063783          	ld	a5,0(a2)
    80009188:	00053703          	ld	a4,0(a0)
    8000918c:	04f70263          	beq	a4,a5,800091d0 <uartintr+0xa0>
    80009190:	100005b7          	lui	a1,0x10000
    80009194:	000c8817          	auipc	a6,0xc8
    80009198:	6ac80813          	addi	a6,a6,1708 # 800d1840 <uart_tx_buf>
    8000919c:	01c0006f          	j	800091b8 <uartintr+0x88>
    800091a0:	0006c703          	lbu	a4,0(a3)
    800091a4:	00f63023          	sd	a5,0(a2)
    800091a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800091ac:	00063783          	ld	a5,0(a2)
    800091b0:	00053703          	ld	a4,0(a0)
    800091b4:	00f70e63          	beq	a4,a5,800091d0 <uartintr+0xa0>
    800091b8:	01f7f713          	andi	a4,a5,31
    800091bc:	00e806b3          	add	a3,a6,a4
    800091c0:	0055c703          	lbu	a4,5(a1)
    800091c4:	00178793          	addi	a5,a5,1
    800091c8:	02077713          	andi	a4,a4,32
    800091cc:	fc071ae3          	bnez	a4,800091a0 <uartintr+0x70>
    800091d0:	01813083          	ld	ra,24(sp)
    800091d4:	01013403          	ld	s0,16(sp)
    800091d8:	00813483          	ld	s1,8(sp)
    800091dc:	02010113          	addi	sp,sp,32
    800091e0:	00008067          	ret
    800091e4:	00004617          	auipc	a2,0x4
    800091e8:	cbc60613          	addi	a2,a2,-836 # 8000cea0 <uart_tx_r>
    800091ec:	00004517          	auipc	a0,0x4
    800091f0:	cbc50513          	addi	a0,a0,-836 # 8000cea8 <uart_tx_w>
    800091f4:	00063783          	ld	a5,0(a2)
    800091f8:	00053703          	ld	a4,0(a0)
    800091fc:	04f70263          	beq	a4,a5,80009240 <uartintr+0x110>
    80009200:	100005b7          	lui	a1,0x10000
    80009204:	000c8817          	auipc	a6,0xc8
    80009208:	63c80813          	addi	a6,a6,1596 # 800d1840 <uart_tx_buf>
    8000920c:	01c0006f          	j	80009228 <uartintr+0xf8>
    80009210:	0006c703          	lbu	a4,0(a3)
    80009214:	00f63023          	sd	a5,0(a2)
    80009218:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000921c:	00063783          	ld	a5,0(a2)
    80009220:	00053703          	ld	a4,0(a0)
    80009224:	02f70063          	beq	a4,a5,80009244 <uartintr+0x114>
    80009228:	01f7f713          	andi	a4,a5,31
    8000922c:	00e806b3          	add	a3,a6,a4
    80009230:	0055c703          	lbu	a4,5(a1)
    80009234:	00178793          	addi	a5,a5,1
    80009238:	02077713          	andi	a4,a4,32
    8000923c:	fc071ae3          	bnez	a4,80009210 <uartintr+0xe0>
    80009240:	00008067          	ret
    80009244:	00008067          	ret

0000000080009248 <kinit>:
    80009248:	fc010113          	addi	sp,sp,-64
    8000924c:	02913423          	sd	s1,40(sp)
    80009250:	fffff7b7          	lui	a5,0xfffff
    80009254:	000c9497          	auipc	s1,0xc9
    80009258:	60b48493          	addi	s1,s1,1547 # 800d285f <end+0xfff>
    8000925c:	02813823          	sd	s0,48(sp)
    80009260:	01313c23          	sd	s3,24(sp)
    80009264:	00f4f4b3          	and	s1,s1,a5
    80009268:	02113c23          	sd	ra,56(sp)
    8000926c:	03213023          	sd	s2,32(sp)
    80009270:	01413823          	sd	s4,16(sp)
    80009274:	01513423          	sd	s5,8(sp)
    80009278:	04010413          	addi	s0,sp,64
    8000927c:	000017b7          	lui	a5,0x1
    80009280:	01100993          	li	s3,17
    80009284:	00f487b3          	add	a5,s1,a5
    80009288:	01b99993          	slli	s3,s3,0x1b
    8000928c:	06f9e063          	bltu	s3,a5,800092ec <kinit+0xa4>
    80009290:	000c8a97          	auipc	s5,0xc8
    80009294:	5d0a8a93          	addi	s5,s5,1488 # 800d1860 <end>
    80009298:	0754ec63          	bltu	s1,s5,80009310 <kinit+0xc8>
    8000929c:	0734fa63          	bgeu	s1,s3,80009310 <kinit+0xc8>
    800092a0:	00088a37          	lui	s4,0x88
    800092a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800092a8:	00004917          	auipc	s2,0x4
    800092ac:	c0890913          	addi	s2,s2,-1016 # 8000ceb0 <kmem>
    800092b0:	00ca1a13          	slli	s4,s4,0xc
    800092b4:	0140006f          	j	800092c8 <kinit+0x80>
    800092b8:	000017b7          	lui	a5,0x1
    800092bc:	00f484b3          	add	s1,s1,a5
    800092c0:	0554e863          	bltu	s1,s5,80009310 <kinit+0xc8>
    800092c4:	0534f663          	bgeu	s1,s3,80009310 <kinit+0xc8>
    800092c8:	00001637          	lui	a2,0x1
    800092cc:	00100593          	li	a1,1
    800092d0:	00048513          	mv	a0,s1
    800092d4:	00000097          	auipc	ra,0x0
    800092d8:	5e4080e7          	jalr	1508(ra) # 800098b8 <__memset>
    800092dc:	00093783          	ld	a5,0(s2)
    800092e0:	00f4b023          	sd	a5,0(s1)
    800092e4:	00993023          	sd	s1,0(s2)
    800092e8:	fd4498e3          	bne	s1,s4,800092b8 <kinit+0x70>
    800092ec:	03813083          	ld	ra,56(sp)
    800092f0:	03013403          	ld	s0,48(sp)
    800092f4:	02813483          	ld	s1,40(sp)
    800092f8:	02013903          	ld	s2,32(sp)
    800092fc:	01813983          	ld	s3,24(sp)
    80009300:	01013a03          	ld	s4,16(sp)
    80009304:	00813a83          	ld	s5,8(sp)
    80009308:	04010113          	addi	sp,sp,64
    8000930c:	00008067          	ret
    80009310:	00001517          	auipc	a0,0x1
    80009314:	63050513          	addi	a0,a0,1584 # 8000a940 <digits+0x18>
    80009318:	fffff097          	auipc	ra,0xfffff
    8000931c:	4b4080e7          	jalr	1204(ra) # 800087cc <panic>

0000000080009320 <freerange>:
    80009320:	fc010113          	addi	sp,sp,-64
    80009324:	000017b7          	lui	a5,0x1
    80009328:	02913423          	sd	s1,40(sp)
    8000932c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80009330:	009504b3          	add	s1,a0,s1
    80009334:	fffff537          	lui	a0,0xfffff
    80009338:	02813823          	sd	s0,48(sp)
    8000933c:	02113c23          	sd	ra,56(sp)
    80009340:	03213023          	sd	s2,32(sp)
    80009344:	01313c23          	sd	s3,24(sp)
    80009348:	01413823          	sd	s4,16(sp)
    8000934c:	01513423          	sd	s5,8(sp)
    80009350:	01613023          	sd	s6,0(sp)
    80009354:	04010413          	addi	s0,sp,64
    80009358:	00a4f4b3          	and	s1,s1,a0
    8000935c:	00f487b3          	add	a5,s1,a5
    80009360:	06f5e463          	bltu	a1,a5,800093c8 <freerange+0xa8>
    80009364:	000c8a97          	auipc	s5,0xc8
    80009368:	4fca8a93          	addi	s5,s5,1276 # 800d1860 <end>
    8000936c:	0954e263          	bltu	s1,s5,800093f0 <freerange+0xd0>
    80009370:	01100993          	li	s3,17
    80009374:	01b99993          	slli	s3,s3,0x1b
    80009378:	0734fc63          	bgeu	s1,s3,800093f0 <freerange+0xd0>
    8000937c:	00058a13          	mv	s4,a1
    80009380:	00004917          	auipc	s2,0x4
    80009384:	b3090913          	addi	s2,s2,-1232 # 8000ceb0 <kmem>
    80009388:	00002b37          	lui	s6,0x2
    8000938c:	0140006f          	j	800093a0 <freerange+0x80>
    80009390:	000017b7          	lui	a5,0x1
    80009394:	00f484b3          	add	s1,s1,a5
    80009398:	0554ec63          	bltu	s1,s5,800093f0 <freerange+0xd0>
    8000939c:	0534fa63          	bgeu	s1,s3,800093f0 <freerange+0xd0>
    800093a0:	00001637          	lui	a2,0x1
    800093a4:	00100593          	li	a1,1
    800093a8:	00048513          	mv	a0,s1
    800093ac:	00000097          	auipc	ra,0x0
    800093b0:	50c080e7          	jalr	1292(ra) # 800098b8 <__memset>
    800093b4:	00093703          	ld	a4,0(s2)
    800093b8:	016487b3          	add	a5,s1,s6
    800093bc:	00e4b023          	sd	a4,0(s1)
    800093c0:	00993023          	sd	s1,0(s2)
    800093c4:	fcfa76e3          	bgeu	s4,a5,80009390 <freerange+0x70>
    800093c8:	03813083          	ld	ra,56(sp)
    800093cc:	03013403          	ld	s0,48(sp)
    800093d0:	02813483          	ld	s1,40(sp)
    800093d4:	02013903          	ld	s2,32(sp)
    800093d8:	01813983          	ld	s3,24(sp)
    800093dc:	01013a03          	ld	s4,16(sp)
    800093e0:	00813a83          	ld	s5,8(sp)
    800093e4:	00013b03          	ld	s6,0(sp)
    800093e8:	04010113          	addi	sp,sp,64
    800093ec:	00008067          	ret
    800093f0:	00001517          	auipc	a0,0x1
    800093f4:	55050513          	addi	a0,a0,1360 # 8000a940 <digits+0x18>
    800093f8:	fffff097          	auipc	ra,0xfffff
    800093fc:	3d4080e7          	jalr	980(ra) # 800087cc <panic>

0000000080009400 <kfree>:
    80009400:	fe010113          	addi	sp,sp,-32
    80009404:	00813823          	sd	s0,16(sp)
    80009408:	00113c23          	sd	ra,24(sp)
    8000940c:	00913423          	sd	s1,8(sp)
    80009410:	02010413          	addi	s0,sp,32
    80009414:	03451793          	slli	a5,a0,0x34
    80009418:	04079c63          	bnez	a5,80009470 <kfree+0x70>
    8000941c:	000c8797          	auipc	a5,0xc8
    80009420:	44478793          	addi	a5,a5,1092 # 800d1860 <end>
    80009424:	00050493          	mv	s1,a0
    80009428:	04f56463          	bltu	a0,a5,80009470 <kfree+0x70>
    8000942c:	01100793          	li	a5,17
    80009430:	01b79793          	slli	a5,a5,0x1b
    80009434:	02f57e63          	bgeu	a0,a5,80009470 <kfree+0x70>
    80009438:	00001637          	lui	a2,0x1
    8000943c:	00100593          	li	a1,1
    80009440:	00000097          	auipc	ra,0x0
    80009444:	478080e7          	jalr	1144(ra) # 800098b8 <__memset>
    80009448:	00004797          	auipc	a5,0x4
    8000944c:	a6878793          	addi	a5,a5,-1432 # 8000ceb0 <kmem>
    80009450:	0007b703          	ld	a4,0(a5)
    80009454:	01813083          	ld	ra,24(sp)
    80009458:	01013403          	ld	s0,16(sp)
    8000945c:	00e4b023          	sd	a4,0(s1)
    80009460:	0097b023          	sd	s1,0(a5)
    80009464:	00813483          	ld	s1,8(sp)
    80009468:	02010113          	addi	sp,sp,32
    8000946c:	00008067          	ret
    80009470:	00001517          	auipc	a0,0x1
    80009474:	4d050513          	addi	a0,a0,1232 # 8000a940 <digits+0x18>
    80009478:	fffff097          	auipc	ra,0xfffff
    8000947c:	354080e7          	jalr	852(ra) # 800087cc <panic>

0000000080009480 <kalloc>:
    80009480:	fe010113          	addi	sp,sp,-32
    80009484:	00813823          	sd	s0,16(sp)
    80009488:	00913423          	sd	s1,8(sp)
    8000948c:	00113c23          	sd	ra,24(sp)
    80009490:	02010413          	addi	s0,sp,32
    80009494:	00004797          	auipc	a5,0x4
    80009498:	a1c78793          	addi	a5,a5,-1508 # 8000ceb0 <kmem>
    8000949c:	0007b483          	ld	s1,0(a5)
    800094a0:	02048063          	beqz	s1,800094c0 <kalloc+0x40>
    800094a4:	0004b703          	ld	a4,0(s1)
    800094a8:	00001637          	lui	a2,0x1
    800094ac:	00500593          	li	a1,5
    800094b0:	00048513          	mv	a0,s1
    800094b4:	00e7b023          	sd	a4,0(a5)
    800094b8:	00000097          	auipc	ra,0x0
    800094bc:	400080e7          	jalr	1024(ra) # 800098b8 <__memset>
    800094c0:	01813083          	ld	ra,24(sp)
    800094c4:	01013403          	ld	s0,16(sp)
    800094c8:	00048513          	mv	a0,s1
    800094cc:	00813483          	ld	s1,8(sp)
    800094d0:	02010113          	addi	sp,sp,32
    800094d4:	00008067          	ret

00000000800094d8 <initlock>:
    800094d8:	ff010113          	addi	sp,sp,-16
    800094dc:	00813423          	sd	s0,8(sp)
    800094e0:	01010413          	addi	s0,sp,16
    800094e4:	00813403          	ld	s0,8(sp)
    800094e8:	00b53423          	sd	a1,8(a0)
    800094ec:	00052023          	sw	zero,0(a0)
    800094f0:	00053823          	sd	zero,16(a0)
    800094f4:	01010113          	addi	sp,sp,16
    800094f8:	00008067          	ret

00000000800094fc <acquire>:
    800094fc:	fe010113          	addi	sp,sp,-32
    80009500:	00813823          	sd	s0,16(sp)
    80009504:	00913423          	sd	s1,8(sp)
    80009508:	00113c23          	sd	ra,24(sp)
    8000950c:	01213023          	sd	s2,0(sp)
    80009510:	02010413          	addi	s0,sp,32
    80009514:	00050493          	mv	s1,a0
    80009518:	10002973          	csrr	s2,sstatus
    8000951c:	100027f3          	csrr	a5,sstatus
    80009520:	ffd7f793          	andi	a5,a5,-3
    80009524:	10079073          	csrw	sstatus,a5
    80009528:	fffff097          	auipc	ra,0xfffff
    8000952c:	8e0080e7          	jalr	-1824(ra) # 80007e08 <mycpu>
    80009530:	07852783          	lw	a5,120(a0)
    80009534:	06078e63          	beqz	a5,800095b0 <acquire+0xb4>
    80009538:	fffff097          	auipc	ra,0xfffff
    8000953c:	8d0080e7          	jalr	-1840(ra) # 80007e08 <mycpu>
    80009540:	07852783          	lw	a5,120(a0)
    80009544:	0004a703          	lw	a4,0(s1)
    80009548:	0017879b          	addiw	a5,a5,1
    8000954c:	06f52c23          	sw	a5,120(a0)
    80009550:	04071063          	bnez	a4,80009590 <acquire+0x94>
    80009554:	00100713          	li	a4,1
    80009558:	00070793          	mv	a5,a4
    8000955c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80009560:	0007879b          	sext.w	a5,a5
    80009564:	fe079ae3          	bnez	a5,80009558 <acquire+0x5c>
    80009568:	0ff0000f          	fence
    8000956c:	fffff097          	auipc	ra,0xfffff
    80009570:	89c080e7          	jalr	-1892(ra) # 80007e08 <mycpu>
    80009574:	01813083          	ld	ra,24(sp)
    80009578:	01013403          	ld	s0,16(sp)
    8000957c:	00a4b823          	sd	a0,16(s1)
    80009580:	00013903          	ld	s2,0(sp)
    80009584:	00813483          	ld	s1,8(sp)
    80009588:	02010113          	addi	sp,sp,32
    8000958c:	00008067          	ret
    80009590:	0104b903          	ld	s2,16(s1)
    80009594:	fffff097          	auipc	ra,0xfffff
    80009598:	874080e7          	jalr	-1932(ra) # 80007e08 <mycpu>
    8000959c:	faa91ce3          	bne	s2,a0,80009554 <acquire+0x58>
    800095a0:	00001517          	auipc	a0,0x1
    800095a4:	3a850513          	addi	a0,a0,936 # 8000a948 <digits+0x20>
    800095a8:	fffff097          	auipc	ra,0xfffff
    800095ac:	224080e7          	jalr	548(ra) # 800087cc <panic>
    800095b0:	00195913          	srli	s2,s2,0x1
    800095b4:	fffff097          	auipc	ra,0xfffff
    800095b8:	854080e7          	jalr	-1964(ra) # 80007e08 <mycpu>
    800095bc:	00197913          	andi	s2,s2,1
    800095c0:	07252e23          	sw	s2,124(a0)
    800095c4:	f75ff06f          	j	80009538 <acquire+0x3c>

00000000800095c8 <release>:
    800095c8:	fe010113          	addi	sp,sp,-32
    800095cc:	00813823          	sd	s0,16(sp)
    800095d0:	00113c23          	sd	ra,24(sp)
    800095d4:	00913423          	sd	s1,8(sp)
    800095d8:	01213023          	sd	s2,0(sp)
    800095dc:	02010413          	addi	s0,sp,32
    800095e0:	00052783          	lw	a5,0(a0)
    800095e4:	00079a63          	bnez	a5,800095f8 <release+0x30>
    800095e8:	00001517          	auipc	a0,0x1
    800095ec:	36850513          	addi	a0,a0,872 # 8000a950 <digits+0x28>
    800095f0:	fffff097          	auipc	ra,0xfffff
    800095f4:	1dc080e7          	jalr	476(ra) # 800087cc <panic>
    800095f8:	01053903          	ld	s2,16(a0)
    800095fc:	00050493          	mv	s1,a0
    80009600:	fffff097          	auipc	ra,0xfffff
    80009604:	808080e7          	jalr	-2040(ra) # 80007e08 <mycpu>
    80009608:	fea910e3          	bne	s2,a0,800095e8 <release+0x20>
    8000960c:	0004b823          	sd	zero,16(s1)
    80009610:	0ff0000f          	fence
    80009614:	0f50000f          	fence	iorw,ow
    80009618:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000961c:	ffffe097          	auipc	ra,0xffffe
    80009620:	7ec080e7          	jalr	2028(ra) # 80007e08 <mycpu>
    80009624:	100027f3          	csrr	a5,sstatus
    80009628:	0027f793          	andi	a5,a5,2
    8000962c:	04079a63          	bnez	a5,80009680 <release+0xb8>
    80009630:	07852783          	lw	a5,120(a0)
    80009634:	02f05e63          	blez	a5,80009670 <release+0xa8>
    80009638:	fff7871b          	addiw	a4,a5,-1
    8000963c:	06e52c23          	sw	a4,120(a0)
    80009640:	00071c63          	bnez	a4,80009658 <release+0x90>
    80009644:	07c52783          	lw	a5,124(a0)
    80009648:	00078863          	beqz	a5,80009658 <release+0x90>
    8000964c:	100027f3          	csrr	a5,sstatus
    80009650:	0027e793          	ori	a5,a5,2
    80009654:	10079073          	csrw	sstatus,a5
    80009658:	01813083          	ld	ra,24(sp)
    8000965c:	01013403          	ld	s0,16(sp)
    80009660:	00813483          	ld	s1,8(sp)
    80009664:	00013903          	ld	s2,0(sp)
    80009668:	02010113          	addi	sp,sp,32
    8000966c:	00008067          	ret
    80009670:	00001517          	auipc	a0,0x1
    80009674:	30050513          	addi	a0,a0,768 # 8000a970 <digits+0x48>
    80009678:	fffff097          	auipc	ra,0xfffff
    8000967c:	154080e7          	jalr	340(ra) # 800087cc <panic>
    80009680:	00001517          	auipc	a0,0x1
    80009684:	2d850513          	addi	a0,a0,728 # 8000a958 <digits+0x30>
    80009688:	fffff097          	auipc	ra,0xfffff
    8000968c:	144080e7          	jalr	324(ra) # 800087cc <panic>

0000000080009690 <holding>:
    80009690:	00052783          	lw	a5,0(a0)
    80009694:	00079663          	bnez	a5,800096a0 <holding+0x10>
    80009698:	00000513          	li	a0,0
    8000969c:	00008067          	ret
    800096a0:	fe010113          	addi	sp,sp,-32
    800096a4:	00813823          	sd	s0,16(sp)
    800096a8:	00913423          	sd	s1,8(sp)
    800096ac:	00113c23          	sd	ra,24(sp)
    800096b0:	02010413          	addi	s0,sp,32
    800096b4:	01053483          	ld	s1,16(a0)
    800096b8:	ffffe097          	auipc	ra,0xffffe
    800096bc:	750080e7          	jalr	1872(ra) # 80007e08 <mycpu>
    800096c0:	01813083          	ld	ra,24(sp)
    800096c4:	01013403          	ld	s0,16(sp)
    800096c8:	40a48533          	sub	a0,s1,a0
    800096cc:	00153513          	seqz	a0,a0
    800096d0:	00813483          	ld	s1,8(sp)
    800096d4:	02010113          	addi	sp,sp,32
    800096d8:	00008067          	ret

00000000800096dc <push_off>:
    800096dc:	fe010113          	addi	sp,sp,-32
    800096e0:	00813823          	sd	s0,16(sp)
    800096e4:	00113c23          	sd	ra,24(sp)
    800096e8:	00913423          	sd	s1,8(sp)
    800096ec:	02010413          	addi	s0,sp,32
    800096f0:	100024f3          	csrr	s1,sstatus
    800096f4:	100027f3          	csrr	a5,sstatus
    800096f8:	ffd7f793          	andi	a5,a5,-3
    800096fc:	10079073          	csrw	sstatus,a5
    80009700:	ffffe097          	auipc	ra,0xffffe
    80009704:	708080e7          	jalr	1800(ra) # 80007e08 <mycpu>
    80009708:	07852783          	lw	a5,120(a0)
    8000970c:	02078663          	beqz	a5,80009738 <push_off+0x5c>
    80009710:	ffffe097          	auipc	ra,0xffffe
    80009714:	6f8080e7          	jalr	1784(ra) # 80007e08 <mycpu>
    80009718:	07852783          	lw	a5,120(a0)
    8000971c:	01813083          	ld	ra,24(sp)
    80009720:	01013403          	ld	s0,16(sp)
    80009724:	0017879b          	addiw	a5,a5,1
    80009728:	06f52c23          	sw	a5,120(a0)
    8000972c:	00813483          	ld	s1,8(sp)
    80009730:	02010113          	addi	sp,sp,32
    80009734:	00008067          	ret
    80009738:	0014d493          	srli	s1,s1,0x1
    8000973c:	ffffe097          	auipc	ra,0xffffe
    80009740:	6cc080e7          	jalr	1740(ra) # 80007e08 <mycpu>
    80009744:	0014f493          	andi	s1,s1,1
    80009748:	06952e23          	sw	s1,124(a0)
    8000974c:	fc5ff06f          	j	80009710 <push_off+0x34>

0000000080009750 <pop_off>:
    80009750:	ff010113          	addi	sp,sp,-16
    80009754:	00813023          	sd	s0,0(sp)
    80009758:	00113423          	sd	ra,8(sp)
    8000975c:	01010413          	addi	s0,sp,16
    80009760:	ffffe097          	auipc	ra,0xffffe
    80009764:	6a8080e7          	jalr	1704(ra) # 80007e08 <mycpu>
    80009768:	100027f3          	csrr	a5,sstatus
    8000976c:	0027f793          	andi	a5,a5,2
    80009770:	04079663          	bnez	a5,800097bc <pop_off+0x6c>
    80009774:	07852783          	lw	a5,120(a0)
    80009778:	02f05a63          	blez	a5,800097ac <pop_off+0x5c>
    8000977c:	fff7871b          	addiw	a4,a5,-1
    80009780:	06e52c23          	sw	a4,120(a0)
    80009784:	00071c63          	bnez	a4,8000979c <pop_off+0x4c>
    80009788:	07c52783          	lw	a5,124(a0)
    8000978c:	00078863          	beqz	a5,8000979c <pop_off+0x4c>
    80009790:	100027f3          	csrr	a5,sstatus
    80009794:	0027e793          	ori	a5,a5,2
    80009798:	10079073          	csrw	sstatus,a5
    8000979c:	00813083          	ld	ra,8(sp)
    800097a0:	00013403          	ld	s0,0(sp)
    800097a4:	01010113          	addi	sp,sp,16
    800097a8:	00008067          	ret
    800097ac:	00001517          	auipc	a0,0x1
    800097b0:	1c450513          	addi	a0,a0,452 # 8000a970 <digits+0x48>
    800097b4:	fffff097          	auipc	ra,0xfffff
    800097b8:	018080e7          	jalr	24(ra) # 800087cc <panic>
    800097bc:	00001517          	auipc	a0,0x1
    800097c0:	19c50513          	addi	a0,a0,412 # 8000a958 <digits+0x30>
    800097c4:	fffff097          	auipc	ra,0xfffff
    800097c8:	008080e7          	jalr	8(ra) # 800087cc <panic>

00000000800097cc <push_on>:
    800097cc:	fe010113          	addi	sp,sp,-32
    800097d0:	00813823          	sd	s0,16(sp)
    800097d4:	00113c23          	sd	ra,24(sp)
    800097d8:	00913423          	sd	s1,8(sp)
    800097dc:	02010413          	addi	s0,sp,32
    800097e0:	100024f3          	csrr	s1,sstatus
    800097e4:	100027f3          	csrr	a5,sstatus
    800097e8:	0027e793          	ori	a5,a5,2
    800097ec:	10079073          	csrw	sstatus,a5
    800097f0:	ffffe097          	auipc	ra,0xffffe
    800097f4:	618080e7          	jalr	1560(ra) # 80007e08 <mycpu>
    800097f8:	07852783          	lw	a5,120(a0)
    800097fc:	02078663          	beqz	a5,80009828 <push_on+0x5c>
    80009800:	ffffe097          	auipc	ra,0xffffe
    80009804:	608080e7          	jalr	1544(ra) # 80007e08 <mycpu>
    80009808:	07852783          	lw	a5,120(a0)
    8000980c:	01813083          	ld	ra,24(sp)
    80009810:	01013403          	ld	s0,16(sp)
    80009814:	0017879b          	addiw	a5,a5,1
    80009818:	06f52c23          	sw	a5,120(a0)
    8000981c:	00813483          	ld	s1,8(sp)
    80009820:	02010113          	addi	sp,sp,32
    80009824:	00008067          	ret
    80009828:	0014d493          	srli	s1,s1,0x1
    8000982c:	ffffe097          	auipc	ra,0xffffe
    80009830:	5dc080e7          	jalr	1500(ra) # 80007e08 <mycpu>
    80009834:	0014f493          	andi	s1,s1,1
    80009838:	06952e23          	sw	s1,124(a0)
    8000983c:	fc5ff06f          	j	80009800 <push_on+0x34>

0000000080009840 <pop_on>:
    80009840:	ff010113          	addi	sp,sp,-16
    80009844:	00813023          	sd	s0,0(sp)
    80009848:	00113423          	sd	ra,8(sp)
    8000984c:	01010413          	addi	s0,sp,16
    80009850:	ffffe097          	auipc	ra,0xffffe
    80009854:	5b8080e7          	jalr	1464(ra) # 80007e08 <mycpu>
    80009858:	100027f3          	csrr	a5,sstatus
    8000985c:	0027f793          	andi	a5,a5,2
    80009860:	04078463          	beqz	a5,800098a8 <pop_on+0x68>
    80009864:	07852783          	lw	a5,120(a0)
    80009868:	02f05863          	blez	a5,80009898 <pop_on+0x58>
    8000986c:	fff7879b          	addiw	a5,a5,-1
    80009870:	06f52c23          	sw	a5,120(a0)
    80009874:	07853783          	ld	a5,120(a0)
    80009878:	00079863          	bnez	a5,80009888 <pop_on+0x48>
    8000987c:	100027f3          	csrr	a5,sstatus
    80009880:	ffd7f793          	andi	a5,a5,-3
    80009884:	10079073          	csrw	sstatus,a5
    80009888:	00813083          	ld	ra,8(sp)
    8000988c:	00013403          	ld	s0,0(sp)
    80009890:	01010113          	addi	sp,sp,16
    80009894:	00008067          	ret
    80009898:	00001517          	auipc	a0,0x1
    8000989c:	10050513          	addi	a0,a0,256 # 8000a998 <digits+0x70>
    800098a0:	fffff097          	auipc	ra,0xfffff
    800098a4:	f2c080e7          	jalr	-212(ra) # 800087cc <panic>
    800098a8:	00001517          	auipc	a0,0x1
    800098ac:	0d050513          	addi	a0,a0,208 # 8000a978 <digits+0x50>
    800098b0:	fffff097          	auipc	ra,0xfffff
    800098b4:	f1c080e7          	jalr	-228(ra) # 800087cc <panic>

00000000800098b8 <__memset>:
    800098b8:	ff010113          	addi	sp,sp,-16
    800098bc:	00813423          	sd	s0,8(sp)
    800098c0:	01010413          	addi	s0,sp,16
    800098c4:	1a060e63          	beqz	a2,80009a80 <__memset+0x1c8>
    800098c8:	40a007b3          	neg	a5,a0
    800098cc:	0077f793          	andi	a5,a5,7
    800098d0:	00778693          	addi	a3,a5,7
    800098d4:	00b00813          	li	a6,11
    800098d8:	0ff5f593          	andi	a1,a1,255
    800098dc:	fff6071b          	addiw	a4,a2,-1
    800098e0:	1b06e663          	bltu	a3,a6,80009a8c <__memset+0x1d4>
    800098e4:	1cd76463          	bltu	a4,a3,80009aac <__memset+0x1f4>
    800098e8:	1a078e63          	beqz	a5,80009aa4 <__memset+0x1ec>
    800098ec:	00b50023          	sb	a1,0(a0)
    800098f0:	00100713          	li	a4,1
    800098f4:	1ae78463          	beq	a5,a4,80009a9c <__memset+0x1e4>
    800098f8:	00b500a3          	sb	a1,1(a0)
    800098fc:	00200713          	li	a4,2
    80009900:	1ae78a63          	beq	a5,a4,80009ab4 <__memset+0x1fc>
    80009904:	00b50123          	sb	a1,2(a0)
    80009908:	00300713          	li	a4,3
    8000990c:	18e78463          	beq	a5,a4,80009a94 <__memset+0x1dc>
    80009910:	00b501a3          	sb	a1,3(a0)
    80009914:	00400713          	li	a4,4
    80009918:	1ae78263          	beq	a5,a4,80009abc <__memset+0x204>
    8000991c:	00b50223          	sb	a1,4(a0)
    80009920:	00500713          	li	a4,5
    80009924:	1ae78063          	beq	a5,a4,80009ac4 <__memset+0x20c>
    80009928:	00b502a3          	sb	a1,5(a0)
    8000992c:	00700713          	li	a4,7
    80009930:	18e79e63          	bne	a5,a4,80009acc <__memset+0x214>
    80009934:	00b50323          	sb	a1,6(a0)
    80009938:	00700e93          	li	t4,7
    8000993c:	00859713          	slli	a4,a1,0x8
    80009940:	00e5e733          	or	a4,a1,a4
    80009944:	01059e13          	slli	t3,a1,0x10
    80009948:	01c76e33          	or	t3,a4,t3
    8000994c:	01859313          	slli	t1,a1,0x18
    80009950:	006e6333          	or	t1,t3,t1
    80009954:	02059893          	slli	a7,a1,0x20
    80009958:	40f60e3b          	subw	t3,a2,a5
    8000995c:	011368b3          	or	a7,t1,a7
    80009960:	02859813          	slli	a6,a1,0x28
    80009964:	0108e833          	or	a6,a7,a6
    80009968:	03059693          	slli	a3,a1,0x30
    8000996c:	003e589b          	srliw	a7,t3,0x3
    80009970:	00d866b3          	or	a3,a6,a3
    80009974:	03859713          	slli	a4,a1,0x38
    80009978:	00389813          	slli	a6,a7,0x3
    8000997c:	00f507b3          	add	a5,a0,a5
    80009980:	00e6e733          	or	a4,a3,a4
    80009984:	000e089b          	sext.w	a7,t3
    80009988:	00f806b3          	add	a3,a6,a5
    8000998c:	00e7b023          	sd	a4,0(a5)
    80009990:	00878793          	addi	a5,a5,8
    80009994:	fed79ce3          	bne	a5,a3,8000998c <__memset+0xd4>
    80009998:	ff8e7793          	andi	a5,t3,-8
    8000999c:	0007871b          	sext.w	a4,a5
    800099a0:	01d787bb          	addw	a5,a5,t4
    800099a4:	0ce88e63          	beq	a7,a4,80009a80 <__memset+0x1c8>
    800099a8:	00f50733          	add	a4,a0,a5
    800099ac:	00b70023          	sb	a1,0(a4)
    800099b0:	0017871b          	addiw	a4,a5,1
    800099b4:	0cc77663          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    800099b8:	00e50733          	add	a4,a0,a4
    800099bc:	00b70023          	sb	a1,0(a4)
    800099c0:	0027871b          	addiw	a4,a5,2
    800099c4:	0ac77e63          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    800099c8:	00e50733          	add	a4,a0,a4
    800099cc:	00b70023          	sb	a1,0(a4)
    800099d0:	0037871b          	addiw	a4,a5,3
    800099d4:	0ac77663          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    800099d8:	00e50733          	add	a4,a0,a4
    800099dc:	00b70023          	sb	a1,0(a4)
    800099e0:	0047871b          	addiw	a4,a5,4
    800099e4:	08c77e63          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    800099e8:	00e50733          	add	a4,a0,a4
    800099ec:	00b70023          	sb	a1,0(a4)
    800099f0:	0057871b          	addiw	a4,a5,5
    800099f4:	08c77663          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    800099f8:	00e50733          	add	a4,a0,a4
    800099fc:	00b70023          	sb	a1,0(a4)
    80009a00:	0067871b          	addiw	a4,a5,6
    80009a04:	06c77e63          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    80009a08:	00e50733          	add	a4,a0,a4
    80009a0c:	00b70023          	sb	a1,0(a4)
    80009a10:	0077871b          	addiw	a4,a5,7
    80009a14:	06c77663          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    80009a18:	00e50733          	add	a4,a0,a4
    80009a1c:	00b70023          	sb	a1,0(a4)
    80009a20:	0087871b          	addiw	a4,a5,8
    80009a24:	04c77e63          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    80009a28:	00e50733          	add	a4,a0,a4
    80009a2c:	00b70023          	sb	a1,0(a4)
    80009a30:	0097871b          	addiw	a4,a5,9
    80009a34:	04c77663          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    80009a38:	00e50733          	add	a4,a0,a4
    80009a3c:	00b70023          	sb	a1,0(a4)
    80009a40:	00a7871b          	addiw	a4,a5,10
    80009a44:	02c77e63          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    80009a48:	00e50733          	add	a4,a0,a4
    80009a4c:	00b70023          	sb	a1,0(a4)
    80009a50:	00b7871b          	addiw	a4,a5,11
    80009a54:	02c77663          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    80009a58:	00e50733          	add	a4,a0,a4
    80009a5c:	00b70023          	sb	a1,0(a4)
    80009a60:	00c7871b          	addiw	a4,a5,12
    80009a64:	00c77e63          	bgeu	a4,a2,80009a80 <__memset+0x1c8>
    80009a68:	00e50733          	add	a4,a0,a4
    80009a6c:	00b70023          	sb	a1,0(a4)
    80009a70:	00d7879b          	addiw	a5,a5,13
    80009a74:	00c7f663          	bgeu	a5,a2,80009a80 <__memset+0x1c8>
    80009a78:	00f507b3          	add	a5,a0,a5
    80009a7c:	00b78023          	sb	a1,0(a5)
    80009a80:	00813403          	ld	s0,8(sp)
    80009a84:	01010113          	addi	sp,sp,16
    80009a88:	00008067          	ret
    80009a8c:	00b00693          	li	a3,11
    80009a90:	e55ff06f          	j	800098e4 <__memset+0x2c>
    80009a94:	00300e93          	li	t4,3
    80009a98:	ea5ff06f          	j	8000993c <__memset+0x84>
    80009a9c:	00100e93          	li	t4,1
    80009aa0:	e9dff06f          	j	8000993c <__memset+0x84>
    80009aa4:	00000e93          	li	t4,0
    80009aa8:	e95ff06f          	j	8000993c <__memset+0x84>
    80009aac:	00000793          	li	a5,0
    80009ab0:	ef9ff06f          	j	800099a8 <__memset+0xf0>
    80009ab4:	00200e93          	li	t4,2
    80009ab8:	e85ff06f          	j	8000993c <__memset+0x84>
    80009abc:	00400e93          	li	t4,4
    80009ac0:	e7dff06f          	j	8000993c <__memset+0x84>
    80009ac4:	00500e93          	li	t4,5
    80009ac8:	e75ff06f          	j	8000993c <__memset+0x84>
    80009acc:	00600e93          	li	t4,6
    80009ad0:	e6dff06f          	j	8000993c <__memset+0x84>

0000000080009ad4 <__memmove>:
    80009ad4:	ff010113          	addi	sp,sp,-16
    80009ad8:	00813423          	sd	s0,8(sp)
    80009adc:	01010413          	addi	s0,sp,16
    80009ae0:	0e060863          	beqz	a2,80009bd0 <__memmove+0xfc>
    80009ae4:	fff6069b          	addiw	a3,a2,-1
    80009ae8:	0006881b          	sext.w	a6,a3
    80009aec:	0ea5e863          	bltu	a1,a0,80009bdc <__memmove+0x108>
    80009af0:	00758713          	addi	a4,a1,7
    80009af4:	00a5e7b3          	or	a5,a1,a0
    80009af8:	40a70733          	sub	a4,a4,a0
    80009afc:	0077f793          	andi	a5,a5,7
    80009b00:	00f73713          	sltiu	a4,a4,15
    80009b04:	00174713          	xori	a4,a4,1
    80009b08:	0017b793          	seqz	a5,a5
    80009b0c:	00e7f7b3          	and	a5,a5,a4
    80009b10:	10078863          	beqz	a5,80009c20 <__memmove+0x14c>
    80009b14:	00900793          	li	a5,9
    80009b18:	1107f463          	bgeu	a5,a6,80009c20 <__memmove+0x14c>
    80009b1c:	0036581b          	srliw	a6,a2,0x3
    80009b20:	fff8081b          	addiw	a6,a6,-1
    80009b24:	02081813          	slli	a6,a6,0x20
    80009b28:	01d85893          	srli	a7,a6,0x1d
    80009b2c:	00858813          	addi	a6,a1,8
    80009b30:	00058793          	mv	a5,a1
    80009b34:	00050713          	mv	a4,a0
    80009b38:	01088833          	add	a6,a7,a6
    80009b3c:	0007b883          	ld	a7,0(a5)
    80009b40:	00878793          	addi	a5,a5,8
    80009b44:	00870713          	addi	a4,a4,8
    80009b48:	ff173c23          	sd	a7,-8(a4)
    80009b4c:	ff0798e3          	bne	a5,a6,80009b3c <__memmove+0x68>
    80009b50:	ff867713          	andi	a4,a2,-8
    80009b54:	02071793          	slli	a5,a4,0x20
    80009b58:	0207d793          	srli	a5,a5,0x20
    80009b5c:	00f585b3          	add	a1,a1,a5
    80009b60:	40e686bb          	subw	a3,a3,a4
    80009b64:	00f507b3          	add	a5,a0,a5
    80009b68:	06e60463          	beq	a2,a4,80009bd0 <__memmove+0xfc>
    80009b6c:	0005c703          	lbu	a4,0(a1)
    80009b70:	00e78023          	sb	a4,0(a5)
    80009b74:	04068e63          	beqz	a3,80009bd0 <__memmove+0xfc>
    80009b78:	0015c603          	lbu	a2,1(a1)
    80009b7c:	00100713          	li	a4,1
    80009b80:	00c780a3          	sb	a2,1(a5)
    80009b84:	04e68663          	beq	a3,a4,80009bd0 <__memmove+0xfc>
    80009b88:	0025c603          	lbu	a2,2(a1)
    80009b8c:	00200713          	li	a4,2
    80009b90:	00c78123          	sb	a2,2(a5)
    80009b94:	02e68e63          	beq	a3,a4,80009bd0 <__memmove+0xfc>
    80009b98:	0035c603          	lbu	a2,3(a1)
    80009b9c:	00300713          	li	a4,3
    80009ba0:	00c781a3          	sb	a2,3(a5)
    80009ba4:	02e68663          	beq	a3,a4,80009bd0 <__memmove+0xfc>
    80009ba8:	0045c603          	lbu	a2,4(a1)
    80009bac:	00400713          	li	a4,4
    80009bb0:	00c78223          	sb	a2,4(a5)
    80009bb4:	00e68e63          	beq	a3,a4,80009bd0 <__memmove+0xfc>
    80009bb8:	0055c603          	lbu	a2,5(a1)
    80009bbc:	00500713          	li	a4,5
    80009bc0:	00c782a3          	sb	a2,5(a5)
    80009bc4:	00e68663          	beq	a3,a4,80009bd0 <__memmove+0xfc>
    80009bc8:	0065c703          	lbu	a4,6(a1)
    80009bcc:	00e78323          	sb	a4,6(a5)
    80009bd0:	00813403          	ld	s0,8(sp)
    80009bd4:	01010113          	addi	sp,sp,16
    80009bd8:	00008067          	ret
    80009bdc:	02061713          	slli	a4,a2,0x20
    80009be0:	02075713          	srli	a4,a4,0x20
    80009be4:	00e587b3          	add	a5,a1,a4
    80009be8:	f0f574e3          	bgeu	a0,a5,80009af0 <__memmove+0x1c>
    80009bec:	02069613          	slli	a2,a3,0x20
    80009bf0:	02065613          	srli	a2,a2,0x20
    80009bf4:	fff64613          	not	a2,a2
    80009bf8:	00e50733          	add	a4,a0,a4
    80009bfc:	00c78633          	add	a2,a5,a2
    80009c00:	fff7c683          	lbu	a3,-1(a5)
    80009c04:	fff78793          	addi	a5,a5,-1
    80009c08:	fff70713          	addi	a4,a4,-1
    80009c0c:	00d70023          	sb	a3,0(a4)
    80009c10:	fec798e3          	bne	a5,a2,80009c00 <__memmove+0x12c>
    80009c14:	00813403          	ld	s0,8(sp)
    80009c18:	01010113          	addi	sp,sp,16
    80009c1c:	00008067          	ret
    80009c20:	02069713          	slli	a4,a3,0x20
    80009c24:	02075713          	srli	a4,a4,0x20
    80009c28:	00170713          	addi	a4,a4,1
    80009c2c:	00e50733          	add	a4,a0,a4
    80009c30:	00050793          	mv	a5,a0
    80009c34:	0005c683          	lbu	a3,0(a1)
    80009c38:	00178793          	addi	a5,a5,1
    80009c3c:	00158593          	addi	a1,a1,1
    80009c40:	fed78fa3          	sb	a3,-1(a5)
    80009c44:	fee798e3          	bne	a5,a4,80009c34 <__memmove+0x160>
    80009c48:	f89ff06f          	j	80009bd0 <__memmove+0xfc>
	...

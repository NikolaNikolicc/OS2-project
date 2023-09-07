
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	28013103          	ld	sp,640(sp) # 8000b280 <_GLOBAL_OFFSET_TABLE_+0x50>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5f8060ef          	jal	ra,80006614 <start>

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
    800011a4:	3ac030ef          	jal	ra,80004550 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001288:	09c080e7          	jalr	156(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    800012d8:	04c080e7          	jalr	76(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    80001358:	fcc080e7          	jalr	-52(ra) # 80005320 <_ZN3abi8sys_callEPv>

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
    800013c0:	f64080e7          	jalr	-156(ra) # 80005320 <_ZN3abi8sys_callEPv>

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
    80001410:	f14080e7          	jalr	-236(ra) # 80005320 <_ZN3abi8sys_callEPv>

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
    80001470:	eb4080e7          	jalr	-332(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    800014c4:	e60080e7          	jalr	-416(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    80001518:	e0c080e7          	jalr	-500(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    8000156c:	db8080e7          	jalr	-584(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    800015c0:	d64080e7          	jalr	-668(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    80001614:	d10080e7          	jalr	-752(ra) # 80005320 <_ZN3abi8sys_callEPv>

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
    80001668:	cbc080e7          	jalr	-836(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    800016b8:	c6c080e7          	jalr	-916(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    80001708:	c1c080e7          	jalr	-996(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    80001758:	bcc080e7          	jalr	-1076(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    800017a8:	b7c080e7          	jalr	-1156(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    800017f8:	b2c080e7          	jalr	-1236(ra) # 80005320 <_ZN3abi8sys_callEPv>
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
    8000183c:	0000a797          	auipc	a5,0xa
    80001840:	ab47c783          	lbu	a5,-1356(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001844:	06078c63          	beqz	a5,800018bc <_ZN8MyBufferC1Ei+0xb0>
    buffer = (int *)MemoryAllocator::getInstance().memory_alloc(sizeof(int) * cap);
    80001848:	0004a583          	lw	a1,0(s1)
    8000184c:	00259593          	slli	a1,a1,0x2
    80001850:	0000a517          	auipc	a0,0xa
    80001854:	aa850513          	addi	a0,a0,-1368 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001858:	00004097          	auipc	ra,0x4
    8000185c:	86c080e7          	jalr	-1940(ra) # 800050c4 <_ZN15MemoryAllocator12memory_allocEm>
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
    800018bc:	0000a617          	auipc	a2,0xa
    800018c0:	a3c60613          	addi	a2,a2,-1476 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800018c4:	0000a797          	auipc	a5,0xa
    800018c8:	9d47b783          	ld	a5,-1580(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    800018cc:	0007b703          	ld	a4,0(a5)
    800018d0:	0000a797          	auipc	a5,0xa
    800018d4:	9807b783          	ld	a5,-1664(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    80001914:	0000a697          	auipc	a3,0xa
    80001918:	9ef6b223          	sd	a5,-1564(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    8000191c:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80001920:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80001924:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80001928:	00100793          	li	a5,1
    8000192c:	0000a717          	auipc	a4,0xa
    80001930:	9cf70223          	sb	a5,-1596(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001934:	f15ff06f          	j	80001848 <_ZN8MyBufferC1Ei+0x3c>

0000000080001938 <_ZN8MyBufferD1Ev>:

MyBuffer::~MyBuffer() {
    80001938:	fe010113          	addi	sp,sp,-32
    8000193c:	00113c23          	sd	ra,24(sp)
    80001940:	00813823          	sd	s0,16(sp)
    80001944:	00913423          	sd	s1,8(sp)
    80001948:	02010413          	addi	s0,sp,32
    8000194c:	00050493          	mv	s1,a0
    80001950:	0000a797          	auipc	a5,0xa
    80001954:	9a07c783          	lbu	a5,-1632(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001958:	04078e63          	beqz	a5,800019b4 <_ZN8MyBufferD1Ev+0x7c>
    MemoryAllocator::getInstance().memory_free((void*)buffer);
    8000195c:	0084b583          	ld	a1,8(s1)
    80001960:	0000a517          	auipc	a0,0xa
    80001964:	99850513          	addi	a0,a0,-1640 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001968:	00004097          	auipc	ra,0x4
    8000196c:	830080e7          	jalr	-2000(ra) # 80005198 <_ZN15MemoryAllocator11memory_freeEPv>
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
    800019b4:	0000a617          	auipc	a2,0xa
    800019b8:	94460613          	addi	a2,a2,-1724 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800019bc:	0000a797          	auipc	a5,0xa
    800019c0:	8dc7b783          	ld	a5,-1828(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    800019c4:	0007b703          	ld	a4,0(a5)
    800019c8:	0000a797          	auipc	a5,0xa
    800019cc:	8887b783          	ld	a5,-1912(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    80001a0c:	0000a697          	auipc	a3,0xa
    80001a10:	8ef6b623          	sd	a5,-1812(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80001a14:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80001a18:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80001a1c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80001a20:	00100793          	li	a5,1
    80001a24:	0000a717          	auipc	a4,0xa
    80001a28:	8cf70623          	sb	a5,-1844(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
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
    if(position == 50)return 0;
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
    if(position == 50)return 0;
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
    8000202c:	00009797          	auipc	a5,0x9
    80002030:	2247b783          	ld	a5,548(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    80002110:	00009797          	auipc	a5,0x9
    80002114:	1e07c783          	lbu	a5,480(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002118:	04078663          	beqz	a5,80002164 <_ZN11MySemaphore8sem_openEPPS_m+0x78>
    void set_val(int v){ val = v; }

    // operatori
    void *operator new(uint64 n){
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    8000211c:	00100593          	li	a1,1
    80002120:	00009517          	auipc	a0,0x9
    80002124:	1d850513          	addi	a0,a0,472 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002128:	00003097          	auipc	ra,0x3
    8000212c:	f9c080e7          	jalr	-100(ra) # 800050c4 <_ZN15MemoryAllocator12memory_allocEm>
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
    80002164:	00009617          	auipc	a2,0x9
    80002168:	19460613          	addi	a2,a2,404 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    8000216c:	00009797          	auipc	a5,0x9
    80002170:	12c7b783          	ld	a5,300(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002174:	0007b703          	ld	a4,0(a5)
    80002178:	00009797          	auipc	a5,0x9
    8000217c:	0d87b783          	ld	a5,216(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    800021bc:	00009697          	auipc	a3,0x9
    800021c0:	12f6be23          	sd	a5,316(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    800021c4:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    800021c8:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    800021cc:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    800021d0:	00100793          	li	a5,1
    800021d4:	00009717          	auipc	a4,0x9
    800021d8:	10f70e23          	sb	a5,284(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
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
    80002244:	00009517          	auipc	a0,0x9
    80002248:	0d450513          	addi	a0,a0,212 # 8000b318 <_ZZN9Scheduler11getInstanceEvE8instance>
    8000224c:	00003097          	auipc	ra,0x3
    80002250:	e18080e7          	jalr	-488(ra) # 80005064 <_ZN9Scheduler3putEP3TCB>
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
    8000226c:	00009797          	auipc	a5,0x9
    80002270:	0a47c783          	lbu	a5,164(a5) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80002274:	fc0796e3          	bnez	a5,80002240 <_ZN11MySemaphore9sem_closeEPS_+0x24>
//    static void printScheduler();

private:

    Scheduler(){
        head = nullptr;
    80002278:	00009797          	auipc	a5,0x9
    8000227c:	ff87b783          	ld	a5,-8(a5) # 8000b270 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002280:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80002284:	00009797          	auipc	a5,0x9
    80002288:	fc47b783          	ld	a5,-60(a5) # 8000b248 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000228c:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80002290:	00100793          	li	a5,1
    80002294:	00009717          	auipc	a4,0x9
    80002298:	06f70e23          	sb	a5,124(a4) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
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
    80002308:	00009797          	auipc	a5,0x9
    8000230c:	f887b783          	ld	a5,-120(a5) # 8000b290 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002310:	0007b583          	ld	a1,0(a5)
    80002314:	00000097          	auipc	ra,0x0
    80002318:	fb0080e7          	jalr	-80(ra) # 800022c4 <_ZN11MySemaphore14put_in_blockedEP3TCB>
    TCB::yield();
    8000231c:	00003097          	auipc	ra,0x3
    80002320:	be4080e7          	jalr	-1052(ra) # 80004f00 <_ZN3TCB5yieldEv>
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
    800023b4:	00009797          	auipc	a5,0x9
    800023b8:	f5c7c783          	lbu	a5,-164(a5) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    800023bc:	02079463          	bnez	a5,800023e4 <_ZN11MySemaphore7unblockEv+0x50>
        head = nullptr;
    800023c0:	00009797          	auipc	a5,0x9
    800023c4:	eb07b783          	ld	a5,-336(a5) # 8000b270 <_GLOBAL_OFFSET_TABLE_+0x40>
    800023c8:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    800023cc:	00009797          	auipc	a5,0x9
    800023d0:	e7c7b783          	ld	a5,-388(a5) # 8000b248 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023d4:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    800023d8:	00100793          	li	a5,1
    800023dc:	00009717          	auipc	a4,0x9
    800023e0:	f2f70a23          	sb	a5,-204(a4) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    800023e4:	00009517          	auipc	a0,0x9
    800023e8:	f3450513          	addi	a0,a0,-204 # 8000b318 <_ZZN9Scheduler11getInstanceEvE8instance>
    800023ec:	00003097          	auipc	ra,0x3
    800023f0:	c78080e7          	jalr	-904(ra) # 80005064 <_ZN9Scheduler3putEP3TCB>
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
    80002470:	00009797          	auipc	a5,0x9
    80002474:	eb07b783          	ld	a5,-336(a5) # 8000b320 <_ZN14periodicThread4headE>
    80002478:	02078263          	beqz	a5,8000249c <_ZN14periodicThread3putEP3TCB+0x38>
    else tail->set_next_period(thread); // tail->next_period = thread;
    8000247c:	00009797          	auipc	a5,0x9
    80002480:	eac7b783          	ld	a5,-340(a5) # 8000b328 <_ZN14periodicThread4tailE>
    void set_periodic(bool b){
        periodic = b;
        periodicThread::getInstance().put(this);
    }

    void set_next_period(TCB* tcb){ next_period = tcb; }
    80002484:	06b7b423          	sd	a1,104(a5)
    tail = thread;
    80002488:	00009797          	auipc	a5,0x9
    8000248c:	eab7b023          	sd	a1,-352(a5) # 8000b328 <_ZN14periodicThread4tailE>
}
    80002490:	00813403          	ld	s0,8(sp)
    80002494:	01010113          	addi	sp,sp,16
    80002498:	00008067          	ret
    if(!head)head = thread;
    8000249c:	00009797          	auipc	a5,0x9
    800024a0:	e8b7b223          	sd	a1,-380(a5) # 8000b320 <_ZN14periodicThread4headE>
    800024a4:	fe5ff06f          	j	80002488 <_ZN14periodicThread3putEP3TCB+0x24>

00000000800024a8 <_ZN14periodicThread3getEv>:

TCB *periodicThread::get() {
    800024a8:	ff010113          	addi	sp,sp,-16
    800024ac:	00813423          	sd	s0,8(sp)
    800024b0:	01010413          	addi	s0,sp,16
    if(!head)return nullptr;
    800024b4:	00009517          	auipc	a0,0x9
    800024b8:	e6c53503          	ld	a0,-404(a0) # 8000b320 <_ZN14periodicThread4headE>
    800024bc:	00050c63          	beqz	a0,800024d4 <_ZN14periodicThread3getEv+0x2c>

    TCB* get_next_period()const{return next_period;}
    800024c0:	06853783          	ld	a5,104(a0)
    TCB* tmp = head;
    head = head->get_next_period(); // head = head->next_period
    800024c4:	00009717          	auipc	a4,0x9
    800024c8:	e4f73e23          	sd	a5,-420(a4) # 8000b320 <_ZN14periodicThread4headE>
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
    800024e0:	00009797          	auipc	a5,0x9
    800024e4:	e407b423          	sd	zero,-440(a5) # 8000b328 <_ZN14periodicThread4tailE>
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
    8000264c:	00007717          	auipc	a4,0x7
    80002650:	9d470713          	addi	a4,a4,-1580 # 80009020 <CONSOLE_STATUS+0x10>
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
    80002680:	00007697          	auipc	a3,0x7
    80002684:	9a068693          	addi	a3,a3,-1632 # 80009020 <CONSOLE_STATUS+0x10>
    80002688:	00d786b3          	add	a3,a5,a3
    8000268c:	00e68023          	sb	a4,0(a3)
    80002690:	fcdff06f          	j	8000265c <_Z27concatenate_int_to_char_ptri+0x3c>
        }
    }
    return baseString;

}
    80002694:	00007517          	auipc	a0,0x7
    80002698:	98c50513          	addi	a0,a0,-1652 # 80009020 <CONSOLE_STATUS+0x10>
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
//#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../test/userMain.hpp"

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
    80002754:	00009517          	auipc	a0,0x9
    80002758:	bec50513          	addi	a0,a0,-1044 # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	2cc080e7          	jalr	716(ra) # 80002a28 <_ZN7ConsoleC1Ev>
    80002764:	00100793          	li	a5,1
    80002768:	00009717          	auipc	a4,0x9
    8000276c:	bcf70823          	sb	a5,-1072(a4) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(1){
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
              /*&& Console::getInstance().get_output_size()*/) {
            *((char*)CONSOLE_TX_DATA) = Console::getInstance().get_from_output();
    80002770:	00009797          	auipc	a5,0x9
    80002774:	b087b783          	ld	a5,-1272(a5) # 8000b278 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002778:	0007b483          	ld	s1,0(a5)
    8000277c:	00009517          	auipc	a0,0x9
    80002780:	bc450513          	addi	a0,a0,-1084 # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    80002784:	00000097          	auipc	ra,0x0
    80002788:	500080e7          	jalr	1280(ra) # 80002c84 <_ZN7Console15get_from_outputEv>
    8000278c:	00a48023          	sb	a0,0(s1)
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
    80002790:	00009797          	auipc	a5,0x9
    80002794:	ab07b783          	ld	a5,-1360(a5) # 8000b240 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002798:	0007b783          	ld	a5,0(a5)
    8000279c:	0007c783          	lbu	a5,0(a5)
    800027a0:	0207f793          	andi	a5,a5,32
    800027a4:	00078a63          	beqz	a5,800027b8 <_Z13putc_functionPv+0x8c>
    800027a8:	00009797          	auipc	a5,0x9
    800027ac:	b907c783          	lbu	a5,-1136(a5) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
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
    800027dc:	00003097          	auipc	ra,0x3
    800027e0:	760080e7          	jalr	1888(ra) # 80005f3c <_Z8userMainv>
    switch_to_priviledged();
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	f38080e7          	jalr	-200(ra) # 8000171c <switch_to_priviledged>
    is_user_main_finished = true;
    800027ec:	00100793          	li	a5,1
    800027f0:	00009717          	auipc	a4,0x9
    800027f4:	b4f70023          	sb	a5,-1216(a4) # 8000b330 <_ZL21is_user_main_finished>
}
    800027f8:	00813083          	ld	ra,8(sp)
    800027fc:	00013403          	ld	s0,0(sp)
    80002800:	01010113          	addi	sp,sp,16
    80002804:	00008067          	ret

0000000080002808 <main>:
#include "../test/userMain.hpp"
#include "../h/fun.hpp"



int main(){
    80002808:	fc010113          	addi	sp,sp,-64
    8000280c:	02113c23          	sd	ra,56(sp)
    80002810:	02813823          	sd	s0,48(sp)
    80002814:	02913423          	sd	s1,40(sp)
    80002818:	04010413          	addi	s0,sp,64

    // ###################################################################################################
    // upis u stvec
    uint64 address = reinterpret_cast<uint64>(&Riscv::supervisorTrap);
    8000281c:	00009797          	auipc	a5,0x9
    80002820:	a447b783          	ld	a5,-1468(a5) # 8000b260 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80002824:	10579073          	csrw	stvec,a5
    Riscv::w_stvec(address);

    // kreiranje main niti
    thread_t mainThread = nullptr;
    80002828:	fc043c23          	sd	zero,-40(s0)
    thread_create(&mainThread, nullptr, nullptr);
    8000282c:	00000613          	li	a2,0
    80002830:	00000593          	li	a1,0
    80002834:	fd840513          	addi	a0,s0,-40
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	ab8080e7          	jalr	-1352(ra) # 800012f0 <thread_create>
    TCB::running = (TCB*)mainThread;
    80002840:	00009797          	auipc	a5,0x9
    80002844:	a507b783          	ld	a5,-1456(a5) # 8000b290 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002848:	fd843703          	ld	a4,-40(s0)
    8000284c:	00e7b023          	sd	a4,0(a5)

    // kreiranje idle niti
    thread_create((thread_t*)&TCB::idle, &idle_function, nullptr);
    80002850:	00000613          	li	a2,0
    80002854:	00000597          	auipc	a1,0x0
    80002858:	ebc58593          	addi	a1,a1,-324 # 80002710 <_Z13idle_functionPv>
    8000285c:	00009517          	auipc	a0,0x9
    80002860:	a0c53503          	ld	a0,-1524(a0) # 8000b268 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	a8c080e7          	jalr	-1396(ra) # 800012f0 <thread_create>

    // kreiranje userMain niti
//    thread_t userMainThread = nullptr;
//    thread_create(&userMainThread, &userMain, nullptr);

    thread_t userMainThread = nullptr;
    8000286c:	fc043823          	sd	zero,-48(s0)
    thread_create(&userMainThread, &user_main_wrapper, nullptr);
    80002870:	00000613          	li	a2,0
    80002874:	00000597          	auipc	a1,0x0
    80002878:	f5058593          	addi	a1,a1,-176 # 800027c4 <_Z17user_main_wrapperPv>
    8000287c:	fd040513          	addi	a0,s0,-48
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	a70080e7          	jalr	-1424(ra) # 800012f0 <thread_create>

    // kreiranje niti za ispis
    thread_t consoleWriter = nullptr;
    80002888:	fc043423          	sd	zero,-56(s0)
    thread_create(&consoleWriter, &putc_function, nullptr);
    8000288c:	00000613          	li	a2,0
    80002890:	00000597          	auipc	a1,0x0
    80002894:	e9c58593          	addi	a1,a1,-356 # 8000272c <_Z13putc_functionPv>
    80002898:	fc840513          	addi	a0,s0,-56
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	a54080e7          	jalr	-1452(ra) # 800012f0 <thread_create>
    800028a4:	00009797          	auipc	a5,0x9
    800028a8:	a947c783          	lbu	a5,-1388(a5) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
    800028ac:	00078863          	beqz	a5,800028bc <main+0xb4>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800028b0:	00200793          	li	a5,2
    800028b4:	1007a073          	csrs	sstatus,a5
}
    800028b8:	05c0006f          	j	80002914 <main+0x10c>
    800028bc:	00009517          	auipc	a0,0x9
    800028c0:	a8450513          	addi	a0,a0,-1404 # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	164080e7          	jalr	356(ra) # 80002a28 <_ZN7ConsoleC1Ev>
    800028cc:	00100793          	li	a5,1
    800028d0:	00009717          	auipc	a4,0x9
    800028d4:	a6f70423          	sb	a5,-1432(a4) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
    800028d8:	fd9ff06f          	j	800028b0 <main+0xa8>
    800028dc:	00009517          	auipc	a0,0x9
    800028e0:	a6450513          	addi	a0,a0,-1436 # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	144080e7          	jalr	324(ra) # 80002a28 <_ZN7ConsoleC1Ev>
    800028ec:	00100793          	li	a5,1
    800028f0:	00009717          	auipc	a4,0x9
    800028f4:	a4f70423          	sb	a5,-1464(a4) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>

    void put_in_input(char c);
    char get_from_input();
    void put_in_output(char c);
    char get_from_output();
    int get_output_size(){ return output_buffer->getCnt(); }
    800028f8:	00009517          	auipc	a0,0x9
    800028fc:	a5053503          	ld	a0,-1456(a0) # 8000b348 <_ZZN7Console11getInstanceEvE8instance+0x8>
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	24c080e7          	jalr	588(ra) # 80001b4c <_ZN8MyBuffer6getCntEv>
    // ako sam obrisao userMain pristupam nepostojecoj strukturi
//    while(!((TCB*)userMainThread)->is_finished()){
//        thread_dispatch();
//    }

    while(!is_user_main_finished || Console::getInstance().get_output_size()){
    80002908:	02050463          	beqz	a0,80002930 <main+0x128>
        thread_dispatch();
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	a78080e7          	jalr	-1416(ra) # 80001384 <thread_dispatch>
    while(!is_user_main_finished || Console::getInstance().get_output_size()){
    80002914:	00009797          	auipc	a5,0x9
    80002918:	a1c7c783          	lbu	a5,-1508(a5) # 8000b330 <_ZL21is_user_main_finished>
    8000291c:	fe0788e3          	beqz	a5,8000290c <main+0x104>
        static Console instance;
    80002920:	00009797          	auipc	a5,0x9
    80002924:	a187c783          	lbu	a5,-1512(a5) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
    80002928:	fc0798e3          	bnez	a5,800028f8 <main+0xf0>
    8000292c:	fb1ff06f          	j	800028dc <main+0xd4>
    80002930:	00009797          	auipc	a5,0x9
    80002934:	a087c783          	lbu	a5,-1528(a5) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
    80002938:	04078a63          	beqz	a5,8000298c <main+0x184>
    int get_input_size(){ return input_buffer->getCnt(); }

    MyBuffer* get_input_buff(){return input_buffer;}
    8000293c:	00009497          	auipc	s1,0x9
    80002940:	a044b483          	ld	s1,-1532(s1) # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    }


    delete Console::getInstance().get_input_buff();
    80002944:	02048863          	beqz	s1,80002974 <main+0x16c>
    80002948:	00048513          	mv	a0,s1
    8000294c:	fffff097          	auipc	ra,0xfffff
    80002950:	fec080e7          	jalr	-20(ra) # 80001938 <_ZN8MyBufferD1Ev>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    80002954:	00009797          	auipc	a5,0x9
    80002958:	99c7c783          	lbu	a5,-1636(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000295c:	04078863          	beqz	a5,800029ac <main+0x1a4>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80002960:	00048593          	mv	a1,s1
    80002964:	00009517          	auipc	a0,0x9
    80002968:	99450513          	addi	a0,a0,-1644 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    8000296c:	00003097          	auipc	ra,0x3
    80002970:	82c080e7          	jalr	-2004(ra) # 80005198 <_ZN15MemoryAllocator11memory_freeEPv>
    return 0;
    80002974:	00000513          	li	a0,0
    80002978:	03813083          	ld	ra,56(sp)
    8000297c:	03013403          	ld	s0,48(sp)
    80002980:	02813483          	ld	s1,40(sp)
    80002984:	04010113          	addi	sp,sp,64
    80002988:	00008067          	ret
        static Console instance;
    8000298c:	00009517          	auipc	a0,0x9
    80002990:	9b450513          	addi	a0,a0,-1612 # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    80002994:	00000097          	auipc	ra,0x0
    80002998:	094080e7          	jalr	148(ra) # 80002a28 <_ZN7ConsoleC1Ev>
    8000299c:	00100793          	li	a5,1
    800029a0:	00009717          	auipc	a4,0x9
    800029a4:	98f70c23          	sb	a5,-1640(a4) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
    800029a8:	f95ff06f          	j	8000293c <main+0x134>

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    800029ac:	00009617          	auipc	a2,0x9
    800029b0:	94c60613          	addi	a2,a2,-1716 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800029b4:	00009797          	auipc	a5,0x9
    800029b8:	8e47b783          	ld	a5,-1820(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029bc:	0007b703          	ld	a4,0(a5)
    800029c0:	00009797          	auipc	a5,0x9
    800029c4:	8907b783          	ld	a5,-1904(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    800029c8:	0007b783          	ld	a5,0(a5)
    800029cc:	40f706b3          	sub	a3,a4,a5
    800029d0:	0036d693          	srli	a3,a3,0x3
    800029d4:	00d787b3          	add	a5,a5,a3
    800029d8:	00178793          	addi	a5,a5,1
    800029dc:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800029e0:	fff70713          	addi	a4,a4,-1
    800029e4:	00e63823          	sd	a4,16(a2)

        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    800029e8:	40f70733          	sub	a4,a4,a5
    800029ec:	00675713          	srli	a4,a4,0x6

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800029f0:	03f7f693          	andi	a3,a5,63
    800029f4:	00068663          	beqz	a3,80002a00 <main+0x1f8>
    800029f8:	04000613          	li	a2,64
    800029fc:	40d606b3          	sub	a3,a2,a3
    80002a00:	00d787b3          	add	a5,a5,a3
    80002a04:	00009697          	auipc	a3,0x9
    80002a08:	8ef6ba23          	sd	a5,-1804(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    80002a0c:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002a10:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002a14:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002a18:	00100793          	li	a5,1
    80002a1c:	00009717          	auipc	a4,0x9
    80002a20:	8cf70a23          	sb	a5,-1836(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002a24:	f3dff06f          	j	80002960 <main+0x158>

0000000080002a28 <_ZN7ConsoleC1Ev>:

#include "../h/console.hpp"

Console::Console() {
    80002a28:	fe010113          	addi	sp,sp,-32
    80002a2c:	00113c23          	sd	ra,24(sp)
    80002a30:	00813823          	sd	s0,16(sp)
    80002a34:	00913423          	sd	s1,8(sp)
    80002a38:	01213023          	sd	s2,0(sp)
    80002a3c:	02010413          	addi	s0,sp,32
    80002a40:	00050493          	mv	s1,a0
    80002a44:	00009797          	auipc	a5,0x9
    80002a48:	8ac7c783          	lbu	a5,-1876(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002a4c:	02078663          	beqz	a5,80002a78 <_ZN7ConsoleC1Ev+0x50>
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    80002a50:	00100593          	li	a1,1
    80002a54:	00009517          	auipc	a0,0x9
    80002a58:	8a450513          	addi	a0,a0,-1884 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002a5c:	00002097          	auipc	ra,0x2
    80002a60:	668080e7          	jalr	1640(ra) # 800050c4 <_ZN15MemoryAllocator12memory_allocEm>
    80002a64:	00050913          	mv	s2,a0
    input_buffer = new MyBuffer(1024);
    80002a68:	40000593          	li	a1,1024
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	da0080e7          	jalr	-608(ra) # 8000180c <_ZN8MyBufferC1Ei>
    80002a74:	0800006f          	j	80002af4 <_ZN7ConsoleC1Ev+0xcc>
    MemoryAllocator(){
    80002a78:	00009617          	auipc	a2,0x9
    80002a7c:	88060613          	addi	a2,a2,-1920 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80002a80:	00009797          	auipc	a5,0x9
    80002a84:	8187b783          	ld	a5,-2024(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a88:	0007b703          	ld	a4,0(a5)
    80002a8c:	00008797          	auipc	a5,0x8
    80002a90:	7c47b783          	ld	a5,1988(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002a94:	0007b783          	ld	a5,0(a5)
    80002a98:	40f706b3          	sub	a3,a4,a5
    80002a9c:	0036d693          	srli	a3,a3,0x3
    80002aa0:	00d787b3          	add	a5,a5,a3
    80002aa4:	00178793          	addi	a5,a5,1
    80002aa8:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002aac:	fff70713          	addi	a4,a4,-1
    80002ab0:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002ab4:	40f70733          	sub	a4,a4,a5
    80002ab8:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002abc:	03f7f693          	andi	a3,a5,63
    80002ac0:	00068663          	beqz	a3,80002acc <_ZN7ConsoleC1Ev+0xa4>
    80002ac4:	04000613          	li	a2,64
    80002ac8:	40d606b3          	sub	a3,a2,a3
    80002acc:	00d787b3          	add	a5,a5,a3
    80002ad0:	00009697          	auipc	a3,0x9
    80002ad4:	82f6b423          	sd	a5,-2008(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80002ad8:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002adc:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002ae0:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002ae4:	00100793          	li	a5,1
    80002ae8:	00009717          	auipc	a4,0x9
    80002aec:	80f70423          	sb	a5,-2040(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002af0:	f61ff06f          	j	80002a50 <_ZN7ConsoleC1Ev+0x28>
    80002af4:	0124b023          	sd	s2,0(s1)
    80002af8:	00008797          	auipc	a5,0x8
    80002afc:	7f87c783          	lbu	a5,2040(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002b00:	02078663          	beqz	a5,80002b2c <_ZN7ConsoleC1Ev+0x104>
    80002b04:	00100593          	li	a1,1
    80002b08:	00008517          	auipc	a0,0x8
    80002b0c:	7f050513          	addi	a0,a0,2032 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002b10:	00002097          	auipc	ra,0x2
    80002b14:	5b4080e7          	jalr	1460(ra) # 800050c4 <_ZN15MemoryAllocator12memory_allocEm>
    80002b18:	00050913          	mv	s2,a0
    output_buffer = new MyBuffer(1024);
    80002b1c:	40000593          	li	a1,1024
    80002b20:	fffff097          	auipc	ra,0xfffff
    80002b24:	cec080e7          	jalr	-788(ra) # 8000180c <_ZN8MyBufferC1Ei>
    80002b28:	0800006f          	j	80002ba8 <_ZN7ConsoleC1Ev+0x180>
    MemoryAllocator(){
    80002b2c:	00008617          	auipc	a2,0x8
    80002b30:	7cc60613          	addi	a2,a2,1996 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80002b34:	00008797          	auipc	a5,0x8
    80002b38:	7647b783          	ld	a5,1892(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b3c:	0007b703          	ld	a4,0(a5)
    80002b40:	00008797          	auipc	a5,0x8
    80002b44:	7107b783          	ld	a5,1808(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002b48:	0007b783          	ld	a5,0(a5)
    80002b4c:	40f706b3          	sub	a3,a4,a5
    80002b50:	0036d693          	srli	a3,a3,0x3
    80002b54:	00d787b3          	add	a5,a5,a3
    80002b58:	00178793          	addi	a5,a5,1
    80002b5c:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002b60:	fff70713          	addi	a4,a4,-1
    80002b64:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002b68:	40f70733          	sub	a4,a4,a5
    80002b6c:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002b70:	03f7f693          	andi	a3,a5,63
    80002b74:	00068663          	beqz	a3,80002b80 <_ZN7ConsoleC1Ev+0x158>
    80002b78:	04000613          	li	a2,64
    80002b7c:	40d606b3          	sub	a3,a2,a3
    80002b80:	00d787b3          	add	a5,a5,a3
    80002b84:	00008697          	auipc	a3,0x8
    80002b88:	76f6ba23          	sd	a5,1908(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80002b8c:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002b90:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002b94:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002b98:	00100793          	li	a5,1
    80002b9c:	00008717          	auipc	a4,0x8
    80002ba0:	74f70a23          	sb	a5,1876(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002ba4:	f61ff06f          	j	80002b04 <_ZN7ConsoleC1Ev+0xdc>
    80002ba8:	0124b423          	sd	s2,8(s1)
}
    80002bac:	01813083          	ld	ra,24(sp)
    80002bb0:	01013403          	ld	s0,16(sp)
    80002bb4:	00813483          	ld	s1,8(sp)
    80002bb8:	00013903          	ld	s2,0(sp)
    80002bbc:	02010113          	addi	sp,sp,32
    80002bc0:	00008067          	ret
    80002bc4:	00050493          	mv	s1,a0
    input_buffer = new MyBuffer(1024);
    80002bc8:	00090513          	mv	a0,s2
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	0e8080e7          	jalr	232(ra) # 80002cb4 <_ZN8MyBufferdlEPv>
    80002bd4:	00048513          	mv	a0,s1
    80002bd8:	0000a097          	auipc	ra,0xa
    80002bdc:	a20080e7          	jalr	-1504(ra) # 8000c5f8 <_Unwind_Resume>
    80002be0:	00050493          	mv	s1,a0
    output_buffer = new MyBuffer(1024);
    80002be4:	00090513          	mv	a0,s2
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	0cc080e7          	jalr	204(ra) # 80002cb4 <_ZN8MyBufferdlEPv>
    80002bf0:	00048513          	mv	a0,s1
    80002bf4:	0000a097          	auipc	ra,0xa
    80002bf8:	a04080e7          	jalr	-1532(ra) # 8000c5f8 <_Unwind_Resume>

0000000080002bfc <_ZN7Console12put_in_inputEc>:

void Console::put_in_input(char c){
    80002bfc:	ff010113          	addi	sp,sp,-16
    80002c00:	00113423          	sd	ra,8(sp)
    80002c04:	00813023          	sd	s0,0(sp)
    80002c08:	01010413          	addi	s0,sp,16
    input_buffer->put(c);
    80002c0c:	00053503          	ld	a0,0(a0)
    80002c10:	fffff097          	auipc	ra,0xfffff
    80002c14:	e20080e7          	jalr	-480(ra) # 80001a30 <_ZN8MyBuffer3putEi>
}
    80002c18:	00813083          	ld	ra,8(sp)
    80002c1c:	00013403          	ld	s0,0(sp)
    80002c20:	01010113          	addi	sp,sp,16
    80002c24:	00008067          	ret

0000000080002c28 <_ZN7Console14get_from_inputEv>:

char Console::get_from_input(){
    80002c28:	ff010113          	addi	sp,sp,-16
    80002c2c:	00113423          	sd	ra,8(sp)
    80002c30:	00813023          	sd	s0,0(sp)
    80002c34:	01010413          	addi	s0,sp,16
    return (char)input_buffer->get();
    80002c38:	00053503          	ld	a0,0(a0)
    80002c3c:	fffff097          	auipc	ra,0xfffff
    80002c40:	e84080e7          	jalr	-380(ra) # 80001ac0 <_ZN8MyBuffer3getEv>
}
    80002c44:	0ff57513          	andi	a0,a0,255
    80002c48:	00813083          	ld	ra,8(sp)
    80002c4c:	00013403          	ld	s0,0(sp)
    80002c50:	01010113          	addi	sp,sp,16
    80002c54:	00008067          	ret

0000000080002c58 <_ZN7Console13put_in_outputEc>:

void Console::put_in_output(char c){
    80002c58:	ff010113          	addi	sp,sp,-16
    80002c5c:	00113423          	sd	ra,8(sp)
    80002c60:	00813023          	sd	s0,0(sp)
    80002c64:	01010413          	addi	s0,sp,16
    output_buffer->put(c);
    80002c68:	00853503          	ld	a0,8(a0)
    80002c6c:	fffff097          	auipc	ra,0xfffff
    80002c70:	dc4080e7          	jalr	-572(ra) # 80001a30 <_ZN8MyBuffer3putEi>
}
    80002c74:	00813083          	ld	ra,8(sp)
    80002c78:	00013403          	ld	s0,0(sp)
    80002c7c:	01010113          	addi	sp,sp,16
    80002c80:	00008067          	ret

0000000080002c84 <_ZN7Console15get_from_outputEv>:
char Console::get_from_output(){
    80002c84:	ff010113          	addi	sp,sp,-16
    80002c88:	00113423          	sd	ra,8(sp)
    80002c8c:	00813023          	sd	s0,0(sp)
    80002c90:	01010413          	addi	s0,sp,16
    return (char)output_buffer->get();
    80002c94:	00853503          	ld	a0,8(a0)
    80002c98:	fffff097          	auipc	ra,0xfffff
    80002c9c:	e28080e7          	jalr	-472(ra) # 80001ac0 <_ZN8MyBuffer3getEv>
    80002ca0:	0ff57513          	andi	a0,a0,255
    80002ca4:	00813083          	ld	ra,8(sp)
    80002ca8:	00013403          	ld	s0,0(sp)
    80002cac:	01010113          	addi	sp,sp,16
    80002cb0:	00008067          	ret

0000000080002cb4 <_ZN8MyBufferdlEPv>:
    void operator delete(void* p)noexcept{
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00113423          	sd	ra,8(sp)
    80002cbc:	00813023          	sd	s0,0(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    80002cc4:	00050593          	mv	a1,a0
    80002cc8:	00008797          	auipc	a5,0x8
    80002ccc:	6287c783          	lbu	a5,1576(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002cd0:	02078263          	beqz	a5,80002cf4 <_ZN8MyBufferdlEPv+0x40>
        MemoryAllocator::getInstance().memory_free(p);
    80002cd4:	00008517          	auipc	a0,0x8
    80002cd8:	62450513          	addi	a0,a0,1572 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002cdc:	00002097          	auipc	ra,0x2
    80002ce0:	4bc080e7          	jalr	1212(ra) # 80005198 <_ZN15MemoryAllocator11memory_freeEPv>
    }
    80002ce4:	00813083          	ld	ra,8(sp)
    80002ce8:	00013403          	ld	s0,0(sp)
    80002cec:	01010113          	addi	sp,sp,16
    80002cf0:	00008067          	ret
    MemoryAllocator(){
    80002cf4:	00008617          	auipc	a2,0x8
    80002cf8:	60460613          	addi	a2,a2,1540 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80002cfc:	00008797          	auipc	a5,0x8
    80002d00:	59c7b783          	ld	a5,1436(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d04:	0007b703          	ld	a4,0(a5)
    80002d08:	00008797          	auipc	a5,0x8
    80002d0c:	5487b783          	ld	a5,1352(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002d10:	0007b783          	ld	a5,0(a5)
    80002d14:	40f706b3          	sub	a3,a4,a5
    80002d18:	0036d693          	srli	a3,a3,0x3
    80002d1c:	00d787b3          	add	a5,a5,a3
    80002d20:	00178793          	addi	a5,a5,1
    80002d24:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002d28:	fff70713          	addi	a4,a4,-1
    80002d2c:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002d30:	40f70733          	sub	a4,a4,a5
    80002d34:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002d38:	03f7f693          	andi	a3,a5,63
    80002d3c:	00068663          	beqz	a3,80002d48 <_ZN8MyBufferdlEPv+0x94>
    80002d40:	04000613          	li	a2,64
    80002d44:	40d606b3          	sub	a3,a2,a3
    80002d48:	00d787b3          	add	a5,a5,a3
    80002d4c:	00008697          	auipc	a3,0x8
    80002d50:	5af6b623          	sd	a5,1452(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80002d54:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002d58:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002d5c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002d60:	00100793          	li	a5,1
    80002d64:	00008717          	auipc	a4,0x8
    80002d68:	58f70623          	sb	a5,1420(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002d6c:	f69ff06f          	j	80002cd4 <_ZN8MyBufferdlEPv+0x20>

0000000080002d70 <_ZN12kmem_cache_s17kmem_cache_shrinkEv>:
    return (void*)tmp;
}

///
/// \return velicinu za koliko je smanjena memorija (u bajtovima)
size_t kmem_cache_s::kmem_cache_shrink() {
    80002d70:	fd010113          	addi	sp,sp,-48
    80002d74:	02113423          	sd	ra,40(sp)
    80002d78:	02813023          	sd	s0,32(sp)
    80002d7c:	00913c23          	sd	s1,24(sp)
    80002d80:	01213823          	sd	s2,16(sp)
    80002d84:	01313423          	sd	s3,8(sp)
    80002d88:	01413023          	sd	s4,0(sp)
    80002d8c:	03010413          	addi	s0,sp,48
    80002d90:	00050993          	mv	s3,a0
    if(this->growing){
    80002d94:	07054783          	lbu	a5,112(a0)
    80002d98:	00079863          	bnez	a5,80002da8 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x38>
        this->growing = false;
        return 0;
    }
    Slab* curr = this->slabs_free, *prev;
    80002d9c:	01053483          	ld	s1,16(a0)
    int cnt = (int)this->num_slabs_free;
    80002da0:	02852a03          	lw	s4,40(a0)
    80002da4:	0440006f          	j	80002de8 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x78>
        this->growing = false;
    80002da8:	06050823          	sb	zero,112(a0)
        return 0;
    80002dac:	00000513          	li	a0,0
    80002db0:	0700006f          	j	80002e20 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0xb0>

    void* buddyAlloc(size_t size);
    void buddyFree(size_t addr);

    static BuddySystem& getInstance(void *space = nullptr, int block_num = 0){
        static BuddySystem bs;
    80002db4:	00008517          	auipc	a0,0x8
    80002db8:	5ac50513          	addi	a0,a0,1452 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002dbc:	fffff097          	auipc	ra,0xfffff
    80002dc0:	e18080e7          	jalr	-488(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80002dc4:	00100793          	li	a5,1
    80002dc8:	00008717          	auipc	a4,0x8
    80002dcc:	58f70823          	sb	a5,1424(a4) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    while(curr){
        prev = curr;
        curr = curr->next;
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80002dd0:	00048593          	mv	a1,s1
    80002dd4:	00008517          	auipc	a0,0x8
    80002dd8:	58c50513          	addi	a0,a0,1420 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002ddc:	fffff097          	auipc	ra,0xfffff
    80002de0:	0f8080e7          	jalr	248(ra) # 80001ed4 <_ZN11BuddySystem9buddyFreeEm>
        curr = curr->next;
    80002de4:	00090493          	mv	s1,s2
    while(curr){
    80002de8:	00048c63          	beqz	s1,80002e00 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x90>
        curr = curr->next;
    80002dec:	0084b903          	ld	s2,8(s1)
    80002df0:	00008797          	auipc	a5,0x8
    80002df4:	5687c783          	lbu	a5,1384(a5) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002df8:	fc079ce3          	bnez	a5,80002dd0 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x60>
    80002dfc:	fb9ff06f          	j	80002db4 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x44>
    }
    this->slabs_free = nullptr;
    80002e00:	0009b823          	sd	zero,16(s3)
    this->num_slabs_free = 0;
    80002e04:	0209b423          	sd	zero,40(s3)
    this->growing = false;
    80002e08:	06098823          	sb	zero,112(s3)
    this->shrink++;
    80002e0c:	0789b783          	ld	a5,120(s3)
    80002e10:	00178793          	addi	a5,a5,1
    80002e14:	06f9bc23          	sd	a5,120(s3)
    return cnt * this->size_in_blocks;
    80002e18:	0409b503          	ld	a0,64(s3)
    80002e1c:	02aa0533          	mul	a0,s4,a0
}
    80002e20:	02813083          	ld	ra,40(sp)
    80002e24:	02013403          	ld	s0,32(sp)
    80002e28:	01813483          	ld	s1,24(sp)
    80002e2c:	01013903          	ld	s2,16(sp)
    80002e30:	00813983          	ld	s3,8(sp)
    80002e34:	00013a03          	ld	s4,0(sp)
    80002e38:	03010113          	addi	sp,sp,48
    80002e3c:	00008067          	ret

0000000080002e40 <_ZN12kmem_cache_s16create_free_slabEv>:
        this->growing = true;
        return nullptr;
    }
}

void kmem_cache_s::create_free_slab() {
    80002e40:	fd010113          	addi	sp,sp,-48
    80002e44:	02113423          	sd	ra,40(sp)
    80002e48:	02813023          	sd	s0,32(sp)
    80002e4c:	00913c23          	sd	s1,24(sp)
    80002e50:	01213823          	sd	s2,16(sp)
    80002e54:	01313423          	sd	s3,8(sp)
    80002e58:	01413023          	sd	s4,0(sp)
    80002e5c:	03010413          	addi	s0,sp,48
    80002e60:	00050493          	mv	s1,a0
    80002e64:	00008797          	auipc	a5,0x8
    80002e68:	4f47c783          	lbu	a5,1268(a5) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002e6c:	06078663          	beqz	a5,80002ed8 <_ZN12kmem_cache_s16create_free_slabEv+0x98>
    Slab* tmp = (Slab*)(BuddySystem::getInstance().buddyAlloc(this->num * this->objsize + sizeof(Slab)));
    80002e70:	0384b583          	ld	a1,56(s1)
    80002e74:	0304b783          	ld	a5,48(s1)
    80002e78:	02f585b3          	mul	a1,a1,a5
    80002e7c:	02058593          	addi	a1,a1,32
    80002e80:	00008517          	auipc	a0,0x8
    80002e84:	4e050513          	addi	a0,a0,1248 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	ebc080e7          	jalr	-324(ra) # 80001d44 <_ZN11BuddySystem10buddyAllocEm>
    80002e90:	00050a13          	mv	s4,a0
    tmp->num_active = 0;
    80002e94:	00053023          	sd	zero,0(a0)
    tmp->next = nullptr;
    80002e98:	00053423          	sd	zero,8(a0)
    this->slabs_free = tmp;
    80002e9c:	00a4b823          	sd	a0,16(s1)
    tmp->first_addr = ((size_t)tmp + sizeof(Slab));
    80002ea0:	02050793          	addi	a5,a0,32
    80002ea4:	00f53c23          	sd	a5,24(a0)
    bool arr[this->num];
    80002ea8:	0384b783          	ld	a5,56(s1)
    80002eac:	00f78793          	addi	a5,a5,15
    80002eb0:	ff07f793          	andi	a5,a5,-16
    80002eb4:	40f10133          	sub	sp,sp,a5
    80002eb8:	00010693          	mv	a3,sp
    for(size_t  i = 0; i < this->num; i++){
    80002ebc:	00000793          	li	a5,0
    80002ec0:	0384b703          	ld	a4,56(s1)
    80002ec4:	02e7fa63          	bgeu	a5,a4,80002ef8 <_ZN12kmem_cache_s16create_free_slabEv+0xb8>
        arr[i] = false;
    80002ec8:	00f68733          	add	a4,a3,a5
    80002ecc:	00070023          	sb	zero,0(a4)
    for(size_t  i = 0; i < this->num; i++){
    80002ed0:	00178793          	addi	a5,a5,1
    80002ed4:	fedff06f          	j	80002ec0 <_ZN12kmem_cache_s16create_free_slabEv+0x80>
    80002ed8:	00008517          	auipc	a0,0x8
    80002edc:	48850513          	addi	a0,a0,1160 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002ee0:	fffff097          	auipc	ra,0xfffff
    80002ee4:	cf4080e7          	jalr	-780(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80002ee8:	00100793          	li	a5,1
    80002eec:	00008717          	auipc	a4,0x8
    80002ef0:	46f70623          	sb	a5,1132(a4) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002ef4:	f7dff06f          	j	80002e70 <_ZN12kmem_cache_s16create_free_slabEv+0x30>
    }
    tmp->free_objects = arr;
    80002ef8:	00da3823          	sd	a3,16(s4)

    // initialize slab if there is constructor
    if(this->ctor != nullptr){
    80002efc:	0484b783          	ld	a5,72(s1)
    80002f00:	02078863          	beqz	a5,80002f30 <_ZN12kmem_cache_s16create_free_slabEv+0xf0>
        for(size_t i = 0, addr = tmp->first_addr; i < this->num; i++, addr += this->objsize){
    80002f04:	018a3983          	ld	s3,24(s4)
    80002f08:	00000913          	li	s2,0
    80002f0c:	0384b783          	ld	a5,56(s1)
    80002f10:	02f97063          	bgeu	s2,a5,80002f30 <_ZN12kmem_cache_s16create_free_slabEv+0xf0>
            this->ctor((void*)addr);
    80002f14:	0484b783          	ld	a5,72(s1)
    80002f18:	00098513          	mv	a0,s3
    80002f1c:	000780e7          	jalr	a5
        for(size_t i = 0, addr = tmp->first_addr; i < this->num; i++, addr += this->objsize){
    80002f20:	00190913          	addi	s2,s2,1
    80002f24:	0304b783          	ld	a5,48(s1)
    80002f28:	00f989b3          	add	s3,s3,a5
    80002f2c:	fe1ff06f          	j	80002f0c <_ZN12kmem_cache_s16create_free_slabEv+0xcc>
        }
    }

    // set free pointer and increment number of free slabs
    this->slabs_free = tmp;
    80002f30:	0144b823          	sd	s4,16(s1)
    this->num_slabs_free++;
    80002f34:	0284b783          	ld	a5,40(s1)
    80002f38:	00178793          	addi	a5,a5,1
    80002f3c:	02f4b423          	sd	a5,40(s1)
}
    80002f40:	fd040113          	addi	sp,s0,-48
    80002f44:	02813083          	ld	ra,40(sp)
    80002f48:	02013403          	ld	s0,32(sp)
    80002f4c:	01813483          	ld	s1,24(sp)
    80002f50:	01013903          	ld	s2,16(sp)
    80002f54:	00813983          	ld	s3,8(sp)
    80002f58:	00013a03          	ld	s4,0(sp)
    80002f5c:	03010113          	addi	sp,sp,48
    80002f60:	00008067          	ret

0000000080002f64 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>:
void* kmem_cache_s::kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    80002f64:	fc010113          	addi	sp,sp,-64
    80002f68:	02113c23          	sd	ra,56(sp)
    80002f6c:	02813823          	sd	s0,48(sp)
    80002f70:	02913423          	sd	s1,40(sp)
    80002f74:	03213023          	sd	s2,32(sp)
    80002f78:	01313c23          	sd	s3,24(sp)
    80002f7c:	01413823          	sd	s4,16(sp)
    80002f80:	01513423          	sd	s5,8(sp)
    80002f84:	04010413          	addi	s0,sp,64
    80002f88:	00050993          	mv	s3,a0
    80002f8c:	00058913          	mv	s2,a1
    80002f90:	00060a93          	mv	s5,a2
    80002f94:	00068a13          	mv	s4,a3
    for(kmem_cache_s* curr = kmem_cache_s::head; curr; curr = curr->next){
    80002f98:	00008797          	auipc	a5,0x8
    80002f9c:	3b87b783          	ld	a5,952(a5) # 8000b350 <_ZN12kmem_cache_s4headE>
    80002fa0:	00078a63          	beqz	a5,80002fb4 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x50>
        if(curr->name == name){
    80002fa4:	0587b703          	ld	a4,88(a5)
    80002fa8:	11370863          	beq	a4,s3,800030b8 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x154>
    for(kmem_cache_s* curr = kmem_cache_s::head; curr; curr = curr->next){
    80002fac:	0607b783          	ld	a5,96(a5)
    80002fb0:	ff1ff06f          	j	80002fa0 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x3c>
    80002fb4:	00008797          	auipc	a5,0x8
    80002fb8:	3a47c783          	lbu	a5,932(a5) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002fbc:	08078263          	beqz	a5,80003040 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xdc>
    kmem_cache_s* tmp = (kmem_cache_s*)BuddySystem::getInstance().buddyAlloc(BLOCK_SIZE - sizeof(size_t));
    80002fc0:	000015b7          	lui	a1,0x1
    80002fc4:	ff858593          	addi	a1,a1,-8 # ff8 <_entry-0x7ffff008>
    80002fc8:	00008517          	auipc	a0,0x8
    80002fcc:	39850513          	addi	a0,a0,920 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002fd0:	fffff097          	auipc	ra,0xfffff
    80002fd4:	d74080e7          	jalr	-652(ra) # 80001d44 <_ZN11BuddySystem10buddyAllocEm>
    80002fd8:	00050493          	mv	s1,a0
    tmp->name = name;
    80002fdc:	05353c23          	sd	s3,88(a0)
    tmp->objsize = size;
    80002fe0:	03253823          	sd	s2,48(a0)
    tmp->ctor = ctor;
    80002fe4:	05553423          	sd	s5,72(a0)
    tmp->dtor = dtor;
    80002fe8:	05453823          	sd	s4,80(a0)
    tmp->slabs_full = tmp->slabs_partial = tmp->slabs_free = nullptr;
    80002fec:	00053823          	sd	zero,16(a0)
    80002ff0:	00053423          	sd	zero,8(a0)
    80002ff4:	00053023          	sd	zero,0(a0)
    tmp->num_slabs_full = tmp->num_slabs_partial = tmp->num_slabs_free = tmp->num_active_obj = tmp->shrink = 0;
    80002ff8:	06053c23          	sd	zero,120(a0)
    80002ffc:	06053423          	sd	zero,104(a0)
    80003000:	02053423          	sd	zero,40(a0)
    80003004:	02053023          	sd	zero,32(a0)
    80003008:	00053c23          	sd	zero,24(a0)
    tmp->growing = false;
    8000300c:	06050823          	sb	zero,112(a0)
    tmp->size_in_blocks = 1;
    80003010:	00100793          	li	a5,1
    80003014:	04f53023          	sd	a5,64(a0)
    while(tmp->size_in_blocks * BLOCK_SIZE < tmp->objsize * NUM_OF_OBJECTS_IN_SLAB + sizeof(Slab) + sizeof(size_t)){
    80003018:	0404b703          	ld	a4,64(s1)
    8000301c:	00c71693          	slli	a3,a4,0xc
    80003020:	00291793          	slli	a5,s2,0x2
    80003024:	012787b3          	add	a5,a5,s2
    80003028:	00179793          	slli	a5,a5,0x1
    8000302c:	02878793          	addi	a5,a5,40
    80003030:	02f6f863          	bgeu	a3,a5,80003060 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xfc>
        tmp->size_in_blocks++;
    80003034:	00170713          	addi	a4,a4,1
    80003038:	04e4b023          	sd	a4,64(s1)
    while(tmp->size_in_blocks * BLOCK_SIZE < tmp->objsize * NUM_OF_OBJECTS_IN_SLAB + sizeof(Slab) + sizeof(size_t)){
    8000303c:	fddff06f          	j	80003018 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xb4>
    80003040:	00008517          	auipc	a0,0x8
    80003044:	32050513          	addi	a0,a0,800 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	b8c080e7          	jalr	-1140(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80003050:	00100793          	li	a5,1
    80003054:	00008717          	auipc	a4,0x8
    80003058:	30f70223          	sb	a5,772(a4) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    8000305c:	f65ff06f          	j	80002fc0 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x5c>
    int how_many_objects_into_one_slab = (int)(tmp->size_in_blocks * BLOCK_SIZE - sizeof(Slab) - sizeof(size_t)) / (int)(tmp->objsize);
    80003060:	00c7179b          	slliw	a5,a4,0xc
    80003064:	fd87879b          	addiw	a5,a5,-40
    80003068:	0327c7bb          	divw	a5,a5,s2
    tmp->num = how_many_objects_into_one_slab;
    8000306c:	02f4bc23          	sd	a5,56(s1)
    tmp->create_free_slab();
    80003070:	00048513          	mv	a0,s1
    80003074:	00000097          	auipc	ra,0x0
    80003078:	dcc080e7          	jalr	-564(ra) # 80002e40 <_ZN12kmem_cache_s16create_free_slabEv>
    tmp->next = kmem_cache_s::head;
    8000307c:	00008797          	auipc	a5,0x8
    80003080:	2d478793          	addi	a5,a5,724 # 8000b350 <_ZN12kmem_cache_s4headE>
    80003084:	0007b703          	ld	a4,0(a5)
    80003088:	06e4b023          	sd	a4,96(s1)
    kmem_cache_s::head = tmp;
    8000308c:	0097b023          	sd	s1,0(a5)
}
    80003090:	00048513          	mv	a0,s1
    80003094:	03813083          	ld	ra,56(sp)
    80003098:	03013403          	ld	s0,48(sp)
    8000309c:	02813483          	ld	s1,40(sp)
    800030a0:	02013903          	ld	s2,32(sp)
    800030a4:	01813983          	ld	s3,24(sp)
    800030a8:	01013a03          	ld	s4,16(sp)
    800030ac:	00813a83          	ld	s5,8(sp)
    800030b0:	04010113          	addi	sp,sp,64
    800030b4:	00008067          	ret
            return nullptr;
    800030b8:	00000493          	li	s1,0
    800030bc:	fd5ff06f          	j	80003090 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x12c>

00000000800030c0 <_ZN12kmem_cache_s15kmem_cache_freeEPv>:

// returns -1 if object not found and 0 if removal is completed
int kmem_cache_s::kmem_cache_free(void *objp) {
    800030c0:	fd010113          	addi	sp,sp,-48
    800030c4:	02113423          	sd	ra,40(sp)
    800030c8:	02813023          	sd	s0,32(sp)
    800030cc:	00913c23          	sd	s1,24(sp)
    800030d0:	01213823          	sd	s2,16(sp)
    800030d4:	01313423          	sd	s3,8(sp)
    800030d8:	01413023          	sd	s4,0(sp)
    800030dc:	03010413          	addi	s0,sp,48
    800030e0:	00050a13          	mv	s4,a0
    800030e4:	00058993          	mv	s3,a1
    // check firstly in partial
    Slab* prev = nullptr;
    for(Slab* tmp = this->slabs_partial; tmp; tmp = tmp->next){
    800030e8:	00853483          	ld	s1,8(a0)
    Slab* prev = nullptr;
    800030ec:	00000913          	li	s2,0
    800030f0:	0180006f          	j	80003108 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x48>
            tmp->decrement_num_of_active();
            size_t number_of_active = tmp->get_number_of_active_objects();
            if(number_of_active == 0){
                // move from partial to free
                if(prev)prev->next = tmp->next;
                else slabs_partial = tmp->next;
    800030f4:	0084b783          	ld	a5,8(s1)
    800030f8:	00fa3423          	sd	a5,8(s4)
    800030fc:	08c0006f          	j	80003188 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xc8>
                this->num_slabs_partial--;
                this->num_slabs_free++;
            }
            return 0;
        }
        prev = tmp;
    80003100:	00048913          	mv	s2,s1
    for(Slab* tmp = this->slabs_partial; tmp; tmp = tmp->next){
    80003104:	0084b483          	ld	s1,8(s1)
    80003108:	0a048663          	beqz	s1,800031b4 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xf4>
        if((size_t)objp > (size_t)tmp &&
    8000310c:	ff34fae3          	bgeu	s1,s3,80003100 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x40>
        (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
    80003110:	040a3783          	ld	a5,64(s4)
    80003114:	00c79793          	slli	a5,a5,0xc
    80003118:	00f487b3          	add	a5,s1,a5
    8000311c:	ff878793          	addi	a5,a5,-8
        if((size_t)objp > (size_t)tmp &&
    80003120:	fef9f0e3          	bgeu	s3,a5,80003100 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x40>
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
    80003124:	0184b783          	ld	a5,24(s1)
    80003128:	40f98733          	sub	a4,s3,a5
    8000312c:	030a3783          	ld	a5,48(s4)
    80003130:	02f75733          	divu	a4,a4,a5
            (tmp->free_objects)[position] = false;
    80003134:	0104b783          	ld	a5,16(s1)
    80003138:	00e78733          	add	a4,a5,a4
    8000313c:	00070023          	sb	zero,0(a4)
            if(this->dtor){
    80003140:	050a3783          	ld	a5,80(s4)
    80003144:	00078663          	beqz	a5,80003150 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x90>
                this->dtor(objp);
    80003148:	00098513          	mv	a0,s3
    8000314c:	000780e7          	jalr	a5
            if(this->ctor){
    80003150:	048a3783          	ld	a5,72(s4)
    80003154:	00078663          	beqz	a5,80003160 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xa0>
                this->ctor(objp);
    80003158:	00098513          	mv	a0,s3
    8000315c:	000780e7          	jalr	a5
            this->num_active_obj--;
    80003160:	068a3783          	ld	a5,104(s4)
    80003164:	fff78793          	addi	a5,a5,-1
    80003168:	06fa3423          	sd	a5,104(s4)
public:
    void clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *));
    size_t get_number_of_active_objects(){return num_active;}
    void* return_first_free_object_and_rearange_list(int, int);
    void increment_num_of_active(){num_active++;}
    void decrement_num_of_active(){num_active--;}
    8000316c:	0004b783          	ld	a5,0(s1)
    80003170:	fff78793          	addi	a5,a5,-1
    80003174:	00f4b023          	sd	a5,0(s1)
            if(number_of_active == 0){
    80003178:	02079a63          	bnez	a5,800031ac <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xec>
                if(prev)prev->next = tmp->next;
    8000317c:	f6090ce3          	beqz	s2,800030f4 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x34>
    80003180:	0084b783          	ld	a5,8(s1)
    80003184:	00f93423          	sd	a5,8(s2)
                tmp->next = this->slabs_free;
    80003188:	010a3783          	ld	a5,16(s4)
    8000318c:	00f4b423          	sd	a5,8(s1)
                this->slabs_free = tmp;
    80003190:	009a3823          	sd	s1,16(s4)
                this->num_slabs_partial--;
    80003194:	020a3783          	ld	a5,32(s4)
    80003198:	fff78793          	addi	a5,a5,-1
    8000319c:	02fa3023          	sd	a5,32(s4)
                this->num_slabs_free++;
    800031a0:	028a3783          	ld	a5,40(s4)
    800031a4:	00178793          	addi	a5,a5,1
    800031a8:	02fa3423          	sd	a5,40(s4)
            return 0;
    800031ac:	00000513          	li	a0,0
    800031b0:	0cc0006f          	j	8000327c <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1bc>
    }
    // check in full
    prev = nullptr;
    for(Slab* tmp = this->slabs_full; tmp; tmp = tmp->next){
    800031b4:	000a3903          	ld	s2,0(s4)
    800031b8:	0180006f          	j	800031d0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x110>
            this->num_active_obj--;
            tmp->decrement_num_of_active();

            // move from full to partial
            if(prev)prev->next = tmp->next;
            else slabs_full = tmp->next;
    800031bc:	00893783          	ld	a5,8(s2)
    800031c0:	00fa3023          	sd	a5,0(s4)
    800031c4:	0880006f          	j	8000324c <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x18c>
            this->num_slabs_full--;
            this->num_slabs_partial++;

            return 0;
        }
        prev = tmp;
    800031c8:	00090493          	mv	s1,s2
    for(Slab* tmp = this->slabs_full; tmp; tmp = tmp->next){
    800031cc:	00893903          	ld	s2,8(s2)
    800031d0:	0a090463          	beqz	s2,80003278 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1b8>
        if((size_t)objp > (size_t)tmp &&
    800031d4:	ff397ae3          	bgeu	s2,s3,800031c8 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x108>
           (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
    800031d8:	040a3783          	ld	a5,64(s4)
    800031dc:	00c79793          	slli	a5,a5,0xc
    800031e0:	00f907b3          	add	a5,s2,a5
    800031e4:	ff878793          	addi	a5,a5,-8
        if((size_t)objp > (size_t)tmp &&
    800031e8:	fef9f0e3          	bgeu	s3,a5,800031c8 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x108>
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
    800031ec:	01893783          	ld	a5,24(s2)
    800031f0:	40f98733          	sub	a4,s3,a5
    800031f4:	030a3783          	ld	a5,48(s4)
    800031f8:	02f75733          	divu	a4,a4,a5
            (tmp->free_objects)[position] = false;
    800031fc:	01093783          	ld	a5,16(s2)
    80003200:	00e78733          	add	a4,a5,a4
    80003204:	00070023          	sb	zero,0(a4)
            if(this->dtor){
    80003208:	050a3783          	ld	a5,80(s4)
    8000320c:	00078663          	beqz	a5,80003218 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x158>
                this->dtor(objp);
    80003210:	00098513          	mv	a0,s3
    80003214:	000780e7          	jalr	a5
            if(this->ctor){
    80003218:	048a3783          	ld	a5,72(s4)
    8000321c:	00078663          	beqz	a5,80003228 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x168>
                this->ctor(objp);
    80003220:	00098513          	mv	a0,s3
    80003224:	000780e7          	jalr	a5
            this->num_active_obj--;
    80003228:	068a3783          	ld	a5,104(s4)
    8000322c:	fff78793          	addi	a5,a5,-1
    80003230:	06fa3423          	sd	a5,104(s4)
    80003234:	00093783          	ld	a5,0(s2)
    80003238:	fff78793          	addi	a5,a5,-1
    8000323c:	00f93023          	sd	a5,0(s2)
            if(prev)prev->next = tmp->next;
    80003240:	f6048ee3          	beqz	s1,800031bc <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xfc>
    80003244:	00893783          	ld	a5,8(s2)
    80003248:	00f4b423          	sd	a5,8(s1)
            tmp->next = this->slabs_partial;
    8000324c:	008a3783          	ld	a5,8(s4)
    80003250:	00f93423          	sd	a5,8(s2)
            this->slabs_partial = tmp;
    80003254:	012a3423          	sd	s2,8(s4)
            this->num_slabs_full--;
    80003258:	018a3783          	ld	a5,24(s4)
    8000325c:	fff78793          	addi	a5,a5,-1
    80003260:	00fa3c23          	sd	a5,24(s4)
            this->num_slabs_partial++;
    80003264:	020a3783          	ld	a5,32(s4)
    80003268:	00178793          	addi	a5,a5,1
    8000326c:	02fa3023          	sd	a5,32(s4)
            return 0;
    80003270:	00000513          	li	a0,0
    80003274:	0080006f          	j	8000327c <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1bc>
    }
    return -1;
    80003278:	fff00513          	li	a0,-1
}
    8000327c:	02813083          	ld	ra,40(sp)
    80003280:	02013403          	ld	s0,32(sp)
    80003284:	01813483          	ld	s1,24(sp)
    80003288:	01013903          	ld	s2,16(sp)
    8000328c:	00813983          	ld	s3,8(sp)
    80003290:	00013a03          	ld	s4,0(sp)
    80003294:	03010113          	addi	sp,sp,48
    80003298:	00008067          	ret

000000008000329c <_ZN12kmem_cache_s20check_if_name_existsEPKc>:
    void* elem = cache->kmem_cache_alloc();
    return elem;
}

// returns cache with given name, or nullptr if there is no such cache
kmem_cache_s *kmem_cache_s::check_if_name_exists(const char* name) {
    8000329c:	fe010113          	addi	sp,sp,-32
    800032a0:	00113c23          	sd	ra,24(sp)
    800032a4:	00813823          	sd	s0,16(sp)
    800032a8:	00913423          	sd	s1,8(sp)
    800032ac:	01213023          	sd	s2,0(sp)
    800032b0:	02010413          	addi	s0,sp,32
    800032b4:	00050913          	mv	s2,a0
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    800032b8:	00008497          	auipc	s1,0x8
    800032bc:	0984b483          	ld	s1,152(s1) # 8000b350 <_ZN12kmem_cache_s4headE>
    800032c0:	02048063          	beqz	s1,800032e0 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x44>
        if(string_compare(tmp->name, name)){
    800032c4:	00090593          	mv	a1,s2
    800032c8:	0584b503          	ld	a0,88(s1)
    800032cc:	fffff097          	auipc	ra,0xfffff
    800032d0:	3e4080e7          	jalr	996(ra) # 800026b0 <_Z14string_comparePKcS0_>
    800032d4:	00051663          	bnez	a0,800032e0 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x44>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    800032d8:	0604b483          	ld	s1,96(s1)
    800032dc:	fe5ff06f          	j	800032c0 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x24>
            return tmp;
        }
    }
    return nullptr;
}
    800032e0:	00048513          	mv	a0,s1
    800032e4:	01813083          	ld	ra,24(sp)
    800032e8:	01013403          	ld	s0,16(sp)
    800032ec:	00813483          	ld	s1,8(sp)
    800032f0:	00013903          	ld	s2,0(sp)
    800032f4:	02010113          	addi	sp,sp,32
    800032f8:	00008067          	ret

00000000800032fc <_ZN12kmem_cache_s3powEm>:

size_t kmem_cache_s::pow(size_t deg){
    800032fc:	ff010113          	addi	sp,sp,-16
    80003300:	00813423          	sd	s0,8(sp)
    80003304:	01010413          	addi	s0,sp,16
    80003308:	00050713          	mv	a4,a0
    size_t tmp = 1;
    for(size_t i = 0; i < deg; i++){
    8000330c:	00000793          	li	a5,0
    size_t tmp = 1;
    80003310:	00100513          	li	a0,1
    for(size_t i = 0; i < deg; i++){
    80003314:	00e7f863          	bgeu	a5,a4,80003324 <_ZN12kmem_cache_s3powEm+0x28>
        tmp <<= 1;
    80003318:	00151513          	slli	a0,a0,0x1
    for(size_t i = 0; i < deg; i++){
    8000331c:	00178793          	addi	a5,a5,1
    80003320:	ff5ff06f          	j	80003314 <_ZN12kmem_cache_s3powEm+0x18>
    }
    return tmp;
}
    80003324:	00813403          	ld	s0,8(sp)
    80003328:	01010113          	addi	sp,sp,16
    8000332c:	00008067          	ret

0000000080003330 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm>:

bool kmem_cache_s::is_small_buffer_size_correct(size_t size) {
    80003330:	ff010113          	addi	sp,sp,-16
    80003334:	00813423          	sd	s0,8(sp)
    80003338:	01010413          	addi	s0,sp,16
    size_t num = 1;
    size_t iter = 0;
    8000333c:	00000713          	li	a4,0
    size_t num = 1;
    80003340:	00100793          	li	a5,1
    80003344:	0080006f          	j	8000334c <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x1c>
    while(num < size){
        num <<= 1;
        iter++;
    80003348:	00068713          	mv	a4,a3
    while(num < size){
    8000334c:	02a7f263          	bgeu	a5,a0,80003370 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x40>
        num <<= 1;
    80003350:	00179793          	slli	a5,a5,0x1
        iter++;
    80003354:	00170693          	addi	a3,a4,1
        if(num == size){
    80003358:	fef518e3          	bne	a0,a5,80003348 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x18>
            if(iter >= 5 && iter <= 17){
    8000335c:	ffc70713          	addi	a4,a4,-4
    80003360:	00c00793          	li	a5,12
    80003364:	00e7ee63          	bltu	a5,a4,80003380 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x50>
                return true;
    80003368:	00100513          	li	a0,1
    8000336c:	0080006f          	j	80003374 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x44>
            }
            else return false;
        }
    }
    return false;
    80003370:	00000513          	li	a0,0
}
    80003374:	00813403          	ld	s0,8(sp)
    80003378:	01010113          	addi	sp,sp,16
    8000337c:	00008067          	ret
            else return false;
    80003380:	00000513          	li	a0,0
    80003384:	ff1ff06f          	j	80003374 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x44>

0000000080003388 <_ZN12kmem_cache_s5kfreeEPKv>:

// returns 0 if delete is executed, -1 if not
int kmem_cache_s::kfree(const void *objp) {
    80003388:	fe010113          	addi	sp,sp,-32
    8000338c:	00113c23          	sd	ra,24(sp)
    80003390:	00813823          	sd	s0,16(sp)
    80003394:	00913423          	sd	s1,8(sp)
    80003398:	01213023          	sd	s2,0(sp)
    8000339c:	02010413          	addi	s0,sp,32
    800033a0:	00050913          	mv	s2,a0
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    800033a4:	00008497          	auipc	s1,0x8
    800033a8:	fac4b483          	ld	s1,-84(s1) # 8000b350 <_ZN12kmem_cache_s4headE>
    800033ac:	02048063          	beqz	s1,800033cc <_ZN12kmem_cache_s5kfreeEPKv+0x44>
        if(tmp->kmem_cache_free((void*)objp) == 0)return 0;
    800033b0:	00090593          	mv	a1,s2
    800033b4:	00048513          	mv	a0,s1
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	d08080e7          	jalr	-760(ra) # 800030c0 <_ZN12kmem_cache_s15kmem_cache_freeEPv>
    800033c0:	00050863          	beqz	a0,800033d0 <_ZN12kmem_cache_s5kfreeEPKv+0x48>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    800033c4:	0604b483          	ld	s1,96(s1)
    800033c8:	fe5ff06f          	j	800033ac <_ZN12kmem_cache_s5kfreeEPKv+0x24>
    }
    // if not found return 1;
    return -1;
    800033cc:	fff00513          	li	a0,-1
}
    800033d0:	01813083          	ld	ra,24(sp)
    800033d4:	01013403          	ld	s0,16(sp)
    800033d8:	00813483          	ld	s1,8(sp)
    800033dc:	00013903          	ld	s2,0(sp)
    800033e0:	02010113          	addi	sp,sp,32
    800033e4:	00008067          	ret

00000000800033e8 <_ZN12kmem_cache_s15kmem_cache_infoEv>:
        cache = cache->next;
    }
    return -1;
}

void kmem_cache_s::kmem_cache_info() {
    800033e8:	fd010113          	addi	sp,sp,-48
    800033ec:	02113423          	sd	ra,40(sp)
    800033f0:	02813023          	sd	s0,32(sp)
    800033f4:	00913c23          	sd	s1,24(sp)
    800033f8:	01213823          	sd	s2,16(sp)
    800033fc:	01313423          	sd	s3,8(sp)
    80003400:	01413023          	sd	s4,0(sp)
    80003404:	03010413          	addi	s0,sp,48
    80003408:	00050913          	mv	s2,a0

    printString("------------------- CACHE INFO -------------------\n");
    8000340c:	00006517          	auipc	a0,0x6
    80003410:	c2450513          	addi	a0,a0,-988 # 80009030 <CONSOLE_STATUS+0x20>
    80003414:	00002097          	auipc	ra,0x2
    80003418:	32c080e7          	jalr	812(ra) # 80005740 <_Z11printStringPKc>
    // print name and object size
    printString("Ime: ");
    8000341c:	00006517          	auipc	a0,0x6
    80003420:	c4c50513          	addi	a0,a0,-948 # 80009068 <CONSOLE_STATUS+0x58>
    80003424:	00002097          	auipc	ra,0x2
    80003428:	31c080e7          	jalr	796(ra) # 80005740 <_Z11printStringPKc>
    printString(name);
    8000342c:	05893503          	ld	a0,88(s2)
    80003430:	00002097          	auipc	ra,0x2
    80003434:	310080e7          	jalr	784(ra) # 80005740 <_Z11printStringPKc>
    printString("\n");
    80003438:	00006517          	auipc	a0,0x6
    8000343c:	e1850513          	addi	a0,a0,-488 # 80009250 <CONSOLE_STATUS+0x240>
    80003440:	00002097          	auipc	ra,0x2
    80003444:	300080e7          	jalr	768(ra) # 80005740 <_Z11printStringPKc>
    printString("Velicina objekta: ");
    80003448:	00006517          	auipc	a0,0x6
    8000344c:	c2850513          	addi	a0,a0,-984 # 80009070 <CONSOLE_STATUS+0x60>
    80003450:	00002097          	auipc	ra,0x2
    80003454:	2f0080e7          	jalr	752(ra) # 80005740 <_Z11printStringPKc>
    printInt(objsize);
    80003458:	00000613          	li	a2,0
    8000345c:	00a00593          	li	a1,10
    80003460:	03092503          	lw	a0,48(s2)
    80003464:	00002097          	auipc	ra,0x2
    80003468:	474080e7          	jalr	1140(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    8000346c:	00006517          	auipc	a0,0x6
    80003470:	de450513          	addi	a0,a0,-540 # 80009250 <CONSOLE_STATUS+0x240>
    80003474:	00002097          	auipc	ra,0x2
    80003478:	2cc080e7          	jalr	716(ra) # 80005740 <_Z11printStringPKc>

    // print size of cache (in blocks)
    size_t num_of_slabs = num_slabs_full + num_slabs_partial + num_slabs_free;
    8000347c:	01893983          	ld	s3,24(s2)
    80003480:	02093783          	ld	a5,32(s2)
    80003484:	00f989b3          	add	s3,s3,a5
    80003488:	02893503          	ld	a0,40(s2)
    8000348c:	00a989b3          	add	s3,s3,a0
    size_t size_of_cache_in_blocks = num_of_slabs * size_in_blocks + 1;
    80003490:	04093483          	ld	s1,64(s2)
    80003494:	033484b3          	mul	s1,s1,s3
    80003498:	00148493          	addi	s1,s1,1
    printString("Velicina kesa u blokovima: ");
    8000349c:	00006517          	auipc	a0,0x6
    800034a0:	bec50513          	addi	a0,a0,-1044 # 80009088 <CONSOLE_STATUS+0x78>
    800034a4:	00002097          	auipc	ra,0x2
    800034a8:	29c080e7          	jalr	668(ra) # 80005740 <_Z11printStringPKc>
    printInt(size_of_cache_in_blocks);
    800034ac:	00000613          	li	a2,0
    800034b0:	00a00593          	li	a1,10
    800034b4:	0004851b          	sext.w	a0,s1
    800034b8:	00002097          	auipc	ra,0x2
    800034bc:	420080e7          	jalr	1056(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    800034c0:	00006517          	auipc	a0,0x6
    800034c4:	d9050513          	addi	a0,a0,-624 # 80009250 <CONSOLE_STATUS+0x240>
    800034c8:	00002097          	auipc	ra,0x2
    800034cc:	278080e7          	jalr	632(ra) # 80005740 <_Z11printStringPKc>

    // print number of slabs in cache
    printString("Broj ploca u kesu: ");
    800034d0:	00006517          	auipc	a0,0x6
    800034d4:	bd850513          	addi	a0,a0,-1064 # 800090a8 <CONSOLE_STATUS+0x98>
    800034d8:	00002097          	auipc	ra,0x2
    800034dc:	268080e7          	jalr	616(ra) # 80005740 <_Z11printStringPKc>
    printInt(num_of_slabs);
    800034e0:	00000613          	li	a2,0
    800034e4:	00a00593          	li	a1,10
    800034e8:	0009851b          	sext.w	a0,s3
    800034ec:	00002097          	auipc	ra,0x2
    800034f0:	3ec080e7          	jalr	1004(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    800034f4:	00006517          	auipc	a0,0x6
    800034f8:	d5c50513          	addi	a0,a0,-676 # 80009250 <CONSOLE_STATUS+0x240>
    800034fc:	00002097          	auipc	ra,0x2
    80003500:	244080e7          	jalr	580(ra) # 80005740 <_Z11printStringPKc>

    // number of objects in one slab
    printString("Broj objekata koji staju u jednu plocu: ");
    80003504:	00006517          	auipc	a0,0x6
    80003508:	bbc50513          	addi	a0,a0,-1092 # 800090c0 <CONSOLE_STATUS+0xb0>
    8000350c:	00002097          	auipc	ra,0x2
    80003510:	234080e7          	jalr	564(ra) # 80005740 <_Z11printStringPKc>
    printInt(num);
    80003514:	00000613          	li	a2,0
    80003518:	00a00593          	li	a1,10
    8000351c:	03892503          	lw	a0,56(s2)
    80003520:	00002097          	auipc	ra,0x2
    80003524:	3b8080e7          	jalr	952(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    80003528:	00006517          	auipc	a0,0x6
    8000352c:	d2850513          	addi	a0,a0,-728 # 80009250 <CONSOLE_STATUS+0x240>
    80003530:	00002097          	auipc	ra,0x2
    80003534:	210080e7          	jalr	528(ra) # 80005740 <_Z11printStringPKc>

    // number of objects in one slab
    printString("Broj aktivnih objekata u kesu: ");
    80003538:	00006517          	auipc	a0,0x6
    8000353c:	bb850513          	addi	a0,a0,-1096 # 800090f0 <CONSOLE_STATUS+0xe0>
    80003540:	00002097          	auipc	ra,0x2
    80003544:	200080e7          	jalr	512(ra) # 80005740 <_Z11printStringPKc>
    printInt(num_active_obj);
    80003548:	00000613          	li	a2,0
    8000354c:	00a00593          	li	a1,10
    80003550:	06892503          	lw	a0,104(s2)
    80003554:	00002097          	auipc	ra,0x2
    80003558:	384080e7          	jalr	900(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    8000355c:	00006517          	auipc	a0,0x6
    80003560:	cf450513          	addi	a0,a0,-780 # 80009250 <CONSOLE_STATUS+0x240>
    80003564:	00002097          	auipc	ra,0x2
    80003568:	1dc080e7          	jalr	476(ra) # 80005740 <_Z11printStringPKc>

    // stanje u slabovima
    printString("slobodni: ");
    8000356c:	00006517          	auipc	a0,0x6
    80003570:	ba450513          	addi	a0,a0,-1116 # 80009110 <CONSOLE_STATUS+0x100>
    80003574:	00002097          	auipc	ra,0x2
    80003578:	1cc080e7          	jalr	460(ra) # 80005740 <_Z11printStringPKc>
    for(Slab* tmp = slabs_free; tmp; tmp = tmp->next){
    8000357c:	01093483          	ld	s1,16(s2)
    80003580:	02048863          	beqz	s1,800035b0 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x1c8>
        printInt(tmp->get_number_of_active_objects());
    80003584:	00000613          	li	a2,0
    80003588:	00a00593          	li	a1,10
    8000358c:	0004a503          	lw	a0,0(s1)
    80003590:	00002097          	auipc	ra,0x2
    80003594:	348080e7          	jalr	840(ra) # 800058d8 <_Z8printIntiii>
        printString(" ");
    80003598:	00006517          	auipc	a0,0x6
    8000359c:	b8850513          	addi	a0,a0,-1144 # 80009120 <CONSOLE_STATUS+0x110>
    800035a0:	00002097          	auipc	ra,0x2
    800035a4:	1a0080e7          	jalr	416(ra) # 80005740 <_Z11printStringPKc>
    for(Slab* tmp = slabs_free; tmp; tmp = tmp->next){
    800035a8:	0084b483          	ld	s1,8(s1)
    800035ac:	fd5ff06f          	j	80003580 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x198>
    }
    printString("\n");
    800035b0:	00006517          	auipc	a0,0x6
    800035b4:	ca050513          	addi	a0,a0,-864 # 80009250 <CONSOLE_STATUS+0x240>
    800035b8:	00002097          	auipc	ra,0x2
    800035bc:	188080e7          	jalr	392(ra) # 80005740 <_Z11printStringPKc>
    printString("zaprljani: ");
    800035c0:	00006517          	auipc	a0,0x6
    800035c4:	b6850513          	addi	a0,a0,-1176 # 80009128 <CONSOLE_STATUS+0x118>
    800035c8:	00002097          	auipc	ra,0x2
    800035cc:	178080e7          	jalr	376(ra) # 80005740 <_Z11printStringPKc>
    for(Slab* tmp = slabs_partial; tmp; tmp = tmp->next){
    800035d0:	00893483          	ld	s1,8(s2)
    800035d4:	02048863          	beqz	s1,80003604 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x21c>
        printInt(tmp->get_number_of_active_objects());
    800035d8:	00000613          	li	a2,0
    800035dc:	00a00593          	li	a1,10
    800035e0:	0004a503          	lw	a0,0(s1)
    800035e4:	00002097          	auipc	ra,0x2
    800035e8:	2f4080e7          	jalr	756(ra) # 800058d8 <_Z8printIntiii>
        printString(" ");
    800035ec:	00006517          	auipc	a0,0x6
    800035f0:	b3450513          	addi	a0,a0,-1228 # 80009120 <CONSOLE_STATUS+0x110>
    800035f4:	00002097          	auipc	ra,0x2
    800035f8:	14c080e7          	jalr	332(ra) # 80005740 <_Z11printStringPKc>
    for(Slab* tmp = slabs_partial; tmp; tmp = tmp->next){
    800035fc:	0084b483          	ld	s1,8(s1)
    80003600:	fd5ff06f          	j	800035d4 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x1ec>
    }
    printString("\n");
    80003604:	00006517          	auipc	a0,0x6
    80003608:	c4c50513          	addi	a0,a0,-948 # 80009250 <CONSOLE_STATUS+0x240>
    8000360c:	00002097          	auipc	ra,0x2
    80003610:	134080e7          	jalr	308(ra) # 80005740 <_Z11printStringPKc>
    printString("puni: ");
    80003614:	00006517          	auipc	a0,0x6
    80003618:	b2450513          	addi	a0,a0,-1244 # 80009138 <CONSOLE_STATUS+0x128>
    8000361c:	00002097          	auipc	ra,0x2
    80003620:	124080e7          	jalr	292(ra) # 80005740 <_Z11printStringPKc>
    for(Slab* tmp = slabs_full; tmp; tmp = tmp->next){
    80003624:	00093483          	ld	s1,0(s2)
    80003628:	02048863          	beqz	s1,80003658 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x270>
        printInt(tmp->get_number_of_active_objects());
    8000362c:	00000613          	li	a2,0
    80003630:	00a00593          	li	a1,10
    80003634:	0004a503          	lw	a0,0(s1)
    80003638:	00002097          	auipc	ra,0x2
    8000363c:	2a0080e7          	jalr	672(ra) # 800058d8 <_Z8printIntiii>
        printString(" ");
    80003640:	00006517          	auipc	a0,0x6
    80003644:	ae050513          	addi	a0,a0,-1312 # 80009120 <CONSOLE_STATUS+0x110>
    80003648:	00002097          	auipc	ra,0x2
    8000364c:	0f8080e7          	jalr	248(ra) # 80005740 <_Z11printStringPKc>
    for(Slab* tmp = slabs_full; tmp; tmp = tmp->next){
    80003650:	0084b483          	ld	s1,8(s1)
    80003654:	fd5ff06f          	j	80003628 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x240>
    }
    printString("\n");
    80003658:	00006517          	auipc	a0,0x6
    8000365c:	bf850513          	addi	a0,a0,-1032 # 80009250 <CONSOLE_STATUS+0x240>
    80003660:	00002097          	auipc	ra,0x2
    80003664:	0e0080e7          	jalr	224(ra) # 80005740 <_Z11printStringPKc>

    // number of times cache shrank
    printString("Broj uspesnih smanjenja kesa: ");
    80003668:	00006517          	auipc	a0,0x6
    8000366c:	ad850513          	addi	a0,a0,-1320 # 80009140 <CONSOLE_STATUS+0x130>
    80003670:	00002097          	auipc	ra,0x2
    80003674:	0d0080e7          	jalr	208(ra) # 80005740 <_Z11printStringPKc>
    printInt(shrink);
    80003678:	00000613          	li	a2,0
    8000367c:	00a00593          	li	a1,10
    80003680:	07892503          	lw	a0,120(s2)
    80003684:	00002097          	auipc	ra,0x2
    80003688:	254080e7          	jalr	596(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    8000368c:	00006517          	auipc	a0,0x6
    80003690:	bc450513          	addi	a0,a0,-1084 # 80009250 <CONSOLE_STATUS+0x240>
    80003694:	00002097          	auipc	ra,0x2
    80003698:	0ac080e7          	jalr	172(ra) # 80005740 <_Z11printStringPKc>

    // metedata
    printString("Velicina metapodataka za kmem_cache_s: ");
    8000369c:	00006517          	auipc	a0,0x6
    800036a0:	ac450513          	addi	a0,a0,-1340 # 80009160 <CONSOLE_STATUS+0x150>
    800036a4:	00002097          	auipc	ra,0x2
    800036a8:	09c080e7          	jalr	156(ra) # 80005740 <_Z11printStringPKc>
    printInt(sizeof(kmem_cache_s));
    800036ac:	00000613          	li	a2,0
    800036b0:	00a00593          	li	a1,10
    800036b4:	08000513          	li	a0,128
    800036b8:	00002097          	auipc	ra,0x2
    800036bc:	220080e7          	jalr	544(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    800036c0:	00006517          	auipc	a0,0x6
    800036c4:	b9050513          	addi	a0,a0,-1136 # 80009250 <CONSOLE_STATUS+0x240>
    800036c8:	00002097          	auipc	ra,0x2
    800036cc:	078080e7          	jalr	120(ra) # 80005740 <_Z11printStringPKc>
    printString("Velicina metapodataka za Slab: ");
    800036d0:	00006517          	auipc	a0,0x6
    800036d4:	ab850513          	addi	a0,a0,-1352 # 80009188 <CONSOLE_STATUS+0x178>
    800036d8:	00002097          	auipc	ra,0x2
    800036dc:	068080e7          	jalr	104(ra) # 80005740 <_Z11printStringPKc>
    printInt(sizeof(Slab));
    800036e0:	00000613          	li	a2,0
    800036e4:	00a00593          	li	a1,10
    800036e8:	02000513          	li	a0,32
    800036ec:	00002097          	auipc	ra,0x2
    800036f0:	1ec080e7          	jalr	492(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    800036f4:	00006517          	auipc	a0,0x6
    800036f8:	b5c50513          	addi	a0,a0,-1188 # 80009250 <CONSOLE_STATUS+0x240>
    800036fc:	00002097          	auipc	ra,0x2
    80003700:	044080e7          	jalr	68(ra) # 80005740 <_Z11printStringPKc>

    // percentage of fullfilment of cache
    size_t neto = sizeof(kmem_cache_s) + num_of_slabs * sizeof(Slab) + num_active_obj * objsize;
    80003704:	00498a13          	addi	s4,s3,4
    80003708:	005a1a13          	slli	s4,s4,0x5
    8000370c:	06893783          	ld	a5,104(s2)
    80003710:	03093703          	ld	a4,48(s2)
    80003714:	02e787b3          	mul	a5,a5,a4
    80003718:	00fa0a33          	add	s4,s4,a5
    size_t bruto = (1 + num_of_slabs * size_in_blocks) * BLOCK_SIZE;
    8000371c:	04093483          	ld	s1,64(s2)
    80003720:	033484b3          	mul	s1,s1,s3
    80003724:	00148493          	addi	s1,s1,1
    80003728:	00c49493          	slli	s1,s1,0xc

    printString("Realna iskoriscenost prostora: ");
    8000372c:	00006517          	auipc	a0,0x6
    80003730:	a7c50513          	addi	a0,a0,-1412 # 800091a8 <CONSOLE_STATUS+0x198>
    80003734:	00002097          	auipc	ra,0x2
    80003738:	00c080e7          	jalr	12(ra) # 80005740 <_Z11printStringPKc>
    printInt(neto);
    8000373c:	00000613          	li	a2,0
    80003740:	00a00593          	li	a1,10
    80003744:	000a051b          	sext.w	a0,s4
    80003748:	00002097          	auipc	ra,0x2
    8000374c:	190080e7          	jalr	400(ra) # 800058d8 <_Z8printIntiii>
    printString("/");
    80003750:	00006517          	auipc	a0,0x6
    80003754:	a7850513          	addi	a0,a0,-1416 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80003758:	00002097          	auipc	ra,0x2
    8000375c:	fe8080e7          	jalr	-24(ra) # 80005740 <_Z11printStringPKc>
    printInt(bruto);
    80003760:	00000613          	li	a2,0
    80003764:	00a00593          	li	a1,10
    80003768:	0004851b          	sext.w	a0,s1
    8000376c:	00002097          	auipc	ra,0x2
    80003770:	16c080e7          	jalr	364(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    80003774:	00006517          	auipc	a0,0x6
    80003778:	adc50513          	addi	a0,a0,-1316 # 80009250 <CONSOLE_STATUS+0x240>
    8000377c:	00002097          	auipc	ra,0x2
    80003780:	fc4080e7          	jalr	-60(ra) # 80005740 <_Z11printStringPKc>
    printString("Efektivna iskoriscenost prostora: ");
    80003784:	00006517          	auipc	a0,0x6
    80003788:	a4c50513          	addi	a0,a0,-1460 # 800091d0 <CONSOLE_STATUS+0x1c0>
    8000378c:	00002097          	auipc	ra,0x2
    80003790:	fb4080e7          	jalr	-76(ra) # 80005740 <_Z11printStringPKc>
    printInt(num_active_obj * objsize);
    80003794:	06893503          	ld	a0,104(s2)
    80003798:	03093783          	ld	a5,48(s2)
    8000379c:	00000613          	li	a2,0
    800037a0:	00a00593          	li	a1,10
    800037a4:	02f5053b          	mulw	a0,a0,a5
    800037a8:	00002097          	auipc	ra,0x2
    800037ac:	130080e7          	jalr	304(ra) # 800058d8 <_Z8printIntiii>
    printString("/");
    800037b0:	00006517          	auipc	a0,0x6
    800037b4:	a1850513          	addi	a0,a0,-1512 # 800091c8 <CONSOLE_STATUS+0x1b8>
    800037b8:	00002097          	auipc	ra,0x2
    800037bc:	f88080e7          	jalr	-120(ra) # 80005740 <_Z11printStringPKc>
    size_t real_bruto = num_of_slabs * size_in_blocks * BLOCK_SIZE - num_of_slabs * sizeof(Slab);
    800037c0:	04093503          	ld	a0,64(s2)
    800037c4:	03350533          	mul	a0,a0,s3
    800037c8:	00751513          	slli	a0,a0,0x7
    800037cc:	41350533          	sub	a0,a0,s3
    800037d0:	00551513          	slli	a0,a0,0x5
    printInt(real_bruto);
    800037d4:	00000613          	li	a2,0
    800037d8:	00a00593          	li	a1,10
    800037dc:	0005051b          	sext.w	a0,a0
    800037e0:	00002097          	auipc	ra,0x2
    800037e4:	0f8080e7          	jalr	248(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    800037e8:	00006517          	auipc	a0,0x6
    800037ec:	a6850513          	addi	a0,a0,-1432 # 80009250 <CONSOLE_STATUS+0x240>
    800037f0:	00002097          	auipc	ra,0x2
    800037f4:	f50080e7          	jalr	-176(ra) # 80005740 <_Z11printStringPKc>

    printString("----------------------- END ----------------------\n");
    800037f8:	00006517          	auipc	a0,0x6
    800037fc:	a0050513          	addi	a0,a0,-1536 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80003800:	00002097          	auipc	ra,0x2
    80003804:	f40080e7          	jalr	-192(ra) # 80005740 <_Z11printStringPKc>
}
    80003808:	02813083          	ld	ra,40(sp)
    8000380c:	02013403          	ld	s0,32(sp)
    80003810:	01813483          	ld	s1,24(sp)
    80003814:	01013903          	ld	s2,16(sp)
    80003818:	00813983          	ld	s3,8(sp)
    8000381c:	00013a03          	ld	s4,0(sp)
    80003820:	03010113          	addi	sp,sp,48
    80003824:	00008067          	ret

0000000080003828 <_ZN12kmem_cache_s21print_info_all_cachesEv>:

void kmem_cache_s::print_info_all_caches() {
    80003828:	fe010113          	addi	sp,sp,-32
    8000382c:	00113c23          	sd	ra,24(sp)
    80003830:	00813823          	sd	s0,16(sp)
    80003834:	00913423          	sd	s1,8(sp)
    80003838:	02010413          	addi	s0,sp,32
    printString("\n\t\t\t ### PRINT ALL CACHES ###\t\t\t\n");
    8000383c:	00006517          	auipc	a0,0x6
    80003840:	9f450513          	addi	a0,a0,-1548 # 80009230 <CONSOLE_STATUS+0x220>
    80003844:	00002097          	auipc	ra,0x2
    80003848:	efc080e7          	jalr	-260(ra) # 80005740 <_Z11printStringPKc>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    8000384c:	00008497          	auipc	s1,0x8
    80003850:	b044b483          	ld	s1,-1276(s1) # 8000b350 <_ZN12kmem_cache_s4headE>
    80003854:	00048c63          	beqz	s1,8000386c <_ZN12kmem_cache_s21print_info_all_cachesEv+0x44>
        tmp->kmem_cache_info();
    80003858:	00048513          	mv	a0,s1
    8000385c:	00000097          	auipc	ra,0x0
    80003860:	b8c080e7          	jalr	-1140(ra) # 800033e8 <_ZN12kmem_cache_s15kmem_cache_infoEv>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003864:	0604b483          	ld	s1,96(s1)
    80003868:	fedff06f          	j	80003854 <_ZN12kmem_cache_s21print_info_all_cachesEv+0x2c>
    }
    printString("\t\t\t\t    ### END ###\t\t\t\n");
    8000386c:	00006517          	auipc	a0,0x6
    80003870:	9ec50513          	addi	a0,a0,-1556 # 80009258 <CONSOLE_STATUS+0x248>
    80003874:	00002097          	auipc	ra,0x2
    80003878:	ecc080e7          	jalr	-308(ra) # 80005740 <_Z11printStringPKc>
}
    8000387c:	01813083          	ld	ra,24(sp)
    80003880:	01013403          	ld	s0,16(sp)
    80003884:	00813483          	ld	s1,8(sp)
    80003888:	02010113          	addi	sp,sp,32
    8000388c:	00008067          	ret

0000000080003890 <_ZN4Slab42return_first_free_object_and_rearange_listEii>:

void *Slab::return_first_free_object_and_rearange_list(int number_of_objects_in_slab, int size_of_object) {
    80003890:	ff010113          	addi	sp,sp,-16
    80003894:	00813423          	sd	s0,8(sp)
    80003898:	01010413          	addi	s0,sp,16
    int i = 0;
    8000389c:	00000793          	li	a5,0
    while(i < number_of_objects_in_slab && (this->free_objects)[i]){
    800038a0:	00b7de63          	bge	a5,a1,800038bc <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x2c>
    800038a4:	01053703          	ld	a4,16(a0)
    800038a8:	00f70733          	add	a4,a4,a5
    800038ac:	00074703          	lbu	a4,0(a4)
    800038b0:	00070663          	beqz	a4,800038bc <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x2c>
        i++;
    800038b4:	0017879b          	addiw	a5,a5,1
    while(i < number_of_objects_in_slab && (this->free_objects)[i]){
    800038b8:	fe9ff06f          	j	800038a0 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x10>
    }
    if(i >= number_of_objects_in_slab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    800038bc:	02b7d663          	bge	a5,a1,800038e8 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x58>
    (this->free_objects)[i] = true;
    800038c0:	01053703          	ld	a4,16(a0)
    800038c4:	00f70733          	add	a4,a4,a5
    800038c8:	00100693          	li	a3,1
    800038cc:	00d70023          	sb	a3,0(a4)
    return (void*)(this->first_addr + size_of_object * i);
    800038d0:	01853503          	ld	a0,24(a0)
    800038d4:	02c787bb          	mulw	a5,a5,a2
    800038d8:	00f50533          	add	a0,a0,a5
}
    800038dc:	00813403          	ld	s0,8(sp)
    800038e0:	01010113          	addi	sp,sp,16
    800038e4:	00008067          	ret
    if(i >= number_of_objects_in_slab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    800038e8:	00000513          	li	a0,0
    800038ec:	ff1ff06f          	j	800038dc <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x4c>

00000000800038f0 <_ZN12kmem_cache_s16kmem_cache_allocEv>:
void *kmem_cache_s::kmem_cache_alloc() {
    800038f0:	fe010113          	addi	sp,sp,-32
    800038f4:	00113c23          	sd	ra,24(sp)
    800038f8:	00813823          	sd	s0,16(sp)
    800038fc:	00913423          	sd	s1,8(sp)
    80003900:	02010413          	addi	s0,sp,32
    80003904:	00050493          	mv	s1,a0
    if(num_slabs_partial != 0){
    80003908:	02053783          	ld	a5,32(a0)
    8000390c:	06079e63          	bnez	a5,80003988 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x98>
    else if(num_slabs_free != 0){
    80003910:	02853783          	ld	a5,40(a0)
    80003914:	0e078263          	beqz	a5,800039f8 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x108>
        void* addr1 = this->slabs_free->return_first_free_object_and_rearange_list(this->num, this->objsize);
    80003918:	03052603          	lw	a2,48(a0)
    8000391c:	03852583          	lw	a1,56(a0)
    80003920:	01053503          	ld	a0,16(a0)
    80003924:	00000097          	auipc	ra,0x0
    80003928:	f6c080e7          	jalr	-148(ra) # 80003890 <_ZN4Slab42return_first_free_object_and_rearange_listEii>
        this->num_active_obj++;
    8000392c:	0684b783          	ld	a5,104(s1)
    80003930:	00178793          	addi	a5,a5,1
    80003934:	06f4b423          	sd	a5,104(s1)
        Slab* tmp = this->slabs_free;
    80003938:	0104b783          	ld	a5,16(s1)
        this->slabs_free = this->slabs_free->next;
    8000393c:	0087b703          	ld	a4,8(a5)
    80003940:	00e4b823          	sd	a4,16(s1)
        tmp->next = this->slabs_partial;
    80003944:	0084b703          	ld	a4,8(s1)
    80003948:	00e7b423          	sd	a4,8(a5)
    void increment_num_of_active(){num_active++;}
    8000394c:	0007b703          	ld	a4,0(a5)
    80003950:	00170713          	addi	a4,a4,1
    80003954:	00e7b023          	sd	a4,0(a5)
        this->slabs_partial = tmp;
    80003958:	00f4b423          	sd	a5,8(s1)
        this->num_slabs_free--;
    8000395c:	0284b783          	ld	a5,40(s1)
    80003960:	fff78793          	addi	a5,a5,-1
    80003964:	02f4b423          	sd	a5,40(s1)
        this->num_slabs_partial++;
    80003968:	0204b783          	ld	a5,32(s1)
    8000396c:	00178793          	addi	a5,a5,1
    80003970:	02f4b023          	sd	a5,32(s1)
}
    80003974:	01813083          	ld	ra,24(sp)
    80003978:	01013403          	ld	s0,16(sp)
    8000397c:	00813483          	ld	s1,8(sp)
    80003980:	02010113          	addi	sp,sp,32
    80003984:	00008067          	ret
        void* addr = this->slabs_partial->return_first_free_object_and_rearange_list(this->num, this->objsize);
    80003988:	03052603          	lw	a2,48(a0)
    8000398c:	03852583          	lw	a1,56(a0)
    80003990:	00853503          	ld	a0,8(a0)
    80003994:	00000097          	auipc	ra,0x0
    80003998:	efc080e7          	jalr	-260(ra) # 80003890 <_ZN4Slab42return_first_free_object_and_rearange_listEii>
        this->num_active_obj++;
    8000399c:	0684b783          	ld	a5,104(s1)
    800039a0:	00178793          	addi	a5,a5,1
    800039a4:	06f4b423          	sd	a5,104(s1)
        this->slabs_partial->increment_num_of_active();
    800039a8:	0084b703          	ld	a4,8(s1)
    800039ac:	00073783          	ld	a5,0(a4)
    800039b0:	00178793          	addi	a5,a5,1
    800039b4:	00f73023          	sd	a5,0(a4)
        if(this->slabs_partial->get_number_of_active_objects() == this->num){
    800039b8:	0084b783          	ld	a5,8(s1)
    size_t get_number_of_active_objects(){return num_active;}
    800039bc:	0007b703          	ld	a4,0(a5)
    800039c0:	0384b683          	ld	a3,56(s1)
    800039c4:	fae698e3          	bne	a3,a4,80003974 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>
            this->slabs_partial = this->slabs_partial->next;
    800039c8:	0087b703          	ld	a4,8(a5)
    800039cc:	00e4b423          	sd	a4,8(s1)
            tmp->next = this->slabs_full;
    800039d0:	0004b703          	ld	a4,0(s1)
    800039d4:	00e7b423          	sd	a4,8(a5)
            this->slabs_full = tmp;
    800039d8:	00f4b023          	sd	a5,0(s1)
            this->num_slabs_partial--;
    800039dc:	0204b783          	ld	a5,32(s1)
    800039e0:	fff78793          	addi	a5,a5,-1
    800039e4:	02f4b023          	sd	a5,32(s1)
            this->num_slabs_full++;
    800039e8:	0184b783          	ld	a5,24(s1)
    800039ec:	00178793          	addi	a5,a5,1
    800039f0:	00f4bc23          	sd	a5,24(s1)
        return addr;
    800039f4:	f81ff06f          	j	80003974 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>
        create_free_slab();
    800039f8:	fffff097          	auipc	ra,0xfffff
    800039fc:	448080e7          	jalr	1096(ra) # 80002e40 <_ZN12kmem_cache_s16create_free_slabEv>
        this->growing = true;
    80003a00:	00100793          	li	a5,1
    80003a04:	06f48823          	sb	a5,112(s1)
        return nullptr;
    80003a08:	00000513          	li	a0,0
    80003a0c:	f69ff06f          	j	80003974 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x84>

0000000080003a10 <_ZN12kmem_cache_s7kmallocEm>:
void *kmem_cache_s::kmalloc(size_t size) {
    80003a10:	fe010113          	addi	sp,sp,-32
    80003a14:	00113c23          	sd	ra,24(sp)
    80003a18:	00813823          	sd	s0,16(sp)
    80003a1c:	00913423          	sd	s1,8(sp)
    80003a20:	01213023          	sd	s2,0(sp)
    80003a24:	02010413          	addi	s0,sp,32
    80003a28:	00050493          	mv	s1,a0
    const char* n = (const char*)concatenate_int_to_char_ptr((int)size);
    80003a2c:	0005051b          	sext.w	a0,a0
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	bf0080e7          	jalr	-1040(ra) # 80002620 <_Z27concatenate_int_to_char_ptri>
    80003a38:	00050913          	mv	s2,a0
    kmem_cache_s* tmp = check_if_name_exists(n);
    80003a3c:	00000097          	auipc	ra,0x0
    80003a40:	860080e7          	jalr	-1952(ra) # 8000329c <_ZN12kmem_cache_s20check_if_name_existsEPKc>
    if(tmp == nullptr){
    80003a44:	02050463          	beqz	a0,80003a6c <_ZN12kmem_cache_s7kmallocEm+0x5c>
    kmem_cache_s* cache = nullptr;
    80003a48:	00000513          	li	a0,0
    void* elem = cache->kmem_cache_alloc();
    80003a4c:	00000097          	auipc	ra,0x0
    80003a50:	ea4080e7          	jalr	-348(ra) # 800038f0 <_ZN12kmem_cache_s16kmem_cache_allocEv>
}
    80003a54:	01813083          	ld	ra,24(sp)
    80003a58:	01013403          	ld	s0,16(sp)
    80003a5c:	00813483          	ld	s1,8(sp)
    80003a60:	00013903          	ld	s2,0(sp)
    80003a64:	02010113          	addi	sp,sp,32
    80003a68:	00008067          	ret
        cache = (kmem_cache_s*)kmem_cache_create(n, size, nullptr, nullptr);
    80003a6c:	00000693          	li	a3,0
    80003a70:	00000613          	li	a2,0
    80003a74:	00048593          	mv	a1,s1
    80003a78:	00090513          	mv	a0,s2
    80003a7c:	fffff097          	auipc	ra,0xfffff
    80003a80:	4e8080e7          	jalr	1256(ra) # 80002f64 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>
        if(!cache)return nullptr;
    80003a84:	fc0514e3          	bnez	a0,80003a4c <_ZN12kmem_cache_s7kmallocEm+0x3c>
    80003a88:	fcdff06f          	j	80003a54 <_ZN12kmem_cache_s7kmallocEm+0x44>

0000000080003a8c <_ZN4Slab10clear_slabEiiPFvPvE>:

void Slab::clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *)) {
    if(dtor == nullptr)return;
    80003a8c:	08068863          	beqz	a3,80003b1c <_ZN4Slab10clear_slabEiiPFvPvE+0x90>
void Slab::clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *)) {
    80003a90:	fc010113          	addi	sp,sp,-64
    80003a94:	02113c23          	sd	ra,56(sp)
    80003a98:	02813823          	sd	s0,48(sp)
    80003a9c:	02913423          	sd	s1,40(sp)
    80003aa0:	03213023          	sd	s2,32(sp)
    80003aa4:	01313c23          	sd	s3,24(sp)
    80003aa8:	01413823          	sd	s4,16(sp)
    80003aac:	01513423          	sd	s5,8(sp)
    80003ab0:	04010413          	addi	s0,sp,64
    80003ab4:	00050913          	mv	s2,a0
    80003ab8:	00058993          	mv	s3,a1
    80003abc:	00060a93          	mv	s5,a2
    80003ac0:	00068a13          	mv	s4,a3
    for(int i = 0; i < num_of_objects_in_slab; i++){
    80003ac4:	00000493          	li	s1,0
    80003ac8:	0080006f          	j	80003ad0 <_ZN4Slab10clear_slabEiiPFvPvE+0x44>
    80003acc:	0014849b          	addiw	s1,s1,1
    80003ad0:	0334d463          	bge	s1,s3,80003af8 <_ZN4Slab10clear_slabEiiPFvPvE+0x6c>
        if(this->free_objects[i]){
    80003ad4:	01093783          	ld	a5,16(s2)
    80003ad8:	009787b3          	add	a5,a5,s1
    80003adc:	0007c783          	lbu	a5,0(a5)
    80003ae0:	fe0786e3          	beqz	a5,80003acc <_ZN4Slab10clear_slabEiiPFvPvE+0x40>
            dtor((void*)(this->first_addr + i * objsize));
    80003ae4:	01893503          	ld	a0,24(s2)
    80003ae8:	035487bb          	mulw	a5,s1,s5
    80003aec:	00f50533          	add	a0,a0,a5
    80003af0:	000a00e7          	jalr	s4
    80003af4:	fd9ff06f          	j	80003acc <_ZN4Slab10clear_slabEiiPFvPvE+0x40>
        }
    }
}
    80003af8:	03813083          	ld	ra,56(sp)
    80003afc:	03013403          	ld	s0,48(sp)
    80003b00:	02813483          	ld	s1,40(sp)
    80003b04:	02013903          	ld	s2,32(sp)
    80003b08:	01813983          	ld	s3,24(sp)
    80003b0c:	01013a03          	ld	s4,16(sp)
    80003b10:	00813a83          	ld	s5,8(sp)
    80003b14:	04010113          	addi	sp,sp,64
    80003b18:	00008067          	ret
    80003b1c:	00008067          	ret

0000000080003b20 <_ZN12kmem_cache_s18kmem_cache_destroyEm>:
int kmem_cache_s::kmem_cache_destroy(size_t addr) {
    80003b20:	fd010113          	addi	sp,sp,-48
    80003b24:	02113423          	sd	ra,40(sp)
    80003b28:	02813023          	sd	s0,32(sp)
    80003b2c:	00913c23          	sd	s1,24(sp)
    80003b30:	01213823          	sd	s2,16(sp)
    80003b34:	01313423          	sd	s3,8(sp)
    80003b38:	01413023          	sd	s4,0(sp)
    80003b3c:	03010413          	addi	s0,sp,48
    80003b40:	00050493          	mv	s1,a0
    80003b44:	00058a13          	mv	s4,a1
    Slab *prev = nullptr, *tmp = this->slabs_full;
    80003b48:	00053903          	ld	s2,0(a0)
    80003b4c:	01c0006f          	j	80003b68 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x48>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003b50:	00090593          	mv	a1,s2
    80003b54:	00008517          	auipc	a0,0x8
    80003b58:	80c50513          	addi	a0,a0,-2036 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	378080e7          	jalr	888(ra) # 80001ed4 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003b64:	00098913          	mv	s2,s3
    while (tmp) {
    80003b68:	04090663          	beqz	s2,80003bb4 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x94>
        tmp = tmp->next;
    80003b6c:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    80003b70:	0504b683          	ld	a3,80(s1)
    80003b74:	0304a603          	lw	a2,48(s1)
    80003b78:	0384a583          	lw	a1,56(s1)
    80003b7c:	00090513          	mv	a0,s2
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	f0c080e7          	jalr	-244(ra) # 80003a8c <_ZN4Slab10clear_slabEiiPFvPvE>
    80003b88:	00007797          	auipc	a5,0x7
    80003b8c:	7d07c783          	lbu	a5,2000(a5) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003b90:	fc0790e3          	bnez	a5,80003b50 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x30>
    80003b94:	00007517          	auipc	a0,0x7
    80003b98:	7cc50513          	addi	a0,a0,1996 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003b9c:	ffffe097          	auipc	ra,0xffffe
    80003ba0:	038080e7          	jalr	56(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80003ba4:	00100793          	li	a5,1
    80003ba8:	00007717          	auipc	a4,0x7
    80003bac:	7af70823          	sb	a5,1968(a4) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003bb0:	fa1ff06f          	j	80003b50 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x30>
    prev = nullptr; tmp = this->slabs_partial;
    80003bb4:	0084b903          	ld	s2,8(s1)
    80003bb8:	0380006f          	j	80003bf0 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xd0>
    80003bbc:	00007517          	auipc	a0,0x7
    80003bc0:	7a450513          	addi	a0,a0,1956 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003bc4:	ffffe097          	auipc	ra,0xffffe
    80003bc8:	010080e7          	jalr	16(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80003bcc:	00100793          	li	a5,1
    80003bd0:	00007717          	auipc	a4,0x7
    80003bd4:	78f70423          	sb	a5,1928(a4) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003bd8:	00090593          	mv	a1,s2
    80003bdc:	00007517          	auipc	a0,0x7
    80003be0:	78450513          	addi	a0,a0,1924 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003be4:	ffffe097          	auipc	ra,0xffffe
    80003be8:	2f0080e7          	jalr	752(ra) # 80001ed4 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003bec:	00098913          	mv	s2,s3
    while (tmp) {
    80003bf0:	02090863          	beqz	s2,80003c20 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x100>
        tmp = tmp->next;
    80003bf4:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    80003bf8:	0504b683          	ld	a3,80(s1)
    80003bfc:	0304a603          	lw	a2,48(s1)
    80003c00:	0384a583          	lw	a1,56(s1)
    80003c04:	00090513          	mv	a0,s2
    80003c08:	00000097          	auipc	ra,0x0
    80003c0c:	e84080e7          	jalr	-380(ra) # 80003a8c <_ZN4Slab10clear_slabEiiPFvPvE>
    80003c10:	00007797          	auipc	a5,0x7
    80003c14:	7487c783          	lbu	a5,1864(a5) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003c18:	fc0790e3          	bnez	a5,80003bd8 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xb8>
    80003c1c:	fa1ff06f          	j	80003bbc <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x9c>
    prev = nullptr; tmp = this->slabs_free;
    80003c20:	0104b903          	ld	s2,16(s1)
    80003c24:	0380006f          	j	80003c5c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x13c>
    80003c28:	00007517          	auipc	a0,0x7
    80003c2c:	73850513          	addi	a0,a0,1848 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003c30:	ffffe097          	auipc	ra,0xffffe
    80003c34:	fa4080e7          	jalr	-92(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80003c38:	00100793          	li	a5,1
    80003c3c:	00007717          	auipc	a4,0x7
    80003c40:	70f70e23          	sb	a5,1820(a4) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003c44:	00090593          	mv	a1,s2
    80003c48:	00007517          	auipc	a0,0x7
    80003c4c:	71850513          	addi	a0,a0,1816 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	284080e7          	jalr	644(ra) # 80001ed4 <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003c58:	00098913          	mv	s2,s3
    while (tmp) {
    80003c5c:	02090863          	beqz	s2,80003c8c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x16c>
        tmp = tmp->next;
    80003c60:	00893983          	ld	s3,8(s2)
        prev->clear_slab((int)num, (int)objsize, dtor);
    80003c64:	0504b683          	ld	a3,80(s1)
    80003c68:	0304a603          	lw	a2,48(s1)
    80003c6c:	0384a583          	lw	a1,56(s1)
    80003c70:	00090513          	mv	a0,s2
    80003c74:	00000097          	auipc	ra,0x0
    80003c78:	e18080e7          	jalr	-488(ra) # 80003a8c <_ZN4Slab10clear_slabEiiPFvPvE>
    80003c7c:	00007797          	auipc	a5,0x7
    80003c80:	6dc7c783          	lbu	a5,1756(a5) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003c84:	fc0790e3          	bnez	a5,80003c44 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x124>
    80003c88:	fa1ff06f          	j	80003c28 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x108>
    kmem_cache_s* cache = kmem_cache_s::head, *prev_cache = nullptr;
    80003c8c:	00007797          	auipc	a5,0x7
    80003c90:	6c47b783          	ld	a5,1732(a5) # 8000b350 <_ZN12kmem_cache_s4headE>
    80003c94:	02c0006f          	j	80003cc0 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1a0>
    80003c98:	00007517          	auipc	a0,0x7
    80003c9c:	6c850513          	addi	a0,a0,1736 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	f34080e7          	jalr	-204(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80003ca8:	00100793          	li	a5,1
    80003cac:	00007717          	auipc	a4,0x7
    80003cb0:	6af70623          	sb	a5,1708(a4) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003cb4:	0340006f          	j	80003ce8 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1c8>
        prev_cache = cache;
    80003cb8:	00078913          	mv	s2,a5
        cache = cache->next;
    80003cbc:	0607b783          	ld	a5,96(a5)
    while(cache){
    80003cc0:	04078263          	beqz	a5,80003d04 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1e4>
        if((size_t)cache == addr){
    80003cc4:	00078493          	mv	s1,a5
    80003cc8:	ff4798e3          	bne	a5,s4,80003cb8 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x198>
            if(prev_cache){
    80003ccc:	fe0906e3          	beqz	s2,80003cb8 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x198>
                prev_cache->next = cache->next;
    80003cd0:	0607b703          	ld	a4,96(a5)
    80003cd4:	06e93023          	sd	a4,96(s2)
                cache->next = nullptr;
    80003cd8:	0607b023          	sd	zero,96(a5)
    80003cdc:	00007797          	auipc	a5,0x7
    80003ce0:	67c7c783          	lbu	a5,1660(a5) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003ce4:	fa078ae3          	beqz	a5,80003c98 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x178>
                BuddySystem::getInstance().buddyFree((size_t)cache);
    80003ce8:	00048593          	mv	a1,s1
    80003cec:	00007517          	auipc	a0,0x7
    80003cf0:	67450513          	addi	a0,a0,1652 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003cf4:	ffffe097          	auipc	ra,0xffffe
    80003cf8:	1e0080e7          	jalr	480(ra) # 80001ed4 <_ZN11BuddySystem9buddyFreeEm>
                return 0;
    80003cfc:	00000513          	li	a0,0
    80003d00:	0080006f          	j	80003d08 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1e8>
    return -1;
    80003d04:	fff00513          	li	a0,-1
}
    80003d08:	02813083          	ld	ra,40(sp)
    80003d0c:	02013403          	ld	s0,32(sp)
    80003d10:	01813483          	ld	s1,24(sp)
    80003d14:	01013903          	ld	s2,16(sp)
    80003d18:	00813983          	ld	s3,8(sp)
    80003d1c:	00013a03          	ld	s4,0(sp)
    80003d20:	03010113          	addi	sp,sp,48
    80003d24:	00008067          	ret

0000000080003d28 <_ZN6Thread11wrapper_runEPv>:
    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));

}

void Thread::wrapper_run(void* thread) {
    80003d28:	ff010113          	addi	sp,sp,-16
    80003d2c:	00113423          	sd	ra,8(sp)
    80003d30:	00813023          	sd	s0,0(sp)
    80003d34:	01010413          	addi	s0,sp,16
    ((Thread*)(thread))->run();
    80003d38:	00053783          	ld	a5,0(a0)
    80003d3c:	0107b783          	ld	a5,16(a5)
    80003d40:	000780e7          	jalr	a5
}
    80003d44:	00813083          	ld	ra,8(sp)
    80003d48:	00013403          	ld	s0,0(sp)
    80003d4c:	01010113          	addi	sp,sp,16
    80003d50:	00008067          	ret

0000000080003d54 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80003d54:	fe010113          	addi	sp,sp,-32
    80003d58:	00113c23          	sd	ra,24(sp)
    80003d5c:	00813823          	sd	s0,16(sp)
    80003d60:	00913423          	sd	s1,8(sp)
    80003d64:	02010413          	addi	s0,sp,32
    80003d68:	00007797          	auipc	a5,0x7
    80003d6c:	46878793          	addi	a5,a5,1128 # 8000b1d0 <_ZTV9Semaphore+0x10>
    80003d70:	00f53023          	sd	a5,0(a0)
    delete (MySemaphore*)myHandle;
    80003d74:	00853483          	ld	s1,8(a0)
    80003d78:	02048863          	beqz	s1,80003da8 <_ZN9SemaphoreD1Ev+0x54>
    ~MySemaphore(){ sem_close(this);}
    80003d7c:	00048513          	mv	a0,s1
    80003d80:	ffffe097          	auipc	ra,0xffffe
    80003d84:	49c080e7          	jalr	1180(ra) # 8000221c <_ZN11MySemaphore9sem_closeEPS_>
    80003d88:	00007797          	auipc	a5,0x7
    80003d8c:	5687c783          	lbu	a5,1384(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003d90:	02078663          	beqz	a5,80003dbc <_ZN9SemaphoreD1Ev+0x68>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80003d94:	00048593          	mv	a1,s1
    80003d98:	00007517          	auipc	a0,0x7
    80003d9c:	56050513          	addi	a0,a0,1376 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80003da0:	00001097          	auipc	ra,0x1
    80003da4:	3f8080e7          	jalr	1016(ra) # 80005198 <_ZN15MemoryAllocator11memory_freeEPv>
}
    80003da8:	01813083          	ld	ra,24(sp)
    80003dac:	01013403          	ld	s0,16(sp)
    80003db0:	00813483          	ld	s1,8(sp)
    80003db4:	02010113          	addi	sp,sp,32
    80003db8:	00008067          	ret
    MemoryAllocator(){
    80003dbc:	00007617          	auipc	a2,0x7
    80003dc0:	53c60613          	addi	a2,a2,1340 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80003dc4:	00007797          	auipc	a5,0x7
    80003dc8:	4d47b783          	ld	a5,1236(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003dcc:	0007b703          	ld	a4,0(a5)
    80003dd0:	00007797          	auipc	a5,0x7
    80003dd4:	4807b783          	ld	a5,1152(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003dd8:	0007b783          	ld	a5,0(a5)
    80003ddc:	40f706b3          	sub	a3,a4,a5
    80003de0:	0036d693          	srli	a3,a3,0x3
    80003de4:	00d787b3          	add	a5,a5,a3
    80003de8:	00178793          	addi	a5,a5,1
    80003dec:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80003df0:	fff70713          	addi	a4,a4,-1
    80003df4:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80003df8:	40f70733          	sub	a4,a4,a5
    80003dfc:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80003e00:	03f7f693          	andi	a3,a5,63
    80003e04:	00068663          	beqz	a3,80003e10 <_ZN9SemaphoreD1Ev+0xbc>
    80003e08:	04000613          	li	a2,64
    80003e0c:	40d606b3          	sub	a3,a2,a3
    80003e10:	00d787b3          	add	a5,a5,a3
    80003e14:	00007697          	auipc	a3,0x7
    80003e18:	4ef6b223          	sd	a5,1252(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80003e1c:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80003e20:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80003e24:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80003e28:	00100793          	li	a5,1
    80003e2c:	00007717          	auipc	a4,0x7
    80003e30:	4cf70223          	sb	a5,1220(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003e34:	f61ff06f          	j	80003d94 <_ZN9SemaphoreD1Ev+0x40>

0000000080003e38 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80003e38:	fe010113          	addi	sp,sp,-32
    80003e3c:	00113c23          	sd	ra,24(sp)
    80003e40:	00813823          	sd	s0,16(sp)
    80003e44:	00913423          	sd	s1,8(sp)
    80003e48:	02010413          	addi	s0,sp,32
    80003e4c:	00007797          	auipc	a5,0x7
    80003e50:	35c78793          	addi	a5,a5,860 # 8000b1a8 <_ZTV6Thread+0x10>
    80003e54:	00f53023          	sd	a5,0(a0)
    delete (TCB*)(myHandle);
    80003e58:	00853483          	ld	s1,8(a0)
    80003e5c:	04048263          	beqz	s1,80003ea0 <_ZN6ThreadD1Ev+0x68>
    80003e60:	00007797          	auipc	a5,0x7
    80003e64:	4907c783          	lbu	a5,1168(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003e68:	04078663          	beqz	a5,80003eb4 <_ZN6ThreadD1Ev+0x7c>

class TCB{
public:

    ~TCB(){
        MemoryAllocator::getInstance().memory_free((void*)stack);
    80003e6c:	0104b583          	ld	a1,16(s1)
    80003e70:	00007517          	auipc	a0,0x7
    80003e74:	48850513          	addi	a0,a0,1160 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80003e78:	00001097          	auipc	ra,0x1
    80003e7c:	320080e7          	jalr	800(ra) # 80005198 <_ZN15MemoryAllocator11memory_freeEPv>
    80003e80:	00007797          	auipc	a5,0x7
    80003e84:	4707c783          	lbu	a5,1136(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003e88:	0a078463          	beqz	a5,80003f30 <_ZN6ThreadD1Ev+0xf8>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80003e8c:	00048593          	mv	a1,s1
    80003e90:	00007517          	auipc	a0,0x7
    80003e94:	46850513          	addi	a0,a0,1128 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80003e98:	00001097          	auipc	ra,0x1
    80003e9c:	300080e7          	jalr	768(ra) # 80005198 <_ZN15MemoryAllocator11memory_freeEPv>
}
    80003ea0:	01813083          	ld	ra,24(sp)
    80003ea4:	01013403          	ld	s0,16(sp)
    80003ea8:	00813483          	ld	s1,8(sp)
    80003eac:	02010113          	addi	sp,sp,32
    80003eb0:	00008067          	ret
    MemoryAllocator(){
    80003eb4:	00007617          	auipc	a2,0x7
    80003eb8:	44460613          	addi	a2,a2,1092 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80003ebc:	00007797          	auipc	a5,0x7
    80003ec0:	3dc7b783          	ld	a5,988(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003ec4:	0007b703          	ld	a4,0(a5)
    80003ec8:	00007797          	auipc	a5,0x7
    80003ecc:	3887b783          	ld	a5,904(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003ed0:	0007b783          	ld	a5,0(a5)
    80003ed4:	40f706b3          	sub	a3,a4,a5
    80003ed8:	0036d693          	srli	a3,a3,0x3
    80003edc:	00d787b3          	add	a5,a5,a3
    80003ee0:	00178793          	addi	a5,a5,1
    80003ee4:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80003ee8:	fff70713          	addi	a4,a4,-1
    80003eec:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80003ef0:	40f70733          	sub	a4,a4,a5
    80003ef4:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80003ef8:	03f7f693          	andi	a3,a5,63
    80003efc:	00068663          	beqz	a3,80003f08 <_ZN6ThreadD1Ev+0xd0>
    80003f00:	04000613          	li	a2,64
    80003f04:	40d606b3          	sub	a3,a2,a3
    80003f08:	00d787b3          	add	a5,a5,a3
    80003f0c:	00007697          	auipc	a3,0x7
    80003f10:	3ef6b623          	sd	a5,1004(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80003f14:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80003f18:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80003f1c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80003f20:	00100793          	li	a5,1
    80003f24:	00007717          	auipc	a4,0x7
    80003f28:	3cf70623          	sb	a5,972(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003f2c:	f41ff06f          	j	80003e6c <_ZN6ThreadD1Ev+0x34>
    MemoryAllocator(){
    80003f30:	00007617          	auipc	a2,0x7
    80003f34:	3c860613          	addi	a2,a2,968 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80003f38:	00007797          	auipc	a5,0x7
    80003f3c:	3607b783          	ld	a5,864(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003f40:	0007b703          	ld	a4,0(a5)
    80003f44:	00007797          	auipc	a5,0x7
    80003f48:	30c7b783          	ld	a5,780(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003f4c:	0007b783          	ld	a5,0(a5)
    80003f50:	40f706b3          	sub	a3,a4,a5
    80003f54:	0036d693          	srli	a3,a3,0x3
    80003f58:	00d787b3          	add	a5,a5,a3
    80003f5c:	00178793          	addi	a5,a5,1
    80003f60:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80003f64:	fff70713          	addi	a4,a4,-1
    80003f68:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80003f6c:	40f70733          	sub	a4,a4,a5
    80003f70:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80003f74:	03f7f693          	andi	a3,a5,63
    80003f78:	00068663          	beqz	a3,80003f84 <_ZN6ThreadD1Ev+0x14c>
    80003f7c:	04000613          	li	a2,64
    80003f80:	40d606b3          	sub	a3,a2,a3
    80003f84:	00d787b3          	add	a5,a5,a3
    80003f88:	00007697          	auipc	a3,0x7
    80003f8c:	36f6b823          	sd	a5,880(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80003f90:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80003f94:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80003f98:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80003f9c:	00100793          	li	a5,1
    80003fa0:	00007717          	auipc	a4,0x7
    80003fa4:	34f70823          	sb	a5,848(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003fa8:	ee5ff06f          	j	80003e8c <_ZN6ThreadD1Ev+0x54>

0000000080003fac <_Znwm>:
void* operator new(size_t n) {
    80003fac:	ff010113          	addi	sp,sp,-16
    80003fb0:	00113423          	sd	ra,8(sp)
    80003fb4:	00813023          	sd	s0,0(sp)
    80003fb8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80003fbc:	ffffd097          	auipc	ra,0xffffd
    80003fc0:	288080e7          	jalr	648(ra) # 80001244 <mem_alloc>
}
    80003fc4:	00813083          	ld	ra,8(sp)
    80003fc8:	00013403          	ld	s0,0(sp)
    80003fcc:	01010113          	addi	sp,sp,16
    80003fd0:	00008067          	ret

0000000080003fd4 <_Znam>:
void* operator new[](size_t n) {
    80003fd4:	ff010113          	addi	sp,sp,-16
    80003fd8:	00113423          	sd	ra,8(sp)
    80003fdc:	00813023          	sd	s0,0(sp)
    80003fe0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80003fe4:	ffffd097          	auipc	ra,0xffffd
    80003fe8:	260080e7          	jalr	608(ra) # 80001244 <mem_alloc>
}
    80003fec:	00813083          	ld	ra,8(sp)
    80003ff0:	00013403          	ld	s0,0(sp)
    80003ff4:	01010113          	addi	sp,sp,16
    80003ff8:	00008067          	ret

0000000080003ffc <_ZdlPv>:
void operator delete(void* ptr) {
    80003ffc:	ff010113          	addi	sp,sp,-16
    80004000:	00113423          	sd	ra,8(sp)
    80004004:	00813023          	sd	s0,0(sp)
    80004008:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000400c:	ffffd097          	auipc	ra,0xffffd
    80004010:	290080e7          	jalr	656(ra) # 8000129c <mem_free>
}
    80004014:	00813083          	ld	ra,8(sp)
    80004018:	00013403          	ld	s0,0(sp)
    8000401c:	01010113          	addi	sp,sp,16
    80004020:	00008067          	ret

0000000080004024 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80004024:	fe010113          	addi	sp,sp,-32
    80004028:	00113c23          	sd	ra,24(sp)
    8000402c:	00813823          	sd	s0,16(sp)
    80004030:	00913423          	sd	s1,8(sp)
    80004034:	02010413          	addi	s0,sp,32
    80004038:	00050493          	mv	s1,a0
}
    8000403c:	00000097          	auipc	ra,0x0
    80004040:	dfc080e7          	jalr	-516(ra) # 80003e38 <_ZN6ThreadD1Ev>
    80004044:	00048513          	mv	a0,s1
    80004048:	00000097          	auipc	ra,0x0
    8000404c:	fb4080e7          	jalr	-76(ra) # 80003ffc <_ZdlPv>
    80004050:	01813083          	ld	ra,24(sp)
    80004054:	01013403          	ld	s0,16(sp)
    80004058:	00813483          	ld	s1,8(sp)
    8000405c:	02010113          	addi	sp,sp,32
    80004060:	00008067          	ret

0000000080004064 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80004064:	fe010113          	addi	sp,sp,-32
    80004068:	00113c23          	sd	ra,24(sp)
    8000406c:	00813823          	sd	s0,16(sp)
    80004070:	00913423          	sd	s1,8(sp)
    80004074:	02010413          	addi	s0,sp,32
    80004078:	00050493          	mv	s1,a0
}
    8000407c:	00000097          	auipc	ra,0x0
    80004080:	cd8080e7          	jalr	-808(ra) # 80003d54 <_ZN9SemaphoreD1Ev>
    80004084:	00048513          	mv	a0,s1
    80004088:	00000097          	auipc	ra,0x0
    8000408c:	f74080e7          	jalr	-140(ra) # 80003ffc <_ZdlPv>
    80004090:	01813083          	ld	ra,24(sp)
    80004094:	01013403          	ld	s0,16(sp)
    80004098:	00813483          	ld	s1,8(sp)
    8000409c:	02010113          	addi	sp,sp,32
    800040a0:	00008067          	ret

00000000800040a4 <_ZdaPv>:
void operator delete[](void* ptr) {
    800040a4:	ff010113          	addi	sp,sp,-16
    800040a8:	00113423          	sd	ra,8(sp)
    800040ac:	00813023          	sd	s0,0(sp)
    800040b0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800040b4:	ffffd097          	auipc	ra,0xffffd
    800040b8:	1e8080e7          	jalr	488(ra) # 8000129c <mem_free>
}
    800040bc:	00813083          	ld	ra,8(sp)
    800040c0:	00013403          	ld	s0,0(sp)
    800040c4:	01010113          	addi	sp,sp,16
    800040c8:	00008067          	ret

00000000800040cc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void *arg) {
    800040cc:	f9010113          	addi	sp,sp,-112
    800040d0:	06113423          	sd	ra,104(sp)
    800040d4:	06813023          	sd	s0,96(sp)
    800040d8:	04913c23          	sd	s1,88(sp)
    800040dc:	05213823          	sd	s2,80(sp)
    800040e0:	05313423          	sd	s3,72(sp)
    800040e4:	07010413          	addi	s0,sp,112
    800040e8:	00050493          	mv	s1,a0
    800040ec:	00058913          	mv	s2,a1
    800040f0:	00060993          	mv	s3,a2
    800040f4:	00007797          	auipc	a5,0x7
    800040f8:	0b478793          	addi	a5,a5,180 # 8000b1a8 <_ZTV6Thread+0x10>
    800040fc:	00f53023          	sd	a5,0(a0)
    uint64 a4 = (body != nullptr) ? (uint64)mem_alloc(DEFAULT_STACK_SIZE) : 0;
    80004100:	06058063          	beqz	a1,80004160 <_ZN6ThreadC1EPFvPvES0_+0x94>
    80004104:	00001537          	lui	a0,0x1
    80004108:	ffffd097          	auipc	ra,0xffffd
    8000410c:	13c080e7          	jalr	316(ra) # 80001244 <mem_alloc>
    a1 = (uint64)&myHandle;
    80004110:	00848493          	addi	s1,s1,8
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80004114:	01100793          	li	a5,17
    80004118:	f8f43823          	sd	a5,-112(s0)
    8000411c:	f8943c23          	sd	s1,-104(s0)
    80004120:	fb243023          	sd	s2,-96(s0)
    80004124:	fb343423          	sd	s3,-88(s0)
    80004128:	faa43823          	sd	a0,-80(s0)
    8000412c:	fa043c23          	sd	zero,-72(s0)
    80004130:	fc043023          	sd	zero,-64(s0)
    80004134:	fc043423          	sd	zero,-56(s0)
    abi::sys_call(reinterpret_cast<void *>(empty));
    80004138:	f9040513          	addi	a0,s0,-112
    8000413c:	00001097          	auipc	ra,0x1
    80004140:	1e4080e7          	jalr	484(ra) # 80005320 <_ZN3abi8sys_callEPv>
}
    80004144:	06813083          	ld	ra,104(sp)
    80004148:	06013403          	ld	s0,96(sp)
    8000414c:	05813483          	ld	s1,88(sp)
    80004150:	05013903          	ld	s2,80(sp)
    80004154:	04813983          	ld	s3,72(sp)
    80004158:	07010113          	addi	sp,sp,112
    8000415c:	00008067          	ret
    uint64 a4 = (body != nullptr) ? (uint64)mem_alloc(DEFAULT_STACK_SIZE) : 0;
    80004160:	00000513          	li	a0,0
    80004164:	fadff06f          	j	80004110 <_ZN6ThreadC1EPFvPvES0_+0x44>

0000000080004168 <_ZN6Thread5startEv>:
int Thread::start() {
    80004168:	ff010113          	addi	sp,sp,-16
    8000416c:	00113423          	sd	ra,8(sp)
    80004170:	00813023          	sd	s0,0(sp)
    80004174:	01010413          	addi	s0,sp,16
    put_in_scheduler(myHandle);
    80004178:	00853503          	ld	a0,8(a0) # 1008 <_entry-0x7fffeff8>
    8000417c:	ffffd097          	auipc	ra,0xffffd
    80004180:	500080e7          	jalr	1280(ra) # 8000167c <put_in_scheduler>
}
    80004184:	00000513          	li	a0,0
    80004188:	00813083          	ld	ra,8(sp)
    8000418c:	00013403          	ld	s0,0(sp)
    80004190:	01010113          	addi	sp,sp,16
    80004194:	00008067          	ret

0000000080004198 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80004198:	ff010113          	addi	sp,sp,-16
    8000419c:	00113423          	sd	ra,8(sp)
    800041a0:	00813023          	sd	s0,0(sp)
    800041a4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800041a8:	ffffd097          	auipc	ra,0xffffd
    800041ac:	1dc080e7          	jalr	476(ra) # 80001384 <thread_dispatch>
}
    800041b0:	00813083          	ld	ra,8(sp)
    800041b4:	00013403          	ld	s0,0(sp)
    800041b8:	01010113          	addi	sp,sp,16
    800041bc:	00008067          	ret

00000000800041c0 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800041c0:	ff010113          	addi	sp,sp,-16
    800041c4:	00113423          	sd	ra,8(sp)
    800041c8:	00813023          	sd	s0,0(sp)
    800041cc:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800041d0:	ffffd097          	auipc	ra,0xffffd
    800041d4:	258080e7          	jalr	600(ra) # 80001428 <time_sleep>
}
    800041d8:	00813083          	ld	ra,8(sp)
    800041dc:	00013403          	ld	s0,0(sp)
    800041e0:	01010113          	addi	sp,sp,16
    800041e4:	00008067          	ret

00000000800041e8 <_ZN14PeriodicThread3runEv>:
    time = period;
    flag_stop = true;
    set_periodic((thread_t)this);
}

void PeriodicThread::run() {
    800041e8:	fe010113          	addi	sp,sp,-32
    800041ec:	00113c23          	sd	ra,24(sp)
    800041f0:	00813823          	sd	s0,16(sp)
    800041f4:	00913423          	sd	s1,8(sp)
    800041f8:	02010413          	addi	s0,sp,32
    800041fc:	00050493          	mv	s1,a0
    while(flag_stop){
    80004200:	0184c783          	lbu	a5,24(s1)
    80004204:	02078263          	beqz	a5,80004228 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80004208:	0004b783          	ld	a5,0(s1)
    8000420c:	0187b783          	ld	a5,24(a5)
    80004210:	00048513          	mv	a0,s1
    80004214:	000780e7          	jalr	a5
        sleep(time);
    80004218:	0104b503          	ld	a0,16(s1)
    8000421c:	00000097          	auipc	ra,0x0
    80004220:	fa4080e7          	jalr	-92(ra) # 800041c0 <_ZN6Thread5sleepEm>
    while(flag_stop){
    80004224:	fddff06f          	j	80004200 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80004228:	01813083          	ld	ra,24(sp)
    8000422c:	01013403          	ld	s0,16(sp)
    80004230:	00813483          	ld	s1,8(sp)
    80004234:	02010113          	addi	sp,sp,32
    80004238:	00008067          	ret

000000008000423c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000423c:	fa010113          	addi	sp,sp,-96
    80004240:	04113c23          	sd	ra,88(sp)
    80004244:	04813823          	sd	s0,80(sp)
    80004248:	04913423          	sd	s1,72(sp)
    8000424c:	06010413          	addi	s0,sp,96
    80004250:	00050493          	mv	s1,a0
    80004254:	00007797          	auipc	a5,0x7
    80004258:	f5478793          	addi	a5,a5,-172 # 8000b1a8 <_ZTV6Thread+0x10>
    8000425c:	00f53023          	sd	a5,0(a0)
    uint64 a4 = (uint64)mem_alloc(DEFAULT_STACK_SIZE);
    80004260:	00001537          	lui	a0,0x1
    80004264:	ffffd097          	auipc	ra,0xffffd
    80004268:	fe0080e7          	jalr	-32(ra) # 80001244 <mem_alloc>
    a1 = (uint64)&myHandle;
    8000426c:	00848793          	addi	a5,s1,8
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80004270:	01100713          	li	a4,17
    80004274:	fae43023          	sd	a4,-96(s0)
    80004278:	faf43423          	sd	a5,-88(s0)
    8000427c:	00000797          	auipc	a5,0x0
    80004280:	aac78793          	addi	a5,a5,-1364 # 80003d28 <_ZN6Thread11wrapper_runEPv>
    80004284:	faf43823          	sd	a5,-80(s0)
    80004288:	fa943c23          	sd	s1,-72(s0)
    8000428c:	fca43023          	sd	a0,-64(s0)
    80004290:	fc043423          	sd	zero,-56(s0)
    80004294:	fc043823          	sd	zero,-48(s0)
    80004298:	fc043c23          	sd	zero,-40(s0)
    abi::sys_call(reinterpret_cast<void *>(empty));
    8000429c:	fa040513          	addi	a0,s0,-96
    800042a0:	00001097          	auipc	ra,0x1
    800042a4:	080080e7          	jalr	128(ra) # 80005320 <_ZN3abi8sys_callEPv>
}
    800042a8:	05813083          	ld	ra,88(sp)
    800042ac:	05013403          	ld	s0,80(sp)
    800042b0:	04813483          	ld	s1,72(sp)
    800042b4:	06010113          	addi	sp,sp,96
    800042b8:	00008067          	ret

00000000800042bc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800042bc:	ff010113          	addi	sp,sp,-16
    800042c0:	00113423          	sd	ra,8(sp)
    800042c4:	00813023          	sd	s0,0(sp)
    800042c8:	01010413          	addi	s0,sp,16
    800042cc:	00007797          	auipc	a5,0x7
    800042d0:	f0478793          	addi	a5,a5,-252 # 8000b1d0 <_ZTV9Semaphore+0x10>
    800042d4:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    sem_open(&myHandle, init);
    800042d8:	02059593          	slli	a1,a1,0x20
    800042dc:	0205d593          	srli	a1,a1,0x20
    800042e0:	00850513          	addi	a0,a0,8
    800042e4:	ffffd097          	auipc	ra,0xffffd
    800042e8:	1a4080e7          	jalr	420(ra) # 80001488 <sem_open>
}
    800042ec:	00813083          	ld	ra,8(sp)
    800042f0:	00013403          	ld	s0,0(sp)
    800042f4:	01010113          	addi	sp,sp,16
    800042f8:	00008067          	ret

00000000800042fc <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800042fc:	ff010113          	addi	sp,sp,-16
    80004300:	00113423          	sd	ra,8(sp)
    80004304:	00813023          	sd	s0,0(sp)
    80004308:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000430c:	00853503          	ld	a0,8(a0)
    80004310:	ffffd097          	auipc	ra,0xffffd
    80004314:	220080e7          	jalr	544(ra) # 80001530 <sem_wait>
}
    80004318:	00813083          	ld	ra,8(sp)
    8000431c:	00013403          	ld	s0,0(sp)
    80004320:	01010113          	addi	sp,sp,16
    80004324:	00008067          	ret

0000000080004328 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80004328:	ff010113          	addi	sp,sp,-16
    8000432c:	00113423          	sd	ra,8(sp)
    80004330:	00813023          	sd	s0,0(sp)
    80004334:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80004338:	00853503          	ld	a0,8(a0)
    8000433c:	ffffd097          	auipc	ra,0xffffd
    80004340:	248080e7          	jalr	584(ra) # 80001584 <sem_signal>
}
    80004344:	00813083          	ld	ra,8(sp)
    80004348:	00013403          	ld	s0,0(sp)
    8000434c:	01010113          	addi	sp,sp,16
    80004350:	00008067          	ret

0000000080004354 <_ZN7Console4getcEv>:
char Console::getc() {
    80004354:	ff010113          	addi	sp,sp,-16
    80004358:	00113423          	sd	ra,8(sp)
    8000435c:	00813023          	sd	s0,0(sp)
    80004360:	01010413          	addi	s0,sp,16
    return ::getc();
    80004364:	ffffd097          	auipc	ra,0xffffd
    80004368:	274080e7          	jalr	628(ra) # 800015d8 <getc>
}
    8000436c:	00813083          	ld	ra,8(sp)
    80004370:	00013403          	ld	s0,0(sp)
    80004374:	01010113          	addi	sp,sp,16
    80004378:	00008067          	ret

000000008000437c <_ZN7Console4putcEc>:
void Console::putc(char c) {
    8000437c:	ff010113          	addi	sp,sp,-16
    80004380:	00113423          	sd	ra,8(sp)
    80004384:	00813023          	sd	s0,0(sp)
    80004388:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000438c:	ffffd097          	auipc	ra,0xffffd
    80004390:	2a0080e7          	jalr	672(ra) # 8000162c <putc>
}
    80004394:	00813083          	ld	ra,8(sp)
    80004398:	00013403          	ld	s0,0(sp)
    8000439c:	01010113          	addi	sp,sp,16
    800043a0:	00008067          	ret

00000000800043a4 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    800043a4:	fe010113          	addi	sp,sp,-32
    800043a8:	00113c23          	sd	ra,24(sp)
    800043ac:	00813823          	sd	s0,16(sp)
    800043b0:	00913423          	sd	s1,8(sp)
    800043b4:	01213023          	sd	s2,0(sp)
    800043b8:	02010413          	addi	s0,sp,32
    800043bc:	00050493          	mv	s1,a0
    800043c0:	00058913          	mv	s2,a1
    800043c4:	00000097          	auipc	ra,0x0
    800043c8:	e78080e7          	jalr	-392(ra) # 8000423c <_ZN6ThreadC1Ev>
    800043cc:	00007797          	auipc	a5,0x7
    800043d0:	e2478793          	addi	a5,a5,-476 # 8000b1f0 <_ZTV14PeriodicThread+0x10>
    800043d4:	00f4b023          	sd	a5,0(s1)
    800043d8:	00007717          	auipc	a4,0x7
    800043dc:	0e070713          	addi	a4,a4,224 # 8000b4b8 <_ZN14PeriodicThread2IDE>
    800043e0:	00073783          	ld	a5,0(a4)
    800043e4:	00178693          	addi	a3,a5,1
    800043e8:	00d73023          	sd	a3,0(a4)
    800043ec:	02f4b023          	sd	a5,32(s1)
    time = period;
    800043f0:	0124b823          	sd	s2,16(s1)
    flag_stop = true;
    800043f4:	00100793          	li	a5,1
    800043f8:	00f48c23          	sb	a5,24(s1)
    set_periodic((thread_t)this);
    800043fc:	00048513          	mv	a0,s1
    80004400:	ffffd097          	auipc	ra,0xffffd
    80004404:	36c080e7          	jalr	876(ra) # 8000176c <set_periodic>
    80004408:	0200006f          	j	80004428 <_ZN14PeriodicThreadC1Em+0x84>
    8000440c:	00050913          	mv	s2,a0
PeriodicThread::PeriodicThread(time_t period) {
    80004410:	00048513          	mv	a0,s1
    80004414:	00000097          	auipc	ra,0x0
    80004418:	a24080e7          	jalr	-1500(ra) # 80003e38 <_ZN6ThreadD1Ev>
    8000441c:	00090513          	mv	a0,s2
    80004420:	00008097          	auipc	ra,0x8
    80004424:	1d8080e7          	jalr	472(ra) # 8000c5f8 <_Unwind_Resume>
}
    80004428:	01813083          	ld	ra,24(sp)
    8000442c:	01013403          	ld	s0,16(sp)
    80004430:	00813483          	ld	s1,8(sp)
    80004434:	00013903          	ld	s2,0(sp)
    80004438:	02010113          	addi	sp,sp,32
    8000443c:	00008067          	ret

0000000080004440 <_ZN6Thread3runEv>:



protected:
    Thread();
    virtual void run() {}
    80004440:	ff010113          	addi	sp,sp,-16
    80004444:	00813423          	sd	s0,8(sp)
    80004448:	01010413          	addi	s0,sp,16
    8000444c:	00813403          	ld	s0,8(sp)
    80004450:	01010113          	addi	sp,sp,16
    80004454:	00008067          	ret

0000000080004458 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void stop(){flag_stop = false;}
//    uint64 getId()const{ id; }
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation(){}
    80004458:	ff010113          	addi	sp,sp,-16
    8000445c:	00813423          	sd	s0,8(sp)
    80004460:	01010413          	addi	s0,sp,16
    80004464:	00813403          	ld	s0,8(sp)
    80004468:	01010113          	addi	sp,sp,16
    8000446c:	00008067          	ret

0000000080004470 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80004470:	ff010113          	addi	sp,sp,-16
    80004474:	00113423          	sd	ra,8(sp)
    80004478:	00813023          	sd	s0,0(sp)
    8000447c:	01010413          	addi	s0,sp,16
    80004480:	00007797          	auipc	a5,0x7
    80004484:	d7078793          	addi	a5,a5,-656 # 8000b1f0 <_ZTV14PeriodicThread+0x10>
    80004488:	00f53023          	sd	a5,0(a0)
    8000448c:	00000097          	auipc	ra,0x0
    80004490:	9ac080e7          	jalr	-1620(ra) # 80003e38 <_ZN6ThreadD1Ev>
    80004494:	00813083          	ld	ra,8(sp)
    80004498:	00013403          	ld	s0,0(sp)
    8000449c:	01010113          	addi	sp,sp,16
    800044a0:	00008067          	ret

00000000800044a4 <_ZN14PeriodicThreadD0Ev>:
    800044a4:	fe010113          	addi	sp,sp,-32
    800044a8:	00113c23          	sd	ra,24(sp)
    800044ac:	00813823          	sd	s0,16(sp)
    800044b0:	00913423          	sd	s1,8(sp)
    800044b4:	02010413          	addi	s0,sp,32
    800044b8:	00050493          	mv	s1,a0
    800044bc:	00007797          	auipc	a5,0x7
    800044c0:	d3478793          	addi	a5,a5,-716 # 8000b1f0 <_ZTV14PeriodicThread+0x10>
    800044c4:	00f53023          	sd	a5,0(a0)
    800044c8:	00000097          	auipc	ra,0x0
    800044cc:	970080e7          	jalr	-1680(ra) # 80003e38 <_ZN6ThreadD1Ev>
    800044d0:	00048513          	mv	a0,s1
    800044d4:	00000097          	auipc	ra,0x0
    800044d8:	b28080e7          	jalr	-1240(ra) # 80003ffc <_ZdlPv>
    800044dc:	01813083          	ld	ra,24(sp)
    800044e0:	01013403          	ld	s0,16(sp)
    800044e4:	00813483          	ld	s1,8(sp)
    800044e8:	02010113          	addi	sp,sp,32
    800044ec:	00008067          	ret

00000000800044f0 <_ZN5Riscv14switch_to_userEv>:
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/semaphore.hpp"
#include "../h/console.hpp"

void Riscv::switch_to_user(){
    800044f0:	ff010113          	addi	sp,sp,-16
    800044f4:	00813423          	sd	s0,8(sp)
    800044f8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800044fc:	10000793          	li	a5,256
    80004500:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
}
    80004504:	00813403          	ld	s0,8(sp)
    80004508:	01010113          	addi	sp,sp,16
    8000450c:	00008067          	ret

0000000080004510 <_ZN5Riscv21switch_to_priviledgedEv>:

void Riscv::switch_to_priviledged() {
    80004510:	ff010113          	addi	sp,sp,-16
    80004514:	00813423          	sd	s0,8(sp)
    80004518:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000451c:	10000793          	li	a5,256
    80004520:	1007a073          	csrs	sstatus,a5
    ms_sstatus(SSTATUS_SPP);
}
    80004524:	00813403          	ld	s0,8(sp)
    80004528:	01010113          	addi	sp,sp,16
    8000452c:	00008067          	ret

0000000080004530 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie(){
    80004530:	ff010113          	addi	sp,sp,-16
    80004534:	00813423          	sd	s0,8(sp)
    80004538:	01010413          	addi	s0,sp,16

    __asm__ volatile("csrw sepc, ra");
    8000453c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80004540:	10200073          	sret
}
    80004544:	00813403          	ld	s0,8(sp)
    80004548:	01010113          	addi	sp,sp,16
    8000454c:	00008067          	ret

0000000080004550 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80004550:	f5010113          	addi	sp,sp,-176
    80004554:	0a113423          	sd	ra,168(sp)
    80004558:	0a813023          	sd	s0,160(sp)
    8000455c:	08913c23          	sd	s1,152(sp)
    80004560:	09213823          	sd	s2,144(sp)
    80004564:	0b010413          	addi	s0,sp,176

//    uint64 arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7;
    uint64 args[8];
    __asm__ volatile("mv %[arg0], a0" : [arg0]"=r"(*args)); // za kod sistemskog poziva
    80004568:	00050793          	mv	a5,a0
    8000456c:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("mv %[arg1], a1" : [arg1]"=r"(*(args + 1))); // argumenti s leva na desno
    80004570:	00058793          	mv	a5,a1
    80004574:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile("mv %[arg2], a2" : [arg2]"=r"(*(args + 2)));
    80004578:	00060793          	mv	a5,a2
    8000457c:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile("mv %[arg3], a3" : [arg3]"=r"(*(args + 3)));
    80004580:	00068793          	mv	a5,a3
    80004584:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %[arg4], a4" : [arg4]"=r"(*(args + 4)));
    80004588:	00070793          	mv	a5,a4
    8000458c:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("mv %[arg5], a5" : [arg5]"=r"(*(args + 5)));
    80004590:	00078793          	mv	a5,a5
    80004594:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("mv %[arg6], a6" : [arg6]"=r"(*(args + 6)));
    80004598:	00080793          	mv	a5,a6
    8000459c:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("mv %[arg7], a7" : [arg7]"=r"(*(args + 7)));
    800045a0:	00088793          	mv	a5,a7
    800045a4:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800045a8:	142027f3          	csrr	a5,scause
    800045ac:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    800045b0:	f7843703          	ld	a4,-136(s0)

    uint64 scause = r_scause();

    if (scause == 0x8000000000000001UL){
    800045b4:	fff00793          	li	a5,-1
    800045b8:	03f79793          	slli	a5,a5,0x3f
    800045bc:	00178793          	addi	a5,a5,1
    800045c0:	02f70c63          	beq	a4,a5,800045f8 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

    }
    else if(scause == 0x0000000000000009UL || scause == 0x0000000000000008UL){
    800045c4:	ff870793          	addi	a5,a4,-8
    800045c8:	00100693          	li	a3,1
    800045cc:	0af6f463          	bgeu	a3,a5,80004674 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
            // pomeramo pc za 4 bajta unapred
            w_sepc(sepc);
            if(*args != 0x60 && *args != 0x61)
                w_sstatus(sstatus);
    }
    else if (scause == 0x8000000000000009UL)
    800045d0:	fff00793          	li	a5,-1
    800045d4:	03f79793          	slli	a5,a5,0x3f
    800045d8:	00978793          	addi	a5,a5,9
    800045dc:	44f70663          	beq	a4,a5,80004a28 <_ZN5Riscv20handleSupervisorTrapEv+0x4d8>
        // unexpected trap cause
        // print scause
        // print sepc
        // print stval
    }
    800045e0:	0a813083          	ld	ra,168(sp)
    800045e4:	0a013403          	ld	s0,160(sp)
    800045e8:	09813483          	ld	s1,152(sp)
    800045ec:	09013903          	ld	s2,144(sp)
    800045f0:	0b010113          	addi	sp,sp,176
    800045f4:	00008067          	ret
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800045f8:	00200793          	li	a5,2
    800045fc:	1447b073          	csrc	sip,a5
        TCB::time_slice_counter++;
    80004600:	00007497          	auipc	s1,0x7
    80004604:	c884b483          	ld	s1,-888(s1) # 8000b288 <_GLOBAL_OFFSET_TABLE_+0x58>
    80004608:	0004b783          	ld	a5,0(s1)
    8000460c:	00178793          	addi	a5,a5,1
    80004610:	00f4b023          	sd	a5,0(s1)
        TS::decrement_and_remove();
    80004614:	00001097          	auipc	ra,0x1
    80004618:	dd0080e7          	jalr	-560(ra) # 800053e4 <_ZN2TS20decrement_and_removeEv>
        if (TCB::time_slice_counter >= TCB::running->get_time_slice()) {
    8000461c:	00007797          	auipc	a5,0x7
    80004620:	c747b783          	ld	a5,-908(a5) # 8000b290 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004624:	0007b783          	ld	a5,0(a5)
    uint64 get_time_slice()const{ return time_slice; }
    80004628:	0507b783          	ld	a5,80(a5)
    8000462c:	0004b703          	ld	a4,0(s1)
    80004630:	faf768e3          	bltu	a4,a5,800045e0 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80004634:	141027f3          	csrr	a5,sepc
    80004638:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    8000463c:	f8843783          	ld	a5,-120(s0)
            uint64 volatile sepc = r_sepc();
    80004640:	f4f43c23          	sd	a5,-168(s0)

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80004644:	100027f3          	csrr	a5,sstatus
    80004648:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    8000464c:	f8043783          	ld	a5,-128(s0)
            uint64 volatile sstatus = r_sstatus();
    80004650:	f6f43023          	sd	a5,-160(s0)
            TCB::time_slice_counter = 0;
    80004654:	0004b023          	sd	zero,0(s1)
            TCB::thread_dispatch();
    80004658:	00000097          	auipc	ra,0x0
    8000465c:	498080e7          	jalr	1176(ra) # 80004af0 <_ZN3TCB15thread_dispatchEv>
            w_sstatus(sstatus);
    80004660:	f6043783          	ld	a5,-160(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80004664:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80004668:	f5843783          	ld	a5,-168(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000466c:	14179073          	csrw	sepc,a5
}
    80004670:	f71ff06f          	j	800045e0 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80004674:	141027f3          	csrr	a5,sepc
    80004678:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    8000467c:	f9843783          	ld	a5,-104(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80004680:	00478793          	addi	a5,a5,4
    80004684:	f6f43423          	sd	a5,-152(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80004688:	100027f3          	csrr	a5,sstatus
    8000468c:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80004690:	f9043783          	ld	a5,-112(s0)
        uint64 volatile sstatus = r_sstatus();
    80004694:	f6f43823          	sd	a5,-144(s0)
            switch(*args){
    80004698:	fa043783          	ld	a5,-96(s0)
    8000469c:	07000713          	li	a4,112
    800046a0:	02f76463          	bltu	a4,a5,800046c8 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    800046a4:	36078a63          	beqz	a5,80004a18 <_ZN5Riscv20handleSupervisorTrapEv+0x4c8>
    800046a8:	36f76c63          	bltu	a4,a5,80004a20 <_ZN5Riscv20handleSupervisorTrapEv+0x4d0>
    800046ac:	00279793          	slli	a5,a5,0x2
    800046b0:	00005717          	auipc	a4,0x5
    800046b4:	bc070713          	addi	a4,a4,-1088 # 80009270 <CONSOLE_STATUS+0x260>
    800046b8:	00e787b3          	add	a5,a5,a4
    800046bc:	0007a783          	lw	a5,0(a5)
    800046c0:	00e787b3          	add	a5,a5,a4
    800046c4:	00078067          	jr	a5
    800046c8:	11100713          	li	a4,273
    800046cc:	00e79c63          	bne	a5,a4,800046e4 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    void set_finished(bool f){ this->finished = f; }
    800046d0:	fa843783          	ld	a5,-88(s0)
    800046d4:	00100713          	li	a4,1
    800046d8:	02e78423          	sb	a4,40(a5)
                    retVal = 0;
    800046dc:	00000513          	li	a0,0
    800046e0:	0080006f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
            switch(*args){
    800046e4:	00000513          	li	a0,0
            __asm__ volatile("mv a0, %[ret]" : : [ret]"r"(retVal));
    800046e8:	00050513          	mv	a0,a0
            __asm__ volatile("sd a0, 10 * 8(s0)");
    800046ec:	04a43823          	sd	a0,80(s0)
            w_sepc(sepc);
    800046f0:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800046f4:	14179073          	csrw	sepc,a5
            if(*args != 0x60 && *args != 0x61)
    800046f8:	fa043783          	ld	a5,-96(s0)
    800046fc:	fa078793          	addi	a5,a5,-96
    80004700:	00100713          	li	a4,1
    80004704:	ecf77ee3          	bgeu	a4,a5,800045e0 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
                w_sstatus(sstatus);
    80004708:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000470c:	10079073          	csrw	sstatus,a5
}
    80004710:	ed1ff06f          	j	800045e0 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    80004714:	00007797          	auipc	a5,0x7
    80004718:	bdc7c783          	lbu	a5,-1060(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000471c:	00078e63          	beqz	a5,80004738 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_alloc(*(args + 1)));
    80004720:	fa843583          	ld	a1,-88(s0)
    80004724:	00007517          	auipc	a0,0x7
    80004728:	bd450513          	addi	a0,a0,-1068 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    8000472c:	00001097          	auipc	ra,0x1
    80004730:	998080e7          	jalr	-1640(ra) # 800050c4 <_ZN15MemoryAllocator12memory_allocEm>
                    break;
    80004734:	fb5ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    80004738:	00007617          	auipc	a2,0x7
    8000473c:	bc060613          	addi	a2,a2,-1088 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80004740:	00007797          	auipc	a5,0x7
    80004744:	b587b783          	ld	a5,-1192(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004748:	0007b703          	ld	a4,0(a5)
    8000474c:	00007797          	auipc	a5,0x7
    80004750:	b047b783          	ld	a5,-1276(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004754:	0007b783          	ld	a5,0(a5)
    80004758:	40f706b3          	sub	a3,a4,a5
    8000475c:	0036d693          	srli	a3,a3,0x3
    80004760:	00d787b3          	add	a5,a5,a3
    80004764:	00178793          	addi	a5,a5,1
    80004768:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    8000476c:	fff70713          	addi	a4,a4,-1
    80004770:	00e63823          	sd	a4,16(a2)

        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80004774:	40f70733          	sub	a4,a4,a5
    80004778:	00675713          	srli	a4,a4,0x6

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    8000477c:	03f7f693          	andi	a3,a5,63
    80004780:	00068663          	beqz	a3,8000478c <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
    80004784:	04000613          	li	a2,64
    80004788:	40d606b3          	sub	a3,a2,a3
    8000478c:	00d787b3          	add	a5,a5,a3
    80004790:	00007697          	auipc	a3,0x7
    80004794:	b6f6b423          	sd	a5,-1176(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    80004798:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    8000479c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    800047a0:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    800047a4:	00100793          	li	a5,1
    800047a8:	00007717          	auipc	a4,0x7
    800047ac:	b4f70423          	sb	a5,-1208(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800047b0:	f71ff06f          	j	80004720 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    800047b4:	00007797          	auipc	a5,0x7
    800047b8:	b3c7c783          	lbu	a5,-1220(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800047bc:	00078e63          	beqz	a5,800047d8 <_ZN5Riscv20handleSupervisorTrapEv+0x288>
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_free((void*)*(args + 1)));
    800047c0:	fa843583          	ld	a1,-88(s0)
    800047c4:	00007517          	auipc	a0,0x7
    800047c8:	b3450513          	addi	a0,a0,-1228 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800047cc:	00001097          	auipc	ra,0x1
    800047d0:	9cc080e7          	jalr	-1588(ra) # 80005198 <_ZN15MemoryAllocator11memory_freeEPv>
                    break;
    800047d4:	f15ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    MemoryAllocator(){
    800047d8:	00007617          	auipc	a2,0x7
    800047dc:	b2060613          	addi	a2,a2,-1248 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800047e0:	00007797          	auipc	a5,0x7
    800047e4:	ab87b783          	ld	a5,-1352(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    800047e8:	0007b703          	ld	a4,0(a5)
    800047ec:	00007797          	auipc	a5,0x7
    800047f0:	a647b783          	ld	a5,-1436(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    800047f4:	0007b783          	ld	a5,0(a5)
    800047f8:	40f706b3          	sub	a3,a4,a5
    800047fc:	0036d693          	srli	a3,a3,0x3
    80004800:	00d787b3          	add	a5,a5,a3
    80004804:	00178793          	addi	a5,a5,1
    80004808:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    8000480c:	fff70713          	addi	a4,a4,-1
    80004810:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80004814:	40f70733          	sub	a4,a4,a5
    80004818:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    8000481c:	03f7f693          	andi	a3,a5,63
    80004820:	00068663          	beqz	a3,8000482c <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
    80004824:	04000613          	li	a2,64
    80004828:	40d606b3          	sub	a3,a2,a3
    8000482c:	00d787b3          	add	a5,a5,a3
    80004830:	00007697          	auipc	a3,0x7
    80004834:	acf6b423          	sd	a5,-1336(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80004838:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    8000483c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004840:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004844:	00100793          	li	a5,1
    80004848:	00007717          	auipc	a4,0x7
    8000484c:	aaf70423          	sb	a5,-1368(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004850:	f71ff06f          	j	800047c0 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
                    retVal = (uint64)(TCB::thread_create((TCB**)*(args + 1),
    80004854:	fd043703          	ld	a4,-48(s0)
    80004858:	00e03733          	snez	a4,a4
    8000485c:	fc043683          	ld	a3,-64(s0)
    80004860:	fb843603          	ld	a2,-72(s0)
    80004864:	fb043583          	ld	a1,-80(s0)
    80004868:	fa843503          	ld	a0,-88(s0)
    8000486c:	00000097          	auipc	ra,0x0
    80004870:	508080e7          	jalr	1288(ra) # 80004d74 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b>
                    break;
    80004874:	e75ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = TCB::thread_exit();
    80004878:	00000097          	auipc	ra,0x0
    8000487c:	3f4080e7          	jalr	1012(ra) # 80004c6c <_ZN3TCB11thread_exitEv>
                    break;
    80004880:	e69ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    TCB::thread_dispatch();
    80004884:	00000097          	auipc	ra,0x0
    80004888:	26c080e7          	jalr	620(ra) # 80004af0 <_ZN3TCB15thread_dispatchEv>
        uint64 retVal = 0;
    8000488c:	00000513          	li	a0,0
    80004890:	e59ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_open((MySemaphore**)*(args + 1),
    80004894:	fb043583          	ld	a1,-80(s0)
    80004898:	fa843503          	ld	a0,-88(s0)
    8000489c:	ffffe097          	auipc	ra,0xffffe
    800048a0:	850080e7          	jalr	-1968(ra) # 800020ec <_ZN11MySemaphore8sem_openEPPS_m>
                    break;
    800048a4:	e45ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_close((MySemaphore*)*(args + 1)));
    800048a8:	fa843503          	ld	a0,-88(s0)
    800048ac:	ffffe097          	auipc	ra,0xffffe
    800048b0:	970080e7          	jalr	-1680(ra) # 8000221c <_ZN11MySemaphore9sem_closeEPS_>
                    break;
    800048b4:	e35ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_wait((MySemaphore*)*(args + 1)));
    800048b8:	fa843503          	ld	a0,-88(s0)
    800048bc:	ffffe097          	auipc	ra,0xffffe
    800048c0:	a78080e7          	jalr	-1416(ra) # 80002334 <_ZN11MySemaphore8sem_waitEPS_>
                    break;
    800048c4:	e25ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_signal((MySemaphore*)*(args + 1)));
    800048c8:	fa843503          	ld	a0,-88(s0)
    800048cc:	ffffe097          	auipc	ra,0xffffe
    800048d0:	b38080e7          	jalr	-1224(ra) # 80002404 <_ZN11MySemaphore10sem_signalEPS_>
                    break;
    800048d4:	e15ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    TCB::time_sleep(*(args + 1));
    800048d8:	fa843503          	ld	a0,-88(s0)
    800048dc:	00000097          	auipc	ra,0x0
    800048e0:	6b4080e7          	jalr	1716(ra) # 80004f90 <_ZN3TCB10time_sleepEm>
        uint64 retVal = 0;
    800048e4:	00000513          	li	a0,0
    800048e8:	e01ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    800048ec:	00007797          	auipc	a5,0x7
    800048f0:	a4c7c783          	lbu	a5,-1460(a5) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
    800048f4:	00078c63          	beqz	a5,8000490c <_ZN5Riscv20handleSupervisorTrapEv+0x3bc>
                    retVal = Console::getInstance().get_from_input();
    800048f8:	00007517          	auipc	a0,0x7
    800048fc:	a4850513          	addi	a0,a0,-1464 # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    80004900:	ffffe097          	auipc	ra,0xffffe
    80004904:	328080e7          	jalr	808(ra) # 80002c28 <_ZN7Console14get_from_inputEv>
                    break;
    80004908:	de1ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    8000490c:	00007517          	auipc	a0,0x7
    80004910:	a3450513          	addi	a0,a0,-1484 # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    80004914:	ffffe097          	auipc	ra,0xffffe
    80004918:	114080e7          	jalr	276(ra) # 80002a28 <_ZN7ConsoleC1Ev>
    8000491c:	00100793          	li	a5,1
    80004920:	00007717          	auipc	a4,0x7
    80004924:	a0f70c23          	sb	a5,-1512(a4) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
    80004928:	fd1ff06f          	j	800048f8 <_ZN5Riscv20handleSupervisorTrapEv+0x3a8>
    8000492c:	00007797          	auipc	a5,0x7
    80004930:	a0c7c783          	lbu	a5,-1524(a5) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
    80004934:	02078063          	beqz	a5,80004954 <_ZN5Riscv20handleSupervisorTrapEv+0x404>
                    Console::getInstance().put_in_output((char)*(args + 1));
    80004938:	fa844583          	lbu	a1,-88(s0)
    8000493c:	00007517          	auipc	a0,0x7
    80004940:	a0450513          	addi	a0,a0,-1532 # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    80004944:	ffffe097          	auipc	ra,0xffffe
    80004948:	314080e7          	jalr	788(ra) # 80002c58 <_ZN7Console13put_in_outputEc>
        uint64 retVal = 0;
    8000494c:	00000513          	li	a0,0
    80004950:	d99ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004954:	00007517          	auipc	a0,0x7
    80004958:	9ec50513          	addi	a0,a0,-1556 # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    8000495c:	ffffe097          	auipc	ra,0xffffe
    80004960:	0cc080e7          	jalr	204(ra) # 80002a28 <_ZN7ConsoleC1Ev>
    80004964:	00100793          	li	a5,1
    80004968:	00007717          	auipc	a4,0x7
    8000496c:	9cf70823          	sb	a5,-1584(a4) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
    80004970:	fc9ff06f          	j	80004938 <_ZN5Riscv20handleSupervisorTrapEv+0x3e8>
    80004974:	00007797          	auipc	a5,0x7
    80004978:	99c7c783          	lbu	a5,-1636(a5) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    8000497c:	02079463          	bnez	a5,800049a4 <_ZN5Riscv20handleSupervisorTrapEv+0x454>
        head = nullptr;
    80004980:	00007797          	auipc	a5,0x7
    80004984:	8f07b783          	ld	a5,-1808(a5) # 8000b270 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004988:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    8000498c:	00007797          	auipc	a5,0x7
    80004990:	8bc7b783          	ld	a5,-1860(a5) # 8000b248 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004994:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004998:	00100793          	li	a5,1
    8000499c:	00007717          	auipc	a4,0x7
    800049a0:	96f70a23          	sb	a5,-1676(a4) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
                    Scheduler::getInstance().put((TCB*)*(args + 1));
    800049a4:	fa843583          	ld	a1,-88(s0)
    800049a8:	00007517          	auipc	a0,0x7
    800049ac:	97050513          	addi	a0,a0,-1680 # 8000b318 <_ZZN9Scheduler11getInstanceEvE8instance>
    800049b0:	00000097          	auipc	ra,0x0
    800049b4:	6b4080e7          	jalr	1716(ra) # 80005064 <_ZN9Scheduler3putEP3TCB>
        uint64 retVal = 0;
    800049b8:	00000513          	li	a0,0
    800049bc:	d2dff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Riscv::switch_to_user();
    800049c0:	00000097          	auipc	ra,0x0
    800049c4:	b30080e7          	jalr	-1232(ra) # 800044f0 <_ZN5Riscv14switch_to_userEv>
        uint64 retVal = 0;
    800049c8:	00000513          	li	a0,0
                    break;
    800049cc:	d1dff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Riscv::switch_to_priviledged();
    800049d0:	00000097          	auipc	ra,0x0
    800049d4:	b40080e7          	jalr	-1216(ra) # 80004510 <_ZN5Riscv21switch_to_priviledgedEv>
        uint64 retVal = 0;
    800049d8:	00000513          	li	a0,0
                    break;
    800049dc:	d0dff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    ((TCB*)*(args + 1))->set_periodic(true);
    800049e0:	fa843583          	ld	a1,-88(s0)
        periodic = b;
    800049e4:	00100793          	li	a5,1
    800049e8:	06f580a3          	sb	a5,97(a1)

class periodicThread{

public:
    static periodicThread& getInstance(){
        static periodicThread instance;
    800049ec:	00007797          	auipc	a5,0x7
    800049f0:	ad47c783          	lbu	a5,-1324(a5) # 8000b4c0 <_ZGVZN14periodicThread11getInstanceEvE8instance>
    800049f4:	00079863          	bnez	a5,80004a04 <_ZN5Riscv20handleSupervisorTrapEv+0x4b4>
    800049f8:	00100793          	li	a5,1
    800049fc:	00007717          	auipc	a4,0x7
    80004a00:	acf70223          	sb	a5,-1340(a4) # 8000b4c0 <_ZGVZN14periodicThread11getInstanceEvE8instance>
        periodicThread::getInstance().put(this);
    80004a04:	00007517          	auipc	a0,0x7
    80004a08:	ac450513          	addi	a0,a0,-1340 # 8000b4c8 <_ZZN14periodicThread11getInstanceEvE8instance>
    80004a0c:	ffffe097          	auipc	ra,0xffffe
    80004a10:	a58080e7          	jalr	-1448(ra) # 80002464 <_ZN14periodicThread3putEP3TCB>
    }
    80004a14:	cbdff06f          	j	800046d0 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
            switch(*args){
    80004a18:	00000513          	li	a0,0
    80004a1c:	ccdff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004a20:	00000513          	li	a0,0
    80004a24:	cc5ff06f          	j	800046e8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        int irq = plic_claim();
    80004a28:	00002097          	auipc	ra,0x2
    80004a2c:	44c080e7          	jalr	1100(ra) # 80006e74 <plic_claim>
    80004a30:	00050913          	mv	s2,a0
        if(irq == CONSOLE_IRQ){
    80004a34:	00a00793          	li	a5,10
    80004a38:	04f50e63          	beq	a0,a5,80004a94 <_ZN5Riscv20handleSupervisorTrapEv+0x544>
        plic_complete(irq);
    80004a3c:	00090513          	mv	a0,s2
    80004a40:	00002097          	auipc	ra,0x2
    80004a44:	46c080e7          	jalr	1132(ra) # 80006eac <plic_complete>
    80004a48:	b99ff06f          	j	800045e0 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    80004a4c:	00007517          	auipc	a0,0x7
    80004a50:	8f450513          	addi	a0,a0,-1804 # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    80004a54:	ffffe097          	auipc	ra,0xffffe
    80004a58:	fd4080e7          	jalr	-44(ra) # 80002a28 <_ZN7ConsoleC1Ev>
    80004a5c:	00100793          	li	a5,1
    80004a60:	00007717          	auipc	a4,0x7
    80004a64:	8cf70c23          	sb	a5,-1832(a4) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
                Console::getInstance().put_in_input(*((char*)CONSOLE_RX_DATA));
    80004a68:	00006797          	auipc	a5,0x6
    80004a6c:	7d07b783          	ld	a5,2000(a5) # 8000b238 <_GLOBAL_OFFSET_TABLE_+0x8>
    80004a70:	0007b483          	ld	s1,0(a5)
    80004a74:	0004c583          	lbu	a1,0(s1)
    80004a78:	00007517          	auipc	a0,0x7
    80004a7c:	8c850513          	addi	a0,a0,-1848 # 8000b340 <_ZZN7Console11getInstanceEvE8instance>
    80004a80:	ffffe097          	auipc	ra,0xffffe
    80004a84:	17c080e7          	jalr	380(ra) # 80002bfc <_ZN7Console12put_in_inputEc>
                if(*((char*)CONSOLE_RX_DATA) == 107){
    80004a88:	0004c703          	lbu	a4,0(s1)
    80004a8c:	06b00793          	li	a5,107
    80004a90:	02f70663          	beq	a4,a5,80004abc <_ZN5Riscv20handleSupervisorTrapEv+0x56c>
            while(*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80004a94:	00006797          	auipc	a5,0x6
    80004a98:	7ac7b783          	ld	a5,1964(a5) # 8000b240 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004a9c:	0007b783          	ld	a5,0(a5)
    80004aa0:	0007c783          	lbu	a5,0(a5)
    80004aa4:	0017f793          	andi	a5,a5,1
    80004aa8:	f8078ae3          	beqz	a5,80004a3c <_ZN5Riscv20handleSupervisorTrapEv+0x4ec>
    80004aac:	00007797          	auipc	a5,0x7
    80004ab0:	88c7c783          	lbu	a5,-1908(a5) # 8000b338 <_ZGVZN7Console11getInstanceEvE8instance>
    80004ab4:	fa079ae3          	bnez	a5,80004a68 <_ZN5Riscv20handleSupervisorTrapEv+0x518>
    80004ab8:	f95ff06f          	j	80004a4c <_ZN5Riscv20handleSupervisorTrapEv+0x4fc>
    80004abc:	00007797          	auipc	a5,0x7
    80004ac0:	a047c783          	lbu	a5,-1532(a5) # 8000b4c0 <_ZGVZN14periodicThread11getInstanceEvE8instance>
    80004ac4:	00079863          	bnez	a5,80004ad4 <_ZN5Riscv20handleSupervisorTrapEv+0x584>
    80004ac8:	00100793          	li	a5,1
    80004acc:	00007717          	auipc	a4,0x7
    80004ad0:	9ef70a23          	sb	a5,-1548(a4) # 8000b4c0 <_ZGVZN14periodicThread11getInstanceEvE8instance>
                    TCB* tmp = periodicThread::getInstance().get();
    80004ad4:	00007517          	auipc	a0,0x7
    80004ad8:	9f450513          	addi	a0,a0,-1548 # 8000b4c8 <_ZZN14periodicThread11getInstanceEvE8instance>
    80004adc:	ffffe097          	auipc	ra,0xffffe
    80004ae0:	9cc080e7          	jalr	-1588(ra) # 800024a8 <_ZN14periodicThread3getEv>
    void set_finished(bool f){ this->finished = f; }
    80004ae4:	00100793          	li	a5,1
    80004ae8:	02f50423          	sb	a5,40(a0)
    80004aec:	fa9ff06f          	j	80004a94 <_ZN5Riscv20handleSupervisorTrapEv+0x544>

0000000080004af0 <_ZN3TCB15thread_dispatchEv>:
    TCB::thread_dispatch();
    // do ovog dela nece nikad doci jer thread_dispatch nece nit koju gasimo staviti u scheduler
    return -1;
}

void TCB::thread_dispatch() {
    80004af0:	fe010113          	addi	sp,sp,-32
    80004af4:	00113c23          	sd	ra,24(sp)
    80004af8:	00813823          	sd	s0,16(sp)
    80004afc:	00913423          	sd	s1,8(sp)
    80004b00:	02010413          	addi	s0,sp,32
//    Scheduler::printScheduler();
    TCB * old = running;
    80004b04:	00007497          	auipc	s1,0x7
    80004b08:	9cc4b483          	ld	s1,-1588(s1) # 8000b4d0 <_ZN3TCB7runningE>
    80004b0c:	00007797          	auipc	a5,0x7
    80004b10:	8047c783          	lbu	a5,-2044(a5) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004b14:	02079463          	bnez	a5,80004b3c <_ZN3TCB15thread_dispatchEv+0x4c>
        head = nullptr;
    80004b18:	00006797          	auipc	a5,0x6
    80004b1c:	7587b783          	ld	a5,1880(a5) # 8000b270 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004b20:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004b24:	00006797          	auipc	a5,0x6
    80004b28:	7247b783          	ld	a5,1828(a5) # 8000b248 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004b2c:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004b30:	00100793          	li	a5,1
    80004b34:	00006717          	auipc	a4,0x6
    80004b38:	7cf70e23          	sb	a5,2012(a4) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    running = Scheduler::getInstance().get();
    80004b3c:	00006517          	auipc	a0,0x6
    80004b40:	7dc50513          	addi	a0,a0,2012 # 8000b318 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004b44:	00000097          	auipc	ra,0x0
    80004b48:	4b4080e7          	jalr	1204(ra) # 80004ff8 <_ZN9Scheduler3getEv>
    80004b4c:	00007797          	auipc	a5,0x7
    80004b50:	98a7b223          	sd	a0,-1660(a5) # 8000b4d0 <_ZN3TCB7runningE>
    bool is_finished()const{return finished;}
    80004b54:	0284c783          	lbu	a5,40(s1)
    if (!old->is_finished()) {
    80004b58:	06079a63          	bnez	a5,80004bcc <_ZN3TCB15thread_dispatchEv+0xdc>
    80004b5c:	00006797          	auipc	a5,0x6
    80004b60:	7b47c783          	lbu	a5,1972(a5) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004b64:	02079463          	bnez	a5,80004b8c <_ZN3TCB15thread_dispatchEv+0x9c>
        head = nullptr;
    80004b68:	00006797          	auipc	a5,0x6
    80004b6c:	7087b783          	ld	a5,1800(a5) # 8000b270 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004b70:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004b74:	00006797          	auipc	a5,0x6
    80004b78:	6d47b783          	ld	a5,1748(a5) # 8000b248 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004b7c:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004b80:	00100793          	li	a5,1
    80004b84:	00006717          	auipc	a4,0x6
    80004b88:	78f70623          	sb	a5,1932(a4) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
        Scheduler::getInstance().put(old);
    80004b8c:	00048593          	mv	a1,s1
    80004b90:	00006517          	auipc	a0,0x6
    80004b94:	78850513          	addi	a0,a0,1928 # 8000b318 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004b98:	00000097          	auipc	ra,0x0
    80004b9c:	4cc080e7          	jalr	1228(ra) # 80005064 <_ZN9Scheduler3putEP3TCB>
    }
    else{
        TCB::operator delete(old);
    }
//    TCB::time_slice_counter = 0;
    TCB::context_switch(&old->context, &running->context);
    80004ba0:	00007597          	auipc	a1,0x7
    80004ba4:	9305b583          	ld	a1,-1744(a1) # 8000b4d0 <_ZN3TCB7runningE>
    80004ba8:	01858593          	addi	a1,a1,24
    80004bac:	01848513          	addi	a0,s1,24
    80004bb0:	ffffc097          	auipc	ra,0xffffc
    80004bb4:	680080e7          	jalr	1664(ra) # 80001230 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80004bb8:	01813083          	ld	ra,24(sp)
    80004bbc:	01013403          	ld	s0,16(sp)
    80004bc0:	00813483          	ld	s1,8(sp)
    80004bc4:	02010113          	addi	sp,sp,32
    80004bc8:	00008067          	ret
    80004bcc:	00006797          	auipc	a5,0x6
    80004bd0:	7247c783          	lbu	a5,1828(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004bd4:	00078e63          	beqz	a5,80004bf0 <_ZN3TCB15thread_dispatchEv+0x100>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80004bd8:	00048593          	mv	a1,s1
    80004bdc:	00006517          	auipc	a0,0x6
    80004be0:	71c50513          	addi	a0,a0,1820 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	5b4080e7          	jalr	1460(ra) # 80005198 <_ZN15MemoryAllocator11memory_freeEPv>
    }
    80004bec:	fb5ff06f          	j	80004ba0 <_ZN3TCB15thread_dispatchEv+0xb0>
    MemoryAllocator(){
    80004bf0:	00006617          	auipc	a2,0x6
    80004bf4:	70860613          	addi	a2,a2,1800 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80004bf8:	00006797          	auipc	a5,0x6
    80004bfc:	6a07b783          	ld	a5,1696(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004c00:	0007b703          	ld	a4,0(a5)
    80004c04:	00006797          	auipc	a5,0x6
    80004c08:	64c7b783          	ld	a5,1612(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004c0c:	0007b783          	ld	a5,0(a5)
    80004c10:	40f706b3          	sub	a3,a4,a5
    80004c14:	0036d693          	srli	a3,a3,0x3
    80004c18:	00d787b3          	add	a5,a5,a3
    80004c1c:	00178793          	addi	a5,a5,1
    80004c20:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80004c24:	fff70713          	addi	a4,a4,-1
    80004c28:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80004c2c:	40f70733          	sub	a4,a4,a5
    80004c30:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80004c34:	03f7f693          	andi	a3,a5,63
    80004c38:	00068663          	beqz	a3,80004c44 <_ZN3TCB15thread_dispatchEv+0x154>
    80004c3c:	04000613          	li	a2,64
    80004c40:	40d606b3          	sub	a3,a2,a3
    80004c44:	00d787b3          	add	a5,a5,a3
    80004c48:	00006697          	auipc	a3,0x6
    80004c4c:	6af6b823          	sd	a5,1712(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80004c50:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004c54:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004c58:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004c5c:	00100793          	li	a5,1
    80004c60:	00006717          	auipc	a4,0x6
    80004c64:	68f70823          	sb	a5,1680(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004c68:	f71ff06f          	j	80004bd8 <_ZN3TCB15thread_dispatchEv+0xe8>

0000000080004c6c <_ZN3TCB11thread_exitEv>:
int TCB::thread_exit() {
    80004c6c:	ff010113          	addi	sp,sp,-16
    80004c70:	00113423          	sd	ra,8(sp)
    80004c74:	00813023          	sd	s0,0(sp)
    80004c78:	01010413          	addi	s0,sp,16
    void set_finished(bool f){ this->finished = f; }
    80004c7c:	00007797          	auipc	a5,0x7
    80004c80:	8547b783          	ld	a5,-1964(a5) # 8000b4d0 <_ZN3TCB7runningE>
    80004c84:	00100713          	li	a4,1
    80004c88:	02e78423          	sb	a4,40(a5)
    TCB::thread_dispatch();
    80004c8c:	00000097          	auipc	ra,0x0
    80004c90:	e64080e7          	jalr	-412(ra) # 80004af0 <_ZN3TCB15thread_dispatchEv>
}
    80004c94:	fff00513          	li	a0,-1
    80004c98:	00813083          	ld	ra,8(sp)
    80004c9c:	00013403          	ld	s0,0(sp)
    80004ca0:	01010113          	addi	sp,sp,16
    80004ca4:	00008067          	ret

0000000080004ca8 <_ZN3TCB14thread_wrapperEv>:

void TCB::thread_wrapper() {
    80004ca8:	ff010113          	addi	sp,sp,-16
    80004cac:	00113423          	sd	ra,8(sp)
    80004cb0:	00813023          	sd	s0,0(sp)
    80004cb4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80004cb8:	00000097          	auipc	ra,0x0
    80004cbc:	878080e7          	jalr	-1928(ra) # 80004530 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80004cc0:	00007797          	auipc	a5,0x7
    80004cc4:	8107b783          	ld	a5,-2032(a5) # 8000b4d0 <_ZN3TCB7runningE>
    80004cc8:	0007b703          	ld	a4,0(a5)
    80004ccc:	0087b503          	ld	a0,8(a5)
    80004cd0:	000700e7          	jalr	a4
    thread_exit();
    80004cd4:	00000097          	auipc	ra,0x0
    80004cd8:	f98080e7          	jalr	-104(ra) # 80004c6c <_ZN3TCB11thread_exitEv>
}
    80004cdc:	00813083          	ld	ra,8(sp)
    80004ce0:	00013403          	ld	s0,0(sp)
    80004ce4:	01010113          	addi	sp,sp,16
    80004ce8:	00008067          	ret

0000000080004cec <_ZN3TCBC1EPFvPvES0_S0_b>:

TCB::TCB(Body body_init, void *arg, void *stack_space, bool b) {
    80004cec:	ff010113          	addi	sp,sp,-16
    80004cf0:	00813423          	sd	s0,8(sp)
    80004cf4:	01010413          	addi	s0,sp,16
    body = body_init;
    80004cf8:	00b53023          	sd	a1,0(a0)
    argument = arg;
    80004cfc:	00c53423          	sd	a2,8(a0)
    stack = (uint64*)stack_space;
    80004d00:	00d53823          	sd	a3,16(a0)
    context.ra = (uint64) &thread_wrapper;
    80004d04:	00000797          	auipc	a5,0x0
    80004d08:	fa478793          	addi	a5,a5,-92 # 80004ca8 <_ZN3TCB14thread_wrapperEv>
    80004d0c:	00f53c23          	sd	a5,24(a0)
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    80004d10:	04068e63          	beqz	a3,80004d6c <_ZN3TCBC1EPFvPvES0_S0_b+0x80>
    80004d14:	000017b7          	lui	a5,0x1
    80004d18:	00f686b3          	add	a3,a3,a5
    80004d1c:	02d53023          	sd	a3,32(a0)
    finished = false;
    80004d20:	02050423          	sb	zero,40(a0)
    next_scheduler = nullptr;
    80004d24:	02053823          	sd	zero,48(a0)
    next_sleep = nullptr;
    80004d28:	02053c23          	sd	zero,56(a0)
    next_blocked = nullptr;
    80004d2c:	04053023          	sd	zero,64(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80004d30:	00200793          	li	a5,2
    80004d34:	04f53823          	sd	a5,80(a0)
    sleep = 0;
    80004d38:	04053423          	sd	zero,72(a0)
    id = ID++;
    80004d3c:	00006697          	auipc	a3,0x6
    80004d40:	79468693          	addi	a3,a3,1940 # 8000b4d0 <_ZN3TCB7runningE>
    80004d44:	0086b783          	ld	a5,8(a3)
    80004d48:	00178613          	addi	a2,a5,1 # 1001 <_entry-0x7fffefff>
    80004d4c:	00c6b423          	sd	a2,8(a3)
    80004d50:	04f53c23          	sd	a5,88(a0)
    flag = b;
    80004d54:	06e50023          	sb	a4,96(a0)
    periodic = false;
    80004d58:	060500a3          	sb	zero,97(a0)
    next_period = nullptr;
    80004d5c:	06053423          	sd	zero,104(a0)
}
    80004d60:	00813403          	ld	s0,8(sp)
    80004d64:	01010113          	addi	sp,sp,16
    80004d68:	00008067          	ret
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    80004d6c:	00000693          	li	a3,0
    80004d70:	fadff06f          	j	80004d1c <_ZN3TCBC1EPFvPvES0_S0_b+0x30>

0000000080004d74 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b>:
                       ) {
    80004d74:	fc010113          	addi	sp,sp,-64
    80004d78:	02113c23          	sd	ra,56(sp)
    80004d7c:	02813823          	sd	s0,48(sp)
    80004d80:	02913423          	sd	s1,40(sp)
    80004d84:	03213023          	sd	s2,32(sp)
    80004d88:	01313c23          	sd	s3,24(sp)
    80004d8c:	01413823          	sd	s4,16(sp)
    80004d90:	01513423          	sd	s5,8(sp)
    80004d94:	01613023          	sd	s6,0(sp)
    80004d98:	04010413          	addi	s0,sp,64
    80004d9c:	00050493          	mv	s1,a0
    80004da0:	00058913          	mv	s2,a1
    80004da4:	00060a93          	mv	s5,a2
    80004da8:	00068b13          	mv	s6,a3
    80004dac:	00070a13          	mv	s4,a4
    80004db0:	00006797          	auipc	a5,0x6
    80004db4:	5407c783          	lbu	a5,1344(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004db8:	0c078263          	beqz	a5,80004e7c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x108>
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    80004dbc:	00200593          	li	a1,2
    80004dc0:	00006517          	auipc	a0,0x6
    80004dc4:	53850513          	addi	a0,a0,1336 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80004dc8:	00000097          	auipc	ra,0x0
    80004dcc:	2fc080e7          	jalr	764(ra) # 800050c4 <_ZN15MemoryAllocator12memory_allocEm>
    80004dd0:	00050993          	mv	s3,a0
    TCB* tmp = (TCB*)new TCB(start_routine, arg, stack_space, flag);
    80004dd4:	000a0713          	mv	a4,s4
    80004dd8:	000b0693          	mv	a3,s6
    80004ddc:	000a8613          	mv	a2,s5
    80004de0:	00090593          	mv	a1,s2
    80004de4:	00000097          	auipc	ra,0x0
    80004de8:	f08080e7          	jalr	-248(ra) # 80004cec <_ZN3TCBC1EPFvPvES0_S0_b>
    *handle = tmp;
    80004dec:	0134b023          	sd	s3,0(s1)
    if (start_routine != nullptr && tmp != TCB::idle && flag) {
    80004df0:	04090c63          	beqz	s2,80004e48 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xd4>
    80004df4:	00006797          	auipc	a5,0x6
    80004df8:	6ec7b783          	ld	a5,1772(a5) # 8000b4e0 <_ZN3TCB4idleE>
    80004dfc:	05378663          	beq	a5,s3,80004e48 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xd4>
    80004e00:	040a0463          	beqz	s4,80004e48 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xd4>
    80004e04:	00006797          	auipc	a5,0x6
    80004e08:	50c7c783          	lbu	a5,1292(a5) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004e0c:	02079463          	bnez	a5,80004e34 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xc0>
        head = nullptr;
    80004e10:	00006797          	auipc	a5,0x6
    80004e14:	4607b783          	ld	a5,1120(a5) # 8000b270 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004e18:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004e1c:	00006797          	auipc	a5,0x6
    80004e20:	42c7b783          	ld	a5,1068(a5) # 8000b248 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004e24:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004e28:	00100793          	li	a5,1
    80004e2c:	00006717          	auipc	a4,0x6
    80004e30:	4ef70223          	sb	a5,1252(a4) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
        Scheduler::getInstance().put(tmp);
    80004e34:	00098593          	mv	a1,s3
    80004e38:	00006517          	auipc	a0,0x6
    80004e3c:	4e050513          	addi	a0,a0,1248 # 8000b318 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004e40:	00000097          	auipc	ra,0x0
    80004e44:	224080e7          	jalr	548(ra) # 80005064 <_ZN9Scheduler3putEP3TCB>
    if(*handle) return 0;
    80004e48:	0004b783          	ld	a5,0(s1)
    80004e4c:	0a078663          	beqz	a5,80004ef8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x184>
    80004e50:	00000513          	li	a0,0
}
    80004e54:	03813083          	ld	ra,56(sp)
    80004e58:	03013403          	ld	s0,48(sp)
    80004e5c:	02813483          	ld	s1,40(sp)
    80004e60:	02013903          	ld	s2,32(sp)
    80004e64:	01813983          	ld	s3,24(sp)
    80004e68:	01013a03          	ld	s4,16(sp)
    80004e6c:	00813a83          	ld	s5,8(sp)
    80004e70:	00013b03          	ld	s6,0(sp)
    80004e74:	04010113          	addi	sp,sp,64
    80004e78:	00008067          	ret
    MemoryAllocator(){
    80004e7c:	00006617          	auipc	a2,0x6
    80004e80:	47c60613          	addi	a2,a2,1148 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80004e84:	00006797          	auipc	a5,0x6
    80004e88:	4147b783          	ld	a5,1044(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004e8c:	0007b703          	ld	a4,0(a5)
    80004e90:	00006797          	auipc	a5,0x6
    80004e94:	3c07b783          	ld	a5,960(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004e98:	0007b783          	ld	a5,0(a5)
    80004e9c:	40f706b3          	sub	a3,a4,a5
    80004ea0:	0036d693          	srli	a3,a3,0x3
    80004ea4:	00d787b3          	add	a5,a5,a3
    80004ea8:	00178793          	addi	a5,a5,1
    80004eac:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80004eb0:	fff70713          	addi	a4,a4,-1
    80004eb4:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80004eb8:	40f70733          	sub	a4,a4,a5
    80004ebc:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80004ec0:	03f7f693          	andi	a3,a5,63
    80004ec4:	00068663          	beqz	a3,80004ed0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x15c>
    80004ec8:	04000613          	li	a2,64
    80004ecc:	40d606b3          	sub	a3,a2,a3
    80004ed0:	00d787b3          	add	a5,a5,a3
    80004ed4:	00006697          	auipc	a3,0x6
    80004ed8:	42f6b223          	sd	a5,1060(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80004edc:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004ee0:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004ee4:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004ee8:	00100793          	li	a5,1
    80004eec:	00006717          	auipc	a4,0x6
    80004ef0:	40f70223          	sb	a5,1028(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004ef4:	ec9ff06f          	j	80004dbc <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x48>
    else return -1;
    80004ef8:	fff00513          	li	a0,-1
    80004efc:	f59ff06f          	j	80004e54 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xe0>

0000000080004f00 <_ZN3TCB5yieldEv>:
    TS::getInstance().put(running);
    TCB::yield();
    return 0;
}

void TCB::yield() {
    80004f00:	fe010113          	addi	sp,sp,-32
    80004f04:	00113c23          	sd	ra,24(sp)
    80004f08:	00813823          	sd	s0,16(sp)
    80004f0c:	00913423          	sd	s1,8(sp)
    80004f10:	02010413          	addi	s0,sp,32
    TCB * old = running;
    80004f14:	00006497          	auipc	s1,0x6
    80004f18:	5bc4b483          	ld	s1,1468(s1) # 8000b4d0 <_ZN3TCB7runningE>
    80004f1c:	00006797          	auipc	a5,0x6
    80004f20:	3f47c783          	lbu	a5,1012(a5) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004f24:	02079463          	bnez	a5,80004f4c <_ZN3TCB5yieldEv+0x4c>
        head = nullptr;
    80004f28:	00006797          	auipc	a5,0x6
    80004f2c:	3487b783          	ld	a5,840(a5) # 8000b270 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004f30:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004f34:	00006797          	auipc	a5,0x6
    80004f38:	3147b783          	ld	a5,788(a5) # 8000b248 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004f3c:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004f40:	00100793          	li	a5,1
    80004f44:	00006717          	auipc	a4,0x6
    80004f48:	3cf70623          	sb	a5,972(a4) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    running = Scheduler::getInstance().get();
    80004f4c:	00006517          	auipc	a0,0x6
    80004f50:	3cc50513          	addi	a0,a0,972 # 8000b318 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004f54:	00000097          	auipc	ra,0x0
    80004f58:	0a4080e7          	jalr	164(ra) # 80004ff8 <_ZN9Scheduler3getEv>
    80004f5c:	00006797          	auipc	a5,0x6
    80004f60:	57478793          	addi	a5,a5,1396 # 8000b4d0 <_ZN3TCB7runningE>
    80004f64:	00a7b023          	sd	a0,0(a5)
    TCB::time_slice_counter = 0;
    80004f68:	0007bc23          	sd	zero,24(a5)
    TCB::context_switch(&old->context, &running->context);
    80004f6c:	01850593          	addi	a1,a0,24
    80004f70:	01848513          	addi	a0,s1,24
    80004f74:	ffffc097          	auipc	ra,0xffffc
    80004f78:	2bc080e7          	jalr	700(ra) # 80001230 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80004f7c:	01813083          	ld	ra,24(sp)
    80004f80:	01013403          	ld	s0,16(sp)
    80004f84:	00813483          	ld	s1,8(sp)
    80004f88:	02010113          	addi	sp,sp,32
    80004f8c:	00008067          	ret

0000000080004f90 <_ZN3TCB10time_sleepEm>:
int TCB::time_sleep(uint64 time) {
    80004f90:	ff010113          	addi	sp,sp,-16
    80004f94:	00113423          	sd	ra,8(sp)
    80004f98:	00813023          	sd	s0,0(sp)
    80004f9c:	01010413          	addi	s0,sp,16
    running->set_time_sleep(time);
    80004fa0:	00006797          	auipc	a5,0x6
    80004fa4:	5307b783          	ld	a5,1328(a5) # 8000b4d0 <_ZN3TCB7runningE>
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    80004fa8:	04a7b423          	sd	a0,72(a5)

class TS{
public:

    static TS& getInstance(){
        static TS instance;
    80004fac:	00006717          	auipc	a4,0x6
    80004fb0:	54474703          	lbu	a4,1348(a4) # 8000b4f0 <_ZGVZN2TS11getInstanceEvE8instance>
    80004fb4:	00071e63          	bnez	a4,80004fd0 <_ZN3TCB10time_sleepEm+0x40>
    static void decrement_and_remove();

//    static void printTS();

private:
    TS(){head = nullptr;}
    80004fb8:	00006717          	auipc	a4,0x6
    80004fbc:	2a073703          	ld	a4,672(a4) # 8000b258 <_GLOBAL_OFFSET_TABLE_+0x28>
    80004fc0:	00073023          	sd	zero,0(a4)
        static TS instance;
    80004fc4:	00100713          	li	a4,1
    80004fc8:	00006697          	auipc	a3,0x6
    80004fcc:	52e68423          	sb	a4,1320(a3) # 8000b4f0 <_ZGVZN2TS11getInstanceEvE8instance>
    TS::getInstance().put(running);
    80004fd0:	00078513          	mv	a0,a5
    80004fd4:	00000097          	auipc	ra,0x0
    80004fd8:	38c080e7          	jalr	908(ra) # 80005360 <_ZN2TS3putEP3TCB>
    TCB::yield();
    80004fdc:	00000097          	auipc	ra,0x0
    80004fe0:	f24080e7          	jalr	-220(ra) # 80004f00 <_ZN3TCB5yieldEv>
}
    80004fe4:	00000513          	li	a0,0
    80004fe8:	00813083          	ld	ra,8(sp)
    80004fec:	00013403          	ld	s0,0(sp)
    80004ff0:	01010113          	addi	sp,sp,16
    80004ff4:	00008067          	ret

0000000080004ff8 <_ZN9Scheduler3getEv>:
#include "../h/TCB.hpp"

TCB* Scheduler::head;
TCB* Scheduler::tail;

TCB* Scheduler::get(){
    80004ff8:	ff010113          	addi	sp,sp,-16
    80004ffc:	00813423          	sd	s0,8(sp)
    80005000:	01010413          	addi	s0,sp,16
    80005004:	0200006f          	j	80005024 <_ZN9Scheduler3getEv+0x2c>
    while(head) {
        if (!head) { return TCB::idle; }
        TCB *tmp = head;
        if (head == tail) head = tail = nullptr;
    80005008:	00006797          	auipc	a5,0x6
    8000500c:	4f078793          	addi	a5,a5,1264 # 8000b4f8 <_ZN9Scheduler4headE>
    80005010:	0007b423          	sd	zero,8(a5)
    80005014:	0007b023          	sd	zero,0(a5)
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    80005018:	02053823          	sd	zero,48(a0)
    bool is_finished()const{return finished;}
    8000501c:	02854783          	lbu	a5,40(a0)
        else head = head->get_next_scheduler();
        tmp->set_next_scheduler(nullptr);
        if(!tmp->is_finished())return tmp;
    80005020:	02078c63          	beqz	a5,80005058 <_ZN9Scheduler3getEv+0x60>
    while(head) {
    80005024:	00006517          	auipc	a0,0x6
    80005028:	4d453503          	ld	a0,1236(a0) # 8000b4f8 <_ZN9Scheduler4headE>
    8000502c:	02050063          	beqz	a0,8000504c <_ZN9Scheduler3getEv+0x54>
        if (head == tail) head = tail = nullptr;
    80005030:	00006797          	auipc	a5,0x6
    80005034:	4d07b783          	ld	a5,1232(a5) # 8000b500 <_ZN9Scheduler4tailE>
    80005038:	fcf508e3          	beq	a0,a5,80005008 <_ZN9Scheduler3getEv+0x10>
    TCB* get_next_scheduler()const{ return next_scheduler; }
    8000503c:	03053783          	ld	a5,48(a0)
        else head = head->get_next_scheduler();
    80005040:	00006717          	auipc	a4,0x6
    80005044:	4af73c23          	sd	a5,1208(a4) # 8000b4f8 <_ZN9Scheduler4headE>
    80005048:	fd1ff06f          	j	80005018 <_ZN9Scheduler3getEv+0x20>
    }
    return TCB::idle;
    8000504c:	00006797          	auipc	a5,0x6
    80005050:	21c7b783          	ld	a5,540(a5) # 8000b268 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005054:	0007b503          	ld	a0,0(a5)
}
    80005058:	00813403          	ld	s0,8(sp)
    8000505c:	01010113          	addi	sp,sp,16
    80005060:	00008067          	ret

0000000080005064 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB* tcb){
    80005064:	ff010113          	addi	sp,sp,-16
    80005068:	00813423          	sd	s0,8(sp)
    8000506c:	01010413          	addi	s0,sp,16
    if(tcb == TCB::idle)return;
    80005070:	00006797          	auipc	a5,0x6
    80005074:	1f87b783          	ld	a5,504(a5) # 8000b268 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005078:	0007b783          	ld	a5,0(a5)
    8000507c:	02b78463          	beq	a5,a1,800050a4 <_ZN9Scheduler3putEP3TCB+0x40>
    bool is_finished()const{return finished;}
    80005080:	0285c783          	lbu	a5,40(a1)
    if(tcb->is_finished())return;
    80005084:	02079063          	bnez	a5,800050a4 <_ZN9Scheduler3putEP3TCB+0x40>
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    80005088:	0205b823          	sd	zero,48(a1)
    tcb->set_next_scheduler(nullptr);
    if(tail){
    8000508c:	00006797          	auipc	a5,0x6
    80005090:	4747b783          	ld	a5,1140(a5) # 8000b500 <_ZN9Scheduler4tailE>
    80005094:	00078e63          	beqz	a5,800050b0 <_ZN9Scheduler3putEP3TCB+0x4c>
    80005098:	02b7b823          	sd	a1,48(a5)
        tail->set_next_scheduler(tcb);
        tail = tail->get_next_scheduler();
    8000509c:	00006797          	auipc	a5,0x6
    800050a0:	46b7b223          	sd	a1,1124(a5) # 8000b500 <_ZN9Scheduler4tailE>
    }
    else head = tail = tcb;
}
    800050a4:	00813403          	ld	s0,8(sp)
    800050a8:	01010113          	addi	sp,sp,16
    800050ac:	00008067          	ret
    else head = tail = tcb;
    800050b0:	00006797          	auipc	a5,0x6
    800050b4:	44878793          	addi	a5,a5,1096 # 8000b4f8 <_ZN9Scheduler4headE>
    800050b8:	00b7b423          	sd	a1,8(a5)
    800050bc:	00b7b023          	sd	a1,0(a5)
    800050c0:	fe5ff06f          	j	800050a4 <_ZN9Scheduler3putEP3TCB+0x40>

00000000800050c4 <_ZN15MemoryAllocator12memory_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::memory_alloc (size_t size){
    800050c4:	ff010113          	addi	sp,sp,-16
    800050c8:	00813423          	sd	s0,8(sp)
    800050cc:	01010413          	addi	s0,sp,16
    800050d0:	00050713          	mv	a4,a0
    for(FreeMem* cur = fmem_head; cur != nullptr; cur = cur->next   ){ //  cur =  (FreeMem*)(*((char*)cur + 1))
    800050d4:	00053503          	ld	a0,0(a0)
    800050d8:	06050063          	beqz	a0,80005138 <_ZN15MemoryAllocator12memory_allocEm+0x74>
//        printString("velicina u blokovima: ");
//        printInteger(this->fmem_head->size);
//        printString("\n");

        // <= stavljamo jer zelimo size + 1 blok u tom dodatnom cuvam podatak o broju blokova
        if(*((size_t*)cur) <= size) continue;
    800050dc:	00053783          	ld	a5,0(a0)
    800050e0:	06f5f263          	bgeu	a1,a5,80005144 <_ZN15MemoryAllocator12memory_allocEm+0x80>

        // slucaj da imamo jedan blok viska, dodajemo ga jer ne mozemo nista sa njim (trebaju min 2)
        if(cur->size == size + 2){
    800050e4:	00258693          	addi	a3,a1,2
    800050e8:	06d78263          	beq	a5,a3,8000514c <_ZN15MemoryAllocator12memory_allocEm+0x88>

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = size + 1;
        }
        else {
            FreeMem *newfrgm = (FreeMem *) ((char *) cur + (size + 1) * MEM_BLOCK_SIZE);
    800050ec:	00158793          	addi	a5,a1,1
    800050f0:	00679793          	slli	a5,a5,0x6
    800050f4:	00f507b3          	add	a5,a0,a5

            // ubacivanje ostatka adresa u evidenciju slobodnih adresa
            if (cur->prev) cur->prev->next = newfrgm;
    800050f8:	01053683          	ld	a3,16(a0)
    800050fc:	08068a63          	beqz	a3,80005190 <_ZN15MemoryAllocator12memory_allocEm+0xcc>
    80005100:	00f6b423          	sd	a5,8(a3)
            else fmem_head = newfrgm;
            if (cur->next)cur->next->prev = newfrgm;
    80005104:	00853703          	ld	a4,8(a0)
    80005108:	00070463          	beqz	a4,80005110 <_ZN15MemoryAllocator12memory_allocEm+0x4c>
    8000510c:	00f73823          	sd	a5,16(a4)
            newfrgm->prev = cur->prev;
    80005110:	01053703          	ld	a4,16(a0)
    80005114:	00e7b823          	sd	a4,16(a5)
            newfrgm->next = cur->next;
    80005118:	00853703          	ld	a4,8(a0)
    8000511c:	00e7b423          	sd	a4,8(a5)
            newfrgm->size = cur->size - size - 1;
    80005120:	00053703          	ld	a4,0(a0)
    80005124:	40b70733          	sub	a4,a4,a1
    80005128:	fff70713          	addi	a4,a4,-1
    8000512c:	00e7b023          	sd	a4,0(a5)

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = size;
    80005130:	00b50023          	sb	a1,0(a0)
        }
        return (void*)((char*)cur + MEM_BLOCK_SIZE);
    80005134:	04050513          	addi	a0,a0,64
    }
    return nullptr;
}
    80005138:	00813403          	ld	s0,8(sp)
    8000513c:	01010113          	addi	sp,sp,16
    80005140:	00008067          	ret
    for(FreeMem* cur = fmem_head; cur != nullptr; cur = cur->next   ){ //  cur =  (FreeMem*)(*((char*)cur + 1))
    80005144:	00853503          	ld	a0,8(a0)
    80005148:	f91ff06f          	j	800050d8 <_ZN15MemoryAllocator12memory_allocEm+0x14>
            if (cur->prev) {
    8000514c:	01053783          	ld	a5,16(a0)
    80005150:	02078463          	beqz	a5,80005178 <_ZN15MemoryAllocator12memory_allocEm+0xb4>
                cur->prev->next = cur->next;
    80005154:	00853703          	ld	a4,8(a0)
    80005158:	00e7b423          	sd	a4,8(a5)
                if(cur->next)cur->next->prev = cur->prev;
    8000515c:	00853783          	ld	a5,8(a0)
    80005160:	00078663          	beqz	a5,8000516c <_ZN15MemoryAllocator12memory_allocEm+0xa8>
    80005164:	01053703          	ld	a4,16(a0)
    80005168:	00e7b823          	sd	a4,16(a5)
            *((char*)cur) = size + 1;
    8000516c:	0015859b          	addiw	a1,a1,1
    80005170:	00b50023          	sb	a1,0(a0)
    80005174:	fc1ff06f          	j	80005134 <_ZN15MemoryAllocator12memory_allocEm+0x70>
                fmem_head = cur->next;
    80005178:	00853783          	ld	a5,8(a0)
    8000517c:	00f73023          	sd	a5,0(a4)
                if(cur->next)cur->next->prev = nullptr;
    80005180:	00853783          	ld	a5,8(a0)
    80005184:	fe0784e3          	beqz	a5,8000516c <_ZN15MemoryAllocator12memory_allocEm+0xa8>
    80005188:	0007b823          	sd	zero,16(a5)
    8000518c:	fe1ff06f          	j	8000516c <_ZN15MemoryAllocator12memory_allocEm+0xa8>
            else fmem_head = newfrgm;
    80005190:	00f73023          	sd	a5,0(a4)
    80005194:	f71ff06f          	j	80005104 <_ZN15MemoryAllocator12memory_allocEm+0x40>

0000000080005198 <_ZN15MemoryAllocator11memory_freeEPv>:

int MemoryAllocator::memory_free(void * add) {
    80005198:	ff010113          	addi	sp,sp,-16
    8000519c:	00813423          	sd	s0,8(sp)
    800051a0:	01010413          	addi	s0,sp,16
    // u slucaju prosledjenog nullptr
    if(add == nullptr)return 0;
    800051a4:	16058263          	beqz	a1,80005308 <_ZN15MemoryAllocator11memory_freeEPv+0x170>
    // dalja obrada
    FreeMem* cur = nullptr;
    char* addr = (char*)add;
    size_t size = *(addr - MEM_BLOCK_SIZE);
    800051a8:	fc05c603          	lbu	a2,-64(a1)
    // u slucaju da smo prosledili adresu van heap - a
    if(addr < (char*)HEAP_START_ADDR || addr >= (char*)HEAP_END_ADDR)return -1; // address out of bounds exception
    800051ac:	00006797          	auipc	a5,0x6
    800051b0:	0a47b783          	ld	a5,164(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    800051b4:	0007b783          	ld	a5,0(a5)
    800051b8:	14f5ec63          	bltu	a1,a5,80005310 <_ZN15MemoryAllocator11memory_freeEPv+0x178>
    800051bc:	00006797          	auipc	a5,0x6
    800051c0:	0dc7b783          	ld	a5,220(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    800051c4:	0007b783          	ld	a5,0(a5)
    800051c8:	14f5f863          	bgeu	a1,a5,80005318 <_ZN15MemoryAllocator11memory_freeEPv+0x180>
    if(!fmem_head || addr < (char*)fmem_head)
    800051cc:	00053683          	ld	a3,0(a0)
    800051d0:	06068c63          	beqz	a3,80005248 <_ZN15MemoryAllocator11memory_freeEPv+0xb0>
    800051d4:	06d5ee63          	bltu	a1,a3,80005250 <_ZN15MemoryAllocator11memory_freeEPv+0xb8>
        cur = nullptr;
    else
        for(cur = fmem_head; cur->next != nullptr && addr > (char*)(cur->next); cur = cur->next);
    800051d8:	00068793          	mv	a5,a3
    800051dc:	00078713          	mv	a4,a5
    800051e0:	0087b783          	ld	a5,8(a5)
    800051e4:	00078463          	beqz	a5,800051ec <_ZN15MemoryAllocator11memory_freeEPv+0x54>
    800051e8:	feb7eae3          	bltu	a5,a1,800051dc <_ZN15MemoryAllocator11memory_freeEPv+0x44>

    // Try to append it to the previous free segment cur
    if(cur && (char*)cur + (cur->size + 1) * MEM_BLOCK_SIZE == addr){
    800051ec:	06070463          	beqz	a4,80005254 <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
    800051f0:	00073883          	ld	a7,0(a4)
    800051f4:	00188813          	addi	a6,a7,1
    800051f8:	00681813          	slli	a6,a6,0x6
    800051fc:	01070833          	add	a6,a4,a6
    80005200:	04b81a63          	bne	a6,a1,80005254 <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
        cur->size += size + 1; // dodajemo jos jedan zbog bloka za evidenciju
    80005204:	00c886b3          	add	a3,a7,a2
    80005208:	00168693          	addi	a3,a3,1
    8000520c:	00d73023          	sd	a3,0(a4)
        // Try to join cur with the next free segment
        // ovde je ranije stajalo (cur->size + 1) * MEM_BLOCK_SIZE ali je +1 obrisan jer je taj prostor vec oslobodjen pa gadjamo najnormalnije adresu
        if(cur->next && (char*)cur + cur->size * MEM_BLOCK_SIZE == (char*)(cur->next)){
    80005210:	00078863          	beqz	a5,80005220 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
    80005214:	00669613          	slli	a2,a3,0x6
    80005218:	00c70633          	add	a2,a4,a2
    8000521c:	00c78663          	beq	a5,a2,80005228 <_ZN15MemoryAllocator11memory_freeEPv+0x90>
            // Remove the cur->next segment
            cur->size += cur->next->size; // dodajemo jos jedan zbog bloka za evidenciju
            cur->next = cur->next->next;
            if(cur->next) cur->next->prev = cur;
        }
        return 0;
    80005220:	00000513          	li	a0,0
    80005224:	07c0006f          	j	800052a0 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
            cur->size += cur->next->size; // dodajemo jos jedan zbog bloka za evidenciju
    80005228:	0007b603          	ld	a2,0(a5)
    8000522c:	00c686b3          	add	a3,a3,a2
    80005230:	00d73023          	sd	a3,0(a4)
            cur->next = cur->next->next;
    80005234:	0087b783          	ld	a5,8(a5)
    80005238:	00f73423          	sd	a5,8(a4)
            if(cur->next) cur->next->prev = cur;
    8000523c:	fe0782e3          	beqz	a5,80005220 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
    80005240:	00e7b823          	sd	a4,16(a5)
    80005244:	fddff06f          	j	80005220 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
        cur = nullptr;
    80005248:	00068713          	mv	a4,a3
    8000524c:	0080006f          	j	80005254 <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
    80005250:	00000713          	li	a4,0
    }

    FreeMem* newSeg = (FreeMem*)(addr - MEM_BLOCK_SIZE); // moramo da ga vratimo unazad
    80005254:	fc058813          	addi	a6,a1,-64

    // Try to append it to the next free segment:
    FreeMem* nxtSeg = cur?cur->next:fmem_head;
    80005258:	00070463          	beqz	a4,80005260 <_ZN15MemoryAllocator11memory_freeEPv+0xc8>
    8000525c:	00873683          	ld	a3,8(a4)
    // ovde sa obrisao (size + 1) jer ne vracam ni addr za jedan blok unazad pa se to kompenzuje
    if(nxtSeg && addr + size * MEM_BLOCK_SIZE == (char*)nxtSeg){
    80005260:	00068863          	beqz	a3,80005270 <_ZN15MemoryAllocator11memory_freeEPv+0xd8>
    80005264:	00661793          	slli	a5,a2,0x6
    80005268:	00f587b3          	add	a5,a1,a5
    8000526c:	04d78063          	beq	a5,a3,800052ac <_ZN15MemoryAllocator11memory_freeEPv+0x114>
        else fmem_head = newSeg;
        return 0;
    }

    // No need to join; insert the new segment after cur
    newSeg->size = size + 1;
    80005270:	00160613          	addi	a2,a2,1
    80005274:	fcc5b023          	sd	a2,-64(a1)
    newSeg->prev = cur;
    80005278:	fce5b823          	sd	a4,-48(a1)
    if(cur)newSeg->next = cur->next;
    8000527c:	06070a63          	beqz	a4,800052f0 <_ZN15MemoryAllocator11memory_freeEPv+0x158>
    80005280:	00873783          	ld	a5,8(a4)
    80005284:	fcf5b423          	sd	a5,-56(a1)
    else newSeg->next = fmem_head;
    if(newSeg->next) newSeg->next->prev = newSeg;
    80005288:	fc85b783          	ld	a5,-56(a1)
    8000528c:	00078463          	beqz	a5,80005294 <_ZN15MemoryAllocator11memory_freeEPv+0xfc>
    80005290:	0107b823          	sd	a6,16(a5)
    if(cur)cur->next = newSeg;
    80005294:	06070463          	beqz	a4,800052fc <_ZN15MemoryAllocator11memory_freeEPv+0x164>
    80005298:	01073423          	sd	a6,8(a4)
    else fmem_head = newSeg;

    return 0;
    8000529c:	00000513          	li	a0,0
}
    800052a0:	00813403          	ld	s0,8(sp)
    800052a4:	01010113          	addi	sp,sp,16
    800052a8:	00008067          	ret
        newSeg->size = nxtSeg->size + size + 1;
    800052ac:	0006b783          	ld	a5,0(a3)
    800052b0:	00c78633          	add	a2,a5,a2
    800052b4:	00160613          	addi	a2,a2,1
    800052b8:	fcc5b023          	sd	a2,-64(a1)
        newSeg->prev = nxtSeg->prev;
    800052bc:	0106b783          	ld	a5,16(a3)
    800052c0:	fcf5b823          	sd	a5,-48(a1)
        newSeg->next = nxtSeg->next;
    800052c4:	0086b783          	ld	a5,8(a3)
    800052c8:	fcf5b423          	sd	a5,-56(a1)
        if(nxtSeg->next)nxtSeg->next->prev = newSeg;
    800052cc:	00078463          	beqz	a5,800052d4 <_ZN15MemoryAllocator11memory_freeEPv+0x13c>
    800052d0:	0107b823          	sd	a6,16(a5)
        if(nxtSeg->prev)nxtSeg->prev->next = newSeg;
    800052d4:	0106b783          	ld	a5,16(a3)
    800052d8:	00078863          	beqz	a5,800052e8 <_ZN15MemoryAllocator11memory_freeEPv+0x150>
    800052dc:	0107b423          	sd	a6,8(a5)
        return 0;
    800052e0:	00000513          	li	a0,0
    800052e4:	fbdff06f          	j	800052a0 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
        else fmem_head = newSeg;
    800052e8:	01053023          	sd	a6,0(a0)
    800052ec:	ff5ff06f          	j	800052e0 <_ZN15MemoryAllocator11memory_freeEPv+0x148>
    else newSeg->next = fmem_head;
    800052f0:	00053783          	ld	a5,0(a0)
    800052f4:	fcf5b423          	sd	a5,-56(a1)
    800052f8:	f91ff06f          	j	80005288 <_ZN15MemoryAllocator11memory_freeEPv+0xf0>
    else fmem_head = newSeg;
    800052fc:	01053023          	sd	a6,0(a0)
    return 0;
    80005300:	00000513          	li	a0,0
    80005304:	f9dff06f          	j	800052a0 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    if(add == nullptr)return 0;
    80005308:	00000513          	li	a0,0
    8000530c:	f95ff06f          	j	800052a0 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    if(addr < (char*)HEAP_START_ADDR || addr >= (char*)HEAP_END_ADDR)return -1; // address out of bounds exception
    80005310:	fff00513          	li	a0,-1
    80005314:	f8dff06f          	j	800052a0 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    80005318:	fff00513          	li	a0,-1
    8000531c:	f85ff06f          	j	800052a0 <_ZN15MemoryAllocator11memory_freeEPv+0x108>

0000000080005320 <_ZN3abi8sys_callEPv>:
#include "../h/abi.hpp"

void* abi::sys_call(void *param) {
    80005320:	ff010113          	addi	sp,sp,-16
    80005324:	00813423          	sd	s0,8(sp)
    80005328:	01010413          	addi	s0,sp,16
    __asm__ volatile("ld a1, 8(a0)");
    8000532c:	00853583          	ld	a1,8(a0)
    __asm__ volatile("ld a2, 16(a0)");
    80005330:	01053603          	ld	a2,16(a0)
    __asm__ volatile("ld a3, 24(a0)");
    80005334:	01853683          	ld	a3,24(a0)
    __asm__ volatile("ld a4, 32(a0)");
    80005338:	02053703          	ld	a4,32(a0)
    __asm__ volatile("ld a5, 40(a0)");
    8000533c:	02853783          	ld	a5,40(a0)
    __asm__ volatile("ld a6, 48(a0)");
    80005340:	03053803          	ld	a6,48(a0)
    __asm__ volatile("ld a7, 56(a0)");
    80005344:	03853883          	ld	a7,56(a0)
    __asm__ volatile("ld a0, (a0)");
    80005348:	00053503          	ld	a0,0(a0)

    __asm__ volatile("ecall");
    8000534c:	00000073          	ecall
    // u a0 se nalazi povratna vrednost
    uint64 ret0;
    __asm__ volatile("mv %[ret], a0" : [ret]"=r"(ret0));
    80005350:	00050513          	mv	a0,a0
    return (void*)ret0;
}
    80005354:	00813403          	ld	s0,8(sp)
    80005358:	01010113          	addi	sp,sp,16
    8000535c:	00008067          	ret

0000000080005360 <_ZN2TS3putEP3TCB>:
//        tmp = tmp->get_next_sleep();
//    }
//    printString("\n");
//}

void TS::put(TCB *tcb) {
    80005360:	ff010113          	addi	sp,sp,-16
    80005364:	00813423          	sd	s0,8(sp)
    80005368:	01010413          	addi	s0,sp,16

    if(!head){
    8000536c:	00006797          	auipc	a5,0x6
    80005370:	19c7b783          	ld	a5,412(a5) # 8000b508 <_ZN2TS4headE>
    80005374:	02078463          	beqz	a5,8000539c <_ZN2TS3putEP3TCB+0x3c>
    uint64 get_time_sleep()const{ return sleep; }
    80005378:	04853703          	ld	a4,72(a0)
        head->set_next_sleep(nullptr);
//        printTS();
        return;
    }

    TCB* tmp = head, *prev = nullptr;
    8000537c:	00000613          	li	a2,0
    uint64 t_sleep = tcb->get_time_sleep();

    while(tmp && t_sleep >= tmp->get_time_sleep()){
    80005380:	02078663          	beqz	a5,800053ac <_ZN2TS3putEP3TCB+0x4c>
    80005384:	0487b683          	ld	a3,72(a5)
    80005388:	02d76263          	bltu	a4,a3,800053ac <_ZN2TS3putEP3TCB+0x4c>
        t_sleep -= tmp->get_time_sleep();
    8000538c:	40d70733          	sub	a4,a4,a3
        prev = tmp;
    80005390:	00078613          	mv	a2,a5
        tmp = tmp->get_next_sleep();
    80005394:	0387b783          	ld	a5,56(a5)
    while(tmp && t_sleep >= tmp->get_time_sleep()){
    80005398:	fe9ff06f          	j	80005380 <_ZN2TS3putEP3TCB+0x20>
        head = tcb;
    8000539c:	00006797          	auipc	a5,0x6
    800053a0:	16a7b623          	sd	a0,364(a5) # 8000b508 <_ZN2TS4headE>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    800053a4:	02053c23          	sd	zero,56(a0)
        return;
    800053a8:	0240006f          	j	800053cc <_ZN2TS3putEP3TCB+0x6c>
    800053ac:	02f53c23          	sd	a5,56(a0)

    }

    tcb->set_next_sleep(tmp);
    if(tmp)tmp->set_time_sleep(tmp->get_time_sleep() - t_sleep);
    800053b0:	00078863          	beqz	a5,800053c0 <_ZN2TS3putEP3TCB+0x60>
    uint64 get_time_sleep()const{ return sleep; }
    800053b4:	0487b683          	ld	a3,72(a5)
    800053b8:	40e686b3          	sub	a3,a3,a4
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    800053bc:	04d7b423          	sd	a3,72(a5)
    800053c0:	04e53423          	sd	a4,72(a0)
    tcb->set_time_sleep(t_sleep);
    if(prev){
    800053c4:	00060a63          	beqz	a2,800053d8 <_ZN2TS3putEP3TCB+0x78>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    800053c8:	02a63c23          	sd	a0,56(a2)
//    printTS();

    return;


}
    800053cc:	00813403          	ld	s0,8(sp)
    800053d0:	01010113          	addi	sp,sp,16
    800053d4:	00008067          	ret
        head = tcb;
    800053d8:	00006797          	auipc	a5,0x6
    800053dc:	12a7b823          	sd	a0,304(a5) # 8000b508 <_ZN2TS4headE>
    800053e0:	fedff06f          	j	800053cc <_ZN2TS3putEP3TCB+0x6c>

00000000800053e4 <_ZN2TS20decrement_and_removeEv>:

void TS::decrement_and_remove() {

    if(!head)return;
    800053e4:	00006797          	auipc	a5,0x6
    800053e8:	1247b783          	ld	a5,292(a5) # 8000b508 <_ZN2TS4headE>
    800053ec:	0a078863          	beqz	a5,8000549c <_ZN2TS20decrement_and_removeEv+0xb8>
    uint64 get_time_sleep()const{ return sleep; }
    800053f0:	0487b703          	ld	a4,72(a5)

    head->set_time_sleep(head->get_time_sleep() - 1);
    800053f4:	fff70713          	addi	a4,a4,-1
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    800053f8:	04e7b423          	sd	a4,72(a5)
    TCB* tmp;
    while(head && !head->get_time_sleep()){
    800053fc:	00006597          	auipc	a1,0x6
    80005400:	10c5b583          	ld	a1,268(a1) # 8000b508 <_ZN2TS4headE>
    80005404:	08058c63          	beqz	a1,8000549c <_ZN2TS20decrement_and_removeEv+0xb8>
    uint64 get_time_sleep()const{ return sleep; }
    80005408:	0485b783          	ld	a5,72(a1)
    8000540c:	08079863          	bnez	a5,8000549c <_ZN2TS20decrement_and_removeEv+0xb8>
void TS::decrement_and_remove() {
    80005410:	ff010113          	addi	sp,sp,-16
    80005414:	00113423          	sd	ra,8(sp)
    80005418:	00813023          	sd	s0,0(sp)
    8000541c:	01010413          	addi	s0,sp,16
    80005420:	0280006f          	j	80005448 <_ZN2TS20decrement_and_removeEv+0x64>
        tmp = head;
        head = head->get_next_sleep();
        tmp->set_next_sleep(nullptr);
        Scheduler::getInstance().put(tmp);
    80005424:	00006517          	auipc	a0,0x6
    80005428:	ef450513          	addi	a0,a0,-268 # 8000b318 <_ZZN9Scheduler11getInstanceEvE8instance>
    8000542c:	00000097          	auipc	ra,0x0
    80005430:	c38080e7          	jalr	-968(ra) # 80005064 <_ZN9Scheduler3putEP3TCB>
    while(head && !head->get_time_sleep()){
    80005434:	00006597          	auipc	a1,0x6
    80005438:	0d45b583          	ld	a1,212(a1) # 8000b508 <_ZN2TS4headE>
    8000543c:	04058863          	beqz	a1,8000548c <_ZN2TS20decrement_and_removeEv+0xa8>
    80005440:	0485b783          	ld	a5,72(a1)
    80005444:	04079463          	bnez	a5,8000548c <_ZN2TS20decrement_and_removeEv+0xa8>
    TCB* get_next_sleep()const{ return next_sleep; }
    80005448:	0385b783          	ld	a5,56(a1)
        head = head->get_next_sleep();
    8000544c:	00006717          	auipc	a4,0x6
    80005450:	0af73e23          	sd	a5,188(a4) # 8000b508 <_ZN2TS4headE>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    80005454:	0205bc23          	sd	zero,56(a1)
    80005458:	00006797          	auipc	a5,0x6
    8000545c:	eb87c783          	lbu	a5,-328(a5) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80005460:	fc0792e3          	bnez	a5,80005424 <_ZN2TS20decrement_and_removeEv+0x40>
        head = nullptr;
    80005464:	00006797          	auipc	a5,0x6
    80005468:	e0c7b783          	ld	a5,-500(a5) # 8000b270 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000546c:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80005470:	00006797          	auipc	a5,0x6
    80005474:	dd87b783          	ld	a5,-552(a5) # 8000b248 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005478:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    8000547c:	00100793          	li	a5,1
    80005480:	00006717          	auipc	a4,0x6
    80005484:	e8f70823          	sb	a5,-368(a4) # 8000b310 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80005488:	f9dff06f          	j	80005424 <_ZN2TS20decrement_and_removeEv+0x40>
    }
    return;

}
    8000548c:	00813083          	ld	ra,8(sp)
    80005490:	00013403          	ld	s0,0(sp)
    80005494:	01010113          	addi	sp,sp,16
    80005498:	00008067          	ret
    8000549c:	00008067          	ret

00000000800054a0 <_Z9kmem_initPvi>:
#include "../h/SlabI.h"
#include "../h/Buddy.h"
#include "../h/Slab.h"

//
void kmem_init(void *space, int block_num) {
    800054a0:	fe010113          	addi	sp,sp,-32
    800054a4:	00113c23          	sd	ra,24(sp)
    800054a8:	00813823          	sd	s0,16(sp)
    800054ac:	00913423          	sd	s1,8(sp)
    800054b0:	01213023          	sd	s2,0(sp)
    800054b4:	02010413          	addi	s0,sp,32
    800054b8:	00050913          	mv	s2,a0
    800054bc:	00058493          	mv	s1,a1
        static BuddySystem bs;
    800054c0:	00006797          	auipc	a5,0x6
    800054c4:	e987c783          	lbu	a5,-360(a5) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    800054c8:	02078e63          	beqz	a5,80005504 <_Z9kmem_initPvi+0x64>
        if(block_num != 0 && space != nullptr){
    800054cc:	02048063          	beqz	s1,800054ec <_Z9kmem_initPvi+0x4c>
    800054d0:	00090e63          	beqz	s2,800054ec <_Z9kmem_initPvi+0x4c>
            bs.buddyHeapStart = (size_t)space;
    800054d4:	00006517          	auipc	a0,0x6
    800054d8:	e8c50513          	addi	a0,a0,-372 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    800054dc:	15253023          	sd	s2,320(a0)
            bs.buddyNumOfBlocks = block_num;
    800054e0:	14953823          	sd	s1,336(a0)
            bs.initBuddy();
    800054e4:	ffffd097          	auipc	ra,0xffffd
    800054e8:	b28080e7          	jalr	-1240(ra) # 8000200c <_ZN11BuddySystem9initBuddyEv>
    BuddySystem::getInstance(space, block_num);
}
    800054ec:	01813083          	ld	ra,24(sp)
    800054f0:	01013403          	ld	s0,16(sp)
    800054f4:	00813483          	ld	s1,8(sp)
    800054f8:	00013903          	ld	s2,0(sp)
    800054fc:	02010113          	addi	sp,sp,32
    80005500:	00008067          	ret
        static BuddySystem bs;
    80005504:	00006517          	auipc	a0,0x6
    80005508:	e5c50513          	addi	a0,a0,-420 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    8000550c:	ffffc097          	auipc	ra,0xffffc
    80005510:	6c8080e7          	jalr	1736(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80005514:	00100793          	li	a5,1
    80005518:	00006717          	auipc	a4,0x6
    8000551c:	e4f70023          	sb	a5,-448(a4) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80005520:	fadff06f          	j	800054cc <_Z9kmem_initPvi+0x2c>

0000000080005524 <_Z17kmem_cache_createPKcmPFvPvES3_>:

kmem_cache_t *kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    80005524:	fd010113          	addi	sp,sp,-48
    80005528:	02113423          	sd	ra,40(sp)
    8000552c:	02813023          	sd	s0,32(sp)
    80005530:	00913c23          	sd	s1,24(sp)
    80005534:	01213823          	sd	s2,16(sp)
    80005538:	01313423          	sd	s3,8(sp)
    8000553c:	01413023          	sd	s4,0(sp)
    80005540:	03010413          	addi	s0,sp,48
    80005544:	00050493          	mv	s1,a0
    80005548:	00058913          	mv	s2,a1
    8000554c:	00060993          	mv	s3,a2
    80005550:	00068a13          	mv	s4,a3
    if(size_start(name)){
    80005554:	ffffd097          	auipc	ra,0xffffd
    80005558:	f98080e7          	jalr	-104(ra) # 800024ec <_Z10size_startPKc>
    8000555c:	02051e63          	bnez	a0,80005598 <_Z17kmem_cache_createPKcmPFvPvES3_+0x74>
        return nullptr;
    }
    return (kmem_cache_t*)kmem_cache_s::kmem_cache_create(name, size, ctor, dtor);
    80005560:	000a0693          	mv	a3,s4
    80005564:	00098613          	mv	a2,s3
    80005568:	00090593          	mv	a1,s2
    8000556c:	00048513          	mv	a0,s1
    80005570:	ffffe097          	auipc	ra,0xffffe
    80005574:	9f4080e7          	jalr	-1548(ra) # 80002f64 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>
}
    80005578:	02813083          	ld	ra,40(sp)
    8000557c:	02013403          	ld	s0,32(sp)
    80005580:	01813483          	ld	s1,24(sp)
    80005584:	01013903          	ld	s2,16(sp)
    80005588:	00813983          	ld	s3,8(sp)
    8000558c:	00013a03          	ld	s4,0(sp)
    80005590:	03010113          	addi	sp,sp,48
    80005594:	00008067          	ret
        return nullptr;
    80005598:	00000513          	li	a0,0
    8000559c:	fddff06f          	j	80005578 <_Z17kmem_cache_createPKcmPFvPvES3_+0x54>

00000000800055a0 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep) {
    800055a0:	ff010113          	addi	sp,sp,-16
    800055a4:	00113423          	sd	ra,8(sp)
    800055a8:	00813023          	sd	s0,0(sp)
    800055ac:	01010413          	addi	s0,sp,16
    return cachep->kmem_cache_shrink();
    800055b0:	ffffd097          	auipc	ra,0xffffd
    800055b4:	7c0080e7          	jalr	1984(ra) # 80002d70 <_ZN12kmem_cache_s17kmem_cache_shrinkEv>
}
    800055b8:	0005051b          	sext.w	a0,a0
    800055bc:	00813083          	ld	ra,8(sp)
    800055c0:	00013403          	ld	s0,0(sp)
    800055c4:	01010113          	addi	sp,sp,16
    800055c8:	00008067          	ret

00000000800055cc <_Z16kmem_cache_allocP12kmem_cache_s>:

void *kmem_cache_alloc(kmem_cache_t *cachep) {
    800055cc:	fe010113          	addi	sp,sp,-32
    800055d0:	00113c23          	sd	ra,24(sp)
    800055d4:	00813823          	sd	s0,16(sp)
    800055d8:	00913423          	sd	s1,8(sp)
    800055dc:	01213023          	sd	s2,0(sp)
    800055e0:	02010413          	addi	s0,sp,32
    800055e4:	00050913          	mv	s2,a0
    for(int i = 0; i < 2; i++){
    800055e8:	00000493          	li	s1,0
    800055ec:	00100793          	li	a5,1
    800055f0:	0097ce63          	blt	a5,s1,8000560c <_Z16kmem_cache_allocP12kmem_cache_s+0x40>
        void* tmp = cachep->kmem_cache_alloc();
    800055f4:	00090513          	mv	a0,s2
    800055f8:	ffffe097          	auipc	ra,0xffffe
    800055fc:	2f8080e7          	jalr	760(ra) # 800038f0 <_ZN12kmem_cache_s16kmem_cache_allocEv>
        if(tmp != nullptr)return tmp;
    80005600:	00051863          	bnez	a0,80005610 <_Z16kmem_cache_allocP12kmem_cache_s+0x44>
    for(int i = 0; i < 2; i++){
    80005604:	0014849b          	addiw	s1,s1,1
    80005608:	fe5ff06f          	j	800055ec <_Z16kmem_cache_allocP12kmem_cache_s+0x20>
    }
    // not enough memory, or exception triggered
    return nullptr;
    8000560c:	00000513          	li	a0,0
}
    80005610:	01813083          	ld	ra,24(sp)
    80005614:	01013403          	ld	s0,16(sp)
    80005618:	00813483          	ld	s1,8(sp)
    8000561c:	00013903          	ld	s2,0(sp)
    80005620:	02010113          	addi	sp,sp,32
    80005624:	00008067          	ret

0000000080005628 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp) {
    80005628:	ff010113          	addi	sp,sp,-16
    8000562c:	00113423          	sd	ra,8(sp)
    80005630:	00813023          	sd	s0,0(sp)
    80005634:	01010413          	addi	s0,sp,16
    cachep->kmem_cache_free(objp);
    80005638:	ffffe097          	auipc	ra,0xffffe
    8000563c:	a88080e7          	jalr	-1400(ra) # 800030c0 <_ZN12kmem_cache_s15kmem_cache_freeEPv>
}
    80005640:	00813083          	ld	ra,8(sp)
    80005644:	00013403          	ld	s0,0(sp)
    80005648:	01010113          	addi	sp,sp,16
    8000564c:	00008067          	ret

0000000080005650 <_Z7kmallocm>:

void *kmalloc(size_t size) {
    80005650:	fe010113          	addi	sp,sp,-32
    80005654:	00113c23          	sd	ra,24(sp)
    80005658:	00813823          	sd	s0,16(sp)
    8000565c:	00913423          	sd	s1,8(sp)
    80005660:	02010413          	addi	s0,sp,32
    80005664:	00050493          	mv	s1,a0
    if(!kmem_cache_t::is_small_buffer_size_correct(size))return nullptr;
    80005668:	ffffe097          	auipc	ra,0xffffe
    8000566c:	cc8080e7          	jalr	-824(ra) # 80003330 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm>
    80005670:	02050263          	beqz	a0,80005694 <_Z7kmallocm+0x44>
    return kmem_cache_t::kmalloc(size);
    80005674:	00048513          	mv	a0,s1
    80005678:	ffffe097          	auipc	ra,0xffffe
    8000567c:	398080e7          	jalr	920(ra) # 80003a10 <_ZN12kmem_cache_s7kmallocEm>
}
    80005680:	01813083          	ld	ra,24(sp)
    80005684:	01013403          	ld	s0,16(sp)
    80005688:	00813483          	ld	s1,8(sp)
    8000568c:	02010113          	addi	sp,sp,32
    80005690:	00008067          	ret
    if(!kmem_cache_t::is_small_buffer_size_correct(size))return nullptr;
    80005694:	00000513          	li	a0,0
    80005698:	fe9ff06f          	j	80005680 <_Z7kmallocm+0x30>

000000008000569c <_Z5kfreePKv>:

void kfree(const void *objp) {
    8000569c:	ff010113          	addi	sp,sp,-16
    800056a0:	00113423          	sd	ra,8(sp)
    800056a4:	00813023          	sd	s0,0(sp)
    800056a8:	01010413          	addi	s0,sp,16
    kmem_cache_t::kfree(objp);
    800056ac:	ffffe097          	auipc	ra,0xffffe
    800056b0:	cdc080e7          	jalr	-804(ra) # 80003388 <_ZN12kmem_cache_s5kfreeEPKv>
}
    800056b4:	00813083          	ld	ra,8(sp)
    800056b8:	00013403          	ld	s0,0(sp)
    800056bc:	01010113          	addi	sp,sp,16
    800056c0:	00008067          	ret

00000000800056c4 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep) {
    800056c4:	ff010113          	addi	sp,sp,-16
    800056c8:	00113423          	sd	ra,8(sp)
    800056cc:	00813023          	sd	s0,0(sp)
    800056d0:	01010413          	addi	s0,sp,16
    800056d4:	00050593          	mv	a1,a0
    cachep->kmem_cache_destroy((size_t)cachep);
    800056d8:	ffffe097          	auipc	ra,0xffffe
    800056dc:	448080e7          	jalr	1096(ra) # 80003b20 <_ZN12kmem_cache_s18kmem_cache_destroyEm>
}
    800056e0:	00813083          	ld	ra,8(sp)
    800056e4:	00013403          	ld	s0,0(sp)
    800056e8:	01010113          	addi	sp,sp,16
    800056ec:	00008067          	ret

00000000800056f0 <_Z15kmem_cache_infoP12kmem_cache_s>:

void kmem_cache_info(kmem_cache_t *cachep) {
    800056f0:	ff010113          	addi	sp,sp,-16
    800056f4:	00113423          	sd	ra,8(sp)
    800056f8:	00813023          	sd	s0,0(sp)
    800056fc:	01010413          	addi	s0,sp,16
    cachep->kmem_cache_info();
    80005700:	ffffe097          	auipc	ra,0xffffe
    80005704:	ce8080e7          	jalr	-792(ra) # 800033e8 <_ZN12kmem_cache_s15kmem_cache_infoEv>
}
    80005708:	00813083          	ld	ra,8(sp)
    8000570c:	00013403          	ld	s0,0(sp)
    80005710:	01010113          	addi	sp,sp,16
    80005714:	00008067          	ret

0000000080005718 <_Z16print_all_cachesv>:

void print_all_caches() {
    80005718:	ff010113          	addi	sp,sp,-16
    8000571c:	00113423          	sd	ra,8(sp)
    80005720:	00813023          	sd	s0,0(sp)
    80005724:	01010413          	addi	s0,sp,16
    kmem_cache_t::print_info_all_caches();
    80005728:	ffffe097          	auipc	ra,0xffffe
    8000572c:	100080e7          	jalr	256(ra) # 80003828 <_ZN12kmem_cache_s21print_info_all_cachesEv>
}
    80005730:	00813083          	ld	ra,8(sp)
    80005734:	00013403          	ld	s0,0(sp)
    80005738:	01010113          	addi	sp,sp,16
    8000573c:	00008067          	ret

0000000080005740 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005740:	fe010113          	addi	sp,sp,-32
    80005744:	00113c23          	sd	ra,24(sp)
    80005748:	00813823          	sd	s0,16(sp)
    8000574c:	00913423          	sd	s1,8(sp)
    80005750:	02010413          	addi	s0,sp,32
    80005754:	00050493          	mv	s1,a0
    LOCK();
    80005758:	00100613          	li	a2,1
    8000575c:	00000593          	li	a1,0
    80005760:	00006517          	auipc	a0,0x6
    80005764:	db050513          	addi	a0,a0,-592 # 8000b510 <lockPrint>
    80005768:	ffffc097          	auipc	ra,0xffffc
    8000576c:	990080e7          	jalr	-1648(ra) # 800010f8 <copy_and_swap>
    80005770:	fe0514e3          	bnez	a0,80005758 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005774:	0004c503          	lbu	a0,0(s1)
    80005778:	00050a63          	beqz	a0,8000578c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000577c:	ffffc097          	auipc	ra,0xffffc
    80005780:	eb0080e7          	jalr	-336(ra) # 8000162c <putc>
        string++;
    80005784:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005788:	fedff06f          	j	80005774 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000578c:	00000613          	li	a2,0
    80005790:	00100593          	li	a1,1
    80005794:	00006517          	auipc	a0,0x6
    80005798:	d7c50513          	addi	a0,a0,-644 # 8000b510 <lockPrint>
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	95c080e7          	jalr	-1700(ra) # 800010f8 <copy_and_swap>
    800057a4:	fe0514e3          	bnez	a0,8000578c <_Z11printStringPKc+0x4c>
}
    800057a8:	01813083          	ld	ra,24(sp)
    800057ac:	01013403          	ld	s0,16(sp)
    800057b0:	00813483          	ld	s1,8(sp)
    800057b4:	02010113          	addi	sp,sp,32
    800057b8:	00008067          	ret

00000000800057bc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800057bc:	fd010113          	addi	sp,sp,-48
    800057c0:	02113423          	sd	ra,40(sp)
    800057c4:	02813023          	sd	s0,32(sp)
    800057c8:	00913c23          	sd	s1,24(sp)
    800057cc:	01213823          	sd	s2,16(sp)
    800057d0:	01313423          	sd	s3,8(sp)
    800057d4:	01413023          	sd	s4,0(sp)
    800057d8:	03010413          	addi	s0,sp,48
    800057dc:	00050993          	mv	s3,a0
    800057e0:	00058a13          	mv	s4,a1
    LOCK();
    800057e4:	00100613          	li	a2,1
    800057e8:	00000593          	li	a1,0
    800057ec:	00006517          	auipc	a0,0x6
    800057f0:	d2450513          	addi	a0,a0,-732 # 8000b510 <lockPrint>
    800057f4:	ffffc097          	auipc	ra,0xffffc
    800057f8:	904080e7          	jalr	-1788(ra) # 800010f8 <copy_and_swap>
    800057fc:	fe0514e3          	bnez	a0,800057e4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005800:	00000913          	li	s2,0
    80005804:	00090493          	mv	s1,s2
    80005808:	0019091b          	addiw	s2,s2,1
    8000580c:	03495a63          	bge	s2,s4,80005840 <_Z9getStringPci+0x84>
        cc = getc();
    80005810:	ffffc097          	auipc	ra,0xffffc
    80005814:	dc8080e7          	jalr	-568(ra) # 800015d8 <getc>
        if(cc < 1)
    80005818:	02050463          	beqz	a0,80005840 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000581c:	009984b3          	add	s1,s3,s1
    80005820:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005824:	00a00793          	li	a5,10
    80005828:	00f50a63          	beq	a0,a5,8000583c <_Z9getStringPci+0x80>
    8000582c:	00d00793          	li	a5,13
    80005830:	fcf51ae3          	bne	a0,a5,80005804 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005834:	00090493          	mv	s1,s2
    80005838:	0080006f          	j	80005840 <_Z9getStringPci+0x84>
    8000583c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005840:	009984b3          	add	s1,s3,s1
    80005844:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005848:	00000613          	li	a2,0
    8000584c:	00100593          	li	a1,1
    80005850:	00006517          	auipc	a0,0x6
    80005854:	cc050513          	addi	a0,a0,-832 # 8000b510 <lockPrint>
    80005858:	ffffc097          	auipc	ra,0xffffc
    8000585c:	8a0080e7          	jalr	-1888(ra) # 800010f8 <copy_and_swap>
    80005860:	fe0514e3          	bnez	a0,80005848 <_Z9getStringPci+0x8c>
    return buf;
}
    80005864:	00098513          	mv	a0,s3
    80005868:	02813083          	ld	ra,40(sp)
    8000586c:	02013403          	ld	s0,32(sp)
    80005870:	01813483          	ld	s1,24(sp)
    80005874:	01013903          	ld	s2,16(sp)
    80005878:	00813983          	ld	s3,8(sp)
    8000587c:	00013a03          	ld	s4,0(sp)
    80005880:	03010113          	addi	sp,sp,48
    80005884:	00008067          	ret

0000000080005888 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005888:	ff010113          	addi	sp,sp,-16
    8000588c:	00813423          	sd	s0,8(sp)
    80005890:	01010413          	addi	s0,sp,16
    80005894:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005898:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000589c:	0006c603          	lbu	a2,0(a3)
    800058a0:	fd06071b          	addiw	a4,a2,-48
    800058a4:	0ff77713          	andi	a4,a4,255
    800058a8:	00900793          	li	a5,9
    800058ac:	02e7e063          	bltu	a5,a4,800058cc <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800058b0:	0025179b          	slliw	a5,a0,0x2
    800058b4:	00a787bb          	addw	a5,a5,a0
    800058b8:	0017979b          	slliw	a5,a5,0x1
    800058bc:	00168693          	addi	a3,a3,1
    800058c0:	00c787bb          	addw	a5,a5,a2
    800058c4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800058c8:	fd5ff06f          	j	8000589c <_Z11stringToIntPKc+0x14>
    return n;
}
    800058cc:	00813403          	ld	s0,8(sp)
    800058d0:	01010113          	addi	sp,sp,16
    800058d4:	00008067          	ret

00000000800058d8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800058d8:	fc010113          	addi	sp,sp,-64
    800058dc:	02113c23          	sd	ra,56(sp)
    800058e0:	02813823          	sd	s0,48(sp)
    800058e4:	02913423          	sd	s1,40(sp)
    800058e8:	03213023          	sd	s2,32(sp)
    800058ec:	01313c23          	sd	s3,24(sp)
    800058f0:	04010413          	addi	s0,sp,64
    800058f4:	00050493          	mv	s1,a0
    800058f8:	00058913          	mv	s2,a1
    800058fc:	00060993          	mv	s3,a2
    LOCK();
    80005900:	00100613          	li	a2,1
    80005904:	00000593          	li	a1,0
    80005908:	00006517          	auipc	a0,0x6
    8000590c:	c0850513          	addi	a0,a0,-1016 # 8000b510 <lockPrint>
    80005910:	ffffb097          	auipc	ra,0xffffb
    80005914:	7e8080e7          	jalr	2024(ra) # 800010f8 <copy_and_swap>
    80005918:	fe0514e3          	bnez	a0,80005900 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000591c:	00098463          	beqz	s3,80005924 <_Z8printIntiii+0x4c>
    80005920:	0804c463          	bltz	s1,800059a8 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005924:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005928:	00000593          	li	a1,0
    }

    i = 0;
    8000592c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005930:	0009079b          	sext.w	a5,s2
    80005934:	0325773b          	remuw	a4,a0,s2
    80005938:	00048613          	mv	a2,s1
    8000593c:	0014849b          	addiw	s1,s1,1
    80005940:	02071693          	slli	a3,a4,0x20
    80005944:	0206d693          	srli	a3,a3,0x20
    80005948:	00006717          	auipc	a4,0x6
    8000594c:	8c870713          	addi	a4,a4,-1848 # 8000b210 <digits>
    80005950:	00d70733          	add	a4,a4,a3
    80005954:	00074683          	lbu	a3,0(a4)
    80005958:	fd040713          	addi	a4,s0,-48
    8000595c:	00c70733          	add	a4,a4,a2
    80005960:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005964:	0005071b          	sext.w	a4,a0
    80005968:	0325553b          	divuw	a0,a0,s2
    8000596c:	fcf772e3          	bgeu	a4,a5,80005930 <_Z8printIntiii+0x58>
    if(neg)
    80005970:	00058c63          	beqz	a1,80005988 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005974:	fd040793          	addi	a5,s0,-48
    80005978:	009784b3          	add	s1,a5,s1
    8000597c:	02d00793          	li	a5,45
    80005980:	fef48823          	sb	a5,-16(s1)
    80005984:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005988:	fff4849b          	addiw	s1,s1,-1
    8000598c:	0204c463          	bltz	s1,800059b4 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005990:	fd040793          	addi	a5,s0,-48
    80005994:	009787b3          	add	a5,a5,s1
    80005998:	ff07c503          	lbu	a0,-16(a5)
    8000599c:	ffffc097          	auipc	ra,0xffffc
    800059a0:	c90080e7          	jalr	-880(ra) # 8000162c <putc>
    800059a4:	fe5ff06f          	j	80005988 <_Z8printIntiii+0xb0>
        x = -xx;
    800059a8:	4090053b          	negw	a0,s1
        neg = 1;
    800059ac:	00100593          	li	a1,1
        x = -xx;
    800059b0:	f7dff06f          	j	8000592c <_Z8printIntiii+0x54>

    UNLOCK();
    800059b4:	00000613          	li	a2,0
    800059b8:	00100593          	li	a1,1
    800059bc:	00006517          	auipc	a0,0x6
    800059c0:	b5450513          	addi	a0,a0,-1196 # 8000b510 <lockPrint>
    800059c4:	ffffb097          	auipc	ra,0xffffb
    800059c8:	734080e7          	jalr	1844(ra) # 800010f8 <copy_and_swap>
    800059cc:	fe0514e3          	bnez	a0,800059b4 <_Z8printIntiii+0xdc>
    800059d0:	03813083          	ld	ra,56(sp)
    800059d4:	03013403          	ld	s0,48(sp)
    800059d8:	02813483          	ld	s1,40(sp)
    800059dc:	02013903          	ld	s2,32(sp)
    800059e0:	01813983          	ld	s3,24(sp)
    800059e4:	04010113          	addi	sp,sp,64
    800059e8:	00008067          	ret

00000000800059ec <_ZN9BufferCPPC1Ei>:
#include "../test/buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800059ec:	fd010113          	addi	sp,sp,-48
    800059f0:	02113423          	sd	ra,40(sp)
    800059f4:	02813023          	sd	s0,32(sp)
    800059f8:	00913c23          	sd	s1,24(sp)
    800059fc:	01213823          	sd	s2,16(sp)
    80005a00:	01313423          	sd	s3,8(sp)
    80005a04:	03010413          	addi	s0,sp,48
    80005a08:	00050493          	mv	s1,a0
    80005a0c:	00058913          	mv	s2,a1
    80005a10:	0015879b          	addiw	a5,a1,1
    80005a14:	0007851b          	sext.w	a0,a5
    80005a18:	00f4a023          	sw	a5,0(s1)
    80005a1c:	0004a823          	sw	zero,16(s1)
    80005a20:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005a24:	00251513          	slli	a0,a0,0x2
    80005a28:	ffffc097          	auipc	ra,0xffffc
    80005a2c:	81c080e7          	jalr	-2020(ra) # 80001244 <mem_alloc>
    80005a30:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005a34:	01000513          	li	a0,16
    80005a38:	ffffe097          	auipc	ra,0xffffe
    80005a3c:	574080e7          	jalr	1396(ra) # 80003fac <_Znwm>
    80005a40:	00050993          	mv	s3,a0
    80005a44:	00000593          	li	a1,0
    80005a48:	fffff097          	auipc	ra,0xfffff
    80005a4c:	874080e7          	jalr	-1932(ra) # 800042bc <_ZN9SemaphoreC1Ej>
    80005a50:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005a54:	01000513          	li	a0,16
    80005a58:	ffffe097          	auipc	ra,0xffffe
    80005a5c:	554080e7          	jalr	1364(ra) # 80003fac <_Znwm>
    80005a60:	00050993          	mv	s3,a0
    80005a64:	00090593          	mv	a1,s2
    80005a68:	fffff097          	auipc	ra,0xfffff
    80005a6c:	854080e7          	jalr	-1964(ra) # 800042bc <_ZN9SemaphoreC1Ej>
    80005a70:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005a74:	01000513          	li	a0,16
    80005a78:	ffffe097          	auipc	ra,0xffffe
    80005a7c:	534080e7          	jalr	1332(ra) # 80003fac <_Znwm>
    80005a80:	00050913          	mv	s2,a0
    80005a84:	00100593          	li	a1,1
    80005a88:	fffff097          	auipc	ra,0xfffff
    80005a8c:	834080e7          	jalr	-1996(ra) # 800042bc <_ZN9SemaphoreC1Ej>
    80005a90:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005a94:	01000513          	li	a0,16
    80005a98:	ffffe097          	auipc	ra,0xffffe
    80005a9c:	514080e7          	jalr	1300(ra) # 80003fac <_Znwm>
    80005aa0:	00050913          	mv	s2,a0
    80005aa4:	00100593          	li	a1,1
    80005aa8:	fffff097          	auipc	ra,0xfffff
    80005aac:	814080e7          	jalr	-2028(ra) # 800042bc <_ZN9SemaphoreC1Ej>
    80005ab0:	0324b823          	sd	s2,48(s1)
}
    80005ab4:	02813083          	ld	ra,40(sp)
    80005ab8:	02013403          	ld	s0,32(sp)
    80005abc:	01813483          	ld	s1,24(sp)
    80005ac0:	01013903          	ld	s2,16(sp)
    80005ac4:	00813983          	ld	s3,8(sp)
    80005ac8:	03010113          	addi	sp,sp,48
    80005acc:	00008067          	ret
    80005ad0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005ad4:	00098513          	mv	a0,s3
    80005ad8:	ffffe097          	auipc	ra,0xffffe
    80005adc:	524080e7          	jalr	1316(ra) # 80003ffc <_ZdlPv>
    80005ae0:	00048513          	mv	a0,s1
    80005ae4:	00007097          	auipc	ra,0x7
    80005ae8:	b14080e7          	jalr	-1260(ra) # 8000c5f8 <_Unwind_Resume>
    80005aec:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005af0:	00098513          	mv	a0,s3
    80005af4:	ffffe097          	auipc	ra,0xffffe
    80005af8:	508080e7          	jalr	1288(ra) # 80003ffc <_ZdlPv>
    80005afc:	00048513          	mv	a0,s1
    80005b00:	00007097          	auipc	ra,0x7
    80005b04:	af8080e7          	jalr	-1288(ra) # 8000c5f8 <_Unwind_Resume>
    80005b08:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005b0c:	00090513          	mv	a0,s2
    80005b10:	ffffe097          	auipc	ra,0xffffe
    80005b14:	4ec080e7          	jalr	1260(ra) # 80003ffc <_ZdlPv>
    80005b18:	00048513          	mv	a0,s1
    80005b1c:	00007097          	auipc	ra,0x7
    80005b20:	adc080e7          	jalr	-1316(ra) # 8000c5f8 <_Unwind_Resume>
    80005b24:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005b28:	00090513          	mv	a0,s2
    80005b2c:	ffffe097          	auipc	ra,0xffffe
    80005b30:	4d0080e7          	jalr	1232(ra) # 80003ffc <_ZdlPv>
    80005b34:	00048513          	mv	a0,s1
    80005b38:	00007097          	auipc	ra,0x7
    80005b3c:	ac0080e7          	jalr	-1344(ra) # 8000c5f8 <_Unwind_Resume>

0000000080005b40 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005b40:	fe010113          	addi	sp,sp,-32
    80005b44:	00113c23          	sd	ra,24(sp)
    80005b48:	00813823          	sd	s0,16(sp)
    80005b4c:	00913423          	sd	s1,8(sp)
    80005b50:	01213023          	sd	s2,0(sp)
    80005b54:	02010413          	addi	s0,sp,32
    80005b58:	00050493          	mv	s1,a0
    80005b5c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005b60:	01853503          	ld	a0,24(a0)
    80005b64:	ffffe097          	auipc	ra,0xffffe
    80005b68:	798080e7          	jalr	1944(ra) # 800042fc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005b6c:	0304b503          	ld	a0,48(s1)
    80005b70:	ffffe097          	auipc	ra,0xffffe
    80005b74:	78c080e7          	jalr	1932(ra) # 800042fc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005b78:	0084b783          	ld	a5,8(s1)
    80005b7c:	0144a703          	lw	a4,20(s1)
    80005b80:	00271713          	slli	a4,a4,0x2
    80005b84:	00e787b3          	add	a5,a5,a4
    80005b88:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005b8c:	0144a783          	lw	a5,20(s1)
    80005b90:	0017879b          	addiw	a5,a5,1
    80005b94:	0004a703          	lw	a4,0(s1)
    80005b98:	02e7e7bb          	remw	a5,a5,a4
    80005b9c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ba0:	0304b503          	ld	a0,48(s1)
    80005ba4:	ffffe097          	auipc	ra,0xffffe
    80005ba8:	784080e7          	jalr	1924(ra) # 80004328 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005bac:	0204b503          	ld	a0,32(s1)
    80005bb0:	ffffe097          	auipc	ra,0xffffe
    80005bb4:	778080e7          	jalr	1912(ra) # 80004328 <_ZN9Semaphore6signalEv>

}
    80005bb8:	01813083          	ld	ra,24(sp)
    80005bbc:	01013403          	ld	s0,16(sp)
    80005bc0:	00813483          	ld	s1,8(sp)
    80005bc4:	00013903          	ld	s2,0(sp)
    80005bc8:	02010113          	addi	sp,sp,32
    80005bcc:	00008067          	ret

0000000080005bd0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005bd0:	fe010113          	addi	sp,sp,-32
    80005bd4:	00113c23          	sd	ra,24(sp)
    80005bd8:	00813823          	sd	s0,16(sp)
    80005bdc:	00913423          	sd	s1,8(sp)
    80005be0:	01213023          	sd	s2,0(sp)
    80005be4:	02010413          	addi	s0,sp,32
    80005be8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005bec:	02053503          	ld	a0,32(a0)
    80005bf0:	ffffe097          	auipc	ra,0xffffe
    80005bf4:	70c080e7          	jalr	1804(ra) # 800042fc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005bf8:	0284b503          	ld	a0,40(s1)
    80005bfc:	ffffe097          	auipc	ra,0xffffe
    80005c00:	700080e7          	jalr	1792(ra) # 800042fc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005c04:	0084b703          	ld	a4,8(s1)
    80005c08:	0104a783          	lw	a5,16(s1)
    80005c0c:	00279693          	slli	a3,a5,0x2
    80005c10:	00d70733          	add	a4,a4,a3
    80005c14:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c18:	0017879b          	addiw	a5,a5,1
    80005c1c:	0004a703          	lw	a4,0(s1)
    80005c20:	02e7e7bb          	remw	a5,a5,a4
    80005c24:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005c28:	0284b503          	ld	a0,40(s1)
    80005c2c:	ffffe097          	auipc	ra,0xffffe
    80005c30:	6fc080e7          	jalr	1788(ra) # 80004328 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005c34:	0184b503          	ld	a0,24(s1)
    80005c38:	ffffe097          	auipc	ra,0xffffe
    80005c3c:	6f0080e7          	jalr	1776(ra) # 80004328 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c40:	00090513          	mv	a0,s2
    80005c44:	01813083          	ld	ra,24(sp)
    80005c48:	01013403          	ld	s0,16(sp)
    80005c4c:	00813483          	ld	s1,8(sp)
    80005c50:	00013903          	ld	s2,0(sp)
    80005c54:	02010113          	addi	sp,sp,32
    80005c58:	00008067          	ret

0000000080005c5c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005c5c:	fe010113          	addi	sp,sp,-32
    80005c60:	00113c23          	sd	ra,24(sp)
    80005c64:	00813823          	sd	s0,16(sp)
    80005c68:	00913423          	sd	s1,8(sp)
    80005c6c:	01213023          	sd	s2,0(sp)
    80005c70:	02010413          	addi	s0,sp,32
    80005c74:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005c78:	02853503          	ld	a0,40(a0)
    80005c7c:	ffffe097          	auipc	ra,0xffffe
    80005c80:	680080e7          	jalr	1664(ra) # 800042fc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005c84:	0304b503          	ld	a0,48(s1)
    80005c88:	ffffe097          	auipc	ra,0xffffe
    80005c8c:	674080e7          	jalr	1652(ra) # 800042fc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005c90:	0144a783          	lw	a5,20(s1)
    80005c94:	0104a903          	lw	s2,16(s1)
    80005c98:	0327ce63          	blt	a5,s2,80005cd4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005c9c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005ca0:	0304b503          	ld	a0,48(s1)
    80005ca4:	ffffe097          	auipc	ra,0xffffe
    80005ca8:	684080e7          	jalr	1668(ra) # 80004328 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005cac:	0284b503          	ld	a0,40(s1)
    80005cb0:	ffffe097          	auipc	ra,0xffffe
    80005cb4:	678080e7          	jalr	1656(ra) # 80004328 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005cb8:	00090513          	mv	a0,s2
    80005cbc:	01813083          	ld	ra,24(sp)
    80005cc0:	01013403          	ld	s0,16(sp)
    80005cc4:	00813483          	ld	s1,8(sp)
    80005cc8:	00013903          	ld	s2,0(sp)
    80005ccc:	02010113          	addi	sp,sp,32
    80005cd0:	00008067          	ret
        ret = cap - head + tail;
    80005cd4:	0004a703          	lw	a4,0(s1)
    80005cd8:	4127093b          	subw	s2,a4,s2
    80005cdc:	00f9093b          	addw	s2,s2,a5
    80005ce0:	fc1ff06f          	j	80005ca0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005ce4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005ce4:	fe010113          	addi	sp,sp,-32
    80005ce8:	00113c23          	sd	ra,24(sp)
    80005cec:	00813823          	sd	s0,16(sp)
    80005cf0:	00913423          	sd	s1,8(sp)
    80005cf4:	02010413          	addi	s0,sp,32
    80005cf8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005cfc:	00a00513          	li	a0,10
    80005d00:	ffffe097          	auipc	ra,0xffffe
    80005d04:	67c080e7          	jalr	1660(ra) # 8000437c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005d08:	00003517          	auipc	a0,0x3
    80005d0c:	73050513          	addi	a0,a0,1840 # 80009438 <CONSOLE_STATUS+0x428>
    80005d10:	00000097          	auipc	ra,0x0
    80005d14:	a30080e7          	jalr	-1488(ra) # 80005740 <_Z11printStringPKc>
    while (getCnt()) {
    80005d18:	00048513          	mv	a0,s1
    80005d1c:	00000097          	auipc	ra,0x0
    80005d20:	f40080e7          	jalr	-192(ra) # 80005c5c <_ZN9BufferCPP6getCntEv>
    80005d24:	02050c63          	beqz	a0,80005d5c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005d28:	0084b783          	ld	a5,8(s1)
    80005d2c:	0104a703          	lw	a4,16(s1)
    80005d30:	00271713          	slli	a4,a4,0x2
    80005d34:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005d38:	0007c503          	lbu	a0,0(a5)
    80005d3c:	ffffe097          	auipc	ra,0xffffe
    80005d40:	640080e7          	jalr	1600(ra) # 8000437c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005d44:	0104a783          	lw	a5,16(s1)
    80005d48:	0017879b          	addiw	a5,a5,1
    80005d4c:	0004a703          	lw	a4,0(s1)
    80005d50:	02e7e7bb          	remw	a5,a5,a4
    80005d54:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005d58:	fc1ff06f          	j	80005d18 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005d5c:	02100513          	li	a0,33
    80005d60:	ffffe097          	auipc	ra,0xffffe
    80005d64:	61c080e7          	jalr	1564(ra) # 8000437c <_ZN7Console4putcEc>
    Console::putc('\n');
    80005d68:	00a00513          	li	a0,10
    80005d6c:	ffffe097          	auipc	ra,0xffffe
    80005d70:	610080e7          	jalr	1552(ra) # 8000437c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005d74:	0084b503          	ld	a0,8(s1)
    80005d78:	ffffb097          	auipc	ra,0xffffb
    80005d7c:	524080e7          	jalr	1316(ra) # 8000129c <mem_free>
    delete itemAvailable;
    80005d80:	0204b503          	ld	a0,32(s1)
    80005d84:	00050863          	beqz	a0,80005d94 <_ZN9BufferCPPD1Ev+0xb0>
    80005d88:	00053783          	ld	a5,0(a0)
    80005d8c:	0087b783          	ld	a5,8(a5)
    80005d90:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005d94:	0184b503          	ld	a0,24(s1)
    80005d98:	00050863          	beqz	a0,80005da8 <_ZN9BufferCPPD1Ev+0xc4>
    80005d9c:	00053783          	ld	a5,0(a0)
    80005da0:	0087b783          	ld	a5,8(a5)
    80005da4:	000780e7          	jalr	a5
    delete mutexTail;
    80005da8:	0304b503          	ld	a0,48(s1)
    80005dac:	00050863          	beqz	a0,80005dbc <_ZN9BufferCPPD1Ev+0xd8>
    80005db0:	00053783          	ld	a5,0(a0)
    80005db4:	0087b783          	ld	a5,8(a5)
    80005db8:	000780e7          	jalr	a5
    delete mutexHead;
    80005dbc:	0284b503          	ld	a0,40(s1)
    80005dc0:	00050863          	beqz	a0,80005dd0 <_ZN9BufferCPPD1Ev+0xec>
    80005dc4:	00053783          	ld	a5,0(a0)
    80005dc8:	0087b783          	ld	a5,8(a5)
    80005dcc:	000780e7          	jalr	a5
}
    80005dd0:	01813083          	ld	ra,24(sp)
    80005dd4:	01013403          	ld	s0,16(sp)
    80005dd8:	00813483          	ld	s1,8(sp)
    80005ddc:	02010113          	addi	sp,sp,32
    80005de0:	00008067          	ret

0000000080005de4 <_Z41__static_initialization_and_destruction_0ii>:
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

//    testModif();
//    testPrenosParametara();

    80005de4:	00100793          	li	a5,1
    80005de8:	00f50463          	beq	a0,a5,80005df0 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80005dec:	00008067          	ret
    80005df0:	000107b7          	lui	a5,0x10
    80005df4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005df8:	fef59ae3          	bne	a1,a5,80005dec <_Z41__static_initialization_and_destruction_0ii+0x8>
    80005dfc:	fe010113          	addi	sp,sp,-32
    80005e00:	00113c23          	sd	ra,24(sp)
    80005e04:	00813823          	sd	s0,16(sp)
    80005e08:	00913423          	sd	s1,8(sp)
    80005e0c:	01213023          	sd	s2,0(sp)
    80005e10:	02010413          	addi	s0,sp,32
Semaphore* s1 = new  Semaphore(1);
    80005e14:	01000513          	li	a0,16
    80005e18:	ffffe097          	auipc	ra,0xffffe
    80005e1c:	194080e7          	jalr	404(ra) # 80003fac <_Znwm>
    80005e20:	00050493          	mv	s1,a0
    80005e24:	00100593          	li	a1,1
    80005e28:	ffffe097          	auipc	ra,0xffffe
    80005e2c:	494080e7          	jalr	1172(ra) # 800042bc <_ZN9SemaphoreC1Ej>
    80005e30:	00005797          	auipc	a5,0x5
    80005e34:	6e97b423          	sd	s1,1768(a5) # 8000b518 <s1>
Semaphore* s2 = new Semaphore(0);
    80005e38:	01000513          	li	a0,16
    80005e3c:	ffffe097          	auipc	ra,0xffffe
    80005e40:	170080e7          	jalr	368(ra) # 80003fac <_Znwm>
    80005e44:	00050493          	mv	s1,a0
    80005e48:	00000593          	li	a1,0
    80005e4c:	ffffe097          	auipc	ra,0xffffe
    80005e50:	470080e7          	jalr	1136(ra) # 800042bc <_ZN9SemaphoreC1Ej>
    80005e54:	00005797          	auipc	a5,0x5
    80005e58:	6c97b623          	sd	s1,1740(a5) # 8000b520 <s2>
    80005e5c:	01813083          	ld	ra,24(sp)
    80005e60:	01013403          	ld	s0,16(sp)
    80005e64:	00813483          	ld	s1,8(sp)
    80005e68:	00013903          	ld	s2,0(sp)
    80005e6c:	02010113          	addi	sp,sp,32
    80005e70:	00008067          	ret
    80005e74:	00050913          	mv	s2,a0
Semaphore* s1 = new  Semaphore(1);
    80005e78:	00048513          	mv	a0,s1
    80005e7c:	ffffe097          	auipc	ra,0xffffe
    80005e80:	180080e7          	jalr	384(ra) # 80003ffc <_ZdlPv>
    80005e84:	00090513          	mv	a0,s2
    80005e88:	00006097          	auipc	ra,0x6
    80005e8c:	770080e7          	jalr	1904(ra) # 8000c5f8 <_Unwind_Resume>
    80005e90:	00050913          	mv	s2,a0
Semaphore* s2 = new Semaphore(0);
    80005e94:	00048513          	mv	a0,s1
    80005e98:	ffffe097          	auipc	ra,0xffffe
    80005e9c:	164080e7          	jalr	356(ra) # 80003ffc <_ZdlPv>
    80005ea0:	00090513          	mv	a0,s2
    80005ea4:	00006097          	auipc	ra,0x6
    80005ea8:	754080e7          	jalr	1876(ra) # 8000c5f8 <_Unwind_Resume>

0000000080005eac <_ZN8WorkerAA7workerAEPv>:
void WorkerAA::workerA(void * arg){
    80005eac:	fe010113          	addi	sp,sp,-32
    80005eb0:	00113c23          	sd	ra,24(sp)
    80005eb4:	00813823          	sd	s0,16(sp)
    80005eb8:	00913423          	sd	s1,8(sp)
    80005ebc:	02010413          	addi	s0,sp,32
        s1->wait();
    80005ec0:	00005497          	auipc	s1,0x5
    80005ec4:	65848493          	addi	s1,s1,1624 # 8000b518 <s1>
    80005ec8:	0004b503          	ld	a0,0(s1)
    80005ecc:	ffffe097          	auipc	ra,0xffffe
    80005ed0:	430080e7          	jalr	1072(ra) # 800042fc <_ZN9Semaphore4waitEv>
        printString("ispis1");
    80005ed4:	00003517          	auipc	a0,0x3
    80005ed8:	57c50513          	addi	a0,a0,1404 # 80009450 <CONSOLE_STATUS+0x440>
    80005edc:	00000097          	auipc	ra,0x0
    80005ee0:	864080e7          	jalr	-1948(ra) # 80005740 <_Z11printStringPKc>
        s2->signal();
    80005ee4:	0084b503          	ld	a0,8(s1)
    80005ee8:	ffffe097          	auipc	ra,0xffffe
    80005eec:	440080e7          	jalr	1088(ra) # 80004328 <_ZN9Semaphore6signalEv>
    while(true){
    80005ef0:	fd1ff06f          	j	80005ec0 <_ZN8WorkerAA7workerAEPv+0x14>

0000000080005ef4 <_ZN8WorkerBB7workerBEPv>:
void WorkerBB::workerB(void* arg){
    80005ef4:	fe010113          	addi	sp,sp,-32
    80005ef8:	00113c23          	sd	ra,24(sp)
    80005efc:	00813823          	sd	s0,16(sp)
    80005f00:	00913423          	sd	s1,8(sp)
    80005f04:	02010413          	addi	s0,sp,32
        s2->wait();
    80005f08:	00005497          	auipc	s1,0x5
    80005f0c:	61048493          	addi	s1,s1,1552 # 8000b518 <s1>
    80005f10:	0084b503          	ld	a0,8(s1)
    80005f14:	ffffe097          	auipc	ra,0xffffe
    80005f18:	3e8080e7          	jalr	1000(ra) # 800042fc <_ZN9Semaphore4waitEv>
        printString("ispis2");
    80005f1c:	00003517          	auipc	a0,0x3
    80005f20:	53c50513          	addi	a0,a0,1340 # 80009458 <CONSOLE_STATUS+0x448>
    80005f24:	00000097          	auipc	ra,0x0
    80005f28:	81c080e7          	jalr	-2020(ra) # 80005740 <_Z11printStringPKc>
        s1->signal();
    80005f2c:	0004b503          	ld	a0,0(s1)
    80005f30:	ffffe097          	auipc	ra,0xffffe
    80005f34:	3f8080e7          	jalr	1016(ra) # 80004328 <_ZN9Semaphore6signalEv>
    while(true){
    80005f38:	fd1ff06f          	j	80005f08 <_ZN8WorkerBB7workerBEPv+0x14>

0000000080005f3c <_Z8userMainv>:
void userMain() {
    80005f3c:	c2010113          	addi	sp,sp,-992
    80005f40:	3c113c23          	sd	ra,984(sp)
    80005f44:	3c813823          	sd	s0,976(sp)
    80005f48:	3c913423          	sd	s1,968(sp)
    80005f4c:	3d213023          	sd	s2,960(sp)
    80005f50:	3e010413          	addi	s0,sp,992
    void * space = (void*)HEAP_START_ADDR;
    80005f54:	00005797          	auipc	a5,0x5
    80005f58:	2fc7b783          	ld	a5,764(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005f5c:	0007b503          	ld	a0,0(a5)
    int block_num = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 / BLOCK_SIZE;
    80005f60:	00005797          	auipc	a5,0x5
    80005f64:	3387b783          	ld	a5,824(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80005f68:	0007b583          	ld	a1,0(a5)
    80005f6c:	40a585b3          	sub	a1,a1,a0
    80005f70:	00f5d593          	srli	a1,a1,0xf
    kmem_init(space, block_num);
    80005f74:	0005859b          	sext.w	a1,a1
    80005f78:	fffff097          	auipc	ra,0xfffff
    80005f7c:	528080e7          	jalr	1320(ra) # 800054a0 <_Z9kmem_initPvi>
    printString("Buddy allocator heap start: ");
    80005f80:	00003517          	auipc	a0,0x3
    80005f84:	4e050513          	addi	a0,a0,1248 # 80009460 <CONSOLE_STATUS+0x450>
    80005f88:	fffff097          	auipc	ra,0xfffff
    80005f8c:	7b8080e7          	jalr	1976(ra) # 80005740 <_Z11printStringPKc>

    void* buddyAlloc(size_t size);
    void buddyFree(size_t addr);

    static BuddySystem& getInstance(void *space = nullptr, int block_num = 0){
        static BuddySystem bs;
    80005f90:	00005797          	auipc	a5,0x5
    80005f94:	3c87c783          	lbu	a5,968(a5) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80005f98:	14078c63          	beqz	a5,800060f0 <_Z8userMainv+0x1b4>
    printInt(BuddySystem::getInstance().get_buddy_alloc_heap_start());
    80005f9c:	00000613          	li	a2,0
    80005fa0:	00a00593          	li	a1,10
    80005fa4:	00005517          	auipc	a0,0x5
    80005fa8:	4fc52503          	lw	a0,1276(a0) # 8000b4a0 <_ZZN11BuddySystem11getInstanceEPviE2bs+0x140>
    80005fac:	00000097          	auipc	ra,0x0
    80005fb0:	92c080e7          	jalr	-1748(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    80005fb4:	00003517          	auipc	a0,0x3
    80005fb8:	29c50513          	addi	a0,a0,668 # 80009250 <CONSOLE_STATUS+0x240>
    80005fbc:	fffff097          	auipc	ra,0xfffff
    80005fc0:	784080e7          	jalr	1924(ra) # 80005740 <_Z11printStringPKc>
    printString("Buddy allocator heap end: ");
    80005fc4:	00003517          	auipc	a0,0x3
    80005fc8:	4bc50513          	addi	a0,a0,1212 # 80009480 <CONSOLE_STATUS+0x470>
    80005fcc:	fffff097          	auipc	ra,0xfffff
    80005fd0:	774080e7          	jalr	1908(ra) # 80005740 <_Z11printStringPKc>
    80005fd4:	00005797          	auipc	a5,0x5
    80005fd8:	3847c783          	lbu	a5,900(a5) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80005fdc:	12078a63          	beqz	a5,80006110 <_Z8userMainv+0x1d4>
    printInt(BuddySystem::getInstance().get_buddy_alloc_heap_end());
    80005fe0:	00000613          	li	a2,0
    80005fe4:	00a00593          	li	a1,10
    80005fe8:	00005517          	auipc	a0,0x5
    80005fec:	4c052503          	lw	a0,1216(a0) # 8000b4a8 <_ZZN11BuddySystem11getInstanceEPviE2bs+0x148>
    80005ff0:	00000097          	auipc	ra,0x0
    80005ff4:	8e8080e7          	jalr	-1816(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    80005ff8:	00003517          	auipc	a0,0x3
    80005ffc:	25850513          	addi	a0,a0,600 # 80009250 <CONSOLE_STATUS+0x240>
    80006000:	fffff097          	auipc	ra,0xfffff
    80006004:	740080e7          	jalr	1856(ra) # 80005740 <_Z11printStringPKc>
    printString("Memory allocator heap start: ");
    80006008:	00003517          	auipc	a0,0x3
    8000600c:	49850513          	addi	a0,a0,1176 # 800094a0 <CONSOLE_STATUS+0x490>
    80006010:	fffff097          	auipc	ra,0xfffff
    80006014:	730080e7          	jalr	1840(ra) # 80005740 <_Z11printStringPKc>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    80006018:	00005797          	auipc	a5,0x5
    8000601c:	2d87c783          	lbu	a5,728(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80006020:	10078863          	beqz	a5,80006130 <_Z8userMainv+0x1f4>
    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_start());
    80006024:	00000613          	li	a2,0
    80006028:	00a00593          	li	a1,10
    8000602c:	00005517          	auipc	a0,0x5
    80006030:	2d452503          	lw	a0,724(a0) # 8000b300 <_ZZN15MemoryAllocator11getInstanceEvE8instance+0x8>
    80006034:	00000097          	auipc	ra,0x0
    80006038:	8a4080e7          	jalr	-1884(ra) # 800058d8 <_Z8printIntiii>
    printString("\n");
    8000603c:	00003517          	auipc	a0,0x3
    80006040:	21450513          	addi	a0,a0,532 # 80009250 <CONSOLE_STATUS+0x240>
    80006044:	fffff097          	auipc	ra,0xfffff
    80006048:	6fc080e7          	jalr	1788(ra) # 80005740 <_Z11printStringPKc>
    printString("Memory allocator heap end: ");
    8000604c:	00003517          	auipc	a0,0x3
    80006050:	47450513          	addi	a0,a0,1140 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006054:	fffff097          	auipc	ra,0xfffff
    80006058:	6ec080e7          	jalr	1772(ra) # 80005740 <_Z11printStringPKc>
    8000605c:	00005797          	auipc	a5,0x5
    80006060:	2947c783          	lbu	a5,660(a5) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80006064:	14078463          	beqz	a5,800061ac <_Z8userMainv+0x270>
    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_end());
    80006068:	00000613          	li	a2,0
    8000606c:	00a00593          	li	a1,10
    80006070:	00005517          	auipc	a0,0x5
    80006074:	29852503          	lw	a0,664(a0) # 8000b308 <_ZZN15MemoryAllocator11getInstanceEvE8instance+0x10>
    80006078:	00000097          	auipc	ra,0x0
    8000607c:	860080e7          	jalr	-1952(ra) # 800058d8 <_Z8printIntiii>
    printString("\n\n");
    80006080:	00003517          	auipc	a0,0x3
    80006084:	46050513          	addi	a0,a0,1120 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006088:	fffff097          	auipc	ra,0xfffff
    8000608c:	6b8080e7          	jalr	1720(ra) # 80005740 <_Z11printStringPKc>
    kmem_cache_s* cache = kmem_cache_create("test", sizeof(A), nullptr, nullptr);
    80006090:	00000693          	li	a3,0
    80006094:	00000613          	li	a2,0
    80006098:	0000c5b7          	lui	a1,0xc
    8000609c:	35058593          	addi	a1,a1,848 # c350 <_entry-0x7fff3cb0>
    800060a0:	00003517          	auipc	a0,0x3
    800060a4:	44850513          	addi	a0,a0,1096 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800060a8:	fffff097          	auipc	ra,0xfffff
    800060ac:	47c080e7          	jalr	1148(ra) # 80005524 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800060b0:	00050913          	mv	s2,a0
    for(int i = 0; i < 120; i++){
    800060b4:	00000493          	li	s1,0
    800060b8:	07700793          	li	a5,119
    800060bc:	1697c663          	blt	a5,s1,80006228 <_Z8userMainv+0x2ec>
        elem = (A*)kmem_cache_alloc(cache);
    800060c0:	00090513          	mv	a0,s2
    800060c4:	fffff097          	auipc	ra,0xfffff
    800060c8:	508080e7          	jalr	1288(ra) # 800055cc <_Z16kmem_cache_allocP12kmem_cache_s>
        arr[i] = elem;
    800060cc:	00349793          	slli	a5,s1,0x3
    800060d0:	fe040713          	addi	a4,s0,-32
    800060d4:	00f707b3          	add	a5,a4,a5
    800060d8:	c4a7b023          	sd	a0,-960(a5)
        kmem_cache_info(cache);
    800060dc:	00090513          	mv	a0,s2
    800060e0:	fffff097          	auipc	ra,0xfffff
    800060e4:	610080e7          	jalr	1552(ra) # 800056f0 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(int i = 0; i < 120; i++){
    800060e8:	0014849b          	addiw	s1,s1,1
    800060ec:	fcdff06f          	j	800060b8 <_Z8userMainv+0x17c>
    800060f0:	00005517          	auipc	a0,0x5
    800060f4:	27050513          	addi	a0,a0,624 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    800060f8:	ffffc097          	auipc	ra,0xffffc
    800060fc:	adc080e7          	jalr	-1316(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80006100:	00100793          	li	a5,1
    80006104:	00005717          	auipc	a4,0x5
    80006108:	24f70a23          	sb	a5,596(a4) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    8000610c:	e91ff06f          	j	80005f9c <_Z8userMainv+0x60>
    80006110:	00005517          	auipc	a0,0x5
    80006114:	25050513          	addi	a0,a0,592 # 8000b360 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80006118:	ffffc097          	auipc	ra,0xffffc
    8000611c:	abc080e7          	jalr	-1348(ra) # 80001bd4 <_ZN11BuddySystemC1Ev>
    80006120:	00100793          	li	a5,1
    80006124:	00005717          	auipc	a4,0x5
    80006128:	22f70a23          	sb	a5,564(a4) # 8000b358 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    8000612c:	eb5ff06f          	j	80005fe0 <_Z8userMainv+0xa4>

    FreeMem* fmem_head = nullptr;
    size_t heapStart;
    size_t heapEnd;

    MemoryAllocator(){
    80006130:	00005617          	auipc	a2,0x5
    80006134:	1c860613          	addi	a2,a2,456 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    80006138:	00005797          	auipc	a5,0x5
    8000613c:	1607b783          	ld	a5,352(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    80006140:	0007b703          	ld	a4,0(a5)
    80006144:	00005797          	auipc	a5,0x5
    80006148:	10c7b783          	ld	a5,268(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000614c:	0007b783          	ld	a5,0(a5)
    80006150:	40f706b3          	sub	a3,a4,a5
    80006154:	0036d693          	srli	a3,a3,0x3
    80006158:	00d787b3          	add	a5,a5,a3
    8000615c:	00178793          	addi	a5,a5,1
    80006160:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    80006164:	fff70713          	addi	a4,a4,-1
    80006168:	00e63823          	sd	a4,16(a2)

        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    8000616c:	40f70733          	sub	a4,a4,a5
    80006170:	00675713          	srli	a4,a4,0x6

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80006174:	03f7f693          	andi	a3,a5,63
    80006178:	00068663          	beqz	a3,80006184 <_Z8userMainv+0x248>
    8000617c:	04000613          	li	a2,64
    80006180:	40d606b3          	sub	a3,a2,a3
    80006184:	00d787b3          	add	a5,a5,a3
    80006188:	00005697          	auipc	a3,0x5
    8000618c:	16f6b823          	sd	a5,368(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    80006190:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80006194:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80006198:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    8000619c:	00100793          	li	a5,1
    800061a0:	00005717          	auipc	a4,0x5
    800061a4:	14f70823          	sb	a5,336(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800061a8:	e7dff06f          	j	80006024 <_Z8userMainv+0xe8>
    MemoryAllocator(){
    800061ac:	00005617          	auipc	a2,0x5
    800061b0:	14c60613          	addi	a2,a2,332 # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        heapStart = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 + 1;
    800061b4:	00005797          	auipc	a5,0x5
    800061b8:	0e47b783          	ld	a5,228(a5) # 8000b298 <_GLOBAL_OFFSET_TABLE_+0x68>
    800061bc:	0007b703          	ld	a4,0(a5)
    800061c0:	00005797          	auipc	a5,0x5
    800061c4:	0907b783          	ld	a5,144(a5) # 8000b250 <_GLOBAL_OFFSET_TABLE_+0x20>
    800061c8:	0007b783          	ld	a5,0(a5)
    800061cc:	40f706b3          	sub	a3,a4,a5
    800061d0:	0036d693          	srli	a3,a3,0x3
    800061d4:	00d787b3          	add	a5,a5,a3
    800061d8:	00178793          	addi	a5,a5,1
    800061dc:	00f63423          	sd	a5,8(a2)
        heapEnd = (size_t)HEAP_END_ADDR - 1;
    800061e0:	fff70713          	addi	a4,a4,-1
    800061e4:	00e63823          	sd	a4,16(a2)
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    800061e8:	40f70733          	sub	a4,a4,a5
    800061ec:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800061f0:	03f7f693          	andi	a3,a5,63
    800061f4:	00068663          	beqz	a3,80006200 <_Z8userMainv+0x2c4>
    800061f8:	04000613          	li	a2,64
    800061fc:	40d606b3          	sub	a3,a2,a3
    80006200:	00d787b3          	add	a5,a5,a3
    80006204:	00005697          	auipc	a3,0x5
    80006208:	0ef6ba23          	sd	a5,244(a3) # 8000b2f8 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    8000620c:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80006210:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80006214:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80006218:	00100793          	li	a5,1
    8000621c:	00005717          	auipc	a4,0x5
    80006220:	0cf70a23          	sb	a5,212(a4) # 8000b2f0 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80006224:	e45ff06f          	j	80006068 <_Z8userMainv+0x12c>
    kmem_cache_info(cache);
    80006228:	00090513          	mv	a0,s2
    8000622c:	fffff097          	auipc	ra,0xfffff
    80006230:	4c4080e7          	jalr	1220(ra) # 800056f0 <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_free(cache, arr[15]);
    80006234:	c9843583          	ld	a1,-872(s0)
    80006238:	00090513          	mv	a0,s2
    8000623c:	fffff097          	auipc	ra,0xfffff
    80006240:	3ec080e7          	jalr	1004(ra) # 80005628 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    kmem_cache_info(cache);
    80006244:	00090513          	mv	a0,s2
    80006248:	fffff097          	auipc	ra,0xfffff
    8000624c:	4a8080e7          	jalr	1192(ra) # 800056f0 <_Z15kmem_cache_infoP12kmem_cache_s>
    elem = (A*)kmem_cache_alloc(cache);
    80006250:	00090513          	mv	a0,s2
    80006254:	fffff097          	auipc	ra,0xfffff
    80006258:	378080e7          	jalr	888(ra) # 800055cc <_Z16kmem_cache_allocP12kmem_cache_s>
    arr[15] = elem;
    8000625c:	c8a43c23          	sd	a0,-872(s0)
    kmem_cache_info(cache);
    80006260:	00090513          	mv	a0,s2
    80006264:	fffff097          	auipc	ra,0xfffff
    80006268:	48c080e7          	jalr	1164(ra) # 800056f0 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(int i = 0; i < 120; i++){
    8000626c:	00000493          	li	s1,0
    80006270:	07700793          	li	a5,119
    80006274:	0297c463          	blt	a5,s1,8000629c <_Z8userMainv+0x360>
        kmem_cache_free(cache, arr[i]);
    80006278:	00349793          	slli	a5,s1,0x3
    8000627c:	fe040713          	addi	a4,s0,-32
    80006280:	00f707b3          	add	a5,a4,a5
    80006284:	c407b583          	ld	a1,-960(a5)
    80006288:	00090513          	mv	a0,s2
    8000628c:	fffff097          	auipc	ra,0xfffff
    80006290:	39c080e7          	jalr	924(ra) # 80005628 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for(int i = 0; i < 120; i++){
    80006294:	0014849b          	addiw	s1,s1,1
    80006298:	fd9ff06f          	j	80006270 <_Z8userMainv+0x334>
    kmem_cache_info(cache);
    8000629c:	00090513          	mv	a0,s2
    800062a0:	fffff097          	auipc	ra,0xfffff
    800062a4:	450080e7          	jalr	1104(ra) # 800056f0 <_Z15kmem_cache_infoP12kmem_cache_s>
    800062a8:	3d813083          	ld	ra,984(sp)
    800062ac:	3d013403          	ld	s0,976(sp)
    800062b0:	3c813483          	ld	s1,968(sp)
    800062b4:	3c013903          	ld	s2,960(sp)
    800062b8:	3e010113          	addi	sp,sp,992
    800062bc:	00008067          	ret

00000000800062c0 <_GLOBAL__sub_I_s1>:
    800062c0:	ff010113          	addi	sp,sp,-16
    800062c4:	00113423          	sd	ra,8(sp)
    800062c8:	00813023          	sd	s0,0(sp)
    800062cc:	01010413          	addi	s0,sp,16
    800062d0:	000105b7          	lui	a1,0x10
    800062d4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800062d8:	00100513          	li	a0,1
    800062dc:	00000097          	auipc	ra,0x0
    800062e0:	b08080e7          	jalr	-1272(ra) # 80005de4 <_Z41__static_initialization_and_destruction_0ii>
    800062e4:	00813083          	ld	ra,8(sp)
    800062e8:	00013403          	ld	s0,0(sp)
    800062ec:	01010113          	addi	sp,sp,16
    800062f0:	00008067          	ret

00000000800062f4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800062f4:	fe010113          	addi	sp,sp,-32
    800062f8:	00113c23          	sd	ra,24(sp)
    800062fc:	00813823          	sd	s0,16(sp)
    80006300:	00913423          	sd	s1,8(sp)
    80006304:	01213023          	sd	s2,0(sp)
    80006308:	02010413          	addi	s0,sp,32
    8000630c:	00050493          	mv	s1,a0
    80006310:	00058913          	mv	s2,a1
    80006314:	0015879b          	addiw	a5,a1,1
    80006318:	0007851b          	sext.w	a0,a5
    8000631c:	00f4a023          	sw	a5,0(s1)
    80006320:	0004a823          	sw	zero,16(s1)
    80006324:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006328:	00251513          	slli	a0,a0,0x2
    8000632c:	ffffb097          	auipc	ra,0xffffb
    80006330:	f18080e7          	jalr	-232(ra) # 80001244 <mem_alloc>
    80006334:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006338:	00000593          	li	a1,0
    8000633c:	02048513          	addi	a0,s1,32
    80006340:	ffffb097          	auipc	ra,0xffffb
    80006344:	148080e7          	jalr	328(ra) # 80001488 <sem_open>
    sem_open(&spaceAvailable, _cap);
    80006348:	00090593          	mv	a1,s2
    8000634c:	01848513          	addi	a0,s1,24
    80006350:	ffffb097          	auipc	ra,0xffffb
    80006354:	138080e7          	jalr	312(ra) # 80001488 <sem_open>
    sem_open(&mutexHead, 1);
    80006358:	00100593          	li	a1,1
    8000635c:	02848513          	addi	a0,s1,40
    80006360:	ffffb097          	auipc	ra,0xffffb
    80006364:	128080e7          	jalr	296(ra) # 80001488 <sem_open>
    sem_open(&mutexTail, 1);
    80006368:	00100593          	li	a1,1
    8000636c:	03048513          	addi	a0,s1,48
    80006370:	ffffb097          	auipc	ra,0xffffb
    80006374:	118080e7          	jalr	280(ra) # 80001488 <sem_open>
}
    80006378:	01813083          	ld	ra,24(sp)
    8000637c:	01013403          	ld	s0,16(sp)
    80006380:	00813483          	ld	s1,8(sp)
    80006384:	00013903          	ld	s2,0(sp)
    80006388:	02010113          	addi	sp,sp,32
    8000638c:	00008067          	ret

0000000080006390 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006390:	fe010113          	addi	sp,sp,-32
    80006394:	00113c23          	sd	ra,24(sp)
    80006398:	00813823          	sd	s0,16(sp)
    8000639c:	00913423          	sd	s1,8(sp)
    800063a0:	01213023          	sd	s2,0(sp)
    800063a4:	02010413          	addi	s0,sp,32
    800063a8:	00050493          	mv	s1,a0
    800063ac:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800063b0:	01853503          	ld	a0,24(a0)
    800063b4:	ffffb097          	auipc	ra,0xffffb
    800063b8:	17c080e7          	jalr	380(ra) # 80001530 <sem_wait>

    sem_wait(mutexTail);
    800063bc:	0304b503          	ld	a0,48(s1)
    800063c0:	ffffb097          	auipc	ra,0xffffb
    800063c4:	170080e7          	jalr	368(ra) # 80001530 <sem_wait>
    buffer[tail] = val;
    800063c8:	0084b783          	ld	a5,8(s1)
    800063cc:	0144a703          	lw	a4,20(s1)
    800063d0:	00271713          	slli	a4,a4,0x2
    800063d4:	00e787b3          	add	a5,a5,a4
    800063d8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800063dc:	0144a783          	lw	a5,20(s1)
    800063e0:	0017879b          	addiw	a5,a5,1
    800063e4:	0004a703          	lw	a4,0(s1)
    800063e8:	02e7e7bb          	remw	a5,a5,a4
    800063ec:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800063f0:	0304b503          	ld	a0,48(s1)
    800063f4:	ffffb097          	auipc	ra,0xffffb
    800063f8:	190080e7          	jalr	400(ra) # 80001584 <sem_signal>

    sem_signal(itemAvailable);
    800063fc:	0204b503          	ld	a0,32(s1)
    80006400:	ffffb097          	auipc	ra,0xffffb
    80006404:	184080e7          	jalr	388(ra) # 80001584 <sem_signal>

}
    80006408:	01813083          	ld	ra,24(sp)
    8000640c:	01013403          	ld	s0,16(sp)
    80006410:	00813483          	ld	s1,8(sp)
    80006414:	00013903          	ld	s2,0(sp)
    80006418:	02010113          	addi	sp,sp,32
    8000641c:	00008067          	ret

0000000080006420 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006420:	fe010113          	addi	sp,sp,-32
    80006424:	00113c23          	sd	ra,24(sp)
    80006428:	00813823          	sd	s0,16(sp)
    8000642c:	00913423          	sd	s1,8(sp)
    80006430:	01213023          	sd	s2,0(sp)
    80006434:	02010413          	addi	s0,sp,32
    80006438:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000643c:	02053503          	ld	a0,32(a0)
    80006440:	ffffb097          	auipc	ra,0xffffb
    80006444:	0f0080e7          	jalr	240(ra) # 80001530 <sem_wait>

    sem_wait(mutexHead);
    80006448:	0284b503          	ld	a0,40(s1)
    8000644c:	ffffb097          	auipc	ra,0xffffb
    80006450:	0e4080e7          	jalr	228(ra) # 80001530 <sem_wait>

    int ret = buffer[head];
    80006454:	0084b703          	ld	a4,8(s1)
    80006458:	0104a783          	lw	a5,16(s1)
    8000645c:	00279693          	slli	a3,a5,0x2
    80006460:	00d70733          	add	a4,a4,a3
    80006464:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006468:	0017879b          	addiw	a5,a5,1
    8000646c:	0004a703          	lw	a4,0(s1)
    80006470:	02e7e7bb          	remw	a5,a5,a4
    80006474:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006478:	0284b503          	ld	a0,40(s1)
    8000647c:	ffffb097          	auipc	ra,0xffffb
    80006480:	108080e7          	jalr	264(ra) # 80001584 <sem_signal>

    sem_signal(spaceAvailable);
    80006484:	0184b503          	ld	a0,24(s1)
    80006488:	ffffb097          	auipc	ra,0xffffb
    8000648c:	0fc080e7          	jalr	252(ra) # 80001584 <sem_signal>

    return ret;
}
    80006490:	00090513          	mv	a0,s2
    80006494:	01813083          	ld	ra,24(sp)
    80006498:	01013403          	ld	s0,16(sp)
    8000649c:	00813483          	ld	s1,8(sp)
    800064a0:	00013903          	ld	s2,0(sp)
    800064a4:	02010113          	addi	sp,sp,32
    800064a8:	00008067          	ret

00000000800064ac <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800064ac:	fe010113          	addi	sp,sp,-32
    800064b0:	00113c23          	sd	ra,24(sp)
    800064b4:	00813823          	sd	s0,16(sp)
    800064b8:	00913423          	sd	s1,8(sp)
    800064bc:	01213023          	sd	s2,0(sp)
    800064c0:	02010413          	addi	s0,sp,32
    800064c4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800064c8:	02853503          	ld	a0,40(a0)
    800064cc:	ffffb097          	auipc	ra,0xffffb
    800064d0:	064080e7          	jalr	100(ra) # 80001530 <sem_wait>
    sem_wait(mutexTail);
    800064d4:	0304b503          	ld	a0,48(s1)
    800064d8:	ffffb097          	auipc	ra,0xffffb
    800064dc:	058080e7          	jalr	88(ra) # 80001530 <sem_wait>

    if (tail >= head) {
    800064e0:	0144a783          	lw	a5,20(s1)
    800064e4:	0104a903          	lw	s2,16(s1)
    800064e8:	0327ce63          	blt	a5,s2,80006524 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800064ec:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800064f0:	0304b503          	ld	a0,48(s1)
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	090080e7          	jalr	144(ra) # 80001584 <sem_signal>
    sem_signal(mutexHead);
    800064fc:	0284b503          	ld	a0,40(s1)
    80006500:	ffffb097          	auipc	ra,0xffffb
    80006504:	084080e7          	jalr	132(ra) # 80001584 <sem_signal>

    return ret;
}
    80006508:	00090513          	mv	a0,s2
    8000650c:	01813083          	ld	ra,24(sp)
    80006510:	01013403          	ld	s0,16(sp)
    80006514:	00813483          	ld	s1,8(sp)
    80006518:	00013903          	ld	s2,0(sp)
    8000651c:	02010113          	addi	sp,sp,32
    80006520:	00008067          	ret
        ret = cap - head + tail;
    80006524:	0004a703          	lw	a4,0(s1)
    80006528:	4127093b          	subw	s2,a4,s2
    8000652c:	00f9093b          	addw	s2,s2,a5
    80006530:	fc1ff06f          	j	800064f0 <_ZN6Buffer6getCntEv+0x44>

0000000080006534 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006534:	fe010113          	addi	sp,sp,-32
    80006538:	00113c23          	sd	ra,24(sp)
    8000653c:	00813823          	sd	s0,16(sp)
    80006540:	00913423          	sd	s1,8(sp)
    80006544:	02010413          	addi	s0,sp,32
    80006548:	00050493          	mv	s1,a0
    putc('\n');
    8000654c:	00a00513          	li	a0,10
    80006550:	ffffb097          	auipc	ra,0xffffb
    80006554:	0dc080e7          	jalr	220(ra) # 8000162c <putc>
    printString("Buffer deleted!\n");
    80006558:	00003517          	auipc	a0,0x3
    8000655c:	ee050513          	addi	a0,a0,-288 # 80009438 <CONSOLE_STATUS+0x428>
    80006560:	fffff097          	auipc	ra,0xfffff
    80006564:	1e0080e7          	jalr	480(ra) # 80005740 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006568:	00048513          	mv	a0,s1
    8000656c:	00000097          	auipc	ra,0x0
    80006570:	f40080e7          	jalr	-192(ra) # 800064ac <_ZN6Buffer6getCntEv>
    80006574:	02a05c63          	blez	a0,800065ac <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006578:	0084b783          	ld	a5,8(s1)
    8000657c:	0104a703          	lw	a4,16(s1)
    80006580:	00271713          	slli	a4,a4,0x2
    80006584:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006588:	0007c503          	lbu	a0,0(a5)
    8000658c:	ffffb097          	auipc	ra,0xffffb
    80006590:	0a0080e7          	jalr	160(ra) # 8000162c <putc>
        head = (head + 1) % cap;
    80006594:	0104a783          	lw	a5,16(s1)
    80006598:	0017879b          	addiw	a5,a5,1
    8000659c:	0004a703          	lw	a4,0(s1)
    800065a0:	02e7e7bb          	remw	a5,a5,a4
    800065a4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800065a8:	fc1ff06f          	j	80006568 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800065ac:	02100513          	li	a0,33
    800065b0:	ffffb097          	auipc	ra,0xffffb
    800065b4:	07c080e7          	jalr	124(ra) # 8000162c <putc>
    putc('\n');
    800065b8:	00a00513          	li	a0,10
    800065bc:	ffffb097          	auipc	ra,0xffffb
    800065c0:	070080e7          	jalr	112(ra) # 8000162c <putc>
    mem_free(buffer);
    800065c4:	0084b503          	ld	a0,8(s1)
    800065c8:	ffffb097          	auipc	ra,0xffffb
    800065cc:	cd4080e7          	jalr	-812(ra) # 8000129c <mem_free>
    sem_close(itemAvailable);
    800065d0:	0204b503          	ld	a0,32(s1)
    800065d4:	ffffb097          	auipc	ra,0xffffb
    800065d8:	f08080e7          	jalr	-248(ra) # 800014dc <sem_close>
    sem_close(spaceAvailable);
    800065dc:	0184b503          	ld	a0,24(s1)
    800065e0:	ffffb097          	auipc	ra,0xffffb
    800065e4:	efc080e7          	jalr	-260(ra) # 800014dc <sem_close>
    sem_close(mutexTail);
    800065e8:	0304b503          	ld	a0,48(s1)
    800065ec:	ffffb097          	auipc	ra,0xffffb
    800065f0:	ef0080e7          	jalr	-272(ra) # 800014dc <sem_close>
    sem_close(mutexHead);
    800065f4:	0284b503          	ld	a0,40(s1)
    800065f8:	ffffb097          	auipc	ra,0xffffb
    800065fc:	ee4080e7          	jalr	-284(ra) # 800014dc <sem_close>
}
    80006600:	01813083          	ld	ra,24(sp)
    80006604:	01013403          	ld	s0,16(sp)
    80006608:	00813483          	ld	s1,8(sp)
    8000660c:	02010113          	addi	sp,sp,32
    80006610:	00008067          	ret

0000000080006614 <start>:
    80006614:	ff010113          	addi	sp,sp,-16
    80006618:	00813423          	sd	s0,8(sp)
    8000661c:	01010413          	addi	s0,sp,16
    80006620:	300027f3          	csrr	a5,mstatus
    80006624:	ffffe737          	lui	a4,0xffffe
    80006628:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff206f>
    8000662c:	00e7f7b3          	and	a5,a5,a4
    80006630:	00001737          	lui	a4,0x1
    80006634:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006638:	00e7e7b3          	or	a5,a5,a4
    8000663c:	30079073          	csrw	mstatus,a5
    80006640:	00000797          	auipc	a5,0x0
    80006644:	16078793          	addi	a5,a5,352 # 800067a0 <system_main>
    80006648:	34179073          	csrw	mepc,a5
    8000664c:	00000793          	li	a5,0
    80006650:	18079073          	csrw	satp,a5
    80006654:	000107b7          	lui	a5,0x10
    80006658:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000665c:	30279073          	csrw	medeleg,a5
    80006660:	30379073          	csrw	mideleg,a5
    80006664:	104027f3          	csrr	a5,sie
    80006668:	2227e793          	ori	a5,a5,546
    8000666c:	10479073          	csrw	sie,a5
    80006670:	fff00793          	li	a5,-1
    80006674:	00a7d793          	srli	a5,a5,0xa
    80006678:	3b079073          	csrw	pmpaddr0,a5
    8000667c:	00f00793          	li	a5,15
    80006680:	3a079073          	csrw	pmpcfg0,a5
    80006684:	f14027f3          	csrr	a5,mhartid
    80006688:	0200c737          	lui	a4,0x200c
    8000668c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006690:	0007869b          	sext.w	a3,a5
    80006694:	00269713          	slli	a4,a3,0x2
    80006698:	000f4637          	lui	a2,0xf4
    8000669c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800066a0:	00d70733          	add	a4,a4,a3
    800066a4:	0037979b          	slliw	a5,a5,0x3
    800066a8:	020046b7          	lui	a3,0x2004
    800066ac:	00d787b3          	add	a5,a5,a3
    800066b0:	00c585b3          	add	a1,a1,a2
    800066b4:	00371693          	slli	a3,a4,0x3
    800066b8:	00005717          	auipc	a4,0x5
    800066bc:	e7870713          	addi	a4,a4,-392 # 8000b530 <timer_scratch>
    800066c0:	00b7b023          	sd	a1,0(a5)
    800066c4:	00d70733          	add	a4,a4,a3
    800066c8:	00f73c23          	sd	a5,24(a4)
    800066cc:	02c73023          	sd	a2,32(a4)
    800066d0:	34071073          	csrw	mscratch,a4
    800066d4:	00000797          	auipc	a5,0x0
    800066d8:	6ec78793          	addi	a5,a5,1772 # 80006dc0 <timervec>
    800066dc:	30579073          	csrw	mtvec,a5
    800066e0:	300027f3          	csrr	a5,mstatus
    800066e4:	0087e793          	ori	a5,a5,8
    800066e8:	30079073          	csrw	mstatus,a5
    800066ec:	304027f3          	csrr	a5,mie
    800066f0:	0807e793          	ori	a5,a5,128
    800066f4:	30479073          	csrw	mie,a5
    800066f8:	f14027f3          	csrr	a5,mhartid
    800066fc:	0007879b          	sext.w	a5,a5
    80006700:	00078213          	mv	tp,a5
    80006704:	30200073          	mret
    80006708:	00813403          	ld	s0,8(sp)
    8000670c:	01010113          	addi	sp,sp,16
    80006710:	00008067          	ret

0000000080006714 <timerinit>:
    80006714:	ff010113          	addi	sp,sp,-16
    80006718:	00813423          	sd	s0,8(sp)
    8000671c:	01010413          	addi	s0,sp,16
    80006720:	f14027f3          	csrr	a5,mhartid
    80006724:	0200c737          	lui	a4,0x200c
    80006728:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000672c:	0007869b          	sext.w	a3,a5
    80006730:	00269713          	slli	a4,a3,0x2
    80006734:	000f4637          	lui	a2,0xf4
    80006738:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000673c:	00d70733          	add	a4,a4,a3
    80006740:	0037979b          	slliw	a5,a5,0x3
    80006744:	020046b7          	lui	a3,0x2004
    80006748:	00d787b3          	add	a5,a5,a3
    8000674c:	00c585b3          	add	a1,a1,a2
    80006750:	00371693          	slli	a3,a4,0x3
    80006754:	00005717          	auipc	a4,0x5
    80006758:	ddc70713          	addi	a4,a4,-548 # 8000b530 <timer_scratch>
    8000675c:	00b7b023          	sd	a1,0(a5)
    80006760:	00d70733          	add	a4,a4,a3
    80006764:	00f73c23          	sd	a5,24(a4)
    80006768:	02c73023          	sd	a2,32(a4)
    8000676c:	34071073          	csrw	mscratch,a4
    80006770:	00000797          	auipc	a5,0x0
    80006774:	65078793          	addi	a5,a5,1616 # 80006dc0 <timervec>
    80006778:	30579073          	csrw	mtvec,a5
    8000677c:	300027f3          	csrr	a5,mstatus
    80006780:	0087e793          	ori	a5,a5,8
    80006784:	30079073          	csrw	mstatus,a5
    80006788:	304027f3          	csrr	a5,mie
    8000678c:	0807e793          	ori	a5,a5,128
    80006790:	30479073          	csrw	mie,a5
    80006794:	00813403          	ld	s0,8(sp)
    80006798:	01010113          	addi	sp,sp,16
    8000679c:	00008067          	ret

00000000800067a0 <system_main>:
    800067a0:	fe010113          	addi	sp,sp,-32
    800067a4:	00813823          	sd	s0,16(sp)
    800067a8:	00913423          	sd	s1,8(sp)
    800067ac:	00113c23          	sd	ra,24(sp)
    800067b0:	02010413          	addi	s0,sp,32
    800067b4:	00000097          	auipc	ra,0x0
    800067b8:	0c4080e7          	jalr	196(ra) # 80006878 <cpuid>
    800067bc:	00005497          	auipc	s1,0x5
    800067c0:	b0448493          	addi	s1,s1,-1276 # 8000b2c0 <started>
    800067c4:	02050263          	beqz	a0,800067e8 <system_main+0x48>
    800067c8:	0004a783          	lw	a5,0(s1)
    800067cc:	0007879b          	sext.w	a5,a5
    800067d0:	fe078ce3          	beqz	a5,800067c8 <system_main+0x28>
    800067d4:	0ff0000f          	fence
    800067d8:	00003517          	auipc	a0,0x3
    800067dc:	d4850513          	addi	a0,a0,-696 # 80009520 <CONSOLE_STATUS+0x510>
    800067e0:	00001097          	auipc	ra,0x1
    800067e4:	a7c080e7          	jalr	-1412(ra) # 8000725c <panic>
    800067e8:	00001097          	auipc	ra,0x1
    800067ec:	9d0080e7          	jalr	-1584(ra) # 800071b8 <consoleinit>
    800067f0:	00001097          	auipc	ra,0x1
    800067f4:	15c080e7          	jalr	348(ra) # 8000794c <printfinit>
    800067f8:	00003517          	auipc	a0,0x3
    800067fc:	a5850513          	addi	a0,a0,-1448 # 80009250 <CONSOLE_STATUS+0x240>
    80006800:	00001097          	auipc	ra,0x1
    80006804:	ab8080e7          	jalr	-1352(ra) # 800072b8 <__printf>
    80006808:	00003517          	auipc	a0,0x3
    8000680c:	ce850513          	addi	a0,a0,-792 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80006810:	00001097          	auipc	ra,0x1
    80006814:	aa8080e7          	jalr	-1368(ra) # 800072b8 <__printf>
    80006818:	00003517          	auipc	a0,0x3
    8000681c:	a3850513          	addi	a0,a0,-1480 # 80009250 <CONSOLE_STATUS+0x240>
    80006820:	00001097          	auipc	ra,0x1
    80006824:	a98080e7          	jalr	-1384(ra) # 800072b8 <__printf>
    80006828:	00001097          	auipc	ra,0x1
    8000682c:	4b0080e7          	jalr	1200(ra) # 80007cd8 <kinit>
    80006830:	00000097          	auipc	ra,0x0
    80006834:	148080e7          	jalr	328(ra) # 80006978 <trapinit>
    80006838:	00000097          	auipc	ra,0x0
    8000683c:	16c080e7          	jalr	364(ra) # 800069a4 <trapinithart>
    80006840:	00000097          	auipc	ra,0x0
    80006844:	5c0080e7          	jalr	1472(ra) # 80006e00 <plicinit>
    80006848:	00000097          	auipc	ra,0x0
    8000684c:	5e0080e7          	jalr	1504(ra) # 80006e28 <plicinithart>
    80006850:	00000097          	auipc	ra,0x0
    80006854:	078080e7          	jalr	120(ra) # 800068c8 <userinit>
    80006858:	0ff0000f          	fence
    8000685c:	00100793          	li	a5,1
    80006860:	00003517          	auipc	a0,0x3
    80006864:	ca850513          	addi	a0,a0,-856 # 80009508 <CONSOLE_STATUS+0x4f8>
    80006868:	00f4a023          	sw	a5,0(s1)
    8000686c:	00001097          	auipc	ra,0x1
    80006870:	a4c080e7          	jalr	-1460(ra) # 800072b8 <__printf>
    80006874:	0000006f          	j	80006874 <system_main+0xd4>

0000000080006878 <cpuid>:
    80006878:	ff010113          	addi	sp,sp,-16
    8000687c:	00813423          	sd	s0,8(sp)
    80006880:	01010413          	addi	s0,sp,16
    80006884:	00020513          	mv	a0,tp
    80006888:	00813403          	ld	s0,8(sp)
    8000688c:	0005051b          	sext.w	a0,a0
    80006890:	01010113          	addi	sp,sp,16
    80006894:	00008067          	ret

0000000080006898 <mycpu>:
    80006898:	ff010113          	addi	sp,sp,-16
    8000689c:	00813423          	sd	s0,8(sp)
    800068a0:	01010413          	addi	s0,sp,16
    800068a4:	00020793          	mv	a5,tp
    800068a8:	00813403          	ld	s0,8(sp)
    800068ac:	0007879b          	sext.w	a5,a5
    800068b0:	00779793          	slli	a5,a5,0x7
    800068b4:	00006517          	auipc	a0,0x6
    800068b8:	cac50513          	addi	a0,a0,-852 # 8000c560 <cpus>
    800068bc:	00f50533          	add	a0,a0,a5
    800068c0:	01010113          	addi	sp,sp,16
    800068c4:	00008067          	ret

00000000800068c8 <userinit>:
    800068c8:	ff010113          	addi	sp,sp,-16
    800068cc:	00813423          	sd	s0,8(sp)
    800068d0:	01010413          	addi	s0,sp,16
    800068d4:	00813403          	ld	s0,8(sp)
    800068d8:	01010113          	addi	sp,sp,16
    800068dc:	ffffc317          	auipc	t1,0xffffc
    800068e0:	f2c30067          	jr	-212(t1) # 80002808 <main>

00000000800068e4 <either_copyout>:
    800068e4:	ff010113          	addi	sp,sp,-16
    800068e8:	00813023          	sd	s0,0(sp)
    800068ec:	00113423          	sd	ra,8(sp)
    800068f0:	01010413          	addi	s0,sp,16
    800068f4:	02051663          	bnez	a0,80006920 <either_copyout+0x3c>
    800068f8:	00058513          	mv	a0,a1
    800068fc:	00060593          	mv	a1,a2
    80006900:	0006861b          	sext.w	a2,a3
    80006904:	00002097          	auipc	ra,0x2
    80006908:	c60080e7          	jalr	-928(ra) # 80008564 <__memmove>
    8000690c:	00813083          	ld	ra,8(sp)
    80006910:	00013403          	ld	s0,0(sp)
    80006914:	00000513          	li	a0,0
    80006918:	01010113          	addi	sp,sp,16
    8000691c:	00008067          	ret
    80006920:	00003517          	auipc	a0,0x3
    80006924:	c2850513          	addi	a0,a0,-984 # 80009548 <CONSOLE_STATUS+0x538>
    80006928:	00001097          	auipc	ra,0x1
    8000692c:	934080e7          	jalr	-1740(ra) # 8000725c <panic>

0000000080006930 <either_copyin>:
    80006930:	ff010113          	addi	sp,sp,-16
    80006934:	00813023          	sd	s0,0(sp)
    80006938:	00113423          	sd	ra,8(sp)
    8000693c:	01010413          	addi	s0,sp,16
    80006940:	02059463          	bnez	a1,80006968 <either_copyin+0x38>
    80006944:	00060593          	mv	a1,a2
    80006948:	0006861b          	sext.w	a2,a3
    8000694c:	00002097          	auipc	ra,0x2
    80006950:	c18080e7          	jalr	-1000(ra) # 80008564 <__memmove>
    80006954:	00813083          	ld	ra,8(sp)
    80006958:	00013403          	ld	s0,0(sp)
    8000695c:	00000513          	li	a0,0
    80006960:	01010113          	addi	sp,sp,16
    80006964:	00008067          	ret
    80006968:	00003517          	auipc	a0,0x3
    8000696c:	c0850513          	addi	a0,a0,-1016 # 80009570 <CONSOLE_STATUS+0x560>
    80006970:	00001097          	auipc	ra,0x1
    80006974:	8ec080e7          	jalr	-1812(ra) # 8000725c <panic>

0000000080006978 <trapinit>:
    80006978:	ff010113          	addi	sp,sp,-16
    8000697c:	00813423          	sd	s0,8(sp)
    80006980:	01010413          	addi	s0,sp,16
    80006984:	00813403          	ld	s0,8(sp)
    80006988:	00003597          	auipc	a1,0x3
    8000698c:	c1058593          	addi	a1,a1,-1008 # 80009598 <CONSOLE_STATUS+0x588>
    80006990:	00006517          	auipc	a0,0x6
    80006994:	c5050513          	addi	a0,a0,-944 # 8000c5e0 <tickslock>
    80006998:	01010113          	addi	sp,sp,16
    8000699c:	00001317          	auipc	t1,0x1
    800069a0:	5cc30067          	jr	1484(t1) # 80007f68 <initlock>

00000000800069a4 <trapinithart>:
    800069a4:	ff010113          	addi	sp,sp,-16
    800069a8:	00813423          	sd	s0,8(sp)
    800069ac:	01010413          	addi	s0,sp,16
    800069b0:	00000797          	auipc	a5,0x0
    800069b4:	30078793          	addi	a5,a5,768 # 80006cb0 <kernelvec>
    800069b8:	10579073          	csrw	stvec,a5
    800069bc:	00813403          	ld	s0,8(sp)
    800069c0:	01010113          	addi	sp,sp,16
    800069c4:	00008067          	ret

00000000800069c8 <usertrap>:
    800069c8:	ff010113          	addi	sp,sp,-16
    800069cc:	00813423          	sd	s0,8(sp)
    800069d0:	01010413          	addi	s0,sp,16
    800069d4:	00813403          	ld	s0,8(sp)
    800069d8:	01010113          	addi	sp,sp,16
    800069dc:	00008067          	ret

00000000800069e0 <usertrapret>:
    800069e0:	ff010113          	addi	sp,sp,-16
    800069e4:	00813423          	sd	s0,8(sp)
    800069e8:	01010413          	addi	s0,sp,16
    800069ec:	00813403          	ld	s0,8(sp)
    800069f0:	01010113          	addi	sp,sp,16
    800069f4:	00008067          	ret

00000000800069f8 <kerneltrap>:
    800069f8:	fe010113          	addi	sp,sp,-32
    800069fc:	00813823          	sd	s0,16(sp)
    80006a00:	00113c23          	sd	ra,24(sp)
    80006a04:	00913423          	sd	s1,8(sp)
    80006a08:	02010413          	addi	s0,sp,32
    80006a0c:	142025f3          	csrr	a1,scause
    80006a10:	100027f3          	csrr	a5,sstatus
    80006a14:	0027f793          	andi	a5,a5,2
    80006a18:	10079c63          	bnez	a5,80006b30 <kerneltrap+0x138>
    80006a1c:	142027f3          	csrr	a5,scause
    80006a20:	0207ce63          	bltz	a5,80006a5c <kerneltrap+0x64>
    80006a24:	00003517          	auipc	a0,0x3
    80006a28:	bbc50513          	addi	a0,a0,-1092 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006a2c:	00001097          	auipc	ra,0x1
    80006a30:	88c080e7          	jalr	-1908(ra) # 800072b8 <__printf>
    80006a34:	141025f3          	csrr	a1,sepc
    80006a38:	14302673          	csrr	a2,stval
    80006a3c:	00003517          	auipc	a0,0x3
    80006a40:	bb450513          	addi	a0,a0,-1100 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006a44:	00001097          	auipc	ra,0x1
    80006a48:	874080e7          	jalr	-1932(ra) # 800072b8 <__printf>
    80006a4c:	00003517          	auipc	a0,0x3
    80006a50:	bbc50513          	addi	a0,a0,-1092 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006a54:	00001097          	auipc	ra,0x1
    80006a58:	808080e7          	jalr	-2040(ra) # 8000725c <panic>
    80006a5c:	0ff7f713          	andi	a4,a5,255
    80006a60:	00900693          	li	a3,9
    80006a64:	04d70063          	beq	a4,a3,80006aa4 <kerneltrap+0xac>
    80006a68:	fff00713          	li	a4,-1
    80006a6c:	03f71713          	slli	a4,a4,0x3f
    80006a70:	00170713          	addi	a4,a4,1
    80006a74:	fae798e3          	bne	a5,a4,80006a24 <kerneltrap+0x2c>
    80006a78:	00000097          	auipc	ra,0x0
    80006a7c:	e00080e7          	jalr	-512(ra) # 80006878 <cpuid>
    80006a80:	06050663          	beqz	a0,80006aec <kerneltrap+0xf4>
    80006a84:	144027f3          	csrr	a5,sip
    80006a88:	ffd7f793          	andi	a5,a5,-3
    80006a8c:	14479073          	csrw	sip,a5
    80006a90:	01813083          	ld	ra,24(sp)
    80006a94:	01013403          	ld	s0,16(sp)
    80006a98:	00813483          	ld	s1,8(sp)
    80006a9c:	02010113          	addi	sp,sp,32
    80006aa0:	00008067          	ret
    80006aa4:	00000097          	auipc	ra,0x0
    80006aa8:	3d0080e7          	jalr	976(ra) # 80006e74 <plic_claim>
    80006aac:	00a00793          	li	a5,10
    80006ab0:	00050493          	mv	s1,a0
    80006ab4:	06f50863          	beq	a0,a5,80006b24 <kerneltrap+0x12c>
    80006ab8:	fc050ce3          	beqz	a0,80006a90 <kerneltrap+0x98>
    80006abc:	00050593          	mv	a1,a0
    80006ac0:	00003517          	auipc	a0,0x3
    80006ac4:	b0050513          	addi	a0,a0,-1280 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006ac8:	00000097          	auipc	ra,0x0
    80006acc:	7f0080e7          	jalr	2032(ra) # 800072b8 <__printf>
    80006ad0:	01013403          	ld	s0,16(sp)
    80006ad4:	01813083          	ld	ra,24(sp)
    80006ad8:	00048513          	mv	a0,s1
    80006adc:	00813483          	ld	s1,8(sp)
    80006ae0:	02010113          	addi	sp,sp,32
    80006ae4:	00000317          	auipc	t1,0x0
    80006ae8:	3c830067          	jr	968(t1) # 80006eac <plic_complete>
    80006aec:	00006517          	auipc	a0,0x6
    80006af0:	af450513          	addi	a0,a0,-1292 # 8000c5e0 <tickslock>
    80006af4:	00001097          	auipc	ra,0x1
    80006af8:	498080e7          	jalr	1176(ra) # 80007f8c <acquire>
    80006afc:	00004717          	auipc	a4,0x4
    80006b00:	7c870713          	addi	a4,a4,1992 # 8000b2c4 <ticks>
    80006b04:	00072783          	lw	a5,0(a4)
    80006b08:	00006517          	auipc	a0,0x6
    80006b0c:	ad850513          	addi	a0,a0,-1320 # 8000c5e0 <tickslock>
    80006b10:	0017879b          	addiw	a5,a5,1
    80006b14:	00f72023          	sw	a5,0(a4)
    80006b18:	00001097          	auipc	ra,0x1
    80006b1c:	540080e7          	jalr	1344(ra) # 80008058 <release>
    80006b20:	f65ff06f          	j	80006a84 <kerneltrap+0x8c>
    80006b24:	00001097          	auipc	ra,0x1
    80006b28:	09c080e7          	jalr	156(ra) # 80007bc0 <uartintr>
    80006b2c:	fa5ff06f          	j	80006ad0 <kerneltrap+0xd8>
    80006b30:	00003517          	auipc	a0,0x3
    80006b34:	a7050513          	addi	a0,a0,-1424 # 800095a0 <CONSOLE_STATUS+0x590>
    80006b38:	00000097          	auipc	ra,0x0
    80006b3c:	724080e7          	jalr	1828(ra) # 8000725c <panic>

0000000080006b40 <clockintr>:
    80006b40:	fe010113          	addi	sp,sp,-32
    80006b44:	00813823          	sd	s0,16(sp)
    80006b48:	00913423          	sd	s1,8(sp)
    80006b4c:	00113c23          	sd	ra,24(sp)
    80006b50:	02010413          	addi	s0,sp,32
    80006b54:	00006497          	auipc	s1,0x6
    80006b58:	a8c48493          	addi	s1,s1,-1396 # 8000c5e0 <tickslock>
    80006b5c:	00048513          	mv	a0,s1
    80006b60:	00001097          	auipc	ra,0x1
    80006b64:	42c080e7          	jalr	1068(ra) # 80007f8c <acquire>
    80006b68:	00004717          	auipc	a4,0x4
    80006b6c:	75c70713          	addi	a4,a4,1884 # 8000b2c4 <ticks>
    80006b70:	00072783          	lw	a5,0(a4)
    80006b74:	01013403          	ld	s0,16(sp)
    80006b78:	01813083          	ld	ra,24(sp)
    80006b7c:	00048513          	mv	a0,s1
    80006b80:	0017879b          	addiw	a5,a5,1
    80006b84:	00813483          	ld	s1,8(sp)
    80006b88:	00f72023          	sw	a5,0(a4)
    80006b8c:	02010113          	addi	sp,sp,32
    80006b90:	00001317          	auipc	t1,0x1
    80006b94:	4c830067          	jr	1224(t1) # 80008058 <release>

0000000080006b98 <devintr>:
    80006b98:	142027f3          	csrr	a5,scause
    80006b9c:	00000513          	li	a0,0
    80006ba0:	0007c463          	bltz	a5,80006ba8 <devintr+0x10>
    80006ba4:	00008067          	ret
    80006ba8:	fe010113          	addi	sp,sp,-32
    80006bac:	00813823          	sd	s0,16(sp)
    80006bb0:	00113c23          	sd	ra,24(sp)
    80006bb4:	00913423          	sd	s1,8(sp)
    80006bb8:	02010413          	addi	s0,sp,32
    80006bbc:	0ff7f713          	andi	a4,a5,255
    80006bc0:	00900693          	li	a3,9
    80006bc4:	04d70c63          	beq	a4,a3,80006c1c <devintr+0x84>
    80006bc8:	fff00713          	li	a4,-1
    80006bcc:	03f71713          	slli	a4,a4,0x3f
    80006bd0:	00170713          	addi	a4,a4,1
    80006bd4:	00e78c63          	beq	a5,a4,80006bec <devintr+0x54>
    80006bd8:	01813083          	ld	ra,24(sp)
    80006bdc:	01013403          	ld	s0,16(sp)
    80006be0:	00813483          	ld	s1,8(sp)
    80006be4:	02010113          	addi	sp,sp,32
    80006be8:	00008067          	ret
    80006bec:	00000097          	auipc	ra,0x0
    80006bf0:	c8c080e7          	jalr	-884(ra) # 80006878 <cpuid>
    80006bf4:	06050663          	beqz	a0,80006c60 <devintr+0xc8>
    80006bf8:	144027f3          	csrr	a5,sip
    80006bfc:	ffd7f793          	andi	a5,a5,-3
    80006c00:	14479073          	csrw	sip,a5
    80006c04:	01813083          	ld	ra,24(sp)
    80006c08:	01013403          	ld	s0,16(sp)
    80006c0c:	00813483          	ld	s1,8(sp)
    80006c10:	00200513          	li	a0,2
    80006c14:	02010113          	addi	sp,sp,32
    80006c18:	00008067          	ret
    80006c1c:	00000097          	auipc	ra,0x0
    80006c20:	258080e7          	jalr	600(ra) # 80006e74 <plic_claim>
    80006c24:	00a00793          	li	a5,10
    80006c28:	00050493          	mv	s1,a0
    80006c2c:	06f50663          	beq	a0,a5,80006c98 <devintr+0x100>
    80006c30:	00100513          	li	a0,1
    80006c34:	fa0482e3          	beqz	s1,80006bd8 <devintr+0x40>
    80006c38:	00048593          	mv	a1,s1
    80006c3c:	00003517          	auipc	a0,0x3
    80006c40:	98450513          	addi	a0,a0,-1660 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006c44:	00000097          	auipc	ra,0x0
    80006c48:	674080e7          	jalr	1652(ra) # 800072b8 <__printf>
    80006c4c:	00048513          	mv	a0,s1
    80006c50:	00000097          	auipc	ra,0x0
    80006c54:	25c080e7          	jalr	604(ra) # 80006eac <plic_complete>
    80006c58:	00100513          	li	a0,1
    80006c5c:	f7dff06f          	j	80006bd8 <devintr+0x40>
    80006c60:	00006517          	auipc	a0,0x6
    80006c64:	98050513          	addi	a0,a0,-1664 # 8000c5e0 <tickslock>
    80006c68:	00001097          	auipc	ra,0x1
    80006c6c:	324080e7          	jalr	804(ra) # 80007f8c <acquire>
    80006c70:	00004717          	auipc	a4,0x4
    80006c74:	65470713          	addi	a4,a4,1620 # 8000b2c4 <ticks>
    80006c78:	00072783          	lw	a5,0(a4)
    80006c7c:	00006517          	auipc	a0,0x6
    80006c80:	96450513          	addi	a0,a0,-1692 # 8000c5e0 <tickslock>
    80006c84:	0017879b          	addiw	a5,a5,1
    80006c88:	00f72023          	sw	a5,0(a4)
    80006c8c:	00001097          	auipc	ra,0x1
    80006c90:	3cc080e7          	jalr	972(ra) # 80008058 <release>
    80006c94:	f65ff06f          	j	80006bf8 <devintr+0x60>
    80006c98:	00001097          	auipc	ra,0x1
    80006c9c:	f28080e7          	jalr	-216(ra) # 80007bc0 <uartintr>
    80006ca0:	fadff06f          	j	80006c4c <devintr+0xb4>
	...

0000000080006cb0 <kernelvec>:
    80006cb0:	f0010113          	addi	sp,sp,-256
    80006cb4:	00113023          	sd	ra,0(sp)
    80006cb8:	00213423          	sd	sp,8(sp)
    80006cbc:	00313823          	sd	gp,16(sp)
    80006cc0:	00413c23          	sd	tp,24(sp)
    80006cc4:	02513023          	sd	t0,32(sp)
    80006cc8:	02613423          	sd	t1,40(sp)
    80006ccc:	02713823          	sd	t2,48(sp)
    80006cd0:	02813c23          	sd	s0,56(sp)
    80006cd4:	04913023          	sd	s1,64(sp)
    80006cd8:	04a13423          	sd	a0,72(sp)
    80006cdc:	04b13823          	sd	a1,80(sp)
    80006ce0:	04c13c23          	sd	a2,88(sp)
    80006ce4:	06d13023          	sd	a3,96(sp)
    80006ce8:	06e13423          	sd	a4,104(sp)
    80006cec:	06f13823          	sd	a5,112(sp)
    80006cf0:	07013c23          	sd	a6,120(sp)
    80006cf4:	09113023          	sd	a7,128(sp)
    80006cf8:	09213423          	sd	s2,136(sp)
    80006cfc:	09313823          	sd	s3,144(sp)
    80006d00:	09413c23          	sd	s4,152(sp)
    80006d04:	0b513023          	sd	s5,160(sp)
    80006d08:	0b613423          	sd	s6,168(sp)
    80006d0c:	0b713823          	sd	s7,176(sp)
    80006d10:	0b813c23          	sd	s8,184(sp)
    80006d14:	0d913023          	sd	s9,192(sp)
    80006d18:	0da13423          	sd	s10,200(sp)
    80006d1c:	0db13823          	sd	s11,208(sp)
    80006d20:	0dc13c23          	sd	t3,216(sp)
    80006d24:	0fd13023          	sd	t4,224(sp)
    80006d28:	0fe13423          	sd	t5,232(sp)
    80006d2c:	0ff13823          	sd	t6,240(sp)
    80006d30:	cc9ff0ef          	jal	ra,800069f8 <kerneltrap>
    80006d34:	00013083          	ld	ra,0(sp)
    80006d38:	00813103          	ld	sp,8(sp)
    80006d3c:	01013183          	ld	gp,16(sp)
    80006d40:	02013283          	ld	t0,32(sp)
    80006d44:	02813303          	ld	t1,40(sp)
    80006d48:	03013383          	ld	t2,48(sp)
    80006d4c:	03813403          	ld	s0,56(sp)
    80006d50:	04013483          	ld	s1,64(sp)
    80006d54:	04813503          	ld	a0,72(sp)
    80006d58:	05013583          	ld	a1,80(sp)
    80006d5c:	05813603          	ld	a2,88(sp)
    80006d60:	06013683          	ld	a3,96(sp)
    80006d64:	06813703          	ld	a4,104(sp)
    80006d68:	07013783          	ld	a5,112(sp)
    80006d6c:	07813803          	ld	a6,120(sp)
    80006d70:	08013883          	ld	a7,128(sp)
    80006d74:	08813903          	ld	s2,136(sp)
    80006d78:	09013983          	ld	s3,144(sp)
    80006d7c:	09813a03          	ld	s4,152(sp)
    80006d80:	0a013a83          	ld	s5,160(sp)
    80006d84:	0a813b03          	ld	s6,168(sp)
    80006d88:	0b013b83          	ld	s7,176(sp)
    80006d8c:	0b813c03          	ld	s8,184(sp)
    80006d90:	0c013c83          	ld	s9,192(sp)
    80006d94:	0c813d03          	ld	s10,200(sp)
    80006d98:	0d013d83          	ld	s11,208(sp)
    80006d9c:	0d813e03          	ld	t3,216(sp)
    80006da0:	0e013e83          	ld	t4,224(sp)
    80006da4:	0e813f03          	ld	t5,232(sp)
    80006da8:	0f013f83          	ld	t6,240(sp)
    80006dac:	10010113          	addi	sp,sp,256
    80006db0:	10200073          	sret
    80006db4:	00000013          	nop
    80006db8:	00000013          	nop
    80006dbc:	00000013          	nop

0000000080006dc0 <timervec>:
    80006dc0:	34051573          	csrrw	a0,mscratch,a0
    80006dc4:	00b53023          	sd	a1,0(a0)
    80006dc8:	00c53423          	sd	a2,8(a0)
    80006dcc:	00d53823          	sd	a3,16(a0)
    80006dd0:	01853583          	ld	a1,24(a0)
    80006dd4:	02053603          	ld	a2,32(a0)
    80006dd8:	0005b683          	ld	a3,0(a1)
    80006ddc:	00c686b3          	add	a3,a3,a2
    80006de0:	00d5b023          	sd	a3,0(a1)
    80006de4:	00200593          	li	a1,2
    80006de8:	14459073          	csrw	sip,a1
    80006dec:	01053683          	ld	a3,16(a0)
    80006df0:	00853603          	ld	a2,8(a0)
    80006df4:	00053583          	ld	a1,0(a0)
    80006df8:	34051573          	csrrw	a0,mscratch,a0
    80006dfc:	30200073          	mret

0000000080006e00 <plicinit>:
    80006e00:	ff010113          	addi	sp,sp,-16
    80006e04:	00813423          	sd	s0,8(sp)
    80006e08:	01010413          	addi	s0,sp,16
    80006e0c:	00813403          	ld	s0,8(sp)
    80006e10:	0c0007b7          	lui	a5,0xc000
    80006e14:	00100713          	li	a4,1
    80006e18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006e1c:	00e7a223          	sw	a4,4(a5)
    80006e20:	01010113          	addi	sp,sp,16
    80006e24:	00008067          	ret

0000000080006e28 <plicinithart>:
    80006e28:	ff010113          	addi	sp,sp,-16
    80006e2c:	00813023          	sd	s0,0(sp)
    80006e30:	00113423          	sd	ra,8(sp)
    80006e34:	01010413          	addi	s0,sp,16
    80006e38:	00000097          	auipc	ra,0x0
    80006e3c:	a40080e7          	jalr	-1472(ra) # 80006878 <cpuid>
    80006e40:	0085171b          	slliw	a4,a0,0x8
    80006e44:	0c0027b7          	lui	a5,0xc002
    80006e48:	00e787b3          	add	a5,a5,a4
    80006e4c:	40200713          	li	a4,1026
    80006e50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006e54:	00813083          	ld	ra,8(sp)
    80006e58:	00013403          	ld	s0,0(sp)
    80006e5c:	00d5151b          	slliw	a0,a0,0xd
    80006e60:	0c2017b7          	lui	a5,0xc201
    80006e64:	00a78533          	add	a0,a5,a0
    80006e68:	00052023          	sw	zero,0(a0)
    80006e6c:	01010113          	addi	sp,sp,16
    80006e70:	00008067          	ret

0000000080006e74 <plic_claim>:
    80006e74:	ff010113          	addi	sp,sp,-16
    80006e78:	00813023          	sd	s0,0(sp)
    80006e7c:	00113423          	sd	ra,8(sp)
    80006e80:	01010413          	addi	s0,sp,16
    80006e84:	00000097          	auipc	ra,0x0
    80006e88:	9f4080e7          	jalr	-1548(ra) # 80006878 <cpuid>
    80006e8c:	00813083          	ld	ra,8(sp)
    80006e90:	00013403          	ld	s0,0(sp)
    80006e94:	00d5151b          	slliw	a0,a0,0xd
    80006e98:	0c2017b7          	lui	a5,0xc201
    80006e9c:	00a78533          	add	a0,a5,a0
    80006ea0:	00452503          	lw	a0,4(a0)
    80006ea4:	01010113          	addi	sp,sp,16
    80006ea8:	00008067          	ret

0000000080006eac <plic_complete>:
    80006eac:	fe010113          	addi	sp,sp,-32
    80006eb0:	00813823          	sd	s0,16(sp)
    80006eb4:	00913423          	sd	s1,8(sp)
    80006eb8:	00113c23          	sd	ra,24(sp)
    80006ebc:	02010413          	addi	s0,sp,32
    80006ec0:	00050493          	mv	s1,a0
    80006ec4:	00000097          	auipc	ra,0x0
    80006ec8:	9b4080e7          	jalr	-1612(ra) # 80006878 <cpuid>
    80006ecc:	01813083          	ld	ra,24(sp)
    80006ed0:	01013403          	ld	s0,16(sp)
    80006ed4:	00d5179b          	slliw	a5,a0,0xd
    80006ed8:	0c201737          	lui	a4,0xc201
    80006edc:	00f707b3          	add	a5,a4,a5
    80006ee0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006ee4:	00813483          	ld	s1,8(sp)
    80006ee8:	02010113          	addi	sp,sp,32
    80006eec:	00008067          	ret

0000000080006ef0 <consolewrite>:
    80006ef0:	fb010113          	addi	sp,sp,-80
    80006ef4:	04813023          	sd	s0,64(sp)
    80006ef8:	04113423          	sd	ra,72(sp)
    80006efc:	02913c23          	sd	s1,56(sp)
    80006f00:	03213823          	sd	s2,48(sp)
    80006f04:	03313423          	sd	s3,40(sp)
    80006f08:	03413023          	sd	s4,32(sp)
    80006f0c:	01513c23          	sd	s5,24(sp)
    80006f10:	05010413          	addi	s0,sp,80
    80006f14:	06c05c63          	blez	a2,80006f8c <consolewrite+0x9c>
    80006f18:	00060993          	mv	s3,a2
    80006f1c:	00050a13          	mv	s4,a0
    80006f20:	00058493          	mv	s1,a1
    80006f24:	00000913          	li	s2,0
    80006f28:	fff00a93          	li	s5,-1
    80006f2c:	01c0006f          	j	80006f48 <consolewrite+0x58>
    80006f30:	fbf44503          	lbu	a0,-65(s0)
    80006f34:	0019091b          	addiw	s2,s2,1
    80006f38:	00148493          	addi	s1,s1,1
    80006f3c:	00001097          	auipc	ra,0x1
    80006f40:	a9c080e7          	jalr	-1380(ra) # 800079d8 <uartputc>
    80006f44:	03298063          	beq	s3,s2,80006f64 <consolewrite+0x74>
    80006f48:	00048613          	mv	a2,s1
    80006f4c:	00100693          	li	a3,1
    80006f50:	000a0593          	mv	a1,s4
    80006f54:	fbf40513          	addi	a0,s0,-65
    80006f58:	00000097          	auipc	ra,0x0
    80006f5c:	9d8080e7          	jalr	-1576(ra) # 80006930 <either_copyin>
    80006f60:	fd5518e3          	bne	a0,s5,80006f30 <consolewrite+0x40>
    80006f64:	04813083          	ld	ra,72(sp)
    80006f68:	04013403          	ld	s0,64(sp)
    80006f6c:	03813483          	ld	s1,56(sp)
    80006f70:	02813983          	ld	s3,40(sp)
    80006f74:	02013a03          	ld	s4,32(sp)
    80006f78:	01813a83          	ld	s5,24(sp)
    80006f7c:	00090513          	mv	a0,s2
    80006f80:	03013903          	ld	s2,48(sp)
    80006f84:	05010113          	addi	sp,sp,80
    80006f88:	00008067          	ret
    80006f8c:	00000913          	li	s2,0
    80006f90:	fd5ff06f          	j	80006f64 <consolewrite+0x74>

0000000080006f94 <consoleread>:
    80006f94:	f9010113          	addi	sp,sp,-112
    80006f98:	06813023          	sd	s0,96(sp)
    80006f9c:	04913c23          	sd	s1,88(sp)
    80006fa0:	05213823          	sd	s2,80(sp)
    80006fa4:	05313423          	sd	s3,72(sp)
    80006fa8:	05413023          	sd	s4,64(sp)
    80006fac:	03513c23          	sd	s5,56(sp)
    80006fb0:	03613823          	sd	s6,48(sp)
    80006fb4:	03713423          	sd	s7,40(sp)
    80006fb8:	03813023          	sd	s8,32(sp)
    80006fbc:	06113423          	sd	ra,104(sp)
    80006fc0:	01913c23          	sd	s9,24(sp)
    80006fc4:	07010413          	addi	s0,sp,112
    80006fc8:	00060b93          	mv	s7,a2
    80006fcc:	00050913          	mv	s2,a0
    80006fd0:	00058c13          	mv	s8,a1
    80006fd4:	00060b1b          	sext.w	s6,a2
    80006fd8:	00005497          	auipc	s1,0x5
    80006fdc:	63048493          	addi	s1,s1,1584 # 8000c608 <cons>
    80006fe0:	00400993          	li	s3,4
    80006fe4:	fff00a13          	li	s4,-1
    80006fe8:	00a00a93          	li	s5,10
    80006fec:	05705e63          	blez	s7,80007048 <consoleread+0xb4>
    80006ff0:	09c4a703          	lw	a4,156(s1)
    80006ff4:	0984a783          	lw	a5,152(s1)
    80006ff8:	0007071b          	sext.w	a4,a4
    80006ffc:	08e78463          	beq	a5,a4,80007084 <consoleread+0xf0>
    80007000:	07f7f713          	andi	a4,a5,127
    80007004:	00e48733          	add	a4,s1,a4
    80007008:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000700c:	0017869b          	addiw	a3,a5,1
    80007010:	08d4ac23          	sw	a3,152(s1)
    80007014:	00070c9b          	sext.w	s9,a4
    80007018:	0b370663          	beq	a4,s3,800070c4 <consoleread+0x130>
    8000701c:	00100693          	li	a3,1
    80007020:	f9f40613          	addi	a2,s0,-97
    80007024:	000c0593          	mv	a1,s8
    80007028:	00090513          	mv	a0,s2
    8000702c:	f8e40fa3          	sb	a4,-97(s0)
    80007030:	00000097          	auipc	ra,0x0
    80007034:	8b4080e7          	jalr	-1868(ra) # 800068e4 <either_copyout>
    80007038:	01450863          	beq	a0,s4,80007048 <consoleread+0xb4>
    8000703c:	001c0c13          	addi	s8,s8,1
    80007040:	fffb8b9b          	addiw	s7,s7,-1
    80007044:	fb5c94e3          	bne	s9,s5,80006fec <consoleread+0x58>
    80007048:	000b851b          	sext.w	a0,s7
    8000704c:	06813083          	ld	ra,104(sp)
    80007050:	06013403          	ld	s0,96(sp)
    80007054:	05813483          	ld	s1,88(sp)
    80007058:	05013903          	ld	s2,80(sp)
    8000705c:	04813983          	ld	s3,72(sp)
    80007060:	04013a03          	ld	s4,64(sp)
    80007064:	03813a83          	ld	s5,56(sp)
    80007068:	02813b83          	ld	s7,40(sp)
    8000706c:	02013c03          	ld	s8,32(sp)
    80007070:	01813c83          	ld	s9,24(sp)
    80007074:	40ab053b          	subw	a0,s6,a0
    80007078:	03013b03          	ld	s6,48(sp)
    8000707c:	07010113          	addi	sp,sp,112
    80007080:	00008067          	ret
    80007084:	00001097          	auipc	ra,0x1
    80007088:	1d8080e7          	jalr	472(ra) # 8000825c <push_on>
    8000708c:	0984a703          	lw	a4,152(s1)
    80007090:	09c4a783          	lw	a5,156(s1)
    80007094:	0007879b          	sext.w	a5,a5
    80007098:	fef70ce3          	beq	a4,a5,80007090 <consoleread+0xfc>
    8000709c:	00001097          	auipc	ra,0x1
    800070a0:	234080e7          	jalr	564(ra) # 800082d0 <pop_on>
    800070a4:	0984a783          	lw	a5,152(s1)
    800070a8:	07f7f713          	andi	a4,a5,127
    800070ac:	00e48733          	add	a4,s1,a4
    800070b0:	01874703          	lbu	a4,24(a4)
    800070b4:	0017869b          	addiw	a3,a5,1
    800070b8:	08d4ac23          	sw	a3,152(s1)
    800070bc:	00070c9b          	sext.w	s9,a4
    800070c0:	f5371ee3          	bne	a4,s3,8000701c <consoleread+0x88>
    800070c4:	000b851b          	sext.w	a0,s7
    800070c8:	f96bf2e3          	bgeu	s7,s6,8000704c <consoleread+0xb8>
    800070cc:	08f4ac23          	sw	a5,152(s1)
    800070d0:	f7dff06f          	j	8000704c <consoleread+0xb8>

00000000800070d4 <consputc>:
    800070d4:	10000793          	li	a5,256
    800070d8:	00f50663          	beq	a0,a5,800070e4 <consputc+0x10>
    800070dc:	00001317          	auipc	t1,0x1
    800070e0:	9f430067          	jr	-1548(t1) # 80007ad0 <uartputc_sync>
    800070e4:	ff010113          	addi	sp,sp,-16
    800070e8:	00113423          	sd	ra,8(sp)
    800070ec:	00813023          	sd	s0,0(sp)
    800070f0:	01010413          	addi	s0,sp,16
    800070f4:	00800513          	li	a0,8
    800070f8:	00001097          	auipc	ra,0x1
    800070fc:	9d8080e7          	jalr	-1576(ra) # 80007ad0 <uartputc_sync>
    80007100:	02000513          	li	a0,32
    80007104:	00001097          	auipc	ra,0x1
    80007108:	9cc080e7          	jalr	-1588(ra) # 80007ad0 <uartputc_sync>
    8000710c:	00013403          	ld	s0,0(sp)
    80007110:	00813083          	ld	ra,8(sp)
    80007114:	00800513          	li	a0,8
    80007118:	01010113          	addi	sp,sp,16
    8000711c:	00001317          	auipc	t1,0x1
    80007120:	9b430067          	jr	-1612(t1) # 80007ad0 <uartputc_sync>

0000000080007124 <consoleintr>:
    80007124:	fe010113          	addi	sp,sp,-32
    80007128:	00813823          	sd	s0,16(sp)
    8000712c:	00913423          	sd	s1,8(sp)
    80007130:	01213023          	sd	s2,0(sp)
    80007134:	00113c23          	sd	ra,24(sp)
    80007138:	02010413          	addi	s0,sp,32
    8000713c:	00005917          	auipc	s2,0x5
    80007140:	4cc90913          	addi	s2,s2,1228 # 8000c608 <cons>
    80007144:	00050493          	mv	s1,a0
    80007148:	00090513          	mv	a0,s2
    8000714c:	00001097          	auipc	ra,0x1
    80007150:	e40080e7          	jalr	-448(ra) # 80007f8c <acquire>
    80007154:	02048c63          	beqz	s1,8000718c <consoleintr+0x68>
    80007158:	0a092783          	lw	a5,160(s2)
    8000715c:	09892703          	lw	a4,152(s2)
    80007160:	07f00693          	li	a3,127
    80007164:	40e7873b          	subw	a4,a5,a4
    80007168:	02e6e263          	bltu	a3,a4,8000718c <consoleintr+0x68>
    8000716c:	00d00713          	li	a4,13
    80007170:	04e48063          	beq	s1,a4,800071b0 <consoleintr+0x8c>
    80007174:	07f7f713          	andi	a4,a5,127
    80007178:	00e90733          	add	a4,s2,a4
    8000717c:	0017879b          	addiw	a5,a5,1
    80007180:	0af92023          	sw	a5,160(s2)
    80007184:	00970c23          	sb	s1,24(a4)
    80007188:	08f92e23          	sw	a5,156(s2)
    8000718c:	01013403          	ld	s0,16(sp)
    80007190:	01813083          	ld	ra,24(sp)
    80007194:	00813483          	ld	s1,8(sp)
    80007198:	00013903          	ld	s2,0(sp)
    8000719c:	00005517          	auipc	a0,0x5
    800071a0:	46c50513          	addi	a0,a0,1132 # 8000c608 <cons>
    800071a4:	02010113          	addi	sp,sp,32
    800071a8:	00001317          	auipc	t1,0x1
    800071ac:	eb030067          	jr	-336(t1) # 80008058 <release>
    800071b0:	00a00493          	li	s1,10
    800071b4:	fc1ff06f          	j	80007174 <consoleintr+0x50>

00000000800071b8 <consoleinit>:
    800071b8:	fe010113          	addi	sp,sp,-32
    800071bc:	00113c23          	sd	ra,24(sp)
    800071c0:	00813823          	sd	s0,16(sp)
    800071c4:	00913423          	sd	s1,8(sp)
    800071c8:	02010413          	addi	s0,sp,32
    800071cc:	00005497          	auipc	s1,0x5
    800071d0:	43c48493          	addi	s1,s1,1084 # 8000c608 <cons>
    800071d4:	00048513          	mv	a0,s1
    800071d8:	00002597          	auipc	a1,0x2
    800071dc:	44058593          	addi	a1,a1,1088 # 80009618 <CONSOLE_STATUS+0x608>
    800071e0:	00001097          	auipc	ra,0x1
    800071e4:	d88080e7          	jalr	-632(ra) # 80007f68 <initlock>
    800071e8:	00000097          	auipc	ra,0x0
    800071ec:	7ac080e7          	jalr	1964(ra) # 80007994 <uartinit>
    800071f0:	01813083          	ld	ra,24(sp)
    800071f4:	01013403          	ld	s0,16(sp)
    800071f8:	00000797          	auipc	a5,0x0
    800071fc:	d9c78793          	addi	a5,a5,-612 # 80006f94 <consoleread>
    80007200:	0af4bc23          	sd	a5,184(s1)
    80007204:	00000797          	auipc	a5,0x0
    80007208:	cec78793          	addi	a5,a5,-788 # 80006ef0 <consolewrite>
    8000720c:	0cf4b023          	sd	a5,192(s1)
    80007210:	00813483          	ld	s1,8(sp)
    80007214:	02010113          	addi	sp,sp,32
    80007218:	00008067          	ret

000000008000721c <console_read>:
    8000721c:	ff010113          	addi	sp,sp,-16
    80007220:	00813423          	sd	s0,8(sp)
    80007224:	01010413          	addi	s0,sp,16
    80007228:	00813403          	ld	s0,8(sp)
    8000722c:	00005317          	auipc	t1,0x5
    80007230:	49433303          	ld	t1,1172(t1) # 8000c6c0 <devsw+0x10>
    80007234:	01010113          	addi	sp,sp,16
    80007238:	00030067          	jr	t1

000000008000723c <console_write>:
    8000723c:	ff010113          	addi	sp,sp,-16
    80007240:	00813423          	sd	s0,8(sp)
    80007244:	01010413          	addi	s0,sp,16
    80007248:	00813403          	ld	s0,8(sp)
    8000724c:	00005317          	auipc	t1,0x5
    80007250:	47c33303          	ld	t1,1148(t1) # 8000c6c8 <devsw+0x18>
    80007254:	01010113          	addi	sp,sp,16
    80007258:	00030067          	jr	t1

000000008000725c <panic>:
    8000725c:	fe010113          	addi	sp,sp,-32
    80007260:	00113c23          	sd	ra,24(sp)
    80007264:	00813823          	sd	s0,16(sp)
    80007268:	00913423          	sd	s1,8(sp)
    8000726c:	02010413          	addi	s0,sp,32
    80007270:	00050493          	mv	s1,a0
    80007274:	00002517          	auipc	a0,0x2
    80007278:	3ac50513          	addi	a0,a0,940 # 80009620 <CONSOLE_STATUS+0x610>
    8000727c:	00005797          	auipc	a5,0x5
    80007280:	4e07a623          	sw	zero,1260(a5) # 8000c768 <pr+0x18>
    80007284:	00000097          	auipc	ra,0x0
    80007288:	034080e7          	jalr	52(ra) # 800072b8 <__printf>
    8000728c:	00048513          	mv	a0,s1
    80007290:	00000097          	auipc	ra,0x0
    80007294:	028080e7          	jalr	40(ra) # 800072b8 <__printf>
    80007298:	00002517          	auipc	a0,0x2
    8000729c:	fb850513          	addi	a0,a0,-72 # 80009250 <CONSOLE_STATUS+0x240>
    800072a0:	00000097          	auipc	ra,0x0
    800072a4:	018080e7          	jalr	24(ra) # 800072b8 <__printf>
    800072a8:	00100793          	li	a5,1
    800072ac:	00004717          	auipc	a4,0x4
    800072b0:	00f72e23          	sw	a5,28(a4) # 8000b2c8 <panicked>
    800072b4:	0000006f          	j	800072b4 <panic+0x58>

00000000800072b8 <__printf>:
    800072b8:	f3010113          	addi	sp,sp,-208
    800072bc:	08813023          	sd	s0,128(sp)
    800072c0:	07313423          	sd	s3,104(sp)
    800072c4:	09010413          	addi	s0,sp,144
    800072c8:	05813023          	sd	s8,64(sp)
    800072cc:	08113423          	sd	ra,136(sp)
    800072d0:	06913c23          	sd	s1,120(sp)
    800072d4:	07213823          	sd	s2,112(sp)
    800072d8:	07413023          	sd	s4,96(sp)
    800072dc:	05513c23          	sd	s5,88(sp)
    800072e0:	05613823          	sd	s6,80(sp)
    800072e4:	05713423          	sd	s7,72(sp)
    800072e8:	03913c23          	sd	s9,56(sp)
    800072ec:	03a13823          	sd	s10,48(sp)
    800072f0:	03b13423          	sd	s11,40(sp)
    800072f4:	00005317          	auipc	t1,0x5
    800072f8:	45c30313          	addi	t1,t1,1116 # 8000c750 <pr>
    800072fc:	01832c03          	lw	s8,24(t1)
    80007300:	00b43423          	sd	a1,8(s0)
    80007304:	00c43823          	sd	a2,16(s0)
    80007308:	00d43c23          	sd	a3,24(s0)
    8000730c:	02e43023          	sd	a4,32(s0)
    80007310:	02f43423          	sd	a5,40(s0)
    80007314:	03043823          	sd	a6,48(s0)
    80007318:	03143c23          	sd	a7,56(s0)
    8000731c:	00050993          	mv	s3,a0
    80007320:	4a0c1663          	bnez	s8,800077cc <__printf+0x514>
    80007324:	60098c63          	beqz	s3,8000793c <__printf+0x684>
    80007328:	0009c503          	lbu	a0,0(s3)
    8000732c:	00840793          	addi	a5,s0,8
    80007330:	f6f43c23          	sd	a5,-136(s0)
    80007334:	00000493          	li	s1,0
    80007338:	22050063          	beqz	a0,80007558 <__printf+0x2a0>
    8000733c:	00002a37          	lui	s4,0x2
    80007340:	00018ab7          	lui	s5,0x18
    80007344:	000f4b37          	lui	s6,0xf4
    80007348:	00989bb7          	lui	s7,0x989
    8000734c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007350:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007354:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007358:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000735c:	00148c9b          	addiw	s9,s1,1
    80007360:	02500793          	li	a5,37
    80007364:	01998933          	add	s2,s3,s9
    80007368:	38f51263          	bne	a0,a5,800076ec <__printf+0x434>
    8000736c:	00094783          	lbu	a5,0(s2)
    80007370:	00078c9b          	sext.w	s9,a5
    80007374:	1e078263          	beqz	a5,80007558 <__printf+0x2a0>
    80007378:	0024849b          	addiw	s1,s1,2
    8000737c:	07000713          	li	a4,112
    80007380:	00998933          	add	s2,s3,s1
    80007384:	38e78a63          	beq	a5,a4,80007718 <__printf+0x460>
    80007388:	20f76863          	bltu	a4,a5,80007598 <__printf+0x2e0>
    8000738c:	42a78863          	beq	a5,a0,800077bc <__printf+0x504>
    80007390:	06400713          	li	a4,100
    80007394:	40e79663          	bne	a5,a4,800077a0 <__printf+0x4e8>
    80007398:	f7843783          	ld	a5,-136(s0)
    8000739c:	0007a603          	lw	a2,0(a5)
    800073a0:	00878793          	addi	a5,a5,8
    800073a4:	f6f43c23          	sd	a5,-136(s0)
    800073a8:	42064a63          	bltz	a2,800077dc <__printf+0x524>
    800073ac:	00a00713          	li	a4,10
    800073b0:	02e677bb          	remuw	a5,a2,a4
    800073b4:	00002d97          	auipc	s11,0x2
    800073b8:	294d8d93          	addi	s11,s11,660 # 80009648 <digits>
    800073bc:	00900593          	li	a1,9
    800073c0:	0006051b          	sext.w	a0,a2
    800073c4:	00000c93          	li	s9,0
    800073c8:	02079793          	slli	a5,a5,0x20
    800073cc:	0207d793          	srli	a5,a5,0x20
    800073d0:	00fd87b3          	add	a5,s11,a5
    800073d4:	0007c783          	lbu	a5,0(a5)
    800073d8:	02e656bb          	divuw	a3,a2,a4
    800073dc:	f8f40023          	sb	a5,-128(s0)
    800073e0:	14c5d863          	bge	a1,a2,80007530 <__printf+0x278>
    800073e4:	06300593          	li	a1,99
    800073e8:	00100c93          	li	s9,1
    800073ec:	02e6f7bb          	remuw	a5,a3,a4
    800073f0:	02079793          	slli	a5,a5,0x20
    800073f4:	0207d793          	srli	a5,a5,0x20
    800073f8:	00fd87b3          	add	a5,s11,a5
    800073fc:	0007c783          	lbu	a5,0(a5)
    80007400:	02e6d73b          	divuw	a4,a3,a4
    80007404:	f8f400a3          	sb	a5,-127(s0)
    80007408:	12a5f463          	bgeu	a1,a0,80007530 <__printf+0x278>
    8000740c:	00a00693          	li	a3,10
    80007410:	00900593          	li	a1,9
    80007414:	02d777bb          	remuw	a5,a4,a3
    80007418:	02079793          	slli	a5,a5,0x20
    8000741c:	0207d793          	srli	a5,a5,0x20
    80007420:	00fd87b3          	add	a5,s11,a5
    80007424:	0007c503          	lbu	a0,0(a5)
    80007428:	02d757bb          	divuw	a5,a4,a3
    8000742c:	f8a40123          	sb	a0,-126(s0)
    80007430:	48e5f263          	bgeu	a1,a4,800078b4 <__printf+0x5fc>
    80007434:	06300513          	li	a0,99
    80007438:	02d7f5bb          	remuw	a1,a5,a3
    8000743c:	02059593          	slli	a1,a1,0x20
    80007440:	0205d593          	srli	a1,a1,0x20
    80007444:	00bd85b3          	add	a1,s11,a1
    80007448:	0005c583          	lbu	a1,0(a1)
    8000744c:	02d7d7bb          	divuw	a5,a5,a3
    80007450:	f8b401a3          	sb	a1,-125(s0)
    80007454:	48e57263          	bgeu	a0,a4,800078d8 <__printf+0x620>
    80007458:	3e700513          	li	a0,999
    8000745c:	02d7f5bb          	remuw	a1,a5,a3
    80007460:	02059593          	slli	a1,a1,0x20
    80007464:	0205d593          	srli	a1,a1,0x20
    80007468:	00bd85b3          	add	a1,s11,a1
    8000746c:	0005c583          	lbu	a1,0(a1)
    80007470:	02d7d7bb          	divuw	a5,a5,a3
    80007474:	f8b40223          	sb	a1,-124(s0)
    80007478:	46e57663          	bgeu	a0,a4,800078e4 <__printf+0x62c>
    8000747c:	02d7f5bb          	remuw	a1,a5,a3
    80007480:	02059593          	slli	a1,a1,0x20
    80007484:	0205d593          	srli	a1,a1,0x20
    80007488:	00bd85b3          	add	a1,s11,a1
    8000748c:	0005c583          	lbu	a1,0(a1)
    80007490:	02d7d7bb          	divuw	a5,a5,a3
    80007494:	f8b402a3          	sb	a1,-123(s0)
    80007498:	46ea7863          	bgeu	s4,a4,80007908 <__printf+0x650>
    8000749c:	02d7f5bb          	remuw	a1,a5,a3
    800074a0:	02059593          	slli	a1,a1,0x20
    800074a4:	0205d593          	srli	a1,a1,0x20
    800074a8:	00bd85b3          	add	a1,s11,a1
    800074ac:	0005c583          	lbu	a1,0(a1)
    800074b0:	02d7d7bb          	divuw	a5,a5,a3
    800074b4:	f8b40323          	sb	a1,-122(s0)
    800074b8:	3eeaf863          	bgeu	s5,a4,800078a8 <__printf+0x5f0>
    800074bc:	02d7f5bb          	remuw	a1,a5,a3
    800074c0:	02059593          	slli	a1,a1,0x20
    800074c4:	0205d593          	srli	a1,a1,0x20
    800074c8:	00bd85b3          	add	a1,s11,a1
    800074cc:	0005c583          	lbu	a1,0(a1)
    800074d0:	02d7d7bb          	divuw	a5,a5,a3
    800074d4:	f8b403a3          	sb	a1,-121(s0)
    800074d8:	42eb7e63          	bgeu	s6,a4,80007914 <__printf+0x65c>
    800074dc:	02d7f5bb          	remuw	a1,a5,a3
    800074e0:	02059593          	slli	a1,a1,0x20
    800074e4:	0205d593          	srli	a1,a1,0x20
    800074e8:	00bd85b3          	add	a1,s11,a1
    800074ec:	0005c583          	lbu	a1,0(a1)
    800074f0:	02d7d7bb          	divuw	a5,a5,a3
    800074f4:	f8b40423          	sb	a1,-120(s0)
    800074f8:	42ebfc63          	bgeu	s7,a4,80007930 <__printf+0x678>
    800074fc:	02079793          	slli	a5,a5,0x20
    80007500:	0207d793          	srli	a5,a5,0x20
    80007504:	00fd8db3          	add	s11,s11,a5
    80007508:	000dc703          	lbu	a4,0(s11)
    8000750c:	00a00793          	li	a5,10
    80007510:	00900c93          	li	s9,9
    80007514:	f8e404a3          	sb	a4,-119(s0)
    80007518:	00065c63          	bgez	a2,80007530 <__printf+0x278>
    8000751c:	f9040713          	addi	a4,s0,-112
    80007520:	00f70733          	add	a4,a4,a5
    80007524:	02d00693          	li	a3,45
    80007528:	fed70823          	sb	a3,-16(a4)
    8000752c:	00078c93          	mv	s9,a5
    80007530:	f8040793          	addi	a5,s0,-128
    80007534:	01978cb3          	add	s9,a5,s9
    80007538:	f7f40d13          	addi	s10,s0,-129
    8000753c:	000cc503          	lbu	a0,0(s9)
    80007540:	fffc8c93          	addi	s9,s9,-1
    80007544:	00000097          	auipc	ra,0x0
    80007548:	b90080e7          	jalr	-1136(ra) # 800070d4 <consputc>
    8000754c:	ffac98e3          	bne	s9,s10,8000753c <__printf+0x284>
    80007550:	00094503          	lbu	a0,0(s2)
    80007554:	e00514e3          	bnez	a0,8000735c <__printf+0xa4>
    80007558:	1a0c1663          	bnez	s8,80007704 <__printf+0x44c>
    8000755c:	08813083          	ld	ra,136(sp)
    80007560:	08013403          	ld	s0,128(sp)
    80007564:	07813483          	ld	s1,120(sp)
    80007568:	07013903          	ld	s2,112(sp)
    8000756c:	06813983          	ld	s3,104(sp)
    80007570:	06013a03          	ld	s4,96(sp)
    80007574:	05813a83          	ld	s5,88(sp)
    80007578:	05013b03          	ld	s6,80(sp)
    8000757c:	04813b83          	ld	s7,72(sp)
    80007580:	04013c03          	ld	s8,64(sp)
    80007584:	03813c83          	ld	s9,56(sp)
    80007588:	03013d03          	ld	s10,48(sp)
    8000758c:	02813d83          	ld	s11,40(sp)
    80007590:	0d010113          	addi	sp,sp,208
    80007594:	00008067          	ret
    80007598:	07300713          	li	a4,115
    8000759c:	1ce78a63          	beq	a5,a4,80007770 <__printf+0x4b8>
    800075a0:	07800713          	li	a4,120
    800075a4:	1ee79e63          	bne	a5,a4,800077a0 <__printf+0x4e8>
    800075a8:	f7843783          	ld	a5,-136(s0)
    800075ac:	0007a703          	lw	a4,0(a5)
    800075b0:	00878793          	addi	a5,a5,8
    800075b4:	f6f43c23          	sd	a5,-136(s0)
    800075b8:	28074263          	bltz	a4,8000783c <__printf+0x584>
    800075bc:	00002d97          	auipc	s11,0x2
    800075c0:	08cd8d93          	addi	s11,s11,140 # 80009648 <digits>
    800075c4:	00f77793          	andi	a5,a4,15
    800075c8:	00fd87b3          	add	a5,s11,a5
    800075cc:	0007c683          	lbu	a3,0(a5)
    800075d0:	00f00613          	li	a2,15
    800075d4:	0007079b          	sext.w	a5,a4
    800075d8:	f8d40023          	sb	a3,-128(s0)
    800075dc:	0047559b          	srliw	a1,a4,0x4
    800075e0:	0047569b          	srliw	a3,a4,0x4
    800075e4:	00000c93          	li	s9,0
    800075e8:	0ee65063          	bge	a2,a4,800076c8 <__printf+0x410>
    800075ec:	00f6f693          	andi	a3,a3,15
    800075f0:	00dd86b3          	add	a3,s11,a3
    800075f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800075f8:	0087d79b          	srliw	a5,a5,0x8
    800075fc:	00100c93          	li	s9,1
    80007600:	f8d400a3          	sb	a3,-127(s0)
    80007604:	0cb67263          	bgeu	a2,a1,800076c8 <__printf+0x410>
    80007608:	00f7f693          	andi	a3,a5,15
    8000760c:	00dd86b3          	add	a3,s11,a3
    80007610:	0006c583          	lbu	a1,0(a3)
    80007614:	00f00613          	li	a2,15
    80007618:	0047d69b          	srliw	a3,a5,0x4
    8000761c:	f8b40123          	sb	a1,-126(s0)
    80007620:	0047d593          	srli	a1,a5,0x4
    80007624:	28f67e63          	bgeu	a2,a5,800078c0 <__printf+0x608>
    80007628:	00f6f693          	andi	a3,a3,15
    8000762c:	00dd86b3          	add	a3,s11,a3
    80007630:	0006c503          	lbu	a0,0(a3)
    80007634:	0087d813          	srli	a6,a5,0x8
    80007638:	0087d69b          	srliw	a3,a5,0x8
    8000763c:	f8a401a3          	sb	a0,-125(s0)
    80007640:	28b67663          	bgeu	a2,a1,800078cc <__printf+0x614>
    80007644:	00f6f693          	andi	a3,a3,15
    80007648:	00dd86b3          	add	a3,s11,a3
    8000764c:	0006c583          	lbu	a1,0(a3)
    80007650:	00c7d513          	srli	a0,a5,0xc
    80007654:	00c7d69b          	srliw	a3,a5,0xc
    80007658:	f8b40223          	sb	a1,-124(s0)
    8000765c:	29067a63          	bgeu	a2,a6,800078f0 <__printf+0x638>
    80007660:	00f6f693          	andi	a3,a3,15
    80007664:	00dd86b3          	add	a3,s11,a3
    80007668:	0006c583          	lbu	a1,0(a3)
    8000766c:	0107d813          	srli	a6,a5,0x10
    80007670:	0107d69b          	srliw	a3,a5,0x10
    80007674:	f8b402a3          	sb	a1,-123(s0)
    80007678:	28a67263          	bgeu	a2,a0,800078fc <__printf+0x644>
    8000767c:	00f6f693          	andi	a3,a3,15
    80007680:	00dd86b3          	add	a3,s11,a3
    80007684:	0006c683          	lbu	a3,0(a3)
    80007688:	0147d79b          	srliw	a5,a5,0x14
    8000768c:	f8d40323          	sb	a3,-122(s0)
    80007690:	21067663          	bgeu	a2,a6,8000789c <__printf+0x5e4>
    80007694:	02079793          	slli	a5,a5,0x20
    80007698:	0207d793          	srli	a5,a5,0x20
    8000769c:	00fd8db3          	add	s11,s11,a5
    800076a0:	000dc683          	lbu	a3,0(s11)
    800076a4:	00800793          	li	a5,8
    800076a8:	00700c93          	li	s9,7
    800076ac:	f8d403a3          	sb	a3,-121(s0)
    800076b0:	00075c63          	bgez	a4,800076c8 <__printf+0x410>
    800076b4:	f9040713          	addi	a4,s0,-112
    800076b8:	00f70733          	add	a4,a4,a5
    800076bc:	02d00693          	li	a3,45
    800076c0:	fed70823          	sb	a3,-16(a4)
    800076c4:	00078c93          	mv	s9,a5
    800076c8:	f8040793          	addi	a5,s0,-128
    800076cc:	01978cb3          	add	s9,a5,s9
    800076d0:	f7f40d13          	addi	s10,s0,-129
    800076d4:	000cc503          	lbu	a0,0(s9)
    800076d8:	fffc8c93          	addi	s9,s9,-1
    800076dc:	00000097          	auipc	ra,0x0
    800076e0:	9f8080e7          	jalr	-1544(ra) # 800070d4 <consputc>
    800076e4:	ff9d18e3          	bne	s10,s9,800076d4 <__printf+0x41c>
    800076e8:	0100006f          	j	800076f8 <__printf+0x440>
    800076ec:	00000097          	auipc	ra,0x0
    800076f0:	9e8080e7          	jalr	-1560(ra) # 800070d4 <consputc>
    800076f4:	000c8493          	mv	s1,s9
    800076f8:	00094503          	lbu	a0,0(s2)
    800076fc:	c60510e3          	bnez	a0,8000735c <__printf+0xa4>
    80007700:	e40c0ee3          	beqz	s8,8000755c <__printf+0x2a4>
    80007704:	00005517          	auipc	a0,0x5
    80007708:	04c50513          	addi	a0,a0,76 # 8000c750 <pr>
    8000770c:	00001097          	auipc	ra,0x1
    80007710:	94c080e7          	jalr	-1716(ra) # 80008058 <release>
    80007714:	e49ff06f          	j	8000755c <__printf+0x2a4>
    80007718:	f7843783          	ld	a5,-136(s0)
    8000771c:	03000513          	li	a0,48
    80007720:	01000d13          	li	s10,16
    80007724:	00878713          	addi	a4,a5,8
    80007728:	0007bc83          	ld	s9,0(a5)
    8000772c:	f6e43c23          	sd	a4,-136(s0)
    80007730:	00000097          	auipc	ra,0x0
    80007734:	9a4080e7          	jalr	-1628(ra) # 800070d4 <consputc>
    80007738:	07800513          	li	a0,120
    8000773c:	00000097          	auipc	ra,0x0
    80007740:	998080e7          	jalr	-1640(ra) # 800070d4 <consputc>
    80007744:	00002d97          	auipc	s11,0x2
    80007748:	f04d8d93          	addi	s11,s11,-252 # 80009648 <digits>
    8000774c:	03ccd793          	srli	a5,s9,0x3c
    80007750:	00fd87b3          	add	a5,s11,a5
    80007754:	0007c503          	lbu	a0,0(a5)
    80007758:	fffd0d1b          	addiw	s10,s10,-1
    8000775c:	004c9c93          	slli	s9,s9,0x4
    80007760:	00000097          	auipc	ra,0x0
    80007764:	974080e7          	jalr	-1676(ra) # 800070d4 <consputc>
    80007768:	fe0d12e3          	bnez	s10,8000774c <__printf+0x494>
    8000776c:	f8dff06f          	j	800076f8 <__printf+0x440>
    80007770:	f7843783          	ld	a5,-136(s0)
    80007774:	0007bc83          	ld	s9,0(a5)
    80007778:	00878793          	addi	a5,a5,8
    8000777c:	f6f43c23          	sd	a5,-136(s0)
    80007780:	000c9a63          	bnez	s9,80007794 <__printf+0x4dc>
    80007784:	1080006f          	j	8000788c <__printf+0x5d4>
    80007788:	001c8c93          	addi	s9,s9,1
    8000778c:	00000097          	auipc	ra,0x0
    80007790:	948080e7          	jalr	-1720(ra) # 800070d4 <consputc>
    80007794:	000cc503          	lbu	a0,0(s9)
    80007798:	fe0518e3          	bnez	a0,80007788 <__printf+0x4d0>
    8000779c:	f5dff06f          	j	800076f8 <__printf+0x440>
    800077a0:	02500513          	li	a0,37
    800077a4:	00000097          	auipc	ra,0x0
    800077a8:	930080e7          	jalr	-1744(ra) # 800070d4 <consputc>
    800077ac:	000c8513          	mv	a0,s9
    800077b0:	00000097          	auipc	ra,0x0
    800077b4:	924080e7          	jalr	-1756(ra) # 800070d4 <consputc>
    800077b8:	f41ff06f          	j	800076f8 <__printf+0x440>
    800077bc:	02500513          	li	a0,37
    800077c0:	00000097          	auipc	ra,0x0
    800077c4:	914080e7          	jalr	-1772(ra) # 800070d4 <consputc>
    800077c8:	f31ff06f          	j	800076f8 <__printf+0x440>
    800077cc:	00030513          	mv	a0,t1
    800077d0:	00000097          	auipc	ra,0x0
    800077d4:	7bc080e7          	jalr	1980(ra) # 80007f8c <acquire>
    800077d8:	b4dff06f          	j	80007324 <__printf+0x6c>
    800077dc:	40c0053b          	negw	a0,a2
    800077e0:	00a00713          	li	a4,10
    800077e4:	02e576bb          	remuw	a3,a0,a4
    800077e8:	00002d97          	auipc	s11,0x2
    800077ec:	e60d8d93          	addi	s11,s11,-416 # 80009648 <digits>
    800077f0:	ff700593          	li	a1,-9
    800077f4:	02069693          	slli	a3,a3,0x20
    800077f8:	0206d693          	srli	a3,a3,0x20
    800077fc:	00dd86b3          	add	a3,s11,a3
    80007800:	0006c683          	lbu	a3,0(a3)
    80007804:	02e557bb          	divuw	a5,a0,a4
    80007808:	f8d40023          	sb	a3,-128(s0)
    8000780c:	10b65e63          	bge	a2,a1,80007928 <__printf+0x670>
    80007810:	06300593          	li	a1,99
    80007814:	02e7f6bb          	remuw	a3,a5,a4
    80007818:	02069693          	slli	a3,a3,0x20
    8000781c:	0206d693          	srli	a3,a3,0x20
    80007820:	00dd86b3          	add	a3,s11,a3
    80007824:	0006c683          	lbu	a3,0(a3)
    80007828:	02e7d73b          	divuw	a4,a5,a4
    8000782c:	00200793          	li	a5,2
    80007830:	f8d400a3          	sb	a3,-127(s0)
    80007834:	bca5ece3          	bltu	a1,a0,8000740c <__printf+0x154>
    80007838:	ce5ff06f          	j	8000751c <__printf+0x264>
    8000783c:	40e007bb          	negw	a5,a4
    80007840:	00002d97          	auipc	s11,0x2
    80007844:	e08d8d93          	addi	s11,s11,-504 # 80009648 <digits>
    80007848:	00f7f693          	andi	a3,a5,15
    8000784c:	00dd86b3          	add	a3,s11,a3
    80007850:	0006c583          	lbu	a1,0(a3)
    80007854:	ff100613          	li	a2,-15
    80007858:	0047d69b          	srliw	a3,a5,0x4
    8000785c:	f8b40023          	sb	a1,-128(s0)
    80007860:	0047d59b          	srliw	a1,a5,0x4
    80007864:	0ac75e63          	bge	a4,a2,80007920 <__printf+0x668>
    80007868:	00f6f693          	andi	a3,a3,15
    8000786c:	00dd86b3          	add	a3,s11,a3
    80007870:	0006c603          	lbu	a2,0(a3)
    80007874:	00f00693          	li	a3,15
    80007878:	0087d79b          	srliw	a5,a5,0x8
    8000787c:	f8c400a3          	sb	a2,-127(s0)
    80007880:	d8b6e4e3          	bltu	a3,a1,80007608 <__printf+0x350>
    80007884:	00200793          	li	a5,2
    80007888:	e2dff06f          	j	800076b4 <__printf+0x3fc>
    8000788c:	00002c97          	auipc	s9,0x2
    80007890:	d9cc8c93          	addi	s9,s9,-612 # 80009628 <CONSOLE_STATUS+0x618>
    80007894:	02800513          	li	a0,40
    80007898:	ef1ff06f          	j	80007788 <__printf+0x4d0>
    8000789c:	00700793          	li	a5,7
    800078a0:	00600c93          	li	s9,6
    800078a4:	e0dff06f          	j	800076b0 <__printf+0x3f8>
    800078a8:	00700793          	li	a5,7
    800078ac:	00600c93          	li	s9,6
    800078b0:	c69ff06f          	j	80007518 <__printf+0x260>
    800078b4:	00300793          	li	a5,3
    800078b8:	00200c93          	li	s9,2
    800078bc:	c5dff06f          	j	80007518 <__printf+0x260>
    800078c0:	00300793          	li	a5,3
    800078c4:	00200c93          	li	s9,2
    800078c8:	de9ff06f          	j	800076b0 <__printf+0x3f8>
    800078cc:	00400793          	li	a5,4
    800078d0:	00300c93          	li	s9,3
    800078d4:	dddff06f          	j	800076b0 <__printf+0x3f8>
    800078d8:	00400793          	li	a5,4
    800078dc:	00300c93          	li	s9,3
    800078e0:	c39ff06f          	j	80007518 <__printf+0x260>
    800078e4:	00500793          	li	a5,5
    800078e8:	00400c93          	li	s9,4
    800078ec:	c2dff06f          	j	80007518 <__printf+0x260>
    800078f0:	00500793          	li	a5,5
    800078f4:	00400c93          	li	s9,4
    800078f8:	db9ff06f          	j	800076b0 <__printf+0x3f8>
    800078fc:	00600793          	li	a5,6
    80007900:	00500c93          	li	s9,5
    80007904:	dadff06f          	j	800076b0 <__printf+0x3f8>
    80007908:	00600793          	li	a5,6
    8000790c:	00500c93          	li	s9,5
    80007910:	c09ff06f          	j	80007518 <__printf+0x260>
    80007914:	00800793          	li	a5,8
    80007918:	00700c93          	li	s9,7
    8000791c:	bfdff06f          	j	80007518 <__printf+0x260>
    80007920:	00100793          	li	a5,1
    80007924:	d91ff06f          	j	800076b4 <__printf+0x3fc>
    80007928:	00100793          	li	a5,1
    8000792c:	bf1ff06f          	j	8000751c <__printf+0x264>
    80007930:	00900793          	li	a5,9
    80007934:	00800c93          	li	s9,8
    80007938:	be1ff06f          	j	80007518 <__printf+0x260>
    8000793c:	00002517          	auipc	a0,0x2
    80007940:	cf450513          	addi	a0,a0,-780 # 80009630 <CONSOLE_STATUS+0x620>
    80007944:	00000097          	auipc	ra,0x0
    80007948:	918080e7          	jalr	-1768(ra) # 8000725c <panic>

000000008000794c <printfinit>:
    8000794c:	fe010113          	addi	sp,sp,-32
    80007950:	00813823          	sd	s0,16(sp)
    80007954:	00913423          	sd	s1,8(sp)
    80007958:	00113c23          	sd	ra,24(sp)
    8000795c:	02010413          	addi	s0,sp,32
    80007960:	00005497          	auipc	s1,0x5
    80007964:	df048493          	addi	s1,s1,-528 # 8000c750 <pr>
    80007968:	00048513          	mv	a0,s1
    8000796c:	00002597          	auipc	a1,0x2
    80007970:	cd458593          	addi	a1,a1,-812 # 80009640 <CONSOLE_STATUS+0x630>
    80007974:	00000097          	auipc	ra,0x0
    80007978:	5f4080e7          	jalr	1524(ra) # 80007f68 <initlock>
    8000797c:	01813083          	ld	ra,24(sp)
    80007980:	01013403          	ld	s0,16(sp)
    80007984:	0004ac23          	sw	zero,24(s1)
    80007988:	00813483          	ld	s1,8(sp)
    8000798c:	02010113          	addi	sp,sp,32
    80007990:	00008067          	ret

0000000080007994 <uartinit>:
    80007994:	ff010113          	addi	sp,sp,-16
    80007998:	00813423          	sd	s0,8(sp)
    8000799c:	01010413          	addi	s0,sp,16
    800079a0:	100007b7          	lui	a5,0x10000
    800079a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800079a8:	f8000713          	li	a4,-128
    800079ac:	00e781a3          	sb	a4,3(a5)
    800079b0:	00300713          	li	a4,3
    800079b4:	00e78023          	sb	a4,0(a5)
    800079b8:	000780a3          	sb	zero,1(a5)
    800079bc:	00e781a3          	sb	a4,3(a5)
    800079c0:	00700693          	li	a3,7
    800079c4:	00d78123          	sb	a3,2(a5)
    800079c8:	00e780a3          	sb	a4,1(a5)
    800079cc:	00813403          	ld	s0,8(sp)
    800079d0:	01010113          	addi	sp,sp,16
    800079d4:	00008067          	ret

00000000800079d8 <uartputc>:
    800079d8:	00004797          	auipc	a5,0x4
    800079dc:	8f07a783          	lw	a5,-1808(a5) # 8000b2c8 <panicked>
    800079e0:	00078463          	beqz	a5,800079e8 <uartputc+0x10>
    800079e4:	0000006f          	j	800079e4 <uartputc+0xc>
    800079e8:	fd010113          	addi	sp,sp,-48
    800079ec:	02813023          	sd	s0,32(sp)
    800079f0:	00913c23          	sd	s1,24(sp)
    800079f4:	01213823          	sd	s2,16(sp)
    800079f8:	01313423          	sd	s3,8(sp)
    800079fc:	02113423          	sd	ra,40(sp)
    80007a00:	03010413          	addi	s0,sp,48
    80007a04:	00004917          	auipc	s2,0x4
    80007a08:	8cc90913          	addi	s2,s2,-1844 # 8000b2d0 <uart_tx_r>
    80007a0c:	00093783          	ld	a5,0(s2)
    80007a10:	00004497          	auipc	s1,0x4
    80007a14:	8c848493          	addi	s1,s1,-1848 # 8000b2d8 <uart_tx_w>
    80007a18:	0004b703          	ld	a4,0(s1)
    80007a1c:	02078693          	addi	a3,a5,32
    80007a20:	00050993          	mv	s3,a0
    80007a24:	02e69c63          	bne	a3,a4,80007a5c <uartputc+0x84>
    80007a28:	00001097          	auipc	ra,0x1
    80007a2c:	834080e7          	jalr	-1996(ra) # 8000825c <push_on>
    80007a30:	00093783          	ld	a5,0(s2)
    80007a34:	0004b703          	ld	a4,0(s1)
    80007a38:	02078793          	addi	a5,a5,32
    80007a3c:	00e79463          	bne	a5,a4,80007a44 <uartputc+0x6c>
    80007a40:	0000006f          	j	80007a40 <uartputc+0x68>
    80007a44:	00001097          	auipc	ra,0x1
    80007a48:	88c080e7          	jalr	-1908(ra) # 800082d0 <pop_on>
    80007a4c:	00093783          	ld	a5,0(s2)
    80007a50:	0004b703          	ld	a4,0(s1)
    80007a54:	02078693          	addi	a3,a5,32
    80007a58:	fce688e3          	beq	a3,a4,80007a28 <uartputc+0x50>
    80007a5c:	01f77693          	andi	a3,a4,31
    80007a60:	00005597          	auipc	a1,0x5
    80007a64:	d1058593          	addi	a1,a1,-752 # 8000c770 <uart_tx_buf>
    80007a68:	00d586b3          	add	a3,a1,a3
    80007a6c:	00170713          	addi	a4,a4,1
    80007a70:	01368023          	sb	s3,0(a3)
    80007a74:	00e4b023          	sd	a4,0(s1)
    80007a78:	10000637          	lui	a2,0x10000
    80007a7c:	02f71063          	bne	a4,a5,80007a9c <uartputc+0xc4>
    80007a80:	0340006f          	j	80007ab4 <uartputc+0xdc>
    80007a84:	00074703          	lbu	a4,0(a4)
    80007a88:	00f93023          	sd	a5,0(s2)
    80007a8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007a90:	00093783          	ld	a5,0(s2)
    80007a94:	0004b703          	ld	a4,0(s1)
    80007a98:	00f70e63          	beq	a4,a5,80007ab4 <uartputc+0xdc>
    80007a9c:	00564683          	lbu	a3,5(a2)
    80007aa0:	01f7f713          	andi	a4,a5,31
    80007aa4:	00e58733          	add	a4,a1,a4
    80007aa8:	0206f693          	andi	a3,a3,32
    80007aac:	00178793          	addi	a5,a5,1
    80007ab0:	fc069ae3          	bnez	a3,80007a84 <uartputc+0xac>
    80007ab4:	02813083          	ld	ra,40(sp)
    80007ab8:	02013403          	ld	s0,32(sp)
    80007abc:	01813483          	ld	s1,24(sp)
    80007ac0:	01013903          	ld	s2,16(sp)
    80007ac4:	00813983          	ld	s3,8(sp)
    80007ac8:	03010113          	addi	sp,sp,48
    80007acc:	00008067          	ret

0000000080007ad0 <uartputc_sync>:
    80007ad0:	ff010113          	addi	sp,sp,-16
    80007ad4:	00813423          	sd	s0,8(sp)
    80007ad8:	01010413          	addi	s0,sp,16
    80007adc:	00003717          	auipc	a4,0x3
    80007ae0:	7ec72703          	lw	a4,2028(a4) # 8000b2c8 <panicked>
    80007ae4:	02071663          	bnez	a4,80007b10 <uartputc_sync+0x40>
    80007ae8:	00050793          	mv	a5,a0
    80007aec:	100006b7          	lui	a3,0x10000
    80007af0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007af4:	02077713          	andi	a4,a4,32
    80007af8:	fe070ce3          	beqz	a4,80007af0 <uartputc_sync+0x20>
    80007afc:	0ff7f793          	andi	a5,a5,255
    80007b00:	00f68023          	sb	a5,0(a3)
    80007b04:	00813403          	ld	s0,8(sp)
    80007b08:	01010113          	addi	sp,sp,16
    80007b0c:	00008067          	ret
    80007b10:	0000006f          	j	80007b10 <uartputc_sync+0x40>

0000000080007b14 <uartstart>:
    80007b14:	ff010113          	addi	sp,sp,-16
    80007b18:	00813423          	sd	s0,8(sp)
    80007b1c:	01010413          	addi	s0,sp,16
    80007b20:	00003617          	auipc	a2,0x3
    80007b24:	7b060613          	addi	a2,a2,1968 # 8000b2d0 <uart_tx_r>
    80007b28:	00003517          	auipc	a0,0x3
    80007b2c:	7b050513          	addi	a0,a0,1968 # 8000b2d8 <uart_tx_w>
    80007b30:	00063783          	ld	a5,0(a2)
    80007b34:	00053703          	ld	a4,0(a0)
    80007b38:	04f70263          	beq	a4,a5,80007b7c <uartstart+0x68>
    80007b3c:	100005b7          	lui	a1,0x10000
    80007b40:	00005817          	auipc	a6,0x5
    80007b44:	c3080813          	addi	a6,a6,-976 # 8000c770 <uart_tx_buf>
    80007b48:	01c0006f          	j	80007b64 <uartstart+0x50>
    80007b4c:	0006c703          	lbu	a4,0(a3)
    80007b50:	00f63023          	sd	a5,0(a2)
    80007b54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b58:	00063783          	ld	a5,0(a2)
    80007b5c:	00053703          	ld	a4,0(a0)
    80007b60:	00f70e63          	beq	a4,a5,80007b7c <uartstart+0x68>
    80007b64:	01f7f713          	andi	a4,a5,31
    80007b68:	00e806b3          	add	a3,a6,a4
    80007b6c:	0055c703          	lbu	a4,5(a1)
    80007b70:	00178793          	addi	a5,a5,1
    80007b74:	02077713          	andi	a4,a4,32
    80007b78:	fc071ae3          	bnez	a4,80007b4c <uartstart+0x38>
    80007b7c:	00813403          	ld	s0,8(sp)
    80007b80:	01010113          	addi	sp,sp,16
    80007b84:	00008067          	ret

0000000080007b88 <uartgetc>:
    80007b88:	ff010113          	addi	sp,sp,-16
    80007b8c:	00813423          	sd	s0,8(sp)
    80007b90:	01010413          	addi	s0,sp,16
    80007b94:	10000737          	lui	a4,0x10000
    80007b98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007b9c:	0017f793          	andi	a5,a5,1
    80007ba0:	00078c63          	beqz	a5,80007bb8 <uartgetc+0x30>
    80007ba4:	00074503          	lbu	a0,0(a4)
    80007ba8:	0ff57513          	andi	a0,a0,255
    80007bac:	00813403          	ld	s0,8(sp)
    80007bb0:	01010113          	addi	sp,sp,16
    80007bb4:	00008067          	ret
    80007bb8:	fff00513          	li	a0,-1
    80007bbc:	ff1ff06f          	j	80007bac <uartgetc+0x24>

0000000080007bc0 <uartintr>:
    80007bc0:	100007b7          	lui	a5,0x10000
    80007bc4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007bc8:	0017f793          	andi	a5,a5,1
    80007bcc:	0a078463          	beqz	a5,80007c74 <uartintr+0xb4>
    80007bd0:	fe010113          	addi	sp,sp,-32
    80007bd4:	00813823          	sd	s0,16(sp)
    80007bd8:	00913423          	sd	s1,8(sp)
    80007bdc:	00113c23          	sd	ra,24(sp)
    80007be0:	02010413          	addi	s0,sp,32
    80007be4:	100004b7          	lui	s1,0x10000
    80007be8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007bec:	0ff57513          	andi	a0,a0,255
    80007bf0:	fffff097          	auipc	ra,0xfffff
    80007bf4:	534080e7          	jalr	1332(ra) # 80007124 <consoleintr>
    80007bf8:	0054c783          	lbu	a5,5(s1)
    80007bfc:	0017f793          	andi	a5,a5,1
    80007c00:	fe0794e3          	bnez	a5,80007be8 <uartintr+0x28>
    80007c04:	00003617          	auipc	a2,0x3
    80007c08:	6cc60613          	addi	a2,a2,1740 # 8000b2d0 <uart_tx_r>
    80007c0c:	00003517          	auipc	a0,0x3
    80007c10:	6cc50513          	addi	a0,a0,1740 # 8000b2d8 <uart_tx_w>
    80007c14:	00063783          	ld	a5,0(a2)
    80007c18:	00053703          	ld	a4,0(a0)
    80007c1c:	04f70263          	beq	a4,a5,80007c60 <uartintr+0xa0>
    80007c20:	100005b7          	lui	a1,0x10000
    80007c24:	00005817          	auipc	a6,0x5
    80007c28:	b4c80813          	addi	a6,a6,-1204 # 8000c770 <uart_tx_buf>
    80007c2c:	01c0006f          	j	80007c48 <uartintr+0x88>
    80007c30:	0006c703          	lbu	a4,0(a3)
    80007c34:	00f63023          	sd	a5,0(a2)
    80007c38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c3c:	00063783          	ld	a5,0(a2)
    80007c40:	00053703          	ld	a4,0(a0)
    80007c44:	00f70e63          	beq	a4,a5,80007c60 <uartintr+0xa0>
    80007c48:	01f7f713          	andi	a4,a5,31
    80007c4c:	00e806b3          	add	a3,a6,a4
    80007c50:	0055c703          	lbu	a4,5(a1)
    80007c54:	00178793          	addi	a5,a5,1
    80007c58:	02077713          	andi	a4,a4,32
    80007c5c:	fc071ae3          	bnez	a4,80007c30 <uartintr+0x70>
    80007c60:	01813083          	ld	ra,24(sp)
    80007c64:	01013403          	ld	s0,16(sp)
    80007c68:	00813483          	ld	s1,8(sp)
    80007c6c:	02010113          	addi	sp,sp,32
    80007c70:	00008067          	ret
    80007c74:	00003617          	auipc	a2,0x3
    80007c78:	65c60613          	addi	a2,a2,1628 # 8000b2d0 <uart_tx_r>
    80007c7c:	00003517          	auipc	a0,0x3
    80007c80:	65c50513          	addi	a0,a0,1628 # 8000b2d8 <uart_tx_w>
    80007c84:	00063783          	ld	a5,0(a2)
    80007c88:	00053703          	ld	a4,0(a0)
    80007c8c:	04f70263          	beq	a4,a5,80007cd0 <uartintr+0x110>
    80007c90:	100005b7          	lui	a1,0x10000
    80007c94:	00005817          	auipc	a6,0x5
    80007c98:	adc80813          	addi	a6,a6,-1316 # 8000c770 <uart_tx_buf>
    80007c9c:	01c0006f          	j	80007cb8 <uartintr+0xf8>
    80007ca0:	0006c703          	lbu	a4,0(a3)
    80007ca4:	00f63023          	sd	a5,0(a2)
    80007ca8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007cac:	00063783          	ld	a5,0(a2)
    80007cb0:	00053703          	ld	a4,0(a0)
    80007cb4:	02f70063          	beq	a4,a5,80007cd4 <uartintr+0x114>
    80007cb8:	01f7f713          	andi	a4,a5,31
    80007cbc:	00e806b3          	add	a3,a6,a4
    80007cc0:	0055c703          	lbu	a4,5(a1)
    80007cc4:	00178793          	addi	a5,a5,1
    80007cc8:	02077713          	andi	a4,a4,32
    80007ccc:	fc071ae3          	bnez	a4,80007ca0 <uartintr+0xe0>
    80007cd0:	00008067          	ret
    80007cd4:	00008067          	ret

0000000080007cd8 <kinit>:
    80007cd8:	fc010113          	addi	sp,sp,-64
    80007cdc:	02913423          	sd	s1,40(sp)
    80007ce0:	fffff7b7          	lui	a5,0xfffff
    80007ce4:	00006497          	auipc	s1,0x6
    80007ce8:	aab48493          	addi	s1,s1,-1365 # 8000d78f <end+0xfff>
    80007cec:	02813823          	sd	s0,48(sp)
    80007cf0:	01313c23          	sd	s3,24(sp)
    80007cf4:	00f4f4b3          	and	s1,s1,a5
    80007cf8:	02113c23          	sd	ra,56(sp)
    80007cfc:	03213023          	sd	s2,32(sp)
    80007d00:	01413823          	sd	s4,16(sp)
    80007d04:	01513423          	sd	s5,8(sp)
    80007d08:	04010413          	addi	s0,sp,64
    80007d0c:	000017b7          	lui	a5,0x1
    80007d10:	01100993          	li	s3,17
    80007d14:	00f487b3          	add	a5,s1,a5
    80007d18:	01b99993          	slli	s3,s3,0x1b
    80007d1c:	06f9e063          	bltu	s3,a5,80007d7c <kinit+0xa4>
    80007d20:	00005a97          	auipc	s5,0x5
    80007d24:	a70a8a93          	addi	s5,s5,-1424 # 8000c790 <end>
    80007d28:	0754ec63          	bltu	s1,s5,80007da0 <kinit+0xc8>
    80007d2c:	0734fa63          	bgeu	s1,s3,80007da0 <kinit+0xc8>
    80007d30:	00088a37          	lui	s4,0x88
    80007d34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007d38:	00003917          	auipc	s2,0x3
    80007d3c:	5a890913          	addi	s2,s2,1448 # 8000b2e0 <kmem>
    80007d40:	00ca1a13          	slli	s4,s4,0xc
    80007d44:	0140006f          	j	80007d58 <kinit+0x80>
    80007d48:	000017b7          	lui	a5,0x1
    80007d4c:	00f484b3          	add	s1,s1,a5
    80007d50:	0554e863          	bltu	s1,s5,80007da0 <kinit+0xc8>
    80007d54:	0534f663          	bgeu	s1,s3,80007da0 <kinit+0xc8>
    80007d58:	00001637          	lui	a2,0x1
    80007d5c:	00100593          	li	a1,1
    80007d60:	00048513          	mv	a0,s1
    80007d64:	00000097          	auipc	ra,0x0
    80007d68:	5e4080e7          	jalr	1508(ra) # 80008348 <__memset>
    80007d6c:	00093783          	ld	a5,0(s2)
    80007d70:	00f4b023          	sd	a5,0(s1)
    80007d74:	00993023          	sd	s1,0(s2)
    80007d78:	fd4498e3          	bne	s1,s4,80007d48 <kinit+0x70>
    80007d7c:	03813083          	ld	ra,56(sp)
    80007d80:	03013403          	ld	s0,48(sp)
    80007d84:	02813483          	ld	s1,40(sp)
    80007d88:	02013903          	ld	s2,32(sp)
    80007d8c:	01813983          	ld	s3,24(sp)
    80007d90:	01013a03          	ld	s4,16(sp)
    80007d94:	00813a83          	ld	s5,8(sp)
    80007d98:	04010113          	addi	sp,sp,64
    80007d9c:	00008067          	ret
    80007da0:	00002517          	auipc	a0,0x2
    80007da4:	8c050513          	addi	a0,a0,-1856 # 80009660 <digits+0x18>
    80007da8:	fffff097          	auipc	ra,0xfffff
    80007dac:	4b4080e7          	jalr	1204(ra) # 8000725c <panic>

0000000080007db0 <freerange>:
    80007db0:	fc010113          	addi	sp,sp,-64
    80007db4:	000017b7          	lui	a5,0x1
    80007db8:	02913423          	sd	s1,40(sp)
    80007dbc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007dc0:	009504b3          	add	s1,a0,s1
    80007dc4:	fffff537          	lui	a0,0xfffff
    80007dc8:	02813823          	sd	s0,48(sp)
    80007dcc:	02113c23          	sd	ra,56(sp)
    80007dd0:	03213023          	sd	s2,32(sp)
    80007dd4:	01313c23          	sd	s3,24(sp)
    80007dd8:	01413823          	sd	s4,16(sp)
    80007ddc:	01513423          	sd	s5,8(sp)
    80007de0:	01613023          	sd	s6,0(sp)
    80007de4:	04010413          	addi	s0,sp,64
    80007de8:	00a4f4b3          	and	s1,s1,a0
    80007dec:	00f487b3          	add	a5,s1,a5
    80007df0:	06f5e463          	bltu	a1,a5,80007e58 <freerange+0xa8>
    80007df4:	00005a97          	auipc	s5,0x5
    80007df8:	99ca8a93          	addi	s5,s5,-1636 # 8000c790 <end>
    80007dfc:	0954e263          	bltu	s1,s5,80007e80 <freerange+0xd0>
    80007e00:	01100993          	li	s3,17
    80007e04:	01b99993          	slli	s3,s3,0x1b
    80007e08:	0734fc63          	bgeu	s1,s3,80007e80 <freerange+0xd0>
    80007e0c:	00058a13          	mv	s4,a1
    80007e10:	00003917          	auipc	s2,0x3
    80007e14:	4d090913          	addi	s2,s2,1232 # 8000b2e0 <kmem>
    80007e18:	00002b37          	lui	s6,0x2
    80007e1c:	0140006f          	j	80007e30 <freerange+0x80>
    80007e20:	000017b7          	lui	a5,0x1
    80007e24:	00f484b3          	add	s1,s1,a5
    80007e28:	0554ec63          	bltu	s1,s5,80007e80 <freerange+0xd0>
    80007e2c:	0534fa63          	bgeu	s1,s3,80007e80 <freerange+0xd0>
    80007e30:	00001637          	lui	a2,0x1
    80007e34:	00100593          	li	a1,1
    80007e38:	00048513          	mv	a0,s1
    80007e3c:	00000097          	auipc	ra,0x0
    80007e40:	50c080e7          	jalr	1292(ra) # 80008348 <__memset>
    80007e44:	00093703          	ld	a4,0(s2)
    80007e48:	016487b3          	add	a5,s1,s6
    80007e4c:	00e4b023          	sd	a4,0(s1)
    80007e50:	00993023          	sd	s1,0(s2)
    80007e54:	fcfa76e3          	bgeu	s4,a5,80007e20 <freerange+0x70>
    80007e58:	03813083          	ld	ra,56(sp)
    80007e5c:	03013403          	ld	s0,48(sp)
    80007e60:	02813483          	ld	s1,40(sp)
    80007e64:	02013903          	ld	s2,32(sp)
    80007e68:	01813983          	ld	s3,24(sp)
    80007e6c:	01013a03          	ld	s4,16(sp)
    80007e70:	00813a83          	ld	s5,8(sp)
    80007e74:	00013b03          	ld	s6,0(sp)
    80007e78:	04010113          	addi	sp,sp,64
    80007e7c:	00008067          	ret
    80007e80:	00001517          	auipc	a0,0x1
    80007e84:	7e050513          	addi	a0,a0,2016 # 80009660 <digits+0x18>
    80007e88:	fffff097          	auipc	ra,0xfffff
    80007e8c:	3d4080e7          	jalr	980(ra) # 8000725c <panic>

0000000080007e90 <kfree>:
    80007e90:	fe010113          	addi	sp,sp,-32
    80007e94:	00813823          	sd	s0,16(sp)
    80007e98:	00113c23          	sd	ra,24(sp)
    80007e9c:	00913423          	sd	s1,8(sp)
    80007ea0:	02010413          	addi	s0,sp,32
    80007ea4:	03451793          	slli	a5,a0,0x34
    80007ea8:	04079c63          	bnez	a5,80007f00 <kfree+0x70>
    80007eac:	00005797          	auipc	a5,0x5
    80007eb0:	8e478793          	addi	a5,a5,-1820 # 8000c790 <end>
    80007eb4:	00050493          	mv	s1,a0
    80007eb8:	04f56463          	bltu	a0,a5,80007f00 <kfree+0x70>
    80007ebc:	01100793          	li	a5,17
    80007ec0:	01b79793          	slli	a5,a5,0x1b
    80007ec4:	02f57e63          	bgeu	a0,a5,80007f00 <kfree+0x70>
    80007ec8:	00001637          	lui	a2,0x1
    80007ecc:	00100593          	li	a1,1
    80007ed0:	00000097          	auipc	ra,0x0
    80007ed4:	478080e7          	jalr	1144(ra) # 80008348 <__memset>
    80007ed8:	00003797          	auipc	a5,0x3
    80007edc:	40878793          	addi	a5,a5,1032 # 8000b2e0 <kmem>
    80007ee0:	0007b703          	ld	a4,0(a5)
    80007ee4:	01813083          	ld	ra,24(sp)
    80007ee8:	01013403          	ld	s0,16(sp)
    80007eec:	00e4b023          	sd	a4,0(s1)
    80007ef0:	0097b023          	sd	s1,0(a5)
    80007ef4:	00813483          	ld	s1,8(sp)
    80007ef8:	02010113          	addi	sp,sp,32
    80007efc:	00008067          	ret
    80007f00:	00001517          	auipc	a0,0x1
    80007f04:	76050513          	addi	a0,a0,1888 # 80009660 <digits+0x18>
    80007f08:	fffff097          	auipc	ra,0xfffff
    80007f0c:	354080e7          	jalr	852(ra) # 8000725c <panic>

0000000080007f10 <kalloc>:
    80007f10:	fe010113          	addi	sp,sp,-32
    80007f14:	00813823          	sd	s0,16(sp)
    80007f18:	00913423          	sd	s1,8(sp)
    80007f1c:	00113c23          	sd	ra,24(sp)
    80007f20:	02010413          	addi	s0,sp,32
    80007f24:	00003797          	auipc	a5,0x3
    80007f28:	3bc78793          	addi	a5,a5,956 # 8000b2e0 <kmem>
    80007f2c:	0007b483          	ld	s1,0(a5)
    80007f30:	02048063          	beqz	s1,80007f50 <kalloc+0x40>
    80007f34:	0004b703          	ld	a4,0(s1)
    80007f38:	00001637          	lui	a2,0x1
    80007f3c:	00500593          	li	a1,5
    80007f40:	00048513          	mv	a0,s1
    80007f44:	00e7b023          	sd	a4,0(a5)
    80007f48:	00000097          	auipc	ra,0x0
    80007f4c:	400080e7          	jalr	1024(ra) # 80008348 <__memset>
    80007f50:	01813083          	ld	ra,24(sp)
    80007f54:	01013403          	ld	s0,16(sp)
    80007f58:	00048513          	mv	a0,s1
    80007f5c:	00813483          	ld	s1,8(sp)
    80007f60:	02010113          	addi	sp,sp,32
    80007f64:	00008067          	ret

0000000080007f68 <initlock>:
    80007f68:	ff010113          	addi	sp,sp,-16
    80007f6c:	00813423          	sd	s0,8(sp)
    80007f70:	01010413          	addi	s0,sp,16
    80007f74:	00813403          	ld	s0,8(sp)
    80007f78:	00b53423          	sd	a1,8(a0)
    80007f7c:	00052023          	sw	zero,0(a0)
    80007f80:	00053823          	sd	zero,16(a0)
    80007f84:	01010113          	addi	sp,sp,16
    80007f88:	00008067          	ret

0000000080007f8c <acquire>:
    80007f8c:	fe010113          	addi	sp,sp,-32
    80007f90:	00813823          	sd	s0,16(sp)
    80007f94:	00913423          	sd	s1,8(sp)
    80007f98:	00113c23          	sd	ra,24(sp)
    80007f9c:	01213023          	sd	s2,0(sp)
    80007fa0:	02010413          	addi	s0,sp,32
    80007fa4:	00050493          	mv	s1,a0
    80007fa8:	10002973          	csrr	s2,sstatus
    80007fac:	100027f3          	csrr	a5,sstatus
    80007fb0:	ffd7f793          	andi	a5,a5,-3
    80007fb4:	10079073          	csrw	sstatus,a5
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	8e0080e7          	jalr	-1824(ra) # 80006898 <mycpu>
    80007fc0:	07852783          	lw	a5,120(a0)
    80007fc4:	06078e63          	beqz	a5,80008040 <acquire+0xb4>
    80007fc8:	fffff097          	auipc	ra,0xfffff
    80007fcc:	8d0080e7          	jalr	-1840(ra) # 80006898 <mycpu>
    80007fd0:	07852783          	lw	a5,120(a0)
    80007fd4:	0004a703          	lw	a4,0(s1)
    80007fd8:	0017879b          	addiw	a5,a5,1
    80007fdc:	06f52c23          	sw	a5,120(a0)
    80007fe0:	04071063          	bnez	a4,80008020 <acquire+0x94>
    80007fe4:	00100713          	li	a4,1
    80007fe8:	00070793          	mv	a5,a4
    80007fec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007ff0:	0007879b          	sext.w	a5,a5
    80007ff4:	fe079ae3          	bnez	a5,80007fe8 <acquire+0x5c>
    80007ff8:	0ff0000f          	fence
    80007ffc:	fffff097          	auipc	ra,0xfffff
    80008000:	89c080e7          	jalr	-1892(ra) # 80006898 <mycpu>
    80008004:	01813083          	ld	ra,24(sp)
    80008008:	01013403          	ld	s0,16(sp)
    8000800c:	00a4b823          	sd	a0,16(s1)
    80008010:	00013903          	ld	s2,0(sp)
    80008014:	00813483          	ld	s1,8(sp)
    80008018:	02010113          	addi	sp,sp,32
    8000801c:	00008067          	ret
    80008020:	0104b903          	ld	s2,16(s1)
    80008024:	fffff097          	auipc	ra,0xfffff
    80008028:	874080e7          	jalr	-1932(ra) # 80006898 <mycpu>
    8000802c:	faa91ce3          	bne	s2,a0,80007fe4 <acquire+0x58>
    80008030:	00001517          	auipc	a0,0x1
    80008034:	63850513          	addi	a0,a0,1592 # 80009668 <digits+0x20>
    80008038:	fffff097          	auipc	ra,0xfffff
    8000803c:	224080e7          	jalr	548(ra) # 8000725c <panic>
    80008040:	00195913          	srli	s2,s2,0x1
    80008044:	fffff097          	auipc	ra,0xfffff
    80008048:	854080e7          	jalr	-1964(ra) # 80006898 <mycpu>
    8000804c:	00197913          	andi	s2,s2,1
    80008050:	07252e23          	sw	s2,124(a0)
    80008054:	f75ff06f          	j	80007fc8 <acquire+0x3c>

0000000080008058 <release>:
    80008058:	fe010113          	addi	sp,sp,-32
    8000805c:	00813823          	sd	s0,16(sp)
    80008060:	00113c23          	sd	ra,24(sp)
    80008064:	00913423          	sd	s1,8(sp)
    80008068:	01213023          	sd	s2,0(sp)
    8000806c:	02010413          	addi	s0,sp,32
    80008070:	00052783          	lw	a5,0(a0)
    80008074:	00079a63          	bnez	a5,80008088 <release+0x30>
    80008078:	00001517          	auipc	a0,0x1
    8000807c:	5f850513          	addi	a0,a0,1528 # 80009670 <digits+0x28>
    80008080:	fffff097          	auipc	ra,0xfffff
    80008084:	1dc080e7          	jalr	476(ra) # 8000725c <panic>
    80008088:	01053903          	ld	s2,16(a0)
    8000808c:	00050493          	mv	s1,a0
    80008090:	fffff097          	auipc	ra,0xfffff
    80008094:	808080e7          	jalr	-2040(ra) # 80006898 <mycpu>
    80008098:	fea910e3          	bne	s2,a0,80008078 <release+0x20>
    8000809c:	0004b823          	sd	zero,16(s1)
    800080a0:	0ff0000f          	fence
    800080a4:	0f50000f          	fence	iorw,ow
    800080a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800080ac:	ffffe097          	auipc	ra,0xffffe
    800080b0:	7ec080e7          	jalr	2028(ra) # 80006898 <mycpu>
    800080b4:	100027f3          	csrr	a5,sstatus
    800080b8:	0027f793          	andi	a5,a5,2
    800080bc:	04079a63          	bnez	a5,80008110 <release+0xb8>
    800080c0:	07852783          	lw	a5,120(a0)
    800080c4:	02f05e63          	blez	a5,80008100 <release+0xa8>
    800080c8:	fff7871b          	addiw	a4,a5,-1
    800080cc:	06e52c23          	sw	a4,120(a0)
    800080d0:	00071c63          	bnez	a4,800080e8 <release+0x90>
    800080d4:	07c52783          	lw	a5,124(a0)
    800080d8:	00078863          	beqz	a5,800080e8 <release+0x90>
    800080dc:	100027f3          	csrr	a5,sstatus
    800080e0:	0027e793          	ori	a5,a5,2
    800080e4:	10079073          	csrw	sstatus,a5
    800080e8:	01813083          	ld	ra,24(sp)
    800080ec:	01013403          	ld	s0,16(sp)
    800080f0:	00813483          	ld	s1,8(sp)
    800080f4:	00013903          	ld	s2,0(sp)
    800080f8:	02010113          	addi	sp,sp,32
    800080fc:	00008067          	ret
    80008100:	00001517          	auipc	a0,0x1
    80008104:	59050513          	addi	a0,a0,1424 # 80009690 <digits+0x48>
    80008108:	fffff097          	auipc	ra,0xfffff
    8000810c:	154080e7          	jalr	340(ra) # 8000725c <panic>
    80008110:	00001517          	auipc	a0,0x1
    80008114:	56850513          	addi	a0,a0,1384 # 80009678 <digits+0x30>
    80008118:	fffff097          	auipc	ra,0xfffff
    8000811c:	144080e7          	jalr	324(ra) # 8000725c <panic>

0000000080008120 <holding>:
    80008120:	00052783          	lw	a5,0(a0)
    80008124:	00079663          	bnez	a5,80008130 <holding+0x10>
    80008128:	00000513          	li	a0,0
    8000812c:	00008067          	ret
    80008130:	fe010113          	addi	sp,sp,-32
    80008134:	00813823          	sd	s0,16(sp)
    80008138:	00913423          	sd	s1,8(sp)
    8000813c:	00113c23          	sd	ra,24(sp)
    80008140:	02010413          	addi	s0,sp,32
    80008144:	01053483          	ld	s1,16(a0)
    80008148:	ffffe097          	auipc	ra,0xffffe
    8000814c:	750080e7          	jalr	1872(ra) # 80006898 <mycpu>
    80008150:	01813083          	ld	ra,24(sp)
    80008154:	01013403          	ld	s0,16(sp)
    80008158:	40a48533          	sub	a0,s1,a0
    8000815c:	00153513          	seqz	a0,a0
    80008160:	00813483          	ld	s1,8(sp)
    80008164:	02010113          	addi	sp,sp,32
    80008168:	00008067          	ret

000000008000816c <push_off>:
    8000816c:	fe010113          	addi	sp,sp,-32
    80008170:	00813823          	sd	s0,16(sp)
    80008174:	00113c23          	sd	ra,24(sp)
    80008178:	00913423          	sd	s1,8(sp)
    8000817c:	02010413          	addi	s0,sp,32
    80008180:	100024f3          	csrr	s1,sstatus
    80008184:	100027f3          	csrr	a5,sstatus
    80008188:	ffd7f793          	andi	a5,a5,-3
    8000818c:	10079073          	csrw	sstatus,a5
    80008190:	ffffe097          	auipc	ra,0xffffe
    80008194:	708080e7          	jalr	1800(ra) # 80006898 <mycpu>
    80008198:	07852783          	lw	a5,120(a0)
    8000819c:	02078663          	beqz	a5,800081c8 <push_off+0x5c>
    800081a0:	ffffe097          	auipc	ra,0xffffe
    800081a4:	6f8080e7          	jalr	1784(ra) # 80006898 <mycpu>
    800081a8:	07852783          	lw	a5,120(a0)
    800081ac:	01813083          	ld	ra,24(sp)
    800081b0:	01013403          	ld	s0,16(sp)
    800081b4:	0017879b          	addiw	a5,a5,1
    800081b8:	06f52c23          	sw	a5,120(a0)
    800081bc:	00813483          	ld	s1,8(sp)
    800081c0:	02010113          	addi	sp,sp,32
    800081c4:	00008067          	ret
    800081c8:	0014d493          	srli	s1,s1,0x1
    800081cc:	ffffe097          	auipc	ra,0xffffe
    800081d0:	6cc080e7          	jalr	1740(ra) # 80006898 <mycpu>
    800081d4:	0014f493          	andi	s1,s1,1
    800081d8:	06952e23          	sw	s1,124(a0)
    800081dc:	fc5ff06f          	j	800081a0 <push_off+0x34>

00000000800081e0 <pop_off>:
    800081e0:	ff010113          	addi	sp,sp,-16
    800081e4:	00813023          	sd	s0,0(sp)
    800081e8:	00113423          	sd	ra,8(sp)
    800081ec:	01010413          	addi	s0,sp,16
    800081f0:	ffffe097          	auipc	ra,0xffffe
    800081f4:	6a8080e7          	jalr	1704(ra) # 80006898 <mycpu>
    800081f8:	100027f3          	csrr	a5,sstatus
    800081fc:	0027f793          	andi	a5,a5,2
    80008200:	04079663          	bnez	a5,8000824c <pop_off+0x6c>
    80008204:	07852783          	lw	a5,120(a0)
    80008208:	02f05a63          	blez	a5,8000823c <pop_off+0x5c>
    8000820c:	fff7871b          	addiw	a4,a5,-1
    80008210:	06e52c23          	sw	a4,120(a0)
    80008214:	00071c63          	bnez	a4,8000822c <pop_off+0x4c>
    80008218:	07c52783          	lw	a5,124(a0)
    8000821c:	00078863          	beqz	a5,8000822c <pop_off+0x4c>
    80008220:	100027f3          	csrr	a5,sstatus
    80008224:	0027e793          	ori	a5,a5,2
    80008228:	10079073          	csrw	sstatus,a5
    8000822c:	00813083          	ld	ra,8(sp)
    80008230:	00013403          	ld	s0,0(sp)
    80008234:	01010113          	addi	sp,sp,16
    80008238:	00008067          	ret
    8000823c:	00001517          	auipc	a0,0x1
    80008240:	45450513          	addi	a0,a0,1108 # 80009690 <digits+0x48>
    80008244:	fffff097          	auipc	ra,0xfffff
    80008248:	018080e7          	jalr	24(ra) # 8000725c <panic>
    8000824c:	00001517          	auipc	a0,0x1
    80008250:	42c50513          	addi	a0,a0,1068 # 80009678 <digits+0x30>
    80008254:	fffff097          	auipc	ra,0xfffff
    80008258:	008080e7          	jalr	8(ra) # 8000725c <panic>

000000008000825c <push_on>:
    8000825c:	fe010113          	addi	sp,sp,-32
    80008260:	00813823          	sd	s0,16(sp)
    80008264:	00113c23          	sd	ra,24(sp)
    80008268:	00913423          	sd	s1,8(sp)
    8000826c:	02010413          	addi	s0,sp,32
    80008270:	100024f3          	csrr	s1,sstatus
    80008274:	100027f3          	csrr	a5,sstatus
    80008278:	0027e793          	ori	a5,a5,2
    8000827c:	10079073          	csrw	sstatus,a5
    80008280:	ffffe097          	auipc	ra,0xffffe
    80008284:	618080e7          	jalr	1560(ra) # 80006898 <mycpu>
    80008288:	07852783          	lw	a5,120(a0)
    8000828c:	02078663          	beqz	a5,800082b8 <push_on+0x5c>
    80008290:	ffffe097          	auipc	ra,0xffffe
    80008294:	608080e7          	jalr	1544(ra) # 80006898 <mycpu>
    80008298:	07852783          	lw	a5,120(a0)
    8000829c:	01813083          	ld	ra,24(sp)
    800082a0:	01013403          	ld	s0,16(sp)
    800082a4:	0017879b          	addiw	a5,a5,1
    800082a8:	06f52c23          	sw	a5,120(a0)
    800082ac:	00813483          	ld	s1,8(sp)
    800082b0:	02010113          	addi	sp,sp,32
    800082b4:	00008067          	ret
    800082b8:	0014d493          	srli	s1,s1,0x1
    800082bc:	ffffe097          	auipc	ra,0xffffe
    800082c0:	5dc080e7          	jalr	1500(ra) # 80006898 <mycpu>
    800082c4:	0014f493          	andi	s1,s1,1
    800082c8:	06952e23          	sw	s1,124(a0)
    800082cc:	fc5ff06f          	j	80008290 <push_on+0x34>

00000000800082d0 <pop_on>:
    800082d0:	ff010113          	addi	sp,sp,-16
    800082d4:	00813023          	sd	s0,0(sp)
    800082d8:	00113423          	sd	ra,8(sp)
    800082dc:	01010413          	addi	s0,sp,16
    800082e0:	ffffe097          	auipc	ra,0xffffe
    800082e4:	5b8080e7          	jalr	1464(ra) # 80006898 <mycpu>
    800082e8:	100027f3          	csrr	a5,sstatus
    800082ec:	0027f793          	andi	a5,a5,2
    800082f0:	04078463          	beqz	a5,80008338 <pop_on+0x68>
    800082f4:	07852783          	lw	a5,120(a0)
    800082f8:	02f05863          	blez	a5,80008328 <pop_on+0x58>
    800082fc:	fff7879b          	addiw	a5,a5,-1
    80008300:	06f52c23          	sw	a5,120(a0)
    80008304:	07853783          	ld	a5,120(a0)
    80008308:	00079863          	bnez	a5,80008318 <pop_on+0x48>
    8000830c:	100027f3          	csrr	a5,sstatus
    80008310:	ffd7f793          	andi	a5,a5,-3
    80008314:	10079073          	csrw	sstatus,a5
    80008318:	00813083          	ld	ra,8(sp)
    8000831c:	00013403          	ld	s0,0(sp)
    80008320:	01010113          	addi	sp,sp,16
    80008324:	00008067          	ret
    80008328:	00001517          	auipc	a0,0x1
    8000832c:	39050513          	addi	a0,a0,912 # 800096b8 <digits+0x70>
    80008330:	fffff097          	auipc	ra,0xfffff
    80008334:	f2c080e7          	jalr	-212(ra) # 8000725c <panic>
    80008338:	00001517          	auipc	a0,0x1
    8000833c:	36050513          	addi	a0,a0,864 # 80009698 <digits+0x50>
    80008340:	fffff097          	auipc	ra,0xfffff
    80008344:	f1c080e7          	jalr	-228(ra) # 8000725c <panic>

0000000080008348 <__memset>:
    80008348:	ff010113          	addi	sp,sp,-16
    8000834c:	00813423          	sd	s0,8(sp)
    80008350:	01010413          	addi	s0,sp,16
    80008354:	1a060e63          	beqz	a2,80008510 <__memset+0x1c8>
    80008358:	40a007b3          	neg	a5,a0
    8000835c:	0077f793          	andi	a5,a5,7
    80008360:	00778693          	addi	a3,a5,7
    80008364:	00b00813          	li	a6,11
    80008368:	0ff5f593          	andi	a1,a1,255
    8000836c:	fff6071b          	addiw	a4,a2,-1
    80008370:	1b06e663          	bltu	a3,a6,8000851c <__memset+0x1d4>
    80008374:	1cd76463          	bltu	a4,a3,8000853c <__memset+0x1f4>
    80008378:	1a078e63          	beqz	a5,80008534 <__memset+0x1ec>
    8000837c:	00b50023          	sb	a1,0(a0)
    80008380:	00100713          	li	a4,1
    80008384:	1ae78463          	beq	a5,a4,8000852c <__memset+0x1e4>
    80008388:	00b500a3          	sb	a1,1(a0)
    8000838c:	00200713          	li	a4,2
    80008390:	1ae78a63          	beq	a5,a4,80008544 <__memset+0x1fc>
    80008394:	00b50123          	sb	a1,2(a0)
    80008398:	00300713          	li	a4,3
    8000839c:	18e78463          	beq	a5,a4,80008524 <__memset+0x1dc>
    800083a0:	00b501a3          	sb	a1,3(a0)
    800083a4:	00400713          	li	a4,4
    800083a8:	1ae78263          	beq	a5,a4,8000854c <__memset+0x204>
    800083ac:	00b50223          	sb	a1,4(a0)
    800083b0:	00500713          	li	a4,5
    800083b4:	1ae78063          	beq	a5,a4,80008554 <__memset+0x20c>
    800083b8:	00b502a3          	sb	a1,5(a0)
    800083bc:	00700713          	li	a4,7
    800083c0:	18e79e63          	bne	a5,a4,8000855c <__memset+0x214>
    800083c4:	00b50323          	sb	a1,6(a0)
    800083c8:	00700e93          	li	t4,7
    800083cc:	00859713          	slli	a4,a1,0x8
    800083d0:	00e5e733          	or	a4,a1,a4
    800083d4:	01059e13          	slli	t3,a1,0x10
    800083d8:	01c76e33          	or	t3,a4,t3
    800083dc:	01859313          	slli	t1,a1,0x18
    800083e0:	006e6333          	or	t1,t3,t1
    800083e4:	02059893          	slli	a7,a1,0x20
    800083e8:	40f60e3b          	subw	t3,a2,a5
    800083ec:	011368b3          	or	a7,t1,a7
    800083f0:	02859813          	slli	a6,a1,0x28
    800083f4:	0108e833          	or	a6,a7,a6
    800083f8:	03059693          	slli	a3,a1,0x30
    800083fc:	003e589b          	srliw	a7,t3,0x3
    80008400:	00d866b3          	or	a3,a6,a3
    80008404:	03859713          	slli	a4,a1,0x38
    80008408:	00389813          	slli	a6,a7,0x3
    8000840c:	00f507b3          	add	a5,a0,a5
    80008410:	00e6e733          	or	a4,a3,a4
    80008414:	000e089b          	sext.w	a7,t3
    80008418:	00f806b3          	add	a3,a6,a5
    8000841c:	00e7b023          	sd	a4,0(a5)
    80008420:	00878793          	addi	a5,a5,8
    80008424:	fed79ce3          	bne	a5,a3,8000841c <__memset+0xd4>
    80008428:	ff8e7793          	andi	a5,t3,-8
    8000842c:	0007871b          	sext.w	a4,a5
    80008430:	01d787bb          	addw	a5,a5,t4
    80008434:	0ce88e63          	beq	a7,a4,80008510 <__memset+0x1c8>
    80008438:	00f50733          	add	a4,a0,a5
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	0017871b          	addiw	a4,a5,1
    80008444:	0cc77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	0027871b          	addiw	a4,a5,2
    80008454:	0ac77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00b70023          	sb	a1,0(a4)
    80008460:	0037871b          	addiw	a4,a5,3
    80008464:	0ac77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008468:	00e50733          	add	a4,a0,a4
    8000846c:	00b70023          	sb	a1,0(a4)
    80008470:	0047871b          	addiw	a4,a5,4
    80008474:	08c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008478:	00e50733          	add	a4,a0,a4
    8000847c:	00b70023          	sb	a1,0(a4)
    80008480:	0057871b          	addiw	a4,a5,5
    80008484:	08c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008488:	00e50733          	add	a4,a0,a4
    8000848c:	00b70023          	sb	a1,0(a4)
    80008490:	0067871b          	addiw	a4,a5,6
    80008494:	06c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008498:	00e50733          	add	a4,a0,a4
    8000849c:	00b70023          	sb	a1,0(a4)
    800084a0:	0077871b          	addiw	a4,a5,7
    800084a4:	06c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	0087871b          	addiw	a4,a5,8
    800084b4:	04c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00b70023          	sb	a1,0(a4)
    800084c0:	0097871b          	addiw	a4,a5,9
    800084c4:	04c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084c8:	00e50733          	add	a4,a0,a4
    800084cc:	00b70023          	sb	a1,0(a4)
    800084d0:	00a7871b          	addiw	a4,a5,10
    800084d4:	02c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00b70023          	sb	a1,0(a4)
    800084e0:	00b7871b          	addiw	a4,a5,11
    800084e4:	02c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084e8:	00e50733          	add	a4,a0,a4
    800084ec:	00b70023          	sb	a1,0(a4)
    800084f0:	00c7871b          	addiw	a4,a5,12
    800084f4:	00c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084f8:	00e50733          	add	a4,a0,a4
    800084fc:	00b70023          	sb	a1,0(a4)
    80008500:	00d7879b          	addiw	a5,a5,13
    80008504:	00c7f663          	bgeu	a5,a2,80008510 <__memset+0x1c8>
    80008508:	00f507b3          	add	a5,a0,a5
    8000850c:	00b78023          	sb	a1,0(a5)
    80008510:	00813403          	ld	s0,8(sp)
    80008514:	01010113          	addi	sp,sp,16
    80008518:	00008067          	ret
    8000851c:	00b00693          	li	a3,11
    80008520:	e55ff06f          	j	80008374 <__memset+0x2c>
    80008524:	00300e93          	li	t4,3
    80008528:	ea5ff06f          	j	800083cc <__memset+0x84>
    8000852c:	00100e93          	li	t4,1
    80008530:	e9dff06f          	j	800083cc <__memset+0x84>
    80008534:	00000e93          	li	t4,0
    80008538:	e95ff06f          	j	800083cc <__memset+0x84>
    8000853c:	00000793          	li	a5,0
    80008540:	ef9ff06f          	j	80008438 <__memset+0xf0>
    80008544:	00200e93          	li	t4,2
    80008548:	e85ff06f          	j	800083cc <__memset+0x84>
    8000854c:	00400e93          	li	t4,4
    80008550:	e7dff06f          	j	800083cc <__memset+0x84>
    80008554:	00500e93          	li	t4,5
    80008558:	e75ff06f          	j	800083cc <__memset+0x84>
    8000855c:	00600e93          	li	t4,6
    80008560:	e6dff06f          	j	800083cc <__memset+0x84>

0000000080008564 <__memmove>:
    80008564:	ff010113          	addi	sp,sp,-16
    80008568:	00813423          	sd	s0,8(sp)
    8000856c:	01010413          	addi	s0,sp,16
    80008570:	0e060863          	beqz	a2,80008660 <__memmove+0xfc>
    80008574:	fff6069b          	addiw	a3,a2,-1
    80008578:	0006881b          	sext.w	a6,a3
    8000857c:	0ea5e863          	bltu	a1,a0,8000866c <__memmove+0x108>
    80008580:	00758713          	addi	a4,a1,7
    80008584:	00a5e7b3          	or	a5,a1,a0
    80008588:	40a70733          	sub	a4,a4,a0
    8000858c:	0077f793          	andi	a5,a5,7
    80008590:	00f73713          	sltiu	a4,a4,15
    80008594:	00174713          	xori	a4,a4,1
    80008598:	0017b793          	seqz	a5,a5
    8000859c:	00e7f7b3          	and	a5,a5,a4
    800085a0:	10078863          	beqz	a5,800086b0 <__memmove+0x14c>
    800085a4:	00900793          	li	a5,9
    800085a8:	1107f463          	bgeu	a5,a6,800086b0 <__memmove+0x14c>
    800085ac:	0036581b          	srliw	a6,a2,0x3
    800085b0:	fff8081b          	addiw	a6,a6,-1
    800085b4:	02081813          	slli	a6,a6,0x20
    800085b8:	01d85893          	srli	a7,a6,0x1d
    800085bc:	00858813          	addi	a6,a1,8
    800085c0:	00058793          	mv	a5,a1
    800085c4:	00050713          	mv	a4,a0
    800085c8:	01088833          	add	a6,a7,a6
    800085cc:	0007b883          	ld	a7,0(a5)
    800085d0:	00878793          	addi	a5,a5,8
    800085d4:	00870713          	addi	a4,a4,8
    800085d8:	ff173c23          	sd	a7,-8(a4)
    800085dc:	ff0798e3          	bne	a5,a6,800085cc <__memmove+0x68>
    800085e0:	ff867713          	andi	a4,a2,-8
    800085e4:	02071793          	slli	a5,a4,0x20
    800085e8:	0207d793          	srli	a5,a5,0x20
    800085ec:	00f585b3          	add	a1,a1,a5
    800085f0:	40e686bb          	subw	a3,a3,a4
    800085f4:	00f507b3          	add	a5,a0,a5
    800085f8:	06e60463          	beq	a2,a4,80008660 <__memmove+0xfc>
    800085fc:	0005c703          	lbu	a4,0(a1)
    80008600:	00e78023          	sb	a4,0(a5)
    80008604:	04068e63          	beqz	a3,80008660 <__memmove+0xfc>
    80008608:	0015c603          	lbu	a2,1(a1)
    8000860c:	00100713          	li	a4,1
    80008610:	00c780a3          	sb	a2,1(a5)
    80008614:	04e68663          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008618:	0025c603          	lbu	a2,2(a1)
    8000861c:	00200713          	li	a4,2
    80008620:	00c78123          	sb	a2,2(a5)
    80008624:	02e68e63          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008628:	0035c603          	lbu	a2,3(a1)
    8000862c:	00300713          	li	a4,3
    80008630:	00c781a3          	sb	a2,3(a5)
    80008634:	02e68663          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008638:	0045c603          	lbu	a2,4(a1)
    8000863c:	00400713          	li	a4,4
    80008640:	00c78223          	sb	a2,4(a5)
    80008644:	00e68e63          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008648:	0055c603          	lbu	a2,5(a1)
    8000864c:	00500713          	li	a4,5
    80008650:	00c782a3          	sb	a2,5(a5)
    80008654:	00e68663          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008658:	0065c703          	lbu	a4,6(a1)
    8000865c:	00e78323          	sb	a4,6(a5)
    80008660:	00813403          	ld	s0,8(sp)
    80008664:	01010113          	addi	sp,sp,16
    80008668:	00008067          	ret
    8000866c:	02061713          	slli	a4,a2,0x20
    80008670:	02075713          	srli	a4,a4,0x20
    80008674:	00e587b3          	add	a5,a1,a4
    80008678:	f0f574e3          	bgeu	a0,a5,80008580 <__memmove+0x1c>
    8000867c:	02069613          	slli	a2,a3,0x20
    80008680:	02065613          	srli	a2,a2,0x20
    80008684:	fff64613          	not	a2,a2
    80008688:	00e50733          	add	a4,a0,a4
    8000868c:	00c78633          	add	a2,a5,a2
    80008690:	fff7c683          	lbu	a3,-1(a5)
    80008694:	fff78793          	addi	a5,a5,-1
    80008698:	fff70713          	addi	a4,a4,-1
    8000869c:	00d70023          	sb	a3,0(a4)
    800086a0:	fec798e3          	bne	a5,a2,80008690 <__memmove+0x12c>
    800086a4:	00813403          	ld	s0,8(sp)
    800086a8:	01010113          	addi	sp,sp,16
    800086ac:	00008067          	ret
    800086b0:	02069713          	slli	a4,a3,0x20
    800086b4:	02075713          	srli	a4,a4,0x20
    800086b8:	00170713          	addi	a4,a4,1
    800086bc:	00e50733          	add	a4,a0,a4
    800086c0:	00050793          	mv	a5,a0
    800086c4:	0005c683          	lbu	a3,0(a1)
    800086c8:	00178793          	addi	a5,a5,1
    800086cc:	00158593          	addi	a1,a1,1
    800086d0:	fed78fa3          	sb	a3,-1(a5)
    800086d4:	fee798e3          	bne	a5,a4,800086c4 <__memmove+0x160>
    800086d8:	f89ff06f          	j	80008660 <__memmove+0xfc>
	...

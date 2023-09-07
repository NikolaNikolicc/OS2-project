
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	72013103          	ld	sp,1824(sp) # 8000b720 <_GLOBAL_OFFSET_TABLE_+0x50>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	46d060ef          	jal	ra,80006c88 <start>

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
    800011a4:	164030ef          	jal	ra,80004308 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001288:	dc4080e7          	jalr	-572(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    800012d8:	d74080e7          	jalr	-652(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    80001358:	cf4080e7          	jalr	-780(ra) # 80005048 <_ZN3abi8sys_callEPv>

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
    800013c0:	c8c080e7          	jalr	-884(ra) # 80005048 <_ZN3abi8sys_callEPv>

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
    80001410:	c3c080e7          	jalr	-964(ra) # 80005048 <_ZN3abi8sys_callEPv>

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
    80001470:	bdc080e7          	jalr	-1060(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    800014c4:	b88080e7          	jalr	-1144(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    80001518:	b34080e7          	jalr	-1228(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    8000156c:	ae0080e7          	jalr	-1312(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    800015c0:	a8c080e7          	jalr	-1396(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    80001614:	a38080e7          	jalr	-1480(ra) # 80005048 <_ZN3abi8sys_callEPv>

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
    80001668:	9e4080e7          	jalr	-1564(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    800016b8:	994080e7          	jalr	-1644(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    80001708:	944080e7          	jalr	-1724(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    80001758:	8f4080e7          	jalr	-1804(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    800017a8:	8a4080e7          	jalr	-1884(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    800017f8:	854080e7          	jalr	-1964(ra) # 80005048 <_ZN3abi8sys_callEPv>
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
    80001840:	f447c783          	lbu	a5,-188(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001844:	04079e63          	bnez	a5,800018a0 <_ZN8MyBufferC1Ei+0x94>

    FreeMem* fmem_head = nullptr;

    MemoryAllocator(){

        size_t heapStart = (size_t)HEAP_START_ADDR;
    80001848:	0000a797          	auipc	a5,0xa
    8000184c:	ea87b783          	ld	a5,-344(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001850:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    80001854:	0000a717          	auipc	a4,0xa
    80001858:	ee473703          	ld	a4,-284(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000185c:	00073703          	ld	a4,0(a4)
    80001860:	fff70713          	addi	a4,a4,-1

        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80001864:	40f70733          	sub	a4,a4,a5
    80001868:	00675713          	srli	a4,a4,0x6

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    8000186c:	03f7f693          	andi	a3,a5,63
    80001870:	00068663          	beqz	a3,8000187c <_ZN8MyBufferC1Ei+0x70>
    80001874:	04000613          	li	a2,64
    80001878:	40d606b3          	sub	a3,a2,a3
    8000187c:	00d787b3          	add	a5,a5,a3
    80001880:	0000a697          	auipc	a3,0xa
    80001884:	f0f6b423          	sd	a5,-248(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    80001888:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    8000188c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80001890:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80001894:	00100793          	li	a5,1
    80001898:	0000a717          	auipc	a4,0xa
    8000189c:	eef70423          	sb	a5,-280(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    buffer = (int *)MemoryAllocator::getInstance().memory_alloc(sizeof(int) * cap);
    800018a0:	0004a583          	lw	a1,0(s1)
    800018a4:	00259593          	slli	a1,a1,0x2
    800018a8:	0000a517          	auipc	a0,0xa
    800018ac:	ee050513          	addi	a0,a0,-288 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800018b0:	00003097          	auipc	ra,0x3
    800018b4:	53c080e7          	jalr	1340(ra) # 80004dec <_ZN15MemoryAllocator12memory_allocEm>
    800018b8:	00a4b423          	sd	a0,8(s1)
    MySemaphore::sem_open(&itemAvailable, 0);
    800018bc:	00000593          	li	a1,0
    800018c0:	02048513          	addi	a0,s1,32
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	7e0080e7          	jalr	2016(ra) # 800020a4 <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&spaceAvailable, _cap);
    800018cc:	00090593          	mv	a1,s2
    800018d0:	01848513          	addi	a0,s1,24
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	7d0080e7          	jalr	2000(ra) # 800020a4 <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&mutexHead, 1);
    800018dc:	00100593          	li	a1,1
    800018e0:	02848513          	addi	a0,s1,40
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	7c0080e7          	jalr	1984(ra) # 800020a4 <_ZN11MySemaphore8sem_openEPPS_m>
    MySemaphore::sem_open(&mutexTail, 1);
    800018ec:	00100593          	li	a1,1
    800018f0:	03048513          	addi	a0,s1,48
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	7b0080e7          	jalr	1968(ra) # 800020a4 <_ZN11MySemaphore8sem_openEPPS_m>
}
    800018fc:	01813083          	ld	ra,24(sp)
    80001900:	01013403          	ld	s0,16(sp)
    80001904:	00813483          	ld	s1,8(sp)
    80001908:	00013903          	ld	s2,0(sp)
    8000190c:	02010113          	addi	sp,sp,32
    80001910:	00008067          	ret

0000000080001914 <_ZN8MyBufferD1Ev>:

MyBuffer::~MyBuffer() {
    80001914:	fe010113          	addi	sp,sp,-32
    80001918:	00113c23          	sd	ra,24(sp)
    8000191c:	00813823          	sd	s0,16(sp)
    80001920:	00913423          	sd	s1,8(sp)
    80001924:	02010413          	addi	s0,sp,32
    80001928:	00050493          	mv	s1,a0
    8000192c:	0000a797          	auipc	a5,0xa
    80001930:	e547c783          	lbu	a5,-428(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001934:	04079e63          	bnez	a5,80001990 <_ZN8MyBufferD1Ev+0x7c>
        size_t heapStart = (size_t)HEAP_START_ADDR;
    80001938:	0000a797          	auipc	a5,0xa
    8000193c:	db87b783          	ld	a5,-584(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001940:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    80001944:	0000a717          	auipc	a4,0xa
    80001948:	df473703          	ld	a4,-524(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000194c:	00073703          	ld	a4,0(a4)
    80001950:	fff70713          	addi	a4,a4,-1
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80001954:	40f70733          	sub	a4,a4,a5
    80001958:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    8000195c:	03f7f693          	andi	a3,a5,63
    80001960:	00068663          	beqz	a3,8000196c <_ZN8MyBufferD1Ev+0x58>
    80001964:	04000613          	li	a2,64
    80001968:	40d606b3          	sub	a3,a2,a3
    8000196c:	00d787b3          	add	a5,a5,a3
    80001970:	0000a697          	auipc	a3,0xa
    80001974:	e0f6bc23          	sd	a5,-488(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80001978:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    8000197c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80001980:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80001984:	00100793          	li	a5,1
    80001988:	0000a717          	auipc	a4,0xa
    8000198c:	def70c23          	sb	a5,-520(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    MemoryAllocator::getInstance().memory_free((void*)buffer);
    80001990:	0084b583          	ld	a1,8(s1)
    80001994:	0000a517          	auipc	a0,0xa
    80001998:	df450513          	addi	a0,a0,-524 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    8000199c:	00003097          	auipc	ra,0x3
    800019a0:	524080e7          	jalr	1316(ra) # 80004ec0 <_ZN15MemoryAllocator11memory_freeEPv>
    MySemaphore::sem_close(itemAvailable);
    800019a4:	0204b503          	ld	a0,32(s1)
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	808080e7          	jalr	-2040(ra) # 800021b0 <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(spaceAvailable);
    800019b0:	0184b503          	ld	a0,24(s1)
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	7fc080e7          	jalr	2044(ra) # 800021b0 <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(mutexTail);
    800019bc:	0304b503          	ld	a0,48(s1)
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	7f0080e7          	jalr	2032(ra) # 800021b0 <_ZN11MySemaphore9sem_closeEPS_>
    MySemaphore::sem_close(mutexHead);
    800019c8:	0284b503          	ld	a0,40(s1)
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	7e4080e7          	jalr	2020(ra) # 800021b0 <_ZN11MySemaphore9sem_closeEPS_>
}
    800019d4:	01813083          	ld	ra,24(sp)
    800019d8:	01013403          	ld	s0,16(sp)
    800019dc:	00813483          	ld	s1,8(sp)
    800019e0:	02010113          	addi	sp,sp,32
    800019e4:	00008067          	ret

00000000800019e8 <_ZN8MyBuffer3putEi>:

void MyBuffer::put(int val) {
    800019e8:	fe010113          	addi	sp,sp,-32
    800019ec:	00113c23          	sd	ra,24(sp)
    800019f0:	00813823          	sd	s0,16(sp)
    800019f4:	00913423          	sd	s1,8(sp)
    800019f8:	01213023          	sd	s2,0(sp)
    800019fc:	02010413          	addi	s0,sp,32
    80001a00:	00050493          	mv	s1,a0
    80001a04:	00058913          	mv	s2,a1
    MySemaphore::sem_wait(spaceAvailable);
    80001a08:	01853503          	ld	a0,24(a0)
    80001a0c:	00001097          	auipc	ra,0x1
    80001a10:	8bc080e7          	jalr	-1860(ra) # 800022c8 <_ZN11MySemaphore8sem_waitEPS_>

    MySemaphore::sem_wait(mutexTail);
    80001a14:	0304b503          	ld	a0,48(s1)
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	8b0080e7          	jalr	-1872(ra) # 800022c8 <_ZN11MySemaphore8sem_waitEPS_>
    buffer[tail] = val;
    80001a20:	0084b783          	ld	a5,8(s1)
    80001a24:	0144a703          	lw	a4,20(s1)
    80001a28:	00271713          	slli	a4,a4,0x2
    80001a2c:	00e787b3          	add	a5,a5,a4
    80001a30:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80001a34:	0144a783          	lw	a5,20(s1)
    80001a38:	0017879b          	addiw	a5,a5,1
    80001a3c:	0004a703          	lw	a4,0(s1)
    80001a40:	02e7e7bb          	remw	a5,a5,a4
    80001a44:	00f4aa23          	sw	a5,20(s1)
    MySemaphore::sem_signal(mutexTail);
    80001a48:	0304b503          	ld	a0,48(s1)
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	94c080e7          	jalr	-1716(ra) # 80002398 <_ZN11MySemaphore10sem_signalEPS_>

    MySemaphore::sem_signal(itemAvailable);
    80001a54:	0204b503          	ld	a0,32(s1)
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	940080e7          	jalr	-1728(ra) # 80002398 <_ZN11MySemaphore10sem_signalEPS_>

}
    80001a60:	01813083          	ld	ra,24(sp)
    80001a64:	01013403          	ld	s0,16(sp)
    80001a68:	00813483          	ld	s1,8(sp)
    80001a6c:	00013903          	ld	s2,0(sp)
    80001a70:	02010113          	addi	sp,sp,32
    80001a74:	00008067          	ret

0000000080001a78 <_ZN8MyBuffer3getEv>:

int MyBuffer::get() {
    80001a78:	fe010113          	addi	sp,sp,-32
    80001a7c:	00113c23          	sd	ra,24(sp)
    80001a80:	00813823          	sd	s0,16(sp)
    80001a84:	00913423          	sd	s1,8(sp)
    80001a88:	01213023          	sd	s2,0(sp)
    80001a8c:	02010413          	addi	s0,sp,32
    80001a90:	00050493          	mv	s1,a0
    MySemaphore::sem_wait(itemAvailable);
    80001a94:	02053503          	ld	a0,32(a0)
    80001a98:	00001097          	auipc	ra,0x1
    80001a9c:	830080e7          	jalr	-2000(ra) # 800022c8 <_ZN11MySemaphore8sem_waitEPS_>

    MySemaphore::sem_wait(mutexHead);
    80001aa0:	0284b503          	ld	a0,40(s1)
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	824080e7          	jalr	-2012(ra) # 800022c8 <_ZN11MySemaphore8sem_waitEPS_>

    int ret = buffer[head];
    80001aac:	0084b703          	ld	a4,8(s1)
    80001ab0:	0104a783          	lw	a5,16(s1)
    80001ab4:	00279693          	slli	a3,a5,0x2
    80001ab8:	00d70733          	add	a4,a4,a3
    80001abc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80001ac0:	0017879b          	addiw	a5,a5,1
    80001ac4:	0004a703          	lw	a4,0(s1)
    80001ac8:	02e7e7bb          	remw	a5,a5,a4
    80001acc:	00f4a823          	sw	a5,16(s1)
    MySemaphore::sem_signal(mutexHead);
    80001ad0:	0284b503          	ld	a0,40(s1)
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	8c4080e7          	jalr	-1852(ra) # 80002398 <_ZN11MySemaphore10sem_signalEPS_>

    MySemaphore::sem_signal(spaceAvailable);
    80001adc:	0184b503          	ld	a0,24(s1)
    80001ae0:	00001097          	auipc	ra,0x1
    80001ae4:	8b8080e7          	jalr	-1864(ra) # 80002398 <_ZN11MySemaphore10sem_signalEPS_>

    return ret;
}
    80001ae8:	00090513          	mv	a0,s2
    80001aec:	01813083          	ld	ra,24(sp)
    80001af0:	01013403          	ld	s0,16(sp)
    80001af4:	00813483          	ld	s1,8(sp)
    80001af8:	00013903          	ld	s2,0(sp)
    80001afc:	02010113          	addi	sp,sp,32
    80001b00:	00008067          	ret

0000000080001b04 <_ZN8MyBuffer6getCntEv>:

int MyBuffer::getCnt() {
    80001b04:	fe010113          	addi	sp,sp,-32
    80001b08:	00113c23          	sd	ra,24(sp)
    80001b0c:	00813823          	sd	s0,16(sp)
    80001b10:	00913423          	sd	s1,8(sp)
    80001b14:	01213023          	sd	s2,0(sp)
    80001b18:	02010413          	addi	s0,sp,32
    80001b1c:	00050493          	mv	s1,a0
    int ret;

    MySemaphore::sem_wait(mutexHead);
    80001b20:	02853503          	ld	a0,40(a0)
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	7a4080e7          	jalr	1956(ra) # 800022c8 <_ZN11MySemaphore8sem_waitEPS_>
    MySemaphore::sem_wait(mutexTail);
    80001b2c:	0304b503          	ld	a0,48(s1)
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	798080e7          	jalr	1944(ra) # 800022c8 <_ZN11MySemaphore8sem_waitEPS_>

    if (tail >= head) {
    80001b38:	0144a783          	lw	a5,20(s1)
    80001b3c:	0104a903          	lw	s2,16(s1)
    80001b40:	0327ce63          	blt	a5,s2,80001b7c <_ZN8MyBuffer6getCntEv+0x78>
        ret = tail - head;
    80001b44:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    MySemaphore::sem_signal(mutexTail);
    80001b48:	0304b503          	ld	a0,48(s1)
    80001b4c:	00001097          	auipc	ra,0x1
    80001b50:	84c080e7          	jalr	-1972(ra) # 80002398 <_ZN11MySemaphore10sem_signalEPS_>
    MySemaphore::sem_signal(mutexHead);
    80001b54:	0284b503          	ld	a0,40(s1)
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	840080e7          	jalr	-1984(ra) # 80002398 <_ZN11MySemaphore10sem_signalEPS_>

    return ret;
}
    80001b60:	00090513          	mv	a0,s2
    80001b64:	01813083          	ld	ra,24(sp)
    80001b68:	01013403          	ld	s0,16(sp)
    80001b6c:	00813483          	ld	s1,8(sp)
    80001b70:	00013903          	ld	s2,0(sp)
    80001b74:	02010113          	addi	sp,sp,32
    80001b78:	00008067          	ret
        ret = cap - head + tail;
    80001b7c:	0004a703          	lw	a4,0(s1)
    80001b80:	4127093b          	subw	s2,a4,s2
    80001b84:	00f9093b          	addw	s2,s2,a5
    80001b88:	fc1ff06f          	j	80001b48 <_ZN8MyBuffer6getCntEv+0x44>

0000000080001b8c <_ZN11BuddySystemC1Ev>:
//
// Created by os on 8/12/23.

#include "../h/Buddy.h"

BuddySystem::BuddySystem(){
    80001b8c:	ff010113          	addi	sp,sp,-16
    80001b90:	00813423          	sd	s0,8(sp)
    80001b94:	01010413          	addi	s0,sp,16

}
    80001b98:	00813403          	ld	s0,8(sp)
    80001b9c:	01010113          	addi	sp,sp,16
    80001ba0:	00008067          	ret

0000000080001ba4 <_ZN11BuddySystem13insertInArrayEmm>:
    }
    return position;
}

// vraca na kojem mestu je node ubacen u nizu arr[position]
int BuddySystem::insertInArray(size_t position, size_t addr) {
    80001ba4:	ff010113          	addi	sp,sp,-16
    80001ba8:	00813423          	sd	s0,8(sp)
    80001bac:	01010413          	addi	s0,sp,16
    80001bb0:	00050693          	mv	a3,a0
    MemNode* node = (MemNode*)addr;

    if(!arr[position]){
    80001bb4:	00359793          	slli	a5,a1,0x3
    80001bb8:	00f507b3          	add	a5,a0,a5
    80001bbc:	0007b783          	ld	a5,0(a5)
    80001bc0:	02078263          	beqz	a5,80001be4 <_ZN11BuddySystem13insertInArrayEmm+0x40>
        arr[position] = node;
        return 0;
    }

    int cnt = 0;
    MemNode* prev = nullptr, * curr = arr[position];
    80001bc4:	00000713          	li	a4,0
    int cnt = 0;
    80001bc8:	00000513          	li	a0,0
    while(curr and (size_t)curr < (size_t)node){
    80001bcc:	02078663          	beqz	a5,80001bf8 <_ZN11BuddySystem13insertInArrayEmm+0x54>
    80001bd0:	02c7f463          	bgeu	a5,a2,80001bf8 <_ZN11BuddySystem13insertInArrayEmm+0x54>
        prev = curr;
        curr = curr->next;
        cnt++;
    80001bd4:	0015051b          	addiw	a0,a0,1
        prev = curr;
    80001bd8:	00078713          	mv	a4,a5
        curr = curr->next;
    80001bdc:	0007b783          	ld	a5,0(a5)
    while(curr and (size_t)curr < (size_t)node){
    80001be0:	fedff06f          	j	80001bcc <_ZN11BuddySystem13insertInArrayEmm+0x28>
        arr[position] = node;
    80001be4:	00359593          	slli	a1,a1,0x3
    80001be8:	00b506b3          	add	a3,a0,a1
    80001bec:	00c6b023          	sd	a2,0(a3)
        return 0;
    80001bf0:	00000513          	li	a0,0
    80001bf4:	0100006f          	j	80001c04 <_ZN11BuddySystem13insertInArrayEmm+0x60>
    }
    node->next = curr;
    80001bf8:	00f63023          	sd	a5,0(a2)
    if(prev)prev->next = node;
    80001bfc:	00070a63          	beqz	a4,80001c10 <_ZN11BuddySystem13insertInArrayEmm+0x6c>
    80001c00:	00c73023          	sd	a2,0(a4)
    else arr[position] = node;
    return cnt;
}
    80001c04:	00813403          	ld	s0,8(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret
    else arr[position] = node;
    80001c10:	00359593          	slli	a1,a1,0x3
    80001c14:	00b686b3          	add	a3,a3,a1
    80001c18:	00c6b023          	sd	a2,0(a3)
    80001c1c:	fe9ff06f          	j	80001c04 <_ZN11BuddySystem13insertInArrayEmm+0x60>

0000000080001c20 <_ZN11BuddySystem13splitAndOrderEmm>:
size_t BuddySystem::splitAndOrder(size_t position, size_t required_size) {
    80001c20:	fc010113          	addi	sp,sp,-64
    80001c24:	02113c23          	sd	ra,56(sp)
    80001c28:	02813823          	sd	s0,48(sp)
    80001c2c:	02913423          	sd	s1,40(sp)
    80001c30:	03213023          	sd	s2,32(sp)
    80001c34:	01313c23          	sd	s3,24(sp)
    80001c38:	01413823          	sd	s4,16(sp)
    80001c3c:	01513423          	sd	s5,8(sp)
    80001c40:	04010413          	addi	s0,sp,64
    80001c44:	00050a13          	mv	s4,a0
    80001c48:	00058493          	mv	s1,a1
    80001c4c:	00060a93          	mv	s5,a2
    int insertInArray(size_t position, size_t addr);
    int tryToMerge(MemNode* left, MemNode* right, size_t position);

    size_t static pow(size_t deg){
        size_t tmp = 1;
        for(size_t i = 0; i < deg; i++){
    80001c50:	00000793          	li	a5,0
        size_t tmp = 1;
    80001c54:	00100913          	li	s2,1
        for(size_t i = 0; i < deg; i++){
    80001c58:	0097f863          	bgeu	a5,s1,80001c68 <_ZN11BuddySystem13splitAndOrderEmm+0x48>
            tmp <<= 1;
    80001c5c:	00191913          	slli	s2,s2,0x1
        for(size_t i = 0; i < deg; i++){
    80001c60:	00178793          	addi	a5,a5,1
    80001c64:	ff5ff06f          	j	80001c58 <_ZN11BuddySystem13splitAndOrderEmm+0x38>
    while((val >> 1) >= required_size && (val >> 1) >= BLOCK_SIZE){
    80001c68:	00195913          	srli	s2,s2,0x1
    80001c6c:	07596463          	bltu	s2,s5,80001cd4 <_ZN11BuddySystem13splitAndOrderEmm+0xb4>
    80001c70:	000017b7          	lui	a5,0x1
    80001c74:	06f96063          	bltu	s2,a5,80001cd4 <_ZN11BuddySystem13splitAndOrderEmm+0xb4>
        MemNode* tmp = arr[position];
    80001c78:	00349793          	slli	a5,s1,0x3
    80001c7c:	00fa07b3          	add	a5,s4,a5
    80001c80:	0007b603          	ld	a2,0(a5) # 1000 <_entry-0x7ffff000>
        arr[position] = arr[position]->next;
    80001c84:	00063703          	ld	a4,0(a2)
    80001c88:	00e7b023          	sd	a4,0(a5)
        tmp->next = nullptr;
    80001c8c:	00063023          	sd	zero,0(a2)
        tmp->size >>= 1;
    80001c90:	00863783          	ld	a5,8(a2)
    80001c94:	0017d793          	srli	a5,a5,0x1
    80001c98:	00f63423          	sd	a5,8(a2)
        MemNode* newNode = (MemNode*)((size_t)tmp + tmp->size);
    80001c9c:	00c789b3          	add	s3,a5,a2
        newNode->size = tmp->size;
    80001ca0:	00f9b423          	sd	a5,8(s3)
        newNode->next = nullptr;
    80001ca4:	0009b023          	sd	zero,0(s3)
        position--;
    80001ca8:	fff48493          	addi	s1,s1,-1
        insertInArray(position, (size_t)tmp);
    80001cac:	00048593          	mv	a1,s1
    80001cb0:	000a0513          	mv	a0,s4
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	ef0080e7          	jalr	-272(ra) # 80001ba4 <_ZN11BuddySystem13insertInArrayEmm>
        insertInArray(position, (size_t)newNode);
    80001cbc:	00098613          	mv	a2,s3
    80001cc0:	00048593          	mv	a1,s1
    80001cc4:	000a0513          	mv	a0,s4
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	edc080e7          	jalr	-292(ra) # 80001ba4 <_ZN11BuddySystem13insertInArrayEmm>
    while((val >> 1) >= required_size && (val >> 1) >= BLOCK_SIZE){
    80001cd0:	f99ff06f          	j	80001c68 <_ZN11BuddySystem13splitAndOrderEmm+0x48>
}
    80001cd4:	00048513          	mv	a0,s1
    80001cd8:	03813083          	ld	ra,56(sp)
    80001cdc:	03013403          	ld	s0,48(sp)
    80001ce0:	02813483          	ld	s1,40(sp)
    80001ce4:	02013903          	ld	s2,32(sp)
    80001ce8:	01813983          	ld	s3,24(sp)
    80001cec:	01013a03          	ld	s4,16(sp)
    80001cf0:	00813a83          	ld	s5,8(sp)
    80001cf4:	04010113          	addi	sp,sp,64
    80001cf8:	00008067          	ret

0000000080001cfc <_ZN11BuddySystem10buddyAllocEm>:
void* BuddySystem::buddyAlloc(size_t size) {
    80001cfc:	fe010113          	addi	sp,sp,-32
    80001d00:	00113c23          	sd	ra,24(sp)
    80001d04:	00813823          	sd	s0,16(sp)
    80001d08:	00913423          	sd	s1,8(sp)
    80001d0c:	02010413          	addi	s0,sp,32
    80001d10:	00050493          	mv	s1,a0
    80001d14:	00058713          	mv	a4,a1
    for(size_t i = 0; i < 40; i++){
    80001d18:	00000593          	li	a1,0
    80001d1c:	0080006f          	j	80001d24 <_ZN11BuddySystem10buddyAllocEm+0x28>
    80001d20:	00158593          	addi	a1,a1,1
    80001d24:	02700793          	li	a5,39
    80001d28:	06b7e063          	bltu	a5,a1,80001d88 <_ZN11BuddySystem10buddyAllocEm+0x8c>
        if(arr[i] && arr[i]->size >= size + sizeof(size_t)){
    80001d2c:	00359793          	slli	a5,a1,0x3
    80001d30:	00f487b3          	add	a5,s1,a5
    80001d34:	0007b783          	ld	a5,0(a5)
    80001d38:	fe0784e3          	beqz	a5,80001d20 <_ZN11BuddySystem10buddyAllocEm+0x24>
    80001d3c:	0087b783          	ld	a5,8(a5)
    80001d40:	00870613          	addi	a2,a4,8
    80001d44:	fcc7eee3          	bltu	a5,a2,80001d20 <_ZN11BuddySystem10buddyAllocEm+0x24>
            position = splitAndOrder(i, size + sizeof(size_t));
    80001d48:	00048513          	mv	a0,s1
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	ed4080e7          	jalr	-300(ra) # 80001c20 <_ZN11BuddySystem13splitAndOrderEmm>
    if(position == 50)return 0;
    80001d54:	03200793          	li	a5,50
    80001d58:	04f50a63          	beq	a0,a5,80001dac <_ZN11BuddySystem10buddyAllocEm+0xb0>
    MemNode* node = arr[position];
    80001d5c:	00351793          	slli	a5,a0,0x3
    80001d60:	00f484b3          	add	s1,s1,a5
    80001d64:	0004b683          	ld	a3,0(s1)
    arr[position] = arr[position]->next;
    80001d68:	0006b783          	ld	a5,0(a3)
    80001d6c:	00f4b023          	sd	a5,0(s1)
    80001d70:	00000793          	li	a5,0
        size_t tmp = 1;
    80001d74:	00100713          	li	a4,1
        for(size_t i = 0; i < deg; i++){
    80001d78:	00a7fc63          	bgeu	a5,a0,80001d90 <_ZN11BuddySystem10buddyAllocEm+0x94>
            tmp <<= 1;
    80001d7c:	00171713          	slli	a4,a4,0x1
        for(size_t i = 0; i < deg; i++){
    80001d80:	00178793          	addi	a5,a5,1
    80001d84:	ff5ff06f          	j	80001d78 <_ZN11BuddySystem10buddyAllocEm+0x7c>
    size_t position = 50;
    80001d88:	03200513          	li	a0,50
    80001d8c:	fc9ff06f          	j	80001d54 <_ZN11BuddySystem10buddyAllocEm+0x58>
    *((size_t*)node) = pow(position);
    80001d90:	00e6b023          	sd	a4,0(a3)
    return (void*)((size_t)node + sizeof(size_t));
    80001d94:	00868513          	addi	a0,a3,8
}
    80001d98:	01813083          	ld	ra,24(sp)
    80001d9c:	01013403          	ld	s0,16(sp)
    80001da0:	00813483          	ld	s1,8(sp)
    80001da4:	02010113          	addi	sp,sp,32
    80001da8:	00008067          	ret
    if(position == 50)return 0;
    80001dac:	00000513          	li	a0,0
    80001db0:	fe9ff06f          	j	80001d98 <_ZN11BuddySystem10buddyAllocEm+0x9c>

0000000080001db4 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>:

// vraca -1 ukoliko nije spojeno, ukoliko jeste vraca poziciju na kojoj je element ubacen
int BuddySystem::tryToMerge(BuddySystem::MemNode *left, BuddySystem::MemNode *right, size_t position) {
    if(left && right && ((size_t)left + left->size == (size_t)right) && (((size_t)left - buddyHeapStart) % pow(position) == 0)){
    80001db4:	0a058c63          	beqz	a1,80001e6c <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xb8>
    80001db8:	0a060e63          	beqz	a2,80001e74 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xc0>
    80001dbc:	0085b883          	ld	a7,8(a1)
    80001dc0:	00b887b3          	add	a5,a7,a1
    80001dc4:	0ac79c63          	bne	a5,a2,80001e7c <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xc8>
    80001dc8:	14053703          	ld	a4,320(a0)
    80001dcc:	40e58833          	sub	a6,a1,a4
    80001dd0:	00000793          	li	a5,0
        size_t tmp = 1;
    80001dd4:	00100713          	li	a4,1
        for(size_t i = 0; i < deg; i++){
    80001dd8:	00d7f863          	bgeu	a5,a3,80001de8 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x34>
            tmp <<= 1;
    80001ddc:	00171713          	slli	a4,a4,0x1
        for(size_t i = 0; i < deg; i++){
    80001de0:	00178793          	addi	a5,a5,1
    80001de4:	ff5ff06f          	j	80001dd8 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x24>
    80001de8:	02e87733          	remu	a4,a6,a4
    80001dec:	08071c63          	bnez	a4,80001e84 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xd0>
int BuddySystem::tryToMerge(BuddySystem::MemNode *left, BuddySystem::MemNode *right, size_t position) {
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00113423          	sd	ra,8(sp)
    80001df8:	00813023          	sd	s0,0(sp)
    80001dfc:	01010413          	addi	s0,sp,16
        left->size <<= 1;
    80001e00:	00189893          	slli	a7,a7,0x1
    80001e04:	0115b423          	sd	a7,8(a1)
        MemNode* prev = nullptr;
        for(MemNode* curr = arr[position]; curr != left; curr = curr->next){
    80001e08:	00369793          	slli	a5,a3,0x3
    80001e0c:	00f507b3          	add	a5,a0,a5
    80001e10:	0007b783          	ld	a5,0(a5)
    80001e14:	00b78863          	beq	a5,a1,80001e24 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x70>
            prev = curr;
    80001e18:	00078713          	mv	a4,a5
        for(MemNode* curr = arr[position]; curr != left; curr = curr->next){
    80001e1c:	0007b783          	ld	a5,0(a5)
    80001e20:	ff5ff06f          	j	80001e14 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x60>
        }
        if(prev){
    80001e24:	02070a63          	beqz	a4,80001e58 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0xa4>
            prev->next = right->next;
    80001e28:	00063783          	ld	a5,0(a2)
    80001e2c:	00f73023          	sd	a5,0(a4)
        }else{
            arr[position] = right->next;
        }
        right->next = nullptr;
    80001e30:	00063023          	sd	zero,0(a2)
        left->next = nullptr;
    80001e34:	0005b023          	sd	zero,0(a1)
//        *(size_t*)(left - sizeof(size_t)) = left->size;
        size_t insertPosition = insertInArray(position + 1, (size_t)left);
    80001e38:	00058613          	mv	a2,a1
    80001e3c:	00168593          	addi	a1,a3,1
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	d64080e7          	jalr	-668(ra) # 80001ba4 <_ZN11BuddySystem13insertInArrayEmm>
        // nema svrhu, samo testiranje da ne bi bilo optimizacije
        left = arr[position];
        return (int)insertPosition;
    }
    return -1;
}
    80001e48:	00813083          	ld	ra,8(sp)
    80001e4c:	00013403          	ld	s0,0(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret
            arr[position] = right->next;
    80001e58:	00063703          	ld	a4,0(a2)
    80001e5c:	00369793          	slli	a5,a3,0x3
    80001e60:	00f507b3          	add	a5,a0,a5
    80001e64:	00e7b023          	sd	a4,0(a5)
    80001e68:	fc9ff06f          	j	80001e30 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m+0x7c>
    return -1;
    80001e6c:	fff00513          	li	a0,-1
    80001e70:	00008067          	ret
    80001e74:	fff00513          	li	a0,-1
    80001e78:	00008067          	ret
    80001e7c:	fff00513          	li	a0,-1
    80001e80:	00008067          	ret
    80001e84:	fff00513          	li	a0,-1
}
    80001e88:	00008067          	ret

0000000080001e8c <_ZN11BuddySystem9buddyFreeEm>:
    size_t size = *(size_t*)(addr - sizeof(size_t));
    80001e8c:	ff85b683          	ld	a3,-8(a1)
    if((void*)addr == nullptr || size == 0)return;
    80001e90:	12058863          	beqz	a1,80001fc0 <_ZN11BuddySystem9buddyFreeEm+0x134>
void BuddySystem::buddyFree(size_t addr) {
    80001e94:	fd010113          	addi	sp,sp,-48
    80001e98:	02113423          	sd	ra,40(sp)
    80001e9c:	02813023          	sd	s0,32(sp)
    80001ea0:	00913c23          	sd	s1,24(sp)
    80001ea4:	01213823          	sd	s2,16(sp)
    80001ea8:	01313423          	sd	s3,8(sp)
    80001eac:	01413023          	sd	s4,0(sp)
    80001eb0:	03010413          	addi	s0,sp,48
    80001eb4:	00050a13          	mv	s4,a0
    80001eb8:	ff858613          	addi	a2,a1,-8
    if((void*)addr == nullptr || size == 0)return;
    80001ebc:	0e068263          	beqz	a3,80001fa0 <_ZN11BuddySystem9buddyFreeEm+0x114>
    80001ec0:	00068793          	mv	a5,a3
        }
        return tmp;
    }

    size_t static log(size_t size){
        size_t deg = 0;
    80001ec4:	00000993          	li	s3,0
        while(size > 1){
    80001ec8:	00100713          	li	a4,1
    80001ecc:	00f77863          	bgeu	a4,a5,80001edc <_ZN11BuddySystem9buddyFreeEm+0x50>
            size >>= 1;
    80001ed0:	0017d793          	srli	a5,a5,0x1
            deg++;
    80001ed4:	00198993          	addi	s3,s3,1
        while(size > 1){
    80001ed8:	ff1ff06f          	j	80001ec8 <_ZN11BuddySystem9buddyFreeEm+0x3c>
    newNode->next = nullptr;
    80001edc:	fe05bc23          	sd	zero,-8(a1)
    newNode->size = size;
    80001ee0:	00d63423          	sd	a3,8(a2)
    int merged = (int)insertInArray(position, (size_t)newNode);
    80001ee4:	00098593          	mv	a1,s3
    80001ee8:	000a0513          	mv	a0,s4
    80001eec:	00000097          	auipc	ra,0x0
    80001ef0:	cb8080e7          	jalr	-840(ra) # 80001ba4 <_ZN11BuddySystem13insertInArrayEmm>
    80001ef4:	07c0006f          	j	80001f70 <_ZN11BuddySystem9buddyFreeEm+0xe4>
        for(int i = 0; i < merged; i++){
    80001ef8:	0017071b          	addiw	a4,a4,1
            prev = curr;
    80001efc:	00048593          	mv	a1,s1
            curr = curr->next;
    80001f00:	00078493          	mv	s1,a5
        for(int i = 0; i < merged; i++){
    80001f04:	00a75a63          	bge	a4,a0,80001f18 <_ZN11BuddySystem9buddyFreeEm+0x8c>
            curr = curr->next;
    80001f08:	0004b783          	ld	a5,0(s1)
            if(curr)next = curr->next;
    80001f0c:	fe0786e3          	beqz	a5,80001ef8 <_ZN11BuddySystem9buddyFreeEm+0x6c>
    80001f10:	0007b903          	ld	s2,0(a5)
    80001f14:	fe5ff06f          	j	80001ef8 <_ZN11BuddySystem9buddyFreeEm+0x6c>
        if(merged == 0 && curr){
    80001f18:	00051663          	bnez	a0,80001f24 <_ZN11BuddySystem9buddyFreeEm+0x98>
    80001f1c:	00048463          	beqz	s1,80001f24 <_ZN11BuddySystem9buddyFreeEm+0x98>
            next = curr->next;
    80001f20:	0004b903          	ld	s2,0(s1)
        if(!prev && !next){
    80001f24:	06058863          	beqz	a1,80001f94 <_ZN11BuddySystem9buddyFreeEm+0x108>
        if(prev){
    80001f28:	00058c63          	beqz	a1,80001f40 <_ZN11BuddySystem9buddyFreeEm+0xb4>
            merged = tryToMerge(prev, curr, position);
    80001f2c:	00098693          	mv	a3,s3
    80001f30:	00048613          	mv	a2,s1
    80001f34:	000a0513          	mv	a0,s4
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	e7c080e7          	jalr	-388(ra) # 80001db4 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>
        if((merged != -1) && next){
    80001f40:	fff00793          	li	a5,-1
    80001f44:	02f50063          	beq	a0,a5,80001f64 <_ZN11BuddySystem9buddyFreeEm+0xd8>
    80001f48:	00090e63          	beqz	s2,80001f64 <_ZN11BuddySystem9buddyFreeEm+0xd8>
            merged = tryToMerge(curr, next, position);
    80001f4c:	00098693          	mv	a3,s3
    80001f50:	00090613          	mv	a2,s2
    80001f54:	00048593          	mv	a1,s1
    80001f58:	000a0513          	mv	a0,s4
    80001f5c:	00000097          	auipc	ra,0x0
    80001f60:	e58080e7          	jalr	-424(ra) # 80001db4 <_ZN11BuddySystem10tryToMergeEPNS_7MemNodeES1_m>
        if(merged != -1)position++;
    80001f64:	fff00793          	li	a5,-1
    80001f68:	00f50463          	beq	a0,a5,80001f70 <_ZN11BuddySystem9buddyFreeEm+0xe4>
    80001f6c:	00198993          	addi	s3,s3,1
    while(merged != -1){
    80001f70:	fff00793          	li	a5,-1
    80001f74:	02f50663          	beq	a0,a5,80001fa0 <_ZN11BuddySystem9buddyFreeEm+0x114>
        MemNode* curr = arr[position], *prev = nullptr, *next = nullptr;
    80001f78:	00399793          	slli	a5,s3,0x3
    80001f7c:	00fa07b3          	add	a5,s4,a5
    80001f80:	0007b483          	ld	s1,0(a5)
        for(int i = 0; i < merged; i++){
    80001f84:	00000713          	li	a4,0
        MemNode* curr = arr[position], *prev = nullptr, *next = nullptr;
    80001f88:	00000913          	li	s2,0
    80001f8c:	00000593          	li	a1,0
    80001f90:	f75ff06f          	j	80001f04 <_ZN11BuddySystem9buddyFreeEm+0x78>
        if(!prev && !next){
    80001f94:	f8091ae3          	bnez	s2,80001f28 <_ZN11BuddySystem9buddyFreeEm+0x9c>
            merged = -1;
    80001f98:	fff00513          	li	a0,-1
    80001f9c:	f8dff06f          	j	80001f28 <_ZN11BuddySystem9buddyFreeEm+0x9c>
}
    80001fa0:	02813083          	ld	ra,40(sp)
    80001fa4:	02013403          	ld	s0,32(sp)
    80001fa8:	01813483          	ld	s1,24(sp)
    80001fac:	01013903          	ld	s2,16(sp)
    80001fb0:	00813983          	ld	s3,8(sp)
    80001fb4:	00013a03          	ld	s4,0(sp)
    80001fb8:	03010113          	addi	sp,sp,48
    80001fbc:	00008067          	ret
    80001fc0:	00008067          	ret

0000000080001fc4 <_ZN11BuddySystem9initBuddyEv>:

void BuddySystem::initBuddy() {
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00813423          	sd	s0,8(sp)
    80001fcc:	01010413          	addi	s0,sp,16
    buddyHeapEnd = buddyHeapStart + buddyNumOfBlocks * BLOCK_SIZE;
    80001fd0:	14053603          	ld	a2,320(a0)
    80001fd4:	15053783          	ld	a5,336(a0)
    80001fd8:	00c79793          	slli	a5,a5,0xc
    80001fdc:	00f60633          	add	a2,a2,a5
    80001fe0:	14c53423          	sd	a2,328(a0)
//    buddyHeapEnd = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - 1 - (size_t)HEAP_START_ADDR) / 8;
    size_t deg = 0, size = 1, realSize = buddyHeapEnd - (size_t)HEAP_START_ADDR, heapStart = (size_t)HEAP_START_ADDR;
    80001fe4:	00009797          	auipc	a5,0x9
    80001fe8:	70c7b783          	ld	a5,1804(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001fec:	0007b683          	ld	a3,0(a5)
    80001ff0:	40d60633          	sub	a2,a2,a3
    80001ff4:	00100793          	li	a5,1
    80001ff8:	00000713          	li	a4,0

    while(size <= realSize){
    80001ffc:	00f66863          	bltu	a2,a5,8000200c <_ZN11BuddySystem9initBuddyEv+0x48>
        deg++;
    80002000:	00170713          	addi	a4,a4,1
        size <<= 1;
    80002004:	00179793          	slli	a5,a5,0x1
    while(size <= realSize){
    80002008:	ff5ff06f          	j	80001ffc <_ZN11BuddySystem9initBuddyEv+0x38>
    }
    size >>= 1;
    8000200c:	0017d793          	srli	a5,a5,0x1
    deg--;
    80002010:	fff70713          	addi	a4,a4,-1
        size_t deg = 0;
    80002014:	00000813          	li	a6,0
    80002018:	000015b7          	lui	a1,0x1
        while(size > 1){
    8000201c:	00100893          	li	a7,1
    80002020:	00b8fc63          	bgeu	a7,a1,80002038 <_ZN11BuddySystem9initBuddyEv+0x74>
            size >>= 1;
    80002024:	0015d593          	srli	a1,a1,0x1
            deg++;
    80002028:	00180813          	addi	a6,a6,1
        while(size > 1){
    8000202c:	ff1ff06f          	j	8000201c <_ZN11BuddySystem9initBuddyEv+0x58>
    int cnt = 0;
    size_t boundary = log(BLOCK_SIZE);
    while(heapStart < buddyHeapEnd && size >= boundary) {
        cnt++;
        if(realSize < size){
            deg--;
    80002030:	fff70713          	addi	a4,a4,-1
            size >>=1;
    80002034:	0017d793          	srli	a5,a5,0x1
    while(heapStart < buddyHeapEnd && size >= boundary) {
    80002038:	14853583          	ld	a1,328(a0)
    8000203c:	02b6fa63          	bgeu	a3,a1,80002070 <_ZN11BuddySystem9initBuddyEv+0xac>
    80002040:	0307e863          	bltu	a5,a6,80002070 <_ZN11BuddySystem9initBuddyEv+0xac>
        if(realSize < size){
    80002044:	fef666e3          	bltu	a2,a5,80002030 <_ZN11BuddySystem9initBuddyEv+0x6c>
            continue;
        }

        MemNode *newNode = (MemNode *) heapStart;
        newNode->next = nullptr;
    80002048:	0006b023          	sd	zero,0(a3)
        newNode->size = size;
    8000204c:	00f6b423          	sd	a5,8(a3)
        arr[deg] = newNode;
    80002050:	00371593          	slli	a1,a4,0x3
    80002054:	00b505b3          	add	a1,a0,a1
    80002058:	00d5b023          	sd	a3,0(a1) # 1000 <_entry-0x7ffff000>

        realSize -= size;
    8000205c:	40f60633          	sub	a2,a2,a5
        heapStart += size;
    80002060:	00f686b3          	add	a3,a3,a5
        deg--;
    80002064:	fff70713          	addi	a4,a4,-1
        size >>= 1;
    80002068:	0017d793          	srli	a5,a5,0x1
    8000206c:	fcdff06f          	j	80002038 <_ZN11BuddySystem9initBuddyEv+0x74>
    }
};
    80002070:	00813403          	ld	s0,8(sp)
    80002074:	01010113          	addi	sp,sp,16
    80002078:	00008067          	ret

000000008000207c <_ZN11MySemaphoreC1Em>:
    if( id->get_val() <= 0)id->unblock();
    if(!id->get_indicator())return 0;
    else return -1;
}

MySemaphore::MySemaphore(uint64 init) {
    8000207c:	ff010113          	addi	sp,sp,-16
    80002080:	00813423          	sd	s0,8(sp)
    80002084:	01010413          	addi	s0,sp,16
    val = init;
    80002088:	00b52023          	sw	a1,0(a0)
    head = tail = nullptr;
    8000208c:	00053823          	sd	zero,16(a0)
    80002090:	00053423          	sd	zero,8(a0)
    indicator = false;
    80002094:	00050223          	sb	zero,4(a0)
}
    80002098:	00813403          	ld	s0,8(sp)
    8000209c:	01010113          	addi	sp,sp,16
    800020a0:	00008067          	ret

00000000800020a4 <_ZN11MySemaphore8sem_openEPPS_m>:
int MySemaphore::sem_open(MySemaphore **handle, uint64 init) {
    800020a4:	fd010113          	addi	sp,sp,-48
    800020a8:	02113423          	sd	ra,40(sp)
    800020ac:	02813023          	sd	s0,32(sp)
    800020b0:	00913c23          	sd	s1,24(sp)
    800020b4:	01213823          	sd	s2,16(sp)
    800020b8:	01313423          	sd	s3,8(sp)
    800020bc:	03010413          	addi	s0,sp,48
    800020c0:	00050493          	mv	s1,a0
    800020c4:	00058993          	mv	s3,a1
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    800020c8:	00009797          	auipc	a5,0x9
    800020cc:	6b87c783          	lbu	a5,1720(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800020d0:	04079e63          	bnez	a5,8000212c <_ZN11MySemaphore8sem_openEPPS_m+0x88>

    FreeMem* fmem_head = nullptr;

    MemoryAllocator(){

        size_t heapStart = (size_t)HEAP_START_ADDR;
    800020d4:	00009797          	auipc	a5,0x9
    800020d8:	61c7b783          	ld	a5,1564(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800020dc:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    800020e0:	00009717          	auipc	a4,0x9
    800020e4:	65873703          	ld	a4,1624(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    800020e8:	00073703          	ld	a4,0(a4)
    800020ec:	fff70713          	addi	a4,a4,-1

        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    800020f0:	40f70733          	sub	a4,a4,a5
    800020f4:	00675713          	srli	a4,a4,0x6

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800020f8:	03f7f693          	andi	a3,a5,63
    800020fc:	00068663          	beqz	a3,80002108 <_ZN11MySemaphore8sem_openEPPS_m+0x64>
    80002100:	04000613          	li	a2,64
    80002104:	40d606b3          	sub	a3,a2,a3
    80002108:	00d787b3          	add	a5,a5,a3
    8000210c:	00009697          	auipc	a3,0x9
    80002110:	66f6be23          	sd	a5,1660(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    80002114:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002118:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    8000211c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002120:	00100793          	li	a5,1
    80002124:	00009717          	auipc	a4,0x9
    80002128:	64f70e23          	sb	a5,1628(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    void set_val(int v){ val = v; }

    // operatori
    void *operator new(uint64 n){
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    8000212c:	00100593          	li	a1,1
    80002130:	00009517          	auipc	a0,0x9
    80002134:	65850513          	addi	a0,a0,1624 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002138:	00003097          	auipc	ra,0x3
    8000213c:	cb4080e7          	jalr	-844(ra) # 80004dec <_ZN15MemoryAllocator12memory_allocEm>
    80002140:	00050913          	mv	s2,a0
    *handle = new MySemaphore(init);
    80002144:	00098593          	mv	a1,s3
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	f34080e7          	jalr	-204(ra) # 8000207c <_ZN11MySemaphoreC1Em>
    80002150:	0124b023          	sd	s2,0(s1)
}
    80002154:	00000513          	li	a0,0
    80002158:	02813083          	ld	ra,40(sp)
    8000215c:	02013403          	ld	s0,32(sp)
    80002160:	01813483          	ld	s1,24(sp)
    80002164:	01013903          	ld	s2,16(sp)
    80002168:	00813983          	ld	s3,8(sp)
    8000216c:	03010113          	addi	sp,sp,48
    80002170:	00008067          	ret

0000000080002174 <_ZN11MySemaphore16get_from_blockedEv>:

TCB* MySemaphore::get_from_blocked() {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00813423          	sd	s0,8(sp)
    8000217c:	01010413          	addi	s0,sp,16
    80002180:	00050793          	mv	a5,a0
    if(head){
    80002184:	00853503          	ld	a0,8(a0)
    80002188:	00050a63          	beqz	a0,8000219c <_ZN11MySemaphore16get_from_blockedEv+0x28>

    TCB* get_next_sleep()const{ return next_sleep; }

    void set_next_blocked(TCB* nextThread){ next_blocked = nextThread; }

    TCB* get_next_blocked()const{ return next_blocked; }
    8000218c:	04053703          	ld	a4,64(a0)
        TCB* tmp = head;
        head = head->get_next_blocked();
    80002190:	00e7b423          	sd	a4,8(a5)
        if(!head)tail = nullptr;
    80002194:	00070a63          	beqz	a4,800021a8 <_ZN11MySemaphore16get_from_blockedEv+0x34>
    void set_next_blocked(TCB* nextThread){ next_blocked = nextThread; }
    80002198:	04053023          	sd	zero,64(a0)
        tmp->set_next_blocked(nullptr);
        return tmp;
    }
    return nullptr;
}
    8000219c:	00813403          	ld	s0,8(sp)
    800021a0:	01010113          	addi	sp,sp,16
    800021a4:	00008067          	ret
        if(!head)tail = nullptr;
    800021a8:	0007b823          	sd	zero,16(a5)
    800021ac:	fedff06f          	j	80002198 <_ZN11MySemaphore16get_from_blockedEv+0x24>

00000000800021b0 <_ZN11MySemaphore9sem_closeEPS_>:
int MySemaphore::sem_close(MySemaphore* handle){
    800021b0:	fe010113          	addi	sp,sp,-32
    800021b4:	00113c23          	sd	ra,24(sp)
    800021b8:	00813823          	sd	s0,16(sp)
    800021bc:	00913423          	sd	s1,8(sp)
    800021c0:	01213023          	sd	s2,0(sp)
    800021c4:	02010413          	addi	s0,sp,32
    800021c8:	00050913          	mv	s2,a0
    TCB* tmp = handle->head;
    800021cc:	00853483          	ld	s1,8(a0)
    800021d0:	0180006f          	j	800021e8 <_ZN11MySemaphore9sem_closeEPS_+0x38>
        if(tmp)Scheduler::getInstance().put(tmp);
    800021d4:	00048593          	mv	a1,s1
    800021d8:	00009517          	auipc	a0,0x9
    800021dc:	5c050513          	addi	a0,a0,1472 # 8000b798 <_ZZN9Scheduler11getInstanceEvE8instance>
    800021e0:	00003097          	auipc	ra,0x3
    800021e4:	bac080e7          	jalr	-1108(ra) # 80004d8c <_ZN9Scheduler3putEP3TCB>
    while(tmp){
    800021e8:	04048663          	beqz	s1,80002234 <_ZN11MySemaphore9sem_closeEPS_+0x84>
        tmp = handle->get_from_blocked();
    800021ec:	00090513          	mv	a0,s2
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	f84080e7          	jalr	-124(ra) # 80002174 <_ZN11MySemaphore16get_from_blockedEv>
    800021f8:	00050493          	mv	s1,a0
        if(tmp)Scheduler::getInstance().put(tmp);
    800021fc:	fe0506e3          	beqz	a0,800021e8 <_ZN11MySemaphore9sem_closeEPS_+0x38>

class Scheduler{
public:

    static Scheduler& getInstance(){
        static Scheduler instance;
    80002200:	00009797          	auipc	a5,0x9
    80002204:	5907c783          	lbu	a5,1424(a5) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80002208:	fc0796e3          	bnez	a5,800021d4 <_ZN11MySemaphore9sem_closeEPS_+0x24>
//    static void printScheduler();

private:

    Scheduler(){
        head = nullptr;
    8000220c:	00009797          	auipc	a5,0x9
    80002210:	5047b783          	ld	a5,1284(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002214:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80002218:	00009797          	auipc	a5,0x9
    8000221c:	4d07b783          	ld	a5,1232(a5) # 8000b6e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002220:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80002224:	00100793          	li	a5,1
    80002228:	00009717          	auipc	a4,0x9
    8000222c:	56f70423          	sb	a5,1384(a4) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80002230:	fa5ff06f          	j	800021d4 <_ZN11MySemaphore9sem_closeEPS_+0x24>
    void set_indicator(bool v){ indicator = v; }
    80002234:	00100793          	li	a5,1
    80002238:	00f90223          	sb	a5,4(s2)
}
    8000223c:	00000513          	li	a0,0
    80002240:	01813083          	ld	ra,24(sp)
    80002244:	01013403          	ld	s0,16(sp)
    80002248:	00813483          	ld	s1,8(sp)
    8000224c:	00013903          	ld	s2,0(sp)
    80002250:	02010113          	addi	sp,sp,32
    80002254:	00008067          	ret

0000000080002258 <_ZN11MySemaphore14put_in_blockedEP3TCB>:

void MySemaphore::put_in_blocked(TCB *tcb) {
    80002258:	ff010113          	addi	sp,sp,-16
    8000225c:	00813423          	sd	s0,8(sp)
    80002260:	01010413          	addi	s0,sp,16
    if(!head)head = tcb;
    80002264:	00853783          	ld	a5,8(a0)
    80002268:	00078e63          	beqz	a5,80002284 <_ZN11MySemaphore14put_in_blockedEP3TCB+0x2c>
    else tail->set_next_blocked(tcb);
    8000226c:	01053783          	ld	a5,16(a0)
    80002270:	04b7b023          	sd	a1,64(a5)
    tail = tcb;
    80002274:	00b53823          	sd	a1,16(a0)
}
    80002278:	00813403          	ld	s0,8(sp)
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00008067          	ret
    if(!head)head = tcb;
    80002284:	00b53423          	sd	a1,8(a0)
    80002288:	fedff06f          	j	80002274 <_ZN11MySemaphore14put_in_blockedEP3TCB+0x1c>

000000008000228c <_ZN11MySemaphore5blockEv>:

void MySemaphore::block() {
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00113423          	sd	ra,8(sp)
    80002294:	00813023          	sd	s0,0(sp)
    80002298:	01010413          	addi	s0,sp,16
    TCB* old = TCB::running;
    put_in_blocked(old);
    8000229c:	00009797          	auipc	a5,0x9
    800022a0:	4947b783          	ld	a5,1172(a5) # 8000b730 <_GLOBAL_OFFSET_TABLE_+0x60>
    800022a4:	0007b583          	ld	a1,0(a5)
    800022a8:	00000097          	auipc	ra,0x0
    800022ac:	fb0080e7          	jalr	-80(ra) # 80002258 <_ZN11MySemaphore14put_in_blockedEP3TCB>
    TCB::yield();
    800022b0:	00003097          	auipc	ra,0x3
    800022b4:	978080e7          	jalr	-1672(ra) # 80004c28 <_ZN3TCB5yieldEv>
}
    800022b8:	00813083          	ld	ra,8(sp)
    800022bc:	00013403          	ld	s0,0(sp)
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret

00000000800022c8 <_ZN11MySemaphore8sem_waitEPS_>:
int MySemaphore::sem_wait(MySemaphore *id) {
    800022c8:	fe010113          	addi	sp,sp,-32
    800022cc:	00113c23          	sd	ra,24(sp)
    800022d0:	00813823          	sd	s0,16(sp)
    800022d4:	00913423          	sd	s1,8(sp)
    800022d8:	02010413          	addi	s0,sp,32
    800022dc:	00050493          	mv	s1,a0
    int get_val()const{ return val; }
    800022e0:	00052783          	lw	a5,0(a0)
    id->set_val(id->get_val() - 1);
    800022e4:	fff7879b          	addiw	a5,a5,-1
    void set_val(int v){ val = v; }
    800022e8:	00f52023          	sw	a5,0(a0)
    if( id->get_val() < 0)id->block();
    800022ec:	02079713          	slli	a4,a5,0x20
    800022f0:	02074263          	bltz	a4,80002314 <_ZN11MySemaphore8sem_waitEPS_+0x4c>
    bool get_indicator()const{ return indicator; }
    800022f4:	0044c783          	lbu	a5,4(s1)
    if(!id->get_indicator())return 0;
    800022f8:	02079463          	bnez	a5,80002320 <_ZN11MySemaphore8sem_waitEPS_+0x58>
    800022fc:	00000513          	li	a0,0
}
    80002300:	01813083          	ld	ra,24(sp)
    80002304:	01013403          	ld	s0,16(sp)
    80002308:	00813483          	ld	s1,8(sp)
    8000230c:	02010113          	addi	sp,sp,32
    80002310:	00008067          	ret
    if( id->get_val() < 0)id->block();
    80002314:	00000097          	auipc	ra,0x0
    80002318:	f78080e7          	jalr	-136(ra) # 8000228c <_ZN11MySemaphore5blockEv>
    8000231c:	fd9ff06f          	j	800022f4 <_ZN11MySemaphore8sem_waitEPS_+0x2c>
    else return -1;
    80002320:	fff00513          	li	a0,-1
    80002324:	fddff06f          	j	80002300 <_ZN11MySemaphore8sem_waitEPS_+0x38>

0000000080002328 <_ZN11MySemaphore7unblockEv>:

void MySemaphore::unblock() {
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00113423          	sd	ra,8(sp)
    80002330:	00813023          	sd	s0,0(sp)
    80002334:	01010413          	addi	s0,sp,16
    TCB* tmp = get_from_blocked();
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	e3c080e7          	jalr	-452(ra) # 80002174 <_ZN11MySemaphore16get_from_blockedEv>
    if(tmp)Scheduler::getInstance().put(tmp);
    80002340:	04050463          	beqz	a0,80002388 <_ZN11MySemaphore7unblockEv+0x60>
    80002344:	00050593          	mv	a1,a0
    80002348:	00009797          	auipc	a5,0x9
    8000234c:	4487c783          	lbu	a5,1096(a5) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80002350:	02079463          	bnez	a5,80002378 <_ZN11MySemaphore7unblockEv+0x50>
        head = nullptr;
    80002354:	00009797          	auipc	a5,0x9
    80002358:	3bc7b783          	ld	a5,956(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000235c:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80002360:	00009797          	auipc	a5,0x9
    80002364:	3887b783          	ld	a5,904(a5) # 8000b6e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002368:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    8000236c:	00100793          	li	a5,1
    80002370:	00009717          	auipc	a4,0x9
    80002374:	42f70023          	sb	a5,1056(a4) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80002378:	00009517          	auipc	a0,0x9
    8000237c:	42050513          	addi	a0,a0,1056 # 8000b798 <_ZZN9Scheduler11getInstanceEvE8instance>
    80002380:	00003097          	auipc	ra,0x3
    80002384:	a0c080e7          	jalr	-1524(ra) # 80004d8c <_ZN9Scheduler3putEP3TCB>
}
    80002388:	00813083          	ld	ra,8(sp)
    8000238c:	00013403          	ld	s0,0(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <_ZN11MySemaphore10sem_signalEPS_>:
int MySemaphore::sem_signal(MySemaphore *id) {
    80002398:	fe010113          	addi	sp,sp,-32
    8000239c:	00113c23          	sd	ra,24(sp)
    800023a0:	00813823          	sd	s0,16(sp)
    800023a4:	00913423          	sd	s1,8(sp)
    800023a8:	02010413          	addi	s0,sp,32
    800023ac:	00050493          	mv	s1,a0
    int get_val()const{ return val; }
    800023b0:	00052783          	lw	a5,0(a0)
    id->set_val(id->get_val() + 1);
    800023b4:	0017879b          	addiw	a5,a5,1
    800023b8:	0007871b          	sext.w	a4,a5
    void set_val(int v){ val = v; }
    800023bc:	00f52023          	sw	a5,0(a0)
    if( id->get_val() <= 0)id->unblock();
    800023c0:	02e05263          	blez	a4,800023e4 <_ZN11MySemaphore10sem_signalEPS_+0x4c>
    bool get_indicator()const{ return indicator; }
    800023c4:	0044c783          	lbu	a5,4(s1)
    if(!id->get_indicator())return 0;
    800023c8:	02079463          	bnez	a5,800023f0 <_ZN11MySemaphore10sem_signalEPS_+0x58>
    800023cc:	00000513          	li	a0,0
}
    800023d0:	01813083          	ld	ra,24(sp)
    800023d4:	01013403          	ld	s0,16(sp)
    800023d8:	00813483          	ld	s1,8(sp)
    800023dc:	02010113          	addi	sp,sp,32
    800023e0:	00008067          	ret
    if( id->get_val() <= 0)id->unblock();
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	f44080e7          	jalr	-188(ra) # 80002328 <_ZN11MySemaphore7unblockEv>
    800023ec:	fd9ff06f          	j	800023c4 <_ZN11MySemaphore10sem_signalEPS_+0x2c>
    else return -1;
    800023f0:	fff00513          	li	a0,-1
    800023f4:	fddff06f          	j	800023d0 <_ZN11MySemaphore10sem_signalEPS_+0x38>

00000000800023f8 <_ZN14periodicThread3putEP3TCB>:
#include "../h/TCB.hpp"

TCB* periodicThread::head = nullptr;
TCB* periodicThread::tail = nullptr;

void periodicThread::put(TCB *thread) {
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00813423          	sd	s0,8(sp)
    80002400:	01010413          	addi	s0,sp,16
    if(!head)head = thread;
    80002404:	00009797          	auipc	a5,0x9
    80002408:	39c7b783          	ld	a5,924(a5) # 8000b7a0 <_ZN14periodicThread4headE>
    8000240c:	02078263          	beqz	a5,80002430 <_ZN14periodicThread3putEP3TCB+0x38>
    else tail->set_next_period(thread); // tail->next_period = thread;
    80002410:	00009797          	auipc	a5,0x9
    80002414:	3987b783          	ld	a5,920(a5) # 8000b7a8 <_ZN14periodicThread4tailE>
    void set_periodic(bool b){
        periodic = b;
        periodicThread::getInstance().put(this);
    }

    void set_next_period(TCB* tcb){ next_period = tcb; }
    80002418:	06b7b423          	sd	a1,104(a5)
    tail = thread;
    8000241c:	00009797          	auipc	a5,0x9
    80002420:	38b7b623          	sd	a1,908(a5) # 8000b7a8 <_ZN14periodicThread4tailE>
}
    80002424:	00813403          	ld	s0,8(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret
    if(!head)head = thread;
    80002430:	00009797          	auipc	a5,0x9
    80002434:	36b7b823          	sd	a1,880(a5) # 8000b7a0 <_ZN14periodicThread4headE>
    80002438:	fe5ff06f          	j	8000241c <_ZN14periodicThread3putEP3TCB+0x24>

000000008000243c <_ZN14periodicThread3getEv>:

TCB *periodicThread::get() {
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00813423          	sd	s0,8(sp)
    80002444:	01010413          	addi	s0,sp,16
    if(!head)return nullptr;
    80002448:	00009517          	auipc	a0,0x9
    8000244c:	35853503          	ld	a0,856(a0) # 8000b7a0 <_ZN14periodicThread4headE>
    80002450:	00050c63          	beqz	a0,80002468 <_ZN14periodicThread3getEv+0x2c>

    TCB* get_next_period()const{return next_period;}
    80002454:	06853783          	ld	a5,104(a0)
    TCB* tmp = head;
    head = head->get_next_period(); // head = head->next_period
    80002458:	00009717          	auipc	a4,0x9
    8000245c:	34f73423          	sd	a5,840(a4) # 8000b7a0 <_ZN14periodicThread4headE>
    void set_next_period(TCB* tcb){ next_period = tcb; }
    80002460:	06053423          	sd	zero,104(a0)
    tmp->set_next_period(nullptr);
    if(!head)tail = nullptr;
    80002464:	00078863          	beqz	a5,80002474 <_ZN14periodicThread3getEv+0x38>
    return tmp;
}
    80002468:	00813403          	ld	s0,8(sp)
    8000246c:	01010113          	addi	sp,sp,16
    80002470:	00008067          	ret
    if(!head)tail = nullptr;
    80002474:	00009797          	auipc	a5,0x9
    80002478:	3207ba23          	sd	zero,820(a5) # 8000b7a8 <_ZN14periodicThread4tailE>
    8000247c:	fedff06f          	j	80002468 <_ZN14periodicThread3getEv+0x2c>

0000000080002480 <_Z10size_startPKc>:
//
#include "../h/String.h"
#include "../test/printing.hpp"

// does name start with size-, 1 if true, 0 if not
bool size_start(const char *name){
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00813423          	sd	s0,8(sp)
    80002488:	01010413          	addi	s0,sp,16
    // Check if the input string starts with "size-"
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    8000248c:	00054703          	lbu	a4,0(a0)
    80002490:	07300793          	li	a5,115
    80002494:	00f70a63          	beq	a4,a5,800024a8 <_Z10size_startPKc+0x28>
        return true;
    }
    return false;
    80002498:	00000513          	li	a0,0
}
    8000249c:	00813403          	ld	s0,8(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    800024a8:	00154703          	lbu	a4,1(a0)
    800024ac:	06900793          	li	a5,105
    800024b0:	00f70663          	beq	a4,a5,800024bc <_Z10size_startPKc+0x3c>
    return false;
    800024b4:	00000513          	li	a0,0
    800024b8:	fe5ff06f          	j	8000249c <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    800024bc:	00254703          	lbu	a4,2(a0)
    800024c0:	07a00793          	li	a5,122
    800024c4:	00f70663          	beq	a4,a5,800024d0 <_Z10size_startPKc+0x50>
    return false;
    800024c8:	00000513          	li	a0,0
    800024cc:	fd1ff06f          	j	8000249c <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    800024d0:	00354703          	lbu	a4,3(a0)
    800024d4:	06500793          	li	a5,101
    800024d8:	00f70663          	beq	a4,a5,800024e4 <_Z10size_startPKc+0x64>
    return false;
    800024dc:	00000513          	li	a0,0
    800024e0:	fbdff06f          	j	8000249c <_Z10size_startPKc+0x1c>
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
    800024e4:	00454703          	lbu	a4,4(a0)
    800024e8:	02d00793          	li	a5,45
    800024ec:	00f70663          	beq	a4,a5,800024f8 <_Z10size_startPKc+0x78>
    return false;
    800024f0:	00000513          	li	a0,0
    800024f4:	fa9ff06f          	j	8000249c <_Z10size_startPKc+0x1c>
        return true;
    800024f8:	00100513          	li	a0,1
    800024fc:	fa1ff06f          	j	8000249c <_Z10size_startPKc+0x1c>

0000000080002500 <_Z14get_int_lengthi>:

int get_int_length(int number) {
    80002500:	ff010113          	addi	sp,sp,-16
    80002504:	00813423          	sd	s0,8(sp)
    80002508:	01010413          	addi	s0,sp,16
    8000250c:	00050793          	mv	a5,a0
    int length = 0;
    80002510:	00000513          	li	a0,0
    while (number != 0) {
    80002514:	00078a63          	beqz	a5,80002528 <_Z14get_int_lengthi+0x28>
        number /= 10;
    80002518:	00a00713          	li	a4,10
    8000251c:	02e7c7bb          	divw	a5,a5,a4
        length++;
    80002520:	0015051b          	addiw	a0,a0,1
    while (number != 0) {
    80002524:	ff1ff06f          	j	80002514 <_Z14get_int_lengthi+0x14>
    }
    return length;
}
    80002528:	00813403          	ld	s0,8(sp)
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret

0000000080002534 <_Z13int_to_stringiPci>:

void int_to_string(int number, char* buffer, int bufferSize) {
    80002534:	fd010113          	addi	sp,sp,-48
    80002538:	02113423          	sd	ra,40(sp)
    8000253c:	02813023          	sd	s0,32(sp)
    80002540:	00913c23          	sd	s1,24(sp)
    80002544:	01213823          	sd	s2,16(sp)
    80002548:	01313423          	sd	s3,8(sp)
    8000254c:	03010413          	addi	s0,sp,48
    80002550:	00050493          	mv	s1,a0
    80002554:	00058913          	mv	s2,a1
    80002558:	00060993          	mv	s3,a2
    int length = get_int_length(number);
    8000255c:	00000097          	auipc	ra,0x0
    80002560:	fa4080e7          	jalr	-92(ra) # 80002500 <_Z14get_int_lengthi>

    if (length >= bufferSize) {
    80002564:	03355a63          	bge	a0,s3,80002598 <_Z13int_to_stringiPci+0x64>
        // Handle buffer overflow
        return;
    }

    for (int i = length - 1; i >= 0; i--) {
    80002568:	fff5079b          	addiw	a5,a0,-1
    8000256c:	0207c263          	bltz	a5,80002590 <_Z13int_to_stringiPci+0x5c>
        buffer[i] = '0' + (number % 10);
    80002570:	00a00693          	li	a3,10
    80002574:	02d4e73b          	remw	a4,s1,a3
    80002578:	00f90633          	add	a2,s2,a5
    8000257c:	0307071b          	addiw	a4,a4,48
    80002580:	00e60023          	sb	a4,0(a2)
        number /= 10;
    80002584:	02d4c4bb          	divw	s1,s1,a3
    for (int i = length - 1; i >= 0; i--) {
    80002588:	fff7879b          	addiw	a5,a5,-1
    8000258c:	fe1ff06f          	j	8000256c <_Z13int_to_stringiPci+0x38>
    }
    buffer[length] = '\0';
    80002590:	00a90933          	add	s2,s2,a0
    80002594:	00090023          	sb	zero,0(s2)
}
    80002598:	02813083          	ld	ra,40(sp)
    8000259c:	02013403          	ld	s0,32(sp)
    800025a0:	01813483          	ld	s1,24(sp)
    800025a4:	01013903          	ld	s2,16(sp)
    800025a8:	00813983          	ld	s3,8(sp)
    800025ac:	03010113          	addi	sp,sp,48
    800025b0:	00008067          	ret

00000000800025b4 <_Z27concatenate_int_to_char_ptri>:

char* concatenate_int_to_char_ptr(int number) {
    800025b4:	fe010113          	addi	sp,sp,-32
    800025b8:	00113c23          	sd	ra,24(sp)
    800025bc:	00813823          	sd	s0,16(sp)
    800025c0:	00913423          	sd	s1,8(sp)
    800025c4:	02010413          	addi	s0,sp,32
    800025c8:	00050493          	mv	s1,a0
    char* baseString = (char*)"size-xxxxxx";
    int length = get_int_length(number);
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	f34080e7          	jalr	-204(ra) # 80002500 <_Z14get_int_lengthi>
    for(int i = 5 + length; i >= 5; i--){
    800025d4:	0055051b          	addiw	a0,a0,5
    800025d8:	00050793          	mv	a5,a0
    800025dc:	0180006f          	j	800025f4 <_Z27concatenate_int_to_char_ptri+0x40>
        if(i == 5 + length){
            baseString[i] = '\0';
    800025e0:	00007717          	auipc	a4,0x7
    800025e4:	a4070713          	addi	a4,a4,-1472 # 80009020 <CONSOLE_STATUS+0x10>
    800025e8:	00e78733          	add	a4,a5,a4
    800025ec:	00070023          	sb	zero,0(a4)
    for(int i = 5 + length; i >= 5; i--){
    800025f0:	fff7879b          	addiw	a5,a5,-1
    800025f4:	00400713          	li	a4,4
    800025f8:	02f75863          	bge	a4,a5,80002628 <_Z27concatenate_int_to_char_ptri+0x74>
        if(i == 5 + length){
    800025fc:	fea782e3          	beq	a5,a0,800025e0 <_Z27concatenate_int_to_char_ptri+0x2c>
        }else{
            int mod = number % 10;
    80002600:	00a00693          	li	a3,10
    80002604:	02d4e73b          	remw	a4,s1,a3
            number /= 10;
    80002608:	02d4c4bb          	divw	s1,s1,a3
            char num_char = '0' + mod;
    8000260c:	0ff77713          	andi	a4,a4,255
    80002610:	0307071b          	addiw	a4,a4,48
            baseString[i] = num_char;
    80002614:	00007697          	auipc	a3,0x7
    80002618:	a0c68693          	addi	a3,a3,-1524 # 80009020 <CONSOLE_STATUS+0x10>
    8000261c:	00d786b3          	add	a3,a5,a3
    80002620:	00e68023          	sb	a4,0(a3)
    80002624:	fcdff06f          	j	800025f0 <_Z27concatenate_int_to_char_ptri+0x3c>
        }
    }
    return baseString;

}
    80002628:	00007517          	auipc	a0,0x7
    8000262c:	9f850513          	addi	a0,a0,-1544 # 80009020 <CONSOLE_STATUS+0x10>
    80002630:	01813083          	ld	ra,24(sp)
    80002634:	01013403          	ld	s0,16(sp)
    80002638:	00813483          	ld	s1,8(sp)
    8000263c:	02010113          	addi	sp,sp,32
    80002640:	00008067          	ret

0000000080002644 <_Z14string_comparePKcS0_>:

bool string_compare(const char* str1, const char* str2) {
    80002644:	ff010113          	addi	sp,sp,-16
    80002648:	00813423          	sd	s0,8(sp)
    8000264c:	01010413          	addi	s0,sp,16
    80002650:	00c0006f          	j	8000265c <_Z14string_comparePKcS0_+0x18>
    while (*str1 != '\0' && *str2 != '\0') {
        if (*str1 != *str2) {
            return false;
        }
        str1++;
    80002654:	00150513          	addi	a0,a0,1
        str2++;
    80002658:	00158593          	addi	a1,a1,1
    while (*str1 != '\0' && *str2 != '\0') {
    8000265c:	00054783          	lbu	a5,0(a0)
    80002660:	00078c63          	beqz	a5,80002678 <_Z14string_comparePKcS0_+0x34>
    80002664:	0005c703          	lbu	a4,0(a1)
    80002668:	00070863          	beqz	a4,80002678 <_Z14string_comparePKcS0_+0x34>
        if (*str1 != *str2) {
    8000266c:	fee784e3          	beq	a5,a4,80002654 <_Z14string_comparePKcS0_+0x10>
            return false;
    80002670:	00000513          	li	a0,0
    80002674:	01c0006f          	j	80002690 <_Z14string_comparePKcS0_+0x4c>
    }

    // Check if both strings have reached the end simultaneously
    return (*str1 == '\0' && *str2 == '\0');
    80002678:	00079a63          	bnez	a5,8000268c <_Z14string_comparePKcS0_+0x48>
    8000267c:	0005c783          	lbu	a5,0(a1)
    80002680:	00078e63          	beqz	a5,8000269c <_Z14string_comparePKcS0_+0x58>
    80002684:	00000513          	li	a0,0
    80002688:	0080006f          	j	80002690 <_Z14string_comparePKcS0_+0x4c>
    8000268c:	00000513          	li	a0,0
    80002690:	00813403          	ld	s0,8(sp)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00008067          	ret
    return (*str1 == '\0' && *str2 == '\0');
    8000269c:	00100513          	li	a0,1
    800026a0:	ff1ff06f          	j	80002690 <_Z14string_comparePKcS0_+0x4c>

00000000800026a4 <_Z13idle_functionPv>:
//#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../test/userMain.hpp"

void idle_function(void* arg){
    800026a4:	ff010113          	addi	sp,sp,-16
    800026a8:	00113423          	sd	ra,8(sp)
    800026ac:	00813023          	sd	s0,0(sp)
    800026b0:	01010413          	addi	s0,sp,16
    while(1){
        thread_dispatch();
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	cd0080e7          	jalr	-816(ra) # 80001384 <thread_dispatch>
    while(1){
    800026bc:	ff9ff06f          	j	800026b4 <_Z13idle_functionPv+0x10>

00000000800026c0 <_Z13putc_functionPv>:
    }
}

void putc_function(void* arg){
    800026c0:	fe010113          	addi	sp,sp,-32
    800026c4:	00113c23          	sd	ra,24(sp)
    800026c8:	00813823          	sd	s0,16(sp)
    800026cc:	00913423          	sd	s1,8(sp)
    800026d0:	02010413          	addi	s0,sp,32
    switch_to_priviledged();
    800026d4:	fffff097          	auipc	ra,0xfffff
    800026d8:	048080e7          	jalr	72(ra) # 8000171c <switch_to_priviledged>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800026dc:	00200793          	li	a5,2
    800026e0:	1007b073          	csrc	sstatus,a5
}
    800026e4:	0400006f          	j	80002724 <_Z13putc_functionPv+0x64>

class Console{
public:

    static Console& getInstance(){
        static Console instance;
    800026e8:	00009517          	auipc	a0,0x9
    800026ec:	0d850513          	addi	a0,a0,216 # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	2a8080e7          	jalr	680(ra) # 80002998 <_ZN7ConsoleC1Ev>
    800026f8:	00100793          	li	a5,1
    800026fc:	00009717          	auipc	a4,0x9
    80002700:	0af70e23          	sb	a5,188(a4) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(1){
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
              /*&& Console::getInstance().get_output_size()*/) {
            *((char*)CONSOLE_TX_DATA) = Console::getInstance().get_from_output();
    80002704:	00009797          	auipc	a5,0x9
    80002708:	0147b783          	ld	a5,20(a5) # 8000b718 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000270c:	0007b483          	ld	s1,0(a5)
    80002710:	00009517          	auipc	a0,0x9
    80002714:	0b050513          	addi	a0,a0,176 # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	49c080e7          	jalr	1180(ra) # 80002bb4 <_ZN7Console15get_from_outputEv>
    80002720:	00a48023          	sb	a0,0(s1)
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
    80002724:	00009797          	auipc	a5,0x9
    80002728:	fbc7b783          	ld	a5,-68(a5) # 8000b6e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000272c:	0007b783          	ld	a5,0(a5)
    80002730:	0007c783          	lbu	a5,0(a5)
    80002734:	0207f793          	andi	a5,a5,32
    80002738:	00078a63          	beqz	a5,8000274c <_Z13putc_functionPv+0x8c>
    8000273c:	00009797          	auipc	a5,0x9
    80002740:	07c7c783          	lbu	a5,124(a5) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    80002744:	fc0790e3          	bnez	a5,80002704 <_Z13putc_functionPv+0x44>
    80002748:	fa1ff06f          	j	800026e8 <_Z13putc_functionPv+0x28>
        }
        thread_dispatch();
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	c38080e7          	jalr	-968(ra) # 80001384 <thread_dispatch>
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
    80002754:	fd1ff06f          	j	80002724 <_Z13putc_functionPv+0x64>

0000000080002758 <_Z17user_main_wrapperPv>:
    }
}

static bool is_user_main_finished = false;
void user_main_wrapper(void* arg){
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00113423          	sd	ra,8(sp)
    80002760:	00813023          	sd	s0,0(sp)
    80002764:	01010413          	addi	s0,sp,16
    switch_to_user();
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	f64080e7          	jalr	-156(ra) # 800016cc <switch_to_user>
    userMain();
    80002770:	00004097          	auipc	ra,0x4
    80002774:	e10080e7          	jalr	-496(ra) # 80006580 <_Z8userMainv>
    switch_to_priviledged();
    80002778:	fffff097          	auipc	ra,0xfffff
    8000277c:	fa4080e7          	jalr	-92(ra) # 8000171c <switch_to_priviledged>
    is_user_main_finished = true;
    80002780:	00100793          	li	a5,1
    80002784:	00009717          	auipc	a4,0x9
    80002788:	02f70623          	sb	a5,44(a4) # 8000b7b0 <_ZL21is_user_main_finished>
}
    8000278c:	00813083          	ld	ra,8(sp)
    80002790:	00013403          	ld	s0,0(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <main>:
#include "../test/userMain.hpp"
#include "../h/fun.hpp"



int main(){
    8000279c:	fc010113          	addi	sp,sp,-64
    800027a0:	02113c23          	sd	ra,56(sp)
    800027a4:	02813823          	sd	s0,48(sp)
    800027a8:	02913423          	sd	s1,40(sp)
    800027ac:	04010413          	addi	s0,sp,64

    // ###################################################################################################
    // upis u stvec
    uint64 address = reinterpret_cast<uint64>(&Riscv::supervisorTrap);
    800027b0:	00009797          	auipc	a5,0x9
    800027b4:	f507b783          	ld	a5,-176(a5) # 8000b700 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800027b8:	10579073          	csrw	stvec,a5
    Riscv::w_stvec(address);

    // kreiranje main niti
    thread_t mainThread = nullptr;
    800027bc:	fc043c23          	sd	zero,-40(s0)
    thread_create(&mainThread, nullptr, nullptr);
    800027c0:	00000613          	li	a2,0
    800027c4:	00000593          	li	a1,0
    800027c8:	fd840513          	addi	a0,s0,-40
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	b24080e7          	jalr	-1244(ra) # 800012f0 <thread_create>
    TCB::running = (TCB*)mainThread;
    800027d4:	00009797          	auipc	a5,0x9
    800027d8:	f5c7b783          	ld	a5,-164(a5) # 8000b730 <_GLOBAL_OFFSET_TABLE_+0x60>
    800027dc:	fd843703          	ld	a4,-40(s0)
    800027e0:	00e7b023          	sd	a4,0(a5)

    // kreiranje idle niti
    thread_create((thread_t*)&TCB::idle, &idle_function, nullptr);
    800027e4:	00000613          	li	a2,0
    800027e8:	00000597          	auipc	a1,0x0
    800027ec:	ebc58593          	addi	a1,a1,-324 # 800026a4 <_Z13idle_functionPv>
    800027f0:	00009517          	auipc	a0,0x9
    800027f4:	f1853503          	ld	a0,-232(a0) # 8000b708 <_GLOBAL_OFFSET_TABLE_+0x38>
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	af8080e7          	jalr	-1288(ra) # 800012f0 <thread_create>

    // kreiranje userMain niti
//    thread_t userMainThread = nullptr;
//    thread_create(&userMainThread, &userMain, nullptr);

    thread_t userMainThread = nullptr;
    80002800:	fc043823          	sd	zero,-48(s0)
    thread_create(&userMainThread, &user_main_wrapper, nullptr);
    80002804:	00000613          	li	a2,0
    80002808:	00000597          	auipc	a1,0x0
    8000280c:	f5058593          	addi	a1,a1,-176 # 80002758 <_Z17user_main_wrapperPv>
    80002810:	fd040513          	addi	a0,s0,-48
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	adc080e7          	jalr	-1316(ra) # 800012f0 <thread_create>

    // kreiranje niti za ispis
    thread_t consoleWriter = nullptr;
    8000281c:	fc043423          	sd	zero,-56(s0)
    thread_create(&consoleWriter, &putc_function, nullptr);
    80002820:	00000613          	li	a2,0
    80002824:	00000597          	auipc	a1,0x0
    80002828:	e9c58593          	addi	a1,a1,-356 # 800026c0 <_Z13putc_functionPv>
    8000282c:	fc840513          	addi	a0,s0,-56
    80002830:	fffff097          	auipc	ra,0xfffff
    80002834:	ac0080e7          	jalr	-1344(ra) # 800012f0 <thread_create>
    80002838:	00009797          	auipc	a5,0x9
    8000283c:	f807c783          	lbu	a5,-128(a5) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    80002840:	00078863          	beqz	a5,80002850 <main+0xb4>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002844:	00200793          	li	a5,2
    80002848:	1007a073          	csrs	sstatus,a5
}
    8000284c:	05c0006f          	j	800028a8 <main+0x10c>
    80002850:	00009517          	auipc	a0,0x9
    80002854:	f7050513          	addi	a0,a0,-144 # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	140080e7          	jalr	320(ra) # 80002998 <_ZN7ConsoleC1Ev>
    80002860:	00100793          	li	a5,1
    80002864:	00009717          	auipc	a4,0x9
    80002868:	f4f70a23          	sb	a5,-172(a4) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    8000286c:	fd9ff06f          	j	80002844 <main+0xa8>
    80002870:	00009517          	auipc	a0,0x9
    80002874:	f5050513          	addi	a0,a0,-176 # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    80002878:	00000097          	auipc	ra,0x0
    8000287c:	120080e7          	jalr	288(ra) # 80002998 <_ZN7ConsoleC1Ev>
    80002880:	00100793          	li	a5,1
    80002884:	00009717          	auipc	a4,0x9
    80002888:	f2f70a23          	sb	a5,-204(a4) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>

    void put_in_input(char c);
    char get_from_input();
    void put_in_output(char c);
    char get_from_output();
    int get_output_size(){ return output_buffer->getCnt(); }
    8000288c:	00009517          	auipc	a0,0x9
    80002890:	f3c53503          	ld	a0,-196(a0) # 8000b7c8 <_ZZN7Console11getInstanceEvE8instance+0x8>
    80002894:	fffff097          	auipc	ra,0xfffff
    80002898:	270080e7          	jalr	624(ra) # 80001b04 <_ZN8MyBuffer6getCntEv>
    // ako sam obrisao userMain pristupam nepostojecoj strukturi
//    while(!((TCB*)userMainThread)->is_finished()){
//        thread_dispatch();
//    }

    while(!is_user_main_finished || Console::getInstance().get_output_size()){
    8000289c:	02050463          	beqz	a0,800028c4 <main+0x128>
        thread_dispatch();
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	ae4080e7          	jalr	-1308(ra) # 80001384 <thread_dispatch>
    while(!is_user_main_finished || Console::getInstance().get_output_size()){
    800028a8:	00009797          	auipc	a5,0x9
    800028ac:	f087c783          	lbu	a5,-248(a5) # 8000b7b0 <_ZL21is_user_main_finished>
    800028b0:	fe0788e3          	beqz	a5,800028a0 <main+0x104>
        static Console instance;
    800028b4:	00009797          	auipc	a5,0x9
    800028b8:	f047c783          	lbu	a5,-252(a5) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    800028bc:	fc0798e3          	bnez	a5,8000288c <main+0xf0>
    800028c0:	fb1ff06f          	j	80002870 <main+0xd4>
    800028c4:	00009797          	auipc	a5,0x9
    800028c8:	ef47c783          	lbu	a5,-268(a5) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    800028cc:	0a078663          	beqz	a5,80002978 <main+0x1dc>
    int get_input_size(){ return input_buffer->getCnt(); }

    MyBuffer* get_input_buff(){return input_buffer;}
    800028d0:	00009497          	auipc	s1,0x9
    800028d4:	ef04b483          	ld	s1,-272(s1) # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    }


    delete Console::getInstance().get_input_buff();
    800028d8:	08048463          	beqz	s1,80002960 <main+0x1c4>
    800028dc:	00048513          	mv	a0,s1
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	034080e7          	jalr	52(ra) # 80001914 <_ZN8MyBufferD1Ev>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    800028e8:	00009797          	auipc	a5,0x9
    800028ec:	e987c783          	lbu	a5,-360(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800028f0:	04079e63          	bnez	a5,8000294c <main+0x1b0>

    FreeMem* fmem_head = nullptr;

    MemoryAllocator(){

        size_t heapStart = (size_t)HEAP_START_ADDR;
    800028f4:	00009797          	auipc	a5,0x9
    800028f8:	dfc7b783          	ld	a5,-516(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800028fc:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002900:	00009717          	auipc	a4,0x9
    80002904:	e3873703          	ld	a4,-456(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002908:	00073703          	ld	a4,0(a4)
    8000290c:	fff70713          	addi	a4,a4,-1

        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002910:	40f70733          	sub	a4,a4,a5
    80002914:	00675713          	srli	a4,a4,0x6

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002918:	03f7f693          	andi	a3,a5,63
    8000291c:	00068663          	beqz	a3,80002928 <main+0x18c>
    80002920:	04000613          	li	a2,64
    80002924:	40d606b3          	sub	a3,a2,a3
    80002928:	00d787b3          	add	a5,a5,a3
    8000292c:	00009697          	auipc	a3,0x9
    80002930:	e4f6be23          	sd	a5,-420(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    80002934:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002938:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    8000293c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002940:	00100793          	li	a5,1
    80002944:	00009717          	auipc	a4,0x9
    80002948:	e2f70e23          	sb	a5,-452(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    8000294c:	00048593          	mv	a1,s1
    80002950:	00009517          	auipc	a0,0x9
    80002954:	e3850513          	addi	a0,a0,-456 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002958:	00002097          	auipc	ra,0x2
    8000295c:	568080e7          	jalr	1384(ra) # 80004ec0 <_ZN15MemoryAllocator11memory_freeEPv>
    return 0;
    80002960:	00000513          	li	a0,0
    80002964:	03813083          	ld	ra,56(sp)
    80002968:	03013403          	ld	s0,48(sp)
    8000296c:	02813483          	ld	s1,40(sp)
    80002970:	04010113          	addi	sp,sp,64
    80002974:	00008067          	ret
        static Console instance;
    80002978:	00009517          	auipc	a0,0x9
    8000297c:	e4850513          	addi	a0,a0,-440 # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    80002980:	00000097          	auipc	ra,0x0
    80002984:	018080e7          	jalr	24(ra) # 80002998 <_ZN7ConsoleC1Ev>
    80002988:	00100793          	li	a5,1
    8000298c:	00009717          	auipc	a4,0x9
    80002990:	e2f70623          	sb	a5,-468(a4) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    80002994:	f3dff06f          	j	800028d0 <main+0x134>

0000000080002998 <_ZN7ConsoleC1Ev>:

#include "../h/console.hpp"

Console::Console() {
    80002998:	fe010113          	addi	sp,sp,-32
    8000299c:	00113c23          	sd	ra,24(sp)
    800029a0:	00813823          	sd	s0,16(sp)
    800029a4:	00913423          	sd	s1,8(sp)
    800029a8:	01213023          	sd	s2,0(sp)
    800029ac:	02010413          	addi	s0,sp,32
    800029b0:	00050493          	mv	s1,a0
    800029b4:	00009797          	auipc	a5,0x9
    800029b8:	dcc7c783          	lbu	a5,-564(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800029bc:	04079e63          	bnez	a5,80002a18 <_ZN7ConsoleC1Ev+0x80>
        size_t heapStart = (size_t)HEAP_START_ADDR;
    800029c0:	00009797          	auipc	a5,0x9
    800029c4:	d307b783          	ld	a5,-720(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800029c8:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    800029cc:	00009717          	auipc	a4,0x9
    800029d0:	d6c73703          	ld	a4,-660(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029d4:	00073703          	ld	a4,0(a4)
    800029d8:	fff70713          	addi	a4,a4,-1
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    800029dc:	40f70733          	sub	a4,a4,a5
    800029e0:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800029e4:	03f7f693          	andi	a3,a5,63
    800029e8:	00068663          	beqz	a3,800029f4 <_ZN7ConsoleC1Ev+0x5c>
    800029ec:	04000613          	li	a2,64
    800029f0:	40d606b3          	sub	a3,a2,a3
    800029f4:	00d787b3          	add	a5,a5,a3
    800029f8:	00009697          	auipc	a3,0x9
    800029fc:	d8f6b823          	sd	a5,-624(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80002a00:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002a04:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002a08:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002a0c:	00100793          	li	a5,1
    80002a10:	00009717          	auipc	a4,0x9
    80002a14:	d6f70823          	sb	a5,-656(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    80002a18:	00100593          	li	a1,1
    80002a1c:	00009517          	auipc	a0,0x9
    80002a20:	d6c50513          	addi	a0,a0,-660 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002a24:	00002097          	auipc	ra,0x2
    80002a28:	3c8080e7          	jalr	968(ra) # 80004dec <_ZN15MemoryAllocator12memory_allocEm>
    80002a2c:	00050913          	mv	s2,a0
    input_buffer = new MyBuffer(1024);
    80002a30:	40000593          	li	a1,1024
    80002a34:	fffff097          	auipc	ra,0xfffff
    80002a38:	dd8080e7          	jalr	-552(ra) # 8000180c <_ZN8MyBufferC1Ei>
    80002a3c:	0124b023          	sd	s2,0(s1)
    80002a40:	00009797          	auipc	a5,0x9
    80002a44:	d407c783          	lbu	a5,-704(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002a48:	04079e63          	bnez	a5,80002aa4 <_ZN7ConsoleC1Ev+0x10c>
        size_t heapStart = (size_t)HEAP_START_ADDR;
    80002a4c:	00009797          	auipc	a5,0x9
    80002a50:	ca47b783          	ld	a5,-860(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002a54:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002a58:	00009717          	auipc	a4,0x9
    80002a5c:	ce073703          	ld	a4,-800(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a60:	00073703          	ld	a4,0(a4)
    80002a64:	fff70713          	addi	a4,a4,-1
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002a68:	40f70733          	sub	a4,a4,a5
    80002a6c:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002a70:	03f7f693          	andi	a3,a5,63
    80002a74:	00068663          	beqz	a3,80002a80 <_ZN7ConsoleC1Ev+0xe8>
    80002a78:	04000613          	li	a2,64
    80002a7c:	40d606b3          	sub	a3,a2,a3
    80002a80:	00d787b3          	add	a5,a5,a3
    80002a84:	00009697          	auipc	a3,0x9
    80002a88:	d0f6b223          	sd	a5,-764(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80002a8c:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002a90:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002a94:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002a98:	00100793          	li	a5,1
    80002a9c:	00009717          	auipc	a4,0x9
    80002aa0:	cef70223          	sb	a5,-796(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002aa4:	00100593          	li	a1,1
    80002aa8:	00009517          	auipc	a0,0x9
    80002aac:	ce050513          	addi	a0,a0,-800 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002ab0:	00002097          	auipc	ra,0x2
    80002ab4:	33c080e7          	jalr	828(ra) # 80004dec <_ZN15MemoryAllocator12memory_allocEm>
    80002ab8:	00050913          	mv	s2,a0
    output_buffer = new MyBuffer(1024);
    80002abc:	40000593          	li	a1,1024
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	d4c080e7          	jalr	-692(ra) # 8000180c <_ZN8MyBufferC1Ei>
    80002ac8:	0124b423          	sd	s2,8(s1)
}
    80002acc:	01813083          	ld	ra,24(sp)
    80002ad0:	01013403          	ld	s0,16(sp)
    80002ad4:	00813483          	ld	s1,8(sp)
    80002ad8:	00013903          	ld	s2,0(sp)
    80002adc:	02010113          	addi	sp,sp,32
    80002ae0:	00008067          	ret
    80002ae4:	00050493          	mv	s1,a0
        MemoryAllocator::getInstance().memory_free(p);
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	0fc080e7          	jalr	252(ra) # 80002be4 <_ZN15MemoryAllocator11getInstanceEv>
    80002af0:	00090593          	mv	a1,s2
    80002af4:	00002097          	auipc	ra,0x2
    80002af8:	3cc080e7          	jalr	972(ra) # 80004ec0 <_ZN15MemoryAllocator11memory_freeEPv>
    80002afc:	00048513          	mv	a0,s1
    80002b00:	0000a097          	auipc	ra,0xa
    80002b04:	f78080e7          	jalr	-136(ra) # 8000ca78 <_Unwind_Resume>
    80002b08:	00050493          	mv	s1,a0
    80002b0c:	00000097          	auipc	ra,0x0
    80002b10:	0d8080e7          	jalr	216(ra) # 80002be4 <_ZN15MemoryAllocator11getInstanceEv>
    80002b14:	00090593          	mv	a1,s2
    80002b18:	00002097          	auipc	ra,0x2
    80002b1c:	3a8080e7          	jalr	936(ra) # 80004ec0 <_ZN15MemoryAllocator11memory_freeEPv>
    80002b20:	00048513          	mv	a0,s1
    80002b24:	0000a097          	auipc	ra,0xa
    80002b28:	f54080e7          	jalr	-172(ra) # 8000ca78 <_Unwind_Resume>

0000000080002b2c <_ZN7Console12put_in_inputEc>:

void Console::put_in_input(char c){
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00113423          	sd	ra,8(sp)
    80002b34:	00813023          	sd	s0,0(sp)
    80002b38:	01010413          	addi	s0,sp,16
    input_buffer->put(c);
    80002b3c:	00053503          	ld	a0,0(a0)
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	ea8080e7          	jalr	-344(ra) # 800019e8 <_ZN8MyBuffer3putEi>
}
    80002b48:	00813083          	ld	ra,8(sp)
    80002b4c:	00013403          	ld	s0,0(sp)
    80002b50:	01010113          	addi	sp,sp,16
    80002b54:	00008067          	ret

0000000080002b58 <_ZN7Console14get_from_inputEv>:

char Console::get_from_input(){
    80002b58:	ff010113          	addi	sp,sp,-16
    80002b5c:	00113423          	sd	ra,8(sp)
    80002b60:	00813023          	sd	s0,0(sp)
    80002b64:	01010413          	addi	s0,sp,16
    return (char)input_buffer->get();
    80002b68:	00053503          	ld	a0,0(a0)
    80002b6c:	fffff097          	auipc	ra,0xfffff
    80002b70:	f0c080e7          	jalr	-244(ra) # 80001a78 <_ZN8MyBuffer3getEv>
}
    80002b74:	0ff57513          	andi	a0,a0,255
    80002b78:	00813083          	ld	ra,8(sp)
    80002b7c:	00013403          	ld	s0,0(sp)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	00008067          	ret

0000000080002b88 <_ZN7Console13put_in_outputEc>:

void Console::put_in_output(char c){
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00113423          	sd	ra,8(sp)
    80002b90:	00813023          	sd	s0,0(sp)
    80002b94:	01010413          	addi	s0,sp,16
    output_buffer->put(c);
    80002b98:	00853503          	ld	a0,8(a0)
    80002b9c:	fffff097          	auipc	ra,0xfffff
    80002ba0:	e4c080e7          	jalr	-436(ra) # 800019e8 <_ZN8MyBuffer3putEi>
}
    80002ba4:	00813083          	ld	ra,8(sp)
    80002ba8:	00013403          	ld	s0,0(sp)
    80002bac:	01010113          	addi	sp,sp,16
    80002bb0:	00008067          	ret

0000000080002bb4 <_ZN7Console15get_from_outputEv>:
char Console::get_from_output(){
    80002bb4:	ff010113          	addi	sp,sp,-16
    80002bb8:	00113423          	sd	ra,8(sp)
    80002bbc:	00813023          	sd	s0,0(sp)
    80002bc0:	01010413          	addi	s0,sp,16
    return (char)output_buffer->get();
    80002bc4:	00853503          	ld	a0,8(a0)
    80002bc8:	fffff097          	auipc	ra,0xfffff
    80002bcc:	eb0080e7          	jalr	-336(ra) # 80001a78 <_ZN8MyBuffer3getEv>
    80002bd0:	0ff57513          	andi	a0,a0,255
    80002bd4:	00813083          	ld	ra,8(sp)
    80002bd8:	00013403          	ld	s0,0(sp)
    80002bdc:	01010113          	addi	sp,sp,16
    80002be0:	00008067          	ret

0000000080002be4 <_ZN15MemoryAllocator11getInstanceEv>:
    static MemoryAllocator& getInstance(){
    80002be4:	ff010113          	addi	sp,sp,-16
    80002be8:	00813423          	sd	s0,8(sp)
    80002bec:	01010413          	addi	s0,sp,16
        static MemoryAllocator instance;
    80002bf0:	00009797          	auipc	a5,0x9
    80002bf4:	b907c783          	lbu	a5,-1136(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80002bf8:	04079e63          	bnez	a5,80002c54 <_ZN15MemoryAllocator11getInstanceEv+0x70>
        size_t heapStart = (size_t)HEAP_START_ADDR;
    80002bfc:	00009797          	auipc	a5,0x9
    80002c00:	af47b783          	ld	a5,-1292(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c04:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    80002c08:	00009717          	auipc	a4,0x9
    80002c0c:	b3073703          	ld	a4,-1232(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c10:	00073703          	ld	a4,0(a4)
    80002c14:	fff70713          	addi	a4,a4,-1
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002c18:	40f70733          	sub	a4,a4,a5
    80002c1c:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80002c20:	03f7f693          	andi	a3,a5,63
    80002c24:	00068663          	beqz	a3,80002c30 <_ZN15MemoryAllocator11getInstanceEv+0x4c>
    80002c28:	04000613          	li	a2,64
    80002c2c:	40d606b3          	sub	a3,a2,a3
    80002c30:	00d787b3          	add	a5,a5,a3
    80002c34:	00009697          	auipc	a3,0x9
    80002c38:	b4f6ba23          	sd	a5,-1196(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80002c3c:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80002c40:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80002c44:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80002c48:	00100793          	li	a5,1
    80002c4c:	00009717          	auipc	a4,0x9
    80002c50:	b2f70a23          	sb	a5,-1228(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    }
    80002c54:	00009517          	auipc	a0,0x9
    80002c58:	b3450513          	addi	a0,a0,-1228 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80002c5c:	00813403          	ld	s0,8(sp)
    80002c60:	01010113          	addi	sp,sp,16
    80002c64:	00008067          	ret

0000000080002c68 <_ZN12kmem_cache_s17kmem_cache_shrinkEv>:
    return (void*)tmp;
}

///
/// \return velicinu za koliko je smanjena memorija (u bajtovima)
size_t kmem_cache_s::kmem_cache_shrink() {
    80002c68:	fd010113          	addi	sp,sp,-48
    80002c6c:	02113423          	sd	ra,40(sp)
    80002c70:	02813023          	sd	s0,32(sp)
    80002c74:	00913c23          	sd	s1,24(sp)
    80002c78:	01213823          	sd	s2,16(sp)
    80002c7c:	01313423          	sd	s3,8(sp)
    80002c80:	01413023          	sd	s4,0(sp)
    80002c84:	03010413          	addi	s0,sp,48
    80002c88:	00050993          	mv	s3,a0
    if(this->growing){
    80002c8c:	07054783          	lbu	a5,112(a0)
    80002c90:	00079863          	bnez	a5,80002ca0 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x38>
        this->growing = false;
        return 0;
    }
    Slab* curr = this->slabs_free, *prev;
    80002c94:	01053483          	ld	s1,16(a0)
    int cnt = (int)this->num_slabs_free;
    80002c98:	02852a03          	lw	s4,40(a0)
    80002c9c:	0440006f          	j	80002ce0 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x78>
        this->growing = false;
    80002ca0:	06050823          	sb	zero,112(a0)
        return 0;
    80002ca4:	00000513          	li	a0,0
    80002ca8:	0700006f          	j	80002d18 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0xb0>

    void* buddyAlloc(size_t size);
    void buddyFree(size_t addr);

    static BuddySystem& getInstance(void *space = nullptr, int block_num = 0){
        static BuddySystem bs;
    80002cac:	00009517          	auipc	a0,0x9
    80002cb0:	b3450513          	addi	a0,a0,-1228 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002cb4:	fffff097          	auipc	ra,0xfffff
    80002cb8:	ed8080e7          	jalr	-296(ra) # 80001b8c <_ZN11BuddySystemC1Ev>
    80002cbc:	00100793          	li	a5,1
    80002cc0:	00009717          	auipc	a4,0x9
    80002cc4:	b0f70c23          	sb	a5,-1256(a4) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    while(curr){
        prev = curr;
        curr = curr->next;
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80002cc8:	00048593          	mv	a1,s1
    80002ccc:	00009517          	auipc	a0,0x9
    80002cd0:	b1450513          	addi	a0,a0,-1260 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002cd4:	fffff097          	auipc	ra,0xfffff
    80002cd8:	1b8080e7          	jalr	440(ra) # 80001e8c <_ZN11BuddySystem9buddyFreeEm>
        curr = curr->next;
    80002cdc:	00090493          	mv	s1,s2
    while(curr){
    80002ce0:	00048c63          	beqz	s1,80002cf8 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x90>
        curr = curr->next;
    80002ce4:	0084b903          	ld	s2,8(s1)
    80002ce8:	00009797          	auipc	a5,0x9
    80002cec:	af07c783          	lbu	a5,-1296(a5) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002cf0:	fc079ce3          	bnez	a5,80002cc8 <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x60>
    80002cf4:	fb9ff06f          	j	80002cac <_ZN12kmem_cache_s17kmem_cache_shrinkEv+0x44>
    }
    this->slabs_free = nullptr;
    80002cf8:	0009b823          	sd	zero,16(s3)
    this->num_slabs_free = 0;
    80002cfc:	0209b423          	sd	zero,40(s3)
    this->growing = false;
    80002d00:	06098823          	sb	zero,112(s3)
    this->shrink++;
    80002d04:	0789b783          	ld	a5,120(s3)
    80002d08:	00178793          	addi	a5,a5,1
    80002d0c:	06f9bc23          	sd	a5,120(s3)
    return cnt * this->size_in_blocks;
    80002d10:	0409b503          	ld	a0,64(s3)
    80002d14:	02aa0533          	mul	a0,s4,a0
}
    80002d18:	02813083          	ld	ra,40(sp)
    80002d1c:	02013403          	ld	s0,32(sp)
    80002d20:	01813483          	ld	s1,24(sp)
    80002d24:	01013903          	ld	s2,16(sp)
    80002d28:	00813983          	ld	s3,8(sp)
    80002d2c:	00013a03          	ld	s4,0(sp)
    80002d30:	03010113          	addi	sp,sp,48
    80002d34:	00008067          	ret

0000000080002d38 <_ZN12kmem_cache_s16create_free_slabEv>:
    create_free_slab();
    this->growing = true;
    return nullptr;
}

void kmem_cache_s::create_free_slab() {
    80002d38:	fd010113          	addi	sp,sp,-48
    80002d3c:	02113423          	sd	ra,40(sp)
    80002d40:	02813023          	sd	s0,32(sp)
    80002d44:	00913c23          	sd	s1,24(sp)
    80002d48:	01213823          	sd	s2,16(sp)
    80002d4c:	01313423          	sd	s3,8(sp)
    80002d50:	01413023          	sd	s4,0(sp)
    80002d54:	03010413          	addi	s0,sp,48
    80002d58:	00050493          	mv	s1,a0
    80002d5c:	00009797          	auipc	a5,0x9
    80002d60:	a7c7c783          	lbu	a5,-1412(a5) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002d64:	06078663          	beqz	a5,80002dd0 <_ZN12kmem_cache_s16create_free_slabEv+0x98>
    Slab* tmp = (Slab*)(BuddySystem::getInstance().buddyAlloc(this->num * this->objsize + sizeof(Slab)));
    80002d68:	0384b583          	ld	a1,56(s1)
    80002d6c:	0304b783          	ld	a5,48(s1)
    80002d70:	02f585b3          	mul	a1,a1,a5
    80002d74:	02058593          	addi	a1,a1,32
    80002d78:	00009517          	auipc	a0,0x9
    80002d7c:	a6850513          	addi	a0,a0,-1432 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002d80:	fffff097          	auipc	ra,0xfffff
    80002d84:	f7c080e7          	jalr	-132(ra) # 80001cfc <_ZN11BuddySystem10buddyAllocEm>
    80002d88:	00050a13          	mv	s4,a0
    tmp->num_active = 0;
    80002d8c:	00053023          	sd	zero,0(a0)
    tmp->next = nullptr;
    80002d90:	00053423          	sd	zero,8(a0)
    this->slabs_free = tmp;
    80002d94:	00a4b823          	sd	a0,16(s1)
    tmp->first_addr = ((size_t)tmp + sizeof(Slab));
    80002d98:	02050793          	addi	a5,a0,32
    80002d9c:	00f53c23          	sd	a5,24(a0)
    bool arr[this->num];
    80002da0:	0384b783          	ld	a5,56(s1)
    80002da4:	00f78793          	addi	a5,a5,15
    80002da8:	ff07f793          	andi	a5,a5,-16
    80002dac:	40f10133          	sub	sp,sp,a5
    80002db0:	00010693          	mv	a3,sp
    for(size_t  i = 0; i < this->num; i++){
    80002db4:	00000793          	li	a5,0
    80002db8:	0384b703          	ld	a4,56(s1)
    80002dbc:	02e7fa63          	bgeu	a5,a4,80002df0 <_ZN12kmem_cache_s16create_free_slabEv+0xb8>
        arr[i] = false;
    80002dc0:	00f68733          	add	a4,a3,a5
    80002dc4:	00070023          	sb	zero,0(a4)
    for(size_t  i = 0; i < this->num; i++){
    80002dc8:	00178793          	addi	a5,a5,1
    80002dcc:	fedff06f          	j	80002db8 <_ZN12kmem_cache_s16create_free_slabEv+0x80>
    80002dd0:	00009517          	auipc	a0,0x9
    80002dd4:	a1050513          	addi	a0,a0,-1520 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002dd8:	fffff097          	auipc	ra,0xfffff
    80002ddc:	db4080e7          	jalr	-588(ra) # 80001b8c <_ZN11BuddySystemC1Ev>
    80002de0:	00100793          	li	a5,1
    80002de4:	00009717          	auipc	a4,0x9
    80002de8:	9ef70a23          	sb	a5,-1548(a4) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002dec:	f7dff06f          	j	80002d68 <_ZN12kmem_cache_s16create_free_slabEv+0x30>
    }
    tmp->free_objects = arr;
    80002df0:	00da3823          	sd	a3,16(s4)

    // initialize slab if there is constructor
    if(this->ctor != nullptr){
    80002df4:	0484b783          	ld	a5,72(s1)
    80002df8:	02078863          	beqz	a5,80002e28 <_ZN12kmem_cache_s16create_free_slabEv+0xf0>
        for(size_t i = 0, addr = tmp->first_addr; i < this->num; i++, addr += this->objsize){
    80002dfc:	018a3983          	ld	s3,24(s4)
    80002e00:	00000913          	li	s2,0
    80002e04:	0384b783          	ld	a5,56(s1)
    80002e08:	02f97063          	bgeu	s2,a5,80002e28 <_ZN12kmem_cache_s16create_free_slabEv+0xf0>
            this->ctor((void*)addr);
    80002e0c:	0484b783          	ld	a5,72(s1)
    80002e10:	00098513          	mv	a0,s3
    80002e14:	000780e7          	jalr	a5
        for(size_t i = 0, addr = tmp->first_addr; i < this->num; i++, addr += this->objsize){
    80002e18:	00190913          	addi	s2,s2,1
    80002e1c:	0304b783          	ld	a5,48(s1)
    80002e20:	00f989b3          	add	s3,s3,a5
    80002e24:	fe1ff06f          	j	80002e04 <_ZN12kmem_cache_s16create_free_slabEv+0xcc>
        }
    }

    // set free pointer and increment number of free slabs
    this->slabs_free = tmp;
    80002e28:	0144b823          	sd	s4,16(s1)
    this->num_slabs_free++;
    80002e2c:	0284b783          	ld	a5,40(s1)
    80002e30:	00178793          	addi	a5,a5,1
    80002e34:	02f4b423          	sd	a5,40(s1)
}
    80002e38:	fd040113          	addi	sp,s0,-48
    80002e3c:	02813083          	ld	ra,40(sp)
    80002e40:	02013403          	ld	s0,32(sp)
    80002e44:	01813483          	ld	s1,24(sp)
    80002e48:	01013903          	ld	s2,16(sp)
    80002e4c:	00813983          	ld	s3,8(sp)
    80002e50:	00013a03          	ld	s4,0(sp)
    80002e54:	03010113          	addi	sp,sp,48
    80002e58:	00008067          	ret

0000000080002e5c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>:
void* kmem_cache_s::kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    80002e5c:	fc010113          	addi	sp,sp,-64
    80002e60:	02113c23          	sd	ra,56(sp)
    80002e64:	02813823          	sd	s0,48(sp)
    80002e68:	02913423          	sd	s1,40(sp)
    80002e6c:	03213023          	sd	s2,32(sp)
    80002e70:	01313c23          	sd	s3,24(sp)
    80002e74:	01413823          	sd	s4,16(sp)
    80002e78:	01513423          	sd	s5,8(sp)
    80002e7c:	04010413          	addi	s0,sp,64
    80002e80:	00050993          	mv	s3,a0
    80002e84:	00058913          	mv	s2,a1
    80002e88:	00060a93          	mv	s5,a2
    80002e8c:	00068a13          	mv	s4,a3
    for(kmem_cache_s* curr = kmem_cache_s::head; curr; curr = curr->next){
    80002e90:	00009797          	auipc	a5,0x9
    80002e94:	9407b783          	ld	a5,-1728(a5) # 8000b7d0 <_ZN12kmem_cache_s4headE>
    80002e98:	00078a63          	beqz	a5,80002eac <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x50>
        if(curr->name == name){
    80002e9c:	0587b703          	ld	a4,88(a5)
    80002ea0:	11370863          	beq	a4,s3,80002fb0 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x154>
    for(kmem_cache_s* curr = kmem_cache_s::head; curr; curr = curr->next){
    80002ea4:	0607b783          	ld	a5,96(a5)
    80002ea8:	ff1ff06f          	j	80002e98 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x3c>
    80002eac:	00009797          	auipc	a5,0x9
    80002eb0:	92c7c783          	lbu	a5,-1748(a5) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002eb4:	08078263          	beqz	a5,80002f38 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xdc>
    kmem_cache_s* tmp = (kmem_cache_s*)BuddySystem::getInstance().buddyAlloc(BLOCK_SIZE - sizeof(size_t));
    80002eb8:	000015b7          	lui	a1,0x1
    80002ebc:	ff858593          	addi	a1,a1,-8 # ff8 <_entry-0x7ffff008>
    80002ec0:	00009517          	auipc	a0,0x9
    80002ec4:	92050513          	addi	a0,a0,-1760 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	e34080e7          	jalr	-460(ra) # 80001cfc <_ZN11BuddySystem10buddyAllocEm>
    80002ed0:	00050493          	mv	s1,a0
    tmp->name = name;
    80002ed4:	05353c23          	sd	s3,88(a0)
    tmp->objsize = size;
    80002ed8:	03253823          	sd	s2,48(a0)
    tmp->ctor = ctor;
    80002edc:	05553423          	sd	s5,72(a0)
    tmp->dtor = dtor;
    80002ee0:	05453823          	sd	s4,80(a0)
    tmp->slabs_full = tmp->slabs_partial = tmp->slabs_free = nullptr;
    80002ee4:	00053823          	sd	zero,16(a0)
    80002ee8:	00053423          	sd	zero,8(a0)
    80002eec:	00053023          	sd	zero,0(a0)
    tmp->num_slabs_full = tmp->num_slabs_partial = tmp->num_slabs_free = tmp->num_active_obj = tmp->shrink = 0;
    80002ef0:	06053c23          	sd	zero,120(a0)
    80002ef4:	06053423          	sd	zero,104(a0)
    80002ef8:	02053423          	sd	zero,40(a0)
    80002efc:	02053023          	sd	zero,32(a0)
    80002f00:	00053c23          	sd	zero,24(a0)
    tmp->growing = false;
    80002f04:	06050823          	sb	zero,112(a0)
    tmp->size_in_blocks = 1;
    80002f08:	00100793          	li	a5,1
    80002f0c:	04f53023          	sd	a5,64(a0)
    while(tmp->size_in_blocks * BLOCK_SIZE < tmp->objsize * NUM_OF_OBJECTS_IN_SLAB + sizeof(Slab) + sizeof(size_t)){
    80002f10:	0404b703          	ld	a4,64(s1)
    80002f14:	00c71693          	slli	a3,a4,0xc
    80002f18:	00291793          	slli	a5,s2,0x2
    80002f1c:	012787b3          	add	a5,a5,s2
    80002f20:	00179793          	slli	a5,a5,0x1
    80002f24:	02878793          	addi	a5,a5,40
    80002f28:	02f6f863          	bgeu	a3,a5,80002f58 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xfc>
        tmp->size_in_blocks++;
    80002f2c:	00170713          	addi	a4,a4,1
    80002f30:	04e4b023          	sd	a4,64(s1)
    while(tmp->size_in_blocks * BLOCK_SIZE < tmp->objsize * NUM_OF_OBJECTS_IN_SLAB + sizeof(Slab) + sizeof(size_t)){
    80002f34:	fddff06f          	j	80002f10 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0xb4>
    80002f38:	00009517          	auipc	a0,0x9
    80002f3c:	8a850513          	addi	a0,a0,-1880 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	c4c080e7          	jalr	-948(ra) # 80001b8c <_ZN11BuddySystemC1Ev>
    80002f48:	00100793          	li	a5,1
    80002f4c:	00009717          	auipc	a4,0x9
    80002f50:	88f70623          	sb	a5,-1908(a4) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80002f54:	f65ff06f          	j	80002eb8 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x5c>
    int how_many_objects_into_one_slab = (int)(tmp->size_in_blocks * BLOCK_SIZE - sizeof(Slab) - sizeof(size_t)) / (int)(tmp->objsize);
    80002f58:	00c7179b          	slliw	a5,a4,0xc
    80002f5c:	fd87879b          	addiw	a5,a5,-40
    80002f60:	0327c7bb          	divw	a5,a5,s2
    tmp->num = how_many_objects_into_one_slab;
    80002f64:	02f4bc23          	sd	a5,56(s1)
    tmp->create_free_slab();
    80002f68:	00048513          	mv	a0,s1
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	dcc080e7          	jalr	-564(ra) # 80002d38 <_ZN12kmem_cache_s16create_free_slabEv>
    tmp->next = kmem_cache_s::head;
    80002f74:	00009797          	auipc	a5,0x9
    80002f78:	85c78793          	addi	a5,a5,-1956 # 8000b7d0 <_ZN12kmem_cache_s4headE>
    80002f7c:	0007b703          	ld	a4,0(a5)
    80002f80:	06e4b023          	sd	a4,96(s1)
    kmem_cache_s::head = tmp;
    80002f84:	0097b023          	sd	s1,0(a5)
}
    80002f88:	00048513          	mv	a0,s1
    80002f8c:	03813083          	ld	ra,56(sp)
    80002f90:	03013403          	ld	s0,48(sp)
    80002f94:	02813483          	ld	s1,40(sp)
    80002f98:	02013903          	ld	s2,32(sp)
    80002f9c:	01813983          	ld	s3,24(sp)
    80002fa0:	01013a03          	ld	s4,16(sp)
    80002fa4:	00813a83          	ld	s5,8(sp)
    80002fa8:	04010113          	addi	sp,sp,64
    80002fac:	00008067          	ret
            return nullptr;
    80002fb0:	00000493          	li	s1,0
    80002fb4:	fd5ff06f          	j	80002f88 <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_+0x12c>

0000000080002fb8 <_ZN12kmem_cache_s15kmem_cache_freeEPv>:

// returns -1 if object not found and 0 if removal is completed
int kmem_cache_s::kmem_cache_free(void *objp) {
    80002fb8:	fd010113          	addi	sp,sp,-48
    80002fbc:	02113423          	sd	ra,40(sp)
    80002fc0:	02813023          	sd	s0,32(sp)
    80002fc4:	00913c23          	sd	s1,24(sp)
    80002fc8:	01213823          	sd	s2,16(sp)
    80002fcc:	01313423          	sd	s3,8(sp)
    80002fd0:	01413023          	sd	s4,0(sp)
    80002fd4:	03010413          	addi	s0,sp,48
    80002fd8:	00050a13          	mv	s4,a0
    80002fdc:	00058993          	mv	s3,a1
    // check firstly in partial
    Slab* prev = nullptr;
    for(Slab* tmp = this->slabs_partial; tmp; tmp = tmp->next){
    80002fe0:	00853483          	ld	s1,8(a0)
    Slab* prev = nullptr;
    80002fe4:	00000913          	li	s2,0
    80002fe8:	0180006f          	j	80003000 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x48>
            tmp->decrement_num_of_active();
            size_t number_of_active = tmp->get_number_of_active_objects();
            if(number_of_active == 0){
                // move from partial to free
                if(prev)prev->next = tmp->next;
                else slabs_partial = tmp->next;
    80002fec:	0084b783          	ld	a5,8(s1)
    80002ff0:	00fa3423          	sd	a5,8(s4)
    80002ff4:	08c0006f          	j	80003080 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xc8>
                this->num_slabs_partial--;
                this->num_slabs_free++;
            }
            return 0;
        }
        prev = tmp;
    80002ff8:	00048913          	mv	s2,s1
    for(Slab* tmp = this->slabs_partial; tmp; tmp = tmp->next){
    80002ffc:	0084b483          	ld	s1,8(s1)
    80003000:	0a048663          	beqz	s1,800030ac <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xf4>
        if((size_t)objp > (size_t)tmp &&
    80003004:	ff34fae3          	bgeu	s1,s3,80002ff8 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x40>
        (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
    80003008:	040a3783          	ld	a5,64(s4)
    8000300c:	00c79793          	slli	a5,a5,0xc
    80003010:	00f487b3          	add	a5,s1,a5
    80003014:	ff878793          	addi	a5,a5,-8
        if((size_t)objp > (size_t)tmp &&
    80003018:	fef9f0e3          	bgeu	s3,a5,80002ff8 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x40>
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
    8000301c:	0184b783          	ld	a5,24(s1)
    80003020:	40f98733          	sub	a4,s3,a5
    80003024:	030a3783          	ld	a5,48(s4)
    80003028:	02f75733          	divu	a4,a4,a5
            (tmp->free_objects)[position] = false;
    8000302c:	0104b783          	ld	a5,16(s1)
    80003030:	00e78733          	add	a4,a5,a4
    80003034:	00070023          	sb	zero,0(a4)
            if(this->dtor){
    80003038:	050a3783          	ld	a5,80(s4)
    8000303c:	00078663          	beqz	a5,80003048 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x90>
                this->dtor(objp);
    80003040:	00098513          	mv	a0,s3
    80003044:	000780e7          	jalr	a5
            if(this->ctor){
    80003048:	048a3783          	ld	a5,72(s4)
    8000304c:	00078663          	beqz	a5,80003058 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xa0>
                this->ctor(objp);
    80003050:	00098513          	mv	a0,s3
    80003054:	000780e7          	jalr	a5
            this->num_active_obj--;
    80003058:	068a3783          	ld	a5,104(s4)
    8000305c:	fff78793          	addi	a5,a5,-1
    80003060:	06fa3423          	sd	a5,104(s4)
    friend struct kmem_cache_s;
public:
    size_t get_number_of_active_objects(){return num_active;}
    void* return_first_free_object_and_rearange_list(int, int);
    void increment_num_of_active(){num_active++;}
    void decrement_num_of_active(){num_active--;}
    80003064:	0004b783          	ld	a5,0(s1)
    80003068:	fff78793          	addi	a5,a5,-1
    8000306c:	00f4b023          	sd	a5,0(s1)
            if(number_of_active == 0){
    80003070:	02079a63          	bnez	a5,800030a4 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xec>
                if(prev)prev->next = tmp->next;
    80003074:	f6090ce3          	beqz	s2,80002fec <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x34>
    80003078:	0084b783          	ld	a5,8(s1)
    8000307c:	00f93423          	sd	a5,8(s2)
                tmp->next = this->slabs_free;
    80003080:	010a3783          	ld	a5,16(s4)
    80003084:	00f4b423          	sd	a5,8(s1)
                this->slabs_free = tmp;
    80003088:	009a3823          	sd	s1,16(s4)
                this->num_slabs_partial--;
    8000308c:	020a3783          	ld	a5,32(s4)
    80003090:	fff78793          	addi	a5,a5,-1
    80003094:	02fa3023          	sd	a5,32(s4)
                this->num_slabs_free++;
    80003098:	028a3783          	ld	a5,40(s4)
    8000309c:	00178793          	addi	a5,a5,1
    800030a0:	02fa3423          	sd	a5,40(s4)
            return 0;
    800030a4:	00000513          	li	a0,0
    800030a8:	0cc0006f          	j	80003174 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1bc>
    }
    // check in full
    prev = nullptr;
    for(Slab* tmp = this->slabs_full; tmp; tmp = tmp->next){
    800030ac:	000a3903          	ld	s2,0(s4)
    800030b0:	0180006f          	j	800030c8 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x110>
            this->num_active_obj--;
            tmp->decrement_num_of_active();

            // move from full to partial
            if(prev)prev->next = tmp->next;
            else slabs_full = tmp->next;
    800030b4:	00893783          	ld	a5,8(s2)
    800030b8:	00fa3023          	sd	a5,0(s4)
    800030bc:	0880006f          	j	80003144 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x18c>
            this->num_slabs_full--;
            this->num_slabs_partial++;

            return 0;
        }
        prev = tmp;
    800030c0:	00090493          	mv	s1,s2
    for(Slab* tmp = this->slabs_full; tmp; tmp = tmp->next){
    800030c4:	00893903          	ld	s2,8(s2)
    800030c8:	0a090463          	beqz	s2,80003170 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1b8>
        if((size_t)objp > (size_t)tmp &&
    800030cc:	ff397ae3          	bgeu	s2,s3,800030c0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x108>
           (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
    800030d0:	040a3783          	ld	a5,64(s4)
    800030d4:	00c79793          	slli	a5,a5,0xc
    800030d8:	00f907b3          	add	a5,s2,a5
    800030dc:	ff878793          	addi	a5,a5,-8
        if((size_t)objp > (size_t)tmp &&
    800030e0:	fef9f0e3          	bgeu	s3,a5,800030c0 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x108>
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
    800030e4:	01893783          	ld	a5,24(s2)
    800030e8:	40f98733          	sub	a4,s3,a5
    800030ec:	030a3783          	ld	a5,48(s4)
    800030f0:	02f75733          	divu	a4,a4,a5
            (tmp->free_objects)[position] = false;
    800030f4:	01093783          	ld	a5,16(s2)
    800030f8:	00e78733          	add	a4,a5,a4
    800030fc:	00070023          	sb	zero,0(a4)
            if(this->dtor){
    80003100:	050a3783          	ld	a5,80(s4)
    80003104:	00078663          	beqz	a5,80003110 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x158>
                this->dtor(objp);
    80003108:	00098513          	mv	a0,s3
    8000310c:	000780e7          	jalr	a5
            if(this->ctor){
    80003110:	048a3783          	ld	a5,72(s4)
    80003114:	00078663          	beqz	a5,80003120 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x168>
                this->ctor(objp);
    80003118:	00098513          	mv	a0,s3
    8000311c:	000780e7          	jalr	a5
            this->num_active_obj--;
    80003120:	068a3783          	ld	a5,104(s4)
    80003124:	fff78793          	addi	a5,a5,-1
    80003128:	06fa3423          	sd	a5,104(s4)
    8000312c:	00093783          	ld	a5,0(s2)
    80003130:	fff78793          	addi	a5,a5,-1
    80003134:	00f93023          	sd	a5,0(s2)
            if(prev)prev->next = tmp->next;
    80003138:	f6048ee3          	beqz	s1,800030b4 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0xfc>
    8000313c:	00893783          	ld	a5,8(s2)
    80003140:	00f4b423          	sd	a5,8(s1)
            tmp->next = this->slabs_partial;
    80003144:	008a3783          	ld	a5,8(s4)
    80003148:	00f93423          	sd	a5,8(s2)
            this->slabs_partial = tmp;
    8000314c:	012a3423          	sd	s2,8(s4)
            this->num_slabs_full--;
    80003150:	018a3783          	ld	a5,24(s4)
    80003154:	fff78793          	addi	a5,a5,-1
    80003158:	00fa3c23          	sd	a5,24(s4)
            this->num_slabs_partial++;
    8000315c:	020a3783          	ld	a5,32(s4)
    80003160:	00178793          	addi	a5,a5,1
    80003164:	02fa3023          	sd	a5,32(s4)
            return 0;
    80003168:	00000513          	li	a0,0
    8000316c:	0080006f          	j	80003174 <_ZN12kmem_cache_s15kmem_cache_freeEPv+0x1bc>
    }
    return -1;
    80003170:	fff00513          	li	a0,-1
}
    80003174:	02813083          	ld	ra,40(sp)
    80003178:	02013403          	ld	s0,32(sp)
    8000317c:	01813483          	ld	s1,24(sp)
    80003180:	01013903          	ld	s2,16(sp)
    80003184:	00813983          	ld	s3,8(sp)
    80003188:	00013a03          	ld	s4,0(sp)
    8000318c:	03010113          	addi	sp,sp,48
    80003190:	00008067          	ret

0000000080003194 <_ZN12kmem_cache_s20check_if_name_existsEPKc>:
    void* elem = cache->kmem_cache_alloc();
    return elem;
}

// returns cache with given name, or nullptr if there is no such cache
kmem_cache_s *kmem_cache_s::check_if_name_exists(const char* name) {
    80003194:	fe010113          	addi	sp,sp,-32
    80003198:	00113c23          	sd	ra,24(sp)
    8000319c:	00813823          	sd	s0,16(sp)
    800031a0:	00913423          	sd	s1,8(sp)
    800031a4:	01213023          	sd	s2,0(sp)
    800031a8:	02010413          	addi	s0,sp,32
    800031ac:	00050913          	mv	s2,a0
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    800031b0:	00008497          	auipc	s1,0x8
    800031b4:	6204b483          	ld	s1,1568(s1) # 8000b7d0 <_ZN12kmem_cache_s4headE>
    800031b8:	02048063          	beqz	s1,800031d8 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x44>
        if(string_compare(tmp->name, name)){
    800031bc:	00090593          	mv	a1,s2
    800031c0:	0584b503          	ld	a0,88(s1)
    800031c4:	fffff097          	auipc	ra,0xfffff
    800031c8:	480080e7          	jalr	1152(ra) # 80002644 <_Z14string_comparePKcS0_>
    800031cc:	00051663          	bnez	a0,800031d8 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x44>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    800031d0:	0604b483          	ld	s1,96(s1)
    800031d4:	fe5ff06f          	j	800031b8 <_ZN12kmem_cache_s20check_if_name_existsEPKc+0x24>
            return tmp;
        }
    }
    return nullptr;
}
    800031d8:	00048513          	mv	a0,s1
    800031dc:	01813083          	ld	ra,24(sp)
    800031e0:	01013403          	ld	s0,16(sp)
    800031e4:	00813483          	ld	s1,8(sp)
    800031e8:	00013903          	ld	s2,0(sp)
    800031ec:	02010113          	addi	sp,sp,32
    800031f0:	00008067          	ret

00000000800031f4 <_ZN12kmem_cache_s3powEm>:

size_t kmem_cache_s::pow(size_t deg){
    800031f4:	ff010113          	addi	sp,sp,-16
    800031f8:	00813423          	sd	s0,8(sp)
    800031fc:	01010413          	addi	s0,sp,16
    80003200:	00050713          	mv	a4,a0
    size_t tmp = 1;
    for(size_t i = 0; i < deg; i++){
    80003204:	00000793          	li	a5,0
    size_t tmp = 1;
    80003208:	00100513          	li	a0,1
    for(size_t i = 0; i < deg; i++){
    8000320c:	00e7f863          	bgeu	a5,a4,8000321c <_ZN12kmem_cache_s3powEm+0x28>
        tmp <<= 1;
    80003210:	00151513          	slli	a0,a0,0x1
    for(size_t i = 0; i < deg; i++){
    80003214:	00178793          	addi	a5,a5,1
    80003218:	ff5ff06f          	j	8000320c <_ZN12kmem_cache_s3powEm+0x18>
    }
    return tmp;
}
    8000321c:	00813403          	ld	s0,8(sp)
    80003220:	01010113          	addi	sp,sp,16
    80003224:	00008067          	ret

0000000080003228 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm>:

bool kmem_cache_s::is_small_buffer_size_correct(size_t size) {
    80003228:	ff010113          	addi	sp,sp,-16
    8000322c:	00813423          	sd	s0,8(sp)
    80003230:	01010413          	addi	s0,sp,16
    size_t num = 1;
    size_t iter = 0;
    80003234:	00000713          	li	a4,0
    size_t num = 1;
    80003238:	00100793          	li	a5,1
    8000323c:	0080006f          	j	80003244 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x1c>
    while(num < size){
        num <<= 1;
        iter++;
    80003240:	00068713          	mv	a4,a3
    while(num < size){
    80003244:	02a7f263          	bgeu	a5,a0,80003268 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x40>
        num <<= 1;
    80003248:	00179793          	slli	a5,a5,0x1
        iter++;
    8000324c:	00170693          	addi	a3,a4,1
        if(num == size){
    80003250:	fef518e3          	bne	a0,a5,80003240 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x18>
            if(iter >= 5 && iter <= 17){
    80003254:	ffc70713          	addi	a4,a4,-4
    80003258:	00c00793          	li	a5,12
    8000325c:	00e7ee63          	bltu	a5,a4,80003278 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x50>
                return true;
    80003260:	00100513          	li	a0,1
    80003264:	0080006f          	j	8000326c <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x44>
            }
            else return false;
        }
    }
    return false;
    80003268:	00000513          	li	a0,0
}
    8000326c:	00813403          	ld	s0,8(sp)
    80003270:	01010113          	addi	sp,sp,16
    80003274:	00008067          	ret
            else return false;
    80003278:	00000513          	li	a0,0
    8000327c:	ff1ff06f          	j	8000326c <_ZN12kmem_cache_s28is_small_buffer_size_correctEm+0x44>

0000000080003280 <_ZN12kmem_cache_s5kfreeEPKv>:

// returns 0 if delete is executed, -1 if not
int kmem_cache_s::kfree(const void *objp) {
    80003280:	fe010113          	addi	sp,sp,-32
    80003284:	00113c23          	sd	ra,24(sp)
    80003288:	00813823          	sd	s0,16(sp)
    8000328c:	00913423          	sd	s1,8(sp)
    80003290:	01213023          	sd	s2,0(sp)
    80003294:	02010413          	addi	s0,sp,32
    80003298:	00050913          	mv	s2,a0
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    8000329c:	00008497          	auipc	s1,0x8
    800032a0:	5344b483          	ld	s1,1332(s1) # 8000b7d0 <_ZN12kmem_cache_s4headE>
    800032a4:	02048063          	beqz	s1,800032c4 <_ZN12kmem_cache_s5kfreeEPKv+0x44>
        if(tmp->kmem_cache_free((void*)objp) == 0)return 0;
    800032a8:	00090593          	mv	a1,s2
    800032ac:	00048513          	mv	a0,s1
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	d08080e7          	jalr	-760(ra) # 80002fb8 <_ZN12kmem_cache_s15kmem_cache_freeEPv>
    800032b8:	00050863          	beqz	a0,800032c8 <_ZN12kmem_cache_s5kfreeEPKv+0x48>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    800032bc:	0604b483          	ld	s1,96(s1)
    800032c0:	fe5ff06f          	j	800032a4 <_ZN12kmem_cache_s5kfreeEPKv+0x24>
    }
    // if not found return 1;
    return -1;
    800032c4:	fff00513          	li	a0,-1
}
    800032c8:	01813083          	ld	ra,24(sp)
    800032cc:	01013403          	ld	s0,16(sp)
    800032d0:	00813483          	ld	s1,8(sp)
    800032d4:	00013903          	ld	s2,0(sp)
    800032d8:	02010113          	addi	sp,sp,32
    800032dc:	00008067          	ret

00000000800032e0 <_ZN12kmem_cache_s18kmem_cache_destroyEm>:

///
/// \param addr - address of cache that we deleting
/// \return 0 - if deleted all, -1 - if error ocurred
int kmem_cache_s::kmem_cache_destroy(size_t addr) {
    800032e0:	fd010113          	addi	sp,sp,-48
    800032e4:	02113423          	sd	ra,40(sp)
    800032e8:	02813023          	sd	s0,32(sp)
    800032ec:	00913c23          	sd	s1,24(sp)
    800032f0:	01213823          	sd	s2,16(sp)
    800032f4:	01313423          	sd	s3,8(sp)
    800032f8:	01413023          	sd	s4,0(sp)
    800032fc:	03010413          	addi	s0,sp,48
    80003300:	00050a13          	mv	s4,a0
    80003304:	00058993          	mv	s3,a1
    Slab *prev = nullptr, *tmp = this->slabs_full;
    80003308:	00053483          	ld	s1,0(a0)
    8000330c:	01c0006f          	j	80003328 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x48>
    while (tmp) {
        prev = tmp;
        tmp = tmp->next;
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003310:	00048593          	mv	a1,s1
    80003314:	00008517          	auipc	a0,0x8
    80003318:	4cc50513          	addi	a0,a0,1228 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    8000331c:	fffff097          	auipc	ra,0xfffff
    80003320:	b70080e7          	jalr	-1168(ra) # 80001e8c <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003324:	00090493          	mv	s1,s2
    while (tmp) {
    80003328:	02048a63          	beqz	s1,8000335c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x7c>
        tmp = tmp->next;
    8000332c:	0084b903          	ld	s2,8(s1)
    80003330:	00008797          	auipc	a5,0x8
    80003334:	4a87c783          	lbu	a5,1192(a5) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003338:	fc079ce3          	bnez	a5,80003310 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x30>
    8000333c:	00008517          	auipc	a0,0x8
    80003340:	4a450513          	addi	a0,a0,1188 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003344:	fffff097          	auipc	ra,0xfffff
    80003348:	848080e7          	jalr	-1976(ra) # 80001b8c <_ZN11BuddySystemC1Ev>
    8000334c:	00100793          	li	a5,1
    80003350:	00008717          	auipc	a4,0x8
    80003354:	48f70423          	sb	a5,1160(a4) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80003358:	fb9ff06f          	j	80003310 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x30>
    }
    prev = nullptr; tmp = this->slabs_partial;
    8000335c:	008a3483          	ld	s1,8(s4)
    80003360:	0380006f          	j	80003398 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xb8>
    80003364:	00008517          	auipc	a0,0x8
    80003368:	47c50513          	addi	a0,a0,1148 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    8000336c:	fffff097          	auipc	ra,0xfffff
    80003370:	820080e7          	jalr	-2016(ra) # 80001b8c <_ZN11BuddySystemC1Ev>
    80003374:	00100793          	li	a5,1
    80003378:	00008717          	auipc	a4,0x8
    8000337c:	46f70023          	sb	a5,1120(a4) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    while (tmp) {
        prev = tmp;
        tmp = tmp->next;
        BuddySystem::getInstance().buddyFree((size_t)prev);
    80003380:	00048593          	mv	a1,s1
    80003384:	00008517          	auipc	a0,0x8
    80003388:	45c50513          	addi	a0,a0,1116 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    8000338c:	fffff097          	auipc	ra,0xfffff
    80003390:	b00080e7          	jalr	-1280(ra) # 80001e8c <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    80003394:	00090493          	mv	s1,s2
    while (tmp) {
    80003398:	00048c63          	beqz	s1,800033b0 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xd0>
        tmp = tmp->next;
    8000339c:	0084b903          	ld	s2,8(s1)
    800033a0:	00008797          	auipc	a5,0x8
    800033a4:	4387c783          	lbu	a5,1080(a5) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    800033a8:	fc079ce3          	bnez	a5,80003380 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xa0>
    800033ac:	fb9ff06f          	j	80003364 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x84>
    }
    prev = nullptr; tmp = this->slabs_free;
    800033b0:	010a3483          	ld	s1,16(s4)
    800033b4:	0380006f          	j	800033ec <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x10c>
    800033b8:	00008517          	auipc	a0,0x8
    800033bc:	42850513          	addi	a0,a0,1064 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	7cc080e7          	jalr	1996(ra) # 80001b8c <_ZN11BuddySystemC1Ev>
    800033c8:	00100793          	li	a5,1
    800033cc:	00008717          	auipc	a4,0x8
    800033d0:	40f70623          	sb	a5,1036(a4) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    while (tmp) {
        prev = tmp;
        tmp = tmp->next;
        BuddySystem::getInstance().buddyFree((size_t)prev);
    800033d4:	00048593          	mv	a1,s1
    800033d8:	00008517          	auipc	a0,0x8
    800033dc:	40850513          	addi	a0,a0,1032 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    800033e0:	fffff097          	auipc	ra,0xfffff
    800033e4:	aac080e7          	jalr	-1364(ra) # 80001e8c <_ZN11BuddySystem9buddyFreeEm>
        tmp = tmp->next;
    800033e8:	00090493          	mv	s1,s2
    while (tmp) {
    800033ec:	00048c63          	beqz	s1,80003404 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x124>
        tmp = tmp->next;
    800033f0:	0084b903          	ld	s2,8(s1)
    800033f4:	00008797          	auipc	a5,0x8
    800033f8:	3e47c783          	lbu	a5,996(a5) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    800033fc:	fc079ce3          	bnez	a5,800033d4 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xf4>
    80003400:	fb9ff06f          	j	800033b8 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0xd8>
    }

    kmem_cache_s* cache = kmem_cache_s::head, *prev_cache = nullptr;
    80003404:	00008797          	auipc	a5,0x8
    80003408:	3cc7b783          	ld	a5,972(a5) # 8000b7d0 <_ZN12kmem_cache_s4headE>
    8000340c:	02c0006f          	j	80003438 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x158>
    80003410:	00008517          	auipc	a0,0x8
    80003414:	3d050513          	addi	a0,a0,976 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80003418:	ffffe097          	auipc	ra,0xffffe
    8000341c:	774080e7          	jalr	1908(ra) # 80001b8c <_ZN11BuddySystemC1Ev>
    80003420:	00100793          	li	a5,1
    80003424:	00008717          	auipc	a4,0x8
    80003428:	3af70a23          	sb	a5,948(a4) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    8000342c:	0340006f          	j	80003460 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x180>
                cache->next = nullptr;
                BuddySystem::getInstance().buddyFree((size_t)cache);
                return 0;
            }
        }
        prev_cache = cache;
    80003430:	00078493          	mv	s1,a5
        cache = cache->next;
    80003434:	0607b783          	ld	a5,96(a5)
    while(cache){
    80003438:	04078263          	beqz	a5,8000347c <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x19c>
        if((size_t)cache == addr){
    8000343c:	00078913          	mv	s2,a5
    80003440:	ff3798e3          	bne	a5,s3,80003430 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x150>
            if(prev_cache){
    80003444:	fe0486e3          	beqz	s1,80003430 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x150>
                prev_cache->next = cache->next;
    80003448:	0607b703          	ld	a4,96(a5)
    8000344c:	06e4b023          	sd	a4,96(s1)
                cache->next = nullptr;
    80003450:	0607b023          	sd	zero,96(a5)
    80003454:	00008797          	auipc	a5,0x8
    80003458:	3847c783          	lbu	a5,900(a5) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    8000345c:	fa078ae3          	beqz	a5,80003410 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x130>
                BuddySystem::getInstance().buddyFree((size_t)cache);
    80003460:	00090593          	mv	a1,s2
    80003464:	00008517          	auipc	a0,0x8
    80003468:	37c50513          	addi	a0,a0,892 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    8000346c:	fffff097          	auipc	ra,0xfffff
    80003470:	a20080e7          	jalr	-1504(ra) # 80001e8c <_ZN11BuddySystem9buddyFreeEm>
                return 0;
    80003474:	00000513          	li	a0,0
    80003478:	0080006f          	j	80003480 <_ZN12kmem_cache_s18kmem_cache_destroyEm+0x1a0>
    }
    return -1;
    8000347c:	fff00513          	li	a0,-1
}
    80003480:	02813083          	ld	ra,40(sp)
    80003484:	02013403          	ld	s0,32(sp)
    80003488:	01813483          	ld	s1,24(sp)
    8000348c:	01013903          	ld	s2,16(sp)
    80003490:	00813983          	ld	s3,8(sp)
    80003494:	00013a03          	ld	s4,0(sp)
    80003498:	03010113          	addi	sp,sp,48
    8000349c:	00008067          	ret

00000000800034a0 <_ZN12kmem_cache_s15kmem_cache_infoEv>:

void kmem_cache_s::kmem_cache_info() {
    800034a0:	fd010113          	addi	sp,sp,-48
    800034a4:	02113423          	sd	ra,40(sp)
    800034a8:	02813023          	sd	s0,32(sp)
    800034ac:	00913c23          	sd	s1,24(sp)
    800034b0:	01213823          	sd	s2,16(sp)
    800034b4:	01313423          	sd	s3,8(sp)
    800034b8:	01413023          	sd	s4,0(sp)
    800034bc:	03010413          	addi	s0,sp,48
    800034c0:	00050913          	mv	s2,a0

    printString("------------------- CACHE INFO -------------------\n");
    800034c4:	00006517          	auipc	a0,0x6
    800034c8:	b6c50513          	addi	a0,a0,-1172 # 80009030 <CONSOLE_STATUS+0x20>
    800034cc:	00002097          	auipc	ra,0x2
    800034d0:	f9c080e7          	jalr	-100(ra) # 80005468 <_Z11printStringPKc>
    // print name and object size
    printString("Ime: ");
    800034d4:	00006517          	auipc	a0,0x6
    800034d8:	b9450513          	addi	a0,a0,-1132 # 80009068 <CONSOLE_STATUS+0x58>
    800034dc:	00002097          	auipc	ra,0x2
    800034e0:	f8c080e7          	jalr	-116(ra) # 80005468 <_Z11printStringPKc>
    printString(name);
    800034e4:	05893503          	ld	a0,88(s2)
    800034e8:	00002097          	auipc	ra,0x2
    800034ec:	f80080e7          	jalr	-128(ra) # 80005468 <_Z11printStringPKc>
    printString("\n");
    800034f0:	00006517          	auipc	a0,0x6
    800034f4:	d5850513          	addi	a0,a0,-680 # 80009248 <CONSOLE_STATUS+0x238>
    800034f8:	00002097          	auipc	ra,0x2
    800034fc:	f70080e7          	jalr	-144(ra) # 80005468 <_Z11printStringPKc>
    printString("Velicina objekta: ");
    80003500:	00006517          	auipc	a0,0x6
    80003504:	b7050513          	addi	a0,a0,-1168 # 80009070 <CONSOLE_STATUS+0x60>
    80003508:	00002097          	auipc	ra,0x2
    8000350c:	f60080e7          	jalr	-160(ra) # 80005468 <_Z11printStringPKc>
    printInt(objsize);
    80003510:	00000613          	li	a2,0
    80003514:	00a00593          	li	a1,10
    80003518:	03092503          	lw	a0,48(s2)
    8000351c:	00002097          	auipc	ra,0x2
    80003520:	0e4080e7          	jalr	228(ra) # 80005600 <_Z8printIntiii>
    printString("\n");
    80003524:	00006517          	auipc	a0,0x6
    80003528:	d2450513          	addi	a0,a0,-732 # 80009248 <CONSOLE_STATUS+0x238>
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	f3c080e7          	jalr	-196(ra) # 80005468 <_Z11printStringPKc>

    // print size of cache (in blocks)
    size_t num_of_slabs = num_slabs_full + num_slabs_partial + num_slabs_free;
    80003534:	01893983          	ld	s3,24(s2)
    80003538:	02093783          	ld	a5,32(s2)
    8000353c:	00f989b3          	add	s3,s3,a5
    80003540:	02893503          	ld	a0,40(s2)
    80003544:	00a989b3          	add	s3,s3,a0
    size_t size_of_cache_in_blocks = num_of_slabs * size_in_blocks + 1;
    80003548:	04093483          	ld	s1,64(s2)
    8000354c:	033484b3          	mul	s1,s1,s3
    80003550:	00148493          	addi	s1,s1,1
    printString("Velicina kesa u blokovima: ");
    80003554:	00006517          	auipc	a0,0x6
    80003558:	b3450513          	addi	a0,a0,-1228 # 80009088 <CONSOLE_STATUS+0x78>
    8000355c:	00002097          	auipc	ra,0x2
    80003560:	f0c080e7          	jalr	-244(ra) # 80005468 <_Z11printStringPKc>
    printInt(size_of_cache_in_blocks);
    80003564:	00000613          	li	a2,0
    80003568:	00a00593          	li	a1,10
    8000356c:	0004851b          	sext.w	a0,s1
    80003570:	00002097          	auipc	ra,0x2
    80003574:	090080e7          	jalr	144(ra) # 80005600 <_Z8printIntiii>
    printString("\n");
    80003578:	00006517          	auipc	a0,0x6
    8000357c:	cd050513          	addi	a0,a0,-816 # 80009248 <CONSOLE_STATUS+0x238>
    80003580:	00002097          	auipc	ra,0x2
    80003584:	ee8080e7          	jalr	-280(ra) # 80005468 <_Z11printStringPKc>

    // print number of slabs in cache
    printString("Broj ploca u kesu: ");
    80003588:	00006517          	auipc	a0,0x6
    8000358c:	b2050513          	addi	a0,a0,-1248 # 800090a8 <CONSOLE_STATUS+0x98>
    80003590:	00002097          	auipc	ra,0x2
    80003594:	ed8080e7          	jalr	-296(ra) # 80005468 <_Z11printStringPKc>
    printInt(num_of_slabs);
    80003598:	00000613          	li	a2,0
    8000359c:	00a00593          	li	a1,10
    800035a0:	0009851b          	sext.w	a0,s3
    800035a4:	00002097          	auipc	ra,0x2
    800035a8:	05c080e7          	jalr	92(ra) # 80005600 <_Z8printIntiii>
    printString("\n");
    800035ac:	00006517          	auipc	a0,0x6
    800035b0:	c9c50513          	addi	a0,a0,-868 # 80009248 <CONSOLE_STATUS+0x238>
    800035b4:	00002097          	auipc	ra,0x2
    800035b8:	eb4080e7          	jalr	-332(ra) # 80005468 <_Z11printStringPKc>

    // number of objects in one slab
    printString("Broj objekata koji staju u jednu plocu: ");
    800035bc:	00006517          	auipc	a0,0x6
    800035c0:	b0450513          	addi	a0,a0,-1276 # 800090c0 <CONSOLE_STATUS+0xb0>
    800035c4:	00002097          	auipc	ra,0x2
    800035c8:	ea4080e7          	jalr	-348(ra) # 80005468 <_Z11printStringPKc>
    printInt(num);
    800035cc:	00000613          	li	a2,0
    800035d0:	00a00593          	li	a1,10
    800035d4:	03892503          	lw	a0,56(s2)
    800035d8:	00002097          	auipc	ra,0x2
    800035dc:	028080e7          	jalr	40(ra) # 80005600 <_Z8printIntiii>
    printString("\n");
    800035e0:	00006517          	auipc	a0,0x6
    800035e4:	c6850513          	addi	a0,a0,-920 # 80009248 <CONSOLE_STATUS+0x238>
    800035e8:	00002097          	auipc	ra,0x2
    800035ec:	e80080e7          	jalr	-384(ra) # 80005468 <_Z11printStringPKc>

    // number of objects in one slab
    printString("Broj aktivnih objekata u kesu: ");
    800035f0:	00006517          	auipc	a0,0x6
    800035f4:	b0050513          	addi	a0,a0,-1280 # 800090f0 <CONSOLE_STATUS+0xe0>
    800035f8:	00002097          	auipc	ra,0x2
    800035fc:	e70080e7          	jalr	-400(ra) # 80005468 <_Z11printStringPKc>
    printInt(num_active_obj);
    80003600:	00000613          	li	a2,0
    80003604:	00a00593          	li	a1,10
    80003608:	06892503          	lw	a0,104(s2)
    8000360c:	00002097          	auipc	ra,0x2
    80003610:	ff4080e7          	jalr	-12(ra) # 80005600 <_Z8printIntiii>
    printString("\n");
    80003614:	00006517          	auipc	a0,0x6
    80003618:	c3450513          	addi	a0,a0,-972 # 80009248 <CONSOLE_STATUS+0x238>
    8000361c:	00002097          	auipc	ra,0x2
    80003620:	e4c080e7          	jalr	-436(ra) # 80005468 <_Z11printStringPKc>

    // stanje u slabovima
    printString("slobodni: ");
    80003624:	00006517          	auipc	a0,0x6
    80003628:	aec50513          	addi	a0,a0,-1300 # 80009110 <CONSOLE_STATUS+0x100>
    8000362c:	00002097          	auipc	ra,0x2
    80003630:	e3c080e7          	jalr	-452(ra) # 80005468 <_Z11printStringPKc>
    for(Slab* tmp = slabs_free; tmp; tmp = tmp->next){
    80003634:	01093483          	ld	s1,16(s2)
    80003638:	02048863          	beqz	s1,80003668 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x1c8>
        printInt(tmp->get_number_of_active_objects());
    8000363c:	00000613          	li	a2,0
    80003640:	00a00593          	li	a1,10
    80003644:	0004a503          	lw	a0,0(s1)
    80003648:	00002097          	auipc	ra,0x2
    8000364c:	fb8080e7          	jalr	-72(ra) # 80005600 <_Z8printIntiii>
        printString(" ");
    80003650:	00006517          	auipc	a0,0x6
    80003654:	b7050513          	addi	a0,a0,-1168 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003658:	00002097          	auipc	ra,0x2
    8000365c:	e10080e7          	jalr	-496(ra) # 80005468 <_Z11printStringPKc>
    for(Slab* tmp = slabs_free; tmp; tmp = tmp->next){
    80003660:	0084b483          	ld	s1,8(s1)
    80003664:	fd5ff06f          	j	80003638 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x198>
    }
    printString("\n");
    80003668:	00006517          	auipc	a0,0x6
    8000366c:	be050513          	addi	a0,a0,-1056 # 80009248 <CONSOLE_STATUS+0x238>
    80003670:	00002097          	auipc	ra,0x2
    80003674:	df8080e7          	jalr	-520(ra) # 80005468 <_Z11printStringPKc>
    printString("zaprljani: ");
    80003678:	00006517          	auipc	a0,0x6
    8000367c:	aa850513          	addi	a0,a0,-1368 # 80009120 <CONSOLE_STATUS+0x110>
    80003680:	00002097          	auipc	ra,0x2
    80003684:	de8080e7          	jalr	-536(ra) # 80005468 <_Z11printStringPKc>
    for(Slab* tmp = slabs_partial; tmp; tmp = tmp->next){
    80003688:	00893483          	ld	s1,8(s2)
    8000368c:	02048863          	beqz	s1,800036bc <_ZN12kmem_cache_s15kmem_cache_infoEv+0x21c>
        printInt(tmp->get_number_of_active_objects());
    80003690:	00000613          	li	a2,0
    80003694:	00a00593          	li	a1,10
    80003698:	0004a503          	lw	a0,0(s1)
    8000369c:	00002097          	auipc	ra,0x2
    800036a0:	f64080e7          	jalr	-156(ra) # 80005600 <_Z8printIntiii>
        printString(" ");
    800036a4:	00006517          	auipc	a0,0x6
    800036a8:	b1c50513          	addi	a0,a0,-1252 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800036ac:	00002097          	auipc	ra,0x2
    800036b0:	dbc080e7          	jalr	-580(ra) # 80005468 <_Z11printStringPKc>
    for(Slab* tmp = slabs_partial; tmp; tmp = tmp->next){
    800036b4:	0084b483          	ld	s1,8(s1)
    800036b8:	fd5ff06f          	j	8000368c <_ZN12kmem_cache_s15kmem_cache_infoEv+0x1ec>
    }
    printString("\n");
    800036bc:	00006517          	auipc	a0,0x6
    800036c0:	b8c50513          	addi	a0,a0,-1140 # 80009248 <CONSOLE_STATUS+0x238>
    800036c4:	00002097          	auipc	ra,0x2
    800036c8:	da4080e7          	jalr	-604(ra) # 80005468 <_Z11printStringPKc>
    printString("puni: ");
    800036cc:	00006517          	auipc	a0,0x6
    800036d0:	a6450513          	addi	a0,a0,-1436 # 80009130 <CONSOLE_STATUS+0x120>
    800036d4:	00002097          	auipc	ra,0x2
    800036d8:	d94080e7          	jalr	-620(ra) # 80005468 <_Z11printStringPKc>
    for(Slab* tmp = slabs_full; tmp; tmp = tmp->next){
    800036dc:	00093483          	ld	s1,0(s2)
    800036e0:	02048863          	beqz	s1,80003710 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x270>
        printInt(tmp->get_number_of_active_objects());
    800036e4:	00000613          	li	a2,0
    800036e8:	00a00593          	li	a1,10
    800036ec:	0004a503          	lw	a0,0(s1)
    800036f0:	00002097          	auipc	ra,0x2
    800036f4:	f10080e7          	jalr	-240(ra) # 80005600 <_Z8printIntiii>
        printString(" ");
    800036f8:	00006517          	auipc	a0,0x6
    800036fc:	ac850513          	addi	a0,a0,-1336 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80003700:	00002097          	auipc	ra,0x2
    80003704:	d68080e7          	jalr	-664(ra) # 80005468 <_Z11printStringPKc>
    for(Slab* tmp = slabs_full; tmp; tmp = tmp->next){
    80003708:	0084b483          	ld	s1,8(s1)
    8000370c:	fd5ff06f          	j	800036e0 <_ZN12kmem_cache_s15kmem_cache_infoEv+0x240>
    }
    printString("\n");
    80003710:	00006517          	auipc	a0,0x6
    80003714:	b3850513          	addi	a0,a0,-1224 # 80009248 <CONSOLE_STATUS+0x238>
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	d50080e7          	jalr	-688(ra) # 80005468 <_Z11printStringPKc>

    // number of times cache shrank
    printString("Broj uspesnih smanjenja kesa: ");
    80003720:	00006517          	auipc	a0,0x6
    80003724:	a1850513          	addi	a0,a0,-1512 # 80009138 <CONSOLE_STATUS+0x128>
    80003728:	00002097          	auipc	ra,0x2
    8000372c:	d40080e7          	jalr	-704(ra) # 80005468 <_Z11printStringPKc>
    printInt(shrink);
    80003730:	00000613          	li	a2,0
    80003734:	00a00593          	li	a1,10
    80003738:	07892503          	lw	a0,120(s2)
    8000373c:	00002097          	auipc	ra,0x2
    80003740:	ec4080e7          	jalr	-316(ra) # 80005600 <_Z8printIntiii>
    printString("\n");
    80003744:	00006517          	auipc	a0,0x6
    80003748:	b0450513          	addi	a0,a0,-1276 # 80009248 <CONSOLE_STATUS+0x238>
    8000374c:	00002097          	auipc	ra,0x2
    80003750:	d1c080e7          	jalr	-740(ra) # 80005468 <_Z11printStringPKc>

    // metedata
    printString("Velicina metapodataka za kmem_cache_s: ");
    80003754:	00006517          	auipc	a0,0x6
    80003758:	a0450513          	addi	a0,a0,-1532 # 80009158 <CONSOLE_STATUS+0x148>
    8000375c:	00002097          	auipc	ra,0x2
    80003760:	d0c080e7          	jalr	-756(ra) # 80005468 <_Z11printStringPKc>
    printInt(sizeof(kmem_cache_s));
    80003764:	00000613          	li	a2,0
    80003768:	00a00593          	li	a1,10
    8000376c:	08000513          	li	a0,128
    80003770:	00002097          	auipc	ra,0x2
    80003774:	e90080e7          	jalr	-368(ra) # 80005600 <_Z8printIntiii>
    printString("\n");
    80003778:	00006517          	auipc	a0,0x6
    8000377c:	ad050513          	addi	a0,a0,-1328 # 80009248 <CONSOLE_STATUS+0x238>
    80003780:	00002097          	auipc	ra,0x2
    80003784:	ce8080e7          	jalr	-792(ra) # 80005468 <_Z11printStringPKc>
    printString("Velicina metapodataka za Slab: ");
    80003788:	00006517          	auipc	a0,0x6
    8000378c:	9f850513          	addi	a0,a0,-1544 # 80009180 <CONSOLE_STATUS+0x170>
    80003790:	00002097          	auipc	ra,0x2
    80003794:	cd8080e7          	jalr	-808(ra) # 80005468 <_Z11printStringPKc>
    printInt(sizeof(Slab));
    80003798:	00000613          	li	a2,0
    8000379c:	00a00593          	li	a1,10
    800037a0:	02000513          	li	a0,32
    800037a4:	00002097          	auipc	ra,0x2
    800037a8:	e5c080e7          	jalr	-420(ra) # 80005600 <_Z8printIntiii>
    printString("\n");
    800037ac:	00006517          	auipc	a0,0x6
    800037b0:	a9c50513          	addi	a0,a0,-1380 # 80009248 <CONSOLE_STATUS+0x238>
    800037b4:	00002097          	auipc	ra,0x2
    800037b8:	cb4080e7          	jalr	-844(ra) # 80005468 <_Z11printStringPKc>

    // percentage of fullfilment of cache
    size_t neto = sizeof(kmem_cache_s) + num_of_slabs * sizeof(Slab) + num_active_obj * objsize;
    800037bc:	00498a13          	addi	s4,s3,4
    800037c0:	005a1a13          	slli	s4,s4,0x5
    800037c4:	06893783          	ld	a5,104(s2)
    800037c8:	03093703          	ld	a4,48(s2)
    800037cc:	02e787b3          	mul	a5,a5,a4
    800037d0:	00fa0a33          	add	s4,s4,a5
    size_t bruto = (1 + num_of_slabs * size_in_blocks) * BLOCK_SIZE;
    800037d4:	04093483          	ld	s1,64(s2)
    800037d8:	033484b3          	mul	s1,s1,s3
    800037dc:	00148493          	addi	s1,s1,1
    800037e0:	00c49493          	slli	s1,s1,0xc

    printString("Prosecna iskoriscenost prostora: ");
    800037e4:	00006517          	auipc	a0,0x6
    800037e8:	9bc50513          	addi	a0,a0,-1604 # 800091a0 <CONSOLE_STATUS+0x190>
    800037ec:	00002097          	auipc	ra,0x2
    800037f0:	c7c080e7          	jalr	-900(ra) # 80005468 <_Z11printStringPKc>
    printInt(neto);
    800037f4:	00000613          	li	a2,0
    800037f8:	00a00593          	li	a1,10
    800037fc:	000a051b          	sext.w	a0,s4
    80003800:	00002097          	auipc	ra,0x2
    80003804:	e00080e7          	jalr	-512(ra) # 80005600 <_Z8printIntiii>
    printString("/");
    80003808:	00006517          	auipc	a0,0x6
    8000380c:	9c050513          	addi	a0,a0,-1600 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80003810:	00002097          	auipc	ra,0x2
    80003814:	c58080e7          	jalr	-936(ra) # 80005468 <_Z11printStringPKc>
    printInt(bruto);
    80003818:	00000613          	li	a2,0
    8000381c:	00a00593          	li	a1,10
    80003820:	0004851b          	sext.w	a0,s1
    80003824:	00002097          	auipc	ra,0x2
    80003828:	ddc080e7          	jalr	-548(ra) # 80005600 <_Z8printIntiii>
    printString("\n");
    8000382c:	00006517          	auipc	a0,0x6
    80003830:	a1c50513          	addi	a0,a0,-1508 # 80009248 <CONSOLE_STATUS+0x238>
    80003834:	00002097          	auipc	ra,0x2
    80003838:	c34080e7          	jalr	-972(ra) # 80005468 <_Z11printStringPKc>
    printString("Realna iskoriscenost prostora: ");
    8000383c:	00006517          	auipc	a0,0x6
    80003840:	99450513          	addi	a0,a0,-1644 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80003844:	00002097          	auipc	ra,0x2
    80003848:	c24080e7          	jalr	-988(ra) # 80005468 <_Z11printStringPKc>
    printInt(num_active_obj * objsize);
    8000384c:	06893503          	ld	a0,104(s2)
    80003850:	03093783          	ld	a5,48(s2)
    80003854:	00000613          	li	a2,0
    80003858:	00a00593          	li	a1,10
    8000385c:	02f5053b          	mulw	a0,a0,a5
    80003860:	00002097          	auipc	ra,0x2
    80003864:	da0080e7          	jalr	-608(ra) # 80005600 <_Z8printIntiii>
    printString("/");
    80003868:	00006517          	auipc	a0,0x6
    8000386c:	96050513          	addi	a0,a0,-1696 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80003870:	00002097          	auipc	ra,0x2
    80003874:	bf8080e7          	jalr	-1032(ra) # 80005468 <_Z11printStringPKc>
    size_t real_bruto = num_of_slabs * size_in_blocks * BLOCK_SIZE - num_of_slabs * sizeof(Slab);
    80003878:	04093503          	ld	a0,64(s2)
    8000387c:	03350533          	mul	a0,a0,s3
    80003880:	00751513          	slli	a0,a0,0x7
    80003884:	41350533          	sub	a0,a0,s3
    80003888:	00551513          	slli	a0,a0,0x5
    printInt(real_bruto);
    8000388c:	00000613          	li	a2,0
    80003890:	00a00593          	li	a1,10
    80003894:	0005051b          	sext.w	a0,a0
    80003898:	00002097          	auipc	ra,0x2
    8000389c:	d68080e7          	jalr	-664(ra) # 80005600 <_Z8printIntiii>
    printString("\n");
    800038a0:	00006517          	auipc	a0,0x6
    800038a4:	9a850513          	addi	a0,a0,-1624 # 80009248 <CONSOLE_STATUS+0x238>
    800038a8:	00002097          	auipc	ra,0x2
    800038ac:	bc0080e7          	jalr	-1088(ra) # 80005468 <_Z11printStringPKc>

    printString("----------------------- END ----------------------\n");
    800038b0:	00006517          	auipc	a0,0x6
    800038b4:	94050513          	addi	a0,a0,-1728 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800038b8:	00002097          	auipc	ra,0x2
    800038bc:	bb0080e7          	jalr	-1104(ra) # 80005468 <_Z11printStringPKc>
}
    800038c0:	02813083          	ld	ra,40(sp)
    800038c4:	02013403          	ld	s0,32(sp)
    800038c8:	01813483          	ld	s1,24(sp)
    800038cc:	01013903          	ld	s2,16(sp)
    800038d0:	00813983          	ld	s3,8(sp)
    800038d4:	00013a03          	ld	s4,0(sp)
    800038d8:	03010113          	addi	sp,sp,48
    800038dc:	00008067          	ret

00000000800038e0 <_ZN12kmem_cache_s21print_info_all_cachesEv>:

void kmem_cache_s::print_info_all_caches() {
    800038e0:	fe010113          	addi	sp,sp,-32
    800038e4:	00113c23          	sd	ra,24(sp)
    800038e8:	00813823          	sd	s0,16(sp)
    800038ec:	00913423          	sd	s1,8(sp)
    800038f0:	02010413          	addi	s0,sp,32
    printString("\n\t\t\t ### PRINT ALL CACHES ###\t\t\t\n");
    800038f4:	00006517          	auipc	a0,0x6
    800038f8:	93450513          	addi	a0,a0,-1740 # 80009228 <CONSOLE_STATUS+0x218>
    800038fc:	00002097          	auipc	ra,0x2
    80003900:	b6c080e7          	jalr	-1172(ra) # 80005468 <_Z11printStringPKc>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    80003904:	00008497          	auipc	s1,0x8
    80003908:	ecc4b483          	ld	s1,-308(s1) # 8000b7d0 <_ZN12kmem_cache_s4headE>
    8000390c:	00048c63          	beqz	s1,80003924 <_ZN12kmem_cache_s21print_info_all_cachesEv+0x44>
        tmp->kmem_cache_info();
    80003910:	00048513          	mv	a0,s1
    80003914:	00000097          	auipc	ra,0x0
    80003918:	b8c080e7          	jalr	-1140(ra) # 800034a0 <_ZN12kmem_cache_s15kmem_cache_infoEv>
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
    8000391c:	0604b483          	ld	s1,96(s1)
    80003920:	fedff06f          	j	8000390c <_ZN12kmem_cache_s21print_info_all_cachesEv+0x2c>
    }
    printString("\t\t\t\t    ### END ###\t\t\t\n");
    80003924:	00006517          	auipc	a0,0x6
    80003928:	92c50513          	addi	a0,a0,-1748 # 80009250 <CONSOLE_STATUS+0x240>
    8000392c:	00002097          	auipc	ra,0x2
    80003930:	b3c080e7          	jalr	-1220(ra) # 80005468 <_Z11printStringPKc>
}
    80003934:	01813083          	ld	ra,24(sp)
    80003938:	01013403          	ld	s0,16(sp)
    8000393c:	00813483          	ld	s1,8(sp)
    80003940:	02010113          	addi	sp,sp,32
    80003944:	00008067          	ret

0000000080003948 <_ZN4Slab42return_first_free_object_and_rearange_listEii>:

void *Slab::return_first_free_object_and_rearange_list(int number_of_objects_in_slab, int size_of_object) {
    80003948:	ff010113          	addi	sp,sp,-16
    8000394c:	00813423          	sd	s0,8(sp)
    80003950:	01010413          	addi	s0,sp,16
    int i = 0;
    80003954:	00000793          	li	a5,0
    while(i < number_of_objects_in_slab && (this->free_objects)[i]){
    80003958:	00b7de63          	bge	a5,a1,80003974 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x2c>
    8000395c:	01053703          	ld	a4,16(a0)
    80003960:	00f70733          	add	a4,a4,a5
    80003964:	00074703          	lbu	a4,0(a4)
    80003968:	00070663          	beqz	a4,80003974 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x2c>
        i++;
    8000396c:	0017879b          	addiw	a5,a5,1
    while(i < number_of_objects_in_slab && (this->free_objects)[i]){
    80003970:	fe9ff06f          	j	80003958 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x10>
    }
    if(i >= number_of_objects_in_slab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    80003974:	02b7d663          	bge	a5,a1,800039a0 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x58>
    (this->free_objects)[i] = true;
    80003978:	01053703          	ld	a4,16(a0)
    8000397c:	00f70733          	add	a4,a4,a5
    80003980:	00100693          	li	a3,1
    80003984:	00d70023          	sb	a3,0(a4)
    return (void*)(this->first_addr + size_of_object * i);
    80003988:	01853503          	ld	a0,24(a0)
    8000398c:	02c787bb          	mulw	a5,a5,a2
    80003990:	00f50533          	add	a0,a0,a5
}
    80003994:	00813403          	ld	s0,8(sp)
    80003998:	01010113          	addi	sp,sp,16
    8000399c:	00008067          	ret
    if(i >= number_of_objects_in_slab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    800039a0:	00000513          	li	a0,0
    800039a4:	ff1ff06f          	j	80003994 <_ZN4Slab42return_first_free_object_and_rearange_listEii+0x4c>

00000000800039a8 <_ZN12kmem_cache_s16kmem_cache_allocEv>:
void *kmem_cache_s::kmem_cache_alloc() {
    800039a8:	fe010113          	addi	sp,sp,-32
    800039ac:	00113c23          	sd	ra,24(sp)
    800039b0:	00813823          	sd	s0,16(sp)
    800039b4:	00913423          	sd	s1,8(sp)
    800039b8:	02010413          	addi	s0,sp,32
    800039bc:	00050493          	mv	s1,a0
    if(num_slabs_partial != 0){
    800039c0:	02053783          	ld	a5,32(a0)
    800039c4:	08079063          	bnez	a5,80003a44 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x9c>
    if(num_slabs_free != 0){
    800039c8:	02853783          	ld	a5,40(a0)
    800039cc:	0e078663          	beqz	a5,80003ab8 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x110>
        void* addr = this->slabs_free->return_first_free_object_and_rearange_list(this->num, this->objsize);
    800039d0:	03052603          	lw	a2,48(a0)
    800039d4:	03852583          	lw	a1,56(a0)
    800039d8:	01053503          	ld	a0,16(a0)
    800039dc:	00000097          	auipc	ra,0x0
    800039e0:	f6c080e7          	jalr	-148(ra) # 80003948 <_ZN4Slab42return_first_free_object_and_rearange_listEii>
        this->num_active_obj++;
    800039e4:	0684b783          	ld	a5,104(s1)
    800039e8:	00178793          	addi	a5,a5,1
    800039ec:	06f4b423          	sd	a5,104(s1)
        Slab* tmp = this->slabs_free;
    800039f0:	0104b783          	ld	a5,16(s1)
        tmp->next = this->slabs_partial;
    800039f4:	0084b703          	ld	a4,8(s1)
    800039f8:	00e7b423          	sd	a4,8(a5)
    void increment_num_of_active(){num_active++;}
    800039fc:	0007b703          	ld	a4,0(a5)
    80003a00:	00170713          	addi	a4,a4,1
    80003a04:	00e7b023          	sd	a4,0(a5)
        this->slabs_free = this->slabs_free->next;
    80003a08:	0104b703          	ld	a4,16(s1)
    80003a0c:	00873703          	ld	a4,8(a4)
    80003a10:	00e4b823          	sd	a4,16(s1)
        this->slabs_partial = tmp;
    80003a14:	00f4b423          	sd	a5,8(s1)
        this->num_slabs_free--;
    80003a18:	0284b783          	ld	a5,40(s1)
    80003a1c:	fff78793          	addi	a5,a5,-1
    80003a20:	02f4b423          	sd	a5,40(s1)
        this->num_slabs_partial++;
    80003a24:	0204b783          	ld	a5,32(s1)
    80003a28:	00178793          	addi	a5,a5,1
    80003a2c:	02f4b023          	sd	a5,32(s1)
}
    80003a30:	01813083          	ld	ra,24(sp)
    80003a34:	01013403          	ld	s0,16(sp)
    80003a38:	00813483          	ld	s1,8(sp)
    80003a3c:	02010113          	addi	sp,sp,32
    80003a40:	00008067          	ret
        void* addr = this->slabs_partial->return_first_free_object_and_rearange_list(this->num, this->objsize);
    80003a44:	03052603          	lw	a2,48(a0)
    80003a48:	03852583          	lw	a1,56(a0)
    80003a4c:	00853503          	ld	a0,8(a0)
    80003a50:	00000097          	auipc	ra,0x0
    80003a54:	ef8080e7          	jalr	-264(ra) # 80003948 <_ZN4Slab42return_first_free_object_and_rearange_listEii>
        this->num_active_obj++;
    80003a58:	0684b783          	ld	a5,104(s1)
    80003a5c:	00178793          	addi	a5,a5,1
    80003a60:	06f4b423          	sd	a5,104(s1)
        this->slabs_partial->increment_num_of_active();
    80003a64:	0084b703          	ld	a4,8(s1)
    80003a68:	00073783          	ld	a5,0(a4)
    80003a6c:	00178793          	addi	a5,a5,1
    80003a70:	00f73023          	sd	a5,0(a4)
        if(this->slabs_partial->get_number_of_active_objects() == this->num){
    80003a74:	0084b783          	ld	a5,8(s1)
    size_t get_number_of_active_objects(){return num_active;}
    80003a78:	0007b703          	ld	a4,0(a5)
    80003a7c:	0384b683          	ld	a3,56(s1)
    80003a80:	fae698e3          	bne	a3,a4,80003a30 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x88>
            tmp->next = this->slabs_full;
    80003a84:	0004b703          	ld	a4,0(s1)
    80003a88:	00e7b423          	sd	a4,8(a5)
            this->slabs_partial = this->slabs_partial->next;
    80003a8c:	0084b703          	ld	a4,8(s1)
    80003a90:	00873703          	ld	a4,8(a4)
    80003a94:	00e4b423          	sd	a4,8(s1)
            this->slabs_full = tmp;
    80003a98:	00f4b023          	sd	a5,0(s1)
            this->num_slabs_partial--;
    80003a9c:	0204b783          	ld	a5,32(s1)
    80003aa0:	fff78793          	addi	a5,a5,-1
    80003aa4:	02f4b023          	sd	a5,32(s1)
            this->num_slabs_full++;
    80003aa8:	0184b783          	ld	a5,24(s1)
    80003aac:	00178793          	addi	a5,a5,1
    80003ab0:	00f4bc23          	sd	a5,24(s1)
        return addr;
    80003ab4:	f7dff06f          	j	80003a30 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x88>
    create_free_slab();
    80003ab8:	fffff097          	auipc	ra,0xfffff
    80003abc:	280080e7          	jalr	640(ra) # 80002d38 <_ZN12kmem_cache_s16create_free_slabEv>
    this->growing = true;
    80003ac0:	00100793          	li	a5,1
    80003ac4:	06f48823          	sb	a5,112(s1)
    return nullptr;
    80003ac8:	00000513          	li	a0,0
    80003acc:	f65ff06f          	j	80003a30 <_ZN12kmem_cache_s16kmem_cache_allocEv+0x88>

0000000080003ad0 <_ZN12kmem_cache_s7kmallocEm>:
void *kmem_cache_s::kmalloc(size_t size) {
    80003ad0:	fe010113          	addi	sp,sp,-32
    80003ad4:	00113c23          	sd	ra,24(sp)
    80003ad8:	00813823          	sd	s0,16(sp)
    80003adc:	00913423          	sd	s1,8(sp)
    80003ae0:	01213023          	sd	s2,0(sp)
    80003ae4:	02010413          	addi	s0,sp,32
    80003ae8:	00050493          	mv	s1,a0
    const char* n = (const char*)concatenate_int_to_char_ptr((int)size);
    80003aec:	0005051b          	sext.w	a0,a0
    80003af0:	fffff097          	auipc	ra,0xfffff
    80003af4:	ac4080e7          	jalr	-1340(ra) # 800025b4 <_Z27concatenate_int_to_char_ptri>
    80003af8:	00050913          	mv	s2,a0
    kmem_cache_s* tmp = check_if_name_exists(n);
    80003afc:	fffff097          	auipc	ra,0xfffff
    80003b00:	698080e7          	jalr	1688(ra) # 80003194 <_ZN12kmem_cache_s20check_if_name_existsEPKc>
    if(tmp == nullptr){
    80003b04:	02050463          	beqz	a0,80003b2c <_ZN12kmem_cache_s7kmallocEm+0x5c>
    kmem_cache_s* cache = nullptr;
    80003b08:	00000513          	li	a0,0
    void* elem = cache->kmem_cache_alloc();
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	e9c080e7          	jalr	-356(ra) # 800039a8 <_ZN12kmem_cache_s16kmem_cache_allocEv>
}
    80003b14:	01813083          	ld	ra,24(sp)
    80003b18:	01013403          	ld	s0,16(sp)
    80003b1c:	00813483          	ld	s1,8(sp)
    80003b20:	00013903          	ld	s2,0(sp)
    80003b24:	02010113          	addi	sp,sp,32
    80003b28:	00008067          	ret
        cache = (kmem_cache_s*)kmem_cache_create(n, size, nullptr, nullptr);
    80003b2c:	00000693          	li	a3,0
    80003b30:	00000613          	li	a2,0
    80003b34:	00048593          	mv	a1,s1
    80003b38:	00090513          	mv	a0,s2
    80003b3c:	fffff097          	auipc	ra,0xfffff
    80003b40:	320080e7          	jalr	800(ra) # 80002e5c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>
        if(!cache)return nullptr;
    80003b44:	fc0514e3          	bnez	a0,80003b0c <_ZN12kmem_cache_s7kmallocEm+0x3c>
    80003b48:	fcdff06f          	j	80003b14 <_ZN12kmem_cache_s7kmallocEm+0x44>

0000000080003b4c <_ZN6Thread11wrapper_runEPv>:
    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));

}

void Thread::wrapper_run(void* thread) {
    80003b4c:	ff010113          	addi	sp,sp,-16
    80003b50:	00113423          	sd	ra,8(sp)
    80003b54:	00813023          	sd	s0,0(sp)
    80003b58:	01010413          	addi	s0,sp,16
    ((Thread*)(thread))->run();
    80003b5c:	00053783          	ld	a5,0(a0)
    80003b60:	0107b783          	ld	a5,16(a5)
    80003b64:	000780e7          	jalr	a5
}
    80003b68:	00813083          	ld	ra,8(sp)
    80003b6c:	00013403          	ld	s0,0(sp)
    80003b70:	01010113          	addi	sp,sp,16
    80003b74:	00008067          	ret

0000000080003b78 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80003b78:	fe010113          	addi	sp,sp,-32
    80003b7c:	00113c23          	sd	ra,24(sp)
    80003b80:	00813823          	sd	s0,16(sp)
    80003b84:	00913423          	sd	s1,8(sp)
    80003b88:	02010413          	addi	s0,sp,32
    80003b8c:	00008797          	auipc	a5,0x8
    80003b90:	a7478793          	addi	a5,a5,-1420 # 8000b600 <_ZTV9Semaphore+0x10>
    80003b94:	00f53023          	sd	a5,0(a0)
    delete (MySemaphore*)myHandle;
    80003b98:	00853483          	ld	s1,8(a0)
    80003b9c:	08048463          	beqz	s1,80003c24 <_ZN9SemaphoreD1Ev+0xac>
    ~MySemaphore(){ sem_close(this);}
    80003ba0:	00048513          	mv	a0,s1
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	60c080e7          	jalr	1548(ra) # 800021b0 <_ZN11MySemaphore9sem_closeEPS_>
        static MemoryAllocator instance;
    80003bac:	00008797          	auipc	a5,0x8
    80003bb0:	bd47c783          	lbu	a5,-1068(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003bb4:	04079e63          	bnez	a5,80003c10 <_ZN9SemaphoreD1Ev+0x98>
        size_t heapStart = (size_t)HEAP_START_ADDR;
    80003bb8:	00008797          	auipc	a5,0x8
    80003bbc:	b387b783          	ld	a5,-1224(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003bc0:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    80003bc4:	00008717          	auipc	a4,0x8
    80003bc8:	b7473703          	ld	a4,-1164(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003bcc:	00073703          	ld	a4,0(a4)
    80003bd0:	fff70713          	addi	a4,a4,-1
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80003bd4:	40f70733          	sub	a4,a4,a5
    80003bd8:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80003bdc:	03f7f693          	andi	a3,a5,63
    80003be0:	00068663          	beqz	a3,80003bec <_ZN9SemaphoreD1Ev+0x74>
    80003be4:	04000613          	li	a2,64
    80003be8:	40d606b3          	sub	a3,a2,a3
    80003bec:	00d787b3          	add	a5,a5,a3
    80003bf0:	00008697          	auipc	a3,0x8
    80003bf4:	b8f6bc23          	sd	a5,-1128(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80003bf8:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80003bfc:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80003c00:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80003c04:	00100793          	li	a5,1
    80003c08:	00008717          	auipc	a4,0x8
    80003c0c:	b6f70c23          	sb	a5,-1160(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80003c10:	00048593          	mv	a1,s1
    80003c14:	00008517          	auipc	a0,0x8
    80003c18:	b7450513          	addi	a0,a0,-1164 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80003c1c:	00001097          	auipc	ra,0x1
    80003c20:	2a4080e7          	jalr	676(ra) # 80004ec0 <_ZN15MemoryAllocator11memory_freeEPv>
}
    80003c24:	01813083          	ld	ra,24(sp)
    80003c28:	01013403          	ld	s0,16(sp)
    80003c2c:	00813483          	ld	s1,8(sp)
    80003c30:	02010113          	addi	sp,sp,32
    80003c34:	00008067          	ret

0000000080003c38 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80003c38:	fe010113          	addi	sp,sp,-32
    80003c3c:	00113c23          	sd	ra,24(sp)
    80003c40:	00813823          	sd	s0,16(sp)
    80003c44:	00913423          	sd	s1,8(sp)
    80003c48:	02010413          	addi	s0,sp,32
    80003c4c:	00008797          	auipc	a5,0x8
    80003c50:	98c78793          	addi	a5,a5,-1652 # 8000b5d8 <_ZTV6Thread+0x10>
    80003c54:	00f53023          	sd	a5,0(a0)
    delete (TCB*)(myHandle);
    80003c58:	00853483          	ld	s1,8(a0)
    80003c5c:	0e048a63          	beqz	s1,80003d50 <_ZN6ThreadD1Ev+0x118>
    80003c60:	00008797          	auipc	a5,0x8
    80003c64:	b207c783          	lbu	a5,-1248(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003c68:	04079e63          	bnez	a5,80003cc4 <_ZN6ThreadD1Ev+0x8c>
        size_t heapStart = (size_t)HEAP_START_ADDR;
    80003c6c:	00008797          	auipc	a5,0x8
    80003c70:	a847b783          	ld	a5,-1404(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003c74:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    80003c78:	00008717          	auipc	a4,0x8
    80003c7c:	ac073703          	ld	a4,-1344(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003c80:	00073703          	ld	a4,0(a4)
    80003c84:	fff70713          	addi	a4,a4,-1
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80003c88:	40f70733          	sub	a4,a4,a5
    80003c8c:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80003c90:	03f7f693          	andi	a3,a5,63
    80003c94:	00068663          	beqz	a3,80003ca0 <_ZN6ThreadD1Ev+0x68>
    80003c98:	04000613          	li	a2,64
    80003c9c:	40d606b3          	sub	a3,a2,a3
    80003ca0:	00d787b3          	add	a5,a5,a3
    80003ca4:	00008697          	auipc	a3,0x8
    80003ca8:	aef6b223          	sd	a5,-1308(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80003cac:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80003cb0:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80003cb4:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80003cb8:	00100793          	li	a5,1
    80003cbc:	00008717          	auipc	a4,0x8
    80003cc0:	acf70223          	sb	a5,-1340(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>

class TCB{
public:

    ~TCB(){
        MemoryAllocator::getInstance().memory_free((void*)stack);
    80003cc4:	0104b583          	ld	a1,16(s1)
    80003cc8:	00008517          	auipc	a0,0x8
    80003ccc:	ac050513          	addi	a0,a0,-1344 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80003cd0:	00001097          	auipc	ra,0x1
    80003cd4:	1f0080e7          	jalr	496(ra) # 80004ec0 <_ZN15MemoryAllocator11memory_freeEPv>
    80003cd8:	00008797          	auipc	a5,0x8
    80003cdc:	aa87c783          	lbu	a5,-1368(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003ce0:	04079e63          	bnez	a5,80003d3c <_ZN6ThreadD1Ev+0x104>
        size_t heapStart = (size_t)HEAP_START_ADDR;
    80003ce4:	00008797          	auipc	a5,0x8
    80003ce8:	a0c7b783          	ld	a5,-1524(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80003cec:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    80003cf0:	00008717          	auipc	a4,0x8
    80003cf4:	a4873703          	ld	a4,-1464(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003cf8:	00073703          	ld	a4,0(a4)
    80003cfc:	fff70713          	addi	a4,a4,-1
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80003d00:	40f70733          	sub	a4,a4,a5
    80003d04:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80003d08:	03f7f693          	andi	a3,a5,63
    80003d0c:	00068663          	beqz	a3,80003d18 <_ZN6ThreadD1Ev+0xe0>
    80003d10:	04000613          	li	a2,64
    80003d14:	40d606b3          	sub	a3,a2,a3
    80003d18:	00d787b3          	add	a5,a5,a3
    80003d1c:	00008697          	auipc	a3,0x8
    80003d20:	a6f6b623          	sd	a5,-1428(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80003d24:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80003d28:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80003d2c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80003d30:	00100793          	li	a5,1
    80003d34:	00008717          	auipc	a4,0x8
    80003d38:	a4f70623          	sb	a5,-1460(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    80003d3c:	00048593          	mv	a1,s1
    80003d40:	00008517          	auipc	a0,0x8
    80003d44:	a4850513          	addi	a0,a0,-1464 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80003d48:	00001097          	auipc	ra,0x1
    80003d4c:	178080e7          	jalr	376(ra) # 80004ec0 <_ZN15MemoryAllocator11memory_freeEPv>
}
    80003d50:	01813083          	ld	ra,24(sp)
    80003d54:	01013403          	ld	s0,16(sp)
    80003d58:	00813483          	ld	s1,8(sp)
    80003d5c:	02010113          	addi	sp,sp,32
    80003d60:	00008067          	ret

0000000080003d64 <_Znwm>:
void* operator new(size_t n) {
    80003d64:	ff010113          	addi	sp,sp,-16
    80003d68:	00113423          	sd	ra,8(sp)
    80003d6c:	00813023          	sd	s0,0(sp)
    80003d70:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80003d74:	ffffd097          	auipc	ra,0xffffd
    80003d78:	4d0080e7          	jalr	1232(ra) # 80001244 <mem_alloc>
}
    80003d7c:	00813083          	ld	ra,8(sp)
    80003d80:	00013403          	ld	s0,0(sp)
    80003d84:	01010113          	addi	sp,sp,16
    80003d88:	00008067          	ret

0000000080003d8c <_Znam>:
void* operator new[](size_t n) {
    80003d8c:	ff010113          	addi	sp,sp,-16
    80003d90:	00113423          	sd	ra,8(sp)
    80003d94:	00813023          	sd	s0,0(sp)
    80003d98:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80003d9c:	ffffd097          	auipc	ra,0xffffd
    80003da0:	4a8080e7          	jalr	1192(ra) # 80001244 <mem_alloc>
}
    80003da4:	00813083          	ld	ra,8(sp)
    80003da8:	00013403          	ld	s0,0(sp)
    80003dac:	01010113          	addi	sp,sp,16
    80003db0:	00008067          	ret

0000000080003db4 <_ZdlPv>:
void operator delete(void* ptr) {
    80003db4:	ff010113          	addi	sp,sp,-16
    80003db8:	00113423          	sd	ra,8(sp)
    80003dbc:	00813023          	sd	s0,0(sp)
    80003dc0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80003dc4:	ffffd097          	auipc	ra,0xffffd
    80003dc8:	4d8080e7          	jalr	1240(ra) # 8000129c <mem_free>
}
    80003dcc:	00813083          	ld	ra,8(sp)
    80003dd0:	00013403          	ld	s0,0(sp)
    80003dd4:	01010113          	addi	sp,sp,16
    80003dd8:	00008067          	ret

0000000080003ddc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80003ddc:	fe010113          	addi	sp,sp,-32
    80003de0:	00113c23          	sd	ra,24(sp)
    80003de4:	00813823          	sd	s0,16(sp)
    80003de8:	00913423          	sd	s1,8(sp)
    80003dec:	02010413          	addi	s0,sp,32
    80003df0:	00050493          	mv	s1,a0
}
    80003df4:	00000097          	auipc	ra,0x0
    80003df8:	e44080e7          	jalr	-444(ra) # 80003c38 <_ZN6ThreadD1Ev>
    80003dfc:	00048513          	mv	a0,s1
    80003e00:	00000097          	auipc	ra,0x0
    80003e04:	fb4080e7          	jalr	-76(ra) # 80003db4 <_ZdlPv>
    80003e08:	01813083          	ld	ra,24(sp)
    80003e0c:	01013403          	ld	s0,16(sp)
    80003e10:	00813483          	ld	s1,8(sp)
    80003e14:	02010113          	addi	sp,sp,32
    80003e18:	00008067          	ret

0000000080003e1c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003e1c:	fe010113          	addi	sp,sp,-32
    80003e20:	00113c23          	sd	ra,24(sp)
    80003e24:	00813823          	sd	s0,16(sp)
    80003e28:	00913423          	sd	s1,8(sp)
    80003e2c:	02010413          	addi	s0,sp,32
    80003e30:	00050493          	mv	s1,a0
}
    80003e34:	00000097          	auipc	ra,0x0
    80003e38:	d44080e7          	jalr	-700(ra) # 80003b78 <_ZN9SemaphoreD1Ev>
    80003e3c:	00048513          	mv	a0,s1
    80003e40:	00000097          	auipc	ra,0x0
    80003e44:	f74080e7          	jalr	-140(ra) # 80003db4 <_ZdlPv>
    80003e48:	01813083          	ld	ra,24(sp)
    80003e4c:	01013403          	ld	s0,16(sp)
    80003e50:	00813483          	ld	s1,8(sp)
    80003e54:	02010113          	addi	sp,sp,32
    80003e58:	00008067          	ret

0000000080003e5c <_ZdaPv>:
void operator delete[](void* ptr) {
    80003e5c:	ff010113          	addi	sp,sp,-16
    80003e60:	00113423          	sd	ra,8(sp)
    80003e64:	00813023          	sd	s0,0(sp)
    80003e68:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80003e6c:	ffffd097          	auipc	ra,0xffffd
    80003e70:	430080e7          	jalr	1072(ra) # 8000129c <mem_free>
}
    80003e74:	00813083          	ld	ra,8(sp)
    80003e78:	00013403          	ld	s0,0(sp)
    80003e7c:	01010113          	addi	sp,sp,16
    80003e80:	00008067          	ret

0000000080003e84 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void *arg) {
    80003e84:	f9010113          	addi	sp,sp,-112
    80003e88:	06113423          	sd	ra,104(sp)
    80003e8c:	06813023          	sd	s0,96(sp)
    80003e90:	04913c23          	sd	s1,88(sp)
    80003e94:	05213823          	sd	s2,80(sp)
    80003e98:	05313423          	sd	s3,72(sp)
    80003e9c:	07010413          	addi	s0,sp,112
    80003ea0:	00050493          	mv	s1,a0
    80003ea4:	00058913          	mv	s2,a1
    80003ea8:	00060993          	mv	s3,a2
    80003eac:	00007797          	auipc	a5,0x7
    80003eb0:	72c78793          	addi	a5,a5,1836 # 8000b5d8 <_ZTV6Thread+0x10>
    80003eb4:	00f53023          	sd	a5,0(a0)
    uint64 a4 = (body != nullptr) ? (uint64)mem_alloc(DEFAULT_STACK_SIZE) : 0;
    80003eb8:	06058063          	beqz	a1,80003f18 <_ZN6ThreadC1EPFvPvES0_+0x94>
    80003ebc:	00001537          	lui	a0,0x1
    80003ec0:	ffffd097          	auipc	ra,0xffffd
    80003ec4:	384080e7          	jalr	900(ra) # 80001244 <mem_alloc>
    a1 = (uint64)&myHandle;
    80003ec8:	00848493          	addi	s1,s1,8
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80003ecc:	01100793          	li	a5,17
    80003ed0:	f8f43823          	sd	a5,-112(s0)
    80003ed4:	f8943c23          	sd	s1,-104(s0)
    80003ed8:	fb243023          	sd	s2,-96(s0)
    80003edc:	fb343423          	sd	s3,-88(s0)
    80003ee0:	faa43823          	sd	a0,-80(s0)
    80003ee4:	fa043c23          	sd	zero,-72(s0)
    80003ee8:	fc043023          	sd	zero,-64(s0)
    80003eec:	fc043423          	sd	zero,-56(s0)
    abi::sys_call(reinterpret_cast<void *>(empty));
    80003ef0:	f9040513          	addi	a0,s0,-112
    80003ef4:	00001097          	auipc	ra,0x1
    80003ef8:	154080e7          	jalr	340(ra) # 80005048 <_ZN3abi8sys_callEPv>
}
    80003efc:	06813083          	ld	ra,104(sp)
    80003f00:	06013403          	ld	s0,96(sp)
    80003f04:	05813483          	ld	s1,88(sp)
    80003f08:	05013903          	ld	s2,80(sp)
    80003f0c:	04813983          	ld	s3,72(sp)
    80003f10:	07010113          	addi	sp,sp,112
    80003f14:	00008067          	ret
    uint64 a4 = (body != nullptr) ? (uint64)mem_alloc(DEFAULT_STACK_SIZE) : 0;
    80003f18:	00000513          	li	a0,0
    80003f1c:	fadff06f          	j	80003ec8 <_ZN6ThreadC1EPFvPvES0_+0x44>

0000000080003f20 <_ZN6Thread5startEv>:
int Thread::start() {
    80003f20:	ff010113          	addi	sp,sp,-16
    80003f24:	00113423          	sd	ra,8(sp)
    80003f28:	00813023          	sd	s0,0(sp)
    80003f2c:	01010413          	addi	s0,sp,16
    put_in_scheduler(myHandle);
    80003f30:	00853503          	ld	a0,8(a0) # 1008 <_entry-0x7fffeff8>
    80003f34:	ffffd097          	auipc	ra,0xffffd
    80003f38:	748080e7          	jalr	1864(ra) # 8000167c <put_in_scheduler>
}
    80003f3c:	00000513          	li	a0,0
    80003f40:	00813083          	ld	ra,8(sp)
    80003f44:	00013403          	ld	s0,0(sp)
    80003f48:	01010113          	addi	sp,sp,16
    80003f4c:	00008067          	ret

0000000080003f50 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003f50:	ff010113          	addi	sp,sp,-16
    80003f54:	00113423          	sd	ra,8(sp)
    80003f58:	00813023          	sd	s0,0(sp)
    80003f5c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003f60:	ffffd097          	auipc	ra,0xffffd
    80003f64:	424080e7          	jalr	1060(ra) # 80001384 <thread_dispatch>
}
    80003f68:	00813083          	ld	ra,8(sp)
    80003f6c:	00013403          	ld	s0,0(sp)
    80003f70:	01010113          	addi	sp,sp,16
    80003f74:	00008067          	ret

0000000080003f78 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80003f78:	ff010113          	addi	sp,sp,-16
    80003f7c:	00113423          	sd	ra,8(sp)
    80003f80:	00813023          	sd	s0,0(sp)
    80003f84:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80003f88:	ffffd097          	auipc	ra,0xffffd
    80003f8c:	4a0080e7          	jalr	1184(ra) # 80001428 <time_sleep>
}
    80003f90:	00813083          	ld	ra,8(sp)
    80003f94:	00013403          	ld	s0,0(sp)
    80003f98:	01010113          	addi	sp,sp,16
    80003f9c:	00008067          	ret

0000000080003fa0 <_ZN14PeriodicThread3runEv>:
    time = period;
    flag_stop = true;
    set_periodic((thread_t)this);
}

void PeriodicThread::run() {
    80003fa0:	fe010113          	addi	sp,sp,-32
    80003fa4:	00113c23          	sd	ra,24(sp)
    80003fa8:	00813823          	sd	s0,16(sp)
    80003fac:	00913423          	sd	s1,8(sp)
    80003fb0:	02010413          	addi	s0,sp,32
    80003fb4:	00050493          	mv	s1,a0
    while(flag_stop){
    80003fb8:	0184c783          	lbu	a5,24(s1)
    80003fbc:	02078263          	beqz	a5,80003fe0 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80003fc0:	0004b783          	ld	a5,0(s1)
    80003fc4:	0187b783          	ld	a5,24(a5)
    80003fc8:	00048513          	mv	a0,s1
    80003fcc:	000780e7          	jalr	a5
        sleep(time);
    80003fd0:	0104b503          	ld	a0,16(s1)
    80003fd4:	00000097          	auipc	ra,0x0
    80003fd8:	fa4080e7          	jalr	-92(ra) # 80003f78 <_ZN6Thread5sleepEm>
    while(flag_stop){
    80003fdc:	fddff06f          	j	80003fb8 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80003fe0:	01813083          	ld	ra,24(sp)
    80003fe4:	01013403          	ld	s0,16(sp)
    80003fe8:	00813483          	ld	s1,8(sp)
    80003fec:	02010113          	addi	sp,sp,32
    80003ff0:	00008067          	ret

0000000080003ff4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80003ff4:	fa010113          	addi	sp,sp,-96
    80003ff8:	04113c23          	sd	ra,88(sp)
    80003ffc:	04813823          	sd	s0,80(sp)
    80004000:	04913423          	sd	s1,72(sp)
    80004004:	06010413          	addi	s0,sp,96
    80004008:	00050493          	mv	s1,a0
    8000400c:	00007797          	auipc	a5,0x7
    80004010:	5cc78793          	addi	a5,a5,1484 # 8000b5d8 <_ZTV6Thread+0x10>
    80004014:	00f53023          	sd	a5,0(a0)
    uint64 a4 = (uint64)mem_alloc(DEFAULT_STACK_SIZE);
    80004018:	00001537          	lui	a0,0x1
    8000401c:	ffffd097          	auipc	ra,0xffffd
    80004020:	228080e7          	jalr	552(ra) # 80001244 <mem_alloc>
    a1 = (uint64)&myHandle;
    80004024:	00848793          	addi	a5,s1,8
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};
    80004028:	01100713          	li	a4,17
    8000402c:	fae43023          	sd	a4,-96(s0)
    80004030:	faf43423          	sd	a5,-88(s0)
    80004034:	00000797          	auipc	a5,0x0
    80004038:	b1878793          	addi	a5,a5,-1256 # 80003b4c <_ZN6Thread11wrapper_runEPv>
    8000403c:	faf43823          	sd	a5,-80(s0)
    80004040:	fa943c23          	sd	s1,-72(s0)
    80004044:	fca43023          	sd	a0,-64(s0)
    80004048:	fc043423          	sd	zero,-56(s0)
    8000404c:	fc043823          	sd	zero,-48(s0)
    80004050:	fc043c23          	sd	zero,-40(s0)
    abi::sys_call(reinterpret_cast<void *>(empty));
    80004054:	fa040513          	addi	a0,s0,-96
    80004058:	00001097          	auipc	ra,0x1
    8000405c:	ff0080e7          	jalr	-16(ra) # 80005048 <_ZN3abi8sys_callEPv>
}
    80004060:	05813083          	ld	ra,88(sp)
    80004064:	05013403          	ld	s0,80(sp)
    80004068:	04813483          	ld	s1,72(sp)
    8000406c:	06010113          	addi	sp,sp,96
    80004070:	00008067          	ret

0000000080004074 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80004074:	ff010113          	addi	sp,sp,-16
    80004078:	00113423          	sd	ra,8(sp)
    8000407c:	00813023          	sd	s0,0(sp)
    80004080:	01010413          	addi	s0,sp,16
    80004084:	00007797          	auipc	a5,0x7
    80004088:	57c78793          	addi	a5,a5,1404 # 8000b600 <_ZTV9Semaphore+0x10>
    8000408c:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    sem_open(&myHandle, init);
    80004090:	02059593          	slli	a1,a1,0x20
    80004094:	0205d593          	srli	a1,a1,0x20
    80004098:	00850513          	addi	a0,a0,8
    8000409c:	ffffd097          	auipc	ra,0xffffd
    800040a0:	3ec080e7          	jalr	1004(ra) # 80001488 <sem_open>
}
    800040a4:	00813083          	ld	ra,8(sp)
    800040a8:	00013403          	ld	s0,0(sp)
    800040ac:	01010113          	addi	sp,sp,16
    800040b0:	00008067          	ret

00000000800040b4 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800040b4:	ff010113          	addi	sp,sp,-16
    800040b8:	00113423          	sd	ra,8(sp)
    800040bc:	00813023          	sd	s0,0(sp)
    800040c0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800040c4:	00853503          	ld	a0,8(a0)
    800040c8:	ffffd097          	auipc	ra,0xffffd
    800040cc:	468080e7          	jalr	1128(ra) # 80001530 <sem_wait>
}
    800040d0:	00813083          	ld	ra,8(sp)
    800040d4:	00013403          	ld	s0,0(sp)
    800040d8:	01010113          	addi	sp,sp,16
    800040dc:	00008067          	ret

00000000800040e0 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800040e0:	ff010113          	addi	sp,sp,-16
    800040e4:	00113423          	sd	ra,8(sp)
    800040e8:	00813023          	sd	s0,0(sp)
    800040ec:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800040f0:	00853503          	ld	a0,8(a0)
    800040f4:	ffffd097          	auipc	ra,0xffffd
    800040f8:	490080e7          	jalr	1168(ra) # 80001584 <sem_signal>
}
    800040fc:	00813083          	ld	ra,8(sp)
    80004100:	00013403          	ld	s0,0(sp)
    80004104:	01010113          	addi	sp,sp,16
    80004108:	00008067          	ret

000000008000410c <_ZN7Console4getcEv>:
char Console::getc() {
    8000410c:	ff010113          	addi	sp,sp,-16
    80004110:	00113423          	sd	ra,8(sp)
    80004114:	00813023          	sd	s0,0(sp)
    80004118:	01010413          	addi	s0,sp,16
    return ::getc();
    8000411c:	ffffd097          	auipc	ra,0xffffd
    80004120:	4bc080e7          	jalr	1212(ra) # 800015d8 <getc>
}
    80004124:	00813083          	ld	ra,8(sp)
    80004128:	00013403          	ld	s0,0(sp)
    8000412c:	01010113          	addi	sp,sp,16
    80004130:	00008067          	ret

0000000080004134 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80004134:	ff010113          	addi	sp,sp,-16
    80004138:	00113423          	sd	ra,8(sp)
    8000413c:	00813023          	sd	s0,0(sp)
    80004140:	01010413          	addi	s0,sp,16
    ::putc(c);
    80004144:	ffffd097          	auipc	ra,0xffffd
    80004148:	4e8080e7          	jalr	1256(ra) # 8000162c <putc>
}
    8000414c:	00813083          	ld	ra,8(sp)
    80004150:	00013403          	ld	s0,0(sp)
    80004154:	01010113          	addi	sp,sp,16
    80004158:	00008067          	ret

000000008000415c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    8000415c:	fe010113          	addi	sp,sp,-32
    80004160:	00113c23          	sd	ra,24(sp)
    80004164:	00813823          	sd	s0,16(sp)
    80004168:	00913423          	sd	s1,8(sp)
    8000416c:	01213023          	sd	s2,0(sp)
    80004170:	02010413          	addi	s0,sp,32
    80004174:	00050493          	mv	s1,a0
    80004178:	00058913          	mv	s2,a1
    8000417c:	00000097          	auipc	ra,0x0
    80004180:	e78080e7          	jalr	-392(ra) # 80003ff4 <_ZN6ThreadC1Ev>
    80004184:	00007797          	auipc	a5,0x7
    80004188:	49c78793          	addi	a5,a5,1180 # 8000b620 <_ZTV14PeriodicThread+0x10>
    8000418c:	00f4b023          	sd	a5,0(s1)
    80004190:	00007717          	auipc	a4,0x7
    80004194:	7a870713          	addi	a4,a4,1960 # 8000b938 <_ZN14PeriodicThread2IDE>
    80004198:	00073783          	ld	a5,0(a4)
    8000419c:	00178693          	addi	a3,a5,1
    800041a0:	00d73023          	sd	a3,0(a4)
    800041a4:	02f4b023          	sd	a5,32(s1)
    time = period;
    800041a8:	0124b823          	sd	s2,16(s1)
    flag_stop = true;
    800041ac:	00100793          	li	a5,1
    800041b0:	00f48c23          	sb	a5,24(s1)
    set_periodic((thread_t)this);
    800041b4:	00048513          	mv	a0,s1
    800041b8:	ffffd097          	auipc	ra,0xffffd
    800041bc:	5b4080e7          	jalr	1460(ra) # 8000176c <set_periodic>
    800041c0:	0200006f          	j	800041e0 <_ZN14PeriodicThreadC1Em+0x84>
    800041c4:	00050913          	mv	s2,a0
PeriodicThread::PeriodicThread(time_t period) {
    800041c8:	00048513          	mv	a0,s1
    800041cc:	00000097          	auipc	ra,0x0
    800041d0:	a6c080e7          	jalr	-1428(ra) # 80003c38 <_ZN6ThreadD1Ev>
    800041d4:	00090513          	mv	a0,s2
    800041d8:	00009097          	auipc	ra,0x9
    800041dc:	8a0080e7          	jalr	-1888(ra) # 8000ca78 <_Unwind_Resume>
}
    800041e0:	01813083          	ld	ra,24(sp)
    800041e4:	01013403          	ld	s0,16(sp)
    800041e8:	00813483          	ld	s1,8(sp)
    800041ec:	00013903          	ld	s2,0(sp)
    800041f0:	02010113          	addi	sp,sp,32
    800041f4:	00008067          	ret

00000000800041f8 <_ZN6Thread3runEv>:



protected:
    Thread();
    virtual void run() {}
    800041f8:	ff010113          	addi	sp,sp,-16
    800041fc:	00813423          	sd	s0,8(sp)
    80004200:	01010413          	addi	s0,sp,16
    80004204:	00813403          	ld	s0,8(sp)
    80004208:	01010113          	addi	sp,sp,16
    8000420c:	00008067          	ret

0000000080004210 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void stop(){flag_stop = false;}
//    uint64 getId()const{ id; }
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation(){}
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00813423          	sd	s0,8(sp)
    80004218:	01010413          	addi	s0,sp,16
    8000421c:	00813403          	ld	s0,8(sp)
    80004220:	01010113          	addi	sp,sp,16
    80004224:	00008067          	ret

0000000080004228 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80004228:	ff010113          	addi	sp,sp,-16
    8000422c:	00113423          	sd	ra,8(sp)
    80004230:	00813023          	sd	s0,0(sp)
    80004234:	01010413          	addi	s0,sp,16
    80004238:	00007797          	auipc	a5,0x7
    8000423c:	3e878793          	addi	a5,a5,1000 # 8000b620 <_ZTV14PeriodicThread+0x10>
    80004240:	00f53023          	sd	a5,0(a0)
    80004244:	00000097          	auipc	ra,0x0
    80004248:	9f4080e7          	jalr	-1548(ra) # 80003c38 <_ZN6ThreadD1Ev>
    8000424c:	00813083          	ld	ra,8(sp)
    80004250:	00013403          	ld	s0,0(sp)
    80004254:	01010113          	addi	sp,sp,16
    80004258:	00008067          	ret

000000008000425c <_ZN14PeriodicThreadD0Ev>:
    8000425c:	fe010113          	addi	sp,sp,-32
    80004260:	00113c23          	sd	ra,24(sp)
    80004264:	00813823          	sd	s0,16(sp)
    80004268:	00913423          	sd	s1,8(sp)
    8000426c:	02010413          	addi	s0,sp,32
    80004270:	00050493          	mv	s1,a0
    80004274:	00007797          	auipc	a5,0x7
    80004278:	3ac78793          	addi	a5,a5,940 # 8000b620 <_ZTV14PeriodicThread+0x10>
    8000427c:	00f53023          	sd	a5,0(a0)
    80004280:	00000097          	auipc	ra,0x0
    80004284:	9b8080e7          	jalr	-1608(ra) # 80003c38 <_ZN6ThreadD1Ev>
    80004288:	00048513          	mv	a0,s1
    8000428c:	00000097          	auipc	ra,0x0
    80004290:	b28080e7          	jalr	-1240(ra) # 80003db4 <_ZdlPv>
    80004294:	01813083          	ld	ra,24(sp)
    80004298:	01013403          	ld	s0,16(sp)
    8000429c:	00813483          	ld	s1,8(sp)
    800042a0:	02010113          	addi	sp,sp,32
    800042a4:	00008067          	ret

00000000800042a8 <_ZN5Riscv14switch_to_userEv>:
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/semaphore.hpp"
#include "../h/console.hpp"

void Riscv::switch_to_user(){
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00813423          	sd	s0,8(sp)
    800042b0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800042b4:	10000793          	li	a5,256
    800042b8:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
}
    800042bc:	00813403          	ld	s0,8(sp)
    800042c0:	01010113          	addi	sp,sp,16
    800042c4:	00008067          	ret

00000000800042c8 <_ZN5Riscv21switch_to_priviledgedEv>:

void Riscv::switch_to_priviledged() {
    800042c8:	ff010113          	addi	sp,sp,-16
    800042cc:	00813423          	sd	s0,8(sp)
    800042d0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800042d4:	10000793          	li	a5,256
    800042d8:	1007a073          	csrs	sstatus,a5
    ms_sstatus(SSTATUS_SPP);
}
    800042dc:	00813403          	ld	s0,8(sp)
    800042e0:	01010113          	addi	sp,sp,16
    800042e4:	00008067          	ret

00000000800042e8 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie(){
    800042e8:	ff010113          	addi	sp,sp,-16
    800042ec:	00813423          	sd	s0,8(sp)
    800042f0:	01010413          	addi	s0,sp,16

    __asm__ volatile("csrw sepc, ra");
    800042f4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800042f8:	10200073          	sret
}
    800042fc:	00813403          	ld	s0,8(sp)
    80004300:	01010113          	addi	sp,sp,16
    80004304:	00008067          	ret

0000000080004308 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80004308:	f5010113          	addi	sp,sp,-176
    8000430c:	0a113423          	sd	ra,168(sp)
    80004310:	0a813023          	sd	s0,160(sp)
    80004314:	08913c23          	sd	s1,152(sp)
    80004318:	09213823          	sd	s2,144(sp)
    8000431c:	0b010413          	addi	s0,sp,176

//    uint64 arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7;
    uint64 args[8];
    __asm__ volatile("mv %[arg0], a0" : [arg0]"=r"(*args)); // za kod sistemskog poziva
    80004320:	00050793          	mv	a5,a0
    80004324:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("mv %[arg1], a1" : [arg1]"=r"(*(args + 1))); // argumenti s leva na desno
    80004328:	00058793          	mv	a5,a1
    8000432c:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile("mv %[arg2], a2" : [arg2]"=r"(*(args + 2)));
    80004330:	00060793          	mv	a5,a2
    80004334:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile("mv %[arg3], a3" : [arg3]"=r"(*(args + 3)));
    80004338:	00068793          	mv	a5,a3
    8000433c:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %[arg4], a4" : [arg4]"=r"(*(args + 4)));
    80004340:	00070793          	mv	a5,a4
    80004344:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("mv %[arg5], a5" : [arg5]"=r"(*(args + 5)));
    80004348:	00078793          	mv	a5,a5
    8000434c:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile("mv %[arg6], a6" : [arg6]"=r"(*(args + 6)));
    80004350:	00080793          	mv	a5,a6
    80004354:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile("mv %[arg7], a7" : [arg7]"=r"(*(args + 7)));
    80004358:	00088793          	mv	a5,a7
    8000435c:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80004360:	142027f3          	csrr	a5,scause
    80004364:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80004368:	f7843703          	ld	a4,-136(s0)

    uint64 scause = r_scause();

    if (scause == 0x8000000000000001UL){
    8000436c:	fff00793          	li	a5,-1
    80004370:	03f79793          	slli	a5,a5,0x3f
    80004374:	00178793          	addi	a5,a5,1
    80004378:	02f70c63          	beq	a4,a5,800043b0 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

    }
    else if(scause == 0x0000000000000009UL || scause == 0x0000000000000008UL){
    8000437c:	ff870793          	addi	a5,a4,-8
    80004380:	00100693          	li	a3,1
    80004384:	0af6f463          	bgeu	a3,a5,8000442c <_ZN5Riscv20handleSupervisorTrapEv+0x124>
            // pomeramo pc za 4 bajta unapred
            w_sepc(sepc);
            if(*args != 0x60 && *args != 0x61)
                w_sstatus(sstatus);
    }
    else if (scause == 0x8000000000000009UL)
    80004388:	fff00793          	li	a5,-1
    8000438c:	03f79793          	slli	a5,a5,0x3f
    80004390:	00978793          	addi	a5,a5,9
    80004394:	40f70263          	beq	a4,a5,80004798 <_ZN5Riscv20handleSupervisorTrapEv+0x490>
        // unexpected trap cause
        // print scause
        // print sepc
        // print stval
    }
    80004398:	0a813083          	ld	ra,168(sp)
    8000439c:	0a013403          	ld	s0,160(sp)
    800043a0:	09813483          	ld	s1,152(sp)
    800043a4:	09013903          	ld	s2,144(sp)
    800043a8:	0b010113          	addi	sp,sp,176
    800043ac:	00008067          	ret
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800043b0:	00200793          	li	a5,2
    800043b4:	1447b073          	csrc	sip,a5
        TCB::time_slice_counter++;
    800043b8:	00007497          	auipc	s1,0x7
    800043bc:	3704b483          	ld	s1,880(s1) # 8000b728 <_GLOBAL_OFFSET_TABLE_+0x58>
    800043c0:	0004b783          	ld	a5,0(s1)
    800043c4:	00178793          	addi	a5,a5,1
    800043c8:	00f4b023          	sd	a5,0(s1)
        TS::decrement_and_remove();
    800043cc:	00001097          	auipc	ra,0x1
    800043d0:	d40080e7          	jalr	-704(ra) # 8000510c <_ZN2TS20decrement_and_removeEv>
        if (TCB::time_slice_counter >= TCB::running->get_time_slice()) {
    800043d4:	00007797          	auipc	a5,0x7
    800043d8:	35c7b783          	ld	a5,860(a5) # 8000b730 <_GLOBAL_OFFSET_TABLE_+0x60>
    800043dc:	0007b783          	ld	a5,0(a5)
    uint64 get_time_slice()const{ return time_slice; }
    800043e0:	0507b783          	ld	a5,80(a5)
    800043e4:	0004b703          	ld	a4,0(s1)
    800043e8:	faf768e3          	bltu	a4,a5,80004398 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800043ec:	141027f3          	csrr	a5,sepc
    800043f0:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    800043f4:	f8843783          	ld	a5,-120(s0)
            uint64 volatile sepc = r_sepc();
    800043f8:	f4f43c23          	sd	a5,-168(s0)

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800043fc:	100027f3          	csrr	a5,sstatus
    80004400:	f8f43023          	sd	a5,-128(s0)
    return sstatus;
    80004404:	f8043783          	ld	a5,-128(s0)
            uint64 volatile sstatus = r_sstatus();
    80004408:	f6f43023          	sd	a5,-160(s0)
            TCB::time_slice_counter = 0;
    8000440c:	0004b023          	sd	zero,0(s1)
            TCB::thread_dispatch();
    80004410:	00000097          	auipc	ra,0x0
    80004414:	450080e7          	jalr	1104(ra) # 80004860 <_ZN3TCB15thread_dispatchEv>
            w_sstatus(sstatus);
    80004418:	f6043783          	ld	a5,-160(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000441c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80004420:	f5843783          	ld	a5,-168(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80004424:	14179073          	csrw	sepc,a5
}
    80004428:	f71ff06f          	j	80004398 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000442c:	141027f3          	csrr	a5,sepc
    80004430:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80004434:	f9843783          	ld	a5,-104(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80004438:	00478793          	addi	a5,a5,4
    8000443c:	f6f43423          	sd	a5,-152(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80004440:	100027f3          	csrr	a5,sstatus
    80004444:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80004448:	f9043783          	ld	a5,-112(s0)
        uint64 volatile sstatus = r_sstatus();
    8000444c:	f6f43823          	sd	a5,-144(s0)
            switch(*args){
    80004450:	fa043783          	ld	a5,-96(s0)
    80004454:	07000713          	li	a4,112
    80004458:	02f76463          	bltu	a4,a5,80004480 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    8000445c:	32078663          	beqz	a5,80004788 <_ZN5Riscv20handleSupervisorTrapEv+0x480>
    80004460:	32f76863          	bltu	a4,a5,80004790 <_ZN5Riscv20handleSupervisorTrapEv+0x488>
    80004464:	00279793          	slli	a5,a5,0x2
    80004468:	00005717          	auipc	a4,0x5
    8000446c:	e0070713          	addi	a4,a4,-512 # 80009268 <CONSOLE_STATUS+0x258>
    80004470:	00e787b3          	add	a5,a5,a4
    80004474:	0007a783          	lw	a5,0(a5)
    80004478:	00e787b3          	add	a5,a5,a4
    8000447c:	00078067          	jr	a5
    80004480:	11100713          	li	a4,273
    80004484:	00e79c63          	bne	a5,a4,8000449c <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    void set_finished(bool f){ this->finished = f; }
    80004488:	fa843783          	ld	a5,-88(s0)
    8000448c:	00100713          	li	a4,1
    80004490:	02e78423          	sb	a4,40(a5)
                    retVal = 0;
    80004494:	00000513          	li	a0,0
    80004498:	0080006f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
            switch(*args){
    8000449c:	00000513          	li	a0,0
            __asm__ volatile("mv a0, %[ret]" : : [ret]"r"(retVal));
    800044a0:	00050513          	mv	a0,a0
            __asm__ volatile("sd a0, 10 * 8(s0)");
    800044a4:	04a43823          	sd	a0,80(s0)
            w_sepc(sepc);
    800044a8:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800044ac:	14179073          	csrw	sepc,a5
            if(*args != 0x60 && *args != 0x61)
    800044b0:	fa043783          	ld	a5,-96(s0)
    800044b4:	fa078793          	addi	a5,a5,-96
    800044b8:	00100713          	li	a4,1
    800044bc:	ecf77ee3          	bgeu	a4,a5,80004398 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
                w_sstatus(sstatus);
    800044c0:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800044c4:	10079073          	csrw	sstatus,a5
}
    800044c8:	ed1ff06f          	j	80004398 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
class MemoryAllocator{
public:

    // dodaj instancu
    static MemoryAllocator& getInstance(){
        static MemoryAllocator instance;
    800044cc:	00007797          	auipc	a5,0x7
    800044d0:	2b47c783          	lbu	a5,692(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800044d4:	04079e63          	bnez	a5,80004530 <_ZN5Riscv20handleSupervisorTrapEv+0x228>

    FreeMem* fmem_head = nullptr;

    MemoryAllocator(){

        size_t heapStart = (size_t)HEAP_START_ADDR;
    800044d8:	00007797          	auipc	a5,0x7
    800044dc:	2187b783          	ld	a5,536(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800044e0:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    800044e4:	00007717          	auipc	a4,0x7
    800044e8:	25473703          	ld	a4,596(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    800044ec:	00073703          	ld	a4,0(a4)
    800044f0:	fff70713          	addi	a4,a4,-1

        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    800044f4:	40f70733          	sub	a4,a4,a5
    800044f8:	00675713          	srli	a4,a4,0x6

        // poravnaj na prvu krstenu adresu
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    800044fc:	03f7f693          	andi	a3,a5,63
    80004500:	00068663          	beqz	a3,8000450c <_ZN5Riscv20handleSupervisorTrapEv+0x204>
    80004504:	04000613          	li	a2,64
    80004508:	40d606b3          	sub	a3,a2,a3
    8000450c:	00d787b3          	add	a5,a5,a3
    80004510:	00007697          	auipc	a3,0x7
    80004514:	26f6bc23          	sd	a5,632(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>

        // napravi node

        fmem_head->next = nullptr;
    80004518:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    8000451c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004520:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004524:	00100793          	li	a5,1
    80004528:	00007717          	auipc	a4,0x7
    8000452c:	24f70c23          	sb	a5,600(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_alloc(*(args + 1)));
    80004530:	fa843583          	ld	a1,-88(s0)
    80004534:	00007517          	auipc	a0,0x7
    80004538:	25450513          	addi	a0,a0,596 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	8b0080e7          	jalr	-1872(ra) # 80004dec <_ZN15MemoryAllocator12memory_allocEm>
                    break;
    80004544:	f5dff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004548:	00007797          	auipc	a5,0x7
    8000454c:	2387c783          	lbu	a5,568(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004550:	04079e63          	bnez	a5,800045ac <_ZN5Riscv20handleSupervisorTrapEv+0x2a4>
        size_t heapStart = (size_t)HEAP_START_ADDR;
    80004554:	00007797          	auipc	a5,0x7
    80004558:	19c7b783          	ld	a5,412(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000455c:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    80004560:	00007717          	auipc	a4,0x7
    80004564:	1d873703          	ld	a4,472(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004568:	00073703          	ld	a4,0(a4)
    8000456c:	fff70713          	addi	a4,a4,-1
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80004570:	40f70733          	sub	a4,a4,a5
    80004574:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80004578:	03f7f693          	andi	a3,a5,63
    8000457c:	00068663          	beqz	a3,80004588 <_ZN5Riscv20handleSupervisorTrapEv+0x280>
    80004580:	04000613          	li	a2,64
    80004584:	40d606b3          	sub	a3,a2,a3
    80004588:	00d787b3          	add	a5,a5,a3
    8000458c:	00007697          	auipc	a3,0x7
    80004590:	1ef6be23          	sd	a5,508(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80004594:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004598:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    8000459c:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    800045a0:	00100793          	li	a5,1
    800045a4:	00007717          	auipc	a4,0x7
    800045a8:	1cf70e23          	sb	a5,476(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_free((void*)*(args + 1)));
    800045ac:	fa843583          	ld	a1,-88(s0)
    800045b0:	00007517          	auipc	a0,0x7
    800045b4:	1d850513          	addi	a0,a0,472 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800045b8:	00001097          	auipc	ra,0x1
    800045bc:	908080e7          	jalr	-1784(ra) # 80004ec0 <_ZN15MemoryAllocator11memory_freeEPv>
                    break;
    800045c0:	ee1ff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(TCB::thread_create((TCB**)*(args + 1),
    800045c4:	fd043703          	ld	a4,-48(s0)
    800045c8:	00e03733          	snez	a4,a4
    800045cc:	fc043683          	ld	a3,-64(s0)
    800045d0:	fb843603          	ld	a2,-72(s0)
    800045d4:	fb043583          	ld	a1,-80(s0)
    800045d8:	fa843503          	ld	a0,-88(s0)
    800045dc:	00000097          	auipc	ra,0x0
    800045e0:	4e4080e7          	jalr	1252(ra) # 80004ac0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b>
                    break;
    800045e4:	ebdff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = TCB::thread_exit();
    800045e8:	00000097          	auipc	ra,0x0
    800045ec:	3d0080e7          	jalr	976(ra) # 800049b8 <_ZN3TCB11thread_exitEv>
                    break;
    800045f0:	eb1ff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    TCB::thread_dispatch();
    800045f4:	00000097          	auipc	ra,0x0
    800045f8:	26c080e7          	jalr	620(ra) # 80004860 <_ZN3TCB15thread_dispatchEv>
        uint64 retVal = 0;
    800045fc:	00000513          	li	a0,0
    80004600:	ea1ff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_open((MySemaphore**)*(args + 1),
    80004604:	fb043583          	ld	a1,-80(s0)
    80004608:	fa843503          	ld	a0,-88(s0)
    8000460c:	ffffe097          	auipc	ra,0xffffe
    80004610:	a98080e7          	jalr	-1384(ra) # 800020a4 <_ZN11MySemaphore8sem_openEPPS_m>
                    break;
    80004614:	e8dff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_close((MySemaphore*)*(args + 1)));
    80004618:	fa843503          	ld	a0,-88(s0)
    8000461c:	ffffe097          	auipc	ra,0xffffe
    80004620:	b94080e7          	jalr	-1132(ra) # 800021b0 <_ZN11MySemaphore9sem_closeEPS_>
                    break;
    80004624:	e7dff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_wait((MySemaphore*)*(args + 1)));
    80004628:	fa843503          	ld	a0,-88(s0)
    8000462c:	ffffe097          	auipc	ra,0xffffe
    80004630:	c9c080e7          	jalr	-868(ra) # 800022c8 <_ZN11MySemaphore8sem_waitEPS_>
                    break;
    80004634:	e6dff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    retVal = (uint64)(MySemaphore::sem_signal((MySemaphore*)*(args + 1)));
    80004638:	fa843503          	ld	a0,-88(s0)
    8000463c:	ffffe097          	auipc	ra,0xffffe
    80004640:	d5c080e7          	jalr	-676(ra) # 80002398 <_ZN11MySemaphore10sem_signalEPS_>
                    break;
    80004644:	e5dff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    TCB::time_sleep(*(args + 1));
    80004648:	fa843503          	ld	a0,-88(s0)
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	66c080e7          	jalr	1644(ra) # 80004cb8 <_ZN3TCB10time_sleepEm>
        uint64 retVal = 0;
    80004654:	00000513          	li	a0,0
    80004658:	e49ff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    8000465c:	00007797          	auipc	a5,0x7
    80004660:	15c7c783          	lbu	a5,348(a5) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    80004664:	00078c63          	beqz	a5,8000467c <_ZN5Riscv20handleSupervisorTrapEv+0x374>
                    retVal = Console::getInstance().get_from_input();
    80004668:	00007517          	auipc	a0,0x7
    8000466c:	15850513          	addi	a0,a0,344 # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	4e8080e7          	jalr	1256(ra) # 80002b58 <_ZN7Console14get_from_inputEv>
                    break;
    80004678:	e29ff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    8000467c:	00007517          	auipc	a0,0x7
    80004680:	14450513          	addi	a0,a0,324 # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    80004684:	ffffe097          	auipc	ra,0xffffe
    80004688:	314080e7          	jalr	788(ra) # 80002998 <_ZN7ConsoleC1Ev>
    8000468c:	00100793          	li	a5,1
    80004690:	00007717          	auipc	a4,0x7
    80004694:	12f70423          	sb	a5,296(a4) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    80004698:	fd1ff06f          	j	80004668 <_ZN5Riscv20handleSupervisorTrapEv+0x360>
    8000469c:	00007797          	auipc	a5,0x7
    800046a0:	11c7c783          	lbu	a5,284(a5) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    800046a4:	02078063          	beqz	a5,800046c4 <_ZN5Riscv20handleSupervisorTrapEv+0x3bc>
                    Console::getInstance().put_in_output((char)*(args + 1));
    800046a8:	fa844583          	lbu	a1,-88(s0)
    800046ac:	00007517          	auipc	a0,0x7
    800046b0:	11450513          	addi	a0,a0,276 # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    800046b4:	ffffe097          	auipc	ra,0xffffe
    800046b8:	4d4080e7          	jalr	1236(ra) # 80002b88 <_ZN7Console13put_in_outputEc>
        uint64 retVal = 0;
    800046bc:	00000513          	li	a0,0
    800046c0:	de1ff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    800046c4:	00007517          	auipc	a0,0x7
    800046c8:	0fc50513          	addi	a0,a0,252 # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    800046cc:	ffffe097          	auipc	ra,0xffffe
    800046d0:	2cc080e7          	jalr	716(ra) # 80002998 <_ZN7ConsoleC1Ev>
    800046d4:	00100793          	li	a5,1
    800046d8:	00007717          	auipc	a4,0x7
    800046dc:	0ef70023          	sb	a5,224(a4) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    800046e0:	fc9ff06f          	j	800046a8 <_ZN5Riscv20handleSupervisorTrapEv+0x3a0>
    800046e4:	00007797          	auipc	a5,0x7
    800046e8:	0ac7c783          	lbu	a5,172(a5) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    800046ec:	02079463          	bnez	a5,80004714 <_ZN5Riscv20handleSupervisorTrapEv+0x40c>
        head = nullptr;
    800046f0:	00007797          	auipc	a5,0x7
    800046f4:	0207b783          	ld	a5,32(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x40>
    800046f8:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    800046fc:	00007797          	auipc	a5,0x7
    80004700:	fec7b783          	ld	a5,-20(a5) # 8000b6e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004704:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004708:	00100793          	li	a5,1
    8000470c:	00007717          	auipc	a4,0x7
    80004710:	08f70223          	sb	a5,132(a4) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
                    Scheduler::getInstance().put((TCB*)*(args + 1));
    80004714:	fa843583          	ld	a1,-88(s0)
    80004718:	00007517          	auipc	a0,0x7
    8000471c:	08050513          	addi	a0,a0,128 # 8000b798 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004720:	00000097          	auipc	ra,0x0
    80004724:	66c080e7          	jalr	1644(ra) # 80004d8c <_ZN9Scheduler3putEP3TCB>
        uint64 retVal = 0;
    80004728:	00000513          	li	a0,0
    8000472c:	d75ff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Riscv::switch_to_user();
    80004730:	00000097          	auipc	ra,0x0
    80004734:	b78080e7          	jalr	-1160(ra) # 800042a8 <_ZN5Riscv14switch_to_userEv>
        uint64 retVal = 0;
    80004738:	00000513          	li	a0,0
                    break;
    8000473c:	d65ff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    Riscv::switch_to_priviledged();
    80004740:	00000097          	auipc	ra,0x0
    80004744:	b88080e7          	jalr	-1144(ra) # 800042c8 <_ZN5Riscv21switch_to_priviledgedEv>
        uint64 retVal = 0;
    80004748:	00000513          	li	a0,0
                    break;
    8000474c:	d55ff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    ((TCB*)*(args + 1))->set_periodic(true);
    80004750:	fa843583          	ld	a1,-88(s0)
        periodic = b;
    80004754:	00100793          	li	a5,1
    80004758:	06f580a3          	sb	a5,97(a1)

class periodicThread{

public:
    static periodicThread& getInstance(){
        static periodicThread instance;
    8000475c:	00007797          	auipc	a5,0x7
    80004760:	1e47c783          	lbu	a5,484(a5) # 8000b940 <_ZGVZN14periodicThread11getInstanceEvE8instance>
    80004764:	00079863          	bnez	a5,80004774 <_ZN5Riscv20handleSupervisorTrapEv+0x46c>
    80004768:	00100793          	li	a5,1
    8000476c:	00007717          	auipc	a4,0x7
    80004770:	1cf70a23          	sb	a5,468(a4) # 8000b940 <_ZGVZN14periodicThread11getInstanceEvE8instance>
        periodicThread::getInstance().put(this);
    80004774:	00007517          	auipc	a0,0x7
    80004778:	1d450513          	addi	a0,a0,468 # 8000b948 <_ZZN14periodicThread11getInstanceEvE8instance>
    8000477c:	ffffe097          	auipc	ra,0xffffe
    80004780:	c7c080e7          	jalr	-900(ra) # 800023f8 <_ZN14periodicThread3putEP3TCB>
    }
    80004784:	d05ff06f          	j	80004488 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
            switch(*args){
    80004788:	00000513          	li	a0,0
    8000478c:	d15ff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
    80004790:	00000513          	li	a0,0
    80004794:	d0dff06f          	j	800044a0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        int irq = plic_claim();
    80004798:	00003097          	auipc	ra,0x3
    8000479c:	d4c080e7          	jalr	-692(ra) # 800074e4 <plic_claim>
    800047a0:	00050913          	mv	s2,a0
        if(irq == CONSOLE_IRQ){
    800047a4:	00a00793          	li	a5,10
    800047a8:	04f50e63          	beq	a0,a5,80004804 <_ZN5Riscv20handleSupervisorTrapEv+0x4fc>
        plic_complete(irq);
    800047ac:	00090513          	mv	a0,s2
    800047b0:	00003097          	auipc	ra,0x3
    800047b4:	d6c080e7          	jalr	-660(ra) # 8000751c <plic_complete>
    800047b8:	be1ff06f          	j	80004398 <_ZN5Riscv20handleSupervisorTrapEv+0x90>
    800047bc:	00007517          	auipc	a0,0x7
    800047c0:	00450513          	addi	a0,a0,4 # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    800047c4:	ffffe097          	auipc	ra,0xffffe
    800047c8:	1d4080e7          	jalr	468(ra) # 80002998 <_ZN7ConsoleC1Ev>
    800047cc:	00100793          	li	a5,1
    800047d0:	00007717          	auipc	a4,0x7
    800047d4:	fef70423          	sb	a5,-24(a4) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
                Console::getInstance().put_in_input(*((char*)CONSOLE_RX_DATA));
    800047d8:	00007797          	auipc	a5,0x7
    800047dc:	f007b783          	ld	a5,-256(a5) # 8000b6d8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800047e0:	0007b483          	ld	s1,0(a5)
    800047e4:	0004c583          	lbu	a1,0(s1)
    800047e8:	00007517          	auipc	a0,0x7
    800047ec:	fd850513          	addi	a0,a0,-40 # 8000b7c0 <_ZZN7Console11getInstanceEvE8instance>
    800047f0:	ffffe097          	auipc	ra,0xffffe
    800047f4:	33c080e7          	jalr	828(ra) # 80002b2c <_ZN7Console12put_in_inputEc>
                if(*((char*)CONSOLE_RX_DATA) == 107){
    800047f8:	0004c703          	lbu	a4,0(s1)
    800047fc:	06b00793          	li	a5,107
    80004800:	02f70663          	beq	a4,a5,8000482c <_ZN5Riscv20handleSupervisorTrapEv+0x524>
            while(*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80004804:	00007797          	auipc	a5,0x7
    80004808:	edc7b783          	ld	a5,-292(a5) # 8000b6e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000480c:	0007b783          	ld	a5,0(a5)
    80004810:	0007c783          	lbu	a5,0(a5)
    80004814:	0017f793          	andi	a5,a5,1
    80004818:	f8078ae3          	beqz	a5,800047ac <_ZN5Riscv20handleSupervisorTrapEv+0x4a4>
    8000481c:	00007797          	auipc	a5,0x7
    80004820:	f9c7c783          	lbu	a5,-100(a5) # 8000b7b8 <_ZGVZN7Console11getInstanceEvE8instance>
    80004824:	fa079ae3          	bnez	a5,800047d8 <_ZN5Riscv20handleSupervisorTrapEv+0x4d0>
    80004828:	f95ff06f          	j	800047bc <_ZN5Riscv20handleSupervisorTrapEv+0x4b4>
    8000482c:	00007797          	auipc	a5,0x7
    80004830:	1147c783          	lbu	a5,276(a5) # 8000b940 <_ZGVZN14periodicThread11getInstanceEvE8instance>
    80004834:	00079863          	bnez	a5,80004844 <_ZN5Riscv20handleSupervisorTrapEv+0x53c>
    80004838:	00100793          	li	a5,1
    8000483c:	00007717          	auipc	a4,0x7
    80004840:	10f70223          	sb	a5,260(a4) # 8000b940 <_ZGVZN14periodicThread11getInstanceEvE8instance>
                    TCB* tmp = periodicThread::getInstance().get();
    80004844:	00007517          	auipc	a0,0x7
    80004848:	10450513          	addi	a0,a0,260 # 8000b948 <_ZZN14periodicThread11getInstanceEvE8instance>
    8000484c:	ffffe097          	auipc	ra,0xffffe
    80004850:	bf0080e7          	jalr	-1040(ra) # 8000243c <_ZN14periodicThread3getEv>
    void set_finished(bool f){ this->finished = f; }
    80004854:	00100793          	li	a5,1
    80004858:	02f50423          	sb	a5,40(a0)
    8000485c:	fa9ff06f          	j	80004804 <_ZN5Riscv20handleSupervisorTrapEv+0x4fc>

0000000080004860 <_ZN3TCB15thread_dispatchEv>:
    TCB::thread_dispatch();
    // do ovog dela nece nikad doci jer thread_dispatch nece nit koju gasimo staviti u scheduler
    return -1;
}

void TCB::thread_dispatch() {
    80004860:	fe010113          	addi	sp,sp,-32
    80004864:	00113c23          	sd	ra,24(sp)
    80004868:	00813823          	sd	s0,16(sp)
    8000486c:	00913423          	sd	s1,8(sp)
    80004870:	02010413          	addi	s0,sp,32
//    Scheduler::printScheduler();
    TCB * old = running;
    80004874:	00007497          	auipc	s1,0x7
    80004878:	0dc4b483          	ld	s1,220(s1) # 8000b950 <_ZN3TCB7runningE>
    8000487c:	00007797          	auipc	a5,0x7
    80004880:	f147c783          	lbu	a5,-236(a5) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004884:	02079463          	bnez	a5,800048ac <_ZN3TCB15thread_dispatchEv+0x4c>
        head = nullptr;
    80004888:	00007797          	auipc	a5,0x7
    8000488c:	e887b783          	ld	a5,-376(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004890:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004894:	00007797          	auipc	a5,0x7
    80004898:	e547b783          	ld	a5,-428(a5) # 8000b6e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000489c:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    800048a0:	00100793          	li	a5,1
    800048a4:	00007717          	auipc	a4,0x7
    800048a8:	eef70623          	sb	a5,-276(a4) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    running = Scheduler::getInstance().get();
    800048ac:	00007517          	auipc	a0,0x7
    800048b0:	eec50513          	addi	a0,a0,-276 # 8000b798 <_ZZN9Scheduler11getInstanceEvE8instance>
    800048b4:	00000097          	auipc	ra,0x0
    800048b8:	46c080e7          	jalr	1132(ra) # 80004d20 <_ZN9Scheduler3getEv>
    800048bc:	00007797          	auipc	a5,0x7
    800048c0:	08a7ba23          	sd	a0,148(a5) # 8000b950 <_ZN3TCB7runningE>
    bool is_finished()const{return finished;}
    800048c4:	0284c783          	lbu	a5,40(s1)
    if (!old->is_finished()) {
    800048c8:	06079a63          	bnez	a5,8000493c <_ZN3TCB15thread_dispatchEv+0xdc>
    800048cc:	00007797          	auipc	a5,0x7
    800048d0:	ec47c783          	lbu	a5,-316(a5) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    800048d4:	02079463          	bnez	a5,800048fc <_ZN3TCB15thread_dispatchEv+0x9c>
        head = nullptr;
    800048d8:	00007797          	auipc	a5,0x7
    800048dc:	e387b783          	ld	a5,-456(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x40>
    800048e0:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    800048e4:	00007797          	auipc	a5,0x7
    800048e8:	e047b783          	ld	a5,-508(a5) # 8000b6e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800048ec:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    800048f0:	00100793          	li	a5,1
    800048f4:	00007717          	auipc	a4,0x7
    800048f8:	e8f70e23          	sb	a5,-356(a4) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
        Scheduler::getInstance().put(old);
    800048fc:	00048593          	mv	a1,s1
    80004900:	00007517          	auipc	a0,0x7
    80004904:	e9850513          	addi	a0,a0,-360 # 8000b798 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004908:	00000097          	auipc	ra,0x0
    8000490c:	484080e7          	jalr	1156(ra) # 80004d8c <_ZN9Scheduler3putEP3TCB>
    }
    else{
        TCB::operator delete(old);
    }
//    TCB::time_slice_counter = 0;
    TCB::context_switch(&old->context, &running->context);
    80004910:	00007597          	auipc	a1,0x7
    80004914:	0405b583          	ld	a1,64(a1) # 8000b950 <_ZN3TCB7runningE>
    80004918:	01858593          	addi	a1,a1,24
    8000491c:	01848513          	addi	a0,s1,24
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	910080e7          	jalr	-1776(ra) # 80001230 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80004928:	01813083          	ld	ra,24(sp)
    8000492c:	01013403          	ld	s0,16(sp)
    80004930:	00813483          	ld	s1,8(sp)
    80004934:	02010113          	addi	sp,sp,32
    80004938:	00008067          	ret
    8000493c:	00007797          	auipc	a5,0x7
    80004940:	e447c783          	lbu	a5,-444(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004944:	04079e63          	bnez	a5,800049a0 <_ZN3TCB15thread_dispatchEv+0x140>
        size_t heapStart = (size_t)HEAP_START_ADDR;
    80004948:	00007797          	auipc	a5,0x7
    8000494c:	da87b783          	ld	a5,-600(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004950:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    80004954:	00007717          	auipc	a4,0x7
    80004958:	de473703          	ld	a4,-540(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000495c:	00073703          	ld	a4,0(a4)
    80004960:	fff70713          	addi	a4,a4,-1
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80004964:	40f70733          	sub	a4,a4,a5
    80004968:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    8000496c:	03f7f693          	andi	a3,a5,63
    80004970:	00068663          	beqz	a3,8000497c <_ZN3TCB15thread_dispatchEv+0x11c>
    80004974:	04000613          	li	a2,64
    80004978:	40d606b3          	sub	a3,a2,a3
    8000497c:	00d787b3          	add	a5,a5,a3
    80004980:	00007697          	auipc	a3,0x7
    80004984:	e0f6b423          	sd	a5,-504(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80004988:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    8000498c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004990:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004994:	00100793          	li	a5,1
    80004998:	00007717          	auipc	a4,0x7
    8000499c:	def70423          	sb	a5,-536(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
        uint64 ssize = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    }

    void operator delete(void* p)noexcept{
        MemoryAllocator::getInstance().memory_free(p);
    800049a0:	00048593          	mv	a1,s1
    800049a4:	00007517          	auipc	a0,0x7
    800049a8:	de450513          	addi	a0,a0,-540 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    800049ac:	00000097          	auipc	ra,0x0
    800049b0:	514080e7          	jalr	1300(ra) # 80004ec0 <_ZN15MemoryAllocator11memory_freeEPv>
    }
    800049b4:	f5dff06f          	j	80004910 <_ZN3TCB15thread_dispatchEv+0xb0>

00000000800049b8 <_ZN3TCB11thread_exitEv>:
int TCB::thread_exit() {
    800049b8:	ff010113          	addi	sp,sp,-16
    800049bc:	00113423          	sd	ra,8(sp)
    800049c0:	00813023          	sd	s0,0(sp)
    800049c4:	01010413          	addi	s0,sp,16
    void set_finished(bool f){ this->finished = f; }
    800049c8:	00007797          	auipc	a5,0x7
    800049cc:	f887b783          	ld	a5,-120(a5) # 8000b950 <_ZN3TCB7runningE>
    800049d0:	00100713          	li	a4,1
    800049d4:	02e78423          	sb	a4,40(a5)
    TCB::thread_dispatch();
    800049d8:	00000097          	auipc	ra,0x0
    800049dc:	e88080e7          	jalr	-376(ra) # 80004860 <_ZN3TCB15thread_dispatchEv>
}
    800049e0:	fff00513          	li	a0,-1
    800049e4:	00813083          	ld	ra,8(sp)
    800049e8:	00013403          	ld	s0,0(sp)
    800049ec:	01010113          	addi	sp,sp,16
    800049f0:	00008067          	ret

00000000800049f4 <_ZN3TCB14thread_wrapperEv>:

void TCB::thread_wrapper() {
    800049f4:	ff010113          	addi	sp,sp,-16
    800049f8:	00113423          	sd	ra,8(sp)
    800049fc:	00813023          	sd	s0,0(sp)
    80004a00:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80004a04:	00000097          	auipc	ra,0x0
    80004a08:	8e4080e7          	jalr	-1820(ra) # 800042e8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->argument);
    80004a0c:	00007797          	auipc	a5,0x7
    80004a10:	f447b783          	ld	a5,-188(a5) # 8000b950 <_ZN3TCB7runningE>
    80004a14:	0007b703          	ld	a4,0(a5)
    80004a18:	0087b503          	ld	a0,8(a5)
    80004a1c:	000700e7          	jalr	a4
    thread_exit();
    80004a20:	00000097          	auipc	ra,0x0
    80004a24:	f98080e7          	jalr	-104(ra) # 800049b8 <_ZN3TCB11thread_exitEv>
}
    80004a28:	00813083          	ld	ra,8(sp)
    80004a2c:	00013403          	ld	s0,0(sp)
    80004a30:	01010113          	addi	sp,sp,16
    80004a34:	00008067          	ret

0000000080004a38 <_ZN3TCBC1EPFvPvES0_S0_b>:

TCB::TCB(Body body_init, void *arg, void *stack_space, bool b) {
    80004a38:	ff010113          	addi	sp,sp,-16
    80004a3c:	00813423          	sd	s0,8(sp)
    80004a40:	01010413          	addi	s0,sp,16
    body = body_init;
    80004a44:	00b53023          	sd	a1,0(a0)
    argument = arg;
    80004a48:	00c53423          	sd	a2,8(a0)
    stack = (uint64*)stack_space;
    80004a4c:	00d53823          	sd	a3,16(a0)
    context.ra = (uint64) &thread_wrapper;
    80004a50:	00000797          	auipc	a5,0x0
    80004a54:	fa478793          	addi	a5,a5,-92 # 800049f4 <_ZN3TCB14thread_wrapperEv>
    80004a58:	00f53c23          	sd	a5,24(a0)
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    80004a5c:	04068e63          	beqz	a3,80004ab8 <_ZN3TCBC1EPFvPvES0_S0_b+0x80>
    80004a60:	000017b7          	lui	a5,0x1
    80004a64:	00f686b3          	add	a3,a3,a5
    80004a68:	02d53023          	sd	a3,32(a0)
    finished = false;
    80004a6c:	02050423          	sb	zero,40(a0)
    next_scheduler = nullptr;
    80004a70:	02053823          	sd	zero,48(a0)
    next_sleep = nullptr;
    80004a74:	02053c23          	sd	zero,56(a0)
    next_blocked = nullptr;
    80004a78:	04053023          	sd	zero,64(a0)
    time_slice = DEFAULT_TIME_SLICE;
    80004a7c:	00200793          	li	a5,2
    80004a80:	04f53823          	sd	a5,80(a0)
    sleep = 0;
    80004a84:	04053423          	sd	zero,72(a0)
    id = ID++;
    80004a88:	00007697          	auipc	a3,0x7
    80004a8c:	ec868693          	addi	a3,a3,-312 # 8000b950 <_ZN3TCB7runningE>
    80004a90:	0086b783          	ld	a5,8(a3)
    80004a94:	00178613          	addi	a2,a5,1 # 1001 <_entry-0x7fffefff>
    80004a98:	00c6b423          	sd	a2,8(a3)
    80004a9c:	04f53c23          	sd	a5,88(a0)
    flag = b;
    80004aa0:	06e50023          	sb	a4,96(a0)
    periodic = false;
    80004aa4:	060500a3          	sb	zero,97(a0)
    next_period = nullptr;
    80004aa8:	06053423          	sd	zero,104(a0)
}
    80004aac:	00813403          	ld	s0,8(sp)
    80004ab0:	01010113          	addi	sp,sp,16
    80004ab4:	00008067          	ret
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    80004ab8:	00000693          	li	a3,0
    80004abc:	fadff06f          	j	80004a68 <_ZN3TCBC1EPFvPvES0_S0_b+0x30>

0000000080004ac0 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b>:
                       ) {
    80004ac0:	fc010113          	addi	sp,sp,-64
    80004ac4:	02113c23          	sd	ra,56(sp)
    80004ac8:	02813823          	sd	s0,48(sp)
    80004acc:	02913423          	sd	s1,40(sp)
    80004ad0:	03213023          	sd	s2,32(sp)
    80004ad4:	01313c23          	sd	s3,24(sp)
    80004ad8:	01413823          	sd	s4,16(sp)
    80004adc:	01513423          	sd	s5,8(sp)
    80004ae0:	01613023          	sd	s6,0(sp)
    80004ae4:	04010413          	addi	s0,sp,64
    80004ae8:	00050493          	mv	s1,a0
    80004aec:	00058913          	mv	s2,a1
    80004af0:	00060a93          	mv	s5,a2
    80004af4:	00068b13          	mv	s6,a3
    80004af8:	00070a13          	mv	s4,a4
    80004afc:	00007797          	auipc	a5,0x7
    80004b00:	c847c783          	lbu	a5,-892(a5) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80004b04:	04079e63          	bnez	a5,80004b60 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0xa0>
        size_t heapStart = (size_t)HEAP_START_ADDR;
    80004b08:	00007797          	auipc	a5,0x7
    80004b0c:	be87b783          	ld	a5,-1048(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004b10:	0007b783          	ld	a5,0(a5)
        size_t heapEnd = (size_t)HEAP_END_ADDR - 1;
    80004b14:	00007717          	auipc	a4,0x7
    80004b18:	c2473703          	ld	a4,-988(a4) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004b1c:	00073703          	ld	a4,0(a4)
    80004b20:	fff70713          	addi	a4,a4,-1
        size_t sizeInBlocks = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80004b24:	40f70733          	sub	a4,a4,a5
    80004b28:	00675713          	srli	a4,a4,0x6
        fmem_head = (FreeMem*)(heapStart + ((heapStart % MEM_BLOCK_SIZE != 0)?(MEM_BLOCK_SIZE - heapStart % MEM_BLOCK_SIZE) : 0));
    80004b2c:	03f7f693          	andi	a3,a5,63
    80004b30:	00068663          	beqz	a3,80004b3c <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x7c>
    80004b34:	04000613          	li	a2,64
    80004b38:	40d606b3          	sub	a3,a2,a3
    80004b3c:	00d787b3          	add	a5,a5,a3
    80004b40:	00007697          	auipc	a3,0x7
    80004b44:	c4f6b423          	sd	a5,-952(a3) # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
        fmem_head->next = nullptr;
    80004b48:	0007b423          	sd	zero,8(a5)
        fmem_head->prev = nullptr;
    80004b4c:	0007b823          	sd	zero,16(a5)
        fmem_head->size = sizeInBlocks;
    80004b50:	00e7b023          	sd	a4,0(a5)
        static MemoryAllocator instance;
    80004b54:	00100793          	li	a5,1
    80004b58:	00007717          	auipc	a4,0x7
    80004b5c:	c2f70423          	sb	a5,-984(a4) # 8000b780 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
        return MemoryAllocator::getInstance().memory_alloc(ssize);
    80004b60:	00200593          	li	a1,2
    80004b64:	00007517          	auipc	a0,0x7
    80004b68:	c2450513          	addi	a0,a0,-988 # 8000b788 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80004b6c:	00000097          	auipc	ra,0x0
    80004b70:	280080e7          	jalr	640(ra) # 80004dec <_ZN15MemoryAllocator12memory_allocEm>
    80004b74:	00050993          	mv	s3,a0
    TCB* tmp = (TCB*)new TCB(start_routine, arg, stack_space, flag);
    80004b78:	000a0713          	mv	a4,s4
    80004b7c:	000b0693          	mv	a3,s6
    80004b80:	000a8613          	mv	a2,s5
    80004b84:	00090593          	mv	a1,s2
    80004b88:	00000097          	auipc	ra,0x0
    80004b8c:	eb0080e7          	jalr	-336(ra) # 80004a38 <_ZN3TCBC1EPFvPvES0_S0_b>
    *handle = tmp;
    80004b90:	0134b023          	sd	s3,0(s1)
    if (start_routine != nullptr && tmp != TCB::idle && flag) {
    80004b94:	04090c63          	beqz	s2,80004bec <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x12c>
    80004b98:	00007797          	auipc	a5,0x7
    80004b9c:	dc87b783          	ld	a5,-568(a5) # 8000b960 <_ZN3TCB4idleE>
    80004ba0:	05378663          	beq	a5,s3,80004bec <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x12c>
    80004ba4:	040a0463          	beqz	s4,80004bec <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x12c>
    80004ba8:	00007797          	auipc	a5,0x7
    80004bac:	be87c783          	lbu	a5,-1048(a5) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004bb0:	02079463          	bnez	a5,80004bd8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x118>
        head = nullptr;
    80004bb4:	00007797          	auipc	a5,0x7
    80004bb8:	b5c7b783          	ld	a5,-1188(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004bbc:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004bc0:	00007797          	auipc	a5,0x7
    80004bc4:	b287b783          	ld	a5,-1240(a5) # 8000b6e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004bc8:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004bcc:	00100793          	li	a5,1
    80004bd0:	00007717          	auipc	a4,0x7
    80004bd4:	bcf70023          	sb	a5,-1088(a4) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
        Scheduler::getInstance().put(tmp);
    80004bd8:	00098593          	mv	a1,s3
    80004bdc:	00007517          	auipc	a0,0x7
    80004be0:	bbc50513          	addi	a0,a0,-1092 # 8000b798 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	1a8080e7          	jalr	424(ra) # 80004d8c <_ZN9Scheduler3putEP3TCB>
    if(*handle) return 0;
    80004bec:	0004b783          	ld	a5,0(s1)
    80004bf0:	02078863          	beqz	a5,80004c20 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x160>
    80004bf4:	00000513          	li	a0,0
}
    80004bf8:	03813083          	ld	ra,56(sp)
    80004bfc:	03013403          	ld	s0,48(sp)
    80004c00:	02813483          	ld	s1,40(sp)
    80004c04:	02013903          	ld	s2,32(sp)
    80004c08:	01813983          	ld	s3,24(sp)
    80004c0c:	01013a03          	ld	s4,16(sp)
    80004c10:	00813a83          	ld	s5,8(sp)
    80004c14:	00013b03          	ld	s6,0(sp)
    80004c18:	04010113          	addi	sp,sp,64
    80004c1c:	00008067          	ret
    else return -1;
    80004c20:	fff00513          	li	a0,-1
    80004c24:	fd5ff06f          	j	80004bf8 <_ZN3TCB13thread_createEPPS_PFvPvES2_S2_b+0x138>

0000000080004c28 <_ZN3TCB5yieldEv>:
    TS::getInstance().put(running);
    TCB::yield();
    return 0;
}

void TCB::yield() {
    80004c28:	fe010113          	addi	sp,sp,-32
    80004c2c:	00113c23          	sd	ra,24(sp)
    80004c30:	00813823          	sd	s0,16(sp)
    80004c34:	00913423          	sd	s1,8(sp)
    80004c38:	02010413          	addi	s0,sp,32
    TCB * old = running;
    80004c3c:	00007497          	auipc	s1,0x7
    80004c40:	d144b483          	ld	s1,-748(s1) # 8000b950 <_ZN3TCB7runningE>
    80004c44:	00007797          	auipc	a5,0x7
    80004c48:	b4c7c783          	lbu	a5,-1204(a5) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80004c4c:	02079463          	bnez	a5,80004c74 <_ZN3TCB5yieldEv+0x4c>
        head = nullptr;
    80004c50:	00007797          	auipc	a5,0x7
    80004c54:	ac07b783          	ld	a5,-1344(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004c58:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80004c5c:	00007797          	auipc	a5,0x7
    80004c60:	a8c7b783          	ld	a5,-1396(a5) # 8000b6e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004c64:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    80004c68:	00100793          	li	a5,1
    80004c6c:	00007717          	auipc	a4,0x7
    80004c70:	b2f70223          	sb	a5,-1244(a4) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    running = Scheduler::getInstance().get();
    80004c74:	00007517          	auipc	a0,0x7
    80004c78:	b2450513          	addi	a0,a0,-1244 # 8000b798 <_ZZN9Scheduler11getInstanceEvE8instance>
    80004c7c:	00000097          	auipc	ra,0x0
    80004c80:	0a4080e7          	jalr	164(ra) # 80004d20 <_ZN9Scheduler3getEv>
    80004c84:	00007797          	auipc	a5,0x7
    80004c88:	ccc78793          	addi	a5,a5,-820 # 8000b950 <_ZN3TCB7runningE>
    80004c8c:	00a7b023          	sd	a0,0(a5)
    TCB::time_slice_counter = 0;
    80004c90:	0007bc23          	sd	zero,24(a5)
    TCB::context_switch(&old->context, &running->context);
    80004c94:	01850593          	addi	a1,a0,24
    80004c98:	01848513          	addi	a0,s1,24
    80004c9c:	ffffc097          	auipc	ra,0xffffc
    80004ca0:	594080e7          	jalr	1428(ra) # 80001230 <_ZN3TCB14context_switchEPNS_7ContextES1_>
}
    80004ca4:	01813083          	ld	ra,24(sp)
    80004ca8:	01013403          	ld	s0,16(sp)
    80004cac:	00813483          	ld	s1,8(sp)
    80004cb0:	02010113          	addi	sp,sp,32
    80004cb4:	00008067          	ret

0000000080004cb8 <_ZN3TCB10time_sleepEm>:
int TCB::time_sleep(uint64 time) {
    80004cb8:	ff010113          	addi	sp,sp,-16
    80004cbc:	00113423          	sd	ra,8(sp)
    80004cc0:	00813023          	sd	s0,0(sp)
    80004cc4:	01010413          	addi	s0,sp,16
    running->set_time_sleep(time);
    80004cc8:	00007797          	auipc	a5,0x7
    80004ccc:	c887b783          	ld	a5,-888(a5) # 8000b950 <_ZN3TCB7runningE>
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    80004cd0:	04a7b423          	sd	a0,72(a5)

class TS{
public:

    static TS& getInstance(){
        static TS instance;
    80004cd4:	00007717          	auipc	a4,0x7
    80004cd8:	c9c74703          	lbu	a4,-868(a4) # 8000b970 <_ZGVZN2TS11getInstanceEvE8instance>
    80004cdc:	00071e63          	bnez	a4,80004cf8 <_ZN3TCB10time_sleepEm+0x40>
    static void decrement_and_remove();

//    static void printTS();

private:
    TS(){head = nullptr;}
    80004ce0:	00007717          	auipc	a4,0x7
    80004ce4:	a1873703          	ld	a4,-1512(a4) # 8000b6f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80004ce8:	00073023          	sd	zero,0(a4)
        static TS instance;
    80004cec:	00100713          	li	a4,1
    80004cf0:	00007697          	auipc	a3,0x7
    80004cf4:	c8e68023          	sb	a4,-896(a3) # 8000b970 <_ZGVZN2TS11getInstanceEvE8instance>
    TS::getInstance().put(running);
    80004cf8:	00078513          	mv	a0,a5
    80004cfc:	00000097          	auipc	ra,0x0
    80004d00:	38c080e7          	jalr	908(ra) # 80005088 <_ZN2TS3putEP3TCB>
    TCB::yield();
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	f24080e7          	jalr	-220(ra) # 80004c28 <_ZN3TCB5yieldEv>
}
    80004d0c:	00000513          	li	a0,0
    80004d10:	00813083          	ld	ra,8(sp)
    80004d14:	00013403          	ld	s0,0(sp)
    80004d18:	01010113          	addi	sp,sp,16
    80004d1c:	00008067          	ret

0000000080004d20 <_ZN9Scheduler3getEv>:
#include "../h/TCB.hpp"

TCB* Scheduler::head;
TCB* Scheduler::tail;

TCB* Scheduler::get(){
    80004d20:	ff010113          	addi	sp,sp,-16
    80004d24:	00813423          	sd	s0,8(sp)
    80004d28:	01010413          	addi	s0,sp,16
    80004d2c:	0200006f          	j	80004d4c <_ZN9Scheduler3getEv+0x2c>
    while(head) {
        if (!head) { return TCB::idle; }
        TCB *tmp = head;
        if (head == tail) head = tail = nullptr;
    80004d30:	00007797          	auipc	a5,0x7
    80004d34:	c4878793          	addi	a5,a5,-952 # 8000b978 <_ZN9Scheduler4headE>
    80004d38:	0007b423          	sd	zero,8(a5)
    80004d3c:	0007b023          	sd	zero,0(a5)
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    80004d40:	02053823          	sd	zero,48(a0)
    bool is_finished()const{return finished;}
    80004d44:	02854783          	lbu	a5,40(a0)
        else head = head->get_next_scheduler();
        tmp->set_next_scheduler(nullptr);
        if(!tmp->is_finished())return tmp;
    80004d48:	02078c63          	beqz	a5,80004d80 <_ZN9Scheduler3getEv+0x60>
    while(head) {
    80004d4c:	00007517          	auipc	a0,0x7
    80004d50:	c2c53503          	ld	a0,-980(a0) # 8000b978 <_ZN9Scheduler4headE>
    80004d54:	02050063          	beqz	a0,80004d74 <_ZN9Scheduler3getEv+0x54>
        if (head == tail) head = tail = nullptr;
    80004d58:	00007797          	auipc	a5,0x7
    80004d5c:	c287b783          	ld	a5,-984(a5) # 8000b980 <_ZN9Scheduler4tailE>
    80004d60:	fcf508e3          	beq	a0,a5,80004d30 <_ZN9Scheduler3getEv+0x10>
    TCB* get_next_scheduler()const{ return next_scheduler; }
    80004d64:	03053783          	ld	a5,48(a0)
        else head = head->get_next_scheduler();
    80004d68:	00007717          	auipc	a4,0x7
    80004d6c:	c0f73823          	sd	a5,-1008(a4) # 8000b978 <_ZN9Scheduler4headE>
    80004d70:	fd1ff06f          	j	80004d40 <_ZN9Scheduler3getEv+0x20>
    }
    return TCB::idle;
    80004d74:	00007797          	auipc	a5,0x7
    80004d78:	9947b783          	ld	a5,-1644(a5) # 8000b708 <_GLOBAL_OFFSET_TABLE_+0x38>
    80004d7c:	0007b503          	ld	a0,0(a5)
}
    80004d80:	00813403          	ld	s0,8(sp)
    80004d84:	01010113          	addi	sp,sp,16
    80004d88:	00008067          	ret

0000000080004d8c <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB* tcb){
    80004d8c:	ff010113          	addi	sp,sp,-16
    80004d90:	00813423          	sd	s0,8(sp)
    80004d94:	01010413          	addi	s0,sp,16
    if(tcb == TCB::idle)return;
    80004d98:	00007797          	auipc	a5,0x7
    80004d9c:	9707b783          	ld	a5,-1680(a5) # 8000b708 <_GLOBAL_OFFSET_TABLE_+0x38>
    80004da0:	0007b783          	ld	a5,0(a5)
    80004da4:	02b78463          	beq	a5,a1,80004dcc <_ZN9Scheduler3putEP3TCB+0x40>
    bool is_finished()const{return finished;}
    80004da8:	0285c783          	lbu	a5,40(a1)
    if(tcb->is_finished())return;
    80004dac:	02079063          	bnez	a5,80004dcc <_ZN9Scheduler3putEP3TCB+0x40>
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    80004db0:	0205b823          	sd	zero,48(a1)
    tcb->set_next_scheduler(nullptr);
    if(tail){
    80004db4:	00007797          	auipc	a5,0x7
    80004db8:	bcc7b783          	ld	a5,-1076(a5) # 8000b980 <_ZN9Scheduler4tailE>
    80004dbc:	00078e63          	beqz	a5,80004dd8 <_ZN9Scheduler3putEP3TCB+0x4c>
    80004dc0:	02b7b823          	sd	a1,48(a5)
        tail->set_next_scheduler(tcb);
        tail = tail->get_next_scheduler();
    80004dc4:	00007797          	auipc	a5,0x7
    80004dc8:	bab7be23          	sd	a1,-1092(a5) # 8000b980 <_ZN9Scheduler4tailE>
    }
    else head = tail = tcb;
}
    80004dcc:	00813403          	ld	s0,8(sp)
    80004dd0:	01010113          	addi	sp,sp,16
    80004dd4:	00008067          	ret
    else head = tail = tcb;
    80004dd8:	00007797          	auipc	a5,0x7
    80004ddc:	ba078793          	addi	a5,a5,-1120 # 8000b978 <_ZN9Scheduler4headE>
    80004de0:	00b7b423          	sd	a1,8(a5)
    80004de4:	00b7b023          	sd	a1,0(a5)
    80004de8:	fe5ff06f          	j	80004dcc <_ZN9Scheduler3putEP3TCB+0x40>

0000000080004dec <_ZN15MemoryAllocator12memory_allocEm>:
#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::memory_alloc (size_t size){
    80004dec:	ff010113          	addi	sp,sp,-16
    80004df0:	00813423          	sd	s0,8(sp)
    80004df4:	01010413          	addi	s0,sp,16
    80004df8:	00050713          	mv	a4,a0
    for(FreeMem* cur = fmem_head; cur != nullptr; cur = cur->next   ){ //  cur =  (FreeMem*)(*((char*)cur + 1))
    80004dfc:	00053503          	ld	a0,0(a0)
    80004e00:	06050063          	beqz	a0,80004e60 <_ZN15MemoryAllocator12memory_allocEm+0x74>
//        printString("velicina u blokovima: ");
//        printInteger(this->fmem_head->size);
//        printString("\n");

        // <= stavljamo jer zelimo size + 1 blok u tom dodatnom cuvam podatak o broju blokova
        if(*((size_t*)cur) <= size) continue;
    80004e04:	00053783          	ld	a5,0(a0)
    80004e08:	06f5f263          	bgeu	a1,a5,80004e6c <_ZN15MemoryAllocator12memory_allocEm+0x80>

        // slucaj da imamo jedan blok viska, dodajemo ga jer ne mozemo nista sa njim (trebaju min 2)
        if(cur->size == size + 2){
    80004e0c:	00258693          	addi	a3,a1,2
    80004e10:	06d78263          	beq	a5,a3,80004e74 <_ZN15MemoryAllocator12memory_allocEm+0x88>

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = size + 1;
        }
        else {
            FreeMem *newfrgm = (FreeMem *) ((char *) cur + (size + 1) * MEM_BLOCK_SIZE);
    80004e14:	00158793          	addi	a5,a1,1
    80004e18:	00679793          	slli	a5,a5,0x6
    80004e1c:	00f507b3          	add	a5,a0,a5

            // ubacivanje ostatka adresa u evidenciju slobodnih adresa
            if (cur->prev) cur->prev->next = newfrgm;
    80004e20:	01053683          	ld	a3,16(a0)
    80004e24:	08068a63          	beqz	a3,80004eb8 <_ZN15MemoryAllocator12memory_allocEm+0xcc>
    80004e28:	00f6b423          	sd	a5,8(a3)
            else fmem_head = newfrgm;
            if (cur->next)cur->next->prev = newfrgm;
    80004e2c:	00853703          	ld	a4,8(a0)
    80004e30:	00070463          	beqz	a4,80004e38 <_ZN15MemoryAllocator12memory_allocEm+0x4c>
    80004e34:	00f73823          	sd	a5,16(a4)
            newfrgm->prev = cur->prev;
    80004e38:	01053703          	ld	a4,16(a0)
    80004e3c:	00e7b823          	sd	a4,16(a5)
            newfrgm->next = cur->next;
    80004e40:	00853703          	ld	a4,8(a0)
    80004e44:	00e7b423          	sd	a4,8(a5)
            newfrgm->size = cur->size - size - 1;
    80004e48:	00053703          	ld	a4,0(a0)
    80004e4c:	40b70733          	sub	a4,a4,a1
    80004e50:	fff70713          	addi	a4,a4,-1
    80004e54:	00e7b023          	sd	a4,0(a5)

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = size;
    80004e58:	00b50023          	sb	a1,0(a0)
        }
        return (void*)((char*)cur + MEM_BLOCK_SIZE);
    80004e5c:	04050513          	addi	a0,a0,64
    }
    return nullptr;
}
    80004e60:	00813403          	ld	s0,8(sp)
    80004e64:	01010113          	addi	sp,sp,16
    80004e68:	00008067          	ret
    for(FreeMem* cur = fmem_head; cur != nullptr; cur = cur->next   ){ //  cur =  (FreeMem*)(*((char*)cur + 1))
    80004e6c:	00853503          	ld	a0,8(a0)
    80004e70:	f91ff06f          	j	80004e00 <_ZN15MemoryAllocator12memory_allocEm+0x14>
            if (cur->prev) {
    80004e74:	01053783          	ld	a5,16(a0)
    80004e78:	02078463          	beqz	a5,80004ea0 <_ZN15MemoryAllocator12memory_allocEm+0xb4>
                cur->prev->next = cur->next;
    80004e7c:	00853703          	ld	a4,8(a0)
    80004e80:	00e7b423          	sd	a4,8(a5)
                if(cur->next)cur->next->prev = cur->prev;
    80004e84:	00853783          	ld	a5,8(a0)
    80004e88:	00078663          	beqz	a5,80004e94 <_ZN15MemoryAllocator12memory_allocEm+0xa8>
    80004e8c:	01053703          	ld	a4,16(a0)
    80004e90:	00e7b823          	sd	a4,16(a5)
            *((char*)cur) = size + 1;
    80004e94:	0015859b          	addiw	a1,a1,1
    80004e98:	00b50023          	sb	a1,0(a0)
    80004e9c:	fc1ff06f          	j	80004e5c <_ZN15MemoryAllocator12memory_allocEm+0x70>
                fmem_head = cur->next;
    80004ea0:	00853783          	ld	a5,8(a0)
    80004ea4:	00f73023          	sd	a5,0(a4)
                if(cur->next)cur->next->prev = nullptr;
    80004ea8:	00853783          	ld	a5,8(a0)
    80004eac:	fe0784e3          	beqz	a5,80004e94 <_ZN15MemoryAllocator12memory_allocEm+0xa8>
    80004eb0:	0007b823          	sd	zero,16(a5)
    80004eb4:	fe1ff06f          	j	80004e94 <_ZN15MemoryAllocator12memory_allocEm+0xa8>
            else fmem_head = newfrgm;
    80004eb8:	00f73023          	sd	a5,0(a4)
    80004ebc:	f71ff06f          	j	80004e2c <_ZN15MemoryAllocator12memory_allocEm+0x40>

0000000080004ec0 <_ZN15MemoryAllocator11memory_freeEPv>:

int MemoryAllocator::memory_free(void * add) {
    80004ec0:	ff010113          	addi	sp,sp,-16
    80004ec4:	00813423          	sd	s0,8(sp)
    80004ec8:	01010413          	addi	s0,sp,16
    // u slucaju prosledjenog nullptr
    if(add == nullptr)return 0;
    80004ecc:	16058263          	beqz	a1,80005030 <_ZN15MemoryAllocator11memory_freeEPv+0x170>
    // dalja obrada
    FreeMem* cur = nullptr;
    char* addr = (char*)add;
    size_t size = *(addr - MEM_BLOCK_SIZE);
    80004ed0:	fc05c603          	lbu	a2,-64(a1)
    // u slucaju da smo prosledili adresu van heap - a
    if(addr < (char*)HEAP_START_ADDR || addr >= (char*)HEAP_END_ADDR)return -1; // address out of bounds exception
    80004ed4:	00007797          	auipc	a5,0x7
    80004ed8:	81c7b783          	ld	a5,-2020(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004edc:	0007b783          	ld	a5,0(a5)
    80004ee0:	14f5ec63          	bltu	a1,a5,80005038 <_ZN15MemoryAllocator11memory_freeEPv+0x178>
    80004ee4:	00007797          	auipc	a5,0x7
    80004ee8:	8547b783          	ld	a5,-1964(a5) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004eec:	0007b783          	ld	a5,0(a5)
    80004ef0:	14f5f863          	bgeu	a1,a5,80005040 <_ZN15MemoryAllocator11memory_freeEPv+0x180>
    if(!fmem_head || addr < (char*)fmem_head)
    80004ef4:	00053683          	ld	a3,0(a0)
    80004ef8:	06068c63          	beqz	a3,80004f70 <_ZN15MemoryAllocator11memory_freeEPv+0xb0>
    80004efc:	06d5ee63          	bltu	a1,a3,80004f78 <_ZN15MemoryAllocator11memory_freeEPv+0xb8>
        cur = nullptr;
    else
        for(cur = fmem_head; cur->next != nullptr && addr > (char*)(cur->next); cur = cur->next);
    80004f00:	00068793          	mv	a5,a3
    80004f04:	00078713          	mv	a4,a5
    80004f08:	0087b783          	ld	a5,8(a5)
    80004f0c:	00078463          	beqz	a5,80004f14 <_ZN15MemoryAllocator11memory_freeEPv+0x54>
    80004f10:	feb7eae3          	bltu	a5,a1,80004f04 <_ZN15MemoryAllocator11memory_freeEPv+0x44>

    // Try to append it to the previous free segment cur
    if(cur && (char*)cur + (cur->size + 1) * MEM_BLOCK_SIZE == addr){
    80004f14:	06070463          	beqz	a4,80004f7c <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
    80004f18:	00073883          	ld	a7,0(a4)
    80004f1c:	00188813          	addi	a6,a7,1
    80004f20:	00681813          	slli	a6,a6,0x6
    80004f24:	01070833          	add	a6,a4,a6
    80004f28:	04b81a63          	bne	a6,a1,80004f7c <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
        cur->size += size + 1; // dodajemo jos jedan zbog bloka za evidenciju
    80004f2c:	00c886b3          	add	a3,a7,a2
    80004f30:	00168693          	addi	a3,a3,1
    80004f34:	00d73023          	sd	a3,0(a4)
        // Try to join cur with the next free segment
        // ovde je ranije stajalo (cur->size + 1) * MEM_BLOCK_SIZE ali je +1 obrisan jer je taj prostor vec oslobodjen pa gadjamo najnormalnije adresu
        if(cur->next && (char*)cur + cur->size * MEM_BLOCK_SIZE == (char*)(cur->next)){
    80004f38:	00078863          	beqz	a5,80004f48 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
    80004f3c:	00669613          	slli	a2,a3,0x6
    80004f40:	00c70633          	add	a2,a4,a2
    80004f44:	00c78663          	beq	a5,a2,80004f50 <_ZN15MemoryAllocator11memory_freeEPv+0x90>
            // Remove the cur->next segment
            cur->size += cur->next->size; // dodajemo jos jedan zbog bloka za evidenciju
            cur->next = cur->next->next;
            if(cur->next) cur->next->prev = cur;
        }
        return 0;
    80004f48:	00000513          	li	a0,0
    80004f4c:	07c0006f          	j	80004fc8 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
            cur->size += cur->next->size; // dodajemo jos jedan zbog bloka za evidenciju
    80004f50:	0007b603          	ld	a2,0(a5)
    80004f54:	00c686b3          	add	a3,a3,a2
    80004f58:	00d73023          	sd	a3,0(a4)
            cur->next = cur->next->next;
    80004f5c:	0087b783          	ld	a5,8(a5)
    80004f60:	00f73423          	sd	a5,8(a4)
            if(cur->next) cur->next->prev = cur;
    80004f64:	fe0782e3          	beqz	a5,80004f48 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
    80004f68:	00e7b823          	sd	a4,16(a5)
    80004f6c:	fddff06f          	j	80004f48 <_ZN15MemoryAllocator11memory_freeEPv+0x88>
        cur = nullptr;
    80004f70:	00068713          	mv	a4,a3
    80004f74:	0080006f          	j	80004f7c <_ZN15MemoryAllocator11memory_freeEPv+0xbc>
    80004f78:	00000713          	li	a4,0
    }

    FreeMem* newSeg = (FreeMem*)(addr - MEM_BLOCK_SIZE); // moramo da ga vratimo unazad
    80004f7c:	fc058813          	addi	a6,a1,-64

    // Try to append it to the next free segment:
    FreeMem* nxtSeg = cur?cur->next:fmem_head;
    80004f80:	00070463          	beqz	a4,80004f88 <_ZN15MemoryAllocator11memory_freeEPv+0xc8>
    80004f84:	00873683          	ld	a3,8(a4)
    // ovde sa obrisao (size + 1) jer ne vracam ni addr za jedan blok unazad pa se to kompenzuje
    if(nxtSeg && addr + size * MEM_BLOCK_SIZE == (char*)nxtSeg){
    80004f88:	00068863          	beqz	a3,80004f98 <_ZN15MemoryAllocator11memory_freeEPv+0xd8>
    80004f8c:	00661793          	slli	a5,a2,0x6
    80004f90:	00f587b3          	add	a5,a1,a5
    80004f94:	04d78063          	beq	a5,a3,80004fd4 <_ZN15MemoryAllocator11memory_freeEPv+0x114>
        else fmem_head = newSeg;
        return 0;
    }

    // No need to join; insert the new segment after cur
    newSeg->size = size + 1;
    80004f98:	00160613          	addi	a2,a2,1
    80004f9c:	fcc5b023          	sd	a2,-64(a1)
    newSeg->prev = cur;
    80004fa0:	fce5b823          	sd	a4,-48(a1)
    if(cur)newSeg->next = cur->next;
    80004fa4:	06070a63          	beqz	a4,80005018 <_ZN15MemoryAllocator11memory_freeEPv+0x158>
    80004fa8:	00873783          	ld	a5,8(a4)
    80004fac:	fcf5b423          	sd	a5,-56(a1)
    else newSeg->next = fmem_head;
    if(newSeg->next) newSeg->next->prev = newSeg;
    80004fb0:	fc85b783          	ld	a5,-56(a1)
    80004fb4:	00078463          	beqz	a5,80004fbc <_ZN15MemoryAllocator11memory_freeEPv+0xfc>
    80004fb8:	0107b823          	sd	a6,16(a5)
    if(cur)cur->next = newSeg;
    80004fbc:	06070463          	beqz	a4,80005024 <_ZN15MemoryAllocator11memory_freeEPv+0x164>
    80004fc0:	01073423          	sd	a6,8(a4)
    else fmem_head = newSeg;

    return 0;
    80004fc4:	00000513          	li	a0,0
}
    80004fc8:	00813403          	ld	s0,8(sp)
    80004fcc:	01010113          	addi	sp,sp,16
    80004fd0:	00008067          	ret
        newSeg->size = nxtSeg->size + size + 1;
    80004fd4:	0006b783          	ld	a5,0(a3)
    80004fd8:	00c78633          	add	a2,a5,a2
    80004fdc:	00160613          	addi	a2,a2,1
    80004fe0:	fcc5b023          	sd	a2,-64(a1)
        newSeg->prev = nxtSeg->prev;
    80004fe4:	0106b783          	ld	a5,16(a3)
    80004fe8:	fcf5b823          	sd	a5,-48(a1)
        newSeg->next = nxtSeg->next;
    80004fec:	0086b783          	ld	a5,8(a3)
    80004ff0:	fcf5b423          	sd	a5,-56(a1)
        if(nxtSeg->next)nxtSeg->next->prev = newSeg;
    80004ff4:	00078463          	beqz	a5,80004ffc <_ZN15MemoryAllocator11memory_freeEPv+0x13c>
    80004ff8:	0107b823          	sd	a6,16(a5)
        if(nxtSeg->prev)nxtSeg->prev->next = newSeg;
    80004ffc:	0106b783          	ld	a5,16(a3)
    80005000:	00078863          	beqz	a5,80005010 <_ZN15MemoryAllocator11memory_freeEPv+0x150>
    80005004:	0107b423          	sd	a6,8(a5)
        return 0;
    80005008:	00000513          	li	a0,0
    8000500c:	fbdff06f          	j	80004fc8 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
        else fmem_head = newSeg;
    80005010:	01053023          	sd	a6,0(a0)
    80005014:	ff5ff06f          	j	80005008 <_ZN15MemoryAllocator11memory_freeEPv+0x148>
    else newSeg->next = fmem_head;
    80005018:	00053783          	ld	a5,0(a0)
    8000501c:	fcf5b423          	sd	a5,-56(a1)
    80005020:	f91ff06f          	j	80004fb0 <_ZN15MemoryAllocator11memory_freeEPv+0xf0>
    else fmem_head = newSeg;
    80005024:	01053023          	sd	a6,0(a0)
    return 0;
    80005028:	00000513          	li	a0,0
    8000502c:	f9dff06f          	j	80004fc8 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    if(add == nullptr)return 0;
    80005030:	00000513          	li	a0,0
    80005034:	f95ff06f          	j	80004fc8 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    if(addr < (char*)HEAP_START_ADDR || addr >= (char*)HEAP_END_ADDR)return -1; // address out of bounds exception
    80005038:	fff00513          	li	a0,-1
    8000503c:	f8dff06f          	j	80004fc8 <_ZN15MemoryAllocator11memory_freeEPv+0x108>
    80005040:	fff00513          	li	a0,-1
    80005044:	f85ff06f          	j	80004fc8 <_ZN15MemoryAllocator11memory_freeEPv+0x108>

0000000080005048 <_ZN3abi8sys_callEPv>:
#include "../h/abi.hpp"

void* abi::sys_call(void *param) {
    80005048:	ff010113          	addi	sp,sp,-16
    8000504c:	00813423          	sd	s0,8(sp)
    80005050:	01010413          	addi	s0,sp,16
    __asm__ volatile("ld a1, 8(a0)");
    80005054:	00853583          	ld	a1,8(a0)
    __asm__ volatile("ld a2, 16(a0)");
    80005058:	01053603          	ld	a2,16(a0)
    __asm__ volatile("ld a3, 24(a0)");
    8000505c:	01853683          	ld	a3,24(a0)
    __asm__ volatile("ld a4, 32(a0)");
    80005060:	02053703          	ld	a4,32(a0)
    __asm__ volatile("ld a5, 40(a0)");
    80005064:	02853783          	ld	a5,40(a0)
    __asm__ volatile("ld a6, 48(a0)");
    80005068:	03053803          	ld	a6,48(a0)
    __asm__ volatile("ld a7, 56(a0)");
    8000506c:	03853883          	ld	a7,56(a0)
    __asm__ volatile("ld a0, (a0)");
    80005070:	00053503          	ld	a0,0(a0)

    __asm__ volatile("ecall");
    80005074:	00000073          	ecall
    // u a0 se nalazi povratna vrednost
    uint64 ret0;
    __asm__ volatile("mv %[ret], a0" : [ret]"=r"(ret0));
    80005078:	00050513          	mv	a0,a0
    return (void*)ret0;
}
    8000507c:	00813403          	ld	s0,8(sp)
    80005080:	01010113          	addi	sp,sp,16
    80005084:	00008067          	ret

0000000080005088 <_ZN2TS3putEP3TCB>:
//        tmp = tmp->get_next_sleep();
//    }
//    printString("\n");
//}

void TS::put(TCB *tcb) {
    80005088:	ff010113          	addi	sp,sp,-16
    8000508c:	00813423          	sd	s0,8(sp)
    80005090:	01010413          	addi	s0,sp,16

    if(!head){
    80005094:	00007797          	auipc	a5,0x7
    80005098:	8f47b783          	ld	a5,-1804(a5) # 8000b988 <_ZN2TS4headE>
    8000509c:	02078463          	beqz	a5,800050c4 <_ZN2TS3putEP3TCB+0x3c>
    uint64 get_time_sleep()const{ return sleep; }
    800050a0:	04853703          	ld	a4,72(a0)
        head->set_next_sleep(nullptr);
//        printTS();
        return;
    }

    TCB* tmp = head, *prev = nullptr;
    800050a4:	00000613          	li	a2,0
    uint64 t_sleep = tcb->get_time_sleep();

    while(tmp && t_sleep >= tmp->get_time_sleep()){
    800050a8:	02078663          	beqz	a5,800050d4 <_ZN2TS3putEP3TCB+0x4c>
    800050ac:	0487b683          	ld	a3,72(a5)
    800050b0:	02d76263          	bltu	a4,a3,800050d4 <_ZN2TS3putEP3TCB+0x4c>
        t_sleep -= tmp->get_time_sleep();
    800050b4:	40d70733          	sub	a4,a4,a3
        prev = tmp;
    800050b8:	00078613          	mv	a2,a5
        tmp = tmp->get_next_sleep();
    800050bc:	0387b783          	ld	a5,56(a5)
    while(tmp && t_sleep >= tmp->get_time_sleep()){
    800050c0:	fe9ff06f          	j	800050a8 <_ZN2TS3putEP3TCB+0x20>
        head = tcb;
    800050c4:	00007797          	auipc	a5,0x7
    800050c8:	8ca7b223          	sd	a0,-1852(a5) # 8000b988 <_ZN2TS4headE>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    800050cc:	02053c23          	sd	zero,56(a0)
        return;
    800050d0:	0240006f          	j	800050f4 <_ZN2TS3putEP3TCB+0x6c>
    800050d4:	02f53c23          	sd	a5,56(a0)

    }

    tcb->set_next_sleep(tmp);
    if(tmp)tmp->set_time_sleep(tmp->get_time_sleep() - t_sleep);
    800050d8:	00078863          	beqz	a5,800050e8 <_ZN2TS3putEP3TCB+0x60>
    uint64 get_time_sleep()const{ return sleep; }
    800050dc:	0487b683          	ld	a3,72(a5)
    800050e0:	40e686b3          	sub	a3,a3,a4
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    800050e4:	04d7b423          	sd	a3,72(a5)
    800050e8:	04e53423          	sd	a4,72(a0)
    tcb->set_time_sleep(t_sleep);
    if(prev){
    800050ec:	00060a63          	beqz	a2,80005100 <_ZN2TS3putEP3TCB+0x78>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    800050f0:	02a63c23          	sd	a0,56(a2)
//    printTS();

    return;


}
    800050f4:	00813403          	ld	s0,8(sp)
    800050f8:	01010113          	addi	sp,sp,16
    800050fc:	00008067          	ret
        head = tcb;
    80005100:	00007797          	auipc	a5,0x7
    80005104:	88a7b423          	sd	a0,-1912(a5) # 8000b988 <_ZN2TS4headE>
    80005108:	fedff06f          	j	800050f4 <_ZN2TS3putEP3TCB+0x6c>

000000008000510c <_ZN2TS20decrement_and_removeEv>:

void TS::decrement_and_remove() {

    if(!head)return;
    8000510c:	00007797          	auipc	a5,0x7
    80005110:	87c7b783          	ld	a5,-1924(a5) # 8000b988 <_ZN2TS4headE>
    80005114:	0a078863          	beqz	a5,800051c4 <_ZN2TS20decrement_and_removeEv+0xb8>
    uint64 get_time_sleep()const{ return sleep; }
    80005118:	0487b703          	ld	a4,72(a5)

    head->set_time_sleep(head->get_time_sleep() - 1);
    8000511c:	fff70713          	addi	a4,a4,-1
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    80005120:	04e7b423          	sd	a4,72(a5)
    TCB* tmp;
    while(head && !head->get_time_sleep()){
    80005124:	00007597          	auipc	a1,0x7
    80005128:	8645b583          	ld	a1,-1948(a1) # 8000b988 <_ZN2TS4headE>
    8000512c:	08058c63          	beqz	a1,800051c4 <_ZN2TS20decrement_and_removeEv+0xb8>
    uint64 get_time_sleep()const{ return sleep; }
    80005130:	0485b783          	ld	a5,72(a1)
    80005134:	08079863          	bnez	a5,800051c4 <_ZN2TS20decrement_and_removeEv+0xb8>
void TS::decrement_and_remove() {
    80005138:	ff010113          	addi	sp,sp,-16
    8000513c:	00113423          	sd	ra,8(sp)
    80005140:	00813023          	sd	s0,0(sp)
    80005144:	01010413          	addi	s0,sp,16
    80005148:	0280006f          	j	80005170 <_ZN2TS20decrement_and_removeEv+0x64>
        tmp = head;
        head = head->get_next_sleep();
        tmp->set_next_sleep(nullptr);
        Scheduler::getInstance().put(tmp);
    8000514c:	00006517          	auipc	a0,0x6
    80005150:	64c50513          	addi	a0,a0,1612 # 8000b798 <_ZZN9Scheduler11getInstanceEvE8instance>
    80005154:	00000097          	auipc	ra,0x0
    80005158:	c38080e7          	jalr	-968(ra) # 80004d8c <_ZN9Scheduler3putEP3TCB>
    while(head && !head->get_time_sleep()){
    8000515c:	00007597          	auipc	a1,0x7
    80005160:	82c5b583          	ld	a1,-2004(a1) # 8000b988 <_ZN2TS4headE>
    80005164:	04058863          	beqz	a1,800051b4 <_ZN2TS20decrement_and_removeEv+0xa8>
    80005168:	0485b783          	ld	a5,72(a1)
    8000516c:	04079463          	bnez	a5,800051b4 <_ZN2TS20decrement_and_removeEv+0xa8>
    TCB* get_next_sleep()const{ return next_sleep; }
    80005170:	0385b783          	ld	a5,56(a1)
        head = head->get_next_sleep();
    80005174:	00007717          	auipc	a4,0x7
    80005178:	80f73a23          	sd	a5,-2028(a4) # 8000b988 <_ZN2TS4headE>
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    8000517c:	0205bc23          	sd	zero,56(a1)
    80005180:	00006797          	auipc	a5,0x6
    80005184:	6107c783          	lbu	a5,1552(a5) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80005188:	fc0792e3          	bnez	a5,8000514c <_ZN2TS20decrement_and_removeEv+0x40>
        head = nullptr;
    8000518c:	00006797          	auipc	a5,0x6
    80005190:	5847b783          	ld	a5,1412(a5) # 8000b710 <_GLOBAL_OFFSET_TABLE_+0x40>
    80005194:	0007b023          	sd	zero,0(a5)
        tail = nullptr;
    80005198:	00006797          	auipc	a5,0x6
    8000519c:	5507b783          	ld	a5,1360(a5) # 8000b6e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800051a0:	0007b023          	sd	zero,0(a5)
        static Scheduler instance;
    800051a4:	00100793          	li	a5,1
    800051a8:	00006717          	auipc	a4,0x6
    800051ac:	5ef70423          	sb	a5,1512(a4) # 8000b790 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    800051b0:	f9dff06f          	j	8000514c <_ZN2TS20decrement_and_removeEv+0x40>
    }
    return;

}
    800051b4:	00813083          	ld	ra,8(sp)
    800051b8:	00013403          	ld	s0,0(sp)
    800051bc:	01010113          	addi	sp,sp,16
    800051c0:	00008067          	ret
    800051c4:	00008067          	ret

00000000800051c8 <_Z9kmem_initPvi>:
#include "../h/SlabI.h"
#include "../h/Buddy.h"
#include "../h/Slab.h"

//
void kmem_init(void *space, int block_num) {
    800051c8:	fe010113          	addi	sp,sp,-32
    800051cc:	00113c23          	sd	ra,24(sp)
    800051d0:	00813823          	sd	s0,16(sp)
    800051d4:	00913423          	sd	s1,8(sp)
    800051d8:	01213023          	sd	s2,0(sp)
    800051dc:	02010413          	addi	s0,sp,32
    800051e0:	00050913          	mv	s2,a0
    800051e4:	00058493          	mv	s1,a1
        static BuddySystem bs;
    800051e8:	00006797          	auipc	a5,0x6
    800051ec:	5f07c783          	lbu	a5,1520(a5) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    800051f0:	02078e63          	beqz	a5,8000522c <_Z9kmem_initPvi+0x64>
        if(block_num != 0 && space != nullptr){
    800051f4:	02048063          	beqz	s1,80005214 <_Z9kmem_initPvi+0x4c>
    800051f8:	00090e63          	beqz	s2,80005214 <_Z9kmem_initPvi+0x4c>
            bs.buddyHeapStart = (size_t)space;
    800051fc:	00006517          	auipc	a0,0x6
    80005200:	5e450513          	addi	a0,a0,1508 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80005204:	15253023          	sd	s2,320(a0)
            bs.buddyNumOfBlocks = block_num;
    80005208:	14953823          	sd	s1,336(a0)
            bs.initBuddy();
    8000520c:	ffffd097          	auipc	ra,0xffffd
    80005210:	db8080e7          	jalr	-584(ra) # 80001fc4 <_ZN11BuddySystem9initBuddyEv>
    BuddySystem::getInstance(space, block_num);
}
    80005214:	01813083          	ld	ra,24(sp)
    80005218:	01013403          	ld	s0,16(sp)
    8000521c:	00813483          	ld	s1,8(sp)
    80005220:	00013903          	ld	s2,0(sp)
    80005224:	02010113          	addi	sp,sp,32
    80005228:	00008067          	ret
        static BuddySystem bs;
    8000522c:	00006517          	auipc	a0,0x6
    80005230:	5b450513          	addi	a0,a0,1460 # 8000b7e0 <_ZZN11BuddySystem11getInstanceEPviE2bs>
    80005234:	ffffd097          	auipc	ra,0xffffd
    80005238:	958080e7          	jalr	-1704(ra) # 80001b8c <_ZN11BuddySystemC1Ev>
    8000523c:	00100793          	li	a5,1
    80005240:	00006717          	auipc	a4,0x6
    80005244:	58f70c23          	sb	a5,1432(a4) # 8000b7d8 <_ZGVZN11BuddySystem11getInstanceEPviE2bs>
    80005248:	fadff06f          	j	800051f4 <_Z9kmem_initPvi+0x2c>

000000008000524c <_Z17kmem_cache_createPKcmPFvPvES3_>:

kmem_cache_t *kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    8000524c:	fd010113          	addi	sp,sp,-48
    80005250:	02113423          	sd	ra,40(sp)
    80005254:	02813023          	sd	s0,32(sp)
    80005258:	00913c23          	sd	s1,24(sp)
    8000525c:	01213823          	sd	s2,16(sp)
    80005260:	01313423          	sd	s3,8(sp)
    80005264:	01413023          	sd	s4,0(sp)
    80005268:	03010413          	addi	s0,sp,48
    8000526c:	00050493          	mv	s1,a0
    80005270:	00058913          	mv	s2,a1
    80005274:	00060993          	mv	s3,a2
    80005278:	00068a13          	mv	s4,a3
    if(size_start(name)){
    8000527c:	ffffd097          	auipc	ra,0xffffd
    80005280:	204080e7          	jalr	516(ra) # 80002480 <_Z10size_startPKc>
    80005284:	02051e63          	bnez	a0,800052c0 <_Z17kmem_cache_createPKcmPFvPvES3_+0x74>
        return nullptr;
    }
    return (kmem_cache_t*)kmem_cache_s::kmem_cache_create(name, size, ctor, dtor);
    80005288:	000a0693          	mv	a3,s4
    8000528c:	00098613          	mv	a2,s3
    80005290:	00090593          	mv	a1,s2
    80005294:	00048513          	mv	a0,s1
    80005298:	ffffe097          	auipc	ra,0xffffe
    8000529c:	bc4080e7          	jalr	-1084(ra) # 80002e5c <_ZN12kmem_cache_s17kmem_cache_createEPKcmPFvPvES4_>
}
    800052a0:	02813083          	ld	ra,40(sp)
    800052a4:	02013403          	ld	s0,32(sp)
    800052a8:	01813483          	ld	s1,24(sp)
    800052ac:	01013903          	ld	s2,16(sp)
    800052b0:	00813983          	ld	s3,8(sp)
    800052b4:	00013a03          	ld	s4,0(sp)
    800052b8:	03010113          	addi	sp,sp,48
    800052bc:	00008067          	ret
        return nullptr;
    800052c0:	00000513          	li	a0,0
    800052c4:	fddff06f          	j	800052a0 <_Z17kmem_cache_createPKcmPFvPvES3_+0x54>

00000000800052c8 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep) {
    800052c8:	ff010113          	addi	sp,sp,-16
    800052cc:	00113423          	sd	ra,8(sp)
    800052d0:	00813023          	sd	s0,0(sp)
    800052d4:	01010413          	addi	s0,sp,16
    return cachep->kmem_cache_shrink();
    800052d8:	ffffe097          	auipc	ra,0xffffe
    800052dc:	990080e7          	jalr	-1648(ra) # 80002c68 <_ZN12kmem_cache_s17kmem_cache_shrinkEv>
}
    800052e0:	0005051b          	sext.w	a0,a0
    800052e4:	00813083          	ld	ra,8(sp)
    800052e8:	00013403          	ld	s0,0(sp)
    800052ec:	01010113          	addi	sp,sp,16
    800052f0:	00008067          	ret

00000000800052f4 <_Z16kmem_cache_allocP12kmem_cache_s>:

void *kmem_cache_alloc(kmem_cache_t *cachep) {
    800052f4:	fe010113          	addi	sp,sp,-32
    800052f8:	00113c23          	sd	ra,24(sp)
    800052fc:	00813823          	sd	s0,16(sp)
    80005300:	00913423          	sd	s1,8(sp)
    80005304:	01213023          	sd	s2,0(sp)
    80005308:	02010413          	addi	s0,sp,32
    8000530c:	00050913          	mv	s2,a0
    for(int i = 0; i < 2; i++){
    80005310:	00000493          	li	s1,0
    80005314:	00100793          	li	a5,1
    80005318:	0097ce63          	blt	a5,s1,80005334 <_Z16kmem_cache_allocP12kmem_cache_s+0x40>
        void* tmp = cachep->kmem_cache_alloc();
    8000531c:	00090513          	mv	a0,s2
    80005320:	ffffe097          	auipc	ra,0xffffe
    80005324:	688080e7          	jalr	1672(ra) # 800039a8 <_ZN12kmem_cache_s16kmem_cache_allocEv>
        if(tmp != nullptr)return tmp;
    80005328:	00051863          	bnez	a0,80005338 <_Z16kmem_cache_allocP12kmem_cache_s+0x44>
    for(int i = 0; i < 2; i++){
    8000532c:	0014849b          	addiw	s1,s1,1
    80005330:	fe5ff06f          	j	80005314 <_Z16kmem_cache_allocP12kmem_cache_s+0x20>
    }
    // not enough memory, or exception triggered
    return nullptr;
    80005334:	00000513          	li	a0,0
}
    80005338:	01813083          	ld	ra,24(sp)
    8000533c:	01013403          	ld	s0,16(sp)
    80005340:	00813483          	ld	s1,8(sp)
    80005344:	00013903          	ld	s2,0(sp)
    80005348:	02010113          	addi	sp,sp,32
    8000534c:	00008067          	ret

0000000080005350 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp) {
    80005350:	ff010113          	addi	sp,sp,-16
    80005354:	00113423          	sd	ra,8(sp)
    80005358:	00813023          	sd	s0,0(sp)
    8000535c:	01010413          	addi	s0,sp,16
    cachep->kmem_cache_free(objp);
    80005360:	ffffe097          	auipc	ra,0xffffe
    80005364:	c58080e7          	jalr	-936(ra) # 80002fb8 <_ZN12kmem_cache_s15kmem_cache_freeEPv>
}
    80005368:	00813083          	ld	ra,8(sp)
    8000536c:	00013403          	ld	s0,0(sp)
    80005370:	01010113          	addi	sp,sp,16
    80005374:	00008067          	ret

0000000080005378 <_Z7kmallocm>:

void *kmalloc(size_t size) {
    80005378:	fe010113          	addi	sp,sp,-32
    8000537c:	00113c23          	sd	ra,24(sp)
    80005380:	00813823          	sd	s0,16(sp)
    80005384:	00913423          	sd	s1,8(sp)
    80005388:	02010413          	addi	s0,sp,32
    8000538c:	00050493          	mv	s1,a0
    if(!kmem_cache_t::is_small_buffer_size_correct(size))return nullptr;
    80005390:	ffffe097          	auipc	ra,0xffffe
    80005394:	e98080e7          	jalr	-360(ra) # 80003228 <_ZN12kmem_cache_s28is_small_buffer_size_correctEm>
    80005398:	02050263          	beqz	a0,800053bc <_Z7kmallocm+0x44>
    return kmem_cache_t::kmalloc(size);
    8000539c:	00048513          	mv	a0,s1
    800053a0:	ffffe097          	auipc	ra,0xffffe
    800053a4:	730080e7          	jalr	1840(ra) # 80003ad0 <_ZN12kmem_cache_s7kmallocEm>
}
    800053a8:	01813083          	ld	ra,24(sp)
    800053ac:	01013403          	ld	s0,16(sp)
    800053b0:	00813483          	ld	s1,8(sp)
    800053b4:	02010113          	addi	sp,sp,32
    800053b8:	00008067          	ret
    if(!kmem_cache_t::is_small_buffer_size_correct(size))return nullptr;
    800053bc:	00000513          	li	a0,0
    800053c0:	fe9ff06f          	j	800053a8 <_Z7kmallocm+0x30>

00000000800053c4 <_Z5kfreePKv>:

void kfree(const void *objp) {
    800053c4:	ff010113          	addi	sp,sp,-16
    800053c8:	00113423          	sd	ra,8(sp)
    800053cc:	00813023          	sd	s0,0(sp)
    800053d0:	01010413          	addi	s0,sp,16
    kmem_cache_t::kfree(objp);
    800053d4:	ffffe097          	auipc	ra,0xffffe
    800053d8:	eac080e7          	jalr	-340(ra) # 80003280 <_ZN12kmem_cache_s5kfreeEPKv>
}
    800053dc:	00813083          	ld	ra,8(sp)
    800053e0:	00013403          	ld	s0,0(sp)
    800053e4:	01010113          	addi	sp,sp,16
    800053e8:	00008067          	ret

00000000800053ec <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep) {
    800053ec:	ff010113          	addi	sp,sp,-16
    800053f0:	00113423          	sd	ra,8(sp)
    800053f4:	00813023          	sd	s0,0(sp)
    800053f8:	01010413          	addi	s0,sp,16
    800053fc:	00050593          	mv	a1,a0
    cachep->kmem_cache_destroy((size_t)cachep);
    80005400:	ffffe097          	auipc	ra,0xffffe
    80005404:	ee0080e7          	jalr	-288(ra) # 800032e0 <_ZN12kmem_cache_s18kmem_cache_destroyEm>
}
    80005408:	00813083          	ld	ra,8(sp)
    8000540c:	00013403          	ld	s0,0(sp)
    80005410:	01010113          	addi	sp,sp,16
    80005414:	00008067          	ret

0000000080005418 <_Z15kmem_cache_infoP12kmem_cache_s>:

void kmem_cache_info(kmem_cache_t *cachep) {
    80005418:	ff010113          	addi	sp,sp,-16
    8000541c:	00113423          	sd	ra,8(sp)
    80005420:	00813023          	sd	s0,0(sp)
    80005424:	01010413          	addi	s0,sp,16
    cachep->kmem_cache_info();
    80005428:	ffffe097          	auipc	ra,0xffffe
    8000542c:	078080e7          	jalr	120(ra) # 800034a0 <_ZN12kmem_cache_s15kmem_cache_infoEv>
}
    80005430:	00813083          	ld	ra,8(sp)
    80005434:	00013403          	ld	s0,0(sp)
    80005438:	01010113          	addi	sp,sp,16
    8000543c:	00008067          	ret

0000000080005440 <_Z16print_all_cachesv>:

void print_all_caches() {
    80005440:	ff010113          	addi	sp,sp,-16
    80005444:	00113423          	sd	ra,8(sp)
    80005448:	00813023          	sd	s0,0(sp)
    8000544c:	01010413          	addi	s0,sp,16
    kmem_cache_t::print_info_all_caches();
    80005450:	ffffe097          	auipc	ra,0xffffe
    80005454:	490080e7          	jalr	1168(ra) # 800038e0 <_ZN12kmem_cache_s21print_info_all_cachesEv>
}
    80005458:	00813083          	ld	ra,8(sp)
    8000545c:	00013403          	ld	s0,0(sp)
    80005460:	01010113          	addi	sp,sp,16
    80005464:	00008067          	ret

0000000080005468 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005468:	fe010113          	addi	sp,sp,-32
    8000546c:	00113c23          	sd	ra,24(sp)
    80005470:	00813823          	sd	s0,16(sp)
    80005474:	00913423          	sd	s1,8(sp)
    80005478:	02010413          	addi	s0,sp,32
    8000547c:	00050493          	mv	s1,a0
    LOCK();
    80005480:	00100613          	li	a2,1
    80005484:	00000593          	li	a1,0
    80005488:	00006517          	auipc	a0,0x6
    8000548c:	50850513          	addi	a0,a0,1288 # 8000b990 <lockPrint>
    80005490:	ffffc097          	auipc	ra,0xffffc
    80005494:	c68080e7          	jalr	-920(ra) # 800010f8 <copy_and_swap>
    80005498:	fe0514e3          	bnez	a0,80005480 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000549c:	0004c503          	lbu	a0,0(s1)
    800054a0:	00050a63          	beqz	a0,800054b4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800054a4:	ffffc097          	auipc	ra,0xffffc
    800054a8:	188080e7          	jalr	392(ra) # 8000162c <putc>
        string++;
    800054ac:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800054b0:	fedff06f          	j	8000549c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800054b4:	00000613          	li	a2,0
    800054b8:	00100593          	li	a1,1
    800054bc:	00006517          	auipc	a0,0x6
    800054c0:	4d450513          	addi	a0,a0,1236 # 8000b990 <lockPrint>
    800054c4:	ffffc097          	auipc	ra,0xffffc
    800054c8:	c34080e7          	jalr	-972(ra) # 800010f8 <copy_and_swap>
    800054cc:	fe0514e3          	bnez	a0,800054b4 <_Z11printStringPKc+0x4c>
}
    800054d0:	01813083          	ld	ra,24(sp)
    800054d4:	01013403          	ld	s0,16(sp)
    800054d8:	00813483          	ld	s1,8(sp)
    800054dc:	02010113          	addi	sp,sp,32
    800054e0:	00008067          	ret

00000000800054e4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800054e4:	fd010113          	addi	sp,sp,-48
    800054e8:	02113423          	sd	ra,40(sp)
    800054ec:	02813023          	sd	s0,32(sp)
    800054f0:	00913c23          	sd	s1,24(sp)
    800054f4:	01213823          	sd	s2,16(sp)
    800054f8:	01313423          	sd	s3,8(sp)
    800054fc:	01413023          	sd	s4,0(sp)
    80005500:	03010413          	addi	s0,sp,48
    80005504:	00050993          	mv	s3,a0
    80005508:	00058a13          	mv	s4,a1
    LOCK();
    8000550c:	00100613          	li	a2,1
    80005510:	00000593          	li	a1,0
    80005514:	00006517          	auipc	a0,0x6
    80005518:	47c50513          	addi	a0,a0,1148 # 8000b990 <lockPrint>
    8000551c:	ffffc097          	auipc	ra,0xffffc
    80005520:	bdc080e7          	jalr	-1060(ra) # 800010f8 <copy_and_swap>
    80005524:	fe0514e3          	bnez	a0,8000550c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005528:	00000913          	li	s2,0
    8000552c:	00090493          	mv	s1,s2
    80005530:	0019091b          	addiw	s2,s2,1
    80005534:	03495a63          	bge	s2,s4,80005568 <_Z9getStringPci+0x84>
        cc = getc();
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	0a0080e7          	jalr	160(ra) # 800015d8 <getc>
        if(cc < 1)
    80005540:	02050463          	beqz	a0,80005568 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005544:	009984b3          	add	s1,s3,s1
    80005548:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000554c:	00a00793          	li	a5,10
    80005550:	00f50a63          	beq	a0,a5,80005564 <_Z9getStringPci+0x80>
    80005554:	00d00793          	li	a5,13
    80005558:	fcf51ae3          	bne	a0,a5,8000552c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000555c:	00090493          	mv	s1,s2
    80005560:	0080006f          	j	80005568 <_Z9getStringPci+0x84>
    80005564:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005568:	009984b3          	add	s1,s3,s1
    8000556c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005570:	00000613          	li	a2,0
    80005574:	00100593          	li	a1,1
    80005578:	00006517          	auipc	a0,0x6
    8000557c:	41850513          	addi	a0,a0,1048 # 8000b990 <lockPrint>
    80005580:	ffffc097          	auipc	ra,0xffffc
    80005584:	b78080e7          	jalr	-1160(ra) # 800010f8 <copy_and_swap>
    80005588:	fe0514e3          	bnez	a0,80005570 <_Z9getStringPci+0x8c>
    return buf;
}
    8000558c:	00098513          	mv	a0,s3
    80005590:	02813083          	ld	ra,40(sp)
    80005594:	02013403          	ld	s0,32(sp)
    80005598:	01813483          	ld	s1,24(sp)
    8000559c:	01013903          	ld	s2,16(sp)
    800055a0:	00813983          	ld	s3,8(sp)
    800055a4:	00013a03          	ld	s4,0(sp)
    800055a8:	03010113          	addi	sp,sp,48
    800055ac:	00008067          	ret

00000000800055b0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800055b0:	ff010113          	addi	sp,sp,-16
    800055b4:	00813423          	sd	s0,8(sp)
    800055b8:	01010413          	addi	s0,sp,16
    800055bc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800055c0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800055c4:	0006c603          	lbu	a2,0(a3)
    800055c8:	fd06071b          	addiw	a4,a2,-48
    800055cc:	0ff77713          	andi	a4,a4,255
    800055d0:	00900793          	li	a5,9
    800055d4:	02e7e063          	bltu	a5,a4,800055f4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800055d8:	0025179b          	slliw	a5,a0,0x2
    800055dc:	00a787bb          	addw	a5,a5,a0
    800055e0:	0017979b          	slliw	a5,a5,0x1
    800055e4:	00168693          	addi	a3,a3,1
    800055e8:	00c787bb          	addw	a5,a5,a2
    800055ec:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800055f0:	fd5ff06f          	j	800055c4 <_Z11stringToIntPKc+0x14>
    return n;
}
    800055f4:	00813403          	ld	s0,8(sp)
    800055f8:	01010113          	addi	sp,sp,16
    800055fc:	00008067          	ret

0000000080005600 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005600:	fc010113          	addi	sp,sp,-64
    80005604:	02113c23          	sd	ra,56(sp)
    80005608:	02813823          	sd	s0,48(sp)
    8000560c:	02913423          	sd	s1,40(sp)
    80005610:	03213023          	sd	s2,32(sp)
    80005614:	01313c23          	sd	s3,24(sp)
    80005618:	04010413          	addi	s0,sp,64
    8000561c:	00050493          	mv	s1,a0
    80005620:	00058913          	mv	s2,a1
    80005624:	00060993          	mv	s3,a2
    LOCK();
    80005628:	00100613          	li	a2,1
    8000562c:	00000593          	li	a1,0
    80005630:	00006517          	auipc	a0,0x6
    80005634:	36050513          	addi	a0,a0,864 # 8000b990 <lockPrint>
    80005638:	ffffc097          	auipc	ra,0xffffc
    8000563c:	ac0080e7          	jalr	-1344(ra) # 800010f8 <copy_and_swap>
    80005640:	fe0514e3          	bnez	a0,80005628 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005644:	00098463          	beqz	s3,8000564c <_Z8printIntiii+0x4c>
    80005648:	0804c463          	bltz	s1,800056d0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000564c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005650:	00000593          	li	a1,0
    }

    i = 0;
    80005654:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005658:	0009079b          	sext.w	a5,s2
    8000565c:	0325773b          	remuw	a4,a0,s2
    80005660:	00048613          	mv	a2,s1
    80005664:	0014849b          	addiw	s1,s1,1
    80005668:	02071693          	slli	a3,a4,0x20
    8000566c:	0206d693          	srli	a3,a3,0x20
    80005670:	00006717          	auipc	a4,0x6
    80005674:	fd070713          	addi	a4,a4,-48 # 8000b640 <digits>
    80005678:	00d70733          	add	a4,a4,a3
    8000567c:	00074683          	lbu	a3,0(a4)
    80005680:	fd040713          	addi	a4,s0,-48
    80005684:	00c70733          	add	a4,a4,a2
    80005688:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000568c:	0005071b          	sext.w	a4,a0
    80005690:	0325553b          	divuw	a0,a0,s2
    80005694:	fcf772e3          	bgeu	a4,a5,80005658 <_Z8printIntiii+0x58>
    if(neg)
    80005698:	00058c63          	beqz	a1,800056b0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000569c:	fd040793          	addi	a5,s0,-48
    800056a0:	009784b3          	add	s1,a5,s1
    800056a4:	02d00793          	li	a5,45
    800056a8:	fef48823          	sb	a5,-16(s1)
    800056ac:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800056b0:	fff4849b          	addiw	s1,s1,-1
    800056b4:	0204c463          	bltz	s1,800056dc <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800056b8:	fd040793          	addi	a5,s0,-48
    800056bc:	009787b3          	add	a5,a5,s1
    800056c0:	ff07c503          	lbu	a0,-16(a5)
    800056c4:	ffffc097          	auipc	ra,0xffffc
    800056c8:	f68080e7          	jalr	-152(ra) # 8000162c <putc>
    800056cc:	fe5ff06f          	j	800056b0 <_Z8printIntiii+0xb0>
        x = -xx;
    800056d0:	4090053b          	negw	a0,s1
        neg = 1;
    800056d4:	00100593          	li	a1,1
        x = -xx;
    800056d8:	f7dff06f          	j	80005654 <_Z8printIntiii+0x54>

    UNLOCK();
    800056dc:	00000613          	li	a2,0
    800056e0:	00100593          	li	a1,1
    800056e4:	00006517          	auipc	a0,0x6
    800056e8:	2ac50513          	addi	a0,a0,684 # 8000b990 <lockPrint>
    800056ec:	ffffc097          	auipc	ra,0xffffc
    800056f0:	a0c080e7          	jalr	-1524(ra) # 800010f8 <copy_and_swap>
    800056f4:	fe0514e3          	bnez	a0,800056dc <_Z8printIntiii+0xdc>
    800056f8:	03813083          	ld	ra,56(sp)
    800056fc:	03013403          	ld	s0,48(sp)
    80005700:	02813483          	ld	s1,40(sp)
    80005704:	02013903          	ld	s2,32(sp)
    80005708:	01813983          	ld	s3,24(sp)
    8000570c:	04010113          	addi	sp,sp,64
    80005710:	00008067          	ret

0000000080005714 <_ZN9BufferCPPC1Ei>:
#include "../test/buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005714:	fd010113          	addi	sp,sp,-48
    80005718:	02113423          	sd	ra,40(sp)
    8000571c:	02813023          	sd	s0,32(sp)
    80005720:	00913c23          	sd	s1,24(sp)
    80005724:	01213823          	sd	s2,16(sp)
    80005728:	01313423          	sd	s3,8(sp)
    8000572c:	03010413          	addi	s0,sp,48
    80005730:	00050493          	mv	s1,a0
    80005734:	00058913          	mv	s2,a1
    80005738:	0015879b          	addiw	a5,a1,1
    8000573c:	0007851b          	sext.w	a0,a5
    80005740:	00f4a023          	sw	a5,0(s1)
    80005744:	0004a823          	sw	zero,16(s1)
    80005748:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000574c:	00251513          	slli	a0,a0,0x2
    80005750:	ffffc097          	auipc	ra,0xffffc
    80005754:	af4080e7          	jalr	-1292(ra) # 80001244 <mem_alloc>
    80005758:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000575c:	01000513          	li	a0,16
    80005760:	ffffe097          	auipc	ra,0xffffe
    80005764:	604080e7          	jalr	1540(ra) # 80003d64 <_Znwm>
    80005768:	00050993          	mv	s3,a0
    8000576c:	00000593          	li	a1,0
    80005770:	fffff097          	auipc	ra,0xfffff
    80005774:	904080e7          	jalr	-1788(ra) # 80004074 <_ZN9SemaphoreC1Ej>
    80005778:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000577c:	01000513          	li	a0,16
    80005780:	ffffe097          	auipc	ra,0xffffe
    80005784:	5e4080e7          	jalr	1508(ra) # 80003d64 <_Znwm>
    80005788:	00050993          	mv	s3,a0
    8000578c:	00090593          	mv	a1,s2
    80005790:	fffff097          	auipc	ra,0xfffff
    80005794:	8e4080e7          	jalr	-1820(ra) # 80004074 <_ZN9SemaphoreC1Ej>
    80005798:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000579c:	01000513          	li	a0,16
    800057a0:	ffffe097          	auipc	ra,0xffffe
    800057a4:	5c4080e7          	jalr	1476(ra) # 80003d64 <_Znwm>
    800057a8:	00050913          	mv	s2,a0
    800057ac:	00100593          	li	a1,1
    800057b0:	fffff097          	auipc	ra,0xfffff
    800057b4:	8c4080e7          	jalr	-1852(ra) # 80004074 <_ZN9SemaphoreC1Ej>
    800057b8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800057bc:	01000513          	li	a0,16
    800057c0:	ffffe097          	auipc	ra,0xffffe
    800057c4:	5a4080e7          	jalr	1444(ra) # 80003d64 <_Znwm>
    800057c8:	00050913          	mv	s2,a0
    800057cc:	00100593          	li	a1,1
    800057d0:	fffff097          	auipc	ra,0xfffff
    800057d4:	8a4080e7          	jalr	-1884(ra) # 80004074 <_ZN9SemaphoreC1Ej>
    800057d8:	0324b823          	sd	s2,48(s1)
}
    800057dc:	02813083          	ld	ra,40(sp)
    800057e0:	02013403          	ld	s0,32(sp)
    800057e4:	01813483          	ld	s1,24(sp)
    800057e8:	01013903          	ld	s2,16(sp)
    800057ec:	00813983          	ld	s3,8(sp)
    800057f0:	03010113          	addi	sp,sp,48
    800057f4:	00008067          	ret
    800057f8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800057fc:	00098513          	mv	a0,s3
    80005800:	ffffe097          	auipc	ra,0xffffe
    80005804:	5b4080e7          	jalr	1460(ra) # 80003db4 <_ZdlPv>
    80005808:	00048513          	mv	a0,s1
    8000580c:	00007097          	auipc	ra,0x7
    80005810:	26c080e7          	jalr	620(ra) # 8000ca78 <_Unwind_Resume>
    80005814:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005818:	00098513          	mv	a0,s3
    8000581c:	ffffe097          	auipc	ra,0xffffe
    80005820:	598080e7          	jalr	1432(ra) # 80003db4 <_ZdlPv>
    80005824:	00048513          	mv	a0,s1
    80005828:	00007097          	auipc	ra,0x7
    8000582c:	250080e7          	jalr	592(ra) # 8000ca78 <_Unwind_Resume>
    80005830:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005834:	00090513          	mv	a0,s2
    80005838:	ffffe097          	auipc	ra,0xffffe
    8000583c:	57c080e7          	jalr	1404(ra) # 80003db4 <_ZdlPv>
    80005840:	00048513          	mv	a0,s1
    80005844:	00007097          	auipc	ra,0x7
    80005848:	234080e7          	jalr	564(ra) # 8000ca78 <_Unwind_Resume>
    8000584c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005850:	00090513          	mv	a0,s2
    80005854:	ffffe097          	auipc	ra,0xffffe
    80005858:	560080e7          	jalr	1376(ra) # 80003db4 <_ZdlPv>
    8000585c:	00048513          	mv	a0,s1
    80005860:	00007097          	auipc	ra,0x7
    80005864:	218080e7          	jalr	536(ra) # 8000ca78 <_Unwind_Resume>

0000000080005868 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005868:	fe010113          	addi	sp,sp,-32
    8000586c:	00113c23          	sd	ra,24(sp)
    80005870:	00813823          	sd	s0,16(sp)
    80005874:	00913423          	sd	s1,8(sp)
    80005878:	01213023          	sd	s2,0(sp)
    8000587c:	02010413          	addi	s0,sp,32
    80005880:	00050493          	mv	s1,a0
    80005884:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005888:	01853503          	ld	a0,24(a0)
    8000588c:	fffff097          	auipc	ra,0xfffff
    80005890:	828080e7          	jalr	-2008(ra) # 800040b4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005894:	0304b503          	ld	a0,48(s1)
    80005898:	fffff097          	auipc	ra,0xfffff
    8000589c:	81c080e7          	jalr	-2020(ra) # 800040b4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800058a0:	0084b783          	ld	a5,8(s1)
    800058a4:	0144a703          	lw	a4,20(s1)
    800058a8:	00271713          	slli	a4,a4,0x2
    800058ac:	00e787b3          	add	a5,a5,a4
    800058b0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800058b4:	0144a783          	lw	a5,20(s1)
    800058b8:	0017879b          	addiw	a5,a5,1
    800058bc:	0004a703          	lw	a4,0(s1)
    800058c0:	02e7e7bb          	remw	a5,a5,a4
    800058c4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800058c8:	0304b503          	ld	a0,48(s1)
    800058cc:	fffff097          	auipc	ra,0xfffff
    800058d0:	814080e7          	jalr	-2028(ra) # 800040e0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800058d4:	0204b503          	ld	a0,32(s1)
    800058d8:	fffff097          	auipc	ra,0xfffff
    800058dc:	808080e7          	jalr	-2040(ra) # 800040e0 <_ZN9Semaphore6signalEv>

}
    800058e0:	01813083          	ld	ra,24(sp)
    800058e4:	01013403          	ld	s0,16(sp)
    800058e8:	00813483          	ld	s1,8(sp)
    800058ec:	00013903          	ld	s2,0(sp)
    800058f0:	02010113          	addi	sp,sp,32
    800058f4:	00008067          	ret

00000000800058f8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800058f8:	fe010113          	addi	sp,sp,-32
    800058fc:	00113c23          	sd	ra,24(sp)
    80005900:	00813823          	sd	s0,16(sp)
    80005904:	00913423          	sd	s1,8(sp)
    80005908:	01213023          	sd	s2,0(sp)
    8000590c:	02010413          	addi	s0,sp,32
    80005910:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005914:	02053503          	ld	a0,32(a0)
    80005918:	ffffe097          	auipc	ra,0xffffe
    8000591c:	79c080e7          	jalr	1948(ra) # 800040b4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005920:	0284b503          	ld	a0,40(s1)
    80005924:	ffffe097          	auipc	ra,0xffffe
    80005928:	790080e7          	jalr	1936(ra) # 800040b4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000592c:	0084b703          	ld	a4,8(s1)
    80005930:	0104a783          	lw	a5,16(s1)
    80005934:	00279693          	slli	a3,a5,0x2
    80005938:	00d70733          	add	a4,a4,a3
    8000593c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005940:	0017879b          	addiw	a5,a5,1
    80005944:	0004a703          	lw	a4,0(s1)
    80005948:	02e7e7bb          	remw	a5,a5,a4
    8000594c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005950:	0284b503          	ld	a0,40(s1)
    80005954:	ffffe097          	auipc	ra,0xffffe
    80005958:	78c080e7          	jalr	1932(ra) # 800040e0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000595c:	0184b503          	ld	a0,24(s1)
    80005960:	ffffe097          	auipc	ra,0xffffe
    80005964:	780080e7          	jalr	1920(ra) # 800040e0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005968:	00090513          	mv	a0,s2
    8000596c:	01813083          	ld	ra,24(sp)
    80005970:	01013403          	ld	s0,16(sp)
    80005974:	00813483          	ld	s1,8(sp)
    80005978:	00013903          	ld	s2,0(sp)
    8000597c:	02010113          	addi	sp,sp,32
    80005980:	00008067          	ret

0000000080005984 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005984:	fe010113          	addi	sp,sp,-32
    80005988:	00113c23          	sd	ra,24(sp)
    8000598c:	00813823          	sd	s0,16(sp)
    80005990:	00913423          	sd	s1,8(sp)
    80005994:	01213023          	sd	s2,0(sp)
    80005998:	02010413          	addi	s0,sp,32
    8000599c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800059a0:	02853503          	ld	a0,40(a0)
    800059a4:	ffffe097          	auipc	ra,0xffffe
    800059a8:	710080e7          	jalr	1808(ra) # 800040b4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800059ac:	0304b503          	ld	a0,48(s1)
    800059b0:	ffffe097          	auipc	ra,0xffffe
    800059b4:	704080e7          	jalr	1796(ra) # 800040b4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800059b8:	0144a783          	lw	a5,20(s1)
    800059bc:	0104a903          	lw	s2,16(s1)
    800059c0:	0327ce63          	blt	a5,s2,800059fc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800059c4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800059c8:	0304b503          	ld	a0,48(s1)
    800059cc:	ffffe097          	auipc	ra,0xffffe
    800059d0:	714080e7          	jalr	1812(ra) # 800040e0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800059d4:	0284b503          	ld	a0,40(s1)
    800059d8:	ffffe097          	auipc	ra,0xffffe
    800059dc:	708080e7          	jalr	1800(ra) # 800040e0 <_ZN9Semaphore6signalEv>

    return ret;
}
    800059e0:	00090513          	mv	a0,s2
    800059e4:	01813083          	ld	ra,24(sp)
    800059e8:	01013403          	ld	s0,16(sp)
    800059ec:	00813483          	ld	s1,8(sp)
    800059f0:	00013903          	ld	s2,0(sp)
    800059f4:	02010113          	addi	sp,sp,32
    800059f8:	00008067          	ret
        ret = cap - head + tail;
    800059fc:	0004a703          	lw	a4,0(s1)
    80005a00:	4127093b          	subw	s2,a4,s2
    80005a04:	00f9093b          	addw	s2,s2,a5
    80005a08:	fc1ff06f          	j	800059c8 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005a0c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005a0c:	fe010113          	addi	sp,sp,-32
    80005a10:	00113c23          	sd	ra,24(sp)
    80005a14:	00813823          	sd	s0,16(sp)
    80005a18:	00913423          	sd	s1,8(sp)
    80005a1c:	02010413          	addi	s0,sp,32
    80005a20:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005a24:	00a00513          	li	a0,10
    80005a28:	ffffe097          	auipc	ra,0xffffe
    80005a2c:	70c080e7          	jalr	1804(ra) # 80004134 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005a30:	00004517          	auipc	a0,0x4
    80005a34:	a0050513          	addi	a0,a0,-1536 # 80009430 <CONSOLE_STATUS+0x420>
    80005a38:	00000097          	auipc	ra,0x0
    80005a3c:	a30080e7          	jalr	-1488(ra) # 80005468 <_Z11printStringPKc>
    while (getCnt()) {
    80005a40:	00048513          	mv	a0,s1
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	f40080e7          	jalr	-192(ra) # 80005984 <_ZN9BufferCPP6getCntEv>
    80005a4c:	02050c63          	beqz	a0,80005a84 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005a50:	0084b783          	ld	a5,8(s1)
    80005a54:	0104a703          	lw	a4,16(s1)
    80005a58:	00271713          	slli	a4,a4,0x2
    80005a5c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005a60:	0007c503          	lbu	a0,0(a5)
    80005a64:	ffffe097          	auipc	ra,0xffffe
    80005a68:	6d0080e7          	jalr	1744(ra) # 80004134 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005a6c:	0104a783          	lw	a5,16(s1)
    80005a70:	0017879b          	addiw	a5,a5,1
    80005a74:	0004a703          	lw	a4,0(s1)
    80005a78:	02e7e7bb          	remw	a5,a5,a4
    80005a7c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005a80:	fc1ff06f          	j	80005a40 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005a84:	02100513          	li	a0,33
    80005a88:	ffffe097          	auipc	ra,0xffffe
    80005a8c:	6ac080e7          	jalr	1708(ra) # 80004134 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005a90:	00a00513          	li	a0,10
    80005a94:	ffffe097          	auipc	ra,0xffffe
    80005a98:	6a0080e7          	jalr	1696(ra) # 80004134 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005a9c:	0084b503          	ld	a0,8(s1)
    80005aa0:	ffffb097          	auipc	ra,0xffffb
    80005aa4:	7fc080e7          	jalr	2044(ra) # 8000129c <mem_free>
    delete itemAvailable;
    80005aa8:	0204b503          	ld	a0,32(s1)
    80005aac:	00050863          	beqz	a0,80005abc <_ZN9BufferCPPD1Ev+0xb0>
    80005ab0:	00053783          	ld	a5,0(a0)
    80005ab4:	0087b783          	ld	a5,8(a5)
    80005ab8:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005abc:	0184b503          	ld	a0,24(s1)
    80005ac0:	00050863          	beqz	a0,80005ad0 <_ZN9BufferCPPD1Ev+0xc4>
    80005ac4:	00053783          	ld	a5,0(a0)
    80005ac8:	0087b783          	ld	a5,8(a5)
    80005acc:	000780e7          	jalr	a5
    delete mutexTail;
    80005ad0:	0304b503          	ld	a0,48(s1)
    80005ad4:	00050863          	beqz	a0,80005ae4 <_ZN9BufferCPPD1Ev+0xd8>
    80005ad8:	00053783          	ld	a5,0(a0)
    80005adc:	0087b783          	ld	a5,8(a5)
    80005ae0:	000780e7          	jalr	a5
    delete mutexHead;
    80005ae4:	0284b503          	ld	a0,40(s1)
    80005ae8:	00050863          	beqz	a0,80005af8 <_ZN9BufferCPPD1Ev+0xec>
    80005aec:	00053783          	ld	a5,0(a0)
    80005af0:	0087b783          	ld	a5,8(a5)
    80005af4:	000780e7          	jalr	a5
}
    80005af8:	01813083          	ld	ra,24(sp)
    80005afc:	01013403          	ld	s0,16(sp)
    80005b00:	00813483          	ld	s1,8(sp)
    80005b04:	02010113          	addi	sp,sp,32
    80005b08:	00008067          	ret

0000000080005b0c <_Z11workerBodyEPv>:
    printString("D finished!\n");
    finishedD = true;
    thread_dispatch();
}

void workerBodyE(void* arg) {
    80005b0c:	ff010113          	addi	sp,sp,-16
    80005b10:	00113423          	sd	ra,8(sp)
    80005b14:	00813023          	sd	s0,0(sp)
    80005b18:	01010413          	addi	s0,sp,16
//
//    for (; i < 16; i++) {
//        printString("D: i="); printInt(i); printString("\n");
//    }

    printString("E finished!\n");
    80005b1c:	00004517          	auipc	a0,0x4
    80005b20:	92c50513          	addi	a0,a0,-1748 # 80009448 <CONSOLE_STATUS+0x438>
    80005b24:	00000097          	auipc	ra,0x0
    80005b28:	944080e7          	jalr	-1724(ra) # 80005468 <_Z11printStringPKc>
    finishedE = true;
    80005b2c:	00100793          	li	a5,1
    80005b30:	00006717          	auipc	a4,0x6
    80005b34:	e6f70423          	sb	a5,-408(a4) # 8000b998 <finishedE>
    thread_dispatch();
    80005b38:	ffffc097          	auipc	ra,0xffffc
    80005b3c:	84c080e7          	jalr	-1972(ra) # 80001384 <thread_dispatch>
}
    80005b40:	00813083          	ld	ra,8(sp)
    80005b44:	00013403          	ld	s0,0(sp)
    80005b48:	01010113          	addi	sp,sp,16
    80005b4c:	00008067          	ret

0000000080005b50 <_Z11workerBodyAPv>:
void workerBodyA(void* arg) {
    80005b50:	fe010113          	addi	sp,sp,-32
    80005b54:	00113c23          	sd	ra,24(sp)
    80005b58:	00813823          	sd	s0,16(sp)
    80005b5c:	00913423          	sd	s1,8(sp)
    80005b60:	01213023          	sd	s2,0(sp)
    80005b64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005b68:	00000913          	li	s2,0
    80005b6c:	0380006f          	j	80005ba4 <_Z11workerBodyAPv+0x54>
            thread_dispatch();
    80005b70:	ffffc097          	auipc	ra,0xffffc
    80005b74:	814080e7          	jalr	-2028(ra) # 80001384 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005b78:	00148493          	addi	s1,s1,1
    80005b7c:	000027b7          	lui	a5,0x2
    80005b80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005b84:	0097ee63          	bltu	a5,s1,80005ba0 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005b88:	00000713          	li	a4,0
    80005b8c:	000077b7          	lui	a5,0x7
    80005b90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005b94:	fce7eee3          	bltu	a5,a4,80005b70 <_Z11workerBodyAPv+0x20>
    80005b98:	00170713          	addi	a4,a4,1
    80005b9c:	ff1ff06f          	j	80005b8c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005ba0:	00190913          	addi	s2,s2,1
    80005ba4:	00900793          	li	a5,9
    80005ba8:	0527e063          	bltu	a5,s2,80005be8 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005bac:	00004517          	auipc	a0,0x4
    80005bb0:	8ac50513          	addi	a0,a0,-1876 # 80009458 <CONSOLE_STATUS+0x448>
    80005bb4:	00000097          	auipc	ra,0x0
    80005bb8:	8b4080e7          	jalr	-1868(ra) # 80005468 <_Z11printStringPKc>
    80005bbc:	00000613          	li	a2,0
    80005bc0:	00a00593          	li	a1,10
    80005bc4:	0009051b          	sext.w	a0,s2
    80005bc8:	00000097          	auipc	ra,0x0
    80005bcc:	a38080e7          	jalr	-1480(ra) # 80005600 <_Z8printIntiii>
    80005bd0:	00003517          	auipc	a0,0x3
    80005bd4:	67850513          	addi	a0,a0,1656 # 80009248 <CONSOLE_STATUS+0x238>
    80005bd8:	00000097          	auipc	ra,0x0
    80005bdc:	890080e7          	jalr	-1904(ra) # 80005468 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005be0:	00000493          	li	s1,0
    80005be4:	f99ff06f          	j	80005b7c <_Z11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005be8:	00004517          	auipc	a0,0x4
    80005bec:	87850513          	addi	a0,a0,-1928 # 80009460 <CONSOLE_STATUS+0x450>
    80005bf0:	00000097          	auipc	ra,0x0
    80005bf4:	878080e7          	jalr	-1928(ra) # 80005468 <_Z11printStringPKc>
    finishedA = true;
    80005bf8:	00100793          	li	a5,1
    80005bfc:	00006717          	auipc	a4,0x6
    80005c00:	d8f70ea3          	sb	a5,-611(a4) # 8000b999 <finishedA>
}
    80005c04:	01813083          	ld	ra,24(sp)
    80005c08:	01013403          	ld	s0,16(sp)
    80005c0c:	00813483          	ld	s1,8(sp)
    80005c10:	00013903          	ld	s2,0(sp)
    80005c14:	02010113          	addi	sp,sp,32
    80005c18:	00008067          	ret

0000000080005c1c <_Z11workerBodyBPv>:
void workerBodyB(void* arg) {
    80005c1c:	fe010113          	addi	sp,sp,-32
    80005c20:	00113c23          	sd	ra,24(sp)
    80005c24:	00813823          	sd	s0,16(sp)
    80005c28:	00913423          	sd	s1,8(sp)
    80005c2c:	01213023          	sd	s2,0(sp)
    80005c30:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005c34:	00000913          	li	s2,0
    80005c38:	0380006f          	j	80005c70 <_Z11workerBodyBPv+0x54>
            thread_dispatch();
    80005c3c:	ffffb097          	auipc	ra,0xffffb
    80005c40:	748080e7          	jalr	1864(ra) # 80001384 <thread_dispatch>
        for (uint64 j = 0; j < 10000; j++) {
    80005c44:	00148493          	addi	s1,s1,1
    80005c48:	000027b7          	lui	a5,0x2
    80005c4c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005c50:	0097ee63          	bltu	a5,s1,80005c6c <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005c54:	00000713          	li	a4,0
    80005c58:	000077b7          	lui	a5,0x7
    80005c5c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005c60:	fce7eee3          	bltu	a5,a4,80005c3c <_Z11workerBodyBPv+0x20>
    80005c64:	00170713          	addi	a4,a4,1
    80005c68:	ff1ff06f          	j	80005c58 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005c6c:	00190913          	addi	s2,s2,1
    80005c70:	00f00793          	li	a5,15
    80005c74:	0527e063          	bltu	a5,s2,80005cb4 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005c78:	00003517          	auipc	a0,0x3
    80005c7c:	7f850513          	addi	a0,a0,2040 # 80009470 <CONSOLE_STATUS+0x460>
    80005c80:	fffff097          	auipc	ra,0xfffff
    80005c84:	7e8080e7          	jalr	2024(ra) # 80005468 <_Z11printStringPKc>
    80005c88:	00000613          	li	a2,0
    80005c8c:	00a00593          	li	a1,10
    80005c90:	0009051b          	sext.w	a0,s2
    80005c94:	00000097          	auipc	ra,0x0
    80005c98:	96c080e7          	jalr	-1684(ra) # 80005600 <_Z8printIntiii>
    80005c9c:	00003517          	auipc	a0,0x3
    80005ca0:	5ac50513          	addi	a0,a0,1452 # 80009248 <CONSOLE_STATUS+0x238>
    80005ca4:	fffff097          	auipc	ra,0xfffff
    80005ca8:	7c4080e7          	jalr	1988(ra) # 80005468 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005cac:	00000493          	li	s1,0
    80005cb0:	f99ff06f          	j	80005c48 <_Z11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005cb4:	00003517          	auipc	a0,0x3
    80005cb8:	7c450513          	addi	a0,a0,1988 # 80009478 <CONSOLE_STATUS+0x468>
    80005cbc:	fffff097          	auipc	ra,0xfffff
    80005cc0:	7ac080e7          	jalr	1964(ra) # 80005468 <_Z11printStringPKc>
    finishedB = true;
    80005cc4:	00100793          	li	a5,1
    80005cc8:	00006717          	auipc	a4,0x6
    80005ccc:	ccf70923          	sb	a5,-814(a4) # 8000b99a <finishedB>
    thread_dispatch();
    80005cd0:	ffffb097          	auipc	ra,0xffffb
    80005cd4:	6b4080e7          	jalr	1716(ra) # 80001384 <thread_dispatch>
}
    80005cd8:	01813083          	ld	ra,24(sp)
    80005cdc:	01013403          	ld	s0,16(sp)
    80005ce0:	00813483          	ld	s1,8(sp)
    80005ce4:	00013903          	ld	s2,0(sp)
    80005ce8:	02010113          	addi	sp,sp,32
    80005cec:	00008067          	ret

0000000080005cf0 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80005cf0:	fe010113          	addi	sp,sp,-32
    80005cf4:	00113c23          	sd	ra,24(sp)
    80005cf8:	00813823          	sd	s0,16(sp)
    80005cfc:	00913423          	sd	s1,8(sp)
    80005d00:	01213023          	sd	s2,0(sp)
    80005d04:	02010413          	addi	s0,sp,32
    80005d08:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005d0c:	00100793          	li	a5,1
    80005d10:	02a7f863          	bgeu	a5,a0,80005d40 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005d14:	00a00793          	li	a5,10
    80005d18:	02f577b3          	remu	a5,a0,a5
    80005d1c:	02078e63          	beqz	a5,80005d58 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005d20:	fff48513          	addi	a0,s1,-1
    80005d24:	00000097          	auipc	ra,0x0
    80005d28:	fcc080e7          	jalr	-52(ra) # 80005cf0 <_Z9fibonaccim>
    80005d2c:	00050913          	mv	s2,a0
    80005d30:	ffe48513          	addi	a0,s1,-2
    80005d34:	00000097          	auipc	ra,0x0
    80005d38:	fbc080e7          	jalr	-68(ra) # 80005cf0 <_Z9fibonaccim>
    80005d3c:	00a90533          	add	a0,s2,a0
}
    80005d40:	01813083          	ld	ra,24(sp)
    80005d44:	01013403          	ld	s0,16(sp)
    80005d48:	00813483          	ld	s1,8(sp)
    80005d4c:	00013903          	ld	s2,0(sp)
    80005d50:	02010113          	addi	sp,sp,32
    80005d54:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005d58:	ffffb097          	auipc	ra,0xffffb
    80005d5c:	62c080e7          	jalr	1580(ra) # 80001384 <thread_dispatch>
    80005d60:	fc1ff06f          	j	80005d20 <_Z9fibonaccim+0x30>

0000000080005d64 <_Z11workerBodyCPv>:
void workerBodyC(void* arg) {
    80005d64:	fe010113          	addi	sp,sp,-32
    80005d68:	00113c23          	sd	ra,24(sp)
    80005d6c:	00813823          	sd	s0,16(sp)
    80005d70:	00913423          	sd	s1,8(sp)
    80005d74:	01213023          	sd	s2,0(sp)
    80005d78:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005d7c:	00000493          	li	s1,0
    80005d80:	0400006f          	j	80005dc0 <_Z11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005d84:	00003517          	auipc	a0,0x3
    80005d88:	70450513          	addi	a0,a0,1796 # 80009488 <CONSOLE_STATUS+0x478>
    80005d8c:	fffff097          	auipc	ra,0xfffff
    80005d90:	6dc080e7          	jalr	1756(ra) # 80005468 <_Z11printStringPKc>
    80005d94:	00000613          	li	a2,0
    80005d98:	00a00593          	li	a1,10
    80005d9c:	00048513          	mv	a0,s1
    80005da0:	00000097          	auipc	ra,0x0
    80005da4:	860080e7          	jalr	-1952(ra) # 80005600 <_Z8printIntiii>
    80005da8:	00003517          	auipc	a0,0x3
    80005dac:	4a050513          	addi	a0,a0,1184 # 80009248 <CONSOLE_STATUS+0x238>
    80005db0:	fffff097          	auipc	ra,0xfffff
    80005db4:	6b8080e7          	jalr	1720(ra) # 80005468 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005db8:	0014849b          	addiw	s1,s1,1
    80005dbc:	0ff4f493          	andi	s1,s1,255
    80005dc0:	00200793          	li	a5,2
    80005dc4:	fc97f0e3          	bgeu	a5,s1,80005d84 <_Z11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005dc8:	00003517          	auipc	a0,0x3
    80005dcc:	6c850513          	addi	a0,a0,1736 # 80009490 <CONSOLE_STATUS+0x480>
    80005dd0:	fffff097          	auipc	ra,0xfffff
    80005dd4:	698080e7          	jalr	1688(ra) # 80005468 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005dd8:	00700313          	li	t1,7
    thread_dispatch();
    80005ddc:	ffffb097          	auipc	ra,0xffffb
    80005de0:	5a8080e7          	jalr	1448(ra) # 80001384 <thread_dispatch>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005de4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005de8:	00003517          	auipc	a0,0x3
    80005dec:	6b850513          	addi	a0,a0,1720 # 800094a0 <CONSOLE_STATUS+0x490>
    80005df0:	fffff097          	auipc	ra,0xfffff
    80005df4:	678080e7          	jalr	1656(ra) # 80005468 <_Z11printStringPKc>
    80005df8:	00000613          	li	a2,0
    80005dfc:	00a00593          	li	a1,10
    80005e00:	0009051b          	sext.w	a0,s2
    80005e04:	fffff097          	auipc	ra,0xfffff
    80005e08:	7fc080e7          	jalr	2044(ra) # 80005600 <_Z8printIntiii>
    80005e0c:	00003517          	auipc	a0,0x3
    80005e10:	43c50513          	addi	a0,a0,1084 # 80009248 <CONSOLE_STATUS+0x238>
    80005e14:	fffff097          	auipc	ra,0xfffff
    80005e18:	654080e7          	jalr	1620(ra) # 80005468 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005e1c:	00c00513          	li	a0,12
    80005e20:	00000097          	auipc	ra,0x0
    80005e24:	ed0080e7          	jalr	-304(ra) # 80005cf0 <_Z9fibonaccim>
    80005e28:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005e2c:	00003517          	auipc	a0,0x3
    80005e30:	67c50513          	addi	a0,a0,1660 # 800094a8 <CONSOLE_STATUS+0x498>
    80005e34:	fffff097          	auipc	ra,0xfffff
    80005e38:	634080e7          	jalr	1588(ra) # 80005468 <_Z11printStringPKc>
    80005e3c:	00000613          	li	a2,0
    80005e40:	00a00593          	li	a1,10
    80005e44:	0009051b          	sext.w	a0,s2
    80005e48:	fffff097          	auipc	ra,0xfffff
    80005e4c:	7b8080e7          	jalr	1976(ra) # 80005600 <_Z8printIntiii>
    80005e50:	00003517          	auipc	a0,0x3
    80005e54:	3f850513          	addi	a0,a0,1016 # 80009248 <CONSOLE_STATUS+0x238>
    80005e58:	fffff097          	auipc	ra,0xfffff
    80005e5c:	610080e7          	jalr	1552(ra) # 80005468 <_Z11printStringPKc>
    80005e60:	0400006f          	j	80005ea0 <_Z11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005e64:	00003517          	auipc	a0,0x3
    80005e68:	62450513          	addi	a0,a0,1572 # 80009488 <CONSOLE_STATUS+0x478>
    80005e6c:	fffff097          	auipc	ra,0xfffff
    80005e70:	5fc080e7          	jalr	1532(ra) # 80005468 <_Z11printStringPKc>
    80005e74:	00000613          	li	a2,0
    80005e78:	00a00593          	li	a1,10
    80005e7c:	00048513          	mv	a0,s1
    80005e80:	fffff097          	auipc	ra,0xfffff
    80005e84:	780080e7          	jalr	1920(ra) # 80005600 <_Z8printIntiii>
    80005e88:	00003517          	auipc	a0,0x3
    80005e8c:	3c050513          	addi	a0,a0,960 # 80009248 <CONSOLE_STATUS+0x238>
    80005e90:	fffff097          	auipc	ra,0xfffff
    80005e94:	5d8080e7          	jalr	1496(ra) # 80005468 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005e98:	0014849b          	addiw	s1,s1,1
    80005e9c:	0ff4f493          	andi	s1,s1,255
    80005ea0:	00500793          	li	a5,5
    80005ea4:	fc97f0e3          	bgeu	a5,s1,80005e64 <_Z11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005ea8:	00003517          	auipc	a0,0x3
    80005eac:	5b850513          	addi	a0,a0,1464 # 80009460 <CONSOLE_STATUS+0x450>
    80005eb0:	fffff097          	auipc	ra,0xfffff
    80005eb4:	5b8080e7          	jalr	1464(ra) # 80005468 <_Z11printStringPKc>
    finishedC = true;
    80005eb8:	00100793          	li	a5,1
    80005ebc:	00006717          	auipc	a4,0x6
    80005ec0:	aef70223          	sb	a5,-1308(a4) # 8000b9a0 <finishedC>
    thread_dispatch();
    80005ec4:	ffffb097          	auipc	ra,0xffffb
    80005ec8:	4c0080e7          	jalr	1216(ra) # 80001384 <thread_dispatch>
}
    80005ecc:	01813083          	ld	ra,24(sp)
    80005ed0:	01013403          	ld	s0,16(sp)
    80005ed4:	00813483          	ld	s1,8(sp)
    80005ed8:	00013903          	ld	s2,0(sp)
    80005edc:	02010113          	addi	sp,sp,32
    80005ee0:	00008067          	ret

0000000080005ee4 <_Z11workerBodyDPv>:
void workerBodyD(void* arg) {
    80005ee4:	fe010113          	addi	sp,sp,-32
    80005ee8:	00113c23          	sd	ra,24(sp)
    80005eec:	00813823          	sd	s0,16(sp)
    80005ef0:	00913423          	sd	s1,8(sp)
    80005ef4:	01213023          	sd	s2,0(sp)
    80005ef8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005efc:	00a00493          	li	s1,10
    80005f00:	0400006f          	j	80005f40 <_Z11workerBodyDPv+0x5c>
        printString("D: i="); printInt(i); printString("\n");
    80005f04:	00003517          	auipc	a0,0x3
    80005f08:	5b450513          	addi	a0,a0,1460 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005f0c:	fffff097          	auipc	ra,0xfffff
    80005f10:	55c080e7          	jalr	1372(ra) # 80005468 <_Z11printStringPKc>
    80005f14:	00000613          	li	a2,0
    80005f18:	00a00593          	li	a1,10
    80005f1c:	00048513          	mv	a0,s1
    80005f20:	fffff097          	auipc	ra,0xfffff
    80005f24:	6e0080e7          	jalr	1760(ra) # 80005600 <_Z8printIntiii>
    80005f28:	00003517          	auipc	a0,0x3
    80005f2c:	32050513          	addi	a0,a0,800 # 80009248 <CONSOLE_STATUS+0x238>
    80005f30:	fffff097          	auipc	ra,0xfffff
    80005f34:	538080e7          	jalr	1336(ra) # 80005468 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005f38:	0014849b          	addiw	s1,s1,1
    80005f3c:	0ff4f493          	andi	s1,s1,255
    80005f40:	00c00793          	li	a5,12
    80005f44:	fc97f0e3          	bgeu	a5,s1,80005f04 <_Z11workerBodyDPv+0x20>
    printString("D: dispatch\n");
    80005f48:	00003517          	auipc	a0,0x3
    80005f4c:	57850513          	addi	a0,a0,1400 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005f50:	fffff097          	auipc	ra,0xfffff
    80005f54:	518080e7          	jalr	1304(ra) # 80005468 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005f58:	00500313          	li	t1,5
    thread_dispatch();
    80005f5c:	ffffb097          	auipc	ra,0xffffb
    80005f60:	428080e7          	jalr	1064(ra) # 80001384 <thread_dispatch>
    uint64 result = fibonacci(16);
    80005f64:	01000513          	li	a0,16
    80005f68:	00000097          	auipc	ra,0x0
    80005f6c:	d88080e7          	jalr	-632(ra) # 80005cf0 <_Z9fibonaccim>
    80005f70:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005f74:	00003517          	auipc	a0,0x3
    80005f78:	55c50513          	addi	a0,a0,1372 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80005f7c:	fffff097          	auipc	ra,0xfffff
    80005f80:	4ec080e7          	jalr	1260(ra) # 80005468 <_Z11printStringPKc>
    80005f84:	00000613          	li	a2,0
    80005f88:	00a00593          	li	a1,10
    80005f8c:	0009051b          	sext.w	a0,s2
    80005f90:	fffff097          	auipc	ra,0xfffff
    80005f94:	670080e7          	jalr	1648(ra) # 80005600 <_Z8printIntiii>
    80005f98:	00003517          	auipc	a0,0x3
    80005f9c:	2b050513          	addi	a0,a0,688 # 80009248 <CONSOLE_STATUS+0x238>
    80005fa0:	fffff097          	auipc	ra,0xfffff
    80005fa4:	4c8080e7          	jalr	1224(ra) # 80005468 <_Z11printStringPKc>
    80005fa8:	0400006f          	j	80005fe8 <_Z11workerBodyDPv+0x104>
        printString("D: i="); printInt(i); printString("\n");
    80005fac:	00003517          	auipc	a0,0x3
    80005fb0:	50c50513          	addi	a0,a0,1292 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005fb4:	fffff097          	auipc	ra,0xfffff
    80005fb8:	4b4080e7          	jalr	1204(ra) # 80005468 <_Z11printStringPKc>
    80005fbc:	00000613          	li	a2,0
    80005fc0:	00a00593          	li	a1,10
    80005fc4:	00048513          	mv	a0,s1
    80005fc8:	fffff097          	auipc	ra,0xfffff
    80005fcc:	638080e7          	jalr	1592(ra) # 80005600 <_Z8printIntiii>
    80005fd0:	00003517          	auipc	a0,0x3
    80005fd4:	27850513          	addi	a0,a0,632 # 80009248 <CONSOLE_STATUS+0x238>
    80005fd8:	fffff097          	auipc	ra,0xfffff
    80005fdc:	490080e7          	jalr	1168(ra) # 80005468 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005fe0:	0014849b          	addiw	s1,s1,1
    80005fe4:	0ff4f493          	andi	s1,s1,255
    80005fe8:	00f00793          	li	a5,15
    80005fec:	fc97f0e3          	bgeu	a5,s1,80005fac <_Z11workerBodyDPv+0xc8>
    printString("D finished!\n");
    80005ff0:	00003517          	auipc	a0,0x3
    80005ff4:	4f050513          	addi	a0,a0,1264 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005ff8:	fffff097          	auipc	ra,0xfffff
    80005ffc:	470080e7          	jalr	1136(ra) # 80005468 <_Z11printStringPKc>
    finishedD = true;
    80006000:	00100793          	li	a5,1
    80006004:	00006717          	auipc	a4,0x6
    80006008:	98f70ea3          	sb	a5,-1635(a4) # 8000b9a1 <finishedD>
    thread_dispatch();
    8000600c:	ffffb097          	auipc	ra,0xffffb
    80006010:	378080e7          	jalr	888(ra) # 80001384 <thread_dispatch>
}
    80006014:	01813083          	ld	ra,24(sp)
    80006018:	01013403          	ld	s0,16(sp)
    8000601c:	00813483          	ld	s1,8(sp)
    80006020:	00013903          	ld	s2,0(sp)
    80006024:	02010113          	addi	sp,sp,32
    80006028:	00008067          	ret

000000008000602c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000602c:	fc010113          	addi	sp,sp,-64
    80006030:	02113c23          	sd	ra,56(sp)
    80006034:	02813823          	sd	s0,48(sp)
    80006038:	04010413          	addi	s0,sp,64
    thread_t threads[5];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000603c:	00000613          	li	a2,0
    80006040:	00000597          	auipc	a1,0x0
    80006044:	b1058593          	addi	a1,a1,-1264 # 80005b50 <_Z11workerBodyAPv>
    80006048:	fc840513          	addi	a0,s0,-56
    8000604c:	ffffb097          	auipc	ra,0xffffb
    80006050:	2a4080e7          	jalr	676(ra) # 800012f0 <thread_create>
    printString("ThreadA created\n");
    80006054:	00003517          	auipc	a0,0x3
    80006058:	49c50513          	addi	a0,a0,1180 # 800094f0 <CONSOLE_STATUS+0x4e0>
    8000605c:	fffff097          	auipc	ra,0xfffff
    80006060:	40c080e7          	jalr	1036(ra) # 80005468 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006064:	00000613          	li	a2,0
    80006068:	00000597          	auipc	a1,0x0
    8000606c:	bb458593          	addi	a1,a1,-1100 # 80005c1c <_Z11workerBodyBPv>
    80006070:	fd040513          	addi	a0,s0,-48
    80006074:	ffffb097          	auipc	ra,0xffffb
    80006078:	27c080e7          	jalr	636(ra) # 800012f0 <thread_create>
    printString("ThreadB created\n");
    8000607c:	00003517          	auipc	a0,0x3
    80006080:	48c50513          	addi	a0,a0,1164 # 80009508 <CONSOLE_STATUS+0x4f8>
    80006084:	fffff097          	auipc	ra,0xfffff
    80006088:	3e4080e7          	jalr	996(ra) # 80005468 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000608c:	00000613          	li	a2,0
    80006090:	00000597          	auipc	a1,0x0
    80006094:	cd458593          	addi	a1,a1,-812 # 80005d64 <_Z11workerBodyCPv>
    80006098:	fd840513          	addi	a0,s0,-40
    8000609c:	ffffb097          	auipc	ra,0xffffb
    800060a0:	254080e7          	jalr	596(ra) # 800012f0 <thread_create>
    printString("ThreadC created\n");
    800060a4:	00003517          	auipc	a0,0x3
    800060a8:	47c50513          	addi	a0,a0,1148 # 80009520 <CONSOLE_STATUS+0x510>
    800060ac:	fffff097          	auipc	ra,0xfffff
    800060b0:	3bc080e7          	jalr	956(ra) # 80005468 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800060b4:	00000613          	li	a2,0
    800060b8:	00000597          	auipc	a1,0x0
    800060bc:	e2c58593          	addi	a1,a1,-468 # 80005ee4 <_Z11workerBodyDPv>
    800060c0:	fe040513          	addi	a0,s0,-32
    800060c4:	ffffb097          	auipc	ra,0xffffb
    800060c8:	22c080e7          	jalr	556(ra) # 800012f0 <thread_create>
    printString("ThreadD created\n");
    800060cc:	00003517          	auipc	a0,0x3
    800060d0:	46c50513          	addi	a0,a0,1132 # 80009538 <CONSOLE_STATUS+0x528>
    800060d4:	fffff097          	auipc	ra,0xfffff
    800060d8:	394080e7          	jalr	916(ra) # 80005468 <_Z11printStringPKc>

    thread_create(&threads[4], workerBodyE, nullptr);
    800060dc:	00000613          	li	a2,0
    800060e0:	00000597          	auipc	a1,0x0
    800060e4:	a2c58593          	addi	a1,a1,-1492 # 80005b0c <_Z11workerBodyEPv>
    800060e8:	fe840513          	addi	a0,s0,-24
    800060ec:	ffffb097          	auipc	ra,0xffffb
    800060f0:	204080e7          	jalr	516(ra) # 800012f0 <thread_create>
    printString("ThreadE created\n");
    800060f4:	00003517          	auipc	a0,0x3
    800060f8:	45c50513          	addi	a0,a0,1116 # 80009550 <CONSOLE_STATUS+0x540>
    800060fc:	fffff097          	auipc	ra,0xfffff
    80006100:	36c080e7          	jalr	876(ra) # 80005468 <_Z11printStringPKc>
    80006104:	00c0006f          	j	80006110 <_Z18Threads_C_API_testv+0xe4>


    while (!(finishedA && finishedB && finishedC && finishedD && finishedE)) {
        thread_dispatch();
    80006108:	ffffb097          	auipc	ra,0xffffb
    8000610c:	27c080e7          	jalr	636(ra) # 80001384 <thread_dispatch>
    while (!(finishedA && finishedB && finishedC && finishedD && finishedE)) {
    80006110:	00006797          	auipc	a5,0x6
    80006114:	8897c783          	lbu	a5,-1911(a5) # 8000b999 <finishedA>
    80006118:	fe0788e3          	beqz	a5,80006108 <_Z18Threads_C_API_testv+0xdc>
    8000611c:	00006797          	auipc	a5,0x6
    80006120:	87e7c783          	lbu	a5,-1922(a5) # 8000b99a <finishedB>
    80006124:	fe0782e3          	beqz	a5,80006108 <_Z18Threads_C_API_testv+0xdc>
    80006128:	00006797          	auipc	a5,0x6
    8000612c:	8787c783          	lbu	a5,-1928(a5) # 8000b9a0 <finishedC>
    80006130:	fc078ce3          	beqz	a5,80006108 <_Z18Threads_C_API_testv+0xdc>
    80006134:	00006797          	auipc	a5,0x6
    80006138:	86d7c783          	lbu	a5,-1939(a5) # 8000b9a1 <finishedD>
    8000613c:	fc0786e3          	beqz	a5,80006108 <_Z18Threads_C_API_testv+0xdc>
    80006140:	00006797          	auipc	a5,0x6
    80006144:	8587c783          	lbu	a5,-1960(a5) # 8000b998 <finishedE>
    80006148:	fc0780e3          	beqz	a5,80006108 <_Z18Threads_C_API_testv+0xdc>
    }

}
    8000614c:	03813083          	ld	ra,56(sp)
    80006150:	03013403          	ld	s0,48(sp)
    80006154:	04010113          	addi	sp,sp,64
    80006158:	00008067          	ret

000000008000615c <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    8000615c:	f8010113          	addi	sp,sp,-128
    80006160:	06113c23          	sd	ra,120(sp)
    80006164:	06813823          	sd	s0,112(sp)
    80006168:	06913423          	sd	s1,104(sp)
    8000616c:	07213023          	sd	s2,96(sp)
    80006170:	05313c23          	sd	s3,88(sp)
    80006174:	05413823          	sd	s4,80(sp)
    80006178:	05513423          	sd	s5,72(sp)
    8000617c:	05613023          	sd	s6,64(sp)
    80006180:	03713c23          	sd	s7,56(sp)
    80006184:	03813823          	sd	s8,48(sp)
    80006188:	03913423          	sd	s9,40(sp)
    8000618c:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80006190:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80006194:	00003517          	auipc	a0,0x3
    80006198:	3d450513          	addi	a0,a0,980 # 80009568 <CONSOLE_STATUS+0x558>
    8000619c:	fffff097          	auipc	ra,0xfffff
    800061a0:	2cc080e7          	jalr	716(ra) # 80005468 <_Z11printStringPKc>
        getString(input, 30);
    800061a4:	01e00593          	li	a1,30
    800061a8:	f8040493          	addi	s1,s0,-128
    800061ac:	00048513          	mv	a0,s1
    800061b0:	fffff097          	auipc	ra,0xfffff
    800061b4:	334080e7          	jalr	820(ra) # 800054e4 <_Z9getStringPci>
        threadNum = stringToInt(input);
    800061b8:	00048513          	mv	a0,s1
    800061bc:	fffff097          	auipc	ra,0xfffff
    800061c0:	3f4080e7          	jalr	1012(ra) # 800055b0 <_Z11stringToIntPKc>
    800061c4:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    800061c8:	00003517          	auipc	a0,0x3
    800061cc:	3c050513          	addi	a0,a0,960 # 80009588 <CONSOLE_STATUS+0x578>
    800061d0:	fffff097          	auipc	ra,0xfffff
    800061d4:	298080e7          	jalr	664(ra) # 80005468 <_Z11printStringPKc>
        getString(input, 30);
    800061d8:	01e00593          	li	a1,30
    800061dc:	00048513          	mv	a0,s1
    800061e0:	fffff097          	auipc	ra,0xfffff
    800061e4:	304080e7          	jalr	772(ra) # 800054e4 <_Z9getStringPci>
        n = stringToInt(input);
    800061e8:	00048513          	mv	a0,s1
    800061ec:	fffff097          	auipc	ra,0xfffff
    800061f0:	3c4080e7          	jalr	964(ra) # 800055b0 <_Z11stringToIntPKc>
    800061f4:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    800061f8:	00003517          	auipc	a0,0x3
    800061fc:	3b050513          	addi	a0,a0,944 # 800095a8 <CONSOLE_STATUS+0x598>
    80006200:	fffff097          	auipc	ra,0xfffff
    80006204:	268080e7          	jalr	616(ra) # 80005468 <_Z11printStringPKc>
    80006208:	00000613          	li	a2,0
    8000620c:	00a00593          	li	a1,10
    80006210:	00098513          	mv	a0,s3
    80006214:	fffff097          	auipc	ra,0xfffff
    80006218:	3ec080e7          	jalr	1004(ra) # 80005600 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    8000621c:	00003517          	auipc	a0,0x3
    80006220:	3a450513          	addi	a0,a0,932 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006224:	fffff097          	auipc	ra,0xfffff
    80006228:	244080e7          	jalr	580(ra) # 80005468 <_Z11printStringPKc>
    8000622c:	00000613          	li	a2,0
    80006230:	00a00593          	li	a1,10
    80006234:	00048513          	mv	a0,s1
    80006238:	fffff097          	auipc	ra,0xfffff
    8000623c:	3c8080e7          	jalr	968(ra) # 80005600 <_Z8printIntiii>
        printString(".\n");
    80006240:	00003517          	auipc	a0,0x3
    80006244:	39850513          	addi	a0,a0,920 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006248:	fffff097          	auipc	ra,0xfffff
    8000624c:	220080e7          	jalr	544(ra) # 80005468 <_Z11printStringPKc>
        if(threadNum > n) {
    80006250:	0334c463          	blt	s1,s3,80006278 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80006254:	03305c63          	blez	s3,8000628c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80006258:	03800513          	li	a0,56
    8000625c:	ffffe097          	auipc	ra,0xffffe
    80006260:	b08080e7          	jalr	-1272(ra) # 80003d64 <_Znwm>
    80006264:	00050a93          	mv	s5,a0
    80006268:	00048593          	mv	a1,s1
    8000626c:	fffff097          	auipc	ra,0xfffff
    80006270:	4a8080e7          	jalr	1192(ra) # 80005714 <_ZN9BufferCPPC1Ei>
    80006274:	0300006f          	j	800062a4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80006278:	00003517          	auipc	a0,0x3
    8000627c:	36850513          	addi	a0,a0,872 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006280:	fffff097          	auipc	ra,0xfffff
    80006284:	1e8080e7          	jalr	488(ra) # 80005468 <_Z11printStringPKc>
            return;
    80006288:	0140006f          	j	8000629c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000628c:	00003517          	auipc	a0,0x3
    80006290:	39450513          	addi	a0,a0,916 # 80009620 <CONSOLE_STATUS+0x610>
    80006294:	fffff097          	auipc	ra,0xfffff
    80006298:	1d4080e7          	jalr	468(ra) # 80005468 <_Z11printStringPKc>
            return;
    8000629c:	000c0113          	mv	sp,s8
    800062a0:	21c0006f          	j	800064bc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    800062a4:	01000513          	li	a0,16
    800062a8:	ffffe097          	auipc	ra,0xffffe
    800062ac:	abc080e7          	jalr	-1348(ra) # 80003d64 <_Znwm>
    800062b0:	00050493          	mv	s1,a0
    800062b4:	00000593          	li	a1,0
    800062b8:	ffffe097          	auipc	ra,0xffffe
    800062bc:	dbc080e7          	jalr	-580(ra) # 80004074 <_ZN9SemaphoreC1Ej>
    800062c0:	00005717          	auipc	a4,0x5
    800062c4:	6d870713          	addi	a4,a4,1752 # 8000b998 <finishedE>
    800062c8:	00973823          	sd	s1,16(a4)
        Thread *producers[threadNum];
    800062cc:	00399793          	slli	a5,s3,0x3
    800062d0:	00f78793          	addi	a5,a5,15
    800062d4:	ff07f793          	andi	a5,a5,-16
    800062d8:	40f10133          	sub	sp,sp,a5
    800062dc:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    800062e0:	0019869b          	addiw	a3,s3,1
    800062e4:	00169793          	slli	a5,a3,0x1
    800062e8:	00d787b3          	add	a5,a5,a3
    800062ec:	00379793          	slli	a5,a5,0x3
    800062f0:	00f78793          	addi	a5,a5,15
    800062f4:	ff07f793          	andi	a5,a5,-16
    800062f8:	40f10133          	sub	sp,sp,a5
    800062fc:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80006300:	00199493          	slli	s1,s3,0x1
    80006304:	013484b3          	add	s1,s1,s3
    80006308:	00349493          	slli	s1,s1,0x3
    8000630c:	009b04b3          	add	s1,s6,s1
    80006310:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80006314:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80006318:	01073783          	ld	a5,16(a4)
    8000631c:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80006320:	01800513          	li	a0,24
    80006324:	ffffe097          	auipc	ra,0xffffe
    80006328:	a40080e7          	jalr	-1472(ra) # 80003d64 <_Znwm>
    8000632c:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80006330:	ffffe097          	auipc	ra,0xffffe
    80006334:	cc4080e7          	jalr	-828(ra) # 80003ff4 <_ZN6ThreadC1Ev>
    80006338:	00005797          	auipc	a5,0x5
    8000633c:	38078793          	addi	a5,a5,896 # 8000b6b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80006340:	00fbb023          	sd	a5,0(s7)
    80006344:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80006348:	000b8513          	mv	a0,s7
    8000634c:	ffffe097          	auipc	ra,0xffffe
    80006350:	bd4080e7          	jalr	-1068(ra) # 80003f20 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80006354:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80006358:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    8000635c:	00005797          	auipc	a5,0x5
    80006360:	64c7b783          	ld	a5,1612(a5) # 8000b9a8 <_ZN19ConsumerProducerCPP10waitForAllE>
    80006364:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80006368:	01800513          	li	a0,24
    8000636c:	ffffe097          	auipc	ra,0xffffe
    80006370:	9f8080e7          	jalr	-1544(ra) # 80003d64 <_Znwm>
    80006374:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80006378:	ffffe097          	auipc	ra,0xffffe
    8000637c:	c7c080e7          	jalr	-900(ra) # 80003ff4 <_ZN6ThreadC1Ev>
    80006380:	00005797          	auipc	a5,0x5
    80006384:	2e878793          	addi	a5,a5,744 # 8000b668 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80006388:	00f4b023          	sd	a5,0(s1)
    8000638c:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80006390:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80006394:	00048513          	mv	a0,s1
    80006398:	ffffe097          	auipc	ra,0xffffe
    8000639c:	b88080e7          	jalr	-1144(ra) # 80003f20 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800063a0:	00100913          	li	s2,1
    800063a4:	0300006f          	j	800063d4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    800063a8:	00005797          	auipc	a5,0x5
    800063ac:	2e878793          	addi	a5,a5,744 # 8000b690 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800063b0:	00fcb023          	sd	a5,0(s9)
    800063b4:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    800063b8:	00391793          	slli	a5,s2,0x3
    800063bc:	00fa07b3          	add	a5,s4,a5
    800063c0:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    800063c4:	000c8513          	mv	a0,s9
    800063c8:	ffffe097          	auipc	ra,0xffffe
    800063cc:	b58080e7          	jalr	-1192(ra) # 80003f20 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800063d0:	0019091b          	addiw	s2,s2,1
    800063d4:	05395263          	bge	s2,s3,80006418 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    800063d8:	00191493          	slli	s1,s2,0x1
    800063dc:	012484b3          	add	s1,s1,s2
    800063e0:	00349493          	slli	s1,s1,0x3
    800063e4:	009b04b3          	add	s1,s6,s1
    800063e8:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    800063ec:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    800063f0:	00005797          	auipc	a5,0x5
    800063f4:	5b87b783          	ld	a5,1464(a5) # 8000b9a8 <_ZN19ConsumerProducerCPP10waitForAllE>
    800063f8:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    800063fc:	01800513          	li	a0,24
    80006400:	ffffe097          	auipc	ra,0xffffe
    80006404:	964080e7          	jalr	-1692(ra) # 80003d64 <_Znwm>
    80006408:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    8000640c:	ffffe097          	auipc	ra,0xffffe
    80006410:	be8080e7          	jalr	-1048(ra) # 80003ff4 <_ZN6ThreadC1Ev>
    80006414:	f95ff06f          	j	800063a8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80006418:	ffffe097          	auipc	ra,0xffffe
    8000641c:	b38080e7          	jalr	-1224(ra) # 80003f50 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80006420:	00000493          	li	s1,0
    80006424:	0099ce63          	blt	s3,s1,80006440 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    80006428:	00005517          	auipc	a0,0x5
    8000642c:	58053503          	ld	a0,1408(a0) # 8000b9a8 <_ZN19ConsumerProducerCPP10waitForAllE>
    80006430:	ffffe097          	auipc	ra,0xffffe
    80006434:	c84080e7          	jalr	-892(ra) # 800040b4 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80006438:	0014849b          	addiw	s1,s1,1
    8000643c:	fe9ff06f          	j	80006424 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    80006440:	00005517          	auipc	a0,0x5
    80006444:	56853503          	ld	a0,1384(a0) # 8000b9a8 <_ZN19ConsumerProducerCPP10waitForAllE>
    80006448:	00050863          	beqz	a0,80006458 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    8000644c:	00053783          	ld	a5,0(a0)
    80006450:	0087b783          	ld	a5,8(a5)
    80006454:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80006458:	00000493          	li	s1,0
    8000645c:	0080006f          	j	80006464 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    80006460:	0014849b          	addiw	s1,s1,1
    80006464:	0334d263          	bge	s1,s3,80006488 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80006468:	00349793          	slli	a5,s1,0x3
    8000646c:	00fa07b3          	add	a5,s4,a5
    80006470:	0007b503          	ld	a0,0(a5)
    80006474:	fe0506e3          	beqz	a0,80006460 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80006478:	00053783          	ld	a5,0(a0)
    8000647c:	0087b783          	ld	a5,8(a5)
    80006480:	000780e7          	jalr	a5
    80006484:	fddff06f          	j	80006460 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80006488:	000b8a63          	beqz	s7,8000649c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    8000648c:	000bb783          	ld	a5,0(s7)
    80006490:	0087b783          	ld	a5,8(a5)
    80006494:	000b8513          	mv	a0,s7
    80006498:	000780e7          	jalr	a5
        delete buffer;
    8000649c:	000a8e63          	beqz	s5,800064b8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    800064a0:	000a8513          	mv	a0,s5
    800064a4:	fffff097          	auipc	ra,0xfffff
    800064a8:	568080e7          	jalr	1384(ra) # 80005a0c <_ZN9BufferCPPD1Ev>
    800064ac:	000a8513          	mv	a0,s5
    800064b0:	ffffe097          	auipc	ra,0xffffe
    800064b4:	904080e7          	jalr	-1788(ra) # 80003db4 <_ZdlPv>
    800064b8:	000c0113          	mv	sp,s8
    }
    800064bc:	f8040113          	addi	sp,s0,-128
    800064c0:	07813083          	ld	ra,120(sp)
    800064c4:	07013403          	ld	s0,112(sp)
    800064c8:	06813483          	ld	s1,104(sp)
    800064cc:	06013903          	ld	s2,96(sp)
    800064d0:	05813983          	ld	s3,88(sp)
    800064d4:	05013a03          	ld	s4,80(sp)
    800064d8:	04813a83          	ld	s5,72(sp)
    800064dc:	04013b03          	ld	s6,64(sp)
    800064e0:	03813b83          	ld	s7,56(sp)
    800064e4:	03013c03          	ld	s8,48(sp)
    800064e8:	02813c83          	ld	s9,40(sp)
    800064ec:	08010113          	addi	sp,sp,128
    800064f0:	00008067          	ret
    800064f4:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    800064f8:	000a8513          	mv	a0,s5
    800064fc:	ffffe097          	auipc	ra,0xffffe
    80006500:	8b8080e7          	jalr	-1864(ra) # 80003db4 <_ZdlPv>
    80006504:	00048513          	mv	a0,s1
    80006508:	00006097          	auipc	ra,0x6
    8000650c:	570080e7          	jalr	1392(ra) # 8000ca78 <_Unwind_Resume>
    80006510:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80006514:	00048513          	mv	a0,s1
    80006518:	ffffe097          	auipc	ra,0xffffe
    8000651c:	89c080e7          	jalr	-1892(ra) # 80003db4 <_ZdlPv>
    80006520:	00090513          	mv	a0,s2
    80006524:	00006097          	auipc	ra,0x6
    80006528:	554080e7          	jalr	1364(ra) # 8000ca78 <_Unwind_Resume>
    8000652c:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80006530:	000b8513          	mv	a0,s7
    80006534:	ffffe097          	auipc	ra,0xffffe
    80006538:	880080e7          	jalr	-1920(ra) # 80003db4 <_ZdlPv>
    8000653c:	00048513          	mv	a0,s1
    80006540:	00006097          	auipc	ra,0x6
    80006544:	538080e7          	jalr	1336(ra) # 8000ca78 <_Unwind_Resume>
    80006548:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    8000654c:	00048513          	mv	a0,s1
    80006550:	ffffe097          	auipc	ra,0xffffe
    80006554:	864080e7          	jalr	-1948(ra) # 80003db4 <_ZdlPv>
    80006558:	00090513          	mv	a0,s2
    8000655c:	00006097          	auipc	ra,0x6
    80006560:	51c080e7          	jalr	1308(ra) # 8000ca78 <_Unwind_Resume>
    80006564:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80006568:	000c8513          	mv	a0,s9
    8000656c:	ffffe097          	auipc	ra,0xffffe
    80006570:	848080e7          	jalr	-1976(ra) # 80003db4 <_ZdlPv>
    80006574:	00048513          	mv	a0,s1
    80006578:	00006097          	auipc	ra,0x6
    8000657c:	500080e7          	jalr	1280(ra) # 8000ca78 <_Unwind_Resume>

0000000080006580 <_Z8userMainv>:
//#include "../test/modif.hpp"

#include "../h/SlabI.h"
#include "../h/Buddy.h"

void userMain() {
    80006580:	fe010113          	addi	sp,sp,-32
    80006584:	00113c23          	sd	ra,24(sp)
    80006588:	00813823          	sd	s0,16(sp)
    8000658c:	00913423          	sd	s1,8(sp)
    80006590:	02010413          	addi	s0,sp,32

    void * space = (void*)HEAP_START_ADDR;
    80006594:	00005797          	auipc	a5,0x5
    80006598:	15c7b783          	ld	a5,348(a5) # 8000b6f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000659c:	0007b503          	ld	a0,0(a5)
    int block_num = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 / BLOCK_SIZE;
    800065a0:	00005797          	auipc	a5,0x5
    800065a4:	1987b783          	ld	a5,408(a5) # 8000b738 <_GLOBAL_OFFSET_TABLE_+0x68>
    800065a8:	0007b583          	ld	a1,0(a5)
    800065ac:	40a585b3          	sub	a1,a1,a0
    800065b0:	00f5d593          	srli	a1,a1,0xf
    kmem_init(space, block_num);
    800065b4:	0005859b          	sext.w	a1,a1
    800065b8:	fffff097          	auipc	ra,0xfffff
    800065bc:	c10080e7          	jalr	-1008(ra) # 800051c8 <_Z9kmem_initPvi>

    void* obj = kmalloc(32);
    800065c0:	02000513          	li	a0,32
    800065c4:	fffff097          	auipc	ra,0xfffff
    800065c8:	db4080e7          	jalr	-588(ra) # 80005378 <_Z7kmallocm>
    800065cc:	00050493          	mv	s1,a0
    print_all_caches();
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	e70080e7          	jalr	-400(ra) # 80005440 <_Z16print_all_cachesv>
    kfree(obj);
    800065d8:	00048513          	mv	a0,s1
    800065dc:	fffff097          	auipc	ra,0xfffff
    800065e0:	de8080e7          	jalr	-536(ra) # 800053c4 <_Z5kfreePKv>
    print_all_caches();
    800065e4:	fffff097          	auipc	ra,0xfffff
    800065e8:	e5c080e7          	jalr	-420(ra) # 80005440 <_Z16print_all_cachesv>
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

//    testModif();
//    testPrenosParametara();

    800065ec:	01813083          	ld	ra,24(sp)
    800065f0:	01013403          	ld	s0,16(sp)
    800065f4:	00813483          	ld	s1,8(sp)
    800065f8:	02010113          	addi	sp,sp,32
    800065fc:	00008067          	ret

0000000080006600 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    80006600:	fd010113          	addi	sp,sp,-48
    80006604:	02113423          	sd	ra,40(sp)
    80006608:	02813023          	sd	s0,32(sp)
    8000660c:	00913c23          	sd	s1,24(sp)
    80006610:	01213823          	sd	s2,16(sp)
    80006614:	01313423          	sd	s3,8(sp)
    80006618:	03010413          	addi	s0,sp,48
    8000661c:	00050913          	mv	s2,a0
            int i = 0;
    80006620:	00000993          	li	s3,0
    80006624:	0100006f          	j	80006634 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80006628:	00a00513          	li	a0,10
    8000662c:	ffffe097          	auipc	ra,0xffffe
    80006630:	b08080e7          	jalr	-1272(ra) # 80004134 <_ZN7Console4putcEc>
            while (!threadEnd) {
    80006634:	00005797          	auipc	a5,0x5
    80006638:	3687a783          	lw	a5,872(a5) # 8000b99c <_ZN19ConsumerProducerCPP9threadEndE>
    8000663c:	04079a63          	bnez	a5,80006690 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80006640:	01093783          	ld	a5,16(s2)
    80006644:	0087b503          	ld	a0,8(a5)
    80006648:	fffff097          	auipc	ra,0xfffff
    8000664c:	2b0080e7          	jalr	688(ra) # 800058f8 <_ZN9BufferCPP3getEv>
                i++;
    80006650:	0019849b          	addiw	s1,s3,1
    80006654:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80006658:	0ff57513          	andi	a0,a0,255
    8000665c:	ffffe097          	auipc	ra,0xffffe
    80006660:	ad8080e7          	jalr	-1320(ra) # 80004134 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80006664:	05000793          	li	a5,80
    80006668:	02f4e4bb          	remw	s1,s1,a5
    8000666c:	fc0494e3          	bnez	s1,80006634 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    80006670:	fb9ff06f          	j	80006628 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80006674:	01093783          	ld	a5,16(s2)
    80006678:	0087b503          	ld	a0,8(a5)
    8000667c:	fffff097          	auipc	ra,0xfffff
    80006680:	27c080e7          	jalr	636(ra) # 800058f8 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80006684:	0ff57513          	andi	a0,a0,255
    80006688:	ffffe097          	auipc	ra,0xffffe
    8000668c:	aac080e7          	jalr	-1364(ra) # 80004134 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80006690:	01093783          	ld	a5,16(s2)
    80006694:	0087b503          	ld	a0,8(a5)
    80006698:	fffff097          	auipc	ra,0xfffff
    8000669c:	2ec080e7          	jalr	748(ra) # 80005984 <_ZN9BufferCPP6getCntEv>
    800066a0:	fca04ae3          	bgtz	a0,80006674 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    800066a4:	01093783          	ld	a5,16(s2)
    800066a8:	0107b503          	ld	a0,16(a5)
    800066ac:	ffffe097          	auipc	ra,0xffffe
    800066b0:	a34080e7          	jalr	-1484(ra) # 800040e0 <_ZN9Semaphore6signalEv>
        }
    800066b4:	02813083          	ld	ra,40(sp)
    800066b8:	02013403          	ld	s0,32(sp)
    800066bc:	01813483          	ld	s1,24(sp)
    800066c0:	01013903          	ld	s2,16(sp)
    800066c4:	00813983          	ld	s3,8(sp)
    800066c8:	03010113          	addi	sp,sp,48
    800066cc:	00008067          	ret

00000000800066d0 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    800066d0:	ff010113          	addi	sp,sp,-16
    800066d4:	00113423          	sd	ra,8(sp)
    800066d8:	00813023          	sd	s0,0(sp)
    800066dc:	01010413          	addi	s0,sp,16
    800066e0:	00005797          	auipc	a5,0x5
    800066e4:	fd878793          	addi	a5,a5,-40 # 8000b6b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    800066e8:	00f53023          	sd	a5,0(a0)
    800066ec:	ffffd097          	auipc	ra,0xffffd
    800066f0:	54c080e7          	jalr	1356(ra) # 80003c38 <_ZN6ThreadD1Ev>
    800066f4:	00813083          	ld	ra,8(sp)
    800066f8:	00013403          	ld	s0,0(sp)
    800066fc:	01010113          	addi	sp,sp,16
    80006700:	00008067          	ret

0000000080006704 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80006704:	fe010113          	addi	sp,sp,-32
    80006708:	00113c23          	sd	ra,24(sp)
    8000670c:	00813823          	sd	s0,16(sp)
    80006710:	00913423          	sd	s1,8(sp)
    80006714:	02010413          	addi	s0,sp,32
    80006718:	00050493          	mv	s1,a0
    8000671c:	00005797          	auipc	a5,0x5
    80006720:	f9c78793          	addi	a5,a5,-100 # 8000b6b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80006724:	00f53023          	sd	a5,0(a0)
    80006728:	ffffd097          	auipc	ra,0xffffd
    8000672c:	510080e7          	jalr	1296(ra) # 80003c38 <_ZN6ThreadD1Ev>
    80006730:	00048513          	mv	a0,s1
    80006734:	ffffd097          	auipc	ra,0xffffd
    80006738:	680080e7          	jalr	1664(ra) # 80003db4 <_ZdlPv>
    8000673c:	01813083          	ld	ra,24(sp)
    80006740:	01013403          	ld	s0,16(sp)
    80006744:	00813483          	ld	s1,8(sp)
    80006748:	02010113          	addi	sp,sp,32
    8000674c:	00008067          	ret

0000000080006750 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80006750:	ff010113          	addi	sp,sp,-16
    80006754:	00113423          	sd	ra,8(sp)
    80006758:	00813023          	sd	s0,0(sp)
    8000675c:	01010413          	addi	s0,sp,16
    80006760:	00005797          	auipc	a5,0x5
    80006764:	f0878793          	addi	a5,a5,-248 # 8000b668 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80006768:	00f53023          	sd	a5,0(a0)
    8000676c:	ffffd097          	auipc	ra,0xffffd
    80006770:	4cc080e7          	jalr	1228(ra) # 80003c38 <_ZN6ThreadD1Ev>
    80006774:	00813083          	ld	ra,8(sp)
    80006778:	00013403          	ld	s0,0(sp)
    8000677c:	01010113          	addi	sp,sp,16
    80006780:	00008067          	ret

0000000080006784 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80006784:	fe010113          	addi	sp,sp,-32
    80006788:	00113c23          	sd	ra,24(sp)
    8000678c:	00813823          	sd	s0,16(sp)
    80006790:	00913423          	sd	s1,8(sp)
    80006794:	02010413          	addi	s0,sp,32
    80006798:	00050493          	mv	s1,a0
    8000679c:	00005797          	auipc	a5,0x5
    800067a0:	ecc78793          	addi	a5,a5,-308 # 8000b668 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800067a4:	00f53023          	sd	a5,0(a0)
    800067a8:	ffffd097          	auipc	ra,0xffffd
    800067ac:	490080e7          	jalr	1168(ra) # 80003c38 <_ZN6ThreadD1Ev>
    800067b0:	00048513          	mv	a0,s1
    800067b4:	ffffd097          	auipc	ra,0xffffd
    800067b8:	600080e7          	jalr	1536(ra) # 80003db4 <_ZdlPv>
    800067bc:	01813083          	ld	ra,24(sp)
    800067c0:	01013403          	ld	s0,16(sp)
    800067c4:	00813483          	ld	s1,8(sp)
    800067c8:	02010113          	addi	sp,sp,32
    800067cc:	00008067          	ret

00000000800067d0 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    800067d0:	ff010113          	addi	sp,sp,-16
    800067d4:	00113423          	sd	ra,8(sp)
    800067d8:	00813023          	sd	s0,0(sp)
    800067dc:	01010413          	addi	s0,sp,16
    800067e0:	00005797          	auipc	a5,0x5
    800067e4:	eb078793          	addi	a5,a5,-336 # 8000b690 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800067e8:	00f53023          	sd	a5,0(a0)
    800067ec:	ffffd097          	auipc	ra,0xffffd
    800067f0:	44c080e7          	jalr	1100(ra) # 80003c38 <_ZN6ThreadD1Ev>
    800067f4:	00813083          	ld	ra,8(sp)
    800067f8:	00013403          	ld	s0,0(sp)
    800067fc:	01010113          	addi	sp,sp,16
    80006800:	00008067          	ret

0000000080006804 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80006804:	fe010113          	addi	sp,sp,-32
    80006808:	00113c23          	sd	ra,24(sp)
    8000680c:	00813823          	sd	s0,16(sp)
    80006810:	00913423          	sd	s1,8(sp)
    80006814:	02010413          	addi	s0,sp,32
    80006818:	00050493          	mv	s1,a0
    8000681c:	00005797          	auipc	a5,0x5
    80006820:	e7478793          	addi	a5,a5,-396 # 8000b690 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80006824:	00f53023          	sd	a5,0(a0)
    80006828:	ffffd097          	auipc	ra,0xffffd
    8000682c:	410080e7          	jalr	1040(ra) # 80003c38 <_ZN6ThreadD1Ev>
    80006830:	00048513          	mv	a0,s1
    80006834:	ffffd097          	auipc	ra,0xffffd
    80006838:	580080e7          	jalr	1408(ra) # 80003db4 <_ZdlPv>
    8000683c:	01813083          	ld	ra,24(sp)
    80006840:	01013403          	ld	s0,16(sp)
    80006844:	00813483          	ld	s1,8(sp)
    80006848:	02010113          	addi	sp,sp,32
    8000684c:	00008067          	ret

0000000080006850 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80006850:	fe010113          	addi	sp,sp,-32
    80006854:	00113c23          	sd	ra,24(sp)
    80006858:	00813823          	sd	s0,16(sp)
    8000685c:	00913423          	sd	s1,8(sp)
    80006860:	02010413          	addi	s0,sp,32
    80006864:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    80006868:	ffffb097          	auipc	ra,0xffffb
    8000686c:	d70080e7          	jalr	-656(ra) # 800015d8 <getc>
    80006870:	0005059b          	sext.w	a1,a0
    80006874:	01b00793          	li	a5,27
    80006878:	00f58c63          	beq	a1,a5,80006890 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    8000687c:	0104b783          	ld	a5,16(s1)
    80006880:	0087b503          	ld	a0,8(a5)
    80006884:	fffff097          	auipc	ra,0xfffff
    80006888:	fe4080e7          	jalr	-28(ra) # 80005868 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    8000688c:	fddff06f          	j	80006868 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80006890:	00100793          	li	a5,1
    80006894:	00005717          	auipc	a4,0x5
    80006898:	10f72423          	sw	a5,264(a4) # 8000b99c <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    8000689c:	0104b783          	ld	a5,16(s1)
    800068a0:	02100593          	li	a1,33
    800068a4:	0087b503          	ld	a0,8(a5)
    800068a8:	fffff097          	auipc	ra,0xfffff
    800068ac:	fc0080e7          	jalr	-64(ra) # 80005868 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    800068b0:	0104b783          	ld	a5,16(s1)
    800068b4:	0107b503          	ld	a0,16(a5)
    800068b8:	ffffe097          	auipc	ra,0xffffe
    800068bc:	828080e7          	jalr	-2008(ra) # 800040e0 <_ZN9Semaphore6signalEv>
        }
    800068c0:	01813083          	ld	ra,24(sp)
    800068c4:	01013403          	ld	s0,16(sp)
    800068c8:	00813483          	ld	s1,8(sp)
    800068cc:	02010113          	addi	sp,sp,32
    800068d0:	00008067          	ret

00000000800068d4 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    800068d4:	fe010113          	addi	sp,sp,-32
    800068d8:	00113c23          	sd	ra,24(sp)
    800068dc:	00813823          	sd	s0,16(sp)
    800068e0:	00913423          	sd	s1,8(sp)
    800068e4:	01213023          	sd	s2,0(sp)
    800068e8:	02010413          	addi	s0,sp,32
    800068ec:	00050493          	mv	s1,a0
            int i = 0;
    800068f0:	00000913          	li	s2,0
            while (!threadEnd) {
    800068f4:	00005797          	auipc	a5,0x5
    800068f8:	0a87a783          	lw	a5,168(a5) # 8000b99c <_ZN19ConsumerProducerCPP9threadEndE>
    800068fc:	04079263          	bnez	a5,80006940 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80006900:	0104b783          	ld	a5,16(s1)
    80006904:	0007a583          	lw	a1,0(a5)
    80006908:	0305859b          	addiw	a1,a1,48
    8000690c:	0087b503          	ld	a0,8(a5)
    80006910:	fffff097          	auipc	ra,0xfffff
    80006914:	f58080e7          	jalr	-168(ra) # 80005868 <_ZN9BufferCPP3putEi>
                i++;
    80006918:	0019071b          	addiw	a4,s2,1
    8000691c:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80006920:	0104b783          	ld	a5,16(s1)
    80006924:	0007a783          	lw	a5,0(a5)
    80006928:	00e787bb          	addw	a5,a5,a4
    8000692c:	00500513          	li	a0,5
    80006930:	02a7e53b          	remw	a0,a5,a0
    80006934:	ffffd097          	auipc	ra,0xffffd
    80006938:	644080e7          	jalr	1604(ra) # 80003f78 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    8000693c:	fb9ff06f          	j	800068f4 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80006940:	0104b783          	ld	a5,16(s1)
    80006944:	0107b503          	ld	a0,16(a5)
    80006948:	ffffd097          	auipc	ra,0xffffd
    8000694c:	798080e7          	jalr	1944(ra) # 800040e0 <_ZN9Semaphore6signalEv>
        }
    80006950:	01813083          	ld	ra,24(sp)
    80006954:	01013403          	ld	s0,16(sp)
    80006958:	00813483          	ld	s1,8(sp)
    8000695c:	00013903          	ld	s2,0(sp)
    80006960:	02010113          	addi	sp,sp,32
    80006964:	00008067          	ret

0000000080006968 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006968:	fe010113          	addi	sp,sp,-32
    8000696c:	00113c23          	sd	ra,24(sp)
    80006970:	00813823          	sd	s0,16(sp)
    80006974:	00913423          	sd	s1,8(sp)
    80006978:	01213023          	sd	s2,0(sp)
    8000697c:	02010413          	addi	s0,sp,32
    80006980:	00050493          	mv	s1,a0
    80006984:	00058913          	mv	s2,a1
    80006988:	0015879b          	addiw	a5,a1,1
    8000698c:	0007851b          	sext.w	a0,a5
    80006990:	00f4a023          	sw	a5,0(s1)
    80006994:	0004a823          	sw	zero,16(s1)
    80006998:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000699c:	00251513          	slli	a0,a0,0x2
    800069a0:	ffffb097          	auipc	ra,0xffffb
    800069a4:	8a4080e7          	jalr	-1884(ra) # 80001244 <mem_alloc>
    800069a8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800069ac:	00000593          	li	a1,0
    800069b0:	02048513          	addi	a0,s1,32
    800069b4:	ffffb097          	auipc	ra,0xffffb
    800069b8:	ad4080e7          	jalr	-1324(ra) # 80001488 <sem_open>
    sem_open(&spaceAvailable, _cap);
    800069bc:	00090593          	mv	a1,s2
    800069c0:	01848513          	addi	a0,s1,24
    800069c4:	ffffb097          	auipc	ra,0xffffb
    800069c8:	ac4080e7          	jalr	-1340(ra) # 80001488 <sem_open>
    sem_open(&mutexHead, 1);
    800069cc:	00100593          	li	a1,1
    800069d0:	02848513          	addi	a0,s1,40
    800069d4:	ffffb097          	auipc	ra,0xffffb
    800069d8:	ab4080e7          	jalr	-1356(ra) # 80001488 <sem_open>
    sem_open(&mutexTail, 1);
    800069dc:	00100593          	li	a1,1
    800069e0:	03048513          	addi	a0,s1,48
    800069e4:	ffffb097          	auipc	ra,0xffffb
    800069e8:	aa4080e7          	jalr	-1372(ra) # 80001488 <sem_open>
}
    800069ec:	01813083          	ld	ra,24(sp)
    800069f0:	01013403          	ld	s0,16(sp)
    800069f4:	00813483          	ld	s1,8(sp)
    800069f8:	00013903          	ld	s2,0(sp)
    800069fc:	02010113          	addi	sp,sp,32
    80006a00:	00008067          	ret

0000000080006a04 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006a04:	fe010113          	addi	sp,sp,-32
    80006a08:	00113c23          	sd	ra,24(sp)
    80006a0c:	00813823          	sd	s0,16(sp)
    80006a10:	00913423          	sd	s1,8(sp)
    80006a14:	01213023          	sd	s2,0(sp)
    80006a18:	02010413          	addi	s0,sp,32
    80006a1c:	00050493          	mv	s1,a0
    80006a20:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006a24:	01853503          	ld	a0,24(a0)
    80006a28:	ffffb097          	auipc	ra,0xffffb
    80006a2c:	b08080e7          	jalr	-1272(ra) # 80001530 <sem_wait>

    sem_wait(mutexTail);
    80006a30:	0304b503          	ld	a0,48(s1)
    80006a34:	ffffb097          	auipc	ra,0xffffb
    80006a38:	afc080e7          	jalr	-1284(ra) # 80001530 <sem_wait>
    buffer[tail] = val;
    80006a3c:	0084b783          	ld	a5,8(s1)
    80006a40:	0144a703          	lw	a4,20(s1)
    80006a44:	00271713          	slli	a4,a4,0x2
    80006a48:	00e787b3          	add	a5,a5,a4
    80006a4c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a50:	0144a783          	lw	a5,20(s1)
    80006a54:	0017879b          	addiw	a5,a5,1
    80006a58:	0004a703          	lw	a4,0(s1)
    80006a5c:	02e7e7bb          	remw	a5,a5,a4
    80006a60:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006a64:	0304b503          	ld	a0,48(s1)
    80006a68:	ffffb097          	auipc	ra,0xffffb
    80006a6c:	b1c080e7          	jalr	-1252(ra) # 80001584 <sem_signal>

    sem_signal(itemAvailable);
    80006a70:	0204b503          	ld	a0,32(s1)
    80006a74:	ffffb097          	auipc	ra,0xffffb
    80006a78:	b10080e7          	jalr	-1264(ra) # 80001584 <sem_signal>

}
    80006a7c:	01813083          	ld	ra,24(sp)
    80006a80:	01013403          	ld	s0,16(sp)
    80006a84:	00813483          	ld	s1,8(sp)
    80006a88:	00013903          	ld	s2,0(sp)
    80006a8c:	02010113          	addi	sp,sp,32
    80006a90:	00008067          	ret

0000000080006a94 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006a94:	fe010113          	addi	sp,sp,-32
    80006a98:	00113c23          	sd	ra,24(sp)
    80006a9c:	00813823          	sd	s0,16(sp)
    80006aa0:	00913423          	sd	s1,8(sp)
    80006aa4:	01213023          	sd	s2,0(sp)
    80006aa8:	02010413          	addi	s0,sp,32
    80006aac:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006ab0:	02053503          	ld	a0,32(a0)
    80006ab4:	ffffb097          	auipc	ra,0xffffb
    80006ab8:	a7c080e7          	jalr	-1412(ra) # 80001530 <sem_wait>

    sem_wait(mutexHead);
    80006abc:	0284b503          	ld	a0,40(s1)
    80006ac0:	ffffb097          	auipc	ra,0xffffb
    80006ac4:	a70080e7          	jalr	-1424(ra) # 80001530 <sem_wait>

    int ret = buffer[head];
    80006ac8:	0084b703          	ld	a4,8(s1)
    80006acc:	0104a783          	lw	a5,16(s1)
    80006ad0:	00279693          	slli	a3,a5,0x2
    80006ad4:	00d70733          	add	a4,a4,a3
    80006ad8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006adc:	0017879b          	addiw	a5,a5,1
    80006ae0:	0004a703          	lw	a4,0(s1)
    80006ae4:	02e7e7bb          	remw	a5,a5,a4
    80006ae8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006aec:	0284b503          	ld	a0,40(s1)
    80006af0:	ffffb097          	auipc	ra,0xffffb
    80006af4:	a94080e7          	jalr	-1388(ra) # 80001584 <sem_signal>

    sem_signal(spaceAvailable);
    80006af8:	0184b503          	ld	a0,24(s1)
    80006afc:	ffffb097          	auipc	ra,0xffffb
    80006b00:	a88080e7          	jalr	-1400(ra) # 80001584 <sem_signal>

    return ret;
}
    80006b04:	00090513          	mv	a0,s2
    80006b08:	01813083          	ld	ra,24(sp)
    80006b0c:	01013403          	ld	s0,16(sp)
    80006b10:	00813483          	ld	s1,8(sp)
    80006b14:	00013903          	ld	s2,0(sp)
    80006b18:	02010113          	addi	sp,sp,32
    80006b1c:	00008067          	ret

0000000080006b20 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006b20:	fe010113          	addi	sp,sp,-32
    80006b24:	00113c23          	sd	ra,24(sp)
    80006b28:	00813823          	sd	s0,16(sp)
    80006b2c:	00913423          	sd	s1,8(sp)
    80006b30:	01213023          	sd	s2,0(sp)
    80006b34:	02010413          	addi	s0,sp,32
    80006b38:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006b3c:	02853503          	ld	a0,40(a0)
    80006b40:	ffffb097          	auipc	ra,0xffffb
    80006b44:	9f0080e7          	jalr	-1552(ra) # 80001530 <sem_wait>
    sem_wait(mutexTail);
    80006b48:	0304b503          	ld	a0,48(s1)
    80006b4c:	ffffb097          	auipc	ra,0xffffb
    80006b50:	9e4080e7          	jalr	-1564(ra) # 80001530 <sem_wait>

    if (tail >= head) {
    80006b54:	0144a783          	lw	a5,20(s1)
    80006b58:	0104a903          	lw	s2,16(s1)
    80006b5c:	0327ce63          	blt	a5,s2,80006b98 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006b60:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006b64:	0304b503          	ld	a0,48(s1)
    80006b68:	ffffb097          	auipc	ra,0xffffb
    80006b6c:	a1c080e7          	jalr	-1508(ra) # 80001584 <sem_signal>
    sem_signal(mutexHead);
    80006b70:	0284b503          	ld	a0,40(s1)
    80006b74:	ffffb097          	auipc	ra,0xffffb
    80006b78:	a10080e7          	jalr	-1520(ra) # 80001584 <sem_signal>

    return ret;
}
    80006b7c:	00090513          	mv	a0,s2
    80006b80:	01813083          	ld	ra,24(sp)
    80006b84:	01013403          	ld	s0,16(sp)
    80006b88:	00813483          	ld	s1,8(sp)
    80006b8c:	00013903          	ld	s2,0(sp)
    80006b90:	02010113          	addi	sp,sp,32
    80006b94:	00008067          	ret
        ret = cap - head + tail;
    80006b98:	0004a703          	lw	a4,0(s1)
    80006b9c:	4127093b          	subw	s2,a4,s2
    80006ba0:	00f9093b          	addw	s2,s2,a5
    80006ba4:	fc1ff06f          	j	80006b64 <_ZN6Buffer6getCntEv+0x44>

0000000080006ba8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006ba8:	fe010113          	addi	sp,sp,-32
    80006bac:	00113c23          	sd	ra,24(sp)
    80006bb0:	00813823          	sd	s0,16(sp)
    80006bb4:	00913423          	sd	s1,8(sp)
    80006bb8:	02010413          	addi	s0,sp,32
    80006bbc:	00050493          	mv	s1,a0
    putc('\n');
    80006bc0:	00a00513          	li	a0,10
    80006bc4:	ffffb097          	auipc	ra,0xffffb
    80006bc8:	a68080e7          	jalr	-1432(ra) # 8000162c <putc>
    printString("Buffer deleted!\n");
    80006bcc:	00003517          	auipc	a0,0x3
    80006bd0:	86450513          	addi	a0,a0,-1948 # 80009430 <CONSOLE_STATUS+0x420>
    80006bd4:	fffff097          	auipc	ra,0xfffff
    80006bd8:	894080e7          	jalr	-1900(ra) # 80005468 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006bdc:	00048513          	mv	a0,s1
    80006be0:	00000097          	auipc	ra,0x0
    80006be4:	f40080e7          	jalr	-192(ra) # 80006b20 <_ZN6Buffer6getCntEv>
    80006be8:	02a05c63          	blez	a0,80006c20 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006bec:	0084b783          	ld	a5,8(s1)
    80006bf0:	0104a703          	lw	a4,16(s1)
    80006bf4:	00271713          	slli	a4,a4,0x2
    80006bf8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006bfc:	0007c503          	lbu	a0,0(a5)
    80006c00:	ffffb097          	auipc	ra,0xffffb
    80006c04:	a2c080e7          	jalr	-1492(ra) # 8000162c <putc>
        head = (head + 1) % cap;
    80006c08:	0104a783          	lw	a5,16(s1)
    80006c0c:	0017879b          	addiw	a5,a5,1
    80006c10:	0004a703          	lw	a4,0(s1)
    80006c14:	02e7e7bb          	remw	a5,a5,a4
    80006c18:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006c1c:	fc1ff06f          	j	80006bdc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006c20:	02100513          	li	a0,33
    80006c24:	ffffb097          	auipc	ra,0xffffb
    80006c28:	a08080e7          	jalr	-1528(ra) # 8000162c <putc>
    putc('\n');
    80006c2c:	00a00513          	li	a0,10
    80006c30:	ffffb097          	auipc	ra,0xffffb
    80006c34:	9fc080e7          	jalr	-1540(ra) # 8000162c <putc>
    mem_free(buffer);
    80006c38:	0084b503          	ld	a0,8(s1)
    80006c3c:	ffffa097          	auipc	ra,0xffffa
    80006c40:	660080e7          	jalr	1632(ra) # 8000129c <mem_free>
    sem_close(itemAvailable);
    80006c44:	0204b503          	ld	a0,32(s1)
    80006c48:	ffffb097          	auipc	ra,0xffffb
    80006c4c:	894080e7          	jalr	-1900(ra) # 800014dc <sem_close>
    sem_close(spaceAvailable);
    80006c50:	0184b503          	ld	a0,24(s1)
    80006c54:	ffffb097          	auipc	ra,0xffffb
    80006c58:	888080e7          	jalr	-1912(ra) # 800014dc <sem_close>
    sem_close(mutexTail);
    80006c5c:	0304b503          	ld	a0,48(s1)
    80006c60:	ffffb097          	auipc	ra,0xffffb
    80006c64:	87c080e7          	jalr	-1924(ra) # 800014dc <sem_close>
    sem_close(mutexHead);
    80006c68:	0284b503          	ld	a0,40(s1)
    80006c6c:	ffffb097          	auipc	ra,0xffffb
    80006c70:	870080e7          	jalr	-1936(ra) # 800014dc <sem_close>
}
    80006c74:	01813083          	ld	ra,24(sp)
    80006c78:	01013403          	ld	s0,16(sp)
    80006c7c:	00813483          	ld	s1,8(sp)
    80006c80:	02010113          	addi	sp,sp,32
    80006c84:	00008067          	ret

0000000080006c88 <start>:
    80006c88:	ff010113          	addi	sp,sp,-16
    80006c8c:	00813423          	sd	s0,8(sp)
    80006c90:	01010413          	addi	s0,sp,16
    80006c94:	300027f3          	csrr	a5,mstatus
    80006c98:	ffffe737          	lui	a4,0xffffe
    80006c9c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1bef>
    80006ca0:	00e7f7b3          	and	a5,a5,a4
    80006ca4:	00001737          	lui	a4,0x1
    80006ca8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006cac:	00e7e7b3          	or	a5,a5,a4
    80006cb0:	30079073          	csrw	mstatus,a5
    80006cb4:	00000797          	auipc	a5,0x0
    80006cb8:	16078793          	addi	a5,a5,352 # 80006e14 <system_main>
    80006cbc:	34179073          	csrw	mepc,a5
    80006cc0:	00000793          	li	a5,0
    80006cc4:	18079073          	csrw	satp,a5
    80006cc8:	000107b7          	lui	a5,0x10
    80006ccc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006cd0:	30279073          	csrw	medeleg,a5
    80006cd4:	30379073          	csrw	mideleg,a5
    80006cd8:	104027f3          	csrr	a5,sie
    80006cdc:	2227e793          	ori	a5,a5,546
    80006ce0:	10479073          	csrw	sie,a5
    80006ce4:	fff00793          	li	a5,-1
    80006ce8:	00a7d793          	srli	a5,a5,0xa
    80006cec:	3b079073          	csrw	pmpaddr0,a5
    80006cf0:	00f00793          	li	a5,15
    80006cf4:	3a079073          	csrw	pmpcfg0,a5
    80006cf8:	f14027f3          	csrr	a5,mhartid
    80006cfc:	0200c737          	lui	a4,0x200c
    80006d00:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d04:	0007869b          	sext.w	a3,a5
    80006d08:	00269713          	slli	a4,a3,0x2
    80006d0c:	000f4637          	lui	a2,0xf4
    80006d10:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d14:	00d70733          	add	a4,a4,a3
    80006d18:	0037979b          	slliw	a5,a5,0x3
    80006d1c:	020046b7          	lui	a3,0x2004
    80006d20:	00d787b3          	add	a5,a5,a3
    80006d24:	00c585b3          	add	a1,a1,a2
    80006d28:	00371693          	slli	a3,a4,0x3
    80006d2c:	00005717          	auipc	a4,0x5
    80006d30:	c8470713          	addi	a4,a4,-892 # 8000b9b0 <timer_scratch>
    80006d34:	00b7b023          	sd	a1,0(a5)
    80006d38:	00d70733          	add	a4,a4,a3
    80006d3c:	00f73c23          	sd	a5,24(a4)
    80006d40:	02c73023          	sd	a2,32(a4)
    80006d44:	34071073          	csrw	mscratch,a4
    80006d48:	00000797          	auipc	a5,0x0
    80006d4c:	6e878793          	addi	a5,a5,1768 # 80007430 <timervec>
    80006d50:	30579073          	csrw	mtvec,a5
    80006d54:	300027f3          	csrr	a5,mstatus
    80006d58:	0087e793          	ori	a5,a5,8
    80006d5c:	30079073          	csrw	mstatus,a5
    80006d60:	304027f3          	csrr	a5,mie
    80006d64:	0807e793          	ori	a5,a5,128
    80006d68:	30479073          	csrw	mie,a5
    80006d6c:	f14027f3          	csrr	a5,mhartid
    80006d70:	0007879b          	sext.w	a5,a5
    80006d74:	00078213          	mv	tp,a5
    80006d78:	30200073          	mret
    80006d7c:	00813403          	ld	s0,8(sp)
    80006d80:	01010113          	addi	sp,sp,16
    80006d84:	00008067          	ret

0000000080006d88 <timerinit>:
    80006d88:	ff010113          	addi	sp,sp,-16
    80006d8c:	00813423          	sd	s0,8(sp)
    80006d90:	01010413          	addi	s0,sp,16
    80006d94:	f14027f3          	csrr	a5,mhartid
    80006d98:	0200c737          	lui	a4,0x200c
    80006d9c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006da0:	0007869b          	sext.w	a3,a5
    80006da4:	00269713          	slli	a4,a3,0x2
    80006da8:	000f4637          	lui	a2,0xf4
    80006dac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006db0:	00d70733          	add	a4,a4,a3
    80006db4:	0037979b          	slliw	a5,a5,0x3
    80006db8:	020046b7          	lui	a3,0x2004
    80006dbc:	00d787b3          	add	a5,a5,a3
    80006dc0:	00c585b3          	add	a1,a1,a2
    80006dc4:	00371693          	slli	a3,a4,0x3
    80006dc8:	00005717          	auipc	a4,0x5
    80006dcc:	be870713          	addi	a4,a4,-1048 # 8000b9b0 <timer_scratch>
    80006dd0:	00b7b023          	sd	a1,0(a5)
    80006dd4:	00d70733          	add	a4,a4,a3
    80006dd8:	00f73c23          	sd	a5,24(a4)
    80006ddc:	02c73023          	sd	a2,32(a4)
    80006de0:	34071073          	csrw	mscratch,a4
    80006de4:	00000797          	auipc	a5,0x0
    80006de8:	64c78793          	addi	a5,a5,1612 # 80007430 <timervec>
    80006dec:	30579073          	csrw	mtvec,a5
    80006df0:	300027f3          	csrr	a5,mstatus
    80006df4:	0087e793          	ori	a5,a5,8
    80006df8:	30079073          	csrw	mstatus,a5
    80006dfc:	304027f3          	csrr	a5,mie
    80006e00:	0807e793          	ori	a5,a5,128
    80006e04:	30479073          	csrw	mie,a5
    80006e08:	00813403          	ld	s0,8(sp)
    80006e0c:	01010113          	addi	sp,sp,16
    80006e10:	00008067          	ret

0000000080006e14 <system_main>:
    80006e14:	fe010113          	addi	sp,sp,-32
    80006e18:	00813823          	sd	s0,16(sp)
    80006e1c:	00913423          	sd	s1,8(sp)
    80006e20:	00113c23          	sd	ra,24(sp)
    80006e24:	02010413          	addi	s0,sp,32
    80006e28:	00000097          	auipc	ra,0x0
    80006e2c:	0c4080e7          	jalr	196(ra) # 80006eec <cpuid>
    80006e30:	00005497          	auipc	s1,0x5
    80006e34:	92048493          	addi	s1,s1,-1760 # 8000b750 <started>
    80006e38:	02050263          	beqz	a0,80006e5c <system_main+0x48>
    80006e3c:	0004a783          	lw	a5,0(s1)
    80006e40:	0007879b          	sext.w	a5,a5
    80006e44:	fe078ce3          	beqz	a5,80006e3c <system_main+0x28>
    80006e48:	0ff0000f          	fence
    80006e4c:	00003517          	auipc	a0,0x3
    80006e50:	83450513          	addi	a0,a0,-1996 # 80009680 <CONSOLE_STATUS+0x670>
    80006e54:	00001097          	auipc	ra,0x1
    80006e58:	a78080e7          	jalr	-1416(ra) # 800078cc <panic>
    80006e5c:	00001097          	auipc	ra,0x1
    80006e60:	9cc080e7          	jalr	-1588(ra) # 80007828 <consoleinit>
    80006e64:	00001097          	auipc	ra,0x1
    80006e68:	158080e7          	jalr	344(ra) # 80007fbc <printfinit>
    80006e6c:	00002517          	auipc	a0,0x2
    80006e70:	3dc50513          	addi	a0,a0,988 # 80009248 <CONSOLE_STATUS+0x238>
    80006e74:	00001097          	auipc	ra,0x1
    80006e78:	ab4080e7          	jalr	-1356(ra) # 80007928 <__printf>
    80006e7c:	00002517          	auipc	a0,0x2
    80006e80:	7d450513          	addi	a0,a0,2004 # 80009650 <CONSOLE_STATUS+0x640>
    80006e84:	00001097          	auipc	ra,0x1
    80006e88:	aa4080e7          	jalr	-1372(ra) # 80007928 <__printf>
    80006e8c:	00002517          	auipc	a0,0x2
    80006e90:	3bc50513          	addi	a0,a0,956 # 80009248 <CONSOLE_STATUS+0x238>
    80006e94:	00001097          	auipc	ra,0x1
    80006e98:	a94080e7          	jalr	-1388(ra) # 80007928 <__printf>
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	4ac080e7          	jalr	1196(ra) # 80008348 <kinit>
    80006ea4:	00000097          	auipc	ra,0x0
    80006ea8:	148080e7          	jalr	328(ra) # 80006fec <trapinit>
    80006eac:	00000097          	auipc	ra,0x0
    80006eb0:	16c080e7          	jalr	364(ra) # 80007018 <trapinithart>
    80006eb4:	00000097          	auipc	ra,0x0
    80006eb8:	5bc080e7          	jalr	1468(ra) # 80007470 <plicinit>
    80006ebc:	00000097          	auipc	ra,0x0
    80006ec0:	5dc080e7          	jalr	1500(ra) # 80007498 <plicinithart>
    80006ec4:	00000097          	auipc	ra,0x0
    80006ec8:	078080e7          	jalr	120(ra) # 80006f3c <userinit>
    80006ecc:	0ff0000f          	fence
    80006ed0:	00100793          	li	a5,1
    80006ed4:	00002517          	auipc	a0,0x2
    80006ed8:	79450513          	addi	a0,a0,1940 # 80009668 <CONSOLE_STATUS+0x658>
    80006edc:	00f4a023          	sw	a5,0(s1)
    80006ee0:	00001097          	auipc	ra,0x1
    80006ee4:	a48080e7          	jalr	-1464(ra) # 80007928 <__printf>
    80006ee8:	0000006f          	j	80006ee8 <system_main+0xd4>

0000000080006eec <cpuid>:
    80006eec:	ff010113          	addi	sp,sp,-16
    80006ef0:	00813423          	sd	s0,8(sp)
    80006ef4:	01010413          	addi	s0,sp,16
    80006ef8:	00020513          	mv	a0,tp
    80006efc:	00813403          	ld	s0,8(sp)
    80006f00:	0005051b          	sext.w	a0,a0
    80006f04:	01010113          	addi	sp,sp,16
    80006f08:	00008067          	ret

0000000080006f0c <mycpu>:
    80006f0c:	ff010113          	addi	sp,sp,-16
    80006f10:	00813423          	sd	s0,8(sp)
    80006f14:	01010413          	addi	s0,sp,16
    80006f18:	00020793          	mv	a5,tp
    80006f1c:	00813403          	ld	s0,8(sp)
    80006f20:	0007879b          	sext.w	a5,a5
    80006f24:	00779793          	slli	a5,a5,0x7
    80006f28:	00006517          	auipc	a0,0x6
    80006f2c:	ab850513          	addi	a0,a0,-1352 # 8000c9e0 <cpus>
    80006f30:	00f50533          	add	a0,a0,a5
    80006f34:	01010113          	addi	sp,sp,16
    80006f38:	00008067          	ret

0000000080006f3c <userinit>:
    80006f3c:	ff010113          	addi	sp,sp,-16
    80006f40:	00813423          	sd	s0,8(sp)
    80006f44:	01010413          	addi	s0,sp,16
    80006f48:	00813403          	ld	s0,8(sp)
    80006f4c:	01010113          	addi	sp,sp,16
    80006f50:	ffffc317          	auipc	t1,0xffffc
    80006f54:	84c30067          	jr	-1972(t1) # 8000279c <main>

0000000080006f58 <either_copyout>:
    80006f58:	ff010113          	addi	sp,sp,-16
    80006f5c:	00813023          	sd	s0,0(sp)
    80006f60:	00113423          	sd	ra,8(sp)
    80006f64:	01010413          	addi	s0,sp,16
    80006f68:	02051663          	bnez	a0,80006f94 <either_copyout+0x3c>
    80006f6c:	00058513          	mv	a0,a1
    80006f70:	00060593          	mv	a1,a2
    80006f74:	0006861b          	sext.w	a2,a3
    80006f78:	00002097          	auipc	ra,0x2
    80006f7c:	c5c080e7          	jalr	-932(ra) # 80008bd4 <__memmove>
    80006f80:	00813083          	ld	ra,8(sp)
    80006f84:	00013403          	ld	s0,0(sp)
    80006f88:	00000513          	li	a0,0
    80006f8c:	01010113          	addi	sp,sp,16
    80006f90:	00008067          	ret
    80006f94:	00002517          	auipc	a0,0x2
    80006f98:	71450513          	addi	a0,a0,1812 # 800096a8 <CONSOLE_STATUS+0x698>
    80006f9c:	00001097          	auipc	ra,0x1
    80006fa0:	930080e7          	jalr	-1744(ra) # 800078cc <panic>

0000000080006fa4 <either_copyin>:
    80006fa4:	ff010113          	addi	sp,sp,-16
    80006fa8:	00813023          	sd	s0,0(sp)
    80006fac:	00113423          	sd	ra,8(sp)
    80006fb0:	01010413          	addi	s0,sp,16
    80006fb4:	02059463          	bnez	a1,80006fdc <either_copyin+0x38>
    80006fb8:	00060593          	mv	a1,a2
    80006fbc:	0006861b          	sext.w	a2,a3
    80006fc0:	00002097          	auipc	ra,0x2
    80006fc4:	c14080e7          	jalr	-1004(ra) # 80008bd4 <__memmove>
    80006fc8:	00813083          	ld	ra,8(sp)
    80006fcc:	00013403          	ld	s0,0(sp)
    80006fd0:	00000513          	li	a0,0
    80006fd4:	01010113          	addi	sp,sp,16
    80006fd8:	00008067          	ret
    80006fdc:	00002517          	auipc	a0,0x2
    80006fe0:	6f450513          	addi	a0,a0,1780 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006fe4:	00001097          	auipc	ra,0x1
    80006fe8:	8e8080e7          	jalr	-1816(ra) # 800078cc <panic>

0000000080006fec <trapinit>:
    80006fec:	ff010113          	addi	sp,sp,-16
    80006ff0:	00813423          	sd	s0,8(sp)
    80006ff4:	01010413          	addi	s0,sp,16
    80006ff8:	00813403          	ld	s0,8(sp)
    80006ffc:	00002597          	auipc	a1,0x2
    80007000:	6fc58593          	addi	a1,a1,1788 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007004:	00006517          	auipc	a0,0x6
    80007008:	a5c50513          	addi	a0,a0,-1444 # 8000ca60 <tickslock>
    8000700c:	01010113          	addi	sp,sp,16
    80007010:	00001317          	auipc	t1,0x1
    80007014:	5c830067          	jr	1480(t1) # 800085d8 <initlock>

0000000080007018 <trapinithart>:
    80007018:	ff010113          	addi	sp,sp,-16
    8000701c:	00813423          	sd	s0,8(sp)
    80007020:	01010413          	addi	s0,sp,16
    80007024:	00000797          	auipc	a5,0x0
    80007028:	2fc78793          	addi	a5,a5,764 # 80007320 <kernelvec>
    8000702c:	10579073          	csrw	stvec,a5
    80007030:	00813403          	ld	s0,8(sp)
    80007034:	01010113          	addi	sp,sp,16
    80007038:	00008067          	ret

000000008000703c <usertrap>:
    8000703c:	ff010113          	addi	sp,sp,-16
    80007040:	00813423          	sd	s0,8(sp)
    80007044:	01010413          	addi	s0,sp,16
    80007048:	00813403          	ld	s0,8(sp)
    8000704c:	01010113          	addi	sp,sp,16
    80007050:	00008067          	ret

0000000080007054 <usertrapret>:
    80007054:	ff010113          	addi	sp,sp,-16
    80007058:	00813423          	sd	s0,8(sp)
    8000705c:	01010413          	addi	s0,sp,16
    80007060:	00813403          	ld	s0,8(sp)
    80007064:	01010113          	addi	sp,sp,16
    80007068:	00008067          	ret

000000008000706c <kerneltrap>:
    8000706c:	fe010113          	addi	sp,sp,-32
    80007070:	00813823          	sd	s0,16(sp)
    80007074:	00113c23          	sd	ra,24(sp)
    80007078:	00913423          	sd	s1,8(sp)
    8000707c:	02010413          	addi	s0,sp,32
    80007080:	142025f3          	csrr	a1,scause
    80007084:	100027f3          	csrr	a5,sstatus
    80007088:	0027f793          	andi	a5,a5,2
    8000708c:	10079c63          	bnez	a5,800071a4 <kerneltrap+0x138>
    80007090:	142027f3          	csrr	a5,scause
    80007094:	0207ce63          	bltz	a5,800070d0 <kerneltrap+0x64>
    80007098:	00002517          	auipc	a0,0x2
    8000709c:	6a850513          	addi	a0,a0,1704 # 80009740 <CONSOLE_STATUS+0x730>
    800070a0:	00001097          	auipc	ra,0x1
    800070a4:	888080e7          	jalr	-1912(ra) # 80007928 <__printf>
    800070a8:	141025f3          	csrr	a1,sepc
    800070ac:	14302673          	csrr	a2,stval
    800070b0:	00002517          	auipc	a0,0x2
    800070b4:	6a050513          	addi	a0,a0,1696 # 80009750 <CONSOLE_STATUS+0x740>
    800070b8:	00001097          	auipc	ra,0x1
    800070bc:	870080e7          	jalr	-1936(ra) # 80007928 <__printf>
    800070c0:	00002517          	auipc	a0,0x2
    800070c4:	6a850513          	addi	a0,a0,1704 # 80009768 <CONSOLE_STATUS+0x758>
    800070c8:	00001097          	auipc	ra,0x1
    800070cc:	804080e7          	jalr	-2044(ra) # 800078cc <panic>
    800070d0:	0ff7f713          	andi	a4,a5,255
    800070d4:	00900693          	li	a3,9
    800070d8:	04d70063          	beq	a4,a3,80007118 <kerneltrap+0xac>
    800070dc:	fff00713          	li	a4,-1
    800070e0:	03f71713          	slli	a4,a4,0x3f
    800070e4:	00170713          	addi	a4,a4,1
    800070e8:	fae798e3          	bne	a5,a4,80007098 <kerneltrap+0x2c>
    800070ec:	00000097          	auipc	ra,0x0
    800070f0:	e00080e7          	jalr	-512(ra) # 80006eec <cpuid>
    800070f4:	06050663          	beqz	a0,80007160 <kerneltrap+0xf4>
    800070f8:	144027f3          	csrr	a5,sip
    800070fc:	ffd7f793          	andi	a5,a5,-3
    80007100:	14479073          	csrw	sip,a5
    80007104:	01813083          	ld	ra,24(sp)
    80007108:	01013403          	ld	s0,16(sp)
    8000710c:	00813483          	ld	s1,8(sp)
    80007110:	02010113          	addi	sp,sp,32
    80007114:	00008067          	ret
    80007118:	00000097          	auipc	ra,0x0
    8000711c:	3cc080e7          	jalr	972(ra) # 800074e4 <plic_claim>
    80007120:	00a00793          	li	a5,10
    80007124:	00050493          	mv	s1,a0
    80007128:	06f50863          	beq	a0,a5,80007198 <kerneltrap+0x12c>
    8000712c:	fc050ce3          	beqz	a0,80007104 <kerneltrap+0x98>
    80007130:	00050593          	mv	a1,a0
    80007134:	00002517          	auipc	a0,0x2
    80007138:	5ec50513          	addi	a0,a0,1516 # 80009720 <CONSOLE_STATUS+0x710>
    8000713c:	00000097          	auipc	ra,0x0
    80007140:	7ec080e7          	jalr	2028(ra) # 80007928 <__printf>
    80007144:	01013403          	ld	s0,16(sp)
    80007148:	01813083          	ld	ra,24(sp)
    8000714c:	00048513          	mv	a0,s1
    80007150:	00813483          	ld	s1,8(sp)
    80007154:	02010113          	addi	sp,sp,32
    80007158:	00000317          	auipc	t1,0x0
    8000715c:	3c430067          	jr	964(t1) # 8000751c <plic_complete>
    80007160:	00006517          	auipc	a0,0x6
    80007164:	90050513          	addi	a0,a0,-1792 # 8000ca60 <tickslock>
    80007168:	00001097          	auipc	ra,0x1
    8000716c:	494080e7          	jalr	1172(ra) # 800085fc <acquire>
    80007170:	00004717          	auipc	a4,0x4
    80007174:	5e470713          	addi	a4,a4,1508 # 8000b754 <ticks>
    80007178:	00072783          	lw	a5,0(a4)
    8000717c:	00006517          	auipc	a0,0x6
    80007180:	8e450513          	addi	a0,a0,-1820 # 8000ca60 <tickslock>
    80007184:	0017879b          	addiw	a5,a5,1
    80007188:	00f72023          	sw	a5,0(a4)
    8000718c:	00001097          	auipc	ra,0x1
    80007190:	53c080e7          	jalr	1340(ra) # 800086c8 <release>
    80007194:	f65ff06f          	j	800070f8 <kerneltrap+0x8c>
    80007198:	00001097          	auipc	ra,0x1
    8000719c:	098080e7          	jalr	152(ra) # 80008230 <uartintr>
    800071a0:	fa5ff06f          	j	80007144 <kerneltrap+0xd8>
    800071a4:	00002517          	auipc	a0,0x2
    800071a8:	55c50513          	addi	a0,a0,1372 # 80009700 <CONSOLE_STATUS+0x6f0>
    800071ac:	00000097          	auipc	ra,0x0
    800071b0:	720080e7          	jalr	1824(ra) # 800078cc <panic>

00000000800071b4 <clockintr>:
    800071b4:	fe010113          	addi	sp,sp,-32
    800071b8:	00813823          	sd	s0,16(sp)
    800071bc:	00913423          	sd	s1,8(sp)
    800071c0:	00113c23          	sd	ra,24(sp)
    800071c4:	02010413          	addi	s0,sp,32
    800071c8:	00006497          	auipc	s1,0x6
    800071cc:	89848493          	addi	s1,s1,-1896 # 8000ca60 <tickslock>
    800071d0:	00048513          	mv	a0,s1
    800071d4:	00001097          	auipc	ra,0x1
    800071d8:	428080e7          	jalr	1064(ra) # 800085fc <acquire>
    800071dc:	00004717          	auipc	a4,0x4
    800071e0:	57870713          	addi	a4,a4,1400 # 8000b754 <ticks>
    800071e4:	00072783          	lw	a5,0(a4)
    800071e8:	01013403          	ld	s0,16(sp)
    800071ec:	01813083          	ld	ra,24(sp)
    800071f0:	00048513          	mv	a0,s1
    800071f4:	0017879b          	addiw	a5,a5,1
    800071f8:	00813483          	ld	s1,8(sp)
    800071fc:	00f72023          	sw	a5,0(a4)
    80007200:	02010113          	addi	sp,sp,32
    80007204:	00001317          	auipc	t1,0x1
    80007208:	4c430067          	jr	1220(t1) # 800086c8 <release>

000000008000720c <devintr>:
    8000720c:	142027f3          	csrr	a5,scause
    80007210:	00000513          	li	a0,0
    80007214:	0007c463          	bltz	a5,8000721c <devintr+0x10>
    80007218:	00008067          	ret
    8000721c:	fe010113          	addi	sp,sp,-32
    80007220:	00813823          	sd	s0,16(sp)
    80007224:	00113c23          	sd	ra,24(sp)
    80007228:	00913423          	sd	s1,8(sp)
    8000722c:	02010413          	addi	s0,sp,32
    80007230:	0ff7f713          	andi	a4,a5,255
    80007234:	00900693          	li	a3,9
    80007238:	04d70c63          	beq	a4,a3,80007290 <devintr+0x84>
    8000723c:	fff00713          	li	a4,-1
    80007240:	03f71713          	slli	a4,a4,0x3f
    80007244:	00170713          	addi	a4,a4,1
    80007248:	00e78c63          	beq	a5,a4,80007260 <devintr+0x54>
    8000724c:	01813083          	ld	ra,24(sp)
    80007250:	01013403          	ld	s0,16(sp)
    80007254:	00813483          	ld	s1,8(sp)
    80007258:	02010113          	addi	sp,sp,32
    8000725c:	00008067          	ret
    80007260:	00000097          	auipc	ra,0x0
    80007264:	c8c080e7          	jalr	-884(ra) # 80006eec <cpuid>
    80007268:	06050663          	beqz	a0,800072d4 <devintr+0xc8>
    8000726c:	144027f3          	csrr	a5,sip
    80007270:	ffd7f793          	andi	a5,a5,-3
    80007274:	14479073          	csrw	sip,a5
    80007278:	01813083          	ld	ra,24(sp)
    8000727c:	01013403          	ld	s0,16(sp)
    80007280:	00813483          	ld	s1,8(sp)
    80007284:	00200513          	li	a0,2
    80007288:	02010113          	addi	sp,sp,32
    8000728c:	00008067          	ret
    80007290:	00000097          	auipc	ra,0x0
    80007294:	254080e7          	jalr	596(ra) # 800074e4 <plic_claim>
    80007298:	00a00793          	li	a5,10
    8000729c:	00050493          	mv	s1,a0
    800072a0:	06f50663          	beq	a0,a5,8000730c <devintr+0x100>
    800072a4:	00100513          	li	a0,1
    800072a8:	fa0482e3          	beqz	s1,8000724c <devintr+0x40>
    800072ac:	00048593          	mv	a1,s1
    800072b0:	00002517          	auipc	a0,0x2
    800072b4:	47050513          	addi	a0,a0,1136 # 80009720 <CONSOLE_STATUS+0x710>
    800072b8:	00000097          	auipc	ra,0x0
    800072bc:	670080e7          	jalr	1648(ra) # 80007928 <__printf>
    800072c0:	00048513          	mv	a0,s1
    800072c4:	00000097          	auipc	ra,0x0
    800072c8:	258080e7          	jalr	600(ra) # 8000751c <plic_complete>
    800072cc:	00100513          	li	a0,1
    800072d0:	f7dff06f          	j	8000724c <devintr+0x40>
    800072d4:	00005517          	auipc	a0,0x5
    800072d8:	78c50513          	addi	a0,a0,1932 # 8000ca60 <tickslock>
    800072dc:	00001097          	auipc	ra,0x1
    800072e0:	320080e7          	jalr	800(ra) # 800085fc <acquire>
    800072e4:	00004717          	auipc	a4,0x4
    800072e8:	47070713          	addi	a4,a4,1136 # 8000b754 <ticks>
    800072ec:	00072783          	lw	a5,0(a4)
    800072f0:	00005517          	auipc	a0,0x5
    800072f4:	77050513          	addi	a0,a0,1904 # 8000ca60 <tickslock>
    800072f8:	0017879b          	addiw	a5,a5,1
    800072fc:	00f72023          	sw	a5,0(a4)
    80007300:	00001097          	auipc	ra,0x1
    80007304:	3c8080e7          	jalr	968(ra) # 800086c8 <release>
    80007308:	f65ff06f          	j	8000726c <devintr+0x60>
    8000730c:	00001097          	auipc	ra,0x1
    80007310:	f24080e7          	jalr	-220(ra) # 80008230 <uartintr>
    80007314:	fadff06f          	j	800072c0 <devintr+0xb4>
	...

0000000080007320 <kernelvec>:
    80007320:	f0010113          	addi	sp,sp,-256
    80007324:	00113023          	sd	ra,0(sp)
    80007328:	00213423          	sd	sp,8(sp)
    8000732c:	00313823          	sd	gp,16(sp)
    80007330:	00413c23          	sd	tp,24(sp)
    80007334:	02513023          	sd	t0,32(sp)
    80007338:	02613423          	sd	t1,40(sp)
    8000733c:	02713823          	sd	t2,48(sp)
    80007340:	02813c23          	sd	s0,56(sp)
    80007344:	04913023          	sd	s1,64(sp)
    80007348:	04a13423          	sd	a0,72(sp)
    8000734c:	04b13823          	sd	a1,80(sp)
    80007350:	04c13c23          	sd	a2,88(sp)
    80007354:	06d13023          	sd	a3,96(sp)
    80007358:	06e13423          	sd	a4,104(sp)
    8000735c:	06f13823          	sd	a5,112(sp)
    80007360:	07013c23          	sd	a6,120(sp)
    80007364:	09113023          	sd	a7,128(sp)
    80007368:	09213423          	sd	s2,136(sp)
    8000736c:	09313823          	sd	s3,144(sp)
    80007370:	09413c23          	sd	s4,152(sp)
    80007374:	0b513023          	sd	s5,160(sp)
    80007378:	0b613423          	sd	s6,168(sp)
    8000737c:	0b713823          	sd	s7,176(sp)
    80007380:	0b813c23          	sd	s8,184(sp)
    80007384:	0d913023          	sd	s9,192(sp)
    80007388:	0da13423          	sd	s10,200(sp)
    8000738c:	0db13823          	sd	s11,208(sp)
    80007390:	0dc13c23          	sd	t3,216(sp)
    80007394:	0fd13023          	sd	t4,224(sp)
    80007398:	0fe13423          	sd	t5,232(sp)
    8000739c:	0ff13823          	sd	t6,240(sp)
    800073a0:	ccdff0ef          	jal	ra,8000706c <kerneltrap>
    800073a4:	00013083          	ld	ra,0(sp)
    800073a8:	00813103          	ld	sp,8(sp)
    800073ac:	01013183          	ld	gp,16(sp)
    800073b0:	02013283          	ld	t0,32(sp)
    800073b4:	02813303          	ld	t1,40(sp)
    800073b8:	03013383          	ld	t2,48(sp)
    800073bc:	03813403          	ld	s0,56(sp)
    800073c0:	04013483          	ld	s1,64(sp)
    800073c4:	04813503          	ld	a0,72(sp)
    800073c8:	05013583          	ld	a1,80(sp)
    800073cc:	05813603          	ld	a2,88(sp)
    800073d0:	06013683          	ld	a3,96(sp)
    800073d4:	06813703          	ld	a4,104(sp)
    800073d8:	07013783          	ld	a5,112(sp)
    800073dc:	07813803          	ld	a6,120(sp)
    800073e0:	08013883          	ld	a7,128(sp)
    800073e4:	08813903          	ld	s2,136(sp)
    800073e8:	09013983          	ld	s3,144(sp)
    800073ec:	09813a03          	ld	s4,152(sp)
    800073f0:	0a013a83          	ld	s5,160(sp)
    800073f4:	0a813b03          	ld	s6,168(sp)
    800073f8:	0b013b83          	ld	s7,176(sp)
    800073fc:	0b813c03          	ld	s8,184(sp)
    80007400:	0c013c83          	ld	s9,192(sp)
    80007404:	0c813d03          	ld	s10,200(sp)
    80007408:	0d013d83          	ld	s11,208(sp)
    8000740c:	0d813e03          	ld	t3,216(sp)
    80007410:	0e013e83          	ld	t4,224(sp)
    80007414:	0e813f03          	ld	t5,232(sp)
    80007418:	0f013f83          	ld	t6,240(sp)
    8000741c:	10010113          	addi	sp,sp,256
    80007420:	10200073          	sret
    80007424:	00000013          	nop
    80007428:	00000013          	nop
    8000742c:	00000013          	nop

0000000080007430 <timervec>:
    80007430:	34051573          	csrrw	a0,mscratch,a0
    80007434:	00b53023          	sd	a1,0(a0)
    80007438:	00c53423          	sd	a2,8(a0)
    8000743c:	00d53823          	sd	a3,16(a0)
    80007440:	01853583          	ld	a1,24(a0)
    80007444:	02053603          	ld	a2,32(a0)
    80007448:	0005b683          	ld	a3,0(a1)
    8000744c:	00c686b3          	add	a3,a3,a2
    80007450:	00d5b023          	sd	a3,0(a1)
    80007454:	00200593          	li	a1,2
    80007458:	14459073          	csrw	sip,a1
    8000745c:	01053683          	ld	a3,16(a0)
    80007460:	00853603          	ld	a2,8(a0)
    80007464:	00053583          	ld	a1,0(a0)
    80007468:	34051573          	csrrw	a0,mscratch,a0
    8000746c:	30200073          	mret

0000000080007470 <plicinit>:
    80007470:	ff010113          	addi	sp,sp,-16
    80007474:	00813423          	sd	s0,8(sp)
    80007478:	01010413          	addi	s0,sp,16
    8000747c:	00813403          	ld	s0,8(sp)
    80007480:	0c0007b7          	lui	a5,0xc000
    80007484:	00100713          	li	a4,1
    80007488:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000748c:	00e7a223          	sw	a4,4(a5)
    80007490:	01010113          	addi	sp,sp,16
    80007494:	00008067          	ret

0000000080007498 <plicinithart>:
    80007498:	ff010113          	addi	sp,sp,-16
    8000749c:	00813023          	sd	s0,0(sp)
    800074a0:	00113423          	sd	ra,8(sp)
    800074a4:	01010413          	addi	s0,sp,16
    800074a8:	00000097          	auipc	ra,0x0
    800074ac:	a44080e7          	jalr	-1468(ra) # 80006eec <cpuid>
    800074b0:	0085171b          	slliw	a4,a0,0x8
    800074b4:	0c0027b7          	lui	a5,0xc002
    800074b8:	00e787b3          	add	a5,a5,a4
    800074bc:	40200713          	li	a4,1026
    800074c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800074c4:	00813083          	ld	ra,8(sp)
    800074c8:	00013403          	ld	s0,0(sp)
    800074cc:	00d5151b          	slliw	a0,a0,0xd
    800074d0:	0c2017b7          	lui	a5,0xc201
    800074d4:	00a78533          	add	a0,a5,a0
    800074d8:	00052023          	sw	zero,0(a0)
    800074dc:	01010113          	addi	sp,sp,16
    800074e0:	00008067          	ret

00000000800074e4 <plic_claim>:
    800074e4:	ff010113          	addi	sp,sp,-16
    800074e8:	00813023          	sd	s0,0(sp)
    800074ec:	00113423          	sd	ra,8(sp)
    800074f0:	01010413          	addi	s0,sp,16
    800074f4:	00000097          	auipc	ra,0x0
    800074f8:	9f8080e7          	jalr	-1544(ra) # 80006eec <cpuid>
    800074fc:	00813083          	ld	ra,8(sp)
    80007500:	00013403          	ld	s0,0(sp)
    80007504:	00d5151b          	slliw	a0,a0,0xd
    80007508:	0c2017b7          	lui	a5,0xc201
    8000750c:	00a78533          	add	a0,a5,a0
    80007510:	00452503          	lw	a0,4(a0)
    80007514:	01010113          	addi	sp,sp,16
    80007518:	00008067          	ret

000000008000751c <plic_complete>:
    8000751c:	fe010113          	addi	sp,sp,-32
    80007520:	00813823          	sd	s0,16(sp)
    80007524:	00913423          	sd	s1,8(sp)
    80007528:	00113c23          	sd	ra,24(sp)
    8000752c:	02010413          	addi	s0,sp,32
    80007530:	00050493          	mv	s1,a0
    80007534:	00000097          	auipc	ra,0x0
    80007538:	9b8080e7          	jalr	-1608(ra) # 80006eec <cpuid>
    8000753c:	01813083          	ld	ra,24(sp)
    80007540:	01013403          	ld	s0,16(sp)
    80007544:	00d5179b          	slliw	a5,a0,0xd
    80007548:	0c201737          	lui	a4,0xc201
    8000754c:	00f707b3          	add	a5,a4,a5
    80007550:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007554:	00813483          	ld	s1,8(sp)
    80007558:	02010113          	addi	sp,sp,32
    8000755c:	00008067          	ret

0000000080007560 <consolewrite>:
    80007560:	fb010113          	addi	sp,sp,-80
    80007564:	04813023          	sd	s0,64(sp)
    80007568:	04113423          	sd	ra,72(sp)
    8000756c:	02913c23          	sd	s1,56(sp)
    80007570:	03213823          	sd	s2,48(sp)
    80007574:	03313423          	sd	s3,40(sp)
    80007578:	03413023          	sd	s4,32(sp)
    8000757c:	01513c23          	sd	s5,24(sp)
    80007580:	05010413          	addi	s0,sp,80
    80007584:	06c05c63          	blez	a2,800075fc <consolewrite+0x9c>
    80007588:	00060993          	mv	s3,a2
    8000758c:	00050a13          	mv	s4,a0
    80007590:	00058493          	mv	s1,a1
    80007594:	00000913          	li	s2,0
    80007598:	fff00a93          	li	s5,-1
    8000759c:	01c0006f          	j	800075b8 <consolewrite+0x58>
    800075a0:	fbf44503          	lbu	a0,-65(s0)
    800075a4:	0019091b          	addiw	s2,s2,1
    800075a8:	00148493          	addi	s1,s1,1
    800075ac:	00001097          	auipc	ra,0x1
    800075b0:	a9c080e7          	jalr	-1380(ra) # 80008048 <uartputc>
    800075b4:	03298063          	beq	s3,s2,800075d4 <consolewrite+0x74>
    800075b8:	00048613          	mv	a2,s1
    800075bc:	00100693          	li	a3,1
    800075c0:	000a0593          	mv	a1,s4
    800075c4:	fbf40513          	addi	a0,s0,-65
    800075c8:	00000097          	auipc	ra,0x0
    800075cc:	9dc080e7          	jalr	-1572(ra) # 80006fa4 <either_copyin>
    800075d0:	fd5518e3          	bne	a0,s5,800075a0 <consolewrite+0x40>
    800075d4:	04813083          	ld	ra,72(sp)
    800075d8:	04013403          	ld	s0,64(sp)
    800075dc:	03813483          	ld	s1,56(sp)
    800075e0:	02813983          	ld	s3,40(sp)
    800075e4:	02013a03          	ld	s4,32(sp)
    800075e8:	01813a83          	ld	s5,24(sp)
    800075ec:	00090513          	mv	a0,s2
    800075f0:	03013903          	ld	s2,48(sp)
    800075f4:	05010113          	addi	sp,sp,80
    800075f8:	00008067          	ret
    800075fc:	00000913          	li	s2,0
    80007600:	fd5ff06f          	j	800075d4 <consolewrite+0x74>

0000000080007604 <consoleread>:
    80007604:	f9010113          	addi	sp,sp,-112
    80007608:	06813023          	sd	s0,96(sp)
    8000760c:	04913c23          	sd	s1,88(sp)
    80007610:	05213823          	sd	s2,80(sp)
    80007614:	05313423          	sd	s3,72(sp)
    80007618:	05413023          	sd	s4,64(sp)
    8000761c:	03513c23          	sd	s5,56(sp)
    80007620:	03613823          	sd	s6,48(sp)
    80007624:	03713423          	sd	s7,40(sp)
    80007628:	03813023          	sd	s8,32(sp)
    8000762c:	06113423          	sd	ra,104(sp)
    80007630:	01913c23          	sd	s9,24(sp)
    80007634:	07010413          	addi	s0,sp,112
    80007638:	00060b93          	mv	s7,a2
    8000763c:	00050913          	mv	s2,a0
    80007640:	00058c13          	mv	s8,a1
    80007644:	00060b1b          	sext.w	s6,a2
    80007648:	00005497          	auipc	s1,0x5
    8000764c:	44048493          	addi	s1,s1,1088 # 8000ca88 <cons>
    80007650:	00400993          	li	s3,4
    80007654:	fff00a13          	li	s4,-1
    80007658:	00a00a93          	li	s5,10
    8000765c:	05705e63          	blez	s7,800076b8 <consoleread+0xb4>
    80007660:	09c4a703          	lw	a4,156(s1)
    80007664:	0984a783          	lw	a5,152(s1)
    80007668:	0007071b          	sext.w	a4,a4
    8000766c:	08e78463          	beq	a5,a4,800076f4 <consoleread+0xf0>
    80007670:	07f7f713          	andi	a4,a5,127
    80007674:	00e48733          	add	a4,s1,a4
    80007678:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000767c:	0017869b          	addiw	a3,a5,1
    80007680:	08d4ac23          	sw	a3,152(s1)
    80007684:	00070c9b          	sext.w	s9,a4
    80007688:	0b370663          	beq	a4,s3,80007734 <consoleread+0x130>
    8000768c:	00100693          	li	a3,1
    80007690:	f9f40613          	addi	a2,s0,-97
    80007694:	000c0593          	mv	a1,s8
    80007698:	00090513          	mv	a0,s2
    8000769c:	f8e40fa3          	sb	a4,-97(s0)
    800076a0:	00000097          	auipc	ra,0x0
    800076a4:	8b8080e7          	jalr	-1864(ra) # 80006f58 <either_copyout>
    800076a8:	01450863          	beq	a0,s4,800076b8 <consoleread+0xb4>
    800076ac:	001c0c13          	addi	s8,s8,1
    800076b0:	fffb8b9b          	addiw	s7,s7,-1
    800076b4:	fb5c94e3          	bne	s9,s5,8000765c <consoleread+0x58>
    800076b8:	000b851b          	sext.w	a0,s7
    800076bc:	06813083          	ld	ra,104(sp)
    800076c0:	06013403          	ld	s0,96(sp)
    800076c4:	05813483          	ld	s1,88(sp)
    800076c8:	05013903          	ld	s2,80(sp)
    800076cc:	04813983          	ld	s3,72(sp)
    800076d0:	04013a03          	ld	s4,64(sp)
    800076d4:	03813a83          	ld	s5,56(sp)
    800076d8:	02813b83          	ld	s7,40(sp)
    800076dc:	02013c03          	ld	s8,32(sp)
    800076e0:	01813c83          	ld	s9,24(sp)
    800076e4:	40ab053b          	subw	a0,s6,a0
    800076e8:	03013b03          	ld	s6,48(sp)
    800076ec:	07010113          	addi	sp,sp,112
    800076f0:	00008067          	ret
    800076f4:	00001097          	auipc	ra,0x1
    800076f8:	1d8080e7          	jalr	472(ra) # 800088cc <push_on>
    800076fc:	0984a703          	lw	a4,152(s1)
    80007700:	09c4a783          	lw	a5,156(s1)
    80007704:	0007879b          	sext.w	a5,a5
    80007708:	fef70ce3          	beq	a4,a5,80007700 <consoleread+0xfc>
    8000770c:	00001097          	auipc	ra,0x1
    80007710:	234080e7          	jalr	564(ra) # 80008940 <pop_on>
    80007714:	0984a783          	lw	a5,152(s1)
    80007718:	07f7f713          	andi	a4,a5,127
    8000771c:	00e48733          	add	a4,s1,a4
    80007720:	01874703          	lbu	a4,24(a4)
    80007724:	0017869b          	addiw	a3,a5,1
    80007728:	08d4ac23          	sw	a3,152(s1)
    8000772c:	00070c9b          	sext.w	s9,a4
    80007730:	f5371ee3          	bne	a4,s3,8000768c <consoleread+0x88>
    80007734:	000b851b          	sext.w	a0,s7
    80007738:	f96bf2e3          	bgeu	s7,s6,800076bc <consoleread+0xb8>
    8000773c:	08f4ac23          	sw	a5,152(s1)
    80007740:	f7dff06f          	j	800076bc <consoleread+0xb8>

0000000080007744 <consputc>:
    80007744:	10000793          	li	a5,256
    80007748:	00f50663          	beq	a0,a5,80007754 <consputc+0x10>
    8000774c:	00001317          	auipc	t1,0x1
    80007750:	9f430067          	jr	-1548(t1) # 80008140 <uartputc_sync>
    80007754:	ff010113          	addi	sp,sp,-16
    80007758:	00113423          	sd	ra,8(sp)
    8000775c:	00813023          	sd	s0,0(sp)
    80007760:	01010413          	addi	s0,sp,16
    80007764:	00800513          	li	a0,8
    80007768:	00001097          	auipc	ra,0x1
    8000776c:	9d8080e7          	jalr	-1576(ra) # 80008140 <uartputc_sync>
    80007770:	02000513          	li	a0,32
    80007774:	00001097          	auipc	ra,0x1
    80007778:	9cc080e7          	jalr	-1588(ra) # 80008140 <uartputc_sync>
    8000777c:	00013403          	ld	s0,0(sp)
    80007780:	00813083          	ld	ra,8(sp)
    80007784:	00800513          	li	a0,8
    80007788:	01010113          	addi	sp,sp,16
    8000778c:	00001317          	auipc	t1,0x1
    80007790:	9b430067          	jr	-1612(t1) # 80008140 <uartputc_sync>

0000000080007794 <consoleintr>:
    80007794:	fe010113          	addi	sp,sp,-32
    80007798:	00813823          	sd	s0,16(sp)
    8000779c:	00913423          	sd	s1,8(sp)
    800077a0:	01213023          	sd	s2,0(sp)
    800077a4:	00113c23          	sd	ra,24(sp)
    800077a8:	02010413          	addi	s0,sp,32
    800077ac:	00005917          	auipc	s2,0x5
    800077b0:	2dc90913          	addi	s2,s2,732 # 8000ca88 <cons>
    800077b4:	00050493          	mv	s1,a0
    800077b8:	00090513          	mv	a0,s2
    800077bc:	00001097          	auipc	ra,0x1
    800077c0:	e40080e7          	jalr	-448(ra) # 800085fc <acquire>
    800077c4:	02048c63          	beqz	s1,800077fc <consoleintr+0x68>
    800077c8:	0a092783          	lw	a5,160(s2)
    800077cc:	09892703          	lw	a4,152(s2)
    800077d0:	07f00693          	li	a3,127
    800077d4:	40e7873b          	subw	a4,a5,a4
    800077d8:	02e6e263          	bltu	a3,a4,800077fc <consoleintr+0x68>
    800077dc:	00d00713          	li	a4,13
    800077e0:	04e48063          	beq	s1,a4,80007820 <consoleintr+0x8c>
    800077e4:	07f7f713          	andi	a4,a5,127
    800077e8:	00e90733          	add	a4,s2,a4
    800077ec:	0017879b          	addiw	a5,a5,1
    800077f0:	0af92023          	sw	a5,160(s2)
    800077f4:	00970c23          	sb	s1,24(a4)
    800077f8:	08f92e23          	sw	a5,156(s2)
    800077fc:	01013403          	ld	s0,16(sp)
    80007800:	01813083          	ld	ra,24(sp)
    80007804:	00813483          	ld	s1,8(sp)
    80007808:	00013903          	ld	s2,0(sp)
    8000780c:	00005517          	auipc	a0,0x5
    80007810:	27c50513          	addi	a0,a0,636 # 8000ca88 <cons>
    80007814:	02010113          	addi	sp,sp,32
    80007818:	00001317          	auipc	t1,0x1
    8000781c:	eb030067          	jr	-336(t1) # 800086c8 <release>
    80007820:	00a00493          	li	s1,10
    80007824:	fc1ff06f          	j	800077e4 <consoleintr+0x50>

0000000080007828 <consoleinit>:
    80007828:	fe010113          	addi	sp,sp,-32
    8000782c:	00113c23          	sd	ra,24(sp)
    80007830:	00813823          	sd	s0,16(sp)
    80007834:	00913423          	sd	s1,8(sp)
    80007838:	02010413          	addi	s0,sp,32
    8000783c:	00005497          	auipc	s1,0x5
    80007840:	24c48493          	addi	s1,s1,588 # 8000ca88 <cons>
    80007844:	00048513          	mv	a0,s1
    80007848:	00002597          	auipc	a1,0x2
    8000784c:	f3058593          	addi	a1,a1,-208 # 80009778 <CONSOLE_STATUS+0x768>
    80007850:	00001097          	auipc	ra,0x1
    80007854:	d88080e7          	jalr	-632(ra) # 800085d8 <initlock>
    80007858:	00000097          	auipc	ra,0x0
    8000785c:	7ac080e7          	jalr	1964(ra) # 80008004 <uartinit>
    80007860:	01813083          	ld	ra,24(sp)
    80007864:	01013403          	ld	s0,16(sp)
    80007868:	00000797          	auipc	a5,0x0
    8000786c:	d9c78793          	addi	a5,a5,-612 # 80007604 <consoleread>
    80007870:	0af4bc23          	sd	a5,184(s1)
    80007874:	00000797          	auipc	a5,0x0
    80007878:	cec78793          	addi	a5,a5,-788 # 80007560 <consolewrite>
    8000787c:	0cf4b023          	sd	a5,192(s1)
    80007880:	00813483          	ld	s1,8(sp)
    80007884:	02010113          	addi	sp,sp,32
    80007888:	00008067          	ret

000000008000788c <console_read>:
    8000788c:	ff010113          	addi	sp,sp,-16
    80007890:	00813423          	sd	s0,8(sp)
    80007894:	01010413          	addi	s0,sp,16
    80007898:	00813403          	ld	s0,8(sp)
    8000789c:	00005317          	auipc	t1,0x5
    800078a0:	2a433303          	ld	t1,676(t1) # 8000cb40 <devsw+0x10>
    800078a4:	01010113          	addi	sp,sp,16
    800078a8:	00030067          	jr	t1

00000000800078ac <console_write>:
    800078ac:	ff010113          	addi	sp,sp,-16
    800078b0:	00813423          	sd	s0,8(sp)
    800078b4:	01010413          	addi	s0,sp,16
    800078b8:	00813403          	ld	s0,8(sp)
    800078bc:	00005317          	auipc	t1,0x5
    800078c0:	28c33303          	ld	t1,652(t1) # 8000cb48 <devsw+0x18>
    800078c4:	01010113          	addi	sp,sp,16
    800078c8:	00030067          	jr	t1

00000000800078cc <panic>:
    800078cc:	fe010113          	addi	sp,sp,-32
    800078d0:	00113c23          	sd	ra,24(sp)
    800078d4:	00813823          	sd	s0,16(sp)
    800078d8:	00913423          	sd	s1,8(sp)
    800078dc:	02010413          	addi	s0,sp,32
    800078e0:	00050493          	mv	s1,a0
    800078e4:	00002517          	auipc	a0,0x2
    800078e8:	e9c50513          	addi	a0,a0,-356 # 80009780 <CONSOLE_STATUS+0x770>
    800078ec:	00005797          	auipc	a5,0x5
    800078f0:	2e07ae23          	sw	zero,764(a5) # 8000cbe8 <pr+0x18>
    800078f4:	00000097          	auipc	ra,0x0
    800078f8:	034080e7          	jalr	52(ra) # 80007928 <__printf>
    800078fc:	00048513          	mv	a0,s1
    80007900:	00000097          	auipc	ra,0x0
    80007904:	028080e7          	jalr	40(ra) # 80007928 <__printf>
    80007908:	00002517          	auipc	a0,0x2
    8000790c:	94050513          	addi	a0,a0,-1728 # 80009248 <CONSOLE_STATUS+0x238>
    80007910:	00000097          	auipc	ra,0x0
    80007914:	018080e7          	jalr	24(ra) # 80007928 <__printf>
    80007918:	00100793          	li	a5,1
    8000791c:	00004717          	auipc	a4,0x4
    80007920:	e2f72e23          	sw	a5,-452(a4) # 8000b758 <panicked>
    80007924:	0000006f          	j	80007924 <panic+0x58>

0000000080007928 <__printf>:
    80007928:	f3010113          	addi	sp,sp,-208
    8000792c:	08813023          	sd	s0,128(sp)
    80007930:	07313423          	sd	s3,104(sp)
    80007934:	09010413          	addi	s0,sp,144
    80007938:	05813023          	sd	s8,64(sp)
    8000793c:	08113423          	sd	ra,136(sp)
    80007940:	06913c23          	sd	s1,120(sp)
    80007944:	07213823          	sd	s2,112(sp)
    80007948:	07413023          	sd	s4,96(sp)
    8000794c:	05513c23          	sd	s5,88(sp)
    80007950:	05613823          	sd	s6,80(sp)
    80007954:	05713423          	sd	s7,72(sp)
    80007958:	03913c23          	sd	s9,56(sp)
    8000795c:	03a13823          	sd	s10,48(sp)
    80007960:	03b13423          	sd	s11,40(sp)
    80007964:	00005317          	auipc	t1,0x5
    80007968:	26c30313          	addi	t1,t1,620 # 8000cbd0 <pr>
    8000796c:	01832c03          	lw	s8,24(t1)
    80007970:	00b43423          	sd	a1,8(s0)
    80007974:	00c43823          	sd	a2,16(s0)
    80007978:	00d43c23          	sd	a3,24(s0)
    8000797c:	02e43023          	sd	a4,32(s0)
    80007980:	02f43423          	sd	a5,40(s0)
    80007984:	03043823          	sd	a6,48(s0)
    80007988:	03143c23          	sd	a7,56(s0)
    8000798c:	00050993          	mv	s3,a0
    80007990:	4a0c1663          	bnez	s8,80007e3c <__printf+0x514>
    80007994:	60098c63          	beqz	s3,80007fac <__printf+0x684>
    80007998:	0009c503          	lbu	a0,0(s3)
    8000799c:	00840793          	addi	a5,s0,8
    800079a0:	f6f43c23          	sd	a5,-136(s0)
    800079a4:	00000493          	li	s1,0
    800079a8:	22050063          	beqz	a0,80007bc8 <__printf+0x2a0>
    800079ac:	00002a37          	lui	s4,0x2
    800079b0:	00018ab7          	lui	s5,0x18
    800079b4:	000f4b37          	lui	s6,0xf4
    800079b8:	00989bb7          	lui	s7,0x989
    800079bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800079c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800079c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800079c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800079cc:	00148c9b          	addiw	s9,s1,1
    800079d0:	02500793          	li	a5,37
    800079d4:	01998933          	add	s2,s3,s9
    800079d8:	38f51263          	bne	a0,a5,80007d5c <__printf+0x434>
    800079dc:	00094783          	lbu	a5,0(s2)
    800079e0:	00078c9b          	sext.w	s9,a5
    800079e4:	1e078263          	beqz	a5,80007bc8 <__printf+0x2a0>
    800079e8:	0024849b          	addiw	s1,s1,2
    800079ec:	07000713          	li	a4,112
    800079f0:	00998933          	add	s2,s3,s1
    800079f4:	38e78a63          	beq	a5,a4,80007d88 <__printf+0x460>
    800079f8:	20f76863          	bltu	a4,a5,80007c08 <__printf+0x2e0>
    800079fc:	42a78863          	beq	a5,a0,80007e2c <__printf+0x504>
    80007a00:	06400713          	li	a4,100
    80007a04:	40e79663          	bne	a5,a4,80007e10 <__printf+0x4e8>
    80007a08:	f7843783          	ld	a5,-136(s0)
    80007a0c:	0007a603          	lw	a2,0(a5)
    80007a10:	00878793          	addi	a5,a5,8
    80007a14:	f6f43c23          	sd	a5,-136(s0)
    80007a18:	42064a63          	bltz	a2,80007e4c <__printf+0x524>
    80007a1c:	00a00713          	li	a4,10
    80007a20:	02e677bb          	remuw	a5,a2,a4
    80007a24:	00002d97          	auipc	s11,0x2
    80007a28:	d84d8d93          	addi	s11,s11,-636 # 800097a8 <digits>
    80007a2c:	00900593          	li	a1,9
    80007a30:	0006051b          	sext.w	a0,a2
    80007a34:	00000c93          	li	s9,0
    80007a38:	02079793          	slli	a5,a5,0x20
    80007a3c:	0207d793          	srli	a5,a5,0x20
    80007a40:	00fd87b3          	add	a5,s11,a5
    80007a44:	0007c783          	lbu	a5,0(a5)
    80007a48:	02e656bb          	divuw	a3,a2,a4
    80007a4c:	f8f40023          	sb	a5,-128(s0)
    80007a50:	14c5d863          	bge	a1,a2,80007ba0 <__printf+0x278>
    80007a54:	06300593          	li	a1,99
    80007a58:	00100c93          	li	s9,1
    80007a5c:	02e6f7bb          	remuw	a5,a3,a4
    80007a60:	02079793          	slli	a5,a5,0x20
    80007a64:	0207d793          	srli	a5,a5,0x20
    80007a68:	00fd87b3          	add	a5,s11,a5
    80007a6c:	0007c783          	lbu	a5,0(a5)
    80007a70:	02e6d73b          	divuw	a4,a3,a4
    80007a74:	f8f400a3          	sb	a5,-127(s0)
    80007a78:	12a5f463          	bgeu	a1,a0,80007ba0 <__printf+0x278>
    80007a7c:	00a00693          	li	a3,10
    80007a80:	00900593          	li	a1,9
    80007a84:	02d777bb          	remuw	a5,a4,a3
    80007a88:	02079793          	slli	a5,a5,0x20
    80007a8c:	0207d793          	srli	a5,a5,0x20
    80007a90:	00fd87b3          	add	a5,s11,a5
    80007a94:	0007c503          	lbu	a0,0(a5)
    80007a98:	02d757bb          	divuw	a5,a4,a3
    80007a9c:	f8a40123          	sb	a0,-126(s0)
    80007aa0:	48e5f263          	bgeu	a1,a4,80007f24 <__printf+0x5fc>
    80007aa4:	06300513          	li	a0,99
    80007aa8:	02d7f5bb          	remuw	a1,a5,a3
    80007aac:	02059593          	slli	a1,a1,0x20
    80007ab0:	0205d593          	srli	a1,a1,0x20
    80007ab4:	00bd85b3          	add	a1,s11,a1
    80007ab8:	0005c583          	lbu	a1,0(a1)
    80007abc:	02d7d7bb          	divuw	a5,a5,a3
    80007ac0:	f8b401a3          	sb	a1,-125(s0)
    80007ac4:	48e57263          	bgeu	a0,a4,80007f48 <__printf+0x620>
    80007ac8:	3e700513          	li	a0,999
    80007acc:	02d7f5bb          	remuw	a1,a5,a3
    80007ad0:	02059593          	slli	a1,a1,0x20
    80007ad4:	0205d593          	srli	a1,a1,0x20
    80007ad8:	00bd85b3          	add	a1,s11,a1
    80007adc:	0005c583          	lbu	a1,0(a1)
    80007ae0:	02d7d7bb          	divuw	a5,a5,a3
    80007ae4:	f8b40223          	sb	a1,-124(s0)
    80007ae8:	46e57663          	bgeu	a0,a4,80007f54 <__printf+0x62c>
    80007aec:	02d7f5bb          	remuw	a1,a5,a3
    80007af0:	02059593          	slli	a1,a1,0x20
    80007af4:	0205d593          	srli	a1,a1,0x20
    80007af8:	00bd85b3          	add	a1,s11,a1
    80007afc:	0005c583          	lbu	a1,0(a1)
    80007b00:	02d7d7bb          	divuw	a5,a5,a3
    80007b04:	f8b402a3          	sb	a1,-123(s0)
    80007b08:	46ea7863          	bgeu	s4,a4,80007f78 <__printf+0x650>
    80007b0c:	02d7f5bb          	remuw	a1,a5,a3
    80007b10:	02059593          	slli	a1,a1,0x20
    80007b14:	0205d593          	srli	a1,a1,0x20
    80007b18:	00bd85b3          	add	a1,s11,a1
    80007b1c:	0005c583          	lbu	a1,0(a1)
    80007b20:	02d7d7bb          	divuw	a5,a5,a3
    80007b24:	f8b40323          	sb	a1,-122(s0)
    80007b28:	3eeaf863          	bgeu	s5,a4,80007f18 <__printf+0x5f0>
    80007b2c:	02d7f5bb          	remuw	a1,a5,a3
    80007b30:	02059593          	slli	a1,a1,0x20
    80007b34:	0205d593          	srli	a1,a1,0x20
    80007b38:	00bd85b3          	add	a1,s11,a1
    80007b3c:	0005c583          	lbu	a1,0(a1)
    80007b40:	02d7d7bb          	divuw	a5,a5,a3
    80007b44:	f8b403a3          	sb	a1,-121(s0)
    80007b48:	42eb7e63          	bgeu	s6,a4,80007f84 <__printf+0x65c>
    80007b4c:	02d7f5bb          	remuw	a1,a5,a3
    80007b50:	02059593          	slli	a1,a1,0x20
    80007b54:	0205d593          	srli	a1,a1,0x20
    80007b58:	00bd85b3          	add	a1,s11,a1
    80007b5c:	0005c583          	lbu	a1,0(a1)
    80007b60:	02d7d7bb          	divuw	a5,a5,a3
    80007b64:	f8b40423          	sb	a1,-120(s0)
    80007b68:	42ebfc63          	bgeu	s7,a4,80007fa0 <__printf+0x678>
    80007b6c:	02079793          	slli	a5,a5,0x20
    80007b70:	0207d793          	srli	a5,a5,0x20
    80007b74:	00fd8db3          	add	s11,s11,a5
    80007b78:	000dc703          	lbu	a4,0(s11)
    80007b7c:	00a00793          	li	a5,10
    80007b80:	00900c93          	li	s9,9
    80007b84:	f8e404a3          	sb	a4,-119(s0)
    80007b88:	00065c63          	bgez	a2,80007ba0 <__printf+0x278>
    80007b8c:	f9040713          	addi	a4,s0,-112
    80007b90:	00f70733          	add	a4,a4,a5
    80007b94:	02d00693          	li	a3,45
    80007b98:	fed70823          	sb	a3,-16(a4)
    80007b9c:	00078c93          	mv	s9,a5
    80007ba0:	f8040793          	addi	a5,s0,-128
    80007ba4:	01978cb3          	add	s9,a5,s9
    80007ba8:	f7f40d13          	addi	s10,s0,-129
    80007bac:	000cc503          	lbu	a0,0(s9)
    80007bb0:	fffc8c93          	addi	s9,s9,-1
    80007bb4:	00000097          	auipc	ra,0x0
    80007bb8:	b90080e7          	jalr	-1136(ra) # 80007744 <consputc>
    80007bbc:	ffac98e3          	bne	s9,s10,80007bac <__printf+0x284>
    80007bc0:	00094503          	lbu	a0,0(s2)
    80007bc4:	e00514e3          	bnez	a0,800079cc <__printf+0xa4>
    80007bc8:	1a0c1663          	bnez	s8,80007d74 <__printf+0x44c>
    80007bcc:	08813083          	ld	ra,136(sp)
    80007bd0:	08013403          	ld	s0,128(sp)
    80007bd4:	07813483          	ld	s1,120(sp)
    80007bd8:	07013903          	ld	s2,112(sp)
    80007bdc:	06813983          	ld	s3,104(sp)
    80007be0:	06013a03          	ld	s4,96(sp)
    80007be4:	05813a83          	ld	s5,88(sp)
    80007be8:	05013b03          	ld	s6,80(sp)
    80007bec:	04813b83          	ld	s7,72(sp)
    80007bf0:	04013c03          	ld	s8,64(sp)
    80007bf4:	03813c83          	ld	s9,56(sp)
    80007bf8:	03013d03          	ld	s10,48(sp)
    80007bfc:	02813d83          	ld	s11,40(sp)
    80007c00:	0d010113          	addi	sp,sp,208
    80007c04:	00008067          	ret
    80007c08:	07300713          	li	a4,115
    80007c0c:	1ce78a63          	beq	a5,a4,80007de0 <__printf+0x4b8>
    80007c10:	07800713          	li	a4,120
    80007c14:	1ee79e63          	bne	a5,a4,80007e10 <__printf+0x4e8>
    80007c18:	f7843783          	ld	a5,-136(s0)
    80007c1c:	0007a703          	lw	a4,0(a5)
    80007c20:	00878793          	addi	a5,a5,8
    80007c24:	f6f43c23          	sd	a5,-136(s0)
    80007c28:	28074263          	bltz	a4,80007eac <__printf+0x584>
    80007c2c:	00002d97          	auipc	s11,0x2
    80007c30:	b7cd8d93          	addi	s11,s11,-1156 # 800097a8 <digits>
    80007c34:	00f77793          	andi	a5,a4,15
    80007c38:	00fd87b3          	add	a5,s11,a5
    80007c3c:	0007c683          	lbu	a3,0(a5)
    80007c40:	00f00613          	li	a2,15
    80007c44:	0007079b          	sext.w	a5,a4
    80007c48:	f8d40023          	sb	a3,-128(s0)
    80007c4c:	0047559b          	srliw	a1,a4,0x4
    80007c50:	0047569b          	srliw	a3,a4,0x4
    80007c54:	00000c93          	li	s9,0
    80007c58:	0ee65063          	bge	a2,a4,80007d38 <__printf+0x410>
    80007c5c:	00f6f693          	andi	a3,a3,15
    80007c60:	00dd86b3          	add	a3,s11,a3
    80007c64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c68:	0087d79b          	srliw	a5,a5,0x8
    80007c6c:	00100c93          	li	s9,1
    80007c70:	f8d400a3          	sb	a3,-127(s0)
    80007c74:	0cb67263          	bgeu	a2,a1,80007d38 <__printf+0x410>
    80007c78:	00f7f693          	andi	a3,a5,15
    80007c7c:	00dd86b3          	add	a3,s11,a3
    80007c80:	0006c583          	lbu	a1,0(a3)
    80007c84:	00f00613          	li	a2,15
    80007c88:	0047d69b          	srliw	a3,a5,0x4
    80007c8c:	f8b40123          	sb	a1,-126(s0)
    80007c90:	0047d593          	srli	a1,a5,0x4
    80007c94:	28f67e63          	bgeu	a2,a5,80007f30 <__printf+0x608>
    80007c98:	00f6f693          	andi	a3,a3,15
    80007c9c:	00dd86b3          	add	a3,s11,a3
    80007ca0:	0006c503          	lbu	a0,0(a3)
    80007ca4:	0087d813          	srli	a6,a5,0x8
    80007ca8:	0087d69b          	srliw	a3,a5,0x8
    80007cac:	f8a401a3          	sb	a0,-125(s0)
    80007cb0:	28b67663          	bgeu	a2,a1,80007f3c <__printf+0x614>
    80007cb4:	00f6f693          	andi	a3,a3,15
    80007cb8:	00dd86b3          	add	a3,s11,a3
    80007cbc:	0006c583          	lbu	a1,0(a3)
    80007cc0:	00c7d513          	srli	a0,a5,0xc
    80007cc4:	00c7d69b          	srliw	a3,a5,0xc
    80007cc8:	f8b40223          	sb	a1,-124(s0)
    80007ccc:	29067a63          	bgeu	a2,a6,80007f60 <__printf+0x638>
    80007cd0:	00f6f693          	andi	a3,a3,15
    80007cd4:	00dd86b3          	add	a3,s11,a3
    80007cd8:	0006c583          	lbu	a1,0(a3)
    80007cdc:	0107d813          	srli	a6,a5,0x10
    80007ce0:	0107d69b          	srliw	a3,a5,0x10
    80007ce4:	f8b402a3          	sb	a1,-123(s0)
    80007ce8:	28a67263          	bgeu	a2,a0,80007f6c <__printf+0x644>
    80007cec:	00f6f693          	andi	a3,a3,15
    80007cf0:	00dd86b3          	add	a3,s11,a3
    80007cf4:	0006c683          	lbu	a3,0(a3)
    80007cf8:	0147d79b          	srliw	a5,a5,0x14
    80007cfc:	f8d40323          	sb	a3,-122(s0)
    80007d00:	21067663          	bgeu	a2,a6,80007f0c <__printf+0x5e4>
    80007d04:	02079793          	slli	a5,a5,0x20
    80007d08:	0207d793          	srli	a5,a5,0x20
    80007d0c:	00fd8db3          	add	s11,s11,a5
    80007d10:	000dc683          	lbu	a3,0(s11)
    80007d14:	00800793          	li	a5,8
    80007d18:	00700c93          	li	s9,7
    80007d1c:	f8d403a3          	sb	a3,-121(s0)
    80007d20:	00075c63          	bgez	a4,80007d38 <__printf+0x410>
    80007d24:	f9040713          	addi	a4,s0,-112
    80007d28:	00f70733          	add	a4,a4,a5
    80007d2c:	02d00693          	li	a3,45
    80007d30:	fed70823          	sb	a3,-16(a4)
    80007d34:	00078c93          	mv	s9,a5
    80007d38:	f8040793          	addi	a5,s0,-128
    80007d3c:	01978cb3          	add	s9,a5,s9
    80007d40:	f7f40d13          	addi	s10,s0,-129
    80007d44:	000cc503          	lbu	a0,0(s9)
    80007d48:	fffc8c93          	addi	s9,s9,-1
    80007d4c:	00000097          	auipc	ra,0x0
    80007d50:	9f8080e7          	jalr	-1544(ra) # 80007744 <consputc>
    80007d54:	ff9d18e3          	bne	s10,s9,80007d44 <__printf+0x41c>
    80007d58:	0100006f          	j	80007d68 <__printf+0x440>
    80007d5c:	00000097          	auipc	ra,0x0
    80007d60:	9e8080e7          	jalr	-1560(ra) # 80007744 <consputc>
    80007d64:	000c8493          	mv	s1,s9
    80007d68:	00094503          	lbu	a0,0(s2)
    80007d6c:	c60510e3          	bnez	a0,800079cc <__printf+0xa4>
    80007d70:	e40c0ee3          	beqz	s8,80007bcc <__printf+0x2a4>
    80007d74:	00005517          	auipc	a0,0x5
    80007d78:	e5c50513          	addi	a0,a0,-420 # 8000cbd0 <pr>
    80007d7c:	00001097          	auipc	ra,0x1
    80007d80:	94c080e7          	jalr	-1716(ra) # 800086c8 <release>
    80007d84:	e49ff06f          	j	80007bcc <__printf+0x2a4>
    80007d88:	f7843783          	ld	a5,-136(s0)
    80007d8c:	03000513          	li	a0,48
    80007d90:	01000d13          	li	s10,16
    80007d94:	00878713          	addi	a4,a5,8
    80007d98:	0007bc83          	ld	s9,0(a5)
    80007d9c:	f6e43c23          	sd	a4,-136(s0)
    80007da0:	00000097          	auipc	ra,0x0
    80007da4:	9a4080e7          	jalr	-1628(ra) # 80007744 <consputc>
    80007da8:	07800513          	li	a0,120
    80007dac:	00000097          	auipc	ra,0x0
    80007db0:	998080e7          	jalr	-1640(ra) # 80007744 <consputc>
    80007db4:	00002d97          	auipc	s11,0x2
    80007db8:	9f4d8d93          	addi	s11,s11,-1548 # 800097a8 <digits>
    80007dbc:	03ccd793          	srli	a5,s9,0x3c
    80007dc0:	00fd87b3          	add	a5,s11,a5
    80007dc4:	0007c503          	lbu	a0,0(a5)
    80007dc8:	fffd0d1b          	addiw	s10,s10,-1
    80007dcc:	004c9c93          	slli	s9,s9,0x4
    80007dd0:	00000097          	auipc	ra,0x0
    80007dd4:	974080e7          	jalr	-1676(ra) # 80007744 <consputc>
    80007dd8:	fe0d12e3          	bnez	s10,80007dbc <__printf+0x494>
    80007ddc:	f8dff06f          	j	80007d68 <__printf+0x440>
    80007de0:	f7843783          	ld	a5,-136(s0)
    80007de4:	0007bc83          	ld	s9,0(a5)
    80007de8:	00878793          	addi	a5,a5,8
    80007dec:	f6f43c23          	sd	a5,-136(s0)
    80007df0:	000c9a63          	bnez	s9,80007e04 <__printf+0x4dc>
    80007df4:	1080006f          	j	80007efc <__printf+0x5d4>
    80007df8:	001c8c93          	addi	s9,s9,1
    80007dfc:	00000097          	auipc	ra,0x0
    80007e00:	948080e7          	jalr	-1720(ra) # 80007744 <consputc>
    80007e04:	000cc503          	lbu	a0,0(s9)
    80007e08:	fe0518e3          	bnez	a0,80007df8 <__printf+0x4d0>
    80007e0c:	f5dff06f          	j	80007d68 <__printf+0x440>
    80007e10:	02500513          	li	a0,37
    80007e14:	00000097          	auipc	ra,0x0
    80007e18:	930080e7          	jalr	-1744(ra) # 80007744 <consputc>
    80007e1c:	000c8513          	mv	a0,s9
    80007e20:	00000097          	auipc	ra,0x0
    80007e24:	924080e7          	jalr	-1756(ra) # 80007744 <consputc>
    80007e28:	f41ff06f          	j	80007d68 <__printf+0x440>
    80007e2c:	02500513          	li	a0,37
    80007e30:	00000097          	auipc	ra,0x0
    80007e34:	914080e7          	jalr	-1772(ra) # 80007744 <consputc>
    80007e38:	f31ff06f          	j	80007d68 <__printf+0x440>
    80007e3c:	00030513          	mv	a0,t1
    80007e40:	00000097          	auipc	ra,0x0
    80007e44:	7bc080e7          	jalr	1980(ra) # 800085fc <acquire>
    80007e48:	b4dff06f          	j	80007994 <__printf+0x6c>
    80007e4c:	40c0053b          	negw	a0,a2
    80007e50:	00a00713          	li	a4,10
    80007e54:	02e576bb          	remuw	a3,a0,a4
    80007e58:	00002d97          	auipc	s11,0x2
    80007e5c:	950d8d93          	addi	s11,s11,-1712 # 800097a8 <digits>
    80007e60:	ff700593          	li	a1,-9
    80007e64:	02069693          	slli	a3,a3,0x20
    80007e68:	0206d693          	srli	a3,a3,0x20
    80007e6c:	00dd86b3          	add	a3,s11,a3
    80007e70:	0006c683          	lbu	a3,0(a3)
    80007e74:	02e557bb          	divuw	a5,a0,a4
    80007e78:	f8d40023          	sb	a3,-128(s0)
    80007e7c:	10b65e63          	bge	a2,a1,80007f98 <__printf+0x670>
    80007e80:	06300593          	li	a1,99
    80007e84:	02e7f6bb          	remuw	a3,a5,a4
    80007e88:	02069693          	slli	a3,a3,0x20
    80007e8c:	0206d693          	srli	a3,a3,0x20
    80007e90:	00dd86b3          	add	a3,s11,a3
    80007e94:	0006c683          	lbu	a3,0(a3)
    80007e98:	02e7d73b          	divuw	a4,a5,a4
    80007e9c:	00200793          	li	a5,2
    80007ea0:	f8d400a3          	sb	a3,-127(s0)
    80007ea4:	bca5ece3          	bltu	a1,a0,80007a7c <__printf+0x154>
    80007ea8:	ce5ff06f          	j	80007b8c <__printf+0x264>
    80007eac:	40e007bb          	negw	a5,a4
    80007eb0:	00002d97          	auipc	s11,0x2
    80007eb4:	8f8d8d93          	addi	s11,s11,-1800 # 800097a8 <digits>
    80007eb8:	00f7f693          	andi	a3,a5,15
    80007ebc:	00dd86b3          	add	a3,s11,a3
    80007ec0:	0006c583          	lbu	a1,0(a3)
    80007ec4:	ff100613          	li	a2,-15
    80007ec8:	0047d69b          	srliw	a3,a5,0x4
    80007ecc:	f8b40023          	sb	a1,-128(s0)
    80007ed0:	0047d59b          	srliw	a1,a5,0x4
    80007ed4:	0ac75e63          	bge	a4,a2,80007f90 <__printf+0x668>
    80007ed8:	00f6f693          	andi	a3,a3,15
    80007edc:	00dd86b3          	add	a3,s11,a3
    80007ee0:	0006c603          	lbu	a2,0(a3)
    80007ee4:	00f00693          	li	a3,15
    80007ee8:	0087d79b          	srliw	a5,a5,0x8
    80007eec:	f8c400a3          	sb	a2,-127(s0)
    80007ef0:	d8b6e4e3          	bltu	a3,a1,80007c78 <__printf+0x350>
    80007ef4:	00200793          	li	a5,2
    80007ef8:	e2dff06f          	j	80007d24 <__printf+0x3fc>
    80007efc:	00002c97          	auipc	s9,0x2
    80007f00:	88cc8c93          	addi	s9,s9,-1908 # 80009788 <CONSOLE_STATUS+0x778>
    80007f04:	02800513          	li	a0,40
    80007f08:	ef1ff06f          	j	80007df8 <__printf+0x4d0>
    80007f0c:	00700793          	li	a5,7
    80007f10:	00600c93          	li	s9,6
    80007f14:	e0dff06f          	j	80007d20 <__printf+0x3f8>
    80007f18:	00700793          	li	a5,7
    80007f1c:	00600c93          	li	s9,6
    80007f20:	c69ff06f          	j	80007b88 <__printf+0x260>
    80007f24:	00300793          	li	a5,3
    80007f28:	00200c93          	li	s9,2
    80007f2c:	c5dff06f          	j	80007b88 <__printf+0x260>
    80007f30:	00300793          	li	a5,3
    80007f34:	00200c93          	li	s9,2
    80007f38:	de9ff06f          	j	80007d20 <__printf+0x3f8>
    80007f3c:	00400793          	li	a5,4
    80007f40:	00300c93          	li	s9,3
    80007f44:	dddff06f          	j	80007d20 <__printf+0x3f8>
    80007f48:	00400793          	li	a5,4
    80007f4c:	00300c93          	li	s9,3
    80007f50:	c39ff06f          	j	80007b88 <__printf+0x260>
    80007f54:	00500793          	li	a5,5
    80007f58:	00400c93          	li	s9,4
    80007f5c:	c2dff06f          	j	80007b88 <__printf+0x260>
    80007f60:	00500793          	li	a5,5
    80007f64:	00400c93          	li	s9,4
    80007f68:	db9ff06f          	j	80007d20 <__printf+0x3f8>
    80007f6c:	00600793          	li	a5,6
    80007f70:	00500c93          	li	s9,5
    80007f74:	dadff06f          	j	80007d20 <__printf+0x3f8>
    80007f78:	00600793          	li	a5,6
    80007f7c:	00500c93          	li	s9,5
    80007f80:	c09ff06f          	j	80007b88 <__printf+0x260>
    80007f84:	00800793          	li	a5,8
    80007f88:	00700c93          	li	s9,7
    80007f8c:	bfdff06f          	j	80007b88 <__printf+0x260>
    80007f90:	00100793          	li	a5,1
    80007f94:	d91ff06f          	j	80007d24 <__printf+0x3fc>
    80007f98:	00100793          	li	a5,1
    80007f9c:	bf1ff06f          	j	80007b8c <__printf+0x264>
    80007fa0:	00900793          	li	a5,9
    80007fa4:	00800c93          	li	s9,8
    80007fa8:	be1ff06f          	j	80007b88 <__printf+0x260>
    80007fac:	00001517          	auipc	a0,0x1
    80007fb0:	7e450513          	addi	a0,a0,2020 # 80009790 <CONSOLE_STATUS+0x780>
    80007fb4:	00000097          	auipc	ra,0x0
    80007fb8:	918080e7          	jalr	-1768(ra) # 800078cc <panic>

0000000080007fbc <printfinit>:
    80007fbc:	fe010113          	addi	sp,sp,-32
    80007fc0:	00813823          	sd	s0,16(sp)
    80007fc4:	00913423          	sd	s1,8(sp)
    80007fc8:	00113c23          	sd	ra,24(sp)
    80007fcc:	02010413          	addi	s0,sp,32
    80007fd0:	00005497          	auipc	s1,0x5
    80007fd4:	c0048493          	addi	s1,s1,-1024 # 8000cbd0 <pr>
    80007fd8:	00048513          	mv	a0,s1
    80007fdc:	00001597          	auipc	a1,0x1
    80007fe0:	7c458593          	addi	a1,a1,1988 # 800097a0 <CONSOLE_STATUS+0x790>
    80007fe4:	00000097          	auipc	ra,0x0
    80007fe8:	5f4080e7          	jalr	1524(ra) # 800085d8 <initlock>
    80007fec:	01813083          	ld	ra,24(sp)
    80007ff0:	01013403          	ld	s0,16(sp)
    80007ff4:	0004ac23          	sw	zero,24(s1)
    80007ff8:	00813483          	ld	s1,8(sp)
    80007ffc:	02010113          	addi	sp,sp,32
    80008000:	00008067          	ret

0000000080008004 <uartinit>:
    80008004:	ff010113          	addi	sp,sp,-16
    80008008:	00813423          	sd	s0,8(sp)
    8000800c:	01010413          	addi	s0,sp,16
    80008010:	100007b7          	lui	a5,0x10000
    80008014:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008018:	f8000713          	li	a4,-128
    8000801c:	00e781a3          	sb	a4,3(a5)
    80008020:	00300713          	li	a4,3
    80008024:	00e78023          	sb	a4,0(a5)
    80008028:	000780a3          	sb	zero,1(a5)
    8000802c:	00e781a3          	sb	a4,3(a5)
    80008030:	00700693          	li	a3,7
    80008034:	00d78123          	sb	a3,2(a5)
    80008038:	00e780a3          	sb	a4,1(a5)
    8000803c:	00813403          	ld	s0,8(sp)
    80008040:	01010113          	addi	sp,sp,16
    80008044:	00008067          	ret

0000000080008048 <uartputc>:
    80008048:	00003797          	auipc	a5,0x3
    8000804c:	7107a783          	lw	a5,1808(a5) # 8000b758 <panicked>
    80008050:	00078463          	beqz	a5,80008058 <uartputc+0x10>
    80008054:	0000006f          	j	80008054 <uartputc+0xc>
    80008058:	fd010113          	addi	sp,sp,-48
    8000805c:	02813023          	sd	s0,32(sp)
    80008060:	00913c23          	sd	s1,24(sp)
    80008064:	01213823          	sd	s2,16(sp)
    80008068:	01313423          	sd	s3,8(sp)
    8000806c:	02113423          	sd	ra,40(sp)
    80008070:	03010413          	addi	s0,sp,48
    80008074:	00003917          	auipc	s2,0x3
    80008078:	6ec90913          	addi	s2,s2,1772 # 8000b760 <uart_tx_r>
    8000807c:	00093783          	ld	a5,0(s2)
    80008080:	00003497          	auipc	s1,0x3
    80008084:	6e848493          	addi	s1,s1,1768 # 8000b768 <uart_tx_w>
    80008088:	0004b703          	ld	a4,0(s1)
    8000808c:	02078693          	addi	a3,a5,32
    80008090:	00050993          	mv	s3,a0
    80008094:	02e69c63          	bne	a3,a4,800080cc <uartputc+0x84>
    80008098:	00001097          	auipc	ra,0x1
    8000809c:	834080e7          	jalr	-1996(ra) # 800088cc <push_on>
    800080a0:	00093783          	ld	a5,0(s2)
    800080a4:	0004b703          	ld	a4,0(s1)
    800080a8:	02078793          	addi	a5,a5,32
    800080ac:	00e79463          	bne	a5,a4,800080b4 <uartputc+0x6c>
    800080b0:	0000006f          	j	800080b0 <uartputc+0x68>
    800080b4:	00001097          	auipc	ra,0x1
    800080b8:	88c080e7          	jalr	-1908(ra) # 80008940 <pop_on>
    800080bc:	00093783          	ld	a5,0(s2)
    800080c0:	0004b703          	ld	a4,0(s1)
    800080c4:	02078693          	addi	a3,a5,32
    800080c8:	fce688e3          	beq	a3,a4,80008098 <uartputc+0x50>
    800080cc:	01f77693          	andi	a3,a4,31
    800080d0:	00005597          	auipc	a1,0x5
    800080d4:	b2058593          	addi	a1,a1,-1248 # 8000cbf0 <uart_tx_buf>
    800080d8:	00d586b3          	add	a3,a1,a3
    800080dc:	00170713          	addi	a4,a4,1
    800080e0:	01368023          	sb	s3,0(a3)
    800080e4:	00e4b023          	sd	a4,0(s1)
    800080e8:	10000637          	lui	a2,0x10000
    800080ec:	02f71063          	bne	a4,a5,8000810c <uartputc+0xc4>
    800080f0:	0340006f          	j	80008124 <uartputc+0xdc>
    800080f4:	00074703          	lbu	a4,0(a4)
    800080f8:	00f93023          	sd	a5,0(s2)
    800080fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008100:	00093783          	ld	a5,0(s2)
    80008104:	0004b703          	ld	a4,0(s1)
    80008108:	00f70e63          	beq	a4,a5,80008124 <uartputc+0xdc>
    8000810c:	00564683          	lbu	a3,5(a2)
    80008110:	01f7f713          	andi	a4,a5,31
    80008114:	00e58733          	add	a4,a1,a4
    80008118:	0206f693          	andi	a3,a3,32
    8000811c:	00178793          	addi	a5,a5,1
    80008120:	fc069ae3          	bnez	a3,800080f4 <uartputc+0xac>
    80008124:	02813083          	ld	ra,40(sp)
    80008128:	02013403          	ld	s0,32(sp)
    8000812c:	01813483          	ld	s1,24(sp)
    80008130:	01013903          	ld	s2,16(sp)
    80008134:	00813983          	ld	s3,8(sp)
    80008138:	03010113          	addi	sp,sp,48
    8000813c:	00008067          	ret

0000000080008140 <uartputc_sync>:
    80008140:	ff010113          	addi	sp,sp,-16
    80008144:	00813423          	sd	s0,8(sp)
    80008148:	01010413          	addi	s0,sp,16
    8000814c:	00003717          	auipc	a4,0x3
    80008150:	60c72703          	lw	a4,1548(a4) # 8000b758 <panicked>
    80008154:	02071663          	bnez	a4,80008180 <uartputc_sync+0x40>
    80008158:	00050793          	mv	a5,a0
    8000815c:	100006b7          	lui	a3,0x10000
    80008160:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008164:	02077713          	andi	a4,a4,32
    80008168:	fe070ce3          	beqz	a4,80008160 <uartputc_sync+0x20>
    8000816c:	0ff7f793          	andi	a5,a5,255
    80008170:	00f68023          	sb	a5,0(a3)
    80008174:	00813403          	ld	s0,8(sp)
    80008178:	01010113          	addi	sp,sp,16
    8000817c:	00008067          	ret
    80008180:	0000006f          	j	80008180 <uartputc_sync+0x40>

0000000080008184 <uartstart>:
    80008184:	ff010113          	addi	sp,sp,-16
    80008188:	00813423          	sd	s0,8(sp)
    8000818c:	01010413          	addi	s0,sp,16
    80008190:	00003617          	auipc	a2,0x3
    80008194:	5d060613          	addi	a2,a2,1488 # 8000b760 <uart_tx_r>
    80008198:	00003517          	auipc	a0,0x3
    8000819c:	5d050513          	addi	a0,a0,1488 # 8000b768 <uart_tx_w>
    800081a0:	00063783          	ld	a5,0(a2)
    800081a4:	00053703          	ld	a4,0(a0)
    800081a8:	04f70263          	beq	a4,a5,800081ec <uartstart+0x68>
    800081ac:	100005b7          	lui	a1,0x10000
    800081b0:	00005817          	auipc	a6,0x5
    800081b4:	a4080813          	addi	a6,a6,-1472 # 8000cbf0 <uart_tx_buf>
    800081b8:	01c0006f          	j	800081d4 <uartstart+0x50>
    800081bc:	0006c703          	lbu	a4,0(a3)
    800081c0:	00f63023          	sd	a5,0(a2)
    800081c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081c8:	00063783          	ld	a5,0(a2)
    800081cc:	00053703          	ld	a4,0(a0)
    800081d0:	00f70e63          	beq	a4,a5,800081ec <uartstart+0x68>
    800081d4:	01f7f713          	andi	a4,a5,31
    800081d8:	00e806b3          	add	a3,a6,a4
    800081dc:	0055c703          	lbu	a4,5(a1)
    800081e0:	00178793          	addi	a5,a5,1
    800081e4:	02077713          	andi	a4,a4,32
    800081e8:	fc071ae3          	bnez	a4,800081bc <uartstart+0x38>
    800081ec:	00813403          	ld	s0,8(sp)
    800081f0:	01010113          	addi	sp,sp,16
    800081f4:	00008067          	ret

00000000800081f8 <uartgetc>:
    800081f8:	ff010113          	addi	sp,sp,-16
    800081fc:	00813423          	sd	s0,8(sp)
    80008200:	01010413          	addi	s0,sp,16
    80008204:	10000737          	lui	a4,0x10000
    80008208:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000820c:	0017f793          	andi	a5,a5,1
    80008210:	00078c63          	beqz	a5,80008228 <uartgetc+0x30>
    80008214:	00074503          	lbu	a0,0(a4)
    80008218:	0ff57513          	andi	a0,a0,255
    8000821c:	00813403          	ld	s0,8(sp)
    80008220:	01010113          	addi	sp,sp,16
    80008224:	00008067          	ret
    80008228:	fff00513          	li	a0,-1
    8000822c:	ff1ff06f          	j	8000821c <uartgetc+0x24>

0000000080008230 <uartintr>:
    80008230:	100007b7          	lui	a5,0x10000
    80008234:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008238:	0017f793          	andi	a5,a5,1
    8000823c:	0a078463          	beqz	a5,800082e4 <uartintr+0xb4>
    80008240:	fe010113          	addi	sp,sp,-32
    80008244:	00813823          	sd	s0,16(sp)
    80008248:	00913423          	sd	s1,8(sp)
    8000824c:	00113c23          	sd	ra,24(sp)
    80008250:	02010413          	addi	s0,sp,32
    80008254:	100004b7          	lui	s1,0x10000
    80008258:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000825c:	0ff57513          	andi	a0,a0,255
    80008260:	fffff097          	auipc	ra,0xfffff
    80008264:	534080e7          	jalr	1332(ra) # 80007794 <consoleintr>
    80008268:	0054c783          	lbu	a5,5(s1)
    8000826c:	0017f793          	andi	a5,a5,1
    80008270:	fe0794e3          	bnez	a5,80008258 <uartintr+0x28>
    80008274:	00003617          	auipc	a2,0x3
    80008278:	4ec60613          	addi	a2,a2,1260 # 8000b760 <uart_tx_r>
    8000827c:	00003517          	auipc	a0,0x3
    80008280:	4ec50513          	addi	a0,a0,1260 # 8000b768 <uart_tx_w>
    80008284:	00063783          	ld	a5,0(a2)
    80008288:	00053703          	ld	a4,0(a0)
    8000828c:	04f70263          	beq	a4,a5,800082d0 <uartintr+0xa0>
    80008290:	100005b7          	lui	a1,0x10000
    80008294:	00005817          	auipc	a6,0x5
    80008298:	95c80813          	addi	a6,a6,-1700 # 8000cbf0 <uart_tx_buf>
    8000829c:	01c0006f          	j	800082b8 <uartintr+0x88>
    800082a0:	0006c703          	lbu	a4,0(a3)
    800082a4:	00f63023          	sd	a5,0(a2)
    800082a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082ac:	00063783          	ld	a5,0(a2)
    800082b0:	00053703          	ld	a4,0(a0)
    800082b4:	00f70e63          	beq	a4,a5,800082d0 <uartintr+0xa0>
    800082b8:	01f7f713          	andi	a4,a5,31
    800082bc:	00e806b3          	add	a3,a6,a4
    800082c0:	0055c703          	lbu	a4,5(a1)
    800082c4:	00178793          	addi	a5,a5,1
    800082c8:	02077713          	andi	a4,a4,32
    800082cc:	fc071ae3          	bnez	a4,800082a0 <uartintr+0x70>
    800082d0:	01813083          	ld	ra,24(sp)
    800082d4:	01013403          	ld	s0,16(sp)
    800082d8:	00813483          	ld	s1,8(sp)
    800082dc:	02010113          	addi	sp,sp,32
    800082e0:	00008067          	ret
    800082e4:	00003617          	auipc	a2,0x3
    800082e8:	47c60613          	addi	a2,a2,1148 # 8000b760 <uart_tx_r>
    800082ec:	00003517          	auipc	a0,0x3
    800082f0:	47c50513          	addi	a0,a0,1148 # 8000b768 <uart_tx_w>
    800082f4:	00063783          	ld	a5,0(a2)
    800082f8:	00053703          	ld	a4,0(a0)
    800082fc:	04f70263          	beq	a4,a5,80008340 <uartintr+0x110>
    80008300:	100005b7          	lui	a1,0x10000
    80008304:	00005817          	auipc	a6,0x5
    80008308:	8ec80813          	addi	a6,a6,-1812 # 8000cbf0 <uart_tx_buf>
    8000830c:	01c0006f          	j	80008328 <uartintr+0xf8>
    80008310:	0006c703          	lbu	a4,0(a3)
    80008314:	00f63023          	sd	a5,0(a2)
    80008318:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000831c:	00063783          	ld	a5,0(a2)
    80008320:	00053703          	ld	a4,0(a0)
    80008324:	02f70063          	beq	a4,a5,80008344 <uartintr+0x114>
    80008328:	01f7f713          	andi	a4,a5,31
    8000832c:	00e806b3          	add	a3,a6,a4
    80008330:	0055c703          	lbu	a4,5(a1)
    80008334:	00178793          	addi	a5,a5,1
    80008338:	02077713          	andi	a4,a4,32
    8000833c:	fc071ae3          	bnez	a4,80008310 <uartintr+0xe0>
    80008340:	00008067          	ret
    80008344:	00008067          	ret

0000000080008348 <kinit>:
    80008348:	fc010113          	addi	sp,sp,-64
    8000834c:	02913423          	sd	s1,40(sp)
    80008350:	fffff7b7          	lui	a5,0xfffff
    80008354:	00006497          	auipc	s1,0x6
    80008358:	8bb48493          	addi	s1,s1,-1861 # 8000dc0f <end+0xfff>
    8000835c:	02813823          	sd	s0,48(sp)
    80008360:	01313c23          	sd	s3,24(sp)
    80008364:	00f4f4b3          	and	s1,s1,a5
    80008368:	02113c23          	sd	ra,56(sp)
    8000836c:	03213023          	sd	s2,32(sp)
    80008370:	01413823          	sd	s4,16(sp)
    80008374:	01513423          	sd	s5,8(sp)
    80008378:	04010413          	addi	s0,sp,64
    8000837c:	000017b7          	lui	a5,0x1
    80008380:	01100993          	li	s3,17
    80008384:	00f487b3          	add	a5,s1,a5
    80008388:	01b99993          	slli	s3,s3,0x1b
    8000838c:	06f9e063          	bltu	s3,a5,800083ec <kinit+0xa4>
    80008390:	00005a97          	auipc	s5,0x5
    80008394:	880a8a93          	addi	s5,s5,-1920 # 8000cc10 <end>
    80008398:	0754ec63          	bltu	s1,s5,80008410 <kinit+0xc8>
    8000839c:	0734fa63          	bgeu	s1,s3,80008410 <kinit+0xc8>
    800083a0:	00088a37          	lui	s4,0x88
    800083a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800083a8:	00003917          	auipc	s2,0x3
    800083ac:	3c890913          	addi	s2,s2,968 # 8000b770 <kmem>
    800083b0:	00ca1a13          	slli	s4,s4,0xc
    800083b4:	0140006f          	j	800083c8 <kinit+0x80>
    800083b8:	000017b7          	lui	a5,0x1
    800083bc:	00f484b3          	add	s1,s1,a5
    800083c0:	0554e863          	bltu	s1,s5,80008410 <kinit+0xc8>
    800083c4:	0534f663          	bgeu	s1,s3,80008410 <kinit+0xc8>
    800083c8:	00001637          	lui	a2,0x1
    800083cc:	00100593          	li	a1,1
    800083d0:	00048513          	mv	a0,s1
    800083d4:	00000097          	auipc	ra,0x0
    800083d8:	5e4080e7          	jalr	1508(ra) # 800089b8 <__memset>
    800083dc:	00093783          	ld	a5,0(s2)
    800083e0:	00f4b023          	sd	a5,0(s1)
    800083e4:	00993023          	sd	s1,0(s2)
    800083e8:	fd4498e3          	bne	s1,s4,800083b8 <kinit+0x70>
    800083ec:	03813083          	ld	ra,56(sp)
    800083f0:	03013403          	ld	s0,48(sp)
    800083f4:	02813483          	ld	s1,40(sp)
    800083f8:	02013903          	ld	s2,32(sp)
    800083fc:	01813983          	ld	s3,24(sp)
    80008400:	01013a03          	ld	s4,16(sp)
    80008404:	00813a83          	ld	s5,8(sp)
    80008408:	04010113          	addi	sp,sp,64
    8000840c:	00008067          	ret
    80008410:	00001517          	auipc	a0,0x1
    80008414:	3b050513          	addi	a0,a0,944 # 800097c0 <digits+0x18>
    80008418:	fffff097          	auipc	ra,0xfffff
    8000841c:	4b4080e7          	jalr	1204(ra) # 800078cc <panic>

0000000080008420 <freerange>:
    80008420:	fc010113          	addi	sp,sp,-64
    80008424:	000017b7          	lui	a5,0x1
    80008428:	02913423          	sd	s1,40(sp)
    8000842c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008430:	009504b3          	add	s1,a0,s1
    80008434:	fffff537          	lui	a0,0xfffff
    80008438:	02813823          	sd	s0,48(sp)
    8000843c:	02113c23          	sd	ra,56(sp)
    80008440:	03213023          	sd	s2,32(sp)
    80008444:	01313c23          	sd	s3,24(sp)
    80008448:	01413823          	sd	s4,16(sp)
    8000844c:	01513423          	sd	s5,8(sp)
    80008450:	01613023          	sd	s6,0(sp)
    80008454:	04010413          	addi	s0,sp,64
    80008458:	00a4f4b3          	and	s1,s1,a0
    8000845c:	00f487b3          	add	a5,s1,a5
    80008460:	06f5e463          	bltu	a1,a5,800084c8 <freerange+0xa8>
    80008464:	00004a97          	auipc	s5,0x4
    80008468:	7aca8a93          	addi	s5,s5,1964 # 8000cc10 <end>
    8000846c:	0954e263          	bltu	s1,s5,800084f0 <freerange+0xd0>
    80008470:	01100993          	li	s3,17
    80008474:	01b99993          	slli	s3,s3,0x1b
    80008478:	0734fc63          	bgeu	s1,s3,800084f0 <freerange+0xd0>
    8000847c:	00058a13          	mv	s4,a1
    80008480:	00003917          	auipc	s2,0x3
    80008484:	2f090913          	addi	s2,s2,752 # 8000b770 <kmem>
    80008488:	00002b37          	lui	s6,0x2
    8000848c:	0140006f          	j	800084a0 <freerange+0x80>
    80008490:	000017b7          	lui	a5,0x1
    80008494:	00f484b3          	add	s1,s1,a5
    80008498:	0554ec63          	bltu	s1,s5,800084f0 <freerange+0xd0>
    8000849c:	0534fa63          	bgeu	s1,s3,800084f0 <freerange+0xd0>
    800084a0:	00001637          	lui	a2,0x1
    800084a4:	00100593          	li	a1,1
    800084a8:	00048513          	mv	a0,s1
    800084ac:	00000097          	auipc	ra,0x0
    800084b0:	50c080e7          	jalr	1292(ra) # 800089b8 <__memset>
    800084b4:	00093703          	ld	a4,0(s2)
    800084b8:	016487b3          	add	a5,s1,s6
    800084bc:	00e4b023          	sd	a4,0(s1)
    800084c0:	00993023          	sd	s1,0(s2)
    800084c4:	fcfa76e3          	bgeu	s4,a5,80008490 <freerange+0x70>
    800084c8:	03813083          	ld	ra,56(sp)
    800084cc:	03013403          	ld	s0,48(sp)
    800084d0:	02813483          	ld	s1,40(sp)
    800084d4:	02013903          	ld	s2,32(sp)
    800084d8:	01813983          	ld	s3,24(sp)
    800084dc:	01013a03          	ld	s4,16(sp)
    800084e0:	00813a83          	ld	s5,8(sp)
    800084e4:	00013b03          	ld	s6,0(sp)
    800084e8:	04010113          	addi	sp,sp,64
    800084ec:	00008067          	ret
    800084f0:	00001517          	auipc	a0,0x1
    800084f4:	2d050513          	addi	a0,a0,720 # 800097c0 <digits+0x18>
    800084f8:	fffff097          	auipc	ra,0xfffff
    800084fc:	3d4080e7          	jalr	980(ra) # 800078cc <panic>

0000000080008500 <kfree>:
    80008500:	fe010113          	addi	sp,sp,-32
    80008504:	00813823          	sd	s0,16(sp)
    80008508:	00113c23          	sd	ra,24(sp)
    8000850c:	00913423          	sd	s1,8(sp)
    80008510:	02010413          	addi	s0,sp,32
    80008514:	03451793          	slli	a5,a0,0x34
    80008518:	04079c63          	bnez	a5,80008570 <kfree+0x70>
    8000851c:	00004797          	auipc	a5,0x4
    80008520:	6f478793          	addi	a5,a5,1780 # 8000cc10 <end>
    80008524:	00050493          	mv	s1,a0
    80008528:	04f56463          	bltu	a0,a5,80008570 <kfree+0x70>
    8000852c:	01100793          	li	a5,17
    80008530:	01b79793          	slli	a5,a5,0x1b
    80008534:	02f57e63          	bgeu	a0,a5,80008570 <kfree+0x70>
    80008538:	00001637          	lui	a2,0x1
    8000853c:	00100593          	li	a1,1
    80008540:	00000097          	auipc	ra,0x0
    80008544:	478080e7          	jalr	1144(ra) # 800089b8 <__memset>
    80008548:	00003797          	auipc	a5,0x3
    8000854c:	22878793          	addi	a5,a5,552 # 8000b770 <kmem>
    80008550:	0007b703          	ld	a4,0(a5)
    80008554:	01813083          	ld	ra,24(sp)
    80008558:	01013403          	ld	s0,16(sp)
    8000855c:	00e4b023          	sd	a4,0(s1)
    80008560:	0097b023          	sd	s1,0(a5)
    80008564:	00813483          	ld	s1,8(sp)
    80008568:	02010113          	addi	sp,sp,32
    8000856c:	00008067          	ret
    80008570:	00001517          	auipc	a0,0x1
    80008574:	25050513          	addi	a0,a0,592 # 800097c0 <digits+0x18>
    80008578:	fffff097          	auipc	ra,0xfffff
    8000857c:	354080e7          	jalr	852(ra) # 800078cc <panic>

0000000080008580 <kalloc>:
    80008580:	fe010113          	addi	sp,sp,-32
    80008584:	00813823          	sd	s0,16(sp)
    80008588:	00913423          	sd	s1,8(sp)
    8000858c:	00113c23          	sd	ra,24(sp)
    80008590:	02010413          	addi	s0,sp,32
    80008594:	00003797          	auipc	a5,0x3
    80008598:	1dc78793          	addi	a5,a5,476 # 8000b770 <kmem>
    8000859c:	0007b483          	ld	s1,0(a5)
    800085a0:	02048063          	beqz	s1,800085c0 <kalloc+0x40>
    800085a4:	0004b703          	ld	a4,0(s1)
    800085a8:	00001637          	lui	a2,0x1
    800085ac:	00500593          	li	a1,5
    800085b0:	00048513          	mv	a0,s1
    800085b4:	00e7b023          	sd	a4,0(a5)
    800085b8:	00000097          	auipc	ra,0x0
    800085bc:	400080e7          	jalr	1024(ra) # 800089b8 <__memset>
    800085c0:	01813083          	ld	ra,24(sp)
    800085c4:	01013403          	ld	s0,16(sp)
    800085c8:	00048513          	mv	a0,s1
    800085cc:	00813483          	ld	s1,8(sp)
    800085d0:	02010113          	addi	sp,sp,32
    800085d4:	00008067          	ret

00000000800085d8 <initlock>:
    800085d8:	ff010113          	addi	sp,sp,-16
    800085dc:	00813423          	sd	s0,8(sp)
    800085e0:	01010413          	addi	s0,sp,16
    800085e4:	00813403          	ld	s0,8(sp)
    800085e8:	00b53423          	sd	a1,8(a0)
    800085ec:	00052023          	sw	zero,0(a0)
    800085f0:	00053823          	sd	zero,16(a0)
    800085f4:	01010113          	addi	sp,sp,16
    800085f8:	00008067          	ret

00000000800085fc <acquire>:
    800085fc:	fe010113          	addi	sp,sp,-32
    80008600:	00813823          	sd	s0,16(sp)
    80008604:	00913423          	sd	s1,8(sp)
    80008608:	00113c23          	sd	ra,24(sp)
    8000860c:	01213023          	sd	s2,0(sp)
    80008610:	02010413          	addi	s0,sp,32
    80008614:	00050493          	mv	s1,a0
    80008618:	10002973          	csrr	s2,sstatus
    8000861c:	100027f3          	csrr	a5,sstatus
    80008620:	ffd7f793          	andi	a5,a5,-3
    80008624:	10079073          	csrw	sstatus,a5
    80008628:	fffff097          	auipc	ra,0xfffff
    8000862c:	8e4080e7          	jalr	-1820(ra) # 80006f0c <mycpu>
    80008630:	07852783          	lw	a5,120(a0)
    80008634:	06078e63          	beqz	a5,800086b0 <acquire+0xb4>
    80008638:	fffff097          	auipc	ra,0xfffff
    8000863c:	8d4080e7          	jalr	-1836(ra) # 80006f0c <mycpu>
    80008640:	07852783          	lw	a5,120(a0)
    80008644:	0004a703          	lw	a4,0(s1)
    80008648:	0017879b          	addiw	a5,a5,1
    8000864c:	06f52c23          	sw	a5,120(a0)
    80008650:	04071063          	bnez	a4,80008690 <acquire+0x94>
    80008654:	00100713          	li	a4,1
    80008658:	00070793          	mv	a5,a4
    8000865c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008660:	0007879b          	sext.w	a5,a5
    80008664:	fe079ae3          	bnez	a5,80008658 <acquire+0x5c>
    80008668:	0ff0000f          	fence
    8000866c:	fffff097          	auipc	ra,0xfffff
    80008670:	8a0080e7          	jalr	-1888(ra) # 80006f0c <mycpu>
    80008674:	01813083          	ld	ra,24(sp)
    80008678:	01013403          	ld	s0,16(sp)
    8000867c:	00a4b823          	sd	a0,16(s1)
    80008680:	00013903          	ld	s2,0(sp)
    80008684:	00813483          	ld	s1,8(sp)
    80008688:	02010113          	addi	sp,sp,32
    8000868c:	00008067          	ret
    80008690:	0104b903          	ld	s2,16(s1)
    80008694:	fffff097          	auipc	ra,0xfffff
    80008698:	878080e7          	jalr	-1928(ra) # 80006f0c <mycpu>
    8000869c:	faa91ce3          	bne	s2,a0,80008654 <acquire+0x58>
    800086a0:	00001517          	auipc	a0,0x1
    800086a4:	12850513          	addi	a0,a0,296 # 800097c8 <digits+0x20>
    800086a8:	fffff097          	auipc	ra,0xfffff
    800086ac:	224080e7          	jalr	548(ra) # 800078cc <panic>
    800086b0:	00195913          	srli	s2,s2,0x1
    800086b4:	fffff097          	auipc	ra,0xfffff
    800086b8:	858080e7          	jalr	-1960(ra) # 80006f0c <mycpu>
    800086bc:	00197913          	andi	s2,s2,1
    800086c0:	07252e23          	sw	s2,124(a0)
    800086c4:	f75ff06f          	j	80008638 <acquire+0x3c>

00000000800086c8 <release>:
    800086c8:	fe010113          	addi	sp,sp,-32
    800086cc:	00813823          	sd	s0,16(sp)
    800086d0:	00113c23          	sd	ra,24(sp)
    800086d4:	00913423          	sd	s1,8(sp)
    800086d8:	01213023          	sd	s2,0(sp)
    800086dc:	02010413          	addi	s0,sp,32
    800086e0:	00052783          	lw	a5,0(a0)
    800086e4:	00079a63          	bnez	a5,800086f8 <release+0x30>
    800086e8:	00001517          	auipc	a0,0x1
    800086ec:	0e850513          	addi	a0,a0,232 # 800097d0 <digits+0x28>
    800086f0:	fffff097          	auipc	ra,0xfffff
    800086f4:	1dc080e7          	jalr	476(ra) # 800078cc <panic>
    800086f8:	01053903          	ld	s2,16(a0)
    800086fc:	00050493          	mv	s1,a0
    80008700:	fffff097          	auipc	ra,0xfffff
    80008704:	80c080e7          	jalr	-2036(ra) # 80006f0c <mycpu>
    80008708:	fea910e3          	bne	s2,a0,800086e8 <release+0x20>
    8000870c:	0004b823          	sd	zero,16(s1)
    80008710:	0ff0000f          	fence
    80008714:	0f50000f          	fence	iorw,ow
    80008718:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000871c:	ffffe097          	auipc	ra,0xffffe
    80008720:	7f0080e7          	jalr	2032(ra) # 80006f0c <mycpu>
    80008724:	100027f3          	csrr	a5,sstatus
    80008728:	0027f793          	andi	a5,a5,2
    8000872c:	04079a63          	bnez	a5,80008780 <release+0xb8>
    80008730:	07852783          	lw	a5,120(a0)
    80008734:	02f05e63          	blez	a5,80008770 <release+0xa8>
    80008738:	fff7871b          	addiw	a4,a5,-1
    8000873c:	06e52c23          	sw	a4,120(a0)
    80008740:	00071c63          	bnez	a4,80008758 <release+0x90>
    80008744:	07c52783          	lw	a5,124(a0)
    80008748:	00078863          	beqz	a5,80008758 <release+0x90>
    8000874c:	100027f3          	csrr	a5,sstatus
    80008750:	0027e793          	ori	a5,a5,2
    80008754:	10079073          	csrw	sstatus,a5
    80008758:	01813083          	ld	ra,24(sp)
    8000875c:	01013403          	ld	s0,16(sp)
    80008760:	00813483          	ld	s1,8(sp)
    80008764:	00013903          	ld	s2,0(sp)
    80008768:	02010113          	addi	sp,sp,32
    8000876c:	00008067          	ret
    80008770:	00001517          	auipc	a0,0x1
    80008774:	08050513          	addi	a0,a0,128 # 800097f0 <digits+0x48>
    80008778:	fffff097          	auipc	ra,0xfffff
    8000877c:	154080e7          	jalr	340(ra) # 800078cc <panic>
    80008780:	00001517          	auipc	a0,0x1
    80008784:	05850513          	addi	a0,a0,88 # 800097d8 <digits+0x30>
    80008788:	fffff097          	auipc	ra,0xfffff
    8000878c:	144080e7          	jalr	324(ra) # 800078cc <panic>

0000000080008790 <holding>:
    80008790:	00052783          	lw	a5,0(a0)
    80008794:	00079663          	bnez	a5,800087a0 <holding+0x10>
    80008798:	00000513          	li	a0,0
    8000879c:	00008067          	ret
    800087a0:	fe010113          	addi	sp,sp,-32
    800087a4:	00813823          	sd	s0,16(sp)
    800087a8:	00913423          	sd	s1,8(sp)
    800087ac:	00113c23          	sd	ra,24(sp)
    800087b0:	02010413          	addi	s0,sp,32
    800087b4:	01053483          	ld	s1,16(a0)
    800087b8:	ffffe097          	auipc	ra,0xffffe
    800087bc:	754080e7          	jalr	1876(ra) # 80006f0c <mycpu>
    800087c0:	01813083          	ld	ra,24(sp)
    800087c4:	01013403          	ld	s0,16(sp)
    800087c8:	40a48533          	sub	a0,s1,a0
    800087cc:	00153513          	seqz	a0,a0
    800087d0:	00813483          	ld	s1,8(sp)
    800087d4:	02010113          	addi	sp,sp,32
    800087d8:	00008067          	ret

00000000800087dc <push_off>:
    800087dc:	fe010113          	addi	sp,sp,-32
    800087e0:	00813823          	sd	s0,16(sp)
    800087e4:	00113c23          	sd	ra,24(sp)
    800087e8:	00913423          	sd	s1,8(sp)
    800087ec:	02010413          	addi	s0,sp,32
    800087f0:	100024f3          	csrr	s1,sstatus
    800087f4:	100027f3          	csrr	a5,sstatus
    800087f8:	ffd7f793          	andi	a5,a5,-3
    800087fc:	10079073          	csrw	sstatus,a5
    80008800:	ffffe097          	auipc	ra,0xffffe
    80008804:	70c080e7          	jalr	1804(ra) # 80006f0c <mycpu>
    80008808:	07852783          	lw	a5,120(a0)
    8000880c:	02078663          	beqz	a5,80008838 <push_off+0x5c>
    80008810:	ffffe097          	auipc	ra,0xffffe
    80008814:	6fc080e7          	jalr	1788(ra) # 80006f0c <mycpu>
    80008818:	07852783          	lw	a5,120(a0)
    8000881c:	01813083          	ld	ra,24(sp)
    80008820:	01013403          	ld	s0,16(sp)
    80008824:	0017879b          	addiw	a5,a5,1
    80008828:	06f52c23          	sw	a5,120(a0)
    8000882c:	00813483          	ld	s1,8(sp)
    80008830:	02010113          	addi	sp,sp,32
    80008834:	00008067          	ret
    80008838:	0014d493          	srli	s1,s1,0x1
    8000883c:	ffffe097          	auipc	ra,0xffffe
    80008840:	6d0080e7          	jalr	1744(ra) # 80006f0c <mycpu>
    80008844:	0014f493          	andi	s1,s1,1
    80008848:	06952e23          	sw	s1,124(a0)
    8000884c:	fc5ff06f          	j	80008810 <push_off+0x34>

0000000080008850 <pop_off>:
    80008850:	ff010113          	addi	sp,sp,-16
    80008854:	00813023          	sd	s0,0(sp)
    80008858:	00113423          	sd	ra,8(sp)
    8000885c:	01010413          	addi	s0,sp,16
    80008860:	ffffe097          	auipc	ra,0xffffe
    80008864:	6ac080e7          	jalr	1708(ra) # 80006f0c <mycpu>
    80008868:	100027f3          	csrr	a5,sstatus
    8000886c:	0027f793          	andi	a5,a5,2
    80008870:	04079663          	bnez	a5,800088bc <pop_off+0x6c>
    80008874:	07852783          	lw	a5,120(a0)
    80008878:	02f05a63          	blez	a5,800088ac <pop_off+0x5c>
    8000887c:	fff7871b          	addiw	a4,a5,-1
    80008880:	06e52c23          	sw	a4,120(a0)
    80008884:	00071c63          	bnez	a4,8000889c <pop_off+0x4c>
    80008888:	07c52783          	lw	a5,124(a0)
    8000888c:	00078863          	beqz	a5,8000889c <pop_off+0x4c>
    80008890:	100027f3          	csrr	a5,sstatus
    80008894:	0027e793          	ori	a5,a5,2
    80008898:	10079073          	csrw	sstatus,a5
    8000889c:	00813083          	ld	ra,8(sp)
    800088a0:	00013403          	ld	s0,0(sp)
    800088a4:	01010113          	addi	sp,sp,16
    800088a8:	00008067          	ret
    800088ac:	00001517          	auipc	a0,0x1
    800088b0:	f4450513          	addi	a0,a0,-188 # 800097f0 <digits+0x48>
    800088b4:	fffff097          	auipc	ra,0xfffff
    800088b8:	018080e7          	jalr	24(ra) # 800078cc <panic>
    800088bc:	00001517          	auipc	a0,0x1
    800088c0:	f1c50513          	addi	a0,a0,-228 # 800097d8 <digits+0x30>
    800088c4:	fffff097          	auipc	ra,0xfffff
    800088c8:	008080e7          	jalr	8(ra) # 800078cc <panic>

00000000800088cc <push_on>:
    800088cc:	fe010113          	addi	sp,sp,-32
    800088d0:	00813823          	sd	s0,16(sp)
    800088d4:	00113c23          	sd	ra,24(sp)
    800088d8:	00913423          	sd	s1,8(sp)
    800088dc:	02010413          	addi	s0,sp,32
    800088e0:	100024f3          	csrr	s1,sstatus
    800088e4:	100027f3          	csrr	a5,sstatus
    800088e8:	0027e793          	ori	a5,a5,2
    800088ec:	10079073          	csrw	sstatus,a5
    800088f0:	ffffe097          	auipc	ra,0xffffe
    800088f4:	61c080e7          	jalr	1564(ra) # 80006f0c <mycpu>
    800088f8:	07852783          	lw	a5,120(a0)
    800088fc:	02078663          	beqz	a5,80008928 <push_on+0x5c>
    80008900:	ffffe097          	auipc	ra,0xffffe
    80008904:	60c080e7          	jalr	1548(ra) # 80006f0c <mycpu>
    80008908:	07852783          	lw	a5,120(a0)
    8000890c:	01813083          	ld	ra,24(sp)
    80008910:	01013403          	ld	s0,16(sp)
    80008914:	0017879b          	addiw	a5,a5,1
    80008918:	06f52c23          	sw	a5,120(a0)
    8000891c:	00813483          	ld	s1,8(sp)
    80008920:	02010113          	addi	sp,sp,32
    80008924:	00008067          	ret
    80008928:	0014d493          	srli	s1,s1,0x1
    8000892c:	ffffe097          	auipc	ra,0xffffe
    80008930:	5e0080e7          	jalr	1504(ra) # 80006f0c <mycpu>
    80008934:	0014f493          	andi	s1,s1,1
    80008938:	06952e23          	sw	s1,124(a0)
    8000893c:	fc5ff06f          	j	80008900 <push_on+0x34>

0000000080008940 <pop_on>:
    80008940:	ff010113          	addi	sp,sp,-16
    80008944:	00813023          	sd	s0,0(sp)
    80008948:	00113423          	sd	ra,8(sp)
    8000894c:	01010413          	addi	s0,sp,16
    80008950:	ffffe097          	auipc	ra,0xffffe
    80008954:	5bc080e7          	jalr	1468(ra) # 80006f0c <mycpu>
    80008958:	100027f3          	csrr	a5,sstatus
    8000895c:	0027f793          	andi	a5,a5,2
    80008960:	04078463          	beqz	a5,800089a8 <pop_on+0x68>
    80008964:	07852783          	lw	a5,120(a0)
    80008968:	02f05863          	blez	a5,80008998 <pop_on+0x58>
    8000896c:	fff7879b          	addiw	a5,a5,-1
    80008970:	06f52c23          	sw	a5,120(a0)
    80008974:	07853783          	ld	a5,120(a0)
    80008978:	00079863          	bnez	a5,80008988 <pop_on+0x48>
    8000897c:	100027f3          	csrr	a5,sstatus
    80008980:	ffd7f793          	andi	a5,a5,-3
    80008984:	10079073          	csrw	sstatus,a5
    80008988:	00813083          	ld	ra,8(sp)
    8000898c:	00013403          	ld	s0,0(sp)
    80008990:	01010113          	addi	sp,sp,16
    80008994:	00008067          	ret
    80008998:	00001517          	auipc	a0,0x1
    8000899c:	e8050513          	addi	a0,a0,-384 # 80009818 <digits+0x70>
    800089a0:	fffff097          	auipc	ra,0xfffff
    800089a4:	f2c080e7          	jalr	-212(ra) # 800078cc <panic>
    800089a8:	00001517          	auipc	a0,0x1
    800089ac:	e5050513          	addi	a0,a0,-432 # 800097f8 <digits+0x50>
    800089b0:	fffff097          	auipc	ra,0xfffff
    800089b4:	f1c080e7          	jalr	-228(ra) # 800078cc <panic>

00000000800089b8 <__memset>:
    800089b8:	ff010113          	addi	sp,sp,-16
    800089bc:	00813423          	sd	s0,8(sp)
    800089c0:	01010413          	addi	s0,sp,16
    800089c4:	1a060e63          	beqz	a2,80008b80 <__memset+0x1c8>
    800089c8:	40a007b3          	neg	a5,a0
    800089cc:	0077f793          	andi	a5,a5,7
    800089d0:	00778693          	addi	a3,a5,7
    800089d4:	00b00813          	li	a6,11
    800089d8:	0ff5f593          	andi	a1,a1,255
    800089dc:	fff6071b          	addiw	a4,a2,-1
    800089e0:	1b06e663          	bltu	a3,a6,80008b8c <__memset+0x1d4>
    800089e4:	1cd76463          	bltu	a4,a3,80008bac <__memset+0x1f4>
    800089e8:	1a078e63          	beqz	a5,80008ba4 <__memset+0x1ec>
    800089ec:	00b50023          	sb	a1,0(a0)
    800089f0:	00100713          	li	a4,1
    800089f4:	1ae78463          	beq	a5,a4,80008b9c <__memset+0x1e4>
    800089f8:	00b500a3          	sb	a1,1(a0)
    800089fc:	00200713          	li	a4,2
    80008a00:	1ae78a63          	beq	a5,a4,80008bb4 <__memset+0x1fc>
    80008a04:	00b50123          	sb	a1,2(a0)
    80008a08:	00300713          	li	a4,3
    80008a0c:	18e78463          	beq	a5,a4,80008b94 <__memset+0x1dc>
    80008a10:	00b501a3          	sb	a1,3(a0)
    80008a14:	00400713          	li	a4,4
    80008a18:	1ae78263          	beq	a5,a4,80008bbc <__memset+0x204>
    80008a1c:	00b50223          	sb	a1,4(a0)
    80008a20:	00500713          	li	a4,5
    80008a24:	1ae78063          	beq	a5,a4,80008bc4 <__memset+0x20c>
    80008a28:	00b502a3          	sb	a1,5(a0)
    80008a2c:	00700713          	li	a4,7
    80008a30:	18e79e63          	bne	a5,a4,80008bcc <__memset+0x214>
    80008a34:	00b50323          	sb	a1,6(a0)
    80008a38:	00700e93          	li	t4,7
    80008a3c:	00859713          	slli	a4,a1,0x8
    80008a40:	00e5e733          	or	a4,a1,a4
    80008a44:	01059e13          	slli	t3,a1,0x10
    80008a48:	01c76e33          	or	t3,a4,t3
    80008a4c:	01859313          	slli	t1,a1,0x18
    80008a50:	006e6333          	or	t1,t3,t1
    80008a54:	02059893          	slli	a7,a1,0x20
    80008a58:	40f60e3b          	subw	t3,a2,a5
    80008a5c:	011368b3          	or	a7,t1,a7
    80008a60:	02859813          	slli	a6,a1,0x28
    80008a64:	0108e833          	or	a6,a7,a6
    80008a68:	03059693          	slli	a3,a1,0x30
    80008a6c:	003e589b          	srliw	a7,t3,0x3
    80008a70:	00d866b3          	or	a3,a6,a3
    80008a74:	03859713          	slli	a4,a1,0x38
    80008a78:	00389813          	slli	a6,a7,0x3
    80008a7c:	00f507b3          	add	a5,a0,a5
    80008a80:	00e6e733          	or	a4,a3,a4
    80008a84:	000e089b          	sext.w	a7,t3
    80008a88:	00f806b3          	add	a3,a6,a5
    80008a8c:	00e7b023          	sd	a4,0(a5)
    80008a90:	00878793          	addi	a5,a5,8
    80008a94:	fed79ce3          	bne	a5,a3,80008a8c <__memset+0xd4>
    80008a98:	ff8e7793          	andi	a5,t3,-8
    80008a9c:	0007871b          	sext.w	a4,a5
    80008aa0:	01d787bb          	addw	a5,a5,t4
    80008aa4:	0ce88e63          	beq	a7,a4,80008b80 <__memset+0x1c8>
    80008aa8:	00f50733          	add	a4,a0,a5
    80008aac:	00b70023          	sb	a1,0(a4)
    80008ab0:	0017871b          	addiw	a4,a5,1
    80008ab4:	0cc77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00b70023          	sb	a1,0(a4)
    80008ac0:	0027871b          	addiw	a4,a5,2
    80008ac4:	0ac77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ac8:	00e50733          	add	a4,a0,a4
    80008acc:	00b70023          	sb	a1,0(a4)
    80008ad0:	0037871b          	addiw	a4,a5,3
    80008ad4:	0ac77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ad8:	00e50733          	add	a4,a0,a4
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	0047871b          	addiw	a4,a5,4
    80008ae4:	08c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0057871b          	addiw	a4,a5,5
    80008af4:	08c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	0067871b          	addiw	a4,a5,6
    80008b04:	06c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	0077871b          	addiw	a4,a5,7
    80008b14:	06c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	0087871b          	addiw	a4,a5,8
    80008b24:	04c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	0097871b          	addiw	a4,a5,9
    80008b34:	04c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	00a7871b          	addiw	a4,a5,10
    80008b44:	02c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b48:	00e50733          	add	a4,a0,a4
    80008b4c:	00b70023          	sb	a1,0(a4)
    80008b50:	00b7871b          	addiw	a4,a5,11
    80008b54:	02c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b58:	00e50733          	add	a4,a0,a4
    80008b5c:	00b70023          	sb	a1,0(a4)
    80008b60:	00c7871b          	addiw	a4,a5,12
    80008b64:	00c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b68:	00e50733          	add	a4,a0,a4
    80008b6c:	00b70023          	sb	a1,0(a4)
    80008b70:	00d7879b          	addiw	a5,a5,13
    80008b74:	00c7f663          	bgeu	a5,a2,80008b80 <__memset+0x1c8>
    80008b78:	00f507b3          	add	a5,a0,a5
    80008b7c:	00b78023          	sb	a1,0(a5)
    80008b80:	00813403          	ld	s0,8(sp)
    80008b84:	01010113          	addi	sp,sp,16
    80008b88:	00008067          	ret
    80008b8c:	00b00693          	li	a3,11
    80008b90:	e55ff06f          	j	800089e4 <__memset+0x2c>
    80008b94:	00300e93          	li	t4,3
    80008b98:	ea5ff06f          	j	80008a3c <__memset+0x84>
    80008b9c:	00100e93          	li	t4,1
    80008ba0:	e9dff06f          	j	80008a3c <__memset+0x84>
    80008ba4:	00000e93          	li	t4,0
    80008ba8:	e95ff06f          	j	80008a3c <__memset+0x84>
    80008bac:	00000793          	li	a5,0
    80008bb0:	ef9ff06f          	j	80008aa8 <__memset+0xf0>
    80008bb4:	00200e93          	li	t4,2
    80008bb8:	e85ff06f          	j	80008a3c <__memset+0x84>
    80008bbc:	00400e93          	li	t4,4
    80008bc0:	e7dff06f          	j	80008a3c <__memset+0x84>
    80008bc4:	00500e93          	li	t4,5
    80008bc8:	e75ff06f          	j	80008a3c <__memset+0x84>
    80008bcc:	00600e93          	li	t4,6
    80008bd0:	e6dff06f          	j	80008a3c <__memset+0x84>

0000000080008bd4 <__memmove>:
    80008bd4:	ff010113          	addi	sp,sp,-16
    80008bd8:	00813423          	sd	s0,8(sp)
    80008bdc:	01010413          	addi	s0,sp,16
    80008be0:	0e060863          	beqz	a2,80008cd0 <__memmove+0xfc>
    80008be4:	fff6069b          	addiw	a3,a2,-1
    80008be8:	0006881b          	sext.w	a6,a3
    80008bec:	0ea5e863          	bltu	a1,a0,80008cdc <__memmove+0x108>
    80008bf0:	00758713          	addi	a4,a1,7
    80008bf4:	00a5e7b3          	or	a5,a1,a0
    80008bf8:	40a70733          	sub	a4,a4,a0
    80008bfc:	0077f793          	andi	a5,a5,7
    80008c00:	00f73713          	sltiu	a4,a4,15
    80008c04:	00174713          	xori	a4,a4,1
    80008c08:	0017b793          	seqz	a5,a5
    80008c0c:	00e7f7b3          	and	a5,a5,a4
    80008c10:	10078863          	beqz	a5,80008d20 <__memmove+0x14c>
    80008c14:	00900793          	li	a5,9
    80008c18:	1107f463          	bgeu	a5,a6,80008d20 <__memmove+0x14c>
    80008c1c:	0036581b          	srliw	a6,a2,0x3
    80008c20:	fff8081b          	addiw	a6,a6,-1
    80008c24:	02081813          	slli	a6,a6,0x20
    80008c28:	01d85893          	srli	a7,a6,0x1d
    80008c2c:	00858813          	addi	a6,a1,8
    80008c30:	00058793          	mv	a5,a1
    80008c34:	00050713          	mv	a4,a0
    80008c38:	01088833          	add	a6,a7,a6
    80008c3c:	0007b883          	ld	a7,0(a5)
    80008c40:	00878793          	addi	a5,a5,8
    80008c44:	00870713          	addi	a4,a4,8
    80008c48:	ff173c23          	sd	a7,-8(a4)
    80008c4c:	ff0798e3          	bne	a5,a6,80008c3c <__memmove+0x68>
    80008c50:	ff867713          	andi	a4,a2,-8
    80008c54:	02071793          	slli	a5,a4,0x20
    80008c58:	0207d793          	srli	a5,a5,0x20
    80008c5c:	00f585b3          	add	a1,a1,a5
    80008c60:	40e686bb          	subw	a3,a3,a4
    80008c64:	00f507b3          	add	a5,a0,a5
    80008c68:	06e60463          	beq	a2,a4,80008cd0 <__memmove+0xfc>
    80008c6c:	0005c703          	lbu	a4,0(a1)
    80008c70:	00e78023          	sb	a4,0(a5)
    80008c74:	04068e63          	beqz	a3,80008cd0 <__memmove+0xfc>
    80008c78:	0015c603          	lbu	a2,1(a1)
    80008c7c:	00100713          	li	a4,1
    80008c80:	00c780a3          	sb	a2,1(a5)
    80008c84:	04e68663          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008c88:	0025c603          	lbu	a2,2(a1)
    80008c8c:	00200713          	li	a4,2
    80008c90:	00c78123          	sb	a2,2(a5)
    80008c94:	02e68e63          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008c98:	0035c603          	lbu	a2,3(a1)
    80008c9c:	00300713          	li	a4,3
    80008ca0:	00c781a3          	sb	a2,3(a5)
    80008ca4:	02e68663          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008ca8:	0045c603          	lbu	a2,4(a1)
    80008cac:	00400713          	li	a4,4
    80008cb0:	00c78223          	sb	a2,4(a5)
    80008cb4:	00e68e63          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008cb8:	0055c603          	lbu	a2,5(a1)
    80008cbc:	00500713          	li	a4,5
    80008cc0:	00c782a3          	sb	a2,5(a5)
    80008cc4:	00e68663          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008cc8:	0065c703          	lbu	a4,6(a1)
    80008ccc:	00e78323          	sb	a4,6(a5)
    80008cd0:	00813403          	ld	s0,8(sp)
    80008cd4:	01010113          	addi	sp,sp,16
    80008cd8:	00008067          	ret
    80008cdc:	02061713          	slli	a4,a2,0x20
    80008ce0:	02075713          	srli	a4,a4,0x20
    80008ce4:	00e587b3          	add	a5,a1,a4
    80008ce8:	f0f574e3          	bgeu	a0,a5,80008bf0 <__memmove+0x1c>
    80008cec:	02069613          	slli	a2,a3,0x20
    80008cf0:	02065613          	srli	a2,a2,0x20
    80008cf4:	fff64613          	not	a2,a2
    80008cf8:	00e50733          	add	a4,a0,a4
    80008cfc:	00c78633          	add	a2,a5,a2
    80008d00:	fff7c683          	lbu	a3,-1(a5)
    80008d04:	fff78793          	addi	a5,a5,-1
    80008d08:	fff70713          	addi	a4,a4,-1
    80008d0c:	00d70023          	sb	a3,0(a4)
    80008d10:	fec798e3          	bne	a5,a2,80008d00 <__memmove+0x12c>
    80008d14:	00813403          	ld	s0,8(sp)
    80008d18:	01010113          	addi	sp,sp,16
    80008d1c:	00008067          	ret
    80008d20:	02069713          	slli	a4,a3,0x20
    80008d24:	02075713          	srli	a4,a4,0x20
    80008d28:	00170713          	addi	a4,a4,1
    80008d2c:	00e50733          	add	a4,a0,a4
    80008d30:	00050793          	mv	a5,a0
    80008d34:	0005c683          	lbu	a3,0(a1)
    80008d38:	00178793          	addi	a5,a5,1
    80008d3c:	00158593          	addi	a1,a1,1
    80008d40:	fed78fa3          	sb	a3,-1(a5)
    80008d44:	fee798e3          	bne	a5,a4,80008d34 <__memmove+0x160>
    80008d48:	f89ff06f          	j	80008cd0 <__memmove+0xfc>
	...

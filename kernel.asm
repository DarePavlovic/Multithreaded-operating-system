
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000e117          	auipc	sp,0xe
    80000004:	4e813103          	ld	sp,1256(sp) # 8000e4e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	701070ef          	jal	ra,80007f1c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.extern _ZN5Riscv20handleSupervisorTrapEv
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001080:	744010ef          	jal	ra,800027c4 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001084:	00013003          	ld	zero,0(sp)
    80001088:	00813083          	ld	ra,8(sp)
    8000108c:	01013103          	ld	sp,16(sp)
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256

    80001104:	10200073          	sret
	...

0000000080001110 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001110:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001114:	00313c23          	sd	gp,24(sp)
    80001118:	02413023          	sd	tp,32(sp)
    8000111c:	02513423          	sd	t0,40(sp)
    80001120:	02613823          	sd	t1,48(sp)
    80001124:	02713c23          	sd	t2,56(sp)
    80001128:	04813023          	sd	s0,64(sp)
    8000112c:	04913423          	sd	s1,72(sp)
    80001130:	04a13823          	sd	a0,80(sp)
    80001134:	04b13c23          	sd	a1,88(sp)
    80001138:	06c13023          	sd	a2,96(sp)
    8000113c:	06d13423          	sd	a3,104(sp)
    80001140:	06e13823          	sd	a4,112(sp)
    80001144:	06f13c23          	sd	a5,120(sp)
    80001148:	09013023          	sd	a6,128(sp)
    8000114c:	09113423          	sd	a7,136(sp)
    80001150:	09213823          	sd	s2,144(sp)
    80001154:	09313c23          	sd	s3,152(sp)
    80001158:	0b413023          	sd	s4,160(sp)
    8000115c:	0b513423          	sd	s5,168(sp)
    80001160:	0b613823          	sd	s6,176(sp)
    80001164:	0b713c23          	sd	s7,184(sp)
    80001168:	0d813023          	sd	s8,192(sp)
    8000116c:	0d913423          	sd	s9,200(sp)
    80001170:	0da13823          	sd	s10,208(sp)
    80001174:	0db13c23          	sd	s11,216(sp)
    80001178:	0fc13023          	sd	t3,224(sp)
    8000117c:	0fd13423          	sd	t4,232(sp)
    80001180:	0fe13823          	sd	t5,240(sp)
    80001184:	0ff13c23          	sd	t6,248(sp)
    ret
    80001188:	00008067          	ret

000000008000118c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000118c:	01813183          	ld	gp,24(sp)
    80001190:	02013203          	ld	tp,32(sp)
    80001194:	02813283          	ld	t0,40(sp)
    80001198:	03013303          	ld	t1,48(sp)
    8000119c:	03813383          	ld	t2,56(sp)
    800011a0:	04013403          	ld	s0,64(sp)
    800011a4:	04813483          	ld	s1,72(sp)
    800011a8:	05013503          	ld	a0,80(sp)
    800011ac:	05813583          	ld	a1,88(sp)
    800011b0:	06013603          	ld	a2,96(sp)
    800011b4:	06813683          	ld	a3,104(sp)
    800011b8:	07013703          	ld	a4,112(sp)
    800011bc:	07813783          	ld	a5,120(sp)
    800011c0:	08013803          	ld	a6,128(sp)
    800011c4:	08813883          	ld	a7,136(sp)
    800011c8:	09013903          	ld	s2,144(sp)
    800011cc:	09813983          	ld	s3,152(sp)
    800011d0:	0a013a03          	ld	s4,160(sp)
    800011d4:	0a813a83          	ld	s5,168(sp)
    800011d8:	0b013b03          	ld	s6,176(sp)
    800011dc:	0b813b83          	ld	s7,184(sp)
    800011e0:	0c013c03          	ld	s8,192(sp)
    800011e4:	0c813c83          	ld	s9,200(sp)
    800011e8:	0d013d03          	ld	s10,208(sp)
    800011ec:	0d813d83          	ld	s11,216(sp)
    800011f0:	0e013e03          	ld	t3,224(sp)
    800011f4:	0e813e83          	ld	t4,232(sp)
    800011f8:	0f013f03          	ld	t5,240(sp)
    800011fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001200:	10010113          	addi	sp,sp,256
    80001204:	00008067          	ret

0000000080001208 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_ @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->context
    #a1 - &running->context
    sd ra, 0 * 8(a0)
    80001208:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000120c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001210:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001214:	0085b103          	ld	sp,8(a1)
    80001218:	00008067          	ret

000000008000121c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000121c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001220:	00b29a63          	bne	t0,a1,80001234 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001224:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001228:	fe029ae3          	bnez	t0,8000121c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000122c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001230:	00008067          	ret

0000000080001234 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001234:	00100513          	li	a0,1
    80001238:	00008067          	ret

000000008000123c <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size){
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00113423          	sd	ra,8(sp)
    80001244:	00813023          	sd	s0,0(sp)
    80001248:	01010413          	addi	s0,sp,16

    size_t op_code = 0x1;

    __asm__ volatile("mv a1, %[size]"::[size]"r"(MemoryAllocator::transferToNumBlock(size)));
    8000124c:	00002097          	auipc	ra,0x2
    80001250:	cc0080e7          	jalr	-832(ra) # 80002f0c <_ZN15MemoryAllocator18transferToNumBlockEm>
    80001254:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    80001258:	00100793          	li	a5,1
    8000125c:	00078513          	mv	a0,a5
    //prenos argumenta size
    //i skok u prekidnu rutinu
    __asm__ volatile("ecall");
    80001260:	00000073          	ecall

    void* x;
    //treba vratim pokazivac koji mi vrati syscall od mem_alloc-a
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    80001264:	00050513          	mv	a0,a0
    return x;
}
    80001268:	00813083          	ld	ra,8(sp)
    8000126c:	00013403          	ld	s0,0(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <_Z8mem_freePv>:

int mem_free(void* ptr){
    80001278:	ff010113          	addi	sp,sp,-16
    8000127c:	00813423          	sd	s0,8(sp)
    80001280:	01010413          	addi	s0,sp,16

    size_t op_code=0x2;
    __asm__ volatile("mv a1, %[addr]"::[addr]"r"(ptr));
    80001284:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    80001288:	00200793          	li	a5,2
    8000128c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001290:	00000073          	ecall
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    80001294:	00050513          	mv	a0,a0
    return x;
}
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z13thread_createPP3TCBPFvPvES2_S1_>:
int thread_create(thread_t *handle, void(*start_routine)(void*), void* arg, thread_t* parent){
    800012a8:	fd010113          	addi	sp,sp,-48
    800012ac:	02113423          	sd	ra,40(sp)
    800012b0:	02813023          	sd	s0,32(sp)
    800012b4:	00913c23          	sd	s1,24(sp)
    800012b8:	01213823          	sd	s2,16(sp)
    800012bc:	01313423          	sd	s3,8(sp)
    800012c0:	03010413          	addi	s0,sp,48
    800012c4:	00050493          	mv	s1,a0
    800012c8:	00058913          	mv	s2,a1
    800012cc:	00060993          	mv	s3,a2
    thread_t* part = parent;
    __asm__ volatile("mv a7, %[paren]"::[paren]"r"(part));
    800012d0:	00068893          	mv	a7,a3

    uint64* stack = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);//da ne bi bio sistemski poziv u sistemskom pozivu
    800012d4:	00001537          	lui	a0,0x1
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	f64080e7          	jalr	-156(ra) # 8000123c <_Z9mem_allocm>
    if(stack ==nullptr) return -1;
    800012e0:	04050263          	beqz	a0,80001324 <_Z13thread_createPP3TCBPFvPvES2_S1_+0x7c>
    //pripremljeni svi podaci, salji
    __asm__ volatile("mv a6, %[stack]"::[stack]"r"(stack));
    800012e4:	00050813          	mv	a6,a0
    void* arg1 = arg;
    __asm__ volatile("mv a3, %[arg]"::[arg]"r"(arg1));
    800012e8:	00098693          	mv	a3,s3
    TCB::Body b = start_routine;
    __asm__ volatile("mv a2, %[body]"::[body]"r"(b));
    800012ec:	00090613          	mv	a2,s2
    thread_t* thandle = handle;
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(thandle));
    800012f0:	00048593          	mv	a1,s1
    size_t op_code=0x15;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    800012f4:	01500793          	li	a5,21
    800012f8:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800012fc:	00000073          	ecall
    int thr;
    __asm__ volatile("mv %[x], a0":[x]"=r"(thr));
    80001300:	00050513          	mv	a0,a0
    80001304:	0005051b          	sext.w	a0,a0
    return thr;
}
    80001308:	02813083          	ld	ra,40(sp)
    8000130c:	02013403          	ld	s0,32(sp)
    80001310:	01813483          	ld	s1,24(sp)
    80001314:	01013903          	ld	s2,16(sp)
    80001318:	00813983          	ld	s3,8(sp)
    8000131c:	03010113          	addi	sp,sp,48
    80001320:	00008067          	ret
    if(stack ==nullptr) return -1;
    80001324:	fff00513          	li	a0,-1
    80001328:	fe1ff06f          	j	80001308 <_Z13thread_createPP3TCBPFvPvES2_S1_+0x60>

000000008000132c <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void(*start_routine)(void*), void* arg){
    8000132c:	fd010113          	addi	sp,sp,-48
    80001330:	02113423          	sd	ra,40(sp)
    80001334:	02813023          	sd	s0,32(sp)
    80001338:	00913c23          	sd	s1,24(sp)
    8000133c:	01213823          	sd	s2,16(sp)
    80001340:	01313423          	sd	s3,8(sp)
    80001344:	03010413          	addi	s0,sp,48
    80001348:	00050493          	mv	s1,a0
    8000134c:	00058913          	mv	s2,a1
    80001350:	00060993          	mv	s3,a2
    uint64* stack = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);//da ne bi bio sistemski poziv u sistemskom pozivu
    80001354:	00001537          	lui	a0,0x1
    80001358:	00000097          	auipc	ra,0x0
    8000135c:	ee4080e7          	jalr	-284(ra) # 8000123c <_Z9mem_allocm>
    if(stack ==nullptr) return -1;
    80001360:	04050263          	beqz	a0,800013a4 <_Z13thread_createPP3TCBPFvPvES2_+0x78>
    //pripremljeni svi podaci, salji
    __asm__ volatile("mv a6, %[stack]"::[stack]"r"(stack));
    80001364:	00050813          	mv	a6,a0
    void* arg1 = arg;
    __asm__ volatile("mv a3, %[arg]"::[arg]"r"(arg1));
    80001368:	00098693          	mv	a3,s3
    TCB::Body b = start_routine;
    __asm__ volatile("mv a2, %[body]"::[body]"r"(b));
    8000136c:	00090613          	mv	a2,s2
    thread_t* thandle = handle;
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(thandle));
    80001370:	00048593          	mv	a1,s1
    size_t op_code=0x11;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    80001374:	01100793          	li	a5,17
    80001378:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    8000137c:	00000073          	ecall
    int thr;
    __asm__ volatile("mv %[x], a0":[x]"=r"(thr));
    80001380:	00050513          	mv	a0,a0
    80001384:	0005051b          	sext.w	a0,a0
    return thr;
}
    80001388:	02813083          	ld	ra,40(sp)
    8000138c:	02013403          	ld	s0,32(sp)
    80001390:	01813483          	ld	s1,24(sp)
    80001394:	01013903          	ld	s2,16(sp)
    80001398:	00813983          	ld	s3,8(sp)
    8000139c:	03010113          	addi	sp,sp,48
    800013a0:	00008067          	ret
    if(stack ==nullptr) return -1;
    800013a4:	fff00513          	li	a0,-1
    800013a8:	fe1ff06f          	j	80001388 <_Z13thread_createPP3TCBPFvPvES2_+0x5c>

00000000800013ac <_Z15thread_dispatchv>:


void thread_dispatch (){
    800013ac:	ff010113          	addi	sp,sp,-16
    800013b0:	00813423          	sd	s0,8(sp)
    800013b4:	01010413          	addi	s0,sp,16
    size_t op_code = 0x13;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    800013b8:	01300793          	li	a5,19
    800013bc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013c0:	00000073          	ecall
}
    800013c4:	00813403          	ld	s0,8(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret

00000000800013d0 <_Z11thread_exitv>:

int thread_exit (){
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00813423          	sd	s0,8(sp)
    800013d8:	01010413          	addi	s0,sp,16
    size_t op_code = 0x12;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    800013dc:	01200793          	li	a5,18
    800013e0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013e4:	00000073          	ecall
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    800013e8:	00050513          	mv	a0,a0
    return x;
}
    800013ec:	0005051b          	sext.w	a0,a0
    800013f0:	00813403          	ld	s0,8(sp)
    800013f4:	01010113          	addi	sp,sp,16
    800013f8:	00008067          	ret

00000000800013fc <_Z13SetMaxThreadsi>:

void SetMaxThreads(int i){
    800013fc:	ff010113          	addi	sp,sp,-16
    80001400:	00813423          	sd	s0,8(sp)
    80001404:	01010413          	addi	s0,sp,16
    size_t op_code = 0x18;
    __asm__ volatile("mv a1, %[num]"::[num]"r"(i));
    80001408:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    8000140c:	01800793          	li	a5,24
    80001410:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001414:	00000073          	ecall
}
    80001418:	00813403          	ld	s0,8(sp)
    8000141c:	01010113          	addi	sp,sp,16
    80001420:	00008067          	ret

0000000080001424 <_Z7joinAllv>:

void joinAll(){
    80001424:	ff010113          	addi	sp,sp,-16
    80001428:	00813423          	sd	s0,8(sp)
    8000142c:	01010413          	addi	s0,sp,16
    size_t op_code = 0x16;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    80001430:	01600793          	li	a5,22
    80001434:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001438:	00000073          	ecall
}
    8000143c:	00813403          	ld	s0,8(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret

0000000080001448 <_Z8sem_openPP3Semj>:
//    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
//    __asm__ volatile("ecall");
//
//}

int sem_open (sem_t* handle, unsigned init){
    80001448:	ff010113          	addi	sp,sp,-16
    8000144c:	00813423          	sd	s0,8(sp)
    80001450:	01010413          	addi	s0,sp,16
    size_t op_code = 0x21;
    __asm__ volatile("mv a2, %[init]"::[init]"r"(init));
    80001454:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    80001458:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    8000145c:	02100793          	li	a5,33
    80001460:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001464:	00000073          	ecall
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    80001468:	00050513          	mv	a0,a0
    return x;
}
    8000146c:	0005051b          	sext.w	a0,a0
    80001470:	00813403          	ld	s0,8(sp)
    80001474:	01010113          	addi	sp,sp,16
    80001478:	00008067          	ret

000000008000147c <_Z9sem_closeP3Sem>:

int sem_close (sem_t handle){
    8000147c:	ff010113          	addi	sp,sp,-16
    80001480:	00813423          	sd	s0,8(sp)
    80001484:	01010413          	addi	s0,sp,16
    size_t op_code = 0x22;
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    80001488:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    8000148c:	02200793          	li	a5,34
    80001490:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001494:	00000073          	ecall
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    80001498:	00050513          	mv	a0,a0
    return x;
}
    8000149c:	0005051b          	sext.w	a0,a0
    800014a0:	00813403          	ld	s0,8(sp)
    800014a4:	01010113          	addi	sp,sp,16
    800014a8:	00008067          	ret

00000000800014ac <_Z8sem_waitP3Sem>:
int sem_wait (sem_t id){
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00813423          	sd	s0,8(sp)
    800014b4:	01010413          	addi	s0,sp,16
    size_t op_code = 0x23;
    __asm__ volatile("mv a1, %[id]"::[id]"r"(id));
    800014b8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    800014bc:	02300793          	li	a5,35
    800014c0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014c4:	00000073          	ecall
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    800014c8:	00050513          	mv	a0,a0
    return x;
}
    800014cc:	0005051b          	sext.w	a0,a0
    800014d0:	00813403          	ld	s0,8(sp)
    800014d4:	01010113          	addi	sp,sp,16
    800014d8:	00008067          	ret

00000000800014dc <_Z10sem_signalP3Sem>:
int sem_signal(sem_t id){
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00813423          	sd	s0,8(sp)
    800014e4:	01010413          	addi	s0,sp,16
    size_t op_code = 0x24;
    __asm__ volatile("mv a1, %[id]"::[id]"r"(id));
    800014e8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    800014ec:	02400793          	li	a5,36
    800014f0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014f4:	00000073          	ecall
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    800014f8:	00050513          	mv	a0,a0
    return x;
}
    800014fc:	0005051b          	sext.w	a0,a0
    80001500:	00813403          	ld	s0,8(sp)
    80001504:	01010113          	addi	sp,sp,16
    80001508:	00008067          	ret

000000008000150c <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id){
    8000150c:	ff010113          	addi	sp,sp,-16
    80001510:	00813423          	sd	s0,8(sp)
    80001514:	01010413          	addi	s0,sp,16
    size_t op_code = 0x25;
    __asm__ volatile("mv a1, %[id]"::[id]"r"(id));
    80001518:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    8000151c:	02500793          	li	a5,37
    80001520:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001524:	00000073          	ecall
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    80001528:	00050513          	mv	a0,a0
    return x;
}
    8000152c:	0005051b          	sext.w	a0,a0
    80001530:	00813403          	ld	s0,8(sp)
    80001534:	01010113          	addi	sp,sp,16
    80001538:	00008067          	ret

000000008000153c <_Z14sem_wait_priorP3Semj>:

int sem_wait_prior (sem_t handle, unsigned id){
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00813423          	sd	s0,8(sp)
    80001544:	01010413          	addi	s0,sp,16
    size_t op_code = 0x26;
    __asm__ volatile("mv a2, %[init]"::[init]"r"(id));
    80001548:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    8000154c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    80001550:	02600793          	li	a5,38
    80001554:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001558:	00000073          	ecall
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    8000155c:	00050513          	mv	a0,a0
    return x;
}
    80001560:	0005051b          	sext.w	a0,a0
    80001564:	00813403          	ld	s0,8(sp)
    80001568:	01010113          	addi	sp,sp,16
    8000156c:	00008067          	ret

0000000080001570 <_Z4getcv>:

char getc (){
    80001570:	ff010113          	addi	sp,sp,-16
    80001574:	00813423          	sd	s0,8(sp)
    80001578:	01010413          	addi	s0,sp,16
    size_t op_code = 0x41;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    8000157c:	04100793          	li	a5,65
    80001580:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001584:	00000073          	ecall
    char x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    80001588:	00050513          	mv	a0,a0
    return x;
}
    8000158c:	0ff57513          	andi	a0,a0,255
    80001590:	00813403          	ld	s0,8(sp)
    80001594:	01010113          	addi	sp,sp,16
    80001598:	00008067          	ret

000000008000159c <_Z4putcc>:

void putc (char character){
    8000159c:	ff010113          	addi	sp,sp,-16
    800015a0:	00813423          	sd	s0,8(sp)
    800015a4:	01010413          	addi	s0,sp,16
    size_t op_code = 0x42;
    __asm__ volatile("mv a1, %[ch]"::[ch]"r"(character));
    800015a8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    800015ac:	04200793          	li	a5,66
    800015b0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015b4:	00000073          	ecall
    //__putc(c);
}
    800015b8:	00813403          	ld	s0,8(sp)
    800015bc:	01010113          	addi	sp,sp,16
    800015c0:	00008067          	ret

00000000800015c4 <_Z10time_sleepm>:
int time_sleep (time_t){
    800015c4:	ff010113          	addi	sp,sp,-16
    800015c8:	00813423          	sd	s0,8(sp)
    800015cc:	01010413          	addi	s0,sp,16
    return 0;
}
    800015d0:	00000513          	li	a0,0
    800015d4:	00813403          	ld	s0,8(sp)
    800015d8:	01010113          	addi	sp,sp,16
    800015dc:	00008067          	ret

00000000800015e0 <_Z11getThreadIdv>:


int getThreadId(){
    800015e0:	ff010113          	addi	sp,sp,-16
    800015e4:	00813423          	sd	s0,8(sp)
    800015e8:	01010413          	addi	s0,sp,16
    size_t op_code = 0x17;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    800015ec:	01700793          	li	a5,23
    800015f0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015f4:	00000073          	ecall
    char x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    800015f8:	00050513          	mv	a0,a0
    return x;
}
    800015fc:	0ff57513          	andi	a0,a0,255
    80001600:	00813403          	ld	s0,8(sp)
    80001604:	01010113          	addi	sp,sp,16
    80001608:	00008067          	ret

000000008000160c <_Z4pingP3TCB>:

void ping(thread_t handle1){
    8000160c:	ff010113          	addi	sp,sp,-16
    80001610:	00813423          	sd	s0,8(sp)
    80001614:	01010413          	addi	s0,sp,16
    size_t op_code=0x19;
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle1));
    80001618:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    8000161c:	01900793          	li	a5,25
    80001620:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001624:	00000073          	ecall

    80001628:	00813403          	ld	s0,8(sp)
    8000162c:	01010113          	addi	sp,sp,16
    80001630:	00008067          	ret

0000000080001634 <_Z12create_queuev>:
#include "../h/queue.hpp"

queue* create_queue() {
    80001634:	ff010113          	addi	sp,sp,-16
    80001638:	00113423          	sd	ra,8(sp)
    8000163c:	00813023          	sd	s0,0(sp)
    80001640:	01010413          	addi	s0,sp,16
    size_t size = MemoryAllocator::transferToNumBlock(sizeof(queue));   //izracunaj broj blokova
    80001644:	01800513          	li	a0,24
    80001648:	00002097          	auipc	ra,0x2
    8000164c:	8c4080e7          	jalr	-1852(ra) # 80002f0c <_ZN15MemoryAllocator18transferToNumBlockEm>
    queue* q = (queue*)MemoryAllocator::mem_alloc(size); // mem_alloc za queue
    80001650:	00002097          	auipc	ra,0x2
    80001654:	950080e7          	jalr	-1712(ra) # 80002fa0 <_ZN15MemoryAllocator9mem_allocEm>
    q->front = nullptr;
    80001658:	00053023          	sd	zero,0(a0) # 1000 <_entry-0x7ffff000>
    q->rear = nullptr;
    8000165c:	00053423          	sd	zero,8(a0)
    q->size = 0;
    80001660:	00052823          	sw	zero,16(a0)
    return q;//pokazivac na alocirani red red
}
    80001664:	00813083          	ld	ra,8(sp)
    80001668:	00013403          	ld	s0,0(sp)
    8000166c:	01010113          	addi	sp,sp,16
    80001670:	00008067          	ret

0000000080001674 <_Z8is_emptyP5queue>:

bool is_empty(queue* q) {
    80001674:	ff010113          	addi	sp,sp,-16
    80001678:	00813423          	sd	s0,8(sp)
    8000167c:	01010413          	addi	s0,sp,16
    return (q->size == 0);
    80001680:	01052503          	lw	a0,16(a0)
}
    80001684:	00153513          	seqz	a0,a0
    80001688:	00813403          	ld	s0,8(sp)
    8000168c:	01010113          	addi	sp,sp,16
    80001690:	00008067          	ret

0000000080001694 <_Z7enqueueP5queueP3TCB>:

// Ubaci TCB* na kraj reda
void enqueue(queue* q, TCB* data) {
    80001694:	fd010113          	addi	sp,sp,-48
    80001698:	02113423          	sd	ra,40(sp)
    8000169c:	02813023          	sd	s0,32(sp)
    800016a0:	00913c23          	sd	s1,24(sp)
    800016a4:	01213823          	sd	s2,16(sp)
    800016a8:	01313423          	sd	s3,8(sp)
    800016ac:	03010413          	addi	s0,sp,48
    800016b0:	00050493          	mv	s1,a0
    800016b4:	00058993          	mv	s3,a1
    size_t size = MemoryAllocator::transferToNumBlock(sizeof(node)); //izracunaj broj blokova
    800016b8:	01800513          	li	a0,24
    800016bc:	00002097          	auipc	ra,0x2
    800016c0:	850080e7          	jalr	-1968(ra) # 80002f0c <_ZN15MemoryAllocator18transferToNumBlockEm>
    node* new_node = (node*)MemoryAllocator::mem_alloc(size); // mem_alloc za queue
    800016c4:	00002097          	auipc	ra,0x2
    800016c8:	8dc080e7          	jalr	-1828(ra) # 80002fa0 <_ZN15MemoryAllocator9mem_allocEm>
    800016cc:	00050913          	mv	s2,a0
    new_node->data = data;
    800016d0:	01353023          	sd	s3,0(a0)
    new_node->next = nullptr;
    800016d4:	00053823          	sd	zero,16(a0)
    if (is_empty(q)) {
    800016d8:	00048513          	mv	a0,s1
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	f98080e7          	jalr	-104(ra) # 80001674 <_Z8is_emptyP5queue>
    800016e4:	02050a63          	beqz	a0,80001718 <_Z7enqueueP5queueP3TCB+0x84>
        q->front = new_node;
    800016e8:	0124b023          	sd	s2,0(s1)
        q->rear = new_node;
    800016ec:	0124b423          	sd	s2,8(s1)
    } else {
        q->rear->next = new_node; // postavi sledeci od poslednjeg na novi node
        q->rear = new_node; // sada je novi node poslednji
    }
    q->size++;
    800016f0:	0104a783          	lw	a5,16(s1)
    800016f4:	0017879b          	addiw	a5,a5,1
    800016f8:	00f4a823          	sw	a5,16(s1)
}
    800016fc:	02813083          	ld	ra,40(sp)
    80001700:	02013403          	ld	s0,32(sp)
    80001704:	01813483          	ld	s1,24(sp)
    80001708:	01013903          	ld	s2,16(sp)
    8000170c:	00813983          	ld	s3,8(sp)
    80001710:	03010113          	addi	sp,sp,48
    80001714:	00008067          	ret
        q->rear->next = new_node; // postavi sledeci od poslednjeg na novi node
    80001718:	0084b783          	ld	a5,8(s1)
    8000171c:	0127b823          	sd	s2,16(a5)
        q->rear = new_node; // sada je novi node poslednji
    80001720:	0124b423          	sd	s2,8(s1)
    80001724:	fcdff06f          	j	800016f0 <_Z7enqueueP5queueP3TCB+0x5c>

0000000080001728 <_Z9enqueue_pP5queueP3TCBi>:

void enqueue_p(queue* q, TCB* data, int idData){
    80001728:	fd010113          	addi	sp,sp,-48
    8000172c:	02113423          	sd	ra,40(sp)
    80001730:	02813023          	sd	s0,32(sp)
    80001734:	00913c23          	sd	s1,24(sp)
    80001738:	01213823          	sd	s2,16(sp)
    8000173c:	01313423          	sd	s3,8(sp)
    80001740:	01413023          	sd	s4,0(sp)
    80001744:	03010413          	addi	s0,sp,48
    80001748:	00050493          	mv	s1,a0
    8000174c:	00058a13          	mv	s4,a1
    80001750:	00060993          	mv	s3,a2

    size_t size = MemoryAllocator::transferToNumBlock(sizeof(node)); //izracunaj broj blokova
    80001754:	01800513          	li	a0,24
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	7b4080e7          	jalr	1972(ra) # 80002f0c <_ZN15MemoryAllocator18transferToNumBlockEm>
    node* new_node = (node*)MemoryAllocator::mem_alloc(size); // mem_alloc za queue
    80001760:	00002097          	auipc	ra,0x2
    80001764:	840080e7          	jalr	-1984(ra) # 80002fa0 <_ZN15MemoryAllocator9mem_allocEm>
    80001768:	00050913          	mv	s2,a0
    new_node->data = data;
    8000176c:	01453023          	sd	s4,0(a0)
    new_node->id = idData;
    80001770:	01352423          	sw	s3,8(a0)
    new_node->next = nullptr;
    80001774:	00053823          	sd	zero,16(a0)
    if (is_empty(q)||idData<q->front->id) {
    80001778:	00048513          	mv	a0,s1
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	ef8080e7          	jalr	-264(ra) # 80001674 <_Z8is_emptyP5queue>
    80001784:	00051863          	bnez	a0,80001794 <_Z9enqueue_pP5queueP3TCBi+0x6c>
    80001788:	0004b783          	ld	a5,0(s1)
    8000178c:	0087a703          	lw	a4,8(a5)
    80001790:	04e9d663          	bge	s3,a4,800017dc <_Z9enqueue_pP5queueP3TCBi+0xb4>
        new_node->next = q->front;
    80001794:	0004b783          	ld	a5,0(s1)
    80001798:	00f93823          	sd	a5,16(s2)
        q->front = new_node;
    8000179c:	0124b023          	sd	s2,0(s1)
        if(q->rear== nullptr)
    800017a0:	0084b783          	ld	a5,8(s1)
    800017a4:	02078863          	beqz	a5,800017d4 <_Z9enqueue_pP5queueP3TCBi+0xac>
        if(current==q->rear){
            q->rear = new_node;
        }
        
    }
    q->size++;
    800017a8:	0104a783          	lw	a5,16(s1)
    800017ac:	0017879b          	addiw	a5,a5,1
    800017b0:	00f4a823          	sw	a5,16(s1)
}
    800017b4:	02813083          	ld	ra,40(sp)
    800017b8:	02013403          	ld	s0,32(sp)
    800017bc:	01813483          	ld	s1,24(sp)
    800017c0:	01013903          	ld	s2,16(sp)
    800017c4:	00813983          	ld	s3,8(sp)
    800017c8:	00013a03          	ld	s4,0(sp)
    800017cc:	03010113          	addi	sp,sp,48
    800017d0:	00008067          	ret
            q->rear = new_node;
    800017d4:	0124b423          	sd	s2,8(s1)
    800017d8:	fd1ff06f          	j	800017a8 <_Z9enqueue_pP5queueP3TCBi+0x80>
        while(current->next!=nullptr && current->next->id<idData){
    800017dc:	00078693          	mv	a3,a5
    800017e0:	0107b783          	ld	a5,16(a5)
    800017e4:	00078663          	beqz	a5,800017f0 <_Z9enqueue_pP5queueP3TCBi+0xc8>
    800017e8:	0087a703          	lw	a4,8(a5)
    800017ec:	ff3748e3          	blt	a4,s3,800017dc <_Z9enqueue_pP5queueP3TCBi+0xb4>
        new_node->next = current->next;
    800017f0:	00f93823          	sd	a5,16(s2)
        current->next = new_node;
    800017f4:	0126b823          	sd	s2,16(a3)
        if(current==q->rear){
    800017f8:	0084b783          	ld	a5,8(s1)
    800017fc:	fad796e3          	bne	a5,a3,800017a8 <_Z9enqueue_pP5queueP3TCBi+0x80>
            q->rear = new_node;
    80001800:	0124b423          	sd	s2,8(s1)
    80001804:	fa5ff06f          	j	800017a8 <_Z9enqueue_pP5queueP3TCBi+0x80>

0000000080001808 <_Z7dequeueP5queue>:

// Izbaci TCB* sa pocetka reda
TCB* dequeue(queue* q) {
    80001808:	fe010113          	addi	sp,sp,-32
    8000180c:	00113c23          	sd	ra,24(sp)
    80001810:	00813823          	sd	s0,16(sp)
    80001814:	00913423          	sd	s1,8(sp)
    80001818:	01213023          	sd	s2,0(sp)
    8000181c:	02010413          	addi	s0,sp,32
    80001820:	00050493          	mv	s1,a0
    if (is_empty(q)) {
    80001824:	00000097          	auipc	ra,0x0
    80001828:	e50080e7          	jalr	-432(ra) # 80001674 <_Z8is_emptyP5queue>
    8000182c:	04051263          	bnez	a0,80001870 <_Z7dequeueP5queue+0x68>
        return nullptr;
    } else {
        node* temp = q->front; //izvlacim prvi node
    80001830:	0004b503          	ld	a0,0(s1)
        TCB* data = temp->data; //TCB* koji vracam
    80001834:	00053903          	ld	s2,0(a0)
        q->front = temp->next; //izbacim elemenat iz reda
    80001838:	01053783          	ld	a5,16(a0)
    8000183c:	00f4b023          	sd	a5,0(s1)
        MemoryAllocator::mem_free(temp); // dealociram pokazivac na trenutni/bivsi pocetak reda
    80001840:	00002097          	auipc	ra,0x2
    80001844:	874080e7          	jalr	-1932(ra) # 800030b4 <_ZN15MemoryAllocator8mem_freeEPv>
        q->size--;
    80001848:	0104a783          	lw	a5,16(s1)
    8000184c:	fff7879b          	addiw	a5,a5,-1
    80001850:	00f4a823          	sw	a5,16(s1)
        return data;
    }
}
    80001854:	00090513          	mv	a0,s2
    80001858:	01813083          	ld	ra,24(sp)
    8000185c:	01013403          	ld	s0,16(sp)
    80001860:	00813483          	ld	s1,8(sp)
    80001864:	00013903          	ld	s2,0(sp)
    80001868:	02010113          	addi	sp,sp,32
    8000186c:	00008067          	ret
        return nullptr;
    80001870:	00000913          	li	s2,0
    80001874:	fe1ff06f          	j	80001854 <_Z7dequeueP5queue+0x4c>

0000000080001878 <_Z8funkcijav>:
#include "../h/sem.hpp"
#include "../h/riscv.hpp"
#include "../test/userMain.hpp"
sem_t glob_sem;

void funkcija(){
    80001878:	ff010113          	addi	sp,sp,-16
    8000187c:	00113423          	sd	ra,8(sp)
    80001880:	00813023          	sd	s0,0(sp)
    80001884:	01010413          	addi	s0,sp,16
    userMain();
    80001888:	00005097          	auipc	ra,0x5
    8000188c:	8a4080e7          	jalr	-1884(ra) # 8000612c <_Z8userMainv>
    sem_signal(glob_sem);
    80001890:	0000d517          	auipc	a0,0xd
    80001894:	cb053503          	ld	a0,-848(a0) # 8000e540 <glob_sem>
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	c44080e7          	jalr	-956(ra) # 800014dc <_Z10sem_signalP3Sem>
}
    800018a0:	00813083          	ld	ra,8(sp)
    800018a4:	00013403          	ld	s0,0(sp)
    800018a8:	01010113          	addi	sp,sp,16
    800018ac:	00008067          	ret

00000000800018b0 <main>:



int main()
{
    800018b0:	fd010113          	addi	sp,sp,-48
    800018b4:	02113423          	sd	ra,40(sp)
    800018b8:	02813023          	sd	s0,32(sp)
    800018bc:	00913c23          	sd	s1,24(sp)
    800018c0:	03010413          	addi	s0,sp,48

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800018c4:	0000d797          	auipc	a5,0xd
    800018c8:	c147b783          	ld	a5,-1004(a5) # 8000e4d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800018cc:	10579073          	csrw	stvec,a5
    TCB* handle = nullptr;
    800018d0:	fc043c23          	sd	zero,-40(s0)
    thread_create(&handle, nullptr, nullptr);
    800018d4:	00000613          	li	a2,0
    800018d8:	00000593          	li	a1,0
    800018dc:	fd840513          	addi	a0,s0,-40
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	a4c080e7          	jalr	-1460(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    sem_open(&glob_sem,0);
    800018e8:	0000d497          	auipc	s1,0xd
    800018ec:	c5848493          	addi	s1,s1,-936 # 8000e540 <glob_sem>
    800018f0:	00000593          	li	a1,0
    800018f4:	00048513          	mv	a0,s1
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	b50080e7          	jalr	-1200(ra) # 80001448 <_Z8sem_openPP3Semj>
//    TCB* userThread = nullptr;
//    thread_create(&userThread, (void(*)(void*))funkcija, nullptr);
    funkcija();
    80001900:	00000097          	auipc	ra,0x0
    80001904:	f78080e7          	jalr	-136(ra) # 80001878 <_Z8funkcijav>
    sem_wait(glob_sem);
    80001908:	0004b503          	ld	a0,0(s1)
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	ba0080e7          	jalr	-1120(ra) # 800014ac <_Z8sem_waitP3Sem>

    sem_close(glob_sem);
    80001914:	0004b503          	ld	a0,0(s1)
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	b64080e7          	jalr	-1180(ra) # 8000147c <_Z9sem_closeP3Sem>
    delete handle;
    80001920:	fd843483          	ld	s1,-40(s0)
    80001924:	02048063          	beqz	s1,80001944 <main+0x94>
#include "syscall_cpp.hpp"
class Semaphore;
class TCB
{
public:
    ~TCB() { delete[] stack; }
    80001928:	0104b503          	ld	a0,16(s1)
    8000192c:	00050663          	beqz	a0,80001938 <main+0x88>
    80001930:	00000097          	auipc	ra,0x0
    80001934:	6dc080e7          	jalr	1756(ra) # 8000200c <_ZdaPv>
    80001938:	00048513          	mv	a0,s1
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	614080e7          	jalr	1556(ra) # 80001f50 <_ZdlPv>
    return 0;
    80001944:	00000513          	li	a0,0
    80001948:	02813083          	ld	ra,40(sp)
    8000194c:	02013403          	ld	s0,32(sp)
    80001950:	01813483          	ld	s1,24(sp)
    80001954:	03010113          	addi	sp,sp,48
    80001958:	00008067          	ret

000000008000195c <_ZN3TCB13threadWrapperEv>:
    TCB::contextSwitch(&old->context, &running->context);

}

void TCB::threadWrapper()
{
    8000195c:	fe010113          	addi	sp,sp,-32
    80001960:	00113c23          	sd	ra,24(sp)
    80001964:	00813823          	sd	s0,16(sp)
    80001968:	00913423          	sd	s1,8(sp)
    8000196c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();    //izlazak iz prekidne rutine, ali preko masinske instrukcije
    80001970:	00001097          	auipc	ra,0x1
    80001974:	e2c080e7          	jalr	-468(ra) # 8000279c <_ZN5Riscv10popSppSpieEv>
    if(TCB::semMaxThreads!=nullptr){
    80001978:	0000d517          	auipc	a0,0xd
    8000197c:	bd053503          	ld	a0,-1072(a0) # 8000e548 <_ZN3TCB13semMaxThreadsE>
    80001980:	00050663          	beqz	a0,8000198c <_ZN3TCB13threadWrapperEv+0x30>
       TCB::semMaxThreads->wait();
    80001984:	00001097          	auipc	ra,0x1
    80001988:	8a0080e7          	jalr	-1888(ra) # 80002224 <_ZN9Semaphore4waitEv>
    }

    running->body(running->arg);
    8000198c:	0000d497          	auipc	s1,0xd
    80001990:	bbc48493          	addi	s1,s1,-1092 # 8000e548 <_ZN3TCB13semMaxThreadsE>
    80001994:	0084b783          	ld	a5,8(s1)
    80001998:	0007b703          	ld	a4,0(a5)
    8000199c:	0087b503          	ld	a0,8(a5)
    800019a0:	000700e7          	jalr	a4
    if(running->parent!=nullptr){
    800019a4:	0084b683          	ld	a3,8(s1)
    800019a8:	0386b703          	ld	a4,56(a3)
    800019ac:	00070c63          	beqz	a4,800019c4 <_ZN3TCB13threadWrapperEv+0x68>
        if(--running->parent->waitingForChildred==0){
    800019b0:	04072783          	lw	a5,64(a4)
    800019b4:	fff7879b          	addiw	a5,a5,-1
    800019b8:	0007861b          	sext.w	a2,a5
    800019bc:	04f72023          	sw	a5,64(a4)
    800019c0:	02060863          	beqz	a2,800019f0 <_ZN3TCB13threadWrapperEv+0x94>

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    800019c4:	0000d797          	auipc	a5,0xd
    800019c8:	b8c7b783          	ld	a5,-1140(a5) # 8000e550 <_ZN3TCB7runningE>
    800019cc:	00100713          	li	a4,1
    800019d0:	02e78823          	sb	a4,48(a5)
            Scheduler::put(running->parent);
        }
    }

    running->setFinished(true);//gasimo nit
    ::thread_exit();
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	9fc080e7          	jalr	-1540(ra) # 800013d0 <_Z11thread_exitv>
}
    800019dc:	01813083          	ld	ra,24(sp)
    800019e0:	01013403          	ld	s0,16(sp)
    800019e4:	00813483          	ld	s1,8(sp)
    800019e8:	02010113          	addi	sp,sp,32
    800019ec:	00008067          	ret
            Scheduler::put(running->parent);
    800019f0:	0386b503          	ld	a0,56(a3)
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	4ac080e7          	jalr	1196(ra) # 80002ea0 <_ZN9Scheduler3putEP3TCB>
    800019fc:	fc9ff06f          	j	800019c4 <_ZN3TCB13threadWrapperEv+0x68>

0000000080001a00 <_ZN3TCB12createThreadEPFvPvES0_S0_PS_>:
{
    80001a00:	fc010113          	addi	sp,sp,-64
    80001a04:	02113c23          	sd	ra,56(sp)
    80001a08:	02813823          	sd	s0,48(sp)
    80001a0c:	02913423          	sd	s1,40(sp)
    80001a10:	03213023          	sd	s2,32(sp)
    80001a14:	01313c23          	sd	s3,24(sp)
    80001a18:	01413823          	sd	s4,16(sp)
    80001a1c:	01513423          	sd	s5,8(sp)
    80001a20:	04010413          	addi	s0,sp,64
    80001a24:	00050993          	mv	s3,a0
    80001a28:	00058a93          	mv	s5,a1
    80001a2c:	00060913          	mv	s2,a2
    80001a30:	00068a13          	mv	s4,a3
    return (TCB*) new TCB(body1, arg, (uint64*) stack_space, DEFAULT_TIME_SLICE,parnt);
    80001a34:	07000513          	li	a0,112
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	4c8080e7          	jalr	1224(ra) # 80001f00 <_Znwm>
    80001a40:	00050493          	mv	s1,a0
            parent(parnt!=nullptr?parnt: nullptr),
            waitingForChildred(0),
            flagMaxThreads(false),
            numOfBlocks(0),
            pingFlag(false),
            message(nullptr)
    80001a44:	01353023          	sd	s3,0(a0)
    80001a48:	01553423          	sd	s5,8(a0)
    80001a4c:	01253823          	sd	s2,16(a0)
    80001a50:	00000797          	auipc	a5,0x0
    80001a54:	f0c78793          	addi	a5,a5,-244 # 8000195c <_ZN3TCB13threadWrapperEv>
    80001a58:	00f53c23          	sd	a5,24(a0)
                     stack != nullptr ? (uint64) &stack_space[STACK_SIZE] : 0     //stack moze da bude prazan, tj pokazuje na poslednju lokaciju
    80001a5c:	06090863          	beqz	s2,80001acc <_ZN3TCB12createThreadEPFvPvES0_S0_PS_+0xcc>
    80001a60:	00008637          	lui	a2,0x8
    80001a64:	00c90933          	add	s2,s2,a2
            message(nullptr)
    80001a68:	0324b023          	sd	s2,32(s1)
    80001a6c:	00200793          	li	a5,2
    80001a70:	02f4b423          	sd	a5,40(s1)
    80001a74:	02048823          	sb	zero,48(s1)
    80001a78:	020488a3          	sb	zero,49(s1)
    80001a7c:	02048923          	sb	zero,50(s1)
            idThread(++ID),
    80001a80:	0000d717          	auipc	a4,0xd
    80001a84:	ac870713          	addi	a4,a4,-1336 # 8000e548 <_ZN3TCB13semMaxThreadsE>
    80001a88:	01072783          	lw	a5,16(a4)
    80001a8c:	0017879b          	addiw	a5,a5,1
            message(nullptr)
    80001a90:	00f72823          	sw	a5,16(a4)
    80001a94:	02f4aa23          	sw	a5,52(s1)
    80001a98:	0344bc23          	sd	s4,56(s1)
    80001a9c:	0404a023          	sw	zero,64(s1)
    80001aa0:	04048223          	sb	zero,68(s1)
    80001aa4:	0404b423          	sd	zero,72(s1)
    80001aa8:	04048823          	sb	zero,80(s1)
    80001aac:	0404bc23          	sd	zero,88(s1)
    {
        if(running==nullptr){
    80001ab0:	00873783          	ld	a5,8(a4)
    80001ab4:	02078063          	beqz	a5,80001ad4 <_ZN3TCB12createThreadEPFvPvES0_S0_PS_+0xd4>
            running=this;
        }
        if (body != nullptr) { Scheduler::put(this); }
    80001ab8:	02098463          	beqz	s3,80001ae0 <_ZN3TCB12createThreadEPFvPvES0_S0_PS_+0xe0>
    80001abc:	00048513          	mv	a0,s1
    80001ac0:	00001097          	auipc	ra,0x1
    80001ac4:	3e0080e7          	jalr	992(ra) # 80002ea0 <_ZN9Scheduler3putEP3TCB>
    80001ac8:	0180006f          	j	80001ae0 <_ZN3TCB12createThreadEPFvPvES0_S0_PS_+0xe0>
                     stack != nullptr ? (uint64) &stack_space[STACK_SIZE] : 0     //stack moze da bude prazan, tj pokazuje na poslednju lokaciju
    80001acc:	00000913          	li	s2,0
    80001ad0:	f99ff06f          	j	80001a68 <_ZN3TCB12createThreadEPFvPvES0_S0_PS_+0x68>
            running=this;
    80001ad4:	0000d797          	auipc	a5,0xd
    80001ad8:	a697be23          	sd	s1,-1412(a5) # 8000e550 <_ZN3TCB7runningE>
    80001adc:	fddff06f          	j	80001ab8 <_ZN3TCB12createThreadEPFvPvES0_S0_PS_+0xb8>
        if(parent!= nullptr){
    80001ae0:	0384b783          	ld	a5,56(s1)
    80001ae4:	04078863          	beqz	a5,80001b34 <_ZN3TCB12createThreadEPFvPvES0_S0_PS_+0x134>
            parent->waitingForChildred++;
    80001ae8:	0407a703          	lw	a4,64(a5)
    80001aec:	0017071b          	addiw	a4,a4,1
    80001af0:	04e7a023          	sw	a4,64(a5)
            spaceAvail = new Semaphore(1);
    80001af4:	02000513          	li	a0,32
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	408080e7          	jalr	1032(ra) # 80001f00 <_Znwm>
    80001b00:	00050913          	mv	s2,a0
    80001b04:	00100593          	li	a1,1
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	6dc080e7          	jalr	1756(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80001b10:	0724b023          	sd	s2,96(s1)
            itemAvail = new Semaphore(0);
    80001b14:	02000513          	li	a0,32
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	3e8080e7          	jalr	1000(ra) # 80001f00 <_Znwm>
    80001b20:	00050913          	mv	s2,a0
    80001b24:	00000593          	li	a1,0
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	6bc080e7          	jalr	1724(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80001b30:	0724b423          	sd	s2,104(s1)
}
    80001b34:	00048513          	mv	a0,s1
    80001b38:	03813083          	ld	ra,56(sp)
    80001b3c:	03013403          	ld	s0,48(sp)
    80001b40:	02813483          	ld	s1,40(sp)
    80001b44:	02013903          	ld	s2,32(sp)
    80001b48:	01813983          	ld	s3,24(sp)
    80001b4c:	01013a03          	ld	s4,16(sp)
    80001b50:	00813a83          	ld	s5,8(sp)
    80001b54:	04010113          	addi	sp,sp,64
    80001b58:	00008067          	ret
    80001b5c:	00050993          	mv	s3,a0
            spaceAvail = new Semaphore(1);
    80001b60:	00090513          	mv	a0,s2
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	3ec080e7          	jalr	1004(ra) # 80001f50 <_ZdlPv>
    return (TCB*) new TCB(body1, arg, (uint64*) stack_space, DEFAULT_TIME_SLICE,parnt);
    80001b6c:	00048513          	mv	a0,s1
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	3e0080e7          	jalr	992(ra) # 80001f50 <_ZdlPv>
    80001b78:	00098513          	mv	a0,s3
    80001b7c:	0000e097          	auipc	ra,0xe
    80001b80:	d4c080e7          	jalr	-692(ra) # 8000f8c8 <_Unwind_Resume>
    80001b84:	00050993          	mv	s3,a0
            itemAvail = new Semaphore(0);
    80001b88:	00090513          	mv	a0,s2
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	3c4080e7          	jalr	964(ra) # 80001f50 <_ZdlPv>
    80001b94:	fd9ff06f          	j	80001b6c <_ZN3TCB12createThreadEPFvPvES0_S0_PS_+0x16c>
    80001b98:	00050993          	mv	s3,a0
    80001b9c:	fd1ff06f          	j	80001b6c <_ZN3TCB12createThreadEPFvPvES0_S0_PS_+0x16c>

0000000080001ba0 <_ZN3TCB11getThreadIdEv>:
int TCB::getThreadId(){
    80001ba0:	ff010113          	addi	sp,sp,-16
    80001ba4:	00813423          	sd	s0,8(sp)
    80001ba8:	01010413          	addi	s0,sp,16
}
    80001bac:	0000d797          	auipc	a5,0xd
    80001bb0:	9a47b783          	ld	a5,-1628(a5) # 8000e550 <_ZN3TCB7runningE>
    80001bb4:	0347a503          	lw	a0,52(a5)
    80001bb8:	00813403          	ld	s0,8(sp)
    80001bbc:	01010113          	addi	sp,sp,16
    80001bc0:	00008067          	ret

0000000080001bc4 <_ZN3TCB8dispatchEv>:
{
    80001bc4:	fe010113          	addi	sp,sp,-32
    80001bc8:	00113c23          	sd	ra,24(sp)
    80001bcc:	00813823          	sd	s0,16(sp)
    80001bd0:	00913423          	sd	s1,8(sp)
    80001bd4:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001bd8:	0000d497          	auipc	s1,0xd
    80001bdc:	9784b483          	ld	s1,-1672(s1) # 8000e550 <_ZN3TCB7runningE>
    if(old->pingFlag==true){
    80001be0:	0504c783          	lbu	a5,80(s1)
    80001be4:	06079663          	bnez	a5,80001c50 <_ZN3TCB8dispatchEv+0x8c>
    old->numOfBlocks=0;
    80001be8:	0404b423          	sd	zero,72(s1)
    bool isBlocked() const { return blocked; }
    80001bec:	0324c783          	lbu	a5,50(s1)
    if(!old->isBlocked()) {
    80001bf0:	02079663          	bnez	a5,80001c1c <_ZN3TCB8dispatchEv+0x58>
    bool isFinished() const { return finished; }
    80001bf4:	0304c783          	lbu	a5,48(s1)
        if (!old->isFinished()) {
    80001bf8:	0a078a63          	beqz	a5,80001cac <_ZN3TCB8dispatchEv+0xe8>
            delete old;
    80001bfc:	02048063          	beqz	s1,80001c1c <_ZN3TCB8dispatchEv+0x58>
    ~TCB() { delete[] stack; }
    80001c00:	0104b503          	ld	a0,16(s1)
    80001c04:	00050663          	beqz	a0,80001c10 <_ZN3TCB8dispatchEv+0x4c>
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	404080e7          	jalr	1028(ra) # 8000200c <_ZdaPv>
    80001c10:	00048513          	mv	a0,s1
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	33c080e7          	jalr	828(ra) # 80001f50 <_ZdlPv>
    running = Scheduler::get();
    80001c1c:	00001097          	auipc	ra,0x1
    80001c20:	254080e7          	jalr	596(ra) # 80002e70 <_ZN9Scheduler3getEv>
    80001c24:	0000d797          	auipc	a5,0xd
    80001c28:	92a7b623          	sd	a0,-1748(a5) # 8000e550 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001c2c:	01850593          	addi	a1,a0,24
    80001c30:	01848513          	addi	a0,s1,24
    80001c34:	fffff097          	auipc	ra,0xfffff
    80001c38:	5d4080e7          	jalr	1492(ra) # 80001208 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001c3c:	01813083          	ld	ra,24(sp)
    80001c40:	01013403          	ld	s0,16(sp)
    80001c44:	00813483          	ld	s1,8(sp)
    80001c48:	02010113          	addi	sp,sp,32
    80001c4c:	00008067          	ret
        printString("Nit ");
    80001c50:	00009517          	auipc	a0,0x9
    80001c54:	3d050513          	addi	a0,a0,976 # 8000b020 <CONSOLE_STATUS+0x10>
    80001c58:	00004097          	auipc	ra,0x4
    80001c5c:	e0c080e7          	jalr	-500(ra) # 80005a64 <_Z11printStringPKc>
        printInt(old->idThread);
    80001c60:	00000613          	li	a2,0
    80001c64:	00a00593          	li	a1,10
    80001c68:	0344a503          	lw	a0,52(s1)
    80001c6c:	00004097          	auipc	ra,0x4
    80001c70:	fa8080e7          	jalr	-88(ra) # 80005c14 <_Z8printIntiii>
        printString("je pingovana!; Broj alociranih blokova je: ");
    80001c74:	00009517          	auipc	a0,0x9
    80001c78:	3b450513          	addi	a0,a0,948 # 8000b028 <CONSOLE_STATUS+0x18>
    80001c7c:	00004097          	auipc	ra,0x4
    80001c80:	de8080e7          	jalr	-536(ra) # 80005a64 <_Z11printStringPKc>
        printInt(old->numOfBlocks);
    80001c84:	00000613          	li	a2,0
    80001c88:	00a00593          	li	a1,10
    80001c8c:	0484a503          	lw	a0,72(s1)
    80001c90:	00004097          	auipc	ra,0x4
    80001c94:	f84080e7          	jalr	-124(ra) # 80005c14 <_Z8printIntiii>
        printString("\n");
    80001c98:	0000a517          	auipc	a0,0xa
    80001c9c:	91850513          	addi	a0,a0,-1768 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80001ca0:	00004097          	auipc	ra,0x4
    80001ca4:	dc4080e7          	jalr	-572(ra) # 80005a64 <_Z11printStringPKc>
    80001ca8:	f41ff06f          	j	80001be8 <_ZN3TCB8dispatchEv+0x24>
            Scheduler::put(old);
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	1f0080e7          	jalr	496(ra) # 80002ea0 <_ZN9Scheduler3putEP3TCB>
    80001cb8:	f65ff06f          	j	80001c1c <_ZN3TCB8dispatchEv+0x58>

0000000080001cbc <_ZN3TCB11thread_exitEv>:
int TCB::thread_exit(){
    80001cbc:	ff010113          	addi	sp,sp,-16
    80001cc0:	00113423          	sd	ra,8(sp)
    80001cc4:	00813023          	sd	s0,0(sp)
    80001cc8:	01010413          	addi	s0,sp,16
    TCB::running->setFinished(true);
    80001ccc:	0000d797          	auipc	a5,0xd
    80001cd0:	87c78793          	addi	a5,a5,-1924 # 8000e548 <_ZN3TCB13semMaxThreadsE>
    80001cd4:	0087b703          	ld	a4,8(a5)
    void setFinished(bool value) { finished = value; }
    80001cd8:	00100693          	li	a3,1
    80001cdc:	02d70823          	sb	a3,48(a4)
    if(semMaxThreads!=nullptr){
    80001ce0:	0007b503          	ld	a0,0(a5)
    80001ce4:	00050663          	beqz	a0,80001cf0 <_ZN3TCB11thread_exitEv+0x34>
        TCB::semMaxThreads->signal();
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	6a0080e7          	jalr	1696(ra) # 80002388 <_ZN9Semaphore6signalEv>
    TCB::dispatch();
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	ed4080e7          	jalr	-300(ra) # 80001bc4 <_ZN3TCB8dispatchEv>
}
    80001cf8:	00000513          	li	a0,0
    80001cfc:	00813083          	ld	ra,8(sp)
    80001d00:	00013403          	ld	s0,0(sp)
    80001d04:	01010113          	addi	sp,sp,16
    80001d08:	00008067          	ret

0000000080001d0c <_ZN3TCB11thread_joinEPS_>:

void TCB::thread_join(TCB *handle) {
    80001d0c:	fe010113          	addi	sp,sp,-32
    80001d10:	00113c23          	sd	ra,24(sp)
    80001d14:	00813823          	sd	s0,16(sp)
    80001d18:	00913423          	sd	s1,8(sp)
    80001d1c:	02010413          	addi	s0,sp,32
    80001d20:	00050493          	mv	s1,a0
    bool isFinished() const { return finished; }
    80001d24:	0304c783          	lbu	a5,48(s1)
    while(!handle->isFinished())
    80001d28:	00079863          	bnez	a5,80001d38 <_ZN3TCB11thread_joinEPS_+0x2c>
        TCB::dispatch();
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	e98080e7          	jalr	-360(ra) # 80001bc4 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished())
    80001d34:	ff1ff06f          	j	80001d24 <_ZN3TCB11thread_joinEPS_+0x18>
}
    80001d38:	01813083          	ld	ra,24(sp)
    80001d3c:	01013403          	ld	s0,16(sp)
    80001d40:	00813483          	ld	s1,8(sp)
    80001d44:	02010113          	addi	sp,sp,32
    80001d48:	00008067          	ret

0000000080001d4c <_ZN3TCB7setJoinEv>:

void TCB::setJoin() {
    80001d4c:	fe010113          	addi	sp,sp,-32
    80001d50:	00113c23          	sd	ra,24(sp)
    80001d54:	00813823          	sd	s0,16(sp)
    80001d58:	00913423          	sd	s1,8(sp)
    80001d5c:	01213023          	sd	s2,0(sp)
    80001d60:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001d64:	0000c497          	auipc	s1,0xc
    80001d68:	7e448493          	addi	s1,s1,2020 # 8000e548 <_ZN3TCB13semMaxThreadsE>
    80001d6c:	0084b903          	ld	s2,8(s1)
    running = Scheduler::get();
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	100080e7          	jalr	256(ra) # 80002e70 <_ZN9Scheduler3getEv>
    80001d78:	00a4b423          	sd	a0,8(s1)
    TCB::contextSwitch(&old->context, &running->context);
    80001d7c:	01850593          	addi	a1,a0,24
    80001d80:	01890513          	addi	a0,s2,24
    80001d84:	fffff097          	auipc	ra,0xfffff
    80001d88:	484080e7          	jalr	1156(ra) # 80001208 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001d8c:	01813083          	ld	ra,24(sp)
    80001d90:	01013403          	ld	s0,16(sp)
    80001d94:	00813483          	ld	s1,8(sp)
    80001d98:	00013903          	ld	s2,0(sp)
    80001d9c:	02010113          	addi	sp,sp,32
    80001da0:	00008067          	ret

0000000080001da4 <_ZN3TCB17setMaximumThreadsEi>:

void TCB::setMaximumThreads(int i){
    80001da4:	fe010113          	addi	sp,sp,-32
    80001da8:	00113c23          	sd	ra,24(sp)
    80001dac:	00813823          	sd	s0,16(sp)
    80001db0:	00913423          	sd	s1,8(sp)
    80001db4:	01213023          	sd	s2,0(sp)
    80001db8:	02010413          	addi	s0,sp,32
    80001dbc:	00050913          	mv	s2,a0
    running->flagMaxThreads=true;
    80001dc0:	0000c797          	auipc	a5,0xc
    80001dc4:	7907b783          	ld	a5,1936(a5) # 8000e550 <_ZN3TCB7runningE>
    80001dc8:	00100713          	li	a4,1
    80001dcc:	04e78223          	sb	a4,68(a5)
    semMaxThreads = new Semaphore(i);
    80001dd0:	02000513          	li	a0,32
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	12c080e7          	jalr	300(ra) # 80001f00 <_Znwm>
    80001ddc:	00050493          	mv	s1,a0
    80001de0:	00090593          	mv	a1,s2
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	400080e7          	jalr	1024(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80001dec:	0000c797          	auipc	a5,0xc
    80001df0:	7497be23          	sd	s1,1884(a5) # 8000e548 <_ZN3TCB13semMaxThreadsE>
}
    80001df4:	01813083          	ld	ra,24(sp)
    80001df8:	01013403          	ld	s0,16(sp)
    80001dfc:	00813483          	ld	s1,8(sp)
    80001e00:	00013903          	ld	s2,0(sp)
    80001e04:	02010113          	addi	sp,sp,32
    80001e08:	00008067          	ret
    80001e0c:	00050913          	mv	s2,a0
    semMaxThreads = new Semaphore(i);
    80001e10:	00048513          	mv	a0,s1
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	13c080e7          	jalr	316(ra) # 80001f50 <_ZdlPv>
    80001e1c:	00090513          	mv	a0,s2
    80001e20:	0000e097          	auipc	ra,0xe
    80001e24:	aa8080e7          	jalr	-1368(ra) # 8000f8c8 <_Unwind_Resume>

0000000080001e28 <_ZN3TCB10getMessageEv>:

char* TCB::getMessage(){
    80001e28:	fe010113          	addi	sp,sp,-32
    80001e2c:	00113c23          	sd	ra,24(sp)
    80001e30:	00813823          	sd	s0,16(sp)
    80001e34:	00913423          	sd	s1,8(sp)
    80001e38:	02010413          	addi	s0,sp,32
    running->itemAvail->wait();
    80001e3c:	0000c497          	auipc	s1,0xc
    80001e40:	70c48493          	addi	s1,s1,1804 # 8000e548 <_ZN3TCB13semMaxThreadsE>
    80001e44:	0084b783          	ld	a5,8(s1)
    80001e48:	0687b503          	ld	a0,104(a5)
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	3d8080e7          	jalr	984(ra) # 80002224 <_ZN9Semaphore4waitEv>
    char* mess = running->message;
    80001e54:	0084b783          	ld	a5,8(s1)
    80001e58:	0587b483          	ld	s1,88(a5)
    running->spaceAvail->signal();
    80001e5c:	0607b503          	ld	a0,96(a5)
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	528080e7          	jalr	1320(ra) # 80002388 <_ZN9Semaphore6signalEv>
    return mess;
}
    80001e68:	00048513          	mv	a0,s1
    80001e6c:	01813083          	ld	ra,24(sp)
    80001e70:	01013403          	ld	s0,16(sp)
    80001e74:	00813483          	ld	s1,8(sp)
    80001e78:	02010113          	addi	sp,sp,32
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN3TCB10putMessageEPc>:
void TCB::putMessage(char* message){
    80001e80:	fe010113          	addi	sp,sp,-32
    80001e84:	00113c23          	sd	ra,24(sp)
    80001e88:	00813823          	sd	s0,16(sp)
    80001e8c:	00913423          	sd	s1,8(sp)
    80001e90:	01213023          	sd	s2,0(sp)
    80001e94:	02010413          	addi	s0,sp,32
    80001e98:	00050493          	mv	s1,a0
    80001e9c:	00058913          	mv	s2,a1
    spaceAvail->wait();
    80001ea0:	06053503          	ld	a0,96(a0)
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	380080e7          	jalr	896(ra) # 80002224 <_ZN9Semaphore4waitEv>
    this->message = message;
    80001eac:	0524bc23          	sd	s2,88(s1)
    itemAvail->signal();
    80001eb0:	0684b503          	ld	a0,104(s1)
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	4d4080e7          	jalr	1236(ra) # 80002388 <_ZN9Semaphore6signalEv>
}
    80001ebc:	01813083          	ld	ra,24(sp)
    80001ec0:	01013403          	ld	s0,16(sp)
    80001ec4:	00813483          	ld	s1,8(sp)
    80001ec8:	00013903          	ld	s2,0(sp)
    80001ecc:	02010113          	addi	sp,sp,32
    80001ed0:	00008067          	ret

0000000080001ed4 <_ZN6Thread14thread_wrapperEPv>:
Thread::Thread() {
    body = thread_wrapper;
    arg = this;
}

void Thread::thread_wrapper(void* handle) {
    80001ed4:	ff010113          	addi	sp,sp,-16
    80001ed8:	00113423          	sd	ra,8(sp)
    80001edc:	00813023          	sd	s0,0(sp)
    80001ee0:	01010413          	addi	s0,sp,16
    ((Thread*)handle)->run();
    80001ee4:	00053783          	ld	a5,0(a0)
    80001ee8:	0107b783          	ld	a5,16(a5)
    80001eec:	000780e7          	jalr	a5
}
    80001ef0:	00813083          	ld	ra,8(sp)
    80001ef4:	00013403          	ld	s0,0(sp)
    80001ef8:	01010113          	addi	sp,sp,16
    80001efc:	00008067          	ret

0000000080001f00 <_Znwm>:
void* operator new(size_t n){
    80001f00:	ff010113          	addi	sp,sp,-16
    80001f04:	00113423          	sd	ra,8(sp)
    80001f08:	00813023          	sd	s0,0(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001f10:	fffff097          	auipc	ra,0xfffff
    80001f14:	32c080e7          	jalr	812(ra) # 8000123c <_Z9mem_allocm>
}
    80001f18:	00813083          	ld	ra,8(sp)
    80001f1c:	00013403          	ld	s0,0(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret

0000000080001f28 <_Znam>:
void* operator new[](size_t n){
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00113423          	sd	ra,8(sp)
    80001f30:	00813023          	sd	s0,0(sp)
    80001f34:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001f38:	fffff097          	auipc	ra,0xfffff
    80001f3c:	304080e7          	jalr	772(ra) # 8000123c <_Z9mem_allocm>
}
    80001f40:	00813083          	ld	ra,8(sp)
    80001f44:	00013403          	ld	s0,0(sp)
    80001f48:	01010113          	addi	sp,sp,16
    80001f4c:	00008067          	ret

0000000080001f50 <_ZdlPv>:
void operator delete(void *p){
    80001f50:	ff010113          	addi	sp,sp,-16
    80001f54:	00113423          	sd	ra,8(sp)
    80001f58:	00813023          	sd	s0,0(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001f60:	fffff097          	auipc	ra,0xfffff
    80001f64:	318080e7          	jalr	792(ra) # 80001278 <_Z8mem_freePv>
}
    80001f68:	00813083          	ld	ra,8(sp)
    80001f6c:	00013403          	ld	s0,0(sp)
    80001f70:	01010113          	addi	sp,sp,16
    80001f74:	00008067          	ret

0000000080001f78 <_ZN9SemaphoreD1Ev>:

void Semaphore::turnOnPriorities() {
    turnFlag=true;
}

Semaphore::~Semaphore() {
    80001f78:	fe010113          	addi	sp,sp,-32
    80001f7c:	00113c23          	sd	ra,24(sp)
    80001f80:	00813823          	sd	s0,16(sp)
    80001f84:	00913423          	sd	s1,8(sp)
    80001f88:	02010413          	addi	s0,sp,32
    80001f8c:	00050493          	mv	s1,a0
    80001f90:	0000c797          	auipc	a5,0xc
    80001f94:	30078793          	addi	a5,a5,768 # 8000e290 <_ZTV9Semaphore+0x10>
    80001f98:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001f9c:	00853503          	ld	a0,8(a0)
    80001fa0:	fffff097          	auipc	ra,0xfffff
    80001fa4:	4dc080e7          	jalr	1244(ra) # 8000147c <_Z9sem_closeP3Sem>
    delete myHandle;
    80001fa8:	0084b503          	ld	a0,8(s1)
    80001fac:	00050663          	beqz	a0,80001fb8 <_ZN9SemaphoreD1Ev+0x40>
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	fa0080e7          	jalr	-96(ra) # 80001f50 <_ZdlPv>
}
    80001fb8:	01813083          	ld	ra,24(sp)
    80001fbc:	01013403          	ld	s0,16(sp)
    80001fc0:	00813483          	ld	s1,8(sp)
    80001fc4:	02010113          	addi	sp,sp,32
    80001fc8:	00008067          	ret

0000000080001fcc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001fcc:	fe010113          	addi	sp,sp,-32
    80001fd0:	00113c23          	sd	ra,24(sp)
    80001fd4:	00813823          	sd	s0,16(sp)
    80001fd8:	00913423          	sd	s1,8(sp)
    80001fdc:	02010413          	addi	s0,sp,32
    80001fe0:	00050493          	mv	s1,a0
}
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	f94080e7          	jalr	-108(ra) # 80001f78 <_ZN9SemaphoreD1Ev>
    80001fec:	00048513          	mv	a0,s1
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	f60080e7          	jalr	-160(ra) # 80001f50 <_ZdlPv>
    80001ff8:	01813083          	ld	ra,24(sp)
    80001ffc:	01013403          	ld	s0,16(sp)
    80002000:	00813483          	ld	s1,8(sp)
    80002004:	02010113          	addi	sp,sp,32
    80002008:	00008067          	ret

000000008000200c <_ZdaPv>:
void operator delete[](void *p){
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00113423          	sd	ra,8(sp)
    80002014:	00813023          	sd	s0,0(sp)
    80002018:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000201c:	fffff097          	auipc	ra,0xfffff
    80002020:	25c080e7          	jalr	604(ra) # 80001278 <_Z8mem_freePv>
}
    80002024:	00813083          	ld	ra,8(sp)
    80002028:	00013403          	ld	s0,0(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002034:	fe010113          	addi	sp,sp,-32
    80002038:	00113c23          	sd	ra,24(sp)
    8000203c:	00813823          	sd	s0,16(sp)
    80002040:	00913423          	sd	s1,8(sp)
    80002044:	02010413          	addi	s0,sp,32
    80002048:	0000c797          	auipc	a5,0xc
    8000204c:	22078793          	addi	a5,a5,544 # 8000e268 <_ZTV6Thread+0x10>
    80002050:	00f53023          	sd	a5,0(a0)
    this->body = nullptr;
    80002054:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    80002058:	00053c23          	sd	zero,24(a0)
    myHandle->setFinished(true);
    8000205c:	00853783          	ld	a5,8(a0)
    void setFinished(bool value) { finished = value; }
    80002060:	00100713          	li	a4,1
    80002064:	02e78823          	sb	a4,48(a5)
    delete myHandle;
    80002068:	00853483          	ld	s1,8(a0)
    8000206c:	02048063          	beqz	s1,8000208c <_ZN6ThreadD1Ev+0x58>
    ~TCB() { delete[] stack; }
    80002070:	0104b503          	ld	a0,16(s1)
    80002074:	00050663          	beqz	a0,80002080 <_ZN6ThreadD1Ev+0x4c>
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	f94080e7          	jalr	-108(ra) # 8000200c <_ZdaPv>
    80002080:	00048513          	mv	a0,s1
    80002084:	00000097          	auipc	ra,0x0
    80002088:	ecc080e7          	jalr	-308(ra) # 80001f50 <_ZdlPv>
}
    8000208c:	01813083          	ld	ra,24(sp)
    80002090:	01013403          	ld	s0,16(sp)
    80002094:	00813483          	ld	s1,8(sp)
    80002098:	02010113          	addi	sp,sp,32
    8000209c:	00008067          	ret

00000000800020a0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800020a0:	fe010113          	addi	sp,sp,-32
    800020a4:	00113c23          	sd	ra,24(sp)
    800020a8:	00813823          	sd	s0,16(sp)
    800020ac:	00913423          	sd	s1,8(sp)
    800020b0:	02010413          	addi	s0,sp,32
    800020b4:	00050493          	mv	s1,a0
}
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	f7c080e7          	jalr	-132(ra) # 80002034 <_ZN6ThreadD1Ev>
    800020c0:	00048513          	mv	a0,s1
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	e8c080e7          	jalr	-372(ra) # 80001f50 <_ZdlPv>
    800020cc:	01813083          	ld	ra,24(sp)
    800020d0:	01013403          	ld	s0,16(sp)
    800020d4:	00813483          	ld	s1,8(sp)
    800020d8:	02010113          	addi	sp,sp,32
    800020dc:	00008067          	ret

00000000800020e0 <_ZN6Thread5startEv>:
int Thread::start (){
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00113423          	sd	ra,8(sp)
    800020e8:	00813023          	sd	s0,0(sp)
    800020ec:	01010413          	addi	s0,sp,16
    k = thread_create(&this->myHandle,body, arg);//ove video
    800020f0:	01853603          	ld	a2,24(a0)
    800020f4:	01053583          	ld	a1,16(a0)
    800020f8:	00850513          	addi	a0,a0,8
    800020fc:	fffff097          	auipc	ra,0xfffff
    80002100:	230080e7          	jalr	560(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002104:	00813083          	ld	ra,8(sp)
    80002108:	00013403          	ld	s0,0(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <_ZN6Thread8dispatchEv>:
void Thread::dispatch(){
    80002114:	ff010113          	addi	sp,sp,-16
    80002118:	00113423          	sd	ra,8(sp)
    8000211c:	00813023          	sd	s0,0(sp)
    80002120:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002124:	fffff097          	auipc	ra,0xfffff
    80002128:	288080e7          	jalr	648(ra) # 800013ac <_Z15thread_dispatchv>
}
    8000212c:	00813083          	ld	ra,8(sp)
    80002130:	00013403          	ld	s0,0(sp)
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00008067          	ret

000000008000213c <_ZN6Thread5sleepEm>:
int Thread::sleep (time_t time){
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00813423          	sd	s0,8(sp)
    80002144:	01010413          	addi	s0,sp,16
}
    80002148:	00000513          	li	a0,0
    8000214c:	00813403          	ld	s0,8(sp)
    80002150:	01010113          	addi	sp,sp,16
    80002154:	00008067          	ret

0000000080002158 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002158:	ff010113          	addi	sp,sp,-16
    8000215c:	00813423          	sd	s0,8(sp)
    80002160:	01010413          	addi	s0,sp,16
    80002164:	0000c797          	auipc	a5,0xc
    80002168:	10478793          	addi	a5,a5,260 # 8000e268 <_ZTV6Thread+0x10>
    8000216c:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80002170:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002174:	00c53c23          	sd	a2,24(a0)
}
    80002178:	00813403          	ld	s0,8(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00813423          	sd	s0,8(sp)
    8000218c:	01010413          	addi	s0,sp,16
    80002190:	0000c797          	auipc	a5,0xc
    80002194:	0d878793          	addi	a5,a5,216 # 8000e268 <_ZTV6Thread+0x10>
    80002198:	00f53023          	sd	a5,0(a0)
    body = thread_wrapper;
    8000219c:	00000797          	auipc	a5,0x0
    800021a0:	d3878793          	addi	a5,a5,-712 # 80001ed4 <_ZN6Thread14thread_wrapperEPv>
    800021a4:	00f53823          	sd	a5,16(a0)
    arg = this;
    800021a8:	00a53c23          	sd	a0,24(a0)
}
    800021ac:	00813403          	ld	s0,8(sp)
    800021b0:	01010113          	addi	sp,sp,16
    800021b4:	00008067          	ret

00000000800021b8 <_ZN6Thread4pingEv>:
void Thread::ping() {
    800021b8:	ff010113          	addi	sp,sp,-16
    800021bc:	00113423          	sd	ra,8(sp)
    800021c0:	00813023          	sd	s0,0(sp)
    800021c4:	01010413          	addi	s0,sp,16
    ::ping(myHandle);
    800021c8:	00853503          	ld	a0,8(a0)
    800021cc:	fffff097          	auipc	ra,0xfffff
    800021d0:	440080e7          	jalr	1088(ra) # 8000160c <_Z4pingP3TCB>
}
    800021d4:	00813083          	ld	ra,8(sp)
    800021d8:	00013403          	ld	s0,0(sp)
    800021dc:	01010113          	addi	sp,sp,16
    800021e0:	00008067          	ret

00000000800021e4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00113423          	sd	ra,8(sp)
    800021ec:	00813023          	sd	s0,0(sp)
    800021f0:	01010413          	addi	s0,sp,16
    800021f4:	0000c797          	auipc	a5,0xc
    800021f8:	09c78793          	addi	a5,a5,156 # 8000e290 <_ZTV9Semaphore+0x10>
    800021fc:	00f53023          	sd	a5,0(a0)
    turnFlag=false;
    80002200:	00050823          	sb	zero,16(a0)
    owners = nullptr;
    80002204:	00053c23          	sd	zero,24(a0)
    sem_open(&myHandle, init);
    80002208:	00850513          	addi	a0,a0,8
    8000220c:	fffff097          	auipc	ra,0xfffff
    80002210:	23c080e7          	jalr	572(ra) # 80001448 <_Z8sem_openPP3Semj>
}
    80002214:	00813083          	ld	ra,8(sp)
    80002218:	00013403          	ld	s0,0(sp)
    8000221c:	01010113          	addi	sp,sp,16
    80002220:	00008067          	ret

0000000080002224 <_ZN9Semaphore4waitEv>:
int Semaphore::wait(){
    80002224:	fe010113          	addi	sp,sp,-32
    80002228:	00113c23          	sd	ra,24(sp)
    8000222c:	00813823          	sd	s0,16(sp)
    80002230:	00913423          	sd	s1,8(sp)
    80002234:	01213023          	sd	s2,0(sp)
    80002238:	02010413          	addi	s0,sp,32
    8000223c:	00050913          	mv	s2,a0
    if(owners!= nullptr){
    80002240:	01853783          	ld	a5,24(a0)
    80002244:	0a078e63          	beqz	a5,80002300 <_ZN9Semaphore4waitEv+0xdc>
        int id = getThreadId();
    80002248:	fffff097          	auipc	ra,0xfffff
    8000224c:	398080e7          	jalr	920(ra) # 800015e0 <_Z11getThreadIdv>
    80002250:	00050493          	mv	s1,a0
        for(a = owners; a;a=a->next){
    80002254:	01893783          	ld	a5,24(s2)
    80002258:	10078a63          	beqz	a5,8000236c <_ZN9Semaphore4waitEv+0x148>
            if(a->owner==id){
    8000225c:	0007a703          	lw	a4,0(a5)
    80002260:	00970663          	beq	a4,s1,8000226c <_ZN9Semaphore4waitEv+0x48>
        for(a = owners; a;a=a->next){
    80002264:	0087b783          	ld	a5,8(a5)
    80002268:	ff1ff06f          	j	80002258 <_ZN9Semaphore4waitEv+0x34>
                printString("Cekam na semaforu id:");
    8000226c:	00009517          	auipc	a0,0x9
    80002270:	dec50513          	addi	a0,a0,-532 # 8000b058 <CONSOLE_STATUS+0x48>
    80002274:	00003097          	auipc	ra,0x3
    80002278:	7f0080e7          	jalr	2032(ra) # 80005a64 <_Z11printStringPKc>
                printInt(id);
    8000227c:	00000613          	li	a2,0
    80002280:	00a00593          	li	a1,10
    80002284:	00048513          	mv	a0,s1
    80002288:	00004097          	auipc	ra,0x4
    8000228c:	98c080e7          	jalr	-1652(ra) # 80005c14 <_Z8printIntiii>
                printString(" \n");
    80002290:	00009517          	auipc	a0,0x9
    80002294:	de050513          	addi	a0,a0,-544 # 8000b070 <CONSOLE_STATUS+0x60>
    80002298:	00003097          	auipc	ra,0x3
    8000229c:	7cc080e7          	jalr	1996(ra) # 80005a64 <_Z11printStringPKc>
            if (turnFlag) {
    800022a0:	01094783          	lbu	a5,16(s2)
    800022a4:	00079a63          	bnez	a5,800022b8 <_ZN9Semaphore4waitEv+0x94>
                return sem_wait(myHandle);
    800022a8:	00893503          	ld	a0,8(s2)
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	200080e7          	jalr	512(ra) # 800014ac <_Z8sem_waitP3Sem>
    800022b4:	0bc0006f          	j	80002370 <_ZN9Semaphore4waitEv+0x14c>
                printString("Wait zove: ");
    800022b8:	00009517          	auipc	a0,0x9
    800022bc:	dc050513          	addi	a0,a0,-576 # 8000b078 <CONSOLE_STATUS+0x68>
    800022c0:	00003097          	auipc	ra,0x3
    800022c4:	7a4080e7          	jalr	1956(ra) # 80005a64 <_Z11printStringPKc>
                printInt(id);
    800022c8:	00000613          	li	a2,0
    800022cc:	00a00593          	li	a1,10
    800022d0:	00048513          	mv	a0,s1
    800022d4:	00004097          	auipc	ra,0x4
    800022d8:	940080e7          	jalr	-1728(ra) # 80005c14 <_Z8printIntiii>
                printString("\n");
    800022dc:	00009517          	auipc	a0,0x9
    800022e0:	2d450513          	addi	a0,a0,724 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    800022e4:	00003097          	auipc	ra,0x3
    800022e8:	780080e7          	jalr	1920(ra) # 80005a64 <_Z11printStringPKc>
                return sem_wait_prior(myHandle, id);
    800022ec:	0004859b          	sext.w	a1,s1
    800022f0:	00893503          	ld	a0,8(s2)
    800022f4:	fffff097          	auipc	ra,0xfffff
    800022f8:	248080e7          	jalr	584(ra) # 8000153c <_Z14sem_wait_priorP3Semj>
    800022fc:	0740006f          	j	80002370 <_ZN9Semaphore4waitEv+0x14c>
        if (turnFlag) {
    80002300:	01054783          	lbu	a5,16(a0)
    80002304:	04078c63          	beqz	a5,8000235c <_ZN9Semaphore4waitEv+0x138>
            int id = getThreadId();
    80002308:	fffff097          	auipc	ra,0xfffff
    8000230c:	2d8080e7          	jalr	728(ra) # 800015e0 <_Z11getThreadIdv>
    80002310:	00050493          	mv	s1,a0
            printString("Wait zove: ");
    80002314:	00009517          	auipc	a0,0x9
    80002318:	d6450513          	addi	a0,a0,-668 # 8000b078 <CONSOLE_STATUS+0x68>
    8000231c:	00003097          	auipc	ra,0x3
    80002320:	748080e7          	jalr	1864(ra) # 80005a64 <_Z11printStringPKc>
            printInt(id);
    80002324:	00000613          	li	a2,0
    80002328:	00a00593          	li	a1,10
    8000232c:	00048513          	mv	a0,s1
    80002330:	00004097          	auipc	ra,0x4
    80002334:	8e4080e7          	jalr	-1820(ra) # 80005c14 <_Z8printIntiii>
            printString("\n");
    80002338:	00009517          	auipc	a0,0x9
    8000233c:	27850513          	addi	a0,a0,632 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80002340:	00003097          	auipc	ra,0x3
    80002344:	724080e7          	jalr	1828(ra) # 80005a64 <_Z11printStringPKc>
            return sem_wait_prior(myHandle, id);
    80002348:	0004859b          	sext.w	a1,s1
    8000234c:	00893503          	ld	a0,8(s2)
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	1ec080e7          	jalr	492(ra) # 8000153c <_Z14sem_wait_priorP3Semj>
    80002358:	0180006f          	j	80002370 <_ZN9Semaphore4waitEv+0x14c>
            return sem_wait(myHandle);
    8000235c:	00853503          	ld	a0,8(a0)
    80002360:	fffff097          	auipc	ra,0xfffff
    80002364:	14c080e7          	jalr	332(ra) # 800014ac <_Z8sem_waitP3Sem>
    80002368:	0080006f          	j	80002370 <_ZN9Semaphore4waitEv+0x14c>
        else return 0;
    8000236c:	00000513          	li	a0,0
}
    80002370:	01813083          	ld	ra,24(sp)
    80002374:	01013403          	ld	s0,16(sp)
    80002378:	00813483          	ld	s1,8(sp)
    8000237c:	00013903          	ld	s2,0(sp)
    80002380:	02010113          	addi	sp,sp,32
    80002384:	00008067          	ret

0000000080002388 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002388:	fd010113          	addi	sp,sp,-48
    8000238c:	02113423          	sd	ra,40(sp)
    80002390:	02813023          	sd	s0,32(sp)
    80002394:	00913c23          	sd	s1,24(sp)
    80002398:	01213823          	sd	s2,16(sp)
    8000239c:	01313423          	sd	s3,8(sp)
    800023a0:	03010413          	addi	s0,sp,48
    800023a4:	00050913          	mv	s2,a0
    if (owners != nullptr) {
    800023a8:	01853783          	ld	a5,24(a0)
    800023ac:	0c078263          	beqz	a5,80002470 <_ZN9Semaphore6signalEv+0xe8>
        int id = getThreadId();
    800023b0:	fffff097          	auipc	ra,0xfffff
    800023b4:	230080e7          	jalr	560(ra) # 800015e0 <_Z11getThreadIdv>
    800023b8:	00050493          	mv	s1,a0
        for (a = owners; a; a = a->next) {
    800023bc:	01893783          	ld	a5,24(s2)
    800023c0:	04078863          	beqz	a5,80002410 <_ZN9Semaphore6signalEv+0x88>
            if (a->owner == id) {
    800023c4:	0007a703          	lw	a4,0(a5)
    800023c8:	00970663          	beq	a4,s1,800023d4 <_ZN9Semaphore6signalEv+0x4c>
        for (a = owners; a; a = a->next) {
    800023cc:	0087b783          	ld	a5,8(a5)
    800023d0:	ff1ff06f          	j	800023c0 <_ZN9Semaphore6signalEv+0x38>
                printString("Signa na semaforu id:");
    800023d4:	00009517          	auipc	a0,0x9
    800023d8:	cb450513          	addi	a0,a0,-844 # 8000b088 <CONSOLE_STATUS+0x78>
    800023dc:	00003097          	auipc	ra,0x3
    800023e0:	688080e7          	jalr	1672(ra) # 80005a64 <_Z11printStringPKc>
                printInt(id);
    800023e4:	00000613          	li	a2,0
    800023e8:	00a00593          	li	a1,10
    800023ec:	00048513          	mv	a0,s1
    800023f0:	00004097          	auipc	ra,0x4
    800023f4:	824080e7          	jalr	-2012(ra) # 80005c14 <_Z8printIntiii>
                printString(" \n");
    800023f8:	00009517          	auipc	a0,0x9
    800023fc:	c7850513          	addi	a0,a0,-904 # 8000b070 <CONSOLE_STATUS+0x60>
    80002400:	00003097          	auipc	ra,0x3
    80002404:	664080e7          	jalr	1636(ra) # 80005a64 <_Z11printStringPKc>
                ownersFlag = true;
    80002408:	00100993          	li	s3,1
                break;
    8000240c:	0080006f          	j	80002414 <_ZN9Semaphore6signalEv+0x8c>
        bool ownersFlag = false;
    80002410:	00000993          	li	s3,0
        if (turnFlag) {
    80002414:	01094783          	lbu	a5,16(s2)
    80002418:	00079863          	bnez	a5,80002428 <_ZN9Semaphore6signalEv+0xa0>
        if(ownersFlag)
    8000241c:	04099263          	bnez	s3,80002460 <_ZN9Semaphore6signalEv+0xd8>
            return 0;
    80002420:	00000513          	li	a0,0
    80002424:	0600006f          	j	80002484 <_ZN9Semaphore6signalEv+0xfc>
            printString("Signal zove: ");
    80002428:	00009517          	auipc	a0,0x9
    8000242c:	c7850513          	addi	a0,a0,-904 # 8000b0a0 <CONSOLE_STATUS+0x90>
    80002430:	00003097          	auipc	ra,0x3
    80002434:	634080e7          	jalr	1588(ra) # 80005a64 <_Z11printStringPKc>
            printInt(id);
    80002438:	00000613          	li	a2,0
    8000243c:	00a00593          	li	a1,10
    80002440:	00048513          	mv	a0,s1
    80002444:	00003097          	auipc	ra,0x3
    80002448:	7d0080e7          	jalr	2000(ra) # 80005c14 <_Z8printIntiii>
            printString("\n");
    8000244c:	00009517          	auipc	a0,0x9
    80002450:	16450513          	addi	a0,a0,356 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80002454:	00003097          	auipc	ra,0x3
    80002458:	610080e7          	jalr	1552(ra) # 80005a64 <_Z11printStringPKc>
    8000245c:	fc1ff06f          	j	8000241c <_ZN9Semaphore6signalEv+0x94>
            return sem_signal(myHandle);
    80002460:	00893503          	ld	a0,8(s2)
    80002464:	fffff097          	auipc	ra,0xfffff
    80002468:	078080e7          	jalr	120(ra) # 800014dc <_Z10sem_signalP3Sem>
    8000246c:	0180006f          	j	80002484 <_ZN9Semaphore6signalEv+0xfc>
        if (turnFlag) {
    80002470:	01054783          	lbu	a5,16(a0)
    80002474:	02079663          	bnez	a5,800024a0 <_ZN9Semaphore6signalEv+0x118>
        return sem_signal(myHandle);
    80002478:	00893503          	ld	a0,8(s2)
    8000247c:	fffff097          	auipc	ra,0xfffff
    80002480:	060080e7          	jalr	96(ra) # 800014dc <_Z10sem_signalP3Sem>
}
    80002484:	02813083          	ld	ra,40(sp)
    80002488:	02013403          	ld	s0,32(sp)
    8000248c:	01813483          	ld	s1,24(sp)
    80002490:	01013903          	ld	s2,16(sp)
    80002494:	00813983          	ld	s3,8(sp)
    80002498:	03010113          	addi	sp,sp,48
    8000249c:	00008067          	ret
            int id = getThreadId();
    800024a0:	fffff097          	auipc	ra,0xfffff
    800024a4:	140080e7          	jalr	320(ra) # 800015e0 <_Z11getThreadIdv>
    800024a8:	00050493          	mv	s1,a0
            printString("Signal zove: ");
    800024ac:	00009517          	auipc	a0,0x9
    800024b0:	bf450513          	addi	a0,a0,-1036 # 8000b0a0 <CONSOLE_STATUS+0x90>
    800024b4:	00003097          	auipc	ra,0x3
    800024b8:	5b0080e7          	jalr	1456(ra) # 80005a64 <_Z11printStringPKc>
            printInt(id);
    800024bc:	00000613          	li	a2,0
    800024c0:	00a00593          	li	a1,10
    800024c4:	00048513          	mv	a0,s1
    800024c8:	00003097          	auipc	ra,0x3
    800024cc:	74c080e7          	jalr	1868(ra) # 80005c14 <_Z8printIntiii>
            printString("\n");
    800024d0:	00009517          	auipc	a0,0x9
    800024d4:	0e050513          	addi	a0,a0,224 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    800024d8:	00003097          	auipc	ra,0x3
    800024dc:	58c080e7          	jalr	1420(ra) # 80005a64 <_Z11printStringPKc>
    800024e0:	f99ff06f          	j	80002478 <_ZN9Semaphore6signalEv+0xf0>

00000000800024e4 <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00113423          	sd	ra,8(sp)
    800024ec:	00813023          	sd	s0,0(sp)
    800024f0:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800024f4:	00853503          	ld	a0,8(a0)
    800024f8:	fffff097          	auipc	ra,0xfffff
    800024fc:	014080e7          	jalr	20(ra) # 8000150c <_Z11sem_trywaitP3Sem>
}
    80002500:	00813083          	ld	ra,8(sp)
    80002504:	00013403          	ld	s0,0(sp)
    80002508:	01010113          	addi	sp,sp,16
    8000250c:	00008067          	ret

0000000080002510 <_ZN9Semaphore16turnOnPrioritiesEv>:
void Semaphore::turnOnPriorities() {
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00813423          	sd	s0,8(sp)
    80002518:	01010413          	addi	s0,sp,16
    turnFlag=true;
    8000251c:	00100793          	li	a5,1
    80002520:	00f50823          	sb	a5,16(a0)
}
    80002524:	00813403          	ld	s0,8(sp)
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00008067          	ret

0000000080002530 <_ZN9Semaphore8addOwnerEv>:

void Semaphore::addOwner(){
    80002530:	fe010113          	addi	sp,sp,-32
    80002534:	00113c23          	sd	ra,24(sp)
    80002538:	00813823          	sd	s0,16(sp)
    8000253c:	00913423          	sd	s1,8(sp)
    80002540:	01213023          	sd	s2,0(sp)
    80002544:	02010413          	addi	s0,sp,32
    80002548:	00050493          	mv	s1,a0
    RedOwner* newOwner = (RedOwner*) mem_alloc(sizeof(RedOwner*));
    8000254c:	00800513          	li	a0,8
    80002550:	fffff097          	auipc	ra,0xfffff
    80002554:	cec080e7          	jalr	-788(ra) # 8000123c <_Z9mem_allocm>
    80002558:	00050913          	mv	s2,a0
    int id = getThreadId();
    8000255c:	fffff097          	auipc	ra,0xfffff
    80002560:	084080e7          	jalr	132(ra) # 800015e0 <_Z11getThreadIdv>
    80002564:	00050693          	mv	a3,a0
    newOwner->owner = id;
    80002568:	00a92023          	sw	a0,0(s2)
    newOwner->next = nullptr;
    8000256c:	00093423          	sd	zero,8(s2)
    if(owners== nullptr){
    80002570:	0184b783          	ld	a5,24(s1)
    80002574:	04078263          	beqz	a5,800025b8 <_ZN9Semaphore8addOwnerEv+0x88>
        owners=newOwner;
    }
    else{
        RedOwner* a;
        for(a = owners; a->next!=nullptr;a=a->next){
    80002578:	00078493          	mv	s1,a5
    8000257c:	0087b783          	ld	a5,8(a5)
    80002580:	00078e63          	beqz	a5,8000259c <_ZN9Semaphore8addOwnerEv+0x6c>
            if(a->owner==id){
    80002584:	0004a703          	lw	a4,0(s1)
    80002588:	fed718e3          	bne	a4,a3,80002578 <_ZN9Semaphore8addOwnerEv+0x48>
                printString("Vec postoji ovakav owner u listi!\n");
    8000258c:	00009517          	auipc	a0,0x9
    80002590:	b2450513          	addi	a0,a0,-1244 # 8000b0b0 <CONSOLE_STATUS+0xa0>
    80002594:	00003097          	auipc	ra,0x3
    80002598:	4d0080e7          	jalr	1232(ra) # 80005a64 <_Z11printStringPKc>
                break;
            }
        }
        a->next = newOwner;
    8000259c:	0124b423          	sd	s2,8(s1)
    }
};
    800025a0:	01813083          	ld	ra,24(sp)
    800025a4:	01013403          	ld	s0,16(sp)
    800025a8:	00813483          	ld	s1,8(sp)
    800025ac:	00013903          	ld	s2,0(sp)
    800025b0:	02010113          	addi	sp,sp,32
    800025b4:	00008067          	ret
        owners=newOwner;
    800025b8:	0124bc23          	sd	s2,24(s1)
    800025bc:	fe5ff06f          	j	800025a0 <_ZN9Semaphore8addOwnerEv+0x70>

00000000800025c0 <_ZN9Semaphore11removeOwnerEi>:
void Semaphore::removeOwner(int id){
    800025c0:	fe010113          	addi	sp,sp,-32
    800025c4:	00113c23          	sd	ra,24(sp)
    800025c8:	00813823          	sd	s0,16(sp)
    800025cc:	00913423          	sd	s1,8(sp)
    800025d0:	01213023          	sd	s2,0(sp)
    800025d4:	02010413          	addi	s0,sp,32
    800025d8:	00058913          	mv	s2,a1
    RedOwner* a ;
    RedOwner* prev=nullptr;
    for(a = owners;a;prev = a, a=a->next){
    800025dc:	01853483          	ld	s1,24(a0)
    RedOwner* prev=nullptr;
    800025e0:	00000713          	li	a4,0
    800025e4:	01c0006f          	j	80002600 <_ZN9Semaphore11removeOwnerEi+0x40>
        if(a->owner==id){
            if(a->next) prev->next = a->next;
            else {
                prev->next= nullptr;
    800025e8:	00073423          	sd	zero,8(a4)
            }
            mem_free(a);
    800025ec:	00048513          	mv	a0,s1
    800025f0:	fffff097          	auipc	ra,0xfffff
    800025f4:	c88080e7          	jalr	-888(ra) # 80001278 <_Z8mem_freePv>
    for(a = owners;a;prev = a, a=a->next){
    800025f8:	00048713          	mv	a4,s1
    800025fc:	0084b483          	ld	s1,8(s1)
    80002600:	00048e63          	beqz	s1,8000261c <_ZN9Semaphore11removeOwnerEi+0x5c>
        if(a->owner==id){
    80002604:	0004a783          	lw	a5,0(s1)
    80002608:	ff2798e3          	bne	a5,s2,800025f8 <_ZN9Semaphore11removeOwnerEi+0x38>
            if(a->next) prev->next = a->next;
    8000260c:	0084b783          	ld	a5,8(s1)
    80002610:	fc078ce3          	beqz	a5,800025e8 <_ZN9Semaphore11removeOwnerEi+0x28>
    80002614:	00f73423          	sd	a5,8(a4)
    80002618:	fd5ff06f          	j	800025ec <_ZN9Semaphore11removeOwnerEi+0x2c>
        else{
            continue;
        }
    }

}
    8000261c:	01813083          	ld	ra,24(sp)
    80002620:	01013403          	ld	s0,16(sp)
    80002624:	00813483          	ld	s1,8(sp)
    80002628:	00013903          	ld	s2,0(sp)
    8000262c:	02010113          	addi	sp,sp,32
    80002630:	00008067          	ret

0000000080002634 <_ZN14PeriodicThread9terminateEv>:


void PeriodicThread::terminate() {
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00813423          	sd	s0,8(sp)
    8000263c:	01010413          	addi	s0,sp,16

}
    80002640:	00813403          	ld	s0,8(sp)
    80002644:	01010113          	addi	sp,sp,16
    80002648:	00008067          	ret

000000008000264c <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    8000264c:	fe010113          	addi	sp,sp,-32
    80002650:	00113c23          	sd	ra,24(sp)
    80002654:	00813823          	sd	s0,16(sp)
    80002658:	00913423          	sd	s1,8(sp)
    8000265c:	01213023          	sd	s2,0(sp)
    80002660:	02010413          	addi	s0,sp,32
    80002664:	00050493          	mv	s1,a0
    80002668:	00058913          	mv	s2,a1
    8000266c:	00000097          	auipc	ra,0x0
    80002670:	b18080e7          	jalr	-1256(ra) # 80002184 <_ZN6ThreadC1Ev>
    80002674:	0000c797          	auipc	a5,0xc
    80002678:	bc478793          	addi	a5,a5,-1084 # 8000e238 <_ZTV14PeriodicThread+0x10>
    8000267c:	00f4b023          	sd	a5,0(s1)
    this->period=period;
    80002680:	0324b023          	sd	s2,32(s1)
}
    80002684:	01813083          	ld	ra,24(sp)
    80002688:	01013403          	ld	s0,16(sp)
    8000268c:	00813483          	ld	s1,8(sp)
    80002690:	00013903          	ld	s2,0(sp)
    80002694:	02010113          	addi	sp,sp,32
    80002698:	00008067          	ret

000000008000269c <_ZN7Console4getcEv>:


//konzola
char Console::getc (){
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00113423          	sd	ra,8(sp)
    800026a4:	00813023          	sd	s0,0(sp)
    800026a8:	01010413          	addi	s0,sp,16
    return ::getc();
    800026ac:	fffff097          	auipc	ra,0xfffff
    800026b0:	ec4080e7          	jalr	-316(ra) # 80001570 <_Z4getcv>
}
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN7Console4putcEc>:

void Console::putc (char c){
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00113423          	sd	ra,8(sp)
    800026cc:	00813023          	sd	s0,0(sp)
    800026d0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800026d4:	fffff097          	auipc	ra,0xfffff
    800026d8:	ec8080e7          	jalr	-312(ra) # 8000159c <_Z4putcc>
    800026dc:	00813083          	ld	ra,8(sp)
    800026e0:	00013403          	ld	s0,0(sp)
    800026e4:	01010113          	addi	sp,sp,16
    800026e8:	00008067          	ret

00000000800026ec <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);
    void ping();
protected:
    Thread ();
    virtual void run () {}
    800026ec:	ff010113          	addi	sp,sp,-16
    800026f0:	00813423          	sd	s0,8(sp)
    800026f4:	01010413          	addi	s0,sp,16
    800026f8:	00813403          	ld	s0,8(sp)
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00008067          	ret

0000000080002704 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00813423          	sd	s0,8(sp)
    8000270c:	01010413          	addi	s0,sp,16
    80002710:	00813403          	ld	s0,8(sp)
    80002714:	01010113          	addi	sp,sp,16
    80002718:	00008067          	ret

000000008000271c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000271c:	ff010113          	addi	sp,sp,-16
    80002720:	00113423          	sd	ra,8(sp)
    80002724:	00813023          	sd	s0,0(sp)
    80002728:	01010413          	addi	s0,sp,16
    8000272c:	0000c797          	auipc	a5,0xc
    80002730:	b0c78793          	addi	a5,a5,-1268 # 8000e238 <_ZTV14PeriodicThread+0x10>
    80002734:	00f53023          	sd	a5,0(a0)
    80002738:	00000097          	auipc	ra,0x0
    8000273c:	8fc080e7          	jalr	-1796(ra) # 80002034 <_ZN6ThreadD1Ev>
    80002740:	00813083          	ld	ra,8(sp)
    80002744:	00013403          	ld	s0,0(sp)
    80002748:	01010113          	addi	sp,sp,16
    8000274c:	00008067          	ret

0000000080002750 <_ZN14PeriodicThreadD0Ev>:
    80002750:	fe010113          	addi	sp,sp,-32
    80002754:	00113c23          	sd	ra,24(sp)
    80002758:	00813823          	sd	s0,16(sp)
    8000275c:	00913423          	sd	s1,8(sp)
    80002760:	02010413          	addi	s0,sp,32
    80002764:	00050493          	mv	s1,a0
    80002768:	0000c797          	auipc	a5,0xc
    8000276c:	ad078793          	addi	a5,a5,-1328 # 8000e238 <_ZTV14PeriodicThread+0x10>
    80002770:	00f53023          	sd	a5,0(a0)
    80002774:	00000097          	auipc	ra,0x0
    80002778:	8c0080e7          	jalr	-1856(ra) # 80002034 <_ZN6ThreadD1Ev>
    8000277c:	00048513          	mv	a0,s1
    80002780:	fffff097          	auipc	ra,0xfffff
    80002784:	7d0080e7          	jalr	2000(ra) # 80001f50 <_ZdlPv>
    80002788:	01813083          	ld	ra,24(sp)
    8000278c:	01013403          	ld	s0,16(sp)
    80002790:	00813483          	ld	s1,8(sp)
    80002794:	02010113          	addi	sp,sp,32
    80002798:	00008067          	ret

000000008000279c <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"
//#include "../lib/mem.h"

void Riscv::popSppSpie()
{
    8000279c:	ff010113          	addi	sp,sp,-16
    800027a0:	00813423          	sd	s0,8(sp)
    800027a4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");  //jedini nacin je upisom u kontrolni registar
    800027a8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800027ac:	10000793          	li	a5,256
    800027b0:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");   //sret ce vratiti tamo gde je reklo sepc, a to je nit koja je ranije izgubila procesor
    800027b4:	10200073          	sret
}
    800027b8:	00813403          	ld	s0,8(sp)
    800027bc:	01010113          	addi	sp,sp,16
    800027c0:	00008067          	ret

00000000800027c4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800027c4:	fb010113          	addi	sp,sp,-80
    800027c8:	04113423          	sd	ra,72(sp)
    800027cc:	04813023          	sd	s0,64(sp)
    800027d0:	02913c23          	sd	s1,56(sp)
    800027d4:	03213823          	sd	s2,48(sp)
    800027d8:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800027dc:	142027f3          	csrr	a5,scause
    800027e0:	fcf43423          	sd	a5,-56(s0)
    return scause;
    800027e4:	fc843483          	ld	s1,-56(s0)
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){
    800027e8:	ff848713          	addi	a4,s1,-8
    800027ec:	00100793          	li	a5,1
    800027f0:	08e7f463          	bgeu	a5,a4,80002878 <_ZN5Riscv20handleSupervisorTrapEv+0xb4>

        }
        w_sstatus(sstatus);
        w_sepc(sepc);   //ono sto se nalazi na steku treba da bude restaurirano
    }
    else if(scause == 0x8000000000000001UL){
    800027f4:	fff00793          	li	a5,-1
    800027f8:	03f79793          	slli	a5,a5,0x3f
    800027fc:	00178793          	addi	a5,a5,1
    80002800:	34f48463          	beq	s1,a5,80002b48 <_ZN5Riscv20handleSupervisorTrapEv+0x384>
    //        TCB::dispatch();        //promeni se kontekst
    //        w_sstatus(sstatus);     //vrati se statusni registar ranije ucitane niti
    //        w_sepc(sepc);           //vratimo ranije ucitanu nit
    //    }
    }
    else if(scause == 0x8000000000000009UL){
    80002804:	fff00793          	li	a5,-1
    80002808:	03f79793          	slli	a5,a5,0x3f
    8000280c:	00978793          	addi	a5,a5,9
    80002810:	34f48c63          	beq	s1,a5,80002b68 <_ZN5Riscv20handleSupervisorTrapEv+0x3a4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002814:	141027f3          	csrr	a5,sepc
    80002818:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    8000281c:	fd843903          	ld	s2,-40(s0)
    }
    else
    {
        // unexpected trap cause
        uint64 sepc = r_sepc();     //DODATO
        printString("GRESKA! SCAUSE: ");
    80002820:	00009517          	auipc	a0,0x9
    80002824:	8b850513          	addi	a0,a0,-1864 # 8000b0d8 <CONSOLE_STATUS+0xc8>
    80002828:	00003097          	auipc	ra,0x3
    8000282c:	23c080e7          	jalr	572(ra) # 80005a64 <_Z11printStringPKc>
        printInt(scause);
    80002830:	00000613          	li	a2,0
    80002834:	00a00593          	li	a1,10
    80002838:	0004851b          	sext.w	a0,s1
    8000283c:	00003097          	auipc	ra,0x3
    80002840:	3d8080e7          	jalr	984(ra) # 80005c14 <_Z8printIntiii>
        printString(", SEPC: ");
    80002844:	00009517          	auipc	a0,0x9
    80002848:	8ac50513          	addi	a0,a0,-1876 # 8000b0f0 <CONSOLE_STATUS+0xe0>
    8000284c:	00003097          	auipc	ra,0x3
    80002850:	218080e7          	jalr	536(ra) # 80005a64 <_Z11printStringPKc>
        printInt(sepc);
    80002854:	00000613          	li	a2,0
    80002858:	00a00593          	li	a1,10
    8000285c:	0009051b          	sext.w	a0,s2
    80002860:	00003097          	auipc	ra,0x3
    80002864:	3b4080e7          	jalr	948(ra) # 80005c14 <_Z8printIntiii>
        __putc('\n');
    80002868:	00a00513          	li	a0,10
    8000286c:	00007097          	auipc	ra,0x7
    80002870:	770080e7          	jalr	1904(ra) # 80009fdc <__putc>
        while(true);
    80002874:	0000006f          	j	80002874 <_ZN5Riscv20handleSupervisorTrapEv+0xb0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002878:	141027f3          	csrr	a5,sepc
    8000287c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002880:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;    //sepc prilikom ecall dobije vrednost same ecall instrukcije i zato radimo +4
    80002884:	00478793          	addi	a5,a5,4
    80002888:	faf43c23          	sd	a5,-72(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000288c:	100027f3          	csrr	a5,sstatus
    80002890:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002894:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();  //uzimamo njegov statusni registar
    80002898:	fcf43023          	sd	a5,-64(s0)
        __asm__ volatile("mv %[op], a0":[op]"=r"(op_code));
    8000289c:	00050793          	mv	a5,a0
        switch (op_code) {
    800028a0:	04200713          	li	a4,66
    800028a4:	04f76e63          	bltu	a4,a5,80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
    800028a8:	00279793          	slli	a5,a5,0x2
    800028ac:	00009717          	auipc	a4,0x9
    800028b0:	85070713          	addi	a4,a4,-1968 # 8000b0fc <CONSOLE_STATUS+0xec>
    800028b4:	00e787b3          	add	a5,a5,a4
    800028b8:	0007a783          	lw	a5,0(a5)
    800028bc:	00e787b3          	add	a5,a5,a4
    800028c0:	00078067          	jr	a5
                __asm__ volatile("mv %[size], a1":[size]"=r"(size));
    800028c4:	00058493          	mv	s1,a1
                MemoryAllocator::mem_alloc(size + 1);
    800028c8:	00148513          	addi	a0,s1,1
    800028cc:	00000097          	auipc	ra,0x0
    800028d0:	6d4080e7          	jalr	1748(ra) # 80002fa0 <_ZN15MemoryAllocator9mem_allocEm>
                if(TCB::running!= nullptr)
    800028d4:	0000c797          	auipc	a5,0xc
    800028d8:	c1c7b783          	ld	a5,-996(a5) # 8000e4f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800028dc:	0007b783          	ld	a5,0(a5)
    800028e0:	02078063          	beqz	a5,80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                    TCB::running->numOfBlocks+=size;
    800028e4:	0487b703          	ld	a4,72(a5)
    800028e8:	00970733          	add	a4,a4,s1
    800028ec:	04e7b423          	sd	a4,72(a5)
    800028f0:	0100006f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                __asm__ volatile("mv %[ptr], a1":[ptr]"=r"(pt));
    800028f4:	00058513          	mv	a0,a1
                MemoryAllocator::mem_free(pt);
    800028f8:	00000097          	auipc	ra,0x0
    800028fc:	7bc080e7          	jalr	1980(ra) # 800030b4 <_ZN15MemoryAllocator8mem_freeEPv>
        w_sstatus(sstatus);
    80002900:	fc043783          	ld	a5,-64(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002904:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);   //ono sto se nalazi na steku treba da bude restaurirano
    80002908:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000290c:	14179073          	csrw	sepc,a5
    }
}
    80002910:	04813083          	ld	ra,72(sp)
    80002914:	04013403          	ld	s0,64(sp)
    80002918:	03813483          	ld	s1,56(sp)
    8000291c:	03013903          	ld	s2,48(sp)
    80002920:	05010113          	addi	sp,sp,80
    80002924:	00008067          	ret
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));
    80002928:	00058493          	mv	s1,a1
                __asm__ volatile("mv %[body], a2":[body]"=r"(start_routine));
    8000292c:	00060513          	mv	a0,a2
                __asm__ volatile("mv %[arg], a3":[arg]"=r"(arg));
    80002930:	00068593          	mv	a1,a3
                __asm__ volatile("mv %[stack], a6":[stack]"=r"(stack));
    80002934:	00080613          	mv	a2,a6
                if (handle == nullptr)
    80002938:	02048063          	beqz	s1,80002958 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                    *handle = TCB::createThread(start_routine, arg,(void*) stack, nullptr);
    8000293c:	00000693          	li	a3,0
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	0c0080e7          	jalr	192(ra) # 80001a00 <_ZN3TCB12createThreadEPFvPvES0_S0_PS_>
    80002948:	00a4b023          	sd	a0,0(s1)
                    if(*handle==nullptr)
    8000294c:	00050c63          	beqz	a0,80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
                int s=0;
    80002950:	00000793          	li	a5,0
    80002954:	0080006f          	j	8000295c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                    s = -1;
    80002958:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
    8000295c:	00078513          	mv	a0,a5
                break;
    80002960:	fa1ff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                        s=-1;
    80002964:	fff00793          	li	a5,-1
    80002968:	ff5ff06f          	j	8000295c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                int k = TCB::thread_exit();
    8000296c:	fffff097          	auipc	ra,0xfffff
    80002970:	350080e7          	jalr	848(ra) # 80001cbc <_ZN3TCB11thread_exitEv>
                __asm__ volatile("mv a0, %[p]"::[p]"r"(k));
    80002974:	00050513          	mv	a0,a0
                break;
    80002978:	f89ff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                TCB::dispatch();
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	248080e7          	jalr	584(ra) # 80001bc4 <_ZN3TCB8dispatchEv>
                break;
    80002984:	f7dff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));
    80002988:	00058513          	mv	a0,a1
                TCB::thread_join(handle);
    8000298c:	fffff097          	auipc	ra,0xfffff
    80002990:	380080e7          	jalr	896(ra) # 80001d0c <_ZN3TCB11thread_joinEPS_>
                break;
    80002994:	f6dff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));
    80002998:	00058493          	mv	s1,a1
                __asm__ volatile("mv %[body], a2":[body]"=r"(start_routine));
    8000299c:	00060513          	mv	a0,a2
                __asm__ volatile("mv %[arg], a3":[arg]"=r"(arg));
    800029a0:	00068593          	mv	a1,a3
                __asm__ volatile("mv %[stack], a6":[stack]"=r"(stack));
    800029a4:	00080613          	mv	a2,a6
                __asm__ volatile("mv %[pare], a7":[pare]"=r"(parent));
    800029a8:	00088793          	mv	a5,a7
                if (handle == nullptr)
    800029ac:	02048063          	beqz	s1,800029cc <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    *handle = TCB::createThread(start_routine, arg,(void*) stack, *parent);
    800029b0:	0007b683          	ld	a3,0(a5)
    800029b4:	fffff097          	auipc	ra,0xfffff
    800029b8:	04c080e7          	jalr	76(ra) # 80001a00 <_ZN3TCB12createThreadEPFvPvES0_S0_PS_>
    800029bc:	00a4b023          	sd	a0,0(s1)
                    if(*handle==nullptr)
    800029c0:	00050c63          	beqz	a0,800029d8 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
                int s=0;
    800029c4:	00000793          	li	a5,0
    800029c8:	0080006f          	j	800029d0 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                    s = -1;
    800029cc:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
    800029d0:	00078513          	mv	a0,a5
                break;
    800029d4:	f2dff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                        s=-1;
    800029d8:	fff00793          	li	a5,-1
    800029dc:	ff5ff06f          	j	800029d0 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                TCB::setJoin();
    800029e0:	fffff097          	auipc	ra,0xfffff
    800029e4:	36c080e7          	jalr	876(ra) # 80001d4c <_ZN3TCB7setJoinEv>
                break;
    800029e8:	f19ff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                int q = TCB::getThreadId();
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	1b4080e7          	jalr	436(ra) # 80001ba0 <_ZN3TCB11getThreadIdEv>
    800029f4:	00050493          	mv	s1,a0
                TCB::dispatch();
    800029f8:	fffff097          	auipc	ra,0xfffff
    800029fc:	1cc080e7          	jalr	460(ra) # 80001bc4 <_ZN3TCB8dispatchEv>
                __asm__ volatile("mv a0, %[p]"::[p]"r"(q));
    80002a00:	00048513          	mv	a0,s1
                break;
    80002a04:	efdff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                __asm__ volatile("mv %[id], a1":[id]"=r"(num));
    80002a08:	00058513          	mv	a0,a1
                TCB::setMaximumThreads(num);
    80002a0c:	0005051b          	sext.w	a0,a0
    80002a10:	fffff097          	auipc	ra,0xfffff
    80002a14:	394080e7          	jalr	916(ra) # 80001da4 <_ZN3TCB17setMaximumThreadsEi>
                break;
    80002a18:	ee9ff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                __asm__ volatile("mv %[id], a1":[id]"=r"(handle));
    80002a1c:	00058793          	mv	a5,a1
                handle->pingFlag=true;
    80002a20:	00100713          	li	a4,1
    80002a24:	04e78823          	sb	a4,80(a5)
                break;
    80002a28:	ed9ff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));
    80002a2c:	00058493          	mv	s1,a1
                __asm__ volatile("mv %[init], a2":[init]"=r"(init));
    80002a30:	00060513          	mv	a0,a2
                if (handle == nullptr)
    80002a34:	02048063          	beqz	s1,80002a54 <_ZN5Riscv20handleSupervisorTrapEv+0x290>
                    *handle = Sem::semOpen((int)init);
    80002a38:	0005051b          	sext.w	a0,a0
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	138080e7          	jalr	312(ra) # 80002b74 <_ZN3Sem7semOpenEi>
    80002a44:	00a4b023          	sd	a0,0(s1)
                    if(*handle==nullptr)
    80002a48:	00050c63          	beqz	a0,80002a60 <_ZN5Riscv20handleSupervisorTrapEv+0x29c>
                int s=0;
    80002a4c:	00000793          	li	a5,0
    80002a50:	0080006f          	j	80002a58 <_ZN5Riscv20handleSupervisorTrapEv+0x294>
                    s = -1;
    80002a54:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
    80002a58:	00078513          	mv	a0,a5
                break;
    80002a5c:	ea5ff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                        s=-1;
    80002a60:	fff00793          	li	a5,-1
    80002a64:	ff5ff06f          	j	80002a58 <_ZN5Riscv20handleSupervisorTrapEv+0x294>
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));
    80002a68:	00058513          	mv	a0,a1
                if (handle == nullptr)
    80002a6c:	00050c63          	beqz	a0,80002a84 <_ZN5Riscv20handleSupervisorTrapEv+0x2c0>
                    s=handle->semClose();
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	180080e7          	jalr	384(ra) # 80002bf0 <_ZN3Sem8semCloseEv>
    80002a78:	00050793          	mv	a5,a0
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
    80002a7c:	00078513          	mv	a0,a5
                break;
    80002a80:	e81ff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                    s = -1;
    80002a84:	fff00793          	li	a5,-1
    80002a88:	ff5ff06f          	j	80002a7c <_ZN5Riscv20handleSupervisorTrapEv+0x2b8>
                __asm__ volatile("mv %[id], a1":[id]"=r"(id));
    80002a8c:	00058513          	mv	a0,a1
                if (id == nullptr)
    80002a90:	00050c63          	beqz	a0,80002aa8 <_ZN5Riscv20handleSupervisorTrapEv+0x2e4>
                    s = id->wait();
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	28c080e7          	jalr	652(ra) # 80002d20 <_ZN3Sem4waitEv>
    80002a9c:	00050793          	mv	a5,a0
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
    80002aa0:	00078513          	mv	a0,a5
                break;
    80002aa4:	e5dff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                    s = -1;
    80002aa8:	fff00793          	li	a5,-1
    80002aac:	ff5ff06f          	j	80002aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
                __asm__ volatile("mv %[id], a1":[id]"=r"(id));
    80002ab0:	00058513          	mv	a0,a1
                if (id == nullptr)
    80002ab4:	00050c63          	beqz	a0,80002acc <_ZN5Riscv20handleSupervisorTrapEv+0x308>
                    s = id->signal();
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	360080e7          	jalr	864(ra) # 80002e18 <_ZN3Sem6signalEv>
    80002ac0:	00050793          	mv	a5,a0
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
    80002ac4:	00078513          	mv	a0,a5
                break;
    80002ac8:	e39ff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                    s = -1;
    80002acc:	fff00793          	li	a5,-1
    80002ad0:	ff5ff06f          	j	80002ac4 <_ZN5Riscv20handleSupervisorTrapEv+0x300>
                __asm__ volatile("mv %[id], a1":[id]"=r"(id));
    80002ad4:	00058513          	mv	a0,a1
                if (id == nullptr)
    80002ad8:	00050c63          	beqz	a0,80002af0 <_ZN5Riscv20handleSupervisorTrapEv+0x32c>
                    s = id->try_wait();
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	2f4080e7          	jalr	756(ra) # 80002dd0 <_ZN3Sem8try_waitEv>
    80002ae4:	00050793          	mv	a5,a0
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
    80002ae8:	00078513          	mv	a0,a5
                break;
    80002aec:	e15ff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                    s = -1;
    80002af0:	fff00793          	li	a5,-1
    80002af4:	ff5ff06f          	j	80002ae8 <_ZN5Riscv20handleSupervisorTrapEv+0x324>
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));
    80002af8:	00058513          	mv	a0,a1
                __asm__ volatile("mv %[idT], a2":[idT]"=r"(id));
    80002afc:	00060593          	mv	a1,a2
                if (handle == nullptr)
    80002b00:	00050e63          	beqz	a0,80002b1c <_ZN5Riscv20handleSupervisorTrapEv+0x358>
                    s = handle->wait_prior(id);
    80002b04:	0005859b          	sext.w	a1,a1
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	270080e7          	jalr	624(ra) # 80002d78 <_ZN3Sem10wait_priorEi>
    80002b10:	00050793          	mv	a5,a0
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
    80002b14:	00078513          	mv	a0,a5
                break;
    80002b18:	de9ff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                    s = -1;
    80002b1c:	fff00793          	li	a5,-1
    80002b20:	ff5ff06f          	j	80002b14 <_ZN5Riscv20handleSupervisorTrapEv+0x350>
                char c = __getc();
    80002b24:	00007097          	auipc	ra,0x7
    80002b28:	4f4080e7          	jalr	1268(ra) # 8000a018 <__getc>
                __asm__ volatile("mv a0, %[p]"::[p]"r"(c));
    80002b2c:	00050513          	mv	a0,a0
                break;
    80002b30:	dd1ff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                __asm__ volatile("mv %[c], a1":[c]"=r"(c));
    80002b34:	00058513          	mv	a0,a1
                __putc(c);
    80002b38:	0ff57513          	andi	a0,a0,255
    80002b3c:	00007097          	auipc	ra,0x7
    80002b40:	4a0080e7          	jalr	1184(ra) # 80009fdc <__putc>
                break;
    80002b44:	dbdff06f          	j	80002900 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002b48:	00200793          	li	a5,2
    80002b4c:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;        //odnosi se na running nit
    80002b50:	0000c717          	auipc	a4,0xc
    80002b54:	99073703          	ld	a4,-1648(a4) # 8000e4e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002b58:	00073783          	ld	a5,0(a4)
    80002b5c:	00178793          	addi	a5,a5,1
    80002b60:	00f73023          	sd	a5,0(a4)
    80002b64:	dadff06f          	j	80002910 <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
        console_handler();
    80002b68:	00007097          	auipc	ra,0x7
    80002b6c:	4e8080e7          	jalr	1256(ra) # 8000a050 <console_handler>
    80002b70:	da1ff06f          	j	80002910 <_ZN5Riscv20handleSupervisorTrapEv+0x14c>

0000000080002b74 <_ZN3Sem7semOpenEi>:
#include "../h/sem.hpp"
#include "../test/printing.hpp"

Sem* Sem::semOpen(int i){
    80002b74:	fe010113          	addi	sp,sp,-32
    80002b78:	00113c23          	sd	ra,24(sp)
    80002b7c:	00813823          	sd	s0,16(sp)
    80002b80:	00913423          	sd	s1,8(sp)
    80002b84:	01213023          	sd	s2,0(sp)
    80002b88:	02010413          	addi	s0,sp,32
    80002b8c:	00050913          	mv	s2,a0
    return (Sem*) new Sem((int)i);
    80002b90:	01000513          	li	a0,16
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	36c080e7          	jalr	876(ra) # 80001f00 <_Znwm>
    80002b9c:	00050493          	mv	s1,a0
#include"queue.hpp"
#include "tcb.hpp"
class Sem
{
public:
    Sem(int init=1):val(init),closed(false){
    80002ba0:	01252023          	sw	s2,0(a0)
    80002ba4:	00050223          	sb	zero,4(a0)
        blocked = create_queue();
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	a8c080e7          	jalr	-1396(ra) # 80001634 <_Z12create_queuev>
    80002bb0:	0200006f          	j	80002bd0 <_ZN3Sem7semOpenEi+0x5c>
    80002bb4:	00050913          	mv	s2,a0
    80002bb8:	00048513          	mv	a0,s1
    80002bbc:	fffff097          	auipc	ra,0xfffff
    80002bc0:	394080e7          	jalr	916(ra) # 80001f50 <_ZdlPv>
    80002bc4:	00090513          	mv	a0,s2
    80002bc8:	0000d097          	auipc	ra,0xd
    80002bcc:	d00080e7          	jalr	-768(ra) # 8000f8c8 <_Unwind_Resume>
    80002bd0:	00a4b423          	sd	a0,8(s1)
}
    80002bd4:	00048513          	mv	a0,s1
    80002bd8:	01813083          	ld	ra,24(sp)
    80002bdc:	01013403          	ld	s0,16(sp)
    80002be0:	00813483          	ld	s1,8(sp)
    80002be4:	00013903          	ld	s2,0(sp)
    80002be8:	02010113          	addi	sp,sp,32
    80002bec:	00008067          	ret

0000000080002bf0 <_ZN3Sem8semCloseEv>:
int Sem::semClose(){
    80002bf0:	fe010113          	addi	sp,sp,-32
    80002bf4:	00113c23          	sd	ra,24(sp)
    80002bf8:	00813823          	sd	s0,16(sp)
    80002bfc:	00913423          	sd	s1,8(sp)
    80002c00:	02010413          	addi	s0,sp,32
    80002c04:	00050493          	mv	s1,a0
    closed=true;
    80002c08:	00100793          	li	a5,1
    80002c0c:	00f50223          	sb	a5,4(a0)
    while(!is_empty(blocked)){
    80002c10:	0084b503          	ld	a0,8(s1)
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	a60080e7          	jalr	-1440(ra) # 80001674 <_Z8is_emptyP5queue>
    80002c1c:	02051063          	bnez	a0,80002c3c <_ZN3Sem8semCloseEv+0x4c>
        TCB* t = dequeue(blocked);
    80002c20:	0084b503          	ld	a0,8(s1)
    80002c24:	fffff097          	auipc	ra,0xfffff
    80002c28:	be4080e7          	jalr	-1052(ra) # 80001808 <_Z7dequeueP5queue>
    void setBlocked(bool blocked) {TCB::blocked = blocked;}
    80002c2c:	02050923          	sb	zero,50(a0)
        t->setBlocked(false);
        Scheduler::put(t);
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	270080e7          	jalr	624(ra) # 80002ea0 <_ZN9Scheduler3putEP3TCB>
    while(!is_empty(blocked)){
    80002c38:	fd9ff06f          	j	80002c10 <_ZN3Sem8semCloseEv+0x20>

    }
    return 0;
}
    80002c3c:	00000513          	li	a0,0
    80002c40:	01813083          	ld	ra,24(sp)
    80002c44:	01013403          	ld	s0,16(sp)
    80002c48:	00813483          	ld	s1,8(sp)
    80002c4c:	02010113          	addi	sp,sp,32
    80002c50:	00008067          	ret

0000000080002c54 <_ZN3Sem5blockEv>:
void Sem::block(){
    80002c54:	ff010113          	addi	sp,sp,-16
    80002c58:	00113423          	sd	ra,8(sp)
    80002c5c:	00813023          	sd	s0,0(sp)
    80002c60:	01010413          	addi	s0,sp,16
    TCB* old = TCB::running;
    80002c64:	0000c797          	auipc	a5,0xc
    80002c68:	88c7b783          	ld	a5,-1908(a5) # 8000e4f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c6c:	0007b583          	ld	a1,0(a5)
    80002c70:	00100793          	li	a5,1
    80002c74:	02f58923          	sb	a5,50(a1)
    old->setBlocked(true);
    enqueue(blocked, old);
    80002c78:	00853503          	ld	a0,8(a0)
    80002c7c:	fffff097          	auipc	ra,0xfffff
    80002c80:	a18080e7          	jalr	-1512(ra) # 80001694 <_Z7enqueueP5queueP3TCB>
    TCB::dispatch();
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	f40080e7          	jalr	-192(ra) # 80001bc4 <_ZN3TCB8dispatchEv>
}
    80002c8c:	00813083          	ld	ra,8(sp)
    80002c90:	00013403          	ld	s0,0(sp)
    80002c94:	01010113          	addi	sp,sp,16
    80002c98:	00008067          	ret

0000000080002c9c <_ZN3Sem11block_priorEi>:

void Sem::block_prior(int id) {
    80002c9c:	ff010113          	addi	sp,sp,-16
    80002ca0:	00113423          	sd	ra,8(sp)
    80002ca4:	00813023          	sd	s0,0(sp)
    80002ca8:	01010413          	addi	s0,sp,16
    80002cac:	00058613          	mv	a2,a1
    TCB* old = TCB::running;
    80002cb0:	0000c797          	auipc	a5,0xc
    80002cb4:	8407b783          	ld	a5,-1984(a5) # 8000e4f0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002cb8:	0007b583          	ld	a1,0(a5)
    80002cbc:	00100713          	li	a4,1
    80002cc0:	02e58923          	sb	a4,50(a1)
    old->setBlocked(true);
    enqueue_p(blocked, old, id);
    80002cc4:	00853503          	ld	a0,8(a0)
    80002cc8:	fffff097          	auipc	ra,0xfffff
    80002ccc:	a60080e7          	jalr	-1440(ra) # 80001728 <_Z9enqueue_pP5queueP3TCBi>
    TCB::dispatch();
    80002cd0:	fffff097          	auipc	ra,0xfffff
    80002cd4:	ef4080e7          	jalr	-268(ra) # 80001bc4 <_ZN3TCB8dispatchEv>
}
    80002cd8:	00813083          	ld	ra,8(sp)
    80002cdc:	00013403          	ld	s0,0(sp)
    80002ce0:	01010113          	addi	sp,sp,16
    80002ce4:	00008067          	ret

0000000080002ce8 <_ZN3Sem7unblockEv>:

void Sem::unblock(){
    80002ce8:	ff010113          	addi	sp,sp,-16
    80002cec:	00113423          	sd	ra,8(sp)
    80002cf0:	00813023          	sd	s0,0(sp)
    80002cf4:	01010413          	addi	s0,sp,16
    TCB* t = dequeue(blocked);
    80002cf8:	00853503          	ld	a0,8(a0)
    80002cfc:	fffff097          	auipc	ra,0xfffff
    80002d00:	b0c080e7          	jalr	-1268(ra) # 80001808 <_Z7dequeueP5queue>
    80002d04:	02050923          	sb	zero,50(a0)
    t->setBlocked(false);
    Scheduler::put(t);
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	198080e7          	jalr	408(ra) # 80002ea0 <_ZN9Scheduler3putEP3TCB>
}
    80002d10:	00813083          	ld	ra,8(sp)
    80002d14:	00013403          	ld	s0,0(sp)
    80002d18:	01010113          	addi	sp,sp,16
    80002d1c:	00008067          	ret

0000000080002d20 <_ZN3Sem4waitEv>:

int Sem::wait(){
    if(closed)return -1;
    80002d20:	00454783          	lbu	a5,4(a0)
    80002d24:	04079663          	bnez	a5,80002d70 <_ZN3Sem4waitEv+0x50>

    if(--val<0) {
    80002d28:	00052783          	lw	a5,0(a0)
    80002d2c:	fff7879b          	addiw	a5,a5,-1
    80002d30:	00f52023          	sw	a5,0(a0)
    80002d34:	02079713          	slli	a4,a5,0x20
    80002d38:	00074663          	bltz	a4,80002d44 <_ZN3Sem4waitEv+0x24>
        Sem::block();
    }
    return 0;
    80002d3c:	00000513          	li	a0,0
}
    80002d40:	00008067          	ret
int Sem::wait(){
    80002d44:	ff010113          	addi	sp,sp,-16
    80002d48:	00113423          	sd	ra,8(sp)
    80002d4c:	00813023          	sd	s0,0(sp)
    80002d50:	01010413          	addi	s0,sp,16
        Sem::block();
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	f00080e7          	jalr	-256(ra) # 80002c54 <_ZN3Sem5blockEv>
    return 0;
    80002d5c:	00000513          	li	a0,0
}
    80002d60:	00813083          	ld	ra,8(sp)
    80002d64:	00013403          	ld	s0,0(sp)
    80002d68:	01010113          	addi	sp,sp,16
    80002d6c:	00008067          	ret
    if(closed)return -1;
    80002d70:	fff00513          	li	a0,-1
    80002d74:	00008067          	ret

0000000080002d78 <_ZN3Sem10wait_priorEi>:

int Sem::wait_prior(int id) {
    if(closed)return -1;
    80002d78:	00454783          	lbu	a5,4(a0)
    80002d7c:	04079663          	bnez	a5,80002dc8 <_ZN3Sem10wait_priorEi+0x50>
    if(--val<0){
    80002d80:	00052783          	lw	a5,0(a0)
    80002d84:	fff7879b          	addiw	a5,a5,-1
    80002d88:	00f52023          	sw	a5,0(a0)
    80002d8c:	02079713          	slli	a4,a5,0x20
    80002d90:	00074663          	bltz	a4,80002d9c <_ZN3Sem10wait_priorEi+0x24>
        Sem::block_prior(id);
    }
    return 0;
    80002d94:	00000513          	li	a0,0
}
    80002d98:	00008067          	ret
int Sem::wait_prior(int id) {
    80002d9c:	ff010113          	addi	sp,sp,-16
    80002da0:	00113423          	sd	ra,8(sp)
    80002da4:	00813023          	sd	s0,0(sp)
    80002da8:	01010413          	addi	s0,sp,16
        Sem::block_prior(id);
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	ef0080e7          	jalr	-272(ra) # 80002c9c <_ZN3Sem11block_priorEi>
    return 0;
    80002db4:	00000513          	li	a0,0
}
    80002db8:	00813083          	ld	ra,8(sp)
    80002dbc:	00013403          	ld	s0,0(sp)
    80002dc0:	01010113          	addi	sp,sp,16
    80002dc4:	00008067          	ret
    if(closed)return -1;
    80002dc8:	fff00513          	li	a0,-1
    80002dcc:	00008067          	ret

0000000080002dd0 <_ZN3Sem8try_waitEv>:
int Sem::try_wait(){
    80002dd0:	ff010113          	addi	sp,sp,-16
    80002dd4:	00813423          	sd	s0,8(sp)
    80002dd8:	01010413          	addi	s0,sp,16
    if(closed)return -1;
    80002ddc:	00454783          	lbu	a5,4(a0)
    80002de0:	02079863          	bnez	a5,80002e10 <_ZN3Sem8try_waitEv+0x40>

    if(--val<0) {
    80002de4:	00052783          	lw	a5,0(a0)
    80002de8:	fff7879b          	addiw	a5,a5,-1
    80002dec:	00f52023          	sw	a5,0(a0)
    80002df0:	02079713          	slli	a4,a5,0x20
    80002df4:	00074a63          	bltz	a4,80002e08 <_ZN3Sem8try_waitEv+0x38>
        return 0;
    }
    else{
        return 1;
    80002df8:	00100513          	li	a0,1
    }
}
    80002dfc:	00813403          	ld	s0,8(sp)
    80002e00:	01010113          	addi	sp,sp,16
    80002e04:	00008067          	ret
        return 0;
    80002e08:	00000513          	li	a0,0
    80002e0c:	ff1ff06f          	j	80002dfc <_ZN3Sem8try_waitEv+0x2c>
    if(closed)return -1;
    80002e10:	fff00513          	li	a0,-1
    80002e14:	fe9ff06f          	j	80002dfc <_ZN3Sem8try_waitEv+0x2c>

0000000080002e18 <_ZN3Sem6signalEv>:
int Sem::signal(){
    if(closed)return -1;
    80002e18:	00454783          	lbu	a5,4(a0)
    80002e1c:	04079663          	bnez	a5,80002e68 <_ZN3Sem6signalEv+0x50>

    if(++val<=0) {
    80002e20:	00052783          	lw	a5,0(a0)
    80002e24:	0017879b          	addiw	a5,a5,1
    80002e28:	0007871b          	sext.w	a4,a5
    80002e2c:	00f52023          	sw	a5,0(a0)
    80002e30:	00e05663          	blez	a4,80002e3c <_ZN3Sem6signalEv+0x24>
        Sem::unblock();
    }
    return 0;
    80002e34:	00000513          	li	a0,0
    80002e38:	00008067          	ret
int Sem::signal(){
    80002e3c:	ff010113          	addi	sp,sp,-16
    80002e40:	00113423          	sd	ra,8(sp)
    80002e44:	00813023          	sd	s0,0(sp)
    80002e48:	01010413          	addi	s0,sp,16
        Sem::unblock();
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	e9c080e7          	jalr	-356(ra) # 80002ce8 <_ZN3Sem7unblockEv>
    return 0;
    80002e54:	00000513          	li	a0,0
    80002e58:	00813083          	ld	ra,8(sp)
    80002e5c:	00013403          	ld	s0,0(sp)
    80002e60:	01010113          	addi	sp,sp,16
    80002e64:	00008067          	ret
    if(closed)return -1;
    80002e68:	fff00513          	li	a0,-1
    80002e6c:	00008067          	ret

0000000080002e70 <_ZN9Scheduler3getEv>:
#include "../h/scheduler.hpp"
queue* Scheduler::readyCoroutineQueue;
TCB *Scheduler::get()
{
    80002e70:	ff010113          	addi	sp,sp,-16
    80002e74:	00113423          	sd	ra,8(sp)
    80002e78:	00813023          	sd	s0,0(sp)
    80002e7c:	01010413          	addi	s0,sp,16
    return dequeue(readyCoroutineQueue);
    80002e80:	0000b517          	auipc	a0,0xb
    80002e84:	6e853503          	ld	a0,1768(a0) # 8000e568 <_ZN9Scheduler19readyCoroutineQueueE>
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	980080e7          	jalr	-1664(ra) # 80001808 <_Z7dequeueP5queue>
}
    80002e90:	00813083          	ld	ra,8(sp)
    80002e94:	00013403          	ld	s0,0(sp)
    80002e98:	01010113          	addi	sp,sp,16
    80002e9c:	00008067          	ret

0000000080002ea0 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *tcb)
{
    80002ea0:	fe010113          	addi	sp,sp,-32
    80002ea4:	00113c23          	sd	ra,24(sp)
    80002ea8:	00813823          	sd	s0,16(sp)
    80002eac:	00913423          	sd	s1,8(sp)
    80002eb0:	02010413          	addi	s0,sp,32
    80002eb4:	00050493          	mv	s1,a0
    static int s=1;
    if(s==1){
    80002eb8:	0000b717          	auipc	a4,0xb
    80002ebc:	3e872703          	lw	a4,1000(a4) # 8000e2a0 <_ZZN9Scheduler3putEP3TCBE1s>
    80002ec0:	00100793          	li	a5,1
    80002ec4:	02f70663          	beq	a4,a5,80002ef0 <_ZN9Scheduler3putEP3TCB+0x50>
        s=0;
        readyCoroutineQueue = create_queue();
    }
    enqueue(readyCoroutineQueue, tcb);
    80002ec8:	00048593          	mv	a1,s1
    80002ecc:	0000b517          	auipc	a0,0xb
    80002ed0:	69c53503          	ld	a0,1692(a0) # 8000e568 <_ZN9Scheduler19readyCoroutineQueueE>
    80002ed4:	ffffe097          	auipc	ra,0xffffe
    80002ed8:	7c0080e7          	jalr	1984(ra) # 80001694 <_Z7enqueueP5queueP3TCB>
}
    80002edc:	01813083          	ld	ra,24(sp)
    80002ee0:	01013403          	ld	s0,16(sp)
    80002ee4:	00813483          	ld	s1,8(sp)
    80002ee8:	02010113          	addi	sp,sp,32
    80002eec:	00008067          	ret
        s=0;
    80002ef0:	0000b797          	auipc	a5,0xb
    80002ef4:	3a07a823          	sw	zero,944(a5) # 8000e2a0 <_ZZN9Scheduler3putEP3TCBE1s>
        readyCoroutineQueue = create_queue();
    80002ef8:	ffffe097          	auipc	ra,0xffffe
    80002efc:	73c080e7          	jalr	1852(ra) # 80001634 <_Z12create_queuev>
    80002f00:	0000b797          	auipc	a5,0xb
    80002f04:	66a7b423          	sd	a0,1640(a5) # 8000e568 <_ZN9Scheduler19readyCoroutineQueueE>
    80002f08:	fc1ff06f          	j	80002ec8 <_ZN9Scheduler3putEP3TCB+0x28>

0000000080002f0c <_ZN15MemoryAllocator18transferToNumBlockEm>:
#include "../h/MemoryAllocator.hpp"


Free* MemoryAllocator::freeMemHead = nullptr;
size_t MemoryAllocator::transferToNumBlock(size_t size){
    80002f0c:	ff010113          	addi	sp,sp,-16
    80002f10:	00813423          	sd	s0,8(sp)
    80002f14:	01010413          	addi	s0,sp,16
    if((size)%MEM_BLOCK_SIZE==0) size = (size)/MEM_BLOCK_SIZE;
    80002f18:	03f57793          	andi	a5,a0,63
    80002f1c:	00079a63          	bnez	a5,80002f30 <_ZN15MemoryAllocator18transferToNumBlockEm+0x24>
    80002f20:	00655513          	srli	a0,a0,0x6
    else
        size = (size)/MEM_BLOCK_SIZE + 1;
    return size;
}
    80002f24:	00813403          	ld	s0,8(sp)
    80002f28:	01010113          	addi	sp,sp,16
    80002f2c:	00008067          	ret
        size = (size)/MEM_BLOCK_SIZE + 1;
    80002f30:	00655513          	srli	a0,a0,0x6
    80002f34:	00150513          	addi	a0,a0,1
    return size;
    80002f38:	fedff06f          	j	80002f24 <_ZN15MemoryAllocator18transferToNumBlockEm+0x18>

0000000080002f3c <_ZN15MemoryAllocator10initializeEv>:
void MemoryAllocator::initialize() {
    80002f3c:	fe010113          	addi	sp,sp,-32
    80002f40:	00113c23          	sd	ra,24(sp)
    80002f44:	00813823          	sd	s0,16(sp)
    80002f48:	00913423          	sd	s1,8(sp)
    80002f4c:	02010413          	addi	s0,sp,32
    freeMemHead = (Free*) HEAP_START_ADDR;
    80002f50:	0000b797          	auipc	a5,0xb
    80002f54:	5807b783          	ld	a5,1408(a5) # 8000e4d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002f58:	0007b483          	ld	s1,0(a5)
    80002f5c:	0000b797          	auipc	a5,0xb
    80002f60:	6097ba23          	sd	s1,1556(a5) # 8000e570 <_ZN15MemoryAllocator11freeMemHeadE>
    freeMemHead->next = nullptr;
    80002f64:	0004b423          	sd	zero,8(s1)
    freeMemHead->prev = nullptr;
    80002f68:	0004b823          	sd	zero,16(s1)
    freeMemHead->size = transferToNumBlock((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(size_t));
    80002f6c:	0000b797          	auipc	a5,0xb
    80002f70:	58c7b783          	ld	a5,1420(a5) # 8000e4f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f74:	0007b503          	ld	a0,0(a5)
    80002f78:	40950533          	sub	a0,a0,s1
    80002f7c:	ff850513          	addi	a0,a0,-8
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	f8c080e7          	jalr	-116(ra) # 80002f0c <_ZN15MemoryAllocator18transferToNumBlockEm>
    80002f88:	00a4b023          	sd	a0,0(s1)
}
    80002f8c:	01813083          	ld	ra,24(sp)
    80002f90:	01013403          	ld	s0,16(sp)
    80002f94:	00813483          	ld	s1,8(sp)
    80002f98:	02010113          	addi	sp,sp,32
    80002f9c:	00008067          	ret

0000000080002fa0 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size) {
    static uint8 k=1;

    if (size <= 0)
    80002fa0:	10050663          	beqz	a0,800030ac <_ZN15MemoryAllocator9mem_allocEm+0x10c>
void* MemoryAllocator::mem_alloc(size_t size) {
    80002fa4:	fe010113          	addi	sp,sp,-32
    80002fa8:	00113c23          	sd	ra,24(sp)
    80002fac:	00813823          	sd	s0,16(sp)
    80002fb0:	00913423          	sd	s1,8(sp)
    80002fb4:	02010413          	addi	s0,sp,32
    80002fb8:	00050493          	mv	s1,a0
        return nullptr;
    if(k==1){
    80002fbc:	0000b717          	auipc	a4,0xb
    80002fc0:	2e874703          	lbu	a4,744(a4) # 8000e2a4 <_ZZN15MemoryAllocator9mem_allocEmE1k>
    80002fc4:	00100793          	li	a5,1
    80002fc8:	02f70063          	beq	a4,a5,80002fe8 <_ZN15MemoryAllocator9mem_allocEm+0x48>
        k=0;
        initialize();
    }

    Free* head = freeMemHead;
    80002fcc:	0000b517          	auipc	a0,0xb
    80002fd0:	5a453503          	ld	a0,1444(a0) # 8000e570 <_ZN15MemoryAllocator11freeMemHeadE>

    //first fit alg
    for (; head != nullptr; head = head->next)
    80002fd4:	02050463          	beqz	a0,80002ffc <_ZN15MemoryAllocator9mem_allocEm+0x5c>
        if (head->size >= size)break;
    80002fd8:	00053783          	ld	a5,0(a0)
    80002fdc:	0297f063          	bgeu	a5,s1,80002ffc <_ZN15MemoryAllocator9mem_allocEm+0x5c>
    for (; head != nullptr; head = head->next)
    80002fe0:	00853503          	ld	a0,8(a0)
    80002fe4:	ff1ff06f          	j	80002fd4 <_ZN15MemoryAllocator9mem_allocEm+0x34>
        k=0;
    80002fe8:	0000b797          	auipc	a5,0xb
    80002fec:	2a078e23          	sb	zero,700(a5) # 8000e2a4 <_ZZN15MemoryAllocator9mem_allocEmE1k>
        initialize();
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	f4c080e7          	jalr	-180(ra) # 80002f3c <_ZN15MemoryAllocator10initializeEv>
    80002ff8:	fd5ff06f          	j	80002fcc <_ZN15MemoryAllocator9mem_allocEm+0x2c>

    if (head == nullptr)
    80002ffc:	04050c63          	beqz	a0,80003054 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
        return nullptr;

    size_t remainingSize = head->size - size;
    80003000:	00053783          	ld	a5,0(a0)
    80003004:	40978733          	sub	a4,a5,s1
    if (remainingSize > 0) {
    80003008:	06978663          	beq	a5,s1,80003074 <_ZN15MemoryAllocator9mem_allocEm+0xd4>

        //ima ostatak prostora od alociranog bloka
        Free* newBlk = (Free*) ((char*)head + (size+sizeof(size_t))*MEM_BLOCK_SIZE);
    8000300c:	00848793          	addi	a5,s1,8
    80003010:	00679793          	slli	a5,a5,0x6
    80003014:	00f507b3          	add	a5,a0,a5
        if(head->next) head->next->prev = newBlk;
    80003018:	00853683          	ld	a3,8(a0)
    8000301c:	00068463          	beqz	a3,80003024 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    80003020:	00f6b823          	sd	a5,16(a3)
        if (head->prev) head->prev->next = newBlk;
    80003024:	01053683          	ld	a3,16(a0)
    80003028:	04068063          	beqz	a3,80003068 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    8000302c:	00f6b423          	sd	a5,8(a3)
        else freeMemHead = newBlk;
        newBlk->next = head->next;
    80003030:	00853683          	ld	a3,8(a0)
    80003034:	00d7b423          	sd	a3,8(a5)
        newBlk->prev = head->prev;
    80003038:	01053683          	ld	a3,16(a0)
    8000303c:	00d7b823          	sd	a3,16(a5)
        newBlk->size = remainingSize;//skaliraana na mem_block_size
    80003040:	00e7b023          	sd	a4,0(a5)
                head->next->prev = head->prev;
        }
        else {freeMemHead = head->next; head->next->prev = nullptr;}

    }
    head->next = nullptr;
    80003044:	00053423          	sd	zero,8(a0)
    head->prev = nullptr;
    80003048:	00053823          	sd	zero,16(a0)
    head->size = size;
    8000304c:	00953023          	sd	s1,0(a0)
    return (void*)((char*)head+MEM_BLOCK_SIZE);
    80003050:	04050513          	addi	a0,a0,64

}
    80003054:	01813083          	ld	ra,24(sp)
    80003058:	01013403          	ld	s0,16(sp)
    8000305c:	00813483          	ld	s1,8(sp)
    80003060:	02010113          	addi	sp,sp,32
    80003064:	00008067          	ret
        else freeMemHead = newBlk;
    80003068:	0000b697          	auipc	a3,0xb
    8000306c:	50f6b423          	sd	a5,1288(a3) # 8000e570 <_ZN15MemoryAllocator11freeMemHeadE>
    80003070:	fc1ff06f          	j	80003030 <_ZN15MemoryAllocator9mem_allocEm+0x90>
        if(head->prev) {
    80003074:	01053783          	ld	a5,16(a0)
    80003078:	02078063          	beqz	a5,80003098 <_ZN15MemoryAllocator9mem_allocEm+0xf8>
            head->prev->next = head->next;
    8000307c:	00853703          	ld	a4,8(a0)
    80003080:	00e7b423          	sd	a4,8(a5)
            if(head->next)
    80003084:	00853783          	ld	a5,8(a0)
    80003088:	fa078ee3          	beqz	a5,80003044 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
                head->next->prev = head->prev;
    8000308c:	01053703          	ld	a4,16(a0)
    80003090:	00e7b823          	sd	a4,16(a5)
    80003094:	fb1ff06f          	j	80003044 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        else {freeMemHead = head->next; head->next->prev = nullptr;}
    80003098:	00853783          	ld	a5,8(a0)
    8000309c:	0000b717          	auipc	a4,0xb
    800030a0:	4cf73a23          	sd	a5,1236(a4) # 8000e570 <_ZN15MemoryAllocator11freeMemHeadE>
    800030a4:	0007b823          	sd	zero,16(a5)
    800030a8:	f9dff06f          	j	80003044 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        return nullptr;
    800030ac:	00000513          	li	a0,0
}
    800030b0:	00008067          	ret

00000000800030b4 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void *ptr) {
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00813423          	sd	s0,8(sp)
    800030bc:	01010413          	addi	s0,sp,16
    Free* cur = nullptr;
    ptr = (void*)((char*)ptr-MEM_BLOCK_SIZE);
    800030c0:	fc050713          	addi	a4,a0,-64
    size_t size = ((Free*)ptr)->size;
    800030c4:	fc053583          	ld	a1,-64(a0)

    if((char*)ptr<(char*)HEAP_START_ADDR || (char*)ptr+size*MEM_BLOCK_SIZE>(char*)HEAP_END_ADDR){
    800030c8:	0000b797          	auipc	a5,0xb
    800030cc:	4087b783          	ld	a5,1032(a5) # 8000e4d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800030d0:	0007b783          	ld	a5,0(a5)
    800030d4:	10f76463          	bltu	a4,a5,800031dc <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    800030d8:	00659613          	slli	a2,a1,0x6
    800030dc:	00c70633          	add	a2,a4,a2
    800030e0:	0000b797          	auipc	a5,0xb
    800030e4:	4187b783          	ld	a5,1048(a5) # 8000e4f8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800030e8:	0007b783          	ld	a5,0(a5)
    800030ec:	0ec7ec63          	bltu	a5,a2,800031e4 <_ZN15MemoryAllocator8mem_freeEPv+0x130>

        return -1;
    }

    if((char*)ptr < (char*)freeMemHead){
    800030f0:	0000b797          	auipc	a5,0xb
    800030f4:	4807b783          	ld	a5,1152(a5) # 8000e570 <_ZN15MemoryAllocator11freeMemHeadE>
    800030f8:	06f77063          	bgeu	a4,a5,80003158 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
        cur = (Free*)ptr;
        if((char*)cur+size*MEM_BLOCK_SIZE==(char*)freeMemHead){     //slucaj da mogu da se nadovezem sa freeMemHead-om
    800030fc:	02f60863          	beq	a2,a5,8000312c <_ZN15MemoryAllocator8mem_freeEPv+0x78>
            freeMemHead = cur;
            freeMemHead->size = size;
        }
        else {
            cur->size = size;
            cur->next = freeMemHead;
    80003100:	fcf53423          	sd	a5,-56(a0)
            cur->prev = nullptr;
    80003104:	fc053823          	sd	zero,-48(a0)
            freeMemHead->prev = cur;
    80003108:	0000b797          	auipc	a5,0xb
    8000310c:	46878793          	addi	a5,a5,1128 # 8000e570 <_ZN15MemoryAllocator11freeMemHeadE>
    80003110:	0007b683          	ld	a3,0(a5)
    80003114:	00e6b823          	sd	a4,16(a3)
            freeMemHead = cur;
    80003118:	00e7b023          	sd	a4,0(a5)
        }
        return 0;
    8000311c:	00000513          	li	a0,0
        }
        return 0;
    }


    80003120:	00813403          	ld	s0,8(sp)
    80003124:	01010113          	addi	sp,sp,16
    80003128:	00008067          	ret
            size+=freeMemHead->size;
    8000312c:	0007b683          	ld	a3,0(a5)
    80003130:	00b685b3          	add	a1,a3,a1
            freeMemHead->next->prev = cur;
    80003134:	0087b683          	ld	a3,8(a5)
    80003138:	00e6b823          	sd	a4,16(a3)
            cur->next = freeMemHead->next;
    8000313c:	0087b783          	ld	a5,8(a5)
    80003140:	fcf53423          	sd	a5,-56(a0)
            cur->prev = nullptr;
    80003144:	fc053823          	sd	zero,-48(a0)
            freeMemHead = cur;
    80003148:	0000b797          	auipc	a5,0xb
    8000314c:	42e7b423          	sd	a4,1064(a5) # 8000e570 <_ZN15MemoryAllocator11freeMemHeadE>
            freeMemHead->size = size;
    80003150:	fcb53023          	sd	a1,-64(a0)
    80003154:	fc9ff06f          	j	8000311c <_ZN15MemoryAllocator8mem_freeEPv+0x68>
        for(cur = freeMemHead; cur->next!=nullptr && (char*)ptr>(char*)cur->next; cur = cur->next);//prolazi kroz for petlju sve dok se ne nadje unutar opsega
    80003158:	00078693          	mv	a3,a5
    8000315c:	0087b783          	ld	a5,8(a5)
    80003160:	00078463          	beqz	a5,80003168 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    80003164:	fee7eae3          	bltu	a5,a4,80003158 <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
        blk->prev = cur;
    80003168:	fcd53823          	sd	a3,-48(a0)
        blk->next = cur->next;
    8000316c:	0086b803          	ld	a6,8(a3)
    80003170:	fd053423          	sd	a6,-56(a0)
        sled->prev = blk;
    80003174:	00e7b823          	sd	a4,16(a5)
        cur->next = blk;
    80003178:	00e6b423          	sd	a4,8(a3)
        blk->size = size;
    8000317c:	fcb53023          	sd	a1,-64(a0)
        if((char*)ptr+size*MEM_BLOCK_SIZE==(char*)sled){
    80003180:	00f60e63          	beq	a2,a5,8000319c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        if((char*)cur+cur->size*MEM_BLOCK_SIZE==(char*)ptr){
    80003184:	0006b603          	ld	a2,0(a3)
    80003188:	00661793          	slli	a5,a2,0x6
    8000318c:	00f687b3          	add	a5,a3,a5
    80003190:	02e78863          	beq	a5,a4,800031c0 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        return 0;
    80003194:	00000513          	li	a0,0
    80003198:	f89ff06f          	j	80003120 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
            size+=sled->size;
    8000319c:	0007b603          	ld	a2,0(a5)
    800031a0:	00c585b3          	add	a1,a1,a2
            blk->next = sled->next;
    800031a4:	0087b603          	ld	a2,8(a5)
    800031a8:	fcc53423          	sd	a2,-56(a0)
            if(sled->next) sled->next->prev = blk;
    800031ac:	0087b783          	ld	a5,8(a5)
    800031b0:	00078463          	beqz	a5,800031b8 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    800031b4:	00e7b823          	sd	a4,16(a5)
            blk->size = size;
    800031b8:	fcb53023          	sd	a1,-64(a0)
    800031bc:	fc9ff06f          	j	80003184 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
            cur->size +=size;
    800031c0:	00b605b3          	add	a1,a2,a1
    800031c4:	00b6b023          	sd	a1,0(a3)
            cur->next = blk->next;
    800031c8:	fc853783          	ld	a5,-56(a0)
    800031cc:	00f6b423          	sd	a5,8(a3)
            if(blk->next) blk->next->prev = cur;
    800031d0:	fc0782e3          	beqz	a5,80003194 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
    800031d4:	00d7b823          	sd	a3,16(a5)
    800031d8:	fbdff06f          	j	80003194 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
        return -1;
    800031dc:	fff00513          	li	a0,-1
    800031e0:	f41ff06f          	j	80003120 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    800031e4:	fff00513          	li	a0,-1
    800031e8:	f39ff06f          	j	80003120 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>

00000000800031ec <_Z8ownerModv>:
    int idt;
    Semaphore* waitForAll;
    Semaphore* semOwn;
};

void ownerMod(){
    800031ec:	f3010113          	addi	sp,sp,-208
    800031f0:	0c113423          	sd	ra,200(sp)
    800031f4:	0c813023          	sd	s0,192(sp)
    800031f8:	0a913c23          	sd	s1,184(sp)
    800031fc:	0b213823          	sd	s2,176(sp)
    80003200:	0b313423          	sd	s3,168(sp)
    80003204:	0b413023          	sd	s4,160(sp)
    80003208:	0d010413          	addi	s0,sp,208
    Thread* threads[20];
    Semaphore* waitForAll = new Semaphore(0);
    8000320c:	02000513          	li	a0,32
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	cf0080e7          	jalr	-784(ra) # 80001f00 <_Znwm>
    80003218:	00050993          	mv	s3,a0
    8000321c:	00000593          	li	a1,0
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	fc4080e7          	jalr	-60(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    Semaphore* semOwn = new Semaphore(1);
    80003228:	02000513          	li	a0,32
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	cd4080e7          	jalr	-812(ra) # 80001f00 <_Znwm>
    80003234:	00050a13          	mv	s4,a0
    80003238:	00100593          	li	a1,1
    8000323c:	fffff097          	auipc	ra,0xfffff
    80003240:	fa8080e7          	jalr	-88(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    for(int i=0;i<20;i++){
    80003244:	00000913          	li	s2,0
    80003248:	0300006f          	j	80003278 <_Z8ownerModv+0x8c>
    OwnerThread(int idntf, Semaphore* s, Semaphore* own):idt(idntf), waitForAll(s), semOwn(own){}
    8000324c:	0000b797          	auipc	a5,0xb
    80003250:	06c78793          	addi	a5,a5,108 # 8000e2b8 <_ZTV11OwnerThread+0x10>
    80003254:	00f4b023          	sd	a5,0(s1)
    80003258:	0324a023          	sw	s2,32(s1)
    8000325c:	0334b423          	sd	s3,40(s1)
    80003260:	0344b823          	sd	s4,48(s1)
        threads[i] = new OwnerThread(i, waitForAll, semOwn);
    80003264:	00391793          	slli	a5,s2,0x3
    80003268:	fd040713          	addi	a4,s0,-48
    8000326c:	00f707b3          	add	a5,a4,a5
    80003270:	f697b023          	sd	s1,-160(a5)
    for(int i=0;i<20;i++){
    80003274:	0019091b          	addiw	s2,s2,1
    80003278:	01300793          	li	a5,19
    8000327c:	0327c063          	blt	a5,s2,8000329c <_Z8ownerModv+0xb0>
        threads[i] = new OwnerThread(i, waitForAll, semOwn);
    80003280:	03800513          	li	a0,56
    80003284:	fffff097          	auipc	ra,0xfffff
    80003288:	c7c080e7          	jalr	-900(ra) # 80001f00 <_Znwm>
    8000328c:	00050493          	mv	s1,a0
    OwnerThread(int idntf, Semaphore* s, Semaphore* own):idt(idntf), waitForAll(s), semOwn(own){}
    80003290:	fffff097          	auipc	ra,0xfffff
    80003294:	ef4080e7          	jalr	-268(ra) # 80002184 <_ZN6ThreadC1Ev>
    80003298:	fb5ff06f          	j	8000324c <_Z8ownerModv+0x60>
    }
    for(int i=0;i<20;i++){
    8000329c:	00000493          	li	s1,0
    800032a0:	0200006f          	j	800032c0 <_Z8ownerModv+0xd4>
        threads[i]->start();
    800032a4:	00349793          	slli	a5,s1,0x3
    800032a8:	fd040713          	addi	a4,s0,-48
    800032ac:	00f707b3          	add	a5,a4,a5
    800032b0:	f607b503          	ld	a0,-160(a5)
    800032b4:	fffff097          	auipc	ra,0xfffff
    800032b8:	e2c080e7          	jalr	-468(ra) # 800020e0 <_ZN6Thread5startEv>
    for(int i=0;i<20;i++){
    800032bc:	0014849b          	addiw	s1,s1,1
    800032c0:	01300793          	li	a5,19
    800032c4:	fe97d0e3          	bge	a5,s1,800032a4 <_Z8ownerModv+0xb8>
    }

    for(int i=0;i<20;i++){
    800032c8:	00000493          	li	s1,0
    800032cc:	0140006f          	j	800032e0 <_Z8ownerModv+0xf4>
        waitForAll->wait();
    800032d0:	00098513          	mv	a0,s3
    800032d4:	fffff097          	auipc	ra,0xfffff
    800032d8:	f50080e7          	jalr	-176(ra) # 80002224 <_ZN9Semaphore4waitEv>
    for(int i=0;i<20;i++){
    800032dc:	0014849b          	addiw	s1,s1,1
    800032e0:	01300793          	li	a5,19
    800032e4:	fe97d6e3          	bge	a5,s1,800032d0 <_Z8ownerModv+0xe4>
    }

}
    800032e8:	0c813083          	ld	ra,200(sp)
    800032ec:	0c013403          	ld	s0,192(sp)
    800032f0:	0b813483          	ld	s1,184(sp)
    800032f4:	0b013903          	ld	s2,176(sp)
    800032f8:	0a813983          	ld	s3,168(sp)
    800032fc:	0a013a03          	ld	s4,160(sp)
    80003300:	0d010113          	addi	sp,sp,208
    80003304:	00008067          	ret
    80003308:	00050493          	mv	s1,a0
    Semaphore* waitForAll = new Semaphore(0);
    8000330c:	00098513          	mv	a0,s3
    80003310:	fffff097          	auipc	ra,0xfffff
    80003314:	c40080e7          	jalr	-960(ra) # 80001f50 <_ZdlPv>
    80003318:	00048513          	mv	a0,s1
    8000331c:	0000c097          	auipc	ra,0xc
    80003320:	5ac080e7          	jalr	1452(ra) # 8000f8c8 <_Unwind_Resume>
    80003324:	00050493          	mv	s1,a0
    Semaphore* semOwn = new Semaphore(1);
    80003328:	000a0513          	mv	a0,s4
    8000332c:	fffff097          	auipc	ra,0xfffff
    80003330:	c24080e7          	jalr	-988(ra) # 80001f50 <_ZdlPv>
    80003334:	00048513          	mv	a0,s1
    80003338:	0000c097          	auipc	ra,0xc
    8000333c:	590080e7          	jalr	1424(ra) # 8000f8c8 <_Unwind_Resume>
    80003340:	00050913          	mv	s2,a0
        threads[i] = new OwnerThread(i, waitForAll, semOwn);
    80003344:	00048513          	mv	a0,s1
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	c08080e7          	jalr	-1016(ra) # 80001f50 <_ZdlPv>
    80003350:	00090513          	mv	a0,s2
    80003354:	0000c097          	auipc	ra,0xc
    80003358:	574080e7          	jalr	1396(ra) # 8000f8c8 <_Unwind_Resume>

000000008000335c <_ZN11OwnerThread3runEv>:
    void run() override{
    8000335c:	fe010113          	addi	sp,sp,-32
    80003360:	00113c23          	sd	ra,24(sp)
    80003364:	00813823          	sd	s0,16(sp)
    80003368:	00913423          	sd	s1,8(sp)
    8000336c:	01213023          	sd	s2,0(sp)
    80003370:	02010413          	addi	s0,sp,32
    80003374:	00050493          	mv	s1,a0
        int id = getThreadId();
    80003378:	ffffe097          	auipc	ra,0xffffe
    8000337c:	268080e7          	jalr	616(ra) # 800015e0 <_Z11getThreadIdv>
    80003380:	00050913          	mv	s2,a0
        if(id%2==0){
    80003384:	00157793          	andi	a5,a0,1
    80003388:	04078e63          	beqz	a5,800033e4 <_ZN11OwnerThread3runEv+0x88>
        if((id)%3==0){
    8000338c:	00300793          	li	a5,3
    80003390:	02f967bb          	remw	a5,s2,a5
    80003394:	06078063          	beqz	a5,800033f4 <_ZN11OwnerThread3runEv+0x98>
        semOwn->wait();
    80003398:	0304b503          	ld	a0,48(s1)
    8000339c:	fffff097          	auipc	ra,0xfffff
    800033a0:	e88080e7          	jalr	-376(ra) # 80002224 <_ZN9Semaphore4waitEv>
        printString("Ovo je neki moj ispis\n");
    800033a4:	00008517          	auipc	a0,0x8
    800033a8:	e6450513          	addi	a0,a0,-412 # 8000b208 <CONSOLE_STATUS+0x1f8>
    800033ac:	00002097          	auipc	ra,0x2
    800033b0:	6b8080e7          	jalr	1720(ra) # 80005a64 <_Z11printStringPKc>
        semOwn->signal();
    800033b4:	0304b503          	ld	a0,48(s1)
    800033b8:	fffff097          	auipc	ra,0xfffff
    800033bc:	fd0080e7          	jalr	-48(ra) # 80002388 <_ZN9Semaphore6signalEv>
        waitForAll->signal();
    800033c0:	0284b503          	ld	a0,40(s1)
    800033c4:	fffff097          	auipc	ra,0xfffff
    800033c8:	fc4080e7          	jalr	-60(ra) # 80002388 <_ZN9Semaphore6signalEv>
    }
    800033cc:	01813083          	ld	ra,24(sp)
    800033d0:	01013403          	ld	s0,16(sp)
    800033d4:	00813483          	ld	s1,8(sp)
    800033d8:	00013903          	ld	s2,0(sp)
    800033dc:	02010113          	addi	sp,sp,32
    800033e0:	00008067          	ret
            semOwn->addOwner();
    800033e4:	0304b503          	ld	a0,48(s1)
    800033e8:	fffff097          	auipc	ra,0xfffff
    800033ec:	148080e7          	jalr	328(ra) # 80002530 <_ZN9Semaphore8addOwnerEv>
    800033f0:	f9dff06f          	j	8000338c <_ZN11OwnerThread3runEv+0x30>
            semOwn->removeOwner(id);
    800033f4:	00090593          	mv	a1,s2
    800033f8:	0304b503          	ld	a0,48(s1)
    800033fc:	fffff097          	auipc	ra,0xfffff
    80003400:	1c4080e7          	jalr	452(ra) # 800025c0 <_ZN9Semaphore11removeOwnerEi>
    80003404:	f95ff06f          	j	80003398 <_ZN11OwnerThread3runEv+0x3c>

0000000080003408 <_ZN11OwnerThreadD1Ev>:
class OwnerThread:public Thread{
    80003408:	ff010113          	addi	sp,sp,-16
    8000340c:	00113423          	sd	ra,8(sp)
    80003410:	00813023          	sd	s0,0(sp)
    80003414:	01010413          	addi	s0,sp,16
    80003418:	0000b797          	auipc	a5,0xb
    8000341c:	ea078793          	addi	a5,a5,-352 # 8000e2b8 <_ZTV11OwnerThread+0x10>
    80003420:	00f53023          	sd	a5,0(a0)
    80003424:	fffff097          	auipc	ra,0xfffff
    80003428:	c10080e7          	jalr	-1008(ra) # 80002034 <_ZN6ThreadD1Ev>
    8000342c:	00813083          	ld	ra,8(sp)
    80003430:	00013403          	ld	s0,0(sp)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <_ZN11OwnerThreadD0Ev>:
    8000343c:	fe010113          	addi	sp,sp,-32
    80003440:	00113c23          	sd	ra,24(sp)
    80003444:	00813823          	sd	s0,16(sp)
    80003448:	00913423          	sd	s1,8(sp)
    8000344c:	02010413          	addi	s0,sp,32
    80003450:	00050493          	mv	s1,a0
    80003454:	0000b797          	auipc	a5,0xb
    80003458:	e6478793          	addi	a5,a5,-412 # 8000e2b8 <_ZTV11OwnerThread+0x10>
    8000345c:	00f53023          	sd	a5,0(a0)
    80003460:	fffff097          	auipc	ra,0xfffff
    80003464:	bd4080e7          	jalr	-1068(ra) # 80002034 <_ZN6ThreadD1Ev>
    80003468:	00048513          	mv	a0,s1
    8000346c:	fffff097          	auipc	ra,0xfffff
    80003470:	ae4080e7          	jalr	-1308(ra) # 80001f50 <_ZdlPv>
    80003474:	01813083          	ld	ra,24(sp)
    80003478:	01013403          	ld	s0,16(sp)
    8000347c:	00813483          	ld	s1,8(sp)
    80003480:	02010113          	addi	sp,sp,32
    80003484:	00008067          	ret

0000000080003488 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003488:	fe010113          	addi	sp,sp,-32
    8000348c:	00113c23          	sd	ra,24(sp)
    80003490:	00813823          	sd	s0,16(sp)
    80003494:	00913423          	sd	s1,8(sp)
    80003498:	01213023          	sd	s2,0(sp)
    8000349c:	02010413          	addi	s0,sp,32
    800034a0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800034a4:	00000913          	li	s2,0
    800034a8:	00c0006f          	j	800034b4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	f00080e7          	jalr	-256(ra) # 800013ac <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800034b4:	ffffe097          	auipc	ra,0xffffe
    800034b8:	0bc080e7          	jalr	188(ra) # 80001570 <_Z4getcv>
    800034bc:	0005059b          	sext.w	a1,a0
    800034c0:	01b00793          	li	a5,27
    800034c4:	02f58a63          	beq	a1,a5,800034f8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800034c8:	0084b503          	ld	a0,8(s1)
    800034cc:	00004097          	auipc	ra,0x4
    800034d0:	dec080e7          	jalr	-532(ra) # 800072b8 <_ZN6Buffer3putEi>
        i++;
    800034d4:	0019071b          	addiw	a4,s2,1
    800034d8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800034dc:	0004a683          	lw	a3,0(s1)
    800034e0:	0026979b          	slliw	a5,a3,0x2
    800034e4:	00d787bb          	addw	a5,a5,a3
    800034e8:	0017979b          	slliw	a5,a5,0x1
    800034ec:	02f767bb          	remw	a5,a4,a5
    800034f0:	fc0792e3          	bnez	a5,800034b4 <_ZL16producerKeyboardPv+0x2c>
    800034f4:	fb9ff06f          	j	800034ac <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800034f8:	00100793          	li	a5,1
    800034fc:	0000b717          	auipc	a4,0xb
    80003500:	06f72e23          	sw	a5,124(a4) # 8000e578 <_ZL9threadEnd>
    data->buffer->put('!');
    80003504:	02100593          	li	a1,33
    80003508:	0084b503          	ld	a0,8(s1)
    8000350c:	00004097          	auipc	ra,0x4
    80003510:	dac080e7          	jalr	-596(ra) # 800072b8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003514:	0104b503          	ld	a0,16(s1)
    80003518:	ffffe097          	auipc	ra,0xffffe
    8000351c:	fc4080e7          	jalr	-60(ra) # 800014dc <_Z10sem_signalP3Sem>
}
    80003520:	01813083          	ld	ra,24(sp)
    80003524:	01013403          	ld	s0,16(sp)
    80003528:	00813483          	ld	s1,8(sp)
    8000352c:	00013903          	ld	s2,0(sp)
    80003530:	02010113          	addi	sp,sp,32
    80003534:	00008067          	ret

0000000080003538 <_ZL8producerPv>:

static void producer(void *arg) {
    80003538:	fe010113          	addi	sp,sp,-32
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	00813823          	sd	s0,16(sp)
    80003544:	00913423          	sd	s1,8(sp)
    80003548:	01213023          	sd	s2,0(sp)
    8000354c:	02010413          	addi	s0,sp,32
    80003550:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003554:	00000913          	li	s2,0
    80003558:	00c0006f          	j	80003564 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000355c:	ffffe097          	auipc	ra,0xffffe
    80003560:	e50080e7          	jalr	-432(ra) # 800013ac <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003564:	0000b797          	auipc	a5,0xb
    80003568:	0147a783          	lw	a5,20(a5) # 8000e578 <_ZL9threadEnd>
    8000356c:	02079e63          	bnez	a5,800035a8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003570:	0004a583          	lw	a1,0(s1)
    80003574:	0305859b          	addiw	a1,a1,48
    80003578:	0084b503          	ld	a0,8(s1)
    8000357c:	00004097          	auipc	ra,0x4
    80003580:	d3c080e7          	jalr	-708(ra) # 800072b8 <_ZN6Buffer3putEi>
        i++;
    80003584:	0019071b          	addiw	a4,s2,1
    80003588:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000358c:	0004a683          	lw	a3,0(s1)
    80003590:	0026979b          	slliw	a5,a3,0x2
    80003594:	00d787bb          	addw	a5,a5,a3
    80003598:	0017979b          	slliw	a5,a5,0x1
    8000359c:	02f767bb          	remw	a5,a4,a5
    800035a0:	fc0792e3          	bnez	a5,80003564 <_ZL8producerPv+0x2c>
    800035a4:	fb9ff06f          	j	8000355c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800035a8:	0104b503          	ld	a0,16(s1)
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	f30080e7          	jalr	-208(ra) # 800014dc <_Z10sem_signalP3Sem>
}
    800035b4:	01813083          	ld	ra,24(sp)
    800035b8:	01013403          	ld	s0,16(sp)
    800035bc:	00813483          	ld	s1,8(sp)
    800035c0:	00013903          	ld	s2,0(sp)
    800035c4:	02010113          	addi	sp,sp,32
    800035c8:	00008067          	ret

00000000800035cc <_ZL8consumerPv>:

static void consumer(void *arg) {
    800035cc:	fd010113          	addi	sp,sp,-48
    800035d0:	02113423          	sd	ra,40(sp)
    800035d4:	02813023          	sd	s0,32(sp)
    800035d8:	00913c23          	sd	s1,24(sp)
    800035dc:	01213823          	sd	s2,16(sp)
    800035e0:	01313423          	sd	s3,8(sp)
    800035e4:	03010413          	addi	s0,sp,48
    800035e8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800035ec:	00000993          	li	s3,0
    800035f0:	01c0006f          	j	8000360c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800035f4:	ffffe097          	auipc	ra,0xffffe
    800035f8:	db8080e7          	jalr	-584(ra) # 800013ac <_Z15thread_dispatchv>
    800035fc:	0500006f          	j	8000364c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003600:	00a00513          	li	a0,10
    80003604:	ffffe097          	auipc	ra,0xffffe
    80003608:	f98080e7          	jalr	-104(ra) # 8000159c <_Z4putcc>
    while (!threadEnd) {
    8000360c:	0000b797          	auipc	a5,0xb
    80003610:	f6c7a783          	lw	a5,-148(a5) # 8000e578 <_ZL9threadEnd>
    80003614:	06079063          	bnez	a5,80003674 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003618:	00893503          	ld	a0,8(s2)
    8000361c:	00004097          	auipc	ra,0x4
    80003620:	d2c080e7          	jalr	-724(ra) # 80007348 <_ZN6Buffer3getEv>
        i++;
    80003624:	0019849b          	addiw	s1,s3,1
    80003628:	0004899b          	sext.w	s3,s1
        putc(key);
    8000362c:	0ff57513          	andi	a0,a0,255
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	f6c080e7          	jalr	-148(ra) # 8000159c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003638:	00092703          	lw	a4,0(s2)
    8000363c:	0027179b          	slliw	a5,a4,0x2
    80003640:	00e787bb          	addw	a5,a5,a4
    80003644:	02f4e7bb          	remw	a5,s1,a5
    80003648:	fa0786e3          	beqz	a5,800035f4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000364c:	05000793          	li	a5,80
    80003650:	02f4e4bb          	remw	s1,s1,a5
    80003654:	fa049ce3          	bnez	s1,8000360c <_ZL8consumerPv+0x40>
    80003658:	fa9ff06f          	j	80003600 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000365c:	00893503          	ld	a0,8(s2)
    80003660:	00004097          	auipc	ra,0x4
    80003664:	ce8080e7          	jalr	-792(ra) # 80007348 <_ZN6Buffer3getEv>
        putc(key);
    80003668:	0ff57513          	andi	a0,a0,255
    8000366c:	ffffe097          	auipc	ra,0xffffe
    80003670:	f30080e7          	jalr	-208(ra) # 8000159c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003674:	00893503          	ld	a0,8(s2)
    80003678:	00004097          	auipc	ra,0x4
    8000367c:	d5c080e7          	jalr	-676(ra) # 800073d4 <_ZN6Buffer6getCntEv>
    80003680:	fca04ee3          	bgtz	a0,8000365c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003684:	01093503          	ld	a0,16(s2)
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	e54080e7          	jalr	-428(ra) # 800014dc <_Z10sem_signalP3Sem>
}
    80003690:	02813083          	ld	ra,40(sp)
    80003694:	02013403          	ld	s0,32(sp)
    80003698:	01813483          	ld	s1,24(sp)
    8000369c:	01013903          	ld	s2,16(sp)
    800036a0:	00813983          	ld	s3,8(sp)
    800036a4:	03010113          	addi	sp,sp,48
    800036a8:	00008067          	ret

00000000800036ac <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800036ac:	f9010113          	addi	sp,sp,-112
    800036b0:	06113423          	sd	ra,104(sp)
    800036b4:	06813023          	sd	s0,96(sp)
    800036b8:	04913c23          	sd	s1,88(sp)
    800036bc:	05213823          	sd	s2,80(sp)
    800036c0:	05313423          	sd	s3,72(sp)
    800036c4:	05413023          	sd	s4,64(sp)
    800036c8:	03513c23          	sd	s5,56(sp)
    800036cc:	03613823          	sd	s6,48(sp)
    800036d0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800036d4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800036d8:	00008517          	auipc	a0,0x8
    800036dc:	b4850513          	addi	a0,a0,-1208 # 8000b220 <CONSOLE_STATUS+0x210>
    800036e0:	00002097          	auipc	ra,0x2
    800036e4:	384080e7          	jalr	900(ra) # 80005a64 <_Z11printStringPKc>
    getString(input, 30);
    800036e8:	01e00593          	li	a1,30
    800036ec:	fa040493          	addi	s1,s0,-96
    800036f0:	00048513          	mv	a0,s1
    800036f4:	00002097          	auipc	ra,0x2
    800036f8:	3f8080e7          	jalr	1016(ra) # 80005aec <_Z9getStringPci>
    threadNum = stringToInt(input);
    800036fc:	00048513          	mv	a0,s1
    80003700:	00002097          	auipc	ra,0x2
    80003704:	4c4080e7          	jalr	1220(ra) # 80005bc4 <_Z11stringToIntPKc>
    80003708:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000370c:	00008517          	auipc	a0,0x8
    80003710:	b3450513          	addi	a0,a0,-1228 # 8000b240 <CONSOLE_STATUS+0x230>
    80003714:	00002097          	auipc	ra,0x2
    80003718:	350080e7          	jalr	848(ra) # 80005a64 <_Z11printStringPKc>
    getString(input, 30);
    8000371c:	01e00593          	li	a1,30
    80003720:	00048513          	mv	a0,s1
    80003724:	00002097          	auipc	ra,0x2
    80003728:	3c8080e7          	jalr	968(ra) # 80005aec <_Z9getStringPci>
    n = stringToInt(input);
    8000372c:	00048513          	mv	a0,s1
    80003730:	00002097          	auipc	ra,0x2
    80003734:	494080e7          	jalr	1172(ra) # 80005bc4 <_Z11stringToIntPKc>
    80003738:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000373c:	00008517          	auipc	a0,0x8
    80003740:	b2450513          	addi	a0,a0,-1244 # 8000b260 <CONSOLE_STATUS+0x250>
    80003744:	00002097          	auipc	ra,0x2
    80003748:	320080e7          	jalr	800(ra) # 80005a64 <_Z11printStringPKc>
    8000374c:	00000613          	li	a2,0
    80003750:	00a00593          	li	a1,10
    80003754:	00090513          	mv	a0,s2
    80003758:	00002097          	auipc	ra,0x2
    8000375c:	4bc080e7          	jalr	1212(ra) # 80005c14 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003760:	00008517          	auipc	a0,0x8
    80003764:	b1850513          	addi	a0,a0,-1256 # 8000b278 <CONSOLE_STATUS+0x268>
    80003768:	00002097          	auipc	ra,0x2
    8000376c:	2fc080e7          	jalr	764(ra) # 80005a64 <_Z11printStringPKc>
    80003770:	00000613          	li	a2,0
    80003774:	00a00593          	li	a1,10
    80003778:	00048513          	mv	a0,s1
    8000377c:	00002097          	auipc	ra,0x2
    80003780:	498080e7          	jalr	1176(ra) # 80005c14 <_Z8printIntiii>
    printString(".\n");
    80003784:	00008517          	auipc	a0,0x8
    80003788:	b0c50513          	addi	a0,a0,-1268 # 8000b290 <CONSOLE_STATUS+0x280>
    8000378c:	00002097          	auipc	ra,0x2
    80003790:	2d8080e7          	jalr	728(ra) # 80005a64 <_Z11printStringPKc>
    if(threadNum > n) {
    80003794:	0324c463          	blt	s1,s2,800037bc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003798:	03205c63          	blez	s2,800037d0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000379c:	03800513          	li	a0,56
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	760080e7          	jalr	1888(ra) # 80001f00 <_Znwm>
    800037a8:	00050a13          	mv	s4,a0
    800037ac:	00048593          	mv	a1,s1
    800037b0:	00004097          	auipc	ra,0x4
    800037b4:	a6c080e7          	jalr	-1428(ra) # 8000721c <_ZN6BufferC1Ei>
    800037b8:	0300006f          	j	800037e8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800037bc:	00008517          	auipc	a0,0x8
    800037c0:	adc50513          	addi	a0,a0,-1316 # 8000b298 <CONSOLE_STATUS+0x288>
    800037c4:	00002097          	auipc	ra,0x2
    800037c8:	2a0080e7          	jalr	672(ra) # 80005a64 <_Z11printStringPKc>
        return;
    800037cc:	0140006f          	j	800037e0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800037d0:	00008517          	auipc	a0,0x8
    800037d4:	b0850513          	addi	a0,a0,-1272 # 8000b2d8 <CONSOLE_STATUS+0x2c8>
    800037d8:	00002097          	auipc	ra,0x2
    800037dc:	28c080e7          	jalr	652(ra) # 80005a64 <_Z11printStringPKc>
        return;
    800037e0:	000b0113          	mv	sp,s6
    800037e4:	1500006f          	j	80003934 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800037e8:	00000593          	li	a1,0
    800037ec:	0000b517          	auipc	a0,0xb
    800037f0:	d9450513          	addi	a0,a0,-620 # 8000e580 <_ZL10waitForAll>
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	c54080e7          	jalr	-940(ra) # 80001448 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    800037fc:	00391793          	slli	a5,s2,0x3
    80003800:	00f78793          	addi	a5,a5,15
    80003804:	ff07f793          	andi	a5,a5,-16
    80003808:	40f10133          	sub	sp,sp,a5
    8000380c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003810:	0019071b          	addiw	a4,s2,1
    80003814:	00171793          	slli	a5,a4,0x1
    80003818:	00e787b3          	add	a5,a5,a4
    8000381c:	00379793          	slli	a5,a5,0x3
    80003820:	00f78793          	addi	a5,a5,15
    80003824:	ff07f793          	andi	a5,a5,-16
    80003828:	40f10133          	sub	sp,sp,a5
    8000382c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003830:	00191613          	slli	a2,s2,0x1
    80003834:	012607b3          	add	a5,a2,s2
    80003838:	00379793          	slli	a5,a5,0x3
    8000383c:	00f987b3          	add	a5,s3,a5
    80003840:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003844:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003848:	0000b717          	auipc	a4,0xb
    8000384c:	d3873703          	ld	a4,-712(a4) # 8000e580 <_ZL10waitForAll>
    80003850:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003854:	00078613          	mv	a2,a5
    80003858:	00000597          	auipc	a1,0x0
    8000385c:	d7458593          	addi	a1,a1,-652 # 800035cc <_ZL8consumerPv>
    80003860:	f9840513          	addi	a0,s0,-104
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	ac8080e7          	jalr	-1336(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000386c:	00000493          	li	s1,0
    80003870:	0280006f          	j	80003898 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003874:	00000597          	auipc	a1,0x0
    80003878:	c1458593          	addi	a1,a1,-1004 # 80003488 <_ZL16producerKeyboardPv>
                      data + i);
    8000387c:	00179613          	slli	a2,a5,0x1
    80003880:	00f60633          	add	a2,a2,a5
    80003884:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003888:	00c98633          	add	a2,s3,a2
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	aa0080e7          	jalr	-1376(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003894:	0014849b          	addiw	s1,s1,1
    80003898:	0524d263          	bge	s1,s2,800038dc <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000389c:	00149793          	slli	a5,s1,0x1
    800038a0:	009787b3          	add	a5,a5,s1
    800038a4:	00379793          	slli	a5,a5,0x3
    800038a8:	00f987b3          	add	a5,s3,a5
    800038ac:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800038b0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800038b4:	0000b717          	auipc	a4,0xb
    800038b8:	ccc73703          	ld	a4,-820(a4) # 8000e580 <_ZL10waitForAll>
    800038bc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800038c0:	00048793          	mv	a5,s1
    800038c4:	00349513          	slli	a0,s1,0x3
    800038c8:	00aa8533          	add	a0,s5,a0
    800038cc:	fa9054e3          	blez	s1,80003874 <_Z22producerConsumer_C_APIv+0x1c8>
    800038d0:	00000597          	auipc	a1,0x0
    800038d4:	c6858593          	addi	a1,a1,-920 # 80003538 <_ZL8producerPv>
    800038d8:	fa5ff06f          	j	8000387c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	ad0080e7          	jalr	-1328(ra) # 800013ac <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800038e4:	00000493          	li	s1,0
    800038e8:	00994e63          	blt	s2,s1,80003904 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800038ec:	0000b517          	auipc	a0,0xb
    800038f0:	c9453503          	ld	a0,-876(a0) # 8000e580 <_ZL10waitForAll>
    800038f4:	ffffe097          	auipc	ra,0xffffe
    800038f8:	bb8080e7          	jalr	-1096(ra) # 800014ac <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    800038fc:	0014849b          	addiw	s1,s1,1
    80003900:	fe9ff06f          	j	800038e8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003904:	0000b517          	auipc	a0,0xb
    80003908:	c7c53503          	ld	a0,-900(a0) # 8000e580 <_ZL10waitForAll>
    8000390c:	ffffe097          	auipc	ra,0xffffe
    80003910:	b70080e7          	jalr	-1168(ra) # 8000147c <_Z9sem_closeP3Sem>
    delete buffer;
    80003914:	000a0e63          	beqz	s4,80003930 <_Z22producerConsumer_C_APIv+0x284>
    80003918:	000a0513          	mv	a0,s4
    8000391c:	00004097          	auipc	ra,0x4
    80003920:	b40080e7          	jalr	-1216(ra) # 8000745c <_ZN6BufferD1Ev>
    80003924:	000a0513          	mv	a0,s4
    80003928:	ffffe097          	auipc	ra,0xffffe
    8000392c:	628080e7          	jalr	1576(ra) # 80001f50 <_ZdlPv>
    80003930:	000b0113          	mv	sp,s6

}
    80003934:	f9040113          	addi	sp,s0,-112
    80003938:	06813083          	ld	ra,104(sp)
    8000393c:	06013403          	ld	s0,96(sp)
    80003940:	05813483          	ld	s1,88(sp)
    80003944:	05013903          	ld	s2,80(sp)
    80003948:	04813983          	ld	s3,72(sp)
    8000394c:	04013a03          	ld	s4,64(sp)
    80003950:	03813a83          	ld	s5,56(sp)
    80003954:	03013b03          	ld	s6,48(sp)
    80003958:	07010113          	addi	sp,sp,112
    8000395c:	00008067          	ret
    80003960:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003964:	000a0513          	mv	a0,s4
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	5e8080e7          	jalr	1512(ra) # 80001f50 <_ZdlPv>
    80003970:	00048513          	mv	a0,s1
    80003974:	0000c097          	auipc	ra,0xc
    80003978:	f54080e7          	jalr	-172(ra) # 8000f8c8 <_Unwind_Resume>

000000008000397c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00113c23          	sd	ra,24(sp)
    80003984:	00813823          	sd	s0,16(sp)
    80003988:	00913423          	sd	s1,8(sp)
    8000398c:	01213023          	sd	s2,0(sp)
    80003990:	02010413          	addi	s0,sp,32
    80003994:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003998:	00100793          	li	a5,1
    8000399c:	02a7f863          	bgeu	a5,a0,800039cc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800039a0:	00a00793          	li	a5,10
    800039a4:	02f577b3          	remu	a5,a0,a5
    800039a8:	02078e63          	beqz	a5,800039e4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800039ac:	fff48513          	addi	a0,s1,-1
    800039b0:	00000097          	auipc	ra,0x0
    800039b4:	fcc080e7          	jalr	-52(ra) # 8000397c <_ZL9fibonaccim>
    800039b8:	00050913          	mv	s2,a0
    800039bc:	ffe48513          	addi	a0,s1,-2
    800039c0:	00000097          	auipc	ra,0x0
    800039c4:	fbc080e7          	jalr	-68(ra) # 8000397c <_ZL9fibonaccim>
    800039c8:	00a90533          	add	a0,s2,a0
}
    800039cc:	01813083          	ld	ra,24(sp)
    800039d0:	01013403          	ld	s0,16(sp)
    800039d4:	00813483          	ld	s1,8(sp)
    800039d8:	00013903          	ld	s2,0(sp)
    800039dc:	02010113          	addi	sp,sp,32
    800039e0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	9c8080e7          	jalr	-1592(ra) # 800013ac <_Z15thread_dispatchv>
    800039ec:	fc1ff06f          	j	800039ac <_ZL9fibonaccim+0x30>

00000000800039f0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800039f0:	fe010113          	addi	sp,sp,-32
    800039f4:	00113c23          	sd	ra,24(sp)
    800039f8:	00813823          	sd	s0,16(sp)
    800039fc:	00913423          	sd	s1,8(sp)
    80003a00:	01213023          	sd	s2,0(sp)
    80003a04:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a08:	00000913          	li	s2,0
    80003a0c:	0380006f          	j	80003a44 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	99c080e7          	jalr	-1636(ra) # 800013ac <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a18:	00148493          	addi	s1,s1,1
    80003a1c:	000027b7          	lui	a5,0x2
    80003a20:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a24:	0097ee63          	bltu	a5,s1,80003a40 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a28:	00000713          	li	a4,0
    80003a2c:	000077b7          	lui	a5,0x7
    80003a30:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a34:	fce7eee3          	bltu	a5,a4,80003a10 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003a38:	00170713          	addi	a4,a4,1
    80003a3c:	ff1ff06f          	j	80003a2c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003a40:	00190913          	addi	s2,s2,1
    80003a44:	00900793          	li	a5,9
    80003a48:	0527e063          	bltu	a5,s2,80003a88 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003a4c:	00008517          	auipc	a0,0x8
    80003a50:	8bc50513          	addi	a0,a0,-1860 # 8000b308 <CONSOLE_STATUS+0x2f8>
    80003a54:	00002097          	auipc	ra,0x2
    80003a58:	010080e7          	jalr	16(ra) # 80005a64 <_Z11printStringPKc>
    80003a5c:	00000613          	li	a2,0
    80003a60:	00a00593          	li	a1,10
    80003a64:	0009051b          	sext.w	a0,s2
    80003a68:	00002097          	auipc	ra,0x2
    80003a6c:	1ac080e7          	jalr	428(ra) # 80005c14 <_Z8printIntiii>
    80003a70:	00008517          	auipc	a0,0x8
    80003a74:	b4050513          	addi	a0,a0,-1216 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80003a78:	00002097          	auipc	ra,0x2
    80003a7c:	fec080e7          	jalr	-20(ra) # 80005a64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a80:	00000493          	li	s1,0
    80003a84:	f99ff06f          	j	80003a1c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003a88:	00008517          	auipc	a0,0x8
    80003a8c:	88850513          	addi	a0,a0,-1912 # 8000b310 <CONSOLE_STATUS+0x300>
    80003a90:	00002097          	auipc	ra,0x2
    80003a94:	fd4080e7          	jalr	-44(ra) # 80005a64 <_Z11printStringPKc>
    finishedA = true;
    80003a98:	00100793          	li	a5,1
    80003a9c:	0000b717          	auipc	a4,0xb
    80003aa0:	aef70623          	sb	a5,-1300(a4) # 8000e588 <_ZL9finishedA>
}
    80003aa4:	01813083          	ld	ra,24(sp)
    80003aa8:	01013403          	ld	s0,16(sp)
    80003aac:	00813483          	ld	s1,8(sp)
    80003ab0:	00013903          	ld	s2,0(sp)
    80003ab4:	02010113          	addi	sp,sp,32
    80003ab8:	00008067          	ret

0000000080003abc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003abc:	fe010113          	addi	sp,sp,-32
    80003ac0:	00113c23          	sd	ra,24(sp)
    80003ac4:	00813823          	sd	s0,16(sp)
    80003ac8:	00913423          	sd	s1,8(sp)
    80003acc:	01213023          	sd	s2,0(sp)
    80003ad0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003ad4:	00000913          	li	s2,0
    80003ad8:	0380006f          	j	80003b10 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	8d0080e7          	jalr	-1840(ra) # 800013ac <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ae4:	00148493          	addi	s1,s1,1
    80003ae8:	000027b7          	lui	a5,0x2
    80003aec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003af0:	0097ee63          	bltu	a5,s1,80003b0c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003af4:	00000713          	li	a4,0
    80003af8:	000077b7          	lui	a5,0x7
    80003afc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b00:	fce7eee3          	bltu	a5,a4,80003adc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003b04:	00170713          	addi	a4,a4,1
    80003b08:	ff1ff06f          	j	80003af8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b0c:	00190913          	addi	s2,s2,1
    80003b10:	00f00793          	li	a5,15
    80003b14:	0527e063          	bltu	a5,s2,80003b54 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003b18:	00008517          	auipc	a0,0x8
    80003b1c:	80850513          	addi	a0,a0,-2040 # 8000b320 <CONSOLE_STATUS+0x310>
    80003b20:	00002097          	auipc	ra,0x2
    80003b24:	f44080e7          	jalr	-188(ra) # 80005a64 <_Z11printStringPKc>
    80003b28:	00000613          	li	a2,0
    80003b2c:	00a00593          	li	a1,10
    80003b30:	0009051b          	sext.w	a0,s2
    80003b34:	00002097          	auipc	ra,0x2
    80003b38:	0e0080e7          	jalr	224(ra) # 80005c14 <_Z8printIntiii>
    80003b3c:	00008517          	auipc	a0,0x8
    80003b40:	a7450513          	addi	a0,a0,-1420 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80003b44:	00002097          	auipc	ra,0x2
    80003b48:	f20080e7          	jalr	-224(ra) # 80005a64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b4c:	00000493          	li	s1,0
    80003b50:	f99ff06f          	j	80003ae8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003b54:	00007517          	auipc	a0,0x7
    80003b58:	7d450513          	addi	a0,a0,2004 # 8000b328 <CONSOLE_STATUS+0x318>
    80003b5c:	00002097          	auipc	ra,0x2
    80003b60:	f08080e7          	jalr	-248(ra) # 80005a64 <_Z11printStringPKc>
    finishedB = true;
    80003b64:	00100793          	li	a5,1
    80003b68:	0000b717          	auipc	a4,0xb
    80003b6c:	a2f700a3          	sb	a5,-1503(a4) # 8000e589 <_ZL9finishedB>
    thread_dispatch();
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	83c080e7          	jalr	-1988(ra) # 800013ac <_Z15thread_dispatchv>
}
    80003b78:	01813083          	ld	ra,24(sp)
    80003b7c:	01013403          	ld	s0,16(sp)
    80003b80:	00813483          	ld	s1,8(sp)
    80003b84:	00013903          	ld	s2,0(sp)
    80003b88:	02010113          	addi	sp,sp,32
    80003b8c:	00008067          	ret

0000000080003b90 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003b90:	fe010113          	addi	sp,sp,-32
    80003b94:	00113c23          	sd	ra,24(sp)
    80003b98:	00813823          	sd	s0,16(sp)
    80003b9c:	00913423          	sd	s1,8(sp)
    80003ba0:	01213023          	sd	s2,0(sp)
    80003ba4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003ba8:	00000493          	li	s1,0
    80003bac:	0400006f          	j	80003bec <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003bb0:	00007517          	auipc	a0,0x7
    80003bb4:	78850513          	addi	a0,a0,1928 # 8000b338 <CONSOLE_STATUS+0x328>
    80003bb8:	00002097          	auipc	ra,0x2
    80003bbc:	eac080e7          	jalr	-340(ra) # 80005a64 <_Z11printStringPKc>
    80003bc0:	00000613          	li	a2,0
    80003bc4:	00a00593          	li	a1,10
    80003bc8:	00048513          	mv	a0,s1
    80003bcc:	00002097          	auipc	ra,0x2
    80003bd0:	048080e7          	jalr	72(ra) # 80005c14 <_Z8printIntiii>
    80003bd4:	00008517          	auipc	a0,0x8
    80003bd8:	9dc50513          	addi	a0,a0,-1572 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80003bdc:	00002097          	auipc	ra,0x2
    80003be0:	e88080e7          	jalr	-376(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003be4:	0014849b          	addiw	s1,s1,1
    80003be8:	0ff4f493          	andi	s1,s1,255
    80003bec:	00200793          	li	a5,2
    80003bf0:	fc97f0e3          	bgeu	a5,s1,80003bb0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003bf4:	00007517          	auipc	a0,0x7
    80003bf8:	74c50513          	addi	a0,a0,1868 # 8000b340 <CONSOLE_STATUS+0x330>
    80003bfc:	00002097          	auipc	ra,0x2
    80003c00:	e68080e7          	jalr	-408(ra) # 80005a64 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c04:	00700313          	li	t1,7
    thread_dispatch();
    80003c08:	ffffd097          	auipc	ra,0xffffd
    80003c0c:	7a4080e7          	jalr	1956(ra) # 800013ac <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c10:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003c14:	00007517          	auipc	a0,0x7
    80003c18:	73c50513          	addi	a0,a0,1852 # 8000b350 <CONSOLE_STATUS+0x340>
    80003c1c:	00002097          	auipc	ra,0x2
    80003c20:	e48080e7          	jalr	-440(ra) # 80005a64 <_Z11printStringPKc>
    80003c24:	00000613          	li	a2,0
    80003c28:	00a00593          	li	a1,10
    80003c2c:	0009051b          	sext.w	a0,s2
    80003c30:	00002097          	auipc	ra,0x2
    80003c34:	fe4080e7          	jalr	-28(ra) # 80005c14 <_Z8printIntiii>
    80003c38:	00008517          	auipc	a0,0x8
    80003c3c:	97850513          	addi	a0,a0,-1672 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80003c40:	00002097          	auipc	ra,0x2
    80003c44:	e24080e7          	jalr	-476(ra) # 80005a64 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003c48:	00c00513          	li	a0,12
    80003c4c:	00000097          	auipc	ra,0x0
    80003c50:	d30080e7          	jalr	-720(ra) # 8000397c <_ZL9fibonaccim>
    80003c54:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003c58:	00007517          	auipc	a0,0x7
    80003c5c:	70050513          	addi	a0,a0,1792 # 8000b358 <CONSOLE_STATUS+0x348>
    80003c60:	00002097          	auipc	ra,0x2
    80003c64:	e04080e7          	jalr	-508(ra) # 80005a64 <_Z11printStringPKc>
    80003c68:	00000613          	li	a2,0
    80003c6c:	00a00593          	li	a1,10
    80003c70:	0009051b          	sext.w	a0,s2
    80003c74:	00002097          	auipc	ra,0x2
    80003c78:	fa0080e7          	jalr	-96(ra) # 80005c14 <_Z8printIntiii>
    80003c7c:	00008517          	auipc	a0,0x8
    80003c80:	93450513          	addi	a0,a0,-1740 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80003c84:	00002097          	auipc	ra,0x2
    80003c88:	de0080e7          	jalr	-544(ra) # 80005a64 <_Z11printStringPKc>
    80003c8c:	0400006f          	j	80003ccc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003c90:	00007517          	auipc	a0,0x7
    80003c94:	6a850513          	addi	a0,a0,1704 # 8000b338 <CONSOLE_STATUS+0x328>
    80003c98:	00002097          	auipc	ra,0x2
    80003c9c:	dcc080e7          	jalr	-564(ra) # 80005a64 <_Z11printStringPKc>
    80003ca0:	00000613          	li	a2,0
    80003ca4:	00a00593          	li	a1,10
    80003ca8:	00048513          	mv	a0,s1
    80003cac:	00002097          	auipc	ra,0x2
    80003cb0:	f68080e7          	jalr	-152(ra) # 80005c14 <_Z8printIntiii>
    80003cb4:	00008517          	auipc	a0,0x8
    80003cb8:	8fc50513          	addi	a0,a0,-1796 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80003cbc:	00002097          	auipc	ra,0x2
    80003cc0:	da8080e7          	jalr	-600(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003cc4:	0014849b          	addiw	s1,s1,1
    80003cc8:	0ff4f493          	andi	s1,s1,255
    80003ccc:	00500793          	li	a5,5
    80003cd0:	fc97f0e3          	bgeu	a5,s1,80003c90 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003cd4:	00007517          	auipc	a0,0x7
    80003cd8:	63c50513          	addi	a0,a0,1596 # 8000b310 <CONSOLE_STATUS+0x300>
    80003cdc:	00002097          	auipc	ra,0x2
    80003ce0:	d88080e7          	jalr	-632(ra) # 80005a64 <_Z11printStringPKc>
    finishedC = true;
    80003ce4:	00100793          	li	a5,1
    80003ce8:	0000b717          	auipc	a4,0xb
    80003cec:	8af70123          	sb	a5,-1886(a4) # 8000e58a <_ZL9finishedC>
    thread_dispatch();
    80003cf0:	ffffd097          	auipc	ra,0xffffd
    80003cf4:	6bc080e7          	jalr	1724(ra) # 800013ac <_Z15thread_dispatchv>
}
    80003cf8:	01813083          	ld	ra,24(sp)
    80003cfc:	01013403          	ld	s0,16(sp)
    80003d00:	00813483          	ld	s1,8(sp)
    80003d04:	00013903          	ld	s2,0(sp)
    80003d08:	02010113          	addi	sp,sp,32
    80003d0c:	00008067          	ret

0000000080003d10 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003d10:	fe010113          	addi	sp,sp,-32
    80003d14:	00113c23          	sd	ra,24(sp)
    80003d18:	00813823          	sd	s0,16(sp)
    80003d1c:	00913423          	sd	s1,8(sp)
    80003d20:	01213023          	sd	s2,0(sp)
    80003d24:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003d28:	00a00493          	li	s1,10
    80003d2c:	0400006f          	j	80003d6c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d30:	00007517          	auipc	a0,0x7
    80003d34:	63850513          	addi	a0,a0,1592 # 8000b368 <CONSOLE_STATUS+0x358>
    80003d38:	00002097          	auipc	ra,0x2
    80003d3c:	d2c080e7          	jalr	-724(ra) # 80005a64 <_Z11printStringPKc>
    80003d40:	00000613          	li	a2,0
    80003d44:	00a00593          	li	a1,10
    80003d48:	00048513          	mv	a0,s1
    80003d4c:	00002097          	auipc	ra,0x2
    80003d50:	ec8080e7          	jalr	-312(ra) # 80005c14 <_Z8printIntiii>
    80003d54:	00008517          	auipc	a0,0x8
    80003d58:	85c50513          	addi	a0,a0,-1956 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80003d5c:	00002097          	auipc	ra,0x2
    80003d60:	d08080e7          	jalr	-760(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003d64:	0014849b          	addiw	s1,s1,1
    80003d68:	0ff4f493          	andi	s1,s1,255
    80003d6c:	00c00793          	li	a5,12
    80003d70:	fc97f0e3          	bgeu	a5,s1,80003d30 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003d74:	00007517          	auipc	a0,0x7
    80003d78:	5fc50513          	addi	a0,a0,1532 # 8000b370 <CONSOLE_STATUS+0x360>
    80003d7c:	00002097          	auipc	ra,0x2
    80003d80:	ce8080e7          	jalr	-792(ra) # 80005a64 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003d84:	00500313          	li	t1,5
    thread_dispatch();
    80003d88:	ffffd097          	auipc	ra,0xffffd
    80003d8c:	624080e7          	jalr	1572(ra) # 800013ac <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003d90:	01000513          	li	a0,16
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	be8080e7          	jalr	-1048(ra) # 8000397c <_ZL9fibonaccim>
    80003d9c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003da0:	00007517          	auipc	a0,0x7
    80003da4:	5e050513          	addi	a0,a0,1504 # 8000b380 <CONSOLE_STATUS+0x370>
    80003da8:	00002097          	auipc	ra,0x2
    80003dac:	cbc080e7          	jalr	-836(ra) # 80005a64 <_Z11printStringPKc>
    80003db0:	00000613          	li	a2,0
    80003db4:	00a00593          	li	a1,10
    80003db8:	0009051b          	sext.w	a0,s2
    80003dbc:	00002097          	auipc	ra,0x2
    80003dc0:	e58080e7          	jalr	-424(ra) # 80005c14 <_Z8printIntiii>
    80003dc4:	00007517          	auipc	a0,0x7
    80003dc8:	7ec50513          	addi	a0,a0,2028 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80003dcc:	00002097          	auipc	ra,0x2
    80003dd0:	c98080e7          	jalr	-872(ra) # 80005a64 <_Z11printStringPKc>
    80003dd4:	0400006f          	j	80003e14 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003dd8:	00007517          	auipc	a0,0x7
    80003ddc:	59050513          	addi	a0,a0,1424 # 8000b368 <CONSOLE_STATUS+0x358>
    80003de0:	00002097          	auipc	ra,0x2
    80003de4:	c84080e7          	jalr	-892(ra) # 80005a64 <_Z11printStringPKc>
    80003de8:	00000613          	li	a2,0
    80003dec:	00a00593          	li	a1,10
    80003df0:	00048513          	mv	a0,s1
    80003df4:	00002097          	auipc	ra,0x2
    80003df8:	e20080e7          	jalr	-480(ra) # 80005c14 <_Z8printIntiii>
    80003dfc:	00007517          	auipc	a0,0x7
    80003e00:	7b450513          	addi	a0,a0,1972 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80003e04:	00002097          	auipc	ra,0x2
    80003e08:	c60080e7          	jalr	-928(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e0c:	0014849b          	addiw	s1,s1,1
    80003e10:	0ff4f493          	andi	s1,s1,255
    80003e14:	00f00793          	li	a5,15
    80003e18:	fc97f0e3          	bgeu	a5,s1,80003dd8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003e1c:	00007517          	auipc	a0,0x7
    80003e20:	57450513          	addi	a0,a0,1396 # 8000b390 <CONSOLE_STATUS+0x380>
    80003e24:	00002097          	auipc	ra,0x2
    80003e28:	c40080e7          	jalr	-960(ra) # 80005a64 <_Z11printStringPKc>
    finishedD = true;
    80003e2c:	00100793          	li	a5,1
    80003e30:	0000a717          	auipc	a4,0xa
    80003e34:	74f70da3          	sb	a5,1883(a4) # 8000e58b <_ZL9finishedD>
    thread_dispatch();
    80003e38:	ffffd097          	auipc	ra,0xffffd
    80003e3c:	574080e7          	jalr	1396(ra) # 800013ac <_Z15thread_dispatchv>
}
    80003e40:	01813083          	ld	ra,24(sp)
    80003e44:	01013403          	ld	s0,16(sp)
    80003e48:	00813483          	ld	s1,8(sp)
    80003e4c:	00013903          	ld	s2,0(sp)
    80003e50:	02010113          	addi	sp,sp,32
    80003e54:	00008067          	ret

0000000080003e58 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003e58:	fc010113          	addi	sp,sp,-64
    80003e5c:	02113c23          	sd	ra,56(sp)
    80003e60:	02813823          	sd	s0,48(sp)
    80003e64:	02913423          	sd	s1,40(sp)
    80003e68:	03213023          	sd	s2,32(sp)
    80003e6c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003e70:	02000513          	li	a0,32
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	08c080e7          	jalr	140(ra) # 80001f00 <_Znwm>
    80003e7c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	304080e7          	jalr	772(ra) # 80002184 <_ZN6ThreadC1Ev>
    80003e88:	0000a797          	auipc	a5,0xa
    80003e8c:	45878793          	addi	a5,a5,1112 # 8000e2e0 <_ZTV7WorkerA+0x10>
    80003e90:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003e94:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003e98:	00007517          	auipc	a0,0x7
    80003e9c:	50850513          	addi	a0,a0,1288 # 8000b3a0 <CONSOLE_STATUS+0x390>
    80003ea0:	00002097          	auipc	ra,0x2
    80003ea4:	bc4080e7          	jalr	-1084(ra) # 80005a64 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003ea8:	02000513          	li	a0,32
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	054080e7          	jalr	84(ra) # 80001f00 <_Znwm>
    80003eb4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	2cc080e7          	jalr	716(ra) # 80002184 <_ZN6ThreadC1Ev>
    80003ec0:	0000a797          	auipc	a5,0xa
    80003ec4:	44878793          	addi	a5,a5,1096 # 8000e308 <_ZTV7WorkerB+0x10>
    80003ec8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003ecc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003ed0:	00007517          	auipc	a0,0x7
    80003ed4:	4e850513          	addi	a0,a0,1256 # 8000b3b8 <CONSOLE_STATUS+0x3a8>
    80003ed8:	00002097          	auipc	ra,0x2
    80003edc:	b8c080e7          	jalr	-1140(ra) # 80005a64 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003ee0:	02000513          	li	a0,32
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	01c080e7          	jalr	28(ra) # 80001f00 <_Znwm>
    80003eec:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	294080e7          	jalr	660(ra) # 80002184 <_ZN6ThreadC1Ev>
    80003ef8:	0000a797          	auipc	a5,0xa
    80003efc:	43878793          	addi	a5,a5,1080 # 8000e330 <_ZTV7WorkerC+0x10>
    80003f00:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003f04:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003f08:	00007517          	auipc	a0,0x7
    80003f0c:	4c850513          	addi	a0,a0,1224 # 8000b3d0 <CONSOLE_STATUS+0x3c0>
    80003f10:	00002097          	auipc	ra,0x2
    80003f14:	b54080e7          	jalr	-1196(ra) # 80005a64 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003f18:	02000513          	li	a0,32
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	fe4080e7          	jalr	-28(ra) # 80001f00 <_Znwm>
    80003f24:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	25c080e7          	jalr	604(ra) # 80002184 <_ZN6ThreadC1Ev>
    80003f30:	0000a797          	auipc	a5,0xa
    80003f34:	42878793          	addi	a5,a5,1064 # 8000e358 <_ZTV7WorkerD+0x10>
    80003f38:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003f3c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003f40:	00007517          	auipc	a0,0x7
    80003f44:	4a850513          	addi	a0,a0,1192 # 8000b3e8 <CONSOLE_STATUS+0x3d8>
    80003f48:	00002097          	auipc	ra,0x2
    80003f4c:	b1c080e7          	jalr	-1252(ra) # 80005a64 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003f50:	00000493          	li	s1,0
    80003f54:	00300793          	li	a5,3
    80003f58:	0297c663          	blt	a5,s1,80003f84 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003f5c:	00349793          	slli	a5,s1,0x3
    80003f60:	fe040713          	addi	a4,s0,-32
    80003f64:	00f707b3          	add	a5,a4,a5
    80003f68:	fe07b503          	ld	a0,-32(a5)
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	174080e7          	jalr	372(ra) # 800020e0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003f74:	0014849b          	addiw	s1,s1,1
    80003f78:	fddff06f          	j	80003f54 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003f7c:	ffffe097          	auipc	ra,0xffffe
    80003f80:	198080e7          	jalr	408(ra) # 80002114 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003f84:	0000a797          	auipc	a5,0xa
    80003f88:	6047c783          	lbu	a5,1540(a5) # 8000e588 <_ZL9finishedA>
    80003f8c:	fe0788e3          	beqz	a5,80003f7c <_Z20Threads_CPP_API_testv+0x124>
    80003f90:	0000a797          	auipc	a5,0xa
    80003f94:	5f97c783          	lbu	a5,1529(a5) # 8000e589 <_ZL9finishedB>
    80003f98:	fe0782e3          	beqz	a5,80003f7c <_Z20Threads_CPP_API_testv+0x124>
    80003f9c:	0000a797          	auipc	a5,0xa
    80003fa0:	5ee7c783          	lbu	a5,1518(a5) # 8000e58a <_ZL9finishedC>
    80003fa4:	fc078ce3          	beqz	a5,80003f7c <_Z20Threads_CPP_API_testv+0x124>
    80003fa8:	0000a797          	auipc	a5,0xa
    80003fac:	5e37c783          	lbu	a5,1507(a5) # 8000e58b <_ZL9finishedD>
    80003fb0:	fc0786e3          	beqz	a5,80003f7c <_Z20Threads_CPP_API_testv+0x124>
    80003fb4:	fc040493          	addi	s1,s0,-64
    80003fb8:	0080006f          	j	80003fc0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003fbc:	00848493          	addi	s1,s1,8
    80003fc0:	fe040793          	addi	a5,s0,-32
    80003fc4:	08f48663          	beq	s1,a5,80004050 <_Z20Threads_CPP_API_testv+0x1f8>
    80003fc8:	0004b503          	ld	a0,0(s1)
    80003fcc:	fe0508e3          	beqz	a0,80003fbc <_Z20Threads_CPP_API_testv+0x164>
    80003fd0:	00053783          	ld	a5,0(a0)
    80003fd4:	0087b783          	ld	a5,8(a5)
    80003fd8:	000780e7          	jalr	a5
    80003fdc:	fe1ff06f          	j	80003fbc <_Z20Threads_CPP_API_testv+0x164>
    80003fe0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003fe4:	00048513          	mv	a0,s1
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	f68080e7          	jalr	-152(ra) # 80001f50 <_ZdlPv>
    80003ff0:	00090513          	mv	a0,s2
    80003ff4:	0000c097          	auipc	ra,0xc
    80003ff8:	8d4080e7          	jalr	-1836(ra) # 8000f8c8 <_Unwind_Resume>
    80003ffc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004000:	00048513          	mv	a0,s1
    80004004:	ffffe097          	auipc	ra,0xffffe
    80004008:	f4c080e7          	jalr	-180(ra) # 80001f50 <_ZdlPv>
    8000400c:	00090513          	mv	a0,s2
    80004010:	0000c097          	auipc	ra,0xc
    80004014:	8b8080e7          	jalr	-1864(ra) # 8000f8c8 <_Unwind_Resume>
    80004018:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000401c:	00048513          	mv	a0,s1
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	f30080e7          	jalr	-208(ra) # 80001f50 <_ZdlPv>
    80004028:	00090513          	mv	a0,s2
    8000402c:	0000c097          	auipc	ra,0xc
    80004030:	89c080e7          	jalr	-1892(ra) # 8000f8c8 <_Unwind_Resume>
    80004034:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004038:	00048513          	mv	a0,s1
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	f14080e7          	jalr	-236(ra) # 80001f50 <_ZdlPv>
    80004044:	00090513          	mv	a0,s2
    80004048:	0000c097          	auipc	ra,0xc
    8000404c:	880080e7          	jalr	-1920(ra) # 8000f8c8 <_Unwind_Resume>
}
    80004050:	03813083          	ld	ra,56(sp)
    80004054:	03013403          	ld	s0,48(sp)
    80004058:	02813483          	ld	s1,40(sp)
    8000405c:	02013903          	ld	s2,32(sp)
    80004060:	04010113          	addi	sp,sp,64
    80004064:	00008067          	ret

0000000080004068 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004068:	ff010113          	addi	sp,sp,-16
    8000406c:	00113423          	sd	ra,8(sp)
    80004070:	00813023          	sd	s0,0(sp)
    80004074:	01010413          	addi	s0,sp,16
    80004078:	0000a797          	auipc	a5,0xa
    8000407c:	26878793          	addi	a5,a5,616 # 8000e2e0 <_ZTV7WorkerA+0x10>
    80004080:	00f53023          	sd	a5,0(a0)
    80004084:	ffffe097          	auipc	ra,0xffffe
    80004088:	fb0080e7          	jalr	-80(ra) # 80002034 <_ZN6ThreadD1Ev>
    8000408c:	00813083          	ld	ra,8(sp)
    80004090:	00013403          	ld	s0,0(sp)
    80004094:	01010113          	addi	sp,sp,16
    80004098:	00008067          	ret

000000008000409c <_ZN7WorkerAD0Ev>:
    8000409c:	fe010113          	addi	sp,sp,-32
    800040a0:	00113c23          	sd	ra,24(sp)
    800040a4:	00813823          	sd	s0,16(sp)
    800040a8:	00913423          	sd	s1,8(sp)
    800040ac:	02010413          	addi	s0,sp,32
    800040b0:	00050493          	mv	s1,a0
    800040b4:	0000a797          	auipc	a5,0xa
    800040b8:	22c78793          	addi	a5,a5,556 # 8000e2e0 <_ZTV7WorkerA+0x10>
    800040bc:	00f53023          	sd	a5,0(a0)
    800040c0:	ffffe097          	auipc	ra,0xffffe
    800040c4:	f74080e7          	jalr	-140(ra) # 80002034 <_ZN6ThreadD1Ev>
    800040c8:	00048513          	mv	a0,s1
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	e84080e7          	jalr	-380(ra) # 80001f50 <_ZdlPv>
    800040d4:	01813083          	ld	ra,24(sp)
    800040d8:	01013403          	ld	s0,16(sp)
    800040dc:	00813483          	ld	s1,8(sp)
    800040e0:	02010113          	addi	sp,sp,32
    800040e4:	00008067          	ret

00000000800040e8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800040e8:	ff010113          	addi	sp,sp,-16
    800040ec:	00113423          	sd	ra,8(sp)
    800040f0:	00813023          	sd	s0,0(sp)
    800040f4:	01010413          	addi	s0,sp,16
    800040f8:	0000a797          	auipc	a5,0xa
    800040fc:	21078793          	addi	a5,a5,528 # 8000e308 <_ZTV7WorkerB+0x10>
    80004100:	00f53023          	sd	a5,0(a0)
    80004104:	ffffe097          	auipc	ra,0xffffe
    80004108:	f30080e7          	jalr	-208(ra) # 80002034 <_ZN6ThreadD1Ev>
    8000410c:	00813083          	ld	ra,8(sp)
    80004110:	00013403          	ld	s0,0(sp)
    80004114:	01010113          	addi	sp,sp,16
    80004118:	00008067          	ret

000000008000411c <_ZN7WorkerBD0Ev>:
    8000411c:	fe010113          	addi	sp,sp,-32
    80004120:	00113c23          	sd	ra,24(sp)
    80004124:	00813823          	sd	s0,16(sp)
    80004128:	00913423          	sd	s1,8(sp)
    8000412c:	02010413          	addi	s0,sp,32
    80004130:	00050493          	mv	s1,a0
    80004134:	0000a797          	auipc	a5,0xa
    80004138:	1d478793          	addi	a5,a5,468 # 8000e308 <_ZTV7WorkerB+0x10>
    8000413c:	00f53023          	sd	a5,0(a0)
    80004140:	ffffe097          	auipc	ra,0xffffe
    80004144:	ef4080e7          	jalr	-268(ra) # 80002034 <_ZN6ThreadD1Ev>
    80004148:	00048513          	mv	a0,s1
    8000414c:	ffffe097          	auipc	ra,0xffffe
    80004150:	e04080e7          	jalr	-508(ra) # 80001f50 <_ZdlPv>
    80004154:	01813083          	ld	ra,24(sp)
    80004158:	01013403          	ld	s0,16(sp)
    8000415c:	00813483          	ld	s1,8(sp)
    80004160:	02010113          	addi	sp,sp,32
    80004164:	00008067          	ret

0000000080004168 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004168:	ff010113          	addi	sp,sp,-16
    8000416c:	00113423          	sd	ra,8(sp)
    80004170:	00813023          	sd	s0,0(sp)
    80004174:	01010413          	addi	s0,sp,16
    80004178:	0000a797          	auipc	a5,0xa
    8000417c:	1b878793          	addi	a5,a5,440 # 8000e330 <_ZTV7WorkerC+0x10>
    80004180:	00f53023          	sd	a5,0(a0)
    80004184:	ffffe097          	auipc	ra,0xffffe
    80004188:	eb0080e7          	jalr	-336(ra) # 80002034 <_ZN6ThreadD1Ev>
    8000418c:	00813083          	ld	ra,8(sp)
    80004190:	00013403          	ld	s0,0(sp)
    80004194:	01010113          	addi	sp,sp,16
    80004198:	00008067          	ret

000000008000419c <_ZN7WorkerCD0Ev>:
    8000419c:	fe010113          	addi	sp,sp,-32
    800041a0:	00113c23          	sd	ra,24(sp)
    800041a4:	00813823          	sd	s0,16(sp)
    800041a8:	00913423          	sd	s1,8(sp)
    800041ac:	02010413          	addi	s0,sp,32
    800041b0:	00050493          	mv	s1,a0
    800041b4:	0000a797          	auipc	a5,0xa
    800041b8:	17c78793          	addi	a5,a5,380 # 8000e330 <_ZTV7WorkerC+0x10>
    800041bc:	00f53023          	sd	a5,0(a0)
    800041c0:	ffffe097          	auipc	ra,0xffffe
    800041c4:	e74080e7          	jalr	-396(ra) # 80002034 <_ZN6ThreadD1Ev>
    800041c8:	00048513          	mv	a0,s1
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	d84080e7          	jalr	-636(ra) # 80001f50 <_ZdlPv>
    800041d4:	01813083          	ld	ra,24(sp)
    800041d8:	01013403          	ld	s0,16(sp)
    800041dc:	00813483          	ld	s1,8(sp)
    800041e0:	02010113          	addi	sp,sp,32
    800041e4:	00008067          	ret

00000000800041e8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800041e8:	ff010113          	addi	sp,sp,-16
    800041ec:	00113423          	sd	ra,8(sp)
    800041f0:	00813023          	sd	s0,0(sp)
    800041f4:	01010413          	addi	s0,sp,16
    800041f8:	0000a797          	auipc	a5,0xa
    800041fc:	16078793          	addi	a5,a5,352 # 8000e358 <_ZTV7WorkerD+0x10>
    80004200:	00f53023          	sd	a5,0(a0)
    80004204:	ffffe097          	auipc	ra,0xffffe
    80004208:	e30080e7          	jalr	-464(ra) # 80002034 <_ZN6ThreadD1Ev>
    8000420c:	00813083          	ld	ra,8(sp)
    80004210:	00013403          	ld	s0,0(sp)
    80004214:	01010113          	addi	sp,sp,16
    80004218:	00008067          	ret

000000008000421c <_ZN7WorkerDD0Ev>:
    8000421c:	fe010113          	addi	sp,sp,-32
    80004220:	00113c23          	sd	ra,24(sp)
    80004224:	00813823          	sd	s0,16(sp)
    80004228:	00913423          	sd	s1,8(sp)
    8000422c:	02010413          	addi	s0,sp,32
    80004230:	00050493          	mv	s1,a0
    80004234:	0000a797          	auipc	a5,0xa
    80004238:	12478793          	addi	a5,a5,292 # 8000e358 <_ZTV7WorkerD+0x10>
    8000423c:	00f53023          	sd	a5,0(a0)
    80004240:	ffffe097          	auipc	ra,0xffffe
    80004244:	df4080e7          	jalr	-524(ra) # 80002034 <_ZN6ThreadD1Ev>
    80004248:	00048513          	mv	a0,s1
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	d04080e7          	jalr	-764(ra) # 80001f50 <_ZdlPv>
    80004254:	01813083          	ld	ra,24(sp)
    80004258:	01013403          	ld	s0,16(sp)
    8000425c:	00813483          	ld	s1,8(sp)
    80004260:	02010113          	addi	sp,sp,32
    80004264:	00008067          	ret

0000000080004268 <_ZN7WorkerA3runEv>:
    void run() override {
    80004268:	ff010113          	addi	sp,sp,-16
    8000426c:	00113423          	sd	ra,8(sp)
    80004270:	00813023          	sd	s0,0(sp)
    80004274:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004278:	00000593          	li	a1,0
    8000427c:	fffff097          	auipc	ra,0xfffff
    80004280:	774080e7          	jalr	1908(ra) # 800039f0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004284:	00813083          	ld	ra,8(sp)
    80004288:	00013403          	ld	s0,0(sp)
    8000428c:	01010113          	addi	sp,sp,16
    80004290:	00008067          	ret

0000000080004294 <_ZN7WorkerB3runEv>:
    void run() override {
    80004294:	ff010113          	addi	sp,sp,-16
    80004298:	00113423          	sd	ra,8(sp)
    8000429c:	00813023          	sd	s0,0(sp)
    800042a0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800042a4:	00000593          	li	a1,0
    800042a8:	00000097          	auipc	ra,0x0
    800042ac:	814080e7          	jalr	-2028(ra) # 80003abc <_ZN7WorkerB11workerBodyBEPv>
    }
    800042b0:	00813083          	ld	ra,8(sp)
    800042b4:	00013403          	ld	s0,0(sp)
    800042b8:	01010113          	addi	sp,sp,16
    800042bc:	00008067          	ret

00000000800042c0 <_ZN7WorkerC3runEv>:
    void run() override {
    800042c0:	ff010113          	addi	sp,sp,-16
    800042c4:	00113423          	sd	ra,8(sp)
    800042c8:	00813023          	sd	s0,0(sp)
    800042cc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800042d0:	00000593          	li	a1,0
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	8bc080e7          	jalr	-1860(ra) # 80003b90 <_ZN7WorkerC11workerBodyCEPv>
    }
    800042dc:	00813083          	ld	ra,8(sp)
    800042e0:	00013403          	ld	s0,0(sp)
    800042e4:	01010113          	addi	sp,sp,16
    800042e8:	00008067          	ret

00000000800042ec <_ZN7WorkerD3runEv>:
    void run() override {
    800042ec:	ff010113          	addi	sp,sp,-16
    800042f0:	00113423          	sd	ra,8(sp)
    800042f4:	00813023          	sd	s0,0(sp)
    800042f8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800042fc:	00000593          	li	a1,0
    80004300:	00000097          	auipc	ra,0x0
    80004304:	a10080e7          	jalr	-1520(ra) # 80003d10 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004308:	00813083          	ld	ra,8(sp)
    8000430c:	00013403          	ld	s0,0(sp)
    80004310:	01010113          	addi	sp,sp,16
    80004314:	00008067          	ret

0000000080004318 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004318:	f8010113          	addi	sp,sp,-128
    8000431c:	06113c23          	sd	ra,120(sp)
    80004320:	06813823          	sd	s0,112(sp)
    80004324:	06913423          	sd	s1,104(sp)
    80004328:	07213023          	sd	s2,96(sp)
    8000432c:	05313c23          	sd	s3,88(sp)
    80004330:	05413823          	sd	s4,80(sp)
    80004334:	05513423          	sd	s5,72(sp)
    80004338:	05613023          	sd	s6,64(sp)
    8000433c:	03713c23          	sd	s7,56(sp)
    80004340:	03813823          	sd	s8,48(sp)
    80004344:	03913423          	sd	s9,40(sp)
    80004348:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000434c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004350:	00007517          	auipc	a0,0x7
    80004354:	ed050513          	addi	a0,a0,-304 # 8000b220 <CONSOLE_STATUS+0x210>
    80004358:	00001097          	auipc	ra,0x1
    8000435c:	70c080e7          	jalr	1804(ra) # 80005a64 <_Z11printStringPKc>
    getString(input, 30);
    80004360:	01e00593          	li	a1,30
    80004364:	f8040493          	addi	s1,s0,-128
    80004368:	00048513          	mv	a0,s1
    8000436c:	00001097          	auipc	ra,0x1
    80004370:	780080e7          	jalr	1920(ra) # 80005aec <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004374:	00048513          	mv	a0,s1
    80004378:	00002097          	auipc	ra,0x2
    8000437c:	84c080e7          	jalr	-1972(ra) # 80005bc4 <_Z11stringToIntPKc>
    80004380:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004384:	00007517          	auipc	a0,0x7
    80004388:	ebc50513          	addi	a0,a0,-324 # 8000b240 <CONSOLE_STATUS+0x230>
    8000438c:	00001097          	auipc	ra,0x1
    80004390:	6d8080e7          	jalr	1752(ra) # 80005a64 <_Z11printStringPKc>
    getString(input, 30);
    80004394:	01e00593          	li	a1,30
    80004398:	00048513          	mv	a0,s1
    8000439c:	00001097          	auipc	ra,0x1
    800043a0:	750080e7          	jalr	1872(ra) # 80005aec <_Z9getStringPci>
    n = stringToInt(input);
    800043a4:	00048513          	mv	a0,s1
    800043a8:	00002097          	auipc	ra,0x2
    800043ac:	81c080e7          	jalr	-2020(ra) # 80005bc4 <_Z11stringToIntPKc>
    800043b0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800043b4:	00007517          	auipc	a0,0x7
    800043b8:	eac50513          	addi	a0,a0,-340 # 8000b260 <CONSOLE_STATUS+0x250>
    800043bc:	00001097          	auipc	ra,0x1
    800043c0:	6a8080e7          	jalr	1704(ra) # 80005a64 <_Z11printStringPKc>
    printInt(threadNum);
    800043c4:	00000613          	li	a2,0
    800043c8:	00a00593          	li	a1,10
    800043cc:	00098513          	mv	a0,s3
    800043d0:	00002097          	auipc	ra,0x2
    800043d4:	844080e7          	jalr	-1980(ra) # 80005c14 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800043d8:	00007517          	auipc	a0,0x7
    800043dc:	ea050513          	addi	a0,a0,-352 # 8000b278 <CONSOLE_STATUS+0x268>
    800043e0:	00001097          	auipc	ra,0x1
    800043e4:	684080e7          	jalr	1668(ra) # 80005a64 <_Z11printStringPKc>
    printInt(n);
    800043e8:	00000613          	li	a2,0
    800043ec:	00a00593          	li	a1,10
    800043f0:	00048513          	mv	a0,s1
    800043f4:	00002097          	auipc	ra,0x2
    800043f8:	820080e7          	jalr	-2016(ra) # 80005c14 <_Z8printIntiii>
    printString(".\n");
    800043fc:	00007517          	auipc	a0,0x7
    80004400:	e9450513          	addi	a0,a0,-364 # 8000b290 <CONSOLE_STATUS+0x280>
    80004404:	00001097          	auipc	ra,0x1
    80004408:	660080e7          	jalr	1632(ra) # 80005a64 <_Z11printStringPKc>
    if (threadNum > n) {
    8000440c:	0334c463          	blt	s1,s3,80004434 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004410:	03305c63          	blez	s3,80004448 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004414:	03800513          	li	a0,56
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	ae8080e7          	jalr	-1304(ra) # 80001f00 <_Znwm>
    80004420:	00050a93          	mv	s5,a0
    80004424:	00048593          	mv	a1,s1
    80004428:	00002097          	auipc	ra,0x2
    8000442c:	90c080e7          	jalr	-1780(ra) # 80005d34 <_ZN9BufferCPPC1Ei>
    80004430:	0300006f          	j	80004460 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004434:	00007517          	auipc	a0,0x7
    80004438:	e6450513          	addi	a0,a0,-412 # 8000b298 <CONSOLE_STATUS+0x288>
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	628080e7          	jalr	1576(ra) # 80005a64 <_Z11printStringPKc>
        return;
    80004444:	0140006f          	j	80004458 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004448:	00007517          	auipc	a0,0x7
    8000444c:	e9050513          	addi	a0,a0,-368 # 8000b2d8 <CONSOLE_STATUS+0x2c8>
    80004450:	00001097          	auipc	ra,0x1
    80004454:	614080e7          	jalr	1556(ra) # 80005a64 <_Z11printStringPKc>
        return;
    80004458:	000c0113          	mv	sp,s8
    8000445c:	2140006f          	j	80004670 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004460:	02000513          	li	a0,32
    80004464:	ffffe097          	auipc	ra,0xffffe
    80004468:	a9c080e7          	jalr	-1380(ra) # 80001f00 <_Znwm>
    8000446c:	00050913          	mv	s2,a0
    80004470:	00000593          	li	a1,0
    80004474:	ffffe097          	auipc	ra,0xffffe
    80004478:	d70080e7          	jalr	-656(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    8000447c:	0000a797          	auipc	a5,0xa
    80004480:	1127be23          	sd	s2,284(a5) # 8000e598 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004484:	00399793          	slli	a5,s3,0x3
    80004488:	00f78793          	addi	a5,a5,15
    8000448c:	ff07f793          	andi	a5,a5,-16
    80004490:	40f10133          	sub	sp,sp,a5
    80004494:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004498:	0019871b          	addiw	a4,s3,1
    8000449c:	00171793          	slli	a5,a4,0x1
    800044a0:	00e787b3          	add	a5,a5,a4
    800044a4:	00379793          	slli	a5,a5,0x3
    800044a8:	00f78793          	addi	a5,a5,15
    800044ac:	ff07f793          	andi	a5,a5,-16
    800044b0:	40f10133          	sub	sp,sp,a5
    800044b4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800044b8:	00199493          	slli	s1,s3,0x1
    800044bc:	013484b3          	add	s1,s1,s3
    800044c0:	00349493          	slli	s1,s1,0x3
    800044c4:	009b04b3          	add	s1,s6,s1
    800044c8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800044cc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800044d0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800044d4:	02800513          	li	a0,40
    800044d8:	ffffe097          	auipc	ra,0xffffe
    800044dc:	a28080e7          	jalr	-1496(ra) # 80001f00 <_Znwm>
    800044e0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800044e4:	ffffe097          	auipc	ra,0xffffe
    800044e8:	ca0080e7          	jalr	-864(ra) # 80002184 <_ZN6ThreadC1Ev>
    800044ec:	0000a797          	auipc	a5,0xa
    800044f0:	ee478793          	addi	a5,a5,-284 # 8000e3d0 <_ZTV8Consumer+0x10>
    800044f4:	00fbb023          	sd	a5,0(s7)
    800044f8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800044fc:	000b8513          	mv	a0,s7
    80004500:	ffffe097          	auipc	ra,0xffffe
    80004504:	be0080e7          	jalr	-1056(ra) # 800020e0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004508:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000450c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004510:	0000a797          	auipc	a5,0xa
    80004514:	0887b783          	ld	a5,136(a5) # 8000e598 <_ZL10waitForAll>
    80004518:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000451c:	02800513          	li	a0,40
    80004520:	ffffe097          	auipc	ra,0xffffe
    80004524:	9e0080e7          	jalr	-1568(ra) # 80001f00 <_Znwm>
    80004528:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	c58080e7          	jalr	-936(ra) # 80002184 <_ZN6ThreadC1Ev>
    80004534:	0000a797          	auipc	a5,0xa
    80004538:	e4c78793          	addi	a5,a5,-436 # 8000e380 <_ZTV16ProducerKeyborad+0x10>
    8000453c:	00f4b023          	sd	a5,0(s1)
    80004540:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004544:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004548:	00048513          	mv	a0,s1
    8000454c:	ffffe097          	auipc	ra,0xffffe
    80004550:	b94080e7          	jalr	-1132(ra) # 800020e0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004554:	00100913          	li	s2,1
    80004558:	0300006f          	j	80004588 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000455c:	0000a797          	auipc	a5,0xa
    80004560:	e4c78793          	addi	a5,a5,-436 # 8000e3a8 <_ZTV8Producer+0x10>
    80004564:	00fcb023          	sd	a5,0(s9)
    80004568:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000456c:	00391793          	slli	a5,s2,0x3
    80004570:	00fa07b3          	add	a5,s4,a5
    80004574:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004578:	000c8513          	mv	a0,s9
    8000457c:	ffffe097          	auipc	ra,0xffffe
    80004580:	b64080e7          	jalr	-1180(ra) # 800020e0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004584:	0019091b          	addiw	s2,s2,1
    80004588:	05395263          	bge	s2,s3,800045cc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000458c:	00191493          	slli	s1,s2,0x1
    80004590:	012484b3          	add	s1,s1,s2
    80004594:	00349493          	slli	s1,s1,0x3
    80004598:	009b04b3          	add	s1,s6,s1
    8000459c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800045a0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800045a4:	0000a797          	auipc	a5,0xa
    800045a8:	ff47b783          	ld	a5,-12(a5) # 8000e598 <_ZL10waitForAll>
    800045ac:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800045b0:	02800513          	li	a0,40
    800045b4:	ffffe097          	auipc	ra,0xffffe
    800045b8:	94c080e7          	jalr	-1716(ra) # 80001f00 <_Znwm>
    800045bc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	bc4080e7          	jalr	-1084(ra) # 80002184 <_ZN6ThreadC1Ev>
    800045c8:	f95ff06f          	j	8000455c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800045cc:	ffffe097          	auipc	ra,0xffffe
    800045d0:	b48080e7          	jalr	-1208(ra) # 80002114 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800045d4:	00000493          	li	s1,0
    800045d8:	0099ce63          	blt	s3,s1,800045f4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800045dc:	0000a517          	auipc	a0,0xa
    800045e0:	fbc53503          	ld	a0,-68(a0) # 8000e598 <_ZL10waitForAll>
    800045e4:	ffffe097          	auipc	ra,0xffffe
    800045e8:	c40080e7          	jalr	-960(ra) # 80002224 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800045ec:	0014849b          	addiw	s1,s1,1
    800045f0:	fe9ff06f          	j	800045d8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800045f4:	0000a517          	auipc	a0,0xa
    800045f8:	fa453503          	ld	a0,-92(a0) # 8000e598 <_ZL10waitForAll>
    800045fc:	00050863          	beqz	a0,8000460c <_Z20testConsumerProducerv+0x2f4>
    80004600:	00053783          	ld	a5,0(a0)
    80004604:	0087b783          	ld	a5,8(a5)
    80004608:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000460c:	00000493          	li	s1,0
    80004610:	0080006f          	j	80004618 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004614:	0014849b          	addiw	s1,s1,1
    80004618:	0334d263          	bge	s1,s3,8000463c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000461c:	00349793          	slli	a5,s1,0x3
    80004620:	00fa07b3          	add	a5,s4,a5
    80004624:	0007b503          	ld	a0,0(a5)
    80004628:	fe0506e3          	beqz	a0,80004614 <_Z20testConsumerProducerv+0x2fc>
    8000462c:	00053783          	ld	a5,0(a0)
    80004630:	0087b783          	ld	a5,8(a5)
    80004634:	000780e7          	jalr	a5
    80004638:	fddff06f          	j	80004614 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000463c:	000b8a63          	beqz	s7,80004650 <_Z20testConsumerProducerv+0x338>
    80004640:	000bb783          	ld	a5,0(s7)
    80004644:	0087b783          	ld	a5,8(a5)
    80004648:	000b8513          	mv	a0,s7
    8000464c:	000780e7          	jalr	a5
    delete buffer;
    80004650:	000a8e63          	beqz	s5,8000466c <_Z20testConsumerProducerv+0x354>
    80004654:	000a8513          	mv	a0,s5
    80004658:	00002097          	auipc	ra,0x2
    8000465c:	9d4080e7          	jalr	-1580(ra) # 8000602c <_ZN9BufferCPPD1Ev>
    80004660:	000a8513          	mv	a0,s5
    80004664:	ffffe097          	auipc	ra,0xffffe
    80004668:	8ec080e7          	jalr	-1812(ra) # 80001f50 <_ZdlPv>
    8000466c:	000c0113          	mv	sp,s8
}
    80004670:	f8040113          	addi	sp,s0,-128
    80004674:	07813083          	ld	ra,120(sp)
    80004678:	07013403          	ld	s0,112(sp)
    8000467c:	06813483          	ld	s1,104(sp)
    80004680:	06013903          	ld	s2,96(sp)
    80004684:	05813983          	ld	s3,88(sp)
    80004688:	05013a03          	ld	s4,80(sp)
    8000468c:	04813a83          	ld	s5,72(sp)
    80004690:	04013b03          	ld	s6,64(sp)
    80004694:	03813b83          	ld	s7,56(sp)
    80004698:	03013c03          	ld	s8,48(sp)
    8000469c:	02813c83          	ld	s9,40(sp)
    800046a0:	08010113          	addi	sp,sp,128
    800046a4:	00008067          	ret
    800046a8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800046ac:	000a8513          	mv	a0,s5
    800046b0:	ffffe097          	auipc	ra,0xffffe
    800046b4:	8a0080e7          	jalr	-1888(ra) # 80001f50 <_ZdlPv>
    800046b8:	00048513          	mv	a0,s1
    800046bc:	0000b097          	auipc	ra,0xb
    800046c0:	20c080e7          	jalr	524(ra) # 8000f8c8 <_Unwind_Resume>
    800046c4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800046c8:	00090513          	mv	a0,s2
    800046cc:	ffffe097          	auipc	ra,0xffffe
    800046d0:	884080e7          	jalr	-1916(ra) # 80001f50 <_ZdlPv>
    800046d4:	00048513          	mv	a0,s1
    800046d8:	0000b097          	auipc	ra,0xb
    800046dc:	1f0080e7          	jalr	496(ra) # 8000f8c8 <_Unwind_Resume>
    800046e0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800046e4:	000b8513          	mv	a0,s7
    800046e8:	ffffe097          	auipc	ra,0xffffe
    800046ec:	868080e7          	jalr	-1944(ra) # 80001f50 <_ZdlPv>
    800046f0:	00048513          	mv	a0,s1
    800046f4:	0000b097          	auipc	ra,0xb
    800046f8:	1d4080e7          	jalr	468(ra) # 8000f8c8 <_Unwind_Resume>
    800046fc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004700:	00048513          	mv	a0,s1
    80004704:	ffffe097          	auipc	ra,0xffffe
    80004708:	84c080e7          	jalr	-1972(ra) # 80001f50 <_ZdlPv>
    8000470c:	00090513          	mv	a0,s2
    80004710:	0000b097          	auipc	ra,0xb
    80004714:	1b8080e7          	jalr	440(ra) # 8000f8c8 <_Unwind_Resume>
    80004718:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000471c:	000c8513          	mv	a0,s9
    80004720:	ffffe097          	auipc	ra,0xffffe
    80004724:	830080e7          	jalr	-2000(ra) # 80001f50 <_ZdlPv>
    80004728:	00048513          	mv	a0,s1
    8000472c:	0000b097          	auipc	ra,0xb
    80004730:	19c080e7          	jalr	412(ra) # 8000f8c8 <_Unwind_Resume>

0000000080004734 <_ZN8Consumer3runEv>:
    void run() override {
    80004734:	fd010113          	addi	sp,sp,-48
    80004738:	02113423          	sd	ra,40(sp)
    8000473c:	02813023          	sd	s0,32(sp)
    80004740:	00913c23          	sd	s1,24(sp)
    80004744:	01213823          	sd	s2,16(sp)
    80004748:	01313423          	sd	s3,8(sp)
    8000474c:	03010413          	addi	s0,sp,48
    80004750:	00050913          	mv	s2,a0
        int i = 0;
    80004754:	00000993          	li	s3,0
    80004758:	0100006f          	j	80004768 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000475c:	00a00513          	li	a0,10
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	f64080e7          	jalr	-156(ra) # 800026c4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004768:	0000a797          	auipc	a5,0xa
    8000476c:	e287a783          	lw	a5,-472(a5) # 8000e590 <_ZL9threadEnd>
    80004770:	04079a63          	bnez	a5,800047c4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004774:	02093783          	ld	a5,32(s2)
    80004778:	0087b503          	ld	a0,8(a5)
    8000477c:	00001097          	auipc	ra,0x1
    80004780:	79c080e7          	jalr	1948(ra) # 80005f18 <_ZN9BufferCPP3getEv>
            i++;
    80004784:	0019849b          	addiw	s1,s3,1
    80004788:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000478c:	0ff57513          	andi	a0,a0,255
    80004790:	ffffe097          	auipc	ra,0xffffe
    80004794:	f34080e7          	jalr	-204(ra) # 800026c4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004798:	05000793          	li	a5,80
    8000479c:	02f4e4bb          	remw	s1,s1,a5
    800047a0:	fc0494e3          	bnez	s1,80004768 <_ZN8Consumer3runEv+0x34>
    800047a4:	fb9ff06f          	j	8000475c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800047a8:	02093783          	ld	a5,32(s2)
    800047ac:	0087b503          	ld	a0,8(a5)
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	768080e7          	jalr	1896(ra) # 80005f18 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800047b8:	0ff57513          	andi	a0,a0,255
    800047bc:	ffffe097          	auipc	ra,0xffffe
    800047c0:	f08080e7          	jalr	-248(ra) # 800026c4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800047c4:	02093783          	ld	a5,32(s2)
    800047c8:	0087b503          	ld	a0,8(a5)
    800047cc:	00001097          	auipc	ra,0x1
    800047d0:	7d8080e7          	jalr	2008(ra) # 80005fa4 <_ZN9BufferCPP6getCntEv>
    800047d4:	fca04ae3          	bgtz	a0,800047a8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800047d8:	02093783          	ld	a5,32(s2)
    800047dc:	0107b503          	ld	a0,16(a5)
    800047e0:	ffffe097          	auipc	ra,0xffffe
    800047e4:	ba8080e7          	jalr	-1112(ra) # 80002388 <_ZN9Semaphore6signalEv>
    }
    800047e8:	02813083          	ld	ra,40(sp)
    800047ec:	02013403          	ld	s0,32(sp)
    800047f0:	01813483          	ld	s1,24(sp)
    800047f4:	01013903          	ld	s2,16(sp)
    800047f8:	00813983          	ld	s3,8(sp)
    800047fc:	03010113          	addi	sp,sp,48
    80004800:	00008067          	ret

0000000080004804 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004804:	ff010113          	addi	sp,sp,-16
    80004808:	00113423          	sd	ra,8(sp)
    8000480c:	00813023          	sd	s0,0(sp)
    80004810:	01010413          	addi	s0,sp,16
    80004814:	0000a797          	auipc	a5,0xa
    80004818:	bbc78793          	addi	a5,a5,-1092 # 8000e3d0 <_ZTV8Consumer+0x10>
    8000481c:	00f53023          	sd	a5,0(a0)
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	814080e7          	jalr	-2028(ra) # 80002034 <_ZN6ThreadD1Ev>
    80004828:	00813083          	ld	ra,8(sp)
    8000482c:	00013403          	ld	s0,0(sp)
    80004830:	01010113          	addi	sp,sp,16
    80004834:	00008067          	ret

0000000080004838 <_ZN8ConsumerD0Ev>:
    80004838:	fe010113          	addi	sp,sp,-32
    8000483c:	00113c23          	sd	ra,24(sp)
    80004840:	00813823          	sd	s0,16(sp)
    80004844:	00913423          	sd	s1,8(sp)
    80004848:	02010413          	addi	s0,sp,32
    8000484c:	00050493          	mv	s1,a0
    80004850:	0000a797          	auipc	a5,0xa
    80004854:	b8078793          	addi	a5,a5,-1152 # 8000e3d0 <_ZTV8Consumer+0x10>
    80004858:	00f53023          	sd	a5,0(a0)
    8000485c:	ffffd097          	auipc	ra,0xffffd
    80004860:	7d8080e7          	jalr	2008(ra) # 80002034 <_ZN6ThreadD1Ev>
    80004864:	00048513          	mv	a0,s1
    80004868:	ffffd097          	auipc	ra,0xffffd
    8000486c:	6e8080e7          	jalr	1768(ra) # 80001f50 <_ZdlPv>
    80004870:	01813083          	ld	ra,24(sp)
    80004874:	01013403          	ld	s0,16(sp)
    80004878:	00813483          	ld	s1,8(sp)
    8000487c:	02010113          	addi	sp,sp,32
    80004880:	00008067          	ret

0000000080004884 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004884:	ff010113          	addi	sp,sp,-16
    80004888:	00113423          	sd	ra,8(sp)
    8000488c:	00813023          	sd	s0,0(sp)
    80004890:	01010413          	addi	s0,sp,16
    80004894:	0000a797          	auipc	a5,0xa
    80004898:	aec78793          	addi	a5,a5,-1300 # 8000e380 <_ZTV16ProducerKeyborad+0x10>
    8000489c:	00f53023          	sd	a5,0(a0)
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	794080e7          	jalr	1940(ra) # 80002034 <_ZN6ThreadD1Ev>
    800048a8:	00813083          	ld	ra,8(sp)
    800048ac:	00013403          	ld	s0,0(sp)
    800048b0:	01010113          	addi	sp,sp,16
    800048b4:	00008067          	ret

00000000800048b8 <_ZN16ProducerKeyboradD0Ev>:
    800048b8:	fe010113          	addi	sp,sp,-32
    800048bc:	00113c23          	sd	ra,24(sp)
    800048c0:	00813823          	sd	s0,16(sp)
    800048c4:	00913423          	sd	s1,8(sp)
    800048c8:	02010413          	addi	s0,sp,32
    800048cc:	00050493          	mv	s1,a0
    800048d0:	0000a797          	auipc	a5,0xa
    800048d4:	ab078793          	addi	a5,a5,-1360 # 8000e380 <_ZTV16ProducerKeyborad+0x10>
    800048d8:	00f53023          	sd	a5,0(a0)
    800048dc:	ffffd097          	auipc	ra,0xffffd
    800048e0:	758080e7          	jalr	1880(ra) # 80002034 <_ZN6ThreadD1Ev>
    800048e4:	00048513          	mv	a0,s1
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	668080e7          	jalr	1640(ra) # 80001f50 <_ZdlPv>
    800048f0:	01813083          	ld	ra,24(sp)
    800048f4:	01013403          	ld	s0,16(sp)
    800048f8:	00813483          	ld	s1,8(sp)
    800048fc:	02010113          	addi	sp,sp,32
    80004900:	00008067          	ret

0000000080004904 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004904:	ff010113          	addi	sp,sp,-16
    80004908:	00113423          	sd	ra,8(sp)
    8000490c:	00813023          	sd	s0,0(sp)
    80004910:	01010413          	addi	s0,sp,16
    80004914:	0000a797          	auipc	a5,0xa
    80004918:	a9478793          	addi	a5,a5,-1388 # 8000e3a8 <_ZTV8Producer+0x10>
    8000491c:	00f53023          	sd	a5,0(a0)
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	714080e7          	jalr	1812(ra) # 80002034 <_ZN6ThreadD1Ev>
    80004928:	00813083          	ld	ra,8(sp)
    8000492c:	00013403          	ld	s0,0(sp)
    80004930:	01010113          	addi	sp,sp,16
    80004934:	00008067          	ret

0000000080004938 <_ZN8ProducerD0Ev>:
    80004938:	fe010113          	addi	sp,sp,-32
    8000493c:	00113c23          	sd	ra,24(sp)
    80004940:	00813823          	sd	s0,16(sp)
    80004944:	00913423          	sd	s1,8(sp)
    80004948:	02010413          	addi	s0,sp,32
    8000494c:	00050493          	mv	s1,a0
    80004950:	0000a797          	auipc	a5,0xa
    80004954:	a5878793          	addi	a5,a5,-1448 # 8000e3a8 <_ZTV8Producer+0x10>
    80004958:	00f53023          	sd	a5,0(a0)
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	6d8080e7          	jalr	1752(ra) # 80002034 <_ZN6ThreadD1Ev>
    80004964:	00048513          	mv	a0,s1
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	5e8080e7          	jalr	1512(ra) # 80001f50 <_ZdlPv>
    80004970:	01813083          	ld	ra,24(sp)
    80004974:	01013403          	ld	s0,16(sp)
    80004978:	00813483          	ld	s1,8(sp)
    8000497c:	02010113          	addi	sp,sp,32
    80004980:	00008067          	ret

0000000080004984 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004984:	fe010113          	addi	sp,sp,-32
    80004988:	00113c23          	sd	ra,24(sp)
    8000498c:	00813823          	sd	s0,16(sp)
    80004990:	00913423          	sd	s1,8(sp)
    80004994:	02010413          	addi	s0,sp,32
    80004998:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000499c:	ffffd097          	auipc	ra,0xffffd
    800049a0:	bd4080e7          	jalr	-1068(ra) # 80001570 <_Z4getcv>
    800049a4:	0005059b          	sext.w	a1,a0
    800049a8:	01b00793          	li	a5,27
    800049ac:	00f58c63          	beq	a1,a5,800049c4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800049b0:	0204b783          	ld	a5,32(s1)
    800049b4:	0087b503          	ld	a0,8(a5)
    800049b8:	00001097          	auipc	ra,0x1
    800049bc:	4d0080e7          	jalr	1232(ra) # 80005e88 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800049c0:	fddff06f          	j	8000499c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800049c4:	00100793          	li	a5,1
    800049c8:	0000a717          	auipc	a4,0xa
    800049cc:	bcf72423          	sw	a5,-1080(a4) # 8000e590 <_ZL9threadEnd>
        td->buffer->put('!');
    800049d0:	0204b783          	ld	a5,32(s1)
    800049d4:	02100593          	li	a1,33
    800049d8:	0087b503          	ld	a0,8(a5)
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	4ac080e7          	jalr	1196(ra) # 80005e88 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800049e4:	0204b783          	ld	a5,32(s1)
    800049e8:	0107b503          	ld	a0,16(a5)
    800049ec:	ffffe097          	auipc	ra,0xffffe
    800049f0:	99c080e7          	jalr	-1636(ra) # 80002388 <_ZN9Semaphore6signalEv>
    }
    800049f4:	01813083          	ld	ra,24(sp)
    800049f8:	01013403          	ld	s0,16(sp)
    800049fc:	00813483          	ld	s1,8(sp)
    80004a00:	02010113          	addi	sp,sp,32
    80004a04:	00008067          	ret

0000000080004a08 <_ZN8Producer3runEv>:
    void run() override {
    80004a08:	fe010113          	addi	sp,sp,-32
    80004a0c:	00113c23          	sd	ra,24(sp)
    80004a10:	00813823          	sd	s0,16(sp)
    80004a14:	00913423          	sd	s1,8(sp)
    80004a18:	01213023          	sd	s2,0(sp)
    80004a1c:	02010413          	addi	s0,sp,32
    80004a20:	00050493          	mv	s1,a0
        int i = 0;
    80004a24:	00000913          	li	s2,0
        while (!threadEnd) {
    80004a28:	0000a797          	auipc	a5,0xa
    80004a2c:	b687a783          	lw	a5,-1176(a5) # 8000e590 <_ZL9threadEnd>
    80004a30:	04079263          	bnez	a5,80004a74 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004a34:	0204b783          	ld	a5,32(s1)
    80004a38:	0007a583          	lw	a1,0(a5)
    80004a3c:	0305859b          	addiw	a1,a1,48
    80004a40:	0087b503          	ld	a0,8(a5)
    80004a44:	00001097          	auipc	ra,0x1
    80004a48:	444080e7          	jalr	1092(ra) # 80005e88 <_ZN9BufferCPP3putEi>
            i++;
    80004a4c:	0019071b          	addiw	a4,s2,1
    80004a50:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004a54:	0204b783          	ld	a5,32(s1)
    80004a58:	0007a783          	lw	a5,0(a5)
    80004a5c:	00e787bb          	addw	a5,a5,a4
    80004a60:	00500513          	li	a0,5
    80004a64:	02a7e53b          	remw	a0,a5,a0
    80004a68:	ffffd097          	auipc	ra,0xffffd
    80004a6c:	6d4080e7          	jalr	1748(ra) # 8000213c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004a70:	fb9ff06f          	j	80004a28 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004a74:	0204b783          	ld	a5,32(s1)
    80004a78:	0107b503          	ld	a0,16(a5)
    80004a7c:	ffffe097          	auipc	ra,0xffffe
    80004a80:	90c080e7          	jalr	-1780(ra) # 80002388 <_ZN9Semaphore6signalEv>
    }
    80004a84:	01813083          	ld	ra,24(sp)
    80004a88:	01013403          	ld	s0,16(sp)
    80004a8c:	00813483          	ld	s1,8(sp)
    80004a90:	00013903          	ld	s2,0(sp)
    80004a94:	02010113          	addi	sp,sp,32
    80004a98:	00008067          	ret

0000000080004a9c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004a9c:	fe010113          	addi	sp,sp,-32
    80004aa0:	00113c23          	sd	ra,24(sp)
    80004aa4:	00813823          	sd	s0,16(sp)
    80004aa8:	00913423          	sd	s1,8(sp)
    80004aac:	01213023          	sd	s2,0(sp)
    80004ab0:	02010413          	addi	s0,sp,32
    80004ab4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004ab8:	00100793          	li	a5,1
    80004abc:	02a7f863          	bgeu	a5,a0,80004aec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004ac0:	00a00793          	li	a5,10
    80004ac4:	02f577b3          	remu	a5,a0,a5
    80004ac8:	02078e63          	beqz	a5,80004b04 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004acc:	fff48513          	addi	a0,s1,-1
    80004ad0:	00000097          	auipc	ra,0x0
    80004ad4:	fcc080e7          	jalr	-52(ra) # 80004a9c <_ZL9fibonaccim>
    80004ad8:	00050913          	mv	s2,a0
    80004adc:	ffe48513          	addi	a0,s1,-2
    80004ae0:	00000097          	auipc	ra,0x0
    80004ae4:	fbc080e7          	jalr	-68(ra) # 80004a9c <_ZL9fibonaccim>
    80004ae8:	00a90533          	add	a0,s2,a0
}
    80004aec:	01813083          	ld	ra,24(sp)
    80004af0:	01013403          	ld	s0,16(sp)
    80004af4:	00813483          	ld	s1,8(sp)
    80004af8:	00013903          	ld	s2,0(sp)
    80004afc:	02010113          	addi	sp,sp,32
    80004b00:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	8a8080e7          	jalr	-1880(ra) # 800013ac <_Z15thread_dispatchv>
    80004b0c:	fc1ff06f          	j	80004acc <_ZL9fibonaccim+0x30>

0000000080004b10 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004b10:	fe010113          	addi	sp,sp,-32
    80004b14:	00113c23          	sd	ra,24(sp)
    80004b18:	00813823          	sd	s0,16(sp)
    80004b1c:	00913423          	sd	s1,8(sp)
    80004b20:	01213023          	sd	s2,0(sp)
    80004b24:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004b28:	00a00493          	li	s1,10
    80004b2c:	0400006f          	j	80004b6c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004b30:	00007517          	auipc	a0,0x7
    80004b34:	83850513          	addi	a0,a0,-1992 # 8000b368 <CONSOLE_STATUS+0x358>
    80004b38:	00001097          	auipc	ra,0x1
    80004b3c:	f2c080e7          	jalr	-212(ra) # 80005a64 <_Z11printStringPKc>
    80004b40:	00000613          	li	a2,0
    80004b44:	00a00593          	li	a1,10
    80004b48:	00048513          	mv	a0,s1
    80004b4c:	00001097          	auipc	ra,0x1
    80004b50:	0c8080e7          	jalr	200(ra) # 80005c14 <_Z8printIntiii>
    80004b54:	00007517          	auipc	a0,0x7
    80004b58:	a5c50513          	addi	a0,a0,-1444 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80004b5c:	00001097          	auipc	ra,0x1
    80004b60:	f08080e7          	jalr	-248(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004b64:	0014849b          	addiw	s1,s1,1
    80004b68:	0ff4f493          	andi	s1,s1,255
    80004b6c:	00c00793          	li	a5,12
    80004b70:	fc97f0e3          	bgeu	a5,s1,80004b30 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004b74:	00006517          	auipc	a0,0x6
    80004b78:	7fc50513          	addi	a0,a0,2044 # 8000b370 <CONSOLE_STATUS+0x360>
    80004b7c:	00001097          	auipc	ra,0x1
    80004b80:	ee8080e7          	jalr	-280(ra) # 80005a64 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004b84:	00500313          	li	t1,5
    thread_dispatch();
    80004b88:	ffffd097          	auipc	ra,0xffffd
    80004b8c:	824080e7          	jalr	-2012(ra) # 800013ac <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004b90:	01000513          	li	a0,16
    80004b94:	00000097          	auipc	ra,0x0
    80004b98:	f08080e7          	jalr	-248(ra) # 80004a9c <_ZL9fibonaccim>
    80004b9c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004ba0:	00006517          	auipc	a0,0x6
    80004ba4:	7e050513          	addi	a0,a0,2016 # 8000b380 <CONSOLE_STATUS+0x370>
    80004ba8:	00001097          	auipc	ra,0x1
    80004bac:	ebc080e7          	jalr	-324(ra) # 80005a64 <_Z11printStringPKc>
    80004bb0:	00000613          	li	a2,0
    80004bb4:	00a00593          	li	a1,10
    80004bb8:	0009051b          	sext.w	a0,s2
    80004bbc:	00001097          	auipc	ra,0x1
    80004bc0:	058080e7          	jalr	88(ra) # 80005c14 <_Z8printIntiii>
    80004bc4:	00007517          	auipc	a0,0x7
    80004bc8:	9ec50513          	addi	a0,a0,-1556 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80004bcc:	00001097          	auipc	ra,0x1
    80004bd0:	e98080e7          	jalr	-360(ra) # 80005a64 <_Z11printStringPKc>
    80004bd4:	0400006f          	j	80004c14 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004bd8:	00006517          	auipc	a0,0x6
    80004bdc:	79050513          	addi	a0,a0,1936 # 8000b368 <CONSOLE_STATUS+0x358>
    80004be0:	00001097          	auipc	ra,0x1
    80004be4:	e84080e7          	jalr	-380(ra) # 80005a64 <_Z11printStringPKc>
    80004be8:	00000613          	li	a2,0
    80004bec:	00a00593          	li	a1,10
    80004bf0:	00048513          	mv	a0,s1
    80004bf4:	00001097          	auipc	ra,0x1
    80004bf8:	020080e7          	jalr	32(ra) # 80005c14 <_Z8printIntiii>
    80004bfc:	00007517          	auipc	a0,0x7
    80004c00:	9b450513          	addi	a0,a0,-1612 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	e60080e7          	jalr	-416(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004c0c:	0014849b          	addiw	s1,s1,1
    80004c10:	0ff4f493          	andi	s1,s1,255
    80004c14:	00f00793          	li	a5,15
    80004c18:	fc97f0e3          	bgeu	a5,s1,80004bd8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004c1c:	00006517          	auipc	a0,0x6
    80004c20:	77450513          	addi	a0,a0,1908 # 8000b390 <CONSOLE_STATUS+0x380>
    80004c24:	00001097          	auipc	ra,0x1
    80004c28:	e40080e7          	jalr	-448(ra) # 80005a64 <_Z11printStringPKc>
    finishedD = true;
    80004c2c:	00100793          	li	a5,1
    80004c30:	0000a717          	auipc	a4,0xa
    80004c34:	96f70823          	sb	a5,-1680(a4) # 8000e5a0 <_ZL9finishedD>
    thread_dispatch();
    80004c38:	ffffc097          	auipc	ra,0xffffc
    80004c3c:	774080e7          	jalr	1908(ra) # 800013ac <_Z15thread_dispatchv>
}
    80004c40:	01813083          	ld	ra,24(sp)
    80004c44:	01013403          	ld	s0,16(sp)
    80004c48:	00813483          	ld	s1,8(sp)
    80004c4c:	00013903          	ld	s2,0(sp)
    80004c50:	02010113          	addi	sp,sp,32
    80004c54:	00008067          	ret

0000000080004c58 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004c58:	fe010113          	addi	sp,sp,-32
    80004c5c:	00113c23          	sd	ra,24(sp)
    80004c60:	00813823          	sd	s0,16(sp)
    80004c64:	00913423          	sd	s1,8(sp)
    80004c68:	01213023          	sd	s2,0(sp)
    80004c6c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004c70:	00000493          	li	s1,0
    80004c74:	0400006f          	j	80004cb4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004c78:	00006517          	auipc	a0,0x6
    80004c7c:	6c050513          	addi	a0,a0,1728 # 8000b338 <CONSOLE_STATUS+0x328>
    80004c80:	00001097          	auipc	ra,0x1
    80004c84:	de4080e7          	jalr	-540(ra) # 80005a64 <_Z11printStringPKc>
    80004c88:	00000613          	li	a2,0
    80004c8c:	00a00593          	li	a1,10
    80004c90:	00048513          	mv	a0,s1
    80004c94:	00001097          	auipc	ra,0x1
    80004c98:	f80080e7          	jalr	-128(ra) # 80005c14 <_Z8printIntiii>
    80004c9c:	00007517          	auipc	a0,0x7
    80004ca0:	91450513          	addi	a0,a0,-1772 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80004ca4:	00001097          	auipc	ra,0x1
    80004ca8:	dc0080e7          	jalr	-576(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004cac:	0014849b          	addiw	s1,s1,1
    80004cb0:	0ff4f493          	andi	s1,s1,255
    80004cb4:	00200793          	li	a5,2
    80004cb8:	fc97f0e3          	bgeu	a5,s1,80004c78 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004cbc:	00006517          	auipc	a0,0x6
    80004cc0:	68450513          	addi	a0,a0,1668 # 8000b340 <CONSOLE_STATUS+0x330>
    80004cc4:	00001097          	auipc	ra,0x1
    80004cc8:	da0080e7          	jalr	-608(ra) # 80005a64 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004ccc:	00700313          	li	t1,7
    thread_dispatch();
    80004cd0:	ffffc097          	auipc	ra,0xffffc
    80004cd4:	6dc080e7          	jalr	1756(ra) # 800013ac <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004cd8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004cdc:	00006517          	auipc	a0,0x6
    80004ce0:	67450513          	addi	a0,a0,1652 # 8000b350 <CONSOLE_STATUS+0x340>
    80004ce4:	00001097          	auipc	ra,0x1
    80004ce8:	d80080e7          	jalr	-640(ra) # 80005a64 <_Z11printStringPKc>
    80004cec:	00000613          	li	a2,0
    80004cf0:	00a00593          	li	a1,10
    80004cf4:	0009051b          	sext.w	a0,s2
    80004cf8:	00001097          	auipc	ra,0x1
    80004cfc:	f1c080e7          	jalr	-228(ra) # 80005c14 <_Z8printIntiii>
    80004d00:	00007517          	auipc	a0,0x7
    80004d04:	8b050513          	addi	a0,a0,-1872 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	d5c080e7          	jalr	-676(ra) # 80005a64 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004d10:	00c00513          	li	a0,12
    80004d14:	00000097          	auipc	ra,0x0
    80004d18:	d88080e7          	jalr	-632(ra) # 80004a9c <_ZL9fibonaccim>
    80004d1c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004d20:	00006517          	auipc	a0,0x6
    80004d24:	63850513          	addi	a0,a0,1592 # 8000b358 <CONSOLE_STATUS+0x348>
    80004d28:	00001097          	auipc	ra,0x1
    80004d2c:	d3c080e7          	jalr	-708(ra) # 80005a64 <_Z11printStringPKc>
    80004d30:	00000613          	li	a2,0
    80004d34:	00a00593          	li	a1,10
    80004d38:	0009051b          	sext.w	a0,s2
    80004d3c:	00001097          	auipc	ra,0x1
    80004d40:	ed8080e7          	jalr	-296(ra) # 80005c14 <_Z8printIntiii>
    80004d44:	00007517          	auipc	a0,0x7
    80004d48:	86c50513          	addi	a0,a0,-1940 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	d18080e7          	jalr	-744(ra) # 80005a64 <_Z11printStringPKc>
    80004d54:	0400006f          	j	80004d94 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004d58:	00006517          	auipc	a0,0x6
    80004d5c:	5e050513          	addi	a0,a0,1504 # 8000b338 <CONSOLE_STATUS+0x328>
    80004d60:	00001097          	auipc	ra,0x1
    80004d64:	d04080e7          	jalr	-764(ra) # 80005a64 <_Z11printStringPKc>
    80004d68:	00000613          	li	a2,0
    80004d6c:	00a00593          	li	a1,10
    80004d70:	00048513          	mv	a0,s1
    80004d74:	00001097          	auipc	ra,0x1
    80004d78:	ea0080e7          	jalr	-352(ra) # 80005c14 <_Z8printIntiii>
    80004d7c:	00007517          	auipc	a0,0x7
    80004d80:	83450513          	addi	a0,a0,-1996 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80004d84:	00001097          	auipc	ra,0x1
    80004d88:	ce0080e7          	jalr	-800(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004d8c:	0014849b          	addiw	s1,s1,1
    80004d90:	0ff4f493          	andi	s1,s1,255
    80004d94:	00500793          	li	a5,5
    80004d98:	fc97f0e3          	bgeu	a5,s1,80004d58 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004d9c:	00006517          	auipc	a0,0x6
    80004da0:	57450513          	addi	a0,a0,1396 # 8000b310 <CONSOLE_STATUS+0x300>
    80004da4:	00001097          	auipc	ra,0x1
    80004da8:	cc0080e7          	jalr	-832(ra) # 80005a64 <_Z11printStringPKc>
    finishedC = true;
    80004dac:	00100793          	li	a5,1
    80004db0:	00009717          	auipc	a4,0x9
    80004db4:	7ef708a3          	sb	a5,2033(a4) # 8000e5a1 <_ZL9finishedC>
    thread_dispatch();
    80004db8:	ffffc097          	auipc	ra,0xffffc
    80004dbc:	5f4080e7          	jalr	1524(ra) # 800013ac <_Z15thread_dispatchv>
}
    80004dc0:	01813083          	ld	ra,24(sp)
    80004dc4:	01013403          	ld	s0,16(sp)
    80004dc8:	00813483          	ld	s1,8(sp)
    80004dcc:	00013903          	ld	s2,0(sp)
    80004dd0:	02010113          	addi	sp,sp,32
    80004dd4:	00008067          	ret

0000000080004dd8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004dd8:	fe010113          	addi	sp,sp,-32
    80004ddc:	00113c23          	sd	ra,24(sp)
    80004de0:	00813823          	sd	s0,16(sp)
    80004de4:	00913423          	sd	s1,8(sp)
    80004de8:	01213023          	sd	s2,0(sp)
    80004dec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004df0:	00000913          	li	s2,0
    80004df4:	0380006f          	j	80004e2c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004df8:	ffffc097          	auipc	ra,0xffffc
    80004dfc:	5b4080e7          	jalr	1460(ra) # 800013ac <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004e00:	00148493          	addi	s1,s1,1
    80004e04:	000027b7          	lui	a5,0x2
    80004e08:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e0c:	0097ee63          	bltu	a5,s1,80004e28 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e10:	00000713          	li	a4,0
    80004e14:	000077b7          	lui	a5,0x7
    80004e18:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e1c:	fce7eee3          	bltu	a5,a4,80004df8 <_ZL11workerBodyBPv+0x20>
    80004e20:	00170713          	addi	a4,a4,1
    80004e24:	ff1ff06f          	j	80004e14 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004e28:	00190913          	addi	s2,s2,1
    80004e2c:	00f00793          	li	a5,15
    80004e30:	0527e063          	bltu	a5,s2,80004e70 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004e34:	00006517          	auipc	a0,0x6
    80004e38:	4ec50513          	addi	a0,a0,1260 # 8000b320 <CONSOLE_STATUS+0x310>
    80004e3c:	00001097          	auipc	ra,0x1
    80004e40:	c28080e7          	jalr	-984(ra) # 80005a64 <_Z11printStringPKc>
    80004e44:	00000613          	li	a2,0
    80004e48:	00a00593          	li	a1,10
    80004e4c:	0009051b          	sext.w	a0,s2
    80004e50:	00001097          	auipc	ra,0x1
    80004e54:	dc4080e7          	jalr	-572(ra) # 80005c14 <_Z8printIntiii>
    80004e58:	00006517          	auipc	a0,0x6
    80004e5c:	75850513          	addi	a0,a0,1880 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80004e60:	00001097          	auipc	ra,0x1
    80004e64:	c04080e7          	jalr	-1020(ra) # 80005a64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e68:	00000493          	li	s1,0
    80004e6c:	f99ff06f          	j	80004e04 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004e70:	00006517          	auipc	a0,0x6
    80004e74:	4b850513          	addi	a0,a0,1208 # 8000b328 <CONSOLE_STATUS+0x318>
    80004e78:	00001097          	auipc	ra,0x1
    80004e7c:	bec080e7          	jalr	-1044(ra) # 80005a64 <_Z11printStringPKc>
    finishedB = true;
    80004e80:	00100793          	li	a5,1
    80004e84:	00009717          	auipc	a4,0x9
    80004e88:	70f70f23          	sb	a5,1822(a4) # 8000e5a2 <_ZL9finishedB>
    thread_dispatch();
    80004e8c:	ffffc097          	auipc	ra,0xffffc
    80004e90:	520080e7          	jalr	1312(ra) # 800013ac <_Z15thread_dispatchv>
}
    80004e94:	01813083          	ld	ra,24(sp)
    80004e98:	01013403          	ld	s0,16(sp)
    80004e9c:	00813483          	ld	s1,8(sp)
    80004ea0:	00013903          	ld	s2,0(sp)
    80004ea4:	02010113          	addi	sp,sp,32
    80004ea8:	00008067          	ret

0000000080004eac <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004eac:	fe010113          	addi	sp,sp,-32
    80004eb0:	00113c23          	sd	ra,24(sp)
    80004eb4:	00813823          	sd	s0,16(sp)
    80004eb8:	00913423          	sd	s1,8(sp)
    80004ebc:	01213023          	sd	s2,0(sp)
    80004ec0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004ec4:	00000913          	li	s2,0
    80004ec8:	0380006f          	j	80004f00 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004ecc:	ffffc097          	auipc	ra,0xffffc
    80004ed0:	4e0080e7          	jalr	1248(ra) # 800013ac <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004ed4:	00148493          	addi	s1,s1,1
    80004ed8:	000027b7          	lui	a5,0x2
    80004edc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ee0:	0097ee63          	bltu	a5,s1,80004efc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ee4:	00000713          	li	a4,0
    80004ee8:	000077b7          	lui	a5,0x7
    80004eec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004ef0:	fce7eee3          	bltu	a5,a4,80004ecc <_ZL11workerBodyAPv+0x20>
    80004ef4:	00170713          	addi	a4,a4,1
    80004ef8:	ff1ff06f          	j	80004ee8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004efc:	00190913          	addi	s2,s2,1
    80004f00:	00900793          	li	a5,9
    80004f04:	0527e063          	bltu	a5,s2,80004f44 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004f08:	00006517          	auipc	a0,0x6
    80004f0c:	40050513          	addi	a0,a0,1024 # 8000b308 <CONSOLE_STATUS+0x2f8>
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	b54080e7          	jalr	-1196(ra) # 80005a64 <_Z11printStringPKc>
    80004f18:	00000613          	li	a2,0
    80004f1c:	00a00593          	li	a1,10
    80004f20:	0009051b          	sext.w	a0,s2
    80004f24:	00001097          	auipc	ra,0x1
    80004f28:	cf0080e7          	jalr	-784(ra) # 80005c14 <_Z8printIntiii>
    80004f2c:	00006517          	auipc	a0,0x6
    80004f30:	68450513          	addi	a0,a0,1668 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80004f34:	00001097          	auipc	ra,0x1
    80004f38:	b30080e7          	jalr	-1232(ra) # 80005a64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004f3c:	00000493          	li	s1,0
    80004f40:	f99ff06f          	j	80004ed8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004f44:	00006517          	auipc	a0,0x6
    80004f48:	3cc50513          	addi	a0,a0,972 # 8000b310 <CONSOLE_STATUS+0x300>
    80004f4c:	00001097          	auipc	ra,0x1
    80004f50:	b18080e7          	jalr	-1256(ra) # 80005a64 <_Z11printStringPKc>
    finishedA = true;
    80004f54:	00100793          	li	a5,1
    80004f58:	00009717          	auipc	a4,0x9
    80004f5c:	64f705a3          	sb	a5,1611(a4) # 8000e5a3 <_ZL9finishedA>
}
    80004f60:	01813083          	ld	ra,24(sp)
    80004f64:	01013403          	ld	s0,16(sp)
    80004f68:	00813483          	ld	s1,8(sp)
    80004f6c:	00013903          	ld	s2,0(sp)
    80004f70:	02010113          	addi	sp,sp,32
    80004f74:	00008067          	ret

0000000080004f78 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004f78:	fd010113          	addi	sp,sp,-48
    80004f7c:	02113423          	sd	ra,40(sp)
    80004f80:	02813023          	sd	s0,32(sp)
    80004f84:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004f88:	00000613          	li	a2,0
    80004f8c:	00000597          	auipc	a1,0x0
    80004f90:	f2058593          	addi	a1,a1,-224 # 80004eac <_ZL11workerBodyAPv>
    80004f94:	fd040513          	addi	a0,s0,-48
    80004f98:	ffffc097          	auipc	ra,0xffffc
    80004f9c:	394080e7          	jalr	916(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004fa0:	00006517          	auipc	a0,0x6
    80004fa4:	40050513          	addi	a0,a0,1024 # 8000b3a0 <CONSOLE_STATUS+0x390>
    80004fa8:	00001097          	auipc	ra,0x1
    80004fac:	abc080e7          	jalr	-1348(ra) # 80005a64 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004fb0:	00000613          	li	a2,0
    80004fb4:	00000597          	auipc	a1,0x0
    80004fb8:	e2458593          	addi	a1,a1,-476 # 80004dd8 <_ZL11workerBodyBPv>
    80004fbc:	fd840513          	addi	a0,s0,-40
    80004fc0:	ffffc097          	auipc	ra,0xffffc
    80004fc4:	36c080e7          	jalr	876(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004fc8:	00006517          	auipc	a0,0x6
    80004fcc:	3f050513          	addi	a0,a0,1008 # 8000b3b8 <CONSOLE_STATUS+0x3a8>
    80004fd0:	00001097          	auipc	ra,0x1
    80004fd4:	a94080e7          	jalr	-1388(ra) # 80005a64 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004fd8:	00000613          	li	a2,0
    80004fdc:	00000597          	auipc	a1,0x0
    80004fe0:	c7c58593          	addi	a1,a1,-900 # 80004c58 <_ZL11workerBodyCPv>
    80004fe4:	fe040513          	addi	a0,s0,-32
    80004fe8:	ffffc097          	auipc	ra,0xffffc
    80004fec:	344080e7          	jalr	836(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004ff0:	00006517          	auipc	a0,0x6
    80004ff4:	3e050513          	addi	a0,a0,992 # 8000b3d0 <CONSOLE_STATUS+0x3c0>
    80004ff8:	00001097          	auipc	ra,0x1
    80004ffc:	a6c080e7          	jalr	-1428(ra) # 80005a64 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005000:	00000613          	li	a2,0
    80005004:	00000597          	auipc	a1,0x0
    80005008:	b0c58593          	addi	a1,a1,-1268 # 80004b10 <_ZL11workerBodyDPv>
    8000500c:	fe840513          	addi	a0,s0,-24
    80005010:	ffffc097          	auipc	ra,0xffffc
    80005014:	31c080e7          	jalr	796(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005018:	00006517          	auipc	a0,0x6
    8000501c:	3d050513          	addi	a0,a0,976 # 8000b3e8 <CONSOLE_STATUS+0x3d8>
    80005020:	00001097          	auipc	ra,0x1
    80005024:	a44080e7          	jalr	-1468(ra) # 80005a64 <_Z11printStringPKc>
    80005028:	00c0006f          	j	80005034 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000502c:	ffffc097          	auipc	ra,0xffffc
    80005030:	380080e7          	jalr	896(ra) # 800013ac <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005034:	00009797          	auipc	a5,0x9
    80005038:	56f7c783          	lbu	a5,1391(a5) # 8000e5a3 <_ZL9finishedA>
    8000503c:	fe0788e3          	beqz	a5,8000502c <_Z18Threads_C_API_testv+0xb4>
    80005040:	00009797          	auipc	a5,0x9
    80005044:	5627c783          	lbu	a5,1378(a5) # 8000e5a2 <_ZL9finishedB>
    80005048:	fe0782e3          	beqz	a5,8000502c <_Z18Threads_C_API_testv+0xb4>
    8000504c:	00009797          	auipc	a5,0x9
    80005050:	5557c783          	lbu	a5,1365(a5) # 8000e5a1 <_ZL9finishedC>
    80005054:	fc078ce3          	beqz	a5,8000502c <_Z18Threads_C_API_testv+0xb4>
    80005058:	00009797          	auipc	a5,0x9
    8000505c:	5487c783          	lbu	a5,1352(a5) # 8000e5a0 <_ZL9finishedD>
    80005060:	fc0786e3          	beqz	a5,8000502c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005064:	02813083          	ld	ra,40(sp)
    80005068:	02013403          	ld	s0,32(sp)
    8000506c:	03010113          	addi	sp,sp,48
    80005070:	00008067          	ret

0000000080005074 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005074:	fd010113          	addi	sp,sp,-48
    80005078:	02113423          	sd	ra,40(sp)
    8000507c:	02813023          	sd	s0,32(sp)
    80005080:	00913c23          	sd	s1,24(sp)
    80005084:	01213823          	sd	s2,16(sp)
    80005088:	01313423          	sd	s3,8(sp)
    8000508c:	03010413          	addi	s0,sp,48
    80005090:	00050993          	mv	s3,a0
    80005094:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005098:	00000913          	li	s2,0
    8000509c:	00c0006f          	j	800050a8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800050a0:	ffffd097          	auipc	ra,0xffffd
    800050a4:	074080e7          	jalr	116(ra) # 80002114 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800050a8:	ffffc097          	auipc	ra,0xffffc
    800050ac:	4c8080e7          	jalr	1224(ra) # 80001570 <_Z4getcv>
    800050b0:	0005059b          	sext.w	a1,a0
    800050b4:	01b00793          	li	a5,27
    800050b8:	02f58a63          	beq	a1,a5,800050ec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800050bc:	0084b503          	ld	a0,8(s1)
    800050c0:	00001097          	auipc	ra,0x1
    800050c4:	dc8080e7          	jalr	-568(ra) # 80005e88 <_ZN9BufferCPP3putEi>
        i++;
    800050c8:	0019071b          	addiw	a4,s2,1
    800050cc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800050d0:	0004a683          	lw	a3,0(s1)
    800050d4:	0026979b          	slliw	a5,a3,0x2
    800050d8:	00d787bb          	addw	a5,a5,a3
    800050dc:	0017979b          	slliw	a5,a5,0x1
    800050e0:	02f767bb          	remw	a5,a4,a5
    800050e4:	fc0792e3          	bnez	a5,800050a8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800050e8:	fb9ff06f          	j	800050a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800050ec:	00100793          	li	a5,1
    800050f0:	00009717          	auipc	a4,0x9
    800050f4:	4af72c23          	sw	a5,1208(a4) # 8000e5a8 <_ZL9threadEnd>
    td->buffer->put('!');
    800050f8:	0209b783          	ld	a5,32(s3)
    800050fc:	02100593          	li	a1,33
    80005100:	0087b503          	ld	a0,8(a5)
    80005104:	00001097          	auipc	ra,0x1
    80005108:	d84080e7          	jalr	-636(ra) # 80005e88 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000510c:	0104b503          	ld	a0,16(s1)
    80005110:	ffffd097          	auipc	ra,0xffffd
    80005114:	278080e7          	jalr	632(ra) # 80002388 <_ZN9Semaphore6signalEv>
}
    80005118:	02813083          	ld	ra,40(sp)
    8000511c:	02013403          	ld	s0,32(sp)
    80005120:	01813483          	ld	s1,24(sp)
    80005124:	01013903          	ld	s2,16(sp)
    80005128:	00813983          	ld	s3,8(sp)
    8000512c:	03010113          	addi	sp,sp,48
    80005130:	00008067          	ret

0000000080005134 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005134:	fe010113          	addi	sp,sp,-32
    80005138:	00113c23          	sd	ra,24(sp)
    8000513c:	00813823          	sd	s0,16(sp)
    80005140:	00913423          	sd	s1,8(sp)
    80005144:	01213023          	sd	s2,0(sp)
    80005148:	02010413          	addi	s0,sp,32
    8000514c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005150:	00000913          	li	s2,0
    80005154:	00c0006f          	j	80005160 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005158:	ffffd097          	auipc	ra,0xffffd
    8000515c:	fbc080e7          	jalr	-68(ra) # 80002114 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005160:	00009797          	auipc	a5,0x9
    80005164:	4487a783          	lw	a5,1096(a5) # 8000e5a8 <_ZL9threadEnd>
    80005168:	02079e63          	bnez	a5,800051a4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000516c:	0004a583          	lw	a1,0(s1)
    80005170:	0305859b          	addiw	a1,a1,48
    80005174:	0084b503          	ld	a0,8(s1)
    80005178:	00001097          	auipc	ra,0x1
    8000517c:	d10080e7          	jalr	-752(ra) # 80005e88 <_ZN9BufferCPP3putEi>
        i++;
    80005180:	0019071b          	addiw	a4,s2,1
    80005184:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005188:	0004a683          	lw	a3,0(s1)
    8000518c:	0026979b          	slliw	a5,a3,0x2
    80005190:	00d787bb          	addw	a5,a5,a3
    80005194:	0017979b          	slliw	a5,a5,0x1
    80005198:	02f767bb          	remw	a5,a4,a5
    8000519c:	fc0792e3          	bnez	a5,80005160 <_ZN12ProducerSync8producerEPv+0x2c>
    800051a0:	fb9ff06f          	j	80005158 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800051a4:	0104b503          	ld	a0,16(s1)
    800051a8:	ffffd097          	auipc	ra,0xffffd
    800051ac:	1e0080e7          	jalr	480(ra) # 80002388 <_ZN9Semaphore6signalEv>
}
    800051b0:	01813083          	ld	ra,24(sp)
    800051b4:	01013403          	ld	s0,16(sp)
    800051b8:	00813483          	ld	s1,8(sp)
    800051bc:	00013903          	ld	s2,0(sp)
    800051c0:	02010113          	addi	sp,sp,32
    800051c4:	00008067          	ret

00000000800051c8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800051c8:	fd010113          	addi	sp,sp,-48
    800051cc:	02113423          	sd	ra,40(sp)
    800051d0:	02813023          	sd	s0,32(sp)
    800051d4:	00913c23          	sd	s1,24(sp)
    800051d8:	01213823          	sd	s2,16(sp)
    800051dc:	01313423          	sd	s3,8(sp)
    800051e0:	01413023          	sd	s4,0(sp)
    800051e4:	03010413          	addi	s0,sp,48
    800051e8:	00050993          	mv	s3,a0
    800051ec:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800051f0:	00000a13          	li	s4,0
    800051f4:	01c0006f          	j	80005210 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800051f8:	ffffd097          	auipc	ra,0xffffd
    800051fc:	f1c080e7          	jalr	-228(ra) # 80002114 <_ZN6Thread8dispatchEv>
    80005200:	0500006f          	j	80005250 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005204:	00a00513          	li	a0,10
    80005208:	ffffc097          	auipc	ra,0xffffc
    8000520c:	394080e7          	jalr	916(ra) # 8000159c <_Z4putcc>
    while (!threadEnd) {
    80005210:	00009797          	auipc	a5,0x9
    80005214:	3987a783          	lw	a5,920(a5) # 8000e5a8 <_ZL9threadEnd>
    80005218:	06079263          	bnez	a5,8000527c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000521c:	00893503          	ld	a0,8(s2)
    80005220:	00001097          	auipc	ra,0x1
    80005224:	cf8080e7          	jalr	-776(ra) # 80005f18 <_ZN9BufferCPP3getEv>
        i++;
    80005228:	001a049b          	addiw	s1,s4,1
    8000522c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005230:	0ff57513          	andi	a0,a0,255
    80005234:	ffffc097          	auipc	ra,0xffffc
    80005238:	368080e7          	jalr	872(ra) # 8000159c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000523c:	00092703          	lw	a4,0(s2)
    80005240:	0027179b          	slliw	a5,a4,0x2
    80005244:	00e787bb          	addw	a5,a5,a4
    80005248:	02f4e7bb          	remw	a5,s1,a5
    8000524c:	fa0786e3          	beqz	a5,800051f8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005250:	05000793          	li	a5,80
    80005254:	02f4e4bb          	remw	s1,s1,a5
    80005258:	fa049ce3          	bnez	s1,80005210 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000525c:	fa9ff06f          	j	80005204 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005260:	0209b783          	ld	a5,32(s3)
    80005264:	0087b503          	ld	a0,8(a5)
    80005268:	00001097          	auipc	ra,0x1
    8000526c:	cb0080e7          	jalr	-848(ra) # 80005f18 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005270:	0ff57513          	andi	a0,a0,255
    80005274:	ffffd097          	auipc	ra,0xffffd
    80005278:	450080e7          	jalr	1104(ra) # 800026c4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000527c:	0209b783          	ld	a5,32(s3)
    80005280:	0087b503          	ld	a0,8(a5)
    80005284:	00001097          	auipc	ra,0x1
    80005288:	d20080e7          	jalr	-736(ra) # 80005fa4 <_ZN9BufferCPP6getCntEv>
    8000528c:	fca04ae3          	bgtz	a0,80005260 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005290:	01093503          	ld	a0,16(s2)
    80005294:	ffffd097          	auipc	ra,0xffffd
    80005298:	0f4080e7          	jalr	244(ra) # 80002388 <_ZN9Semaphore6signalEv>
}
    8000529c:	02813083          	ld	ra,40(sp)
    800052a0:	02013403          	ld	s0,32(sp)
    800052a4:	01813483          	ld	s1,24(sp)
    800052a8:	01013903          	ld	s2,16(sp)
    800052ac:	00813983          	ld	s3,8(sp)
    800052b0:	00013a03          	ld	s4,0(sp)
    800052b4:	03010113          	addi	sp,sp,48
    800052b8:	00008067          	ret

00000000800052bc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800052bc:	f8010113          	addi	sp,sp,-128
    800052c0:	06113c23          	sd	ra,120(sp)
    800052c4:	06813823          	sd	s0,112(sp)
    800052c8:	06913423          	sd	s1,104(sp)
    800052cc:	07213023          	sd	s2,96(sp)
    800052d0:	05313c23          	sd	s3,88(sp)
    800052d4:	05413823          	sd	s4,80(sp)
    800052d8:	05513423          	sd	s5,72(sp)
    800052dc:	05613023          	sd	s6,64(sp)
    800052e0:	03713c23          	sd	s7,56(sp)
    800052e4:	03813823          	sd	s8,48(sp)
    800052e8:	03913423          	sd	s9,40(sp)
    800052ec:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800052f0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800052f4:	00006517          	auipc	a0,0x6
    800052f8:	f2c50513          	addi	a0,a0,-212 # 8000b220 <CONSOLE_STATUS+0x210>
    800052fc:	00000097          	auipc	ra,0x0
    80005300:	768080e7          	jalr	1896(ra) # 80005a64 <_Z11printStringPKc>
    getString(input, 30);
    80005304:	01e00593          	li	a1,30
    80005308:	f8040493          	addi	s1,s0,-128
    8000530c:	00048513          	mv	a0,s1
    80005310:	00000097          	auipc	ra,0x0
    80005314:	7dc080e7          	jalr	2012(ra) # 80005aec <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005318:	00048513          	mv	a0,s1
    8000531c:	00001097          	auipc	ra,0x1
    80005320:	8a8080e7          	jalr	-1880(ra) # 80005bc4 <_Z11stringToIntPKc>
    80005324:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005328:	00006517          	auipc	a0,0x6
    8000532c:	f1850513          	addi	a0,a0,-232 # 8000b240 <CONSOLE_STATUS+0x230>
    80005330:	00000097          	auipc	ra,0x0
    80005334:	734080e7          	jalr	1844(ra) # 80005a64 <_Z11printStringPKc>
    getString(input, 30);
    80005338:	01e00593          	li	a1,30
    8000533c:	00048513          	mv	a0,s1
    80005340:	00000097          	auipc	ra,0x0
    80005344:	7ac080e7          	jalr	1964(ra) # 80005aec <_Z9getStringPci>
    n = stringToInt(input);
    80005348:	00048513          	mv	a0,s1
    8000534c:	00001097          	auipc	ra,0x1
    80005350:	878080e7          	jalr	-1928(ra) # 80005bc4 <_Z11stringToIntPKc>
    80005354:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005358:	00006517          	auipc	a0,0x6
    8000535c:	f0850513          	addi	a0,a0,-248 # 8000b260 <CONSOLE_STATUS+0x250>
    80005360:	00000097          	auipc	ra,0x0
    80005364:	704080e7          	jalr	1796(ra) # 80005a64 <_Z11printStringPKc>
    80005368:	00000613          	li	a2,0
    8000536c:	00a00593          	li	a1,10
    80005370:	00090513          	mv	a0,s2
    80005374:	00001097          	auipc	ra,0x1
    80005378:	8a0080e7          	jalr	-1888(ra) # 80005c14 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000537c:	00006517          	auipc	a0,0x6
    80005380:	efc50513          	addi	a0,a0,-260 # 8000b278 <CONSOLE_STATUS+0x268>
    80005384:	00000097          	auipc	ra,0x0
    80005388:	6e0080e7          	jalr	1760(ra) # 80005a64 <_Z11printStringPKc>
    8000538c:	00000613          	li	a2,0
    80005390:	00a00593          	li	a1,10
    80005394:	00048513          	mv	a0,s1
    80005398:	00001097          	auipc	ra,0x1
    8000539c:	87c080e7          	jalr	-1924(ra) # 80005c14 <_Z8printIntiii>
    printString(".\n");
    800053a0:	00006517          	auipc	a0,0x6
    800053a4:	ef050513          	addi	a0,a0,-272 # 8000b290 <CONSOLE_STATUS+0x280>
    800053a8:	00000097          	auipc	ra,0x0
    800053ac:	6bc080e7          	jalr	1724(ra) # 80005a64 <_Z11printStringPKc>
    if(threadNum > n) {
    800053b0:	0324c463          	blt	s1,s2,800053d8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800053b4:	03205c63          	blez	s2,800053ec <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800053b8:	03800513          	li	a0,56
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	b44080e7          	jalr	-1212(ra) # 80001f00 <_Znwm>
    800053c4:	00050a93          	mv	s5,a0
    800053c8:	00048593          	mv	a1,s1
    800053cc:	00001097          	auipc	ra,0x1
    800053d0:	968080e7          	jalr	-1688(ra) # 80005d34 <_ZN9BufferCPPC1Ei>
    800053d4:	0300006f          	j	80005404 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800053d8:	00006517          	auipc	a0,0x6
    800053dc:	ec050513          	addi	a0,a0,-320 # 8000b298 <CONSOLE_STATUS+0x288>
    800053e0:	00000097          	auipc	ra,0x0
    800053e4:	684080e7          	jalr	1668(ra) # 80005a64 <_Z11printStringPKc>
        return;
    800053e8:	0140006f          	j	800053fc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800053ec:	00006517          	auipc	a0,0x6
    800053f0:	eec50513          	addi	a0,a0,-276 # 8000b2d8 <CONSOLE_STATUS+0x2c8>
    800053f4:	00000097          	auipc	ra,0x0
    800053f8:	670080e7          	jalr	1648(ra) # 80005a64 <_Z11printStringPKc>
        return;
    800053fc:	000b8113          	mv	sp,s7
    80005400:	2380006f          	j	80005638 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005404:	02000513          	li	a0,32
    80005408:	ffffd097          	auipc	ra,0xffffd
    8000540c:	af8080e7          	jalr	-1288(ra) # 80001f00 <_Znwm>
    80005410:	00050493          	mv	s1,a0
    80005414:	00000593          	li	a1,0
    80005418:	ffffd097          	auipc	ra,0xffffd
    8000541c:	dcc080e7          	jalr	-564(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80005420:	00009797          	auipc	a5,0x9
    80005424:	1897b823          	sd	s1,400(a5) # 8000e5b0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005428:	00391793          	slli	a5,s2,0x3
    8000542c:	00f78793          	addi	a5,a5,15
    80005430:	ff07f793          	andi	a5,a5,-16
    80005434:	40f10133          	sub	sp,sp,a5
    80005438:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000543c:	0019071b          	addiw	a4,s2,1
    80005440:	00171793          	slli	a5,a4,0x1
    80005444:	00e787b3          	add	a5,a5,a4
    80005448:	00379793          	slli	a5,a5,0x3
    8000544c:	00f78793          	addi	a5,a5,15
    80005450:	ff07f793          	andi	a5,a5,-16
    80005454:	40f10133          	sub	sp,sp,a5
    80005458:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    8000545c:	00191c13          	slli	s8,s2,0x1
    80005460:	012c07b3          	add	a5,s8,s2
    80005464:	00379793          	slli	a5,a5,0x3
    80005468:	00fa07b3          	add	a5,s4,a5
    8000546c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005470:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005474:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005478:	02800513          	li	a0,40
    8000547c:	ffffd097          	auipc	ra,0xffffd
    80005480:	a84080e7          	jalr	-1404(ra) # 80001f00 <_Znwm>
    80005484:	00050b13          	mv	s6,a0
    80005488:	012c0c33          	add	s8,s8,s2
    8000548c:	003c1c13          	slli	s8,s8,0x3
    80005490:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005494:	ffffd097          	auipc	ra,0xffffd
    80005498:	cf0080e7          	jalr	-784(ra) # 80002184 <_ZN6ThreadC1Ev>
    8000549c:	00009797          	auipc	a5,0x9
    800054a0:	fac78793          	addi	a5,a5,-84 # 8000e448 <_ZTV12ConsumerSync+0x10>
    800054a4:	00fb3023          	sd	a5,0(s6)
    800054a8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800054ac:	000b0513          	mv	a0,s6
    800054b0:	ffffd097          	auipc	ra,0xffffd
    800054b4:	c30080e7          	jalr	-976(ra) # 800020e0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800054b8:	00000493          	li	s1,0
    800054bc:	0380006f          	j	800054f4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800054c0:	00009797          	auipc	a5,0x9
    800054c4:	f6078793          	addi	a5,a5,-160 # 8000e420 <_ZTV12ProducerSync+0x10>
    800054c8:	00fcb023          	sd	a5,0(s9)
    800054cc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800054d0:	00349793          	slli	a5,s1,0x3
    800054d4:	00f987b3          	add	a5,s3,a5
    800054d8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800054dc:	00349793          	slli	a5,s1,0x3
    800054e0:	00f987b3          	add	a5,s3,a5
    800054e4:	0007b503          	ld	a0,0(a5)
    800054e8:	ffffd097          	auipc	ra,0xffffd
    800054ec:	bf8080e7          	jalr	-1032(ra) # 800020e0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800054f0:	0014849b          	addiw	s1,s1,1
    800054f4:	0b24d063          	bge	s1,s2,80005594 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800054f8:	00149793          	slli	a5,s1,0x1
    800054fc:	009787b3          	add	a5,a5,s1
    80005500:	00379793          	slli	a5,a5,0x3
    80005504:	00fa07b3          	add	a5,s4,a5
    80005508:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000550c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005510:	00009717          	auipc	a4,0x9
    80005514:	0a073703          	ld	a4,160(a4) # 8000e5b0 <_ZL10waitForAll>
    80005518:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000551c:	02905863          	blez	s1,8000554c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005520:	02800513          	li	a0,40
    80005524:	ffffd097          	auipc	ra,0xffffd
    80005528:	9dc080e7          	jalr	-1572(ra) # 80001f00 <_Znwm>
    8000552c:	00050c93          	mv	s9,a0
    80005530:	00149c13          	slli	s8,s1,0x1
    80005534:	009c0c33          	add	s8,s8,s1
    80005538:	003c1c13          	slli	s8,s8,0x3
    8000553c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005540:	ffffd097          	auipc	ra,0xffffd
    80005544:	c44080e7          	jalr	-956(ra) # 80002184 <_ZN6ThreadC1Ev>
    80005548:	f79ff06f          	j	800054c0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    8000554c:	02800513          	li	a0,40
    80005550:	ffffd097          	auipc	ra,0xffffd
    80005554:	9b0080e7          	jalr	-1616(ra) # 80001f00 <_Znwm>
    80005558:	00050c93          	mv	s9,a0
    8000555c:	00149c13          	slli	s8,s1,0x1
    80005560:	009c0c33          	add	s8,s8,s1
    80005564:	003c1c13          	slli	s8,s8,0x3
    80005568:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    8000556c:	ffffd097          	auipc	ra,0xffffd
    80005570:	c18080e7          	jalr	-1000(ra) # 80002184 <_ZN6ThreadC1Ev>
    80005574:	00009797          	auipc	a5,0x9
    80005578:	e8478793          	addi	a5,a5,-380 # 8000e3f8 <_ZTV16ProducerKeyboard+0x10>
    8000557c:	00fcb023          	sd	a5,0(s9)
    80005580:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005584:	00349793          	slli	a5,s1,0x3
    80005588:	00f987b3          	add	a5,s3,a5
    8000558c:	0197b023          	sd	s9,0(a5)
    80005590:	f4dff06f          	j	800054dc <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005594:	ffffd097          	auipc	ra,0xffffd
    80005598:	b80080e7          	jalr	-1152(ra) # 80002114 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000559c:	00000493          	li	s1,0
    800055a0:	00994e63          	blt	s2,s1,800055bc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800055a4:	00009517          	auipc	a0,0x9
    800055a8:	00c53503          	ld	a0,12(a0) # 8000e5b0 <_ZL10waitForAll>
    800055ac:	ffffd097          	auipc	ra,0xffffd
    800055b0:	c78080e7          	jalr	-904(ra) # 80002224 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800055b4:	0014849b          	addiw	s1,s1,1
    800055b8:	fe9ff06f          	j	800055a0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800055bc:	00000493          	li	s1,0
    800055c0:	0080006f          	j	800055c8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800055c4:	0014849b          	addiw	s1,s1,1
    800055c8:	0324d263          	bge	s1,s2,800055ec <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800055cc:	00349793          	slli	a5,s1,0x3
    800055d0:	00f987b3          	add	a5,s3,a5
    800055d4:	0007b503          	ld	a0,0(a5)
    800055d8:	fe0506e3          	beqz	a0,800055c4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800055dc:	00053783          	ld	a5,0(a0)
    800055e0:	0087b783          	ld	a5,8(a5)
    800055e4:	000780e7          	jalr	a5
    800055e8:	fddff06f          	j	800055c4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800055ec:	000b0a63          	beqz	s6,80005600 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800055f0:	000b3783          	ld	a5,0(s6)
    800055f4:	0087b783          	ld	a5,8(a5)
    800055f8:	000b0513          	mv	a0,s6
    800055fc:	000780e7          	jalr	a5
    delete waitForAll;
    80005600:	00009517          	auipc	a0,0x9
    80005604:	fb053503          	ld	a0,-80(a0) # 8000e5b0 <_ZL10waitForAll>
    80005608:	00050863          	beqz	a0,80005618 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000560c:	00053783          	ld	a5,0(a0)
    80005610:	0087b783          	ld	a5,8(a5)
    80005614:	000780e7          	jalr	a5
    delete buffer;
    80005618:	000a8e63          	beqz	s5,80005634 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000561c:	000a8513          	mv	a0,s5
    80005620:	00001097          	auipc	ra,0x1
    80005624:	a0c080e7          	jalr	-1524(ra) # 8000602c <_ZN9BufferCPPD1Ev>
    80005628:	000a8513          	mv	a0,s5
    8000562c:	ffffd097          	auipc	ra,0xffffd
    80005630:	924080e7          	jalr	-1756(ra) # 80001f50 <_ZdlPv>
    80005634:	000b8113          	mv	sp,s7

}
    80005638:	f8040113          	addi	sp,s0,-128
    8000563c:	07813083          	ld	ra,120(sp)
    80005640:	07013403          	ld	s0,112(sp)
    80005644:	06813483          	ld	s1,104(sp)
    80005648:	06013903          	ld	s2,96(sp)
    8000564c:	05813983          	ld	s3,88(sp)
    80005650:	05013a03          	ld	s4,80(sp)
    80005654:	04813a83          	ld	s5,72(sp)
    80005658:	04013b03          	ld	s6,64(sp)
    8000565c:	03813b83          	ld	s7,56(sp)
    80005660:	03013c03          	ld	s8,48(sp)
    80005664:	02813c83          	ld	s9,40(sp)
    80005668:	08010113          	addi	sp,sp,128
    8000566c:	00008067          	ret
    80005670:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005674:	000a8513          	mv	a0,s5
    80005678:	ffffd097          	auipc	ra,0xffffd
    8000567c:	8d8080e7          	jalr	-1832(ra) # 80001f50 <_ZdlPv>
    80005680:	00048513          	mv	a0,s1
    80005684:	0000a097          	auipc	ra,0xa
    80005688:	244080e7          	jalr	580(ra) # 8000f8c8 <_Unwind_Resume>
    8000568c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005690:	00048513          	mv	a0,s1
    80005694:	ffffd097          	auipc	ra,0xffffd
    80005698:	8bc080e7          	jalr	-1860(ra) # 80001f50 <_ZdlPv>
    8000569c:	00090513          	mv	a0,s2
    800056a0:	0000a097          	auipc	ra,0xa
    800056a4:	228080e7          	jalr	552(ra) # 8000f8c8 <_Unwind_Resume>
    800056a8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800056ac:	000b0513          	mv	a0,s6
    800056b0:	ffffd097          	auipc	ra,0xffffd
    800056b4:	8a0080e7          	jalr	-1888(ra) # 80001f50 <_ZdlPv>
    800056b8:	00048513          	mv	a0,s1
    800056bc:	0000a097          	auipc	ra,0xa
    800056c0:	20c080e7          	jalr	524(ra) # 8000f8c8 <_Unwind_Resume>
    800056c4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800056c8:	000c8513          	mv	a0,s9
    800056cc:	ffffd097          	auipc	ra,0xffffd
    800056d0:	884080e7          	jalr	-1916(ra) # 80001f50 <_ZdlPv>
    800056d4:	00048513          	mv	a0,s1
    800056d8:	0000a097          	auipc	ra,0xa
    800056dc:	1f0080e7          	jalr	496(ra) # 8000f8c8 <_Unwind_Resume>
    800056e0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800056e4:	000c8513          	mv	a0,s9
    800056e8:	ffffd097          	auipc	ra,0xffffd
    800056ec:	868080e7          	jalr	-1944(ra) # 80001f50 <_ZdlPv>
    800056f0:	00048513          	mv	a0,s1
    800056f4:	0000a097          	auipc	ra,0xa
    800056f8:	1d4080e7          	jalr	468(ra) # 8000f8c8 <_Unwind_Resume>

00000000800056fc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800056fc:	ff010113          	addi	sp,sp,-16
    80005700:	00113423          	sd	ra,8(sp)
    80005704:	00813023          	sd	s0,0(sp)
    80005708:	01010413          	addi	s0,sp,16
    8000570c:	00009797          	auipc	a5,0x9
    80005710:	d3c78793          	addi	a5,a5,-708 # 8000e448 <_ZTV12ConsumerSync+0x10>
    80005714:	00f53023          	sd	a5,0(a0)
    80005718:	ffffd097          	auipc	ra,0xffffd
    8000571c:	91c080e7          	jalr	-1764(ra) # 80002034 <_ZN6ThreadD1Ev>
    80005720:	00813083          	ld	ra,8(sp)
    80005724:	00013403          	ld	s0,0(sp)
    80005728:	01010113          	addi	sp,sp,16
    8000572c:	00008067          	ret

0000000080005730 <_ZN12ConsumerSyncD0Ev>:
    80005730:	fe010113          	addi	sp,sp,-32
    80005734:	00113c23          	sd	ra,24(sp)
    80005738:	00813823          	sd	s0,16(sp)
    8000573c:	00913423          	sd	s1,8(sp)
    80005740:	02010413          	addi	s0,sp,32
    80005744:	00050493          	mv	s1,a0
    80005748:	00009797          	auipc	a5,0x9
    8000574c:	d0078793          	addi	a5,a5,-768 # 8000e448 <_ZTV12ConsumerSync+0x10>
    80005750:	00f53023          	sd	a5,0(a0)
    80005754:	ffffd097          	auipc	ra,0xffffd
    80005758:	8e0080e7          	jalr	-1824(ra) # 80002034 <_ZN6ThreadD1Ev>
    8000575c:	00048513          	mv	a0,s1
    80005760:	ffffc097          	auipc	ra,0xffffc
    80005764:	7f0080e7          	jalr	2032(ra) # 80001f50 <_ZdlPv>
    80005768:	01813083          	ld	ra,24(sp)
    8000576c:	01013403          	ld	s0,16(sp)
    80005770:	00813483          	ld	s1,8(sp)
    80005774:	02010113          	addi	sp,sp,32
    80005778:	00008067          	ret

000000008000577c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000577c:	ff010113          	addi	sp,sp,-16
    80005780:	00113423          	sd	ra,8(sp)
    80005784:	00813023          	sd	s0,0(sp)
    80005788:	01010413          	addi	s0,sp,16
    8000578c:	00009797          	auipc	a5,0x9
    80005790:	c9478793          	addi	a5,a5,-876 # 8000e420 <_ZTV12ProducerSync+0x10>
    80005794:	00f53023          	sd	a5,0(a0)
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	89c080e7          	jalr	-1892(ra) # 80002034 <_ZN6ThreadD1Ev>
    800057a0:	00813083          	ld	ra,8(sp)
    800057a4:	00013403          	ld	s0,0(sp)
    800057a8:	01010113          	addi	sp,sp,16
    800057ac:	00008067          	ret

00000000800057b0 <_ZN12ProducerSyncD0Ev>:
    800057b0:	fe010113          	addi	sp,sp,-32
    800057b4:	00113c23          	sd	ra,24(sp)
    800057b8:	00813823          	sd	s0,16(sp)
    800057bc:	00913423          	sd	s1,8(sp)
    800057c0:	02010413          	addi	s0,sp,32
    800057c4:	00050493          	mv	s1,a0
    800057c8:	00009797          	auipc	a5,0x9
    800057cc:	c5878793          	addi	a5,a5,-936 # 8000e420 <_ZTV12ProducerSync+0x10>
    800057d0:	00f53023          	sd	a5,0(a0)
    800057d4:	ffffd097          	auipc	ra,0xffffd
    800057d8:	860080e7          	jalr	-1952(ra) # 80002034 <_ZN6ThreadD1Ev>
    800057dc:	00048513          	mv	a0,s1
    800057e0:	ffffc097          	auipc	ra,0xffffc
    800057e4:	770080e7          	jalr	1904(ra) # 80001f50 <_ZdlPv>
    800057e8:	01813083          	ld	ra,24(sp)
    800057ec:	01013403          	ld	s0,16(sp)
    800057f0:	00813483          	ld	s1,8(sp)
    800057f4:	02010113          	addi	sp,sp,32
    800057f8:	00008067          	ret

00000000800057fc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800057fc:	ff010113          	addi	sp,sp,-16
    80005800:	00113423          	sd	ra,8(sp)
    80005804:	00813023          	sd	s0,0(sp)
    80005808:	01010413          	addi	s0,sp,16
    8000580c:	00009797          	auipc	a5,0x9
    80005810:	bec78793          	addi	a5,a5,-1044 # 8000e3f8 <_ZTV16ProducerKeyboard+0x10>
    80005814:	00f53023          	sd	a5,0(a0)
    80005818:	ffffd097          	auipc	ra,0xffffd
    8000581c:	81c080e7          	jalr	-2020(ra) # 80002034 <_ZN6ThreadD1Ev>
    80005820:	00813083          	ld	ra,8(sp)
    80005824:	00013403          	ld	s0,0(sp)
    80005828:	01010113          	addi	sp,sp,16
    8000582c:	00008067          	ret

0000000080005830 <_ZN16ProducerKeyboardD0Ev>:
    80005830:	fe010113          	addi	sp,sp,-32
    80005834:	00113c23          	sd	ra,24(sp)
    80005838:	00813823          	sd	s0,16(sp)
    8000583c:	00913423          	sd	s1,8(sp)
    80005840:	02010413          	addi	s0,sp,32
    80005844:	00050493          	mv	s1,a0
    80005848:	00009797          	auipc	a5,0x9
    8000584c:	bb078793          	addi	a5,a5,-1104 # 8000e3f8 <_ZTV16ProducerKeyboard+0x10>
    80005850:	00f53023          	sd	a5,0(a0)
    80005854:	ffffc097          	auipc	ra,0xffffc
    80005858:	7e0080e7          	jalr	2016(ra) # 80002034 <_ZN6ThreadD1Ev>
    8000585c:	00048513          	mv	a0,s1
    80005860:	ffffc097          	auipc	ra,0xffffc
    80005864:	6f0080e7          	jalr	1776(ra) # 80001f50 <_ZdlPv>
    80005868:	01813083          	ld	ra,24(sp)
    8000586c:	01013403          	ld	s0,16(sp)
    80005870:	00813483          	ld	s1,8(sp)
    80005874:	02010113          	addi	sp,sp,32
    80005878:	00008067          	ret

000000008000587c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000587c:	ff010113          	addi	sp,sp,-16
    80005880:	00113423          	sd	ra,8(sp)
    80005884:	00813023          	sd	s0,0(sp)
    80005888:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000588c:	02053583          	ld	a1,32(a0)
    80005890:	fffff097          	auipc	ra,0xfffff
    80005894:	7e4080e7          	jalr	2020(ra) # 80005074 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005898:	00813083          	ld	ra,8(sp)
    8000589c:	00013403          	ld	s0,0(sp)
    800058a0:	01010113          	addi	sp,sp,16
    800058a4:	00008067          	ret

00000000800058a8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800058a8:	ff010113          	addi	sp,sp,-16
    800058ac:	00113423          	sd	ra,8(sp)
    800058b0:	00813023          	sd	s0,0(sp)
    800058b4:	01010413          	addi	s0,sp,16
        producer(td);
    800058b8:	02053583          	ld	a1,32(a0)
    800058bc:	00000097          	auipc	ra,0x0
    800058c0:	878080e7          	jalr	-1928(ra) # 80005134 <_ZN12ProducerSync8producerEPv>
    }
    800058c4:	00813083          	ld	ra,8(sp)
    800058c8:	00013403          	ld	s0,0(sp)
    800058cc:	01010113          	addi	sp,sp,16
    800058d0:	00008067          	ret

00000000800058d4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800058d4:	ff010113          	addi	sp,sp,-16
    800058d8:	00113423          	sd	ra,8(sp)
    800058dc:	00813023          	sd	s0,0(sp)
    800058e0:	01010413          	addi	s0,sp,16
        consumer(td);
    800058e4:	02053583          	ld	a1,32(a0)
    800058e8:	00000097          	auipc	ra,0x0
    800058ec:	8e0080e7          	jalr	-1824(ra) # 800051c8 <_ZN12ConsumerSync8consumerEPv>
    }
    800058f0:	00813083          	ld	ra,8(sp)
    800058f4:	00013403          	ld	s0,0(sp)
    800058f8:	01010113          	addi	sp,sp,16
    800058fc:	00008067          	ret

0000000080005900 <_ZL11workerBodyAPv>:
#include "printing.hpp"
#include "../h/syscall_c.hpp"

sem_t globSem;
static void workerBodyA(void* arg) {
    80005900:	fe010113          	addi	sp,sp,-32
    80005904:	00113c23          	sd	ra,24(sp)
    80005908:	00813823          	sd	s0,16(sp)
    8000590c:	00913423          	sd	s1,8(sp)
    80005910:	01213023          	sd	s2,0(sp)
    80005914:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 5; i++) {
    80005918:	00000913          	li	s2,0
    8000591c:	00400793          	li	a5,4
    80005920:	0527ea63          	bltu	a5,s2,80005974 <_ZL11workerBodyAPv+0x74>
        int tmp = getThreadId();
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	cbc080e7          	jalr	-836(ra) # 800015e0 <_Z11getThreadIdv>
    8000592c:	00050493          	mv	s1,a0
        printString("ThreadId: "); printInt(tmp); printString(" \n");
    80005930:	00006517          	auipc	a0,0x6
    80005934:	ad050513          	addi	a0,a0,-1328 # 8000b400 <CONSOLE_STATUS+0x3f0>
    80005938:	00000097          	auipc	ra,0x0
    8000593c:	12c080e7          	jalr	300(ra) # 80005a64 <_Z11printStringPKc>
    80005940:	00000613          	li	a2,0
    80005944:	00a00593          	li	a1,10
    80005948:	00048513          	mv	a0,s1
    8000594c:	00000097          	auipc	ra,0x0
    80005950:	2c8080e7          	jalr	712(ra) # 80005c14 <_Z8printIntiii>
    80005954:	00005517          	auipc	a0,0x5
    80005958:	71c50513          	addi	a0,a0,1820 # 8000b070 <CONSOLE_STATUS+0x60>
    8000595c:	00000097          	auipc	ra,0x0
    80005960:	108080e7          	jalr	264(ra) # 80005a64 <_Z11printStringPKc>
//        for (uint64 j = 0; j < 10000; j++) {
//            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
//
//        }
        thread_dispatch();
    80005964:	ffffc097          	auipc	ra,0xffffc
    80005968:	a48080e7          	jalr	-1464(ra) # 800013ac <_Z15thread_dispatchv>
    for (uint64 i = 0; i < 5; i++) {
    8000596c:	00190913          	addi	s2,s2,1
    80005970:	fadff06f          	j	8000591c <_ZL11workerBodyAPv+0x1c>
    }
    sem_signal(globSem);
    80005974:	00009517          	auipc	a0,0x9
    80005978:	c4453503          	ld	a0,-956(a0) # 8000e5b8 <globSem>
    8000597c:	ffffc097          	auipc	ra,0xffffc
    80005980:	b60080e7          	jalr	-1184(ra) # 800014dc <_Z10sem_signalP3Sem>
}
    80005984:	01813083          	ld	ra,24(sp)
    80005988:	01013403          	ld	s0,16(sp)
    8000598c:	00813483          	ld	s1,8(sp)
    80005990:	00013903          	ld	s2,0(sp)
    80005994:	02010113          	addi	sp,sp,32
    80005998:	00008067          	ret

000000008000599c <_Z16setMaximumThreadv>:



void setMaximumThread(){
    8000599c:	f4010113          	addi	sp,sp,-192
    800059a0:	0a113c23          	sd	ra,184(sp)
    800059a4:	0a813823          	sd	s0,176(sp)
    800059a8:	0a913423          	sd	s1,168(sp)
    800059ac:	0c010413          	addi	s0,sp,192
    thread_t threads[20];
    sem_open(&globSem,0);
    800059b0:	00000593          	li	a1,0
    800059b4:	00009517          	auipc	a0,0x9
    800059b8:	c0450513          	addi	a0,a0,-1020 # 8000e5b8 <globSem>
    800059bc:	ffffc097          	auipc	ra,0xffffc
    800059c0:	a8c080e7          	jalr	-1396(ra) # 80001448 <_Z8sem_openPP3Semj>
    SetMaxThreads();
    800059c4:	00500513          	li	a0,5
    800059c8:	ffffc097          	auipc	ra,0xffffc
    800059cc:	a34080e7          	jalr	-1484(ra) # 800013fc <_Z13SetMaxThreadsi>
    for(int i=0;i<20;i++){
    800059d0:	00000493          	li	s1,0
    800059d4:	01300793          	li	a5,19
    800059d8:	0297c663          	blt	a5,s1,80005a04 <_Z16setMaximumThreadv+0x68>
        thread_create(&threads[i], workerBodyA, nullptr);
    800059dc:	00349793          	slli	a5,s1,0x3
    800059e0:	00000613          	li	a2,0
    800059e4:	00000597          	auipc	a1,0x0
    800059e8:	f1c58593          	addi	a1,a1,-228 # 80005900 <_ZL11workerBodyAPv>
    800059ec:	f4040513          	addi	a0,s0,-192
    800059f0:	00f50533          	add	a0,a0,a5
    800059f4:	ffffc097          	auipc	ra,0xffffc
    800059f8:	938080e7          	jalr	-1736(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    for(int i=0;i<20;i++){
    800059fc:	0014849b          	addiw	s1,s1,1
    80005a00:	fd5ff06f          	j	800059d4 <_Z16setMaximumThreadv+0x38>
    }

    thread_dispatch();
    80005a04:	ffffc097          	auipc	ra,0xffffc
    80005a08:	9a8080e7          	jalr	-1624(ra) # 800013ac <_Z15thread_dispatchv>
    for(int i=0;i<20;i++)
    80005a0c:	00000493          	li	s1,0
    80005a10:	0180006f          	j	80005a28 <_Z16setMaximumThreadv+0x8c>
        sem_wait(globSem);
    80005a14:	00009517          	auipc	a0,0x9
    80005a18:	ba453503          	ld	a0,-1116(a0) # 8000e5b8 <globSem>
    80005a1c:	ffffc097          	auipc	ra,0xffffc
    80005a20:	a90080e7          	jalr	-1392(ra) # 800014ac <_Z8sem_waitP3Sem>
    for(int i=0;i<20;i++)
    80005a24:	0014849b          	addiw	s1,s1,1
    80005a28:	01300793          	li	a5,19
    80005a2c:	fe97d4e3          	bge	a5,s1,80005a14 <_Z16setMaximumThreadv+0x78>

    printString("E zavrsio zadatak!\n");
    80005a30:	00006517          	auipc	a0,0x6
    80005a34:	9e050513          	addi	a0,a0,-1568 # 8000b410 <CONSOLE_STATUS+0x400>
    80005a38:	00000097          	auipc	ra,0x0
    80005a3c:	02c080e7          	jalr	44(ra) # 80005a64 <_Z11printStringPKc>
    sem_close(globSem);
    80005a40:	00009517          	auipc	a0,0x9
    80005a44:	b7853503          	ld	a0,-1160(a0) # 8000e5b8 <globSem>
    80005a48:	ffffc097          	auipc	ra,0xffffc
    80005a4c:	a34080e7          	jalr	-1484(ra) # 8000147c <_Z9sem_closeP3Sem>
    80005a50:	0b813083          	ld	ra,184(sp)
    80005a54:	0b013403          	ld	s0,176(sp)
    80005a58:	0a813483          	ld	s1,168(sp)
    80005a5c:	0c010113          	addi	sp,sp,192
    80005a60:	00008067          	ret

0000000080005a64 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005a64:	fe010113          	addi	sp,sp,-32
    80005a68:	00113c23          	sd	ra,24(sp)
    80005a6c:	00813823          	sd	s0,16(sp)
    80005a70:	00913423          	sd	s1,8(sp)
    80005a74:	02010413          	addi	s0,sp,32
    80005a78:	00050493          	mv	s1,a0
    LOCK();
    80005a7c:	00100613          	li	a2,1
    80005a80:	00000593          	li	a1,0
    80005a84:	00009517          	auipc	a0,0x9
    80005a88:	b3c50513          	addi	a0,a0,-1220 # 8000e5c0 <lockPrint>
    80005a8c:	ffffb097          	auipc	ra,0xffffb
    80005a90:	790080e7          	jalr	1936(ra) # 8000121c <copy_and_swap>
    80005a94:	00050863          	beqz	a0,80005aa4 <_Z11printStringPKc+0x40>
    80005a98:	ffffc097          	auipc	ra,0xffffc
    80005a9c:	914080e7          	jalr	-1772(ra) # 800013ac <_Z15thread_dispatchv>
    80005aa0:	fddff06f          	j	80005a7c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005aa4:	0004c503          	lbu	a0,0(s1)
    80005aa8:	00050a63          	beqz	a0,80005abc <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005aac:	ffffc097          	auipc	ra,0xffffc
    80005ab0:	af0080e7          	jalr	-1296(ra) # 8000159c <_Z4putcc>
        string++;
    80005ab4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005ab8:	fedff06f          	j	80005aa4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005abc:	00000613          	li	a2,0
    80005ac0:	00100593          	li	a1,1
    80005ac4:	00009517          	auipc	a0,0x9
    80005ac8:	afc50513          	addi	a0,a0,-1284 # 8000e5c0 <lockPrint>
    80005acc:	ffffb097          	auipc	ra,0xffffb
    80005ad0:	750080e7          	jalr	1872(ra) # 8000121c <copy_and_swap>
    80005ad4:	fe0514e3          	bnez	a0,80005abc <_Z11printStringPKc+0x58>
}
    80005ad8:	01813083          	ld	ra,24(sp)
    80005adc:	01013403          	ld	s0,16(sp)
    80005ae0:	00813483          	ld	s1,8(sp)
    80005ae4:	02010113          	addi	sp,sp,32
    80005ae8:	00008067          	ret

0000000080005aec <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005aec:	fd010113          	addi	sp,sp,-48
    80005af0:	02113423          	sd	ra,40(sp)
    80005af4:	02813023          	sd	s0,32(sp)
    80005af8:	00913c23          	sd	s1,24(sp)
    80005afc:	01213823          	sd	s2,16(sp)
    80005b00:	01313423          	sd	s3,8(sp)
    80005b04:	01413023          	sd	s4,0(sp)
    80005b08:	03010413          	addi	s0,sp,48
    80005b0c:	00050993          	mv	s3,a0
    80005b10:	00058a13          	mv	s4,a1
    LOCK();
    80005b14:	00100613          	li	a2,1
    80005b18:	00000593          	li	a1,0
    80005b1c:	00009517          	auipc	a0,0x9
    80005b20:	aa450513          	addi	a0,a0,-1372 # 8000e5c0 <lockPrint>
    80005b24:	ffffb097          	auipc	ra,0xffffb
    80005b28:	6f8080e7          	jalr	1784(ra) # 8000121c <copy_and_swap>
    80005b2c:	00050863          	beqz	a0,80005b3c <_Z9getStringPci+0x50>
    80005b30:	ffffc097          	auipc	ra,0xffffc
    80005b34:	87c080e7          	jalr	-1924(ra) # 800013ac <_Z15thread_dispatchv>
    80005b38:	fddff06f          	j	80005b14 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005b3c:	00000913          	li	s2,0
    80005b40:	00090493          	mv	s1,s2
    80005b44:	0019091b          	addiw	s2,s2,1
    80005b48:	03495a63          	bge	s2,s4,80005b7c <_Z9getStringPci+0x90>
        cc = getc();
    80005b4c:	ffffc097          	auipc	ra,0xffffc
    80005b50:	a24080e7          	jalr	-1500(ra) # 80001570 <_Z4getcv>
        if(cc < 1)
    80005b54:	02050463          	beqz	a0,80005b7c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005b58:	009984b3          	add	s1,s3,s1
    80005b5c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005b60:	00a00793          	li	a5,10
    80005b64:	00f50a63          	beq	a0,a5,80005b78 <_Z9getStringPci+0x8c>
    80005b68:	00d00793          	li	a5,13
    80005b6c:	fcf51ae3          	bne	a0,a5,80005b40 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005b70:	00090493          	mv	s1,s2
    80005b74:	0080006f          	j	80005b7c <_Z9getStringPci+0x90>
    80005b78:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005b7c:	009984b3          	add	s1,s3,s1
    80005b80:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005b84:	00000613          	li	a2,0
    80005b88:	00100593          	li	a1,1
    80005b8c:	00009517          	auipc	a0,0x9
    80005b90:	a3450513          	addi	a0,a0,-1484 # 8000e5c0 <lockPrint>
    80005b94:	ffffb097          	auipc	ra,0xffffb
    80005b98:	688080e7          	jalr	1672(ra) # 8000121c <copy_and_swap>
    80005b9c:	fe0514e3          	bnez	a0,80005b84 <_Z9getStringPci+0x98>
    return buf;
}
    80005ba0:	00098513          	mv	a0,s3
    80005ba4:	02813083          	ld	ra,40(sp)
    80005ba8:	02013403          	ld	s0,32(sp)
    80005bac:	01813483          	ld	s1,24(sp)
    80005bb0:	01013903          	ld	s2,16(sp)
    80005bb4:	00813983          	ld	s3,8(sp)
    80005bb8:	00013a03          	ld	s4,0(sp)
    80005bbc:	03010113          	addi	sp,sp,48
    80005bc0:	00008067          	ret

0000000080005bc4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005bc4:	ff010113          	addi	sp,sp,-16
    80005bc8:	00813423          	sd	s0,8(sp)
    80005bcc:	01010413          	addi	s0,sp,16
    80005bd0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005bd4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005bd8:	0006c603          	lbu	a2,0(a3)
    80005bdc:	fd06071b          	addiw	a4,a2,-48
    80005be0:	0ff77713          	andi	a4,a4,255
    80005be4:	00900793          	li	a5,9
    80005be8:	02e7e063          	bltu	a5,a4,80005c08 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005bec:	0025179b          	slliw	a5,a0,0x2
    80005bf0:	00a787bb          	addw	a5,a5,a0
    80005bf4:	0017979b          	slliw	a5,a5,0x1
    80005bf8:	00168693          	addi	a3,a3,1
    80005bfc:	00c787bb          	addw	a5,a5,a2
    80005c00:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005c04:	fd5ff06f          	j	80005bd8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005c08:	00813403          	ld	s0,8(sp)
    80005c0c:	01010113          	addi	sp,sp,16
    80005c10:	00008067          	ret

0000000080005c14 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005c14:	fc010113          	addi	sp,sp,-64
    80005c18:	02113c23          	sd	ra,56(sp)
    80005c1c:	02813823          	sd	s0,48(sp)
    80005c20:	02913423          	sd	s1,40(sp)
    80005c24:	03213023          	sd	s2,32(sp)
    80005c28:	01313c23          	sd	s3,24(sp)
    80005c2c:	04010413          	addi	s0,sp,64
    80005c30:	00050493          	mv	s1,a0
    80005c34:	00058913          	mv	s2,a1
    80005c38:	00060993          	mv	s3,a2
    LOCK();
    80005c3c:	00100613          	li	a2,1
    80005c40:	00000593          	li	a1,0
    80005c44:	00009517          	auipc	a0,0x9
    80005c48:	97c50513          	addi	a0,a0,-1668 # 8000e5c0 <lockPrint>
    80005c4c:	ffffb097          	auipc	ra,0xffffb
    80005c50:	5d0080e7          	jalr	1488(ra) # 8000121c <copy_and_swap>
    80005c54:	00050863          	beqz	a0,80005c64 <_Z8printIntiii+0x50>
    80005c58:	ffffb097          	auipc	ra,0xffffb
    80005c5c:	754080e7          	jalr	1876(ra) # 800013ac <_Z15thread_dispatchv>
    80005c60:	fddff06f          	j	80005c3c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005c64:	00098463          	beqz	s3,80005c6c <_Z8printIntiii+0x58>
    80005c68:	0804c463          	bltz	s1,80005cf0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005c6c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005c70:	00000593          	li	a1,0
    }

    i = 0;
    80005c74:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005c78:	0009079b          	sext.w	a5,s2
    80005c7c:	0325773b          	remuw	a4,a0,s2
    80005c80:	00048613          	mv	a2,s1
    80005c84:	0014849b          	addiw	s1,s1,1
    80005c88:	02071693          	slli	a3,a4,0x20
    80005c8c:	0206d693          	srli	a3,a3,0x20
    80005c90:	00008717          	auipc	a4,0x8
    80005c94:	7d070713          	addi	a4,a4,2000 # 8000e460 <digits>
    80005c98:	00d70733          	add	a4,a4,a3
    80005c9c:	00074683          	lbu	a3,0(a4)
    80005ca0:	fd040713          	addi	a4,s0,-48
    80005ca4:	00c70733          	add	a4,a4,a2
    80005ca8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005cac:	0005071b          	sext.w	a4,a0
    80005cb0:	0325553b          	divuw	a0,a0,s2
    80005cb4:	fcf772e3          	bgeu	a4,a5,80005c78 <_Z8printIntiii+0x64>
    if(neg)
    80005cb8:	00058c63          	beqz	a1,80005cd0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005cbc:	fd040793          	addi	a5,s0,-48
    80005cc0:	009784b3          	add	s1,a5,s1
    80005cc4:	02d00793          	li	a5,45
    80005cc8:	fef48823          	sb	a5,-16(s1)
    80005ccc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005cd0:	fff4849b          	addiw	s1,s1,-1
    80005cd4:	0204c463          	bltz	s1,80005cfc <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005cd8:	fd040793          	addi	a5,s0,-48
    80005cdc:	009787b3          	add	a5,a5,s1
    80005ce0:	ff07c503          	lbu	a0,-16(a5)
    80005ce4:	ffffc097          	auipc	ra,0xffffc
    80005ce8:	8b8080e7          	jalr	-1864(ra) # 8000159c <_Z4putcc>
    80005cec:	fe5ff06f          	j	80005cd0 <_Z8printIntiii+0xbc>
        x = -xx;
    80005cf0:	4090053b          	negw	a0,s1
        neg = 1;
    80005cf4:	00100593          	li	a1,1
        x = -xx;
    80005cf8:	f7dff06f          	j	80005c74 <_Z8printIntiii+0x60>

    UNLOCK();
    80005cfc:	00000613          	li	a2,0
    80005d00:	00100593          	li	a1,1
    80005d04:	00009517          	auipc	a0,0x9
    80005d08:	8bc50513          	addi	a0,a0,-1860 # 8000e5c0 <lockPrint>
    80005d0c:	ffffb097          	auipc	ra,0xffffb
    80005d10:	510080e7          	jalr	1296(ra) # 8000121c <copy_and_swap>
    80005d14:	fe0514e3          	bnez	a0,80005cfc <_Z8printIntiii+0xe8>
    80005d18:	03813083          	ld	ra,56(sp)
    80005d1c:	03013403          	ld	s0,48(sp)
    80005d20:	02813483          	ld	s1,40(sp)
    80005d24:	02013903          	ld	s2,32(sp)
    80005d28:	01813983          	ld	s3,24(sp)
    80005d2c:	04010113          	addi	sp,sp,64
    80005d30:	00008067          	ret

0000000080005d34 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005d34:	fd010113          	addi	sp,sp,-48
    80005d38:	02113423          	sd	ra,40(sp)
    80005d3c:	02813023          	sd	s0,32(sp)
    80005d40:	00913c23          	sd	s1,24(sp)
    80005d44:	01213823          	sd	s2,16(sp)
    80005d48:	01313423          	sd	s3,8(sp)
    80005d4c:	03010413          	addi	s0,sp,48
    80005d50:	00050493          	mv	s1,a0
    80005d54:	00058913          	mv	s2,a1
    80005d58:	0015879b          	addiw	a5,a1,1
    80005d5c:	0007851b          	sext.w	a0,a5
    80005d60:	00f4a023          	sw	a5,0(s1)
    80005d64:	0004a823          	sw	zero,16(s1)
    80005d68:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005d6c:	00251513          	slli	a0,a0,0x2
    80005d70:	ffffb097          	auipc	ra,0xffffb
    80005d74:	4cc080e7          	jalr	1228(ra) # 8000123c <_Z9mem_allocm>
    80005d78:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005d7c:	02000513          	li	a0,32
    80005d80:	ffffc097          	auipc	ra,0xffffc
    80005d84:	180080e7          	jalr	384(ra) # 80001f00 <_Znwm>
    80005d88:	00050993          	mv	s3,a0
    80005d8c:	00000593          	li	a1,0
    80005d90:	ffffc097          	auipc	ra,0xffffc
    80005d94:	454080e7          	jalr	1108(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80005d98:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005d9c:	02000513          	li	a0,32
    80005da0:	ffffc097          	auipc	ra,0xffffc
    80005da4:	160080e7          	jalr	352(ra) # 80001f00 <_Znwm>
    80005da8:	00050993          	mv	s3,a0
    80005dac:	00090593          	mv	a1,s2
    80005db0:	ffffc097          	auipc	ra,0xffffc
    80005db4:	434080e7          	jalr	1076(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80005db8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005dbc:	02000513          	li	a0,32
    80005dc0:	ffffc097          	auipc	ra,0xffffc
    80005dc4:	140080e7          	jalr	320(ra) # 80001f00 <_Znwm>
    80005dc8:	00050913          	mv	s2,a0
    80005dcc:	00100593          	li	a1,1
    80005dd0:	ffffc097          	auipc	ra,0xffffc
    80005dd4:	414080e7          	jalr	1044(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80005dd8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005ddc:	02000513          	li	a0,32
    80005de0:	ffffc097          	auipc	ra,0xffffc
    80005de4:	120080e7          	jalr	288(ra) # 80001f00 <_Znwm>
    80005de8:	00050913          	mv	s2,a0
    80005dec:	00100593          	li	a1,1
    80005df0:	ffffc097          	auipc	ra,0xffffc
    80005df4:	3f4080e7          	jalr	1012(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80005df8:	0324b823          	sd	s2,48(s1)
}
    80005dfc:	02813083          	ld	ra,40(sp)
    80005e00:	02013403          	ld	s0,32(sp)
    80005e04:	01813483          	ld	s1,24(sp)
    80005e08:	01013903          	ld	s2,16(sp)
    80005e0c:	00813983          	ld	s3,8(sp)
    80005e10:	03010113          	addi	sp,sp,48
    80005e14:	00008067          	ret
    80005e18:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005e1c:	00098513          	mv	a0,s3
    80005e20:	ffffc097          	auipc	ra,0xffffc
    80005e24:	130080e7          	jalr	304(ra) # 80001f50 <_ZdlPv>
    80005e28:	00048513          	mv	a0,s1
    80005e2c:	0000a097          	auipc	ra,0xa
    80005e30:	a9c080e7          	jalr	-1380(ra) # 8000f8c8 <_Unwind_Resume>
    80005e34:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005e38:	00098513          	mv	a0,s3
    80005e3c:	ffffc097          	auipc	ra,0xffffc
    80005e40:	114080e7          	jalr	276(ra) # 80001f50 <_ZdlPv>
    80005e44:	00048513          	mv	a0,s1
    80005e48:	0000a097          	auipc	ra,0xa
    80005e4c:	a80080e7          	jalr	-1408(ra) # 8000f8c8 <_Unwind_Resume>
    80005e50:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005e54:	00090513          	mv	a0,s2
    80005e58:	ffffc097          	auipc	ra,0xffffc
    80005e5c:	0f8080e7          	jalr	248(ra) # 80001f50 <_ZdlPv>
    80005e60:	00048513          	mv	a0,s1
    80005e64:	0000a097          	auipc	ra,0xa
    80005e68:	a64080e7          	jalr	-1436(ra) # 8000f8c8 <_Unwind_Resume>
    80005e6c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005e70:	00090513          	mv	a0,s2
    80005e74:	ffffc097          	auipc	ra,0xffffc
    80005e78:	0dc080e7          	jalr	220(ra) # 80001f50 <_ZdlPv>
    80005e7c:	00048513          	mv	a0,s1
    80005e80:	0000a097          	auipc	ra,0xa
    80005e84:	a48080e7          	jalr	-1464(ra) # 8000f8c8 <_Unwind_Resume>

0000000080005e88 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005e88:	fe010113          	addi	sp,sp,-32
    80005e8c:	00113c23          	sd	ra,24(sp)
    80005e90:	00813823          	sd	s0,16(sp)
    80005e94:	00913423          	sd	s1,8(sp)
    80005e98:	01213023          	sd	s2,0(sp)
    80005e9c:	02010413          	addi	s0,sp,32
    80005ea0:	00050493          	mv	s1,a0
    80005ea4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005ea8:	01853503          	ld	a0,24(a0)
    80005eac:	ffffc097          	auipc	ra,0xffffc
    80005eb0:	378080e7          	jalr	888(ra) # 80002224 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005eb4:	0304b503          	ld	a0,48(s1)
    80005eb8:	ffffc097          	auipc	ra,0xffffc
    80005ebc:	36c080e7          	jalr	876(ra) # 80002224 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005ec0:	0084b783          	ld	a5,8(s1)
    80005ec4:	0144a703          	lw	a4,20(s1)
    80005ec8:	00271713          	slli	a4,a4,0x2
    80005ecc:	00e787b3          	add	a5,a5,a4
    80005ed0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005ed4:	0144a783          	lw	a5,20(s1)
    80005ed8:	0017879b          	addiw	a5,a5,1
    80005edc:	0004a703          	lw	a4,0(s1)
    80005ee0:	02e7e7bb          	remw	a5,a5,a4
    80005ee4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ee8:	0304b503          	ld	a0,48(s1)
    80005eec:	ffffc097          	auipc	ra,0xffffc
    80005ef0:	49c080e7          	jalr	1180(ra) # 80002388 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005ef4:	0204b503          	ld	a0,32(s1)
    80005ef8:	ffffc097          	auipc	ra,0xffffc
    80005efc:	490080e7          	jalr	1168(ra) # 80002388 <_ZN9Semaphore6signalEv>

}
    80005f00:	01813083          	ld	ra,24(sp)
    80005f04:	01013403          	ld	s0,16(sp)
    80005f08:	00813483          	ld	s1,8(sp)
    80005f0c:	00013903          	ld	s2,0(sp)
    80005f10:	02010113          	addi	sp,sp,32
    80005f14:	00008067          	ret

0000000080005f18 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005f18:	fe010113          	addi	sp,sp,-32
    80005f1c:	00113c23          	sd	ra,24(sp)
    80005f20:	00813823          	sd	s0,16(sp)
    80005f24:	00913423          	sd	s1,8(sp)
    80005f28:	01213023          	sd	s2,0(sp)
    80005f2c:	02010413          	addi	s0,sp,32
    80005f30:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005f34:	02053503          	ld	a0,32(a0)
    80005f38:	ffffc097          	auipc	ra,0xffffc
    80005f3c:	2ec080e7          	jalr	748(ra) # 80002224 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005f40:	0284b503          	ld	a0,40(s1)
    80005f44:	ffffc097          	auipc	ra,0xffffc
    80005f48:	2e0080e7          	jalr	736(ra) # 80002224 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005f4c:	0084b703          	ld	a4,8(s1)
    80005f50:	0104a783          	lw	a5,16(s1)
    80005f54:	00279693          	slli	a3,a5,0x2
    80005f58:	00d70733          	add	a4,a4,a3
    80005f5c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005f60:	0017879b          	addiw	a5,a5,1
    80005f64:	0004a703          	lw	a4,0(s1)
    80005f68:	02e7e7bb          	remw	a5,a5,a4
    80005f6c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005f70:	0284b503          	ld	a0,40(s1)
    80005f74:	ffffc097          	auipc	ra,0xffffc
    80005f78:	414080e7          	jalr	1044(ra) # 80002388 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005f7c:	0184b503          	ld	a0,24(s1)
    80005f80:	ffffc097          	auipc	ra,0xffffc
    80005f84:	408080e7          	jalr	1032(ra) # 80002388 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005f88:	00090513          	mv	a0,s2
    80005f8c:	01813083          	ld	ra,24(sp)
    80005f90:	01013403          	ld	s0,16(sp)
    80005f94:	00813483          	ld	s1,8(sp)
    80005f98:	00013903          	ld	s2,0(sp)
    80005f9c:	02010113          	addi	sp,sp,32
    80005fa0:	00008067          	ret

0000000080005fa4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005fa4:	fe010113          	addi	sp,sp,-32
    80005fa8:	00113c23          	sd	ra,24(sp)
    80005fac:	00813823          	sd	s0,16(sp)
    80005fb0:	00913423          	sd	s1,8(sp)
    80005fb4:	01213023          	sd	s2,0(sp)
    80005fb8:	02010413          	addi	s0,sp,32
    80005fbc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005fc0:	02853503          	ld	a0,40(a0)
    80005fc4:	ffffc097          	auipc	ra,0xffffc
    80005fc8:	260080e7          	jalr	608(ra) # 80002224 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005fcc:	0304b503          	ld	a0,48(s1)
    80005fd0:	ffffc097          	auipc	ra,0xffffc
    80005fd4:	254080e7          	jalr	596(ra) # 80002224 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005fd8:	0144a783          	lw	a5,20(s1)
    80005fdc:	0104a903          	lw	s2,16(s1)
    80005fe0:	0327ce63          	blt	a5,s2,8000601c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005fe4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005fe8:	0304b503          	ld	a0,48(s1)
    80005fec:	ffffc097          	auipc	ra,0xffffc
    80005ff0:	39c080e7          	jalr	924(ra) # 80002388 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005ff4:	0284b503          	ld	a0,40(s1)
    80005ff8:	ffffc097          	auipc	ra,0xffffc
    80005ffc:	390080e7          	jalr	912(ra) # 80002388 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006000:	00090513          	mv	a0,s2
    80006004:	01813083          	ld	ra,24(sp)
    80006008:	01013403          	ld	s0,16(sp)
    8000600c:	00813483          	ld	s1,8(sp)
    80006010:	00013903          	ld	s2,0(sp)
    80006014:	02010113          	addi	sp,sp,32
    80006018:	00008067          	ret
        ret = cap - head + tail;
    8000601c:	0004a703          	lw	a4,0(s1)
    80006020:	4127093b          	subw	s2,a4,s2
    80006024:	00f9093b          	addw	s2,s2,a5
    80006028:	fc1ff06f          	j	80005fe8 <_ZN9BufferCPP6getCntEv+0x44>

000000008000602c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000602c:	fe010113          	addi	sp,sp,-32
    80006030:	00113c23          	sd	ra,24(sp)
    80006034:	00813823          	sd	s0,16(sp)
    80006038:	00913423          	sd	s1,8(sp)
    8000603c:	02010413          	addi	s0,sp,32
    80006040:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006044:	00a00513          	li	a0,10
    80006048:	ffffc097          	auipc	ra,0xffffc
    8000604c:	67c080e7          	jalr	1660(ra) # 800026c4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006050:	00005517          	auipc	a0,0x5
    80006054:	3d850513          	addi	a0,a0,984 # 8000b428 <CONSOLE_STATUS+0x418>
    80006058:	00000097          	auipc	ra,0x0
    8000605c:	a0c080e7          	jalr	-1524(ra) # 80005a64 <_Z11printStringPKc>
    while (getCnt()) {
    80006060:	00048513          	mv	a0,s1
    80006064:	00000097          	auipc	ra,0x0
    80006068:	f40080e7          	jalr	-192(ra) # 80005fa4 <_ZN9BufferCPP6getCntEv>
    8000606c:	02050c63          	beqz	a0,800060a4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006070:	0084b783          	ld	a5,8(s1)
    80006074:	0104a703          	lw	a4,16(s1)
    80006078:	00271713          	slli	a4,a4,0x2
    8000607c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006080:	0007c503          	lbu	a0,0(a5)
    80006084:	ffffc097          	auipc	ra,0xffffc
    80006088:	640080e7          	jalr	1600(ra) # 800026c4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000608c:	0104a783          	lw	a5,16(s1)
    80006090:	0017879b          	addiw	a5,a5,1
    80006094:	0004a703          	lw	a4,0(s1)
    80006098:	02e7e7bb          	remw	a5,a5,a4
    8000609c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800060a0:	fc1ff06f          	j	80006060 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800060a4:	02100513          	li	a0,33
    800060a8:	ffffc097          	auipc	ra,0xffffc
    800060ac:	61c080e7          	jalr	1564(ra) # 800026c4 <_ZN7Console4putcEc>
    Console::putc('\n');
    800060b0:	00a00513          	li	a0,10
    800060b4:	ffffc097          	auipc	ra,0xffffc
    800060b8:	610080e7          	jalr	1552(ra) # 800026c4 <_ZN7Console4putcEc>
    mem_free(buffer);
    800060bc:	0084b503          	ld	a0,8(s1)
    800060c0:	ffffb097          	auipc	ra,0xffffb
    800060c4:	1b8080e7          	jalr	440(ra) # 80001278 <_Z8mem_freePv>
    delete itemAvailable;
    800060c8:	0204b503          	ld	a0,32(s1)
    800060cc:	00050863          	beqz	a0,800060dc <_ZN9BufferCPPD1Ev+0xb0>
    800060d0:	00053783          	ld	a5,0(a0)
    800060d4:	0087b783          	ld	a5,8(a5)
    800060d8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800060dc:	0184b503          	ld	a0,24(s1)
    800060e0:	00050863          	beqz	a0,800060f0 <_ZN9BufferCPPD1Ev+0xc4>
    800060e4:	00053783          	ld	a5,0(a0)
    800060e8:	0087b783          	ld	a5,8(a5)
    800060ec:	000780e7          	jalr	a5
    delete mutexTail;
    800060f0:	0304b503          	ld	a0,48(s1)
    800060f4:	00050863          	beqz	a0,80006104 <_ZN9BufferCPPD1Ev+0xd8>
    800060f8:	00053783          	ld	a5,0(a0)
    800060fc:	0087b783          	ld	a5,8(a5)
    80006100:	000780e7          	jalr	a5
    delete mutexHead;
    80006104:	0284b503          	ld	a0,40(s1)
    80006108:	00050863          	beqz	a0,80006118 <_ZN9BufferCPPD1Ev+0xec>
    8000610c:	00053783          	ld	a5,0(a0)
    80006110:	0087b783          	ld	a5,8(a5)
    80006114:	000780e7          	jalr	a5
}
    80006118:	01813083          	ld	ra,24(sp)
    8000611c:	01013403          	ld	s0,16(sp)
    80006120:	00813483          	ld	s1,8(sp)
    80006124:	02010113          	addi	sp,sp,32
    80006128:	00008067          	ret

000000008000612c <_Z8userMainv>:
//test 14
#include "ownerModif.hpp"
#endif


void userMain() {
    8000612c:	fe010113          	addi	sp,sp,-32
    80006130:	00113c23          	sd	ra,24(sp)
    80006134:	00813823          	sd	s0,16(sp)
    80006138:	00913423          	sd	s1,8(sp)
    8000613c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-14]\n");
    80006140:	00005517          	auipc	a0,0x5
    80006144:	30050513          	addi	a0,a0,768 # 8000b440 <CONSOLE_STATUS+0x430>
    80006148:	00000097          	auipc	ra,0x0
    8000614c:	91c080e7          	jalr	-1764(ra) # 80005a64 <_Z11printStringPKc>
    int test = 0;
    80006150:	00000493          	li	s1,0
    char c;
    while ((c = getc()) >= '0' && c <= '9') {
    80006154:	ffffb097          	auipc	ra,0xffffb
    80006158:	41c080e7          	jalr	1052(ra) # 80001570 <_Z4getcv>
    8000615c:	02f00793          	li	a5,47
    80006160:	02a7f263          	bgeu	a5,a0,80006184 <_Z8userMainv+0x58>
    80006164:	03900793          	li	a5,57
    80006168:	00a7ee63          	bltu	a5,a0,80006184 <_Z8userMainv+0x58>
        test *= 10;
    8000616c:	0024979b          	slliw	a5,s1,0x2
    80006170:	009784bb          	addw	s1,a5,s1
    80006174:	0014949b          	slliw	s1,s1,0x1
        test += c - '0';
    80006178:	fd05051b          	addiw	a0,a0,-48
    8000617c:	009504bb          	addw	s1,a0,s1
    while ((c = getc()) >= '0' && c <= '9') {
    80006180:	fd5ff06f          	j	80006154 <_Z8userMainv+0x28>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80006184:	ffb4879b          	addiw	a5,s1,-5
    80006188:	00100713          	li	a4,1
    8000618c:	02f77463          	bgeu	a4,a5,800061b4 <_Z8userMainv+0x88>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006190:	00e00793          	li	a5,14
    80006194:	1a97e263          	bltu	a5,s1,80006338 <_Z8userMainv+0x20c>
    80006198:	00249493          	slli	s1,s1,0x2
    8000619c:	00005717          	auipc	a4,0x5
    800061a0:	5ac70713          	addi	a4,a4,1452 # 8000b748 <CONSOLE_STATUS+0x738>
    800061a4:	00e484b3          	add	s1,s1,a4
    800061a8:	0004a783          	lw	a5,0(s1)
    800061ac:	00e787b3          	add	a5,a5,a4
    800061b0:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800061b4:	00005517          	auipc	a0,0x5
    800061b8:	2ac50513          	addi	a0,a0,684 # 8000b460 <CONSOLE_STATUS+0x450>
    800061bc:	00000097          	auipc	ra,0x0
    800061c0:	8a8080e7          	jalr	-1880(ra) # 80005a64 <_Z11printStringPKc>


        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800061c4:	01813083          	ld	ra,24(sp)
    800061c8:	01013403          	ld	s0,16(sp)
    800061cc:	00813483          	ld	s1,8(sp)
    800061d0:	02010113          	addi	sp,sp,32
    800061d4:	00008067          	ret
            Threads_C_API_test();
    800061d8:	fffff097          	auipc	ra,0xfffff
    800061dc:	da0080e7          	jalr	-608(ra) # 80004f78 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800061e0:	00005517          	auipc	a0,0x5
    800061e4:	2b050513          	addi	a0,a0,688 # 8000b490 <CONSOLE_STATUS+0x480>
    800061e8:	00000097          	auipc	ra,0x0
    800061ec:	87c080e7          	jalr	-1924(ra) # 80005a64 <_Z11printStringPKc>
            break;
    800061f0:	fd5ff06f          	j	800061c4 <_Z8userMainv+0x98>
            Threads_CPP_API_test();
    800061f4:	ffffe097          	auipc	ra,0xffffe
    800061f8:	c64080e7          	jalr	-924(ra) # 80003e58 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800061fc:	00005517          	auipc	a0,0x5
    80006200:	2d450513          	addi	a0,a0,724 # 8000b4d0 <CONSOLE_STATUS+0x4c0>
    80006204:	00000097          	auipc	ra,0x0
    80006208:	860080e7          	jalr	-1952(ra) # 80005a64 <_Z11printStringPKc>
            break;
    8000620c:	fb9ff06f          	j	800061c4 <_Z8userMainv+0x98>
            producerConsumer_C_API();
    80006210:	ffffd097          	auipc	ra,0xffffd
    80006214:	49c080e7          	jalr	1180(ra) # 800036ac <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006218:	00005517          	auipc	a0,0x5
    8000621c:	2f850513          	addi	a0,a0,760 # 8000b510 <CONSOLE_STATUS+0x500>
    80006220:	00000097          	auipc	ra,0x0
    80006224:	844080e7          	jalr	-1980(ra) # 80005a64 <_Z11printStringPKc>
            break;
    80006228:	f9dff06f          	j	800061c4 <_Z8userMainv+0x98>
            producerConsumer_CPP_Sync_API();
    8000622c:	fffff097          	auipc	ra,0xfffff
    80006230:	090080e7          	jalr	144(ra) # 800052bc <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006234:	00005517          	auipc	a0,0x5
    80006238:	32c50513          	addi	a0,a0,812 # 8000b560 <CONSOLE_STATUS+0x550>
    8000623c:	00000097          	auipc	ra,0x0
    80006240:	828080e7          	jalr	-2008(ra) # 80005a64 <_Z11printStringPKc>
            break;
    80006244:	f81ff06f          	j	800061c4 <_Z8userMainv+0x98>
            System_Mode_test();
    80006248:	00001097          	auipc	ra,0x1
    8000624c:	abc080e7          	jalr	-1348(ra) # 80006d04 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006250:	00005517          	auipc	a0,0x5
    80006254:	36850513          	addi	a0,a0,872 # 8000b5b8 <CONSOLE_STATUS+0x5a8>
    80006258:	00000097          	auipc	ra,0x0
    8000625c:	80c080e7          	jalr	-2036(ra) # 80005a64 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006260:	00005517          	auipc	a0,0x5
    80006264:	37850513          	addi	a0,a0,888 # 8000b5d8 <CONSOLE_STATUS+0x5c8>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	7fc080e7          	jalr	2044(ra) # 80005a64 <_Z11printStringPKc>
            break;
    80006270:	f55ff06f          	j	800061c4 <_Z8userMainv+0x98>
            getThreadIdMod();
    80006274:	00001097          	auipc	ra,0x1
    80006278:	550080e7          	jalr	1360(ra) # 800077c4 <_Z14getThreadIdModv>
            printString("TEST 5 getThreadId kompletan \n");
    8000627c:	00005517          	auipc	a0,0x5
    80006280:	3b450513          	addi	a0,a0,948 # 8000b630 <CONSOLE_STATUS+0x620>
    80006284:	fffff097          	auipc	ra,0xfffff
    80006288:	7e0080e7          	jalr	2016(ra) # 80005a64 <_Z11printStringPKc>
            break;
    8000628c:	f39ff06f          	j	800061c4 <_Z8userMainv+0x98>
            setMaximumThread();
    80006290:	fffff097          	auipc	ra,0xfffff
    80006294:	70c080e7          	jalr	1804(ra) # 8000599c <_Z16setMaximumThreadv>
            printString("TEST 9 semMaxThread kompletan\n");
    80006298:	00005517          	auipc	a0,0x5
    8000629c:	3b850513          	addi	a0,a0,952 # 8000b650 <CONSOLE_STATUS+0x640>
    800062a0:	fffff097          	auipc	ra,0xfffff
    800062a4:	7c4080e7          	jalr	1988(ra) # 80005a64 <_Z11printStringPKc>
            break;
    800062a8:	f1dff06f          	j	800061c4 <_Z8userMainv+0x98>
            joinAllModif();
    800062ac:	00000097          	auipc	ra,0x0
    800062b0:	3dc080e7          	jalr	988(ra) # 80006688 <_Z12joinAllModifv>
            printString("TEST 10 joinAll kompletan\n");
    800062b4:	00005517          	auipc	a0,0x5
    800062b8:	3bc50513          	addi	a0,a0,956 # 8000b670 <CONSOLE_STATUS+0x660>
    800062bc:	fffff097          	auipc	ra,0xfffff
    800062c0:	7a8080e7          	jalr	1960(ra) # 80005a64 <_Z11printStringPKc>
            break;
    800062c4:	f01ff06f          	j	800061c4 <_Z8userMainv+0x98>
            semPriorModif();
    800062c8:	00001097          	auipc	ra,0x1
    800062cc:	cfc080e7          	jalr	-772(ra) # 80006fc4 <_Z13semPriorModifv>
            printString("TEST 11 semPrior kompletan\n");
    800062d0:	00005517          	auipc	a0,0x5
    800062d4:	3c050513          	addi	a0,a0,960 # 8000b690 <CONSOLE_STATUS+0x680>
    800062d8:	fffff097          	auipc	ra,0xfffff
    800062dc:	78c080e7          	jalr	1932(ra) # 80005a64 <_Z11printStringPKc>
            break;
    800062e0:	ee5ff06f          	j	800061c4 <_Z8userMainv+0x98>
            pingMod();
    800062e4:	00001097          	auipc	ra,0x1
    800062e8:	b5c080e7          	jalr	-1188(ra) # 80006e40 <_Z7pingModv>
            printString("TEST 12 pingMod kompletan\n");
    800062ec:	00005517          	auipc	a0,0x5
    800062f0:	3c450513          	addi	a0,a0,964 # 8000b6b0 <CONSOLE_STATUS+0x6a0>
    800062f4:	fffff097          	auipc	ra,0xfffff
    800062f8:	770080e7          	jalr	1904(ra) # 80005a64 <_Z11printStringPKc>
            break;
    800062fc:	ec9ff06f          	j	800061c4 <_Z8userMainv+0x98>
            matricaMod();
    80006300:	00002097          	auipc	ra,0x2
    80006304:	93c080e7          	jalr	-1732(ra) # 80007c3c <_Z10matricaModv>
            printString("TEST 13 matricaMnozenje kompletan\n");
    80006308:	00005517          	auipc	a0,0x5
    8000630c:	3c850513          	addi	a0,a0,968 # 8000b6d0 <CONSOLE_STATUS+0x6c0>
    80006310:	fffff097          	auipc	ra,0xfffff
    80006314:	754080e7          	jalr	1876(ra) # 80005a64 <_Z11printStringPKc>
            break;
    80006318:	eadff06f          	j	800061c4 <_Z8userMainv+0x98>
            ownerMod();
    8000631c:	ffffd097          	auipc	ra,0xffffd
    80006320:	ed0080e7          	jalr	-304(ra) # 800031ec <_Z8ownerModv>
            printString("TEST 14 ownerModifikacija kompletna\n");
    80006324:	00005517          	auipc	a0,0x5
    80006328:	3d450513          	addi	a0,a0,980 # 8000b6f8 <CONSOLE_STATUS+0x6e8>
    8000632c:	fffff097          	auipc	ra,0xfffff
    80006330:	738080e7          	jalr	1848(ra) # 80005a64 <_Z11printStringPKc>
            break;
    80006334:	e91ff06f          	j	800061c4 <_Z8userMainv+0x98>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006338:	00005517          	auipc	a0,0x5
    8000633c:	3e850513          	addi	a0,a0,1000 # 8000b720 <CONSOLE_STATUS+0x710>
    80006340:	fffff097          	auipc	ra,0xfffff
    80006344:	724080e7          	jalr	1828(ra) # 80005a64 <_Z11printStringPKc>
    80006348:	e7dff06f          	j	800061c4 <_Z8userMainv+0x98>

000000008000634c <_ZL11workerBodyCPv>:

static volatile bool finishedA = false;

thread_t threads[15];

static void workerBodyC(void* arg) {
    8000634c:	fe010113          	addi	sp,sp,-32
    80006350:	00113c23          	sd	ra,24(sp)
    80006354:	00813823          	sd	s0,16(sp)
    80006358:	00913423          	sd	s1,8(sp)
    8000635c:	01213023          	sd	s2,0(sp)
    80006360:	02010413          	addi	s0,sp,32
    printString("C created\n");
    80006364:	00005517          	auipc	a0,0x5
    80006368:	42450513          	addi	a0,a0,1060 # 8000b788 <CONSOLE_STATUS+0x778>
    8000636c:	fffff097          	auipc	ra,0xfffff
    80006370:	6f8080e7          	jalr	1784(ra) # 80005a64 <_Z11printStringPKc>

    for (uint64 i = 0; i < 10; i++) {
    80006374:	00000913          	li	s2,0
    80006378:	0380006f          	j	800063b0 <_ZL11workerBodyCPv+0x64>

        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000637c:	ffffb097          	auipc	ra,0xffffb
    80006380:	030080e7          	jalr	48(ra) # 800013ac <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006384:	00148493          	addi	s1,s1,1
    80006388:	000027b7          	lui	a5,0x2
    8000638c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006390:	0097ee63          	bltu	a5,s1,800063ac <_ZL11workerBodyCPv+0x60>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006394:	00000713          	li	a4,0
    80006398:	000077b7          	lui	a5,0x7
    8000639c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800063a0:	fce7eee3          	bltu	a5,a4,8000637c <_ZL11workerBodyCPv+0x30>
    800063a4:	00170713          	addi	a4,a4,1
    800063a8:	ff1ff06f          	j	80006398 <_ZL11workerBodyCPv+0x4c>
    for (uint64 i = 0; i < 10; i++) {
    800063ac:	00190913          	addi	s2,s2,1
    800063b0:	00900793          	li	a5,9
    800063b4:	0127e663          	bltu	a5,s2,800063c0 <_ZL11workerBodyCPv+0x74>
        for (uint64 j = 0; j < 10000; j++) {
    800063b8:	00000493          	li	s1,0
    800063bc:	fcdff06f          	j	80006388 <_ZL11workerBodyCPv+0x3c>
        }
    }
    printString("C finished!\n");
    800063c0:	00005517          	auipc	a0,0x5
    800063c4:	3d850513          	addi	a0,a0,984 # 8000b798 <CONSOLE_STATUS+0x788>
    800063c8:	fffff097          	auipc	ra,0xfffff
    800063cc:	69c080e7          	jalr	1692(ra) # 80005a64 <_Z11printStringPKc>
    thread_dispatch();
    800063d0:	ffffb097          	auipc	ra,0xffffb
    800063d4:	fdc080e7          	jalr	-36(ra) # 800013ac <_Z15thread_dispatchv>
}
    800063d8:	01813083          	ld	ra,24(sp)
    800063dc:	01013403          	ld	s0,16(sp)
    800063e0:	00813483          	ld	s1,8(sp)
    800063e4:	00013903          	ld	s2,0(sp)
    800063e8:	02010113          	addi	sp,sp,32
    800063ec:	00008067          	ret

00000000800063f0 <_ZL11workerBodyAPv>:
        }
    }
    printString("B finished!\n");
}

static void workerBodyA(void* arg) {
    800063f0:	fd010113          	addi	sp,sp,-48
    800063f4:	02113423          	sd	ra,40(sp)
    800063f8:	02813023          	sd	s0,32(sp)
    800063fc:	00913c23          	sd	s1,24(sp)
    80006400:	01213823          	sd	s2,16(sp)
    80006404:	03010413          	addi	s0,sp,48

    printString("A created\n");
    80006408:	00005517          	auipc	a0,0x5
    8000640c:	3a050513          	addi	a0,a0,928 # 8000b7a8 <CONSOLE_STATUS+0x798>
    80006410:	fffff097          	auipc	ra,0xfffff
    80006414:	654080e7          	jalr	1620(ra) # 80005a64 <_Z11printStringPKc>
    int idT4 = 1;
    80006418:	00100793          	li	a5,1
    8000641c:	fcf42e23          	sw	a5,-36(s0)
    thread_create(&threads[idT4], workerBodyC, &idT4, &threads[0]);
    80006420:	00008497          	auipc	s1,0x8
    80006424:	1a848493          	addi	s1,s1,424 # 8000e5c8 <threads>
    80006428:	00048693          	mv	a3,s1
    8000642c:	fdc40613          	addi	a2,s0,-36
    80006430:	00000597          	auipc	a1,0x0
    80006434:	f1c58593          	addi	a1,a1,-228 # 8000634c <_ZL11workerBodyCPv>
    80006438:	00008517          	auipc	a0,0x8
    8000643c:	19850513          	addi	a0,a0,408 # 8000e5d0 <threads+0x8>
    80006440:	ffffb097          	auipc	ra,0xffffb
    80006444:	e68080e7          	jalr	-408(ra) # 800012a8 <_Z13thread_createPP3TCBPFvPvES2_S1_>
    int idT1 = 2;
    80006448:	00200793          	li	a5,2
    8000644c:	fcf42c23          	sw	a5,-40(s0)
    thread_create(&threads[idT1], workerBodyB, &idT1, &threads[0]);
    80006450:	00048693          	mv	a3,s1
    80006454:	fd840613          	addi	a2,s0,-40
    80006458:	00000597          	auipc	a1,0x0
    8000645c:	0f058593          	addi	a1,a1,240 # 80006548 <_ZL11workerBodyBPv>
    80006460:	00008517          	auipc	a0,0x8
    80006464:	17850513          	addi	a0,a0,376 # 8000e5d8 <threads+0x10>
    80006468:	ffffb097          	auipc	ra,0xffffb
    8000646c:	e40080e7          	jalr	-448(ra) # 800012a8 <_Z13thread_createPP3TCBPFvPvES2_S1_>
    int idT2=3;
    80006470:	00300793          	li	a5,3
    80006474:	fcf42a23          	sw	a5,-44(s0)
    thread_create(&threads[idT2], workerBodyB, &idT2, &threads[0]);
    80006478:	00048693          	mv	a3,s1
    8000647c:	fd440613          	addi	a2,s0,-44
    80006480:	00000597          	auipc	a1,0x0
    80006484:	0c858593          	addi	a1,a1,200 # 80006548 <_ZL11workerBodyBPv>
    80006488:	00008517          	auipc	a0,0x8
    8000648c:	15850513          	addi	a0,a0,344 # 8000e5e0 <threads+0x18>
    80006490:	ffffb097          	auipc	ra,0xffffb
    80006494:	e18080e7          	jalr	-488(ra) # 800012a8 <_Z13thread_createPP3TCBPFvPvES2_S1_>
    int idT3=4;
    80006498:	00400793          	li	a5,4
    8000649c:	fcf42823          	sw	a5,-48(s0)
    thread_create(&threads[idT3], workerBodyB, &idT3, &threads[0]);
    800064a0:	00048693          	mv	a3,s1
    800064a4:	fd040613          	addi	a2,s0,-48
    800064a8:	00000597          	auipc	a1,0x0
    800064ac:	0a058593          	addi	a1,a1,160 # 80006548 <_ZL11workerBodyBPv>
    800064b0:	00008517          	auipc	a0,0x8
    800064b4:	13850513          	addi	a0,a0,312 # 8000e5e8 <threads+0x20>
    800064b8:	ffffb097          	auipc	ra,0xffffb
    800064bc:	df0080e7          	jalr	-528(ra) # 800012a8 <_Z13thread_createPP3TCBPFvPvES2_S1_>
    joinAll();
    800064c0:	ffffb097          	auipc	ra,0xffffb
    800064c4:	f64080e7          	jalr	-156(ra) # 80001424 <_Z7joinAllv>

    for (uint64 i = 0; i < 10; i++) {
    800064c8:	00000913          	li	s2,0
    800064cc:	0380006f          	j	80006504 <_ZL11workerBodyAPv+0x114>

        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800064d0:	ffffb097          	auipc	ra,0xffffb
    800064d4:	edc080e7          	jalr	-292(ra) # 800013ac <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800064d8:	00148493          	addi	s1,s1,1
    800064dc:	000027b7          	lui	a5,0x2
    800064e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800064e4:	0097ee63          	bltu	a5,s1,80006500 <_ZL11workerBodyAPv+0x110>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800064e8:	00000713          	li	a4,0
    800064ec:	000077b7          	lui	a5,0x7
    800064f0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800064f4:	fce7eee3          	bltu	a5,a4,800064d0 <_ZL11workerBodyAPv+0xe0>
    800064f8:	00170713          	addi	a4,a4,1
    800064fc:	ff1ff06f          	j	800064ec <_ZL11workerBodyAPv+0xfc>
    for (uint64 i = 0; i < 10; i++) {
    80006500:	00190913          	addi	s2,s2,1
    80006504:	00900793          	li	a5,9
    80006508:	0127e663          	bltu	a5,s2,80006514 <_ZL11workerBodyAPv+0x124>
        for (uint64 j = 0; j < 10000; j++) {
    8000650c:	00000493          	li	s1,0
    80006510:	fcdff06f          	j	800064dc <_ZL11workerBodyAPv+0xec>
        }
    }
    printString("A finished!\n");
    80006514:	00005517          	auipc	a0,0x5
    80006518:	dfc50513          	addi	a0,a0,-516 # 8000b310 <CONSOLE_STATUS+0x300>
    8000651c:	fffff097          	auipc	ra,0xfffff
    80006520:	548080e7          	jalr	1352(ra) # 80005a64 <_Z11printStringPKc>
    finishedA = true;
    80006524:	00100793          	li	a5,1
    80006528:	00008717          	auipc	a4,0x8
    8000652c:	10f70c23          	sb	a5,280(a4) # 8000e640 <_ZL9finishedA>
}
    80006530:	02813083          	ld	ra,40(sp)
    80006534:	02013403          	ld	s0,32(sp)
    80006538:	01813483          	ld	s1,24(sp)
    8000653c:	01013903          	ld	s2,16(sp)
    80006540:	03010113          	addi	sp,sp,48
    80006544:	00008067          	ret

0000000080006548 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006548:	fd010113          	addi	sp,sp,-48
    8000654c:	02113423          	sd	ra,40(sp)
    80006550:	02813023          	sd	s0,32(sp)
    80006554:	00913c23          	sd	s1,24(sp)
    80006558:	01213823          	sd	s2,16(sp)
    8000655c:	01313423          	sd	s3,8(sp)
    80006560:	01413023          	sd	s4,0(sp)
    80006564:	03010413          	addi	s0,sp,48
    80006568:	00050493          	mv	s1,a0
    printString("B created\n");
    8000656c:	00005517          	auipc	a0,0x5
    80006570:	24c50513          	addi	a0,a0,588 # 8000b7b8 <CONSOLE_STATUS+0x7a8>
    80006574:	fffff097          	auipc	ra,0xfffff
    80006578:	4f0080e7          	jalr	1264(ra) # 80005a64 <_Z11printStringPKc>
    int idT = *(int*)arg;
    8000657c:	0004a783          	lw	a5,0(s1)
    thread_create(&threads[idT*3-1], workerBodyC, nullptr, &threads[idT]);
    80006580:	0017949b          	slliw	s1,a5,0x1
    80006584:	00f484bb          	addw	s1,s1,a5
    80006588:	00048a1b          	sext.w	s4,s1
    8000658c:	fff4851b          	addiw	a0,s1,-1
    80006590:	00008997          	auipc	s3,0x8
    80006594:	03898993          	addi	s3,s3,56 # 8000e5c8 <threads>
    80006598:	00379793          	slli	a5,a5,0x3
    8000659c:	00f98933          	add	s2,s3,a5
    800065a0:	00351513          	slli	a0,a0,0x3
    800065a4:	00090693          	mv	a3,s2
    800065a8:	00000613          	li	a2,0
    800065ac:	00000597          	auipc	a1,0x0
    800065b0:	da058593          	addi	a1,a1,-608 # 8000634c <_ZL11workerBodyCPv>
    800065b4:	00a98533          	add	a0,s3,a0
    800065b8:	ffffb097          	auipc	ra,0xffffb
    800065bc:	cf0080e7          	jalr	-784(ra) # 800012a8 <_Z13thread_createPP3TCBPFvPvES2_S1_>
    thread_create(&threads[idT*3], workerBodyC, nullptr, &threads[idT]);
    800065c0:	003a1513          	slli	a0,s4,0x3
    800065c4:	00090693          	mv	a3,s2
    800065c8:	00000613          	li	a2,0
    800065cc:	00000597          	auipc	a1,0x0
    800065d0:	d8058593          	addi	a1,a1,-640 # 8000634c <_ZL11workerBodyCPv>
    800065d4:	00a98533          	add	a0,s3,a0
    800065d8:	ffffb097          	auipc	ra,0xffffb
    800065dc:	cd0080e7          	jalr	-816(ra) # 800012a8 <_Z13thread_createPP3TCBPFvPvES2_S1_>
    thread_create(&threads[idT*3+1], workerBodyC, nullptr, &threads[idT]);
    800065e0:	0014851b          	addiw	a0,s1,1
    800065e4:	00351513          	slli	a0,a0,0x3
    800065e8:	00090693          	mv	a3,s2
    800065ec:	00000613          	li	a2,0
    800065f0:	00000597          	auipc	a1,0x0
    800065f4:	d5c58593          	addi	a1,a1,-676 # 8000634c <_ZL11workerBodyCPv>
    800065f8:	00a98533          	add	a0,s3,a0
    800065fc:	ffffb097          	auipc	ra,0xffffb
    80006600:	cac080e7          	jalr	-852(ra) # 800012a8 <_Z13thread_createPP3TCBPFvPvES2_S1_>
    joinAll();
    80006604:	ffffb097          	auipc	ra,0xffffb
    80006608:	e20080e7          	jalr	-480(ra) # 80001424 <_Z7joinAllv>
    for (uint64 i = 0; i < 10; i++) {
    8000660c:	00000913          	li	s2,0
    80006610:	0380006f          	j	80006648 <_ZL11workerBodyBPv+0x100>
            thread_dispatch();
    80006614:	ffffb097          	auipc	ra,0xffffb
    80006618:	d98080e7          	jalr	-616(ra) # 800013ac <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000661c:	00148493          	addi	s1,s1,1
    80006620:	000027b7          	lui	a5,0x2
    80006624:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006628:	0097ee63          	bltu	a5,s1,80006644 <_ZL11workerBodyBPv+0xfc>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000662c:	00000713          	li	a4,0
    80006630:	000077b7          	lui	a5,0x7
    80006634:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006638:	fce7eee3          	bltu	a5,a4,80006614 <_ZL11workerBodyBPv+0xcc>
    8000663c:	00170713          	addi	a4,a4,1
    80006640:	ff1ff06f          	j	80006630 <_ZL11workerBodyBPv+0xe8>
    for (uint64 i = 0; i < 10; i++) {
    80006644:	00190913          	addi	s2,s2,1
    80006648:	00900793          	li	a5,9
    8000664c:	0127e663          	bltu	a5,s2,80006658 <_ZL11workerBodyBPv+0x110>
        for (uint64 j = 0; j < 10000; j++) {
    80006650:	00000493          	li	s1,0
    80006654:	fcdff06f          	j	80006620 <_ZL11workerBodyBPv+0xd8>
    printString("B finished!\n");
    80006658:	00005517          	auipc	a0,0x5
    8000665c:	cd050513          	addi	a0,a0,-816 # 8000b328 <CONSOLE_STATUS+0x318>
    80006660:	fffff097          	auipc	ra,0xfffff
    80006664:	404080e7          	jalr	1028(ra) # 80005a64 <_Z11printStringPKc>
}
    80006668:	02813083          	ld	ra,40(sp)
    8000666c:	02013403          	ld	s0,32(sp)
    80006670:	01813483          	ld	s1,24(sp)
    80006674:	01013903          	ld	s2,16(sp)
    80006678:	00813983          	ld	s3,8(sp)
    8000667c:	00013a03          	ld	s4,0(sp)
    80006680:	03010113          	addi	sp,sp,48
    80006684:	00008067          	ret

0000000080006688 <_Z12joinAllModifv>:

void joinAllModif(){
    80006688:	ff010113          	addi	sp,sp,-16
    8000668c:	00113423          	sd	ra,8(sp)
    80006690:	00813023          	sd	s0,0(sp)
    80006694:	01010413          	addi	s0,sp,16

    thread_create(&threads[0], workerBodyA, nullptr);
    80006698:	00000613          	li	a2,0
    8000669c:	00000597          	auipc	a1,0x0
    800066a0:	d5458593          	addi	a1,a1,-684 # 800063f0 <_ZL11workerBodyAPv>
    800066a4:	00008517          	auipc	a0,0x8
    800066a8:	f2450513          	addi	a0,a0,-220 # 8000e5c8 <threads>
    800066ac:	ffffb097          	auipc	ra,0xffffb
    800066b0:	c80080e7          	jalr	-896(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800066b4:	00005517          	auipc	a0,0x5
    800066b8:	cec50513          	addi	a0,a0,-788 # 8000b3a0 <CONSOLE_STATUS+0x390>
    800066bc:	fffff097          	auipc	ra,0xfffff
    800066c0:	3a8080e7          	jalr	936(ra) # 80005a64 <_Z11printStringPKc>

    while (!(finishedA)) {
    800066c4:	00008797          	auipc	a5,0x8
    800066c8:	f7c7c783          	lbu	a5,-132(a5) # 8000e640 <_ZL9finishedA>
    800066cc:	00079863          	bnez	a5,800066dc <_Z12joinAllModifv+0x54>
        thread_dispatch();
    800066d0:	ffffb097          	auipc	ra,0xffffb
    800066d4:	cdc080e7          	jalr	-804(ra) # 800013ac <_Z15thread_dispatchv>
    while (!(finishedA)) {
    800066d8:	fedff06f          	j	800066c4 <_Z12joinAllModifv+0x3c>
    }
    800066dc:	00813083          	ld	ra,8(sp)
    800066e0:	00013403          	ld	s0,0(sp)
    800066e4:	01010113          	addi	sp,sp,16
    800066e8:	00008067          	ret

00000000800066ec <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800066ec:	fe010113          	addi	sp,sp,-32
    800066f0:	00113c23          	sd	ra,24(sp)
    800066f4:	00813823          	sd	s0,16(sp)
    800066f8:	00913423          	sd	s1,8(sp)
    800066fc:	01213023          	sd	s2,0(sp)
    80006700:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006704:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006708:	00600493          	li	s1,6
    while (--i > 0) {
    8000670c:	fff4849b          	addiw	s1,s1,-1
    80006710:	04905463          	blez	s1,80006758 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006714:	00005517          	auipc	a0,0x5
    80006718:	0b450513          	addi	a0,a0,180 # 8000b7c8 <CONSOLE_STATUS+0x7b8>
    8000671c:	fffff097          	auipc	ra,0xfffff
    80006720:	348080e7          	jalr	840(ra) # 80005a64 <_Z11printStringPKc>
        printInt(sleep_time);
    80006724:	00000613          	li	a2,0
    80006728:	00a00593          	li	a1,10
    8000672c:	0009051b          	sext.w	a0,s2
    80006730:	fffff097          	auipc	ra,0xfffff
    80006734:	4e4080e7          	jalr	1252(ra) # 80005c14 <_Z8printIntiii>
        printString(" !\n");
    80006738:	00005517          	auipc	a0,0x5
    8000673c:	09850513          	addi	a0,a0,152 # 8000b7d0 <CONSOLE_STATUS+0x7c0>
    80006740:	fffff097          	auipc	ra,0xfffff
    80006744:	324080e7          	jalr	804(ra) # 80005a64 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006748:	00090513          	mv	a0,s2
    8000674c:	ffffb097          	auipc	ra,0xffffb
    80006750:	e78080e7          	jalr	-392(ra) # 800015c4 <_Z10time_sleepm>
    while (--i > 0) {
    80006754:	fb9ff06f          	j	8000670c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006758:	00a00793          	li	a5,10
    8000675c:	02f95933          	divu	s2,s2,a5
    80006760:	fff90913          	addi	s2,s2,-1
    80006764:	00008797          	auipc	a5,0x8
    80006768:	ee478793          	addi	a5,a5,-284 # 8000e648 <_ZL8finished>
    8000676c:	01278933          	add	s2,a5,s2
    80006770:	00100793          	li	a5,1
    80006774:	00f90023          	sb	a5,0(s2)
}
    80006778:	01813083          	ld	ra,24(sp)
    8000677c:	01013403          	ld	s0,16(sp)
    80006780:	00813483          	ld	s1,8(sp)
    80006784:	00013903          	ld	s2,0(sp)
    80006788:	02010113          	addi	sp,sp,32
    8000678c:	00008067          	ret

0000000080006790 <_Z12testSleepingv>:

void testSleeping() {
    80006790:	fc010113          	addi	sp,sp,-64
    80006794:	02113c23          	sd	ra,56(sp)
    80006798:	02813823          	sd	s0,48(sp)
    8000679c:	02913423          	sd	s1,40(sp)
    800067a0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800067a4:	00a00793          	li	a5,10
    800067a8:	fcf43823          	sd	a5,-48(s0)
    800067ac:	01400793          	li	a5,20
    800067b0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800067b4:	00000493          	li	s1,0
    800067b8:	02c0006f          	j	800067e4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800067bc:	00349793          	slli	a5,s1,0x3
    800067c0:	fd040613          	addi	a2,s0,-48
    800067c4:	00f60633          	add	a2,a2,a5
    800067c8:	00000597          	auipc	a1,0x0
    800067cc:	f2458593          	addi	a1,a1,-220 # 800066ec <_ZL9sleepyRunPv>
    800067d0:	fc040513          	addi	a0,s0,-64
    800067d4:	00f50533          	add	a0,a0,a5
    800067d8:	ffffb097          	auipc	ra,0xffffb
    800067dc:	b54080e7          	jalr	-1196(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800067e0:	0014849b          	addiw	s1,s1,1
    800067e4:	00100793          	li	a5,1
    800067e8:	fc97dae3          	bge	a5,s1,800067bc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800067ec:	00008797          	auipc	a5,0x8
    800067f0:	e5c7c783          	lbu	a5,-420(a5) # 8000e648 <_ZL8finished>
    800067f4:	fe078ce3          	beqz	a5,800067ec <_Z12testSleepingv+0x5c>
    800067f8:	00008797          	auipc	a5,0x8
    800067fc:	e517c783          	lbu	a5,-431(a5) # 8000e649 <_ZL8finished+0x1>
    80006800:	fe0786e3          	beqz	a5,800067ec <_Z12testSleepingv+0x5c>
}
    80006804:	03813083          	ld	ra,56(sp)
    80006808:	03013403          	ld	s0,48(sp)
    8000680c:	02813483          	ld	s1,40(sp)
    80006810:	04010113          	addi	sp,sp,64
    80006814:	00008067          	ret

0000000080006818 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006818:	fe010113          	addi	sp,sp,-32
    8000681c:	00113c23          	sd	ra,24(sp)
    80006820:	00813823          	sd	s0,16(sp)
    80006824:	00913423          	sd	s1,8(sp)
    80006828:	01213023          	sd	s2,0(sp)
    8000682c:	02010413          	addi	s0,sp,32
    80006830:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006834:	00100793          	li	a5,1
    80006838:	02a7f863          	bgeu	a5,a0,80006868 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000683c:	00a00793          	li	a5,10
    80006840:	02f577b3          	remu	a5,a0,a5
    80006844:	02078e63          	beqz	a5,80006880 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006848:	fff48513          	addi	a0,s1,-1
    8000684c:	00000097          	auipc	ra,0x0
    80006850:	fcc080e7          	jalr	-52(ra) # 80006818 <_ZL9fibonaccim>
    80006854:	00050913          	mv	s2,a0
    80006858:	ffe48513          	addi	a0,s1,-2
    8000685c:	00000097          	auipc	ra,0x0
    80006860:	fbc080e7          	jalr	-68(ra) # 80006818 <_ZL9fibonaccim>
    80006864:	00a90533          	add	a0,s2,a0
}
    80006868:	01813083          	ld	ra,24(sp)
    8000686c:	01013403          	ld	s0,16(sp)
    80006870:	00813483          	ld	s1,8(sp)
    80006874:	00013903          	ld	s2,0(sp)
    80006878:	02010113          	addi	sp,sp,32
    8000687c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006880:	ffffb097          	auipc	ra,0xffffb
    80006884:	b2c080e7          	jalr	-1236(ra) # 800013ac <_Z15thread_dispatchv>
    80006888:	fc1ff06f          	j	80006848 <_ZL9fibonaccim+0x30>

000000008000688c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000688c:	fe010113          	addi	sp,sp,-32
    80006890:	00113c23          	sd	ra,24(sp)
    80006894:	00813823          	sd	s0,16(sp)
    80006898:	00913423          	sd	s1,8(sp)
    8000689c:	01213023          	sd	s2,0(sp)
    800068a0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800068a4:	00a00493          	li	s1,10
    800068a8:	0400006f          	j	800068e8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800068ac:	00005517          	auipc	a0,0x5
    800068b0:	abc50513          	addi	a0,a0,-1348 # 8000b368 <CONSOLE_STATUS+0x358>
    800068b4:	fffff097          	auipc	ra,0xfffff
    800068b8:	1b0080e7          	jalr	432(ra) # 80005a64 <_Z11printStringPKc>
    800068bc:	00000613          	li	a2,0
    800068c0:	00a00593          	li	a1,10
    800068c4:	00048513          	mv	a0,s1
    800068c8:	fffff097          	auipc	ra,0xfffff
    800068cc:	34c080e7          	jalr	844(ra) # 80005c14 <_Z8printIntiii>
    800068d0:	00005517          	auipc	a0,0x5
    800068d4:	ce050513          	addi	a0,a0,-800 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    800068d8:	fffff097          	auipc	ra,0xfffff
    800068dc:	18c080e7          	jalr	396(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800068e0:	0014849b          	addiw	s1,s1,1
    800068e4:	0ff4f493          	andi	s1,s1,255
    800068e8:	00c00793          	li	a5,12
    800068ec:	fc97f0e3          	bgeu	a5,s1,800068ac <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800068f0:	00005517          	auipc	a0,0x5
    800068f4:	a8050513          	addi	a0,a0,-1408 # 8000b370 <CONSOLE_STATUS+0x360>
    800068f8:	fffff097          	auipc	ra,0xfffff
    800068fc:	16c080e7          	jalr	364(ra) # 80005a64 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006900:	00500313          	li	t1,5
    thread_dispatch();
    80006904:	ffffb097          	auipc	ra,0xffffb
    80006908:	aa8080e7          	jalr	-1368(ra) # 800013ac <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000690c:	01000513          	li	a0,16
    80006910:	00000097          	auipc	ra,0x0
    80006914:	f08080e7          	jalr	-248(ra) # 80006818 <_ZL9fibonaccim>
    80006918:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000691c:	00005517          	auipc	a0,0x5
    80006920:	a6450513          	addi	a0,a0,-1436 # 8000b380 <CONSOLE_STATUS+0x370>
    80006924:	fffff097          	auipc	ra,0xfffff
    80006928:	140080e7          	jalr	320(ra) # 80005a64 <_Z11printStringPKc>
    8000692c:	00000613          	li	a2,0
    80006930:	00a00593          	li	a1,10
    80006934:	0009051b          	sext.w	a0,s2
    80006938:	fffff097          	auipc	ra,0xfffff
    8000693c:	2dc080e7          	jalr	732(ra) # 80005c14 <_Z8printIntiii>
    80006940:	00005517          	auipc	a0,0x5
    80006944:	c7050513          	addi	a0,a0,-912 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80006948:	fffff097          	auipc	ra,0xfffff
    8000694c:	11c080e7          	jalr	284(ra) # 80005a64 <_Z11printStringPKc>
    80006950:	0400006f          	j	80006990 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006954:	00005517          	auipc	a0,0x5
    80006958:	a1450513          	addi	a0,a0,-1516 # 8000b368 <CONSOLE_STATUS+0x358>
    8000695c:	fffff097          	auipc	ra,0xfffff
    80006960:	108080e7          	jalr	264(ra) # 80005a64 <_Z11printStringPKc>
    80006964:	00000613          	li	a2,0
    80006968:	00a00593          	li	a1,10
    8000696c:	00048513          	mv	a0,s1
    80006970:	fffff097          	auipc	ra,0xfffff
    80006974:	2a4080e7          	jalr	676(ra) # 80005c14 <_Z8printIntiii>
    80006978:	00005517          	auipc	a0,0x5
    8000697c:	c3850513          	addi	a0,a0,-968 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80006980:	fffff097          	auipc	ra,0xfffff
    80006984:	0e4080e7          	jalr	228(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006988:	0014849b          	addiw	s1,s1,1
    8000698c:	0ff4f493          	andi	s1,s1,255
    80006990:	00f00793          	li	a5,15
    80006994:	fc97f0e3          	bgeu	a5,s1,80006954 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006998:	00005517          	auipc	a0,0x5
    8000699c:	9f850513          	addi	a0,a0,-1544 # 8000b390 <CONSOLE_STATUS+0x380>
    800069a0:	fffff097          	auipc	ra,0xfffff
    800069a4:	0c4080e7          	jalr	196(ra) # 80005a64 <_Z11printStringPKc>
    finishedD = true;
    800069a8:	00100793          	li	a5,1
    800069ac:	00008717          	auipc	a4,0x8
    800069b0:	c8f70f23          	sb	a5,-866(a4) # 8000e64a <_ZL9finishedD>
    thread_dispatch();
    800069b4:	ffffb097          	auipc	ra,0xffffb
    800069b8:	9f8080e7          	jalr	-1544(ra) # 800013ac <_Z15thread_dispatchv>
}
    800069bc:	01813083          	ld	ra,24(sp)
    800069c0:	01013403          	ld	s0,16(sp)
    800069c4:	00813483          	ld	s1,8(sp)
    800069c8:	00013903          	ld	s2,0(sp)
    800069cc:	02010113          	addi	sp,sp,32
    800069d0:	00008067          	ret

00000000800069d4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800069d4:	fe010113          	addi	sp,sp,-32
    800069d8:	00113c23          	sd	ra,24(sp)
    800069dc:	00813823          	sd	s0,16(sp)
    800069e0:	00913423          	sd	s1,8(sp)
    800069e4:	01213023          	sd	s2,0(sp)
    800069e8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800069ec:	00000493          	li	s1,0
    800069f0:	0400006f          	j	80006a30 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800069f4:	00005517          	auipc	a0,0x5
    800069f8:	94450513          	addi	a0,a0,-1724 # 8000b338 <CONSOLE_STATUS+0x328>
    800069fc:	fffff097          	auipc	ra,0xfffff
    80006a00:	068080e7          	jalr	104(ra) # 80005a64 <_Z11printStringPKc>
    80006a04:	00000613          	li	a2,0
    80006a08:	00a00593          	li	a1,10
    80006a0c:	00048513          	mv	a0,s1
    80006a10:	fffff097          	auipc	ra,0xfffff
    80006a14:	204080e7          	jalr	516(ra) # 80005c14 <_Z8printIntiii>
    80006a18:	00005517          	auipc	a0,0x5
    80006a1c:	b9850513          	addi	a0,a0,-1128 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80006a20:	fffff097          	auipc	ra,0xfffff
    80006a24:	044080e7          	jalr	68(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006a28:	0014849b          	addiw	s1,s1,1
    80006a2c:	0ff4f493          	andi	s1,s1,255
    80006a30:	00200793          	li	a5,2
    80006a34:	fc97f0e3          	bgeu	a5,s1,800069f4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006a38:	00005517          	auipc	a0,0x5
    80006a3c:	90850513          	addi	a0,a0,-1784 # 8000b340 <CONSOLE_STATUS+0x330>
    80006a40:	fffff097          	auipc	ra,0xfffff
    80006a44:	024080e7          	jalr	36(ra) # 80005a64 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006a48:	00700313          	li	t1,7
    thread_dispatch();
    80006a4c:	ffffb097          	auipc	ra,0xffffb
    80006a50:	960080e7          	jalr	-1696(ra) # 800013ac <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006a54:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006a58:	00005517          	auipc	a0,0x5
    80006a5c:	8f850513          	addi	a0,a0,-1800 # 8000b350 <CONSOLE_STATUS+0x340>
    80006a60:	fffff097          	auipc	ra,0xfffff
    80006a64:	004080e7          	jalr	4(ra) # 80005a64 <_Z11printStringPKc>
    80006a68:	00000613          	li	a2,0
    80006a6c:	00a00593          	li	a1,10
    80006a70:	0009051b          	sext.w	a0,s2
    80006a74:	fffff097          	auipc	ra,0xfffff
    80006a78:	1a0080e7          	jalr	416(ra) # 80005c14 <_Z8printIntiii>
    80006a7c:	00005517          	auipc	a0,0x5
    80006a80:	b3450513          	addi	a0,a0,-1228 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80006a84:	fffff097          	auipc	ra,0xfffff
    80006a88:	fe0080e7          	jalr	-32(ra) # 80005a64 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006a8c:	00c00513          	li	a0,12
    80006a90:	00000097          	auipc	ra,0x0
    80006a94:	d88080e7          	jalr	-632(ra) # 80006818 <_ZL9fibonaccim>
    80006a98:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006a9c:	00005517          	auipc	a0,0x5
    80006aa0:	8bc50513          	addi	a0,a0,-1860 # 8000b358 <CONSOLE_STATUS+0x348>
    80006aa4:	fffff097          	auipc	ra,0xfffff
    80006aa8:	fc0080e7          	jalr	-64(ra) # 80005a64 <_Z11printStringPKc>
    80006aac:	00000613          	li	a2,0
    80006ab0:	00a00593          	li	a1,10
    80006ab4:	0009051b          	sext.w	a0,s2
    80006ab8:	fffff097          	auipc	ra,0xfffff
    80006abc:	15c080e7          	jalr	348(ra) # 80005c14 <_Z8printIntiii>
    80006ac0:	00005517          	auipc	a0,0x5
    80006ac4:	af050513          	addi	a0,a0,-1296 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80006ac8:	fffff097          	auipc	ra,0xfffff
    80006acc:	f9c080e7          	jalr	-100(ra) # 80005a64 <_Z11printStringPKc>
    80006ad0:	0400006f          	j	80006b10 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006ad4:	00005517          	auipc	a0,0x5
    80006ad8:	86450513          	addi	a0,a0,-1948 # 8000b338 <CONSOLE_STATUS+0x328>
    80006adc:	fffff097          	auipc	ra,0xfffff
    80006ae0:	f88080e7          	jalr	-120(ra) # 80005a64 <_Z11printStringPKc>
    80006ae4:	00000613          	li	a2,0
    80006ae8:	00a00593          	li	a1,10
    80006aec:	00048513          	mv	a0,s1
    80006af0:	fffff097          	auipc	ra,0xfffff
    80006af4:	124080e7          	jalr	292(ra) # 80005c14 <_Z8printIntiii>
    80006af8:	00005517          	auipc	a0,0x5
    80006afc:	ab850513          	addi	a0,a0,-1352 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80006b00:	fffff097          	auipc	ra,0xfffff
    80006b04:	f64080e7          	jalr	-156(ra) # 80005a64 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006b08:	0014849b          	addiw	s1,s1,1
    80006b0c:	0ff4f493          	andi	s1,s1,255
    80006b10:	00500793          	li	a5,5
    80006b14:	fc97f0e3          	bgeu	a5,s1,80006ad4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006b18:	00004517          	auipc	a0,0x4
    80006b1c:	7f850513          	addi	a0,a0,2040 # 8000b310 <CONSOLE_STATUS+0x300>
    80006b20:	fffff097          	auipc	ra,0xfffff
    80006b24:	f44080e7          	jalr	-188(ra) # 80005a64 <_Z11printStringPKc>
    finishedC = true;
    80006b28:	00100793          	li	a5,1
    80006b2c:	00008717          	auipc	a4,0x8
    80006b30:	b0f70fa3          	sb	a5,-1249(a4) # 8000e64b <_ZL9finishedC>
    thread_dispatch();
    80006b34:	ffffb097          	auipc	ra,0xffffb
    80006b38:	878080e7          	jalr	-1928(ra) # 800013ac <_Z15thread_dispatchv>
}
    80006b3c:	01813083          	ld	ra,24(sp)
    80006b40:	01013403          	ld	s0,16(sp)
    80006b44:	00813483          	ld	s1,8(sp)
    80006b48:	00013903          	ld	s2,0(sp)
    80006b4c:	02010113          	addi	sp,sp,32
    80006b50:	00008067          	ret

0000000080006b54 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006b54:	fe010113          	addi	sp,sp,-32
    80006b58:	00113c23          	sd	ra,24(sp)
    80006b5c:	00813823          	sd	s0,16(sp)
    80006b60:	00913423          	sd	s1,8(sp)
    80006b64:	01213023          	sd	s2,0(sp)
    80006b68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006b6c:	00000913          	li	s2,0
    80006b70:	0400006f          	j	80006bb0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006b74:	ffffb097          	auipc	ra,0xffffb
    80006b78:	838080e7          	jalr	-1992(ra) # 800013ac <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006b7c:	00148493          	addi	s1,s1,1
    80006b80:	000027b7          	lui	a5,0x2
    80006b84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006b88:	0097ee63          	bltu	a5,s1,80006ba4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006b8c:	00000713          	li	a4,0
    80006b90:	000077b7          	lui	a5,0x7
    80006b94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006b98:	fce7eee3          	bltu	a5,a4,80006b74 <_ZL11workerBodyBPv+0x20>
    80006b9c:	00170713          	addi	a4,a4,1
    80006ba0:	ff1ff06f          	j	80006b90 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006ba4:	00a00793          	li	a5,10
    80006ba8:	04f90663          	beq	s2,a5,80006bf4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006bac:	00190913          	addi	s2,s2,1
    80006bb0:	00f00793          	li	a5,15
    80006bb4:	0527e463          	bltu	a5,s2,80006bfc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006bb8:	00004517          	auipc	a0,0x4
    80006bbc:	76850513          	addi	a0,a0,1896 # 8000b320 <CONSOLE_STATUS+0x310>
    80006bc0:	fffff097          	auipc	ra,0xfffff
    80006bc4:	ea4080e7          	jalr	-348(ra) # 80005a64 <_Z11printStringPKc>
    80006bc8:	00000613          	li	a2,0
    80006bcc:	00a00593          	li	a1,10
    80006bd0:	0009051b          	sext.w	a0,s2
    80006bd4:	fffff097          	auipc	ra,0xfffff
    80006bd8:	040080e7          	jalr	64(ra) # 80005c14 <_Z8printIntiii>
    80006bdc:	00005517          	auipc	a0,0x5
    80006be0:	9d450513          	addi	a0,a0,-1580 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80006be4:	fffff097          	auipc	ra,0xfffff
    80006be8:	e80080e7          	jalr	-384(ra) # 80005a64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006bec:	00000493          	li	s1,0
    80006bf0:	f91ff06f          	j	80006b80 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006bf4:	14102ff3          	csrr	t6,sepc
    80006bf8:	fb5ff06f          	j	80006bac <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006bfc:	00004517          	auipc	a0,0x4
    80006c00:	72c50513          	addi	a0,a0,1836 # 8000b328 <CONSOLE_STATUS+0x318>
    80006c04:	fffff097          	auipc	ra,0xfffff
    80006c08:	e60080e7          	jalr	-416(ra) # 80005a64 <_Z11printStringPKc>
    finishedB = true;
    80006c0c:	00100793          	li	a5,1
    80006c10:	00008717          	auipc	a4,0x8
    80006c14:	a2f70e23          	sb	a5,-1476(a4) # 8000e64c <_ZL9finishedB>
    thread_dispatch();
    80006c18:	ffffa097          	auipc	ra,0xffffa
    80006c1c:	794080e7          	jalr	1940(ra) # 800013ac <_Z15thread_dispatchv>
}
    80006c20:	01813083          	ld	ra,24(sp)
    80006c24:	01013403          	ld	s0,16(sp)
    80006c28:	00813483          	ld	s1,8(sp)
    80006c2c:	00013903          	ld	s2,0(sp)
    80006c30:	02010113          	addi	sp,sp,32
    80006c34:	00008067          	ret

0000000080006c38 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006c38:	fe010113          	addi	sp,sp,-32
    80006c3c:	00113c23          	sd	ra,24(sp)
    80006c40:	00813823          	sd	s0,16(sp)
    80006c44:	00913423          	sd	s1,8(sp)
    80006c48:	01213023          	sd	s2,0(sp)
    80006c4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006c50:	00000913          	li	s2,0
    80006c54:	0380006f          	j	80006c8c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006c58:	ffffa097          	auipc	ra,0xffffa
    80006c5c:	754080e7          	jalr	1876(ra) # 800013ac <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006c60:	00148493          	addi	s1,s1,1
    80006c64:	000027b7          	lui	a5,0x2
    80006c68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006c6c:	0097ee63          	bltu	a5,s1,80006c88 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006c70:	00000713          	li	a4,0
    80006c74:	000077b7          	lui	a5,0x7
    80006c78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006c7c:	fce7eee3          	bltu	a5,a4,80006c58 <_ZL11workerBodyAPv+0x20>
    80006c80:	00170713          	addi	a4,a4,1
    80006c84:	ff1ff06f          	j	80006c74 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006c88:	00190913          	addi	s2,s2,1
    80006c8c:	00900793          	li	a5,9
    80006c90:	0527e063          	bltu	a5,s2,80006cd0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006c94:	00004517          	auipc	a0,0x4
    80006c98:	67450513          	addi	a0,a0,1652 # 8000b308 <CONSOLE_STATUS+0x2f8>
    80006c9c:	fffff097          	auipc	ra,0xfffff
    80006ca0:	dc8080e7          	jalr	-568(ra) # 80005a64 <_Z11printStringPKc>
    80006ca4:	00000613          	li	a2,0
    80006ca8:	00a00593          	li	a1,10
    80006cac:	0009051b          	sext.w	a0,s2
    80006cb0:	fffff097          	auipc	ra,0xfffff
    80006cb4:	f64080e7          	jalr	-156(ra) # 80005c14 <_Z8printIntiii>
    80006cb8:	00005517          	auipc	a0,0x5
    80006cbc:	8f850513          	addi	a0,a0,-1800 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80006cc0:	fffff097          	auipc	ra,0xfffff
    80006cc4:	da4080e7          	jalr	-604(ra) # 80005a64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006cc8:	00000493          	li	s1,0
    80006ccc:	f99ff06f          	j	80006c64 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006cd0:	00004517          	auipc	a0,0x4
    80006cd4:	64050513          	addi	a0,a0,1600 # 8000b310 <CONSOLE_STATUS+0x300>
    80006cd8:	fffff097          	auipc	ra,0xfffff
    80006cdc:	d8c080e7          	jalr	-628(ra) # 80005a64 <_Z11printStringPKc>
    finishedA = true;
    80006ce0:	00100793          	li	a5,1
    80006ce4:	00008717          	auipc	a4,0x8
    80006ce8:	96f704a3          	sb	a5,-1687(a4) # 8000e64d <_ZL9finishedA>
}
    80006cec:	01813083          	ld	ra,24(sp)
    80006cf0:	01013403          	ld	s0,16(sp)
    80006cf4:	00813483          	ld	s1,8(sp)
    80006cf8:	00013903          	ld	s2,0(sp)
    80006cfc:	02010113          	addi	sp,sp,32
    80006d00:	00008067          	ret

0000000080006d04 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006d04:	fd010113          	addi	sp,sp,-48
    80006d08:	02113423          	sd	ra,40(sp)
    80006d0c:	02813023          	sd	s0,32(sp)
    80006d10:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006d14:	00000613          	li	a2,0
    80006d18:	00000597          	auipc	a1,0x0
    80006d1c:	f2058593          	addi	a1,a1,-224 # 80006c38 <_ZL11workerBodyAPv>
    80006d20:	fd040513          	addi	a0,s0,-48
    80006d24:	ffffa097          	auipc	ra,0xffffa
    80006d28:	608080e7          	jalr	1544(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006d2c:	00004517          	auipc	a0,0x4
    80006d30:	67450513          	addi	a0,a0,1652 # 8000b3a0 <CONSOLE_STATUS+0x390>
    80006d34:	fffff097          	auipc	ra,0xfffff
    80006d38:	d30080e7          	jalr	-720(ra) # 80005a64 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006d3c:	00000613          	li	a2,0
    80006d40:	00000597          	auipc	a1,0x0
    80006d44:	e1458593          	addi	a1,a1,-492 # 80006b54 <_ZL11workerBodyBPv>
    80006d48:	fd840513          	addi	a0,s0,-40
    80006d4c:	ffffa097          	auipc	ra,0xffffa
    80006d50:	5e0080e7          	jalr	1504(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006d54:	00004517          	auipc	a0,0x4
    80006d58:	66450513          	addi	a0,a0,1636 # 8000b3b8 <CONSOLE_STATUS+0x3a8>
    80006d5c:	fffff097          	auipc	ra,0xfffff
    80006d60:	d08080e7          	jalr	-760(ra) # 80005a64 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006d64:	00000613          	li	a2,0
    80006d68:	00000597          	auipc	a1,0x0
    80006d6c:	c6c58593          	addi	a1,a1,-916 # 800069d4 <_ZL11workerBodyCPv>
    80006d70:	fe040513          	addi	a0,s0,-32
    80006d74:	ffffa097          	auipc	ra,0xffffa
    80006d78:	5b8080e7          	jalr	1464(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006d7c:	00004517          	auipc	a0,0x4
    80006d80:	65450513          	addi	a0,a0,1620 # 8000b3d0 <CONSOLE_STATUS+0x3c0>
    80006d84:	fffff097          	auipc	ra,0xfffff
    80006d88:	ce0080e7          	jalr	-800(ra) # 80005a64 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006d8c:	00000613          	li	a2,0
    80006d90:	00000597          	auipc	a1,0x0
    80006d94:	afc58593          	addi	a1,a1,-1284 # 8000688c <_ZL11workerBodyDPv>
    80006d98:	fe840513          	addi	a0,s0,-24
    80006d9c:	ffffa097          	auipc	ra,0xffffa
    80006da0:	590080e7          	jalr	1424(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006da4:	00004517          	auipc	a0,0x4
    80006da8:	64450513          	addi	a0,a0,1604 # 8000b3e8 <CONSOLE_STATUS+0x3d8>
    80006dac:	fffff097          	auipc	ra,0xfffff
    80006db0:	cb8080e7          	jalr	-840(ra) # 80005a64 <_Z11printStringPKc>
    80006db4:	00c0006f          	j	80006dc0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006db8:	ffffa097          	auipc	ra,0xffffa
    80006dbc:	5f4080e7          	jalr	1524(ra) # 800013ac <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006dc0:	00008797          	auipc	a5,0x8
    80006dc4:	88d7c783          	lbu	a5,-1907(a5) # 8000e64d <_ZL9finishedA>
    80006dc8:	fe0788e3          	beqz	a5,80006db8 <_Z16System_Mode_testv+0xb4>
    80006dcc:	00008797          	auipc	a5,0x8
    80006dd0:	8807c783          	lbu	a5,-1920(a5) # 8000e64c <_ZL9finishedB>
    80006dd4:	fe0782e3          	beqz	a5,80006db8 <_Z16System_Mode_testv+0xb4>
    80006dd8:	00008797          	auipc	a5,0x8
    80006ddc:	8737c783          	lbu	a5,-1933(a5) # 8000e64b <_ZL9finishedC>
    80006de0:	fc078ce3          	beqz	a5,80006db8 <_Z16System_Mode_testv+0xb4>
    80006de4:	00008797          	auipc	a5,0x8
    80006de8:	8667c783          	lbu	a5,-1946(a5) # 8000e64a <_ZL9finishedD>
    80006dec:	fc0786e3          	beqz	a5,80006db8 <_Z16System_Mode_testv+0xb4>
    }

}
    80006df0:	02813083          	ld	ra,40(sp)
    80006df4:	02013403          	ld	s0,32(sp)
    80006df8:	03010113          	addi	sp,sp,48
    80006dfc:	00008067          	ret

0000000080006e00 <_Z4fja1Pv>:
#include "pingModif.hpp"
#include "printing.hpp"
#include "../h/syscall_cpp.hpp"
void fja1(void*){
    80006e00:	fe010113          	addi	sp,sp,-32
    80006e04:	00113c23          	sd	ra,24(sp)
    80006e08:	00813823          	sd	s0,16(sp)
    80006e0c:	00913423          	sd	s1,8(sp)
    80006e10:	02010413          	addi	s0,sp,32
    for(int i=0; i < 5; i++){
    80006e14:	00000493          	li	s1,0
    80006e18:	00400793          	li	a5,4
    80006e1c:	0097cc63          	blt	a5,s1,80006e34 <_Z4fja1Pv+0x34>
        void* ptr = mem_alloc(640);
    80006e20:	28000513          	li	a0,640
    80006e24:	ffffa097          	auipc	ra,0xffffa
    80006e28:	418080e7          	jalr	1048(ra) # 8000123c <_Z9mem_allocm>
    for(int i=0; i < 5; i++){
    80006e2c:	0014849b          	addiw	s1,s1,1
    80006e30:	fe9ff06f          	j	80006e18 <_Z4fja1Pv+0x18>

        if(ptr){}
    }
    while(true){thread_dispatch();}
    80006e34:	ffffa097          	auipc	ra,0xffffa
    80006e38:	578080e7          	jalr	1400(ra) # 800013ac <_Z15thread_dispatchv>
    80006e3c:	ff9ff06f          	j	80006e34 <_Z4fja1Pv+0x34>

0000000080006e40 <_Z7pingModv>:
}

void pingMod(){
    80006e40:	fe010113          	addi	sp,sp,-32
    80006e44:	00113c23          	sd	ra,24(sp)
    80006e48:	00813823          	sd	s0,16(sp)
    80006e4c:	00913423          	sd	s1,8(sp)
    80006e50:	01213023          	sd	s2,0(sp)
    80006e54:	02010413          	addi	s0,sp,32
    Thread* t1 = new Thread(fja1,nullptr);
    80006e58:	02000513          	li	a0,32
    80006e5c:	ffffb097          	auipc	ra,0xffffb
    80006e60:	0a4080e7          	jalr	164(ra) # 80001f00 <_Znwm>
    80006e64:	00050493          	mv	s1,a0
    80006e68:	00000613          	li	a2,0
    80006e6c:	00000597          	auipc	a1,0x0
    80006e70:	f9458593          	addi	a1,a1,-108 # 80006e00 <_Z4fja1Pv>
    80006e74:	ffffb097          	auipc	ra,0xffffb
    80006e78:	2e4080e7          	jalr	740(ra) # 80002158 <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80006e7c:	00048513          	mv	a0,s1
    80006e80:	ffffb097          	auipc	ra,0xffffb
    80006e84:	260080e7          	jalr	608(ra) # 800020e0 <_ZN6Thread5startEv>
    t1->ping();
    80006e88:	00048513          	mv	a0,s1
    80006e8c:	ffffb097          	auipc	ra,0xffffb
    80006e90:	32c080e7          	jalr	812(ra) # 800021b8 <_ZN6Thread4pingEv>
    for(int i = 0; i < 20000; i++){
    80006e94:	00000693          	li	a3,0
    80006e98:	0080006f          	j	80006ea0 <_Z7pingModv+0x60>
    80006e9c:	0016869b          	addiw	a3,a3,1
    80006ea0:	000057b7          	lui	a5,0x5
    80006ea4:	e1f78793          	addi	a5,a5,-481 # 4e1f <_entry-0x7fffb1e1>
    80006ea8:	00d7ce63          	blt	a5,a3,80006ec4 <_Z7pingModv+0x84>
        for(int j = 0; j < 20000; j++);
    80006eac:	00000713          	li	a4,0
    80006eb0:	000057b7          	lui	a5,0x5
    80006eb4:	e1f78793          	addi	a5,a5,-481 # 4e1f <_entry-0x7fffb1e1>
    80006eb8:	fee7c2e3          	blt	a5,a4,80006e9c <_Z7pingModv+0x5c>
    80006ebc:	0017071b          	addiw	a4,a4,1
    80006ec0:	ff1ff06f          	j	80006eb0 <_Z7pingModv+0x70>
    }
    Thread::dispatch();
    80006ec4:	ffffb097          	auipc	ra,0xffffb
    80006ec8:	250080e7          	jalr	592(ra) # 80002114 <_ZN6Thread8dispatchEv>
    t1->ping();
    80006ecc:	00048513          	mv	a0,s1
    80006ed0:	ffffb097          	auipc	ra,0xffffb
    80006ed4:	2e8080e7          	jalr	744(ra) # 800021b8 <_ZN6Thread4pingEv>
    Thread::dispatch();
    80006ed8:	ffffb097          	auipc	ra,0xffffb
    80006edc:	23c080e7          	jalr	572(ra) # 80002114 <_ZN6Thread8dispatchEv>
    80006ee0:	01813083          	ld	ra,24(sp)
    80006ee4:	01013403          	ld	s0,16(sp)
    80006ee8:	00813483          	ld	s1,8(sp)
    80006eec:	00013903          	ld	s2,0(sp)
    80006ef0:	02010113          	addi	sp,sp,32
    80006ef4:	00008067          	ret
    80006ef8:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(fja1,nullptr);
    80006efc:	00048513          	mv	a0,s1
    80006f00:	ffffb097          	auipc	ra,0xffffb
    80006f04:	050080e7          	jalr	80(ra) # 80001f50 <_ZdlPv>
    80006f08:	00090513          	mv	a0,s2
    80006f0c:	00009097          	auipc	ra,0x9
    80006f10:	9bc080e7          	jalr	-1604(ra) # 8000f8c8 <_Unwind_Resume>

0000000080006f14 <_ZN10UdjeIzadje7workerAEPv>:
    void run() override{
        workerA(nullptr);
    }
};

void UdjeIzadje::workerA(void* arg){
    80006f14:	fe010113          	addi	sp,sp,-32
    80006f18:	00113c23          	sd	ra,24(sp)
    80006f1c:	00813823          	sd	s0,16(sp)
    80006f20:	00913423          	sd	s1,8(sp)
    80006f24:	02010413          	addi	s0,sp,32
    semP->wait();
    80006f28:	00007517          	auipc	a0,0x7
    80006f2c:	72853503          	ld	a0,1832(a0) # 8000e650 <semP>
    80006f30:	ffffb097          	auipc	ra,0xffffb
    80006f34:	2f4080e7          	jalr	756(ra) # 80002224 <_ZN9Semaphore4waitEv>
    printString("Usao u kriticnu sekciju\n");
    80006f38:	00005517          	auipc	a0,0x5
    80006f3c:	8a050513          	addi	a0,a0,-1888 # 8000b7d8 <CONSOLE_STATUS+0x7c8>
    80006f40:	fffff097          	auipc	ra,0xfffff
    80006f44:	b24080e7          	jalr	-1244(ra) # 80005a64 <_Z11printStringPKc>
    for(int i=0;i<10000;i++){
    80006f48:	00000493          	li	s1,0
    80006f4c:	0100006f          	j	80006f5c <_ZN10UdjeIzadje7workerAEPv+0x48>
        for(int j=0;j<3000;j++);
        thread_dispatch();
    80006f50:	ffffa097          	auipc	ra,0xffffa
    80006f54:	45c080e7          	jalr	1116(ra) # 800013ac <_Z15thread_dispatchv>
    for(int i=0;i<10000;i++){
    80006f58:	0014849b          	addiw	s1,s1,1
    80006f5c:	000027b7          	lui	a5,0x2
    80006f60:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006f64:	0097ce63          	blt	a5,s1,80006f80 <_ZN10UdjeIzadje7workerAEPv+0x6c>
        for(int j=0;j<3000;j++);
    80006f68:	00000713          	li	a4,0
    80006f6c:	000017b7          	lui	a5,0x1
    80006f70:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80006f74:	fce7cee3          	blt	a5,a4,80006f50 <_ZN10UdjeIzadje7workerAEPv+0x3c>
    80006f78:	0017071b          	addiw	a4,a4,1
    80006f7c:	ff1ff06f          	j	80006f6c <_ZN10UdjeIzadje7workerAEPv+0x58>
    }

    semP->signal();
    80006f80:	00007497          	auipc	s1,0x7
    80006f84:	6d048493          	addi	s1,s1,1744 # 8000e650 <semP>
    80006f88:	0004b503          	ld	a0,0(s1)
    80006f8c:	ffffb097          	auipc	ra,0xffffb
    80006f90:	3fc080e7          	jalr	1020(ra) # 80002388 <_ZN9Semaphore6signalEv>
    globS->signal();
    80006f94:	0084b503          	ld	a0,8(s1)
    80006f98:	ffffb097          	auipc	ra,0xffffb
    80006f9c:	3f0080e7          	jalr	1008(ra) # 80002388 <_ZN9Semaphore6signalEv>
    printString("Izasao iz kriticne sekcije\n");
    80006fa0:	00005517          	auipc	a0,0x5
    80006fa4:	85850513          	addi	a0,a0,-1960 # 8000b7f8 <CONSOLE_STATUS+0x7e8>
    80006fa8:	fffff097          	auipc	ra,0xfffff
    80006fac:	abc080e7          	jalr	-1348(ra) # 80005a64 <_Z11printStringPKc>
}
    80006fb0:	01813083          	ld	ra,24(sp)
    80006fb4:	01013403          	ld	s0,16(sp)
    80006fb8:	00813483          	ld	s1,8(sp)
    80006fbc:	02010113          	addi	sp,sp,32
    80006fc0:	00008067          	ret

0000000080006fc4 <_Z13semPriorModifv>:

void semPriorModif(){
    80006fc4:	fe010113          	addi	sp,sp,-32
    80006fc8:	00113c23          	sd	ra,24(sp)
    80006fcc:	00813823          	sd	s0,16(sp)
    80006fd0:	00913423          	sd	s1,8(sp)
    80006fd4:	01213023          	sd	s2,0(sp)
    80006fd8:	02010413          	addi	s0,sp,32
    semP = new Semaphore(5);
    80006fdc:	02000513          	li	a0,32
    80006fe0:	ffffb097          	auipc	ra,0xffffb
    80006fe4:	f20080e7          	jalr	-224(ra) # 80001f00 <_Znwm>
    80006fe8:	00050493          	mv	s1,a0
    80006fec:	00500593          	li	a1,5
    80006ff0:	ffffb097          	auipc	ra,0xffffb
    80006ff4:	1f4080e7          	jalr	500(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80006ff8:	00007797          	auipc	a5,0x7
    80006ffc:	6497bc23          	sd	s1,1624(a5) # 8000e650 <semP>
    semP->turnOnPriorities();
    80007000:	00048513          	mv	a0,s1
    80007004:	ffffb097          	auipc	ra,0xffffb
    80007008:	50c080e7          	jalr	1292(ra) # 80002510 <_ZN9Semaphore16turnOnPrioritiesEv>

    for(int i=0;i<50;i++){
    8000700c:	00000913          	li	s2,0
    80007010:	0280006f          	j	80007038 <_Z13semPriorModifv+0x74>
    UdjeIzadje(){}
    80007014:	00007797          	auipc	a5,0x7
    80007018:	47478793          	addi	a5,a5,1140 # 8000e488 <_ZTV10UdjeIzadje+0x10>
    8000701c:	00f4b023          	sd	a5,0(s1)
        threadsPrior[i] = new UdjeIzadje();
    80007020:	00391713          	slli	a4,s2,0x3
    80007024:	00007797          	auipc	a5,0x7
    80007028:	62c78793          	addi	a5,a5,1580 # 8000e650 <semP>
    8000702c:	00e787b3          	add	a5,a5,a4
    80007030:	0097b823          	sd	s1,16(a5)
    for(int i=0;i<50;i++){
    80007034:	0019091b          	addiw	s2,s2,1
    80007038:	03100793          	li	a5,49
    8000703c:	0327c063          	blt	a5,s2,8000705c <_Z13semPriorModifv+0x98>
        threadsPrior[i] = new UdjeIzadje();
    80007040:	02000513          	li	a0,32
    80007044:	ffffb097          	auipc	ra,0xffffb
    80007048:	ebc080e7          	jalr	-324(ra) # 80001f00 <_Znwm>
    8000704c:	00050493          	mv	s1,a0
    UdjeIzadje(){}
    80007050:	ffffb097          	auipc	ra,0xffffb
    80007054:	134080e7          	jalr	308(ra) # 80002184 <_ZN6ThreadC1Ev>
    80007058:	fbdff06f          	j	80007014 <_Z13semPriorModifv+0x50>
    }
    globS = new Semaphore(0);
    8000705c:	02000513          	li	a0,32
    80007060:	ffffb097          	auipc	ra,0xffffb
    80007064:	ea0080e7          	jalr	-352(ra) # 80001f00 <_Znwm>
    80007068:	00050493          	mv	s1,a0
    8000706c:	00000593          	li	a1,0
    80007070:	ffffb097          	auipc	ra,0xffffb
    80007074:	174080e7          	jalr	372(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    80007078:	00007797          	auipc	a5,0x7
    8000707c:	5e97b023          	sd	s1,1504(a5) # 8000e658 <globS>
    for(int i=0;i<50;i++){
    80007080:	00000493          	li	s1,0
    80007084:	03100793          	li	a5,49
    80007088:	0297c463          	blt	a5,s1,800070b0 <_Z13semPriorModifv+0xec>
        threadsPrior[i]->start();
    8000708c:	00349713          	slli	a4,s1,0x3
    80007090:	00007797          	auipc	a5,0x7
    80007094:	5c078793          	addi	a5,a5,1472 # 8000e650 <semP>
    80007098:	00e787b3          	add	a5,a5,a4
    8000709c:	0107b503          	ld	a0,16(a5)
    800070a0:	ffffb097          	auipc	ra,0xffffb
    800070a4:	040080e7          	jalr	64(ra) # 800020e0 <_ZN6Thread5startEv>
    for(int i=0;i<50;i++){
    800070a8:	0014849b          	addiw	s1,s1,1
    800070ac:	fd9ff06f          	j	80007084 <_Z13semPriorModifv+0xc0>
    }

    for(int i=0;i<50;i++){
    800070b0:	00000493          	li	s1,0
    800070b4:	03100793          	li	a5,49
    800070b8:	0097ce63          	blt	a5,s1,800070d4 <_Z13semPriorModifv+0x110>
        globS->wait();
    800070bc:	00007517          	auipc	a0,0x7
    800070c0:	59c53503          	ld	a0,1436(a0) # 8000e658 <globS>
    800070c4:	ffffb097          	auipc	ra,0xffffb
    800070c8:	160080e7          	jalr	352(ra) # 80002224 <_ZN9Semaphore4waitEv>
    for(int i=0;i<50;i++){
    800070cc:	0014849b          	addiw	s1,s1,1
    800070d0:	fe5ff06f          	j	800070b4 <_Z13semPriorModifv+0xf0>
    }

    delete globS;
    800070d4:	00007517          	auipc	a0,0x7
    800070d8:	58453503          	ld	a0,1412(a0) # 8000e658 <globS>
    800070dc:	00050863          	beqz	a0,800070ec <_Z13semPriorModifv+0x128>
    800070e0:	00053783          	ld	a5,0(a0)
    800070e4:	0087b783          	ld	a5,8(a5)
    800070e8:	000780e7          	jalr	a5
    delete semP;
    800070ec:	00007517          	auipc	a0,0x7
    800070f0:	56453503          	ld	a0,1380(a0) # 8000e650 <semP>
    800070f4:	00050863          	beqz	a0,80007104 <_Z13semPriorModifv+0x140>
    800070f8:	00053783          	ld	a5,0(a0)
    800070fc:	0087b783          	ld	a5,8(a5)
    80007100:	000780e7          	jalr	a5

    80007104:	01813083          	ld	ra,24(sp)
    80007108:	01013403          	ld	s0,16(sp)
    8000710c:	00813483          	ld	s1,8(sp)
    80007110:	00013903          	ld	s2,0(sp)
    80007114:	02010113          	addi	sp,sp,32
    80007118:	00008067          	ret
    8000711c:	00050913          	mv	s2,a0
    semP = new Semaphore(5);
    80007120:	00048513          	mv	a0,s1
    80007124:	ffffb097          	auipc	ra,0xffffb
    80007128:	e2c080e7          	jalr	-468(ra) # 80001f50 <_ZdlPv>
    8000712c:	00090513          	mv	a0,s2
    80007130:	00008097          	auipc	ra,0x8
    80007134:	798080e7          	jalr	1944(ra) # 8000f8c8 <_Unwind_Resume>
    80007138:	00050913          	mv	s2,a0
        threadsPrior[i] = new UdjeIzadje();
    8000713c:	00048513          	mv	a0,s1
    80007140:	ffffb097          	auipc	ra,0xffffb
    80007144:	e10080e7          	jalr	-496(ra) # 80001f50 <_ZdlPv>
    80007148:	00090513          	mv	a0,s2
    8000714c:	00008097          	auipc	ra,0x8
    80007150:	77c080e7          	jalr	1916(ra) # 8000f8c8 <_Unwind_Resume>
    80007154:	00050913          	mv	s2,a0
    globS = new Semaphore(0);
    80007158:	00048513          	mv	a0,s1
    8000715c:	ffffb097          	auipc	ra,0xffffb
    80007160:	df4080e7          	jalr	-524(ra) # 80001f50 <_ZdlPv>
    80007164:	00090513          	mv	a0,s2
    80007168:	00008097          	auipc	ra,0x8
    8000716c:	760080e7          	jalr	1888(ra) # 8000f8c8 <_Unwind_Resume>

0000000080007170 <_ZN10UdjeIzadjeD1Ev>:
class UdjeIzadje : public Thread{
    80007170:	ff010113          	addi	sp,sp,-16
    80007174:	00113423          	sd	ra,8(sp)
    80007178:	00813023          	sd	s0,0(sp)
    8000717c:	01010413          	addi	s0,sp,16
    80007180:	00007797          	auipc	a5,0x7
    80007184:	30878793          	addi	a5,a5,776 # 8000e488 <_ZTV10UdjeIzadje+0x10>
    80007188:	00f53023          	sd	a5,0(a0)
    8000718c:	ffffb097          	auipc	ra,0xffffb
    80007190:	ea8080e7          	jalr	-344(ra) # 80002034 <_ZN6ThreadD1Ev>
    80007194:	00813083          	ld	ra,8(sp)
    80007198:	00013403          	ld	s0,0(sp)
    8000719c:	01010113          	addi	sp,sp,16
    800071a0:	00008067          	ret

00000000800071a4 <_ZN10UdjeIzadjeD0Ev>:
    800071a4:	fe010113          	addi	sp,sp,-32
    800071a8:	00113c23          	sd	ra,24(sp)
    800071ac:	00813823          	sd	s0,16(sp)
    800071b0:	00913423          	sd	s1,8(sp)
    800071b4:	02010413          	addi	s0,sp,32
    800071b8:	00050493          	mv	s1,a0
    800071bc:	00007797          	auipc	a5,0x7
    800071c0:	2cc78793          	addi	a5,a5,716 # 8000e488 <_ZTV10UdjeIzadje+0x10>
    800071c4:	00f53023          	sd	a5,0(a0)
    800071c8:	ffffb097          	auipc	ra,0xffffb
    800071cc:	e6c080e7          	jalr	-404(ra) # 80002034 <_ZN6ThreadD1Ev>
    800071d0:	00048513          	mv	a0,s1
    800071d4:	ffffb097          	auipc	ra,0xffffb
    800071d8:	d7c080e7          	jalr	-644(ra) # 80001f50 <_ZdlPv>
    800071dc:	01813083          	ld	ra,24(sp)
    800071e0:	01013403          	ld	s0,16(sp)
    800071e4:	00813483          	ld	s1,8(sp)
    800071e8:	02010113          	addi	sp,sp,32
    800071ec:	00008067          	ret

00000000800071f0 <_ZN10UdjeIzadje3runEv>:
    void run() override{
    800071f0:	ff010113          	addi	sp,sp,-16
    800071f4:	00113423          	sd	ra,8(sp)
    800071f8:	00813023          	sd	s0,0(sp)
    800071fc:	01010413          	addi	s0,sp,16
        workerA(nullptr);
    80007200:	00000593          	li	a1,0
    80007204:	00000097          	auipc	ra,0x0
    80007208:	d10080e7          	jalr	-752(ra) # 80006f14 <_ZN10UdjeIzadje7workerAEPv>
    }
    8000720c:	00813083          	ld	ra,8(sp)
    80007210:	00013403          	ld	s0,0(sp)
    80007214:	01010113          	addi	sp,sp,16
    80007218:	00008067          	ret

000000008000721c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000721c:	fe010113          	addi	sp,sp,-32
    80007220:	00113c23          	sd	ra,24(sp)
    80007224:	00813823          	sd	s0,16(sp)
    80007228:	00913423          	sd	s1,8(sp)
    8000722c:	01213023          	sd	s2,0(sp)
    80007230:	02010413          	addi	s0,sp,32
    80007234:	00050493          	mv	s1,a0
    80007238:	00058913          	mv	s2,a1
    8000723c:	0015879b          	addiw	a5,a1,1
    80007240:	0007851b          	sext.w	a0,a5
    80007244:	00f4a023          	sw	a5,0(s1)
    80007248:	0004a823          	sw	zero,16(s1)
    8000724c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80007250:	00251513          	slli	a0,a0,0x2
    80007254:	ffffa097          	auipc	ra,0xffffa
    80007258:	fe8080e7          	jalr	-24(ra) # 8000123c <_Z9mem_allocm>
    8000725c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80007260:	00000593          	li	a1,0
    80007264:	02048513          	addi	a0,s1,32
    80007268:	ffffa097          	auipc	ra,0xffffa
    8000726c:	1e0080e7          	jalr	480(ra) # 80001448 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80007270:	00090593          	mv	a1,s2
    80007274:	01848513          	addi	a0,s1,24
    80007278:	ffffa097          	auipc	ra,0xffffa
    8000727c:	1d0080e7          	jalr	464(ra) # 80001448 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80007280:	00100593          	li	a1,1
    80007284:	02848513          	addi	a0,s1,40
    80007288:	ffffa097          	auipc	ra,0xffffa
    8000728c:	1c0080e7          	jalr	448(ra) # 80001448 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80007290:	00100593          	li	a1,1
    80007294:	03048513          	addi	a0,s1,48
    80007298:	ffffa097          	auipc	ra,0xffffa
    8000729c:	1b0080e7          	jalr	432(ra) # 80001448 <_Z8sem_openPP3Semj>
}
    800072a0:	01813083          	ld	ra,24(sp)
    800072a4:	01013403          	ld	s0,16(sp)
    800072a8:	00813483          	ld	s1,8(sp)
    800072ac:	00013903          	ld	s2,0(sp)
    800072b0:	02010113          	addi	sp,sp,32
    800072b4:	00008067          	ret

00000000800072b8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800072b8:	fe010113          	addi	sp,sp,-32
    800072bc:	00113c23          	sd	ra,24(sp)
    800072c0:	00813823          	sd	s0,16(sp)
    800072c4:	00913423          	sd	s1,8(sp)
    800072c8:	01213023          	sd	s2,0(sp)
    800072cc:	02010413          	addi	s0,sp,32
    800072d0:	00050493          	mv	s1,a0
    800072d4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800072d8:	01853503          	ld	a0,24(a0)
    800072dc:	ffffa097          	auipc	ra,0xffffa
    800072e0:	1d0080e7          	jalr	464(ra) # 800014ac <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    800072e4:	0304b503          	ld	a0,48(s1)
    800072e8:	ffffa097          	auipc	ra,0xffffa
    800072ec:	1c4080e7          	jalr	452(ra) # 800014ac <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    800072f0:	0084b783          	ld	a5,8(s1)
    800072f4:	0144a703          	lw	a4,20(s1)
    800072f8:	00271713          	slli	a4,a4,0x2
    800072fc:	00e787b3          	add	a5,a5,a4
    80007300:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80007304:	0144a783          	lw	a5,20(s1)
    80007308:	0017879b          	addiw	a5,a5,1
    8000730c:	0004a703          	lw	a4,0(s1)
    80007310:	02e7e7bb          	remw	a5,a5,a4
    80007314:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80007318:	0304b503          	ld	a0,48(s1)
    8000731c:	ffffa097          	auipc	ra,0xffffa
    80007320:	1c0080e7          	jalr	448(ra) # 800014dc <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80007324:	0204b503          	ld	a0,32(s1)
    80007328:	ffffa097          	auipc	ra,0xffffa
    8000732c:	1b4080e7          	jalr	436(ra) # 800014dc <_Z10sem_signalP3Sem>

}
    80007330:	01813083          	ld	ra,24(sp)
    80007334:	01013403          	ld	s0,16(sp)
    80007338:	00813483          	ld	s1,8(sp)
    8000733c:	00013903          	ld	s2,0(sp)
    80007340:	02010113          	addi	sp,sp,32
    80007344:	00008067          	ret

0000000080007348 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80007348:	fe010113          	addi	sp,sp,-32
    8000734c:	00113c23          	sd	ra,24(sp)
    80007350:	00813823          	sd	s0,16(sp)
    80007354:	00913423          	sd	s1,8(sp)
    80007358:	01213023          	sd	s2,0(sp)
    8000735c:	02010413          	addi	s0,sp,32
    80007360:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80007364:	02053503          	ld	a0,32(a0)
    80007368:	ffffa097          	auipc	ra,0xffffa
    8000736c:	144080e7          	jalr	324(ra) # 800014ac <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80007370:	0284b503          	ld	a0,40(s1)
    80007374:	ffffa097          	auipc	ra,0xffffa
    80007378:	138080e7          	jalr	312(ra) # 800014ac <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    8000737c:	0084b703          	ld	a4,8(s1)
    80007380:	0104a783          	lw	a5,16(s1)
    80007384:	00279693          	slli	a3,a5,0x2
    80007388:	00d70733          	add	a4,a4,a3
    8000738c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80007390:	0017879b          	addiw	a5,a5,1
    80007394:	0004a703          	lw	a4,0(s1)
    80007398:	02e7e7bb          	remw	a5,a5,a4
    8000739c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800073a0:	0284b503          	ld	a0,40(s1)
    800073a4:	ffffa097          	auipc	ra,0xffffa
    800073a8:	138080e7          	jalr	312(ra) # 800014dc <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    800073ac:	0184b503          	ld	a0,24(s1)
    800073b0:	ffffa097          	auipc	ra,0xffffa
    800073b4:	12c080e7          	jalr	300(ra) # 800014dc <_Z10sem_signalP3Sem>

    return ret;
}
    800073b8:	00090513          	mv	a0,s2
    800073bc:	01813083          	ld	ra,24(sp)
    800073c0:	01013403          	ld	s0,16(sp)
    800073c4:	00813483          	ld	s1,8(sp)
    800073c8:	00013903          	ld	s2,0(sp)
    800073cc:	02010113          	addi	sp,sp,32
    800073d0:	00008067          	ret

00000000800073d4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800073d4:	fe010113          	addi	sp,sp,-32
    800073d8:	00113c23          	sd	ra,24(sp)
    800073dc:	00813823          	sd	s0,16(sp)
    800073e0:	00913423          	sd	s1,8(sp)
    800073e4:	01213023          	sd	s2,0(sp)
    800073e8:	02010413          	addi	s0,sp,32
    800073ec:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800073f0:	02853503          	ld	a0,40(a0)
    800073f4:	ffffa097          	auipc	ra,0xffffa
    800073f8:	0b8080e7          	jalr	184(ra) # 800014ac <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800073fc:	0304b503          	ld	a0,48(s1)
    80007400:	ffffa097          	auipc	ra,0xffffa
    80007404:	0ac080e7          	jalr	172(ra) # 800014ac <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80007408:	0144a783          	lw	a5,20(s1)
    8000740c:	0104a903          	lw	s2,16(s1)
    80007410:	0327ce63          	blt	a5,s2,8000744c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80007414:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80007418:	0304b503          	ld	a0,48(s1)
    8000741c:	ffffa097          	auipc	ra,0xffffa
    80007420:	0c0080e7          	jalr	192(ra) # 800014dc <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80007424:	0284b503          	ld	a0,40(s1)
    80007428:	ffffa097          	auipc	ra,0xffffa
    8000742c:	0b4080e7          	jalr	180(ra) # 800014dc <_Z10sem_signalP3Sem>

    return ret;
}
    80007430:	00090513          	mv	a0,s2
    80007434:	01813083          	ld	ra,24(sp)
    80007438:	01013403          	ld	s0,16(sp)
    8000743c:	00813483          	ld	s1,8(sp)
    80007440:	00013903          	ld	s2,0(sp)
    80007444:	02010113          	addi	sp,sp,32
    80007448:	00008067          	ret
        ret = cap - head + tail;
    8000744c:	0004a703          	lw	a4,0(s1)
    80007450:	4127093b          	subw	s2,a4,s2
    80007454:	00f9093b          	addw	s2,s2,a5
    80007458:	fc1ff06f          	j	80007418 <_ZN6Buffer6getCntEv+0x44>

000000008000745c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000745c:	fe010113          	addi	sp,sp,-32
    80007460:	00113c23          	sd	ra,24(sp)
    80007464:	00813823          	sd	s0,16(sp)
    80007468:	00913423          	sd	s1,8(sp)
    8000746c:	02010413          	addi	s0,sp,32
    80007470:	00050493          	mv	s1,a0
    putc('\n');
    80007474:	00a00513          	li	a0,10
    80007478:	ffffa097          	auipc	ra,0xffffa
    8000747c:	124080e7          	jalr	292(ra) # 8000159c <_Z4putcc>
    printString("Buffer deleted!\n");
    80007480:	00004517          	auipc	a0,0x4
    80007484:	fa850513          	addi	a0,a0,-88 # 8000b428 <CONSOLE_STATUS+0x418>
    80007488:	ffffe097          	auipc	ra,0xffffe
    8000748c:	5dc080e7          	jalr	1500(ra) # 80005a64 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80007490:	00048513          	mv	a0,s1
    80007494:	00000097          	auipc	ra,0x0
    80007498:	f40080e7          	jalr	-192(ra) # 800073d4 <_ZN6Buffer6getCntEv>
    8000749c:	02a05c63          	blez	a0,800074d4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800074a0:	0084b783          	ld	a5,8(s1)
    800074a4:	0104a703          	lw	a4,16(s1)
    800074a8:	00271713          	slli	a4,a4,0x2
    800074ac:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800074b0:	0007c503          	lbu	a0,0(a5)
    800074b4:	ffffa097          	auipc	ra,0xffffa
    800074b8:	0e8080e7          	jalr	232(ra) # 8000159c <_Z4putcc>
        head = (head + 1) % cap;
    800074bc:	0104a783          	lw	a5,16(s1)
    800074c0:	0017879b          	addiw	a5,a5,1
    800074c4:	0004a703          	lw	a4,0(s1)
    800074c8:	02e7e7bb          	remw	a5,a5,a4
    800074cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800074d0:	fc1ff06f          	j	80007490 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800074d4:	02100513          	li	a0,33
    800074d8:	ffffa097          	auipc	ra,0xffffa
    800074dc:	0c4080e7          	jalr	196(ra) # 8000159c <_Z4putcc>
    putc('\n');
    800074e0:	00a00513          	li	a0,10
    800074e4:	ffffa097          	auipc	ra,0xffffa
    800074e8:	0b8080e7          	jalr	184(ra) # 8000159c <_Z4putcc>
    mem_free(buffer);
    800074ec:	0084b503          	ld	a0,8(s1)
    800074f0:	ffffa097          	auipc	ra,0xffffa
    800074f4:	d88080e7          	jalr	-632(ra) # 80001278 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800074f8:	0204b503          	ld	a0,32(s1)
    800074fc:	ffffa097          	auipc	ra,0xffffa
    80007500:	f80080e7          	jalr	-128(ra) # 8000147c <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80007504:	0184b503          	ld	a0,24(s1)
    80007508:	ffffa097          	auipc	ra,0xffffa
    8000750c:	f74080e7          	jalr	-140(ra) # 8000147c <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80007510:	0304b503          	ld	a0,48(s1)
    80007514:	ffffa097          	auipc	ra,0xffffa
    80007518:	f68080e7          	jalr	-152(ra) # 8000147c <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    8000751c:	0284b503          	ld	a0,40(s1)
    80007520:	ffffa097          	auipc	ra,0xffffa
    80007524:	f5c080e7          	jalr	-164(ra) # 8000147c <_Z9sem_closeP3Sem>
}
    80007528:	01813083          	ld	ra,24(sp)
    8000752c:	01013403          	ld	s0,16(sp)
    80007530:	00813483          	ld	s1,8(sp)
    80007534:	02010113          	addi	sp,sp,32
    80007538:	00008067          	ret

000000008000753c <_ZL11workerBodyCPv>:
    }
    printString("B finished!\n");
    finishedB = true;
}

static void workerBodyC(void* arg) {
    8000753c:	fe010113          	addi	sp,sp,-32
    80007540:	00113c23          	sd	ra,24(sp)
    80007544:	00813823          	sd	s0,16(sp)
    80007548:	00913423          	sd	s1,8(sp)
    8000754c:	01213023          	sd	s2,0(sp)
    80007550:	02010413          	addi	s0,sp,32

    for (uint64 i = 0; i < 10; i++) {
    80007554:	00000493          	li	s1,0
    80007558:	0380006f          	j	80007590 <_ZL11workerBodyCPv+0x54>
        int tmp = getThreadId();
        printString("B: "); printInt(tmp); printString(" \n");
        for (uint64 j = 0; j < 10000; j++) {
    8000755c:	00168693          	addi	a3,a3,1
    80007560:	000027b7          	lui	a5,0x2
    80007564:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80007568:	00d7ee63          	bltu	a5,a3,80007584 <_ZL11workerBodyCPv+0x48>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000756c:	00000713          	li	a4,0
    80007570:	000077b7          	lui	a5,0x7
    80007574:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80007578:	fee7e2e3          	bltu	a5,a4,8000755c <_ZL11workerBodyCPv+0x20>
    8000757c:	00170713          	addi	a4,a4,1
    80007580:	ff1ff06f          	j	80007570 <_ZL11workerBodyCPv+0x34>

        }
        thread_dispatch();
    80007584:	ffffa097          	auipc	ra,0xffffa
    80007588:	e28080e7          	jalr	-472(ra) # 800013ac <_Z15thread_dispatchv>
    for (uint64 i = 0; i < 10; i++) {
    8000758c:	00148493          	addi	s1,s1,1
    80007590:	00900793          	li	a5,9
    80007594:	0497e663          	bltu	a5,s1,800075e0 <_ZL11workerBodyCPv+0xa4>
        int tmp = getThreadId();
    80007598:	ffffa097          	auipc	ra,0xffffa
    8000759c:	048080e7          	jalr	72(ra) # 800015e0 <_Z11getThreadIdv>
    800075a0:	00050913          	mv	s2,a0
        printString("B: "); printInt(tmp); printString(" \n");
    800075a4:	00004517          	auipc	a0,0x4
    800075a8:	27450513          	addi	a0,a0,628 # 8000b818 <CONSOLE_STATUS+0x808>
    800075ac:	ffffe097          	auipc	ra,0xffffe
    800075b0:	4b8080e7          	jalr	1208(ra) # 80005a64 <_Z11printStringPKc>
    800075b4:	00000613          	li	a2,0
    800075b8:	00a00593          	li	a1,10
    800075bc:	00090513          	mv	a0,s2
    800075c0:	ffffe097          	auipc	ra,0xffffe
    800075c4:	654080e7          	jalr	1620(ra) # 80005c14 <_Z8printIntiii>
    800075c8:	00004517          	auipc	a0,0x4
    800075cc:	aa850513          	addi	a0,a0,-1368 # 8000b070 <CONSOLE_STATUS+0x60>
    800075d0:	ffffe097          	auipc	ra,0xffffe
    800075d4:	494080e7          	jalr	1172(ra) # 80005a64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800075d8:	00000693          	li	a3,0
    800075dc:	f85ff06f          	j	80007560 <_ZL11workerBodyCPv+0x24>
    }
    printString("C finished!\n");
    800075e0:	00004517          	auipc	a0,0x4
    800075e4:	1b850513          	addi	a0,a0,440 # 8000b798 <CONSOLE_STATUS+0x788>
    800075e8:	ffffe097          	auipc	ra,0xffffe
    800075ec:	47c080e7          	jalr	1148(ra) # 80005a64 <_Z11printStringPKc>
    finishedC = true;
    800075f0:	00100793          	li	a5,1
    800075f4:	00007717          	auipc	a4,0x7
    800075f8:	1ef70e23          	sb	a5,508(a4) # 8000e7f0 <_ZL9finishedC>

}
    800075fc:	01813083          	ld	ra,24(sp)
    80007600:	01013403          	ld	s0,16(sp)
    80007604:	00813483          	ld	s1,8(sp)
    80007608:	00013903          	ld	s2,0(sp)
    8000760c:	02010113          	addi	sp,sp,32
    80007610:	00008067          	ret

0000000080007614 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80007614:	fe010113          	addi	sp,sp,-32
    80007618:	00113c23          	sd	ra,24(sp)
    8000761c:	00813823          	sd	s0,16(sp)
    80007620:	00913423          	sd	s1,8(sp)
    80007624:	01213023          	sd	s2,0(sp)
    80007628:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000762c:	00000493          	li	s1,0
    80007630:	0380006f          	j	80007668 <_ZL11workerBodyBPv+0x54>
        for (uint64 j = 0; j < 10000; j++) {
    80007634:	00168693          	addi	a3,a3,1
    80007638:	000027b7          	lui	a5,0x2
    8000763c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80007640:	00d7ee63          	bltu	a5,a3,8000765c <_ZL11workerBodyBPv+0x48>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80007644:	00000713          	li	a4,0
    80007648:	000077b7          	lui	a5,0x7
    8000764c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80007650:	fee7e2e3          	bltu	a5,a4,80007634 <_ZL11workerBodyBPv+0x20>
    80007654:	00170713          	addi	a4,a4,1
    80007658:	ff1ff06f          	j	80007648 <_ZL11workerBodyBPv+0x34>
        thread_dispatch();
    8000765c:	ffffa097          	auipc	ra,0xffffa
    80007660:	d50080e7          	jalr	-688(ra) # 800013ac <_Z15thread_dispatchv>
    for (uint64 i = 0; i < 10; i++) {
    80007664:	00148493          	addi	s1,s1,1
    80007668:	00900793          	li	a5,9
    8000766c:	0497e663          	bltu	a5,s1,800076b8 <_ZL11workerBodyBPv+0xa4>
        int tmp = getThreadId();
    80007670:	ffffa097          	auipc	ra,0xffffa
    80007674:	f70080e7          	jalr	-144(ra) # 800015e0 <_Z11getThreadIdv>
    80007678:	00050913          	mv	s2,a0
        printString("B: "); printInt(tmp); printString(" \n");
    8000767c:	00004517          	auipc	a0,0x4
    80007680:	19c50513          	addi	a0,a0,412 # 8000b818 <CONSOLE_STATUS+0x808>
    80007684:	ffffe097          	auipc	ra,0xffffe
    80007688:	3e0080e7          	jalr	992(ra) # 80005a64 <_Z11printStringPKc>
    8000768c:	00000613          	li	a2,0
    80007690:	00a00593          	li	a1,10
    80007694:	00090513          	mv	a0,s2
    80007698:	ffffe097          	auipc	ra,0xffffe
    8000769c:	57c080e7          	jalr	1404(ra) # 80005c14 <_Z8printIntiii>
    800076a0:	00004517          	auipc	a0,0x4
    800076a4:	9d050513          	addi	a0,a0,-1584 # 8000b070 <CONSOLE_STATUS+0x60>
    800076a8:	ffffe097          	auipc	ra,0xffffe
    800076ac:	3bc080e7          	jalr	956(ra) # 80005a64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800076b0:	00000693          	li	a3,0
    800076b4:	f85ff06f          	j	80007638 <_ZL11workerBodyBPv+0x24>
    printString("B finished!\n");
    800076b8:	00004517          	auipc	a0,0x4
    800076bc:	c7050513          	addi	a0,a0,-912 # 8000b328 <CONSOLE_STATUS+0x318>
    800076c0:	ffffe097          	auipc	ra,0xffffe
    800076c4:	3a4080e7          	jalr	932(ra) # 80005a64 <_Z11printStringPKc>
    finishedB = true;
    800076c8:	00100793          	li	a5,1
    800076cc:	00007717          	auipc	a4,0x7
    800076d0:	12f702a3          	sb	a5,293(a4) # 8000e7f1 <_ZL9finishedB>
}
    800076d4:	01813083          	ld	ra,24(sp)
    800076d8:	01013403          	ld	s0,16(sp)
    800076dc:	00813483          	ld	s1,8(sp)
    800076e0:	00013903          	ld	s2,0(sp)
    800076e4:	02010113          	addi	sp,sp,32
    800076e8:	00008067          	ret

00000000800076ec <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800076ec:	fe010113          	addi	sp,sp,-32
    800076f0:	00113c23          	sd	ra,24(sp)
    800076f4:	00813823          	sd	s0,16(sp)
    800076f8:	00913423          	sd	s1,8(sp)
    800076fc:	01213023          	sd	s2,0(sp)
    80007700:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80007704:	00000493          	li	s1,0
    80007708:	0380006f          	j	80007740 <_ZL11workerBodyAPv+0x54>
        for (uint64 j = 0; j < 10000; j++) {
    8000770c:	00168693          	addi	a3,a3,1
    80007710:	000027b7          	lui	a5,0x2
    80007714:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80007718:	00d7ee63          	bltu	a5,a3,80007734 <_ZL11workerBodyAPv+0x48>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000771c:	00000713          	li	a4,0
    80007720:	000077b7          	lui	a5,0x7
    80007724:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80007728:	fee7e2e3          	bltu	a5,a4,8000770c <_ZL11workerBodyAPv+0x20>
    8000772c:	00170713          	addi	a4,a4,1
    80007730:	ff1ff06f          	j	80007720 <_ZL11workerBodyAPv+0x34>
        thread_dispatch();
    80007734:	ffffa097          	auipc	ra,0xffffa
    80007738:	c78080e7          	jalr	-904(ra) # 800013ac <_Z15thread_dispatchv>
    for (uint64 i = 0; i < 10; i++) {
    8000773c:	00148493          	addi	s1,s1,1
    80007740:	00900793          	li	a5,9
    80007744:	0497e663          	bltu	a5,s1,80007790 <_ZL11workerBodyAPv+0xa4>
        int tmp = getThreadId();
    80007748:	ffffa097          	auipc	ra,0xffffa
    8000774c:	e98080e7          	jalr	-360(ra) # 800015e0 <_Z11getThreadIdv>
    80007750:	00050913          	mv	s2,a0
        printString("A: "); printInt(tmp); printString(" \n");
    80007754:	00004517          	auipc	a0,0x4
    80007758:	0cc50513          	addi	a0,a0,204 # 8000b820 <CONSOLE_STATUS+0x810>
    8000775c:	ffffe097          	auipc	ra,0xffffe
    80007760:	308080e7          	jalr	776(ra) # 80005a64 <_Z11printStringPKc>
    80007764:	00000613          	li	a2,0
    80007768:	00a00593          	li	a1,10
    8000776c:	00090513          	mv	a0,s2
    80007770:	ffffe097          	auipc	ra,0xffffe
    80007774:	4a4080e7          	jalr	1188(ra) # 80005c14 <_Z8printIntiii>
    80007778:	00004517          	auipc	a0,0x4
    8000777c:	8f850513          	addi	a0,a0,-1800 # 8000b070 <CONSOLE_STATUS+0x60>
    80007780:	ffffe097          	auipc	ra,0xffffe
    80007784:	2e4080e7          	jalr	740(ra) # 80005a64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80007788:	00000693          	li	a3,0
    8000778c:	f85ff06f          	j	80007710 <_ZL11workerBodyAPv+0x24>
    printString("A finished!\n");
    80007790:	00004517          	auipc	a0,0x4
    80007794:	b8050513          	addi	a0,a0,-1152 # 8000b310 <CONSOLE_STATUS+0x300>
    80007798:	ffffe097          	auipc	ra,0xffffe
    8000779c:	2cc080e7          	jalr	716(ra) # 80005a64 <_Z11printStringPKc>
    finishedA = true;
    800077a0:	00100793          	li	a5,1
    800077a4:	00007717          	auipc	a4,0x7
    800077a8:	04f70723          	sb	a5,78(a4) # 8000e7f2 <_ZL9finishedA>
}
    800077ac:	01813083          	ld	ra,24(sp)
    800077b0:	01013403          	ld	s0,16(sp)
    800077b4:	00813483          	ld	s1,8(sp)
    800077b8:	00013903          	ld	s2,0(sp)
    800077bc:	02010113          	addi	sp,sp,32
    800077c0:	00008067          	ret

00000000800077c4 <_Z14getThreadIdModv>:

void getThreadIdMod(){
    800077c4:	fd010113          	addi	sp,sp,-48
    800077c8:	02113423          	sd	ra,40(sp)
    800077cc:	02813023          	sd	s0,32(sp)
    800077d0:	03010413          	addi	s0,sp,48
    thread_t threads[3];
    thread_create(&threads[0], workerBodyA, nullptr);
    800077d4:	00000613          	li	a2,0
    800077d8:	00000597          	auipc	a1,0x0
    800077dc:	f1458593          	addi	a1,a1,-236 # 800076ec <_ZL11workerBodyAPv>
    800077e0:	fd840513          	addi	a0,s0,-40
    800077e4:	ffffa097          	auipc	ra,0xffffa
    800077e8:	b48080e7          	jalr	-1208(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800077ec:	00004517          	auipc	a0,0x4
    800077f0:	bb450513          	addi	a0,a0,-1100 # 8000b3a0 <CONSOLE_STATUS+0x390>
    800077f4:	ffffe097          	auipc	ra,0xffffe
    800077f8:	270080e7          	jalr	624(ra) # 80005a64 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800077fc:	00000613          	li	a2,0
    80007800:	00000597          	auipc	a1,0x0
    80007804:	e1458593          	addi	a1,a1,-492 # 80007614 <_ZL11workerBodyBPv>
    80007808:	fe040513          	addi	a0,s0,-32
    8000780c:	ffffa097          	auipc	ra,0xffffa
    80007810:	b20080e7          	jalr	-1248(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80007814:	00004517          	auipc	a0,0x4
    80007818:	ba450513          	addi	a0,a0,-1116 # 8000b3b8 <CONSOLE_STATUS+0x3a8>
    8000781c:	ffffe097          	auipc	ra,0xffffe
    80007820:	248080e7          	jalr	584(ra) # 80005a64 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80007824:	00000613          	li	a2,0
    80007828:	00000597          	auipc	a1,0x0
    8000782c:	d1458593          	addi	a1,a1,-748 # 8000753c <_ZL11workerBodyCPv>
    80007830:	fe840513          	addi	a0,s0,-24
    80007834:	ffffa097          	auipc	ra,0xffffa
    80007838:	af8080e7          	jalr	-1288(ra) # 8000132c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000783c:	00004517          	auipc	a0,0x4
    80007840:	b9450513          	addi	a0,a0,-1132 # 8000b3d0 <CONSOLE_STATUS+0x3c0>
    80007844:	ffffe097          	auipc	ra,0xffffe
    80007848:	220080e7          	jalr	544(ra) # 80005a64 <_Z11printStringPKc>
    8000784c:	00c0006f          	j	80007858 <_Z14getThreadIdModv+0x94>

    while (!(finishedA && finishedB && finishedC)) {
        thread_dispatch();
    80007850:	ffffa097          	auipc	ra,0xffffa
    80007854:	b5c080e7          	jalr	-1188(ra) # 800013ac <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC)) {
    80007858:	00007797          	auipc	a5,0x7
    8000785c:	f9a7c783          	lbu	a5,-102(a5) # 8000e7f2 <_ZL9finishedA>
    80007860:	fe0788e3          	beqz	a5,80007850 <_Z14getThreadIdModv+0x8c>
    80007864:	00007797          	auipc	a5,0x7
    80007868:	f8d7c783          	lbu	a5,-115(a5) # 8000e7f1 <_ZL9finishedB>
    8000786c:	fe0782e3          	beqz	a5,80007850 <_Z14getThreadIdModv+0x8c>
    80007870:	00007797          	auipc	a5,0x7
    80007874:	f807c783          	lbu	a5,-128(a5) # 8000e7f0 <_ZL9finishedC>
    80007878:	fc078ce3          	beqz	a5,80007850 <_Z14getThreadIdModv+0x8c>
    }
    8000787c:	02813083          	ld	ra,40(sp)
    80007880:	02013403          	ld	s0,32(sp)
    80007884:	03010113          	addi	sp,sp,48
    80007888:	00008067          	ret

000000008000788c <_ZN7Matrica9mnozenjeMEPv>:
    int* buff;
    Semaphore* mutex;
    Semaphore* doneRows;
};

void Matrica::mnozenjeM(void *arg) {
    8000788c:	fe010113          	addi	sp,sp,-32
    80007890:	00113c23          	sd	ra,24(sp)
    80007894:	00813823          	sd	s0,16(sp)
    80007898:	00913423          	sd	s1,8(sp)
    8000789c:	01213023          	sd	s2,0(sp)
    800078a0:	02010413          	addi	s0,sp,32
    800078a4:	00050493          	mv	s1,a0
    int sum=0;
    for(int i=0;i<this->m;i++)
    800078a8:	00000793          	li	a5,0
    int sum=0;
    800078ac:	00000913          	li	s2,0
    for(int i=0;i<this->m;i++)
    800078b0:	0284a703          	lw	a4,40(s1)
    800078b4:	02e7d063          	bge	a5,a4,800078d4 <_ZN7Matrica9mnozenjeMEPv+0x48>
    {
        sum+=row[i];
    800078b8:	0204b703          	ld	a4,32(s1)
    800078bc:	00279693          	slli	a3,a5,0x2
    800078c0:	00d70733          	add	a4,a4,a3
    800078c4:	00072703          	lw	a4,0(a4)
    800078c8:	0127093b          	addw	s2,a4,s2
    for(int i=0;i<this->m;i++)
    800078cc:	0017879b          	addiw	a5,a5,1
    800078d0:	fe1ff06f          	j	800078b0 <_ZN7Matrica9mnozenjeMEPv+0x24>
    }
    printString("Sum of row is: ");
    800078d4:	00004517          	auipc	a0,0x4
    800078d8:	f5450513          	addi	a0,a0,-172 # 8000b828 <CONSOLE_STATUS+0x818>
    800078dc:	ffffe097          	auipc	ra,0xffffe
    800078e0:	188080e7          	jalr	392(ra) # 80005a64 <_Z11printStringPKc>
    printInt(sum);
    800078e4:	00000613          	li	a2,0
    800078e8:	00a00593          	li	a1,10
    800078ec:	00090513          	mv	a0,s2
    800078f0:	ffffe097          	auipc	ra,0xffffe
    800078f4:	324080e7          	jalr	804(ra) # 80005c14 <_Z8printIntiii>
    printString("\n");
    800078f8:	00004517          	auipc	a0,0x4
    800078fc:	cb850513          	addi	a0,a0,-840 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80007900:	ffffe097          	auipc	ra,0xffffe
    80007904:	164080e7          	jalr	356(ra) # 80005a64 <_Z11printStringPKc>
    mutex->wait();
    80007908:	0384b503          	ld	a0,56(s1)
    8000790c:	ffffb097          	auipc	ra,0xffffb
    80007910:	918080e7          	jalr	-1768(ra) # 80002224 <_ZN9Semaphore4waitEv>
    *this->buff+=sum;
    80007914:	0304b703          	ld	a4,48(s1)
    80007918:	00072783          	lw	a5,0(a4)
    8000791c:	0127893b          	addw	s2,a5,s2
    80007920:	01272023          	sw	s2,0(a4)
    mutex->signal();
    80007924:	0384b503          	ld	a0,56(s1)
    80007928:	ffffb097          	auipc	ra,0xffffb
    8000792c:	a60080e7          	jalr	-1440(ra) # 80002388 <_ZN9Semaphore6signalEv>
    doneRows->signal();
    80007930:	0404b503          	ld	a0,64(s1)
    80007934:	ffffb097          	auipc	ra,0xffffb
    80007938:	a54080e7          	jalr	-1452(ra) # 80002388 <_ZN9Semaphore6signalEv>
}
    8000793c:	01813083          	ld	ra,24(sp)
    80007940:	01013403          	ld	s0,16(sp)
    80007944:	00813483          	ld	s1,8(sp)
    80007948:	00013903          	ld	s2,0(sp)
    8000794c:	02010113          	addi	sp,sp,32
    80007950:	00008067          	ret

0000000080007954 <_Z11matricaMod1v>:

void matricaMod1(){
    80007954:	f9010113          	addi	sp,sp,-112
    80007958:	06113423          	sd	ra,104(sp)
    8000795c:	06813023          	sd	s0,96(sp)
    80007960:	04913c23          	sd	s1,88(sp)
    80007964:	05213823          	sd	s2,80(sp)
    80007968:	05313423          	sd	s3,72(sp)
    8000796c:	05413023          	sd	s4,64(sp)
    80007970:	03513c23          	sd	s5,56(sp)
    80007974:	03613823          	sd	s6,48(sp)
    80007978:	03713423          	sd	s7,40(sp)
    8000797c:	03813023          	sd	s8,32(sp)
    80007980:	01913c23          	sd	s9,24(sp)
    80007984:	07010413          	addi	s0,sp,112

    char c;
    int n=0;
    Semaphore* mutex = new Semaphore(1);
    80007988:	02000513          	li	a0,32
    8000798c:	ffffa097          	auipc	ra,0xffffa
    80007990:	574080e7          	jalr	1396(ra) # 80001f00 <_Znwm>
    80007994:	00050b93          	mv	s7,a0
    80007998:	00100593          	li	a1,1
    8000799c:	ffffb097          	auipc	ra,0xffffb
    800079a0:	848080e7          	jalr	-1976(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    Semaphore* doneRows = new Semaphore(0);
    800079a4:	02000513          	li	a0,32
    800079a8:	ffffa097          	auipc	ra,0xffffa
    800079ac:	558080e7          	jalr	1368(ra) # 80001f00 <_Znwm>
    800079b0:	00050b13          	mv	s6,a0
    800079b4:	00000593          	li	a1,0
    800079b8:	ffffb097          	auipc	ra,0xffffb
    800079bc:	82c080e7          	jalr	-2004(ra) # 800021e4 <_ZN9SemaphoreC1Ej>

    printString("Unesi broj vrsta i kolona matrice \n");
    800079c0:	00004517          	auipc	a0,0x4
    800079c4:	e7850513          	addi	a0,a0,-392 # 8000b838 <CONSOLE_STATUS+0x828>
    800079c8:	ffffe097          	auipc	ra,0xffffe
    800079cc:	09c080e7          	jalr	156(ra) # 80005a64 <_Z11printStringPKc>
    int m=0;
    800079d0:	00000913          	li	s2,0
    while(c=getc(), (c>='0' && c<='9')){
    800079d4:	ffffa097          	auipc	ra,0xffffa
    800079d8:	b9c080e7          	jalr	-1124(ra) # 80001570 <_Z4getcv>
    800079dc:	fd05079b          	addiw	a5,a0,-48
    800079e0:	0ff7f793          	andi	a5,a5,255
    800079e4:	00900713          	li	a4,9
    800079e8:	00f76e63          	bltu	a4,a5,80007a04 <_Z11matricaMod1v+0xb0>
        m = m*10 + c -'0';
    800079ec:	0029179b          	slliw	a5,s2,0x2
    800079f0:	0127893b          	addw	s2,a5,s2
    800079f4:	0019191b          	slliw	s2,s2,0x1
    800079f8:	00a9093b          	addw	s2,s2,a0
    800079fc:	fd09091b          	addiw	s2,s2,-48
    while(c=getc(), (c>='0' && c<='9')){
    80007a00:	fd5ff06f          	j	800079d4 <_Z11matricaMod1v+0x80>
    int n=0;
    80007a04:	00000a93          	li	s5,0
    }
    while(c=getc(), (c>='0' && c<='9')){
    80007a08:	ffffa097          	auipc	ra,0xffffa
    80007a0c:	b68080e7          	jalr	-1176(ra) # 80001570 <_Z4getcv>
    80007a10:	fd05079b          	addiw	a5,a0,-48
    80007a14:	0ff7f793          	andi	a5,a5,255
    80007a18:	00900713          	li	a4,9
    80007a1c:	00f76e63          	bltu	a4,a5,80007a38 <_Z11matricaMod1v+0xe4>
        n = n*10 + c -'0';
    80007a20:	002a979b          	slliw	a5,s5,0x2
    80007a24:	01578abb          	addw	s5,a5,s5
    80007a28:	001a9a9b          	slliw	s5,s5,0x1
    80007a2c:	00aa8abb          	addw	s5,s5,a0
    80007a30:	fd0a8a9b          	addiw	s5,s5,-48
    while(c=getc(), (c>='0' && c<='9')){
    80007a34:	fd5ff06f          	j	80007a08 <_Z11matricaMod1v+0xb4>
    }
    int* matrix = (int*) mem_alloc(n*m*sizeof(int));//linearizovana
    80007a38:	032a853b          	mulw	a0,s5,s2
    80007a3c:	00251513          	slli	a0,a0,0x2
    80007a40:	ffff9097          	auipc	ra,0xffff9
    80007a44:	7fc080e7          	jalr	2044(ra) # 8000123c <_Z9mem_allocm>
    80007a48:	00050a13          	mv	s4,a0
    printString("Unesi vrednosti matrice\n");
    80007a4c:	00004517          	auipc	a0,0x4
    80007a50:	e1450513          	addi	a0,a0,-492 # 8000b860 <CONSOLE_STATUS+0x850>
    80007a54:	ffffe097          	auipc	ra,0xffffe
    80007a58:	010080e7          	jalr	16(ra) # 80005a64 <_Z11printStringPKc>
    for(int i=0;i<n;i++){
    80007a5c:	00000993          	li	s3,0
    80007a60:	0580006f          	j	80007ab8 <_Z11matricaMod1v+0x164>
        for(int j=0;j<m;j++){
            int value=0;
            while(c=getc(),(c>='0' && c<='9')){
                value = value *10 + c-'0';
            }
            matrix[i*m+j]=value;
    80007a64:	033907bb          	mulw	a5,s2,s3
    80007a68:	009787bb          	addw	a5,a5,s1
    80007a6c:	00279793          	slli	a5,a5,0x2
    80007a70:	00fa07b3          	add	a5,s4,a5
    80007a74:	0187a023          	sw	s8,0(a5)
        for(int j=0;j<m;j++){
    80007a78:	0014849b          	addiw	s1,s1,1
    80007a7c:	0324dc63          	bge	s1,s2,80007ab4 <_Z11matricaMod1v+0x160>
            int value=0;
    80007a80:	00000c13          	li	s8,0
            while(c=getc(),(c>='0' && c<='9')){
    80007a84:	ffffa097          	auipc	ra,0xffffa
    80007a88:	aec080e7          	jalr	-1300(ra) # 80001570 <_Z4getcv>
    80007a8c:	fd05079b          	addiw	a5,a0,-48
    80007a90:	0ff7f793          	andi	a5,a5,255
    80007a94:	00900713          	li	a4,9
    80007a98:	fcf766e3          	bltu	a4,a5,80007a64 <_Z11matricaMod1v+0x110>
                value = value *10 + c-'0';
    80007a9c:	002c179b          	slliw	a5,s8,0x2
    80007aa0:	018787bb          	addw	a5,a5,s8
    80007aa4:	0017979b          	slliw	a5,a5,0x1
    80007aa8:	00a7853b          	addw	a0,a5,a0
    80007aac:	fd050c1b          	addiw	s8,a0,-48
            while(c=getc(),(c>='0' && c<='9')){
    80007ab0:	fd5ff06f          	j	80007a84 <_Z11matricaMod1v+0x130>
    for(int i=0;i<n;i++){
    80007ab4:	0019899b          	addiw	s3,s3,1
    80007ab8:	0159d663          	bge	s3,s5,80007ac4 <_Z11matricaMod1v+0x170>
        for(int j=0;j<m;j++){
    80007abc:	00000493          	li	s1,0
    80007ac0:	fbdff06f          	j	80007a7c <_Z11matricaMod1v+0x128>
        }
    }
    Thread** threads = (Thread**) mem_alloc(n*sizeof (Thread*));
    80007ac4:	003a9513          	slli	a0,s5,0x3
    80007ac8:	ffff9097          	auipc	ra,0xffff9
    80007acc:	774080e7          	jalr	1908(ra) # 8000123c <_Z9mem_allocm>
    80007ad0:	00050c93          	mv	s9,a0
    int buffer = 0;
    80007ad4:	f8042e23          	sw	zero,-100(s0)
    for(int i=0;i<n;i++){
    80007ad8:	00000c13          	li	s8,0
    80007adc:	0380006f          	j	80007b14 <_Z11matricaMod1v+0x1c0>
    , doneRows(doneR) {}
    80007ae0:	00007797          	auipc	a5,0x7
    80007ae4:	9d078793          	addi	a5,a5,-1584 # 8000e4b0 <_ZTV7Matrica+0x10>
    80007ae8:	00f4b023          	sd	a5,0(s1)
    80007aec:	0334b023          	sd	s3,32(s1)
    80007af0:	0324a423          	sw	s2,40(s1)
    80007af4:	f9c40793          	addi	a5,s0,-100
    80007af8:	02f4b823          	sd	a5,48(s1)
    80007afc:	0374bc23          	sd	s7,56(s1)
    80007b00:	0564b023          	sd	s6,64(s1)
        threads[i] = new Matrica(matrix + i*m, m, &buffer, mutex, doneRows);
    80007b04:	003c1793          	slli	a5,s8,0x3
    80007b08:	00fc87b3          	add	a5,s9,a5
    80007b0c:	0097b023          	sd	s1,0(a5)
    for(int i=0;i<n;i++){
    80007b10:	001c0c1b          	addiw	s8,s8,1
    80007b14:	035c5663          	bge	s8,s5,80007b40 <_Z11matricaMod1v+0x1ec>
        threads[i] = new Matrica(matrix + i*m, m, &buffer, mutex, doneRows);
    80007b18:	04800513          	li	a0,72
    80007b1c:	ffffa097          	auipc	ra,0xffffa
    80007b20:	3e4080e7          	jalr	996(ra) # 80001f00 <_Znwm>
    80007b24:	00050493          	mv	s1,a0
    80007b28:	038909bb          	mulw	s3,s2,s8
    80007b2c:	00299993          	slli	s3,s3,0x2
    80007b30:	013a09b3          	add	s3,s4,s3
    , doneRows(doneR) {}
    80007b34:	ffffa097          	auipc	ra,0xffffa
    80007b38:	650080e7          	jalr	1616(ra) # 80002184 <_ZN6ThreadC1Ev>
    80007b3c:	fa5ff06f          	j	80007ae0 <_Z11matricaMod1v+0x18c>
    }
    for(int i=0;i<n;i++){
    80007b40:	00000493          	li	s1,0
    80007b44:	0354d063          	bge	s1,s5,80007b64 <_Z11matricaMod1v+0x210>
        threads[i]->start();
    80007b48:	00349793          	slli	a5,s1,0x3
    80007b4c:	00fc87b3          	add	a5,s9,a5
    80007b50:	0007b503          	ld	a0,0(a5)
    80007b54:	ffffa097          	auipc	ra,0xffffa
    80007b58:	58c080e7          	jalr	1420(ra) # 800020e0 <_ZN6Thread5startEv>
    for(int i=0;i<n;i++){
    80007b5c:	0014849b          	addiw	s1,s1,1
    80007b60:	fe5ff06f          	j	80007b44 <_Z11matricaMod1v+0x1f0>
    }
    for(int i=0;i<n;i++){
    80007b64:	00000493          	li	s1,0
    80007b68:	0140006f          	j	80007b7c <_Z11matricaMod1v+0x228>
        doneRows->wait();
    80007b6c:	000b0513          	mv	a0,s6
    80007b70:	ffffa097          	auipc	ra,0xffffa
    80007b74:	6b4080e7          	jalr	1716(ra) # 80002224 <_ZN9Semaphore4waitEv>
    for(int i=0;i<n;i++){
    80007b78:	0014849b          	addiw	s1,s1,1
    80007b7c:	ff54c8e3          	blt	s1,s5,80007b6c <_Z11matricaMod1v+0x218>
    }
    printString("Suma svih elemenata je: ");
    80007b80:	00004517          	auipc	a0,0x4
    80007b84:	d0050513          	addi	a0,a0,-768 # 8000b880 <CONSOLE_STATUS+0x870>
    80007b88:	ffffe097          	auipc	ra,0xffffe
    80007b8c:	edc080e7          	jalr	-292(ra) # 80005a64 <_Z11printStringPKc>
    printInt(buffer);
    80007b90:	00000613          	li	a2,0
    80007b94:	00a00593          	li	a1,10
    80007b98:	f9c42503          	lw	a0,-100(s0)
    80007b9c:	ffffe097          	auipc	ra,0xffffe
    80007ba0:	078080e7          	jalr	120(ra) # 80005c14 <_Z8printIntiii>
    printString("\n");
    80007ba4:	00004517          	auipc	a0,0x4
    80007ba8:	a0c50513          	addi	a0,a0,-1524 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80007bac:	ffffe097          	auipc	ra,0xffffe
    80007bb0:	eb8080e7          	jalr	-328(ra) # 80005a64 <_Z11printStringPKc>
}
    80007bb4:	06813083          	ld	ra,104(sp)
    80007bb8:	06013403          	ld	s0,96(sp)
    80007bbc:	05813483          	ld	s1,88(sp)
    80007bc0:	05013903          	ld	s2,80(sp)
    80007bc4:	04813983          	ld	s3,72(sp)
    80007bc8:	04013a03          	ld	s4,64(sp)
    80007bcc:	03813a83          	ld	s5,56(sp)
    80007bd0:	03013b03          	ld	s6,48(sp)
    80007bd4:	02813b83          	ld	s7,40(sp)
    80007bd8:	02013c03          	ld	s8,32(sp)
    80007bdc:	01813c83          	ld	s9,24(sp)
    80007be0:	07010113          	addi	sp,sp,112
    80007be4:	00008067          	ret
    80007be8:	00050493          	mv	s1,a0
    Semaphore* mutex = new Semaphore(1);
    80007bec:	000b8513          	mv	a0,s7
    80007bf0:	ffffa097          	auipc	ra,0xffffa
    80007bf4:	360080e7          	jalr	864(ra) # 80001f50 <_ZdlPv>
    80007bf8:	00048513          	mv	a0,s1
    80007bfc:	00008097          	auipc	ra,0x8
    80007c00:	ccc080e7          	jalr	-820(ra) # 8000f8c8 <_Unwind_Resume>
    80007c04:	00050493          	mv	s1,a0
    Semaphore* doneRows = new Semaphore(0);
    80007c08:	000b0513          	mv	a0,s6
    80007c0c:	ffffa097          	auipc	ra,0xffffa
    80007c10:	344080e7          	jalr	836(ra) # 80001f50 <_ZdlPv>
    80007c14:	00048513          	mv	a0,s1
    80007c18:	00008097          	auipc	ra,0x8
    80007c1c:	cb0080e7          	jalr	-848(ra) # 8000f8c8 <_Unwind_Resume>
    80007c20:	00050913          	mv	s2,a0
        threads[i] = new Matrica(matrix + i*m, m, &buffer, mutex, doneRows);
    80007c24:	00048513          	mv	a0,s1
    80007c28:	ffffa097          	auipc	ra,0xffffa
    80007c2c:	328080e7          	jalr	808(ra) # 80001f50 <_ZdlPv>
    80007c30:	00090513          	mv	a0,s2
    80007c34:	00008097          	auipc	ra,0x8
    80007c38:	c94080e7          	jalr	-876(ra) # 8000f8c8 <_Unwind_Resume>

0000000080007c3c <_Z10matricaModv>:

void matricaMod(){
    80007c3c:	f7010113          	addi	sp,sp,-144
    80007c40:	08113423          	sd	ra,136(sp)
    80007c44:	08813023          	sd	s0,128(sp)
    80007c48:	06913c23          	sd	s1,120(sp)
    80007c4c:	07213823          	sd	s2,112(sp)
    80007c50:	07313423          	sd	s3,104(sp)
    80007c54:	07413023          	sd	s4,96(sp)
    80007c58:	05513c23          	sd	s5,88(sp)
    80007c5c:	05613823          	sd	s6,80(sp)
    80007c60:	09010413          	addi	s0,sp,144
    Semaphore* mutex = new Semaphore(1);
    80007c64:	02000513          	li	a0,32
    80007c68:	ffffa097          	auipc	ra,0xffffa
    80007c6c:	298080e7          	jalr	664(ra) # 80001f00 <_Znwm>
    80007c70:	00050a13          	mv	s4,a0
    80007c74:	00100593          	li	a1,1
    80007c78:	ffffa097          	auipc	ra,0xffffa
    80007c7c:	56c080e7          	jalr	1388(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    Semaphore* doneRows = new Semaphore(0);
    80007c80:	02000513          	li	a0,32
    80007c84:	ffffa097          	auipc	ra,0xffffa
    80007c88:	27c080e7          	jalr	636(ra) # 80001f00 <_Znwm>
    80007c8c:	00050993          	mv	s3,a0
    80007c90:	00000593          	li	a1,0
    80007c94:	ffffa097          	auipc	ra,0xffffa
    80007c98:	550080e7          	jalr	1360(ra) # 800021e4 <_ZN9SemaphoreC1Ej>
    Thread* threads[9];
    int* matrica = (int*)mem_alloc(sizeof(int)*9);
    80007c9c:	02400513          	li	a0,36
    80007ca0:	ffff9097          	auipc	ra,0xffff9
    80007ca4:	59c080e7          	jalr	1436(ra) # 8000123c <_Z9mem_allocm>
    80007ca8:	00050913          	mv	s2,a0
    int n=3;
    int m=3;
    int k=0;
    for(int i=0;i<n;i++){
    80007cac:	00000693          	li	a3,0
    int k=0;
    80007cb0:	00000593          	li	a1,0
    80007cb4:	0340006f          	j	80007ce8 <_Z10matricaModv+0xac>
        for(int j=0;j<m;j++){
            matrica[i*n +j] = ++k;
    80007cb8:	0015861b          	addiw	a2,a1,1
    80007cbc:	0006059b          	sext.w	a1,a2
    80007cc0:	0016979b          	slliw	a5,a3,0x1
    80007cc4:	00d787bb          	addw	a5,a5,a3
    80007cc8:	00e787bb          	addw	a5,a5,a4
    80007ccc:	00279793          	slli	a5,a5,0x2
    80007cd0:	00f907b3          	add	a5,s2,a5
    80007cd4:	00c7a023          	sw	a2,0(a5)
        for(int j=0;j<m;j++){
    80007cd8:	0017071b          	addiw	a4,a4,1
    80007cdc:	00200793          	li	a5,2
    80007ce0:	fce7dce3          	bge	a5,a4,80007cb8 <_Z10matricaModv+0x7c>
    for(int i=0;i<n;i++){
    80007ce4:	0016869b          	addiw	a3,a3,1
    80007ce8:	00200793          	li	a5,2
    80007cec:	00d7c663          	blt	a5,a3,80007cf8 <_Z10matricaModv+0xbc>
        for(int j=0;j<m;j++){
    80007cf0:	00000713          	li	a4,0
    80007cf4:	fe9ff06f          	j	80007cdc <_Z10matricaModv+0xa0>
        }
    }
    int buffer = 0;
    80007cf8:	f6042a23          	sw	zero,-140(s0)
    for(int i=0;i<n;i++){
    80007cfc:	00000b13          	li	s6,0
    80007d00:	0400006f          	j	80007d40 <_Z10matricaModv+0x104>
    , doneRows(doneR) {}
    80007d04:	00006797          	auipc	a5,0x6
    80007d08:	7ac78793          	addi	a5,a5,1964 # 8000e4b0 <_ZTV7Matrica+0x10>
    80007d0c:	00f4b023          	sd	a5,0(s1)
    80007d10:	0354b023          	sd	s5,32(s1)
    80007d14:	00300793          	li	a5,3
    80007d18:	02f4a423          	sw	a5,40(s1)
    80007d1c:	f7440793          	addi	a5,s0,-140
    80007d20:	02f4b823          	sd	a5,48(s1)
    80007d24:	0344bc23          	sd	s4,56(s1)
    80007d28:	0534b023          	sd	s3,64(s1)
        threads[i] = new Matrica(matrica + i*m, m, &buffer, mutex, doneRows);
    80007d2c:	003b1793          	slli	a5,s6,0x3
    80007d30:	fc040713          	addi	a4,s0,-64
    80007d34:	00f707b3          	add	a5,a4,a5
    80007d38:	fa97bc23          	sd	s1,-72(a5)
    for(int i=0;i<n;i++){
    80007d3c:	001b0b1b          	addiw	s6,s6,1
    80007d40:	00200793          	li	a5,2
    80007d44:	0367c863          	blt	a5,s6,80007d74 <_Z10matricaModv+0x138>
        threads[i] = new Matrica(matrica + i*m, m, &buffer, mutex, doneRows);
    80007d48:	04800513          	li	a0,72
    80007d4c:	ffffa097          	auipc	ra,0xffffa
    80007d50:	1b4080e7          	jalr	436(ra) # 80001f00 <_Znwm>
    80007d54:	00050493          	mv	s1,a0
    80007d58:	001b1a9b          	slliw	s5,s6,0x1
    80007d5c:	016a8abb          	addw	s5,s5,s6
    80007d60:	002a9a93          	slli	s5,s5,0x2
    80007d64:	01590ab3          	add	s5,s2,s5
    , doneRows(doneR) {}
    80007d68:	ffffa097          	auipc	ra,0xffffa
    80007d6c:	41c080e7          	jalr	1052(ra) # 80002184 <_ZN6ThreadC1Ev>
    80007d70:	f95ff06f          	j	80007d04 <_Z10matricaModv+0xc8>
    }
    for(int i=0;i<n;i++){
    80007d74:	00000493          	li	s1,0
    80007d78:	00200793          	li	a5,2
    80007d7c:	0297c263          	blt	a5,s1,80007da0 <_Z10matricaModv+0x164>
        threads[i]->start();
    80007d80:	00349793          	slli	a5,s1,0x3
    80007d84:	fc040713          	addi	a4,s0,-64
    80007d88:	00f707b3          	add	a5,a4,a5
    80007d8c:	fb87b503          	ld	a0,-72(a5)
    80007d90:	ffffa097          	auipc	ra,0xffffa
    80007d94:	350080e7          	jalr	848(ra) # 800020e0 <_ZN6Thread5startEv>
    for(int i=0;i<n;i++){
    80007d98:	0014849b          	addiw	s1,s1,1
    80007d9c:	fddff06f          	j	80007d78 <_Z10matricaModv+0x13c>
    }
    for(int i=0;i<n;i++){
    80007da0:	00000493          	li	s1,0
    80007da4:	00200793          	li	a5,2
    80007da8:	0097cc63          	blt	a5,s1,80007dc0 <_Z10matricaModv+0x184>
        doneRows->wait();
    80007dac:	00098513          	mv	a0,s3
    80007db0:	ffffa097          	auipc	ra,0xffffa
    80007db4:	474080e7          	jalr	1140(ra) # 80002224 <_ZN9Semaphore4waitEv>
    for(int i=0;i<n;i++){
    80007db8:	0014849b          	addiw	s1,s1,1
    80007dbc:	fe9ff06f          	j	80007da4 <_Z10matricaModv+0x168>
    }
    printString("Suma svih elemenata je: ");
    80007dc0:	00004517          	auipc	a0,0x4
    80007dc4:	ac050513          	addi	a0,a0,-1344 # 8000b880 <CONSOLE_STATUS+0x870>
    80007dc8:	ffffe097          	auipc	ra,0xffffe
    80007dcc:	c9c080e7          	jalr	-868(ra) # 80005a64 <_Z11printStringPKc>
    printInt(buffer);
    80007dd0:	00000613          	li	a2,0
    80007dd4:	00a00593          	li	a1,10
    80007dd8:	f7442503          	lw	a0,-140(s0)
    80007ddc:	ffffe097          	auipc	ra,0xffffe
    80007de0:	e38080e7          	jalr	-456(ra) # 80005c14 <_Z8printIntiii>
    printString("\n");
    80007de4:	00003517          	auipc	a0,0x3
    80007de8:	7cc50513          	addi	a0,a0,1996 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80007dec:	ffffe097          	auipc	ra,0xffffe
    80007df0:	c78080e7          	jalr	-904(ra) # 80005a64 <_Z11printStringPKc>
    80007df4:	08813083          	ld	ra,136(sp)
    80007df8:	08013403          	ld	s0,128(sp)
    80007dfc:	07813483          	ld	s1,120(sp)
    80007e00:	07013903          	ld	s2,112(sp)
    80007e04:	06813983          	ld	s3,104(sp)
    80007e08:	06013a03          	ld	s4,96(sp)
    80007e0c:	05813a83          	ld	s5,88(sp)
    80007e10:	05013b03          	ld	s6,80(sp)
    80007e14:	09010113          	addi	sp,sp,144
    80007e18:	00008067          	ret
    80007e1c:	00050493          	mv	s1,a0
    Semaphore* mutex = new Semaphore(1);
    80007e20:	000a0513          	mv	a0,s4
    80007e24:	ffffa097          	auipc	ra,0xffffa
    80007e28:	12c080e7          	jalr	300(ra) # 80001f50 <_ZdlPv>
    80007e2c:	00048513          	mv	a0,s1
    80007e30:	00008097          	auipc	ra,0x8
    80007e34:	a98080e7          	jalr	-1384(ra) # 8000f8c8 <_Unwind_Resume>
    80007e38:	00050493          	mv	s1,a0
    Semaphore* doneRows = new Semaphore(0);
    80007e3c:	00098513          	mv	a0,s3
    80007e40:	ffffa097          	auipc	ra,0xffffa
    80007e44:	110080e7          	jalr	272(ra) # 80001f50 <_ZdlPv>
    80007e48:	00048513          	mv	a0,s1
    80007e4c:	00008097          	auipc	ra,0x8
    80007e50:	a7c080e7          	jalr	-1412(ra) # 8000f8c8 <_Unwind_Resume>
    80007e54:	00050913          	mv	s2,a0
        threads[i] = new Matrica(matrica + i*m, m, &buffer, mutex, doneRows);
    80007e58:	00048513          	mv	a0,s1
    80007e5c:	ffffa097          	auipc	ra,0xffffa
    80007e60:	0f4080e7          	jalr	244(ra) # 80001f50 <_ZdlPv>
    80007e64:	00090513          	mv	a0,s2
    80007e68:	00008097          	auipc	ra,0x8
    80007e6c:	a60080e7          	jalr	-1440(ra) # 8000f8c8 <_Unwind_Resume>

0000000080007e70 <_ZN7MatricaD1Ev>:
class Matrica: public Thread {
    80007e70:	ff010113          	addi	sp,sp,-16
    80007e74:	00113423          	sd	ra,8(sp)
    80007e78:	00813023          	sd	s0,0(sp)
    80007e7c:	01010413          	addi	s0,sp,16
    80007e80:	00006797          	auipc	a5,0x6
    80007e84:	63078793          	addi	a5,a5,1584 # 8000e4b0 <_ZTV7Matrica+0x10>
    80007e88:	00f53023          	sd	a5,0(a0)
    80007e8c:	ffffa097          	auipc	ra,0xffffa
    80007e90:	1a8080e7          	jalr	424(ra) # 80002034 <_ZN6ThreadD1Ev>
    80007e94:	00813083          	ld	ra,8(sp)
    80007e98:	00013403          	ld	s0,0(sp)
    80007e9c:	01010113          	addi	sp,sp,16
    80007ea0:	00008067          	ret

0000000080007ea4 <_ZN7MatricaD0Ev>:
    80007ea4:	fe010113          	addi	sp,sp,-32
    80007ea8:	00113c23          	sd	ra,24(sp)
    80007eac:	00813823          	sd	s0,16(sp)
    80007eb0:	00913423          	sd	s1,8(sp)
    80007eb4:	02010413          	addi	s0,sp,32
    80007eb8:	00050493          	mv	s1,a0
    80007ebc:	00006797          	auipc	a5,0x6
    80007ec0:	5f478793          	addi	a5,a5,1524 # 8000e4b0 <_ZTV7Matrica+0x10>
    80007ec4:	00f53023          	sd	a5,0(a0)
    80007ec8:	ffffa097          	auipc	ra,0xffffa
    80007ecc:	16c080e7          	jalr	364(ra) # 80002034 <_ZN6ThreadD1Ev>
    80007ed0:	00048513          	mv	a0,s1
    80007ed4:	ffffa097          	auipc	ra,0xffffa
    80007ed8:	07c080e7          	jalr	124(ra) # 80001f50 <_ZdlPv>
    80007edc:	01813083          	ld	ra,24(sp)
    80007ee0:	01013403          	ld	s0,16(sp)
    80007ee4:	00813483          	ld	s1,8(sp)
    80007ee8:	02010113          	addi	sp,sp,32
    80007eec:	00008067          	ret

0000000080007ef0 <_ZN7Matrica3runEv>:
    void run() override {
    80007ef0:	ff010113          	addi	sp,sp,-16
    80007ef4:	00113423          	sd	ra,8(sp)
    80007ef8:	00813023          	sd	s0,0(sp)
    80007efc:	01010413          	addi	s0,sp,16
        mnozenjeM(nullptr);
    80007f00:	00000593          	li	a1,0
    80007f04:	00000097          	auipc	ra,0x0
    80007f08:	988080e7          	jalr	-1656(ra) # 8000788c <_ZN7Matrica9mnozenjeMEPv>
    }
    80007f0c:	00813083          	ld	ra,8(sp)
    80007f10:	00013403          	ld	s0,0(sp)
    80007f14:	01010113          	addi	sp,sp,16
    80007f18:	00008067          	ret

0000000080007f1c <start>:
    80007f1c:	ff010113          	addi	sp,sp,-16
    80007f20:	00813423          	sd	s0,8(sp)
    80007f24:	01010413          	addi	s0,sp,16
    80007f28:	300027f3          	csrr	a5,mstatus
    80007f2c:	ffffe737          	lui	a4,0xffffe
    80007f30:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffeed9f>
    80007f34:	00e7f7b3          	and	a5,a5,a4
    80007f38:	00001737          	lui	a4,0x1
    80007f3c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007f40:	00e7e7b3          	or	a5,a5,a4
    80007f44:	30079073          	csrw	mstatus,a5
    80007f48:	00000797          	auipc	a5,0x0
    80007f4c:	16078793          	addi	a5,a5,352 # 800080a8 <system_main>
    80007f50:	34179073          	csrw	mepc,a5
    80007f54:	00000793          	li	a5,0
    80007f58:	18079073          	csrw	satp,a5
    80007f5c:	000107b7          	lui	a5,0x10
    80007f60:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007f64:	30279073          	csrw	medeleg,a5
    80007f68:	30379073          	csrw	mideleg,a5
    80007f6c:	104027f3          	csrr	a5,sie
    80007f70:	2227e793          	ori	a5,a5,546
    80007f74:	10479073          	csrw	sie,a5
    80007f78:	fff00793          	li	a5,-1
    80007f7c:	00a7d793          	srli	a5,a5,0xa
    80007f80:	3b079073          	csrw	pmpaddr0,a5
    80007f84:	00f00793          	li	a5,15
    80007f88:	3a079073          	csrw	pmpcfg0,a5
    80007f8c:	f14027f3          	csrr	a5,mhartid
    80007f90:	0200c737          	lui	a4,0x200c
    80007f94:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007f98:	0007869b          	sext.w	a3,a5
    80007f9c:	00269713          	slli	a4,a3,0x2
    80007fa0:	000f4637          	lui	a2,0xf4
    80007fa4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007fa8:	00d70733          	add	a4,a4,a3
    80007fac:	0037979b          	slliw	a5,a5,0x3
    80007fb0:	020046b7          	lui	a3,0x2004
    80007fb4:	00d787b3          	add	a5,a5,a3
    80007fb8:	00c585b3          	add	a1,a1,a2
    80007fbc:	00371693          	slli	a3,a4,0x3
    80007fc0:	00007717          	auipc	a4,0x7
    80007fc4:	84070713          	addi	a4,a4,-1984 # 8000e800 <timer_scratch>
    80007fc8:	00b7b023          	sd	a1,0(a5)
    80007fcc:	00d70733          	add	a4,a4,a3
    80007fd0:	00f73c23          	sd	a5,24(a4)
    80007fd4:	02c73023          	sd	a2,32(a4)
    80007fd8:	34071073          	csrw	mscratch,a4
    80007fdc:	00000797          	auipc	a5,0x0
    80007fe0:	6e478793          	addi	a5,a5,1764 # 800086c0 <timervec>
    80007fe4:	30579073          	csrw	mtvec,a5
    80007fe8:	300027f3          	csrr	a5,mstatus
    80007fec:	0087e793          	ori	a5,a5,8
    80007ff0:	30079073          	csrw	mstatus,a5
    80007ff4:	304027f3          	csrr	a5,mie
    80007ff8:	0807e793          	ori	a5,a5,128
    80007ffc:	30479073          	csrw	mie,a5
    80008000:	f14027f3          	csrr	a5,mhartid
    80008004:	0007879b          	sext.w	a5,a5
    80008008:	00078213          	mv	tp,a5
    8000800c:	30200073          	mret
    80008010:	00813403          	ld	s0,8(sp)
    80008014:	01010113          	addi	sp,sp,16
    80008018:	00008067          	ret

000000008000801c <timerinit>:
    8000801c:	ff010113          	addi	sp,sp,-16
    80008020:	00813423          	sd	s0,8(sp)
    80008024:	01010413          	addi	s0,sp,16
    80008028:	f14027f3          	csrr	a5,mhartid
    8000802c:	0200c737          	lui	a4,0x200c
    80008030:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80008034:	0007869b          	sext.w	a3,a5
    80008038:	00269713          	slli	a4,a3,0x2
    8000803c:	000f4637          	lui	a2,0xf4
    80008040:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80008044:	00d70733          	add	a4,a4,a3
    80008048:	0037979b          	slliw	a5,a5,0x3
    8000804c:	020046b7          	lui	a3,0x2004
    80008050:	00d787b3          	add	a5,a5,a3
    80008054:	00c585b3          	add	a1,a1,a2
    80008058:	00371693          	slli	a3,a4,0x3
    8000805c:	00006717          	auipc	a4,0x6
    80008060:	7a470713          	addi	a4,a4,1956 # 8000e800 <timer_scratch>
    80008064:	00b7b023          	sd	a1,0(a5)
    80008068:	00d70733          	add	a4,a4,a3
    8000806c:	00f73c23          	sd	a5,24(a4)
    80008070:	02c73023          	sd	a2,32(a4)
    80008074:	34071073          	csrw	mscratch,a4
    80008078:	00000797          	auipc	a5,0x0
    8000807c:	64878793          	addi	a5,a5,1608 # 800086c0 <timervec>
    80008080:	30579073          	csrw	mtvec,a5
    80008084:	300027f3          	csrr	a5,mstatus
    80008088:	0087e793          	ori	a5,a5,8
    8000808c:	30079073          	csrw	mstatus,a5
    80008090:	304027f3          	csrr	a5,mie
    80008094:	0807e793          	ori	a5,a5,128
    80008098:	30479073          	csrw	mie,a5
    8000809c:	00813403          	ld	s0,8(sp)
    800080a0:	01010113          	addi	sp,sp,16
    800080a4:	00008067          	ret

00000000800080a8 <system_main>:
    800080a8:	fe010113          	addi	sp,sp,-32
    800080ac:	00813823          	sd	s0,16(sp)
    800080b0:	00913423          	sd	s1,8(sp)
    800080b4:	00113c23          	sd	ra,24(sp)
    800080b8:	02010413          	addi	s0,sp,32
    800080bc:	00000097          	auipc	ra,0x0
    800080c0:	0c4080e7          	jalr	196(ra) # 80008180 <cpuid>
    800080c4:	00006497          	auipc	s1,0x6
    800080c8:	44c48493          	addi	s1,s1,1100 # 8000e510 <started>
    800080cc:	02050263          	beqz	a0,800080f0 <system_main+0x48>
    800080d0:	0004a783          	lw	a5,0(s1)
    800080d4:	0007879b          	sext.w	a5,a5
    800080d8:	fe078ce3          	beqz	a5,800080d0 <system_main+0x28>
    800080dc:	0ff0000f          	fence
    800080e0:	00003517          	auipc	a0,0x3
    800080e4:	7f050513          	addi	a0,a0,2032 # 8000b8d0 <CONSOLE_STATUS+0x8c0>
    800080e8:	00001097          	auipc	ra,0x1
    800080ec:	a74080e7          	jalr	-1420(ra) # 80008b5c <panic>
    800080f0:	00001097          	auipc	ra,0x1
    800080f4:	9c8080e7          	jalr	-1592(ra) # 80008ab8 <consoleinit>
    800080f8:	00001097          	auipc	ra,0x1
    800080fc:	154080e7          	jalr	340(ra) # 8000924c <printfinit>
    80008100:	00003517          	auipc	a0,0x3
    80008104:	4b050513          	addi	a0,a0,1200 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80008108:	00001097          	auipc	ra,0x1
    8000810c:	ab0080e7          	jalr	-1360(ra) # 80008bb8 <__printf>
    80008110:	00003517          	auipc	a0,0x3
    80008114:	79050513          	addi	a0,a0,1936 # 8000b8a0 <CONSOLE_STATUS+0x890>
    80008118:	00001097          	auipc	ra,0x1
    8000811c:	aa0080e7          	jalr	-1376(ra) # 80008bb8 <__printf>
    80008120:	00003517          	auipc	a0,0x3
    80008124:	49050513          	addi	a0,a0,1168 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80008128:	00001097          	auipc	ra,0x1
    8000812c:	a90080e7          	jalr	-1392(ra) # 80008bb8 <__printf>
    80008130:	00001097          	auipc	ra,0x1
    80008134:	4a8080e7          	jalr	1192(ra) # 800095d8 <kinit>
    80008138:	00000097          	auipc	ra,0x0
    8000813c:	148080e7          	jalr	328(ra) # 80008280 <trapinit>
    80008140:	00000097          	auipc	ra,0x0
    80008144:	16c080e7          	jalr	364(ra) # 800082ac <trapinithart>
    80008148:	00000097          	auipc	ra,0x0
    8000814c:	5b8080e7          	jalr	1464(ra) # 80008700 <plicinit>
    80008150:	00000097          	auipc	ra,0x0
    80008154:	5d8080e7          	jalr	1496(ra) # 80008728 <plicinithart>
    80008158:	00000097          	auipc	ra,0x0
    8000815c:	078080e7          	jalr	120(ra) # 800081d0 <userinit>
    80008160:	0ff0000f          	fence
    80008164:	00100793          	li	a5,1
    80008168:	00003517          	auipc	a0,0x3
    8000816c:	75050513          	addi	a0,a0,1872 # 8000b8b8 <CONSOLE_STATUS+0x8a8>
    80008170:	00f4a023          	sw	a5,0(s1)
    80008174:	00001097          	auipc	ra,0x1
    80008178:	a44080e7          	jalr	-1468(ra) # 80008bb8 <__printf>
    8000817c:	0000006f          	j	8000817c <system_main+0xd4>

0000000080008180 <cpuid>:
    80008180:	ff010113          	addi	sp,sp,-16
    80008184:	00813423          	sd	s0,8(sp)
    80008188:	01010413          	addi	s0,sp,16
    8000818c:	00020513          	mv	a0,tp
    80008190:	00813403          	ld	s0,8(sp)
    80008194:	0005051b          	sext.w	a0,a0
    80008198:	01010113          	addi	sp,sp,16
    8000819c:	00008067          	ret

00000000800081a0 <mycpu>:
    800081a0:	ff010113          	addi	sp,sp,-16
    800081a4:	00813423          	sd	s0,8(sp)
    800081a8:	01010413          	addi	s0,sp,16
    800081ac:	00020793          	mv	a5,tp
    800081b0:	00813403          	ld	s0,8(sp)
    800081b4:	0007879b          	sext.w	a5,a5
    800081b8:	00779793          	slli	a5,a5,0x7
    800081bc:	00007517          	auipc	a0,0x7
    800081c0:	67450513          	addi	a0,a0,1652 # 8000f830 <cpus>
    800081c4:	00f50533          	add	a0,a0,a5
    800081c8:	01010113          	addi	sp,sp,16
    800081cc:	00008067          	ret

00000000800081d0 <userinit>:
    800081d0:	ff010113          	addi	sp,sp,-16
    800081d4:	00813423          	sd	s0,8(sp)
    800081d8:	01010413          	addi	s0,sp,16
    800081dc:	00813403          	ld	s0,8(sp)
    800081e0:	01010113          	addi	sp,sp,16
    800081e4:	ffff9317          	auipc	t1,0xffff9
    800081e8:	6cc30067          	jr	1740(t1) # 800018b0 <main>

00000000800081ec <either_copyout>:
    800081ec:	ff010113          	addi	sp,sp,-16
    800081f0:	00813023          	sd	s0,0(sp)
    800081f4:	00113423          	sd	ra,8(sp)
    800081f8:	01010413          	addi	s0,sp,16
    800081fc:	02051663          	bnez	a0,80008228 <either_copyout+0x3c>
    80008200:	00058513          	mv	a0,a1
    80008204:	00060593          	mv	a1,a2
    80008208:	0006861b          	sext.w	a2,a3
    8000820c:	00002097          	auipc	ra,0x2
    80008210:	c58080e7          	jalr	-936(ra) # 80009e64 <__memmove>
    80008214:	00813083          	ld	ra,8(sp)
    80008218:	00013403          	ld	s0,0(sp)
    8000821c:	00000513          	li	a0,0
    80008220:	01010113          	addi	sp,sp,16
    80008224:	00008067          	ret
    80008228:	00003517          	auipc	a0,0x3
    8000822c:	6d050513          	addi	a0,a0,1744 # 8000b8f8 <CONSOLE_STATUS+0x8e8>
    80008230:	00001097          	auipc	ra,0x1
    80008234:	92c080e7          	jalr	-1748(ra) # 80008b5c <panic>

0000000080008238 <either_copyin>:
    80008238:	ff010113          	addi	sp,sp,-16
    8000823c:	00813023          	sd	s0,0(sp)
    80008240:	00113423          	sd	ra,8(sp)
    80008244:	01010413          	addi	s0,sp,16
    80008248:	02059463          	bnez	a1,80008270 <either_copyin+0x38>
    8000824c:	00060593          	mv	a1,a2
    80008250:	0006861b          	sext.w	a2,a3
    80008254:	00002097          	auipc	ra,0x2
    80008258:	c10080e7          	jalr	-1008(ra) # 80009e64 <__memmove>
    8000825c:	00813083          	ld	ra,8(sp)
    80008260:	00013403          	ld	s0,0(sp)
    80008264:	00000513          	li	a0,0
    80008268:	01010113          	addi	sp,sp,16
    8000826c:	00008067          	ret
    80008270:	00003517          	auipc	a0,0x3
    80008274:	6b050513          	addi	a0,a0,1712 # 8000b920 <CONSOLE_STATUS+0x910>
    80008278:	00001097          	auipc	ra,0x1
    8000827c:	8e4080e7          	jalr	-1820(ra) # 80008b5c <panic>

0000000080008280 <trapinit>:
    80008280:	ff010113          	addi	sp,sp,-16
    80008284:	00813423          	sd	s0,8(sp)
    80008288:	01010413          	addi	s0,sp,16
    8000828c:	00813403          	ld	s0,8(sp)
    80008290:	00003597          	auipc	a1,0x3
    80008294:	6b858593          	addi	a1,a1,1720 # 8000b948 <CONSOLE_STATUS+0x938>
    80008298:	00007517          	auipc	a0,0x7
    8000829c:	61850513          	addi	a0,a0,1560 # 8000f8b0 <tickslock>
    800082a0:	01010113          	addi	sp,sp,16
    800082a4:	00001317          	auipc	t1,0x1
    800082a8:	5c430067          	jr	1476(t1) # 80009868 <initlock>

00000000800082ac <trapinithart>:
    800082ac:	ff010113          	addi	sp,sp,-16
    800082b0:	00813423          	sd	s0,8(sp)
    800082b4:	01010413          	addi	s0,sp,16
    800082b8:	00000797          	auipc	a5,0x0
    800082bc:	2f878793          	addi	a5,a5,760 # 800085b0 <kernelvec>
    800082c0:	10579073          	csrw	stvec,a5
    800082c4:	00813403          	ld	s0,8(sp)
    800082c8:	01010113          	addi	sp,sp,16
    800082cc:	00008067          	ret

00000000800082d0 <usertrap>:
    800082d0:	ff010113          	addi	sp,sp,-16
    800082d4:	00813423          	sd	s0,8(sp)
    800082d8:	01010413          	addi	s0,sp,16
    800082dc:	00813403          	ld	s0,8(sp)
    800082e0:	01010113          	addi	sp,sp,16
    800082e4:	00008067          	ret

00000000800082e8 <usertrapret>:
    800082e8:	ff010113          	addi	sp,sp,-16
    800082ec:	00813423          	sd	s0,8(sp)
    800082f0:	01010413          	addi	s0,sp,16
    800082f4:	00813403          	ld	s0,8(sp)
    800082f8:	01010113          	addi	sp,sp,16
    800082fc:	00008067          	ret

0000000080008300 <kerneltrap>:
    80008300:	fe010113          	addi	sp,sp,-32
    80008304:	00813823          	sd	s0,16(sp)
    80008308:	00113c23          	sd	ra,24(sp)
    8000830c:	00913423          	sd	s1,8(sp)
    80008310:	02010413          	addi	s0,sp,32
    80008314:	142025f3          	csrr	a1,scause
    80008318:	100027f3          	csrr	a5,sstatus
    8000831c:	0027f793          	andi	a5,a5,2
    80008320:	10079c63          	bnez	a5,80008438 <kerneltrap+0x138>
    80008324:	142027f3          	csrr	a5,scause
    80008328:	0207ce63          	bltz	a5,80008364 <kerneltrap+0x64>
    8000832c:	00003517          	auipc	a0,0x3
    80008330:	66450513          	addi	a0,a0,1636 # 8000b990 <CONSOLE_STATUS+0x980>
    80008334:	00001097          	auipc	ra,0x1
    80008338:	884080e7          	jalr	-1916(ra) # 80008bb8 <__printf>
    8000833c:	141025f3          	csrr	a1,sepc
    80008340:	14302673          	csrr	a2,stval
    80008344:	00003517          	auipc	a0,0x3
    80008348:	65c50513          	addi	a0,a0,1628 # 8000b9a0 <CONSOLE_STATUS+0x990>
    8000834c:	00001097          	auipc	ra,0x1
    80008350:	86c080e7          	jalr	-1940(ra) # 80008bb8 <__printf>
    80008354:	00003517          	auipc	a0,0x3
    80008358:	66450513          	addi	a0,a0,1636 # 8000b9b8 <CONSOLE_STATUS+0x9a8>
    8000835c:	00001097          	auipc	ra,0x1
    80008360:	800080e7          	jalr	-2048(ra) # 80008b5c <panic>
    80008364:	0ff7f713          	andi	a4,a5,255
    80008368:	00900693          	li	a3,9
    8000836c:	04d70063          	beq	a4,a3,800083ac <kerneltrap+0xac>
    80008370:	fff00713          	li	a4,-1
    80008374:	03f71713          	slli	a4,a4,0x3f
    80008378:	00170713          	addi	a4,a4,1
    8000837c:	fae798e3          	bne	a5,a4,8000832c <kerneltrap+0x2c>
    80008380:	00000097          	auipc	ra,0x0
    80008384:	e00080e7          	jalr	-512(ra) # 80008180 <cpuid>
    80008388:	06050663          	beqz	a0,800083f4 <kerneltrap+0xf4>
    8000838c:	144027f3          	csrr	a5,sip
    80008390:	ffd7f793          	andi	a5,a5,-3
    80008394:	14479073          	csrw	sip,a5
    80008398:	01813083          	ld	ra,24(sp)
    8000839c:	01013403          	ld	s0,16(sp)
    800083a0:	00813483          	ld	s1,8(sp)
    800083a4:	02010113          	addi	sp,sp,32
    800083a8:	00008067          	ret
    800083ac:	00000097          	auipc	ra,0x0
    800083b0:	3c8080e7          	jalr	968(ra) # 80008774 <plic_claim>
    800083b4:	00a00793          	li	a5,10
    800083b8:	00050493          	mv	s1,a0
    800083bc:	06f50863          	beq	a0,a5,8000842c <kerneltrap+0x12c>
    800083c0:	fc050ce3          	beqz	a0,80008398 <kerneltrap+0x98>
    800083c4:	00050593          	mv	a1,a0
    800083c8:	00003517          	auipc	a0,0x3
    800083cc:	5a850513          	addi	a0,a0,1448 # 8000b970 <CONSOLE_STATUS+0x960>
    800083d0:	00000097          	auipc	ra,0x0
    800083d4:	7e8080e7          	jalr	2024(ra) # 80008bb8 <__printf>
    800083d8:	01013403          	ld	s0,16(sp)
    800083dc:	01813083          	ld	ra,24(sp)
    800083e0:	00048513          	mv	a0,s1
    800083e4:	00813483          	ld	s1,8(sp)
    800083e8:	02010113          	addi	sp,sp,32
    800083ec:	00000317          	auipc	t1,0x0
    800083f0:	3c030067          	jr	960(t1) # 800087ac <plic_complete>
    800083f4:	00007517          	auipc	a0,0x7
    800083f8:	4bc50513          	addi	a0,a0,1212 # 8000f8b0 <tickslock>
    800083fc:	00001097          	auipc	ra,0x1
    80008400:	490080e7          	jalr	1168(ra) # 8000988c <acquire>
    80008404:	00006717          	auipc	a4,0x6
    80008408:	11070713          	addi	a4,a4,272 # 8000e514 <ticks>
    8000840c:	00072783          	lw	a5,0(a4)
    80008410:	00007517          	auipc	a0,0x7
    80008414:	4a050513          	addi	a0,a0,1184 # 8000f8b0 <tickslock>
    80008418:	0017879b          	addiw	a5,a5,1
    8000841c:	00f72023          	sw	a5,0(a4)
    80008420:	00001097          	auipc	ra,0x1
    80008424:	538080e7          	jalr	1336(ra) # 80009958 <release>
    80008428:	f65ff06f          	j	8000838c <kerneltrap+0x8c>
    8000842c:	00001097          	auipc	ra,0x1
    80008430:	094080e7          	jalr	148(ra) # 800094c0 <uartintr>
    80008434:	fa5ff06f          	j	800083d8 <kerneltrap+0xd8>
    80008438:	00003517          	auipc	a0,0x3
    8000843c:	51850513          	addi	a0,a0,1304 # 8000b950 <CONSOLE_STATUS+0x940>
    80008440:	00000097          	auipc	ra,0x0
    80008444:	71c080e7          	jalr	1820(ra) # 80008b5c <panic>

0000000080008448 <clockintr>:
    80008448:	fe010113          	addi	sp,sp,-32
    8000844c:	00813823          	sd	s0,16(sp)
    80008450:	00913423          	sd	s1,8(sp)
    80008454:	00113c23          	sd	ra,24(sp)
    80008458:	02010413          	addi	s0,sp,32
    8000845c:	00007497          	auipc	s1,0x7
    80008460:	45448493          	addi	s1,s1,1108 # 8000f8b0 <tickslock>
    80008464:	00048513          	mv	a0,s1
    80008468:	00001097          	auipc	ra,0x1
    8000846c:	424080e7          	jalr	1060(ra) # 8000988c <acquire>
    80008470:	00006717          	auipc	a4,0x6
    80008474:	0a470713          	addi	a4,a4,164 # 8000e514 <ticks>
    80008478:	00072783          	lw	a5,0(a4)
    8000847c:	01013403          	ld	s0,16(sp)
    80008480:	01813083          	ld	ra,24(sp)
    80008484:	00048513          	mv	a0,s1
    80008488:	0017879b          	addiw	a5,a5,1
    8000848c:	00813483          	ld	s1,8(sp)
    80008490:	00f72023          	sw	a5,0(a4)
    80008494:	02010113          	addi	sp,sp,32
    80008498:	00001317          	auipc	t1,0x1
    8000849c:	4c030067          	jr	1216(t1) # 80009958 <release>

00000000800084a0 <devintr>:
    800084a0:	142027f3          	csrr	a5,scause
    800084a4:	00000513          	li	a0,0
    800084a8:	0007c463          	bltz	a5,800084b0 <devintr+0x10>
    800084ac:	00008067          	ret
    800084b0:	fe010113          	addi	sp,sp,-32
    800084b4:	00813823          	sd	s0,16(sp)
    800084b8:	00113c23          	sd	ra,24(sp)
    800084bc:	00913423          	sd	s1,8(sp)
    800084c0:	02010413          	addi	s0,sp,32
    800084c4:	0ff7f713          	andi	a4,a5,255
    800084c8:	00900693          	li	a3,9
    800084cc:	04d70c63          	beq	a4,a3,80008524 <devintr+0x84>
    800084d0:	fff00713          	li	a4,-1
    800084d4:	03f71713          	slli	a4,a4,0x3f
    800084d8:	00170713          	addi	a4,a4,1
    800084dc:	00e78c63          	beq	a5,a4,800084f4 <devintr+0x54>
    800084e0:	01813083          	ld	ra,24(sp)
    800084e4:	01013403          	ld	s0,16(sp)
    800084e8:	00813483          	ld	s1,8(sp)
    800084ec:	02010113          	addi	sp,sp,32
    800084f0:	00008067          	ret
    800084f4:	00000097          	auipc	ra,0x0
    800084f8:	c8c080e7          	jalr	-884(ra) # 80008180 <cpuid>
    800084fc:	06050663          	beqz	a0,80008568 <devintr+0xc8>
    80008500:	144027f3          	csrr	a5,sip
    80008504:	ffd7f793          	andi	a5,a5,-3
    80008508:	14479073          	csrw	sip,a5
    8000850c:	01813083          	ld	ra,24(sp)
    80008510:	01013403          	ld	s0,16(sp)
    80008514:	00813483          	ld	s1,8(sp)
    80008518:	00200513          	li	a0,2
    8000851c:	02010113          	addi	sp,sp,32
    80008520:	00008067          	ret
    80008524:	00000097          	auipc	ra,0x0
    80008528:	250080e7          	jalr	592(ra) # 80008774 <plic_claim>
    8000852c:	00a00793          	li	a5,10
    80008530:	00050493          	mv	s1,a0
    80008534:	06f50663          	beq	a0,a5,800085a0 <devintr+0x100>
    80008538:	00100513          	li	a0,1
    8000853c:	fa0482e3          	beqz	s1,800084e0 <devintr+0x40>
    80008540:	00048593          	mv	a1,s1
    80008544:	00003517          	auipc	a0,0x3
    80008548:	42c50513          	addi	a0,a0,1068 # 8000b970 <CONSOLE_STATUS+0x960>
    8000854c:	00000097          	auipc	ra,0x0
    80008550:	66c080e7          	jalr	1644(ra) # 80008bb8 <__printf>
    80008554:	00048513          	mv	a0,s1
    80008558:	00000097          	auipc	ra,0x0
    8000855c:	254080e7          	jalr	596(ra) # 800087ac <plic_complete>
    80008560:	00100513          	li	a0,1
    80008564:	f7dff06f          	j	800084e0 <devintr+0x40>
    80008568:	00007517          	auipc	a0,0x7
    8000856c:	34850513          	addi	a0,a0,840 # 8000f8b0 <tickslock>
    80008570:	00001097          	auipc	ra,0x1
    80008574:	31c080e7          	jalr	796(ra) # 8000988c <acquire>
    80008578:	00006717          	auipc	a4,0x6
    8000857c:	f9c70713          	addi	a4,a4,-100 # 8000e514 <ticks>
    80008580:	00072783          	lw	a5,0(a4)
    80008584:	00007517          	auipc	a0,0x7
    80008588:	32c50513          	addi	a0,a0,812 # 8000f8b0 <tickslock>
    8000858c:	0017879b          	addiw	a5,a5,1
    80008590:	00f72023          	sw	a5,0(a4)
    80008594:	00001097          	auipc	ra,0x1
    80008598:	3c4080e7          	jalr	964(ra) # 80009958 <release>
    8000859c:	f65ff06f          	j	80008500 <devintr+0x60>
    800085a0:	00001097          	auipc	ra,0x1
    800085a4:	f20080e7          	jalr	-224(ra) # 800094c0 <uartintr>
    800085a8:	fadff06f          	j	80008554 <devintr+0xb4>
    800085ac:	0000                	unimp
	...

00000000800085b0 <kernelvec>:
    800085b0:	f0010113          	addi	sp,sp,-256
    800085b4:	00113023          	sd	ra,0(sp)
    800085b8:	00213423          	sd	sp,8(sp)
    800085bc:	00313823          	sd	gp,16(sp)
    800085c0:	00413c23          	sd	tp,24(sp)
    800085c4:	02513023          	sd	t0,32(sp)
    800085c8:	02613423          	sd	t1,40(sp)
    800085cc:	02713823          	sd	t2,48(sp)
    800085d0:	02813c23          	sd	s0,56(sp)
    800085d4:	04913023          	sd	s1,64(sp)
    800085d8:	04a13423          	sd	a0,72(sp)
    800085dc:	04b13823          	sd	a1,80(sp)
    800085e0:	04c13c23          	sd	a2,88(sp)
    800085e4:	06d13023          	sd	a3,96(sp)
    800085e8:	06e13423          	sd	a4,104(sp)
    800085ec:	06f13823          	sd	a5,112(sp)
    800085f0:	07013c23          	sd	a6,120(sp)
    800085f4:	09113023          	sd	a7,128(sp)
    800085f8:	09213423          	sd	s2,136(sp)
    800085fc:	09313823          	sd	s3,144(sp)
    80008600:	09413c23          	sd	s4,152(sp)
    80008604:	0b513023          	sd	s5,160(sp)
    80008608:	0b613423          	sd	s6,168(sp)
    8000860c:	0b713823          	sd	s7,176(sp)
    80008610:	0b813c23          	sd	s8,184(sp)
    80008614:	0d913023          	sd	s9,192(sp)
    80008618:	0da13423          	sd	s10,200(sp)
    8000861c:	0db13823          	sd	s11,208(sp)
    80008620:	0dc13c23          	sd	t3,216(sp)
    80008624:	0fd13023          	sd	t4,224(sp)
    80008628:	0fe13423          	sd	t5,232(sp)
    8000862c:	0ff13823          	sd	t6,240(sp)
    80008630:	cd1ff0ef          	jal	ra,80008300 <kerneltrap>
    80008634:	00013083          	ld	ra,0(sp)
    80008638:	00813103          	ld	sp,8(sp)
    8000863c:	01013183          	ld	gp,16(sp)
    80008640:	02013283          	ld	t0,32(sp)
    80008644:	02813303          	ld	t1,40(sp)
    80008648:	03013383          	ld	t2,48(sp)
    8000864c:	03813403          	ld	s0,56(sp)
    80008650:	04013483          	ld	s1,64(sp)
    80008654:	04813503          	ld	a0,72(sp)
    80008658:	05013583          	ld	a1,80(sp)
    8000865c:	05813603          	ld	a2,88(sp)
    80008660:	06013683          	ld	a3,96(sp)
    80008664:	06813703          	ld	a4,104(sp)
    80008668:	07013783          	ld	a5,112(sp)
    8000866c:	07813803          	ld	a6,120(sp)
    80008670:	08013883          	ld	a7,128(sp)
    80008674:	08813903          	ld	s2,136(sp)
    80008678:	09013983          	ld	s3,144(sp)
    8000867c:	09813a03          	ld	s4,152(sp)
    80008680:	0a013a83          	ld	s5,160(sp)
    80008684:	0a813b03          	ld	s6,168(sp)
    80008688:	0b013b83          	ld	s7,176(sp)
    8000868c:	0b813c03          	ld	s8,184(sp)
    80008690:	0c013c83          	ld	s9,192(sp)
    80008694:	0c813d03          	ld	s10,200(sp)
    80008698:	0d013d83          	ld	s11,208(sp)
    8000869c:	0d813e03          	ld	t3,216(sp)
    800086a0:	0e013e83          	ld	t4,224(sp)
    800086a4:	0e813f03          	ld	t5,232(sp)
    800086a8:	0f013f83          	ld	t6,240(sp)
    800086ac:	10010113          	addi	sp,sp,256
    800086b0:	10200073          	sret
    800086b4:	00000013          	nop
    800086b8:	00000013          	nop
    800086bc:	00000013          	nop

00000000800086c0 <timervec>:
    800086c0:	34051573          	csrrw	a0,mscratch,a0
    800086c4:	00b53023          	sd	a1,0(a0)
    800086c8:	00c53423          	sd	a2,8(a0)
    800086cc:	00d53823          	sd	a3,16(a0)
    800086d0:	01853583          	ld	a1,24(a0)
    800086d4:	02053603          	ld	a2,32(a0)
    800086d8:	0005b683          	ld	a3,0(a1)
    800086dc:	00c686b3          	add	a3,a3,a2
    800086e0:	00d5b023          	sd	a3,0(a1)
    800086e4:	00200593          	li	a1,2
    800086e8:	14459073          	csrw	sip,a1
    800086ec:	01053683          	ld	a3,16(a0)
    800086f0:	00853603          	ld	a2,8(a0)
    800086f4:	00053583          	ld	a1,0(a0)
    800086f8:	34051573          	csrrw	a0,mscratch,a0
    800086fc:	30200073          	mret

0000000080008700 <plicinit>:
    80008700:	ff010113          	addi	sp,sp,-16
    80008704:	00813423          	sd	s0,8(sp)
    80008708:	01010413          	addi	s0,sp,16
    8000870c:	00813403          	ld	s0,8(sp)
    80008710:	0c0007b7          	lui	a5,0xc000
    80008714:	00100713          	li	a4,1
    80008718:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000871c:	00e7a223          	sw	a4,4(a5)
    80008720:	01010113          	addi	sp,sp,16
    80008724:	00008067          	ret

0000000080008728 <plicinithart>:
    80008728:	ff010113          	addi	sp,sp,-16
    8000872c:	00813023          	sd	s0,0(sp)
    80008730:	00113423          	sd	ra,8(sp)
    80008734:	01010413          	addi	s0,sp,16
    80008738:	00000097          	auipc	ra,0x0
    8000873c:	a48080e7          	jalr	-1464(ra) # 80008180 <cpuid>
    80008740:	0085171b          	slliw	a4,a0,0x8
    80008744:	0c0027b7          	lui	a5,0xc002
    80008748:	00e787b3          	add	a5,a5,a4
    8000874c:	40200713          	li	a4,1026
    80008750:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80008754:	00813083          	ld	ra,8(sp)
    80008758:	00013403          	ld	s0,0(sp)
    8000875c:	00d5151b          	slliw	a0,a0,0xd
    80008760:	0c2017b7          	lui	a5,0xc201
    80008764:	00a78533          	add	a0,a5,a0
    80008768:	00052023          	sw	zero,0(a0)
    8000876c:	01010113          	addi	sp,sp,16
    80008770:	00008067          	ret

0000000080008774 <plic_claim>:
    80008774:	ff010113          	addi	sp,sp,-16
    80008778:	00813023          	sd	s0,0(sp)
    8000877c:	00113423          	sd	ra,8(sp)
    80008780:	01010413          	addi	s0,sp,16
    80008784:	00000097          	auipc	ra,0x0
    80008788:	9fc080e7          	jalr	-1540(ra) # 80008180 <cpuid>
    8000878c:	00813083          	ld	ra,8(sp)
    80008790:	00013403          	ld	s0,0(sp)
    80008794:	00d5151b          	slliw	a0,a0,0xd
    80008798:	0c2017b7          	lui	a5,0xc201
    8000879c:	00a78533          	add	a0,a5,a0
    800087a0:	00452503          	lw	a0,4(a0)
    800087a4:	01010113          	addi	sp,sp,16
    800087a8:	00008067          	ret

00000000800087ac <plic_complete>:
    800087ac:	fe010113          	addi	sp,sp,-32
    800087b0:	00813823          	sd	s0,16(sp)
    800087b4:	00913423          	sd	s1,8(sp)
    800087b8:	00113c23          	sd	ra,24(sp)
    800087bc:	02010413          	addi	s0,sp,32
    800087c0:	00050493          	mv	s1,a0
    800087c4:	00000097          	auipc	ra,0x0
    800087c8:	9bc080e7          	jalr	-1604(ra) # 80008180 <cpuid>
    800087cc:	01813083          	ld	ra,24(sp)
    800087d0:	01013403          	ld	s0,16(sp)
    800087d4:	00d5179b          	slliw	a5,a0,0xd
    800087d8:	0c201737          	lui	a4,0xc201
    800087dc:	00f707b3          	add	a5,a4,a5
    800087e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800087e4:	00813483          	ld	s1,8(sp)
    800087e8:	02010113          	addi	sp,sp,32
    800087ec:	00008067          	ret

00000000800087f0 <consolewrite>:
    800087f0:	fb010113          	addi	sp,sp,-80
    800087f4:	04813023          	sd	s0,64(sp)
    800087f8:	04113423          	sd	ra,72(sp)
    800087fc:	02913c23          	sd	s1,56(sp)
    80008800:	03213823          	sd	s2,48(sp)
    80008804:	03313423          	sd	s3,40(sp)
    80008808:	03413023          	sd	s4,32(sp)
    8000880c:	01513c23          	sd	s5,24(sp)
    80008810:	05010413          	addi	s0,sp,80
    80008814:	06c05c63          	blez	a2,8000888c <consolewrite+0x9c>
    80008818:	00060993          	mv	s3,a2
    8000881c:	00050a13          	mv	s4,a0
    80008820:	00058493          	mv	s1,a1
    80008824:	00000913          	li	s2,0
    80008828:	fff00a93          	li	s5,-1
    8000882c:	01c0006f          	j	80008848 <consolewrite+0x58>
    80008830:	fbf44503          	lbu	a0,-65(s0)
    80008834:	0019091b          	addiw	s2,s2,1
    80008838:	00148493          	addi	s1,s1,1
    8000883c:	00001097          	auipc	ra,0x1
    80008840:	a9c080e7          	jalr	-1380(ra) # 800092d8 <uartputc>
    80008844:	03298063          	beq	s3,s2,80008864 <consolewrite+0x74>
    80008848:	00048613          	mv	a2,s1
    8000884c:	00100693          	li	a3,1
    80008850:	000a0593          	mv	a1,s4
    80008854:	fbf40513          	addi	a0,s0,-65
    80008858:	00000097          	auipc	ra,0x0
    8000885c:	9e0080e7          	jalr	-1568(ra) # 80008238 <either_copyin>
    80008860:	fd5518e3          	bne	a0,s5,80008830 <consolewrite+0x40>
    80008864:	04813083          	ld	ra,72(sp)
    80008868:	04013403          	ld	s0,64(sp)
    8000886c:	03813483          	ld	s1,56(sp)
    80008870:	02813983          	ld	s3,40(sp)
    80008874:	02013a03          	ld	s4,32(sp)
    80008878:	01813a83          	ld	s5,24(sp)
    8000887c:	00090513          	mv	a0,s2
    80008880:	03013903          	ld	s2,48(sp)
    80008884:	05010113          	addi	sp,sp,80
    80008888:	00008067          	ret
    8000888c:	00000913          	li	s2,0
    80008890:	fd5ff06f          	j	80008864 <consolewrite+0x74>

0000000080008894 <consoleread>:
    80008894:	f9010113          	addi	sp,sp,-112
    80008898:	06813023          	sd	s0,96(sp)
    8000889c:	04913c23          	sd	s1,88(sp)
    800088a0:	05213823          	sd	s2,80(sp)
    800088a4:	05313423          	sd	s3,72(sp)
    800088a8:	05413023          	sd	s4,64(sp)
    800088ac:	03513c23          	sd	s5,56(sp)
    800088b0:	03613823          	sd	s6,48(sp)
    800088b4:	03713423          	sd	s7,40(sp)
    800088b8:	03813023          	sd	s8,32(sp)
    800088bc:	06113423          	sd	ra,104(sp)
    800088c0:	01913c23          	sd	s9,24(sp)
    800088c4:	07010413          	addi	s0,sp,112
    800088c8:	00060b93          	mv	s7,a2
    800088cc:	00050913          	mv	s2,a0
    800088d0:	00058c13          	mv	s8,a1
    800088d4:	00060b1b          	sext.w	s6,a2
    800088d8:	00007497          	auipc	s1,0x7
    800088dc:	00048493          	mv	s1,s1
    800088e0:	00400993          	li	s3,4
    800088e4:	fff00a13          	li	s4,-1
    800088e8:	00a00a93          	li	s5,10
    800088ec:	05705e63          	blez	s7,80008948 <consoleread+0xb4>
    800088f0:	09c4a703          	lw	a4,156(s1) # 8000f974 <cons+0x9c>
    800088f4:	0984a783          	lw	a5,152(s1)
    800088f8:	0007071b          	sext.w	a4,a4
    800088fc:	08e78463          	beq	a5,a4,80008984 <consoleread+0xf0>
    80008900:	07f7f713          	andi	a4,a5,127
    80008904:	00e48733          	add	a4,s1,a4
    80008908:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000890c:	0017869b          	addiw	a3,a5,1
    80008910:	08d4ac23          	sw	a3,152(s1)
    80008914:	00070c9b          	sext.w	s9,a4
    80008918:	0b370663          	beq	a4,s3,800089c4 <consoleread+0x130>
    8000891c:	00100693          	li	a3,1
    80008920:	f9f40613          	addi	a2,s0,-97
    80008924:	000c0593          	mv	a1,s8
    80008928:	00090513          	mv	a0,s2
    8000892c:	f8e40fa3          	sb	a4,-97(s0)
    80008930:	00000097          	auipc	ra,0x0
    80008934:	8bc080e7          	jalr	-1860(ra) # 800081ec <either_copyout>
    80008938:	01450863          	beq	a0,s4,80008948 <consoleread+0xb4>
    8000893c:	001c0c13          	addi	s8,s8,1
    80008940:	fffb8b9b          	addiw	s7,s7,-1
    80008944:	fb5c94e3          	bne	s9,s5,800088ec <consoleread+0x58>
    80008948:	000b851b          	sext.w	a0,s7
    8000894c:	06813083          	ld	ra,104(sp)
    80008950:	06013403          	ld	s0,96(sp)
    80008954:	05813483          	ld	s1,88(sp)
    80008958:	05013903          	ld	s2,80(sp)
    8000895c:	04813983          	ld	s3,72(sp)
    80008960:	04013a03          	ld	s4,64(sp)
    80008964:	03813a83          	ld	s5,56(sp)
    80008968:	02813b83          	ld	s7,40(sp)
    8000896c:	02013c03          	ld	s8,32(sp)
    80008970:	01813c83          	ld	s9,24(sp)
    80008974:	40ab053b          	subw	a0,s6,a0
    80008978:	03013b03          	ld	s6,48(sp)
    8000897c:	07010113          	addi	sp,sp,112
    80008980:	00008067          	ret
    80008984:	00001097          	auipc	ra,0x1
    80008988:	1d8080e7          	jalr	472(ra) # 80009b5c <push_on>
    8000898c:	0984a703          	lw	a4,152(s1)
    80008990:	09c4a783          	lw	a5,156(s1)
    80008994:	0007879b          	sext.w	a5,a5
    80008998:	fef70ce3          	beq	a4,a5,80008990 <consoleread+0xfc>
    8000899c:	00001097          	auipc	ra,0x1
    800089a0:	234080e7          	jalr	564(ra) # 80009bd0 <pop_on>
    800089a4:	0984a783          	lw	a5,152(s1)
    800089a8:	07f7f713          	andi	a4,a5,127
    800089ac:	00e48733          	add	a4,s1,a4
    800089b0:	01874703          	lbu	a4,24(a4)
    800089b4:	0017869b          	addiw	a3,a5,1
    800089b8:	08d4ac23          	sw	a3,152(s1)
    800089bc:	00070c9b          	sext.w	s9,a4
    800089c0:	f5371ee3          	bne	a4,s3,8000891c <consoleread+0x88>
    800089c4:	000b851b          	sext.w	a0,s7
    800089c8:	f96bf2e3          	bgeu	s7,s6,8000894c <consoleread+0xb8>
    800089cc:	08f4ac23          	sw	a5,152(s1)
    800089d0:	f7dff06f          	j	8000894c <consoleread+0xb8>

00000000800089d4 <consputc>:
    800089d4:	10000793          	li	a5,256
    800089d8:	00f50663          	beq	a0,a5,800089e4 <consputc+0x10>
    800089dc:	00001317          	auipc	t1,0x1
    800089e0:	9f430067          	jr	-1548(t1) # 800093d0 <uartputc_sync>
    800089e4:	ff010113          	addi	sp,sp,-16
    800089e8:	00113423          	sd	ra,8(sp)
    800089ec:	00813023          	sd	s0,0(sp)
    800089f0:	01010413          	addi	s0,sp,16
    800089f4:	00800513          	li	a0,8
    800089f8:	00001097          	auipc	ra,0x1
    800089fc:	9d8080e7          	jalr	-1576(ra) # 800093d0 <uartputc_sync>
    80008a00:	02000513          	li	a0,32
    80008a04:	00001097          	auipc	ra,0x1
    80008a08:	9cc080e7          	jalr	-1588(ra) # 800093d0 <uartputc_sync>
    80008a0c:	00013403          	ld	s0,0(sp)
    80008a10:	00813083          	ld	ra,8(sp)
    80008a14:	00800513          	li	a0,8
    80008a18:	01010113          	addi	sp,sp,16
    80008a1c:	00001317          	auipc	t1,0x1
    80008a20:	9b430067          	jr	-1612(t1) # 800093d0 <uartputc_sync>

0000000080008a24 <consoleintr>:
    80008a24:	fe010113          	addi	sp,sp,-32
    80008a28:	00813823          	sd	s0,16(sp)
    80008a2c:	00913423          	sd	s1,8(sp)
    80008a30:	01213023          	sd	s2,0(sp)
    80008a34:	00113c23          	sd	ra,24(sp)
    80008a38:	02010413          	addi	s0,sp,32
    80008a3c:	00007917          	auipc	s2,0x7
    80008a40:	e9c90913          	addi	s2,s2,-356 # 8000f8d8 <cons>
    80008a44:	00050493          	mv	s1,a0
    80008a48:	00090513          	mv	a0,s2
    80008a4c:	00001097          	auipc	ra,0x1
    80008a50:	e40080e7          	jalr	-448(ra) # 8000988c <acquire>
    80008a54:	02048c63          	beqz	s1,80008a8c <consoleintr+0x68>
    80008a58:	0a092783          	lw	a5,160(s2)
    80008a5c:	09892703          	lw	a4,152(s2)
    80008a60:	07f00693          	li	a3,127
    80008a64:	40e7873b          	subw	a4,a5,a4
    80008a68:	02e6e263          	bltu	a3,a4,80008a8c <consoleintr+0x68>
    80008a6c:	00d00713          	li	a4,13
    80008a70:	04e48063          	beq	s1,a4,80008ab0 <consoleintr+0x8c>
    80008a74:	07f7f713          	andi	a4,a5,127
    80008a78:	00e90733          	add	a4,s2,a4
    80008a7c:	0017879b          	addiw	a5,a5,1
    80008a80:	0af92023          	sw	a5,160(s2)
    80008a84:	00970c23          	sb	s1,24(a4)
    80008a88:	08f92e23          	sw	a5,156(s2)
    80008a8c:	01013403          	ld	s0,16(sp)
    80008a90:	01813083          	ld	ra,24(sp)
    80008a94:	00813483          	ld	s1,8(sp)
    80008a98:	00013903          	ld	s2,0(sp)
    80008a9c:	00007517          	auipc	a0,0x7
    80008aa0:	e3c50513          	addi	a0,a0,-452 # 8000f8d8 <cons>
    80008aa4:	02010113          	addi	sp,sp,32
    80008aa8:	00001317          	auipc	t1,0x1
    80008aac:	eb030067          	jr	-336(t1) # 80009958 <release>
    80008ab0:	00a00493          	li	s1,10
    80008ab4:	fc1ff06f          	j	80008a74 <consoleintr+0x50>

0000000080008ab8 <consoleinit>:
    80008ab8:	fe010113          	addi	sp,sp,-32
    80008abc:	00113c23          	sd	ra,24(sp)
    80008ac0:	00813823          	sd	s0,16(sp)
    80008ac4:	00913423          	sd	s1,8(sp)
    80008ac8:	02010413          	addi	s0,sp,32
    80008acc:	00007497          	auipc	s1,0x7
    80008ad0:	e0c48493          	addi	s1,s1,-500 # 8000f8d8 <cons>
    80008ad4:	00048513          	mv	a0,s1
    80008ad8:	00003597          	auipc	a1,0x3
    80008adc:	ef058593          	addi	a1,a1,-272 # 8000b9c8 <CONSOLE_STATUS+0x9b8>
    80008ae0:	00001097          	auipc	ra,0x1
    80008ae4:	d88080e7          	jalr	-632(ra) # 80009868 <initlock>
    80008ae8:	00000097          	auipc	ra,0x0
    80008aec:	7ac080e7          	jalr	1964(ra) # 80009294 <uartinit>
    80008af0:	01813083          	ld	ra,24(sp)
    80008af4:	01013403          	ld	s0,16(sp)
    80008af8:	00000797          	auipc	a5,0x0
    80008afc:	d9c78793          	addi	a5,a5,-612 # 80008894 <consoleread>
    80008b00:	0af4bc23          	sd	a5,184(s1)
    80008b04:	00000797          	auipc	a5,0x0
    80008b08:	cec78793          	addi	a5,a5,-788 # 800087f0 <consolewrite>
    80008b0c:	0cf4b023          	sd	a5,192(s1)
    80008b10:	00813483          	ld	s1,8(sp)
    80008b14:	02010113          	addi	sp,sp,32
    80008b18:	00008067          	ret

0000000080008b1c <console_read>:
    80008b1c:	ff010113          	addi	sp,sp,-16
    80008b20:	00813423          	sd	s0,8(sp)
    80008b24:	01010413          	addi	s0,sp,16
    80008b28:	00813403          	ld	s0,8(sp)
    80008b2c:	00007317          	auipc	t1,0x7
    80008b30:	e6433303          	ld	t1,-412(t1) # 8000f990 <devsw+0x10>
    80008b34:	01010113          	addi	sp,sp,16
    80008b38:	00030067          	jr	t1

0000000080008b3c <console_write>:
    80008b3c:	ff010113          	addi	sp,sp,-16
    80008b40:	00813423          	sd	s0,8(sp)
    80008b44:	01010413          	addi	s0,sp,16
    80008b48:	00813403          	ld	s0,8(sp)
    80008b4c:	00007317          	auipc	t1,0x7
    80008b50:	e4c33303          	ld	t1,-436(t1) # 8000f998 <devsw+0x18>
    80008b54:	01010113          	addi	sp,sp,16
    80008b58:	00030067          	jr	t1

0000000080008b5c <panic>:
    80008b5c:	fe010113          	addi	sp,sp,-32
    80008b60:	00113c23          	sd	ra,24(sp)
    80008b64:	00813823          	sd	s0,16(sp)
    80008b68:	00913423          	sd	s1,8(sp)
    80008b6c:	02010413          	addi	s0,sp,32
    80008b70:	00050493          	mv	s1,a0
    80008b74:	00003517          	auipc	a0,0x3
    80008b78:	e5c50513          	addi	a0,a0,-420 # 8000b9d0 <CONSOLE_STATUS+0x9c0>
    80008b7c:	00007797          	auipc	a5,0x7
    80008b80:	ea07ae23          	sw	zero,-324(a5) # 8000fa38 <pr+0x18>
    80008b84:	00000097          	auipc	ra,0x0
    80008b88:	034080e7          	jalr	52(ra) # 80008bb8 <__printf>
    80008b8c:	00048513          	mv	a0,s1
    80008b90:	00000097          	auipc	ra,0x0
    80008b94:	028080e7          	jalr	40(ra) # 80008bb8 <__printf>
    80008b98:	00003517          	auipc	a0,0x3
    80008b9c:	a1850513          	addi	a0,a0,-1512 # 8000b5b0 <CONSOLE_STATUS+0x5a0>
    80008ba0:	00000097          	auipc	ra,0x0
    80008ba4:	018080e7          	jalr	24(ra) # 80008bb8 <__printf>
    80008ba8:	00100793          	li	a5,1
    80008bac:	00006717          	auipc	a4,0x6
    80008bb0:	96f72623          	sw	a5,-1684(a4) # 8000e518 <panicked>
    80008bb4:	0000006f          	j	80008bb4 <panic+0x58>

0000000080008bb8 <__printf>:
    80008bb8:	f3010113          	addi	sp,sp,-208
    80008bbc:	08813023          	sd	s0,128(sp)
    80008bc0:	07313423          	sd	s3,104(sp)
    80008bc4:	09010413          	addi	s0,sp,144
    80008bc8:	05813023          	sd	s8,64(sp)
    80008bcc:	08113423          	sd	ra,136(sp)
    80008bd0:	06913c23          	sd	s1,120(sp)
    80008bd4:	07213823          	sd	s2,112(sp)
    80008bd8:	07413023          	sd	s4,96(sp)
    80008bdc:	05513c23          	sd	s5,88(sp)
    80008be0:	05613823          	sd	s6,80(sp)
    80008be4:	05713423          	sd	s7,72(sp)
    80008be8:	03913c23          	sd	s9,56(sp)
    80008bec:	03a13823          	sd	s10,48(sp)
    80008bf0:	03b13423          	sd	s11,40(sp)
    80008bf4:	00007317          	auipc	t1,0x7
    80008bf8:	e2c30313          	addi	t1,t1,-468 # 8000fa20 <pr>
    80008bfc:	01832c03          	lw	s8,24(t1)
    80008c00:	00b43423          	sd	a1,8(s0)
    80008c04:	00c43823          	sd	a2,16(s0)
    80008c08:	00d43c23          	sd	a3,24(s0)
    80008c0c:	02e43023          	sd	a4,32(s0)
    80008c10:	02f43423          	sd	a5,40(s0)
    80008c14:	03043823          	sd	a6,48(s0)
    80008c18:	03143c23          	sd	a7,56(s0)
    80008c1c:	00050993          	mv	s3,a0
    80008c20:	4a0c1663          	bnez	s8,800090cc <__printf+0x514>
    80008c24:	60098c63          	beqz	s3,8000923c <__printf+0x684>
    80008c28:	0009c503          	lbu	a0,0(s3)
    80008c2c:	00840793          	addi	a5,s0,8
    80008c30:	f6f43c23          	sd	a5,-136(s0)
    80008c34:	00000493          	li	s1,0
    80008c38:	22050063          	beqz	a0,80008e58 <__printf+0x2a0>
    80008c3c:	00002a37          	lui	s4,0x2
    80008c40:	00018ab7          	lui	s5,0x18
    80008c44:	000f4b37          	lui	s6,0xf4
    80008c48:	00989bb7          	lui	s7,0x989
    80008c4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80008c50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80008c54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80008c58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80008c5c:	00148c9b          	addiw	s9,s1,1
    80008c60:	02500793          	li	a5,37
    80008c64:	01998933          	add	s2,s3,s9
    80008c68:	38f51263          	bne	a0,a5,80008fec <__printf+0x434>
    80008c6c:	00094783          	lbu	a5,0(s2)
    80008c70:	00078c9b          	sext.w	s9,a5
    80008c74:	1e078263          	beqz	a5,80008e58 <__printf+0x2a0>
    80008c78:	0024849b          	addiw	s1,s1,2
    80008c7c:	07000713          	li	a4,112
    80008c80:	00998933          	add	s2,s3,s1
    80008c84:	38e78a63          	beq	a5,a4,80009018 <__printf+0x460>
    80008c88:	20f76863          	bltu	a4,a5,80008e98 <__printf+0x2e0>
    80008c8c:	42a78863          	beq	a5,a0,800090bc <__printf+0x504>
    80008c90:	06400713          	li	a4,100
    80008c94:	40e79663          	bne	a5,a4,800090a0 <__printf+0x4e8>
    80008c98:	f7843783          	ld	a5,-136(s0)
    80008c9c:	0007a603          	lw	a2,0(a5)
    80008ca0:	00878793          	addi	a5,a5,8
    80008ca4:	f6f43c23          	sd	a5,-136(s0)
    80008ca8:	42064a63          	bltz	a2,800090dc <__printf+0x524>
    80008cac:	00a00713          	li	a4,10
    80008cb0:	02e677bb          	remuw	a5,a2,a4
    80008cb4:	00003d97          	auipc	s11,0x3
    80008cb8:	d44d8d93          	addi	s11,s11,-700 # 8000b9f8 <digits>
    80008cbc:	00900593          	li	a1,9
    80008cc0:	0006051b          	sext.w	a0,a2
    80008cc4:	00000c93          	li	s9,0
    80008cc8:	02079793          	slli	a5,a5,0x20
    80008ccc:	0207d793          	srli	a5,a5,0x20
    80008cd0:	00fd87b3          	add	a5,s11,a5
    80008cd4:	0007c783          	lbu	a5,0(a5)
    80008cd8:	02e656bb          	divuw	a3,a2,a4
    80008cdc:	f8f40023          	sb	a5,-128(s0)
    80008ce0:	14c5d863          	bge	a1,a2,80008e30 <__printf+0x278>
    80008ce4:	06300593          	li	a1,99
    80008ce8:	00100c93          	li	s9,1
    80008cec:	02e6f7bb          	remuw	a5,a3,a4
    80008cf0:	02079793          	slli	a5,a5,0x20
    80008cf4:	0207d793          	srli	a5,a5,0x20
    80008cf8:	00fd87b3          	add	a5,s11,a5
    80008cfc:	0007c783          	lbu	a5,0(a5)
    80008d00:	02e6d73b          	divuw	a4,a3,a4
    80008d04:	f8f400a3          	sb	a5,-127(s0)
    80008d08:	12a5f463          	bgeu	a1,a0,80008e30 <__printf+0x278>
    80008d0c:	00a00693          	li	a3,10
    80008d10:	00900593          	li	a1,9
    80008d14:	02d777bb          	remuw	a5,a4,a3
    80008d18:	02079793          	slli	a5,a5,0x20
    80008d1c:	0207d793          	srli	a5,a5,0x20
    80008d20:	00fd87b3          	add	a5,s11,a5
    80008d24:	0007c503          	lbu	a0,0(a5)
    80008d28:	02d757bb          	divuw	a5,a4,a3
    80008d2c:	f8a40123          	sb	a0,-126(s0)
    80008d30:	48e5f263          	bgeu	a1,a4,800091b4 <__printf+0x5fc>
    80008d34:	06300513          	li	a0,99
    80008d38:	02d7f5bb          	remuw	a1,a5,a3
    80008d3c:	02059593          	slli	a1,a1,0x20
    80008d40:	0205d593          	srli	a1,a1,0x20
    80008d44:	00bd85b3          	add	a1,s11,a1
    80008d48:	0005c583          	lbu	a1,0(a1)
    80008d4c:	02d7d7bb          	divuw	a5,a5,a3
    80008d50:	f8b401a3          	sb	a1,-125(s0)
    80008d54:	48e57263          	bgeu	a0,a4,800091d8 <__printf+0x620>
    80008d58:	3e700513          	li	a0,999
    80008d5c:	02d7f5bb          	remuw	a1,a5,a3
    80008d60:	02059593          	slli	a1,a1,0x20
    80008d64:	0205d593          	srli	a1,a1,0x20
    80008d68:	00bd85b3          	add	a1,s11,a1
    80008d6c:	0005c583          	lbu	a1,0(a1)
    80008d70:	02d7d7bb          	divuw	a5,a5,a3
    80008d74:	f8b40223          	sb	a1,-124(s0)
    80008d78:	46e57663          	bgeu	a0,a4,800091e4 <__printf+0x62c>
    80008d7c:	02d7f5bb          	remuw	a1,a5,a3
    80008d80:	02059593          	slli	a1,a1,0x20
    80008d84:	0205d593          	srli	a1,a1,0x20
    80008d88:	00bd85b3          	add	a1,s11,a1
    80008d8c:	0005c583          	lbu	a1,0(a1)
    80008d90:	02d7d7bb          	divuw	a5,a5,a3
    80008d94:	f8b402a3          	sb	a1,-123(s0)
    80008d98:	46ea7863          	bgeu	s4,a4,80009208 <__printf+0x650>
    80008d9c:	02d7f5bb          	remuw	a1,a5,a3
    80008da0:	02059593          	slli	a1,a1,0x20
    80008da4:	0205d593          	srli	a1,a1,0x20
    80008da8:	00bd85b3          	add	a1,s11,a1
    80008dac:	0005c583          	lbu	a1,0(a1)
    80008db0:	02d7d7bb          	divuw	a5,a5,a3
    80008db4:	f8b40323          	sb	a1,-122(s0)
    80008db8:	3eeaf863          	bgeu	s5,a4,800091a8 <__printf+0x5f0>
    80008dbc:	02d7f5bb          	remuw	a1,a5,a3
    80008dc0:	02059593          	slli	a1,a1,0x20
    80008dc4:	0205d593          	srli	a1,a1,0x20
    80008dc8:	00bd85b3          	add	a1,s11,a1
    80008dcc:	0005c583          	lbu	a1,0(a1)
    80008dd0:	02d7d7bb          	divuw	a5,a5,a3
    80008dd4:	f8b403a3          	sb	a1,-121(s0)
    80008dd8:	42eb7e63          	bgeu	s6,a4,80009214 <__printf+0x65c>
    80008ddc:	02d7f5bb          	remuw	a1,a5,a3
    80008de0:	02059593          	slli	a1,a1,0x20
    80008de4:	0205d593          	srli	a1,a1,0x20
    80008de8:	00bd85b3          	add	a1,s11,a1
    80008dec:	0005c583          	lbu	a1,0(a1)
    80008df0:	02d7d7bb          	divuw	a5,a5,a3
    80008df4:	f8b40423          	sb	a1,-120(s0)
    80008df8:	42ebfc63          	bgeu	s7,a4,80009230 <__printf+0x678>
    80008dfc:	02079793          	slli	a5,a5,0x20
    80008e00:	0207d793          	srli	a5,a5,0x20
    80008e04:	00fd8db3          	add	s11,s11,a5
    80008e08:	000dc703          	lbu	a4,0(s11)
    80008e0c:	00a00793          	li	a5,10
    80008e10:	00900c93          	li	s9,9
    80008e14:	f8e404a3          	sb	a4,-119(s0)
    80008e18:	00065c63          	bgez	a2,80008e30 <__printf+0x278>
    80008e1c:	f9040713          	addi	a4,s0,-112
    80008e20:	00f70733          	add	a4,a4,a5
    80008e24:	02d00693          	li	a3,45
    80008e28:	fed70823          	sb	a3,-16(a4)
    80008e2c:	00078c93          	mv	s9,a5
    80008e30:	f8040793          	addi	a5,s0,-128
    80008e34:	01978cb3          	add	s9,a5,s9
    80008e38:	f7f40d13          	addi	s10,s0,-129
    80008e3c:	000cc503          	lbu	a0,0(s9)
    80008e40:	fffc8c93          	addi	s9,s9,-1
    80008e44:	00000097          	auipc	ra,0x0
    80008e48:	b90080e7          	jalr	-1136(ra) # 800089d4 <consputc>
    80008e4c:	ffac98e3          	bne	s9,s10,80008e3c <__printf+0x284>
    80008e50:	00094503          	lbu	a0,0(s2)
    80008e54:	e00514e3          	bnez	a0,80008c5c <__printf+0xa4>
    80008e58:	1a0c1663          	bnez	s8,80009004 <__printf+0x44c>
    80008e5c:	08813083          	ld	ra,136(sp)
    80008e60:	08013403          	ld	s0,128(sp)
    80008e64:	07813483          	ld	s1,120(sp)
    80008e68:	07013903          	ld	s2,112(sp)
    80008e6c:	06813983          	ld	s3,104(sp)
    80008e70:	06013a03          	ld	s4,96(sp)
    80008e74:	05813a83          	ld	s5,88(sp)
    80008e78:	05013b03          	ld	s6,80(sp)
    80008e7c:	04813b83          	ld	s7,72(sp)
    80008e80:	04013c03          	ld	s8,64(sp)
    80008e84:	03813c83          	ld	s9,56(sp)
    80008e88:	03013d03          	ld	s10,48(sp)
    80008e8c:	02813d83          	ld	s11,40(sp)
    80008e90:	0d010113          	addi	sp,sp,208
    80008e94:	00008067          	ret
    80008e98:	07300713          	li	a4,115
    80008e9c:	1ce78a63          	beq	a5,a4,80009070 <__printf+0x4b8>
    80008ea0:	07800713          	li	a4,120
    80008ea4:	1ee79e63          	bne	a5,a4,800090a0 <__printf+0x4e8>
    80008ea8:	f7843783          	ld	a5,-136(s0)
    80008eac:	0007a703          	lw	a4,0(a5)
    80008eb0:	00878793          	addi	a5,a5,8
    80008eb4:	f6f43c23          	sd	a5,-136(s0)
    80008eb8:	28074263          	bltz	a4,8000913c <__printf+0x584>
    80008ebc:	00003d97          	auipc	s11,0x3
    80008ec0:	b3cd8d93          	addi	s11,s11,-1220 # 8000b9f8 <digits>
    80008ec4:	00f77793          	andi	a5,a4,15
    80008ec8:	00fd87b3          	add	a5,s11,a5
    80008ecc:	0007c683          	lbu	a3,0(a5)
    80008ed0:	00f00613          	li	a2,15
    80008ed4:	0007079b          	sext.w	a5,a4
    80008ed8:	f8d40023          	sb	a3,-128(s0)
    80008edc:	0047559b          	srliw	a1,a4,0x4
    80008ee0:	0047569b          	srliw	a3,a4,0x4
    80008ee4:	00000c93          	li	s9,0
    80008ee8:	0ee65063          	bge	a2,a4,80008fc8 <__printf+0x410>
    80008eec:	00f6f693          	andi	a3,a3,15
    80008ef0:	00dd86b3          	add	a3,s11,a3
    80008ef4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008ef8:	0087d79b          	srliw	a5,a5,0x8
    80008efc:	00100c93          	li	s9,1
    80008f00:	f8d400a3          	sb	a3,-127(s0)
    80008f04:	0cb67263          	bgeu	a2,a1,80008fc8 <__printf+0x410>
    80008f08:	00f7f693          	andi	a3,a5,15
    80008f0c:	00dd86b3          	add	a3,s11,a3
    80008f10:	0006c583          	lbu	a1,0(a3)
    80008f14:	00f00613          	li	a2,15
    80008f18:	0047d69b          	srliw	a3,a5,0x4
    80008f1c:	f8b40123          	sb	a1,-126(s0)
    80008f20:	0047d593          	srli	a1,a5,0x4
    80008f24:	28f67e63          	bgeu	a2,a5,800091c0 <__printf+0x608>
    80008f28:	00f6f693          	andi	a3,a3,15
    80008f2c:	00dd86b3          	add	a3,s11,a3
    80008f30:	0006c503          	lbu	a0,0(a3)
    80008f34:	0087d813          	srli	a6,a5,0x8
    80008f38:	0087d69b          	srliw	a3,a5,0x8
    80008f3c:	f8a401a3          	sb	a0,-125(s0)
    80008f40:	28b67663          	bgeu	a2,a1,800091cc <__printf+0x614>
    80008f44:	00f6f693          	andi	a3,a3,15
    80008f48:	00dd86b3          	add	a3,s11,a3
    80008f4c:	0006c583          	lbu	a1,0(a3)
    80008f50:	00c7d513          	srli	a0,a5,0xc
    80008f54:	00c7d69b          	srliw	a3,a5,0xc
    80008f58:	f8b40223          	sb	a1,-124(s0)
    80008f5c:	29067a63          	bgeu	a2,a6,800091f0 <__printf+0x638>
    80008f60:	00f6f693          	andi	a3,a3,15
    80008f64:	00dd86b3          	add	a3,s11,a3
    80008f68:	0006c583          	lbu	a1,0(a3)
    80008f6c:	0107d813          	srli	a6,a5,0x10
    80008f70:	0107d69b          	srliw	a3,a5,0x10
    80008f74:	f8b402a3          	sb	a1,-123(s0)
    80008f78:	28a67263          	bgeu	a2,a0,800091fc <__printf+0x644>
    80008f7c:	00f6f693          	andi	a3,a3,15
    80008f80:	00dd86b3          	add	a3,s11,a3
    80008f84:	0006c683          	lbu	a3,0(a3)
    80008f88:	0147d79b          	srliw	a5,a5,0x14
    80008f8c:	f8d40323          	sb	a3,-122(s0)
    80008f90:	21067663          	bgeu	a2,a6,8000919c <__printf+0x5e4>
    80008f94:	02079793          	slli	a5,a5,0x20
    80008f98:	0207d793          	srli	a5,a5,0x20
    80008f9c:	00fd8db3          	add	s11,s11,a5
    80008fa0:	000dc683          	lbu	a3,0(s11)
    80008fa4:	00800793          	li	a5,8
    80008fa8:	00700c93          	li	s9,7
    80008fac:	f8d403a3          	sb	a3,-121(s0)
    80008fb0:	00075c63          	bgez	a4,80008fc8 <__printf+0x410>
    80008fb4:	f9040713          	addi	a4,s0,-112
    80008fb8:	00f70733          	add	a4,a4,a5
    80008fbc:	02d00693          	li	a3,45
    80008fc0:	fed70823          	sb	a3,-16(a4)
    80008fc4:	00078c93          	mv	s9,a5
    80008fc8:	f8040793          	addi	a5,s0,-128
    80008fcc:	01978cb3          	add	s9,a5,s9
    80008fd0:	f7f40d13          	addi	s10,s0,-129
    80008fd4:	000cc503          	lbu	a0,0(s9)
    80008fd8:	fffc8c93          	addi	s9,s9,-1
    80008fdc:	00000097          	auipc	ra,0x0
    80008fe0:	9f8080e7          	jalr	-1544(ra) # 800089d4 <consputc>
    80008fe4:	ff9d18e3          	bne	s10,s9,80008fd4 <__printf+0x41c>
    80008fe8:	0100006f          	j	80008ff8 <__printf+0x440>
    80008fec:	00000097          	auipc	ra,0x0
    80008ff0:	9e8080e7          	jalr	-1560(ra) # 800089d4 <consputc>
    80008ff4:	000c8493          	mv	s1,s9
    80008ff8:	00094503          	lbu	a0,0(s2)
    80008ffc:	c60510e3          	bnez	a0,80008c5c <__printf+0xa4>
    80009000:	e40c0ee3          	beqz	s8,80008e5c <__printf+0x2a4>
    80009004:	00007517          	auipc	a0,0x7
    80009008:	a1c50513          	addi	a0,a0,-1508 # 8000fa20 <pr>
    8000900c:	00001097          	auipc	ra,0x1
    80009010:	94c080e7          	jalr	-1716(ra) # 80009958 <release>
    80009014:	e49ff06f          	j	80008e5c <__printf+0x2a4>
    80009018:	f7843783          	ld	a5,-136(s0)
    8000901c:	03000513          	li	a0,48
    80009020:	01000d13          	li	s10,16
    80009024:	00878713          	addi	a4,a5,8
    80009028:	0007bc83          	ld	s9,0(a5)
    8000902c:	f6e43c23          	sd	a4,-136(s0)
    80009030:	00000097          	auipc	ra,0x0
    80009034:	9a4080e7          	jalr	-1628(ra) # 800089d4 <consputc>
    80009038:	07800513          	li	a0,120
    8000903c:	00000097          	auipc	ra,0x0
    80009040:	998080e7          	jalr	-1640(ra) # 800089d4 <consputc>
    80009044:	00003d97          	auipc	s11,0x3
    80009048:	9b4d8d93          	addi	s11,s11,-1612 # 8000b9f8 <digits>
    8000904c:	03ccd793          	srli	a5,s9,0x3c
    80009050:	00fd87b3          	add	a5,s11,a5
    80009054:	0007c503          	lbu	a0,0(a5)
    80009058:	fffd0d1b          	addiw	s10,s10,-1
    8000905c:	004c9c93          	slli	s9,s9,0x4
    80009060:	00000097          	auipc	ra,0x0
    80009064:	974080e7          	jalr	-1676(ra) # 800089d4 <consputc>
    80009068:	fe0d12e3          	bnez	s10,8000904c <__printf+0x494>
    8000906c:	f8dff06f          	j	80008ff8 <__printf+0x440>
    80009070:	f7843783          	ld	a5,-136(s0)
    80009074:	0007bc83          	ld	s9,0(a5)
    80009078:	00878793          	addi	a5,a5,8
    8000907c:	f6f43c23          	sd	a5,-136(s0)
    80009080:	000c9a63          	bnez	s9,80009094 <__printf+0x4dc>
    80009084:	1080006f          	j	8000918c <__printf+0x5d4>
    80009088:	001c8c93          	addi	s9,s9,1
    8000908c:	00000097          	auipc	ra,0x0
    80009090:	948080e7          	jalr	-1720(ra) # 800089d4 <consputc>
    80009094:	000cc503          	lbu	a0,0(s9)
    80009098:	fe0518e3          	bnez	a0,80009088 <__printf+0x4d0>
    8000909c:	f5dff06f          	j	80008ff8 <__printf+0x440>
    800090a0:	02500513          	li	a0,37
    800090a4:	00000097          	auipc	ra,0x0
    800090a8:	930080e7          	jalr	-1744(ra) # 800089d4 <consputc>
    800090ac:	000c8513          	mv	a0,s9
    800090b0:	00000097          	auipc	ra,0x0
    800090b4:	924080e7          	jalr	-1756(ra) # 800089d4 <consputc>
    800090b8:	f41ff06f          	j	80008ff8 <__printf+0x440>
    800090bc:	02500513          	li	a0,37
    800090c0:	00000097          	auipc	ra,0x0
    800090c4:	914080e7          	jalr	-1772(ra) # 800089d4 <consputc>
    800090c8:	f31ff06f          	j	80008ff8 <__printf+0x440>
    800090cc:	00030513          	mv	a0,t1
    800090d0:	00000097          	auipc	ra,0x0
    800090d4:	7bc080e7          	jalr	1980(ra) # 8000988c <acquire>
    800090d8:	b4dff06f          	j	80008c24 <__printf+0x6c>
    800090dc:	40c0053b          	negw	a0,a2
    800090e0:	00a00713          	li	a4,10
    800090e4:	02e576bb          	remuw	a3,a0,a4
    800090e8:	00003d97          	auipc	s11,0x3
    800090ec:	910d8d93          	addi	s11,s11,-1776 # 8000b9f8 <digits>
    800090f0:	ff700593          	li	a1,-9
    800090f4:	02069693          	slli	a3,a3,0x20
    800090f8:	0206d693          	srli	a3,a3,0x20
    800090fc:	00dd86b3          	add	a3,s11,a3
    80009100:	0006c683          	lbu	a3,0(a3)
    80009104:	02e557bb          	divuw	a5,a0,a4
    80009108:	f8d40023          	sb	a3,-128(s0)
    8000910c:	10b65e63          	bge	a2,a1,80009228 <__printf+0x670>
    80009110:	06300593          	li	a1,99
    80009114:	02e7f6bb          	remuw	a3,a5,a4
    80009118:	02069693          	slli	a3,a3,0x20
    8000911c:	0206d693          	srli	a3,a3,0x20
    80009120:	00dd86b3          	add	a3,s11,a3
    80009124:	0006c683          	lbu	a3,0(a3)
    80009128:	02e7d73b          	divuw	a4,a5,a4
    8000912c:	00200793          	li	a5,2
    80009130:	f8d400a3          	sb	a3,-127(s0)
    80009134:	bca5ece3          	bltu	a1,a0,80008d0c <__printf+0x154>
    80009138:	ce5ff06f          	j	80008e1c <__printf+0x264>
    8000913c:	40e007bb          	negw	a5,a4
    80009140:	00003d97          	auipc	s11,0x3
    80009144:	8b8d8d93          	addi	s11,s11,-1864 # 8000b9f8 <digits>
    80009148:	00f7f693          	andi	a3,a5,15
    8000914c:	00dd86b3          	add	a3,s11,a3
    80009150:	0006c583          	lbu	a1,0(a3)
    80009154:	ff100613          	li	a2,-15
    80009158:	0047d69b          	srliw	a3,a5,0x4
    8000915c:	f8b40023          	sb	a1,-128(s0)
    80009160:	0047d59b          	srliw	a1,a5,0x4
    80009164:	0ac75e63          	bge	a4,a2,80009220 <__printf+0x668>
    80009168:	00f6f693          	andi	a3,a3,15
    8000916c:	00dd86b3          	add	a3,s11,a3
    80009170:	0006c603          	lbu	a2,0(a3)
    80009174:	00f00693          	li	a3,15
    80009178:	0087d79b          	srliw	a5,a5,0x8
    8000917c:	f8c400a3          	sb	a2,-127(s0)
    80009180:	d8b6e4e3          	bltu	a3,a1,80008f08 <__printf+0x350>
    80009184:	00200793          	li	a5,2
    80009188:	e2dff06f          	j	80008fb4 <__printf+0x3fc>
    8000918c:	00003c97          	auipc	s9,0x3
    80009190:	84cc8c93          	addi	s9,s9,-1972 # 8000b9d8 <CONSOLE_STATUS+0x9c8>
    80009194:	02800513          	li	a0,40
    80009198:	ef1ff06f          	j	80009088 <__printf+0x4d0>
    8000919c:	00700793          	li	a5,7
    800091a0:	00600c93          	li	s9,6
    800091a4:	e0dff06f          	j	80008fb0 <__printf+0x3f8>
    800091a8:	00700793          	li	a5,7
    800091ac:	00600c93          	li	s9,6
    800091b0:	c69ff06f          	j	80008e18 <__printf+0x260>
    800091b4:	00300793          	li	a5,3
    800091b8:	00200c93          	li	s9,2
    800091bc:	c5dff06f          	j	80008e18 <__printf+0x260>
    800091c0:	00300793          	li	a5,3
    800091c4:	00200c93          	li	s9,2
    800091c8:	de9ff06f          	j	80008fb0 <__printf+0x3f8>
    800091cc:	00400793          	li	a5,4
    800091d0:	00300c93          	li	s9,3
    800091d4:	dddff06f          	j	80008fb0 <__printf+0x3f8>
    800091d8:	00400793          	li	a5,4
    800091dc:	00300c93          	li	s9,3
    800091e0:	c39ff06f          	j	80008e18 <__printf+0x260>
    800091e4:	00500793          	li	a5,5
    800091e8:	00400c93          	li	s9,4
    800091ec:	c2dff06f          	j	80008e18 <__printf+0x260>
    800091f0:	00500793          	li	a5,5
    800091f4:	00400c93          	li	s9,4
    800091f8:	db9ff06f          	j	80008fb0 <__printf+0x3f8>
    800091fc:	00600793          	li	a5,6
    80009200:	00500c93          	li	s9,5
    80009204:	dadff06f          	j	80008fb0 <__printf+0x3f8>
    80009208:	00600793          	li	a5,6
    8000920c:	00500c93          	li	s9,5
    80009210:	c09ff06f          	j	80008e18 <__printf+0x260>
    80009214:	00800793          	li	a5,8
    80009218:	00700c93          	li	s9,7
    8000921c:	bfdff06f          	j	80008e18 <__printf+0x260>
    80009220:	00100793          	li	a5,1
    80009224:	d91ff06f          	j	80008fb4 <__printf+0x3fc>
    80009228:	00100793          	li	a5,1
    8000922c:	bf1ff06f          	j	80008e1c <__printf+0x264>
    80009230:	00900793          	li	a5,9
    80009234:	00800c93          	li	s9,8
    80009238:	be1ff06f          	j	80008e18 <__printf+0x260>
    8000923c:	00002517          	auipc	a0,0x2
    80009240:	7a450513          	addi	a0,a0,1956 # 8000b9e0 <CONSOLE_STATUS+0x9d0>
    80009244:	00000097          	auipc	ra,0x0
    80009248:	918080e7          	jalr	-1768(ra) # 80008b5c <panic>

000000008000924c <printfinit>:
    8000924c:	fe010113          	addi	sp,sp,-32
    80009250:	00813823          	sd	s0,16(sp)
    80009254:	00913423          	sd	s1,8(sp)
    80009258:	00113c23          	sd	ra,24(sp)
    8000925c:	02010413          	addi	s0,sp,32
    80009260:	00006497          	auipc	s1,0x6
    80009264:	7c048493          	addi	s1,s1,1984 # 8000fa20 <pr>
    80009268:	00048513          	mv	a0,s1
    8000926c:	00002597          	auipc	a1,0x2
    80009270:	78458593          	addi	a1,a1,1924 # 8000b9f0 <CONSOLE_STATUS+0x9e0>
    80009274:	00000097          	auipc	ra,0x0
    80009278:	5f4080e7          	jalr	1524(ra) # 80009868 <initlock>
    8000927c:	01813083          	ld	ra,24(sp)
    80009280:	01013403          	ld	s0,16(sp)
    80009284:	0004ac23          	sw	zero,24(s1)
    80009288:	00813483          	ld	s1,8(sp)
    8000928c:	02010113          	addi	sp,sp,32
    80009290:	00008067          	ret

0000000080009294 <uartinit>:
    80009294:	ff010113          	addi	sp,sp,-16
    80009298:	00813423          	sd	s0,8(sp)
    8000929c:	01010413          	addi	s0,sp,16
    800092a0:	100007b7          	lui	a5,0x10000
    800092a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800092a8:	f8000713          	li	a4,-128
    800092ac:	00e781a3          	sb	a4,3(a5)
    800092b0:	00300713          	li	a4,3
    800092b4:	00e78023          	sb	a4,0(a5)
    800092b8:	000780a3          	sb	zero,1(a5)
    800092bc:	00e781a3          	sb	a4,3(a5)
    800092c0:	00700693          	li	a3,7
    800092c4:	00d78123          	sb	a3,2(a5)
    800092c8:	00e780a3          	sb	a4,1(a5)
    800092cc:	00813403          	ld	s0,8(sp)
    800092d0:	01010113          	addi	sp,sp,16
    800092d4:	00008067          	ret

00000000800092d8 <uartputc>:
    800092d8:	00005797          	auipc	a5,0x5
    800092dc:	2407a783          	lw	a5,576(a5) # 8000e518 <panicked>
    800092e0:	00078463          	beqz	a5,800092e8 <uartputc+0x10>
    800092e4:	0000006f          	j	800092e4 <uartputc+0xc>
    800092e8:	fd010113          	addi	sp,sp,-48
    800092ec:	02813023          	sd	s0,32(sp)
    800092f0:	00913c23          	sd	s1,24(sp)
    800092f4:	01213823          	sd	s2,16(sp)
    800092f8:	01313423          	sd	s3,8(sp)
    800092fc:	02113423          	sd	ra,40(sp)
    80009300:	03010413          	addi	s0,sp,48
    80009304:	00005917          	auipc	s2,0x5
    80009308:	21c90913          	addi	s2,s2,540 # 8000e520 <uart_tx_r>
    8000930c:	00093783          	ld	a5,0(s2)
    80009310:	00005497          	auipc	s1,0x5
    80009314:	21848493          	addi	s1,s1,536 # 8000e528 <uart_tx_w>
    80009318:	0004b703          	ld	a4,0(s1)
    8000931c:	02078693          	addi	a3,a5,32
    80009320:	00050993          	mv	s3,a0
    80009324:	02e69c63          	bne	a3,a4,8000935c <uartputc+0x84>
    80009328:	00001097          	auipc	ra,0x1
    8000932c:	834080e7          	jalr	-1996(ra) # 80009b5c <push_on>
    80009330:	00093783          	ld	a5,0(s2)
    80009334:	0004b703          	ld	a4,0(s1)
    80009338:	02078793          	addi	a5,a5,32
    8000933c:	00e79463          	bne	a5,a4,80009344 <uartputc+0x6c>
    80009340:	0000006f          	j	80009340 <uartputc+0x68>
    80009344:	00001097          	auipc	ra,0x1
    80009348:	88c080e7          	jalr	-1908(ra) # 80009bd0 <pop_on>
    8000934c:	00093783          	ld	a5,0(s2)
    80009350:	0004b703          	ld	a4,0(s1)
    80009354:	02078693          	addi	a3,a5,32
    80009358:	fce688e3          	beq	a3,a4,80009328 <uartputc+0x50>
    8000935c:	01f77693          	andi	a3,a4,31
    80009360:	00006597          	auipc	a1,0x6
    80009364:	6e058593          	addi	a1,a1,1760 # 8000fa40 <uart_tx_buf>
    80009368:	00d586b3          	add	a3,a1,a3
    8000936c:	00170713          	addi	a4,a4,1
    80009370:	01368023          	sb	s3,0(a3)
    80009374:	00e4b023          	sd	a4,0(s1)
    80009378:	10000637          	lui	a2,0x10000
    8000937c:	02f71063          	bne	a4,a5,8000939c <uartputc+0xc4>
    80009380:	0340006f          	j	800093b4 <uartputc+0xdc>
    80009384:	00074703          	lbu	a4,0(a4)
    80009388:	00f93023          	sd	a5,0(s2)
    8000938c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80009390:	00093783          	ld	a5,0(s2)
    80009394:	0004b703          	ld	a4,0(s1)
    80009398:	00f70e63          	beq	a4,a5,800093b4 <uartputc+0xdc>
    8000939c:	00564683          	lbu	a3,5(a2)
    800093a0:	01f7f713          	andi	a4,a5,31
    800093a4:	00e58733          	add	a4,a1,a4
    800093a8:	0206f693          	andi	a3,a3,32
    800093ac:	00178793          	addi	a5,a5,1
    800093b0:	fc069ae3          	bnez	a3,80009384 <uartputc+0xac>
    800093b4:	02813083          	ld	ra,40(sp)
    800093b8:	02013403          	ld	s0,32(sp)
    800093bc:	01813483          	ld	s1,24(sp)
    800093c0:	01013903          	ld	s2,16(sp)
    800093c4:	00813983          	ld	s3,8(sp)
    800093c8:	03010113          	addi	sp,sp,48
    800093cc:	00008067          	ret

00000000800093d0 <uartputc_sync>:
    800093d0:	ff010113          	addi	sp,sp,-16
    800093d4:	00813423          	sd	s0,8(sp)
    800093d8:	01010413          	addi	s0,sp,16
    800093dc:	00005717          	auipc	a4,0x5
    800093e0:	13c72703          	lw	a4,316(a4) # 8000e518 <panicked>
    800093e4:	02071663          	bnez	a4,80009410 <uartputc_sync+0x40>
    800093e8:	00050793          	mv	a5,a0
    800093ec:	100006b7          	lui	a3,0x10000
    800093f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800093f4:	02077713          	andi	a4,a4,32
    800093f8:	fe070ce3          	beqz	a4,800093f0 <uartputc_sync+0x20>
    800093fc:	0ff7f793          	andi	a5,a5,255
    80009400:	00f68023          	sb	a5,0(a3)
    80009404:	00813403          	ld	s0,8(sp)
    80009408:	01010113          	addi	sp,sp,16
    8000940c:	00008067          	ret
    80009410:	0000006f          	j	80009410 <uartputc_sync+0x40>

0000000080009414 <uartstart>:
    80009414:	ff010113          	addi	sp,sp,-16
    80009418:	00813423          	sd	s0,8(sp)
    8000941c:	01010413          	addi	s0,sp,16
    80009420:	00005617          	auipc	a2,0x5
    80009424:	10060613          	addi	a2,a2,256 # 8000e520 <uart_tx_r>
    80009428:	00005517          	auipc	a0,0x5
    8000942c:	10050513          	addi	a0,a0,256 # 8000e528 <uart_tx_w>
    80009430:	00063783          	ld	a5,0(a2)
    80009434:	00053703          	ld	a4,0(a0)
    80009438:	04f70263          	beq	a4,a5,8000947c <uartstart+0x68>
    8000943c:	100005b7          	lui	a1,0x10000
    80009440:	00006817          	auipc	a6,0x6
    80009444:	60080813          	addi	a6,a6,1536 # 8000fa40 <uart_tx_buf>
    80009448:	01c0006f          	j	80009464 <uartstart+0x50>
    8000944c:	0006c703          	lbu	a4,0(a3)
    80009450:	00f63023          	sd	a5,0(a2)
    80009454:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80009458:	00063783          	ld	a5,0(a2)
    8000945c:	00053703          	ld	a4,0(a0)
    80009460:	00f70e63          	beq	a4,a5,8000947c <uartstart+0x68>
    80009464:	01f7f713          	andi	a4,a5,31
    80009468:	00e806b3          	add	a3,a6,a4
    8000946c:	0055c703          	lbu	a4,5(a1)
    80009470:	00178793          	addi	a5,a5,1
    80009474:	02077713          	andi	a4,a4,32
    80009478:	fc071ae3          	bnez	a4,8000944c <uartstart+0x38>
    8000947c:	00813403          	ld	s0,8(sp)
    80009480:	01010113          	addi	sp,sp,16
    80009484:	00008067          	ret

0000000080009488 <uartgetc>:
    80009488:	ff010113          	addi	sp,sp,-16
    8000948c:	00813423          	sd	s0,8(sp)
    80009490:	01010413          	addi	s0,sp,16
    80009494:	10000737          	lui	a4,0x10000
    80009498:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000949c:	0017f793          	andi	a5,a5,1
    800094a0:	00078c63          	beqz	a5,800094b8 <uartgetc+0x30>
    800094a4:	00074503          	lbu	a0,0(a4)
    800094a8:	0ff57513          	andi	a0,a0,255
    800094ac:	00813403          	ld	s0,8(sp)
    800094b0:	01010113          	addi	sp,sp,16
    800094b4:	00008067          	ret
    800094b8:	fff00513          	li	a0,-1
    800094bc:	ff1ff06f          	j	800094ac <uartgetc+0x24>

00000000800094c0 <uartintr>:
    800094c0:	100007b7          	lui	a5,0x10000
    800094c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800094c8:	0017f793          	andi	a5,a5,1
    800094cc:	0a078463          	beqz	a5,80009574 <uartintr+0xb4>
    800094d0:	fe010113          	addi	sp,sp,-32
    800094d4:	00813823          	sd	s0,16(sp)
    800094d8:	00913423          	sd	s1,8(sp)
    800094dc:	00113c23          	sd	ra,24(sp)
    800094e0:	02010413          	addi	s0,sp,32
    800094e4:	100004b7          	lui	s1,0x10000
    800094e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800094ec:	0ff57513          	andi	a0,a0,255
    800094f0:	fffff097          	auipc	ra,0xfffff
    800094f4:	534080e7          	jalr	1332(ra) # 80008a24 <consoleintr>
    800094f8:	0054c783          	lbu	a5,5(s1)
    800094fc:	0017f793          	andi	a5,a5,1
    80009500:	fe0794e3          	bnez	a5,800094e8 <uartintr+0x28>
    80009504:	00005617          	auipc	a2,0x5
    80009508:	01c60613          	addi	a2,a2,28 # 8000e520 <uart_tx_r>
    8000950c:	00005517          	auipc	a0,0x5
    80009510:	01c50513          	addi	a0,a0,28 # 8000e528 <uart_tx_w>
    80009514:	00063783          	ld	a5,0(a2)
    80009518:	00053703          	ld	a4,0(a0)
    8000951c:	04f70263          	beq	a4,a5,80009560 <uartintr+0xa0>
    80009520:	100005b7          	lui	a1,0x10000
    80009524:	00006817          	auipc	a6,0x6
    80009528:	51c80813          	addi	a6,a6,1308 # 8000fa40 <uart_tx_buf>
    8000952c:	01c0006f          	j	80009548 <uartintr+0x88>
    80009530:	0006c703          	lbu	a4,0(a3)
    80009534:	00f63023          	sd	a5,0(a2)
    80009538:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000953c:	00063783          	ld	a5,0(a2)
    80009540:	00053703          	ld	a4,0(a0)
    80009544:	00f70e63          	beq	a4,a5,80009560 <uartintr+0xa0>
    80009548:	01f7f713          	andi	a4,a5,31
    8000954c:	00e806b3          	add	a3,a6,a4
    80009550:	0055c703          	lbu	a4,5(a1)
    80009554:	00178793          	addi	a5,a5,1
    80009558:	02077713          	andi	a4,a4,32
    8000955c:	fc071ae3          	bnez	a4,80009530 <uartintr+0x70>
    80009560:	01813083          	ld	ra,24(sp)
    80009564:	01013403          	ld	s0,16(sp)
    80009568:	00813483          	ld	s1,8(sp)
    8000956c:	02010113          	addi	sp,sp,32
    80009570:	00008067          	ret
    80009574:	00005617          	auipc	a2,0x5
    80009578:	fac60613          	addi	a2,a2,-84 # 8000e520 <uart_tx_r>
    8000957c:	00005517          	auipc	a0,0x5
    80009580:	fac50513          	addi	a0,a0,-84 # 8000e528 <uart_tx_w>
    80009584:	00063783          	ld	a5,0(a2)
    80009588:	00053703          	ld	a4,0(a0)
    8000958c:	04f70263          	beq	a4,a5,800095d0 <uartintr+0x110>
    80009590:	100005b7          	lui	a1,0x10000
    80009594:	00006817          	auipc	a6,0x6
    80009598:	4ac80813          	addi	a6,a6,1196 # 8000fa40 <uart_tx_buf>
    8000959c:	01c0006f          	j	800095b8 <uartintr+0xf8>
    800095a0:	0006c703          	lbu	a4,0(a3)
    800095a4:	00f63023          	sd	a5,0(a2)
    800095a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800095ac:	00063783          	ld	a5,0(a2)
    800095b0:	00053703          	ld	a4,0(a0)
    800095b4:	02f70063          	beq	a4,a5,800095d4 <uartintr+0x114>
    800095b8:	01f7f713          	andi	a4,a5,31
    800095bc:	00e806b3          	add	a3,a6,a4
    800095c0:	0055c703          	lbu	a4,5(a1)
    800095c4:	00178793          	addi	a5,a5,1
    800095c8:	02077713          	andi	a4,a4,32
    800095cc:	fc071ae3          	bnez	a4,800095a0 <uartintr+0xe0>
    800095d0:	00008067          	ret
    800095d4:	00008067          	ret

00000000800095d8 <kinit>:
    800095d8:	fc010113          	addi	sp,sp,-64
    800095dc:	02913423          	sd	s1,40(sp)
    800095e0:	fffff7b7          	lui	a5,0xfffff
    800095e4:	00007497          	auipc	s1,0x7
    800095e8:	47b48493          	addi	s1,s1,1147 # 80010a5f <end+0xfff>
    800095ec:	02813823          	sd	s0,48(sp)
    800095f0:	01313c23          	sd	s3,24(sp)
    800095f4:	00f4f4b3          	and	s1,s1,a5
    800095f8:	02113c23          	sd	ra,56(sp)
    800095fc:	03213023          	sd	s2,32(sp)
    80009600:	01413823          	sd	s4,16(sp)
    80009604:	01513423          	sd	s5,8(sp)
    80009608:	04010413          	addi	s0,sp,64
    8000960c:	000017b7          	lui	a5,0x1
    80009610:	01100993          	li	s3,17
    80009614:	00f487b3          	add	a5,s1,a5
    80009618:	01b99993          	slli	s3,s3,0x1b
    8000961c:	06f9e063          	bltu	s3,a5,8000967c <kinit+0xa4>
    80009620:	00006a97          	auipc	s5,0x6
    80009624:	440a8a93          	addi	s5,s5,1088 # 8000fa60 <end>
    80009628:	0754ec63          	bltu	s1,s5,800096a0 <kinit+0xc8>
    8000962c:	0734fa63          	bgeu	s1,s3,800096a0 <kinit+0xc8>
    80009630:	00088a37          	lui	s4,0x88
    80009634:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80009638:	00005917          	auipc	s2,0x5
    8000963c:	ef890913          	addi	s2,s2,-264 # 8000e530 <kmem>
    80009640:	00ca1a13          	slli	s4,s4,0xc
    80009644:	0140006f          	j	80009658 <kinit+0x80>
    80009648:	000017b7          	lui	a5,0x1
    8000964c:	00f484b3          	add	s1,s1,a5
    80009650:	0554e863          	bltu	s1,s5,800096a0 <kinit+0xc8>
    80009654:	0534f663          	bgeu	s1,s3,800096a0 <kinit+0xc8>
    80009658:	00001637          	lui	a2,0x1
    8000965c:	00100593          	li	a1,1
    80009660:	00048513          	mv	a0,s1
    80009664:	00000097          	auipc	ra,0x0
    80009668:	5e4080e7          	jalr	1508(ra) # 80009c48 <__memset>
    8000966c:	00093783          	ld	a5,0(s2)
    80009670:	00f4b023          	sd	a5,0(s1)
    80009674:	00993023          	sd	s1,0(s2)
    80009678:	fd4498e3          	bne	s1,s4,80009648 <kinit+0x70>
    8000967c:	03813083          	ld	ra,56(sp)
    80009680:	03013403          	ld	s0,48(sp)
    80009684:	02813483          	ld	s1,40(sp)
    80009688:	02013903          	ld	s2,32(sp)
    8000968c:	01813983          	ld	s3,24(sp)
    80009690:	01013a03          	ld	s4,16(sp)
    80009694:	00813a83          	ld	s5,8(sp)
    80009698:	04010113          	addi	sp,sp,64
    8000969c:	00008067          	ret
    800096a0:	00002517          	auipc	a0,0x2
    800096a4:	37050513          	addi	a0,a0,880 # 8000ba10 <digits+0x18>
    800096a8:	fffff097          	auipc	ra,0xfffff
    800096ac:	4b4080e7          	jalr	1204(ra) # 80008b5c <panic>

00000000800096b0 <freerange>:
    800096b0:	fc010113          	addi	sp,sp,-64
    800096b4:	000017b7          	lui	a5,0x1
    800096b8:	02913423          	sd	s1,40(sp)
    800096bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800096c0:	009504b3          	add	s1,a0,s1
    800096c4:	fffff537          	lui	a0,0xfffff
    800096c8:	02813823          	sd	s0,48(sp)
    800096cc:	02113c23          	sd	ra,56(sp)
    800096d0:	03213023          	sd	s2,32(sp)
    800096d4:	01313c23          	sd	s3,24(sp)
    800096d8:	01413823          	sd	s4,16(sp)
    800096dc:	01513423          	sd	s5,8(sp)
    800096e0:	01613023          	sd	s6,0(sp)
    800096e4:	04010413          	addi	s0,sp,64
    800096e8:	00a4f4b3          	and	s1,s1,a0
    800096ec:	00f487b3          	add	a5,s1,a5
    800096f0:	06f5e463          	bltu	a1,a5,80009758 <freerange+0xa8>
    800096f4:	00006a97          	auipc	s5,0x6
    800096f8:	36ca8a93          	addi	s5,s5,876 # 8000fa60 <end>
    800096fc:	0954e263          	bltu	s1,s5,80009780 <freerange+0xd0>
    80009700:	01100993          	li	s3,17
    80009704:	01b99993          	slli	s3,s3,0x1b
    80009708:	0734fc63          	bgeu	s1,s3,80009780 <freerange+0xd0>
    8000970c:	00058a13          	mv	s4,a1
    80009710:	00005917          	auipc	s2,0x5
    80009714:	e2090913          	addi	s2,s2,-480 # 8000e530 <kmem>
    80009718:	00002b37          	lui	s6,0x2
    8000971c:	0140006f          	j	80009730 <freerange+0x80>
    80009720:	000017b7          	lui	a5,0x1
    80009724:	00f484b3          	add	s1,s1,a5
    80009728:	0554ec63          	bltu	s1,s5,80009780 <freerange+0xd0>
    8000972c:	0534fa63          	bgeu	s1,s3,80009780 <freerange+0xd0>
    80009730:	00001637          	lui	a2,0x1
    80009734:	00100593          	li	a1,1
    80009738:	00048513          	mv	a0,s1
    8000973c:	00000097          	auipc	ra,0x0
    80009740:	50c080e7          	jalr	1292(ra) # 80009c48 <__memset>
    80009744:	00093703          	ld	a4,0(s2)
    80009748:	016487b3          	add	a5,s1,s6
    8000974c:	00e4b023          	sd	a4,0(s1)
    80009750:	00993023          	sd	s1,0(s2)
    80009754:	fcfa76e3          	bgeu	s4,a5,80009720 <freerange+0x70>
    80009758:	03813083          	ld	ra,56(sp)
    8000975c:	03013403          	ld	s0,48(sp)
    80009760:	02813483          	ld	s1,40(sp)
    80009764:	02013903          	ld	s2,32(sp)
    80009768:	01813983          	ld	s3,24(sp)
    8000976c:	01013a03          	ld	s4,16(sp)
    80009770:	00813a83          	ld	s5,8(sp)
    80009774:	00013b03          	ld	s6,0(sp)
    80009778:	04010113          	addi	sp,sp,64
    8000977c:	00008067          	ret
    80009780:	00002517          	auipc	a0,0x2
    80009784:	29050513          	addi	a0,a0,656 # 8000ba10 <digits+0x18>
    80009788:	fffff097          	auipc	ra,0xfffff
    8000978c:	3d4080e7          	jalr	980(ra) # 80008b5c <panic>

0000000080009790 <kfree>:
    80009790:	fe010113          	addi	sp,sp,-32
    80009794:	00813823          	sd	s0,16(sp)
    80009798:	00113c23          	sd	ra,24(sp)
    8000979c:	00913423          	sd	s1,8(sp)
    800097a0:	02010413          	addi	s0,sp,32
    800097a4:	03451793          	slli	a5,a0,0x34
    800097a8:	04079c63          	bnez	a5,80009800 <kfree+0x70>
    800097ac:	00006797          	auipc	a5,0x6
    800097b0:	2b478793          	addi	a5,a5,692 # 8000fa60 <end>
    800097b4:	00050493          	mv	s1,a0
    800097b8:	04f56463          	bltu	a0,a5,80009800 <kfree+0x70>
    800097bc:	01100793          	li	a5,17
    800097c0:	01b79793          	slli	a5,a5,0x1b
    800097c4:	02f57e63          	bgeu	a0,a5,80009800 <kfree+0x70>
    800097c8:	00001637          	lui	a2,0x1
    800097cc:	00100593          	li	a1,1
    800097d0:	00000097          	auipc	ra,0x0
    800097d4:	478080e7          	jalr	1144(ra) # 80009c48 <__memset>
    800097d8:	00005797          	auipc	a5,0x5
    800097dc:	d5878793          	addi	a5,a5,-680 # 8000e530 <kmem>
    800097e0:	0007b703          	ld	a4,0(a5)
    800097e4:	01813083          	ld	ra,24(sp)
    800097e8:	01013403          	ld	s0,16(sp)
    800097ec:	00e4b023          	sd	a4,0(s1)
    800097f0:	0097b023          	sd	s1,0(a5)
    800097f4:	00813483          	ld	s1,8(sp)
    800097f8:	02010113          	addi	sp,sp,32
    800097fc:	00008067          	ret
    80009800:	00002517          	auipc	a0,0x2
    80009804:	21050513          	addi	a0,a0,528 # 8000ba10 <digits+0x18>
    80009808:	fffff097          	auipc	ra,0xfffff
    8000980c:	354080e7          	jalr	852(ra) # 80008b5c <panic>

0000000080009810 <kalloc>:
    80009810:	fe010113          	addi	sp,sp,-32
    80009814:	00813823          	sd	s0,16(sp)
    80009818:	00913423          	sd	s1,8(sp)
    8000981c:	00113c23          	sd	ra,24(sp)
    80009820:	02010413          	addi	s0,sp,32
    80009824:	00005797          	auipc	a5,0x5
    80009828:	d0c78793          	addi	a5,a5,-756 # 8000e530 <kmem>
    8000982c:	0007b483          	ld	s1,0(a5)
    80009830:	02048063          	beqz	s1,80009850 <kalloc+0x40>
    80009834:	0004b703          	ld	a4,0(s1)
    80009838:	00001637          	lui	a2,0x1
    8000983c:	00500593          	li	a1,5
    80009840:	00048513          	mv	a0,s1
    80009844:	00e7b023          	sd	a4,0(a5)
    80009848:	00000097          	auipc	ra,0x0
    8000984c:	400080e7          	jalr	1024(ra) # 80009c48 <__memset>
    80009850:	01813083          	ld	ra,24(sp)
    80009854:	01013403          	ld	s0,16(sp)
    80009858:	00048513          	mv	a0,s1
    8000985c:	00813483          	ld	s1,8(sp)
    80009860:	02010113          	addi	sp,sp,32
    80009864:	00008067          	ret

0000000080009868 <initlock>:
    80009868:	ff010113          	addi	sp,sp,-16
    8000986c:	00813423          	sd	s0,8(sp)
    80009870:	01010413          	addi	s0,sp,16
    80009874:	00813403          	ld	s0,8(sp)
    80009878:	00b53423          	sd	a1,8(a0)
    8000987c:	00052023          	sw	zero,0(a0)
    80009880:	00053823          	sd	zero,16(a0)
    80009884:	01010113          	addi	sp,sp,16
    80009888:	00008067          	ret

000000008000988c <acquire>:
    8000988c:	fe010113          	addi	sp,sp,-32
    80009890:	00813823          	sd	s0,16(sp)
    80009894:	00913423          	sd	s1,8(sp)
    80009898:	00113c23          	sd	ra,24(sp)
    8000989c:	01213023          	sd	s2,0(sp)
    800098a0:	02010413          	addi	s0,sp,32
    800098a4:	00050493          	mv	s1,a0
    800098a8:	10002973          	csrr	s2,sstatus
    800098ac:	100027f3          	csrr	a5,sstatus
    800098b0:	ffd7f793          	andi	a5,a5,-3
    800098b4:	10079073          	csrw	sstatus,a5
    800098b8:	fffff097          	auipc	ra,0xfffff
    800098bc:	8e8080e7          	jalr	-1816(ra) # 800081a0 <mycpu>
    800098c0:	07852783          	lw	a5,120(a0)
    800098c4:	06078e63          	beqz	a5,80009940 <acquire+0xb4>
    800098c8:	fffff097          	auipc	ra,0xfffff
    800098cc:	8d8080e7          	jalr	-1832(ra) # 800081a0 <mycpu>
    800098d0:	07852783          	lw	a5,120(a0)
    800098d4:	0004a703          	lw	a4,0(s1)
    800098d8:	0017879b          	addiw	a5,a5,1
    800098dc:	06f52c23          	sw	a5,120(a0)
    800098e0:	04071063          	bnez	a4,80009920 <acquire+0x94>
    800098e4:	00100713          	li	a4,1
    800098e8:	00070793          	mv	a5,a4
    800098ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800098f0:	0007879b          	sext.w	a5,a5
    800098f4:	fe079ae3          	bnez	a5,800098e8 <acquire+0x5c>
    800098f8:	0ff0000f          	fence
    800098fc:	fffff097          	auipc	ra,0xfffff
    80009900:	8a4080e7          	jalr	-1884(ra) # 800081a0 <mycpu>
    80009904:	01813083          	ld	ra,24(sp)
    80009908:	01013403          	ld	s0,16(sp)
    8000990c:	00a4b823          	sd	a0,16(s1)
    80009910:	00013903          	ld	s2,0(sp)
    80009914:	00813483          	ld	s1,8(sp)
    80009918:	02010113          	addi	sp,sp,32
    8000991c:	00008067          	ret
    80009920:	0104b903          	ld	s2,16(s1)
    80009924:	fffff097          	auipc	ra,0xfffff
    80009928:	87c080e7          	jalr	-1924(ra) # 800081a0 <mycpu>
    8000992c:	faa91ce3          	bne	s2,a0,800098e4 <acquire+0x58>
    80009930:	00002517          	auipc	a0,0x2
    80009934:	0e850513          	addi	a0,a0,232 # 8000ba18 <digits+0x20>
    80009938:	fffff097          	auipc	ra,0xfffff
    8000993c:	224080e7          	jalr	548(ra) # 80008b5c <panic>
    80009940:	00195913          	srli	s2,s2,0x1
    80009944:	fffff097          	auipc	ra,0xfffff
    80009948:	85c080e7          	jalr	-1956(ra) # 800081a0 <mycpu>
    8000994c:	00197913          	andi	s2,s2,1
    80009950:	07252e23          	sw	s2,124(a0)
    80009954:	f75ff06f          	j	800098c8 <acquire+0x3c>

0000000080009958 <release>:
    80009958:	fe010113          	addi	sp,sp,-32
    8000995c:	00813823          	sd	s0,16(sp)
    80009960:	00113c23          	sd	ra,24(sp)
    80009964:	00913423          	sd	s1,8(sp)
    80009968:	01213023          	sd	s2,0(sp)
    8000996c:	02010413          	addi	s0,sp,32
    80009970:	00052783          	lw	a5,0(a0)
    80009974:	00079a63          	bnez	a5,80009988 <release+0x30>
    80009978:	00002517          	auipc	a0,0x2
    8000997c:	0a850513          	addi	a0,a0,168 # 8000ba20 <digits+0x28>
    80009980:	fffff097          	auipc	ra,0xfffff
    80009984:	1dc080e7          	jalr	476(ra) # 80008b5c <panic>
    80009988:	01053903          	ld	s2,16(a0)
    8000998c:	00050493          	mv	s1,a0
    80009990:	fffff097          	auipc	ra,0xfffff
    80009994:	810080e7          	jalr	-2032(ra) # 800081a0 <mycpu>
    80009998:	fea910e3          	bne	s2,a0,80009978 <release+0x20>
    8000999c:	0004b823          	sd	zero,16(s1)
    800099a0:	0ff0000f          	fence
    800099a4:	0f50000f          	fence	iorw,ow
    800099a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800099ac:	ffffe097          	auipc	ra,0xffffe
    800099b0:	7f4080e7          	jalr	2036(ra) # 800081a0 <mycpu>
    800099b4:	100027f3          	csrr	a5,sstatus
    800099b8:	0027f793          	andi	a5,a5,2
    800099bc:	04079a63          	bnez	a5,80009a10 <release+0xb8>
    800099c0:	07852783          	lw	a5,120(a0)
    800099c4:	02f05e63          	blez	a5,80009a00 <release+0xa8>
    800099c8:	fff7871b          	addiw	a4,a5,-1
    800099cc:	06e52c23          	sw	a4,120(a0)
    800099d0:	00071c63          	bnez	a4,800099e8 <release+0x90>
    800099d4:	07c52783          	lw	a5,124(a0)
    800099d8:	00078863          	beqz	a5,800099e8 <release+0x90>
    800099dc:	100027f3          	csrr	a5,sstatus
    800099e0:	0027e793          	ori	a5,a5,2
    800099e4:	10079073          	csrw	sstatus,a5
    800099e8:	01813083          	ld	ra,24(sp)
    800099ec:	01013403          	ld	s0,16(sp)
    800099f0:	00813483          	ld	s1,8(sp)
    800099f4:	00013903          	ld	s2,0(sp)
    800099f8:	02010113          	addi	sp,sp,32
    800099fc:	00008067          	ret
    80009a00:	00002517          	auipc	a0,0x2
    80009a04:	04050513          	addi	a0,a0,64 # 8000ba40 <digits+0x48>
    80009a08:	fffff097          	auipc	ra,0xfffff
    80009a0c:	154080e7          	jalr	340(ra) # 80008b5c <panic>
    80009a10:	00002517          	auipc	a0,0x2
    80009a14:	01850513          	addi	a0,a0,24 # 8000ba28 <digits+0x30>
    80009a18:	fffff097          	auipc	ra,0xfffff
    80009a1c:	144080e7          	jalr	324(ra) # 80008b5c <panic>

0000000080009a20 <holding>:
    80009a20:	00052783          	lw	a5,0(a0)
    80009a24:	00079663          	bnez	a5,80009a30 <holding+0x10>
    80009a28:	00000513          	li	a0,0
    80009a2c:	00008067          	ret
    80009a30:	fe010113          	addi	sp,sp,-32
    80009a34:	00813823          	sd	s0,16(sp)
    80009a38:	00913423          	sd	s1,8(sp)
    80009a3c:	00113c23          	sd	ra,24(sp)
    80009a40:	02010413          	addi	s0,sp,32
    80009a44:	01053483          	ld	s1,16(a0)
    80009a48:	ffffe097          	auipc	ra,0xffffe
    80009a4c:	758080e7          	jalr	1880(ra) # 800081a0 <mycpu>
    80009a50:	01813083          	ld	ra,24(sp)
    80009a54:	01013403          	ld	s0,16(sp)
    80009a58:	40a48533          	sub	a0,s1,a0
    80009a5c:	00153513          	seqz	a0,a0
    80009a60:	00813483          	ld	s1,8(sp)
    80009a64:	02010113          	addi	sp,sp,32
    80009a68:	00008067          	ret

0000000080009a6c <push_off>:
    80009a6c:	fe010113          	addi	sp,sp,-32
    80009a70:	00813823          	sd	s0,16(sp)
    80009a74:	00113c23          	sd	ra,24(sp)
    80009a78:	00913423          	sd	s1,8(sp)
    80009a7c:	02010413          	addi	s0,sp,32
    80009a80:	100024f3          	csrr	s1,sstatus
    80009a84:	100027f3          	csrr	a5,sstatus
    80009a88:	ffd7f793          	andi	a5,a5,-3
    80009a8c:	10079073          	csrw	sstatus,a5
    80009a90:	ffffe097          	auipc	ra,0xffffe
    80009a94:	710080e7          	jalr	1808(ra) # 800081a0 <mycpu>
    80009a98:	07852783          	lw	a5,120(a0)
    80009a9c:	02078663          	beqz	a5,80009ac8 <push_off+0x5c>
    80009aa0:	ffffe097          	auipc	ra,0xffffe
    80009aa4:	700080e7          	jalr	1792(ra) # 800081a0 <mycpu>
    80009aa8:	07852783          	lw	a5,120(a0)
    80009aac:	01813083          	ld	ra,24(sp)
    80009ab0:	01013403          	ld	s0,16(sp)
    80009ab4:	0017879b          	addiw	a5,a5,1
    80009ab8:	06f52c23          	sw	a5,120(a0)
    80009abc:	00813483          	ld	s1,8(sp)
    80009ac0:	02010113          	addi	sp,sp,32
    80009ac4:	00008067          	ret
    80009ac8:	0014d493          	srli	s1,s1,0x1
    80009acc:	ffffe097          	auipc	ra,0xffffe
    80009ad0:	6d4080e7          	jalr	1748(ra) # 800081a0 <mycpu>
    80009ad4:	0014f493          	andi	s1,s1,1
    80009ad8:	06952e23          	sw	s1,124(a0)
    80009adc:	fc5ff06f          	j	80009aa0 <push_off+0x34>

0000000080009ae0 <pop_off>:
    80009ae0:	ff010113          	addi	sp,sp,-16
    80009ae4:	00813023          	sd	s0,0(sp)
    80009ae8:	00113423          	sd	ra,8(sp)
    80009aec:	01010413          	addi	s0,sp,16
    80009af0:	ffffe097          	auipc	ra,0xffffe
    80009af4:	6b0080e7          	jalr	1712(ra) # 800081a0 <mycpu>
    80009af8:	100027f3          	csrr	a5,sstatus
    80009afc:	0027f793          	andi	a5,a5,2
    80009b00:	04079663          	bnez	a5,80009b4c <pop_off+0x6c>
    80009b04:	07852783          	lw	a5,120(a0)
    80009b08:	02f05a63          	blez	a5,80009b3c <pop_off+0x5c>
    80009b0c:	fff7871b          	addiw	a4,a5,-1
    80009b10:	06e52c23          	sw	a4,120(a0)
    80009b14:	00071c63          	bnez	a4,80009b2c <pop_off+0x4c>
    80009b18:	07c52783          	lw	a5,124(a0)
    80009b1c:	00078863          	beqz	a5,80009b2c <pop_off+0x4c>
    80009b20:	100027f3          	csrr	a5,sstatus
    80009b24:	0027e793          	ori	a5,a5,2
    80009b28:	10079073          	csrw	sstatus,a5
    80009b2c:	00813083          	ld	ra,8(sp)
    80009b30:	00013403          	ld	s0,0(sp)
    80009b34:	01010113          	addi	sp,sp,16
    80009b38:	00008067          	ret
    80009b3c:	00002517          	auipc	a0,0x2
    80009b40:	f0450513          	addi	a0,a0,-252 # 8000ba40 <digits+0x48>
    80009b44:	fffff097          	auipc	ra,0xfffff
    80009b48:	018080e7          	jalr	24(ra) # 80008b5c <panic>
    80009b4c:	00002517          	auipc	a0,0x2
    80009b50:	edc50513          	addi	a0,a0,-292 # 8000ba28 <digits+0x30>
    80009b54:	fffff097          	auipc	ra,0xfffff
    80009b58:	008080e7          	jalr	8(ra) # 80008b5c <panic>

0000000080009b5c <push_on>:
    80009b5c:	fe010113          	addi	sp,sp,-32
    80009b60:	00813823          	sd	s0,16(sp)
    80009b64:	00113c23          	sd	ra,24(sp)
    80009b68:	00913423          	sd	s1,8(sp)
    80009b6c:	02010413          	addi	s0,sp,32
    80009b70:	100024f3          	csrr	s1,sstatus
    80009b74:	100027f3          	csrr	a5,sstatus
    80009b78:	0027e793          	ori	a5,a5,2
    80009b7c:	10079073          	csrw	sstatus,a5
    80009b80:	ffffe097          	auipc	ra,0xffffe
    80009b84:	620080e7          	jalr	1568(ra) # 800081a0 <mycpu>
    80009b88:	07852783          	lw	a5,120(a0)
    80009b8c:	02078663          	beqz	a5,80009bb8 <push_on+0x5c>
    80009b90:	ffffe097          	auipc	ra,0xffffe
    80009b94:	610080e7          	jalr	1552(ra) # 800081a0 <mycpu>
    80009b98:	07852783          	lw	a5,120(a0)
    80009b9c:	01813083          	ld	ra,24(sp)
    80009ba0:	01013403          	ld	s0,16(sp)
    80009ba4:	0017879b          	addiw	a5,a5,1
    80009ba8:	06f52c23          	sw	a5,120(a0)
    80009bac:	00813483          	ld	s1,8(sp)
    80009bb0:	02010113          	addi	sp,sp,32
    80009bb4:	00008067          	ret
    80009bb8:	0014d493          	srli	s1,s1,0x1
    80009bbc:	ffffe097          	auipc	ra,0xffffe
    80009bc0:	5e4080e7          	jalr	1508(ra) # 800081a0 <mycpu>
    80009bc4:	0014f493          	andi	s1,s1,1
    80009bc8:	06952e23          	sw	s1,124(a0)
    80009bcc:	fc5ff06f          	j	80009b90 <push_on+0x34>

0000000080009bd0 <pop_on>:
    80009bd0:	ff010113          	addi	sp,sp,-16
    80009bd4:	00813023          	sd	s0,0(sp)
    80009bd8:	00113423          	sd	ra,8(sp)
    80009bdc:	01010413          	addi	s0,sp,16
    80009be0:	ffffe097          	auipc	ra,0xffffe
    80009be4:	5c0080e7          	jalr	1472(ra) # 800081a0 <mycpu>
    80009be8:	100027f3          	csrr	a5,sstatus
    80009bec:	0027f793          	andi	a5,a5,2
    80009bf0:	04078463          	beqz	a5,80009c38 <pop_on+0x68>
    80009bf4:	07852783          	lw	a5,120(a0)
    80009bf8:	02f05863          	blez	a5,80009c28 <pop_on+0x58>
    80009bfc:	fff7879b          	addiw	a5,a5,-1
    80009c00:	06f52c23          	sw	a5,120(a0)
    80009c04:	07853783          	ld	a5,120(a0)
    80009c08:	00079863          	bnez	a5,80009c18 <pop_on+0x48>
    80009c0c:	100027f3          	csrr	a5,sstatus
    80009c10:	ffd7f793          	andi	a5,a5,-3
    80009c14:	10079073          	csrw	sstatus,a5
    80009c18:	00813083          	ld	ra,8(sp)
    80009c1c:	00013403          	ld	s0,0(sp)
    80009c20:	01010113          	addi	sp,sp,16
    80009c24:	00008067          	ret
    80009c28:	00002517          	auipc	a0,0x2
    80009c2c:	e4050513          	addi	a0,a0,-448 # 8000ba68 <digits+0x70>
    80009c30:	fffff097          	auipc	ra,0xfffff
    80009c34:	f2c080e7          	jalr	-212(ra) # 80008b5c <panic>
    80009c38:	00002517          	auipc	a0,0x2
    80009c3c:	e1050513          	addi	a0,a0,-496 # 8000ba48 <digits+0x50>
    80009c40:	fffff097          	auipc	ra,0xfffff
    80009c44:	f1c080e7          	jalr	-228(ra) # 80008b5c <panic>

0000000080009c48 <__memset>:
    80009c48:	ff010113          	addi	sp,sp,-16
    80009c4c:	00813423          	sd	s0,8(sp)
    80009c50:	01010413          	addi	s0,sp,16
    80009c54:	1a060e63          	beqz	a2,80009e10 <__memset+0x1c8>
    80009c58:	40a007b3          	neg	a5,a0
    80009c5c:	0077f793          	andi	a5,a5,7
    80009c60:	00778693          	addi	a3,a5,7
    80009c64:	00b00813          	li	a6,11
    80009c68:	0ff5f593          	andi	a1,a1,255
    80009c6c:	fff6071b          	addiw	a4,a2,-1
    80009c70:	1b06e663          	bltu	a3,a6,80009e1c <__memset+0x1d4>
    80009c74:	1cd76463          	bltu	a4,a3,80009e3c <__memset+0x1f4>
    80009c78:	1a078e63          	beqz	a5,80009e34 <__memset+0x1ec>
    80009c7c:	00b50023          	sb	a1,0(a0)
    80009c80:	00100713          	li	a4,1
    80009c84:	1ae78463          	beq	a5,a4,80009e2c <__memset+0x1e4>
    80009c88:	00b500a3          	sb	a1,1(a0)
    80009c8c:	00200713          	li	a4,2
    80009c90:	1ae78a63          	beq	a5,a4,80009e44 <__memset+0x1fc>
    80009c94:	00b50123          	sb	a1,2(a0)
    80009c98:	00300713          	li	a4,3
    80009c9c:	18e78463          	beq	a5,a4,80009e24 <__memset+0x1dc>
    80009ca0:	00b501a3          	sb	a1,3(a0)
    80009ca4:	00400713          	li	a4,4
    80009ca8:	1ae78263          	beq	a5,a4,80009e4c <__memset+0x204>
    80009cac:	00b50223          	sb	a1,4(a0)
    80009cb0:	00500713          	li	a4,5
    80009cb4:	1ae78063          	beq	a5,a4,80009e54 <__memset+0x20c>
    80009cb8:	00b502a3          	sb	a1,5(a0)
    80009cbc:	00700713          	li	a4,7
    80009cc0:	18e79e63          	bne	a5,a4,80009e5c <__memset+0x214>
    80009cc4:	00b50323          	sb	a1,6(a0)
    80009cc8:	00700e93          	li	t4,7
    80009ccc:	00859713          	slli	a4,a1,0x8
    80009cd0:	00e5e733          	or	a4,a1,a4
    80009cd4:	01059e13          	slli	t3,a1,0x10
    80009cd8:	01c76e33          	or	t3,a4,t3
    80009cdc:	01859313          	slli	t1,a1,0x18
    80009ce0:	006e6333          	or	t1,t3,t1
    80009ce4:	02059893          	slli	a7,a1,0x20
    80009ce8:	40f60e3b          	subw	t3,a2,a5
    80009cec:	011368b3          	or	a7,t1,a7
    80009cf0:	02859813          	slli	a6,a1,0x28
    80009cf4:	0108e833          	or	a6,a7,a6
    80009cf8:	03059693          	slli	a3,a1,0x30
    80009cfc:	003e589b          	srliw	a7,t3,0x3
    80009d00:	00d866b3          	or	a3,a6,a3
    80009d04:	03859713          	slli	a4,a1,0x38
    80009d08:	00389813          	slli	a6,a7,0x3
    80009d0c:	00f507b3          	add	a5,a0,a5
    80009d10:	00e6e733          	or	a4,a3,a4
    80009d14:	000e089b          	sext.w	a7,t3
    80009d18:	00f806b3          	add	a3,a6,a5
    80009d1c:	00e7b023          	sd	a4,0(a5)
    80009d20:	00878793          	addi	a5,a5,8
    80009d24:	fed79ce3          	bne	a5,a3,80009d1c <__memset+0xd4>
    80009d28:	ff8e7793          	andi	a5,t3,-8
    80009d2c:	0007871b          	sext.w	a4,a5
    80009d30:	01d787bb          	addw	a5,a5,t4
    80009d34:	0ce88e63          	beq	a7,a4,80009e10 <__memset+0x1c8>
    80009d38:	00f50733          	add	a4,a0,a5
    80009d3c:	00b70023          	sb	a1,0(a4)
    80009d40:	0017871b          	addiw	a4,a5,1
    80009d44:	0cc77663          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009d48:	00e50733          	add	a4,a0,a4
    80009d4c:	00b70023          	sb	a1,0(a4)
    80009d50:	0027871b          	addiw	a4,a5,2
    80009d54:	0ac77e63          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009d58:	00e50733          	add	a4,a0,a4
    80009d5c:	00b70023          	sb	a1,0(a4)
    80009d60:	0037871b          	addiw	a4,a5,3
    80009d64:	0ac77663          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009d68:	00e50733          	add	a4,a0,a4
    80009d6c:	00b70023          	sb	a1,0(a4)
    80009d70:	0047871b          	addiw	a4,a5,4
    80009d74:	08c77e63          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009d78:	00e50733          	add	a4,a0,a4
    80009d7c:	00b70023          	sb	a1,0(a4)
    80009d80:	0057871b          	addiw	a4,a5,5
    80009d84:	08c77663          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009d88:	00e50733          	add	a4,a0,a4
    80009d8c:	00b70023          	sb	a1,0(a4)
    80009d90:	0067871b          	addiw	a4,a5,6
    80009d94:	06c77e63          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009d98:	00e50733          	add	a4,a0,a4
    80009d9c:	00b70023          	sb	a1,0(a4)
    80009da0:	0077871b          	addiw	a4,a5,7
    80009da4:	06c77663          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009da8:	00e50733          	add	a4,a0,a4
    80009dac:	00b70023          	sb	a1,0(a4)
    80009db0:	0087871b          	addiw	a4,a5,8
    80009db4:	04c77e63          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009db8:	00e50733          	add	a4,a0,a4
    80009dbc:	00b70023          	sb	a1,0(a4)
    80009dc0:	0097871b          	addiw	a4,a5,9
    80009dc4:	04c77663          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009dc8:	00e50733          	add	a4,a0,a4
    80009dcc:	00b70023          	sb	a1,0(a4)
    80009dd0:	00a7871b          	addiw	a4,a5,10
    80009dd4:	02c77e63          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009dd8:	00e50733          	add	a4,a0,a4
    80009ddc:	00b70023          	sb	a1,0(a4)
    80009de0:	00b7871b          	addiw	a4,a5,11
    80009de4:	02c77663          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009de8:	00e50733          	add	a4,a0,a4
    80009dec:	00b70023          	sb	a1,0(a4)
    80009df0:	00c7871b          	addiw	a4,a5,12
    80009df4:	00c77e63          	bgeu	a4,a2,80009e10 <__memset+0x1c8>
    80009df8:	00e50733          	add	a4,a0,a4
    80009dfc:	00b70023          	sb	a1,0(a4)
    80009e00:	00d7879b          	addiw	a5,a5,13
    80009e04:	00c7f663          	bgeu	a5,a2,80009e10 <__memset+0x1c8>
    80009e08:	00f507b3          	add	a5,a0,a5
    80009e0c:	00b78023          	sb	a1,0(a5)
    80009e10:	00813403          	ld	s0,8(sp)
    80009e14:	01010113          	addi	sp,sp,16
    80009e18:	00008067          	ret
    80009e1c:	00b00693          	li	a3,11
    80009e20:	e55ff06f          	j	80009c74 <__memset+0x2c>
    80009e24:	00300e93          	li	t4,3
    80009e28:	ea5ff06f          	j	80009ccc <__memset+0x84>
    80009e2c:	00100e93          	li	t4,1
    80009e30:	e9dff06f          	j	80009ccc <__memset+0x84>
    80009e34:	00000e93          	li	t4,0
    80009e38:	e95ff06f          	j	80009ccc <__memset+0x84>
    80009e3c:	00000793          	li	a5,0
    80009e40:	ef9ff06f          	j	80009d38 <__memset+0xf0>
    80009e44:	00200e93          	li	t4,2
    80009e48:	e85ff06f          	j	80009ccc <__memset+0x84>
    80009e4c:	00400e93          	li	t4,4
    80009e50:	e7dff06f          	j	80009ccc <__memset+0x84>
    80009e54:	00500e93          	li	t4,5
    80009e58:	e75ff06f          	j	80009ccc <__memset+0x84>
    80009e5c:	00600e93          	li	t4,6
    80009e60:	e6dff06f          	j	80009ccc <__memset+0x84>

0000000080009e64 <__memmove>:
    80009e64:	ff010113          	addi	sp,sp,-16
    80009e68:	00813423          	sd	s0,8(sp)
    80009e6c:	01010413          	addi	s0,sp,16
    80009e70:	0e060863          	beqz	a2,80009f60 <__memmove+0xfc>
    80009e74:	fff6069b          	addiw	a3,a2,-1
    80009e78:	0006881b          	sext.w	a6,a3
    80009e7c:	0ea5e863          	bltu	a1,a0,80009f6c <__memmove+0x108>
    80009e80:	00758713          	addi	a4,a1,7
    80009e84:	00a5e7b3          	or	a5,a1,a0
    80009e88:	40a70733          	sub	a4,a4,a0
    80009e8c:	0077f793          	andi	a5,a5,7
    80009e90:	00f73713          	sltiu	a4,a4,15
    80009e94:	00174713          	xori	a4,a4,1
    80009e98:	0017b793          	seqz	a5,a5
    80009e9c:	00e7f7b3          	and	a5,a5,a4
    80009ea0:	10078863          	beqz	a5,80009fb0 <__memmove+0x14c>
    80009ea4:	00900793          	li	a5,9
    80009ea8:	1107f463          	bgeu	a5,a6,80009fb0 <__memmove+0x14c>
    80009eac:	0036581b          	srliw	a6,a2,0x3
    80009eb0:	fff8081b          	addiw	a6,a6,-1
    80009eb4:	02081813          	slli	a6,a6,0x20
    80009eb8:	01d85893          	srli	a7,a6,0x1d
    80009ebc:	00858813          	addi	a6,a1,8
    80009ec0:	00058793          	mv	a5,a1
    80009ec4:	00050713          	mv	a4,a0
    80009ec8:	01088833          	add	a6,a7,a6
    80009ecc:	0007b883          	ld	a7,0(a5)
    80009ed0:	00878793          	addi	a5,a5,8
    80009ed4:	00870713          	addi	a4,a4,8
    80009ed8:	ff173c23          	sd	a7,-8(a4)
    80009edc:	ff0798e3          	bne	a5,a6,80009ecc <__memmove+0x68>
    80009ee0:	ff867713          	andi	a4,a2,-8
    80009ee4:	02071793          	slli	a5,a4,0x20
    80009ee8:	0207d793          	srli	a5,a5,0x20
    80009eec:	00f585b3          	add	a1,a1,a5
    80009ef0:	40e686bb          	subw	a3,a3,a4
    80009ef4:	00f507b3          	add	a5,a0,a5
    80009ef8:	06e60463          	beq	a2,a4,80009f60 <__memmove+0xfc>
    80009efc:	0005c703          	lbu	a4,0(a1)
    80009f00:	00e78023          	sb	a4,0(a5)
    80009f04:	04068e63          	beqz	a3,80009f60 <__memmove+0xfc>
    80009f08:	0015c603          	lbu	a2,1(a1)
    80009f0c:	00100713          	li	a4,1
    80009f10:	00c780a3          	sb	a2,1(a5)
    80009f14:	04e68663          	beq	a3,a4,80009f60 <__memmove+0xfc>
    80009f18:	0025c603          	lbu	a2,2(a1)
    80009f1c:	00200713          	li	a4,2
    80009f20:	00c78123          	sb	a2,2(a5)
    80009f24:	02e68e63          	beq	a3,a4,80009f60 <__memmove+0xfc>
    80009f28:	0035c603          	lbu	a2,3(a1)
    80009f2c:	00300713          	li	a4,3
    80009f30:	00c781a3          	sb	a2,3(a5)
    80009f34:	02e68663          	beq	a3,a4,80009f60 <__memmove+0xfc>
    80009f38:	0045c603          	lbu	a2,4(a1)
    80009f3c:	00400713          	li	a4,4
    80009f40:	00c78223          	sb	a2,4(a5)
    80009f44:	00e68e63          	beq	a3,a4,80009f60 <__memmove+0xfc>
    80009f48:	0055c603          	lbu	a2,5(a1)
    80009f4c:	00500713          	li	a4,5
    80009f50:	00c782a3          	sb	a2,5(a5)
    80009f54:	00e68663          	beq	a3,a4,80009f60 <__memmove+0xfc>
    80009f58:	0065c703          	lbu	a4,6(a1)
    80009f5c:	00e78323          	sb	a4,6(a5)
    80009f60:	00813403          	ld	s0,8(sp)
    80009f64:	01010113          	addi	sp,sp,16
    80009f68:	00008067          	ret
    80009f6c:	02061713          	slli	a4,a2,0x20
    80009f70:	02075713          	srli	a4,a4,0x20
    80009f74:	00e587b3          	add	a5,a1,a4
    80009f78:	f0f574e3          	bgeu	a0,a5,80009e80 <__memmove+0x1c>
    80009f7c:	02069613          	slli	a2,a3,0x20
    80009f80:	02065613          	srli	a2,a2,0x20
    80009f84:	fff64613          	not	a2,a2
    80009f88:	00e50733          	add	a4,a0,a4
    80009f8c:	00c78633          	add	a2,a5,a2
    80009f90:	fff7c683          	lbu	a3,-1(a5)
    80009f94:	fff78793          	addi	a5,a5,-1
    80009f98:	fff70713          	addi	a4,a4,-1
    80009f9c:	00d70023          	sb	a3,0(a4)
    80009fa0:	fec798e3          	bne	a5,a2,80009f90 <__memmove+0x12c>
    80009fa4:	00813403          	ld	s0,8(sp)
    80009fa8:	01010113          	addi	sp,sp,16
    80009fac:	00008067          	ret
    80009fb0:	02069713          	slli	a4,a3,0x20
    80009fb4:	02075713          	srli	a4,a4,0x20
    80009fb8:	00170713          	addi	a4,a4,1
    80009fbc:	00e50733          	add	a4,a0,a4
    80009fc0:	00050793          	mv	a5,a0
    80009fc4:	0005c683          	lbu	a3,0(a1)
    80009fc8:	00178793          	addi	a5,a5,1
    80009fcc:	00158593          	addi	a1,a1,1
    80009fd0:	fed78fa3          	sb	a3,-1(a5)
    80009fd4:	fee798e3          	bne	a5,a4,80009fc4 <__memmove+0x160>
    80009fd8:	f89ff06f          	j	80009f60 <__memmove+0xfc>

0000000080009fdc <__putc>:
    80009fdc:	fe010113          	addi	sp,sp,-32
    80009fe0:	00813823          	sd	s0,16(sp)
    80009fe4:	00113c23          	sd	ra,24(sp)
    80009fe8:	02010413          	addi	s0,sp,32
    80009fec:	00050793          	mv	a5,a0
    80009ff0:	fef40593          	addi	a1,s0,-17
    80009ff4:	00100613          	li	a2,1
    80009ff8:	00000513          	li	a0,0
    80009ffc:	fef407a3          	sb	a5,-17(s0)
    8000a000:	fffff097          	auipc	ra,0xfffff
    8000a004:	b3c080e7          	jalr	-1220(ra) # 80008b3c <console_write>
    8000a008:	01813083          	ld	ra,24(sp)
    8000a00c:	01013403          	ld	s0,16(sp)
    8000a010:	02010113          	addi	sp,sp,32
    8000a014:	00008067          	ret

000000008000a018 <__getc>:
    8000a018:	fe010113          	addi	sp,sp,-32
    8000a01c:	00813823          	sd	s0,16(sp)
    8000a020:	00113c23          	sd	ra,24(sp)
    8000a024:	02010413          	addi	s0,sp,32
    8000a028:	fe840593          	addi	a1,s0,-24
    8000a02c:	00100613          	li	a2,1
    8000a030:	00000513          	li	a0,0
    8000a034:	fffff097          	auipc	ra,0xfffff
    8000a038:	ae8080e7          	jalr	-1304(ra) # 80008b1c <console_read>
    8000a03c:	fe844503          	lbu	a0,-24(s0)
    8000a040:	01813083          	ld	ra,24(sp)
    8000a044:	01013403          	ld	s0,16(sp)
    8000a048:	02010113          	addi	sp,sp,32
    8000a04c:	00008067          	ret

000000008000a050 <console_handler>:
    8000a050:	fe010113          	addi	sp,sp,-32
    8000a054:	00813823          	sd	s0,16(sp)
    8000a058:	00113c23          	sd	ra,24(sp)
    8000a05c:	00913423          	sd	s1,8(sp)
    8000a060:	02010413          	addi	s0,sp,32
    8000a064:	14202773          	csrr	a4,scause
    8000a068:	100027f3          	csrr	a5,sstatus
    8000a06c:	0027f793          	andi	a5,a5,2
    8000a070:	06079e63          	bnez	a5,8000a0ec <console_handler+0x9c>
    8000a074:	00074c63          	bltz	a4,8000a08c <console_handler+0x3c>
    8000a078:	01813083          	ld	ra,24(sp)
    8000a07c:	01013403          	ld	s0,16(sp)
    8000a080:	00813483          	ld	s1,8(sp)
    8000a084:	02010113          	addi	sp,sp,32
    8000a088:	00008067          	ret
    8000a08c:	0ff77713          	andi	a4,a4,255
    8000a090:	00900793          	li	a5,9
    8000a094:	fef712e3          	bne	a4,a5,8000a078 <console_handler+0x28>
    8000a098:	ffffe097          	auipc	ra,0xffffe
    8000a09c:	6dc080e7          	jalr	1756(ra) # 80008774 <plic_claim>
    8000a0a0:	00a00793          	li	a5,10
    8000a0a4:	00050493          	mv	s1,a0
    8000a0a8:	02f50c63          	beq	a0,a5,8000a0e0 <console_handler+0x90>
    8000a0ac:	fc0506e3          	beqz	a0,8000a078 <console_handler+0x28>
    8000a0b0:	00050593          	mv	a1,a0
    8000a0b4:	00002517          	auipc	a0,0x2
    8000a0b8:	8bc50513          	addi	a0,a0,-1860 # 8000b970 <CONSOLE_STATUS+0x960>
    8000a0bc:	fffff097          	auipc	ra,0xfffff
    8000a0c0:	afc080e7          	jalr	-1284(ra) # 80008bb8 <__printf>
    8000a0c4:	01013403          	ld	s0,16(sp)
    8000a0c8:	01813083          	ld	ra,24(sp)
    8000a0cc:	00048513          	mv	a0,s1
    8000a0d0:	00813483          	ld	s1,8(sp)
    8000a0d4:	02010113          	addi	sp,sp,32
    8000a0d8:	ffffe317          	auipc	t1,0xffffe
    8000a0dc:	6d430067          	jr	1748(t1) # 800087ac <plic_complete>
    8000a0e0:	fffff097          	auipc	ra,0xfffff
    8000a0e4:	3e0080e7          	jalr	992(ra) # 800094c0 <uartintr>
    8000a0e8:	fddff06f          	j	8000a0c4 <console_handler+0x74>
    8000a0ec:	00002517          	auipc	a0,0x2
    8000a0f0:	98450513          	addi	a0,a0,-1660 # 8000ba70 <digits+0x78>
    8000a0f4:	fffff097          	auipc	ra,0xfffff
    8000a0f8:	a68080e7          	jalr	-1432(ra) # 80008b5c <panic>
	...

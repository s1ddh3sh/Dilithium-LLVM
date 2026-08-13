; ModuleID = 'dilithium_composite'
source_filename = "dilithium_composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-unknown-none-eabihf"

@.str = private unnamed_addr constant [14 x i8] c"test_dilitium\00", align 1, !dbg !0
@_impure_ptr = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Verification failed\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"Signed message lengths wrong\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [23 x i8] c"Message lengths wrong\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [22 x i8] c"Messages don't match\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [28 x i8] c"Trivial forgeries possible\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [28 x i8] c"CRYPTO_PUBLICKEYBYTES = %d\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [28 x i8] c"CRYPTO_SECRETKEYBYTES = %d\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [19 x i8] c"CRYPTO_BYTES = %d\0A\00", align 1, !dbg !36
@randombytes.fd = internal unnamed_addr global i32 -1, align 4, !dbg !41
@.str.9 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1, !dbg !59
@zetas = internal unnamed_addr constant [256 x i32] [i32 0, i32 25847, i32 -2608894, i32 -518909, i32 237124, i32 -777960, i32 -876248, i32 466468, i32 1826347, i32 2353451, i32 -359251, i32 -2091905, i32 3119733, i32 -2884855, i32 3111497, i32 2680103, i32 2725464, i32 1024112, i32 -1079900, i32 3585928, i32 -549488, i32 -1119584, i32 2619752, i32 -2108549, i32 -2118186, i32 -3859737, i32 -1399561, i32 -3277672, i32 1757237, i32 -19422, i32 4010497, i32 280005, i32 2706023, i32 95776, i32 3077325, i32 3530437, i32 -1661693, i32 -3592148, i32 -2537516, i32 3915439, i32 -3861115, i32 -3043716, i32 3574422, i32 -2867647, i32 3539968, i32 -300467, i32 2348700, i32 -539299, i32 -1699267, i32 -1643818, i32 3505694, i32 -3821735, i32 3507263, i32 -2140649, i32 -1600420, i32 3699596, i32 811944, i32 531354, i32 954230, i32 3881043, i32 3900724, i32 -2556880, i32 2071892, i32 -2797779, i32 -3930395, i32 -1528703, i32 -3677745, i32 -3041255, i32 -1452451, i32 3475950, i32 2176455, i32 -1585221, i32 -1257611, i32 1939314, i32 -4083598, i32 -1000202, i32 -3190144, i32 -3157330, i32 -3632928, i32 126922, i32 3412210, i32 -983419, i32 2147896, i32 2715295, i32 -2967645, i32 -3693493, i32 -411027, i32 -2477047, i32 -671102, i32 -1228525, i32 -22981, i32 -1308169, i32 -381987, i32 1349076, i32 1852771, i32 -1430430, i32 -3343383, i32 264944, i32 508951, i32 3097992, i32 44288, i32 -1100098, i32 904516, i32 3958618, i32 -3724342, i32 -8578, i32 1653064, i32 -3249728, i32 2389356, i32 -210977, i32 759969, i32 -1316856, i32 189548, i32 -3553272, i32 3159746, i32 -1851402, i32 -2409325, i32 -177440, i32 1315589, i32 1341330, i32 1285669, i32 -1584928, i32 -812732, i32 -1439742, i32 -3019102, i32 -3881060, i32 -3628969, i32 3839961, i32 2091667, i32 3407706, i32 2316500, i32 3817976, i32 -3342478, i32 2244091, i32 -2446433, i32 -3562462, i32 266997, i32 2434439, i32 -1235728, i32 3513181, i32 -3520352, i32 -3759364, i32 -1197226, i32 -3193378, i32 900702, i32 1859098, i32 909542, i32 819034, i32 495491, i32 -1613174, i32 -43260, i32 -522500, i32 -655327, i32 -3122442, i32 2031748, i32 3207046, i32 -3556995, i32 -525098, i32 -768622, i32 -3595838, i32 342297, i32 286988, i32 -2437823, i32 4108315, i32 3437287, i32 -3342277, i32 1735879, i32 203044, i32 2842341, i32 2691481, i32 -2590150, i32 1265009, i32 4055324, i32 1247620, i32 2486353, i32 1595974, i32 -3767016, i32 1250494, i32 2635921, i32 -3548272, i32 -2994039, i32 1869119, i32 1903435, i32 -1050970, i32 -1333058, i32 1237275, i32 -3318210, i32 -1430225, i32 -451100, i32 1312455, i32 3306115, i32 -1962642, i32 -1279661, i32 1917081, i32 -2546312, i32 -1374803, i32 1500165, i32 777191, i32 2235880, i32 3406031, i32 -542412, i32 -2831860, i32 -1671176, i32 -1846953, i32 -2584293, i32 -3724270, i32 594136, i32 -3776993, i32 -2013608, i32 2432395, i32 2454455, i32 -164721, i32 1957272, i32 3369112, i32 185531, i32 -1207385, i32 -3183426, i32 162844, i32 1616392, i32 3014001, i32 810149, i32 1652634, i32 -3694233, i32 -1799107, i32 -3038916, i32 3523897, i32 3866901, i32 269760, i32 2213111, i32 -975884, i32 1717735, i32 472078, i32 -426683, i32 1723600, i32 -1803090, i32 1910376, i32 -1667432, i32 -1104333, i32 -260646, i32 -3833893, i32 -2939036, i32 -2235985, i32 -420899, i32 -2286327, i32 183443, i32 -976891, i32 1612842, i32 -3545687, i32 -554416, i32 3919660, i32 -48306, i32 -1362209, i32 3937738, i32 1400424, i32 -846154, i32 1976782], align 4, !dbg !66
@pqcrystals_dilithium_fips202_ref_KeccakF_RoundConstants = dso_local local_unnamed_addr constant [24 x i64] [i64 1, i64 32898, i64 -9223372036854742902, i64 -9223372034707259392, i64 32907, i64 2147483649, i64 -9223372034707259263, i64 -9223372036854743031, i64 138, i64 136, i64 2147516425, i64 2147483658, i64 2147516555, i64 -9223372036854775669, i64 -9223372036854742903, i64 -9223372036854743037, i64 -9223372036854743038, i64 -9223372036854775680, i64 32778, i64 -9223372034707292150, i64 -9223372034707259263, i64 -9223372036854742912, i64 2147483649, i64 -9223372034707259384], align 8, !dbg !81

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @main() local_unnamed_addr #0 !dbg !117 {
entry:
  %j = alloca i32, align 4
  %mlen = alloca i32, align 4
  %smlen = alloca i32, align 4
  %b = alloca i8, align 1
  %ctx = alloca [14 x i8], align 1
  %m = alloca [2479 x i8], align 1
  %m2 = alloca [2479 x i8], align 1
  %sm = alloca [2479 x i8], align 1
  %pk = alloca [1312 x i8], align 1
  %sk = alloca [2560 x i8], align 1
    #dbg_declare(ptr %ctx, !120, !DIExpression(), !122)
  call void @dilithium_memset(ptr %ctx, i8 0, i32 14), !dbg !122
    #dbg_declare(ptr %m, !123, !DIExpression(), !127)
    #dbg_declare(ptr %m2, !128, !DIExpression(), !129)
    #dbg_declare(ptr %sm, !130, !DIExpression(), !131)
    #dbg_declare(ptr %pk, !132, !DIExpression(), !136)
    #dbg_declare(ptr %sk, !137, !DIExpression(), !141)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ctx, i32 noundef 14, ptr noundef nonnull @.str) #3, !dbg !142
    #dbg_value(i32 0, !143, !DIExpression(), !144)
  br label %for.cond, !dbg !145

for.cond:                                         ; preds = %for.inc52, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !147
    #dbg_value(i32 %i.0, !143, !DIExpression(), !144)
  %exitcond = icmp ne i32 %i.0, 10000, !dbg !148
  br i1 %exitcond, label %for.body, label %for.end54, !dbg !150

for.body:                                         ; preds = %for.cond
  call void @randombytes(ptr noundef nonnull %m, i32 noundef 59) #4, !dbg !151
  %call4 = call i32 @pqcrystals_dilithium2_ref_keypair(ptr noundef nonnull %pk, ptr noundef nonnull %sk) #4, !dbg !153
    #dbg_value(ptr %smlen, !154, !DIExpression(DW_OP_deref), !144)
  %call9 = call i32 @pqcrystals_dilithium2_ref(ptr noundef nonnull %sm, ptr noundef nonnull %smlen, ptr noundef nonnull %m, i32 noundef 59, ptr noundef nonnull %ctx, i32 noundef 14, ptr noundef nonnull %sk) #4, !dbg !155
  %0 = load i32, ptr %smlen, align 4, !dbg !156
    #dbg_value(i32 %0, !154, !DIExpression(), !144)
    #dbg_value(ptr %mlen, !157, !DIExpression(DW_OP_deref), !144)
  %call14 = call i32 @pqcrystals_dilithium2_ref_open(ptr noundef nonnull %m2, ptr noundef nonnull %mlen, ptr noundef nonnull %sm, i32 noundef %0, ptr noundef nonnull %ctx, i32 noundef 14, ptr noundef nonnull %pk) #4, !dbg !158
    #dbg_value(i32 %call14, !159, !DIExpression(), !144)
  %tobool.not = icmp eq i32 %call14, 0, !dbg !160
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !160

if.then:                                          ; preds = %for.body
  %1 = load ptr, ptr @_impure_ptr, align 4, !dbg !162
  %_stderr = getelementptr inbounds nuw i8, ptr %1, i32 12, !dbg !162
  %2 = load ptr, ptr %_stderr, align 4, !dbg !162
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1) #3, !dbg !164
  br label %return, !dbg !165

if.end:                                           ; preds = %for.body
  %3 = load i32, ptr %smlen, align 4, !dbg !166
    #dbg_value(i32 %3, !154, !DIExpression(), !144)
  %cmp16.not = icmp eq i32 %3, 2479, !dbg !168
  br i1 %cmp16.not, label %if.end20, label %if.then17, !dbg !168

if.then17:                                        ; preds = %if.end
  %4 = load ptr, ptr @_impure_ptr, align 4, !dbg !169
  %_stderr18 = getelementptr inbounds nuw i8, ptr %4, i32 12, !dbg !169
  %5 = load ptr, ptr %_stderr18, align 4, !dbg !169
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.2) #3, !dbg !171
  br label %return, !dbg !172

if.end20:                                         ; preds = %if.end
  %6 = load i32, ptr %mlen, align 4, !dbg !173
    #dbg_value(i32 %6, !157, !DIExpression(), !144)
  %cmp21.not = icmp eq i32 %6, 59, !dbg !175
  br i1 %cmp21.not, label %for.cond26.preheader, label %if.then22, !dbg !175

for.cond26.preheader:                             ; preds = %if.end20
  br label %for.cond26, !dbg !176

if.then22:                                        ; preds = %if.end20
  %7 = load ptr, ptr @_impure_ptr, align 4, !dbg !178
  %_stderr23 = getelementptr inbounds nuw i8, ptr %7, i32 12, !dbg !178
  %8 = load ptr, ptr %_stderr23, align 4, !dbg !178
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.3) #3, !dbg !180
  br label %return, !dbg !181

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 0, %for.cond26.preheader ], !dbg !182
  store i32 %storemerge, ptr %j, align 4, !dbg !182
    #dbg_value(i32 %storemerge, !183, !DIExpression(), !144)
  %cmp27 = icmp ult i32 %storemerge, 59, !dbg !184
  br i1 %cmp27, label %for.body28, label %for.end, !dbg !176

for.body28:                                       ; preds = %for.cond26
  %9 = load i32, ptr %j, align 4, !dbg !186
    #dbg_value(i32 %9, !183, !DIExpression(), !144)
  %arrayidx = getelementptr inbounds nuw [2479 x i8], ptr %m2, i32 0, i32 %9, !dbg !189
  %10 = load i8, ptr %arrayidx, align 1, !dbg !189
    #dbg_value(i32 %9, !183, !DIExpression(), !144)
  %arrayidx29 = getelementptr inbounds nuw [2479 x i8], ptr %m, i32 0, i32 %9, !dbg !190
  %11 = load i8, ptr %arrayidx29, align 1, !dbg !190
  %cmp31.not = icmp eq i8 %10, %11, !dbg !191
  br i1 %cmp31.not, label %for.inc, label %if.then33, !dbg !191

if.then33:                                        ; preds = %for.body28
  %12 = load ptr, ptr @_impure_ptr, align 4, !dbg !192
  %_stderr34 = getelementptr inbounds nuw i8, ptr %12, i32 12, !dbg !192
  %13 = load ptr, ptr %_stderr34, align 4, !dbg !192
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.4) #3, !dbg !194
  br label %return, !dbg !195

for.inc:                                          ; preds = %for.body28
  %14 = load i32, ptr %j, align 4, !dbg !196
    #dbg_value(i32 %14, !183, !DIExpression(), !144)
  %inc = add i32 %14, 1, !dbg !196
    #dbg_value(i32 %inc, !183, !DIExpression(), !144)
  br label %for.cond26, !dbg !197, !llvm.loop !198

for.end:                                          ; preds = %for.cond26
    #dbg_value(ptr %j, !183, !DIExpression(DW_OP_deref), !144)
  call void @randombytes(ptr noundef nonnull %j, i32 noundef 4) #4, !dbg !201
  br label %do.body, !dbg !202

do.body:                                          ; preds = %do.body, %for.end
    #dbg_value(ptr %b, !203, !DIExpression(DW_OP_deref), !144)
  call void @randombytes(ptr noundef nonnull %b, i32 noundef 1) #4, !dbg !204
  %15 = load i8, ptr %b, align 1, !dbg !206
    #dbg_value(i8 %15, !203, !DIExpression(), !144)
  %tobool37.not = icmp eq i8 %15, 0, !dbg !207
  br i1 %tobool37.not, label %do.body, label %do.end, !dbg !208, !llvm.loop !209

do.end:                                           ; preds = %do.body
  %16 = load i8, ptr %b, align 1, !dbg !211
    #dbg_value(i8 %16, !203, !DIExpression(), !144)
  %17 = load i32, ptr %j, align 4, !dbg !212
    #dbg_value(i32 %17, !183, !DIExpression(), !144)
  %rem = urem i32 %17, 2479, !dbg !213
  %arrayidx39 = getelementptr inbounds nuw [2479 x i8], ptr %sm, i32 0, i32 %rem, !dbg !214
  %18 = load i8, ptr %arrayidx39, align 1, !dbg !215
  %add = add i8 %18, %16, !dbg !215
  store i8 %add, ptr %arrayidx39, align 1, !dbg !215
  %19 = load i32, ptr %smlen, align 4, !dbg !216
    #dbg_value(i32 %19, !154, !DIExpression(), !144)
    #dbg_value(ptr %mlen, !157, !DIExpression(DW_OP_deref), !144)
  %call46 = call i32 @pqcrystals_dilithium2_ref_open(ptr noundef nonnull %m2, ptr noundef nonnull %mlen, ptr noundef nonnull %sm, i32 noundef %19, ptr noundef nonnull %ctx, i32 noundef 14, ptr noundef nonnull %pk) #4, !dbg !217
    #dbg_value(i32 %call46, !159, !DIExpression(), !144)
  %tobool47.not = icmp eq i32 %call46, 0, !dbg !218
  br i1 %tobool47.not, label %if.then48, label %for.inc52, !dbg !220

if.then48:                                        ; preds = %do.end
  %20 = load ptr, ptr @_impure_ptr, align 4, !dbg !221
  %_stderr49 = getelementptr inbounds nuw i8, ptr %20, i32 12, !dbg !221
  %21 = load ptr, ptr %_stderr49, align 4, !dbg !221
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.5) #3, !dbg !223
  br label %return, !dbg !224

for.inc52:                                        ; preds = %do.end
  %inc53 = add nuw nsw i32 %i.0, 1, !dbg !225
    #dbg_value(i32 %inc53, !143, !DIExpression(), !144)
  br label %for.cond, !dbg !226, !llvm.loop !227

for.end54:                                        ; preds = %for.cond
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i32 noundef 1312) #3, !dbg !229
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i32 noundef 2560) #3, !dbg !230
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i32 noundef 2420) #3, !dbg !231
  br label %return, !dbg !232

return:                                           ; preds = %for.end54, %if.then48, %if.then33, %if.then22, %if.then17, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then17 ], [ -1, %if.then22 ], [ -1, %if.then33 ], [ -1, %if.then48 ], [ 0, %for.end54 ], !dbg !144
  ret i32 %retval.0, !dbg !233
}

declare dso_local i32 @snprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare dso_local i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @randombytes(ptr noundef %out, i32 noundef %outlen) local_unnamed_addr #0 !dbg !43 {
entry:
    #dbg_value(ptr %out, !234, !DIExpression(), !235)
    #dbg_value(i32 %outlen, !236, !DIExpression(), !235)
  br label %while.cond, !dbg !237

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = load i32, ptr @randombytes.fd, align 4, !dbg !238
  %cmp = icmp eq i32 %0, -1, !dbg !239
  br i1 %cmp, label %while.body, label %while.cond7.preheader, !dbg !237

while.cond7.preheader:                            ; preds = %while.cond
  br label %while.cond7.outer, !dbg !240

while.body:                                       ; preds = %while.cond
  %call = call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.9, i32 noundef 0) #3, !dbg !241
  store i32 %call, ptr @randombytes.fd, align 4, !dbg !243
  %cmp1 = icmp eq i32 %call, -1, !dbg !244
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !246

land.lhs.true:                                    ; preds = %while.body
  %call2 = call ptr @__errno() #3, !dbg !247
  %1 = load i32, ptr %call2, align 4, !dbg !247
  %cmp3 = icmp eq i32 %1, 4, !dbg !248
  br i1 %cmp3, label %while.cond.backedge, label %if.else, !dbg !246

if.else:                                          ; preds = %land.lhs.true, %while.body
  %2 = load i32, ptr @randombytes.fd, align 4, !dbg !249
  %cmp4 = icmp eq i32 %2, -1, !dbg !251
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !251

if.then5:                                         ; preds = %if.else
  call void @abort() #3, !dbg !252
  br label %if.end6, !dbg !252

if.end6:                                          ; preds = %if.else, %if.then5
  br label %while.cond.backedge, !dbg !237

while.cond.backedge:                              ; preds = %if.end6, %land.lhs.true
  br label %while.cond, !dbg !238, !llvm.loop !253

while.cond7:                                      ; preds = %while.cond7.outer, %land.lhs.true12
    #dbg_value(ptr %out.addr.0.ph, !234, !DIExpression(), !235)
    #dbg_value(i32 %outlen.addr.0.ph, !236, !DIExpression(), !235)
  %cmp8.not = icmp eq i32 %outlen.addr.0.ph, 0, !dbg !255
  br i1 %cmp8.not, label %while.end21, label %while.body9, !dbg !240

while.body9:                                      ; preds = %while.cond7
  %3 = load i32, ptr @randombytes.fd, align 4, !dbg !256
  %call10 = call i32 @read(i32 noundef %3, ptr noundef %out.addr.0.ph, i32 noundef %outlen.addr.0.ph) #3, !dbg !258
    #dbg_value(i32 %call10, !259, !DIExpression(), !235)
  %cond = icmp eq i32 %call10, -1, !dbg !264
  br i1 %cond, label %land.lhs.true12, label %if.end20.loopexit, !dbg !264

land.lhs.true12:                                  ; preds = %while.body9
  %call13 = call ptr @__errno() #3, !dbg !266
  %4 = load i32, ptr %call13, align 4, !dbg !266
  %cmp14 = icmp eq i32 %4, 4, !dbg !267
  br i1 %cmp14, label %while.cond7, label %if.then18, !dbg !264, !llvm.loop !268

if.then18:                                        ; preds = %land.lhs.true12
  %call10.lcssa1 = phi i32 [ %call10, %land.lhs.true12 ], !dbg !258
  call void @abort() #3, !dbg !270
  br label %if.end20, !dbg !270

if.end20.loopexit:                                ; preds = %while.body9
  %call10.lcssa = phi i32 [ %call10, %while.body9 ], !dbg !258
  br label %if.end20, !dbg !272

if.end20:                                         ; preds = %if.end20.loopexit, %if.then18
  %call102 = phi i32 [ %call10.lcssa, %if.end20.loopexit ], [ %call10.lcssa1, %if.then18 ]
  %add.ptr = getelementptr inbounds i8, ptr %out.addr.0.ph, i32 %call102, !dbg !272
    #dbg_value(ptr %add.ptr, !234, !DIExpression(), !235)
  %sub = sub i32 %outlen.addr.0.ph, %call102, !dbg !273
    #dbg_value(i32 %sub, !236, !DIExpression(), !235)
  br label %while.cond7.outer, !dbg !240, !llvm.loop !268

while.cond7.outer:                                ; preds = %while.cond7.preheader, %if.end20
  %outlen.addr.0.ph = phi i32 [ %outlen, %while.cond7.preheader ], [ %sub, %if.end20 ]
  %out.addr.0.ph = phi ptr [ %out, %while.cond7.preheader ], [ %add.ptr, %if.end20 ]
  br label %while.cond7, !dbg !240

while.end21:                                      ; preds = %while.cond7
  ret void, !dbg !274
}

declare dso_local i32 @open(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

declare dso_local ptr @__errno() local_unnamed_addr #1

declare dso_local void @abort() local_unnamed_addr #1

declare dso_local i32 @read(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium2_ref_keypair(ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !275 {
entry:
  %seedbuf = alloca [128 x i8], align 1
  %tr = alloca [64 x i8], align 1
  %mat = alloca [4 x [4 x [256 x i32]]], align 4
  %s1 = alloca [4 x [256 x i32]], align 4
  %s1hat = alloca [4 x [256 x i32]], align 4
  %s2 = alloca [4 x [256 x i32]], align 4
  %t1 = alloca [4 x [256 x i32]], align 4
  %t0 = alloca [4 x [256 x i32]], align 4
    #dbg_value(ptr %pk, !279, !DIExpression(), !280)
    #dbg_value(ptr %sk, !281, !DIExpression(), !280)
    #dbg_declare(ptr %seedbuf, !282, !DIExpression(), !286)
    #dbg_declare(ptr %tr, !287, !DIExpression(), !291)
    #dbg_declare(ptr %mat, !292, !DIExpression(), !302)
    #dbg_declare(ptr %s1, !303, !DIExpression(), !304)
    #dbg_declare(ptr %s1hat, !305, !DIExpression(), !306)
    #dbg_declare(ptr %s2, !307, !DIExpression(), !309)
    #dbg_declare(ptr %t1, !310, !DIExpression(), !311)
    #dbg_declare(ptr %t0, !312, !DIExpression(), !313)
  call void @randombytes(ptr noundef nonnull %seedbuf, i32 noundef 32) #4, !dbg !314
  %arrayidx = getelementptr inbounds nuw i8, ptr %seedbuf, i32 32, !dbg !315
  store i8 4, ptr %arrayidx, align 1, !dbg !316
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 33, !dbg !317
  store i8 4, ptr %arrayidx1, align 1, !dbg !318
  call void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef nonnull %seedbuf, i32 noundef 128, ptr noundef nonnull %seedbuf, i32 noundef 34) #4, !dbg !319
    #dbg_value(ptr %seedbuf, !320, !DIExpression(), !280)
  %add.ptr = getelementptr inbounds nuw i8, ptr %seedbuf, i32 32, !dbg !323
    #dbg_value(ptr %add.ptr, !324, !DIExpression(), !280)
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 96, !dbg !325
    #dbg_value(ptr %add.ptr5, !326, !DIExpression(), !280)
  call void @pqcrystals_dilithium2_ref_polyvec_matrix_expand(ptr noundef nonnull %mat, ptr noundef nonnull %seedbuf) #4, !dbg !327
  call void @pqcrystals_dilithium2_ref_polyvecl_uniform_eta(ptr noundef nonnull %s1, ptr noundef nonnull %add.ptr, i16 noundef zeroext 0) #4, !dbg !328
  call void @pqcrystals_dilithium2_ref_polyveck_uniform_eta(ptr noundef nonnull %s2, ptr noundef nonnull %add.ptr, i16 noundef zeroext 4) #4, !dbg !329
  %call = call ptr @memcpy(ptr noundef nonnull %s1hat, ptr noundef nonnull %s1, i32 noundef 4096) #3, !dbg !330
  call void @pqcrystals_dilithium2_ref_polyvecl_ntt(ptr noundef nonnull %s1hat) #4, !dbg !331
  call void @pqcrystals_dilithium2_ref_polyvec_matrix_pointwise_montgomery(ptr noundef nonnull %t1, ptr noundef nonnull %mat, ptr noundef nonnull %s1hat) #4, !dbg !332
  call void @pqcrystals_dilithium2_ref_polyveck_reduce(ptr noundef nonnull %t1) #4, !dbg !333
  call void @pqcrystals_dilithium2_ref_polyveck_invntt_tomont(ptr noundef nonnull %t1) #4, !dbg !334
  call void @pqcrystals_dilithium2_ref_polyveck_add(ptr noundef nonnull %t1, ptr noundef nonnull %t1, ptr noundef nonnull %s2) #4, !dbg !335
  call void @pqcrystals_dilithium2_ref_polyveck_caddq(ptr noundef nonnull %t1) #4, !dbg !336
  call void @pqcrystals_dilithium2_ref_polyveck_power2round(ptr noundef nonnull %t1, ptr noundef nonnull %t0, ptr noundef nonnull %t1) #4, !dbg !337
  call void @pqcrystals_dilithium2_ref_pack_pk(ptr noundef %pk, ptr noundef nonnull %seedbuf, ptr noundef nonnull %t1) #4, !dbg !338
  call void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef nonnull %tr, i32 noundef 64, ptr noundef %pk, i32 noundef 1312) #4, !dbg !339
  call void @pqcrystals_dilithium2_ref_pack_sk(ptr noundef %sk, ptr noundef nonnull %seedbuf, ptr noundef nonnull %tr, ptr noundef nonnull %add.ptr5, ptr noundef nonnull %t0, ptr noundef nonnull %s1, ptr noundef nonnull %s2) #4, !dbg !340
  ret i32 0, !dbg !341
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium2_ref_signature_internal(ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %pre, i32 noundef %prelen, ptr noundef %rnd, ptr noundef %sk) local_unnamed_addr #0 !dbg !342 {
entry:
  %seedbuf = alloca [256 x i8], align 1
  %mat = alloca [4 x [4 x [256 x i32]]], align 4
  %s1 = alloca [4 x [256 x i32]], align 4
  %y = alloca [4 x [256 x i32]], align 4
  %z = alloca [4 x [256 x i32]], align 4
  %t0 = alloca [4 x [256 x i32]], align 4
  %s2 = alloca [4 x [256 x i32]], align 4
  %w1 = alloca [4 x [256 x i32]], align 4
  %w0 = alloca [4 x [256 x i32]], align 4
  %h = alloca [4 x [256 x i32]], align 4
  %cp = alloca [256 x i32], align 4
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %sig, !346, !DIExpression(), !347)
    #dbg_value(ptr %siglen, !348, !DIExpression(), !347)
    #dbg_value(ptr %m, !349, !DIExpression(), !347)
    #dbg_value(i32 %mlen, !350, !DIExpression(), !347)
    #dbg_value(ptr %pre, !351, !DIExpression(), !347)
    #dbg_value(i32 %prelen, !352, !DIExpression(), !347)
    #dbg_value(ptr %rnd, !353, !DIExpression(), !347)
    #dbg_value(ptr %sk, !354, !DIExpression(), !347)
    #dbg_declare(ptr %seedbuf, !355, !DIExpression(), !357)
    #dbg_value(i16 0, !358, !DIExpression(), !347)
    #dbg_declare(ptr %mat, !362, !DIExpression(), !363)
    #dbg_declare(ptr %s1, !364, !DIExpression(), !365)
    #dbg_declare(ptr %y, !366, !DIExpression(), !367)
    #dbg_declare(ptr %z, !368, !DIExpression(), !369)
    #dbg_declare(ptr %t0, !370, !DIExpression(), !371)
    #dbg_declare(ptr %s2, !372, !DIExpression(), !373)
    #dbg_declare(ptr %w1, !374, !DIExpression(), !375)
    #dbg_declare(ptr %w0, !376, !DIExpression(), !377)
    #dbg_declare(ptr %h, !378, !DIExpression(), !379)
    #dbg_declare(ptr %cp, !380, !DIExpression(), !381)
    #dbg_declare(ptr %state, !382, !DIExpression(), !388)
    #dbg_value(ptr %seedbuf, !389, !DIExpression(), !347)
  %add.ptr = getelementptr inbounds nuw i8, ptr %seedbuf, i32 32, !dbg !390
    #dbg_value(ptr %add.ptr, !391, !DIExpression(), !347)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 96, !dbg !392
    #dbg_value(ptr %add.ptr1, !393, !DIExpression(), !347)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 128, !dbg !394
    #dbg_value(ptr %add.ptr2, !395, !DIExpression(), !347)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 192, !dbg !396
    #dbg_value(ptr %add.ptr3, !397, !DIExpression(), !347)
  call void @pqcrystals_dilithium2_ref_unpack_sk(ptr noundef nonnull %seedbuf, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %t0, ptr noundef nonnull %s1, ptr noundef nonnull %s2, ptr noundef %sk) #4, !dbg !398
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !399
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %add.ptr, i32 noundef 64) #4, !dbg !400
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %pre, i32 noundef %prelen) #4, !dbg !401
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %m, i32 noundef %mlen) #4, !dbg !402
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !403
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef nonnull %add.ptr2, i32 noundef 64, ptr noundef nonnull %state) #4, !dbg !404
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !405
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %add.ptr1, i32 noundef 32) #4, !dbg !406
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %rnd, i32 noundef 32) #4, !dbg !407
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %add.ptr2, i32 noundef 64) #4, !dbg !408
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !409
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef nonnull %add.ptr3, i32 noundef 64, ptr noundef nonnull %state) #4, !dbg !410
  call void @pqcrystals_dilithium2_ref_polyvec_matrix_expand(ptr noundef nonnull %mat, ptr noundef nonnull %seedbuf) #4, !dbg !411
  call void @pqcrystals_dilithium2_ref_polyvecl_ntt(ptr noundef nonnull %s1) #4, !dbg !412
  call void @pqcrystals_dilithium2_ref_polyveck_ntt(ptr noundef nonnull %s2) #4, !dbg !413
  call void @pqcrystals_dilithium2_ref_polyveck_ntt(ptr noundef nonnull %t0) #4, !dbg !414
  br label %rej, !dbg !414

rej:                                              ; preds = %rej.backedge, %entry
  %nonce.0 = phi i16 [ 0, %entry ], [ %inc, %rej.backedge ], !dbg !347
    #dbg_value(i16 %nonce.0, !358, !DIExpression(), !347)
    #dbg_label(!415, !416)
  %inc = add i16 %nonce.0, 1, !dbg !417
    #dbg_value(i16 %inc, !358, !DIExpression(), !347)
  call void @pqcrystals_dilithium2_ref_polyvecl_uniform_gamma1(ptr noundef nonnull %y, ptr noundef nonnull %add.ptr3, i16 noundef zeroext %nonce.0) #4, !dbg !418
  %call = call ptr @memcpy(ptr noundef nonnull %z, ptr noundef nonnull %y, i32 noundef 4096) #3, !dbg !419
  call void @pqcrystals_dilithium2_ref_polyvecl_ntt(ptr noundef nonnull %z) #4, !dbg !420
  call void @pqcrystals_dilithium2_ref_polyvec_matrix_pointwise_montgomery(ptr noundef nonnull %w1, ptr noundef nonnull %mat, ptr noundef nonnull %z) #4, !dbg !421
  call void @pqcrystals_dilithium2_ref_polyveck_reduce(ptr noundef nonnull %w1) #4, !dbg !422
  call void @pqcrystals_dilithium2_ref_polyveck_invntt_tomont(ptr noundef nonnull %w1) #4, !dbg !423
  call void @pqcrystals_dilithium2_ref_polyveck_caddq(ptr noundef nonnull %w1) #4, !dbg !424
  call void @pqcrystals_dilithium2_ref_polyveck_decompose(ptr noundef nonnull %w1, ptr noundef nonnull %w0, ptr noundef nonnull %w1) #4, !dbg !425
  call void @pqcrystals_dilithium2_ref_polyveck_pack_w1(ptr noundef %sig, ptr noundef nonnull %w1) #4, !dbg !426
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !427
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %add.ptr2, i32 noundef 64) #4, !dbg !428
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %sig, i32 noundef 768) #4, !dbg !429
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !430
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef %sig, i32 noundef 32, ptr noundef nonnull %state) #4, !dbg !431
  call void @pqcrystals_dilithium2_ref_poly_challenge(ptr noundef nonnull %cp, ptr noundef %sig) #4, !dbg !432
  call void @pqcrystals_dilithium2_ref_poly_ntt(ptr noundef nonnull %cp) #4, !dbg !433
  call void @pqcrystals_dilithium2_ref_polyvecl_pointwise_poly_montgomery(ptr noundef nonnull %z, ptr noundef nonnull %cp, ptr noundef nonnull %s1) #4, !dbg !434
  call void @pqcrystals_dilithium2_ref_polyvecl_invntt_tomont(ptr noundef nonnull %z) #4, !dbg !435
  call void @pqcrystals_dilithium2_ref_polyvecl_add(ptr noundef nonnull %z, ptr noundef nonnull %z, ptr noundef nonnull %y) #4, !dbg !436
  call void @pqcrystals_dilithium2_ref_polyvecl_reduce(ptr noundef nonnull %z) #4, !dbg !437
  %call8 = call i32 @pqcrystals_dilithium2_ref_polyvecl_chknorm(ptr noundef nonnull %z, i32 noundef 130994) #4, !dbg !438
  %tobool.not = icmp eq i32 %call8, 0, !dbg !438
  br i1 %tobool.not, label %if.end, label %rej.backedge, !dbg !438

rej.backedge:                                     ; preds = %rej, %if.end, %if.end12, %if.end16
  br label %rej, !dbg !417

if.end:                                           ; preds = %rej
  call void @pqcrystals_dilithium2_ref_polyveck_pointwise_poly_montgomery(ptr noundef nonnull %h, ptr noundef nonnull %cp, ptr noundef nonnull %s2) #4, !dbg !440
  call void @pqcrystals_dilithium2_ref_polyveck_invntt_tomont(ptr noundef nonnull %h) #4, !dbg !441
  call void @pqcrystals_dilithium2_ref_polyveck_sub(ptr noundef nonnull %w0, ptr noundef nonnull %w0, ptr noundef nonnull %h) #4, !dbg !442
  call void @pqcrystals_dilithium2_ref_polyveck_reduce(ptr noundef nonnull %w0) #4, !dbg !443
  %call9 = call i32 @pqcrystals_dilithium2_ref_polyveck_chknorm(ptr noundef nonnull %w0, i32 noundef 95154) #4, !dbg !444
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !444
  br i1 %tobool10.not, label %if.end12, label %rej.backedge, !dbg !444

if.end12:                                         ; preds = %if.end
  call void @pqcrystals_dilithium2_ref_polyveck_pointwise_poly_montgomery(ptr noundef nonnull %h, ptr noundef nonnull %cp, ptr noundef nonnull %t0) #4, !dbg !446
  call void @pqcrystals_dilithium2_ref_polyveck_invntt_tomont(ptr noundef nonnull %h) #4, !dbg !447
  call void @pqcrystals_dilithium2_ref_polyveck_reduce(ptr noundef nonnull %h) #4, !dbg !448
  %call13 = call i32 @pqcrystals_dilithium2_ref_polyveck_chknorm(ptr noundef nonnull %h, i32 noundef 95232) #4, !dbg !449
  %tobool14.not = icmp eq i32 %call13, 0, !dbg !449
  br i1 %tobool14.not, label %if.end16, label %rej.backedge, !dbg !449

if.end16:                                         ; preds = %if.end12
  call void @pqcrystals_dilithium2_ref_polyveck_add(ptr noundef nonnull %w0, ptr noundef nonnull %w0, ptr noundef nonnull %h) #4, !dbg !451
  %call17 = call i32 @pqcrystals_dilithium2_ref_polyveck_make_hint(ptr noundef nonnull %h, ptr noundef nonnull %w0, ptr noundef nonnull %w1) #4, !dbg !452
    #dbg_value(i32 %call17, !453, !DIExpression(), !347)
  %cmp = icmp ugt i32 %call17, 80, !dbg !454
  br i1 %cmp, label %rej.backedge, label %if.end19, !dbg !454

if.end19:                                         ; preds = %if.end16
  call void @pqcrystals_dilithium2_ref_pack_sig(ptr noundef %sig, ptr noundef %sig, ptr noundef nonnull %z, ptr noundef nonnull %h) #4, !dbg !456
  store i32 2420, ptr %siglen, align 4, !dbg !457
  ret i32 0, !dbg !458
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium2_ref_signature(ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %sk) local_unnamed_addr #0 !dbg !459 {
entry:
  %pre = alloca [257 x i8], align 1
  %rnd = alloca [32 x i8], align 1
    #dbg_value(ptr %sig, !462, !DIExpression(), !463)
    #dbg_value(ptr %siglen, !464, !DIExpression(), !463)
    #dbg_value(ptr %m, !465, !DIExpression(), !463)
    #dbg_value(i32 %mlen, !466, !DIExpression(), !463)
    #dbg_value(ptr %ctx, !467, !DIExpression(), !463)
    #dbg_value(i32 %ctxlen, !468, !DIExpression(), !463)
    #dbg_value(ptr %sk, !469, !DIExpression(), !463)
    #dbg_declare(ptr %pre, !470, !DIExpression(), !474)
    #dbg_declare(ptr %rnd, !475, !DIExpression(), !479)
  %cmp = icmp ugt i32 %ctxlen, 255, !dbg !480
  br i1 %cmp, label %return, label %if.end, !dbg !480

if.end:                                           ; preds = %entry
  store i8 0, ptr %pre, align 1, !dbg !482
  %conv = trunc nuw i32 %ctxlen to i8, !dbg !483
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %pre, i32 1, !dbg !484
  store i8 %conv, ptr %arrayidx1, align 1, !dbg !485
    #dbg_value(i32 0, !486, !DIExpression(), !463)
  br label %for.cond, !dbg !487

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ], !dbg !489
    #dbg_value(i32 %i.0, !486, !DIExpression(), !463)
  %exitcond = icmp ne i32 %i.0, %ctxlen, !dbg !490
  br i1 %exitcond, label %for.body, label %for.end, !dbg !492

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %ctx, i32 %i.0, !dbg !493
  %0 = load i8, ptr %arrayidx4, align 1, !dbg !493
  %add = add nuw nsw i32 %i.0, 2, !dbg !494
  %arrayidx5 = getelementptr inbounds nuw [257 x i8], ptr %pre, i32 0, i32 %add, !dbg !495
  store i8 %0, ptr %arrayidx5, align 1, !dbg !496
  %inc = add nuw i32 %i.0, 1, !dbg !497
    #dbg_value(i32 %inc, !486, !DIExpression(), !463)
  br label %for.cond, !dbg !498, !llvm.loop !499

for.end:                                          ; preds = %for.cond
  call void @randombytes(ptr noundef nonnull %rnd, i32 noundef 32) #4, !dbg !501
  %add7 = add nuw nsw i32 %ctxlen, 2, !dbg !502
  %call = call i32 @pqcrystals_dilithium2_ref_signature_internal(ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef nonnull %pre, i32 noundef %add7, ptr noundef nonnull %rnd, ptr noundef %sk) #4, !dbg !503
  br label %return, !dbg !504

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %entry ], !dbg !463
  ret i32 %retval.0, !dbg !505
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium2_ref(ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %sk) local_unnamed_addr #0 !dbg !506 {
entry:
    #dbg_value(ptr %sm, !507, !DIExpression(), !508)
    #dbg_value(ptr %smlen, !509, !DIExpression(), !508)
    #dbg_value(ptr %m, !510, !DIExpression(), !508)
    #dbg_value(i32 %mlen, !511, !DIExpression(), !508)
    #dbg_value(ptr %ctx, !512, !DIExpression(), !508)
    #dbg_value(i32 %ctxlen, !513, !DIExpression(), !508)
    #dbg_value(ptr %sk, !514, !DIExpression(), !508)
    #dbg_value(i32 0, !515, !DIExpression(), !508)
  br label %for.cond, !dbg !516

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !518
    #dbg_value(i32 %i.0, !515, !DIExpression(), !508)
  %exitcond = icmp ne i32 %i.0, %mlen, !dbg !519
  br i1 %exitcond, label %for.body, label %for.end, !dbg !521

for.body:                                         ; preds = %for.cond
  %0 = xor i32 %i.0, -1, !dbg !522
  %1 = getelementptr i8, ptr %m, i32 %mlen, !dbg !523
  %arrayidx = getelementptr i8, ptr %1, i32 %0, !dbg !523
  %2 = load i8, ptr %arrayidx, align 1, !dbg !523
  %sub2 = add i32 %mlen, 2419, !dbg !524
  %sub3 = sub i32 %sub2, %i.0, !dbg !525
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %sm, i32 %sub3, !dbg !526
  store i8 %2, ptr %arrayidx4, align 1, !dbg !527
  %inc = add i32 %i.0, 1, !dbg !528
    #dbg_value(i32 %inc, !515, !DIExpression(), !508)
  br label %for.cond, !dbg !529, !llvm.loop !530

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 2420, !dbg !532
  %call = call i32 @pqcrystals_dilithium2_ref_signature(ptr noundef %sm, ptr noundef %smlen, ptr noundef nonnull %add.ptr, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %sk) #4, !dbg !533
    #dbg_value(i32 %call, !534, !DIExpression(), !508)
  %3 = load i32, ptr %smlen, align 4, !dbg !535
  %add5 = add i32 %3, %mlen, !dbg !535
  store i32 %add5, ptr %smlen, align 4, !dbg !535
  ret i32 %call, !dbg !536
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium2_ref_verify_internal(ptr noundef %sig, i32 noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %pre, i32 noundef %prelen, ptr noundef %pk) local_unnamed_addr #0 !dbg !537 {
entry:
  %buf = alloca [768 x i8], align 1
  %rho = alloca [32 x i8], align 1
  %mu = alloca [64 x i8], align 1
  %c = alloca [32 x i8], align 1
  %c2 = alloca [32 x i8], align 1
  %cp = alloca [256 x i32], align 4
  %mat = alloca [4 x [4 x [256 x i32]]], align 4
  %z = alloca [4 x [256 x i32]], align 4
  %t1 = alloca [4 x [256 x i32]], align 4
  %w1 = alloca [4 x [256 x i32]], align 4
  %h = alloca [4 x [256 x i32]], align 4
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %sig, !540, !DIExpression(), !541)
    #dbg_value(i32 %siglen, !542, !DIExpression(), !541)
    #dbg_value(ptr %m, !543, !DIExpression(), !541)
    #dbg_value(i32 %mlen, !544, !DIExpression(), !541)
    #dbg_value(ptr %pre, !545, !DIExpression(), !541)
    #dbg_value(i32 %prelen, !546, !DIExpression(), !541)
    #dbg_value(ptr %pk, !547, !DIExpression(), !541)
    #dbg_declare(ptr %buf, !548, !DIExpression(), !552)
    #dbg_declare(ptr %rho, !553, !DIExpression(), !554)
    #dbg_declare(ptr %mu, !555, !DIExpression(), !556)
    #dbg_declare(ptr %c, !557, !DIExpression(), !558)
    #dbg_declare(ptr %c2, !559, !DIExpression(), !560)
    #dbg_declare(ptr %cp, !561, !DIExpression(), !562)
    #dbg_declare(ptr %mat, !563, !DIExpression(), !564)
    #dbg_declare(ptr %z, !565, !DIExpression(), !566)
    #dbg_declare(ptr %t1, !567, !DIExpression(), !568)
    #dbg_declare(ptr %w1, !569, !DIExpression(), !570)
    #dbg_declare(ptr %h, !571, !DIExpression(), !572)
    #dbg_declare(ptr %state, !573, !DIExpression(), !574)
  %cmp.not = icmp eq i32 %siglen, 2420, !dbg !575
  br i1 %cmp.not, label %if.end, label %return, !dbg !575

if.end:                                           ; preds = %entry
  call void @pqcrystals_dilithium2_ref_unpack_pk(ptr noundef nonnull %rho, ptr noundef nonnull %t1, ptr noundef %pk) #4, !dbg !577
  %call = call i32 @pqcrystals_dilithium2_ref_unpack_sig(ptr noundef nonnull %c, ptr noundef nonnull %z, ptr noundef nonnull %h, ptr noundef %sig) #4, !dbg !578
  %tobool.not = icmp eq i32 %call, 0, !dbg !578
  br i1 %tobool.not, label %if.end3, label %return, !dbg !578

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @pqcrystals_dilithium2_ref_polyvecl_chknorm(ptr noundef nonnull %z, i32 noundef 130994) #4, !dbg !580
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !580
  br i1 %tobool5.not, label %if.end7, label %return, !dbg !580

if.end7:                                          ; preds = %if.end3
  call void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef nonnull %mu, i32 noundef 64, ptr noundef %pk, i32 noundef 1312) #4, !dbg !582
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !583
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %mu, i32 noundef 64) #4, !dbg !584
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %pre, i32 noundef %prelen) #4, !dbg !585
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %m, i32 noundef %mlen) #4, !dbg !586
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !587
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef nonnull %mu, i32 noundef 64, ptr noundef nonnull %state) #4, !dbg !588
  call void @pqcrystals_dilithium2_ref_poly_challenge(ptr noundef nonnull %cp, ptr noundef nonnull %c) #4, !dbg !589
  call void @pqcrystals_dilithium2_ref_polyvec_matrix_expand(ptr noundef nonnull %mat, ptr noundef nonnull %rho) #4, !dbg !590
  call void @pqcrystals_dilithium2_ref_polyvecl_ntt(ptr noundef nonnull %z) #4, !dbg !591
  call void @pqcrystals_dilithium2_ref_polyvec_matrix_pointwise_montgomery(ptr noundef nonnull %w1, ptr noundef nonnull %mat, ptr noundef nonnull %z) #4, !dbg !592
  call void @pqcrystals_dilithium2_ref_poly_ntt(ptr noundef nonnull %cp) #4, !dbg !593
  call void @pqcrystals_dilithium2_ref_polyveck_shiftl(ptr noundef nonnull %t1) #4, !dbg !594
  call void @pqcrystals_dilithium2_ref_polyveck_ntt(ptr noundef nonnull %t1) #4, !dbg !595
  call void @pqcrystals_dilithium2_ref_polyveck_pointwise_poly_montgomery(ptr noundef nonnull %t1, ptr noundef nonnull %cp, ptr noundef nonnull %t1) #4, !dbg !596
  call void @pqcrystals_dilithium2_ref_polyveck_sub(ptr noundef nonnull %w1, ptr noundef nonnull %w1, ptr noundef nonnull %t1) #4, !dbg !597
  call void @pqcrystals_dilithium2_ref_polyveck_reduce(ptr noundef nonnull %w1) #4, !dbg !598
  call void @pqcrystals_dilithium2_ref_polyveck_invntt_tomont(ptr noundef nonnull %w1) #4, !dbg !599
  call void @pqcrystals_dilithium2_ref_polyveck_caddq(ptr noundef nonnull %w1) #4, !dbg !600
  call void @pqcrystals_dilithium2_ref_polyveck_use_hint(ptr noundef nonnull %w1, ptr noundef nonnull %w1, ptr noundef nonnull %h) #4, !dbg !601
  call void @pqcrystals_dilithium2_ref_polyveck_pack_w1(ptr noundef nonnull %buf, ptr noundef nonnull %w1) #4, !dbg !602
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !603
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %mu, i32 noundef 64) #4, !dbg !604
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %buf, i32 noundef 768) #4, !dbg !605
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !606
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef nonnull %c2, i32 noundef 32, ptr noundef nonnull %state) #4, !dbg !607
    #dbg_value(i32 0, !608, !DIExpression(), !541)
  br label %for.cond, !dbg !609

for.cond:                                         ; preds = %for.inc, %if.end7
  %i.0 = phi i32 [ 0, %if.end7 ], [ %inc, %for.inc ], !dbg !611
    #dbg_value(i32 %i.0, !608, !DIExpression(), !541)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !612
  br i1 %exitcond, label %for.body, label %return.loopexit, !dbg !614

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [32 x i8], ptr %c, i32 0, i32 %i.0, !dbg !615
  %0 = load i8, ptr %arrayidx, align 1, !dbg !615
  %arrayidx20 = getelementptr inbounds nuw [32 x i8], ptr %c2, i32 0, i32 %i.0, !dbg !617
  %1 = load i8, ptr %arrayidx20, align 1, !dbg !617
  %cmp22.not = icmp eq i8 %0, %1, !dbg !618
  br i1 %cmp22.not, label %for.inc, label %return.loopexit, !dbg !618

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !619
    #dbg_value(i32 %inc, !608, !DIExpression(), !541)
  br label %for.cond, !dbg !620, !llvm.loop !621

return.loopexit:                                  ; preds = %for.body, %for.cond
  %retval.0.ph = phi i32 [ 0, %for.cond ], [ -1, %for.body ]
  br label %return, !dbg !623

return:                                           ; preds = %return.loopexit, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end3 ], [ %retval.0.ph, %return.loopexit ], !dbg !541
  ret i32 %retval.0, !dbg !623
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium2_ref_verify(ptr noundef %sig, i32 noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !624 {
entry:
  %pre = alloca [257 x i8], align 1
    #dbg_value(ptr %sig, !625, !DIExpression(), !626)
    #dbg_value(i32 %siglen, !627, !DIExpression(), !626)
    #dbg_value(ptr %m, !628, !DIExpression(), !626)
    #dbg_value(i32 %mlen, !629, !DIExpression(), !626)
    #dbg_value(ptr %ctx, !630, !DIExpression(), !626)
    #dbg_value(i32 %ctxlen, !631, !DIExpression(), !626)
    #dbg_value(ptr %pk, !632, !DIExpression(), !626)
    #dbg_declare(ptr %pre, !633, !DIExpression(), !634)
  %cmp = icmp ugt i32 %ctxlen, 255, !dbg !635
  br i1 %cmp, label %return, label %if.end, !dbg !635

if.end:                                           ; preds = %entry
  store i8 0, ptr %pre, align 1, !dbg !637
  %conv = trunc nuw i32 %ctxlen to i8, !dbg !638
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %pre, i32 1, !dbg !639
  store i8 %conv, ptr %arrayidx1, align 1, !dbg !640
    #dbg_value(i32 0, !641, !DIExpression(), !626)
  br label %for.cond, !dbg !642

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ], !dbg !644
    #dbg_value(i32 %i.0, !641, !DIExpression(), !626)
  %exitcond = icmp ne i32 %i.0, %ctxlen, !dbg !645
  br i1 %exitcond, label %for.body, label %for.end, !dbg !647

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %ctx, i32 %i.0, !dbg !648
  %0 = load i8, ptr %arrayidx4, align 1, !dbg !648
  %add = add nuw nsw i32 %i.0, 2, !dbg !649
  %arrayidx5 = getelementptr inbounds nuw [257 x i8], ptr %pre, i32 0, i32 %add, !dbg !650
  store i8 %0, ptr %arrayidx5, align 1, !dbg !651
  %inc = add nuw i32 %i.0, 1, !dbg !652
    #dbg_value(i32 %inc, !641, !DIExpression(), !626)
  br label %for.cond, !dbg !653, !llvm.loop !654

for.end:                                          ; preds = %for.cond
  %add6 = add nuw nsw i32 %ctxlen, 2, !dbg !656
  %call = call i32 @pqcrystals_dilithium2_ref_verify_internal(ptr noundef %sig, i32 noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef nonnull %pre, i32 noundef %add6, ptr noundef %pk) #4, !dbg !657
  br label %return, !dbg !658

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %call, %for.end ], [ -1, %entry ], !dbg !626
  ret i32 %retval.0, !dbg !659
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium2_ref_open(ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !660 {
entry:
    #dbg_value(ptr %m, !661, !DIExpression(), !662)
    #dbg_value(ptr %mlen, !663, !DIExpression(), !662)
    #dbg_value(ptr %sm, !664, !DIExpression(), !662)
    #dbg_value(i32 %smlen, !665, !DIExpression(), !662)
    #dbg_value(ptr %ctx, !666, !DIExpression(), !662)
    #dbg_value(i32 %ctxlen, !667, !DIExpression(), !662)
    #dbg_value(ptr %pk, !668, !DIExpression(), !662)
  %cmp = icmp ult i32 %smlen, 2420, !dbg !669
  br i1 %cmp, label %badsig, label %if.end, !dbg !669

if.end:                                           ; preds = %entry
  %sub = add i32 %smlen, -2420, !dbg !671
  store i32 %sub, ptr %mlen, align 4, !dbg !672
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 2420, !dbg !673
  %call = call i32 @pqcrystals_dilithium2_ref_verify(ptr noundef %sm, i32 noundef 2420, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %pk) #4, !dbg !675
  %tobool.not = icmp eq i32 %call, 0, !dbg !675
  br i1 %tobool.not, label %for.cond.preheader, label %badsig, !dbg !675

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !676

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !679
    #dbg_value(i32 %i.0, !680, !DIExpression(), !662)
  %0 = load i32, ptr %mlen, align 4, !dbg !681
  %cmp2 = icmp ult i32 %i.0, %0, !dbg !683
  br i1 %cmp2, label %for.body, label %return.loopexit1, !dbg !676

for.body:                                         ; preds = %for.cond
  %1 = getelementptr i8, ptr %sm, i32 %i.0, !dbg !684
  %arrayidx = getelementptr i8, ptr %1, i32 2420, !dbg !684
  %2 = load i8, ptr %arrayidx, align 1, !dbg !684
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !685
  store i8 %2, ptr %arrayidx3, align 1, !dbg !686
  %inc = add nuw i32 %i.0, 1, !dbg !687
    #dbg_value(i32 %inc, !680, !DIExpression(), !662)
  br label %for.cond, !dbg !688, !llvm.loop !689

badsig:                                           ; preds = %if.end, %entry
    #dbg_label(!691, !692)
  store i32 0, ptr %mlen, align 4, !dbg !693
    #dbg_value(i32 0, !680, !DIExpression(), !662)
  br label %for.cond4, !dbg !694

for.cond4:                                        ; preds = %for.body6, %badsig
  %i.1 = phi i32 [ 0, %badsig ], [ %inc9, %for.body6 ], !dbg !696
    #dbg_value(i32 %i.1, !680, !DIExpression(), !662)
  %exitcond = icmp ne i32 %i.1, %smlen, !dbg !697
  br i1 %exitcond, label %for.body6, label %return.loopexit, !dbg !699

for.body6:                                        ; preds = %for.cond4
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m, i32 %i.1, !dbg !700
  store i8 0, ptr %arrayidx7, align 1, !dbg !701
  %inc9 = add i32 %i.1, 1, !dbg !702
    #dbg_value(i32 %inc9, !680, !DIExpression(), !662)
  br label %for.cond4, !dbg !703, !llvm.loop !704

return.loopexit:                                  ; preds = %for.cond4
  br label %return, !dbg !706

return.loopexit1:                                 ; preds = %for.cond
  br label %return, !dbg !706

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i32 [ -1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !662
  ret i32 %retval.0, !dbg !706
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyvec_matrix_expand(ptr noundef %mat, ptr noundef %rho) local_unnamed_addr #0 !dbg !707 {
entry:
    #dbg_value(ptr %mat, !712, !DIExpression(), !713)
    #dbg_value(ptr %rho, !714, !DIExpression(), !713)
    #dbg_value(i32 0, !715, !DIExpression(), !713)
  br label %for.cond, !dbg !716

for.cond:                                         ; preds = %for.inc5, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ], !dbg !718
    #dbg_value(i32 %i.0, !715, !DIExpression(), !713)
  %exitcond1 = icmp ne i32 %i.0, 4, !dbg !719
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end7, !dbg !721

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !722

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !724
    #dbg_value(i32 %j.0, !725, !DIExpression(), !713)
  %exitcond = icmp ne i32 %j.0, 4, !dbg !726
  br i1 %exitcond, label %for.body3, label %for.inc5, !dbg !722

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %mat, i32 %i.0, i32 %j.0, !dbg !728
  %shl = shl nuw nsw i32 %i.0, 8, !dbg !729
  %add = or disjoint i32 %shl, %j.0, !dbg !730
  %conv = trunc nuw i32 %add to i16, !dbg !731
  call void @pqcrystals_dilithium2_ref_poly_uniform(ptr noundef %arrayidx4, ptr noundef %rho, i16 noundef zeroext %conv) #4, !dbg !732
  %inc = add nuw nsw i32 %j.0, 1, !dbg !733
    #dbg_value(i32 %inc, !725, !DIExpression(), !713)
  br label %for.cond1, !dbg !734, !llvm.loop !735

for.inc5:                                         ; preds = %for.cond1
  %inc6 = add nuw nsw i32 %i.0, 1, !dbg !737
    #dbg_value(i32 %inc6, !715, !DIExpression(), !713)
  br label %for.cond, !dbg !738, !llvm.loop !739

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !741
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyvec_matrix_pointwise_montgomery(ptr noundef %t, ptr noundef %mat, ptr noundef %v) local_unnamed_addr #0 !dbg !742 {
entry:
    #dbg_value(ptr %t, !748, !DIExpression(), !749)
    #dbg_value(ptr %mat, !750, !DIExpression(), !749)
    #dbg_value(ptr %v, !751, !DIExpression(), !749)
    #dbg_value(i32 0, !752, !DIExpression(), !749)
  br label %for.cond, !dbg !753

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !755
    #dbg_value(i32 %i.0, !752, !DIExpression(), !749)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !756
  br i1 %exitcond, label %for.body, label %for.end, !dbg !758

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %t, i32 0, i32 %i.0, !dbg !759
  %arrayidx1 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %mat, i32 %i.0, !dbg !760
  call void @pqcrystals_dilithium2_ref_polyvecl_pointwise_acc_montgomery(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %v) #4, !dbg !761
  %inc = add nuw nsw i32 %i.0, 1, !dbg !762
    #dbg_value(i32 %inc, !752, !DIExpression(), !749)
  br label %for.cond, !dbg !763, !llvm.loop !764

for.end:                                          ; preds = %for.cond
  ret void, !dbg !766
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyvecl_pointwise_acc_montgomery(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !767 {
entry:
  %t = alloca [256 x i32], align 4
    #dbg_value(ptr %w, !771, !DIExpression(), !772)
    #dbg_value(ptr %u, !773, !DIExpression(), !772)
    #dbg_value(ptr %v, !774, !DIExpression(), !772)
    #dbg_declare(ptr %t, !775, !DIExpression(), !776)
  call void @pqcrystals_dilithium2_ref_poly_pointwise_montgomery(ptr noundef %w, ptr noundef %u, ptr noundef %v) #4, !dbg !777
    #dbg_value(i32 1, !778, !DIExpression(), !772)
  br label %for.cond, !dbg !779

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ], !dbg !781
    #dbg_value(i32 %i.0, !778, !DIExpression(), !772)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !782
  br i1 %exitcond, label %for.body, label %for.end, !dbg !784

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !785
  %arrayidx3 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !787
  call void @pqcrystals_dilithium2_ref_poly_pointwise_montgomery(ptr noundef nonnull %t, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx3) #4, !dbg !788
  call void @pqcrystals_dilithium2_ref_poly_add(ptr noundef %w, ptr noundef %w, ptr noundef nonnull %t) #4, !dbg !789
  %inc = add nuw nsw i32 %i.0, 1, !dbg !790
    #dbg_value(i32 %inc, !778, !DIExpression(), !772)
  br label %for.cond, !dbg !791, !llvm.loop !792

for.end:                                          ; preds = %for.cond
  ret void, !dbg !794
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyvecl_uniform_eta(ptr noundef %v, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !795 {
entry:
    #dbg_value(ptr %v, !798, !DIExpression(), !799)
    #dbg_value(ptr %seed, !800, !DIExpression(), !799)
    #dbg_value(i16 %nonce, !801, !DIExpression(), !799)
    #dbg_value(i32 0, !802, !DIExpression(), !799)
  br label %for.cond, !dbg !803

for.cond:                                         ; preds = %for.body, %entry
  %nonce.addr.0 = phi i16 [ %nonce, %entry ], [ %inc, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc1, %for.body ], !dbg !805
    #dbg_value(i32 %i.0, !802, !DIExpression(), !799)
    #dbg_value(i16 %nonce.addr.0, !801, !DIExpression(), !799)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !806
  br i1 %exitcond, label %for.body, label %for.end, !dbg !808

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !809
    #dbg_value(i16 %nonce.addr.0, !801, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !799)
  call void @pqcrystals_dilithium2_ref_poly_uniform_eta(ptr noundef %arrayidx, ptr noundef %seed, i16 noundef zeroext %nonce.addr.0) #4, !dbg !810
  %inc = add i16 %nonce.addr.0, 1, !dbg !811
    #dbg_value(i16 %inc, !801, !DIExpression(), !799)
  %inc1 = add nuw nsw i32 %i.0, 1, !dbg !812
    #dbg_value(i32 %inc1, !802, !DIExpression(), !799)
  br label %for.cond, !dbg !813, !llvm.loop !814

for.end:                                          ; preds = %for.cond
  ret void, !dbg !816
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyvecl_uniform_gamma1(ptr noundef %v, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !817 {
entry:
    #dbg_value(ptr %v, !818, !DIExpression(), !819)
    #dbg_value(ptr %seed, !820, !DIExpression(), !819)
    #dbg_value(i16 %nonce, !821, !DIExpression(), !819)
    #dbg_value(i32 0, !822, !DIExpression(), !819)
  br label %for.cond, !dbg !823

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !825
    #dbg_value(i32 %i.0, !822, !DIExpression(), !819)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !826
  br i1 %exitcond, label %for.body, label %for.end, !dbg !828

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !829
  %conv = zext i16 %nonce to i32, !dbg !830
  %mul = shl nuw nsw i32 %conv, 2, !dbg !831
  %add = or disjoint i32 %mul, %i.0, !dbg !832
  %conv1 = trunc i32 %add to i16, !dbg !833
  call void @pqcrystals_dilithium2_ref_poly_uniform_gamma1(ptr noundef %arrayidx, ptr noundef %seed, i16 noundef zeroext %conv1) #4, !dbg !834
  %inc = add nuw nsw i32 %i.0, 1, !dbg !835
    #dbg_value(i32 %inc, !822, !DIExpression(), !819)
  br label %for.cond, !dbg !836, !llvm.loop !837

for.end:                                          ; preds = %for.cond
  ret void, !dbg !839
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyvecl_reduce(ptr noundef %v) local_unnamed_addr #0 !dbg !840 {
entry:
    #dbg_value(ptr %v, !843, !DIExpression(), !844)
    #dbg_value(i32 0, !845, !DIExpression(), !844)
  br label %for.cond, !dbg !846

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !848
    #dbg_value(i32 %i.0, !845, !DIExpression(), !844)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !849
  br i1 %exitcond, label %for.body, label %for.end, !dbg !851

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !852
  call void @pqcrystals_dilithium2_ref_poly_reduce(ptr noundef %arrayidx) #4, !dbg !853
  %inc = add nuw nsw i32 %i.0, 1, !dbg !854
    #dbg_value(i32 %inc, !845, !DIExpression(), !844)
  br label %for.cond, !dbg !855, !llvm.loop !856

for.end:                                          ; preds = %for.cond
  ret void, !dbg !858
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyvecl_add(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !859 {
entry:
    #dbg_value(ptr %w, !862, !DIExpression(), !863)
    #dbg_value(ptr %u, !864, !DIExpression(), !863)
    #dbg_value(ptr %v, !865, !DIExpression(), !863)
    #dbg_value(i32 0, !866, !DIExpression(), !863)
  br label %for.cond, !dbg !867

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !869
    #dbg_value(i32 %i.0, !866, !DIExpression(), !863)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !870
  br i1 %exitcond, label %for.body, label %for.end, !dbg !872

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !873
  %arrayidx1 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !874
  %arrayidx2 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !875
  call void @pqcrystals_dilithium2_ref_poly_add(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !876
  %inc = add nuw nsw i32 %i.0, 1, !dbg !877
    #dbg_value(i32 %inc, !866, !DIExpression(), !863)
  br label %for.cond, !dbg !878, !llvm.loop !879

for.end:                                          ; preds = %for.cond
  ret void, !dbg !881
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyvecl_ntt(ptr noundef %v) local_unnamed_addr #0 !dbg !882 {
entry:
    #dbg_value(ptr %v, !883, !DIExpression(), !884)
    #dbg_value(i32 0, !885, !DIExpression(), !884)
  br label %for.cond, !dbg !886

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !888
    #dbg_value(i32 %i.0, !885, !DIExpression(), !884)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !889
  br i1 %exitcond, label %for.body, label %for.end, !dbg !891

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !892
  call void @pqcrystals_dilithium2_ref_poly_ntt(ptr noundef %arrayidx) #4, !dbg !893
  %inc = add nuw nsw i32 %i.0, 1, !dbg !894
    #dbg_value(i32 %inc, !885, !DIExpression(), !884)
  br label %for.cond, !dbg !895, !llvm.loop !896

for.end:                                          ; preds = %for.cond
  ret void, !dbg !898
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyvecl_invntt_tomont(ptr noundef %v) local_unnamed_addr #0 !dbg !899 {
entry:
    #dbg_value(ptr %v, !900, !DIExpression(), !901)
    #dbg_value(i32 0, !902, !DIExpression(), !901)
  br label %for.cond, !dbg !903

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !905
    #dbg_value(i32 %i.0, !902, !DIExpression(), !901)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !906
  br i1 %exitcond, label %for.body, label %for.end, !dbg !908

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !909
  call void @pqcrystals_dilithium2_ref_poly_invntt_tomont(ptr noundef %arrayidx) #4, !dbg !910
  %inc = add nuw nsw i32 %i.0, 1, !dbg !911
    #dbg_value(i32 %inc, !902, !DIExpression(), !901)
  br label %for.cond, !dbg !912, !llvm.loop !913

for.end:                                          ; preds = %for.cond
  ret void, !dbg !915
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyvecl_pointwise_poly_montgomery(ptr noundef %r, ptr noundef %a, ptr noundef %v) local_unnamed_addr #0 !dbg !916 {
entry:
    #dbg_value(ptr %r, !921, !DIExpression(), !922)
    #dbg_value(ptr %a, !923, !DIExpression(), !922)
    #dbg_value(ptr %v, !924, !DIExpression(), !922)
    #dbg_value(i32 0, !925, !DIExpression(), !922)
  br label %for.cond, !dbg !926

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !928
    #dbg_value(i32 %i.0, !925, !DIExpression(), !922)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !929
  br i1 %exitcond, label %for.body, label %for.end, !dbg !931

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %r, i32 0, i32 %i.0, !dbg !932
  %arrayidx1 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !933
  call void @pqcrystals_dilithium2_ref_poly_pointwise_montgomery(ptr noundef %arrayidx, ptr noundef %a, ptr noundef %arrayidx1) #4, !dbg !934
  %inc = add nuw nsw i32 %i.0, 1, !dbg !935
    #dbg_value(i32 %inc, !925, !DIExpression(), !922)
  br label %for.cond, !dbg !936, !llvm.loop !937

for.end:                                          ; preds = %for.cond
  ret void, !dbg !939
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium2_ref_polyvecl_chknorm(ptr noundef %v, i32 noundef %bound) local_unnamed_addr #0 !dbg !940 {
entry:
    #dbg_value(ptr %v, !943, !DIExpression(), !944)
    #dbg_value(i32 %bound, !945, !DIExpression(), !944)
    #dbg_value(i32 0, !946, !DIExpression(), !944)
  br label %for.cond, !dbg !947

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !949
    #dbg_value(i32 %i.0, !946, !DIExpression(), !944)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !950
  br i1 %exitcond, label %for.body, label %return, !dbg !952

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !953
  %call = call i32 @pqcrystals_dilithium2_ref_poly_chknorm(ptr noundef %arrayidx, i32 noundef %bound) #4, !dbg !955
  %tobool.not = icmp eq i32 %call, 0, !dbg !955
  br i1 %tobool.not, label %for.inc, label %return, !dbg !955

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !956
    #dbg_value(i32 %inc, !946, !DIExpression(), !944)
  br label %for.cond, !dbg !957, !llvm.loop !958

return:                                           ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 1, %for.body ], [ 0, %for.cond ], !dbg !944
  ret i32 %retval.0, !dbg !960
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_uniform_eta(ptr noundef %v, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !961 {
entry:
    #dbg_value(ptr %v, !964, !DIExpression(), !965)
    #dbg_value(ptr %seed, !966, !DIExpression(), !965)
    #dbg_value(i16 %nonce, !967, !DIExpression(), !965)
    #dbg_value(i32 0, !968, !DIExpression(), !965)
  br label %for.cond, !dbg !969

for.cond:                                         ; preds = %for.body, %entry
  %nonce.addr.0 = phi i16 [ %nonce, %entry ], [ %inc, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc1, %for.body ], !dbg !971
    #dbg_value(i32 %i.0, !968, !DIExpression(), !965)
    #dbg_value(i16 %nonce.addr.0, !967, !DIExpression(), !965)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !972
  br i1 %exitcond, label %for.body, label %for.end, !dbg !974

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !975
    #dbg_value(i16 %nonce.addr.0, !967, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !965)
  call void @pqcrystals_dilithium2_ref_poly_uniform_eta(ptr noundef %arrayidx, ptr noundef %seed, i16 noundef zeroext %nonce.addr.0) #4, !dbg !976
  %inc = add i16 %nonce.addr.0, 1, !dbg !977
    #dbg_value(i16 %inc, !967, !DIExpression(), !965)
  %inc1 = add nuw nsw i32 %i.0, 1, !dbg !978
    #dbg_value(i32 %inc1, !968, !DIExpression(), !965)
  br label %for.cond, !dbg !979, !llvm.loop !980

for.end:                                          ; preds = %for.cond
  ret void, !dbg !982
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_reduce(ptr noundef %v) local_unnamed_addr #0 !dbg !983 {
entry:
    #dbg_value(ptr %v, !986, !DIExpression(), !987)
    #dbg_value(i32 0, !988, !DIExpression(), !987)
  br label %for.cond, !dbg !989

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !991
    #dbg_value(i32 %i.0, !988, !DIExpression(), !987)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !992
  br i1 %exitcond, label %for.body, label %for.end, !dbg !994

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !995
  call void @pqcrystals_dilithium2_ref_poly_reduce(ptr noundef %arrayidx) #4, !dbg !996
  %inc = add nuw nsw i32 %i.0, 1, !dbg !997
    #dbg_value(i32 %inc, !988, !DIExpression(), !987)
  br label %for.cond, !dbg !998, !llvm.loop !999

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1001
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_caddq(ptr noundef %v) local_unnamed_addr #0 !dbg !1002 {
entry:
    #dbg_value(ptr %v, !1003, !DIExpression(), !1004)
    #dbg_value(i32 0, !1005, !DIExpression(), !1004)
  br label %for.cond, !dbg !1006

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1008
    #dbg_value(i32 %i.0, !1005, !DIExpression(), !1004)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1009
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1011

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1012
  call void @pqcrystals_dilithium2_ref_poly_caddq(ptr noundef %arrayidx) #4, !dbg !1013
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1014
    #dbg_value(i32 %inc, !1005, !DIExpression(), !1004)
  br label %for.cond, !dbg !1015, !llvm.loop !1016

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1018
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_add(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !1019 {
entry:
    #dbg_value(ptr %w, !1024, !DIExpression(), !1025)
    #dbg_value(ptr %u, !1026, !DIExpression(), !1025)
    #dbg_value(ptr %v, !1027, !DIExpression(), !1025)
    #dbg_value(i32 0, !1028, !DIExpression(), !1025)
  br label %for.cond, !dbg !1029

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1031
    #dbg_value(i32 %i.0, !1028, !DIExpression(), !1025)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1032
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1034

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !1035
  %arrayidx1 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !1036
  %arrayidx2 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1037
  call void @pqcrystals_dilithium2_ref_poly_add(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1038
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1039
    #dbg_value(i32 %inc, !1028, !DIExpression(), !1025)
  br label %for.cond, !dbg !1040, !llvm.loop !1041

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1043
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_sub(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !1044 {
entry:
    #dbg_value(ptr %w, !1045, !DIExpression(), !1046)
    #dbg_value(ptr %u, !1047, !DIExpression(), !1046)
    #dbg_value(ptr %v, !1048, !DIExpression(), !1046)
    #dbg_value(i32 0, !1049, !DIExpression(), !1046)
  br label %for.cond, !dbg !1050

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1052
    #dbg_value(i32 %i.0, !1049, !DIExpression(), !1046)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1053
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1055

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !1056
  %arrayidx1 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !1057
  %arrayidx2 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1058
  call void @pqcrystals_dilithium2_ref_poly_sub(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1059
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1060
    #dbg_value(i32 %inc, !1049, !DIExpression(), !1046)
  br label %for.cond, !dbg !1061, !llvm.loop !1062

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1064
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_shiftl(ptr noundef %v) local_unnamed_addr #0 !dbg !1065 {
entry:
    #dbg_value(ptr %v, !1066, !DIExpression(), !1067)
    #dbg_value(i32 0, !1068, !DIExpression(), !1067)
  br label %for.cond, !dbg !1069

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1071
    #dbg_value(i32 %i.0, !1068, !DIExpression(), !1067)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1072
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1074

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1075
  call void @pqcrystals_dilithium2_ref_poly_shiftl(ptr noundef %arrayidx) #4, !dbg !1076
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1077
    #dbg_value(i32 %inc, !1068, !DIExpression(), !1067)
  br label %for.cond, !dbg !1078, !llvm.loop !1079

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1081
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_ntt(ptr noundef %v) local_unnamed_addr #0 !dbg !1082 {
entry:
    #dbg_value(ptr %v, !1083, !DIExpression(), !1084)
    #dbg_value(i32 0, !1085, !DIExpression(), !1084)
  br label %for.cond, !dbg !1086

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1088
    #dbg_value(i32 %i.0, !1085, !DIExpression(), !1084)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1089
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1091

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1092
  call void @pqcrystals_dilithium2_ref_poly_ntt(ptr noundef %arrayidx) #4, !dbg !1093
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1094
    #dbg_value(i32 %inc, !1085, !DIExpression(), !1084)
  br label %for.cond, !dbg !1095, !llvm.loop !1096

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1098
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_invntt_tomont(ptr noundef %v) local_unnamed_addr #0 !dbg !1099 {
entry:
    #dbg_value(ptr %v, !1100, !DIExpression(), !1101)
    #dbg_value(i32 0, !1102, !DIExpression(), !1101)
  br label %for.cond, !dbg !1103

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1105
    #dbg_value(i32 %i.0, !1102, !DIExpression(), !1101)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1106
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1108

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1109
  call void @pqcrystals_dilithium2_ref_poly_invntt_tomont(ptr noundef %arrayidx) #4, !dbg !1110
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1111
    #dbg_value(i32 %inc, !1102, !DIExpression(), !1101)
  br label %for.cond, !dbg !1112, !llvm.loop !1113

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1115
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_pointwise_poly_montgomery(ptr noundef %r, ptr noundef %a, ptr noundef %v) local_unnamed_addr #0 !dbg !1116 {
entry:
    #dbg_value(ptr %r, !1119, !DIExpression(), !1120)
    #dbg_value(ptr %a, !1121, !DIExpression(), !1120)
    #dbg_value(ptr %v, !1122, !DIExpression(), !1120)
    #dbg_value(i32 0, !1123, !DIExpression(), !1120)
  br label %for.cond, !dbg !1124

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1126
    #dbg_value(i32 %i.0, !1123, !DIExpression(), !1120)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1127
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1129

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %r, i32 0, i32 %i.0, !dbg !1130
  %arrayidx1 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1131
  call void @pqcrystals_dilithium2_ref_poly_pointwise_montgomery(ptr noundef %arrayidx, ptr noundef %a, ptr noundef %arrayidx1) #4, !dbg !1132
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1133
    #dbg_value(i32 %inc, !1123, !DIExpression(), !1120)
  br label %for.cond, !dbg !1134, !llvm.loop !1135

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1137
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium2_ref_polyveck_chknorm(ptr noundef %v, i32 noundef %bound) local_unnamed_addr #0 !dbg !1138 {
entry:
    #dbg_value(ptr %v, !1141, !DIExpression(), !1142)
    #dbg_value(i32 %bound, !1143, !DIExpression(), !1142)
    #dbg_value(i32 0, !1144, !DIExpression(), !1142)
  br label %for.cond, !dbg !1145

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1147
    #dbg_value(i32 %i.0, !1144, !DIExpression(), !1142)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1148
  br i1 %exitcond, label %for.body, label %return, !dbg !1150

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1151
  %call = call i32 @pqcrystals_dilithium2_ref_poly_chknorm(ptr noundef %arrayidx, i32 noundef %bound) #4, !dbg !1153
  %tobool.not = icmp eq i32 %call, 0, !dbg !1153
  br i1 %tobool.not, label %for.inc, label %return, !dbg !1153

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1154
    #dbg_value(i32 %inc, !1144, !DIExpression(), !1142)
  br label %for.cond, !dbg !1155, !llvm.loop !1156

return:                                           ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 1, %for.body ], [ 0, %for.cond ], !dbg !1142
  ret i32 %retval.0, !dbg !1158
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_power2round(ptr noundef %v1, ptr noundef %v0, ptr noundef %v) local_unnamed_addr #0 !dbg !1159 {
entry:
    #dbg_value(ptr %v1, !1162, !DIExpression(), !1163)
    #dbg_value(ptr %v0, !1164, !DIExpression(), !1163)
    #dbg_value(ptr %v, !1165, !DIExpression(), !1163)
    #dbg_value(i32 0, !1166, !DIExpression(), !1163)
  br label %for.cond, !dbg !1167

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1169
    #dbg_value(i32 %i.0, !1166, !DIExpression(), !1163)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1170
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1172

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v1, i32 0, i32 %i.0, !dbg !1173
  %arrayidx1 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v0, i32 0, i32 %i.0, !dbg !1174
  %arrayidx2 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1175
  call void @pqcrystals_dilithium2_ref_poly_power2round(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1176
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1177
    #dbg_value(i32 %inc, !1166, !DIExpression(), !1163)
  br label %for.cond, !dbg !1178, !llvm.loop !1179

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1181
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_decompose(ptr noundef %v1, ptr noundef %v0, ptr noundef %v) local_unnamed_addr #0 !dbg !1182 {
entry:
    #dbg_value(ptr %v1, !1183, !DIExpression(), !1184)
    #dbg_value(ptr %v0, !1185, !DIExpression(), !1184)
    #dbg_value(ptr %v, !1186, !DIExpression(), !1184)
    #dbg_value(i32 0, !1187, !DIExpression(), !1184)
  br label %for.cond, !dbg !1188

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1190
    #dbg_value(i32 %i.0, !1187, !DIExpression(), !1184)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1191
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1193

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v1, i32 0, i32 %i.0, !dbg !1194
  %arrayidx1 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v0, i32 0, i32 %i.0, !dbg !1195
  %arrayidx2 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1196
  call void @pqcrystals_dilithium2_ref_poly_decompose(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1197
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1198
    #dbg_value(i32 %inc, !1187, !DIExpression(), !1184)
  br label %for.cond, !dbg !1199, !llvm.loop !1200

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1202
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium2_ref_polyveck_make_hint(ptr noundef %h, ptr noundef %v0, ptr noundef %v1) local_unnamed_addr #0 !dbg !1203 {
entry:
    #dbg_value(ptr %h, !1206, !DIExpression(), !1207)
    #dbg_value(ptr %v0, !1208, !DIExpression(), !1207)
    #dbg_value(ptr %v1, !1209, !DIExpression(), !1207)
    #dbg_value(i32 0, !1210, !DIExpression(), !1207)
    #dbg_value(i32 0, !1211, !DIExpression(), !1207)
  br label %for.cond, !dbg !1212

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1214
  %s.0 = phi i32 [ 0, %entry ], [ %add, %for.body ], !dbg !1207
    #dbg_value(i32 %s.0, !1210, !DIExpression(), !1207)
    #dbg_value(i32 %i.0, !1211, !DIExpression(), !1207)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1215
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1217

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %h, i32 0, i32 %i.0, !dbg !1218
  %arrayidx1 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v0, i32 0, i32 %i.0, !dbg !1219
  %arrayidx2 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %v1, i32 0, i32 %i.0, !dbg !1220
  %call = call i32 @pqcrystals_dilithium2_ref_poly_make_hint(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1221
    #dbg_value(!DIArgList(i32 %s.0, i32 %call), !1210, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1207)
  %add = add i32 %s.0, %call, !dbg !1222
    #dbg_value(i32 %add, !1210, !DIExpression(), !1207)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1223
    #dbg_value(i32 %inc, !1211, !DIExpression(), !1207)
  br label %for.cond, !dbg !1224, !llvm.loop !1225

for.end:                                          ; preds = %for.cond
  %s.0.lcssa = phi i32 [ %s.0, %for.cond ], !dbg !1207
  ret i32 %s.0.lcssa, !dbg !1227
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_use_hint(ptr noundef %w, ptr noundef %u, ptr noundef %h) local_unnamed_addr #0 !dbg !1228 {
entry:
    #dbg_value(ptr %w, !1229, !DIExpression(), !1230)
    #dbg_value(ptr %u, !1231, !DIExpression(), !1230)
    #dbg_value(ptr %h, !1232, !DIExpression(), !1230)
    #dbg_value(i32 0, !1233, !DIExpression(), !1230)
  br label %for.cond, !dbg !1234

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1236
    #dbg_value(i32 %i.0, !1233, !DIExpression(), !1230)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1237
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1239

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [4 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !1240
  %arrayidx1 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !1241
  %arrayidx2 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %h, i32 0, i32 %i.0, !dbg !1242
  call void @pqcrystals_dilithium2_ref_poly_use_hint(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1243
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1244
    #dbg_value(i32 %inc, !1233, !DIExpression(), !1230)
  br label %for.cond, !dbg !1245, !llvm.loop !1246

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1248
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyveck_pack_w1(ptr noundef %r, ptr noundef %w1) local_unnamed_addr #0 !dbg !1249 {
entry:
    #dbg_value(ptr %r, !1252, !DIExpression(), !1253)
    #dbg_value(ptr %w1, !1254, !DIExpression(), !1253)
    #dbg_value(i32 0, !1255, !DIExpression(), !1253)
  br label %for.cond, !dbg !1256

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1258
    #dbg_value(i32 %i.0, !1255, !DIExpression(), !1253)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !1259
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1261

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 192, !dbg !1262
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %mul, !dbg !1263
  %arrayidx1 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %w1, i32 0, i32 %i.0, !dbg !1264
  call void @pqcrystals_dilithium2_ref_polyw1_pack(ptr noundef %arrayidx, ptr noundef %arrayidx1) #4, !dbg !1265
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1266
    #dbg_value(i32 %inc, !1255, !DIExpression(), !1253)
  br label %for.cond, !dbg !1267, !llvm.loop !1268

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1270
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_reduce(ptr noundef %a) local_unnamed_addr #0 !dbg !1271 {
entry:
    #dbg_value(ptr %a, !1275, !DIExpression(), !1276)
    #dbg_value(i32 0, !1277, !DIExpression(), !1276)
  br label %for.cond, !dbg !1278

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1280
    #dbg_value(i32 %i.0, !1277, !DIExpression(), !1276)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1281
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1283

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1284
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1284
  %call = call i32 @pqcrystals_dilithium2_ref_reduce32(i32 noundef %0) #4, !dbg !1285
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1286
  store i32 %call, ptr %arrayidx1, align 4, !dbg !1287
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1288
    #dbg_value(i32 %inc, !1277, !DIExpression(), !1276)
  br label %for.cond, !dbg !1289, !llvm.loop !1290

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1292
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_caddq(ptr noundef %a) local_unnamed_addr #0 !dbg !1293 {
entry:
    #dbg_value(ptr %a, !1294, !DIExpression(), !1295)
    #dbg_value(i32 0, !1296, !DIExpression(), !1295)
  br label %for.cond, !dbg !1297

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1299
    #dbg_value(i32 %i.0, !1296, !DIExpression(), !1295)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1300
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1302

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1303
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1303
  %call = call i32 @pqcrystals_dilithium2_ref_caddq(i32 noundef %0) #4, !dbg !1304
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1305
  store i32 %call, ptr %arrayidx1, align 4, !dbg !1306
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1307
    #dbg_value(i32 %inc, !1296, !DIExpression(), !1295)
  br label %for.cond, !dbg !1308, !llvm.loop !1309

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1311
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_add(ptr noundef %c, ptr noundef %a, ptr noundef %b) local_unnamed_addr #0 !dbg !1312 {
entry:
    #dbg_value(ptr %c, !1315, !DIExpression(), !1316)
    #dbg_value(ptr %a, !1317, !DIExpression(), !1316)
    #dbg_value(ptr %b, !1318, !DIExpression(), !1316)
    #dbg_value(i32 0, !1319, !DIExpression(), !1316)
  br label %for.cond, !dbg !1320

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1322
    #dbg_value(i32 %i.0, !1319, !DIExpression(), !1316)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1323
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1325

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1326
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1326
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1327
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1327
  %add = add nsw i32 %0, %1, !dbg !1328
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.0, !dbg !1329
  store i32 %add, ptr %arrayidx2, align 4, !dbg !1330
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1331
    #dbg_value(i32 %inc, !1319, !DIExpression(), !1316)
  br label %for.cond, !dbg !1332, !llvm.loop !1333

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1335
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_sub(ptr noundef %c, ptr noundef %a, ptr noundef %b) local_unnamed_addr #0 !dbg !1336 {
entry:
    #dbg_value(ptr %c, !1337, !DIExpression(), !1338)
    #dbg_value(ptr %a, !1339, !DIExpression(), !1338)
    #dbg_value(ptr %b, !1340, !DIExpression(), !1338)
    #dbg_value(i32 0, !1341, !DIExpression(), !1338)
  br label %for.cond, !dbg !1342

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1344
    #dbg_value(i32 %i.0, !1341, !DIExpression(), !1338)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1345
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1347

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1348
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1348
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1349
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1349
  %sub = sub nsw i32 %0, %1, !dbg !1350
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.0, !dbg !1351
  store i32 %sub, ptr %arrayidx2, align 4, !dbg !1352
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1353
    #dbg_value(i32 %inc, !1341, !DIExpression(), !1338)
  br label %for.cond, !dbg !1354, !llvm.loop !1355

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1357
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_shiftl(ptr noundef %a) local_unnamed_addr #0 !dbg !1358 {
entry:
    #dbg_value(ptr %a, !1359, !DIExpression(), !1360)
    #dbg_value(i32 0, !1361, !DIExpression(), !1360)
  br label %for.cond, !dbg !1362

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1364
    #dbg_value(i32 %i.0, !1361, !DIExpression(), !1360)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1365
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1367

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1368
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1369
  %shl = shl i32 %0, 13, !dbg !1369
  store i32 %shl, ptr %arrayidx, align 4, !dbg !1369
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1370
    #dbg_value(i32 %inc, !1361, !DIExpression(), !1360)
  br label %for.cond, !dbg !1371, !llvm.loop !1372

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1374
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_ntt(ptr noundef %a) local_unnamed_addr #0 !dbg !1375 {
entry:
    #dbg_value(ptr %a, !1376, !DIExpression(), !1377)
  call void @pqcrystals_dilithium2_ref_ntt(ptr noundef %a) #4, !dbg !1378
  ret void, !dbg !1379
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_invntt_tomont(ptr noundef %a) local_unnamed_addr #0 !dbg !1380 {
entry:
    #dbg_value(ptr %a, !1381, !DIExpression(), !1382)
  call void @pqcrystals_dilithium2_ref_invntt_tomont(ptr noundef %a) #4, !dbg !1383
  ret void, !dbg !1384
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_pointwise_montgomery(ptr noundef %c, ptr noundef %a, ptr noundef %b) local_unnamed_addr #0 !dbg !1385 {
entry:
    #dbg_value(ptr %c, !1386, !DIExpression(), !1387)
    #dbg_value(ptr %a, !1388, !DIExpression(), !1387)
    #dbg_value(ptr %b, !1389, !DIExpression(), !1387)
    #dbg_value(i32 0, !1390, !DIExpression(), !1387)
  br label %for.cond, !dbg !1391

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1393
    #dbg_value(i32 %i.0, !1390, !DIExpression(), !1387)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1394
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1396

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1397
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1397
  %conv = sext i32 %0 to i64, !dbg !1398
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1399
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1399
  %conv2 = sext i32 %1 to i64, !dbg !1399
  %mul = mul nsw i64 %conv, %conv2, !dbg !1400
  %call = call i32 @pqcrystals_dilithium2_ref_montgomery_reduce(i64 noundef %mul) #4, !dbg !1401
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.0, !dbg !1402
  store i32 %call, ptr %arrayidx3, align 4, !dbg !1403
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1404
    #dbg_value(i32 %inc, !1390, !DIExpression(), !1387)
  br label %for.cond, !dbg !1405, !llvm.loop !1406

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1408
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_power2round(ptr noundef %a1, ptr noundef %a0, ptr noundef %a) local_unnamed_addr #0 !dbg !1409 {
entry:
    #dbg_value(ptr %a1, !1412, !DIExpression(), !1413)
    #dbg_value(ptr %a0, !1414, !DIExpression(), !1413)
    #dbg_value(ptr %a, !1415, !DIExpression(), !1413)
    #dbg_value(i32 0, !1416, !DIExpression(), !1413)
  br label %for.cond, !dbg !1417

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1419
    #dbg_value(i32 %i.0, !1416, !DIExpression(), !1413)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1420
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1422

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a0, i32 0, i32 %i.0, !dbg !1423
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1424
  %0 = load i32, ptr %arrayidx1, align 4, !dbg !1424
  %call = call i32 @pqcrystals_dilithium2_ref_power2round(ptr noundef %arrayidx, i32 noundef %0) #4, !dbg !1425
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %a1, i32 0, i32 %i.0, !dbg !1426
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1427
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1428
    #dbg_value(i32 %inc, !1416, !DIExpression(), !1413)
  br label %for.cond, !dbg !1429, !llvm.loop !1430

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1432
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_decompose(ptr noundef %a1, ptr noundef %a0, ptr noundef %a) local_unnamed_addr #0 !dbg !1433 {
entry:
    #dbg_value(ptr %a1, !1434, !DIExpression(), !1435)
    #dbg_value(ptr %a0, !1436, !DIExpression(), !1435)
    #dbg_value(ptr %a, !1437, !DIExpression(), !1435)
    #dbg_value(i32 0, !1438, !DIExpression(), !1435)
  br label %for.cond, !dbg !1439

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1441
    #dbg_value(i32 %i.0, !1438, !DIExpression(), !1435)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1442
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1444

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a0, i32 0, i32 %i.0, !dbg !1445
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1446
  %0 = load i32, ptr %arrayidx1, align 4, !dbg !1446
  %call = call i32 @pqcrystals_dilithium2_ref_decompose(ptr noundef %arrayidx, i32 noundef %0) #4, !dbg !1447
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %a1, i32 0, i32 %i.0, !dbg !1448
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1449
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1450
    #dbg_value(i32 %inc, !1438, !DIExpression(), !1435)
  br label %for.cond, !dbg !1451, !llvm.loop !1452

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1454
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium2_ref_poly_make_hint(ptr noundef %h, ptr noundef %a0, ptr noundef %a1) local_unnamed_addr #0 !dbg !1455 {
entry:
    #dbg_value(ptr %h, !1458, !DIExpression(), !1459)
    #dbg_value(ptr %a0, !1460, !DIExpression(), !1459)
    #dbg_value(ptr %a1, !1461, !DIExpression(), !1459)
    #dbg_value(i32 0, !1462, !DIExpression(), !1459)
    #dbg_value(i32 0, !1463, !DIExpression(), !1459)
  br label %for.cond, !dbg !1464

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1466
  %s.0 = phi i32 [ 0, %entry ], [ %add, %for.body ], !dbg !1459
    #dbg_value(i32 %s.0, !1462, !DIExpression(), !1459)
    #dbg_value(i32 %i.0, !1463, !DIExpression(), !1459)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1467
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1469

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a0, i32 0, i32 %i.0, !dbg !1470
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1470
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a1, i32 0, i32 %i.0, !dbg !1472
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1472
  %call = call i32 @pqcrystals_dilithium2_ref_make_hint(i32 noundef %0, i32 noundef %1) #4, !dbg !1473
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %h, i32 0, i32 %i.0, !dbg !1474
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1475
    #dbg_value(!DIArgList(i32 %s.0, i32 %call), !1462, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1459)
  %add = add i32 %s.0, %call, !dbg !1476
    #dbg_value(i32 %add, !1462, !DIExpression(), !1459)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1477
    #dbg_value(i32 %inc, !1463, !DIExpression(), !1459)
  br label %for.cond, !dbg !1478, !llvm.loop !1479

for.end:                                          ; preds = %for.cond
  %s.0.lcssa = phi i32 [ %s.0, %for.cond ], !dbg !1459
  ret i32 %s.0.lcssa, !dbg !1481
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_use_hint(ptr noundef %b, ptr noundef %a, ptr noundef %h) local_unnamed_addr #0 !dbg !1482 {
entry:
    #dbg_value(ptr %b, !1483, !DIExpression(), !1484)
    #dbg_value(ptr %a, !1485, !DIExpression(), !1484)
    #dbg_value(ptr %h, !1486, !DIExpression(), !1484)
    #dbg_value(i32 0, !1487, !DIExpression(), !1484)
  br label %for.cond, !dbg !1488

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1490
    #dbg_value(i32 %i.0, !1487, !DIExpression(), !1484)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1491
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1493

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1494
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1494
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %h, i32 0, i32 %i.0, !dbg !1495
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1495
  %call = call i32 @pqcrystals_dilithium2_ref_use_hint(i32 noundef %0, i32 noundef %1) #4, !dbg !1496
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1497
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1498
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1499
    #dbg_value(i32 %inc, !1487, !DIExpression(), !1484)
  br label %for.cond, !dbg !1500, !llvm.loop !1501

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1503
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium2_ref_poly_chknorm(ptr noundef %a, i32 noundef %B) local_unnamed_addr #0 !dbg !1504 {
entry:
    #dbg_value(ptr %a, !1507, !DIExpression(), !1508)
    #dbg_value(i32 %B, !1509, !DIExpression(), !1508)
  %cmp = icmp sgt i32 %B, 1047552, !dbg !1510
  br i1 %cmp, label %return, label %for.cond.preheader, !dbg !1510

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !1512

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !1514
    #dbg_value(i32 %i.0, !1515, !DIExpression(), !1508)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1516
  br i1 %exitcond, label %for.body, label %return.loopexit, !dbg !1512

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1518
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1518
    #dbg_value(i32 %0, !1520, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1508)
  %1 = call i32 @llvm.smin.i32(i32 %0, i32 0), !dbg !1521
  %and = shl i32 %1, 1, !dbg !1521
  %sub = sub nsw i32 %0, %and, !dbg !1522
    #dbg_value(i32 %sub, !1520, !DIExpression(), !1508)
  %cmp4.not = icmp slt i32 %sub, %B, !dbg !1523
  br i1 %cmp4.not, label %for.inc, label %return.loopexit, !dbg !1523

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1525
    #dbg_value(i32 %inc, !1515, !DIExpression(), !1508)
  br label %for.cond, !dbg !1526, !llvm.loop !1527

return.loopexit:                                  ; preds = %for.body, %for.cond
  %retval.0.ph = phi i32 [ 0, %for.cond ], [ 1, %for.body ]
  br label %return, !dbg !1529

return:                                           ; preds = %return.loopexit, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %retval.0.ph, %return.loopexit ], !dbg !1508
  ret i32 %retval.0, !dbg !1529
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_uniform(ptr noundef %a, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !1530 {
entry:
  %buf = alloca [842 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %a, !1533, !DIExpression(), !1534)
    #dbg_value(ptr %seed, !1535, !DIExpression(), !1534)
    #dbg_value(i16 %nonce, !1536, !DIExpression(), !1534)
    #dbg_value(i32 840, !1537, !DIExpression(), !1534)
    #dbg_declare(ptr %buf, !1538, !DIExpression(), !1542)
    #dbg_declare(ptr %state, !1543, !DIExpression(), !1546)
  call void @pqcrystals_dilithium2_ref_dilithium_shake128_stream_init(ptr noundef nonnull %state, ptr noundef %seed, i16 noundef zeroext %nonce) #4, !dbg !1547
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 5, ptr noundef nonnull %state) #4, !dbg !1548
  %call = call fastcc i32 @rej_uniform(ptr noundef %a, i32 noundef 256, ptr noundef nonnull %buf, i32 noundef 840) #4, !dbg !1549
    #dbg_value(i32 %call, !1550, !DIExpression(), !1534)
  br label %while.cond, !dbg !1551

while.cond:                                       ; preds = %for.end, %entry
  %ctr.0 = phi i32 [ %call, %entry ], [ %add12, %for.end ], !dbg !1534
  %buflen.0 = phi i32 [ 840, %entry ], [ %add6, %for.end ], !dbg !1534
    #dbg_value(i32 %buflen.0, !1537, !DIExpression(), !1534)
    #dbg_value(i32 %ctr.0, !1550, !DIExpression(), !1534)
  %cmp = icmp ult i32 %ctr.0, 256, !dbg !1552
  br i1 %cmp, label %while.body, label %while.end, !dbg !1551

while.body:                                       ; preds = %while.cond
  %rem = urem i32 %buflen.0, 3, !dbg !1553
    #dbg_value(i32 %rem, !1555, !DIExpression(), !1534)
    #dbg_value(i32 0, !1556, !DIExpression(), !1534)
  br label %for.cond, !dbg !1557

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !1559
    #dbg_value(i32 %i.0, !1556, !DIExpression(), !1534)
  %exitcond = icmp ne i32 %i.0, %rem, !dbg !1560
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1562

for.body:                                         ; preds = %for.cond
  %sub = sub nuw nsw i32 %buflen.0, %rem, !dbg !1563
  %add = add nuw nsw i32 %sub, %i.0, !dbg !1564
  %arrayidx = getelementptr inbounds nuw [842 x i8], ptr %buf, i32 0, i32 %add, !dbg !1565
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1565
  %arrayidx4 = getelementptr inbounds nuw [842 x i8], ptr %buf, i32 0, i32 %i.0, !dbg !1566
  store i8 %0, ptr %arrayidx4, align 1, !dbg !1567
  %inc = add nuw i32 %i.0, 1, !dbg !1568
    #dbg_value(i32 %inc, !1556, !DIExpression(), !1534)
  br label %for.cond, !dbg !1569, !llvm.loop !1570

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %buf, i32 %rem, !dbg !1572
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef nonnull %add.ptr, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1572
  %add6 = or disjoint i32 %rem, 168, !dbg !1573
    #dbg_value(i32 %add6, !1537, !DIExpression(), !1534)
  %add.ptr8 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1574
  %sub9 = sub nuw nsw i32 256, %ctr.0, !dbg !1575
  %call11 = call fastcc i32 @rej_uniform(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull %buf, i32 noundef %add6) #4, !dbg !1576
  %add12 = add i32 %ctr.0, %call11, !dbg !1577
    #dbg_value(i32 %add12, !1550, !DIExpression(), !1534)
  br label %while.cond, !dbg !1551, !llvm.loop !1578

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1580
}

; Function Attrs: nounwind
define internal fastcc i32 @rej_uniform(ptr noundef %a, i32 noundef range(i32 1, 257) %len, ptr noundef nonnull %buf, i32 noundef range(i32 168, 841) %buflen) unnamed_addr #0 !dbg !1581 {
entry:
    #dbg_value(ptr %a, !1585, !DIExpression(), !1586)
    #dbg_value(i32 %len, !1587, !DIExpression(), !1586)
    #dbg_value(ptr %buf, !1588, !DIExpression(), !1586)
    #dbg_value(i32 %buflen, !1589, !DIExpression(), !1586)
    #dbg_value(i32 0, !1590, !DIExpression(), !1586)
    #dbg_value(i32 0, !1591, !DIExpression(), !1586)
  br label %while.cond, !dbg !1592

while.cond:                                       ; preds = %if.end, %entry
  %ctr.0 = phi i32 [ 0, %entry ], [ %ctr.1, %if.end ], !dbg !1586
  %pos.0 = phi i32 [ 0, %entry ], [ %inc5, %if.end ], !dbg !1586
    #dbg_value(i32 %pos.0, !1590, !DIExpression(), !1586)
    #dbg_value(i32 %ctr.0, !1591, !DIExpression(), !1586)
  %cmp = icmp ult i32 %ctr.0, %len, !dbg !1593
  %add = add nuw nsw i32 %pos.0, 3, !dbg !1594
  %cmp1 = icmp ule i32 %add, %buflen, !dbg !1594
  %0 = select i1 %cmp, i1 %cmp1, i1 false, !dbg !1594
  br i1 %0, label %while.body, label %while.end, !dbg !1592

while.body:                                       ; preds = %while.cond
    #dbg_value(i32 %pos.0, !1590, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1586)
  %arrayidx = getelementptr inbounds nuw i8, ptr %buf, i32 %pos.0, !dbg !1595
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1595
  %conv = zext i8 %1 to i32, !dbg !1595
    #dbg_value(i32 %conv, !1597, !DIExpression(), !1586)
    #dbg_value(i32 %pos.0, !1590, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1586)
  %2 = getelementptr i8, ptr %buf, i32 %pos.0, !dbg !1598
  %arrayidx3 = getelementptr i8, ptr %2, i32 1, !dbg !1598
  %3 = load i8, ptr %arrayidx3, align 1, !dbg !1598
  %conv4 = zext i8 %3 to i32, !dbg !1599
  %shl = shl nuw nsw i32 %conv4, 8, !dbg !1600
  %or = or disjoint i32 %shl, %conv, !dbg !1601
    #dbg_value(i32 %or, !1597, !DIExpression(), !1586)
  %inc5 = add nuw nsw i32 %pos.0, 3, !dbg !1602
    #dbg_value(i32 %inc5, !1590, !DIExpression(), !1586)
  %4 = getelementptr i8, ptr %buf, i32 %pos.0, !dbg !1603
  %arrayidx6 = getelementptr i8, ptr %4, i32 2, !dbg !1603
  %5 = load i8, ptr %arrayidx6, align 1, !dbg !1603
  %conv7 = zext i8 %5 to i32, !dbg !1604
  %shl8 = shl nuw nsw i32 %conv7, 16, !dbg !1605
    #dbg_value(!DIArgList(i32 %or, i32 %shl8), !1597, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1586)
  %shl8.masked = and i32 %shl8, 8323072, !dbg !1606
  %and = or disjoint i32 %or, %shl8.masked, !dbg !1606
    #dbg_value(i32 %and, !1597, !DIExpression(), !1586)
  %cmp10 = icmp samesign ult i32 %and, 8380417, !dbg !1607
  br i1 %cmp10, label %if.then, label %if.end, !dbg !1607

if.then:                                          ; preds = %while.body
  %inc12 = add nuw nsw i32 %ctr.0, 1, !dbg !1609
    #dbg_value(i32 %inc12, !1591, !DIExpression(), !1586)
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1610
  store i32 %and, ptr %arrayidx13, align 4, !dbg !1611
  br label %if.end, !dbg !1610

if.end:                                           ; preds = %if.then, %while.body
  %ctr.1 = phi i32 [ %inc12, %if.then ], [ %ctr.0, %while.body ], !dbg !1586
    #dbg_value(i32 %ctr.1, !1591, !DIExpression(), !1586)
  br label %while.cond, !dbg !1592, !llvm.loop !1612

while.end:                                        ; preds = %while.cond
  %ctr.0.lcssa = phi i32 [ %ctr.0, %while.cond ], !dbg !1586
  ret i32 %ctr.0.lcssa, !dbg !1614
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_uniform_eta(ptr noundef %a, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !1615 {
entry:
  %buf = alloca [136 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %a, !1616, !DIExpression(), !1617)
    #dbg_value(ptr %seed, !1618, !DIExpression(), !1617)
    #dbg_value(i16 %nonce, !1619, !DIExpression(), !1617)
    #dbg_value(i32 136, !1620, !DIExpression(), !1617)
    #dbg_declare(ptr %buf, !1621, !DIExpression(), !1625)
    #dbg_declare(ptr %state, !1626, !DIExpression(), !1628)
  call void @pqcrystals_dilithium2_ref_dilithium_shake256_stream_init(ptr noundef nonnull %state, ptr noundef %seed, i16 noundef zeroext %nonce) #4, !dbg !1629
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1630
  %call = call fastcc i32 @rej_eta(ptr noundef %a, i32 noundef 256, ptr noundef nonnull %buf, i32 noundef 136) #4, !dbg !1631
    #dbg_value(i32 %call, !1632, !DIExpression(), !1617)
  br label %while.cond, !dbg !1633

while.cond:                                       ; preds = %while.body, %entry
  %ctr.0 = phi i32 [ %call, %entry ], [ %add, %while.body ], !dbg !1617
    #dbg_value(i32 %ctr.0, !1632, !DIExpression(), !1617)
  %cmp = icmp ult i32 %ctr.0, 256, !dbg !1634
  br i1 %cmp, label %while.body, label %while.end, !dbg !1633

while.body:                                       ; preds = %while.cond
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1635
  %add.ptr = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1637
  %sub = sub nuw nsw i32 256, %ctr.0, !dbg !1638
  %call6 = call fastcc i32 @rej_eta(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %buf, i32 noundef 136) #4, !dbg !1639
  %add = add i32 %ctr.0, %call6, !dbg !1640
    #dbg_value(i32 %add, !1632, !DIExpression(), !1617)
  br label %while.cond, !dbg !1633, !llvm.loop !1641

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1643
}

; Function Attrs: nounwind
define internal fastcc i32 @rej_eta(ptr noundef %a, i32 noundef range(i32 1, 257) %len, ptr noundef nonnull %buf, i32 noundef %buflen) unnamed_addr #0 !dbg !1644 {
entry:
    #dbg_value(ptr %a, !1645, !DIExpression(), !1646)
    #dbg_value(i32 %len, !1647, !DIExpression(), !1646)
    #dbg_value(ptr %buf, !1648, !DIExpression(), !1646)
    #dbg_value(i32 136, !1649, !DIExpression(), !1646)
    #dbg_value(i32 0, !1650, !DIExpression(), !1646)
    #dbg_value(i32 0, !1651, !DIExpression(), !1646)
  br label %while.cond, !dbg !1652

while.cond:                                       ; preds = %if.end23, %entry
  %ctr.0 = phi i32 [ 0, %entry ], [ %ctr.2, %if.end23 ], !dbg !1646
  %pos.0 = phi i32 [ 0, %entry ], [ %inc, %if.end23 ], !dbg !1646
    #dbg_value(i32 %pos.0, !1650, !DIExpression(), !1646)
    #dbg_value(i32 %ctr.0, !1651, !DIExpression(), !1646)
  %cmp = icmp ult i32 %ctr.0, %len, !dbg !1653
  %cmp1 = icmp samesign ult i32 %pos.0, 136
  %spec.select = select i1 %cmp, i1 %cmp1, i1 false, !dbg !1654
  br i1 %spec.select, label %while.body, label %while.end, !dbg !1652

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %buf, i32 %pos.0, !dbg !1655
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1655
  %1 = and i8 %0, 15, !dbg !1657
    #dbg_value(i8 %1, !1658, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1646)
  %inc = add nuw nsw i32 %pos.0, 1, !dbg !1659
    #dbg_value(i32 %inc, !1650, !DIExpression(), !1646)
  %2 = lshr i8 %0, 4, !dbg !1660
  %shr = zext nneg i8 %2 to i32, !dbg !1660
    #dbg_value(i32 %shr, !1661, !DIExpression(), !1646)
  %cmp4.not = icmp eq i8 %1, 15, !dbg !1662
  br i1 %cmp4.not, label %if.end, label %if.then, !dbg !1662

if.then:                                          ; preds = %while.body
  %and = zext nneg i8 %1 to i32, !dbg !1657
    #dbg_value(i32 %and, !1658, !DIExpression(), !1646)
  %mul = mul nuw nsw i32 %and, 205, !dbg !1664
  %shr6 = lshr i32 %mul, 10, !dbg !1666
  %mul7.neg = mul nsw i32 %shr6, -5, !dbg !1667
  %sub = add nsw i32 %mul7.neg, %and, !dbg !1668
    #dbg_value(i32 %sub, !1658, !DIExpression(), !1646)
  %sub8 = sub nsw i32 2, %sub, !dbg !1669
  %inc9 = add nuw nsw i32 %ctr.0, 1, !dbg !1670
    #dbg_value(i32 %inc9, !1651, !DIExpression(), !1646)
  %arrayidx10 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1671
  store i32 %sub8, ptr %arrayidx10, align 4, !dbg !1672
  br label %if.end, !dbg !1673

if.end:                                           ; preds = %if.then, %while.body
  %ctr.1 = phi i32 [ %inc9, %if.then ], [ %ctr.0, %while.body ], !dbg !1646
    #dbg_value(i32 %ctr.1, !1651, !DIExpression(), !1646)
  %cmp11.not = icmp ne i8 %2, 15, !dbg !1674
  %cmp13 = icmp ult i32 %ctr.1, %len
  %or.cond = and i1 %cmp11.not, %cmp13, !dbg !1676
  br i1 %or.cond, label %if.then15, label %if.end23, !dbg !1676

if.then15:                                        ; preds = %if.end
  %mul16 = mul nuw nsw i32 %shr, 205, !dbg !1677
  %shr17 = lshr i32 %mul16, 10, !dbg !1679
  %mul18.neg = mul nsw i32 %shr17, -5, !dbg !1680
  %sub19 = add nsw i32 %mul18.neg, %shr, !dbg !1681
    #dbg_value(i32 %sub19, !1661, !DIExpression(), !1646)
  %sub20 = sub nsw i32 2, %sub19, !dbg !1682
  %inc21 = add nuw nsw i32 %ctr.1, 1, !dbg !1683
    #dbg_value(i32 %inc21, !1651, !DIExpression(), !1646)
  %arrayidx22 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.1, !dbg !1684
  store i32 %sub20, ptr %arrayidx22, align 4, !dbg !1685
  br label %if.end23, !dbg !1686

if.end23:                                         ; preds = %if.then15, %if.end
  %ctr.2 = phi i32 [ %inc21, %if.then15 ], [ %ctr.1, %if.end ], !dbg !1687
    #dbg_value(i32 %ctr.2, !1651, !DIExpression(), !1646)
  br label %while.cond, !dbg !1652, !llvm.loop !1688

while.end:                                        ; preds = %while.cond
  %ctr.0.lcssa = phi i32 [ %ctr.0, %while.cond ], !dbg !1646
  ret i32 %ctr.0.lcssa, !dbg !1690
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_uniform_gamma1(ptr noundef %a, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !1691 {
entry:
  %buf = alloca [680 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %a, !1692, !DIExpression(), !1693)
    #dbg_value(ptr %seed, !1694, !DIExpression(), !1693)
    #dbg_value(i16 %nonce, !1695, !DIExpression(), !1693)
    #dbg_declare(ptr %buf, !1696, !DIExpression(), !1700)
    #dbg_declare(ptr %state, !1701, !DIExpression(), !1702)
  call void @pqcrystals_dilithium2_ref_dilithium_shake256_stream_init(ptr noundef nonnull %state, ptr noundef %seed, i16 noundef zeroext %nonce) #4, !dbg !1703
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 5, ptr noundef nonnull %state) #4, !dbg !1704
  call void @pqcrystals_dilithium2_ref_polyz_unpack(ptr noundef %a, ptr noundef nonnull %buf) #4, !dbg !1705
  ret void, !dbg !1706
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyz_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !1707 {
entry:
    #dbg_value(ptr %r, !1710, !DIExpression(), !1711)
    #dbg_value(ptr %a, !1712, !DIExpression(), !1711)
    #dbg_value(i32 0, !1713, !DIExpression(), !1711)
  br label %for.cond, !dbg !1714

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1716
    #dbg_value(i32 %i.0, !1713, !DIExpression(), !1711)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1717
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1719

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 9, !dbg !1720
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %mul, !dbg !1722
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1722
  %conv = zext i8 %0 to i32, !dbg !1722
  %mul1 = shl nuw nsw i32 %i.0, 2, !dbg !1723
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul1, !dbg !1724
  store i32 %conv, ptr %arrayidx3, align 4, !dbg !1725
  %mul4 = mul nuw nsw i32 %i.0, 9, !dbg !1726
  %1 = getelementptr inbounds nuw i8, ptr %a, i32 %mul4, !dbg !1727
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %1, i32 1, !dbg !1727
  %2 = load i8, ptr %arrayidx6, align 1, !dbg !1727
  %conv7 = zext i8 %2 to i32, !dbg !1728
  %shl = shl nuw nsw i32 %conv7, 8, !dbg !1729
  %mul8 = shl nuw nsw i32 %i.0, 2, !dbg !1730
  %arrayidx10 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul8, !dbg !1731
  %3 = load i32, ptr %arrayidx10, align 4, !dbg !1732
  %or = or i32 %3, %shl, !dbg !1732
  store i32 %or, ptr %arrayidx10, align 4, !dbg !1732
  %mul11 = mul nuw nsw i32 %i.0, 9, !dbg !1733
  %4 = getelementptr inbounds nuw i8, ptr %a, i32 %mul11, !dbg !1734
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %4, i32 2, !dbg !1734
  %5 = load i8, ptr %arrayidx13, align 1, !dbg !1734
  %conv14 = zext i8 %5 to i32, !dbg !1735
  %shl15 = shl nuw nsw i32 %conv14, 16, !dbg !1736
  %mul16 = shl nuw nsw i32 %i.0, 2, !dbg !1737
  %arrayidx18 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul16, !dbg !1738
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !1739
  %or19 = or i32 %6, %shl15, !dbg !1739
  store i32 %or19, ptr %arrayidx18, align 4, !dbg !1739
  %mul20 = shl nuw nsw i32 %i.0, 2, !dbg !1740
  %arrayidx22 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul20, !dbg !1741
  %7 = load i32, ptr %arrayidx22, align 4, !dbg !1742
  %and = and i32 %7, 262143, !dbg !1742
  store i32 %and, ptr %arrayidx22, align 4, !dbg !1742
  %mul23 = mul nuw nsw i32 %i.0, 9, !dbg !1743
  %8 = getelementptr inbounds nuw i8, ptr %a, i32 %mul23, !dbg !1744
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %8, i32 2, !dbg !1744
  %9 = load i8, ptr %arrayidx25, align 1, !dbg !1744
  %10 = lshr i8 %9, 2, !dbg !1745
  %shr = zext nneg i8 %10 to i32, !dbg !1745
  %mul27 = shl nuw nsw i32 %i.0, 2, !dbg !1746
  %add28 = or disjoint i32 %mul27, 1, !dbg !1747
  %arrayidx29 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add28, !dbg !1748
  store i32 %shr, ptr %arrayidx29, align 4, !dbg !1749
  %mul30 = mul nuw nsw i32 %i.0, 9, !dbg !1750
  %11 = getelementptr inbounds nuw i8, ptr %a, i32 %mul30, !dbg !1751
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %11, i32 3, !dbg !1751
  %12 = load i8, ptr %arrayidx32, align 1, !dbg !1751
  %conv33 = zext i8 %12 to i32, !dbg !1752
  %shl34 = shl nuw nsw i32 %conv33, 6, !dbg !1753
  %mul35 = shl nuw nsw i32 %i.0, 2, !dbg !1754
  %add36 = or disjoint i32 %mul35, 1, !dbg !1755
  %arrayidx37 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add36, !dbg !1756
  %13 = load i32, ptr %arrayidx37, align 4, !dbg !1757
  %or38 = or i32 %13, %shl34, !dbg !1757
  store i32 %or38, ptr %arrayidx37, align 4, !dbg !1757
  %mul39 = mul nuw nsw i32 %i.0, 9, !dbg !1758
  %14 = getelementptr inbounds nuw i8, ptr %a, i32 %mul39, !dbg !1759
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %14, i32 4, !dbg !1759
  %15 = load i8, ptr %arrayidx41, align 1, !dbg !1759
  %conv42 = zext i8 %15 to i32, !dbg !1760
  %shl43 = shl nuw nsw i32 %conv42, 14, !dbg !1761
  %mul44 = shl nuw nsw i32 %i.0, 2, !dbg !1762
  %add45 = or disjoint i32 %mul44, 1, !dbg !1763
  %arrayidx46 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add45, !dbg !1764
  %16 = load i32, ptr %arrayidx46, align 4, !dbg !1765
  %or47 = or i32 %16, %shl43, !dbg !1765
  store i32 %or47, ptr %arrayidx46, align 4, !dbg !1765
  %mul48 = shl nuw nsw i32 %i.0, 2, !dbg !1766
  %add49 = or disjoint i32 %mul48, 1, !dbg !1767
  %arrayidx50 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add49, !dbg !1768
  %17 = load i32, ptr %arrayidx50, align 4, !dbg !1769
  %and51 = and i32 %17, 262143, !dbg !1769
  store i32 %and51, ptr %arrayidx50, align 4, !dbg !1769
  %mul52 = mul nuw nsw i32 %i.0, 9, !dbg !1770
  %18 = getelementptr inbounds nuw i8, ptr %a, i32 %mul52, !dbg !1771
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %18, i32 4, !dbg !1771
  %19 = load i8, ptr %arrayidx54, align 1, !dbg !1771
  %20 = lshr i8 %19, 4, !dbg !1772
  %shr56 = zext nneg i8 %20 to i32, !dbg !1772
  %mul57 = shl nuw nsw i32 %i.0, 2, !dbg !1773
  %add58 = or disjoint i32 %mul57, 2, !dbg !1774
  %arrayidx59 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add58, !dbg !1775
  store i32 %shr56, ptr %arrayidx59, align 4, !dbg !1776
  %mul60 = mul nuw nsw i32 %i.0, 9, !dbg !1777
  %21 = getelementptr inbounds nuw i8, ptr %a, i32 %mul60, !dbg !1778
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %21, i32 5, !dbg !1778
  %22 = load i8, ptr %arrayidx62, align 1, !dbg !1778
  %conv63 = zext i8 %22 to i32, !dbg !1779
  %shl64 = shl nuw nsw i32 %conv63, 4, !dbg !1780
  %mul65 = shl nuw nsw i32 %i.0, 2, !dbg !1781
  %add66 = or disjoint i32 %mul65, 2, !dbg !1782
  %arrayidx67 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add66, !dbg !1783
  %23 = load i32, ptr %arrayidx67, align 4, !dbg !1784
  %or68 = or i32 %23, %shl64, !dbg !1784
  store i32 %or68, ptr %arrayidx67, align 4, !dbg !1784
  %mul69 = mul nuw nsw i32 %i.0, 9, !dbg !1785
  %24 = getelementptr inbounds nuw i8, ptr %a, i32 %mul69, !dbg !1786
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %24, i32 6, !dbg !1786
  %25 = load i8, ptr %arrayidx71, align 1, !dbg !1786
  %conv72 = zext i8 %25 to i32, !dbg !1787
  %shl73 = shl nuw nsw i32 %conv72, 12, !dbg !1788
  %mul74 = shl nuw nsw i32 %i.0, 2, !dbg !1789
  %add75 = or disjoint i32 %mul74, 2, !dbg !1790
  %arrayidx76 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add75, !dbg !1791
  %26 = load i32, ptr %arrayidx76, align 4, !dbg !1792
  %or77 = or i32 %26, %shl73, !dbg !1792
  store i32 %or77, ptr %arrayidx76, align 4, !dbg !1792
  %mul78 = shl nuw nsw i32 %i.0, 2, !dbg !1793
  %add79 = or disjoint i32 %mul78, 2, !dbg !1794
  %arrayidx80 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add79, !dbg !1795
  %27 = load i32, ptr %arrayidx80, align 4, !dbg !1796
  %and81 = and i32 %27, 262143, !dbg !1796
  store i32 %and81, ptr %arrayidx80, align 4, !dbg !1796
  %mul82 = mul nuw nsw i32 %i.0, 9, !dbg !1797
  %28 = getelementptr inbounds nuw i8, ptr %a, i32 %mul82, !dbg !1798
  %arrayidx84 = getelementptr inbounds nuw i8, ptr %28, i32 6, !dbg !1798
  %29 = load i8, ptr %arrayidx84, align 1, !dbg !1798
  %30 = lshr i8 %29, 6, !dbg !1799
  %shr86 = zext nneg i8 %30 to i32, !dbg !1799
  %mul87 = shl nuw nsw i32 %i.0, 2, !dbg !1800
  %add88 = or disjoint i32 %mul87, 3, !dbg !1801
  %arrayidx89 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add88, !dbg !1802
  store i32 %shr86, ptr %arrayidx89, align 4, !dbg !1803
  %mul90 = mul nuw nsw i32 %i.0, 9, !dbg !1804
  %31 = getelementptr inbounds nuw i8, ptr %a, i32 %mul90, !dbg !1805
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %31, i32 7, !dbg !1805
  %32 = load i8, ptr %arrayidx92, align 1, !dbg !1805
  %conv93 = zext i8 %32 to i32, !dbg !1806
  %shl94 = shl nuw nsw i32 %conv93, 2, !dbg !1807
  %mul95 = shl nuw nsw i32 %i.0, 2, !dbg !1808
  %add96 = or disjoint i32 %mul95, 3, !dbg !1809
  %arrayidx97 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add96, !dbg !1810
  %33 = load i32, ptr %arrayidx97, align 4, !dbg !1811
  %or98 = or i32 %33, %shl94, !dbg !1811
  store i32 %or98, ptr %arrayidx97, align 4, !dbg !1811
  %mul99 = mul nuw nsw i32 %i.0, 9, !dbg !1812
  %34 = getelementptr inbounds nuw i8, ptr %a, i32 %mul99, !dbg !1813
  %arrayidx101 = getelementptr inbounds nuw i8, ptr %34, i32 8, !dbg !1813
  %35 = load i8, ptr %arrayidx101, align 1, !dbg !1813
  %conv102 = zext i8 %35 to i32, !dbg !1814
  %shl103 = shl nuw nsw i32 %conv102, 10, !dbg !1815
  %mul104 = shl nuw nsw i32 %i.0, 2, !dbg !1816
  %add105 = or disjoint i32 %mul104, 3, !dbg !1817
  %arrayidx106 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add105, !dbg !1818
  %36 = load i32, ptr %arrayidx106, align 4, !dbg !1819
  %or107 = or i32 %36, %shl103, !dbg !1819
  store i32 %or107, ptr %arrayidx106, align 4, !dbg !1819
  %mul108 = shl nuw nsw i32 %i.0, 2, !dbg !1820
  %add109 = or disjoint i32 %mul108, 3, !dbg !1821
  %arrayidx110 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add109, !dbg !1822
  %37 = load i32, ptr %arrayidx110, align 4, !dbg !1823
  %and111 = and i32 %37, 262143, !dbg !1823
  store i32 %and111, ptr %arrayidx110, align 4, !dbg !1823
  %mul112 = shl nuw nsw i32 %i.0, 2, !dbg !1824
  %arrayidx114 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul112, !dbg !1825
  %38 = load i32, ptr %arrayidx114, align 4, !dbg !1825
  %sub = sub nsw i32 131072, %38, !dbg !1826
  %mul115 = shl nuw nsw i32 %i.0, 2, !dbg !1827
  %arrayidx117 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul115, !dbg !1828
  store i32 %sub, ptr %arrayidx117, align 4, !dbg !1829
  %mul118 = shl nuw nsw i32 %i.0, 2, !dbg !1830
  %add119 = or disjoint i32 %mul118, 1, !dbg !1831
  %arrayidx120 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add119, !dbg !1832
  %39 = load i32, ptr %arrayidx120, align 4, !dbg !1832
  %sub121 = sub nsw i32 131072, %39, !dbg !1833
  %mul122 = shl nuw nsw i32 %i.0, 2, !dbg !1834
  %add123 = or disjoint i32 %mul122, 1, !dbg !1835
  %arrayidx124 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add123, !dbg !1836
  store i32 %sub121, ptr %arrayidx124, align 4, !dbg !1837
  %mul125 = shl nuw nsw i32 %i.0, 2, !dbg !1838
  %add126 = or disjoint i32 %mul125, 2, !dbg !1839
  %arrayidx127 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add126, !dbg !1840
  %40 = load i32, ptr %arrayidx127, align 4, !dbg !1840
  %sub128 = sub nsw i32 131072, %40, !dbg !1841
  %mul129 = shl nuw nsw i32 %i.0, 2, !dbg !1842
  %add130 = or disjoint i32 %mul129, 2, !dbg !1843
  %arrayidx131 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add130, !dbg !1844
  store i32 %sub128, ptr %arrayidx131, align 4, !dbg !1845
  %mul132 = shl nuw nsw i32 %i.0, 2, !dbg !1846
  %add133 = or disjoint i32 %mul132, 3, !dbg !1847
  %arrayidx134 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add133, !dbg !1848
  %41 = load i32, ptr %arrayidx134, align 4, !dbg !1848
  %sub135 = sub nsw i32 131072, %41, !dbg !1849
  %mul136 = shl nuw nsw i32 %i.0, 2, !dbg !1850
  %add137 = or disjoint i32 %mul136, 3, !dbg !1851
  %arrayidx138 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add137, !dbg !1852
  store i32 %sub135, ptr %arrayidx138, align 4, !dbg !1853
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1854
    #dbg_value(i32 %inc, !1713, !DIExpression(), !1711)
  br label %for.cond, !dbg !1855, !llvm.loop !1856

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1858
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_poly_challenge(ptr noundef %c, ptr noundef %seed) local_unnamed_addr #0 !dbg !1859 {
entry:
  %buf = alloca [136 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %c, !1860, !DIExpression(), !1861)
    #dbg_value(ptr %seed, !1862, !DIExpression(), !1861)
    #dbg_declare(ptr %buf, !1863, !DIExpression(), !1864)
    #dbg_declare(ptr %state, !1865, !DIExpression(), !1866)
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !1867
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %seed, i32 noundef 32) #4, !dbg !1868
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !1869
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1870
    #dbg_value(i64 0, !1871, !DIExpression(), !1861)
    #dbg_value(i32 0, !1872, !DIExpression(), !1861)
  br label %for.cond, !dbg !1873

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1875
  %signs.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !1861
    #dbg_value(i64 %signs.0, !1871, !DIExpression(), !1861)
    #dbg_value(i32 %i.0, !1872, !DIExpression(), !1861)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1876
  br i1 %exitcond, label %for.inc, label %for.cond1.preheader, !dbg !1878

for.cond1.preheader:                              ; preds = %for.cond
  %signs.0.lcssa = phi i64 [ %signs.0, %for.cond ], !dbg !1861
  br label %for.cond1, !dbg !1879

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !1871, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1861)
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %buf, i32 0, i32 %i.0, !dbg !1881
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1881
    #dbg_value(!DIArgList(i64 %signs.0, i8 %0, i32 %i.0), !1871, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1861)
  %conv = zext i8 %0 to i64, !dbg !1882
    #dbg_value(!DIArgList(i64 %signs.0, i64 %conv, i32 %i.0), !1871, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1861)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !1883
    #dbg_value(!DIArgList(i64 %signs.0, i64 %conv, i32 %mul), !1871, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1861)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !1884
    #dbg_value(!DIArgList(i64 %signs.0, i64 %conv, i64 %sh_prom), !1871, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1861)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !1884
    #dbg_value(!DIArgList(i64 %signs.0, i64 %shl), !1871, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1861)
  %or = or i64 %signs.0, %shl, !dbg !1885
    #dbg_value(i64 %or, !1871, !DIExpression(), !1861)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1886
    #dbg_value(i32 %inc, !1872, !DIExpression(), !1861)
  br label %for.cond, !dbg !1887, !llvm.loop !1888

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond1.preheader ], !dbg !1890
    #dbg_value(i32 %i.1, !1872, !DIExpression(), !1861)
  %exitcond1 = icmp ne i32 %i.1, 256, !dbg !1891
  br i1 %exitcond1, label %for.body4, label %for.cond9.preheader, !dbg !1879

for.cond9.preheader:                              ; preds = %for.cond1
  br label %for.cond9, !dbg !1893

for.body4:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.1, !dbg !1895
  store i32 0, ptr %arrayidx5, align 4, !dbg !1896
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !1897
    #dbg_value(i32 %inc7, !1872, !DIExpression(), !1861)
  br label %for.cond1, !dbg !1898, !llvm.loop !1899

for.cond9:                                        ; preds = %for.cond9.preheader, %do.end
  %i.2 = phi i32 [ %inc27, %do.end ], [ 217, %for.cond9.preheader ], !dbg !1901
  %pos.0 = phi i32 [ %inc16.lcssa, %do.end ], [ 8, %for.cond9.preheader ], !dbg !1861
  %signs.1 = phi i64 [ %shr, %do.end ], [ %signs.0.lcssa, %for.cond9.preheader ], !dbg !1861
    #dbg_value(i64 %signs.1, !1871, !DIExpression(), !1861)
    #dbg_value(i32 %pos.0, !1902, !DIExpression(), !1861)
    #dbg_value(i32 %i.2, !1872, !DIExpression(), !1861)
  %exitcond2 = icmp ne i32 %i.2, 256, !dbg !1903
  br i1 %exitcond2, label %do.body.preheader, label %for.end28, !dbg !1893

do.body.preheader:                                ; preds = %for.cond9
  br label %do.body, !dbg !1905

do.body:                                          ; preds = %do.body.preheader, %if.end
  %pos.1 = phi i32 [ %inc16, %if.end ], [ %pos.0, %do.body.preheader ], !dbg !1861
    #dbg_value(i32 %pos.1, !1902, !DIExpression(), !1861)
  %cmp13 = icmp ugt i32 %pos.1, 135, !dbg !1907
  br i1 %cmp13, label %if.then, label %if.end, !dbg !1907

if.then:                                          ; preds = %do.body
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1910
    #dbg_value(i32 0, !1902, !DIExpression(), !1861)
  br label %if.end, !dbg !1912

if.end:                                           ; preds = %if.then, %do.body
  %pos.2 = phi i32 [ 0, %if.then ], [ %pos.1, %do.body ], !dbg !1861
    #dbg_value(i32 %pos.2, !1902, !DIExpression(), !1861)
  %inc16 = add nuw nsw i32 %pos.2, 1, !dbg !1913
    #dbg_value(i32 %inc16, !1902, !DIExpression(), !1861)
  %arrayidx17 = getelementptr inbounds nuw [136 x i8], ptr %buf, i32 0, i32 %pos.2, !dbg !1914
  %1 = load i8, ptr %arrayidx17, align 1, !dbg !1914
  %conv18 = zext i8 %1 to i32, !dbg !1914
    #dbg_value(i32 %conv18, !1915, !DIExpression(), !1861)
  %cmp19 = icmp samesign ult i32 %i.2, %conv18, !dbg !1916
  br i1 %cmp19, label %do.body, label %do.end, !dbg !1917, !llvm.loop !1918

do.end:                                           ; preds = %if.end
  %inc16.lcssa = phi i32 [ %inc16, %if.end ], !dbg !1913
  %conv18.lcssa = phi i32 [ %conv18, %if.end ], !dbg !1914
  %arrayidx21 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %conv18.lcssa, !dbg !1920
  %2 = load i32, ptr %arrayidx21, align 4, !dbg !1920
  %arrayidx22 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.2, !dbg !1921
  store i32 %2, ptr %arrayidx22, align 4, !dbg !1922
  %signs.1.tr = trunc i64 %signs.1 to i32, !dbg !1923
  %3 = shl i32 %signs.1.tr, 1, !dbg !1923
  %4 = and i32 %3, 2, !dbg !1923
  %conv24 = sub nsw i32 1, %4, !dbg !1923
  %arrayidx25 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %conv18.lcssa, !dbg !1924
  store i32 %conv24, ptr %arrayidx25, align 4, !dbg !1925
    #dbg_value(i64 %signs.1, !1871, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !1861)
  %shr = lshr i64 %signs.1, 1, !dbg !1926
    #dbg_value(i64 %shr, !1871, !DIExpression(), !1861)
  %inc27 = add nuw nsw i32 %i.2, 1, !dbg !1927
    #dbg_value(i32 %inc27, !1872, !DIExpression(), !1861)
  br label %for.cond9, !dbg !1928, !llvm.loop !1929

for.end28:                                        ; preds = %for.cond9
  ret void, !dbg !1931
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyeta_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !1932 {
entry:
    #dbg_value(ptr %r, !1935, !DIExpression(), !1936)
    #dbg_value(ptr %a, !1937, !DIExpression(), !1936)
    #dbg_value(i32 0, !1938, !DIExpression(), !1936)
  br label %for.cond, !dbg !1939

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1941
    #dbg_value(i32 %i.0, !1938, !DIExpression(), !1936)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !1942
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1944

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !1945
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !1947
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1947
  %conv = sub i32 2, %0, !dbg !1948
    #dbg_value(!DIArgList(i8 2, i32 %0), !1949, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !1936)
  %mul2 = shl nuw nsw i32 %i.0, 3, !dbg !1953
  %add3 = or disjoint i32 %mul2, 1, !dbg !1954
  %arrayidx4 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add3, !dbg !1955
  %1 = load i32, ptr %arrayidx4, align 4, !dbg !1955
    #dbg_value(!DIArgList(i8 2, i32 %1), !1949, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !1936)
  %mul8 = shl nuw nsw i32 %i.0, 3, !dbg !1956
  %add9 = or disjoint i32 %mul8, 2, !dbg !1957
  %arrayidx10 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add9, !dbg !1958
  %2 = load i32, ptr %arrayidx10, align 4, !dbg !1958
  %3 = trunc i32 %2 to i8, !dbg !1959
  %conv12 = sub i8 2, %3, !dbg !1959
    #dbg_value(i8 %conv12, !1949, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1936)
  %mul14 = shl nuw nsw i32 %i.0, 3, !dbg !1960
  %add15 = or disjoint i32 %mul14, 3, !dbg !1961
  %arrayidx16 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add15, !dbg !1962
  %4 = load i32, ptr %arrayidx16, align 4, !dbg !1962
    #dbg_value(!DIArgList(i8 2, i32 %4), !1949, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 24, 8), !1936)
  %mul20 = shl nuw nsw i32 %i.0, 3, !dbg !1963
  %add21 = or disjoint i32 %mul20, 4, !dbg !1964
  %arrayidx22 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add21, !dbg !1965
  %5 = load i32, ptr %arrayidx22, align 4, !dbg !1965
    #dbg_value(!DIArgList(i8 2, i32 %5), !1949, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8), !1936)
  %mul26 = shl nuw nsw i32 %i.0, 3, !dbg !1966
  %add27 = or disjoint i32 %mul26, 5, !dbg !1967
  %arrayidx28 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add27, !dbg !1968
  %6 = load i32, ptr %arrayidx28, align 4, !dbg !1968
  %7 = trunc i32 %6 to i8, !dbg !1969
  %conv30 = sub i8 2, %7, !dbg !1969
    #dbg_value(i8 %conv30, !1949, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !1936)
  %mul32 = shl nuw nsw i32 %i.0, 3, !dbg !1970
  %add33 = or disjoint i32 %mul32, 6, !dbg !1971
  %arrayidx34 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add33, !dbg !1972
  %8 = load i32, ptr %arrayidx34, align 4, !dbg !1972
    #dbg_value(!DIArgList(i8 2, i32 %8), !1949, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 8), !1936)
  %mul38 = shl nuw nsw i32 %i.0, 3, !dbg !1973
  %add39 = or disjoint i32 %mul38, 7, !dbg !1974
  %arrayidx40 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add39, !dbg !1975
  %9 = load i32, ptr %arrayidx40, align 4, !dbg !1975
    #dbg_value(!DIArgList(i8 2, i32 %9), !1949, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 56, 8), !1936)
  %10 = shl i32 %1, 3, !dbg !1976
  %conv47 = sub i32 16, %10, !dbg !1976
  %or = or i32 %conv, %conv47, !dbg !1977
  %conv49 = zext i8 %conv12 to i32, !dbg !1978
  %shl50 = shl nuw nsw i32 %conv49, 6, !dbg !1979
  %or51 = or i32 %or, %shl50, !dbg !1980
  %conv52 = trunc i32 %or51 to i8, !dbg !1981
  %mul53 = mul nuw nsw i32 %i.0, 3, !dbg !1982
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %r, i32 %mul53, !dbg !1983
  store i8 %conv52, ptr %arrayidx55, align 1, !dbg !1984
  %11 = lshr i8 %conv12, 2, !dbg !1985
  %shr58 = zext nneg i8 %11 to i32, !dbg !1985
  %12 = shl i32 %4, 1, !dbg !1986
  %conv60 = sub i32 4, %12, !dbg !1986
  %shl61 = and i32 %conv60, 254, !dbg !1986
  %or62 = or i32 %shl61, %shr58, !dbg !1987
  %13 = shl i32 %5, 4, !dbg !1988
  %conv64 = sub i32 32, %13, !dbg !1988
  %or66 = or i32 %or62, %conv64, !dbg !1989
  %conv68 = zext i8 %conv30 to i32, !dbg !1990
  %shl69 = shl nuw nsw i32 %conv68, 7, !dbg !1991
  %or70 = or i32 %or66, %shl69, !dbg !1992
  %conv71 = trunc i32 %or70 to i8, !dbg !1993
  %mul72 = mul nuw nsw i32 %i.0, 3, !dbg !1994
  %14 = getelementptr inbounds nuw i8, ptr %r, i32 %mul72, !dbg !1995
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %14, i32 1, !dbg !1995
  store i8 %conv71, ptr %arrayidx74, align 1, !dbg !1996
  %15 = lshr i8 %conv30, 1, !dbg !1997
  %shr77 = zext nneg i8 %15 to i32, !dbg !1997
  %16 = shl i32 %8, 2, !dbg !1998
  %conv79 = sub i32 8, %16, !dbg !1998
  %or81 = or i32 %conv79, %shr77, !dbg !1999
  %17 = shl i32 %9, 5, !dbg !2000
  %conv83 = sub i32 64, %17, !dbg !2000
  %or85 = or i32 %or81, %conv83, !dbg !2001
  %conv86 = trunc i32 %or85 to i8, !dbg !2002
  %mul87 = mul nuw nsw i32 %i.0, 3, !dbg !2003
  %18 = getelementptr inbounds nuw i8, ptr %r, i32 %mul87, !dbg !2004
  %arrayidx89 = getelementptr inbounds nuw i8, ptr %18, i32 2, !dbg !2004
  store i8 %conv86, ptr %arrayidx89, align 1, !dbg !2005
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2006
    #dbg_value(i32 %inc, !1938, !DIExpression(), !1936)
  br label %for.cond, !dbg !2007, !llvm.loop !2008

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2010
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyeta_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2011 {
entry:
    #dbg_value(ptr %r, !2012, !DIExpression(), !2013)
    #dbg_value(ptr %a, !2014, !DIExpression(), !2013)
    #dbg_value(i32 0, !2015, !DIExpression(), !2013)
  br label %for.cond, !dbg !2016

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2018
    #dbg_value(i32 %i.0, !2015, !DIExpression(), !2013)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !2019
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2021

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 3, !dbg !2022
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %mul, !dbg !2024
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2024
  %1 = and i8 %0, 7, !dbg !2025
  %and = zext nneg i8 %1 to i32, !dbg !2025
  %mul1 = shl nuw nsw i32 %i.0, 3, !dbg !2026
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul1, !dbg !2027
  store i32 %and, ptr %arrayidx3, align 4, !dbg !2028
  %mul4 = mul nuw nsw i32 %i.0, 3, !dbg !2029
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %a, i32 %mul4, !dbg !2030
  %2 = load i8, ptr %arrayidx6, align 1, !dbg !2030
  %3 = lshr i8 %2, 3, !dbg !2031
  %4 = and i8 %3, 7, !dbg !2032
  %and9 = zext nneg i8 %4 to i32, !dbg !2032
  %mul10 = shl nuw nsw i32 %i.0, 3, !dbg !2033
  %add11 = or disjoint i32 %mul10, 1, !dbg !2034
  %arrayidx12 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add11, !dbg !2035
  store i32 %and9, ptr %arrayidx12, align 4, !dbg !2036
  %mul13 = mul nuw nsw i32 %i.0, 3, !dbg !2037
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %a, i32 %mul13, !dbg !2038
  %5 = load i8, ptr %arrayidx15, align 1, !dbg !2038
  %6 = lshr i8 %5, 6, !dbg !2039
  %shr17 = zext nneg i8 %6 to i32, !dbg !2039
  %mul18 = mul nuw nsw i32 %i.0, 3, !dbg !2040
  %7 = getelementptr inbounds nuw i8, ptr %a, i32 %mul18, !dbg !2041
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %7, i32 1, !dbg !2041
  %8 = load i8, ptr %arrayidx20, align 1, !dbg !2041
  %conv21 = zext i8 %8 to i32, !dbg !2041
  %shl = shl nuw nsw i32 %conv21, 2, !dbg !2042
  %shl.masked = and i32 %shl, 4, !dbg !2043
  %and22 = or disjoint i32 %shl.masked, %shr17, !dbg !2043
  %mul23 = shl nuw nsw i32 %i.0, 3, !dbg !2044
  %add24 = or disjoint i32 %mul23, 2, !dbg !2045
  %arrayidx25 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add24, !dbg !2046
  store i32 %and22, ptr %arrayidx25, align 4, !dbg !2047
  %mul26 = mul nuw nsw i32 %i.0, 3, !dbg !2048
  %9 = getelementptr inbounds nuw i8, ptr %a, i32 %mul26, !dbg !2049
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %9, i32 1, !dbg !2049
  %10 = load i8, ptr %arrayidx28, align 1, !dbg !2049
  %11 = lshr i8 %10, 1, !dbg !2050
  %12 = and i8 %11, 7, !dbg !2051
  %and31 = zext nneg i8 %12 to i32, !dbg !2051
  %mul32 = shl nuw nsw i32 %i.0, 3, !dbg !2052
  %add33 = or disjoint i32 %mul32, 3, !dbg !2053
  %arrayidx34 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add33, !dbg !2054
  store i32 %and31, ptr %arrayidx34, align 4, !dbg !2055
  %mul35 = mul nuw nsw i32 %i.0, 3, !dbg !2056
  %13 = getelementptr inbounds nuw i8, ptr %a, i32 %mul35, !dbg !2057
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %13, i32 1, !dbg !2057
  %14 = load i8, ptr %arrayidx37, align 1, !dbg !2057
  %15 = lshr i8 %14, 4, !dbg !2058
  %16 = and i8 %15, 7, !dbg !2059
  %and40 = zext nneg i8 %16 to i32, !dbg !2059
  %mul41 = shl nuw nsw i32 %i.0, 3, !dbg !2060
  %add42 = or disjoint i32 %mul41, 4, !dbg !2061
  %arrayidx43 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add42, !dbg !2062
  store i32 %and40, ptr %arrayidx43, align 4, !dbg !2063
  %mul44 = mul nuw nsw i32 %i.0, 3, !dbg !2064
  %17 = getelementptr inbounds nuw i8, ptr %a, i32 %mul44, !dbg !2065
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %17, i32 1, !dbg !2065
  %18 = load i8, ptr %arrayidx46, align 1, !dbg !2065
  %19 = lshr i8 %18, 7, !dbg !2066
  %shr48 = zext nneg i8 %19 to i32, !dbg !2066
  %mul49 = mul nuw nsw i32 %i.0, 3, !dbg !2067
  %20 = getelementptr inbounds nuw i8, ptr %a, i32 %mul49, !dbg !2068
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %20, i32 2, !dbg !2068
  %21 = load i8, ptr %arrayidx51, align 1, !dbg !2068
  %conv52 = zext i8 %21 to i32, !dbg !2068
  %shl53 = shl nuw nsw i32 %conv52, 1, !dbg !2069
  %shl53.masked = and i32 %shl53, 6, !dbg !2070
  %and55 = or disjoint i32 %shl53.masked, %shr48, !dbg !2070
  %mul56 = shl nuw nsw i32 %i.0, 3, !dbg !2071
  %add57 = or disjoint i32 %mul56, 5, !dbg !2072
  %arrayidx58 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add57, !dbg !2073
  store i32 %and55, ptr %arrayidx58, align 4, !dbg !2074
  %mul59 = mul nuw nsw i32 %i.0, 3, !dbg !2075
  %22 = getelementptr inbounds nuw i8, ptr %a, i32 %mul59, !dbg !2076
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %22, i32 2, !dbg !2076
  %23 = load i8, ptr %arrayidx61, align 1, !dbg !2076
  %24 = lshr i8 %23, 2, !dbg !2077
  %25 = and i8 %24, 7, !dbg !2078
  %and64 = zext nneg i8 %25 to i32, !dbg !2078
  %mul65 = shl nuw nsw i32 %i.0, 3, !dbg !2079
  %add66 = or disjoint i32 %mul65, 6, !dbg !2080
  %arrayidx67 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add66, !dbg !2081
  store i32 %and64, ptr %arrayidx67, align 4, !dbg !2082
  %mul68 = mul nuw nsw i32 %i.0, 3, !dbg !2083
  %26 = getelementptr inbounds nuw i8, ptr %a, i32 %mul68, !dbg !2084
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %26, i32 2, !dbg !2084
  %27 = load i8, ptr %arrayidx70, align 1, !dbg !2084
  %28 = lshr i8 %27, 5, !dbg !2085
  %shr72 = zext nneg i8 %28 to i32, !dbg !2085
  %mul74 = shl nuw nsw i32 %i.0, 3, !dbg !2086
  %add75 = or disjoint i32 %mul74, 7, !dbg !2087
  %arrayidx76 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add75, !dbg !2088
  store i32 %shr72, ptr %arrayidx76, align 4, !dbg !2089
  %mul77 = shl nuw nsw i32 %i.0, 3, !dbg !2090
  %arrayidx79 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul77, !dbg !2091
  %29 = load i32, ptr %arrayidx79, align 4, !dbg !2091
  %sub = sub nsw i32 2, %29, !dbg !2092
  %mul80 = shl nuw nsw i32 %i.0, 3, !dbg !2093
  %arrayidx82 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul80, !dbg !2094
  store i32 %sub, ptr %arrayidx82, align 4, !dbg !2095
  %mul83 = shl nuw nsw i32 %i.0, 3, !dbg !2096
  %add84 = or disjoint i32 %mul83, 1, !dbg !2097
  %arrayidx85 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add84, !dbg !2098
  %30 = load i32, ptr %arrayidx85, align 4, !dbg !2098
  %sub86 = sub nsw i32 2, %30, !dbg !2099
  %mul87 = shl nuw nsw i32 %i.0, 3, !dbg !2100
  %add88 = or disjoint i32 %mul87, 1, !dbg !2101
  %arrayidx89 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add88, !dbg !2102
  store i32 %sub86, ptr %arrayidx89, align 4, !dbg !2103
  %mul90 = shl nuw nsw i32 %i.0, 3, !dbg !2104
  %add91 = or disjoint i32 %mul90, 2, !dbg !2105
  %arrayidx92 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add91, !dbg !2106
  %31 = load i32, ptr %arrayidx92, align 4, !dbg !2106
  %sub93 = sub nsw i32 2, %31, !dbg !2107
  %mul94 = shl nuw nsw i32 %i.0, 3, !dbg !2108
  %add95 = or disjoint i32 %mul94, 2, !dbg !2109
  %arrayidx96 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add95, !dbg !2110
  store i32 %sub93, ptr %arrayidx96, align 4, !dbg !2111
  %mul97 = shl nuw nsw i32 %i.0, 3, !dbg !2112
  %add98 = or disjoint i32 %mul97, 3, !dbg !2113
  %arrayidx99 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add98, !dbg !2114
  %32 = load i32, ptr %arrayidx99, align 4, !dbg !2114
  %sub100 = sub nsw i32 2, %32, !dbg !2115
  %mul101 = shl nuw nsw i32 %i.0, 3, !dbg !2116
  %add102 = or disjoint i32 %mul101, 3, !dbg !2117
  %arrayidx103 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add102, !dbg !2118
  store i32 %sub100, ptr %arrayidx103, align 4, !dbg !2119
  %mul104 = shl nuw nsw i32 %i.0, 3, !dbg !2120
  %add105 = or disjoint i32 %mul104, 4, !dbg !2121
  %arrayidx106 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add105, !dbg !2122
  %33 = load i32, ptr %arrayidx106, align 4, !dbg !2122
  %sub107 = sub nsw i32 2, %33, !dbg !2123
  %mul108 = shl nuw nsw i32 %i.0, 3, !dbg !2124
  %add109 = or disjoint i32 %mul108, 4, !dbg !2125
  %arrayidx110 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add109, !dbg !2126
  store i32 %sub107, ptr %arrayidx110, align 4, !dbg !2127
  %mul111 = shl nuw nsw i32 %i.0, 3, !dbg !2128
  %add112 = or disjoint i32 %mul111, 5, !dbg !2129
  %arrayidx113 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add112, !dbg !2130
  %34 = load i32, ptr %arrayidx113, align 4, !dbg !2130
  %sub114 = sub nsw i32 2, %34, !dbg !2131
  %mul115 = shl nuw nsw i32 %i.0, 3, !dbg !2132
  %add116 = or disjoint i32 %mul115, 5, !dbg !2133
  %arrayidx117 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add116, !dbg !2134
  store i32 %sub114, ptr %arrayidx117, align 4, !dbg !2135
  %mul118 = shl nuw nsw i32 %i.0, 3, !dbg !2136
  %add119 = or disjoint i32 %mul118, 6, !dbg !2137
  %arrayidx120 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add119, !dbg !2138
  %35 = load i32, ptr %arrayidx120, align 4, !dbg !2138
  %sub121 = sub nsw i32 2, %35, !dbg !2139
  %mul122 = shl nuw nsw i32 %i.0, 3, !dbg !2140
  %add123 = or disjoint i32 %mul122, 6, !dbg !2141
  %arrayidx124 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add123, !dbg !2142
  store i32 %sub121, ptr %arrayidx124, align 4, !dbg !2143
  %mul125 = shl nuw nsw i32 %i.0, 3, !dbg !2144
  %add126 = or disjoint i32 %mul125, 7, !dbg !2145
  %arrayidx127 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add126, !dbg !2146
  %36 = load i32, ptr %arrayidx127, align 4, !dbg !2146
  %sub128 = sub nsw i32 2, %36, !dbg !2147
  %mul129 = shl nuw nsw i32 %i.0, 3, !dbg !2148
  %add130 = or disjoint i32 %mul129, 7, !dbg !2149
  %arrayidx131 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add130, !dbg !2150
  store i32 %sub128, ptr %arrayidx131, align 4, !dbg !2151
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2152
    #dbg_value(i32 %inc, !2015, !DIExpression(), !2013)
  br label %for.cond, !dbg !2153, !llvm.loop !2154

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2156
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyt1_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2157 {
entry:
    #dbg_value(ptr %r, !2158, !DIExpression(), !2159)
    #dbg_value(ptr %a, !2160, !DIExpression(), !2159)
    #dbg_value(i32 0, !2161, !DIExpression(), !2159)
  br label %for.cond, !dbg !2162

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2164
    #dbg_value(i32 %i.0, !2161, !DIExpression(), !2159)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !2165
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2167

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 2, !dbg !2168
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !2170
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2170
  %conv = trunc i32 %0 to i8, !dbg !2171
  %mul1 = mul nuw nsw i32 %i.0, 5, !dbg !2172
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %r, i32 %mul1, !dbg !2173
  store i8 %conv, ptr %arrayidx3, align 1, !dbg !2174
  %mul4 = shl nuw nsw i32 %i.0, 2, !dbg !2175
  %arrayidx6 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul4, !dbg !2176
  %1 = load i32, ptr %arrayidx6, align 4, !dbg !2176
  %shr7 = lshr i32 %1, 8, !dbg !2177
  %mul8 = shl nuw nsw i32 %i.0, 2, !dbg !2178
  %add9 = or disjoint i32 %mul8, 1, !dbg !2179
  %arrayidx10 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add9, !dbg !2180
  %2 = load i32, ptr %arrayidx10, align 4, !dbg !2180
  %shl = shl i32 %2, 2, !dbg !2181
  %or = or i32 %shr7, %shl, !dbg !2182
  %conv11 = trunc i32 %or to i8, !dbg !2183
  %mul12 = mul nuw nsw i32 %i.0, 5, !dbg !2184
  %3 = getelementptr inbounds nuw i8, ptr %r, i32 %mul12, !dbg !2185
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %3, i32 1, !dbg !2185
  store i8 %conv11, ptr %arrayidx14, align 1, !dbg !2186
  %mul15 = shl nuw nsw i32 %i.0, 2, !dbg !2187
  %add16 = or disjoint i32 %mul15, 1, !dbg !2188
  %arrayidx17 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add16, !dbg !2189
  %4 = load i32, ptr %arrayidx17, align 4, !dbg !2189
  %shr18 = lshr i32 %4, 6, !dbg !2190
  %mul19 = shl nuw nsw i32 %i.0, 2, !dbg !2191
  %add20 = or disjoint i32 %mul19, 2, !dbg !2192
  %arrayidx21 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add20, !dbg !2193
  %5 = load i32, ptr %arrayidx21, align 4, !dbg !2193
  %shl22 = shl i32 %5, 4, !dbg !2194
  %or23 = or i32 %shr18, %shl22, !dbg !2195
  %conv24 = trunc i32 %or23 to i8, !dbg !2196
  %mul25 = mul nuw nsw i32 %i.0, 5, !dbg !2197
  %6 = getelementptr inbounds nuw i8, ptr %r, i32 %mul25, !dbg !2198
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %6, i32 2, !dbg !2198
  store i8 %conv24, ptr %arrayidx27, align 1, !dbg !2199
  %mul28 = shl nuw nsw i32 %i.0, 2, !dbg !2200
  %add29 = or disjoint i32 %mul28, 2, !dbg !2201
  %arrayidx30 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add29, !dbg !2202
  %7 = load i32, ptr %arrayidx30, align 4, !dbg !2202
  %shr31 = lshr i32 %7, 4, !dbg !2203
  %mul32 = shl nuw nsw i32 %i.0, 2, !dbg !2204
  %add33 = or disjoint i32 %mul32, 3, !dbg !2205
  %arrayidx34 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add33, !dbg !2206
  %8 = load i32, ptr %arrayidx34, align 4, !dbg !2206
  %shl35 = shl i32 %8, 6, !dbg !2207
  %or36 = or i32 %shr31, %shl35, !dbg !2208
  %conv37 = trunc i32 %or36 to i8, !dbg !2209
  %mul38 = mul nuw nsw i32 %i.0, 5, !dbg !2210
  %9 = getelementptr inbounds nuw i8, ptr %r, i32 %mul38, !dbg !2211
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %9, i32 3, !dbg !2211
  store i8 %conv37, ptr %arrayidx40, align 1, !dbg !2212
  %mul41 = shl nuw nsw i32 %i.0, 2, !dbg !2213
  %add42 = or disjoint i32 %mul41, 3, !dbg !2214
  %arrayidx43 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add42, !dbg !2215
  %10 = load i32, ptr %arrayidx43, align 4, !dbg !2215
  %shr44 = lshr i32 %10, 2, !dbg !2216
  %conv45 = trunc i32 %shr44 to i8, !dbg !2217
  %mul46 = mul nuw nsw i32 %i.0, 5, !dbg !2218
  %11 = getelementptr inbounds nuw i8, ptr %r, i32 %mul46, !dbg !2219
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %11, i32 4, !dbg !2219
  store i8 %conv45, ptr %arrayidx48, align 1, !dbg !2220
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2221
    #dbg_value(i32 %inc, !2161, !DIExpression(), !2159)
  br label %for.cond, !dbg !2222, !llvm.loop !2223

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2225
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyt1_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2226 {
entry:
    #dbg_value(ptr %r, !2227, !DIExpression(), !2228)
    #dbg_value(ptr %a, !2229, !DIExpression(), !2228)
    #dbg_value(i32 0, !2230, !DIExpression(), !2228)
  br label %for.cond, !dbg !2231

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2233
    #dbg_value(i32 %i.0, !2230, !DIExpression(), !2228)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !2234
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2236

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 5, !dbg !2237
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %mul, !dbg !2239
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2239
  %conv = zext i8 %0 to i32, !dbg !2239
  %mul1 = mul nuw nsw i32 %i.0, 5, !dbg !2240
  %1 = getelementptr inbounds nuw i8, ptr %a, i32 %mul1, !dbg !2241
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %1, i32 1, !dbg !2241
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !2241
  %conv4 = zext i8 %2 to i32, !dbg !2242
  %shl = shl nuw nsw i32 %conv4, 8, !dbg !2243
  %shl.masked = and i32 %shl, 768, !dbg !2244
  %and = or disjoint i32 %shl.masked, %conv, !dbg !2244
  %mul5 = shl nuw nsw i32 %i.0, 2, !dbg !2245
  %arrayidx7 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul5, !dbg !2246
  store i32 %and, ptr %arrayidx7, align 4, !dbg !2247
  %mul8 = mul nuw nsw i32 %i.0, 5, !dbg !2248
  %3 = getelementptr inbounds nuw i8, ptr %a, i32 %mul8, !dbg !2249
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %3, i32 1, !dbg !2249
  %4 = load i8, ptr %arrayidx10, align 1, !dbg !2249
  %5 = lshr i8 %4, 2, !dbg !2250
  %shr12 = zext nneg i8 %5 to i32, !dbg !2250
  %mul13 = mul nuw nsw i32 %i.0, 5, !dbg !2251
  %6 = getelementptr inbounds nuw i8, ptr %a, i32 %mul13, !dbg !2252
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %6, i32 2, !dbg !2252
  %7 = load i8, ptr %arrayidx15, align 1, !dbg !2252
  %conv16 = zext i8 %7 to i32, !dbg !2253
  %shl17 = shl nuw nsw i32 %conv16, 6, !dbg !2254
  %shl17.masked = and i32 %shl17, 960, !dbg !2255
  %and19 = or disjoint i32 %shl17.masked, %shr12, !dbg !2255
  %mul20 = shl nuw nsw i32 %i.0, 2, !dbg !2256
  %add21 = or disjoint i32 %mul20, 1, !dbg !2257
  %arrayidx22 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add21, !dbg !2258
  store i32 %and19, ptr %arrayidx22, align 4, !dbg !2259
  %mul23 = mul nuw nsw i32 %i.0, 5, !dbg !2260
  %8 = getelementptr inbounds nuw i8, ptr %a, i32 %mul23, !dbg !2261
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %8, i32 2, !dbg !2261
  %9 = load i8, ptr %arrayidx25, align 1, !dbg !2261
  %10 = lshr i8 %9, 4, !dbg !2262
  %shr27 = zext nneg i8 %10 to i32, !dbg !2262
  %mul28 = mul nuw nsw i32 %i.0, 5, !dbg !2263
  %11 = getelementptr inbounds nuw i8, ptr %a, i32 %mul28, !dbg !2264
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %11, i32 3, !dbg !2264
  %12 = load i8, ptr %arrayidx30, align 1, !dbg !2264
  %conv31 = zext i8 %12 to i32, !dbg !2265
  %shl32 = shl nuw nsw i32 %conv31, 4, !dbg !2266
  %shl32.masked = and i32 %shl32, 1008, !dbg !2267
  %and34 = or disjoint i32 %shl32.masked, %shr27, !dbg !2267
  %mul35 = shl nuw nsw i32 %i.0, 2, !dbg !2268
  %add36 = or disjoint i32 %mul35, 2, !dbg !2269
  %arrayidx37 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add36, !dbg !2270
  store i32 %and34, ptr %arrayidx37, align 4, !dbg !2271
  %mul38 = mul nuw nsw i32 %i.0, 5, !dbg !2272
  %13 = getelementptr inbounds nuw i8, ptr %a, i32 %mul38, !dbg !2273
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %13, i32 3, !dbg !2273
  %14 = load i8, ptr %arrayidx40, align 1, !dbg !2273
  %15 = lshr i8 %14, 6, !dbg !2274
  %shr42 = zext nneg i8 %15 to i32, !dbg !2274
  %mul43 = mul nuw nsw i32 %i.0, 5, !dbg !2275
  %16 = getelementptr inbounds nuw i8, ptr %a, i32 %mul43, !dbg !2276
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %16, i32 4, !dbg !2276
  %17 = load i8, ptr %arrayidx45, align 1, !dbg !2276
  %conv46 = zext i8 %17 to i32, !dbg !2277
  %shl47 = shl nuw nsw i32 %conv46, 2, !dbg !2278
  %or48 = or disjoint i32 %shl47, %shr42, !dbg !2279
  %mul50 = shl nuw nsw i32 %i.0, 2, !dbg !2280
  %add51 = or disjoint i32 %mul50, 3, !dbg !2281
  %arrayidx52 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add51, !dbg !2282
  store i32 %or48, ptr %arrayidx52, align 4, !dbg !2283
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2284
    #dbg_value(i32 %inc, !2230, !DIExpression(), !2228)
  br label %for.cond, !dbg !2285, !llvm.loop !2286

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2288
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyt0_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2289 {
entry:
    #dbg_value(ptr %r, !2290, !DIExpression(), !2291)
    #dbg_value(ptr %a, !2292, !DIExpression(), !2291)
    #dbg_value(i32 0, !2293, !DIExpression(), !2291)
  br label %for.cond, !dbg !2294

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2296
    #dbg_value(i32 %i.0, !2293, !DIExpression(), !2291)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !2297
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2299

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !2300
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !2302
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2302
  %sub = sub nsw i32 4096, %0, !dbg !2303
    #dbg_value(i32 %sub, !2304, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2291)
  %mul2 = shl nuw nsw i32 %i.0, 3, !dbg !2306
  %add3 = or disjoint i32 %mul2, 1, !dbg !2307
  %arrayidx4 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add3, !dbg !2308
  %1 = load i32, ptr %arrayidx4, align 4, !dbg !2308
  %sub5 = sub nsw i32 4096, %1, !dbg !2309
    #dbg_value(i32 %sub5, !2304, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2291)
  %mul7 = shl nuw nsw i32 %i.0, 3, !dbg !2310
  %add8 = or disjoint i32 %mul7, 2, !dbg !2311
  %arrayidx9 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add8, !dbg !2312
  %2 = load i32, ptr %arrayidx9, align 4, !dbg !2312
  %sub10 = sub nsw i32 4096, %2, !dbg !2313
    #dbg_value(i32 %sub10, !2304, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2291)
  %mul12 = shl nuw nsw i32 %i.0, 3, !dbg !2314
  %add13 = or disjoint i32 %mul12, 3, !dbg !2315
  %arrayidx14 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add13, !dbg !2316
  %3 = load i32, ptr %arrayidx14, align 4, !dbg !2316
  %sub15 = sub nsw i32 4096, %3, !dbg !2317
    #dbg_value(i32 %sub15, !2304, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2291)
  %mul17 = shl nuw nsw i32 %i.0, 3, !dbg !2318
  %add18 = or disjoint i32 %mul17, 4, !dbg !2319
  %arrayidx19 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add18, !dbg !2320
  %4 = load i32, ptr %arrayidx19, align 4, !dbg !2320
  %sub20 = sub nsw i32 4096, %4, !dbg !2321
    #dbg_value(i32 %sub20, !2304, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !2291)
  %mul22 = shl nuw nsw i32 %i.0, 3, !dbg !2322
  %add23 = or disjoint i32 %mul22, 5, !dbg !2323
  %arrayidx24 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add23, !dbg !2324
  %5 = load i32, ptr %arrayidx24, align 4, !dbg !2324
  %sub25 = sub nsw i32 4096, %5, !dbg !2325
    #dbg_value(i32 %sub25, !2304, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !2291)
  %mul27 = shl nuw nsw i32 %i.0, 3, !dbg !2326
  %add28 = or disjoint i32 %mul27, 6, !dbg !2327
  %arrayidx29 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add28, !dbg !2328
  %6 = load i32, ptr %arrayidx29, align 4, !dbg !2328
  %sub30 = sub nsw i32 4096, %6, !dbg !2329
    #dbg_value(i32 %sub30, !2304, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !2291)
  %mul32 = shl nuw nsw i32 %i.0, 3, !dbg !2330
  %add33 = or disjoint i32 %mul32, 7, !dbg !2331
  %arrayidx34 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add33, !dbg !2332
  %7 = load i32, ptr %arrayidx34, align 4, !dbg !2332
  %sub35 = sub nsw i32 4096, %7, !dbg !2333
    #dbg_value(i32 %sub35, !2304, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !2291)
  %conv = trunc i32 %sub to i8, !dbg !2334
  %mul38 = mul nuw nsw i32 %i.0, 13, !dbg !2335
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %r, i32 %mul38, !dbg !2336
  store i8 %conv, ptr %arrayidx40, align 1, !dbg !2337
  %shr = lshr i32 %sub, 8, !dbg !2338
  %conv42 = trunc i32 %shr to i8, !dbg !2339
  %mul43 = mul nuw nsw i32 %i.0, 13, !dbg !2340
  %8 = getelementptr inbounds nuw i8, ptr %r, i32 %mul43, !dbg !2341
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %8, i32 1, !dbg !2341
  store i8 %conv42, ptr %arrayidx45, align 1, !dbg !2342
  %mul47 = mul nuw nsw i32 %i.0, 13, !dbg !2343
  %9 = getelementptr inbounds nuw i8, ptr %r, i32 %mul47, !dbg !2344
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %9, i32 1, !dbg !2344
  %10 = load i8, ptr %arrayidx49, align 1, !dbg !2345
  %sub5.tr = trunc i32 %sub5 to i8, !dbg !2345
  %11 = shl i8 %sub5.tr, 5, !dbg !2345
  %conv51 = or i8 %11, %10, !dbg !2345
  store i8 %conv51, ptr %arrayidx49, align 1, !dbg !2345
  %shr53 = lshr i32 %sub5, 3, !dbg !2346
  %conv54 = trunc i32 %shr53 to i8, !dbg !2347
  %mul55 = mul nuw nsw i32 %i.0, 13, !dbg !2348
  %12 = getelementptr inbounds nuw i8, ptr %r, i32 %mul55, !dbg !2349
  %arrayidx57 = getelementptr inbounds nuw i8, ptr %12, i32 2, !dbg !2349
  store i8 %conv54, ptr %arrayidx57, align 1, !dbg !2350
  %shr59 = lshr i32 %sub5, 11, !dbg !2351
  %conv60 = trunc i32 %shr59 to i8, !dbg !2352
  %mul61 = mul nuw nsw i32 %i.0, 13, !dbg !2353
  %13 = getelementptr inbounds nuw i8, ptr %r, i32 %mul61, !dbg !2354
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %13, i32 3, !dbg !2354
  store i8 %conv60, ptr %arrayidx63, align 1, !dbg !2355
  %mul66 = mul nuw nsw i32 %i.0, 13, !dbg !2356
  %14 = getelementptr inbounds nuw i8, ptr %r, i32 %mul66, !dbg !2357
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %14, i32 3, !dbg !2357
  %15 = load i8, ptr %arrayidx68, align 1, !dbg !2358
  %sub10.tr = trunc i32 %sub10 to i8, !dbg !2358
  %16 = shl i8 %sub10.tr, 2, !dbg !2358
  %conv71 = or i8 %16, %15, !dbg !2358
  store i8 %conv71, ptr %arrayidx68, align 1, !dbg !2358
  %shr73 = lshr i32 %sub10, 6, !dbg !2359
  %conv74 = trunc i32 %shr73 to i8, !dbg !2360
  %mul75 = mul nuw nsw i32 %i.0, 13, !dbg !2361
  %17 = getelementptr inbounds nuw i8, ptr %r, i32 %mul75, !dbg !2362
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %17, i32 4, !dbg !2362
  store i8 %conv74, ptr %arrayidx77, align 1, !dbg !2363
  %mul80 = mul nuw nsw i32 %i.0, 13, !dbg !2364
  %18 = getelementptr inbounds nuw i8, ptr %r, i32 %mul80, !dbg !2365
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %18, i32 4, !dbg !2365
  %19 = load i8, ptr %arrayidx82, align 1, !dbg !2366
  %sub15.tr = trunc i32 %sub15 to i8, !dbg !2366
  %20 = shl i8 %sub15.tr, 7, !dbg !2366
  %conv85 = or i8 %20, %19, !dbg !2366
  store i8 %conv85, ptr %arrayidx82, align 1, !dbg !2366
  %shr87 = lshr i32 %sub15, 1, !dbg !2367
  %conv88 = trunc i32 %shr87 to i8, !dbg !2368
  %mul89 = mul nuw nsw i32 %i.0, 13, !dbg !2369
  %21 = getelementptr inbounds nuw i8, ptr %r, i32 %mul89, !dbg !2370
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %21, i32 5, !dbg !2370
  store i8 %conv88, ptr %arrayidx91, align 1, !dbg !2371
  %shr93 = lshr i32 %sub15, 9, !dbg !2372
  %conv94 = trunc i32 %shr93 to i8, !dbg !2373
  %mul95 = mul nuw nsw i32 %i.0, 13, !dbg !2374
  %22 = getelementptr inbounds nuw i8, ptr %r, i32 %mul95, !dbg !2375
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %22, i32 6, !dbg !2375
  store i8 %conv94, ptr %arrayidx97, align 1, !dbg !2376
  %mul100 = mul nuw nsw i32 %i.0, 13, !dbg !2377
  %23 = getelementptr inbounds nuw i8, ptr %r, i32 %mul100, !dbg !2378
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %23, i32 6, !dbg !2378
  %24 = load i8, ptr %arrayidx102, align 1, !dbg !2379
  %sub20.tr = trunc i32 %sub20 to i8, !dbg !2379
  %25 = shl i8 %sub20.tr, 4, !dbg !2379
  %conv105 = or i8 %25, %24, !dbg !2379
  store i8 %conv105, ptr %arrayidx102, align 1, !dbg !2379
  %shr107 = lshr i32 %sub20, 4, !dbg !2380
  %conv108 = trunc i32 %shr107 to i8, !dbg !2381
  %mul109 = mul nuw nsw i32 %i.0, 13, !dbg !2382
  %26 = getelementptr inbounds nuw i8, ptr %r, i32 %mul109, !dbg !2383
  %arrayidx111 = getelementptr inbounds nuw i8, ptr %26, i32 7, !dbg !2383
  store i8 %conv108, ptr %arrayidx111, align 1, !dbg !2384
  %shr113 = lshr i32 %sub20, 12, !dbg !2385
  %conv114 = trunc i32 %shr113 to i8, !dbg !2386
  %mul115 = mul nuw nsw i32 %i.0, 13, !dbg !2387
  %27 = getelementptr inbounds nuw i8, ptr %r, i32 %mul115, !dbg !2388
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %27, i32 8, !dbg !2388
  store i8 %conv114, ptr %arrayidx117, align 1, !dbg !2389
  %mul120 = mul nuw nsw i32 %i.0, 13, !dbg !2390
  %28 = getelementptr inbounds nuw i8, ptr %r, i32 %mul120, !dbg !2391
  %arrayidx122 = getelementptr inbounds nuw i8, ptr %28, i32 8, !dbg !2391
  %29 = load i8, ptr %arrayidx122, align 1, !dbg !2392
  %sub25.tr = trunc i32 %sub25 to i8, !dbg !2392
  %30 = shl i8 %sub25.tr, 1, !dbg !2392
  %conv125 = or i8 %30, %29, !dbg !2392
  store i8 %conv125, ptr %arrayidx122, align 1, !dbg !2392
  %shr127 = lshr i32 %sub25, 7, !dbg !2393
  %conv128 = trunc i32 %shr127 to i8, !dbg !2394
  %mul129 = mul nuw nsw i32 %i.0, 13, !dbg !2395
  %31 = getelementptr inbounds nuw i8, ptr %r, i32 %mul129, !dbg !2396
  %arrayidx131 = getelementptr inbounds nuw i8, ptr %31, i32 9, !dbg !2396
  store i8 %conv128, ptr %arrayidx131, align 1, !dbg !2397
  %mul134 = mul nuw nsw i32 %i.0, 13, !dbg !2398
  %32 = getelementptr inbounds nuw i8, ptr %r, i32 %mul134, !dbg !2399
  %arrayidx136 = getelementptr inbounds nuw i8, ptr %32, i32 9, !dbg !2399
  %33 = load i8, ptr %arrayidx136, align 1, !dbg !2400
  %sub30.tr = trunc i32 %sub30 to i8, !dbg !2400
  %34 = shl i8 %sub30.tr, 6, !dbg !2400
  %conv139 = or i8 %34, %33, !dbg !2400
  store i8 %conv139, ptr %arrayidx136, align 1, !dbg !2400
  %shr141 = lshr i32 %sub30, 2, !dbg !2401
  %conv142 = trunc i32 %shr141 to i8, !dbg !2402
  %mul143 = mul nuw nsw i32 %i.0, 13, !dbg !2403
  %35 = getelementptr inbounds nuw i8, ptr %r, i32 %mul143, !dbg !2404
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %35, i32 10, !dbg !2404
  store i8 %conv142, ptr %arrayidx145, align 1, !dbg !2405
  %shr147 = lshr i32 %sub30, 10, !dbg !2406
  %conv148 = trunc i32 %shr147 to i8, !dbg !2407
  %mul149 = mul nuw nsw i32 %i.0, 13, !dbg !2408
  %36 = getelementptr inbounds nuw i8, ptr %r, i32 %mul149, !dbg !2409
  %arrayidx151 = getelementptr inbounds nuw i8, ptr %36, i32 11, !dbg !2409
  store i8 %conv148, ptr %arrayidx151, align 1, !dbg !2410
  %mul154 = mul nuw nsw i32 %i.0, 13, !dbg !2411
  %37 = getelementptr inbounds nuw i8, ptr %r, i32 %mul154, !dbg !2412
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %37, i32 11, !dbg !2412
  %38 = load i8, ptr %arrayidx156, align 1, !dbg !2413
  %sub35.tr = trunc i32 %sub35 to i8, !dbg !2413
  %39 = shl i8 %sub35.tr, 3, !dbg !2413
  %conv159 = or i8 %39, %38, !dbg !2413
  store i8 %conv159, ptr %arrayidx156, align 1, !dbg !2413
  %shr161 = lshr i32 %sub35, 5, !dbg !2414
  %conv162 = trunc i32 %shr161 to i8, !dbg !2415
  %mul163 = mul nuw nsw i32 %i.0, 13, !dbg !2416
  %40 = getelementptr inbounds nuw i8, ptr %r, i32 %mul163, !dbg !2417
  %arrayidx165 = getelementptr inbounds nuw i8, ptr %40, i32 12, !dbg !2417
  store i8 %conv162, ptr %arrayidx165, align 1, !dbg !2418
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2419
    #dbg_value(i32 %inc, !2293, !DIExpression(), !2291)
  br label %for.cond, !dbg !2420, !llvm.loop !2421

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2423
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyt0_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2424 {
entry:
    #dbg_value(ptr %r, !2425, !DIExpression(), !2426)
    #dbg_value(ptr %a, !2427, !DIExpression(), !2426)
    #dbg_value(i32 0, !2428, !DIExpression(), !2426)
  br label %for.cond, !dbg !2429

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2431
    #dbg_value(i32 %i.0, !2428, !DIExpression(), !2426)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !2432
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2434

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 13, !dbg !2435
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %mul, !dbg !2437
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2437
  %conv = zext i8 %0 to i32, !dbg !2437
  %mul1 = shl nuw nsw i32 %i.0, 3, !dbg !2438
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul1, !dbg !2439
  store i32 %conv, ptr %arrayidx3, align 4, !dbg !2440
  %mul4 = mul nuw nsw i32 %i.0, 13, !dbg !2441
  %1 = getelementptr inbounds nuw i8, ptr %a, i32 %mul4, !dbg !2442
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %1, i32 1, !dbg !2442
  %2 = load i8, ptr %arrayidx6, align 1, !dbg !2442
  %conv7 = zext i8 %2 to i32, !dbg !2443
  %shl = shl nuw nsw i32 %conv7, 8, !dbg !2444
  %mul8 = shl nuw nsw i32 %i.0, 3, !dbg !2445
  %arrayidx10 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul8, !dbg !2446
  %3 = load i32, ptr %arrayidx10, align 4, !dbg !2447
  %or = or i32 %3, %shl, !dbg !2447
  store i32 %or, ptr %arrayidx10, align 4, !dbg !2447
  %mul11 = shl nuw nsw i32 %i.0, 3, !dbg !2448
  %arrayidx13 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul11, !dbg !2449
  %4 = load i32, ptr %arrayidx13, align 4, !dbg !2450
  %and = and i32 %4, 8191, !dbg !2450
  store i32 %and, ptr %arrayidx13, align 4, !dbg !2450
  %mul14 = mul nuw nsw i32 %i.0, 13, !dbg !2451
  %5 = getelementptr inbounds nuw i8, ptr %a, i32 %mul14, !dbg !2452
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %5, i32 1, !dbg !2452
  %6 = load i8, ptr %arrayidx16, align 1, !dbg !2452
  %7 = lshr i8 %6, 5, !dbg !2453
  %shr = zext nneg i8 %7 to i32, !dbg !2453
  %mul18 = shl nuw nsw i32 %i.0, 3, !dbg !2454
  %add19 = or disjoint i32 %mul18, 1, !dbg !2455
  %arrayidx20 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add19, !dbg !2456
  store i32 %shr, ptr %arrayidx20, align 4, !dbg !2457
  %mul21 = mul nuw nsw i32 %i.0, 13, !dbg !2458
  %8 = getelementptr inbounds nuw i8, ptr %a, i32 %mul21, !dbg !2459
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %8, i32 2, !dbg !2459
  %9 = load i8, ptr %arrayidx23, align 1, !dbg !2459
  %conv24 = zext i8 %9 to i32, !dbg !2460
  %shl25 = shl nuw nsw i32 %conv24, 3, !dbg !2461
  %mul26 = shl nuw nsw i32 %i.0, 3, !dbg !2462
  %add27 = or disjoint i32 %mul26, 1, !dbg !2463
  %arrayidx28 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add27, !dbg !2464
  %10 = load i32, ptr %arrayidx28, align 4, !dbg !2465
  %or29 = or i32 %10, %shl25, !dbg !2465
  store i32 %or29, ptr %arrayidx28, align 4, !dbg !2465
  %mul30 = mul nuw nsw i32 %i.0, 13, !dbg !2466
  %11 = getelementptr inbounds nuw i8, ptr %a, i32 %mul30, !dbg !2467
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %11, i32 3, !dbg !2467
  %12 = load i8, ptr %arrayidx32, align 1, !dbg !2467
  %conv33 = zext i8 %12 to i32, !dbg !2468
  %shl34 = shl nuw nsw i32 %conv33, 11, !dbg !2469
  %mul35 = shl nuw nsw i32 %i.0, 3, !dbg !2470
  %add36 = or disjoint i32 %mul35, 1, !dbg !2471
  %arrayidx37 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add36, !dbg !2472
  %13 = load i32, ptr %arrayidx37, align 4, !dbg !2473
  %or38 = or i32 %13, %shl34, !dbg !2473
  store i32 %or38, ptr %arrayidx37, align 4, !dbg !2473
  %mul39 = shl nuw nsw i32 %i.0, 3, !dbg !2474
  %add40 = or disjoint i32 %mul39, 1, !dbg !2475
  %arrayidx41 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add40, !dbg !2476
  %14 = load i32, ptr %arrayidx41, align 4, !dbg !2477
  %and42 = and i32 %14, 8191, !dbg !2477
  store i32 %and42, ptr %arrayidx41, align 4, !dbg !2477
  %mul43 = mul nuw nsw i32 %i.0, 13, !dbg !2478
  %15 = getelementptr inbounds nuw i8, ptr %a, i32 %mul43, !dbg !2479
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %15, i32 3, !dbg !2479
  %16 = load i8, ptr %arrayidx45, align 1, !dbg !2479
  %17 = lshr i8 %16, 2, !dbg !2480
  %shr47 = zext nneg i8 %17 to i32, !dbg !2480
  %mul48 = shl nuw nsw i32 %i.0, 3, !dbg !2481
  %add49 = or disjoint i32 %mul48, 2, !dbg !2482
  %arrayidx50 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add49, !dbg !2483
  store i32 %shr47, ptr %arrayidx50, align 4, !dbg !2484
  %mul51 = mul nuw nsw i32 %i.0, 13, !dbg !2485
  %18 = getelementptr inbounds nuw i8, ptr %a, i32 %mul51, !dbg !2486
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %18, i32 4, !dbg !2486
  %19 = load i8, ptr %arrayidx53, align 1, !dbg !2486
  %conv54 = zext i8 %19 to i32, !dbg !2487
  %shl55 = shl nuw nsw i32 %conv54, 6, !dbg !2488
  %mul56 = shl nuw nsw i32 %i.0, 3, !dbg !2489
  %add57 = or disjoint i32 %mul56, 2, !dbg !2490
  %arrayidx58 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add57, !dbg !2491
  %20 = load i32, ptr %arrayidx58, align 4, !dbg !2492
  %or59 = or i32 %20, %shl55, !dbg !2492
  store i32 %or59, ptr %arrayidx58, align 4, !dbg !2492
  %mul60 = shl nuw nsw i32 %i.0, 3, !dbg !2493
  %add61 = or disjoint i32 %mul60, 2, !dbg !2494
  %arrayidx62 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add61, !dbg !2495
  %21 = load i32, ptr %arrayidx62, align 4, !dbg !2496
  %and63 = and i32 %21, 8191, !dbg !2496
  store i32 %and63, ptr %arrayidx62, align 4, !dbg !2496
  %mul64 = mul nuw nsw i32 %i.0, 13, !dbg !2497
  %22 = getelementptr inbounds nuw i8, ptr %a, i32 %mul64, !dbg !2498
  %arrayidx66 = getelementptr inbounds nuw i8, ptr %22, i32 4, !dbg !2498
  %23 = load i8, ptr %arrayidx66, align 1, !dbg !2498
  %24 = lshr i8 %23, 7, !dbg !2499
  %shr68 = zext nneg i8 %24 to i32, !dbg !2499
  %mul69 = shl nuw nsw i32 %i.0, 3, !dbg !2500
  %add70 = or disjoint i32 %mul69, 3, !dbg !2501
  %arrayidx71 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add70, !dbg !2502
  store i32 %shr68, ptr %arrayidx71, align 4, !dbg !2503
  %mul72 = mul nuw nsw i32 %i.0, 13, !dbg !2504
  %25 = getelementptr inbounds nuw i8, ptr %a, i32 %mul72, !dbg !2505
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %25, i32 5, !dbg !2505
  %26 = load i8, ptr %arrayidx74, align 1, !dbg !2505
  %conv75 = zext i8 %26 to i32, !dbg !2506
  %shl76 = shl nuw nsw i32 %conv75, 1, !dbg !2507
  %mul77 = shl nuw nsw i32 %i.0, 3, !dbg !2508
  %add78 = or disjoint i32 %mul77, 3, !dbg !2509
  %arrayidx79 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add78, !dbg !2510
  %27 = load i32, ptr %arrayidx79, align 4, !dbg !2511
  %or80 = or i32 %27, %shl76, !dbg !2511
  store i32 %or80, ptr %arrayidx79, align 4, !dbg !2511
  %mul81 = mul nuw nsw i32 %i.0, 13, !dbg !2512
  %28 = getelementptr inbounds nuw i8, ptr %a, i32 %mul81, !dbg !2513
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %28, i32 6, !dbg !2513
  %29 = load i8, ptr %arrayidx83, align 1, !dbg !2513
  %conv84 = zext i8 %29 to i32, !dbg !2514
  %shl85 = shl nuw nsw i32 %conv84, 9, !dbg !2515
  %mul86 = shl nuw nsw i32 %i.0, 3, !dbg !2516
  %add87 = or disjoint i32 %mul86, 3, !dbg !2517
  %arrayidx88 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add87, !dbg !2518
  %30 = load i32, ptr %arrayidx88, align 4, !dbg !2519
  %or89 = or i32 %30, %shl85, !dbg !2519
  store i32 %or89, ptr %arrayidx88, align 4, !dbg !2519
  %mul90 = shl nuw nsw i32 %i.0, 3, !dbg !2520
  %add91 = or disjoint i32 %mul90, 3, !dbg !2521
  %arrayidx92 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add91, !dbg !2522
  %31 = load i32, ptr %arrayidx92, align 4, !dbg !2523
  %and93 = and i32 %31, 8191, !dbg !2523
  store i32 %and93, ptr %arrayidx92, align 4, !dbg !2523
  %mul94 = mul nuw nsw i32 %i.0, 13, !dbg !2524
  %32 = getelementptr inbounds nuw i8, ptr %a, i32 %mul94, !dbg !2525
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %32, i32 6, !dbg !2525
  %33 = load i8, ptr %arrayidx96, align 1, !dbg !2525
  %34 = lshr i8 %33, 4, !dbg !2526
  %shr98 = zext nneg i8 %34 to i32, !dbg !2526
  %mul99 = shl nuw nsw i32 %i.0, 3, !dbg !2527
  %add100 = or disjoint i32 %mul99, 4, !dbg !2528
  %arrayidx101 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add100, !dbg !2529
  store i32 %shr98, ptr %arrayidx101, align 4, !dbg !2530
  %mul102 = mul nuw nsw i32 %i.0, 13, !dbg !2531
  %35 = getelementptr inbounds nuw i8, ptr %a, i32 %mul102, !dbg !2532
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %35, i32 7, !dbg !2532
  %36 = load i8, ptr %arrayidx104, align 1, !dbg !2532
  %conv105 = zext i8 %36 to i32, !dbg !2533
  %shl106 = shl nuw nsw i32 %conv105, 4, !dbg !2534
  %mul107 = shl nuw nsw i32 %i.0, 3, !dbg !2535
  %add108 = or disjoint i32 %mul107, 4, !dbg !2536
  %arrayidx109 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add108, !dbg !2537
  %37 = load i32, ptr %arrayidx109, align 4, !dbg !2538
  %or110 = or i32 %37, %shl106, !dbg !2538
  store i32 %or110, ptr %arrayidx109, align 4, !dbg !2538
  %mul111 = mul nuw nsw i32 %i.0, 13, !dbg !2539
  %38 = getelementptr inbounds nuw i8, ptr %a, i32 %mul111, !dbg !2540
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %38, i32 8, !dbg !2540
  %39 = load i8, ptr %arrayidx113, align 1, !dbg !2540
  %conv114 = zext i8 %39 to i32, !dbg !2541
  %shl115 = shl nuw nsw i32 %conv114, 12, !dbg !2542
  %mul116 = shl nuw nsw i32 %i.0, 3, !dbg !2543
  %add117 = or disjoint i32 %mul116, 4, !dbg !2544
  %arrayidx118 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add117, !dbg !2545
  %40 = load i32, ptr %arrayidx118, align 4, !dbg !2546
  %or119 = or i32 %40, %shl115, !dbg !2546
  store i32 %or119, ptr %arrayidx118, align 4, !dbg !2546
  %mul120 = shl nuw nsw i32 %i.0, 3, !dbg !2547
  %add121 = or disjoint i32 %mul120, 4, !dbg !2548
  %arrayidx122 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add121, !dbg !2549
  %41 = load i32, ptr %arrayidx122, align 4, !dbg !2550
  %and123 = and i32 %41, 8191, !dbg !2550
  store i32 %and123, ptr %arrayidx122, align 4, !dbg !2550
  %mul124 = mul nuw nsw i32 %i.0, 13, !dbg !2551
  %42 = getelementptr inbounds nuw i8, ptr %a, i32 %mul124, !dbg !2552
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %42, i32 8, !dbg !2552
  %43 = load i8, ptr %arrayidx126, align 1, !dbg !2552
  %44 = lshr i8 %43, 1, !dbg !2553
  %shr128 = zext nneg i8 %44 to i32, !dbg !2553
  %mul129 = shl nuw nsw i32 %i.0, 3, !dbg !2554
  %add130 = or disjoint i32 %mul129, 5, !dbg !2555
  %arrayidx131 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add130, !dbg !2556
  store i32 %shr128, ptr %arrayidx131, align 4, !dbg !2557
  %mul132 = mul nuw nsw i32 %i.0, 13, !dbg !2558
  %45 = getelementptr inbounds nuw i8, ptr %a, i32 %mul132, !dbg !2559
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %45, i32 9, !dbg !2559
  %46 = load i8, ptr %arrayidx134, align 1, !dbg !2559
  %conv135 = zext i8 %46 to i32, !dbg !2560
  %shl136 = shl nuw nsw i32 %conv135, 7, !dbg !2561
  %mul137 = shl nuw nsw i32 %i.0, 3, !dbg !2562
  %add138 = or disjoint i32 %mul137, 5, !dbg !2563
  %arrayidx139 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add138, !dbg !2564
  %47 = load i32, ptr %arrayidx139, align 4, !dbg !2565
  %or140 = or i32 %47, %shl136, !dbg !2565
  store i32 %or140, ptr %arrayidx139, align 4, !dbg !2565
  %mul141 = shl nuw nsw i32 %i.0, 3, !dbg !2566
  %add142 = or disjoint i32 %mul141, 5, !dbg !2567
  %arrayidx143 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add142, !dbg !2568
  %48 = load i32, ptr %arrayidx143, align 4, !dbg !2569
  %and144 = and i32 %48, 8191, !dbg !2569
  store i32 %and144, ptr %arrayidx143, align 4, !dbg !2569
  %mul145 = mul nuw nsw i32 %i.0, 13, !dbg !2570
  %49 = getelementptr inbounds nuw i8, ptr %a, i32 %mul145, !dbg !2571
  %arrayidx147 = getelementptr inbounds nuw i8, ptr %49, i32 9, !dbg !2571
  %50 = load i8, ptr %arrayidx147, align 1, !dbg !2571
  %51 = lshr i8 %50, 6, !dbg !2572
  %shr149 = zext nneg i8 %51 to i32, !dbg !2572
  %mul150 = shl nuw nsw i32 %i.0, 3, !dbg !2573
  %add151 = or disjoint i32 %mul150, 6, !dbg !2574
  %arrayidx152 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add151, !dbg !2575
  store i32 %shr149, ptr %arrayidx152, align 4, !dbg !2576
  %mul153 = mul nuw nsw i32 %i.0, 13, !dbg !2577
  %52 = getelementptr inbounds nuw i8, ptr %a, i32 %mul153, !dbg !2578
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %52, i32 10, !dbg !2578
  %53 = load i8, ptr %arrayidx155, align 1, !dbg !2578
  %conv156 = zext i8 %53 to i32, !dbg !2579
  %shl157 = shl nuw nsw i32 %conv156, 2, !dbg !2580
  %mul158 = shl nuw nsw i32 %i.0, 3, !dbg !2581
  %add159 = or disjoint i32 %mul158, 6, !dbg !2582
  %arrayidx160 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add159, !dbg !2583
  %54 = load i32, ptr %arrayidx160, align 4, !dbg !2584
  %or161 = or i32 %54, %shl157, !dbg !2584
  store i32 %or161, ptr %arrayidx160, align 4, !dbg !2584
  %mul162 = mul nuw nsw i32 %i.0, 13, !dbg !2585
  %55 = getelementptr inbounds nuw i8, ptr %a, i32 %mul162, !dbg !2586
  %arrayidx164 = getelementptr inbounds nuw i8, ptr %55, i32 11, !dbg !2586
  %56 = load i8, ptr %arrayidx164, align 1, !dbg !2586
  %conv165 = zext i8 %56 to i32, !dbg !2587
  %shl166 = shl nuw nsw i32 %conv165, 10, !dbg !2588
  %mul167 = shl nuw nsw i32 %i.0, 3, !dbg !2589
  %add168 = or disjoint i32 %mul167, 6, !dbg !2590
  %arrayidx169 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add168, !dbg !2591
  %57 = load i32, ptr %arrayidx169, align 4, !dbg !2592
  %or170 = or i32 %57, %shl166, !dbg !2592
  store i32 %or170, ptr %arrayidx169, align 4, !dbg !2592
  %mul171 = shl nuw nsw i32 %i.0, 3, !dbg !2593
  %add172 = or disjoint i32 %mul171, 6, !dbg !2594
  %arrayidx173 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add172, !dbg !2595
  %58 = load i32, ptr %arrayidx173, align 4, !dbg !2596
  %and174 = and i32 %58, 8191, !dbg !2596
  store i32 %and174, ptr %arrayidx173, align 4, !dbg !2596
  %mul175 = mul nuw nsw i32 %i.0, 13, !dbg !2597
  %59 = getelementptr inbounds nuw i8, ptr %a, i32 %mul175, !dbg !2598
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %59, i32 11, !dbg !2598
  %60 = load i8, ptr %arrayidx177, align 1, !dbg !2598
  %61 = lshr i8 %60, 3, !dbg !2599
  %shr179 = zext nneg i8 %61 to i32, !dbg !2599
  %mul180 = shl nuw nsw i32 %i.0, 3, !dbg !2600
  %add181 = or disjoint i32 %mul180, 7, !dbg !2601
  %arrayidx182 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add181, !dbg !2602
  store i32 %shr179, ptr %arrayidx182, align 4, !dbg !2603
  %mul183 = mul nuw nsw i32 %i.0, 13, !dbg !2604
  %62 = getelementptr inbounds nuw i8, ptr %a, i32 %mul183, !dbg !2605
  %arrayidx185 = getelementptr inbounds nuw i8, ptr %62, i32 12, !dbg !2605
  %63 = load i8, ptr %arrayidx185, align 1, !dbg !2605
  %conv186 = zext i8 %63 to i32, !dbg !2606
  %shl187 = shl nuw nsw i32 %conv186, 5, !dbg !2607
  %mul188 = shl nuw nsw i32 %i.0, 3, !dbg !2608
  %add189 = or disjoint i32 %mul188, 7, !dbg !2609
  %arrayidx190 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add189, !dbg !2610
  %64 = load i32, ptr %arrayidx190, align 4, !dbg !2611
  %or191 = or i32 %64, %shl187, !dbg !2611
  store i32 %or191, ptr %arrayidx190, align 4, !dbg !2611
  %mul192 = shl nuw nsw i32 %i.0, 3, !dbg !2612
  %add193 = or disjoint i32 %mul192, 7, !dbg !2613
  %arrayidx194 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add193, !dbg !2614
  %65 = load i32, ptr %arrayidx194, align 4, !dbg !2615
  %and195 = and i32 %65, 8191, !dbg !2615
  store i32 %and195, ptr %arrayidx194, align 4, !dbg !2615
  %mul196 = shl nuw nsw i32 %i.0, 3, !dbg !2616
  %arrayidx198 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul196, !dbg !2617
  %66 = load i32, ptr %arrayidx198, align 4, !dbg !2617
  %sub = sub nsw i32 4096, %66, !dbg !2618
  %mul199 = shl nuw nsw i32 %i.0, 3, !dbg !2619
  %arrayidx201 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul199, !dbg !2620
  store i32 %sub, ptr %arrayidx201, align 4, !dbg !2621
  %mul202 = shl nuw nsw i32 %i.0, 3, !dbg !2622
  %add203 = or disjoint i32 %mul202, 1, !dbg !2623
  %arrayidx204 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add203, !dbg !2624
  %67 = load i32, ptr %arrayidx204, align 4, !dbg !2624
  %sub205 = sub nsw i32 4096, %67, !dbg !2625
  %mul206 = shl nuw nsw i32 %i.0, 3, !dbg !2626
  %add207 = or disjoint i32 %mul206, 1, !dbg !2627
  %arrayidx208 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add207, !dbg !2628
  store i32 %sub205, ptr %arrayidx208, align 4, !dbg !2629
  %mul209 = shl nuw nsw i32 %i.0, 3, !dbg !2630
  %add210 = or disjoint i32 %mul209, 2, !dbg !2631
  %arrayidx211 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add210, !dbg !2632
  %68 = load i32, ptr %arrayidx211, align 4, !dbg !2632
  %sub212 = sub nsw i32 4096, %68, !dbg !2633
  %mul213 = shl nuw nsw i32 %i.0, 3, !dbg !2634
  %add214 = or disjoint i32 %mul213, 2, !dbg !2635
  %arrayidx215 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add214, !dbg !2636
  store i32 %sub212, ptr %arrayidx215, align 4, !dbg !2637
  %mul216 = shl nuw nsw i32 %i.0, 3, !dbg !2638
  %add217 = or disjoint i32 %mul216, 3, !dbg !2639
  %arrayidx218 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add217, !dbg !2640
  %69 = load i32, ptr %arrayidx218, align 4, !dbg !2640
  %sub219 = sub nsw i32 4096, %69, !dbg !2641
  %mul220 = shl nuw nsw i32 %i.0, 3, !dbg !2642
  %add221 = or disjoint i32 %mul220, 3, !dbg !2643
  %arrayidx222 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add221, !dbg !2644
  store i32 %sub219, ptr %arrayidx222, align 4, !dbg !2645
  %mul223 = shl nuw nsw i32 %i.0, 3, !dbg !2646
  %add224 = or disjoint i32 %mul223, 4, !dbg !2647
  %arrayidx225 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add224, !dbg !2648
  %70 = load i32, ptr %arrayidx225, align 4, !dbg !2648
  %sub226 = sub nsw i32 4096, %70, !dbg !2649
  %mul227 = shl nuw nsw i32 %i.0, 3, !dbg !2650
  %add228 = or disjoint i32 %mul227, 4, !dbg !2651
  %arrayidx229 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add228, !dbg !2652
  store i32 %sub226, ptr %arrayidx229, align 4, !dbg !2653
  %mul230 = shl nuw nsw i32 %i.0, 3, !dbg !2654
  %add231 = or disjoint i32 %mul230, 5, !dbg !2655
  %arrayidx232 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add231, !dbg !2656
  %71 = load i32, ptr %arrayidx232, align 4, !dbg !2656
  %sub233 = sub nsw i32 4096, %71, !dbg !2657
  %mul234 = shl nuw nsw i32 %i.0, 3, !dbg !2658
  %add235 = or disjoint i32 %mul234, 5, !dbg !2659
  %arrayidx236 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add235, !dbg !2660
  store i32 %sub233, ptr %arrayidx236, align 4, !dbg !2661
  %mul237 = shl nuw nsw i32 %i.0, 3, !dbg !2662
  %add238 = or disjoint i32 %mul237, 6, !dbg !2663
  %arrayidx239 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add238, !dbg !2664
  %72 = load i32, ptr %arrayidx239, align 4, !dbg !2664
  %sub240 = sub nsw i32 4096, %72, !dbg !2665
  %mul241 = shl nuw nsw i32 %i.0, 3, !dbg !2666
  %add242 = or disjoint i32 %mul241, 6, !dbg !2667
  %arrayidx243 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add242, !dbg !2668
  store i32 %sub240, ptr %arrayidx243, align 4, !dbg !2669
  %mul244 = shl nuw nsw i32 %i.0, 3, !dbg !2670
  %add245 = or disjoint i32 %mul244, 7, !dbg !2671
  %arrayidx246 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add245, !dbg !2672
  %73 = load i32, ptr %arrayidx246, align 4, !dbg !2672
  %sub247 = sub nsw i32 4096, %73, !dbg !2673
  %mul248 = shl nuw nsw i32 %i.0, 3, !dbg !2674
  %add249 = or disjoint i32 %mul248, 7, !dbg !2675
  %arrayidx250 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add249, !dbg !2676
  store i32 %sub247, ptr %arrayidx250, align 4, !dbg !2677
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2678
    #dbg_value(i32 %inc, !2428, !DIExpression(), !2426)
  br label %for.cond, !dbg !2679, !llvm.loop !2680

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2682
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyz_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2683 {
entry:
    #dbg_value(ptr %r, !2684, !DIExpression(), !2685)
    #dbg_value(ptr %a, !2686, !DIExpression(), !2685)
    #dbg_value(i32 0, !2687, !DIExpression(), !2685)
  br label %for.cond, !dbg !2688

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2690
    #dbg_value(i32 %i.0, !2687, !DIExpression(), !2685)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !2691
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2693

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 2, !dbg !2694
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !2696
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2696
  %sub = sub nsw i32 131072, %0, !dbg !2697
    #dbg_value(i32 %sub, !2698, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2685)
  %mul2 = shl nuw nsw i32 %i.0, 2, !dbg !2700
  %add3 = or disjoint i32 %mul2, 1, !dbg !2701
  %arrayidx4 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add3, !dbg !2702
  %1 = load i32, ptr %arrayidx4, align 4, !dbg !2702
  %sub5 = sub nsw i32 131072, %1, !dbg !2703
    #dbg_value(i32 %sub5, !2698, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2685)
  %mul7 = shl nuw nsw i32 %i.0, 2, !dbg !2704
  %add8 = or disjoint i32 %mul7, 2, !dbg !2705
  %arrayidx9 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add8, !dbg !2706
  %2 = load i32, ptr %arrayidx9, align 4, !dbg !2706
  %sub10 = sub nsw i32 131072, %2, !dbg !2707
    #dbg_value(i32 %sub10, !2698, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2685)
  %mul12 = shl nuw nsw i32 %i.0, 2, !dbg !2708
  %add13 = or disjoint i32 %mul12, 3, !dbg !2709
  %arrayidx14 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add13, !dbg !2710
  %3 = load i32, ptr %arrayidx14, align 4, !dbg !2710
  %sub15 = sub nsw i32 131072, %3, !dbg !2711
    #dbg_value(i32 %sub15, !2698, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2685)
  %conv = trunc i32 %sub to i8, !dbg !2712
  %mul18 = mul nuw nsw i32 %i.0, 9, !dbg !2713
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %r, i32 %mul18, !dbg !2714
  store i8 %conv, ptr %arrayidx20, align 1, !dbg !2715
  %shr = lshr i32 %sub, 8, !dbg !2716
  %conv22 = trunc i32 %shr to i8, !dbg !2717
  %mul23 = mul nuw nsw i32 %i.0, 9, !dbg !2718
  %4 = getelementptr inbounds nuw i8, ptr %r, i32 %mul23, !dbg !2719
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %4, i32 1, !dbg !2719
  store i8 %conv22, ptr %arrayidx25, align 1, !dbg !2720
  %shr27 = lshr i32 %sub, 16, !dbg !2721
  %conv28 = trunc i32 %shr27 to i8, !dbg !2722
  %mul29 = mul nuw nsw i32 %i.0, 9, !dbg !2723
  %5 = getelementptr inbounds nuw i8, ptr %r, i32 %mul29, !dbg !2724
  %arrayidx31 = getelementptr inbounds nuw i8, ptr %5, i32 2, !dbg !2724
  store i8 %conv28, ptr %arrayidx31, align 1, !dbg !2725
  %mul33 = mul nuw nsw i32 %i.0, 9, !dbg !2726
  %6 = getelementptr inbounds nuw i8, ptr %r, i32 %mul33, !dbg !2727
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %6, i32 2, !dbg !2727
  %7 = load i8, ptr %arrayidx35, align 1, !dbg !2728
  %sub5.tr = trunc i32 %sub5 to i8, !dbg !2728
  %8 = shl i8 %sub5.tr, 2, !dbg !2728
  %conv37 = or i8 %8, %7, !dbg !2728
  store i8 %conv37, ptr %arrayidx35, align 1, !dbg !2728
  %shr39 = lshr i32 %sub5, 6, !dbg !2729
  %conv40 = trunc i32 %shr39 to i8, !dbg !2730
  %mul41 = mul nuw nsw i32 %i.0, 9, !dbg !2731
  %9 = getelementptr inbounds nuw i8, ptr %r, i32 %mul41, !dbg !2732
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %9, i32 3, !dbg !2732
  store i8 %conv40, ptr %arrayidx43, align 1, !dbg !2733
  %shr45 = lshr i32 %sub5, 14, !dbg !2734
  %conv46 = trunc i32 %shr45 to i8, !dbg !2735
  %mul47 = mul nuw nsw i32 %i.0, 9, !dbg !2736
  %10 = getelementptr inbounds nuw i8, ptr %r, i32 %mul47, !dbg !2737
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %10, i32 4, !dbg !2737
  store i8 %conv46, ptr %arrayidx49, align 1, !dbg !2738
  %mul52 = mul nuw nsw i32 %i.0, 9, !dbg !2739
  %11 = getelementptr inbounds nuw i8, ptr %r, i32 %mul52, !dbg !2740
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %11, i32 4, !dbg !2740
  %12 = load i8, ptr %arrayidx54, align 1, !dbg !2741
  %sub10.tr = trunc i32 %sub10 to i8, !dbg !2741
  %13 = shl i8 %sub10.tr, 4, !dbg !2741
  %conv57 = or i8 %13, %12, !dbg !2741
  store i8 %conv57, ptr %arrayidx54, align 1, !dbg !2741
  %shr59 = lshr i32 %sub10, 4, !dbg !2742
  %conv60 = trunc i32 %shr59 to i8, !dbg !2743
  %mul61 = mul nuw nsw i32 %i.0, 9, !dbg !2744
  %14 = getelementptr inbounds nuw i8, ptr %r, i32 %mul61, !dbg !2745
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %14, i32 5, !dbg !2745
  store i8 %conv60, ptr %arrayidx63, align 1, !dbg !2746
  %shr65 = lshr i32 %sub10, 12, !dbg !2747
  %conv66 = trunc i32 %shr65 to i8, !dbg !2748
  %mul67 = mul nuw nsw i32 %i.0, 9, !dbg !2749
  %15 = getelementptr inbounds nuw i8, ptr %r, i32 %mul67, !dbg !2750
  %arrayidx69 = getelementptr inbounds nuw i8, ptr %15, i32 6, !dbg !2750
  store i8 %conv66, ptr %arrayidx69, align 1, !dbg !2751
  %mul72 = mul nuw nsw i32 %i.0, 9, !dbg !2752
  %16 = getelementptr inbounds nuw i8, ptr %r, i32 %mul72, !dbg !2753
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %16, i32 6, !dbg !2753
  %17 = load i8, ptr %arrayidx74, align 1, !dbg !2754
  %sub15.tr = trunc i32 %sub15 to i8, !dbg !2754
  %18 = shl i8 %sub15.tr, 6, !dbg !2754
  %conv77 = or i8 %18, %17, !dbg !2754
  store i8 %conv77, ptr %arrayidx74, align 1, !dbg !2754
  %shr79 = lshr i32 %sub15, 2, !dbg !2755
  %conv80 = trunc i32 %shr79 to i8, !dbg !2756
  %mul81 = mul nuw nsw i32 %i.0, 9, !dbg !2757
  %19 = getelementptr inbounds nuw i8, ptr %r, i32 %mul81, !dbg !2758
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %19, i32 7, !dbg !2758
  store i8 %conv80, ptr %arrayidx83, align 1, !dbg !2759
  %shr85 = lshr i32 %sub15, 10, !dbg !2760
  %conv86 = trunc i32 %shr85 to i8, !dbg !2761
  %mul87 = mul nuw nsw i32 %i.0, 9, !dbg !2762
  %20 = getelementptr inbounds nuw i8, ptr %r, i32 %mul87, !dbg !2763
  %arrayidx89 = getelementptr inbounds nuw i8, ptr %20, i32 8, !dbg !2763
  store i8 %conv86, ptr %arrayidx89, align 1, !dbg !2764
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2765
    #dbg_value(i32 %inc, !2687, !DIExpression(), !2685)
  br label %for.cond, !dbg !2766, !llvm.loop !2767

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2769
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_polyw1_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2770 {
entry:
    #dbg_value(ptr %r, !2771, !DIExpression(), !2772)
    #dbg_value(ptr %a, !2773, !DIExpression(), !2772)
    #dbg_value(i32 0, !2774, !DIExpression(), !2772)
  br label %for.cond, !dbg !2775

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2777
    #dbg_value(i32 %i.0, !2774, !DIExpression(), !2772)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !2778
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2780

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 2, !dbg !2781
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !2783
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2783
  %conv = trunc i32 %0 to i8, !dbg !2783
  %mul1 = mul nuw nsw i32 %i.0, 3, !dbg !2784
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %r, i32 %mul1, !dbg !2785
  store i8 %conv, ptr %arrayidx3, align 1, !dbg !2786
  %mul4 = shl nuw nsw i32 %i.0, 2, !dbg !2787
  %add5 = or disjoint i32 %mul4, 1, !dbg !2788
  %arrayidx6 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add5, !dbg !2789
  %1 = load i32, ptr %arrayidx6, align 4, !dbg !2789
  %mul7 = mul nuw nsw i32 %i.0, 3, !dbg !2790
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %r, i32 %mul7, !dbg !2791
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !2792
  %.tr = trunc i32 %1 to i8, !dbg !2792
  %3 = shl i8 %.tr, 6, !dbg !2792
  %conv11 = or i8 %3, %2, !dbg !2792
  store i8 %conv11, ptr %arrayidx9, align 1, !dbg !2792
  %mul12 = shl nuw nsw i32 %i.0, 2, !dbg !2793
  %add13 = or disjoint i32 %mul12, 1, !dbg !2794
  %arrayidx14 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add13, !dbg !2795
  %4 = load i32, ptr %arrayidx14, align 4, !dbg !2795
  %shr = lshr i32 %4, 2, !dbg !2796
  %conv15 = trunc i32 %shr to i8, !dbg !2795
  %mul16 = mul nuw nsw i32 %i.0, 3, !dbg !2797
  %5 = getelementptr inbounds nuw i8, ptr %r, i32 %mul16, !dbg !2798
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %5, i32 1, !dbg !2798
  store i8 %conv15, ptr %arrayidx18, align 1, !dbg !2799
  %mul19 = shl nuw nsw i32 %i.0, 2, !dbg !2800
  %add20 = or disjoint i32 %mul19, 2, !dbg !2801
  %arrayidx21 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add20, !dbg !2802
  %6 = load i32, ptr %arrayidx21, align 4, !dbg !2802
  %mul23 = mul nuw nsw i32 %i.0, 3, !dbg !2803
  %7 = getelementptr inbounds nuw i8, ptr %r, i32 %mul23, !dbg !2804
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %7, i32 1, !dbg !2804
  %8 = load i8, ptr %arrayidx25, align 1, !dbg !2805
  %.tr1 = trunc i32 %6 to i8, !dbg !2805
  %9 = shl i8 %.tr1, 4, !dbg !2805
  %conv28 = or i8 %9, %8, !dbg !2805
  store i8 %conv28, ptr %arrayidx25, align 1, !dbg !2805
  %mul29 = shl nuw nsw i32 %i.0, 2, !dbg !2806
  %add30 = or disjoint i32 %mul29, 2, !dbg !2807
  %arrayidx31 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add30, !dbg !2808
  %10 = load i32, ptr %arrayidx31, align 4, !dbg !2808
  %shr32 = lshr i32 %10, 4, !dbg !2809
  %conv33 = trunc i32 %shr32 to i8, !dbg !2808
  %mul34 = mul nuw nsw i32 %i.0, 3, !dbg !2810
  %11 = getelementptr inbounds nuw i8, ptr %r, i32 %mul34, !dbg !2811
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %11, i32 2, !dbg !2811
  store i8 %conv33, ptr %arrayidx36, align 1, !dbg !2812
  %mul37 = shl nuw nsw i32 %i.0, 2, !dbg !2813
  %add38 = or disjoint i32 %mul37, 3, !dbg !2814
  %arrayidx39 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add38, !dbg !2815
  %12 = load i32, ptr %arrayidx39, align 4, !dbg !2815
  %mul41 = mul nuw nsw i32 %i.0, 3, !dbg !2816
  %13 = getelementptr inbounds nuw i8, ptr %r, i32 %mul41, !dbg !2817
  %arrayidx43 = getelementptr inbounds nuw i8, ptr %13, i32 2, !dbg !2817
  %14 = load i8, ptr %arrayidx43, align 1, !dbg !2818
  %.tr2 = trunc i32 %12 to i8, !dbg !2818
  %15 = shl i8 %.tr2, 2, !dbg !2818
  %conv46 = or i8 %15, %14, !dbg !2818
  store i8 %conv46, ptr %arrayidx43, align 1, !dbg !2818
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2819
    #dbg_value(i32 %inc, !2774, !DIExpression(), !2772)
  br label %for.cond, !dbg !2820, !llvm.loop !2821

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2823
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_ntt(ptr noundef %a) local_unnamed_addr #0 !dbg !2824 {
entry:
    #dbg_value(ptr %a, !2827, !DIExpression(), !2828)
    #dbg_value(i32 0, !2829, !DIExpression(), !2828)
    #dbg_value(i32 128, !2830, !DIExpression(), !2828)
  br label %for.cond, !dbg !2831

for.cond:                                         ; preds = %for.inc20, %entry
  %len.0 = phi i32 [ 128, %entry ], [ %shr, %for.inc20 ], !dbg !2833
  %k.0 = phi i32 [ 0, %entry ], [ %k.1.lcssa, %for.inc20 ], !dbg !2834
    #dbg_value(i32 %k.0, !2829, !DIExpression(), !2828)
    #dbg_value(i32 %len.0, !2830, !DIExpression(), !2828)
  %cmp.not = icmp eq i32 %len.0, 0, !dbg !2835
  br i1 %cmp.not, label %for.end21, label %for.cond1.preheader, !dbg !2837

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2838

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc17
  %start.0 = phi i32 [ %add18, %for.inc17 ], [ 0, %for.cond1.preheader ], !dbg !2841
  %k.1 = phi i32 [ %inc, %for.inc17 ], [ %k.0, %for.cond1.preheader ], !dbg !2828
    #dbg_value(i32 %k.1, !2829, !DIExpression(), !2828)
    #dbg_value(i32 %start.0, !2842, !DIExpression(), !2828)
  %cmp2 = icmp ult i32 %start.0, 256, !dbg !2843
  br i1 %cmp2, label %for.body3, label %for.inc20, !dbg !2838

for.body3:                                        ; preds = %for.cond1
  %inc = add i32 %k.1, 1, !dbg !2845
    #dbg_value(i32 %inc, !2829, !DIExpression(), !2828)
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @zetas, i32 0, i32 %inc, !dbg !2847
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2847
    #dbg_value(i32 %0, !2848, !DIExpression(), !2828)
    #dbg_value(i32 %start.0, !2849, !DIExpression(), !2828)
  br label %for.cond4, !dbg !2850

for.cond4:                                        ; preds = %for.body6, %for.body3
  %j.0 = phi i32 [ %start.0, %for.body3 ], [ %inc16, %for.body6 ], !dbg !2852
    #dbg_value(i32 %j.0, !2849, !DIExpression(), !2828)
  %add = add nuw nsw i32 %start.0, %len.0, !dbg !2853
  %cmp5 = icmp ult i32 %j.0, %add, !dbg !2855
  br i1 %cmp5, label %for.body6, label %for.inc17, !dbg !2856

for.body6:                                        ; preds = %for.cond4
  %conv = sext i32 %0 to i64, !dbg !2857
  %1 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2859
  %arrayidx8 = getelementptr i32, ptr %1, i32 %len.0, !dbg !2859
  %2 = load i32, ptr %arrayidx8, align 4, !dbg !2859
  %conv9 = sext i32 %2 to i64, !dbg !2859
  %mul = mul nsw i64 %conv, %conv9, !dbg !2860
  %call = call i32 @pqcrystals_dilithium2_ref_montgomery_reduce(i64 noundef %mul) #4, !dbg !2861
    #dbg_value(i32 %call, !2862, !DIExpression(), !2828)
  %arrayidx10 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2863
  %3 = load i32, ptr %arrayidx10, align 4, !dbg !2863
  %sub = sub nsw i32 %3, %call, !dbg !2864
  %4 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2865
  %arrayidx12 = getelementptr i32, ptr %4, i32 %len.0, !dbg !2865
  store i32 %sub, ptr %arrayidx12, align 4, !dbg !2866
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2867
  %5 = load i32, ptr %arrayidx13, align 4, !dbg !2867
  %add14 = add nsw i32 %5, %call, !dbg !2868
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2869
  store i32 %add14, ptr %arrayidx15, align 4, !dbg !2870
  %inc16 = add nuw i32 %j.0, 1, !dbg !2871
    #dbg_value(i32 %inc16, !2849, !DIExpression(), !2828)
  br label %for.cond4, !dbg !2872, !llvm.loop !2873

for.inc17:                                        ; preds = %for.cond4
  %j.0.lcssa = phi i32 [ %j.0, %for.cond4 ], !dbg !2852
  %add18 = add i32 %j.0.lcssa, %len.0, !dbg !2875
    #dbg_value(i32 %add18, !2842, !DIExpression(), !2828)
  br label %for.cond1, !dbg !2876, !llvm.loop !2877

for.inc20:                                        ; preds = %for.cond1
  %k.1.lcssa = phi i32 [ %k.1, %for.cond1 ], !dbg !2828
  %shr = lshr i32 %len.0, 1, !dbg !2879
    #dbg_value(i32 %shr, !2830, !DIExpression(), !2828)
  br label %for.cond, !dbg !2880, !llvm.loop !2881

for.end21:                                        ; preds = %for.cond
  ret void, !dbg !2883
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_invntt_tomont(ptr noundef %a) local_unnamed_addr #0 !dbg !2884 {
entry:
    #dbg_value(ptr %a, !2885, !DIExpression(), !2886)
    #dbg_value(i32 41978, !2887, !DIExpression(), !2886)
    #dbg_value(i32 256, !2888, !DIExpression(), !2886)
    #dbg_value(i32 1, !2889, !DIExpression(), !2886)
  br label %for.cond, !dbg !2890

for.cond:                                         ; preds = %for.inc25, %entry
  %len.0 = phi i32 [ 1, %entry ], [ %shl, %for.inc25 ], !dbg !2892
  %k.0 = phi i32 [ 256, %entry ], [ %k.1.lcssa, %for.inc25 ], !dbg !2893
    #dbg_value(i32 %k.0, !2888, !DIExpression(), !2886)
    #dbg_value(i32 %len.0, !2889, !DIExpression(), !2886)
  %cmp = icmp samesign ult i32 %len.0, 256, !dbg !2894
  br i1 %cmp, label %for.cond1.preheader, label %for.cond27.preheader, !dbg !2896

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2897

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !2900

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc22
  %start.0 = phi i32 [ %add23, %for.inc22 ], [ 0, %for.cond1.preheader ], !dbg !2902
  %k.1 = phi i32 [ %dec, %for.inc22 ], [ %k.0, %for.cond1.preheader ], !dbg !2886
    #dbg_value(i32 %k.1, !2888, !DIExpression(), !2886)
    #dbg_value(i32 %start.0, !2903, !DIExpression(), !2886)
  %cmp2 = icmp ult i32 %start.0, 256, !dbg !2904
  br i1 %cmp2, label %for.body3, label %for.inc25, !dbg !2897

for.body3:                                        ; preds = %for.cond1
  %dec = add i32 %k.1, -1, !dbg !2906
    #dbg_value(i32 %dec, !2888, !DIExpression(), !2886)
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @zetas, i32 0, i32 %dec, !dbg !2908
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2908
  %sub = sub nsw i32 0, %0, !dbg !2909
    #dbg_value(i32 %sub, !2910, !DIExpression(), !2886)
    #dbg_value(i32 %start.0, !2911, !DIExpression(), !2886)
  br label %for.cond4, !dbg !2912

for.cond4:                                        ; preds = %for.body6, %for.body3
  %j.0 = phi i32 [ %start.0, %for.body3 ], [ %inc, %for.body6 ], !dbg !2914
    #dbg_value(i32 %j.0, !2911, !DIExpression(), !2886)
  %add = add nuw nsw i32 %start.0, %len.0, !dbg !2915
  %cmp5 = icmp ult i32 %j.0, %add, !dbg !2917
  br i1 %cmp5, label %for.body6, label %for.inc22, !dbg !2918

for.body6:                                        ; preds = %for.cond4
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2919
  %1 = load i32, ptr %arrayidx7, align 4, !dbg !2919
    #dbg_value(i32 %1, !2921, !DIExpression(), !2886)
  %2 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2922
  %arrayidx9 = getelementptr i32, ptr %2, i32 %len.0, !dbg !2922
  %3 = load i32, ptr %arrayidx9, align 4, !dbg !2922
  %add10 = add nsw i32 %1, %3, !dbg !2923
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2924
  store i32 %add10, ptr %arrayidx11, align 4, !dbg !2925
  %4 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2926
  %arrayidx13 = getelementptr i32, ptr %4, i32 %len.0, !dbg !2926
  %5 = load i32, ptr %arrayidx13, align 4, !dbg !2926
  %sub14 = sub nsw i32 %1, %5, !dbg !2927
  %6 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2928
  %arrayidx16 = getelementptr i32, ptr %6, i32 %len.0, !dbg !2928
  store i32 %sub14, ptr %arrayidx16, align 4, !dbg !2929
  %conv = sext i32 %sub to i64, !dbg !2930
  %7 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2931
  %arrayidx18 = getelementptr i32, ptr %7, i32 %len.0, !dbg !2931
  %8 = load i32, ptr %arrayidx18, align 4, !dbg !2931
  %conv19 = sext i32 %8 to i64, !dbg !2931
  %mul = mul nsw i64 %conv, %conv19, !dbg !2932
  %call = call i32 @pqcrystals_dilithium2_ref_montgomery_reduce(i64 noundef %mul) #4, !dbg !2933
  %9 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2934
  %arrayidx21 = getelementptr i32, ptr %9, i32 %len.0, !dbg !2934
  store i32 %call, ptr %arrayidx21, align 4, !dbg !2935
  %inc = add nuw i32 %j.0, 1, !dbg !2936
    #dbg_value(i32 %inc, !2911, !DIExpression(), !2886)
  br label %for.cond4, !dbg !2937, !llvm.loop !2938

for.inc22:                                        ; preds = %for.cond4
  %j.0.lcssa = phi i32 [ %j.0, %for.cond4 ], !dbg !2914
  %add23 = add i32 %j.0.lcssa, %len.0, !dbg !2940
    #dbg_value(i32 %add23, !2903, !DIExpression(), !2886)
  br label %for.cond1, !dbg !2941, !llvm.loop !2942

for.inc25:                                        ; preds = %for.cond1
  %k.1.lcssa = phi i32 [ %k.1, %for.cond1 ], !dbg !2886
  %shl = shl nuw nsw i32 %len.0, 1, !dbg !2944
    #dbg_value(i32 %shl, !2889, !DIExpression(), !2886)
  br label %for.cond, !dbg !2945, !llvm.loop !2946

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %j.1 = phi i32 [ %inc37, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !2948
    #dbg_value(i32 %j.1, !2911, !DIExpression(), !2886)
  %exitcond = icmp ne i32 %j.1, 256, !dbg !2949
  br i1 %exitcond, label %for.body30, label %for.end38, !dbg !2900

for.body30:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw i32, ptr %a, i32 %j.1, !dbg !2951
  %10 = load i32, ptr %arrayidx31, align 4, !dbg !2951
  %conv32 = sext i32 %10 to i64, !dbg !2951
  %mul33 = mul nsw i64 %conv32, 41978, !dbg !2953
  %call34 = call i32 @pqcrystals_dilithium2_ref_montgomery_reduce(i64 noundef %mul33) #4, !dbg !2954
  %arrayidx35 = getelementptr inbounds nuw i32, ptr %a, i32 %j.1, !dbg !2955
  store i32 %call34, ptr %arrayidx35, align 4, !dbg !2956
  %inc37 = add nuw nsw i32 %j.1, 1, !dbg !2957
    #dbg_value(i32 %inc37, !2911, !DIExpression(), !2886)
  br label %for.cond27, !dbg !2958, !llvm.loop !2959

for.end38:                                        ; preds = %for.cond27
  ret void, !dbg !2961
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium2_ref_montgomery_reduce(i64 noundef %a) local_unnamed_addr #0 !dbg !2962 {
entry:
    #dbg_value(i64 %a, !2966, !DIExpression(), !2967)
  %0 = trunc i64 %a to i32, !dbg !2968
  %conv2 = mul i32 %0, 58728449, !dbg !2968
    #dbg_value(i32 %conv2, !2969, !DIExpression(), !2967)
  %conv3 = sext i32 %conv2 to i64, !dbg !2970
  %mul4.neg = mul nsw i64 %conv3, -8380417, !dbg !2971
  %sub = add i64 %mul4.neg, %a, !dbg !2972
  %shr = lshr i64 %sub, 32, !dbg !2973
  %conv5 = trunc nuw i64 %shr to i32, !dbg !2974
    #dbg_value(i32 %conv5, !2969, !DIExpression(), !2967)
  ret i32 %conv5, !dbg !2975
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium2_ref_reduce32(i32 noundef %a) local_unnamed_addr #0 !dbg !2976 {
entry:
    #dbg_value(i32 %a, !2979, !DIExpression(), !2980)
  %add = add nsw i32 %a, 4194304, !dbg !2981
  %shr = ashr i32 %add, 23, !dbg !2982
    #dbg_value(i32 %shr, !2983, !DIExpression(), !2980)
  %mul.neg = mul nsw i32 %shr, -8380417, !dbg !2984
  %sub = add i32 %mul.neg, %a, !dbg !2985
    #dbg_value(i32 %sub, !2983, !DIExpression(), !2980)
  ret i32 %sub, !dbg !2986
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium2_ref_caddq(i32 noundef %a) local_unnamed_addr #0 !dbg !2987 {
entry:
    #dbg_value(i32 %a, !2988, !DIExpression(), !2989)
  %isneg = icmp slt i32 %a, 0, !dbg !2990
  %and = select i1 %isneg, i32 8380417, i32 0, !dbg !2990
  %add = add nsw i32 %a, %and, !dbg !2991
    #dbg_value(i32 %add, !2988, !DIExpression(), !2989)
  ret i32 %add, !dbg !2992
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium2_ref_freeze(i32 noundef %a) local_unnamed_addr #0 !dbg !2993 {
entry:
    #dbg_value(i32 %a, !2994, !DIExpression(), !2995)
  %call = call i32 @pqcrystals_dilithium2_ref_reduce32(i32 noundef %a) #4, !dbg !2996
    #dbg_value(i32 %call, !2994, !DIExpression(), !2995)
  %call1 = call i32 @pqcrystals_dilithium2_ref_caddq(i32 noundef %call) #4, !dbg !2997
    #dbg_value(i32 %call1, !2994, !DIExpression(), !2995)
  ret i32 %call1, !dbg !2998
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_init(ptr noundef %state) local_unnamed_addr #0 !dbg !2999 {
entry:
    #dbg_value(ptr %state, !3003, !DIExpression(), !3004)
  call fastcc void @keccak_init(ptr noundef %state) #4, !dbg !3005
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3006
  store i64 0, ptr %arrayidx, align 8, !dbg !3007
  ret void, !dbg !3008
}

; Function Attrs: nounwind
define internal fastcc void @keccak_init(ptr noundef %s) unnamed_addr #0 !dbg !3009 {
entry:
    #dbg_value(ptr %s, !3013, !DIExpression(), !3014)
    #dbg_value(i32 0, !3015, !DIExpression(), !3014)
  br label %for.cond, !dbg !3016

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3018
    #dbg_value(i32 %i.0, !3015, !DIExpression(), !3014)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3019
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3021

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !3022
  store i64 0, ptr %arrayidx, align 8, !dbg !3023
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3024
    #dbg_value(i32 %inc, !3015, !DIExpression(), !3014)
  br label %for.cond, !dbg !3025, !llvm.loop !3026

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3028
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_absorb(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3029 {
entry:
    #dbg_value(ptr %state, !3032, !DIExpression(), !3033)
    #dbg_value(ptr %in, !3034, !DIExpression(), !3033)
    #dbg_value(i32 %inlen, !3035, !DIExpression(), !3033)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3036
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3036
  %conv = trunc i64 %0 to i32, !dbg !3037
  %call = call fastcc i32 @keccak_absorb(ptr noundef %state, i32 noundef %conv, i32 noundef 168, ptr noundef %in, i32 noundef %inlen) #4, !dbg !3038
    #dbg_value(i32 %call, !3039, !DIExpression(), !3033)
  %conv1 = zext i32 %call to i64, !dbg !3040
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3041
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !3042
  ret void, !dbg !3043
}

; Function Attrs: nounwind
define internal fastcc i32 @keccak_absorb(ptr noundef %s, i32 noundef %pos, i32 noundef range(i32 136, 169) %r, ptr noundef %in, i32 noundef %inlen) unnamed_addr #0 !dbg !3044 {
entry:
    #dbg_value(ptr %s, !3047, !DIExpression(), !3048)
    #dbg_value(i32 %pos, !3049, !DIExpression(), !3048)
    #dbg_value(i32 %r, !3050, !DIExpression(), !3048)
    #dbg_value(ptr %in, !3051, !DIExpression(), !3048)
    #dbg_value(i32 %inlen, !3052, !DIExpression(), !3048)
  br label %while.cond, !dbg !3053

while.cond:                                       ; preds = %for.end, %entry
  %in.addr.0 = phi ptr [ %in, %entry ], [ %in.addr.1.lcssa, %for.end ]
  %inlen.addr.0 = phi i32 [ %inlen, %entry ], [ %sub2, %for.end ]
  %pos.addr.0 = phi i32 [ %pos, %entry ], [ 0, %for.end ]
    #dbg_value(i32 %pos.addr.0, !3049, !DIExpression(), !3048)
    #dbg_value(i32 %inlen.addr.0, !3052, !DIExpression(), !3048)
    #dbg_value(ptr %in.addr.0, !3051, !DIExpression(), !3048)
  %add = add i32 %pos.addr.0, %inlen.addr.0, !dbg !3054
  %cmp.not = icmp ult i32 %add, %r, !dbg !3055
  br i1 %cmp.not, label %for.cond3.preheader, label %for.cond.preheader, !dbg !3053

for.cond.preheader:                               ; preds = %while.cond
  %umax = call i32 @llvm.umax.i32(i32 %pos.addr.0, i32 %r), !dbg !3056
  br label %for.cond, !dbg !3056

for.cond3.preheader:                              ; preds = %while.cond
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %inlen.addr.0.lcssa = phi i32 [ %inlen.addr.0, %while.cond ]
  %pos.addr.0.lcssa = phi i32 [ %pos.addr.0, %while.cond ]
  br label %for.cond3, !dbg !3059

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %in.addr.1 = phi ptr [ %incdec.ptr, %for.body ], [ %in.addr.0, %for.cond.preheader ]
  %i.0 = phi i32 [ %inc, %for.body ], [ %pos.addr.0, %for.cond.preheader ], !dbg !3061
    #dbg_value(i32 %i.0, !3062, !DIExpression(), !3048)
    #dbg_value(ptr %in.addr.1, !3051, !DIExpression(), !3048)
  %exitcond = icmp ne i32 %i.0, %umax, !dbg !3063
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3056

for.body:                                         ; preds = %for.cond
    #dbg_value(ptr %in.addr.1, !3051, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3048)
  %0 = load i8, ptr %in.addr.1, align 1, !dbg !3065
  %conv = zext i8 %0 to i64, !dbg !3066
  %rem = shl nuw nsw i32 %i.0, 3, !dbg !3067
  %mul = and i32 %rem, 56, !dbg !3067
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3068
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !3068
  %div2 = lshr i32 %i.0, 3, !dbg !3069
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %div2, !dbg !3070
  %1 = load i64, ptr %arrayidx, align 8, !dbg !3071
  %xor = xor i64 %1, %shl, !dbg !3071
  store i64 %xor, ptr %arrayidx, align 8, !dbg !3071
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %in.addr.1, i32 1, !dbg !3072
    #dbg_value(ptr %incdec.ptr, !3051, !DIExpression(), !3048)
  %inc = add i32 %i.0, 1, !dbg !3073
    #dbg_value(i32 %inc, !3062, !DIExpression(), !3048)
  br label %for.cond, !dbg !3074, !llvm.loop !3075

for.end:                                          ; preds = %for.cond
  %in.addr.1.lcssa = phi ptr [ %in.addr.1, %for.cond ]
  %sub.neg = sub i32 %pos.addr.0, %r, !dbg !3077
  %sub2 = add i32 %sub.neg, %inlen.addr.0, !dbg !3078
    #dbg_value(i32 %sub2, !3052, !DIExpression(), !3048)
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !3079
    #dbg_value(i32 0, !3049, !DIExpression(), !3048)
  br label %while.cond, !dbg !3053, !llvm.loop !3080

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body7
  %in.addr.2 = phi ptr [ %incdec.ptr8, %for.body7 ], [ %in.addr.0.lcssa, %for.cond3.preheader ]
  %i.1 = phi i32 [ %inc18, %for.body7 ], [ %pos.addr.0.lcssa, %for.cond3.preheader ], !dbg !3082
    #dbg_value(i32 %i.1, !3062, !DIExpression(), !3048)
    #dbg_value(ptr %in.addr.2, !3051, !DIExpression(), !3048)
  %add4 = add i32 %pos.addr.0.lcssa, %inlen.addr.0.lcssa, !dbg !3083
  %cmp5 = icmp ult i32 %i.1, %add4, !dbg !3085
  br i1 %cmp5, label %for.body7, label %for.end19, !dbg !3059

for.body7:                                        ; preds = %for.cond3
    #dbg_value(ptr %in.addr.2, !3051, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3048)
  %2 = load i8, ptr %in.addr.2, align 1, !dbg !3086
  %conv9 = zext i8 %2 to i64, !dbg !3087
  %rem10 = shl i32 %i.1, 3, !dbg !3088
  %mul11 = and i32 %rem10, 56, !dbg !3088
  %sh_prom12 = zext nneg i32 %mul11 to i64, !dbg !3089
  %shl13 = shl nuw i64 %conv9, %sh_prom12, !dbg !3089
  %div141 = lshr i32 %i.1, 3, !dbg !3090
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s, i32 %div141, !dbg !3091
  %3 = load i64, ptr %arrayidx15, align 8, !dbg !3092
  %xor16 = xor i64 %3, %shl13, !dbg !3092
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !3092
  %incdec.ptr8 = getelementptr inbounds nuw i8, ptr %in.addr.2, i32 1, !dbg !3093
    #dbg_value(ptr %incdec.ptr8, !3051, !DIExpression(), !3048)
  %inc18 = add nuw i32 %i.1, 1, !dbg !3094
    #dbg_value(i32 %inc18, !3062, !DIExpression(), !3048)
  br label %for.cond3, !dbg !3095, !llvm.loop !3096

for.end19:                                        ; preds = %for.cond3
  %i.1.lcssa = phi i32 [ %i.1, %for.cond3 ], !dbg !3082
  ret i32 %i.1.lcssa, !dbg !3098
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !3099 {
entry:
    #dbg_value(ptr %state, !3100, !DIExpression(), !3101)
  %0 = load i64, ptr %state, align 8, !dbg !3102
    #dbg_value(i64 %0, !3103, !DIExpression(), !3101)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3104
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !3104
    #dbg_value(i64 %1, !3105, !DIExpression(), !3101)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3106
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3106
    #dbg_value(i64 %2, !3107, !DIExpression(), !3101)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3108
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !3108
    #dbg_value(i64 %3, !3109, !DIExpression(), !3101)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3110
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !3110
    #dbg_value(i64 %4, !3111, !DIExpression(), !3101)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3112
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !3112
    #dbg_value(i64 %5, !3113, !DIExpression(), !3101)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3114
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !3114
    #dbg_value(i64 %6, !3115, !DIExpression(), !3101)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3116
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !3116
    #dbg_value(i64 %7, !3117, !DIExpression(), !3101)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3118
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !3118
    #dbg_value(i64 %8, !3119, !DIExpression(), !3101)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3120
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !3120
    #dbg_value(i64 %9, !3121, !DIExpression(), !3101)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3122
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !3122
    #dbg_value(i64 %10, !3123, !DIExpression(), !3101)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3124
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !3124
    #dbg_value(i64 %11, !3125, !DIExpression(), !3101)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3126
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !3126
    #dbg_value(i64 %12, !3127, !DIExpression(), !3101)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3128
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !3128
    #dbg_value(i64 %13, !3129, !DIExpression(), !3101)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3130
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !3130
    #dbg_value(i64 %14, !3131, !DIExpression(), !3101)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3132
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !3132
    #dbg_value(i64 %15, !3133, !DIExpression(), !3101)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3134
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3134
    #dbg_value(i64 %16, !3135, !DIExpression(), !3101)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3136
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3136
    #dbg_value(i64 %17, !3137, !DIExpression(), !3101)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3138
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3138
    #dbg_value(i64 %18, !3139, !DIExpression(), !3101)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3140
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3140
    #dbg_value(i64 %19, !3141, !DIExpression(), !3101)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3142
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3142
    #dbg_value(i64 %20, !3143, !DIExpression(), !3101)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3144
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3144
    #dbg_value(i64 %21, !3145, !DIExpression(), !3101)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3146
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3146
    #dbg_value(i64 %22, !3147, !DIExpression(), !3101)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3148
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3148
    #dbg_value(i64 %23, !3149, !DIExpression(), !3101)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3150
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3150
    #dbg_value(i64 %24, !3151, !DIExpression(), !3101)
    #dbg_value(i32 0, !3152, !DIExpression(), !3101)
  br label %for.cond, !dbg !3153

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !3101
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !3101
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !3101
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !3101
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !3101
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !3101
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !3101
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !3101
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !3101
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !3101
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !3101
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !3101
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !3101
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !3101
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !3101
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !3101
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !3101
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !3101
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !3101
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !3101
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !3101
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !3101
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !3101
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !3101
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3155
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !3101
    #dbg_value(i64 %Asu.0, !3151, !DIExpression(), !3101)
    #dbg_value(i32 %round.0, !3152, !DIExpression(), !3101)
    #dbg_value(i64 %Aba.0, !3103, !DIExpression(), !3101)
    #dbg_value(i64 %Abe.0, !3105, !DIExpression(), !3101)
    #dbg_value(i64 %Abi.0, !3107, !DIExpression(), !3101)
    #dbg_value(i64 %Abo.0, !3109, !DIExpression(), !3101)
    #dbg_value(i64 %Abu.0, !3111, !DIExpression(), !3101)
    #dbg_value(i64 %Aga.0, !3113, !DIExpression(), !3101)
    #dbg_value(i64 %Age.0, !3115, !DIExpression(), !3101)
    #dbg_value(i64 %Agi.0, !3117, !DIExpression(), !3101)
    #dbg_value(i64 %Ago.0, !3119, !DIExpression(), !3101)
    #dbg_value(i64 %Agu.0, !3121, !DIExpression(), !3101)
    #dbg_value(i64 %Aka.0, !3123, !DIExpression(), !3101)
    #dbg_value(i64 %Ake.0, !3125, !DIExpression(), !3101)
    #dbg_value(i64 %Aki.0, !3127, !DIExpression(), !3101)
    #dbg_value(i64 %Ako.0, !3129, !DIExpression(), !3101)
    #dbg_value(i64 %Aku.0, !3131, !DIExpression(), !3101)
    #dbg_value(i64 %Ama.0, !3133, !DIExpression(), !3101)
    #dbg_value(i64 %Ame.0, !3135, !DIExpression(), !3101)
    #dbg_value(i64 %Ami.0, !3137, !DIExpression(), !3101)
    #dbg_value(i64 %Amo.0, !3139, !DIExpression(), !3101)
    #dbg_value(i64 %Amu.0, !3141, !DIExpression(), !3101)
    #dbg_value(i64 %Asa.0, !3143, !DIExpression(), !3101)
    #dbg_value(i64 %Ase.0, !3145, !DIExpression(), !3101)
    #dbg_value(i64 %Asi.0, !3147, !DIExpression(), !3101)
    #dbg_value(i64 %Aso.0, !3149, !DIExpression(), !3101)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3156
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3158

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3164, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3165, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3166, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3167, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3168, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3103, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3139, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3151, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3170, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3171, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3173, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3109, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3123, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3135, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3147, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3175, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3105, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3129, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3141, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3143, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3179, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3180, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3181, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3182, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3183, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3113, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3137, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3149, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3184, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3185, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3186, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3187, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3188, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3107, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3119, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3133, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3145, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3189, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3190, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3191, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3164, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3165, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3166, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3167, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3168, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3175, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3181, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3187, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3103, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3103, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3105, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3107, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3109, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3179, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3185, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3191, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3113, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3119, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3170, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3182, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3188, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3189, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3123, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3129, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3173, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3180, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3186, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3133, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3135, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3137, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3139, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3141, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3171, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3183, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3184, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3190, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 poison, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3143, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3145, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3147, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3149, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3151, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3194
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3196
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3197
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3198
    #dbg_value(i64 %xor35, !3161, !DIExpression(), !3101)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3199
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3200
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3201
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3202
    #dbg_value(i64 %xor43, !3163, !DIExpression(), !3101)
  %25 = shl i64 %xor43, 1, !dbg !3203
  %26 = lshr i64 %xor43, 63, !dbg !3203
  %27 = or i64 %25, %26, !dbg !3203
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %27), !3119, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %27), !3109, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %27), !3129, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %27), !3139, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %27), !3149, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor35, i64 %27), !3167, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor57 = xor i64 %xor35, %27, !dbg !3204
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !3119, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !3109, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !3129, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3139, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3149, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 %xor57, !3167, !DIExpression(), !3101)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3205
    #dbg_value(i64 %xor203, !3119, !DIExpression(), !3101)
  %28 = shl i64 %xor203, 55, !dbg !3206
  %29 = lshr i64 %xor203, 9, !dbg !3206
  %30 = or i64 %28, %29, !dbg !3206
    #dbg_value(i64 %30, !3160, !DIExpression(), !3101)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3207
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3208
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3209
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3210
    #dbg_value(i64 %xor31, !3160, !DIExpression(), !3101)
  %31 = shl i64 %xor31, 1, !dbg !3211
  %32 = lshr i64 %xor31, 63, !dbg !3211
  %33 = or i64 %31, %32, !dbg !3211
    #dbg_value(!DIArgList(i64 %xor43, i64 %33), !3164, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3103, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %33), !3123, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %33), !3113, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %33), !3143, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %33), !3133, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor45 = xor i64 %xor43, %33, !dbg !3212
    #dbg_value(i64 %xor45, !3164, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3103, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !3123, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !3113, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3143, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !3133, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3213
    #dbg_value(i64 %xor211, !3133, !DIExpression(), !3101)
  %34 = shl i64 %xor211, 41, !dbg !3214
  %35 = lshr i64 %xor211, 23, !dbg !3214
  %36 = or i64 %34, %35, !dbg !3214
    #dbg_value(i64 %36, !3162, !DIExpression(), !3101)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3215
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3216
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3217
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3218
    #dbg_value(i64 %xor39, !3162, !DIExpression(), !3101)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3219
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3220
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3221
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3222
    #dbg_value(i64 %xor27, !3159, !DIExpression(), !3101)
  %37 = shl i64 %xor27, 1, !dbg !3223
  %38 = lshr i64 %xor27, 63, !dbg !3223
  %39 = or i64 %37, %38, !dbg !3223
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %39), !3121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %39), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %39), !3151, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %39), !3141, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor39, i64 %39), !3168, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %39), !3131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor61 = xor i64 %xor39, %39, !dbg !3224
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !3121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3151, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3141, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 %xor61, !3168, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !3131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3225
    #dbg_value(i64 %xor207, !3131, !DIExpression(), !3101)
  %40 = shl i64 %xor207, 39, !dbg !3226
  %41 = lshr i64 %xor207, 25, !dbg !3226
  %42 = or i64 %40, %41, !dbg !3226
    #dbg_value(i64 %42, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %42), !3190, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not222 = xor i64 %42, -1, !dbg !3227
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %not222), !3190, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and223 = and i64 %36, %not222, !dbg !3228
    #dbg_value(!DIArgList(i64 %30, i64 %and223), !3190, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor224 = xor i64 %30, %and223, !dbg !3229
    #dbg_value(i64 %xor224, !3190, !DIExpression(), !3101)
  %43 = shl i64 %xor39, 1, !dbg !3230
  %44 = lshr i64 %xor39, 63, !dbg !3230
  %45 = or i64 %43, %44, !dbg !3230
    #dbg_value(!DIArgList(i64 %xor31, i64 %45), !3166, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %45), !3127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %45), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %45), !3107, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %45), !3147, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %45), !3137, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor53 = xor i64 %xor31, %45, !dbg !3231
    #dbg_value(i64 %xor53, !3166, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !3127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !3107, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3147, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3137, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3232
    #dbg_value(i64 %xor67, !3127, !DIExpression(), !3101)
  %46 = shl i64 %xor67, 43, !dbg !3233
  %47 = lshr i64 %xor67, 21, !dbg !3233
  %48 = or i64 %46, %47, !dbg !3233
    #dbg_value(i64 %48, !3161, !DIExpression(), !3101)
  %49 = shl i64 %xor35, 1, !dbg !3234
  %50 = lshr i64 %xor35, 63, !dbg !3234
  %51 = or i64 %49, %50, !dbg !3234
    #dbg_value(!DIArgList(i64 %xor27, i64 %51), !3165, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %51), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %51), !3105, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %51), !3125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %51), !3135, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %51), !3145, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor49 = xor i64 %xor27, %51, !dbg !3235
    #dbg_value(i64 %xor49, !3165, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !3105, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !3125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3135, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3145, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3236
    #dbg_value(i64 %xor63, !3115, !DIExpression(), !3101)
  %52 = shl i64 %xor63, 44, !dbg !3237
  %53 = lshr i64 %xor63, 20, !dbg !3237
  %54 = or i64 %52, %53, !dbg !3237
    #dbg_value(i64 %54, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %54), !3169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not = xor i64 %54, -1, !dbg !3238
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %not), !3169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and = and i64 %48, %not, !dbg !3239
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @pqcrystals_dilithium_fips202_ref_KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3240
  %55 = load i64, ptr %arrayidx80, align 8, !dbg !3240
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %55), !3169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %56 = xor i64 %and, %55, !dbg !3241
    #dbg_value(!DIArgList(i64 %56, i64 %Aba.0, i64 %xor45), !3169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3242
    #dbg_value(i64 %xor62, !3103, !DIExpression(), !3101)
    #dbg_value(i64 %xor62, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %56, i64 %xor62), !3169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor81 = xor i64 %56, %xor62, !dbg !3241
    #dbg_value(i64 %xor81, !3169, !DIExpression(), !3101)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3243
    #dbg_value(i64 %xor94, !3109, !DIExpression(), !3101)
  %57 = shl i64 %xor94, 28, !dbg !3244
  %58 = lshr i64 %xor94, 36, !dbg !3244
  %59 = or i64 %57, %58, !dbg !3244
    #dbg_value(i64 %59, !3159, !DIExpression(), !3101)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3245
    #dbg_value(i64 %xor102, !3123, !DIExpression(), !3101)
  %60 = shl i64 %xor102, 3, !dbg !3246
  %61 = lshr i64 %xor102, 61, !dbg !3246
  %62 = or i64 %60, %61, !dbg !3246
    #dbg_value(i64 %62, !3161, !DIExpression(), !3101)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3247
    #dbg_value(i64 %xor98, !3121, !DIExpression(), !3101)
  %63 = shl i64 %xor98, 20, !dbg !3248
  %64 = lshr i64 %xor98, 44, !dbg !3248
  %65 = or i64 %63, %64, !dbg !3248
    #dbg_value(i64 %65, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %65), !3174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not114 = xor i64 %65, -1, !dbg !3249
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %not114), !3174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and115 = and i64 %62, %not114, !dbg !3250
    #dbg_value(!DIArgList(i64 %59, i64 %and115), !3174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor116 = xor i64 %59, %and115, !dbg !3251
    #dbg_value(i64 %xor116, !3174, !DIExpression(), !3101)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3252
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3253
    #dbg_value(i64 %xor129, !3105, !DIExpression(), !3101)
  %66 = shl i64 %xor129, 1, !dbg !3254
  %67 = lshr i64 %xor129, 63, !dbg !3254
  %68 = or i64 %66, %67, !dbg !3254
    #dbg_value(i64 %68, !3159, !DIExpression(), !3101)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3255
    #dbg_value(i64 %xor137, !3129, !DIExpression(), !3101)
  %69 = shl i64 %xor137, 25, !dbg !3256
  %70 = lshr i64 %xor137, 39, !dbg !3256
  %71 = or i64 %69, %70, !dbg !3256
    #dbg_value(i64 %71, !3161, !DIExpression(), !3101)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3257
    #dbg_value(i64 %xor133, !3117, !DIExpression(), !3101)
  %72 = shl i64 %xor133, 6, !dbg !3258
  %73 = lshr i64 %xor133, 58, !dbg !3258
  %74 = or i64 %72, %73, !dbg !3258
    #dbg_value(i64 %74, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %74), !3179, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not149 = xor i64 %74, -1, !dbg !3259
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %not149), !3179, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and150 = and i64 %71, %not149, !dbg !3260
    #dbg_value(!DIArgList(i64 %68, i64 %and150), !3179, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor151 = xor i64 %68, %and150, !dbg !3261
    #dbg_value(i64 %xor151, !3179, !DIExpression(), !3101)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3262
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3263
    #dbg_value(i64 %xor164, !3111, !DIExpression(), !3101)
  %75 = shl i64 %xor164, 27, !dbg !3264
  %76 = lshr i64 %xor164, 37, !dbg !3264
  %77 = or i64 %75, %76, !dbg !3264
    #dbg_value(i64 %77, !3159, !DIExpression(), !3101)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3265
    #dbg_value(i64 %xor172, !3125, !DIExpression(), !3101)
  %78 = shl i64 %xor172, 10, !dbg !3266
  %79 = lshr i64 %xor172, 54, !dbg !3266
  %80 = or i64 %78, %79, !dbg !3266
    #dbg_value(i64 %80, !3161, !DIExpression(), !3101)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3267
    #dbg_value(i64 %xor168, !3113, !DIExpression(), !3101)
  %81 = shl i64 %xor168, 36, !dbg !3268
  %82 = lshr i64 %xor168, 28, !dbg !3268
  %83 = or i64 %81, %82, !dbg !3268
    #dbg_value(i64 %83, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %83), !3184, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not184 = xor i64 %83, -1, !dbg !3269
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %not184), !3184, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and185 = and i64 %80, %not184, !dbg !3270
    #dbg_value(!DIArgList(i64 %77, i64 %and185), !3184, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor186 = xor i64 %77, %and185, !dbg !3271
    #dbg_value(i64 %xor186, !3184, !DIExpression(), !3101)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3272
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3273
    #dbg_value(i64 %xor199, !3107, !DIExpression(), !3101)
  %84 = shl i64 %xor199, 62, !dbg !3274
  %85 = lshr i64 %xor199, 2, !dbg !3274
  %86 = or i64 %84, %85, !dbg !3274
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %30), !3189, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %30), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %not219 = xor i64 %30, -1, !dbg !3275
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %not219), !3189, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %not219), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %and220 = and i64 %42, %not219, !dbg !3276
    #dbg_value(!DIArgList(i64 %86, i64 %and220), !3189, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %and220), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor221 = xor i64 %86, %and220, !dbg !3277
    #dbg_value(i64 %xor221, !3189, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3278
    #dbg_value(i64 %xor237, !3159, !DIExpression(), !3101)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3279
    #dbg_value(i64 %xor75, !3151, !DIExpression(), !3101)
  %87 = shl i64 %xor75, 14, !dbg !3280
  %88 = lshr i64 %xor75, 50, !dbg !3280
  %89 = or i64 %87, %88, !dbg !3280
    #dbg_value(i64 %89, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %xor62), !3173, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3281
    #dbg_value(i64 %xor71, !3139, !DIExpression(), !3101)
  %90 = shl i64 %xor71, 21, !dbg !3282
  %91 = lshr i64 %xor71, 43, !dbg !3282
  %92 = or i64 %90, %91, !dbg !3282
    #dbg_value(i64 %92, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %92), !3171, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %54, i64 %92, i64 %48), !3170, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %92, i64 %xor62, i64 %89), !3172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not85 = xor i64 %92, -1, !dbg !3283
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %not85), !3171, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and86 = and i64 %89, %not85, !dbg !3284
    #dbg_value(!DIArgList(i64 %48, i64 %and86), !3171, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor87 = xor i64 %48, %and86, !dbg !3285
    #dbg_value(i64 %xor87, !3171, !DIExpression(), !3101)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3286
    #dbg_value(i64 %xor110, !3147, !DIExpression(), !3101)
  %93 = shl i64 %xor110, 61, !dbg !3287
  %94 = lshr i64 %xor110, 3, !dbg !3287
  %95 = or i64 %93, %94, !dbg !3287
    #dbg_value(i64 %95, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %59), !3178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3288
    #dbg_value(i64 %xor106, !3135, !DIExpression(), !3101)
  %96 = shl i64 %xor106, 45, !dbg !3289
  %97 = lshr i64 %xor106, 19, !dbg !3289
  %98 = or i64 %96, %97, !dbg !3289
    #dbg_value(i64 %98, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %98), !3176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %95), !3177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %65, i64 %98, i64 %62), !3175, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not120 = xor i64 %98, -1, !dbg !3290
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %not120), !3176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and121 = and i64 %95, %not120, !dbg !3291
    #dbg_value(!DIArgList(i64 %62, i64 %and121), !3176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor122 = xor i64 %62, %and121, !dbg !3292
    #dbg_value(i64 %xor122, !3176, !DIExpression(), !3101)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3293
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3294
    #dbg_value(i64 %xor145, !3143, !DIExpression(), !3101)
  %99 = shl i64 %xor145, 18, !dbg !3295
  %100 = lshr i64 %xor145, 46, !dbg !3295
  %101 = or i64 %99, %100, !dbg !3295
    #dbg_value(i64 %101, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %68), !3183, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3296
    #dbg_value(i64 %xor141, !3141, !DIExpression(), !3101)
  %102 = shl i64 %xor141, 8, !dbg !3297
  %103 = lshr i64 %xor141, 56, !dbg !3297
  %104 = or i64 %102, %103, !dbg !3297
    #dbg_value(i64 %104, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %104), !3181, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %74, i64 %104, i64 %71), !3180, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %104, i64 %68, i64 %101), !3182, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not155 = xor i64 %104, -1, !dbg !3298
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %not155), !3181, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and156 = and i64 %101, %not155, !dbg !3299
    #dbg_value(!DIArgList(i64 %71, i64 %and156), !3181, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor157 = xor i64 %71, %and156, !dbg !3300
    #dbg_value(i64 %xor157, !3181, !DIExpression(), !3101)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3301
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3302
    #dbg_value(i64 %xor180, !3149, !DIExpression(), !3101)
  %105 = shl i64 %xor180, 56, !dbg !3303
  %106 = lshr i64 %xor180, 8, !dbg !3303
  %107 = or i64 %105, %106, !dbg !3303
    #dbg_value(i64 %107, !3163, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %77), !3188, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3304
    #dbg_value(i64 %xor176, !3137, !DIExpression(), !3101)
  %108 = shl i64 %xor176, 15, !dbg !3305
  %109 = lshr i64 %xor176, 49, !dbg !3305
  %110 = or i64 %108, %109, !dbg !3305
    #dbg_value(i64 %110, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %110), !3186, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %83, i64 %110, i64 %80), !3185, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %110, i64 %77, i64 %107), !3187, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %48), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %not190 = xor i64 %110, -1, !dbg !3306
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %not190), !3186, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and191 = and i64 %107, %not190, !dbg !3307
    #dbg_value(!DIArgList(i64 %80, i64 %and191), !3186, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor192 = xor i64 %80, %and191, !dbg !3308
    #dbg_value(i64 %xor192, !3186, !DIExpression(), !3101)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3309
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3310
    #dbg_value(i64 %xor215, !3145, !DIExpression(), !3101)
  %111 = shl i64 %xor215, 2, !dbg !3311
  %112 = lshr i64 %xor215, 62, !dbg !3311
  %113 = or i64 %111, %112, !dbg !3311
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %36), !3191, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %86), !3193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %36, i64 %86, i64 %113), !3192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %36), !3161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %95), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %xor62), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %not225 = xor i64 %36, -1, !dbg !3312
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %not225), !3191, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %not225), !3161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %and226 = and i64 %113, %not225, !dbg !3313
    #dbg_value(!DIArgList(i64 %42, i64 %and226), !3191, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %and226), !3161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor227 = xor i64 %42, %and226, !dbg !3314
    #dbg_value(i64 %xor227, !3191, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3315
    #dbg_value(i64 %xor245, !3161, !DIExpression(), !3101)
  %114 = shl i64 %xor245, 1, !dbg !3316
  %115 = lshr i64 %xor245, 63, !dbg !3316
  %116 = or i64 %114, %115, !dbg !3316
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %116), !3190, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %54, i64 %xor237, i64 %92, i64 %48, i64 %116), !3170, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %65, i64 %xor237, i64 %98, i64 %62, i64 %116), !3175, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %74, i64 %xor237, i64 %104, i64 %71, i64 %116), !3180, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %83, i64 %xor237, i64 %110, i64 %80, i64 %116), !3185, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor237, i64 %116), !3165, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor261 = xor i64 %xor237, %116, !dbg !3317
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3190, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %48), !3170, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %62), !3175, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %71), !3180, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %80), !3185, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 %xor261, !3165, !DIExpression(), !3101)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3318
    #dbg_value(i64 %xor429, !3190, !DIExpression(), !3101)
  %117 = shl i64 %xor429, 2, !dbg !3319
  %118 = lshr i64 %xor429, 62, !dbg !3319
  %119 = or i64 %117, %118, !dbg !3319
    #dbg_value(i64 %119, !3163, !DIExpression(), !3101)
  %not123 = xor i64 %95, -1, !dbg !3320
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %not123), !3177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %not123), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %and124 = and i64 %59, %not123, !dbg !3321
    #dbg_value(!DIArgList(i64 %98, i64 %and124), !3177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %and124), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor125 = xor i64 %98, %and124, !dbg !3322
    #dbg_value(i64 %xor125, !3177, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %89), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %not91 = xor i64 %xor62, -1, !dbg !3323
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %not91), !3173, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %not91), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %and92 = and i64 %54, %not91, !dbg !3324
    #dbg_value(!DIArgList(i64 %89, i64 %and92), !3173, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %and92), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor93 = xor i64 %89, %and92, !dbg !3325
    #dbg_value(i64 %xor93, !3173, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %not126 = xor i64 %59, -1, !dbg !3326
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %not126), !3178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %not126), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %and127 = and i64 %65, %not126, !dbg !3327
    #dbg_value(!DIArgList(i64 %95, i64 %and127), !3178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %and127), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor128 = xor i64 %95, %and127, !dbg !3328
    #dbg_value(i64 %xor128, !3178, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %xor128), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3329
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %not161 = xor i64 %68, -1, !dbg !3330
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %not161), !3183, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %not161), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %and162 = and i64 %74, %not161, !dbg !3331
    #dbg_value(!DIArgList(i64 %101, i64 %and162), !3183, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %and162), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor163 = xor i64 %101, %and162, !dbg !3332
    #dbg_value(i64 %xor163, !3183, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %xor163), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3333
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %not196 = xor i64 %77, -1, !dbg !3334
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %not196), !3188, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %not196), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %and197 = and i64 %83, %not196, !dbg !3335
    #dbg_value(!DIArgList(i64 %107, i64 %and197), !3188, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %and197), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor198 = xor i64 %107, %and197, !dbg !3336
    #dbg_value(i64 %xor198, !3188, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %xor198), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3337
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %86), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %not231 = xor i64 %86, -1, !dbg !3338
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %not231), !3193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %not231), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %and232 = and i64 %30, %not231, !dbg !3339
    #dbg_value(!DIArgList(i64 %113, i64 %and232), !3193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %and232), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor233 = xor i64 %113, %and232, !dbg !3340
    #dbg_value(i64 %xor233, !3193, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3341
    #dbg_value(i64 %xor253, !3163, !DIExpression(), !3101)
  %120 = shl i64 %xor253, 1, !dbg !3342
  %121 = lshr i64 %xor253, 63, !dbg !3342
  %122 = or i64 %120, %121, !dbg !3342
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %122), !3177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %92, i64 %xor245, i64 %xor62, i64 %89, i64 %122), !3172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %104, i64 %xor245, i64 %68, i64 %101, i64 %122), !3182, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %110, i64 %xor245, i64 %77, i64 %107, i64 %122), !3187, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %36, i64 %xor245, i64 %86, i64 %113, i64 %122), !3192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor245, i64 %122), !3167, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor269 = xor i64 %xor245, %122, !dbg !3343
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3177, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %89), !3172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %101), !3182, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %107), !3187, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %113), !3192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 %xor269, !3167, !DIExpression(), !3101)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3344
    #dbg_value(i64 %xor417, !3177, !DIExpression(), !3101)
  %123 = shl i64 %xor417, 55, !dbg !3345
  %124 = lshr i64 %xor417, 9, !dbg !3345
  %125 = or i64 %123, %124, !dbg !3345
    #dbg_value(i64 %125, !3160, !DIExpression(), !3101)
  %not82 = xor i64 %48, -1, !dbg !3346
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %not82), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %not82), !3170, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %and83 = and i64 %92, %not82, !dbg !3347
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %and83), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %and83), !3170, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor84 = xor i64 %54, %and83, !dbg !3348
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3170, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %not117 = xor i64 %62, -1, !dbg !3349
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %not117), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %not117), !3175, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %and118 = and i64 %98, %not117, !dbg !3350
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %and118), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %and118), !3175, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor119 = xor i64 %65, %and118, !dbg !3351
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %xor119), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3175, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3352
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %not152 = xor i64 %71, -1, !dbg !3353
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %not152), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %not152), !3180, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %and153 = and i64 %104, %not152, !dbg !3354
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %and153), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %and153), !3180, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor154 = xor i64 %74, %and153, !dbg !3355
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %xor154), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3180, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3356
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %80), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %not187 = xor i64 %80, -1, !dbg !3357
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %not187), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %not187), !3185, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %and188 = and i64 %110, %not187, !dbg !3358
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %and188), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %and188), !3185, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor189 = xor i64 %83, %and188, !dbg !3359
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3185, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3360
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3160, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3361
    #dbg_value(i64 %xor241, !3160, !DIExpression(), !3101)
  %not88 = xor i64 %89, -1, !dbg !3362
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %not88), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %not88), !3172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %and89 = and i64 %xor62, %not88, !dbg !3363
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %and89), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %and89), !3172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor90 = xor i64 %92, %and89, !dbg !3364
    #dbg_value(!DIArgList(i64 %xor90, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3172, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3365
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %not158 = xor i64 %101, -1, !dbg !3366
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %not158), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %not158), !3182, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %and159 = and i64 %68, %not158, !dbg !3367
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %and159), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %and159), !3182, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor160 = xor i64 %104, %and159, !dbg !3368
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %xor160), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3182, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3369
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %not193 = xor i64 %107, -1, !dbg !3370
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %not193), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %not193), !3187, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %and194 = and i64 %77, %not193, !dbg !3371
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %and194), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %and194), !3187, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor195 = xor i64 %110, %and194, !dbg !3372
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %xor195), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3187, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3373
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %113), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %not228 = xor i64 %113, -1, !dbg !3374
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %not228), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %not228), !3192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %and229 = and i64 %86, %not228, !dbg !3375
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %and229), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %and229), !3192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor230 = xor i64 %36, %and229, !dbg !3376
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3192, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3377
    #dbg_value(i64 %xor249, !3162, !DIExpression(), !3101)
  %126 = shl i64 %xor249, 1, !dbg !3378
  %127 = lshr i64 %xor249, 63, !dbg !3378
  %128 = or i64 %126, %127, !dbg !3378
    #dbg_value(!DIArgList(i64 %xor241, i64 %128), !3166, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %128), !3171, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %128), !3186, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %128), !3176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %128), !3191, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %128), !3181, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor265 = xor i64 %xor241, %128, !dbg !3379
    #dbg_value(i64 %xor265, !3166, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3171, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3186, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3176, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3191, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3181, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3380
    #dbg_value(i64 %xor413, !3171, !DIExpression(), !3101)
  %129 = shl i64 %xor413, 62, !dbg !3381
  %130 = lshr i64 %xor413, 2, !dbg !3381
  %131 = or i64 %129, %130, !dbg !3381
    #dbg_value(i64 %131, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %131), !3151, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not445 = xor i64 %131, -1, !dbg !3382
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %not445), !3151, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and446 = and i64 %125, %not445, !dbg !3383
    #dbg_value(!DIArgList(i64 %119, i64 %and446), !3151, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor447 = xor i64 %119, %and446, !dbg !3384
    #dbg_value(i64 %xor447, !3151, !DIExpression(), !3101)
  %132 = shl i64 %xor241, 1, !dbg !3385
  %133 = lshr i64 %xor241, 63, !dbg !3385
  %134 = or i64 %132, %133, !dbg !3385
    #dbg_value(!DIArgList(i64 %xor253, i64 %134), !3164, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %134), !3174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %134), !3189, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %134), !3179, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %134), !3184, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor257 = xor i64 %xor253, %134, !dbg !3386
    #dbg_value(i64 %xor257, !3164, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3174, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3189, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3179, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3159, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3169, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3184, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3387
    #dbg_value(i64 %xor425, !3184, !DIExpression(), !3101)
  %135 = shl i64 %xor425, 41, !dbg !3388
  %136 = lshr i64 %xor425, 23, !dbg !3388
  %137 = or i64 %135, %136, !dbg !3388
    #dbg_value(i64 %137, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %119), !3149, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not442 = xor i64 %119, -1, !dbg !3389
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %not442), !3149, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and443 = and i64 %131, %not442, !dbg !3390
    #dbg_value(!DIArgList(i64 %137, i64 %and443), !3149, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor444 = xor i64 %137, %and443, !dbg !3391
    #dbg_value(i64 %xor444, !3149, !DIExpression(), !3101)
  %138 = shl i64 %xor237, 1, !dbg !3392
  %139 = lshr i64 %xor237, 63, !dbg !3392
  %140 = or i64 %138, %139, !dbg !3392
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %140), !3173, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %140), !3188, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %140), !3178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %140), !3193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor249, i64 %140), !3168, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %140), !3183, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor273 = xor i64 %xor249, %140, !dbg !3393
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3173, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3188, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3178, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3193, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(i64 %xor273, !3168, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3183, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3394
    #dbg_value(i64 %xor421, !3183, !DIExpression(), !3101)
  %141 = shl i64 %xor421, 39, !dbg !3395
  %142 = lshr i64 %xor421, 25, !dbg !3395
  %143 = or i64 %141, %142, !dbg !3395
    #dbg_value(i64 %143, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %137), !3147, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %143), !3145, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %125), !3143, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not439 = xor i64 %137, -1, !dbg !3396
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %not439), !3147, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and440 = and i64 %119, %not439, !dbg !3397
    #dbg_value(!DIArgList(i64 %143, i64 %and440), !3147, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor441 = xor i64 %143, %and440, !dbg !3398
    #dbg_value(i64 %xor441, !3147, !DIExpression(), !3101)
  %not436 = xor i64 %143, -1, !dbg !3399
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %not436), !3145, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and437 = and i64 %137, %not436, !dbg !3400
    #dbg_value(!DIArgList(i64 %125, i64 %and437), !3145, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor438 = xor i64 %125, %and437, !dbg !3401
    #dbg_value(i64 %xor438, !3145, !DIExpression(), !3101)
  %not433 = xor i64 %125, -1, !dbg !3402
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %not433), !3143, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and434 = and i64 %143, %not433, !dbg !3403
    #dbg_value(!DIArgList(i64 %131, i64 %and434), !3143, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor435 = xor i64 %131, %and434, !dbg !3404
    #dbg_value(i64 %xor435, !3143, !DIExpression(), !3101)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3405
    #dbg_value(i64 %xor394, !3192, !DIExpression(), !3101)
  %144 = shl i64 %xor394, 56, !dbg !3406
  %145 = lshr i64 %xor394, 8, !dbg !3406
  %146 = or i64 %144, %145, !dbg !3406
    #dbg_value(i64 %146, !3163, !DIExpression(), !3101)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3407
    #dbg_value(i64 %xor382, !3174, !DIExpression(), !3101)
  %147 = shl i64 %xor382, 36, !dbg !3408
  %148 = lshr i64 %xor382, 28, !dbg !3408
  %149 = or i64 %147, %148, !dbg !3408
    #dbg_value(i64 %149, !3160, !DIExpression(), !3101)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3409
    #dbg_value(i64 %xor378, !3173, !DIExpression(), !3101)
  %150 = shl i64 %xor378, 27, !dbg !3410
  %151 = lshr i64 %xor378, 37, !dbg !3410
  %152 = or i64 %150, %151, !dbg !3410
    #dbg_value(i64 %152, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %152), !3141, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not410 = xor i64 %152, -1, !dbg !3411
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %not410), !3141, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and411 = and i64 %149, %not410, !dbg !3412
    #dbg_value(!DIArgList(i64 %146, i64 %and411), !3141, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor412 = xor i64 %146, %and411, !dbg !3413
    #dbg_value(i64 %xor412, !3141, !DIExpression(), !3101)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3414
    #dbg_value(i64 %xor390, !3186, !DIExpression(), !3101)
  %153 = shl i64 %xor390, 15, !dbg !3415
  %154 = lshr i64 %xor390, 49, !dbg !3415
  %155 = or i64 %153, %154, !dbg !3415
    #dbg_value(i64 %155, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %146), !3139, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not407 = xor i64 %146, -1, !dbg !3416
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %not407), !3139, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and408 = and i64 %152, %not407, !dbg !3417
    #dbg_value(!DIArgList(i64 %155, i64 %and408), !3139, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor409 = xor i64 %155, %and408, !dbg !3418
    #dbg_value(i64 %xor409, !3139, !DIExpression(), !3101)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3419
    #dbg_value(i64 %xor386, !3180, !DIExpression(), !3101)
  %156 = shl i64 %xor386, 10, !dbg !3420
  %157 = lshr i64 %xor386, 54, !dbg !3420
  %158 = or i64 %156, %157, !dbg !3420
    #dbg_value(i64 %158, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %155), !3137, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %158), !3135, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %149), !3133, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not404 = xor i64 %155, -1, !dbg !3421
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %not404), !3137, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and405 = and i64 %146, %not404, !dbg !3422
    #dbg_value(!DIArgList(i64 %158, i64 %and405), !3137, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor406 = xor i64 %158, %and405, !dbg !3423
    #dbg_value(i64 %xor406, !3137, !DIExpression(), !3101)
  %not401 = xor i64 %158, -1, !dbg !3424
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %not401), !3135, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and402 = and i64 %155, %not401, !dbg !3425
    #dbg_value(!DIArgList(i64 %149, i64 %and402), !3135, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor403 = xor i64 %149, %and402, !dbg !3426
    #dbg_value(i64 %xor403, !3135, !DIExpression(), !3101)
  %not398 = xor i64 %149, -1, !dbg !3427
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %not398), !3133, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and399 = and i64 %158, %not398, !dbg !3428
    #dbg_value(!DIArgList(i64 %152, i64 %and399), !3133, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor400 = xor i64 %152, %and399, !dbg !3429
    #dbg_value(i64 %xor400, !3133, !DIExpression(), !3101)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3430
    #dbg_value(i64 %xor359, !3189, !DIExpression(), !3101)
  %159 = shl i64 %xor359, 18, !dbg !3431
  %160 = lshr i64 %xor359, 46, !dbg !3431
  %161 = or i64 %159, %160, !dbg !3431
    #dbg_value(i64 %161, !3163, !DIExpression(), !3101)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3432
    #dbg_value(i64 %xor347, !3176, !DIExpression(), !3101)
  %162 = shl i64 %xor347, 6, !dbg !3433
  %163 = lshr i64 %xor347, 58, !dbg !3433
  %164 = or i64 %162, %163, !dbg !3433
    #dbg_value(i64 %164, !3160, !DIExpression(), !3101)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3434
    #dbg_value(i64 %xor343, !3170, !DIExpression(), !3101)
  %165 = shl i64 %xor343, 1, !dbg !3435
  %166 = lshr i64 %xor343, 63, !dbg !3435
  %167 = or i64 %165, %166, !dbg !3435
    #dbg_value(i64 %167, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %167), !3131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not375 = xor i64 %167, -1, !dbg !3436
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %not375), !3131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and376 = and i64 %164, %not375, !dbg !3437
    #dbg_value(!DIArgList(i64 %161, i64 %and376), !3131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor377 = xor i64 %161, %and376, !dbg !3438
    #dbg_value(i64 %xor377, !3131, !DIExpression(), !3101)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3439
    #dbg_value(i64 %xor355, !3188, !DIExpression(), !3101)
  %168 = shl i64 %xor355, 8, !dbg !3440
  %169 = lshr i64 %xor355, 56, !dbg !3440
  %170 = or i64 %168, %169, !dbg !3440
    #dbg_value(i64 %170, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %161), !3129, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not372 = xor i64 %161, -1, !dbg !3441
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %not372), !3129, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and373 = and i64 %167, %not372, !dbg !3442
    #dbg_value(!DIArgList(i64 %170, i64 %and373), !3129, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor374 = xor i64 %170, %and373, !dbg !3443
    #dbg_value(i64 %xor374, !3129, !DIExpression(), !3101)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3444
    #dbg_value(i64 %xor351, !3182, !DIExpression(), !3101)
  %171 = shl i64 %xor351, 25, !dbg !3445
  %172 = lshr i64 %xor351, 39, !dbg !3445
  %173 = or i64 %171, %172, !dbg !3445
    #dbg_value(i64 %173, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %170), !3127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %173), !3125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %164), !3123, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not369 = xor i64 %170, -1, !dbg !3446
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %not369), !3127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and370 = and i64 %161, %not369, !dbg !3447
    #dbg_value(!DIArgList(i64 %173, i64 %and370), !3127, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor371 = xor i64 %173, %and370, !dbg !3448
    #dbg_value(i64 %xor371, !3127, !DIExpression(), !3101)
  %not366 = xor i64 %173, -1, !dbg !3449
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %not366), !3125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and367 = and i64 %170, %not366, !dbg !3450
    #dbg_value(!DIArgList(i64 %164, i64 %and367), !3125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor368 = xor i64 %164, %and367, !dbg !3451
    #dbg_value(i64 %xor368, !3125, !DIExpression(), !3101)
  %not363 = xor i64 %164, -1, !dbg !3452
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %not363), !3123, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and364 = and i64 %173, %not363, !dbg !3453
    #dbg_value(!DIArgList(i64 %167, i64 %and364), !3123, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor365 = xor i64 %167, %and364, !dbg !3454
    #dbg_value(i64 %xor365, !3123, !DIExpression(), !3101)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3455
    #dbg_value(i64 %xor324, !3191, !DIExpression(), !3101)
  %174 = shl i64 %xor324, 61, !dbg !3456
  %175 = lshr i64 %xor324, 3, !dbg !3456
  %176 = or i64 %174, %175, !dbg !3456
    #dbg_value(i64 %176, !3163, !DIExpression(), !3101)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3457
    #dbg_value(i64 %xor312, !3178, !DIExpression(), !3101)
  %177 = shl i64 %xor312, 20, !dbg !3458
  %178 = lshr i64 %xor312, 44, !dbg !3458
  %179 = or i64 %177, %178, !dbg !3458
    #dbg_value(i64 %179, !3160, !DIExpression(), !3101)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3459
    #dbg_value(i64 %xor308, !3172, !DIExpression(), !3101)
  %180 = shl i64 %xor308, 28, !dbg !3460
  %181 = lshr i64 %xor308, 36, !dbg !3460
  %182 = or i64 %180, %181, !dbg !3460
    #dbg_value(i64 %182, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %182), !3121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not340 = xor i64 %182, -1, !dbg !3461
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %not340), !3121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and341 = and i64 %179, %not340, !dbg !3462
    #dbg_value(!DIArgList(i64 %176, i64 %and341), !3121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor342 = xor i64 %176, %and341, !dbg !3463
    #dbg_value(i64 %xor342, !3121, !DIExpression(), !3101)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3464
    #dbg_value(i64 %xor320, !3185, !DIExpression(), !3101)
  %183 = shl i64 %xor320, 45, !dbg !3465
  %184 = lshr i64 %xor320, 19, !dbg !3465
  %185 = or i64 %183, %184, !dbg !3465
    #dbg_value(i64 %185, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %176), !3119, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not337 = xor i64 %176, -1, !dbg !3466
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %not337), !3119, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and338 = and i64 %182, %not337, !dbg !3467
    #dbg_value(!DIArgList(i64 %185, i64 %and338), !3119, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor339 = xor i64 %185, %and338, !dbg !3468
    #dbg_value(i64 %xor339, !3119, !DIExpression(), !3101)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3469
    #dbg_value(i64 %xor316, !3179, !DIExpression(), !3101)
  %186 = shl i64 %xor316, 3, !dbg !3470
  %187 = lshr i64 %xor316, 61, !dbg !3470
  %188 = or i64 %186, %187, !dbg !3470
    #dbg_value(i64 %188, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %185), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %188), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %179), !3113, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not334 = xor i64 %185, -1, !dbg !3471
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %not334), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and335 = and i64 %176, %not334, !dbg !3472
    #dbg_value(!DIArgList(i64 %188, i64 %and335), !3117, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor336 = xor i64 %188, %and335, !dbg !3473
    #dbg_value(i64 %xor336, !3117, !DIExpression(), !3101)
  %not331 = xor i64 %188, -1, !dbg !3474
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %not331), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and332 = and i64 %185, %not331, !dbg !3475
    #dbg_value(!DIArgList(i64 %179, i64 %and332), !3115, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor333 = xor i64 %179, %and332, !dbg !3476
    #dbg_value(i64 %xor333, !3115, !DIExpression(), !3101)
  %not328 = xor i64 %179, -1, !dbg !3477
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %not328), !3113, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and329 = and i64 %188, %not328, !dbg !3478
    #dbg_value(!DIArgList(i64 %182, i64 %and329), !3113, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor330 = xor i64 %182, %and329, !dbg !3479
    #dbg_value(i64 %xor330, !3113, !DIExpression(), !3101)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3480
    #dbg_value(i64 %xor287, !3193, !DIExpression(), !3101)
  %189 = shl i64 %xor287, 14, !dbg !3481
  %190 = lshr i64 %xor287, 50, !dbg !3481
  %191 = or i64 %189, %190, !dbg !3481
    #dbg_value(i64 %191, !3163, !DIExpression(), !3101)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3482
    #dbg_value(i64 %xor275, !3175, !DIExpression(), !3101)
  %192 = shl i64 %xor275, 44, !dbg !3483
  %193 = lshr i64 %xor275, 20, !dbg !3483
  %194 = or i64 %192, %193, !dbg !3483
    #dbg_value(i64 %194, !3160, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor81, i64 %xor257), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3484
    #dbg_value(i64 %xor274, !3169, !DIExpression(), !3101)
    #dbg_value(i64 %xor274, !3159, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor274), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not305 = xor i64 %xor274, -1, !dbg !3485
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %not305), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and306 = and i64 %194, %not305, !dbg !3486
    #dbg_value(!DIArgList(i64 %191, i64 %and306), !3111, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor307 = xor i64 %191, %and306, !dbg !3487
    #dbg_value(i64 %xor307, !3111, !DIExpression(), !3101)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3488
    #dbg_value(i64 %xor283, !3187, !DIExpression(), !3101)
  %195 = shl i64 %xor283, 21, !dbg !3489
  %196 = lshr i64 %xor283, 43, !dbg !3489
  %197 = or i64 %195, %196, !dbg !3489
    #dbg_value(i64 %197, !3162, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %191), !3109, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not302 = xor i64 %191, -1, !dbg !3490
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %not302), !3109, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and303 = and i64 %xor274, %not302, !dbg !3491
    #dbg_value(!DIArgList(i64 %197, i64 %and303), !3109, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor304 = xor i64 %197, %and303, !dbg !3492
    #dbg_value(i64 %xor304, !3109, !DIExpression(), !3101)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3493
    #dbg_value(i64 %xor279, !3181, !DIExpression(), !3101)
  %198 = shl i64 %xor279, 43, !dbg !3494
  %199 = lshr i64 %xor279, 21, !dbg !3494
  %200 = or i64 %198, %199, !dbg !3494
    #dbg_value(i64 %200, !3161, !DIExpression(), !3101)
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %197), !3107, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %200), !3105, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
    #dbg_value(!DIArgList(i64 %xor274, i64 %200, i64 %194), !3103, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %not299 = xor i64 %197, -1, !dbg !3495
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %not299), !3107, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and300 = and i64 %191, %not299, !dbg !3496
    #dbg_value(!DIArgList(i64 %200, i64 %and300), !3107, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor301 = xor i64 %200, %and300, !dbg !3497
    #dbg_value(i64 %xor301, !3107, !DIExpression(), !3101)
  %not296 = xor i64 %200, -1, !dbg !3498
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %not296), !3105, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !3101)
  %and297 = and i64 %197, %not296, !dbg !3499
    #dbg_value(!DIArgList(i64 %194, i64 %and297), !3105, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %xor298 = xor i64 %194, %and297, !dbg !3500
    #dbg_value(i64 %xor298, !3105, !DIExpression(), !3101)
  %add = or disjoint i32 %round.0, 1, !dbg !3501
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @pqcrystals_dilithium_fips202_ref_KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3502
  %201 = load i64, ptr %arrayidx294, align 8, !dbg !3502
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %194), !3103, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %not291 = xor i64 %194, -1, !dbg !3503
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %not291), !3103, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %and292 = and i64 %200, %not291, !dbg !3504
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %and292), !3103, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !3101)
  %202 = xor i64 %and292, %201, !dbg !3505
  %xor295 = xor i64 %202, %xor274, !dbg !3505
    #dbg_value(i64 %xor295, !3103, !DIExpression(), !3101)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3506
    #dbg_value(i32 %add448, !3152, !DIExpression(), !3101)
  br label %for.cond, !dbg !3507, !llvm.loop !3508

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !3101
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !3101
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !3101
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !3101
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !3101
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !3101
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !3101
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !3101
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !3101
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !3101
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !3101
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !3101
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !3101
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !3101
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !3101
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !3101
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !3101
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !3101
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !3101
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !3101
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !3101
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !3101
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !3101
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !3101
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !3101
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3510
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3511
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3512
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3513
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3514
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3515
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3516
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3517
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3518
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3519
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3520
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3521
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3522
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3523
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3524
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3525
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3526
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3527
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3528
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3529
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3530
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3531
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3532
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3533
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3534
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3535
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3536
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3537
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3538
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3539
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3540
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3541
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3542
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3543
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3544
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3545
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3546
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3547
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3548
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3549
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3550
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3551
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3552
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3553
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3554
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3555
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3556
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3557
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3558
  ret void, !dbg !3559
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3560 {
entry:
    #dbg_value(ptr %state, !3561, !DIExpression(), !3562)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3563
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3563
  %conv = trunc i64 %0 to i32, !dbg !3564
  call fastcc void @keccak_finalize(ptr noundef %state, i32 noundef %conv, i32 noundef 168, i8 noundef zeroext 31) #4, !dbg !3565
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3566
  store i64 168, ptr %arrayidx1, align 8, !dbg !3567
  ret void, !dbg !3568
}

; Function Attrs: nounwind
define internal fastcc void @keccak_finalize(ptr noundef %s, i32 noundef %pos, i32 noundef range(i32 136, 169) %r, i8 noundef zeroext %p) unnamed_addr #0 !dbg !3569 {
entry:
    #dbg_value(ptr %s, !3572, !DIExpression(), !3573)
    #dbg_value(i32 %pos, !3574, !DIExpression(), !3573)
    #dbg_value(i32 %r, !3575, !DIExpression(), !3573)
    #dbg_value(i8 31, !3576, !DIExpression(), !3573)
  %rem = shl i32 %pos, 3, !dbg !3577
  %mul = and i32 %rem, 56, !dbg !3577
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3578
  %shl = shl nuw nsw i64 31, %sh_prom, !dbg !3578
  %div2 = lshr i32 %pos, 3, !dbg !3579
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %div2, !dbg !3580
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3581
  %xor = xor i64 %0, %shl, !dbg !3581
  store i64 %xor, ptr %arrayidx, align 8, !dbg !3581
  %div13 = lshr i32 %r, 3, !dbg !3582
  %1 = getelementptr i64, ptr %s, i32 %div13, !dbg !3583
  %arrayidx2 = getelementptr i8, ptr %1, i32 -8, !dbg !3583
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3584
  %xor3 = xor i64 %2, -9223372036854775808, !dbg !3584
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !3584
  ret void, !dbg !3585
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3586 {
entry:
    #dbg_value(ptr %out, !3589, !DIExpression(), !3590)
    #dbg_value(i32 %outlen, !3591, !DIExpression(), !3590)
    #dbg_value(ptr %state, !3592, !DIExpression(), !3590)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3593
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3593
  %conv = trunc i64 %0 to i32, !dbg !3594
  %call = call fastcc i32 @keccak_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state, i32 noundef %conv, i32 noundef 168) #4, !dbg !3595
    #dbg_value(i32 %call, !3596, !DIExpression(), !3590)
  %conv1 = zext i32 %call to i64, !dbg !3597
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3598
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !3599
  ret void, !dbg !3600
}

; Function Attrs: nounwind
define internal fastcc i32 @keccak_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %s, i32 noundef %pos, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3601 {
entry:
    #dbg_value(ptr %out, !3604, !DIExpression(), !3605)
    #dbg_value(i32 %outlen, !3606, !DIExpression(), !3605)
    #dbg_value(ptr %s, !3607, !DIExpression(), !3605)
    #dbg_value(i32 %pos, !3608, !DIExpression(), !3605)
    #dbg_value(i32 %r, !3609, !DIExpression(), !3605)
  br label %while.cond, !dbg !3610

while.cond:                                       ; preds = %for.end, %entry
  %pos.addr.0 = phi i32 [ %pos, %entry ], [ %i.0.lcssa, %for.end ]
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub3, %for.end ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %out.addr.1.lcssa, %for.end ]
    #dbg_value(ptr %out.addr.0, !3604, !DIExpression(), !3605)
    #dbg_value(i32 %outlen.addr.0, !3606, !DIExpression(), !3605)
    #dbg_value(i32 %pos.addr.0, !3608, !DIExpression(), !3605)
  %tobool.not = icmp eq i32 %outlen.addr.0, 0, !dbg !3610
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !3610

while.body:                                       ; preds = %while.cond
  %cmp = icmp eq i32 %pos.addr.0, %r, !dbg !3611
  br i1 %cmp, label %if.then, label %if.end, !dbg !3611

if.then:                                          ; preds = %while.body
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !3614
    #dbg_value(i32 0, !3608, !DIExpression(), !3605)
  br label %if.end, !dbg !3616

if.end:                                           ; preds = %if.then, %while.body
  %pos.addr.1 = phi i32 [ 0, %if.then ], [ %pos.addr.0, %while.body ]
    #dbg_value(i32 %pos.addr.1, !3608, !DIExpression(), !3605)
    #dbg_value(i32 %pos.addr.1, !3617, !DIExpression(), !3605)
  br label %for.cond, !dbg !3618

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ %pos.addr.1, %if.end ], [ %inc, %for.body ], !dbg !3620
  %out.addr.1 = phi ptr [ %out.addr.0, %if.end ], [ %incdec.ptr, %for.body ]
    #dbg_value(ptr %out.addr.1, !3604, !DIExpression(), !3605)
    #dbg_value(i32 %i.0, !3617, !DIExpression(), !3605)
  %cmp1 = icmp ult i32 %i.0, %r, !dbg !3621
  %add = add i32 %pos.addr.1, %outlen.addr.0, !dbg !3623
  %cmp2 = icmp ult i32 %i.0, %add, !dbg !3623
  %0 = and i1 %cmp1, %cmp2, !dbg !3623
  br i1 %0, label %for.body, label %for.end, !dbg !3624

for.body:                                         ; preds = %for.cond
  %div1 = lshr i32 %i.0, 3, !dbg !3625
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %div1, !dbg !3626
  %1 = load i64, ptr %arrayidx, align 8, !dbg !3626
  %rem = shl nuw nsw i32 %i.0, 3, !dbg !3627
  %mul = and i32 %rem, 56, !dbg !3627
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3628
  %shr = lshr i64 %1, %sh_prom, !dbg !3628
  %conv = trunc i64 %shr to i8, !dbg !3626
    #dbg_value(ptr %out.addr.1, !3604, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3605)
  store i8 %conv, ptr %out.addr.1, align 1, !dbg !3629
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %out.addr.1, i32 1, !dbg !3630
    #dbg_value(ptr %incdec.ptr, !3604, !DIExpression(), !3605)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3631
    #dbg_value(i32 %inc, !3617, !DIExpression(), !3605)
  br label %for.cond, !dbg !3632, !llvm.loop !3633

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3620
  %out.addr.1.lcssa = phi ptr [ %out.addr.1, %for.cond ]
  %sub.neg = sub i32 %pos.addr.1, %i.0.lcssa, !dbg !3635
  %sub3 = add i32 %sub.neg, %outlen.addr.0, !dbg !3636
    #dbg_value(i32 %sub3, !3606, !DIExpression(), !3605)
    #dbg_value(i32 %i.0.lcssa, !3608, !DIExpression(), !3605)
  br label %while.cond, !dbg !3610, !llvm.loop !3637

while.end:                                        ; preds = %while.cond
  %pos.addr.0.lcssa = phi i32 [ %pos.addr.0, %while.cond ]
  ret i32 %pos.addr.0.lcssa, !dbg !3639
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_absorb_once(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3640 {
entry:
    #dbg_value(ptr %state, !3641, !DIExpression(), !3642)
    #dbg_value(ptr %in, !3643, !DIExpression(), !3642)
    #dbg_value(i32 %inlen, !3644, !DIExpression(), !3642)
  call fastcc void @keccak_absorb_once(ptr noundef %state, i32 noundef 168, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !3645
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3646
  store i64 168, ptr %arrayidx, align 8, !dbg !3647
  ret void, !dbg !3648
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb_once(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3649 {
entry:
    #dbg_value(ptr %s, !3652, !DIExpression(), !3653)
    #dbg_value(i32 %r, !3654, !DIExpression(), !3653)
    #dbg_value(ptr %in, !3655, !DIExpression(), !3653)
    #dbg_value(i32 %inlen, !3656, !DIExpression(), !3653)
    #dbg_value(i8 %p, !3657, !DIExpression(), !3653)
    #dbg_value(i32 0, !3658, !DIExpression(), !3653)
  br label %for.cond, !dbg !3659

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3661
    #dbg_value(i32 %i.0, !3658, !DIExpression(), !3653)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3662
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !3664

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !3665
  br label %while.cond, !dbg !3665

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !3666
  store i64 0, ptr %arrayidx, align 8, !dbg !3667
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3668
    #dbg_value(i32 %inc, !3658, !DIExpression(), !3653)
  br label %for.cond, !dbg !3669, !llvm.loop !3670

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %in.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %in, %while.cond.preheader ]
  %inlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %inlen, %while.cond.preheader ]
    #dbg_value(i32 %inlen.addr.0, !3656, !DIExpression(), !3653)
    #dbg_value(ptr %in.addr.0, !3655, !DIExpression(), !3653)
  %cmp1.not = icmp ult i32 %inlen.addr.0, %r, !dbg !3672
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !3665

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !3673

for.cond10.preheader:                             ; preds = %while.cond
  %inlen.addr.0.lcssa6 = phi i32 [ %inlen.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  br label %for.cond10, !dbg !3676

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !3678
    #dbg_value(i32 %i.1, !3658, !DIExpression(), !3653)
  %exitcond5 = icmp ne i32 %i.1, %0, !dbg !3679
  br i1 %exitcond5, label %for.body4, label %for.end8, !dbg !3673

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !3681
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 %mul, !dbg !3682
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #4, !dbg !3683
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !3684
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !3685
  %xor = xor i64 %1, %call, !dbg !3685
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !3685
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !3686
    #dbg_value(i32 %inc7, !3658, !DIExpression(), !3653)
  br label %for.cond2, !dbg !3687, !llvm.loop !3688

for.end8:                                         ; preds = %for.cond2
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 %r, !dbg !3690
    #dbg_value(ptr %add.ptr9, !3655, !DIExpression(), !3653)
  %sub = sub i32 %inlen.addr.0, %r, !dbg !3691
    #dbg_value(i32 %sub, !3656, !DIExpression(), !3653)
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !3692
  br label %while.cond, !dbg !3665, !llvm.loop !3693

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc19, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !3695
    #dbg_value(i32 %i.2, !3658, !DIExpression(), !3653)
  %exitcond7 = icmp ne i32 %i.2, %inlen.addr.0.lcssa6, !dbg !3696
  br i1 %exitcond7, label %for.body12, label %for.end20, !dbg !3676

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %in.addr.0.lcssa, i32 %i.2, !dbg !3698
  %2 = load i8, ptr %arrayidx13, align 1, !dbg !3698
  %conv = zext i8 %2 to i64, !dbg !3699
  %rem = shl i32 %i.2, 3, !dbg !3700
  %mul14 = and i32 %rem, 56, !dbg !3700
  %sh_prom = zext nneg i32 %mul14 to i64, !dbg !3701
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !3701
  %div153 = lshr i32 %i.2, 3, !dbg !3702
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %s, i32 %div153, !dbg !3703
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !3704
  %xor17 = xor i64 %3, %shl, !dbg !3704
  store i64 %xor17, ptr %arrayidx16, align 8, !dbg !3704
  %inc19 = add i32 %i.2, 1, !dbg !3705
    #dbg_value(i32 %inc19, !3658, !DIExpression(), !3653)
  br label %for.cond10, !dbg !3706, !llvm.loop !3707

for.end20:                                        ; preds = %for.cond10
  %i.2.lcssa = phi i32 [ %i.2, %for.cond10 ], !dbg !3695
  %conv21 = zext nneg i8 %p to i64, !dbg !3709
  %rem22 = shl i32 %i.2.lcssa, 3, !dbg !3710
  %mul23 = and i32 %rem22, 56, !dbg !3710
  %sh_prom24 = zext nneg i32 %mul23 to i64, !dbg !3711
  %shl25 = shl nuw nsw i64 %conv21, %sh_prom24, !dbg !3711
  %div261 = lshr i32 %i.2.lcssa, 3, !dbg !3712
  %arrayidx27 = getelementptr inbounds nuw i64, ptr %s, i32 %div261, !dbg !3713
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !3714
  %xor28 = xor i64 %4, %shl25, !dbg !3714
  store i64 %xor28, ptr %arrayidx27, align 8, !dbg !3714
  %sub29 = add nsw i32 %r, -1, !dbg !3715
  %div302 = lshr i32 %sub29, 3, !dbg !3716
  %arrayidx31 = getelementptr inbounds nuw i64, ptr %s, i32 %div302, !dbg !3717
  %5 = load i64, ptr %arrayidx31, align 8, !dbg !3718
  %xor32 = xor i64 %5, -9223372036854775808, !dbg !3718
  store i64 %xor32, ptr %arrayidx31, align 8, !dbg !3718
  ret void, !dbg !3719
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !3720 {
entry:
    #dbg_value(ptr %x, !3723, !DIExpression(), !3724)
    #dbg_value(i64 0, !3725, !DIExpression(), !3724)
    #dbg_value(i32 0, !3726, !DIExpression(), !3724)
  br label %for.cond, !dbg !3727

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3729
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !3724
    #dbg_value(i64 %r.0, !3725, !DIExpression(), !3724)
    #dbg_value(i32 %i.0, !3726, !DIExpression(), !3724)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !3730
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !3732

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !3725, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3724)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !3733
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3733
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !3725, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3724)
  %conv = zext i8 %0 to i64, !dbg !3734
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !3725, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3724)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3735
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !3725, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3724)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3736
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !3725, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3724)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !3736
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !3725, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3724)
  %or = or i64 %r.0, %shl, !dbg !3737
    #dbg_value(i64 %or, !3725, !DIExpression(), !3724)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3738
    #dbg_value(i32 %inc, !3726, !DIExpression(), !3724)
  br label %for.cond, !dbg !3739, !llvm.loop !3740

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !3724
  ret i64 %r.0.lcssa, !dbg !3742
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !3743 {
entry:
    #dbg_value(ptr %out, !3744, !DIExpression(), !3745)
    #dbg_value(i32 %nblocks, !3746, !DIExpression(), !3745)
    #dbg_value(ptr %state, !3747, !DIExpression(), !3745)
  call fastcc void @keccak_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state, i32 noundef 168) #4, !dbg !3748
  ret void, !dbg !3749
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3750 {
entry:
    #dbg_value(ptr %out, !3753, !DIExpression(), !3754)
    #dbg_value(i32 %nblocks, !3755, !DIExpression(), !3754)
    #dbg_value(ptr %s, !3756, !DIExpression(), !3754)
    #dbg_value(i32 %r, !3757, !DIExpression(), !3754)
  %0 = lshr i32 %r, 3, !dbg !3758
  br label %while.cond, !dbg !3758

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %for.end ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr1, %for.end ]
    #dbg_value(ptr %out.addr.0, !3753, !DIExpression(), !3754)
    #dbg_value(i32 %nblocks.addr.0, !3755, !DIExpression(), !3754)
  %tobool.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !3758
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !3758

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !3759
    #dbg_value(i32 0, !3761, !DIExpression(), !3754)
  br label %for.cond, !dbg !3762

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !3764
    #dbg_value(i32 %i.0, !3761, !DIExpression(), !3754)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !3765
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3767

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3768
  %add.ptr = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 %mul, !dbg !3769
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !3770
  %1 = load i64, ptr %arrayidx, align 8, !dbg !3770
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #4, !dbg !3771
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3772
    #dbg_value(i32 %inc, !3761, !DIExpression(), !3754)
  br label %for.cond, !dbg !3773, !llvm.loop !3774

for.end:                                          ; preds = %for.cond
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 %r, !dbg !3776
    #dbg_value(ptr %add.ptr1, !3753, !DIExpression(), !3754)
  %sub = add i32 %nblocks.addr.0, -1, !dbg !3777
    #dbg_value(i32 %sub, !3755, !DIExpression(), !3754)
  br label %while.cond, !dbg !3758, !llvm.loop !3778

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3780
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !3781 {
entry:
    #dbg_value(ptr %x, !3784, !DIExpression(), !3785)
    #dbg_value(i64 %u, !3786, !DIExpression(), !3785)
    #dbg_value(i32 0, !3787, !DIExpression(), !3785)
  br label %for.cond, !dbg !3788

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3790
    #dbg_value(i32 %i.0, !3787, !DIExpression(), !3785)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !3791
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3793

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3794
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3795
  %shr = lshr i64 %u, %sh_prom, !dbg !3795
  %conv = trunc i64 %shr to i8, !dbg !3796
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !3797
  store i8 %conv, ptr %arrayidx, align 1, !dbg !3798
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3799
    #dbg_value(i32 %inc, !3787, !DIExpression(), !3785)
  br label %for.cond, !dbg !3800, !llvm.loop !3801

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3803
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3804 {
entry:
    #dbg_value(ptr %state, !3805, !DIExpression(), !3806)
  call fastcc void @keccak_init(ptr noundef %state) #4, !dbg !3807
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3808
  store i64 0, ptr %arrayidx, align 8, !dbg !3809
  ret void, !dbg !3810
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3811 {
entry:
    #dbg_value(ptr %state, !3812, !DIExpression(), !3813)
    #dbg_value(ptr %in, !3814, !DIExpression(), !3813)
    #dbg_value(i32 %inlen, !3815, !DIExpression(), !3813)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3816
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3816
  %conv = trunc i64 %0 to i32, !dbg !3817
  %call = call fastcc i32 @keccak_absorb(ptr noundef %state, i32 noundef %conv, i32 noundef 136, ptr noundef %in, i32 noundef %inlen) #4, !dbg !3818
    #dbg_value(i32 %call, !3819, !DIExpression(), !3813)
  %conv1 = zext i32 %call to i64, !dbg !3820
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3821
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !3822
  ret void, !dbg !3823
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3824 {
entry:
    #dbg_value(ptr %state, !3825, !DIExpression(), !3826)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3827
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3827
  %conv = trunc i64 %0 to i32, !dbg !3828
  call fastcc void @keccak_finalize(ptr noundef %state, i32 noundef %conv, i32 noundef 136, i8 noundef zeroext 31) #4, !dbg !3829
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3830
  store i64 136, ptr %arrayidx1, align 8, !dbg !3831
  ret void, !dbg !3832
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3833 {
entry:
    #dbg_value(ptr %out, !3834, !DIExpression(), !3835)
    #dbg_value(i32 %outlen, !3836, !DIExpression(), !3835)
    #dbg_value(ptr %state, !3837, !DIExpression(), !3835)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3838
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3838
  %conv = trunc i64 %0 to i32, !dbg !3839
  %call = call fastcc i32 @keccak_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state, i32 noundef %conv, i32 noundef 136) #4, !dbg !3840
    #dbg_value(i32 %call, !3841, !DIExpression(), !3835)
  %conv1 = zext i32 %call to i64, !dbg !3842
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3843
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !3844
  ret void, !dbg !3845
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_absorb_once(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3846 {
entry:
    #dbg_value(ptr %state, !3847, !DIExpression(), !3848)
    #dbg_value(ptr %in, !3849, !DIExpression(), !3848)
    #dbg_value(i32 %inlen, !3850, !DIExpression(), !3848)
  call fastcc void @keccak_absorb_once(ptr noundef %state, i32 noundef 136, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !3851
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3852
  store i64 136, ptr %arrayidx, align 8, !dbg !3853
  ret void, !dbg !3854
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !3855 {
entry:
    #dbg_value(ptr %out, !3856, !DIExpression(), !3857)
    #dbg_value(i32 %nblocks, !3858, !DIExpression(), !3857)
    #dbg_value(ptr %state, !3859, !DIExpression(), !3857)
  call fastcc void @keccak_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state, i32 noundef 136) #4, !dbg !3860
  ret void, !dbg !3861
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128(ptr noundef %out, i32 noundef %outlen, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3862 {
entry:
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %out, !3865, !DIExpression(), !3866)
    #dbg_value(i32 %outlen, !3867, !DIExpression(), !3866)
    #dbg_value(ptr %in, !3868, !DIExpression(), !3866)
    #dbg_value(i32 %inlen, !3869, !DIExpression(), !3866)
    #dbg_declare(ptr %state, !3870, !DIExpression(), !3871)
  call void @pqcrystals_dilithium_fips202_ref_shake128_absorb_once(ptr noundef nonnull %state, ptr noundef %in, i32 noundef %inlen) #4, !dbg !3872
  %div = udiv i32 %outlen, 168, !dbg !3873
    #dbg_value(i32 %div, !3874, !DIExpression(), !3866)
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef %out, i32 noundef %div, ptr noundef nonnull %state) #4, !dbg !3875
  %mul.neg = mul i32 %div, -168, !dbg !3876
  %sub = add i32 %mul.neg, %outlen, !dbg !3877
    #dbg_value(i32 %sub, !3867, !DIExpression(), !3866)
  %mul1 = mul nuw i32 %div, 168, !dbg !3878
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %mul1, !dbg !3879
    #dbg_value(ptr %add.ptr, !3865, !DIExpression(), !3866)
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeeze(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %state) #4, !dbg !3880
  ret void, !dbg !3881
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef %out, i32 noundef %outlen, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3882 {
entry:
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %out, !3883, !DIExpression(), !3884)
    #dbg_value(i32 %outlen, !3885, !DIExpression(), !3884)
    #dbg_value(ptr %in, !3886, !DIExpression(), !3884)
    #dbg_value(i32 %inlen, !3887, !DIExpression(), !3884)
    #dbg_declare(ptr %state, !3888, !DIExpression(), !3889)
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb_once(ptr noundef nonnull %state, ptr noundef %in, i32 noundef %inlen) #4, !dbg !3890
  %div = udiv i32 %outlen, 136, !dbg !3891
    #dbg_value(i32 %div, !3892, !DIExpression(), !3884)
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef %out, i32 noundef %div, ptr noundef nonnull %state) #4, !dbg !3893
  %mul.neg = mul i32 %div, -136, !dbg !3894
  %sub = add i32 %mul.neg, %outlen, !dbg !3895
    #dbg_value(i32 %sub, !3885, !DIExpression(), !3884)
  %mul1 = mul nuw i32 %div, 136, !dbg !3896
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %mul1, !dbg !3897
    #dbg_value(ptr %add.ptr, !3883, !DIExpression(), !3884)
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %state) #4, !dbg !3898
  ret void, !dbg !3899
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_sha3_256(ptr noundef %h, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3900 {
entry:
  %s = alloca [25 x i64], align 8
    #dbg_value(ptr %h, !3903, !DIExpression(), !3904)
    #dbg_value(ptr %in, !3905, !DIExpression(), !3904)
    #dbg_value(i32 %inlen, !3906, !DIExpression(), !3904)
    #dbg_declare(ptr %s, !3907, !DIExpression(), !3911)
  call fastcc void @keccak_absorb_once(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !3912
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s) #4, !dbg !3913
    #dbg_value(i32 0, !3914, !DIExpression(), !3904)
  br label %for.cond, !dbg !3915

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3917
    #dbg_value(i32 %i.0, !3914, !DIExpression(), !3904)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !3918
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3920

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3921
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %mul, !dbg !3922
  %arrayidx = getelementptr inbounds nuw [25 x i64], ptr %s, i32 0, i32 %i.0, !dbg !3923
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3923
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %0) #4, !dbg !3924
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3925
    #dbg_value(i32 %inc, !3914, !DIExpression(), !3904)
  br label %for.cond, !dbg !3926, !llvm.loop !3927

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3929
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_sha3_512(ptr noundef %h, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3930 {
entry:
  %s = alloca [25 x i64], align 8
    #dbg_value(ptr %h, !3931, !DIExpression(), !3932)
    #dbg_value(ptr %in, !3933, !DIExpression(), !3932)
    #dbg_value(i32 %inlen, !3934, !DIExpression(), !3932)
    #dbg_declare(ptr %s, !3935, !DIExpression(), !3936)
  call fastcc void @keccak_absorb_once(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !3937
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s) #4, !dbg !3938
    #dbg_value(i32 0, !3939, !DIExpression(), !3932)
  br label %for.cond, !dbg !3940

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3942
    #dbg_value(i32 %i.0, !3939, !DIExpression(), !3932)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !3943
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3945

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3946
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %mul, !dbg !3947
  %arrayidx = getelementptr inbounds nuw [25 x i64], ptr %s, i32 0, i32 %i.0, !dbg !3948
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3948
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %0) #4, !dbg !3949
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3950
    #dbg_value(i32 %inc, !3939, !DIExpression(), !3932)
  br label %for.cond, !dbg !3951, !llvm.loop !3952

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3954
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_dilithium_shake128_stream_init(ptr noundef %state, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !3955 {
entry:
  %t = alloca [2 x i8], align 1
    #dbg_value(ptr %state, !3959, !DIExpression(), !3960)
    #dbg_value(ptr %seed, !3961, !DIExpression(), !3960)
    #dbg_value(i16 %nonce, !3962, !DIExpression(), !3960)
    #dbg_declare(ptr %t, !3963, !DIExpression(), !3967)
  %conv = trunc i16 %nonce to i8, !dbg !3968
  store i8 %conv, ptr %t, align 1, !dbg !3969
  %0 = lshr i16 %nonce, 8, !dbg !3970
  %conv2 = trunc nuw i16 %0 to i8, !dbg !3971
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %t, i32 1, !dbg !3972
  store i8 %conv2, ptr %arrayidx3, align 1, !dbg !3973
  call void @pqcrystals_dilithium_fips202_ref_shake128_init(ptr noundef %state) #4, !dbg !3974
  call void @pqcrystals_dilithium_fips202_ref_shake128_absorb(ptr noundef %state, ptr noundef %seed, i32 noundef 32) #4, !dbg !3975
  call void @pqcrystals_dilithium_fips202_ref_shake128_absorb(ptr noundef %state, ptr noundef nonnull %t, i32 noundef 2) #4, !dbg !3976
  call void @pqcrystals_dilithium_fips202_ref_shake128_finalize(ptr noundef %state) #4, !dbg !3977
  ret void, !dbg !3978
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_dilithium_shake256_stream_init(ptr noundef %state, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !3979 {
entry:
  %t = alloca [2 x i8], align 1
    #dbg_value(ptr %state, !3980, !DIExpression(), !3981)
    #dbg_value(ptr %seed, !3982, !DIExpression(), !3981)
    #dbg_value(i16 %nonce, !3983, !DIExpression(), !3981)
    #dbg_declare(ptr %t, !3984, !DIExpression(), !3985)
  %conv = trunc i16 %nonce to i8, !dbg !3986
  store i8 %conv, ptr %t, align 1, !dbg !3987
  %0 = lshr i16 %nonce, 8, !dbg !3988
  %conv2 = trunc nuw i16 %0 to i8, !dbg !3989
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %t, i32 1, !dbg !3990
  store i8 %conv2, ptr %arrayidx3, align 1, !dbg !3991
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef %state) #4, !dbg !3992
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef %state, ptr noundef %seed, i32 noundef 64) #4, !dbg !3993
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef %state, ptr noundef nonnull %t, i32 noundef 2) #4, !dbg !3994
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef %state) #4, !dbg !3995
  ret void, !dbg !3996
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_pack_pk(ptr noundef %pk, ptr noundef %rho, ptr noundef %t1) local_unnamed_addr #0 !dbg !3997 {
entry:
    #dbg_value(ptr %pk, !4001, !DIExpression(), !4002)
    #dbg_value(ptr %rho, !4003, !DIExpression(), !4002)
    #dbg_value(ptr %t1, !4004, !DIExpression(), !4002)
    #dbg_value(i32 0, !4005, !DIExpression(), !4002)
  br label %for.cond, !dbg !4006

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4008
    #dbg_value(i32 %i.0, !4005, !DIExpression(), !4002)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4009
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4011

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !4012
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4012
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %pk, i32 %i.0, !dbg !4013
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4014
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4015
    #dbg_value(i32 %inc, !4005, !DIExpression(), !4002)
  br label %for.cond, !dbg !4016, !llvm.loop !4017

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 32, !dbg !4019
    #dbg_value(ptr %add.ptr, !4001, !DIExpression(), !4002)
    #dbg_value(i32 0, !4005, !DIExpression(), !4002)
  br label %for.cond2, !dbg !4020

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !4022
    #dbg_value(i32 %i.1, !4005, !DIExpression(), !4002)
  %exitcond1 = icmp ne i32 %i.1, 4, !dbg !4023
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !4025

for.body4:                                        ; preds = %for.cond2
  %mul = mul nuw nsw i32 %i.1, 320, !dbg !4026
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !4027
  %arrayidx6 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %t1, i32 0, i32 %i.1, !dbg !4028
  call void @pqcrystals_dilithium2_ref_polyt1_pack(ptr noundef nonnull %add.ptr5, ptr noundef %arrayidx6) #4, !dbg !4029
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !4030
    #dbg_value(i32 %inc8, !4005, !DIExpression(), !4002)
  br label %for.cond2, !dbg !4031, !llvm.loop !4032

for.end9:                                         ; preds = %for.cond2
  ret void, !dbg !4034
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_unpack_pk(ptr noundef %rho, ptr noundef %t1, ptr noundef %pk) local_unnamed_addr #0 !dbg !4035 {
entry:
    #dbg_value(ptr %rho, !4038, !DIExpression(), !4039)
    #dbg_value(ptr %t1, !4040, !DIExpression(), !4039)
    #dbg_value(ptr %pk, !4041, !DIExpression(), !4039)
    #dbg_value(i32 0, !4042, !DIExpression(), !4039)
  br label %for.cond, !dbg !4043

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4045
    #dbg_value(i32 %i.0, !4042, !DIExpression(), !4039)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4046
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4048

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %pk, i32 %i.0, !dbg !4049
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4049
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !4050
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4051
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4052
    #dbg_value(i32 %inc, !4042, !DIExpression(), !4039)
  br label %for.cond, !dbg !4053, !llvm.loop !4054

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 32, !dbg !4056
    #dbg_value(ptr %add.ptr, !4041, !DIExpression(), !4039)
    #dbg_value(i32 0, !4042, !DIExpression(), !4039)
  br label %for.cond2, !dbg !4057

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !4059
    #dbg_value(i32 %i.1, !4042, !DIExpression(), !4039)
  %exitcond1 = icmp ne i32 %i.1, 4, !dbg !4060
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !4062

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %t1, i32 0, i32 %i.1, !dbg !4063
  %mul = mul nuw nsw i32 %i.1, 320, !dbg !4064
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !4065
  call void @pqcrystals_dilithium2_ref_polyt1_unpack(ptr noundef %arrayidx5, ptr noundef nonnull %add.ptr6) #4, !dbg !4066
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !4067
    #dbg_value(i32 %inc8, !4042, !DIExpression(), !4039)
  br label %for.cond2, !dbg !4068, !llvm.loop !4069

for.end9:                                         ; preds = %for.cond2
  ret void, !dbg !4071
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_pack_sk(ptr noundef %sk, ptr noundef %rho, ptr noundef %tr, ptr noundef %key, ptr noundef %t0, ptr noundef %s1, ptr noundef %s2) local_unnamed_addr #0 !dbg !4072 {
entry:
    #dbg_value(ptr %sk, !4075, !DIExpression(), !4076)
    #dbg_value(ptr %rho, !4077, !DIExpression(), !4076)
    #dbg_value(ptr %tr, !4078, !DIExpression(), !4076)
    #dbg_value(ptr %key, !4079, !DIExpression(), !4076)
    #dbg_value(ptr %t0, !4080, !DIExpression(), !4076)
    #dbg_value(ptr %s1, !4081, !DIExpression(), !4076)
    #dbg_value(ptr %s2, !4082, !DIExpression(), !4076)
    #dbg_value(i32 0, !4083, !DIExpression(), !4076)
  br label %for.cond, !dbg !4084

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4086
    #dbg_value(i32 %i.0, !4083, !DIExpression(), !4076)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4087
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4089

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !4090
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4090
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %sk, i32 %i.0, !dbg !4091
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4092
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4093
    #dbg_value(i32 %inc, !4083, !DIExpression(), !4076)
  br label %for.cond, !dbg !4094, !llvm.loop !4095

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !4097
    #dbg_value(ptr %add.ptr, !4075, !DIExpression(), !4076)
    #dbg_value(i32 0, !4083, !DIExpression(), !4076)
  br label %for.cond2, !dbg !4098

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !4100
    #dbg_value(i32 %i.1, !4083, !DIExpression(), !4076)
  %exitcond1 = icmp ne i32 %i.1, 32, !dbg !4101
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !4103

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %key, i32 %i.1, !dbg !4104
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !4104
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.1, !dbg !4105
  store i8 %1, ptr %arrayidx6, align 1, !dbg !4106
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !4107
    #dbg_value(i32 %inc8, !4083, !DIExpression(), !4076)
  br label %for.cond2, !dbg !4108, !llvm.loop !4109

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sk, i32 64, !dbg !4111
    #dbg_value(ptr %add.ptr10, !4075, !DIExpression(), !4076)
    #dbg_value(i32 0, !4083, !DIExpression(), !4076)
  br label %for.cond11, !dbg !4112

for.cond11:                                       ; preds = %for.body13, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc17, %for.body13 ], !dbg !4114
    #dbg_value(i32 %i.2, !4083, !DIExpression(), !4076)
  %exitcond2 = icmp ne i32 %i.2, 64, !dbg !4115
  br i1 %exitcond2, label %for.body13, label %for.end18, !dbg !4117

for.body13:                                       ; preds = %for.cond11
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %tr, i32 %i.2, !dbg !4118
  %2 = load i8, ptr %arrayidx14, align 1, !dbg !4118
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4119
  store i8 %2, ptr %arrayidx15, align 1, !dbg !4120
  %inc17 = add nuw nsw i32 %i.2, 1, !dbg !4121
    #dbg_value(i32 %inc17, !4083, !DIExpression(), !4076)
  br label %for.cond11, !dbg !4122, !llvm.loop !4123

for.end18:                                        ; preds = %for.cond11
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %sk, i32 128, !dbg !4125
    #dbg_value(ptr %add.ptr19, !4075, !DIExpression(), !4076)
    #dbg_value(i32 0, !4083, !DIExpression(), !4076)
  br label %for.cond20, !dbg !4126

for.cond20:                                       ; preds = %for.body22, %for.end18
  %i.3 = phi i32 [ 0, %for.end18 ], [ %inc26, %for.body22 ], !dbg !4128
    #dbg_value(i32 %i.3, !4083, !DIExpression(), !4076)
  %exitcond3 = icmp ne i32 %i.3, 4, !dbg !4129
  br i1 %exitcond3, label %for.body22, label %for.end27, !dbg !4131

for.body22:                                       ; preds = %for.cond20
  %mul = mul nuw nsw i32 %i.3, 96, !dbg !4132
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %add.ptr19, i32 %mul, !dbg !4133
  %arrayidx24 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %s1, i32 0, i32 %i.3, !dbg !4134
  call void @pqcrystals_dilithium2_ref_polyeta_pack(ptr noundef nonnull %add.ptr23, ptr noundef %arrayidx24) #4, !dbg !4135
  %inc26 = add nuw nsw i32 %i.3, 1, !dbg !4136
    #dbg_value(i32 %inc26, !4083, !DIExpression(), !4076)
  br label %for.cond20, !dbg !4137, !llvm.loop !4138

for.end27:                                        ; preds = %for.cond20
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %sk, i32 512, !dbg !4140
    #dbg_value(ptr %add.ptr28, !4075, !DIExpression(), !4076)
    #dbg_value(i32 0, !4083, !DIExpression(), !4076)
  br label %for.cond29, !dbg !4141

for.cond29:                                       ; preds = %for.body31, %for.end27
  %i.4 = phi i32 [ 0, %for.end27 ], [ %inc36, %for.body31 ], !dbg !4143
    #dbg_value(i32 %i.4, !4083, !DIExpression(), !4076)
  %exitcond4 = icmp ne i32 %i.4, 4, !dbg !4144
  br i1 %exitcond4, label %for.body31, label %for.end37, !dbg !4146

for.body31:                                       ; preds = %for.cond29
  %mul32 = mul nuw nsw i32 %i.4, 96, !dbg !4147
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %add.ptr28, i32 %mul32, !dbg !4148
  %arrayidx34 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %s2, i32 0, i32 %i.4, !dbg !4149
  call void @pqcrystals_dilithium2_ref_polyeta_pack(ptr noundef nonnull %add.ptr33, ptr noundef %arrayidx34) #4, !dbg !4150
  %inc36 = add nuw nsw i32 %i.4, 1, !dbg !4151
    #dbg_value(i32 %inc36, !4083, !DIExpression(), !4076)
  br label %for.cond29, !dbg !4152, !llvm.loop !4153

for.end37:                                        ; preds = %for.cond29
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %sk, i32 896, !dbg !4155
    #dbg_value(ptr %add.ptr38, !4075, !DIExpression(), !4076)
    #dbg_value(i32 0, !4083, !DIExpression(), !4076)
  br label %for.cond39, !dbg !4156

for.cond39:                                       ; preds = %for.body41, %for.end37
  %i.5 = phi i32 [ 0, %for.end37 ], [ %inc46, %for.body41 ], !dbg !4158
    #dbg_value(i32 %i.5, !4083, !DIExpression(), !4076)
  %exitcond5 = icmp ne i32 %i.5, 4, !dbg !4159
  br i1 %exitcond5, label %for.body41, label %for.end47, !dbg !4161

for.body41:                                       ; preds = %for.cond39
  %mul42 = mul nuw nsw i32 %i.5, 416, !dbg !4162
  %add.ptr43 = getelementptr inbounds nuw i8, ptr %add.ptr38, i32 %mul42, !dbg !4163
  %arrayidx44 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %t0, i32 0, i32 %i.5, !dbg !4164
  call void @pqcrystals_dilithium2_ref_polyt0_pack(ptr noundef nonnull %add.ptr43, ptr noundef %arrayidx44) #4, !dbg !4165
  %inc46 = add nuw nsw i32 %i.5, 1, !dbg !4166
    #dbg_value(i32 %inc46, !4083, !DIExpression(), !4076)
  br label %for.cond39, !dbg !4167, !llvm.loop !4168

for.end47:                                        ; preds = %for.cond39
  ret void, !dbg !4170
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_unpack_sk(ptr noundef %rho, ptr noundef %tr, ptr noundef %key, ptr noundef %t0, ptr noundef %s1, ptr noundef %s2, ptr noundef %sk) local_unnamed_addr #0 !dbg !4171 {
entry:
    #dbg_value(ptr %rho, !4174, !DIExpression(), !4175)
    #dbg_value(ptr %tr, !4176, !DIExpression(), !4175)
    #dbg_value(ptr %key, !4177, !DIExpression(), !4175)
    #dbg_value(ptr %t0, !4178, !DIExpression(), !4175)
    #dbg_value(ptr %s1, !4179, !DIExpression(), !4175)
    #dbg_value(ptr %s2, !4180, !DIExpression(), !4175)
    #dbg_value(ptr %sk, !4181, !DIExpression(), !4175)
    #dbg_value(i32 0, !4182, !DIExpression(), !4175)
  br label %for.cond, !dbg !4183

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4185
    #dbg_value(i32 %i.0, !4182, !DIExpression(), !4175)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4186
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4188

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %sk, i32 %i.0, !dbg !4189
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4189
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !4190
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4191
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4192
    #dbg_value(i32 %inc, !4182, !DIExpression(), !4175)
  br label %for.cond, !dbg !4193, !llvm.loop !4194

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !4196
    #dbg_value(ptr %add.ptr, !4181, !DIExpression(), !4175)
    #dbg_value(i32 0, !4182, !DIExpression(), !4175)
  br label %for.cond2, !dbg !4197

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !4199
    #dbg_value(i32 %i.1, !4182, !DIExpression(), !4175)
  %exitcond1 = icmp ne i32 %i.1, 32, !dbg !4200
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !4202

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.1, !dbg !4203
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !4203
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %key, i32 %i.1, !dbg !4204
  store i8 %1, ptr %arrayidx6, align 1, !dbg !4205
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !4206
    #dbg_value(i32 %inc8, !4182, !DIExpression(), !4175)
  br label %for.cond2, !dbg !4207, !llvm.loop !4208

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sk, i32 64, !dbg !4210
    #dbg_value(ptr %add.ptr10, !4181, !DIExpression(), !4175)
    #dbg_value(i32 0, !4182, !DIExpression(), !4175)
  br label %for.cond11, !dbg !4211

for.cond11:                                       ; preds = %for.body13, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc17, %for.body13 ], !dbg !4213
    #dbg_value(i32 %i.2, !4182, !DIExpression(), !4175)
  %exitcond2 = icmp ne i32 %i.2, 64, !dbg !4214
  br i1 %exitcond2, label %for.body13, label %for.end18, !dbg !4216

for.body13:                                       ; preds = %for.cond11
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4217
  %2 = load i8, ptr %arrayidx14, align 1, !dbg !4217
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %tr, i32 %i.2, !dbg !4218
  store i8 %2, ptr %arrayidx15, align 1, !dbg !4219
  %inc17 = add nuw nsw i32 %i.2, 1, !dbg !4220
    #dbg_value(i32 %inc17, !4182, !DIExpression(), !4175)
  br label %for.cond11, !dbg !4221, !llvm.loop !4222

for.end18:                                        ; preds = %for.cond11
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %sk, i32 128, !dbg !4224
    #dbg_value(ptr %add.ptr19, !4181, !DIExpression(), !4175)
    #dbg_value(i32 0, !4182, !DIExpression(), !4175)
  br label %for.cond20, !dbg !4225

for.cond20:                                       ; preds = %for.body22, %for.end18
  %i.3 = phi i32 [ 0, %for.end18 ], [ %inc26, %for.body22 ], !dbg !4227
    #dbg_value(i32 %i.3, !4182, !DIExpression(), !4175)
  %exitcond3 = icmp ne i32 %i.3, 4, !dbg !4228
  br i1 %exitcond3, label %for.body22, label %for.end27, !dbg !4230

for.body22:                                       ; preds = %for.cond20
  %arrayidx23 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %s1, i32 0, i32 %i.3, !dbg !4231
  %mul = mul nuw nsw i32 %i.3, 96, !dbg !4232
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %add.ptr19, i32 %mul, !dbg !4233
  call void @pqcrystals_dilithium2_ref_polyeta_unpack(ptr noundef %arrayidx23, ptr noundef nonnull %add.ptr24) #4, !dbg !4234
  %inc26 = add nuw nsw i32 %i.3, 1, !dbg !4235
    #dbg_value(i32 %inc26, !4182, !DIExpression(), !4175)
  br label %for.cond20, !dbg !4236, !llvm.loop !4237

for.end27:                                        ; preds = %for.cond20
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %sk, i32 512, !dbg !4239
    #dbg_value(ptr %add.ptr28, !4181, !DIExpression(), !4175)
    #dbg_value(i32 0, !4182, !DIExpression(), !4175)
  br label %for.cond29, !dbg !4240

for.cond29:                                       ; preds = %for.body31, %for.end27
  %i.4 = phi i32 [ 0, %for.end27 ], [ %inc36, %for.body31 ], !dbg !4242
    #dbg_value(i32 %i.4, !4182, !DIExpression(), !4175)
  %exitcond4 = icmp ne i32 %i.4, 4, !dbg !4243
  br i1 %exitcond4, label %for.body31, label %for.end37, !dbg !4245

for.body31:                                       ; preds = %for.cond29
  %arrayidx32 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %s2, i32 0, i32 %i.4, !dbg !4246
  %mul33 = mul nuw nsw i32 %i.4, 96, !dbg !4247
  %add.ptr34 = getelementptr inbounds nuw i8, ptr %add.ptr28, i32 %mul33, !dbg !4248
  call void @pqcrystals_dilithium2_ref_polyeta_unpack(ptr noundef %arrayidx32, ptr noundef nonnull %add.ptr34) #4, !dbg !4249
  %inc36 = add nuw nsw i32 %i.4, 1, !dbg !4250
    #dbg_value(i32 %inc36, !4182, !DIExpression(), !4175)
  br label %for.cond29, !dbg !4251, !llvm.loop !4252

for.end37:                                        ; preds = %for.cond29
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %sk, i32 896, !dbg !4254
    #dbg_value(ptr %add.ptr38, !4181, !DIExpression(), !4175)
    #dbg_value(i32 0, !4182, !DIExpression(), !4175)
  br label %for.cond39, !dbg !4255

for.cond39:                                       ; preds = %for.body41, %for.end37
  %i.5 = phi i32 [ 0, %for.end37 ], [ %inc46, %for.body41 ], !dbg !4257
    #dbg_value(i32 %i.5, !4182, !DIExpression(), !4175)
  %exitcond5 = icmp ne i32 %i.5, 4, !dbg !4258
  br i1 %exitcond5, label %for.body41, label %for.end47, !dbg !4260

for.body41:                                       ; preds = %for.cond39
  %arrayidx42 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %t0, i32 0, i32 %i.5, !dbg !4261
  %mul43 = mul nuw nsw i32 %i.5, 416, !dbg !4262
  %add.ptr44 = getelementptr inbounds nuw i8, ptr %add.ptr38, i32 %mul43, !dbg !4263
  call void @pqcrystals_dilithium2_ref_polyt0_unpack(ptr noundef %arrayidx42, ptr noundef nonnull %add.ptr44) #4, !dbg !4264
  %inc46 = add nuw nsw i32 %i.5, 1, !dbg !4265
    #dbg_value(i32 %inc46, !4182, !DIExpression(), !4175)
  br label %for.cond39, !dbg !4266, !llvm.loop !4267

for.end47:                                        ; preds = %for.cond39
  ret void, !dbg !4269
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium2_ref_pack_sig(ptr noundef %sig, ptr noundef %c, ptr noundef %z, ptr noundef %h) local_unnamed_addr #0 !dbg !4270 {
entry:
    #dbg_value(ptr %sig, !4273, !DIExpression(), !4274)
    #dbg_value(ptr %c, !4275, !DIExpression(), !4274)
    #dbg_value(ptr %z, !4276, !DIExpression(), !4274)
    #dbg_value(ptr %h, !4277, !DIExpression(), !4274)
    #dbg_value(i32 0, !4278, !DIExpression(), !4274)
  br label %for.cond, !dbg !4279

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4281
    #dbg_value(i32 %i.0, !4278, !DIExpression(), !4274)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4282
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4284

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !4285
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4285
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %sig, i32 %i.0, !dbg !4286
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4287
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4288
    #dbg_value(i32 %inc, !4278, !DIExpression(), !4274)
  br label %for.cond, !dbg !4289, !llvm.loop !4290

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sig, i32 32, !dbg !4292
    #dbg_value(ptr %add.ptr, !4273, !DIExpression(), !4274)
    #dbg_value(i32 0, !4278, !DIExpression(), !4274)
  br label %for.cond2, !dbg !4293

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !4295
    #dbg_value(i32 %i.1, !4278, !DIExpression(), !4274)
  %exitcond1 = icmp ne i32 %i.1, 4, !dbg !4296
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !4298

for.body4:                                        ; preds = %for.cond2
  %mul = mul nuw nsw i32 %i.1, 576, !dbg !4299
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !4300
  %arrayidx6 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %z, i32 0, i32 %i.1, !dbg !4301
  call void @pqcrystals_dilithium2_ref_polyz_pack(ptr noundef nonnull %add.ptr5, ptr noundef %arrayidx6) #4, !dbg !4302
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !4303
    #dbg_value(i32 %inc8, !4278, !DIExpression(), !4274)
  br label %for.cond2, !dbg !4304, !llvm.loop !4305

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sig, i32 2336, !dbg !4307
    #dbg_value(ptr %add.ptr10, !4273, !DIExpression(), !4274)
    #dbg_value(i32 0, !4278, !DIExpression(), !4274)
  br label %for.cond11, !dbg !4308

for.cond11:                                       ; preds = %for.body13, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc16, %for.body13 ], !dbg !4310
    #dbg_value(i32 %i.2, !4278, !DIExpression(), !4274)
  %exitcond2 = icmp ne i32 %i.2, 84, !dbg !4311
  br i1 %exitcond2, label %for.body13, label %for.cond18.preheader, !dbg !4313

for.cond18.preheader:                             ; preds = %for.cond11
  br label %for.cond18, !dbg !4314

for.body13:                                       ; preds = %for.cond11
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4316
  store i8 0, ptr %arrayidx14, align 1, !dbg !4317
  %inc16 = add nuw nsw i32 %i.2, 1, !dbg !4318
    #dbg_value(i32 %inc16, !4278, !DIExpression(), !4274)
  br label %for.cond11, !dbg !4319, !llvm.loop !4320

for.cond18:                                       ; preds = %for.cond18.preheader, %for.end31
  %i.3 = phi i32 [ %inc35, %for.end31 ], [ 0, %for.cond18.preheader ], !dbg !4322
  %k.0 = phi i32 [ %k.1.lcssa, %for.end31 ], [ 0, %for.cond18.preheader ], !dbg !4323
    #dbg_value(i32 %k.0, !4324, !DIExpression(), !4274)
    #dbg_value(i32 %i.3, !4278, !DIExpression(), !4274)
  %exitcond4 = icmp ne i32 %i.3, 4, !dbg !4325
  br i1 %exitcond4, label %for.cond21.preheader, label %for.end36, !dbg !4314

for.cond21.preheader:                             ; preds = %for.cond18
  br label %for.cond21, !dbg !4327

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc29
  %j.0 = phi i32 [ %inc30, %for.inc29 ], [ 0, %for.cond21.preheader ], !dbg !4330
  %k.1 = phi i32 [ %k.2, %for.inc29 ], [ %k.0, %for.cond21.preheader ], !dbg !4274
    #dbg_value(i32 %k.1, !4324, !DIExpression(), !4274)
    #dbg_value(i32 %j.0, !4331, !DIExpression(), !4274)
  %exitcond3 = icmp ne i32 %j.0, 256, !dbg !4332
  br i1 %exitcond3, label %for.body23, label %for.end31, !dbg !4327

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %h, i32 0, i32 %i.3, i32 %j.0, !dbg !4334
  %1 = load i32, ptr %arrayidx25, align 4, !dbg !4334
  %cmp26.not = icmp eq i32 %1, 0, !dbg !4336
  br i1 %cmp26.not, label %for.inc29, label %if.then, !dbg !4336

if.then:                                          ; preds = %for.body23
  %conv = trunc nuw i32 %j.0 to i8, !dbg !4337
  %inc27 = add i32 %k.1, 1, !dbg !4338
    #dbg_value(i32 %inc27, !4324, !DIExpression(), !4274)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %k.1, !dbg !4339
  store i8 %conv, ptr %arrayidx28, align 1, !dbg !4340
  br label %for.inc29, !dbg !4339

for.inc29:                                        ; preds = %for.body23, %if.then
  %k.2 = phi i32 [ %inc27, %if.then ], [ %k.1, %for.body23 ], !dbg !4274
    #dbg_value(i32 %k.2, !4324, !DIExpression(), !4274)
  %inc30 = add nuw nsw i32 %j.0, 1, !dbg !4341
    #dbg_value(i32 %inc30, !4331, !DIExpression(), !4274)
  br label %for.cond21, !dbg !4342, !llvm.loop !4343

for.end31:                                        ; preds = %for.cond21
  %k.1.lcssa = phi i32 [ %k.1, %for.cond21 ], !dbg !4274
  %conv32 = trunc i32 %k.1.lcssa to i8, !dbg !4345
  %add = or disjoint i32 %i.3, 80, !dbg !4346
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %add, !dbg !4347
  store i8 %conv32, ptr %arrayidx33, align 1, !dbg !4348
  %inc35 = add nuw nsw i32 %i.3, 1, !dbg !4349
    #dbg_value(i32 %inc35, !4278, !DIExpression(), !4274)
  br label %for.cond18, !dbg !4350, !llvm.loop !4351

for.end36:                                        ; preds = %for.cond18
  ret void, !dbg !4353
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium2_ref_unpack_sig(ptr noundef %c, ptr noundef %z, ptr noundef %h, ptr noundef %sig) local_unnamed_addr #0 !dbg !4354 {
entry:
    #dbg_value(ptr %c, !4357, !DIExpression(), !4358)
    #dbg_value(ptr %z, !4359, !DIExpression(), !4358)
    #dbg_value(ptr %h, !4360, !DIExpression(), !4358)
    #dbg_value(ptr %sig, !4361, !DIExpression(), !4358)
    #dbg_value(i32 0, !4362, !DIExpression(), !4358)
  br label %for.cond, !dbg !4363

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4365
    #dbg_value(i32 %i.0, !4362, !DIExpression(), !4358)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4366
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4368

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %sig, i32 %i.0, !dbg !4369
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4369
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !4370
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4371
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4372
    #dbg_value(i32 %inc, !4362, !DIExpression(), !4358)
  br label %for.cond, !dbg !4373, !llvm.loop !4374

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sig, i32 32, !dbg !4376
    #dbg_value(ptr %add.ptr, !4361, !DIExpression(), !4358)
    #dbg_value(i32 0, !4362, !DIExpression(), !4358)
  br label %for.cond2, !dbg !4377

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !4379
    #dbg_value(i32 %i.1, !4362, !DIExpression(), !4358)
  %exitcond5 = icmp ne i32 %i.1, 4, !dbg !4380
  br i1 %exitcond5, label %for.body4, label %for.end9, !dbg !4382

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %z, i32 0, i32 %i.1, !dbg !4383
  %mul = mul nuw nsw i32 %i.1, 576, !dbg !4384
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !4385
  call void @pqcrystals_dilithium2_ref_polyz_unpack(ptr noundef %arrayidx5, ptr noundef nonnull %add.ptr6) #4, !dbg !4386
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !4387
    #dbg_value(i32 %inc8, !4362, !DIExpression(), !4358)
  br label %for.cond2, !dbg !4388, !llvm.loop !4389

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sig, i32 2336, !dbg !4391
    #dbg_value(ptr %add.ptr10, !4361, !DIExpression(), !4358)
    #dbg_value(i32 0, !4392, !DIExpression(), !4358)
    #dbg_value(i32 0, !4362, !DIExpression(), !4358)
  br label %for.cond11, !dbg !4393

for.cond11:                                       ; preds = %for.inc56, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc57, %for.inc56 ], !dbg !4395
  %k.0 = phi i32 [ 0, %for.end9 ], [ %conv55, %for.inc56 ], !dbg !4358
    #dbg_value(i32 %k.0, !4392, !DIExpression(), !4358)
    #dbg_value(i32 %i.2, !4362, !DIExpression(), !4358)
  %exitcond7 = icmp ne i32 %i.2, 4, !dbg !4396
  br i1 %exitcond7, label %for.cond14.preheader, label %for.cond59.preheader, !dbg !4398

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !4399

for.cond59.preheader:                             ; preds = %for.cond11
  %k.0.lcssa8 = phi i32 [ %k.0, %for.cond11 ], !dbg !4358
  %k.0.lcssa = phi i32 [ %k.0, %for.cond11 ], !dbg !4358
  %umax = call i32 @llvm.umax.i32(i32 %k.0.lcssa8, i32 80), !dbg !4402
  br label %for.cond59, !dbg !4402

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %j.0 = phi i32 [ %inc20, %for.body16 ], [ 0, %for.cond14.preheader ], !dbg !4404
    #dbg_value(i32 %j.0, !4405, !DIExpression(), !4358)
  %exitcond6 = icmp ne i32 %j.0, 256, !dbg !4406
  br i1 %exitcond6, label %for.body16, label %for.end21, !dbg !4399

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %h, i32 0, i32 %i.2, i32 %j.0, !dbg !4408
  store i32 0, ptr %arrayidx18, align 4, !dbg !4409
  %inc20 = add nuw nsw i32 %j.0, 1, !dbg !4410
    #dbg_value(i32 %inc20, !4405, !DIExpression(), !4358)
  br label %for.cond14, !dbg !4411, !llvm.loop !4412

for.end21:                                        ; preds = %for.cond14
  %add = or disjoint i32 %i.2, 80, !dbg !4414
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %add, !dbg !4416
  %1 = load i8, ptr %arrayidx22, align 1, !dbg !4416
  %conv = zext i8 %1 to i32, !dbg !4416
  %cmp23 = icmp samesign ugt i32 %k.0, %conv, !dbg !4417
  br i1 %cmp23, label %return.loopexit2, label %lor.lhs.false, !dbg !4418

lor.lhs.false:                                    ; preds = %for.end21
  %add25 = or disjoint i32 %i.2, 80, !dbg !4419
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %add25, !dbg !4420
  %2 = load i8, ptr %arrayidx26, align 1, !dbg !4420
  %cmp28 = icmp ugt i8 %2, 80, !dbg !4421
  br i1 %cmp28, label %return.loopexit2, label %for.cond30.preheader, !dbg !4418

for.cond30.preheader:                             ; preds = %lor.lhs.false
  br label %for.cond30, !dbg !4422

for.cond30:                                       ; preds = %for.cond30.preheader, %if.end46
  %j.1 = phi i32 [ %inc51, %if.end46 ], [ %k.0, %for.cond30.preheader ], !dbg !4424
    #dbg_value(i32 %j.1, !4405, !DIExpression(), !4358)
  %add31 = or disjoint i32 %i.2, 80, !dbg !4425
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %add31, !dbg !4427
  %3 = load i8, ptr %arrayidx32, align 1, !dbg !4427
  %conv33 = zext i8 %3 to i32, !dbg !4427
  %cmp34 = icmp samesign ult i32 %j.1, %conv33, !dbg !4428
  br i1 %cmp34, label %for.body36, label %for.inc56, !dbg !4422

for.body36:                                       ; preds = %for.cond30
  %cmp37 = icmp samesign ugt i32 %j.1, %k.0, !dbg !4429
  br i1 %cmp37, label %land.lhs.true, label %if.end46, !dbg !4432

land.lhs.true:                                    ; preds = %for.body36
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %j.1, !dbg !4433
  %4 = load i8, ptr %arrayidx39, align 1, !dbg !4433
  %5 = getelementptr i8, ptr %add.ptr10, i32 %j.1, !dbg !4434
  %arrayidx41 = getelementptr i8, ptr %5, i32 -1, !dbg !4434
  %6 = load i8, ptr %arrayidx41, align 1, !dbg !4434
  %cmp43.not = icmp ugt i8 %4, %6, !dbg !4435
  br i1 %cmp43.not, label %if.end46, label %return.loopexit1, !dbg !4432

if.end46:                                         ; preds = %land.lhs.true, %for.body36
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %j.1, !dbg !4436
  %7 = load i8, ptr %arrayidx48, align 1, !dbg !4436
  %idxprom = zext i8 %7 to i32, !dbg !4437
  %arrayidx49 = getelementptr inbounds nuw [4 x [256 x i32]], ptr %h, i32 0, i32 %i.2, i32 %idxprom, !dbg !4437
  store i32 1, ptr %arrayidx49, align 4, !dbg !4438
  %inc51 = add nuw nsw i32 %j.1, 1, !dbg !4439
    #dbg_value(i32 %inc51, !4405, !DIExpression(), !4358)
  br label %for.cond30, !dbg !4440, !llvm.loop !4441

for.inc56:                                        ; preds = %for.cond30
    #dbg_value(i8 poison, !4392, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4358)
  %add53 = or disjoint i32 %i.2, 80, !dbg !4443
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %add53, !dbg !4444
  %8 = load i8, ptr %arrayidx54, align 1, !dbg !4444
    #dbg_value(i8 %8, !4392, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4358)
  %conv55 = zext i8 %8 to i32, !dbg !4444
    #dbg_value(i32 %conv55, !4392, !DIExpression(), !4358)
  %inc57 = add nuw nsw i32 %i.2, 1, !dbg !4445
    #dbg_value(i32 %inc57, !4362, !DIExpression(), !4358)
  br label %for.cond11, !dbg !4446, !llvm.loop !4447

for.cond59:                                       ; preds = %for.cond59.preheader, %for.inc66
  %j.2 = phi i32 [ %inc67, %for.inc66 ], [ %k.0.lcssa, %for.cond59.preheader ], !dbg !4449
    #dbg_value(i32 %j.2, !4405, !DIExpression(), !4358)
  %exitcond11 = icmp ne i32 %j.2, %umax, !dbg !4450
  br i1 %exitcond11, label %for.body62, label %return.loopexit, !dbg !4402

for.body62:                                       ; preds = %for.cond59
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %j.2, !dbg !4452
  %9 = load i8, ptr %arrayidx63, align 1, !dbg !4452
  %tobool.not = icmp eq i8 %9, 0, !dbg !4452
  br i1 %tobool.not, label %for.inc66, label %return.loopexit, !dbg !4452

for.inc66:                                        ; preds = %for.body62
  %inc67 = add nuw nsw i32 %j.2, 1, !dbg !4454
    #dbg_value(i32 %inc67, !4405, !DIExpression(), !4358)
  br label %for.cond59, !dbg !4455, !llvm.loop !4456

return.loopexit:                                  ; preds = %for.body62, %for.cond59
  %retval.0.ph = phi i32 [ 0, %for.cond59 ], [ 1, %for.body62 ]
  br label %return, !dbg !4458

return.loopexit1:                                 ; preds = %land.lhs.true
  br label %return, !dbg !4458

return.loopexit2:                                 ; preds = %lor.lhs.false, %for.end21
  br label %return, !dbg !4458

return:                                           ; preds = %return.loopexit2, %return.loopexit1, %return.loopexit
  %retval.0 = phi i32 [ %retval.0.ph, %return.loopexit ], [ 1, %return.loopexit1 ], [ 1, %return.loopexit2 ], !dbg !4358
  ret i32 %retval.0, !dbg !4458
}

; Function Attrs: nounwind
define dso_local range(i32 -262144, 262144) i32 @pqcrystals_dilithium2_ref_power2round(ptr noundef %a0, i32 noundef %a) local_unnamed_addr #0 !dbg !4459 {
entry:
    #dbg_value(ptr %a0, !4463, !DIExpression(), !4464)
    #dbg_value(i32 %a, !4465, !DIExpression(), !4464)
  %sub = add nsw i32 %a, 4095, !dbg !4466
  %shr = ashr i32 %sub, 13, !dbg !4467
    #dbg_value(i32 %shr, !4468, !DIExpression(), !4464)
  %shl = and i32 %sub, -8192, !dbg !4469
  %sub1 = sub nsw i32 %a, %shl, !dbg !4470
  store i32 %sub1, ptr %a0, align 4, !dbg !4471
  ret i32 %shr, !dbg !4472
}

; Function Attrs: nounwind
define dso_local range(i32 -128, 128) i32 @pqcrystals_dilithium2_ref_decompose(ptr noundef %a0, i32 noundef %a) local_unnamed_addr #0 !dbg !4473 {
entry:
    #dbg_value(ptr %a0, !4474, !DIExpression(), !4475)
    #dbg_value(i32 %a, !4476, !DIExpression(), !4475)
  %add = add nsw i32 %a, 127, !dbg !4477
  %shr = ashr i32 %add, 7, !dbg !4478
    #dbg_value(i32 %shr, !4479, !DIExpression(), !4475)
  %mul = mul nsw i32 %shr, 11275, !dbg !4480
  %add1 = add nsw i32 %mul, 8388608, !dbg !4481
  %shr2 = ashr i32 %add1, 24, !dbg !4482
    #dbg_value(i32 %shr2, !4479, !DIExpression(), !4475)
  %0 = icmp sgt i32 %shr2, 43, !dbg !4483
  %xor = select i1 %0, i32 0, i32 %shr2, !dbg !4484
    #dbg_value(i32 %xor, !4479, !DIExpression(), !4475)
  %mul5.neg = mul nsw i32 %xor, -190464, !dbg !4485
  %sub6 = add i32 %mul5.neg, %a, !dbg !4486
  %1 = icmp sgt i32 %sub6, 4190208, !dbg !4487
  %and9.neg = select i1 %1, i32 -8380417, i32 0, !dbg !4488
  %sub10 = add i32 %and9.neg, %sub6, !dbg !4489
  store i32 %sub10, ptr %a0, align 4, !dbg !4489
  ret i32 %xor, !dbg !4490
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium2_ref_make_hint(i32 noundef %a0, i32 noundef %a1) local_unnamed_addr #0 !dbg !4491 {
entry:
    #dbg_value(i32 %a0, !4494, !DIExpression(), !4495)
    #dbg_value(i32 %a1, !4496, !DIExpression(), !4495)
  %0 = add i32 %a0, -95233, !dbg !4497
  %or.cond = icmp ult i32 %0, -190465, !dbg !4497
  %cmp3 = icmp eq i32 %a0, -95232, !dbg !4497
  %cmp4.not = icmp ne i32 %a1, 0, !dbg !4497
  %or.cond1.not = and i1 %cmp3, %cmp4.not, !dbg !4497
  %narrow = or i1 %or.cond, %or.cond1.not, !dbg !4497
  %retval.0 = zext i1 %narrow to i32, !dbg !4497
  ret i32 %retval.0, !dbg !4499
}

; Function Attrs: nounwind
define dso_local range(i32 -129, 129) i32 @pqcrystals_dilithium2_ref_use_hint(i32 noundef %a, i32 noundef %hint) local_unnamed_addr #0 !dbg !4500 {
entry:
  %a0 = alloca i32, align 4
    #dbg_value(i32 %a, !4503, !DIExpression(), !4504)
    #dbg_value(i32 %hint, !4505, !DIExpression(), !4504)
    #dbg_value(ptr %a0, !4506, !DIExpression(DW_OP_deref), !4504)
  %call = call i32 @pqcrystals_dilithium2_ref_decompose(ptr noundef nonnull %a0, i32 noundef %a) #4, !dbg !4507
    #dbg_value(i32 %call, !4508, !DIExpression(), !4504)
  %cmp = icmp eq i32 %hint, 0, !dbg !4509
  br i1 %cmp, label %return, label %if.end, !dbg !4509

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %a0, align 4, !dbg !4511
    #dbg_value(i32 %0, !4506, !DIExpression(), !4504)
  %cmp1 = icmp sgt i32 %0, 0, !dbg !4513
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !4513

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp eq i32 %call, 43, !dbg !4514
  %add = add nsw i32 %call, 1, !dbg !4515
  %cond = select i1 %cmp3, i32 0, i32 %add, !dbg !4515
  br label %return, !dbg !4516

if.else:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %call, 0, !dbg !4517
  %sub = add nsw i32 %call, -1, !dbg !4518
  %cond8 = select i1 %cmp4, i32 43, i32 %sub, !dbg !4518
  br label %return, !dbg !4519

return:                                           ; preds = %entry, %if.else, %if.then2
  %retval.0 = phi i32 [ %cond, %if.then2 ], [ %cond8, %if.else ], [ %call, %entry ], !dbg !4504
  ret i32 %retval.0, !dbg !4520
}

; Function Attrs: nounwind
define dso_local void @dilithium_memset(ptr noundef %dst, i8 noundef zeroext %val, i32 noundef %len) local_unnamed_addr #0 !dbg !4521 {
entry:
    #dbg_value(ptr %dst, !4526, !DIExpression(), !4527)
    #dbg_value(i8 %val, !4528, !DIExpression(), !4527)
    #dbg_value(i32 %len, !4529, !DIExpression(), !4527)
    #dbg_value(ptr %dst, !4530, !DIExpression(), !4527)
    #dbg_value(i32 0, !4531, !DIExpression(), !4533)
  br label %for.cond, !dbg !4534

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4535
    #dbg_value(i32 %i.0, !4531, !DIExpression(), !4533)
  %exitcond = icmp ne i32 %i.0, %len, !dbg !4536
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4538

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0, !dbg !4539
  store i8 %val, ptr %arrayidx, align 1, !dbg !4540
  %inc = add i32 %i.0, 1, !dbg !4541
    #dbg_value(i32 %inc, !4531, !DIExpression(), !4533)
  br label %for.cond, !dbg !4542, !llvm.loop !4543

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4545
}

; Function Attrs: nounwind
define dso_local void @dilithium_memcpy(ptr noundef %dst, ptr noundef %src, i32 noundef %len) local_unnamed_addr #0 !dbg !4546 {
entry:
    #dbg_value(ptr %dst, !4551, !DIExpression(), !4552)
    #dbg_value(ptr %src, !4553, !DIExpression(), !4552)
    #dbg_value(i32 %len, !4554, !DIExpression(), !4552)
    #dbg_value(ptr %dst, !4555, !DIExpression(), !4552)
    #dbg_value(ptr %src, !4556, !DIExpression(), !4552)
    #dbg_value(i32 0, !4557, !DIExpression(), !4559)
  br label %for.cond, !dbg !4560

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4561
    #dbg_value(i32 %i.0, !4557, !DIExpression(), !4559)
  %exitcond = icmp ne i32 %i.0, %len, !dbg !4562
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4564

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %src, i32 %i.0, !dbg !4565
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4565
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0, !dbg !4566
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4567
  %inc = add i32 %i.0, 1, !dbg !4568
    #dbg_value(i32 %inc, !4557, !DIExpression(), !4559)
  br label %for.cond, !dbg !4569, !llvm.loop !4570

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4572
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!94, !56, !99, !100, !101, !68, !105, !83, !107, !108, !109, !110}
!llvm.ident = !{!112, !112, !112, !112, !112, !112, !112, !112, !112, !112, !112, !112}
!llvm.module.flags = !{!113, !114, !115, !116}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../../../ref/test/test_dilithium.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 21)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 30)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 23)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 22)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 28)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !29, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 19)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "fd", scope: !43, file: !44, line: 58, type: !65, isLocal: true, isDefinition: true)
!43 = distinct !DISubprogram(name: "randombytes", scope: !44, file: !44, line: 57, type: !45, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !64)
!44 = !DIFile(filename: "../../../ref/randombytes.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !53}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !49, line: 24, baseType: !50)
!49 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/_stdint.h", directory: "")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !51, line: 43, baseType: !52)
!51 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/machine/_default_types.h", directory: "")
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 214, baseType: !55)
!54 = !DIFile(filename: "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stddef.h", directory: "")
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = distinct !DICompileUnit(language: DW_LANG_C11, file: !57, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !58, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../../../ref/<stdin>", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!58 = !{!41, !59}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !44, line: 62, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 13)
!64 = !{}
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "zetas", scope: !68, file: !74, line: 6, type: !75, isLocal: true, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C11, file: !57, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !69, globals: !73, splitDebugInlining: false, nameTableKind: None)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !49, line: 56, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !51, line: 103, baseType: !72)
!72 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!73 = !{!66}
!74 = !DIFile(filename: "../../../ref/ntt.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 8192, elements: !79)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !49, line: 44, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !51, line: 77, baseType: !65)
!79 = !{!80}
!80 = !DISubrange(count: 256)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "pqcrystals_dilithium_fips202_ref_KeccakF_RoundConstants", scope: !83, file: !89, line: 49, type: !90, isLocal: false, isDefinition: true)
!83 = distinct !DICompileUnit(language: DW_LANG_C11, file: !57, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !84, globals: !88, splitDebugInlining: false, nameTableKind: None)
!84 = !{!85, !55}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !49, line: 60, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !51, line: 105, baseType: !87)
!87 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!88 = !{!81}
!89 = !DIFile(filename: "../../../ref/fips202.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 1536, elements: !92)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!92 = !{!93}
!93 = !DISubrange(count: 24)
!94 = distinct !DICompileUnit(language: DW_LANG_C11, file: !95, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !96, globals: !98, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../../../ref/test/<stdin>", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!96 = !{!97, !47}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!98 = !{!0, !7, !12, !17, !22, !27, !32, !34, !36}
!99 = distinct !DICompileUnit(language: DW_LANG_C11, file: !57, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!100 = distinct !DICompileUnit(language: DW_LANG_C11, file: !57, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!101 = distinct !DICompileUnit(language: DW_LANG_C11, file: !57, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !102, splitDebugInlining: false, nameTableKind: None)
!102 = !{!70, !85, !103}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !49, line: 48, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !51, line: 79, baseType: !55)
!105 = distinct !DICompileUnit(language: DW_LANG_C11, file: !57, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !106, splitDebugInlining: false, nameTableKind: None)
!106 = !{!70, !77}
!107 = distinct !DICompileUnit(language: DW_LANG_C11, file: !57, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!108 = distinct !DICompileUnit(language: DW_LANG_C11, file: !57, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!109 = distinct !DICompileUnit(language: DW_LANG_C11, file: !57, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!110 = distinct !DICompileUnit(language: DW_LANG_C11, file: !111, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../<stdin>", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!112 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.3)"}
!113 = !{i32 2, !"Debug Info Version", i32 3}
!114 = !{i32 1, !"wchar_size", i32 4}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 1, !"Code Model", i32 1}
!117 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 11, type: !118, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !64)
!118 = !DISubroutineType(types: !119)
!119 = !{!65}
!120 = !DILocalVariable(name: "ctx", scope: !117, file: !2, line: 17, type: !121)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 112, elements: !5)
!122 = !DILocation(line: 17, column: 11, scope: !117)
!123 = !DILocalVariable(name: "m", scope: !117, file: !2, line: 18, type: !124)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 19832, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 2479)
!127 = !DILocation(line: 18, column: 11, scope: !117)
!128 = !DILocalVariable(name: "m2", scope: !117, file: !2, line: 19, type: !124)
!129 = !DILocation(line: 19, column: 11, scope: !117)
!130 = !DILocalVariable(name: "sm", scope: !117, file: !2, line: 20, type: !124)
!131 = !DILocation(line: 20, column: 11, scope: !117)
!132 = !DILocalVariable(name: "pk", scope: !117, file: !2, line: 21, type: !133)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 10496, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 1312)
!136 = !DILocation(line: 21, column: 11, scope: !117)
!137 = !DILocalVariable(name: "sk", scope: !117, file: !2, line: 22, type: !138)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 20480, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 2560)
!141 = !DILocation(line: 22, column: 11, scope: !117)
!142 = !DILocation(line: 24, column: 3, scope: !117)
!143 = !DILocalVariable(name: "i", scope: !117, file: !2, line: 13, type: !53)
!144 = !DILocation(line: 0, scope: !117)
!145 = !DILocation(line: 26, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !117, file: !2, line: 26, column: 3)
!147 = !DILocation(line: 26, scope: !146)
!148 = !DILocation(line: 26, column: 16, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !2, line: 26, column: 3)
!150 = !DILocation(line: 26, column: 3, scope: !146)
!151 = !DILocation(line: 27, column: 5, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !2, line: 26, column: 31)
!153 = !DILocation(line: 29, column: 5, scope: !152)
!154 = !DILocalVariable(name: "smlen", scope: !117, file: !2, line: 15, type: !53)
!155 = !DILocation(line: 30, column: 5, scope: !152)
!156 = !DILocation(line: 31, column: 43, scope: !152)
!157 = !DILocalVariable(name: "mlen", scope: !117, file: !2, line: 15, type: !53)
!158 = !DILocation(line: 31, column: 11, scope: !152)
!159 = !DILocalVariable(name: "ret", scope: !117, file: !2, line: 14, type: !65)
!160 = !DILocation(line: 33, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !152, file: !2, line: 33, column: 8)
!162 = !DILocation(line: 34, column: 15, scope: !163)
!163 = distinct !DILexicalBlock(scope: !161, file: !2, line: 33, column: 13)
!164 = !DILocation(line: 34, column: 7, scope: !163)
!165 = !DILocation(line: 35, column: 7, scope: !163)
!166 = !DILocation(line: 37, column: 8, scope: !167)
!167 = distinct !DILexicalBlock(scope: !152, file: !2, line: 37, column: 8)
!168 = !DILocation(line: 37, column: 14, scope: !167)
!169 = !DILocation(line: 38, column: 15, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !2, line: 37, column: 38)
!171 = !DILocation(line: 38, column: 7, scope: !170)
!172 = !DILocation(line: 39, column: 7, scope: !170)
!173 = !DILocation(line: 41, column: 8, scope: !174)
!174 = distinct !DILexicalBlock(scope: !152, file: !2, line: 41, column: 8)
!175 = !DILocation(line: 41, column: 13, scope: !174)
!176 = !DILocation(line: 45, column: 5, scope: !177)
!177 = distinct !DILexicalBlock(scope: !152, file: !2, line: 45, column: 5)
!178 = !DILocation(line: 42, column: 15, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !2, line: 41, column: 22)
!180 = !DILocation(line: 42, column: 7, scope: !179)
!181 = !DILocation(line: 43, column: 7, scope: !179)
!182 = !DILocation(line: 45, scope: !177)
!183 = !DILocalVariable(name: "j", scope: !117, file: !2, line: 13, type: !53)
!184 = !DILocation(line: 45, column: 18, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !2, line: 45, column: 5)
!186 = !DILocation(line: 46, column: 13, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !2, line: 46, column: 10)
!188 = distinct !DILexicalBlock(scope: !185, file: !2, line: 45, column: 31)
!189 = !DILocation(line: 46, column: 10, scope: !187)
!190 = !DILocation(line: 46, column: 19, scope: !187)
!191 = !DILocation(line: 46, column: 16, scope: !187)
!192 = !DILocation(line: 47, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !187, file: !2, line: 46, column: 25)
!194 = !DILocation(line: 47, column: 9, scope: !193)
!195 = !DILocation(line: 48, column: 9, scope: !193)
!196 = !DILocation(line: 45, column: 26, scope: !185)
!197 = !DILocation(line: 45, column: 5, scope: !185)
!198 = distinct !{!198, !176, !199, !200}
!199 = !DILocation(line: 50, column: 5, scope: !177)
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 52, column: 5, scope: !152)
!202 = !DILocation(line: 53, column: 5, scope: !152)
!203 = !DILocalVariable(name: "b", scope: !117, file: !2, line: 16, type: !48)
!204 = !DILocation(line: 54, column: 7, scope: !205)
!205 = distinct !DILexicalBlock(scope: !152, file: !2, line: 53, column: 8)
!206 = !DILocation(line: 55, column: 14, scope: !152)
!207 = !DILocation(line: 55, column: 13, scope: !152)
!208 = !DILocation(line: 55, column: 5, scope: !205)
!209 = distinct !{!209, !202, !210, !200}
!210 = !DILocation(line: 55, column: 15, scope: !152)
!211 = !DILocation(line: 56, column: 38, scope: !152)
!212 = !DILocation(line: 56, column: 8, scope: !152)
!213 = !DILocation(line: 56, column: 10, scope: !152)
!214 = !DILocation(line: 56, column: 5, scope: !152)
!215 = !DILocation(line: 56, column: 35, scope: !152)
!216 = !DILocation(line: 57, column: 43, scope: !152)
!217 = !DILocation(line: 57, column: 11, scope: !152)
!218 = !DILocation(line: 58, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !152, file: !2, line: 58, column: 8)
!220 = !DILocation(line: 58, column: 8, scope: !219)
!221 = !DILocation(line: 59, column: 15, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !2, line: 58, column: 14)
!223 = !DILocation(line: 59, column: 7, scope: !222)
!224 = !DILocation(line: 60, column: 7, scope: !222)
!225 = !DILocation(line: 26, column: 26, scope: !149)
!226 = !DILocation(line: 26, column: 3, scope: !149)
!227 = distinct !{!227, !150, !228, !200}
!228 = !DILocation(line: 62, column: 3, scope: !146)
!229 = !DILocation(line: 64, column: 3, scope: !117)
!230 = !DILocation(line: 65, column: 3, scope: !117)
!231 = !DILocation(line: 66, column: 3, scope: !117)
!232 = !DILocation(line: 68, column: 3, scope: !117)
!233 = !DILocation(line: 69, column: 1, scope: !117)
!234 = !DILocalVariable(name: "out", arg: 1, scope: !43, file: !44, line: 57, type: !47)
!235 = !DILocation(line: 0, scope: !43)
!236 = !DILocalVariable(name: "outlen", arg: 2, scope: !43, file: !44, line: 57, type: !53)
!237 = !DILocation(line: 61, column: 3, scope: !43)
!238 = !DILocation(line: 61, column: 9, scope: !43)
!239 = !DILocation(line: 61, column: 12, scope: !43)
!240 = !DILocation(line: 69, column: 3, scope: !43)
!241 = !DILocation(line: 62, column: 10, scope: !242)
!242 = distinct !DILexicalBlock(scope: !43, file: !44, line: 61, column: 19)
!243 = !DILocation(line: 62, column: 8, scope: !242)
!244 = !DILocation(line: 63, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !44, line: 63, column: 8)
!246 = !DILocation(line: 63, column: 17, scope: !245)
!247 = !DILocation(line: 63, column: 20, scope: !245)
!248 = !DILocation(line: 63, column: 26, scope: !245)
!249 = !DILocation(line: 65, column: 13, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !44, line: 65, column: 13)
!251 = !DILocation(line: 65, column: 16, scope: !250)
!252 = !DILocation(line: 66, column: 7, scope: !250)
!253 = distinct !{!253, !237, !254, !200}
!254 = !DILocation(line: 67, column: 3, scope: !43)
!255 = !DILocation(line: 69, column: 16, scope: !43)
!256 = !DILocation(line: 70, column: 16, scope: !257)
!257 = distinct !DILexicalBlock(scope: !43, file: !44, line: 69, column: 21)
!258 = !DILocation(line: 70, column: 11, scope: !257)
!259 = !DILocalVariable(name: "ret", scope: !43, file: !44, line: 59, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !261, line: 182, baseType: !262)
!261 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/types.h", directory: "")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !263, line: 147, baseType: !65)
!263 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/_types.h", directory: "")
!264 = !DILocation(line: 71, column: 18, scope: !265)
!265 = distinct !DILexicalBlock(scope: !257, file: !44, line: 71, column: 8)
!266 = !DILocation(line: 71, column: 21, scope: !265)
!267 = !DILocation(line: 71, column: 27, scope: !265)
!268 = distinct !{!268, !240, !269, !200}
!269 = !DILocation(line: 78, column: 3, scope: !43)
!270 = !DILocation(line: 74, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !44, line: 73, column: 13)
!272 = !DILocation(line: 76, column: 9, scope: !257)
!273 = !DILocation(line: 77, column: 12, scope: !257)
!274 = !DILocation(line: 79, column: 1, scope: !43)
!275 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_keypair", scope: !276, file: !276, line: 24, type: !277, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!276 = !DIFile(filename: "../../../ref/sign.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!277 = !DISubroutineType(types: !278)
!278 = !{!65, !47, !47}
!279 = !DILocalVariable(name: "pk", arg: 1, scope: !275, file: !276, line: 24, type: !47)
!280 = !DILocation(line: 0, scope: !275)
!281 = !DILocalVariable(name: "sk", arg: 2, scope: !275, file: !276, line: 24, type: !47)
!282 = !DILocalVariable(name: "seedbuf", scope: !275, file: !276, line: 25, type: !283)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1024, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 128)
!286 = !DILocation(line: 25, column: 11, scope: !275)
!287 = !DILocalVariable(name: "tr", scope: !275, file: !276, line: 26, type: !288)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 512, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 64)
!291 = !DILocation(line: 26, column: 11, scope: !275)
!292 = !DILocalVariable(name: "mat", scope: !275, file: !276, line: 28, type: !293)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 131072, elements: !300)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyvecl", file: !295, line: 13, baseType: !296)
!295 = !DIFile(filename: "../../../ref/polyvec.h", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 32768, elements: !300)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "poly", file: !298, line: 11, baseType: !299)
!298 = !DIFile(filename: "../../../ref/poly.h", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8192, elements: !79)
!300 = !{!301}
!301 = !DISubrange(count: 4)
!302 = !DILocation(line: 28, column: 12, scope: !275)
!303 = !DILocalVariable(name: "s1", scope: !275, file: !276, line: 29, type: !294)
!304 = !DILocation(line: 29, column: 12, scope: !275)
!305 = !DILocalVariable(name: "s1hat", scope: !275, file: !276, line: 29, type: !294)
!306 = !DILocation(line: 29, column: 16, scope: !275)
!307 = !DILocalVariable(name: "s2", scope: !275, file: !276, line: 30, type: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyveck", file: !295, line: 49, baseType: !296)
!309 = !DILocation(line: 30, column: 12, scope: !275)
!310 = !DILocalVariable(name: "t1", scope: !275, file: !276, line: 30, type: !308)
!311 = !DILocation(line: 30, column: 16, scope: !275)
!312 = !DILocalVariable(name: "t0", scope: !275, file: !276, line: 30, type: !308)
!313 = !DILocation(line: 30, column: 20, scope: !275)
!314 = !DILocation(line: 33, column: 3, scope: !275)
!315 = !DILocation(line: 34, column: 3, scope: !275)
!316 = !DILocation(line: 34, column: 26, scope: !275)
!317 = !DILocation(line: 35, column: 3, scope: !275)
!318 = !DILocation(line: 35, column: 26, scope: !275)
!319 = !DILocation(line: 36, column: 3, scope: !275)
!320 = !DILocalVariable(name: "rho", scope: !275, file: !276, line: 27, type: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!323 = !DILocation(line: 38, column: 18, scope: !275)
!324 = !DILocalVariable(name: "rhoprime", scope: !275, file: !276, line: 27, type: !321)
!325 = !DILocation(line: 39, column: 18, scope: !275)
!326 = !DILocalVariable(name: "key", scope: !275, file: !276, line: 27, type: !321)
!327 = !DILocation(line: 42, column: 3, scope: !275)
!328 = !DILocation(line: 45, column: 3, scope: !275)
!329 = !DILocation(line: 46, column: 3, scope: !275)
!330 = !DILocation(line: 49, column: 3, scope: !275)
!331 = !DILocation(line: 50, column: 3, scope: !275)
!332 = !DILocation(line: 51, column: 3, scope: !275)
!333 = !DILocation(line: 52, column: 3, scope: !275)
!334 = !DILocation(line: 53, column: 3, scope: !275)
!335 = !DILocation(line: 56, column: 3, scope: !275)
!336 = !DILocation(line: 59, column: 3, scope: !275)
!337 = !DILocation(line: 60, column: 3, scope: !275)
!338 = !DILocation(line: 61, column: 3, scope: !275)
!339 = !DILocation(line: 64, column: 3, scope: !275)
!340 = !DILocation(line: 65, column: 3, scope: !275)
!341 = !DILocation(line: 67, column: 3, scope: !275)
!342 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_signature_internal", scope: !276, file: !276, line: 87, type: !343, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!343 = !DISubroutineType(types: !344)
!344 = !{!65, !47, !345, !321, !53, !321, !53, !321, !321}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 32)
!346 = !DILocalVariable(name: "sig", arg: 1, scope: !342, file: !276, line: 87, type: !47)
!347 = !DILocation(line: 0, scope: !342)
!348 = !DILocalVariable(name: "siglen", arg: 2, scope: !342, file: !276, line: 87, type: !345)
!349 = !DILocalVariable(name: "m", arg: 3, scope: !342, file: !276, line: 88, type: !321)
!350 = !DILocalVariable(name: "mlen", arg: 4, scope: !342, file: !276, line: 88, type: !53)
!351 = !DILocalVariable(name: "pre", arg: 5, scope: !342, file: !276, line: 89, type: !321)
!352 = !DILocalVariable(name: "prelen", arg: 6, scope: !342, file: !276, line: 89, type: !53)
!353 = !DILocalVariable(name: "rnd", arg: 7, scope: !342, file: !276, line: 90, type: !321)
!354 = !DILocalVariable(name: "sk", arg: 8, scope: !342, file: !276, line: 91, type: !321)
!355 = !DILocalVariable(name: "seedbuf", scope: !342, file: !276, line: 93, type: !356)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2048, elements: !79)
!357 = !DILocation(line: 93, column: 11, scope: !342)
!358 = !DILocalVariable(name: "nonce", scope: !342, file: !276, line: 95, type: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !49, line: 36, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !51, line: 57, baseType: !361)
!361 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!362 = !DILocalVariable(name: "mat", scope: !342, file: !276, line: 96, type: !293)
!363 = !DILocation(line: 96, column: 12, scope: !342)
!364 = !DILocalVariable(name: "s1", scope: !342, file: !276, line: 96, type: !294)
!365 = !DILocation(line: 96, column: 20, scope: !342)
!366 = !DILocalVariable(name: "y", scope: !342, file: !276, line: 96, type: !294)
!367 = !DILocation(line: 96, column: 24, scope: !342)
!368 = !DILocalVariable(name: "z", scope: !342, file: !276, line: 96, type: !294)
!369 = !DILocation(line: 96, column: 27, scope: !342)
!370 = !DILocalVariable(name: "t0", scope: !342, file: !276, line: 97, type: !308)
!371 = !DILocation(line: 97, column: 12, scope: !342)
!372 = !DILocalVariable(name: "s2", scope: !342, file: !276, line: 97, type: !308)
!373 = !DILocation(line: 97, column: 16, scope: !342)
!374 = !DILocalVariable(name: "w1", scope: !342, file: !276, line: 97, type: !308)
!375 = !DILocation(line: 97, column: 20, scope: !342)
!376 = !DILocalVariable(name: "w0", scope: !342, file: !276, line: 97, type: !308)
!377 = !DILocation(line: 97, column: 24, scope: !342)
!378 = !DILocalVariable(name: "h", scope: !342, file: !276, line: 97, type: !308)
!379 = !DILocation(line: 97, column: 28, scope: !342)
!380 = !DILocalVariable(name: "cp", scope: !342, file: !276, line: 98, type: !297)
!381 = !DILocation(line: 98, column: 8, scope: !342)
!382 = !DILocalVariable(name: "state", scope: !342, file: !276, line: 99, type: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "keccak_state", file: !384, line: 15, baseType: !385)
!384 = !DIFile(filename: "../../../ref/fips202.h", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 1664, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 26)
!388 = !DILocation(line: 99, column: 16, scope: !342)
!389 = !DILocalVariable(name: "rho", scope: !342, file: !276, line: 94, type: !47)
!390 = !DILocation(line: 102, column: 12, scope: !342)
!391 = !DILocalVariable(name: "tr", scope: !342, file: !276, line: 94, type: !47)
!392 = !DILocation(line: 103, column: 12, scope: !342)
!393 = !DILocalVariable(name: "key", scope: !342, file: !276, line: 94, type: !47)
!394 = !DILocation(line: 104, column: 12, scope: !342)
!395 = !DILocalVariable(name: "mu", scope: !342, file: !276, line: 94, type: !47)
!396 = !DILocation(line: 105, column: 17, scope: !342)
!397 = !DILocalVariable(name: "rhoprime", scope: !342, file: !276, line: 94, type: !47)
!398 = !DILocation(line: 106, column: 3, scope: !342)
!399 = !DILocation(line: 109, column: 3, scope: !342)
!400 = !DILocation(line: 110, column: 3, scope: !342)
!401 = !DILocation(line: 111, column: 3, scope: !342)
!402 = !DILocation(line: 112, column: 3, scope: !342)
!403 = !DILocation(line: 113, column: 3, scope: !342)
!404 = !DILocation(line: 114, column: 3, scope: !342)
!405 = !DILocation(line: 117, column: 3, scope: !342)
!406 = !DILocation(line: 118, column: 3, scope: !342)
!407 = !DILocation(line: 119, column: 3, scope: !342)
!408 = !DILocation(line: 120, column: 3, scope: !342)
!409 = !DILocation(line: 121, column: 3, scope: !342)
!410 = !DILocation(line: 122, column: 3, scope: !342)
!411 = !DILocation(line: 125, column: 3, scope: !342)
!412 = !DILocation(line: 126, column: 3, scope: !342)
!413 = !DILocation(line: 127, column: 3, scope: !342)
!414 = !DILocation(line: 128, column: 3, scope: !342)
!415 = !DILabel(scope: !342, name: "rej", file: !276, line: 130)
!416 = !DILocation(line: 130, column: 1, scope: !342)
!417 = !DILocation(line: 132, column: 46, scope: !342)
!418 = !DILocation(line: 132, column: 3, scope: !342)
!419 = !DILocation(line: 135, column: 3, scope: !342)
!420 = !DILocation(line: 136, column: 3, scope: !342)
!421 = !DILocation(line: 137, column: 3, scope: !342)
!422 = !DILocation(line: 138, column: 3, scope: !342)
!423 = !DILocation(line: 139, column: 3, scope: !342)
!424 = !DILocation(line: 142, column: 3, scope: !342)
!425 = !DILocation(line: 143, column: 3, scope: !342)
!426 = !DILocation(line: 144, column: 3, scope: !342)
!427 = !DILocation(line: 146, column: 3, scope: !342)
!428 = !DILocation(line: 147, column: 3, scope: !342)
!429 = !DILocation(line: 148, column: 3, scope: !342)
!430 = !DILocation(line: 149, column: 3, scope: !342)
!431 = !DILocation(line: 150, column: 3, scope: !342)
!432 = !DILocation(line: 151, column: 3, scope: !342)
!433 = !DILocation(line: 152, column: 3, scope: !342)
!434 = !DILocation(line: 155, column: 3, scope: !342)
!435 = !DILocation(line: 156, column: 3, scope: !342)
!436 = !DILocation(line: 157, column: 3, scope: !342)
!437 = !DILocation(line: 158, column: 3, scope: !342)
!438 = !DILocation(line: 159, column: 7, scope: !439)
!439 = distinct !DILexicalBlock(scope: !342, file: !276, line: 159, column: 7)
!440 = !DILocation(line: 164, column: 3, scope: !342)
!441 = !DILocation(line: 165, column: 3, scope: !342)
!442 = !DILocation(line: 166, column: 3, scope: !342)
!443 = !DILocation(line: 167, column: 3, scope: !342)
!444 = !DILocation(line: 168, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !342, file: !276, line: 168, column: 7)
!446 = !DILocation(line: 172, column: 3, scope: !342)
!447 = !DILocation(line: 173, column: 3, scope: !342)
!448 = !DILocation(line: 174, column: 3, scope: !342)
!449 = !DILocation(line: 175, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !342, file: !276, line: 175, column: 7)
!451 = !DILocation(line: 178, column: 3, scope: !342)
!452 = !DILocation(line: 179, column: 7, scope: !342)
!453 = !DILocalVariable(name: "n", scope: !342, file: !276, line: 92, type: !55)
!454 = !DILocation(line: 180, column: 9, scope: !455)
!455 = distinct !DILexicalBlock(scope: !342, file: !276, line: 180, column: 7)
!456 = !DILocation(line: 184, column: 3, scope: !342)
!457 = !DILocation(line: 185, column: 11, scope: !342)
!458 = !DILocation(line: 186, column: 3, scope: !342)
!459 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_signature", scope: !276, file: !276, line: 205, type: !460, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!460 = !DISubroutineType(types: !461)
!461 = !{!65, !47, !345, !321, !53, !321, !53, !321}
!462 = !DILocalVariable(name: "sig", arg: 1, scope: !459, file: !276, line: 205, type: !47)
!463 = !DILocation(line: 0, scope: !459)
!464 = !DILocalVariable(name: "siglen", arg: 2, scope: !459, file: !276, line: 205, type: !345)
!465 = !DILocalVariable(name: "m", arg: 3, scope: !459, file: !276, line: 205, type: !321)
!466 = !DILocalVariable(name: "mlen", arg: 4, scope: !459, file: !276, line: 206, type: !53)
!467 = !DILocalVariable(name: "ctx", arg: 5, scope: !459, file: !276, line: 206, type: !321)
!468 = !DILocalVariable(name: "ctxlen", arg: 6, scope: !459, file: !276, line: 206, type: !53)
!469 = !DILocalVariable(name: "sk", arg: 7, scope: !459, file: !276, line: 207, type: !321)
!470 = !DILocalVariable(name: "pre", scope: !459, file: !276, line: 209, type: !471)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2056, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 257)
!474 = !DILocation(line: 209, column: 11, scope: !459)
!475 = !DILocalVariable(name: "rnd", scope: !459, file: !276, line: 210, type: !476)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 32)
!479 = !DILocation(line: 210, column: 11, scope: !459)
!480 = !DILocation(line: 212, column: 14, scope: !481)
!481 = distinct !DILexicalBlock(scope: !459, file: !276, line: 212, column: 7)
!482 = !DILocation(line: 216, column: 10, scope: !459)
!483 = !DILocation(line: 217, column: 12, scope: !459)
!484 = !DILocation(line: 217, column: 3, scope: !459)
!485 = !DILocation(line: 217, column: 10, scope: !459)
!486 = !DILocalVariable(name: "i", scope: !459, file: !276, line: 208, type: !53)
!487 = !DILocation(line: 218, column: 8, scope: !488)
!488 = distinct !DILexicalBlock(scope: !459, file: !276, line: 218, column: 3)
!489 = !DILocation(line: 218, scope: !488)
!490 = !DILocation(line: 218, column: 17, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !276, line: 218, column: 3)
!492 = !DILocation(line: 218, column: 3, scope: !488)
!493 = !DILocation(line: 219, column: 18, scope: !491)
!494 = !DILocation(line: 219, column: 11, scope: !491)
!495 = !DILocation(line: 219, column: 5, scope: !491)
!496 = !DILocation(line: 219, column: 16, scope: !491)
!497 = !DILocation(line: 218, column: 28, scope: !491)
!498 = !DILocation(line: 218, column: 3, scope: !491)
!499 = distinct !{!499, !492, !500, !200}
!500 = !DILocation(line: 219, column: 23, scope: !488)
!501 = !DILocation(line: 222, column: 3, scope: !459)
!502 = !DILocation(line: 228, column: 63, scope: !459)
!503 = !DILocation(line: 228, column: 3, scope: !459)
!504 = !DILocation(line: 230, column: 3, scope: !459)
!505 = !DILocation(line: 231, column: 1, scope: !459)
!506 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref", scope: !276, file: !276, line: 251, type: !460, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!507 = !DILocalVariable(name: "sm", arg: 1, scope: !506, file: !276, line: 251, type: !47)
!508 = !DILocation(line: 0, scope: !506)
!509 = !DILocalVariable(name: "smlen", arg: 2, scope: !506, file: !276, line: 251, type: !345)
!510 = !DILocalVariable(name: "m", arg: 3, scope: !506, file: !276, line: 251, type: !321)
!511 = !DILocalVariable(name: "mlen", arg: 4, scope: !506, file: !276, line: 251, type: !53)
!512 = !DILocalVariable(name: "ctx", arg: 5, scope: !506, file: !276, line: 252, type: !321)
!513 = !DILocalVariable(name: "ctxlen", arg: 6, scope: !506, file: !276, line: 252, type: !53)
!514 = !DILocalVariable(name: "sk", arg: 7, scope: !506, file: !276, line: 252, type: !321)
!515 = !DILocalVariable(name: "i", scope: !506, file: !276, line: 254, type: !53)
!516 = !DILocation(line: 256, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !506, file: !276, line: 256, column: 3)
!518 = !DILocation(line: 256, scope: !517)
!519 = !DILocation(line: 256, column: 17, scope: !520)
!520 = distinct !DILexicalBlock(scope: !517, file: !276, line: 256, column: 3)
!521 = !DILocation(line: 256, column: 3, scope: !517)
!522 = !DILocation(line: 257, column: 50, scope: !520)
!523 = !DILocation(line: 257, column: 39, scope: !520)
!524 = !DILocation(line: 257, column: 28, scope: !520)
!525 = !DILocation(line: 257, column: 32, scope: !520)
!526 = !DILocation(line: 257, column: 5, scope: !520)
!527 = !DILocation(line: 257, column: 37, scope: !520)
!528 = !DILocation(line: 256, column: 25, scope: !520)
!529 = !DILocation(line: 256, column: 3, scope: !520)
!530 = distinct !{!530, !521, !531, !200}
!531 = !DILocation(line: 257, column: 53, scope: !517)
!532 = !DILocation(line: 258, column: 45, scope: !506)
!533 = !DILocation(line: 258, column: 9, scope: !506)
!534 = !DILocalVariable(name: "ret", scope: !506, file: !276, line: 253, type: !65)
!535 = !DILocation(line: 260, column: 10, scope: !506)
!536 = !DILocation(line: 261, column: 3, scope: !506)
!537 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_verify_internal", scope: !276, file: !276, line: 279, type: !538, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!538 = !DISubroutineType(types: !539)
!539 = !{!65, !321, !53, !321, !53, !321, !53, !321}
!540 = !DILocalVariable(name: "sig", arg: 1, scope: !537, file: !276, line: 279, type: !321)
!541 = !DILocation(line: 0, scope: !537)
!542 = !DILocalVariable(name: "siglen", arg: 2, scope: !537, file: !276, line: 279, type: !53)
!543 = !DILocalVariable(name: "m", arg: 3, scope: !537, file: !276, line: 280, type: !321)
!544 = !DILocalVariable(name: "mlen", arg: 4, scope: !537, file: !276, line: 280, type: !53)
!545 = !DILocalVariable(name: "pre", arg: 5, scope: !537, file: !276, line: 281, type: !321)
!546 = !DILocalVariable(name: "prelen", arg: 6, scope: !537, file: !276, line: 281, type: !53)
!547 = !DILocalVariable(name: "pk", arg: 7, scope: !537, file: !276, line: 282, type: !321)
!548 = !DILocalVariable(name: "buf", scope: !537, file: !276, line: 284, type: !549)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 6144, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 768)
!552 = !DILocation(line: 284, column: 11, scope: !537)
!553 = !DILocalVariable(name: "rho", scope: !537, file: !276, line: 285, type: !476)
!554 = !DILocation(line: 285, column: 11, scope: !537)
!555 = !DILocalVariable(name: "mu", scope: !537, file: !276, line: 286, type: !288)
!556 = !DILocation(line: 286, column: 11, scope: !537)
!557 = !DILocalVariable(name: "c", scope: !537, file: !276, line: 287, type: !476)
!558 = !DILocation(line: 287, column: 11, scope: !537)
!559 = !DILocalVariable(name: "c2", scope: !537, file: !276, line: 288, type: !476)
!560 = !DILocation(line: 288, column: 11, scope: !537)
!561 = !DILocalVariable(name: "cp", scope: !537, file: !276, line: 289, type: !297)
!562 = !DILocation(line: 289, column: 8, scope: !537)
!563 = !DILocalVariable(name: "mat", scope: !537, file: !276, line: 290, type: !293)
!564 = !DILocation(line: 290, column: 12, scope: !537)
!565 = !DILocalVariable(name: "z", scope: !537, file: !276, line: 290, type: !294)
!566 = !DILocation(line: 290, column: 20, scope: !537)
!567 = !DILocalVariable(name: "t1", scope: !537, file: !276, line: 291, type: !308)
!568 = !DILocation(line: 291, column: 12, scope: !537)
!569 = !DILocalVariable(name: "w1", scope: !537, file: !276, line: 291, type: !308)
!570 = !DILocation(line: 291, column: 16, scope: !537)
!571 = !DILocalVariable(name: "h", scope: !537, file: !276, line: 291, type: !308)
!572 = !DILocation(line: 291, column: 20, scope: !537)
!573 = !DILocalVariable(name: "state", scope: !537, file: !276, line: 292, type: !383)
!574 = !DILocation(line: 292, column: 16, scope: !537)
!575 = !DILocation(line: 294, column: 14, scope: !576)
!576 = distinct !DILexicalBlock(scope: !537, file: !276, line: 294, column: 7)
!577 = !DILocation(line: 297, column: 3, scope: !537)
!578 = !DILocation(line: 298, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !537, file: !276, line: 298, column: 7)
!580 = !DILocation(line: 300, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !537, file: !276, line: 300, column: 7)
!582 = !DILocation(line: 304, column: 3, scope: !537)
!583 = !DILocation(line: 305, column: 3, scope: !537)
!584 = !DILocation(line: 306, column: 3, scope: !537)
!585 = !DILocation(line: 307, column: 3, scope: !537)
!586 = !DILocation(line: 308, column: 3, scope: !537)
!587 = !DILocation(line: 309, column: 3, scope: !537)
!588 = !DILocation(line: 310, column: 3, scope: !537)
!589 = !DILocation(line: 313, column: 3, scope: !537)
!590 = !DILocation(line: 314, column: 3, scope: !537)
!591 = !DILocation(line: 316, column: 3, scope: !537)
!592 = !DILocation(line: 317, column: 3, scope: !537)
!593 = !DILocation(line: 319, column: 3, scope: !537)
!594 = !DILocation(line: 320, column: 3, scope: !537)
!595 = !DILocation(line: 321, column: 3, scope: !537)
!596 = !DILocation(line: 322, column: 3, scope: !537)
!597 = !DILocation(line: 324, column: 3, scope: !537)
!598 = !DILocation(line: 325, column: 3, scope: !537)
!599 = !DILocation(line: 326, column: 3, scope: !537)
!600 = !DILocation(line: 329, column: 3, scope: !537)
!601 = !DILocation(line: 330, column: 3, scope: !537)
!602 = !DILocation(line: 331, column: 3, scope: !537)
!603 = !DILocation(line: 334, column: 3, scope: !537)
!604 = !DILocation(line: 335, column: 3, scope: !537)
!605 = !DILocation(line: 336, column: 3, scope: !537)
!606 = !DILocation(line: 337, column: 3, scope: !537)
!607 = !DILocation(line: 338, column: 3, scope: !537)
!608 = !DILocalVariable(name: "i", scope: !537, file: !276, line: 283, type: !55)
!609 = !DILocation(line: 339, column: 8, scope: !610)
!610 = distinct !DILexicalBlock(scope: !537, file: !276, line: 339, column: 3)
!611 = !DILocation(line: 339, scope: !610)
!612 = !DILocation(line: 339, column: 17, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !276, line: 339, column: 3)
!614 = !DILocation(line: 339, column: 3, scope: !610)
!615 = !DILocation(line: 340, column: 9, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !276, line: 340, column: 9)
!617 = !DILocation(line: 340, column: 17, scope: !616)
!618 = !DILocation(line: 340, column: 14, scope: !616)
!619 = !DILocation(line: 339, column: 32, scope: !613)
!620 = !DILocation(line: 339, column: 3, scope: !613)
!621 = distinct !{!621, !614, !622, !200}
!622 = !DILocation(line: 341, column: 15, scope: !610)
!623 = !DILocation(line: 344, column: 1, scope: !537)
!624 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_verify", scope: !276, file: !276, line: 361, type: !538, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!625 = !DILocalVariable(name: "sig", arg: 1, scope: !624, file: !276, line: 361, type: !321)
!626 = !DILocation(line: 0, scope: !624)
!627 = !DILocalVariable(name: "siglen", arg: 2, scope: !624, file: !276, line: 361, type: !53)
!628 = !DILocalVariable(name: "m", arg: 3, scope: !624, file: !276, line: 361, type: !321)
!629 = !DILocalVariable(name: "mlen", arg: 4, scope: !624, file: !276, line: 362, type: !53)
!630 = !DILocalVariable(name: "ctx", arg: 5, scope: !624, file: !276, line: 362, type: !321)
!631 = !DILocalVariable(name: "ctxlen", arg: 6, scope: !624, file: !276, line: 362, type: !53)
!632 = !DILocalVariable(name: "pk", arg: 7, scope: !624, file: !276, line: 363, type: !321)
!633 = !DILocalVariable(name: "pre", scope: !624, file: !276, line: 365, type: !471)
!634 = !DILocation(line: 365, column: 11, scope: !624)
!635 = !DILocation(line: 367, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !624, file: !276, line: 367, column: 7)
!637 = !DILocation(line: 370, column: 10, scope: !624)
!638 = !DILocation(line: 371, column: 12, scope: !624)
!639 = !DILocation(line: 371, column: 3, scope: !624)
!640 = !DILocation(line: 371, column: 10, scope: !624)
!641 = !DILocalVariable(name: "i", scope: !624, file: !276, line: 364, type: !53)
!642 = !DILocation(line: 372, column: 8, scope: !643)
!643 = distinct !DILexicalBlock(scope: !624, file: !276, line: 372, column: 3)
!644 = !DILocation(line: 372, scope: !643)
!645 = !DILocation(line: 372, column: 17, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !276, line: 372, column: 3)
!647 = !DILocation(line: 372, column: 3, scope: !643)
!648 = !DILocation(line: 373, column: 18, scope: !646)
!649 = !DILocation(line: 373, column: 11, scope: !646)
!650 = !DILocation(line: 373, column: 5, scope: !646)
!651 = !DILocation(line: 373, column: 16, scope: !646)
!652 = !DILocation(line: 372, column: 28, scope: !646)
!653 = !DILocation(line: 372, column: 3, scope: !646)
!654 = distinct !{!654, !647, !655, !200}
!655 = !DILocation(line: 373, column: 23, scope: !643)
!656 = !DILocation(line: 375, column: 67, scope: !624)
!657 = !DILocation(line: 375, column: 10, scope: !624)
!658 = !DILocation(line: 375, column: 3, scope: !624)
!659 = !DILocation(line: 376, column: 1, scope: !624)
!660 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_open", scope: !276, file: !276, line: 394, type: !460, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!661 = !DILocalVariable(name: "m", arg: 1, scope: !660, file: !276, line: 394, type: !47)
!662 = !DILocation(line: 0, scope: !660)
!663 = !DILocalVariable(name: "mlen", arg: 2, scope: !660, file: !276, line: 394, type: !345)
!664 = !DILocalVariable(name: "sm", arg: 3, scope: !660, file: !276, line: 394, type: !321)
!665 = !DILocalVariable(name: "smlen", arg: 4, scope: !660, file: !276, line: 394, type: !53)
!666 = !DILocalVariable(name: "ctx", arg: 5, scope: !660, file: !276, line: 395, type: !321)
!667 = !DILocalVariable(name: "ctxlen", arg: 6, scope: !660, file: !276, line: 395, type: !53)
!668 = !DILocalVariable(name: "pk", arg: 7, scope: !660, file: !276, line: 395, type: !321)
!669 = !DILocation(line: 398, column: 13, scope: !670)
!670 = distinct !DILexicalBlock(scope: !660, file: !276, line: 398, column: 7)
!671 = !DILocation(line: 401, column: 17, scope: !660)
!672 = !DILocation(line: 401, column: 9, scope: !660)
!673 = !DILocation(line: 402, column: 47, scope: !674)
!674 = distinct !DILexicalBlock(scope: !660, file: !276, line: 402, column: 7)
!675 = !DILocation(line: 402, column: 7, scope: !674)
!676 = !DILocation(line: 407, column: 5, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !276, line: 407, column: 5)
!678 = distinct !DILexicalBlock(scope: !674, file: !276, line: 405, column: 8)
!679 = !DILocation(line: 407, scope: !677)
!680 = !DILocalVariable(name: "i", scope: !660, file: !276, line: 396, type: !53)
!681 = !DILocation(line: 407, column: 21, scope: !682)
!682 = distinct !DILexicalBlock(scope: !677, file: !276, line: 407, column: 5)
!683 = !DILocation(line: 407, column: 19, scope: !682)
!684 = !DILocation(line: 408, column: 14, scope: !682)
!685 = !DILocation(line: 408, column: 7, scope: !682)
!686 = !DILocation(line: 408, column: 12, scope: !682)
!687 = !DILocation(line: 407, column: 28, scope: !682)
!688 = !DILocation(line: 407, column: 5, scope: !682)
!689 = distinct !{!689, !676, !690, !200}
!690 = !DILocation(line: 408, column: 33, scope: !677)
!691 = !DILabel(scope: !660, name: "badsig", file: !276, line: 412)
!692 = !DILocation(line: 412, column: 1, scope: !660)
!693 = !DILocation(line: 414, column: 9, scope: !660)
!694 = !DILocation(line: 415, column: 8, scope: !695)
!695 = distinct !DILexicalBlock(scope: !660, file: !276, line: 415, column: 3)
!696 = !DILocation(line: 415, scope: !695)
!697 = !DILocation(line: 415, column: 17, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !276, line: 415, column: 3)
!699 = !DILocation(line: 415, column: 3, scope: !695)
!700 = !DILocation(line: 416, column: 5, scope: !698)
!701 = !DILocation(line: 416, column: 10, scope: !698)
!702 = !DILocation(line: 415, column: 26, scope: !698)
!703 = !DILocation(line: 415, column: 3, scope: !698)
!704 = distinct !{!704, !699, !705, !200}
!705 = !DILocation(line: 416, column: 12, scope: !695)
!706 = !DILocation(line: 419, column: 1, scope: !660)
!707 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyvec_matrix_expand", scope: !708, file: !708, line: 16, type: !709, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!708 = !DIFile(filename: "../../../ref/polyvec.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!709 = !DISubroutineType(types: !710)
!710 = !{null, !711, !321}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 32)
!712 = !DILocalVariable(name: "mat", arg: 1, scope: !707, file: !708, line: 16, type: !711)
!713 = !DILocation(line: 0, scope: !707)
!714 = !DILocalVariable(name: "rho", arg: 2, scope: !707, file: !708, line: 16, type: !321)
!715 = !DILocalVariable(name: "i", scope: !707, file: !708, line: 17, type: !55)
!716 = !DILocation(line: 19, column: 8, scope: !717)
!717 = distinct !DILexicalBlock(scope: !707, file: !708, line: 19, column: 3)
!718 = !DILocation(line: 19, scope: !717)
!719 = !DILocation(line: 19, column: 17, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !708, line: 19, column: 3)
!721 = !DILocation(line: 19, column: 3, scope: !717)
!722 = !DILocation(line: 20, column: 5, scope: !723)
!723 = distinct !DILexicalBlock(scope: !720, file: !708, line: 20, column: 5)
!724 = !DILocation(line: 20, scope: !723)
!725 = !DILocalVariable(name: "j", scope: !707, file: !708, line: 17, type: !55)
!726 = !DILocation(line: 20, column: 19, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !708, line: 20, column: 5)
!728 = !DILocation(line: 21, column: 21, scope: !727)
!729 = !DILocation(line: 21, column: 40, scope: !727)
!730 = !DILocation(line: 21, column: 46, scope: !727)
!731 = !DILocation(line: 21, column: 37, scope: !727)
!732 = !DILocation(line: 21, column: 7, scope: !727)
!733 = !DILocation(line: 20, column: 24, scope: !727)
!734 = !DILocation(line: 20, column: 5, scope: !727)
!735 = distinct !{!735, !722, !736, !200}
!736 = !DILocation(line: 21, column: 49, scope: !723)
!737 = !DILocation(line: 19, column: 22, scope: !720)
!738 = !DILocation(line: 19, column: 3, scope: !720)
!739 = distinct !{!739, !721, !740, !200}
!740 = !DILocation(line: 21, column: 49, scope: !717)
!741 = !DILocation(line: 22, column: 1, scope: !707)
!742 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyvec_matrix_pointwise_montgomery", scope: !708, file: !708, line: 24, type: !743, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !745, !746, !746}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!748 = !DILocalVariable(name: "t", arg: 1, scope: !742, file: !708, line: 24, type: !745)
!749 = !DILocation(line: 0, scope: !742)
!750 = !DILocalVariable(name: "mat", arg: 2, scope: !742, file: !708, line: 24, type: !746)
!751 = !DILocalVariable(name: "v", arg: 3, scope: !742, file: !708, line: 25, type: !746)
!752 = !DILocalVariable(name: "i", scope: !742, file: !708, line: 26, type: !55)
!753 = !DILocation(line: 28, column: 8, scope: !754)
!754 = distinct !DILexicalBlock(scope: !742, file: !708, line: 28, column: 3)
!755 = !DILocation(line: 28, scope: !754)
!756 = !DILocation(line: 28, column: 17, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !708, line: 28, column: 3)
!758 = !DILocation(line: 28, column: 3, scope: !754)
!759 = !DILocation(line: 29, column: 40, scope: !757)
!760 = !DILocation(line: 29, column: 50, scope: !757)
!761 = !DILocation(line: 29, column: 5, scope: !757)
!762 = !DILocation(line: 28, column: 22, scope: !757)
!763 = !DILocation(line: 28, column: 3, scope: !757)
!764 = distinct !{!764, !758, !765, !200}
!765 = !DILocation(line: 29, column: 59, scope: !754)
!766 = !DILocation(line: 30, column: 1, scope: !742)
!767 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyvecl_pointwise_acc_montgomery", scope: !708, file: !708, line: 117, type: !768, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !770, !746, !746}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 32)
!771 = !DILocalVariable(name: "w", arg: 1, scope: !767, file: !708, line: 117, type: !770)
!772 = !DILocation(line: 0, scope: !767)
!773 = !DILocalVariable(name: "u", arg: 2, scope: !767, file: !708, line: 117, type: !746)
!774 = !DILocalVariable(name: "v", arg: 3, scope: !767, file: !708, line: 118, type: !746)
!775 = !DILocalVariable(name: "t", scope: !767, file: !708, line: 120, type: !297)
!776 = !DILocation(line: 120, column: 8, scope: !767)
!777 = !DILocation(line: 122, column: 3, scope: !767)
!778 = !DILocalVariable(name: "i", scope: !767, file: !708, line: 119, type: !55)
!779 = !DILocation(line: 123, column: 8, scope: !780)
!780 = distinct !DILexicalBlock(scope: !767, file: !708, line: 123, column: 3)
!781 = !DILocation(line: 123, scope: !780)
!782 = !DILocation(line: 123, column: 17, scope: !783)
!783 = distinct !DILexicalBlock(scope: !780, file: !708, line: 123, column: 3)
!784 = !DILocation(line: 123, column: 3, scope: !780)
!785 = !DILocation(line: 124, column: 36, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !708, line: 123, column: 27)
!787 = !DILocation(line: 124, column: 46, scope: !786)
!788 = !DILocation(line: 124, column: 5, scope: !786)
!789 = !DILocation(line: 125, column: 5, scope: !786)
!790 = !DILocation(line: 123, column: 22, scope: !783)
!791 = !DILocation(line: 123, column: 3, scope: !783)
!792 = distinct !{!792, !784, !793, !200}
!793 = !DILocation(line: 126, column: 3, scope: !780)
!794 = !DILocation(line: 127, column: 1, scope: !767)
!795 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyvecl_uniform_eta", scope: !708, file: !708, line: 36, type: !796, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !711, !321, !359}
!798 = !DILocalVariable(name: "v", arg: 1, scope: !795, file: !708, line: 36, type: !711)
!799 = !DILocation(line: 0, scope: !795)
!800 = !DILocalVariable(name: "seed", arg: 2, scope: !795, file: !708, line: 36, type: !321)
!801 = !DILocalVariable(name: "nonce", arg: 3, scope: !795, file: !708, line: 37, type: !359)
!802 = !DILocalVariable(name: "i", scope: !795, file: !708, line: 38, type: !55)
!803 = !DILocation(line: 40, column: 8, scope: !804)
!804 = distinct !DILexicalBlock(scope: !795, file: !708, line: 40, column: 3)
!805 = !DILocation(line: 40, scope: !804)
!806 = !DILocation(line: 40, column: 17, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !708, line: 40, column: 3)
!808 = !DILocation(line: 40, column: 3, scope: !804)
!809 = !DILocation(line: 41, column: 23, scope: !807)
!810 = !DILocation(line: 41, column: 5, scope: !807)
!811 = !DILocation(line: 41, column: 43, scope: !807)
!812 = !DILocation(line: 40, column: 22, scope: !807)
!813 = !DILocation(line: 40, column: 3, scope: !807)
!814 = distinct !{!814, !808, !815, !200}
!815 = !DILocation(line: 41, column: 45, scope: !804)
!816 = !DILocation(line: 42, column: 1, scope: !795)
!817 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyvecl_uniform_gamma1", scope: !708, file: !708, line: 44, type: !796, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!818 = !DILocalVariable(name: "v", arg: 1, scope: !817, file: !708, line: 44, type: !711)
!819 = !DILocation(line: 0, scope: !817)
!820 = !DILocalVariable(name: "seed", arg: 2, scope: !817, file: !708, line: 44, type: !321)
!821 = !DILocalVariable(name: "nonce", arg: 3, scope: !817, file: !708, line: 45, type: !359)
!822 = !DILocalVariable(name: "i", scope: !817, file: !708, line: 46, type: !55)
!823 = !DILocation(line: 48, column: 8, scope: !824)
!824 = distinct !DILexicalBlock(scope: !817, file: !708, line: 48, column: 3)
!825 = !DILocation(line: 48, scope: !824)
!826 = !DILocation(line: 48, column: 17, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !708, line: 48, column: 3)
!828 = !DILocation(line: 48, column: 3, scope: !824)
!829 = !DILocation(line: 49, column: 26, scope: !827)
!830 = !DILocation(line: 49, column: 45, scope: !827)
!831 = !DILocation(line: 49, column: 43, scope: !827)
!832 = !DILocation(line: 49, column: 51, scope: !827)
!833 = !DILocation(line: 49, column: 41, scope: !827)
!834 = !DILocation(line: 49, column: 5, scope: !827)
!835 = !DILocation(line: 48, column: 22, scope: !827)
!836 = !DILocation(line: 48, column: 3, scope: !827)
!837 = distinct !{!837, !828, !838, !200}
!838 = !DILocation(line: 49, column: 54, scope: !824)
!839 = !DILocation(line: 50, column: 1, scope: !817)
!840 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyvecl_reduce", scope: !708, file: !708, line: 52, type: !841, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !711}
!843 = !DILocalVariable(name: "v", arg: 1, scope: !840, file: !708, line: 52, type: !711)
!844 = !DILocation(line: 0, scope: !840)
!845 = !DILocalVariable(name: "i", scope: !840, file: !708, line: 53, type: !55)
!846 = !DILocation(line: 55, column: 8, scope: !847)
!847 = distinct !DILexicalBlock(scope: !840, file: !708, line: 55, column: 3)
!848 = !DILocation(line: 55, scope: !847)
!849 = !DILocation(line: 55, column: 17, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !708, line: 55, column: 3)
!851 = !DILocation(line: 55, column: 3, scope: !847)
!852 = !DILocation(line: 56, column: 18, scope: !850)
!853 = !DILocation(line: 56, column: 5, scope: !850)
!854 = !DILocation(line: 55, column: 22, scope: !850)
!855 = !DILocation(line: 55, column: 3, scope: !850)
!856 = distinct !{!856, !851, !857, !200}
!857 = !DILocation(line: 56, column: 25, scope: !847)
!858 = !DILocation(line: 57, column: 1, scope: !840)
!859 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyvecl_add", scope: !708, file: !708, line: 69, type: !860, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !711, !746, !746}
!862 = !DILocalVariable(name: "w", arg: 1, scope: !859, file: !708, line: 69, type: !711)
!863 = !DILocation(line: 0, scope: !859)
!864 = !DILocalVariable(name: "u", arg: 2, scope: !859, file: !708, line: 69, type: !746)
!865 = !DILocalVariable(name: "v", arg: 3, scope: !859, file: !708, line: 69, type: !746)
!866 = !DILocalVariable(name: "i", scope: !859, file: !708, line: 70, type: !55)
!867 = !DILocation(line: 72, column: 8, scope: !868)
!868 = distinct !DILexicalBlock(scope: !859, file: !708, line: 72, column: 3)
!869 = !DILocation(line: 72, scope: !868)
!870 = !DILocation(line: 72, column: 17, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !708, line: 72, column: 3)
!872 = !DILocation(line: 72, column: 3, scope: !868)
!873 = !DILocation(line: 73, column: 15, scope: !871)
!874 = !DILocation(line: 73, column: 25, scope: !871)
!875 = !DILocation(line: 73, column: 35, scope: !871)
!876 = !DILocation(line: 73, column: 5, scope: !871)
!877 = !DILocation(line: 72, column: 22, scope: !871)
!878 = !DILocation(line: 72, column: 3, scope: !871)
!879 = distinct !{!879, !872, !880, !200}
!880 = !DILocation(line: 73, column: 42, scope: !868)
!881 = !DILocation(line: 74, column: 1, scope: !859)
!882 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyvecl_ntt", scope: !708, file: !708, line: 84, type: !841, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!883 = !DILocalVariable(name: "v", arg: 1, scope: !882, file: !708, line: 84, type: !711)
!884 = !DILocation(line: 0, scope: !882)
!885 = !DILocalVariable(name: "i", scope: !882, file: !708, line: 85, type: !55)
!886 = !DILocation(line: 87, column: 8, scope: !887)
!887 = distinct !DILexicalBlock(scope: !882, file: !708, line: 87, column: 3)
!888 = !DILocation(line: 87, scope: !887)
!889 = !DILocation(line: 87, column: 17, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !708, line: 87, column: 3)
!891 = !DILocation(line: 87, column: 3, scope: !887)
!892 = !DILocation(line: 88, column: 15, scope: !890)
!893 = !DILocation(line: 88, column: 5, scope: !890)
!894 = !DILocation(line: 87, column: 22, scope: !890)
!895 = !DILocation(line: 87, column: 3, scope: !890)
!896 = distinct !{!896, !891, !897, !200}
!897 = !DILocation(line: 88, column: 22, scope: !887)
!898 = !DILocation(line: 89, column: 1, scope: !882)
!899 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyvecl_invntt_tomont", scope: !708, file: !708, line: 91, type: !841, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!900 = !DILocalVariable(name: "v", arg: 1, scope: !899, file: !708, line: 91, type: !711)
!901 = !DILocation(line: 0, scope: !899)
!902 = !DILocalVariable(name: "i", scope: !899, file: !708, line: 92, type: !55)
!903 = !DILocation(line: 94, column: 8, scope: !904)
!904 = distinct !DILexicalBlock(scope: !899, file: !708, line: 94, column: 3)
!905 = !DILocation(line: 94, scope: !904)
!906 = !DILocation(line: 94, column: 17, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !708, line: 94, column: 3)
!908 = !DILocation(line: 94, column: 3, scope: !904)
!909 = !DILocation(line: 95, column: 25, scope: !907)
!910 = !DILocation(line: 95, column: 5, scope: !907)
!911 = !DILocation(line: 94, column: 22, scope: !907)
!912 = !DILocation(line: 94, column: 3, scope: !907)
!913 = distinct !{!913, !908, !914, !200}
!914 = !DILocation(line: 95, column: 32, scope: !904)
!915 = !DILocation(line: 96, column: 1, scope: !899)
!916 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyvecl_pointwise_poly_montgomery", scope: !708, file: !708, line: 98, type: !917, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !711, !919, !746}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!921 = !DILocalVariable(name: "r", arg: 1, scope: !916, file: !708, line: 98, type: !711)
!922 = !DILocation(line: 0, scope: !916)
!923 = !DILocalVariable(name: "a", arg: 2, scope: !916, file: !708, line: 98, type: !919)
!924 = !DILocalVariable(name: "v", arg: 3, scope: !916, file: !708, line: 99, type: !746)
!925 = !DILocalVariable(name: "i", scope: !916, file: !708, line: 100, type: !55)
!926 = !DILocation(line: 102, column: 8, scope: !927)
!927 = distinct !DILexicalBlock(scope: !916, file: !708, line: 102, column: 3)
!928 = !DILocation(line: 102, scope: !927)
!929 = !DILocation(line: 102, column: 17, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !708, line: 102, column: 3)
!931 = !DILocation(line: 102, column: 3, scope: !927)
!932 = !DILocation(line: 103, column: 32, scope: !930)
!933 = !DILocation(line: 103, column: 45, scope: !930)
!934 = !DILocation(line: 103, column: 5, scope: !930)
!935 = !DILocation(line: 102, column: 22, scope: !930)
!936 = !DILocation(line: 102, column: 3, scope: !930)
!937 = distinct !{!937, !931, !938, !200}
!938 = !DILocation(line: 103, column: 52, scope: !927)
!939 = !DILocation(line: 104, column: 1, scope: !916)
!940 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyvecl_chknorm", scope: !708, file: !708, line: 141, type: !941, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!941 = !DISubroutineType(types: !942)
!942 = !{!65, !746, !77}
!943 = !DILocalVariable(name: "v", arg: 1, scope: !940, file: !708, line: 141, type: !746)
!944 = !DILocation(line: 0, scope: !940)
!945 = !DILocalVariable(name: "bound", arg: 2, scope: !940, file: !708, line: 141, type: !77)
!946 = !DILocalVariable(name: "i", scope: !940, file: !708, line: 142, type: !55)
!947 = !DILocation(line: 144, column: 8, scope: !948)
!948 = distinct !DILexicalBlock(scope: !940, file: !708, line: 144, column: 3)
!949 = !DILocation(line: 144, scope: !948)
!950 = !DILocation(line: 144, column: 17, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !708, line: 144, column: 3)
!952 = !DILocation(line: 144, column: 3, scope: !948)
!953 = !DILocation(line: 145, column: 23, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !708, line: 145, column: 9)
!955 = !DILocation(line: 145, column: 9, scope: !954)
!956 = !DILocation(line: 144, column: 22, scope: !951)
!957 = !DILocation(line: 144, column: 3, scope: !951)
!958 = distinct !{!958, !952, !959, !200}
!959 = !DILocation(line: 146, column: 14, scope: !948)
!960 = !DILocation(line: 149, column: 1, scope: !940)
!961 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_uniform_eta", scope: !708, file: !708, line: 155, type: !962, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !745, !321, !359}
!964 = !DILocalVariable(name: "v", arg: 1, scope: !961, file: !708, line: 155, type: !745)
!965 = !DILocation(line: 0, scope: !961)
!966 = !DILocalVariable(name: "seed", arg: 2, scope: !961, file: !708, line: 155, type: !321)
!967 = !DILocalVariable(name: "nonce", arg: 3, scope: !961, file: !708, line: 156, type: !359)
!968 = !DILocalVariable(name: "i", scope: !961, file: !708, line: 157, type: !55)
!969 = !DILocation(line: 159, column: 8, scope: !970)
!970 = distinct !DILexicalBlock(scope: !961, file: !708, line: 159, column: 3)
!971 = !DILocation(line: 159, scope: !970)
!972 = !DILocation(line: 159, column: 17, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !708, line: 159, column: 3)
!974 = !DILocation(line: 159, column: 3, scope: !970)
!975 = !DILocation(line: 160, column: 23, scope: !973)
!976 = !DILocation(line: 160, column: 5, scope: !973)
!977 = !DILocation(line: 160, column: 43, scope: !973)
!978 = !DILocation(line: 159, column: 22, scope: !973)
!979 = !DILocation(line: 159, column: 3, scope: !973)
!980 = distinct !{!980, !974, !981, !200}
!981 = !DILocation(line: 160, column: 45, scope: !970)
!982 = !DILocation(line: 161, column: 1, scope: !961)
!983 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_reduce", scope: !708, file: !708, line: 171, type: !984, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !745}
!986 = !DILocalVariable(name: "v", arg: 1, scope: !983, file: !708, line: 171, type: !745)
!987 = !DILocation(line: 0, scope: !983)
!988 = !DILocalVariable(name: "i", scope: !983, file: !708, line: 172, type: !55)
!989 = !DILocation(line: 174, column: 8, scope: !990)
!990 = distinct !DILexicalBlock(scope: !983, file: !708, line: 174, column: 3)
!991 = !DILocation(line: 174, scope: !990)
!992 = !DILocation(line: 174, column: 17, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !708, line: 174, column: 3)
!994 = !DILocation(line: 174, column: 3, scope: !990)
!995 = !DILocation(line: 175, column: 18, scope: !993)
!996 = !DILocation(line: 175, column: 5, scope: !993)
!997 = !DILocation(line: 174, column: 22, scope: !993)
!998 = !DILocation(line: 174, column: 3, scope: !993)
!999 = distinct !{!999, !994, !1000, !200}
!1000 = !DILocation(line: 175, column: 25, scope: !990)
!1001 = !DILocation(line: 176, column: 1, scope: !983)
!1002 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_caddq", scope: !708, file: !708, line: 186, type: !984, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1003 = !DILocalVariable(name: "v", arg: 1, scope: !1002, file: !708, line: 186, type: !745)
!1004 = !DILocation(line: 0, scope: !1002)
!1005 = !DILocalVariable(name: "i", scope: !1002, file: !708, line: 187, type: !55)
!1006 = !DILocation(line: 189, column: 8, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1002, file: !708, line: 189, column: 3)
!1008 = !DILocation(line: 189, scope: !1007)
!1009 = !DILocation(line: 189, column: 17, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !708, line: 189, column: 3)
!1011 = !DILocation(line: 189, column: 3, scope: !1007)
!1012 = !DILocation(line: 190, column: 17, scope: !1010)
!1013 = !DILocation(line: 190, column: 5, scope: !1010)
!1014 = !DILocation(line: 189, column: 22, scope: !1010)
!1015 = !DILocation(line: 189, column: 3, scope: !1010)
!1016 = distinct !{!1016, !1011, !1017, !200}
!1017 = !DILocation(line: 190, column: 24, scope: !1007)
!1018 = !DILocation(line: 191, column: 1, scope: !1002)
!1019 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_add", scope: !708, file: !708, line: 203, type: !1020, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !745, !1022, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!1024 = !DILocalVariable(name: "w", arg: 1, scope: !1019, file: !708, line: 203, type: !745)
!1025 = !DILocation(line: 0, scope: !1019)
!1026 = !DILocalVariable(name: "u", arg: 2, scope: !1019, file: !708, line: 203, type: !1022)
!1027 = !DILocalVariable(name: "v", arg: 3, scope: !1019, file: !708, line: 203, type: !1022)
!1028 = !DILocalVariable(name: "i", scope: !1019, file: !708, line: 204, type: !55)
!1029 = !DILocation(line: 206, column: 8, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1019, file: !708, line: 206, column: 3)
!1031 = !DILocation(line: 206, scope: !1030)
!1032 = !DILocation(line: 206, column: 17, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !708, line: 206, column: 3)
!1034 = !DILocation(line: 206, column: 3, scope: !1030)
!1035 = !DILocation(line: 207, column: 15, scope: !1033)
!1036 = !DILocation(line: 207, column: 25, scope: !1033)
!1037 = !DILocation(line: 207, column: 35, scope: !1033)
!1038 = !DILocation(line: 207, column: 5, scope: !1033)
!1039 = !DILocation(line: 206, column: 22, scope: !1033)
!1040 = !DILocation(line: 206, column: 3, scope: !1033)
!1041 = distinct !{!1041, !1034, !1042, !200}
!1042 = !DILocation(line: 207, column: 42, scope: !1030)
!1043 = !DILocation(line: 208, column: 1, scope: !1019)
!1044 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_sub", scope: !708, file: !708, line: 221, type: !1020, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1045 = !DILocalVariable(name: "w", arg: 1, scope: !1044, file: !708, line: 221, type: !745)
!1046 = !DILocation(line: 0, scope: !1044)
!1047 = !DILocalVariable(name: "u", arg: 2, scope: !1044, file: !708, line: 221, type: !1022)
!1048 = !DILocalVariable(name: "v", arg: 3, scope: !1044, file: !708, line: 221, type: !1022)
!1049 = !DILocalVariable(name: "i", scope: !1044, file: !708, line: 222, type: !55)
!1050 = !DILocation(line: 224, column: 8, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1044, file: !708, line: 224, column: 3)
!1052 = !DILocation(line: 224, scope: !1051)
!1053 = !DILocation(line: 224, column: 17, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !708, line: 224, column: 3)
!1055 = !DILocation(line: 224, column: 3, scope: !1051)
!1056 = !DILocation(line: 225, column: 15, scope: !1054)
!1057 = !DILocation(line: 225, column: 25, scope: !1054)
!1058 = !DILocation(line: 225, column: 35, scope: !1054)
!1059 = !DILocation(line: 225, column: 5, scope: !1054)
!1060 = !DILocation(line: 224, column: 22, scope: !1054)
!1061 = !DILocation(line: 224, column: 3, scope: !1054)
!1062 = distinct !{!1062, !1055, !1063, !200}
!1063 = !DILocation(line: 225, column: 42, scope: !1051)
!1064 = !DILocation(line: 226, column: 1, scope: !1044)
!1065 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_shiftl", scope: !708, file: !708, line: 236, type: !984, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1066 = !DILocalVariable(name: "v", arg: 1, scope: !1065, file: !708, line: 236, type: !745)
!1067 = !DILocation(line: 0, scope: !1065)
!1068 = !DILocalVariable(name: "i", scope: !1065, file: !708, line: 237, type: !55)
!1069 = !DILocation(line: 239, column: 8, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !708, line: 239, column: 3)
!1071 = !DILocation(line: 239, scope: !1070)
!1072 = !DILocation(line: 239, column: 17, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !708, line: 239, column: 3)
!1074 = !DILocation(line: 239, column: 3, scope: !1070)
!1075 = !DILocation(line: 240, column: 18, scope: !1073)
!1076 = !DILocation(line: 240, column: 5, scope: !1073)
!1077 = !DILocation(line: 239, column: 22, scope: !1073)
!1078 = !DILocation(line: 239, column: 3, scope: !1073)
!1079 = distinct !{!1079, !1074, !1080, !200}
!1080 = !DILocation(line: 240, column: 25, scope: !1070)
!1081 = !DILocation(line: 241, column: 1, scope: !1065)
!1082 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_ntt", scope: !708, file: !708, line: 251, type: !984, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1083 = !DILocalVariable(name: "v", arg: 1, scope: !1082, file: !708, line: 251, type: !745)
!1084 = !DILocation(line: 0, scope: !1082)
!1085 = !DILocalVariable(name: "i", scope: !1082, file: !708, line: 252, type: !55)
!1086 = !DILocation(line: 254, column: 8, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !708, line: 254, column: 3)
!1088 = !DILocation(line: 254, scope: !1087)
!1089 = !DILocation(line: 254, column: 17, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !708, line: 254, column: 3)
!1091 = !DILocation(line: 254, column: 3, scope: !1087)
!1092 = !DILocation(line: 255, column: 15, scope: !1090)
!1093 = !DILocation(line: 255, column: 5, scope: !1090)
!1094 = !DILocation(line: 254, column: 22, scope: !1090)
!1095 = !DILocation(line: 254, column: 3, scope: !1090)
!1096 = distinct !{!1096, !1091, !1097, !200}
!1097 = !DILocation(line: 255, column: 22, scope: !1087)
!1098 = !DILocation(line: 256, column: 1, scope: !1082)
!1099 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_invntt_tomont", scope: !708, file: !708, line: 267, type: !984, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1100 = !DILocalVariable(name: "v", arg: 1, scope: !1099, file: !708, line: 267, type: !745)
!1101 = !DILocation(line: 0, scope: !1099)
!1102 = !DILocalVariable(name: "i", scope: !1099, file: !708, line: 268, type: !55)
!1103 = !DILocation(line: 270, column: 8, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !708, line: 270, column: 3)
!1105 = !DILocation(line: 270, scope: !1104)
!1106 = !DILocation(line: 270, column: 17, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1104, file: !708, line: 270, column: 3)
!1108 = !DILocation(line: 270, column: 3, scope: !1104)
!1109 = !DILocation(line: 271, column: 25, scope: !1107)
!1110 = !DILocation(line: 271, column: 5, scope: !1107)
!1111 = !DILocation(line: 270, column: 22, scope: !1107)
!1112 = !DILocation(line: 270, column: 3, scope: !1107)
!1113 = distinct !{!1113, !1108, !1114, !200}
!1114 = !DILocation(line: 271, column: 32, scope: !1104)
!1115 = !DILocation(line: 272, column: 1, scope: !1099)
!1116 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_pointwise_poly_montgomery", scope: !708, file: !708, line: 274, type: !1117, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !745, !919, !1022}
!1119 = !DILocalVariable(name: "r", arg: 1, scope: !1116, file: !708, line: 274, type: !745)
!1120 = !DILocation(line: 0, scope: !1116)
!1121 = !DILocalVariable(name: "a", arg: 2, scope: !1116, file: !708, line: 274, type: !919)
!1122 = !DILocalVariable(name: "v", arg: 3, scope: !1116, file: !708, line: 275, type: !1022)
!1123 = !DILocalVariable(name: "i", scope: !1116, file: !708, line: 276, type: !55)
!1124 = !DILocation(line: 278, column: 8, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1116, file: !708, line: 278, column: 3)
!1126 = !DILocation(line: 278, scope: !1125)
!1127 = !DILocation(line: 278, column: 17, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !708, line: 278, column: 3)
!1129 = !DILocation(line: 278, column: 3, scope: !1125)
!1130 = !DILocation(line: 279, column: 32, scope: !1128)
!1131 = !DILocation(line: 279, column: 45, scope: !1128)
!1132 = !DILocation(line: 279, column: 5, scope: !1128)
!1133 = !DILocation(line: 278, column: 22, scope: !1128)
!1134 = !DILocation(line: 278, column: 3, scope: !1128)
!1135 = distinct !{!1135, !1129, !1136, !200}
!1136 = !DILocation(line: 279, column: 52, scope: !1125)
!1137 = !DILocation(line: 280, column: 1, scope: !1116)
!1138 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_chknorm", scope: !708, file: !708, line: 294, type: !1139, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!65, !1022, !77}
!1141 = !DILocalVariable(name: "v", arg: 1, scope: !1138, file: !708, line: 294, type: !1022)
!1142 = !DILocation(line: 0, scope: !1138)
!1143 = !DILocalVariable(name: "bound", arg: 2, scope: !1138, file: !708, line: 294, type: !77)
!1144 = !DILocalVariable(name: "i", scope: !1138, file: !708, line: 295, type: !55)
!1145 = !DILocation(line: 297, column: 8, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1138, file: !708, line: 297, column: 3)
!1147 = !DILocation(line: 297, scope: !1146)
!1148 = !DILocation(line: 297, column: 17, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !708, line: 297, column: 3)
!1150 = !DILocation(line: 297, column: 3, scope: !1146)
!1151 = !DILocation(line: 298, column: 23, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !708, line: 298, column: 9)
!1153 = !DILocation(line: 298, column: 9, scope: !1152)
!1154 = !DILocation(line: 297, column: 22, scope: !1149)
!1155 = !DILocation(line: 297, column: 3, scope: !1149)
!1156 = distinct !{!1156, !1150, !1157, !200}
!1157 = !DILocation(line: 299, column: 14, scope: !1146)
!1158 = !DILocation(line: 302, column: 1, scope: !1138)
!1159 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_power2round", scope: !708, file: !708, line: 318, type: !1160, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !745, !745, !1022}
!1162 = !DILocalVariable(name: "v1", arg: 1, scope: !1159, file: !708, line: 318, type: !745)
!1163 = !DILocation(line: 0, scope: !1159)
!1164 = !DILocalVariable(name: "v0", arg: 2, scope: !1159, file: !708, line: 318, type: !745)
!1165 = !DILocalVariable(name: "v", arg: 3, scope: !1159, file: !708, line: 318, type: !1022)
!1166 = !DILocalVariable(name: "i", scope: !1159, file: !708, line: 319, type: !55)
!1167 = !DILocation(line: 321, column: 8, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1159, file: !708, line: 321, column: 3)
!1169 = !DILocation(line: 321, scope: !1168)
!1170 = !DILocation(line: 321, column: 17, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !708, line: 321, column: 3)
!1172 = !DILocation(line: 321, column: 3, scope: !1168)
!1173 = !DILocation(line: 322, column: 23, scope: !1171)
!1174 = !DILocation(line: 322, column: 34, scope: !1171)
!1175 = !DILocation(line: 322, column: 45, scope: !1171)
!1176 = !DILocation(line: 322, column: 5, scope: !1171)
!1177 = !DILocation(line: 321, column: 22, scope: !1171)
!1178 = !DILocation(line: 321, column: 3, scope: !1171)
!1179 = distinct !{!1179, !1172, !1180, !200}
!1180 = !DILocation(line: 322, column: 52, scope: !1168)
!1181 = !DILocation(line: 323, column: 1, scope: !1159)
!1182 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_decompose", scope: !708, file: !708, line: 340, type: !1160, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1183 = !DILocalVariable(name: "v1", arg: 1, scope: !1182, file: !708, line: 340, type: !745)
!1184 = !DILocation(line: 0, scope: !1182)
!1185 = !DILocalVariable(name: "v0", arg: 2, scope: !1182, file: !708, line: 340, type: !745)
!1186 = !DILocalVariable(name: "v", arg: 3, scope: !1182, file: !708, line: 340, type: !1022)
!1187 = !DILocalVariable(name: "i", scope: !1182, file: !708, line: 341, type: !55)
!1188 = !DILocation(line: 343, column: 8, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1182, file: !708, line: 343, column: 3)
!1190 = !DILocation(line: 343, scope: !1189)
!1191 = !DILocation(line: 343, column: 17, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !708, line: 343, column: 3)
!1193 = !DILocation(line: 343, column: 3, scope: !1189)
!1194 = !DILocation(line: 344, column: 21, scope: !1192)
!1195 = !DILocation(line: 344, column: 32, scope: !1192)
!1196 = !DILocation(line: 344, column: 43, scope: !1192)
!1197 = !DILocation(line: 344, column: 5, scope: !1192)
!1198 = !DILocation(line: 343, column: 22, scope: !1192)
!1199 = !DILocation(line: 343, column: 3, scope: !1192)
!1200 = distinct !{!1200, !1193, !1201, !200}
!1201 = !DILocation(line: 344, column: 50, scope: !1189)
!1202 = !DILocation(line: 345, column: 1, scope: !1182)
!1203 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_make_hint", scope: !708, file: !708, line: 358, type: !1204, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!55, !745, !1022, !1022}
!1206 = !DILocalVariable(name: "h", arg: 1, scope: !1203, file: !708, line: 358, type: !745)
!1207 = !DILocation(line: 0, scope: !1203)
!1208 = !DILocalVariable(name: "v0", arg: 2, scope: !1203, file: !708, line: 358, type: !1022)
!1209 = !DILocalVariable(name: "v1", arg: 3, scope: !1203, file: !708, line: 359, type: !1022)
!1210 = !DILocalVariable(name: "s", scope: !1203, file: !708, line: 360, type: !55)
!1211 = !DILocalVariable(name: "i", scope: !1203, file: !708, line: 360, type: !55)
!1212 = !DILocation(line: 362, column: 8, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1203, file: !708, line: 362, column: 3)
!1214 = !DILocation(line: 362, scope: !1213)
!1215 = !DILocation(line: 362, column: 17, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !708, line: 362, column: 3)
!1217 = !DILocation(line: 362, column: 3, scope: !1213)
!1218 = !DILocation(line: 363, column: 26, scope: !1216)
!1219 = !DILocation(line: 363, column: 36, scope: !1216)
!1220 = !DILocation(line: 363, column: 47, scope: !1216)
!1221 = !DILocation(line: 363, column: 10, scope: !1216)
!1222 = !DILocation(line: 363, column: 7, scope: !1216)
!1223 = !DILocation(line: 362, column: 22, scope: !1216)
!1224 = !DILocation(line: 362, column: 3, scope: !1216)
!1225 = distinct !{!1225, !1217, !1226, !200}
!1226 = !DILocation(line: 363, column: 55, scope: !1213)
!1227 = !DILocation(line: 365, column: 3, scope: !1203)
!1228 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_use_hint", scope: !708, file: !708, line: 378, type: !1020, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1229 = !DILocalVariable(name: "w", arg: 1, scope: !1228, file: !708, line: 378, type: !745)
!1230 = !DILocation(line: 0, scope: !1228)
!1231 = !DILocalVariable(name: "u", arg: 2, scope: !1228, file: !708, line: 378, type: !1022)
!1232 = !DILocalVariable(name: "h", arg: 3, scope: !1228, file: !708, line: 378, type: !1022)
!1233 = !DILocalVariable(name: "i", scope: !1228, file: !708, line: 379, type: !55)
!1234 = !DILocation(line: 381, column: 8, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1228, file: !708, line: 381, column: 3)
!1236 = !DILocation(line: 381, scope: !1235)
!1237 = !DILocation(line: 381, column: 17, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !708, line: 381, column: 3)
!1239 = !DILocation(line: 381, column: 3, scope: !1235)
!1240 = !DILocation(line: 382, column: 20, scope: !1238)
!1241 = !DILocation(line: 382, column: 30, scope: !1238)
!1242 = !DILocation(line: 382, column: 40, scope: !1238)
!1243 = !DILocation(line: 382, column: 5, scope: !1238)
!1244 = !DILocation(line: 381, column: 22, scope: !1238)
!1245 = !DILocation(line: 381, column: 3, scope: !1238)
!1246 = distinct !{!1246, !1239, !1247, !200}
!1247 = !DILocation(line: 382, column: 47, scope: !1235)
!1248 = !DILocation(line: 383, column: 1, scope: !1228)
!1249 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyveck_pack_w1", scope: !708, file: !708, line: 385, type: !1250, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !47, !1022}
!1252 = !DILocalVariable(name: "r", arg: 1, scope: !1249, file: !708, line: 385, type: !47)
!1253 = !DILocation(line: 0, scope: !1249)
!1254 = !DILocalVariable(name: "w1", arg: 2, scope: !1249, file: !708, line: 385, type: !1022)
!1255 = !DILocalVariable(name: "i", scope: !1249, file: !708, line: 386, type: !55)
!1256 = !DILocation(line: 388, column: 8, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1249, file: !708, line: 388, column: 3)
!1258 = !DILocation(line: 388, scope: !1257)
!1259 = !DILocation(line: 388, column: 17, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !708, line: 388, column: 3)
!1261 = !DILocation(line: 388, column: 3, scope: !1257)
!1262 = !DILocation(line: 389, column: 22, scope: !1260)
!1263 = !DILocation(line: 389, column: 18, scope: !1260)
!1264 = !DILocation(line: 389, column: 46, scope: !1260)
!1265 = !DILocation(line: 389, column: 5, scope: !1260)
!1266 = !DILocation(line: 388, column: 22, scope: !1260)
!1267 = !DILocation(line: 388, column: 3, scope: !1260)
!1268 = distinct !{!1268, !1261, !1269, !200}
!1269 = !DILocation(line: 389, column: 54, scope: !1257)
!1270 = !DILocation(line: 390, column: 1, scope: !1249)
!1271 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_reduce", scope: !1272, file: !1272, line: 28, type: !1273, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1272 = !DIFile(filename: "../../../ref/poly.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !770}
!1275 = !DILocalVariable(name: "a", arg: 1, scope: !1271, file: !1272, line: 28, type: !770)
!1276 = !DILocation(line: 0, scope: !1271)
!1277 = !DILocalVariable(name: "i", scope: !1271, file: !1272, line: 29, type: !55)
!1278 = !DILocation(line: 32, column: 8, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1271, file: !1272, line: 32, column: 3)
!1280 = !DILocation(line: 32, scope: !1279)
!1281 = !DILocation(line: 32, column: 17, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1279, file: !1272, line: 32, column: 3)
!1283 = !DILocation(line: 32, column: 3, scope: !1279)
!1284 = !DILocation(line: 33, column: 24, scope: !1282)
!1285 = !DILocation(line: 33, column: 15, scope: !1282)
!1286 = !DILocation(line: 33, column: 5, scope: !1282)
!1287 = !DILocation(line: 33, column: 13, scope: !1282)
!1288 = !DILocation(line: 32, column: 22, scope: !1282)
!1289 = !DILocation(line: 32, column: 3, scope: !1282)
!1290 = distinct !{!1290, !1283, !1291, !200}
!1291 = !DILocation(line: 33, column: 31, scope: !1279)
!1292 = !DILocation(line: 36, column: 1, scope: !1271)
!1293 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_caddq", scope: !1272, file: !1272, line: 46, type: !1273, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1294 = !DILocalVariable(name: "a", arg: 1, scope: !1293, file: !1272, line: 46, type: !770)
!1295 = !DILocation(line: 0, scope: !1293)
!1296 = !DILocalVariable(name: "i", scope: !1293, file: !1272, line: 47, type: !55)
!1297 = !DILocation(line: 50, column: 8, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !1272, line: 50, column: 3)
!1299 = !DILocation(line: 50, scope: !1298)
!1300 = !DILocation(line: 50, column: 17, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !1272, line: 50, column: 3)
!1302 = !DILocation(line: 50, column: 3, scope: !1298)
!1303 = !DILocation(line: 51, column: 21, scope: !1301)
!1304 = !DILocation(line: 51, column: 15, scope: !1301)
!1305 = !DILocation(line: 51, column: 5, scope: !1301)
!1306 = !DILocation(line: 51, column: 13, scope: !1301)
!1307 = !DILocation(line: 50, column: 22, scope: !1301)
!1308 = !DILocation(line: 50, column: 3, scope: !1301)
!1309 = distinct !{!1309, !1302, !1310, !200}
!1310 = !DILocation(line: 51, column: 28, scope: !1298)
!1311 = !DILocation(line: 54, column: 1, scope: !1293)
!1312 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_add", scope: !1272, file: !1272, line: 65, type: !1313, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !770, !919, !919}
!1315 = !DILocalVariable(name: "c", arg: 1, scope: !1312, file: !1272, line: 65, type: !770)
!1316 = !DILocation(line: 0, scope: !1312)
!1317 = !DILocalVariable(name: "a", arg: 2, scope: !1312, file: !1272, line: 65, type: !919)
!1318 = !DILocalVariable(name: "b", arg: 3, scope: !1312, file: !1272, line: 65, type: !919)
!1319 = !DILocalVariable(name: "i", scope: !1312, file: !1272, line: 66, type: !55)
!1320 = !DILocation(line: 69, column: 8, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1312, file: !1272, line: 69, column: 3)
!1322 = !DILocation(line: 69, scope: !1321)
!1323 = !DILocation(line: 69, column: 17, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !1272, line: 69, column: 3)
!1325 = !DILocation(line: 69, column: 3, scope: !1321)
!1326 = !DILocation(line: 70, column: 15, scope: !1324)
!1327 = !DILocation(line: 70, column: 25, scope: !1324)
!1328 = !DILocation(line: 70, column: 23, scope: !1324)
!1329 = !DILocation(line: 70, column: 5, scope: !1324)
!1330 = !DILocation(line: 70, column: 13, scope: !1324)
!1331 = !DILocation(line: 69, column: 22, scope: !1324)
!1332 = !DILocation(line: 69, column: 3, scope: !1324)
!1333 = distinct !{!1333, !1325, !1334, !200}
!1334 = !DILocation(line: 70, column: 31, scope: !1321)
!1335 = !DILocation(line: 73, column: 1, scope: !1312)
!1336 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_sub", scope: !1272, file: !1272, line: 86, type: !1313, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1337 = !DILocalVariable(name: "c", arg: 1, scope: !1336, file: !1272, line: 86, type: !770)
!1338 = !DILocation(line: 0, scope: !1336)
!1339 = !DILocalVariable(name: "a", arg: 2, scope: !1336, file: !1272, line: 86, type: !919)
!1340 = !DILocalVariable(name: "b", arg: 3, scope: !1336, file: !1272, line: 86, type: !919)
!1341 = !DILocalVariable(name: "i", scope: !1336, file: !1272, line: 87, type: !55)
!1342 = !DILocation(line: 90, column: 8, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1336, file: !1272, line: 90, column: 3)
!1344 = !DILocation(line: 90, scope: !1343)
!1345 = !DILocation(line: 90, column: 17, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !1272, line: 90, column: 3)
!1347 = !DILocation(line: 90, column: 3, scope: !1343)
!1348 = !DILocation(line: 91, column: 15, scope: !1346)
!1349 = !DILocation(line: 91, column: 25, scope: !1346)
!1350 = !DILocation(line: 91, column: 23, scope: !1346)
!1351 = !DILocation(line: 91, column: 5, scope: !1346)
!1352 = !DILocation(line: 91, column: 13, scope: !1346)
!1353 = !DILocation(line: 90, column: 22, scope: !1346)
!1354 = !DILocation(line: 90, column: 3, scope: !1346)
!1355 = distinct !{!1355, !1347, !1356, !200}
!1356 = !DILocation(line: 91, column: 31, scope: !1343)
!1357 = !DILocation(line: 94, column: 1, scope: !1336)
!1358 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_shiftl", scope: !1272, file: !1272, line: 104, type: !1273, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1359 = !DILocalVariable(name: "a", arg: 1, scope: !1358, file: !1272, line: 104, type: !770)
!1360 = !DILocation(line: 0, scope: !1358)
!1361 = !DILocalVariable(name: "i", scope: !1358, file: !1272, line: 105, type: !55)
!1362 = !DILocation(line: 108, column: 8, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !1272, line: 108, column: 3)
!1364 = !DILocation(line: 108, scope: !1363)
!1365 = !DILocation(line: 108, column: 17, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !1272, line: 108, column: 3)
!1367 = !DILocation(line: 108, column: 3, scope: !1363)
!1368 = !DILocation(line: 109, column: 5, scope: !1366)
!1369 = !DILocation(line: 109, column: 13, scope: !1366)
!1370 = !DILocation(line: 108, column: 22, scope: !1366)
!1371 = !DILocation(line: 108, column: 3, scope: !1366)
!1372 = distinct !{!1372, !1367, !1373, !200}
!1373 = !DILocation(line: 109, column: 17, scope: !1363)
!1374 = !DILocation(line: 112, column: 1, scope: !1358)
!1375 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_ntt", scope: !1272, file: !1272, line: 122, type: !1273, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1376 = !DILocalVariable(name: "a", arg: 1, scope: !1375, file: !1272, line: 122, type: !770)
!1377 = !DILocation(line: 0, scope: !1375)
!1378 = !DILocation(line: 125, column: 3, scope: !1375)
!1379 = !DILocation(line: 128, column: 1, scope: !1375)
!1380 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_invntt_tomont", scope: !1272, file: !1272, line: 139, type: !1273, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1381 = !DILocalVariable(name: "a", arg: 1, scope: !1380, file: !1272, line: 139, type: !770)
!1382 = !DILocation(line: 0, scope: !1380)
!1383 = !DILocation(line: 142, column: 3, scope: !1380)
!1384 = !DILocation(line: 145, column: 1, scope: !1380)
!1385 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_pointwise_montgomery", scope: !1272, file: !1272, line: 158, type: !1313, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1386 = !DILocalVariable(name: "c", arg: 1, scope: !1385, file: !1272, line: 158, type: !770)
!1387 = !DILocation(line: 0, scope: !1385)
!1388 = !DILocalVariable(name: "a", arg: 2, scope: !1385, file: !1272, line: 158, type: !919)
!1389 = !DILocalVariable(name: "b", arg: 3, scope: !1385, file: !1272, line: 158, type: !919)
!1390 = !DILocalVariable(name: "i", scope: !1385, file: !1272, line: 159, type: !55)
!1391 = !DILocation(line: 162, column: 8, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1385, file: !1272, line: 162, column: 3)
!1393 = !DILocation(line: 162, scope: !1392)
!1394 = !DILocation(line: 162, column: 17, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !1272, line: 162, column: 3)
!1396 = !DILocation(line: 162, column: 3, scope: !1392)
!1397 = !DILocation(line: 163, column: 42, scope: !1395)
!1398 = !DILocation(line: 163, column: 33, scope: !1395)
!1399 = !DILocation(line: 163, column: 52, scope: !1395)
!1400 = !DILocation(line: 163, column: 50, scope: !1395)
!1401 = !DILocation(line: 163, column: 15, scope: !1395)
!1402 = !DILocation(line: 163, column: 5, scope: !1395)
!1403 = !DILocation(line: 163, column: 13, scope: !1395)
!1404 = !DILocation(line: 162, column: 22, scope: !1395)
!1405 = !DILocation(line: 162, column: 3, scope: !1395)
!1406 = distinct !{!1406, !1396, !1407, !200}
!1407 = !DILocation(line: 163, column: 59, scope: !1392)
!1408 = !DILocation(line: 166, column: 1, scope: !1385)
!1409 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_power2round", scope: !1272, file: !1272, line: 180, type: !1410, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !770, !770, !919}
!1412 = !DILocalVariable(name: "a1", arg: 1, scope: !1409, file: !1272, line: 180, type: !770)
!1413 = !DILocation(line: 0, scope: !1409)
!1414 = !DILocalVariable(name: "a0", arg: 2, scope: !1409, file: !1272, line: 180, type: !770)
!1415 = !DILocalVariable(name: "a", arg: 3, scope: !1409, file: !1272, line: 180, type: !919)
!1416 = !DILocalVariable(name: "i", scope: !1409, file: !1272, line: 181, type: !55)
!1417 = !DILocation(line: 184, column: 8, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1409, file: !1272, line: 184, column: 3)
!1419 = !DILocation(line: 184, scope: !1418)
!1420 = !DILocation(line: 184, column: 17, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !1272, line: 184, column: 3)
!1422 = !DILocation(line: 184, column: 3, scope: !1418)
!1423 = !DILocation(line: 185, column: 29, scope: !1421)
!1424 = !DILocation(line: 185, column: 39, scope: !1421)
!1425 = !DILocation(line: 185, column: 16, scope: !1421)
!1426 = !DILocation(line: 185, column: 5, scope: !1421)
!1427 = !DILocation(line: 185, column: 14, scope: !1421)
!1428 = !DILocation(line: 184, column: 22, scope: !1421)
!1429 = !DILocation(line: 184, column: 3, scope: !1421)
!1430 = distinct !{!1430, !1422, !1431, !200}
!1431 = !DILocation(line: 185, column: 46, scope: !1418)
!1432 = !DILocation(line: 188, column: 1, scope: !1409)
!1433 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_decompose", scope: !1272, file: !1272, line: 203, type: !1410, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1434 = !DILocalVariable(name: "a1", arg: 1, scope: !1433, file: !1272, line: 203, type: !770)
!1435 = !DILocation(line: 0, scope: !1433)
!1436 = !DILocalVariable(name: "a0", arg: 2, scope: !1433, file: !1272, line: 203, type: !770)
!1437 = !DILocalVariable(name: "a", arg: 3, scope: !1433, file: !1272, line: 203, type: !919)
!1438 = !DILocalVariable(name: "i", scope: !1433, file: !1272, line: 204, type: !55)
!1439 = !DILocation(line: 207, column: 8, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1433, file: !1272, line: 207, column: 3)
!1441 = !DILocation(line: 207, scope: !1440)
!1442 = !DILocation(line: 207, column: 17, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !1272, line: 207, column: 3)
!1444 = !DILocation(line: 207, column: 3, scope: !1440)
!1445 = !DILocation(line: 208, column: 27, scope: !1443)
!1446 = !DILocation(line: 208, column: 37, scope: !1443)
!1447 = !DILocation(line: 208, column: 16, scope: !1443)
!1448 = !DILocation(line: 208, column: 5, scope: !1443)
!1449 = !DILocation(line: 208, column: 14, scope: !1443)
!1450 = !DILocation(line: 207, column: 22, scope: !1443)
!1451 = !DILocation(line: 207, column: 3, scope: !1443)
!1452 = distinct !{!1452, !1444, !1453, !200}
!1453 = !DILocation(line: 208, column: 44, scope: !1440)
!1454 = !DILocation(line: 211, column: 1, scope: !1433)
!1455 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_make_hint", scope: !1272, file: !1272, line: 226, type: !1456, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!55, !770, !919, !919}
!1458 = !DILocalVariable(name: "h", arg: 1, scope: !1455, file: !1272, line: 226, type: !770)
!1459 = !DILocation(line: 0, scope: !1455)
!1460 = !DILocalVariable(name: "a0", arg: 2, scope: !1455, file: !1272, line: 226, type: !919)
!1461 = !DILocalVariable(name: "a1", arg: 3, scope: !1455, file: !1272, line: 226, type: !919)
!1462 = !DILocalVariable(name: "s", scope: !1455, file: !1272, line: 227, type: !55)
!1463 = !DILocalVariable(name: "i", scope: !1455, file: !1272, line: 227, type: !55)
!1464 = !DILocation(line: 230, column: 8, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1455, file: !1272, line: 230, column: 3)
!1466 = !DILocation(line: 230, scope: !1465)
!1467 = !DILocation(line: 230, column: 17, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1465, file: !1272, line: 230, column: 3)
!1469 = !DILocation(line: 230, column: 3, scope: !1465)
!1470 = !DILocation(line: 231, column: 25, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !1272, line: 230, column: 27)
!1472 = !DILocation(line: 231, column: 35, scope: !1471)
!1473 = !DILocation(line: 231, column: 15, scope: !1471)
!1474 = !DILocation(line: 231, column: 5, scope: !1471)
!1475 = !DILocation(line: 231, column: 13, scope: !1471)
!1476 = !DILocation(line: 232, column: 7, scope: !1471)
!1477 = !DILocation(line: 230, column: 22, scope: !1468)
!1478 = !DILocation(line: 230, column: 3, scope: !1468)
!1479 = distinct !{!1479, !1469, !1480, !200}
!1480 = !DILocation(line: 233, column: 3, scope: !1465)
!1481 = !DILocation(line: 236, column: 3, scope: !1455)
!1482 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_use_hint", scope: !1272, file: !1272, line: 248, type: !1313, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1483 = !DILocalVariable(name: "b", arg: 1, scope: !1482, file: !1272, line: 248, type: !770)
!1484 = !DILocation(line: 0, scope: !1482)
!1485 = !DILocalVariable(name: "a", arg: 2, scope: !1482, file: !1272, line: 248, type: !919)
!1486 = !DILocalVariable(name: "h", arg: 3, scope: !1482, file: !1272, line: 248, type: !919)
!1487 = !DILocalVariable(name: "i", scope: !1482, file: !1272, line: 249, type: !55)
!1488 = !DILocation(line: 252, column: 8, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1482, file: !1272, line: 252, column: 3)
!1490 = !DILocation(line: 252, scope: !1489)
!1491 = !DILocation(line: 252, column: 17, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !1272, line: 252, column: 3)
!1493 = !DILocation(line: 252, column: 3, scope: !1489)
!1494 = !DILocation(line: 253, column: 24, scope: !1492)
!1495 = !DILocation(line: 253, column: 33, scope: !1492)
!1496 = !DILocation(line: 253, column: 15, scope: !1492)
!1497 = !DILocation(line: 253, column: 5, scope: !1492)
!1498 = !DILocation(line: 253, column: 13, scope: !1492)
!1499 = !DILocation(line: 252, column: 22, scope: !1492)
!1500 = !DILocation(line: 252, column: 3, scope: !1492)
!1501 = distinct !{!1501, !1493, !1502, !200}
!1502 = !DILocation(line: 253, column: 40, scope: !1489)
!1503 = !DILocation(line: 256, column: 1, scope: !1482)
!1504 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_chknorm", scope: !1272, file: !1272, line: 269, type: !1505, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!65, !919, !77}
!1507 = !DILocalVariable(name: "a", arg: 1, scope: !1504, file: !1272, line: 269, type: !919)
!1508 = !DILocation(line: 0, scope: !1504)
!1509 = !DILocalVariable(name: "B", arg: 2, scope: !1504, file: !1272, line: 269, type: !77)
!1510 = !DILocation(line: 274, column: 9, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1504, file: !1272, line: 274, column: 7)
!1512 = !DILocation(line: 280, column: 3, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1504, file: !1272, line: 280, column: 3)
!1514 = !DILocation(line: 280, scope: !1513)
!1515 = !DILocalVariable(name: "i", scope: !1504, file: !1272, line: 270, type: !55)
!1516 = !DILocation(line: 280, column: 17, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !1272, line: 280, column: 3)
!1518 = !DILocation(line: 282, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1517, file: !1272, line: 280, column: 27)
!1520 = !DILocalVariable(name: "t", scope: !1504, file: !1272, line: 271, type: !77)
!1521 = !DILocation(line: 283, column: 22, scope: !1519)
!1522 = !DILocation(line: 283, column: 17, scope: !1519)
!1523 = !DILocation(line: 285, column: 11, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !1272, line: 285, column: 9)
!1525 = !DILocation(line: 280, column: 22, scope: !1517)
!1526 = !DILocation(line: 280, column: 3, scope: !1517)
!1527 = distinct !{!1527, !1512, !1528, !200}
!1528 = !DILocation(line: 289, column: 3, scope: !1513)
!1529 = !DILocation(line: 293, column: 1, scope: !1504)
!1530 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_uniform", scope: !1272, file: !1272, line: 343, type: !1531, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !770, !321, !359}
!1533 = !DILocalVariable(name: "a", arg: 1, scope: !1530, file: !1272, line: 343, type: !770)
!1534 = !DILocation(line: 0, scope: !1530)
!1535 = !DILocalVariable(name: "seed", arg: 2, scope: !1530, file: !1272, line: 343, type: !321)
!1536 = !DILocalVariable(name: "nonce", arg: 3, scope: !1530, file: !1272, line: 343, type: !359)
!1537 = !DILocalVariable(name: "buflen", scope: !1530, file: !1272, line: 345, type: !55)
!1538 = !DILocalVariable(name: "buf", scope: !1530, file: !1272, line: 346, type: !1539)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 6736, elements: !1540)
!1540 = !{!1541}
!1541 = !DISubrange(count: 842)
!1542 = !DILocation(line: 346, column: 11, scope: !1530)
!1543 = !DILocalVariable(name: "state", scope: !1530, file: !1272, line: 347, type: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream128_state", file: !1545, line: 9, baseType: !383)
!1545 = !DIFile(filename: "../../../ref/symmetric.h", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!1546 = !DILocation(line: 347, column: 19, scope: !1530)
!1547 = !DILocation(line: 349, column: 3, scope: !1530)
!1548 = !DILocation(line: 350, column: 3, scope: !1530)
!1549 = !DILocation(line: 352, column: 9, scope: !1530)
!1550 = !DILocalVariable(name: "ctr", scope: !1530, file: !1272, line: 344, type: !55)
!1551 = !DILocation(line: 354, column: 3, scope: !1530)
!1552 = !DILocation(line: 354, column: 14, scope: !1530)
!1553 = !DILocation(line: 355, column: 18, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1530, file: !1272, line: 354, column: 19)
!1555 = !DILocalVariable(name: "off", scope: !1530, file: !1272, line: 344, type: !55)
!1556 = !DILocalVariable(name: "i", scope: !1530, file: !1272, line: 344, type: !55)
!1557 = !DILocation(line: 356, column: 10, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !1272, line: 356, column: 5)
!1559 = !DILocation(line: 356, scope: !1558)
!1560 = !DILocation(line: 356, column: 19, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !1272, line: 356, column: 5)
!1562 = !DILocation(line: 356, column: 5, scope: !1558)
!1563 = !DILocation(line: 357, column: 27, scope: !1561)
!1564 = !DILocation(line: 357, column: 33, scope: !1561)
!1565 = !DILocation(line: 357, column: 16, scope: !1561)
!1566 = !DILocation(line: 357, column: 7, scope: !1561)
!1567 = !DILocation(line: 357, column: 14, scope: !1561)
!1568 = !DILocation(line: 356, column: 26, scope: !1561)
!1569 = !DILocation(line: 356, column: 5, scope: !1561)
!1570 = distinct !{!1570, !1562, !1571, !200}
!1571 = !DILocation(line: 357, column: 36, scope: !1558)
!1572 = !DILocation(line: 359, column: 5, scope: !1554)
!1573 = !DILocation(line: 360, column: 35, scope: !1554)
!1574 = !DILocation(line: 361, column: 29, scope: !1554)
!1575 = !DILocation(line: 361, column: 38, scope: !1554)
!1576 = !DILocation(line: 361, column: 12, scope: !1554)
!1577 = !DILocation(line: 361, column: 9, scope: !1554)
!1578 = distinct !{!1578, !1551, !1579, !200}
!1579 = !DILocation(line: 362, column: 3, scope: !1530)
!1580 = !DILocation(line: 363, column: 1, scope: !1530)
!1581 = distinct !DISubprogram(name: "rej_uniform", scope: !1272, file: !1272, line: 309, type: !1582, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!55, !1584, !55, !321, !55}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!1585 = !DILocalVariable(name: "a", arg: 1, scope: !1581, file: !1272, line: 309, type: !1584)
!1586 = !DILocation(line: 0, scope: !1581)
!1587 = !DILocalVariable(name: "len", arg: 2, scope: !1581, file: !1272, line: 309, type: !55)
!1588 = !DILocalVariable(name: "buf", arg: 3, scope: !1581, file: !1272, line: 310, type: !321)
!1589 = !DILocalVariable(name: "buflen", arg: 4, scope: !1581, file: !1272, line: 310, type: !55)
!1590 = !DILocalVariable(name: "pos", scope: !1581, file: !1272, line: 311, type: !55)
!1591 = !DILocalVariable(name: "ctr", scope: !1581, file: !1272, line: 311, type: !55)
!1592 = !DILocation(line: 316, column: 3, scope: !1581)
!1593 = !DILocation(line: 316, column: 14, scope: !1581)
!1594 = !DILocation(line: 316, column: 20, scope: !1581)
!1595 = !DILocation(line: 317, column: 9, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1581, file: !1272, line: 316, column: 42)
!1597 = !DILocalVariable(name: "t", scope: !1581, file: !1272, line: 312, type: !103)
!1598 = !DILocation(line: 318, column: 20, scope: !1596)
!1599 = !DILocation(line: 318, column: 10, scope: !1596)
!1600 = !DILocation(line: 318, column: 31, scope: !1596)
!1601 = !DILocation(line: 318, column: 7, scope: !1596)
!1602 = !DILocation(line: 319, column: 27, scope: !1596)
!1603 = !DILocation(line: 319, column: 20, scope: !1596)
!1604 = !DILocation(line: 319, column: 10, scope: !1596)
!1605 = !DILocation(line: 319, column: 31, scope: !1596)
!1606 = !DILocation(line: 320, column: 7, scope: !1596)
!1607 = !DILocation(line: 322, column: 11, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1596, file: !1272, line: 322, column: 9)
!1609 = !DILocation(line: 323, column: 12, scope: !1608)
!1610 = !DILocation(line: 323, column: 7, scope: !1608)
!1611 = !DILocation(line: 323, column: 16, scope: !1608)
!1612 = distinct !{!1612, !1592, !1613, !200}
!1613 = !DILocation(line: 324, column: 3, scope: !1581)
!1614 = !DILocation(line: 327, column: 3, scope: !1581)
!1615 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_uniform_eta", scope: !1272, file: !1272, line: 429, type: !1531, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1616 = !DILocalVariable(name: "a", arg: 1, scope: !1615, file: !1272, line: 429, type: !770)
!1617 = !DILocation(line: 0, scope: !1615)
!1618 = !DILocalVariable(name: "seed", arg: 2, scope: !1615, file: !1272, line: 429, type: !321)
!1619 = !DILocalVariable(name: "nonce", arg: 3, scope: !1615, file: !1272, line: 429, type: !359)
!1620 = !DILocalVariable(name: "buflen", scope: !1615, file: !1272, line: 431, type: !55)
!1621 = !DILocalVariable(name: "buf", scope: !1615, file: !1272, line: 432, type: !1622)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1088, elements: !1623)
!1623 = !{!1624}
!1624 = !DISubrange(count: 136)
!1625 = !DILocation(line: 432, column: 11, scope: !1615)
!1626 = !DILocalVariable(name: "state", scope: !1615, file: !1272, line: 433, type: !1627)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream256_state", file: !1545, line: 10, baseType: !383)
!1628 = !DILocation(line: 433, column: 19, scope: !1615)
!1629 = !DILocation(line: 435, column: 3, scope: !1615)
!1630 = !DILocation(line: 436, column: 3, scope: !1615)
!1631 = !DILocation(line: 438, column: 9, scope: !1615)
!1632 = !DILocalVariable(name: "ctr", scope: !1615, file: !1272, line: 430, type: !55)
!1633 = !DILocation(line: 440, column: 3, scope: !1615)
!1634 = !DILocation(line: 440, column: 14, scope: !1615)
!1635 = !DILocation(line: 441, column: 5, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1615, file: !1272, line: 440, column: 19)
!1637 = !DILocation(line: 442, column: 25, scope: !1636)
!1638 = !DILocation(line: 442, column: 34, scope: !1636)
!1639 = !DILocation(line: 442, column: 12, scope: !1636)
!1640 = !DILocation(line: 442, column: 9, scope: !1636)
!1641 = distinct !{!1641, !1633, !1642, !200}
!1642 = !DILocation(line: 443, column: 3, scope: !1615)
!1643 = !DILocation(line: 444, column: 1, scope: !1615)
!1644 = distinct !DISubprogram(name: "rej_eta", scope: !1272, file: !1272, line: 379, type: !1582, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1645 = !DILocalVariable(name: "a", arg: 1, scope: !1644, file: !1272, line: 379, type: !1584)
!1646 = !DILocation(line: 0, scope: !1644)
!1647 = !DILocalVariable(name: "len", arg: 2, scope: !1644, file: !1272, line: 379, type: !55)
!1648 = !DILocalVariable(name: "buf", arg: 3, scope: !1644, file: !1272, line: 379, type: !321)
!1649 = !DILocalVariable(name: "buflen", arg: 4, scope: !1644, file: !1272, line: 380, type: !55)
!1650 = !DILocalVariable(name: "pos", scope: !1644, file: !1272, line: 381, type: !55)
!1651 = !DILocalVariable(name: "ctr", scope: !1644, file: !1272, line: 381, type: !55)
!1652 = !DILocation(line: 386, column: 3, scope: !1644)
!1653 = !DILocation(line: 386, column: 14, scope: !1644)
!1654 = !DILocation(line: 386, column: 20, scope: !1644)
!1655 = !DILocation(line: 387, column: 10, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1644, file: !1272, line: 386, column: 37)
!1657 = !DILocation(line: 387, column: 19, scope: !1656)
!1658 = !DILocalVariable(name: "t0", scope: !1644, file: !1272, line: 382, type: !103)
!1659 = !DILocation(line: 388, column: 17, scope: !1656)
!1660 = !DILocation(line: 388, column: 21, scope: !1656)
!1661 = !DILocalVariable(name: "t1", scope: !1644, file: !1272, line: 382, type: !103)
!1662 = !DILocation(line: 391, column: 12, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1656, file: !1272, line: 391, column: 9)
!1664 = !DILocation(line: 392, column: 22, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1663, file: !1272, line: 391, column: 18)
!1666 = !DILocation(line: 392, column: 27, scope: !1665)
!1667 = !DILocation(line: 392, column: 34, scope: !1665)
!1668 = !DILocation(line: 392, column: 15, scope: !1665)
!1669 = !DILocation(line: 393, column: 20, scope: !1665)
!1670 = !DILocation(line: 393, column: 12, scope: !1665)
!1671 = !DILocation(line: 393, column: 7, scope: !1665)
!1672 = !DILocation(line: 393, column: 16, scope: !1665)
!1673 = !DILocation(line: 394, column: 5, scope: !1665)
!1674 = !DILocation(line: 395, column: 12, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1656, file: !1272, line: 395, column: 9)
!1676 = !DILocation(line: 395, column: 17, scope: !1675)
!1677 = !DILocation(line: 396, column: 22, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1675, file: !1272, line: 395, column: 31)
!1679 = !DILocation(line: 396, column: 27, scope: !1678)
!1680 = !DILocation(line: 396, column: 34, scope: !1678)
!1681 = !DILocation(line: 396, column: 15, scope: !1678)
!1682 = !DILocation(line: 397, column: 20, scope: !1678)
!1683 = !DILocation(line: 397, column: 12, scope: !1678)
!1684 = !DILocation(line: 397, column: 7, scope: !1678)
!1685 = !DILocation(line: 397, column: 16, scope: !1678)
!1686 = !DILocation(line: 398, column: 5, scope: !1678)
!1687 = !DILocation(line: 0, scope: !1656)
!1688 = distinct !{!1688, !1652, !1689, !200}
!1689 = !DILocation(line: 405, column: 3, scope: !1644)
!1690 = !DILocation(line: 408, column: 3, scope: !1644)
!1691 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_uniform_gamma1", scope: !1272, file: !1272, line: 459, type: !1531, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1692 = !DILocalVariable(name: "a", arg: 1, scope: !1691, file: !1272, line: 459, type: !770)
!1693 = !DILocation(line: 0, scope: !1691)
!1694 = !DILocalVariable(name: "seed", arg: 2, scope: !1691, file: !1272, line: 459, type: !321)
!1695 = !DILocalVariable(name: "nonce", arg: 3, scope: !1691, file: !1272, line: 460, type: !359)
!1696 = !DILocalVariable(name: "buf", scope: !1691, file: !1272, line: 461, type: !1697)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 5440, elements: !1698)
!1698 = !{!1699}
!1699 = !DISubrange(count: 680)
!1700 = !DILocation(line: 461, column: 11, scope: !1691)
!1701 = !DILocalVariable(name: "state", scope: !1691, file: !1272, line: 462, type: !1627)
!1702 = !DILocation(line: 462, column: 19, scope: !1691)
!1703 = !DILocation(line: 464, column: 3, scope: !1691)
!1704 = !DILocation(line: 465, column: 3, scope: !1691)
!1705 = !DILocation(line: 466, column: 3, scope: !1691)
!1706 = !DILocation(line: 467, column: 1, scope: !1691)
!1707 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyz_unpack", scope: !1272, file: !1272, line: 822, type: !1708, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{null, !770, !321}
!1710 = !DILocalVariable(name: "r", arg: 1, scope: !1707, file: !1272, line: 822, type: !770)
!1711 = !DILocation(line: 0, scope: !1707)
!1712 = !DILocalVariable(name: "a", arg: 2, scope: !1707, file: !1272, line: 822, type: !321)
!1713 = !DILocalVariable(name: "i", scope: !1707, file: !1272, line: 823, type: !55)
!1714 = !DILocation(line: 827, column: 8, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1707, file: !1272, line: 827, column: 3)
!1716 = !DILocation(line: 827, scope: !1715)
!1717 = !DILocation(line: 827, column: 17, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !1272, line: 827, column: 3)
!1719 = !DILocation(line: 827, column: 3, scope: !1715)
!1720 = !DILocation(line: 828, column: 27, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !1272, line: 827, column: 31)
!1722 = !DILocation(line: 828, column: 23, scope: !1721)
!1723 = !DILocation(line: 828, column: 12, scope: !1721)
!1724 = !DILocation(line: 828, column: 5, scope: !1721)
!1725 = !DILocation(line: 828, column: 21, scope: !1721)
!1726 = !DILocation(line: 829, column: 38, scope: !1721)
!1727 = !DILocation(line: 829, column: 34, scope: !1721)
!1728 = !DILocation(line: 829, column: 24, scope: !1721)
!1729 = !DILocation(line: 829, column: 47, scope: !1721)
!1730 = !DILocation(line: 829, column: 12, scope: !1721)
!1731 = !DILocation(line: 829, column: 5, scope: !1721)
!1732 = !DILocation(line: 829, column: 21, scope: !1721)
!1733 = !DILocation(line: 830, column: 38, scope: !1721)
!1734 = !DILocation(line: 830, column: 34, scope: !1721)
!1735 = !DILocation(line: 830, column: 24, scope: !1721)
!1736 = !DILocation(line: 830, column: 47, scope: !1721)
!1737 = !DILocation(line: 830, column: 12, scope: !1721)
!1738 = !DILocation(line: 830, column: 5, scope: !1721)
!1739 = !DILocation(line: 830, column: 21, scope: !1721)
!1740 = !DILocation(line: 831, column: 12, scope: !1721)
!1741 = !DILocation(line: 831, column: 5, scope: !1721)
!1742 = !DILocation(line: 831, column: 21, scope: !1721)
!1743 = !DILocation(line: 833, column: 27, scope: !1721)
!1744 = !DILocation(line: 833, column: 23, scope: !1721)
!1745 = !DILocation(line: 833, column: 36, scope: !1721)
!1746 = !DILocation(line: 833, column: 12, scope: !1721)
!1747 = !DILocation(line: 833, column: 16, scope: !1721)
!1748 = !DILocation(line: 833, column: 5, scope: !1721)
!1749 = !DILocation(line: 833, column: 21, scope: !1721)
!1750 = !DILocation(line: 834, column: 38, scope: !1721)
!1751 = !DILocation(line: 834, column: 34, scope: !1721)
!1752 = !DILocation(line: 834, column: 24, scope: !1721)
!1753 = !DILocation(line: 834, column: 47, scope: !1721)
!1754 = !DILocation(line: 834, column: 12, scope: !1721)
!1755 = !DILocation(line: 834, column: 16, scope: !1721)
!1756 = !DILocation(line: 834, column: 5, scope: !1721)
!1757 = !DILocation(line: 834, column: 21, scope: !1721)
!1758 = !DILocation(line: 835, column: 38, scope: !1721)
!1759 = !DILocation(line: 835, column: 34, scope: !1721)
!1760 = !DILocation(line: 835, column: 24, scope: !1721)
!1761 = !DILocation(line: 835, column: 47, scope: !1721)
!1762 = !DILocation(line: 835, column: 12, scope: !1721)
!1763 = !DILocation(line: 835, column: 16, scope: !1721)
!1764 = !DILocation(line: 835, column: 5, scope: !1721)
!1765 = !DILocation(line: 835, column: 21, scope: !1721)
!1766 = !DILocation(line: 836, column: 12, scope: !1721)
!1767 = !DILocation(line: 836, column: 16, scope: !1721)
!1768 = !DILocation(line: 836, column: 5, scope: !1721)
!1769 = !DILocation(line: 836, column: 21, scope: !1721)
!1770 = !DILocation(line: 838, column: 27, scope: !1721)
!1771 = !DILocation(line: 838, column: 23, scope: !1721)
!1772 = !DILocation(line: 838, column: 36, scope: !1721)
!1773 = !DILocation(line: 838, column: 12, scope: !1721)
!1774 = !DILocation(line: 838, column: 16, scope: !1721)
!1775 = !DILocation(line: 838, column: 5, scope: !1721)
!1776 = !DILocation(line: 838, column: 21, scope: !1721)
!1777 = !DILocation(line: 839, column: 38, scope: !1721)
!1778 = !DILocation(line: 839, column: 34, scope: !1721)
!1779 = !DILocation(line: 839, column: 24, scope: !1721)
!1780 = !DILocation(line: 839, column: 47, scope: !1721)
!1781 = !DILocation(line: 839, column: 12, scope: !1721)
!1782 = !DILocation(line: 839, column: 16, scope: !1721)
!1783 = !DILocation(line: 839, column: 5, scope: !1721)
!1784 = !DILocation(line: 839, column: 21, scope: !1721)
!1785 = !DILocation(line: 840, column: 38, scope: !1721)
!1786 = !DILocation(line: 840, column: 34, scope: !1721)
!1787 = !DILocation(line: 840, column: 24, scope: !1721)
!1788 = !DILocation(line: 840, column: 47, scope: !1721)
!1789 = !DILocation(line: 840, column: 12, scope: !1721)
!1790 = !DILocation(line: 840, column: 16, scope: !1721)
!1791 = !DILocation(line: 840, column: 5, scope: !1721)
!1792 = !DILocation(line: 840, column: 21, scope: !1721)
!1793 = !DILocation(line: 841, column: 12, scope: !1721)
!1794 = !DILocation(line: 841, column: 16, scope: !1721)
!1795 = !DILocation(line: 841, column: 5, scope: !1721)
!1796 = !DILocation(line: 841, column: 21, scope: !1721)
!1797 = !DILocation(line: 843, column: 27, scope: !1721)
!1798 = !DILocation(line: 843, column: 23, scope: !1721)
!1799 = !DILocation(line: 843, column: 36, scope: !1721)
!1800 = !DILocation(line: 843, column: 12, scope: !1721)
!1801 = !DILocation(line: 843, column: 16, scope: !1721)
!1802 = !DILocation(line: 843, column: 5, scope: !1721)
!1803 = !DILocation(line: 843, column: 21, scope: !1721)
!1804 = !DILocation(line: 844, column: 38, scope: !1721)
!1805 = !DILocation(line: 844, column: 34, scope: !1721)
!1806 = !DILocation(line: 844, column: 24, scope: !1721)
!1807 = !DILocation(line: 844, column: 47, scope: !1721)
!1808 = !DILocation(line: 844, column: 12, scope: !1721)
!1809 = !DILocation(line: 844, column: 16, scope: !1721)
!1810 = !DILocation(line: 844, column: 5, scope: !1721)
!1811 = !DILocation(line: 844, column: 21, scope: !1721)
!1812 = !DILocation(line: 845, column: 38, scope: !1721)
!1813 = !DILocation(line: 845, column: 34, scope: !1721)
!1814 = !DILocation(line: 845, column: 24, scope: !1721)
!1815 = !DILocation(line: 845, column: 47, scope: !1721)
!1816 = !DILocation(line: 845, column: 12, scope: !1721)
!1817 = !DILocation(line: 845, column: 16, scope: !1721)
!1818 = !DILocation(line: 845, column: 5, scope: !1721)
!1819 = !DILocation(line: 845, column: 21, scope: !1721)
!1820 = !DILocation(line: 846, column: 12, scope: !1721)
!1821 = !DILocation(line: 846, column: 16, scope: !1721)
!1822 = !DILocation(line: 846, column: 5, scope: !1721)
!1823 = !DILocation(line: 846, column: 21, scope: !1721)
!1824 = !DILocation(line: 848, column: 39, scope: !1721)
!1825 = !DILocation(line: 848, column: 32, scope: !1721)
!1826 = !DILocation(line: 848, column: 30, scope: !1721)
!1827 = !DILocation(line: 848, column: 12, scope: !1721)
!1828 = !DILocation(line: 848, column: 5, scope: !1721)
!1829 = !DILocation(line: 848, column: 21, scope: !1721)
!1830 = !DILocation(line: 849, column: 39, scope: !1721)
!1831 = !DILocation(line: 849, column: 43, scope: !1721)
!1832 = !DILocation(line: 849, column: 32, scope: !1721)
!1833 = !DILocation(line: 849, column: 30, scope: !1721)
!1834 = !DILocation(line: 849, column: 12, scope: !1721)
!1835 = !DILocation(line: 849, column: 16, scope: !1721)
!1836 = !DILocation(line: 849, column: 5, scope: !1721)
!1837 = !DILocation(line: 849, column: 21, scope: !1721)
!1838 = !DILocation(line: 850, column: 39, scope: !1721)
!1839 = !DILocation(line: 850, column: 43, scope: !1721)
!1840 = !DILocation(line: 850, column: 32, scope: !1721)
!1841 = !DILocation(line: 850, column: 30, scope: !1721)
!1842 = !DILocation(line: 850, column: 12, scope: !1721)
!1843 = !DILocation(line: 850, column: 16, scope: !1721)
!1844 = !DILocation(line: 850, column: 5, scope: !1721)
!1845 = !DILocation(line: 850, column: 21, scope: !1721)
!1846 = !DILocation(line: 851, column: 39, scope: !1721)
!1847 = !DILocation(line: 851, column: 43, scope: !1721)
!1848 = !DILocation(line: 851, column: 32, scope: !1721)
!1849 = !DILocation(line: 851, column: 30, scope: !1721)
!1850 = !DILocation(line: 851, column: 12, scope: !1721)
!1851 = !DILocation(line: 851, column: 16, scope: !1721)
!1852 = !DILocation(line: 851, column: 5, scope: !1721)
!1853 = !DILocation(line: 851, column: 21, scope: !1721)
!1854 = !DILocation(line: 827, column: 26, scope: !1718)
!1855 = !DILocation(line: 827, column: 3, scope: !1718)
!1856 = distinct !{!1856, !1719, !1857, !200}
!1857 = !DILocation(line: 852, column: 3, scope: !1715)
!1858 = !DILocation(line: 872, column: 1, scope: !1707)
!1859 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_poly_challenge", scope: !1272, file: !1272, line: 480, type: !1708, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1860 = !DILocalVariable(name: "c", arg: 1, scope: !1859, file: !1272, line: 480, type: !770)
!1861 = !DILocation(line: 0, scope: !1859)
!1862 = !DILocalVariable(name: "seed", arg: 2, scope: !1859, file: !1272, line: 480, type: !321)
!1863 = !DILocalVariable(name: "buf", scope: !1859, file: !1272, line: 483, type: !1622)
!1864 = !DILocation(line: 483, column: 11, scope: !1859)
!1865 = !DILocalVariable(name: "state", scope: !1859, file: !1272, line: 484, type: !383)
!1866 = !DILocation(line: 484, column: 16, scope: !1859)
!1867 = !DILocation(line: 486, column: 3, scope: !1859)
!1868 = !DILocation(line: 487, column: 3, scope: !1859)
!1869 = !DILocation(line: 488, column: 3, scope: !1859)
!1870 = !DILocation(line: 489, column: 3, scope: !1859)
!1871 = !DILocalVariable(name: "signs", scope: !1859, file: !1272, line: 482, type: !85)
!1872 = !DILocalVariable(name: "i", scope: !1859, file: !1272, line: 481, type: !55)
!1873 = !DILocation(line: 492, column: 8, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1859, file: !1272, line: 492, column: 3)
!1875 = !DILocation(line: 492, scope: !1874)
!1876 = !DILocation(line: 492, column: 17, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !1272, line: 492, column: 3)
!1878 = !DILocation(line: 492, column: 3, scope: !1874)
!1879 = !DILocation(line: 496, column: 3, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1859, file: !1272, line: 496, column: 3)
!1881 = !DILocation(line: 493, column: 24, scope: !1877)
!1882 = !DILocation(line: 493, column: 14, scope: !1877)
!1883 = !DILocation(line: 493, column: 36, scope: !1877)
!1884 = !DILocation(line: 493, column: 31, scope: !1877)
!1885 = !DILocation(line: 493, column: 11, scope: !1877)
!1886 = !DILocation(line: 492, column: 22, scope: !1877)
!1887 = !DILocation(line: 492, column: 3, scope: !1877)
!1888 = distinct !{!1888, !1878, !1889, !200}
!1889 = !DILocation(line: 493, column: 38, scope: !1874)
!1890 = !DILocation(line: 496, scope: !1880)
!1891 = !DILocation(line: 496, column: 17, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1880, file: !1272, line: 496, column: 3)
!1893 = !DILocation(line: 498, column: 3, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1859, file: !1272, line: 498, column: 3)
!1895 = !DILocation(line: 497, column: 5, scope: !1892)
!1896 = !DILocation(line: 497, column: 13, scope: !1892)
!1897 = !DILocation(line: 496, column: 22, scope: !1892)
!1898 = !DILocation(line: 496, column: 3, scope: !1892)
!1899 = distinct !{!1899, !1879, !1900, !200}
!1900 = !DILocation(line: 497, column: 15, scope: !1880)
!1901 = !DILocation(line: 498, scope: !1894)
!1902 = !DILocalVariable(name: "pos", scope: !1859, file: !1272, line: 481, type: !55)
!1903 = !DILocation(line: 498, column: 23, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1894, file: !1272, line: 498, column: 3)
!1905 = !DILocation(line: 499, column: 5, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1904, file: !1272, line: 498, column: 33)
!1907 = !DILocation(line: 500, column: 15, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !1272, line: 500, column: 11)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !1272, line: 499, column: 8)
!1910 = !DILocation(line: 501, column: 9, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1908, file: !1272, line: 500, column: 33)
!1912 = !DILocation(line: 503, column: 7, scope: !1911)
!1913 = !DILocation(line: 505, column: 18, scope: !1909)
!1914 = !DILocation(line: 505, column: 11, scope: !1909)
!1915 = !DILocalVariable(name: "b", scope: !1859, file: !1272, line: 481, type: !55)
!1916 = !DILocation(line: 506, column: 16, scope: !1906)
!1917 = !DILocation(line: 506, column: 5, scope: !1909)
!1918 = distinct !{!1918, !1905, !1919, !200}
!1919 = !DILocation(line: 506, column: 19, scope: !1906)
!1920 = !DILocation(line: 508, column: 15, scope: !1906)
!1921 = !DILocation(line: 508, column: 5, scope: !1906)
!1922 = !DILocation(line: 508, column: 13, scope: !1906)
!1923 = !DILocation(line: 509, column: 15, scope: !1906)
!1924 = !DILocation(line: 509, column: 5, scope: !1906)
!1925 = !DILocation(line: 509, column: 13, scope: !1906)
!1926 = !DILocation(line: 510, column: 11, scope: !1906)
!1927 = !DILocation(line: 498, column: 28, scope: !1904)
!1928 = !DILocation(line: 498, column: 3, scope: !1904)
!1929 = distinct !{!1929, !1893, !1930, !200}
!1930 = !DILocation(line: 511, column: 3, scope: !1894)
!1931 = !DILocation(line: 512, column: 1, scope: !1859)
!1932 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyeta_pack", scope: !1272, file: !1272, line: 523, type: !1933, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !47, !919}
!1935 = !DILocalVariable(name: "r", arg: 1, scope: !1932, file: !1272, line: 523, type: !47)
!1936 = !DILocation(line: 0, scope: !1932)
!1937 = !DILocalVariable(name: "a", arg: 2, scope: !1932, file: !1272, line: 523, type: !919)
!1938 = !DILocalVariable(name: "i", scope: !1932, file: !1272, line: 524, type: !55)
!1939 = !DILocation(line: 529, column: 8, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1932, file: !1272, line: 529, column: 3)
!1941 = !DILocation(line: 529, scope: !1940)
!1942 = !DILocation(line: 529, column: 17, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1940, file: !1272, line: 529, column: 3)
!1944 = !DILocation(line: 529, column: 3, scope: !1940)
!1945 = !DILocation(line: 530, column: 25, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1943, file: !1272, line: 529, column: 31)
!1947 = !DILocation(line: 530, column: 18, scope: !1946)
!1948 = !DILocation(line: 530, column: 12, scope: !1946)
!1949 = !DILocalVariable(name: "t", scope: !1932, file: !1272, line: 525, type: !1950)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !1951)
!1951 = !{!1952}
!1952 = !DISubrange(count: 8)
!1953 = !DILocation(line: 531, column: 25, scope: !1946)
!1954 = !DILocation(line: 531, column: 29, scope: !1946)
!1955 = !DILocation(line: 531, column: 18, scope: !1946)
!1956 = !DILocation(line: 532, column: 25, scope: !1946)
!1957 = !DILocation(line: 532, column: 29, scope: !1946)
!1958 = !DILocation(line: 532, column: 18, scope: !1946)
!1959 = !DILocation(line: 532, column: 12, scope: !1946)
!1960 = !DILocation(line: 533, column: 25, scope: !1946)
!1961 = !DILocation(line: 533, column: 29, scope: !1946)
!1962 = !DILocation(line: 533, column: 18, scope: !1946)
!1963 = !DILocation(line: 534, column: 25, scope: !1946)
!1964 = !DILocation(line: 534, column: 29, scope: !1946)
!1965 = !DILocation(line: 534, column: 18, scope: !1946)
!1966 = !DILocation(line: 535, column: 25, scope: !1946)
!1967 = !DILocation(line: 535, column: 29, scope: !1946)
!1968 = !DILocation(line: 535, column: 18, scope: !1946)
!1969 = !DILocation(line: 535, column: 12, scope: !1946)
!1970 = !DILocation(line: 536, column: 25, scope: !1946)
!1971 = !DILocation(line: 536, column: 29, scope: !1946)
!1972 = !DILocation(line: 536, column: 18, scope: !1946)
!1973 = !DILocation(line: 537, column: 25, scope: !1946)
!1974 = !DILocation(line: 537, column: 29, scope: !1946)
!1975 = !DILocation(line: 537, column: 18, scope: !1946)
!1976 = !DILocation(line: 539, column: 40, scope: !1946)
!1977 = !DILocation(line: 539, column: 32, scope: !1946)
!1978 = !DILocation(line: 539, column: 49, scope: !1946)
!1979 = !DILocation(line: 539, column: 54, scope: !1946)
!1980 = !DILocation(line: 539, column: 46, scope: !1946)
!1981 = !DILocation(line: 539, column: 20, scope: !1946)
!1982 = !DILocation(line: 539, column: 9, scope: !1946)
!1983 = !DILocation(line: 539, column: 5, scope: !1946)
!1984 = !DILocation(line: 539, column: 18, scope: !1946)
!1985 = !DILocation(line: 540, column: 26, scope: !1946)
!1986 = !DILocation(line: 540, column: 40, scope: !1946)
!1987 = !DILocation(line: 540, column: 32, scope: !1946)
!1988 = !DILocation(line: 540, column: 54, scope: !1946)
!1989 = !DILocation(line: 540, column: 46, scope: !1946)
!1990 = !DILocation(line: 540, column: 63, scope: !1946)
!1991 = !DILocation(line: 540, column: 68, scope: !1946)
!1992 = !DILocation(line: 540, column: 60, scope: !1946)
!1993 = !DILocation(line: 540, column: 20, scope: !1946)
!1994 = !DILocation(line: 540, column: 9, scope: !1946)
!1995 = !DILocation(line: 540, column: 5, scope: !1946)
!1996 = !DILocation(line: 540, column: 18, scope: !1946)
!1997 = !DILocation(line: 541, column: 26, scope: !1946)
!1998 = !DILocation(line: 541, column: 40, scope: !1946)
!1999 = !DILocation(line: 541, column: 32, scope: !1946)
!2000 = !DILocation(line: 541, column: 54, scope: !1946)
!2001 = !DILocation(line: 541, column: 46, scope: !1946)
!2002 = !DILocation(line: 541, column: 20, scope: !1946)
!2003 = !DILocation(line: 541, column: 9, scope: !1946)
!2004 = !DILocation(line: 541, column: 5, scope: !1946)
!2005 = !DILocation(line: 541, column: 18, scope: !1946)
!2006 = !DILocation(line: 529, column: 26, scope: !1943)
!2007 = !DILocation(line: 529, column: 3, scope: !1943)
!2008 = distinct !{!2008, !1944, !2009, !200}
!2009 = !DILocation(line: 542, column: 3, scope: !1940)
!2010 = !DILocation(line: 552, column: 1, scope: !1932)
!2011 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyeta_unpack", scope: !1272, file: !1272, line: 562, type: !1708, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2012 = !DILocalVariable(name: "r", arg: 1, scope: !2011, file: !1272, line: 562, type: !770)
!2013 = !DILocation(line: 0, scope: !2011)
!2014 = !DILocalVariable(name: "a", arg: 2, scope: !2011, file: !1272, line: 562, type: !321)
!2015 = !DILocalVariable(name: "i", scope: !2011, file: !1272, line: 563, type: !55)
!2016 = !DILocation(line: 567, column: 8, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2011, file: !1272, line: 567, column: 3)
!2018 = !DILocation(line: 567, scope: !2017)
!2019 = !DILocation(line: 567, column: 17, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !1272, line: 567, column: 3)
!2021 = !DILocation(line: 567, column: 3, scope: !2017)
!2022 = !DILocation(line: 568, column: 28, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !1272, line: 567, column: 31)
!2024 = !DILocation(line: 568, column: 24, scope: !2023)
!2025 = !DILocation(line: 568, column: 43, scope: !2023)
!2026 = !DILocation(line: 568, column: 12, scope: !2023)
!2027 = !DILocation(line: 568, column: 5, scope: !2023)
!2028 = !DILocation(line: 568, column: 21, scope: !2023)
!2029 = !DILocation(line: 569, column: 28, scope: !2023)
!2030 = !DILocation(line: 569, column: 24, scope: !2023)
!2031 = !DILocation(line: 569, column: 37, scope: !2023)
!2032 = !DILocation(line: 569, column: 43, scope: !2023)
!2033 = !DILocation(line: 569, column: 12, scope: !2023)
!2034 = !DILocation(line: 569, column: 16, scope: !2023)
!2035 = !DILocation(line: 569, column: 5, scope: !2023)
!2036 = !DILocation(line: 569, column: 21, scope: !2023)
!2037 = !DILocation(line: 570, column: 29, scope: !2023)
!2038 = !DILocation(line: 570, column: 25, scope: !2023)
!2039 = !DILocation(line: 570, column: 38, scope: !2023)
!2040 = !DILocation(line: 570, column: 51, scope: !2023)
!2041 = !DILocation(line: 570, column: 47, scope: !2023)
!2042 = !DILocation(line: 570, column: 60, scope: !2023)
!2043 = !DILocation(line: 570, column: 67, scope: !2023)
!2044 = !DILocation(line: 570, column: 12, scope: !2023)
!2045 = !DILocation(line: 570, column: 16, scope: !2023)
!2046 = !DILocation(line: 570, column: 5, scope: !2023)
!2047 = !DILocation(line: 570, column: 21, scope: !2023)
!2048 = !DILocation(line: 571, column: 28, scope: !2023)
!2049 = !DILocation(line: 571, column: 24, scope: !2023)
!2050 = !DILocation(line: 571, column: 37, scope: !2023)
!2051 = !DILocation(line: 571, column: 43, scope: !2023)
!2052 = !DILocation(line: 571, column: 12, scope: !2023)
!2053 = !DILocation(line: 571, column: 16, scope: !2023)
!2054 = !DILocation(line: 571, column: 5, scope: !2023)
!2055 = !DILocation(line: 571, column: 21, scope: !2023)
!2056 = !DILocation(line: 572, column: 28, scope: !2023)
!2057 = !DILocation(line: 572, column: 24, scope: !2023)
!2058 = !DILocation(line: 572, column: 37, scope: !2023)
!2059 = !DILocation(line: 572, column: 43, scope: !2023)
!2060 = !DILocation(line: 572, column: 12, scope: !2023)
!2061 = !DILocation(line: 572, column: 16, scope: !2023)
!2062 = !DILocation(line: 572, column: 5, scope: !2023)
!2063 = !DILocation(line: 572, column: 21, scope: !2023)
!2064 = !DILocation(line: 573, column: 29, scope: !2023)
!2065 = !DILocation(line: 573, column: 25, scope: !2023)
!2066 = !DILocation(line: 573, column: 38, scope: !2023)
!2067 = !DILocation(line: 573, column: 51, scope: !2023)
!2068 = !DILocation(line: 573, column: 47, scope: !2023)
!2069 = !DILocation(line: 573, column: 60, scope: !2023)
!2070 = !DILocation(line: 573, column: 67, scope: !2023)
!2071 = !DILocation(line: 573, column: 12, scope: !2023)
!2072 = !DILocation(line: 573, column: 16, scope: !2023)
!2073 = !DILocation(line: 573, column: 5, scope: !2023)
!2074 = !DILocation(line: 573, column: 21, scope: !2023)
!2075 = !DILocation(line: 574, column: 28, scope: !2023)
!2076 = !DILocation(line: 574, column: 24, scope: !2023)
!2077 = !DILocation(line: 574, column: 37, scope: !2023)
!2078 = !DILocation(line: 574, column: 43, scope: !2023)
!2079 = !DILocation(line: 574, column: 12, scope: !2023)
!2080 = !DILocation(line: 574, column: 16, scope: !2023)
!2081 = !DILocation(line: 574, column: 5, scope: !2023)
!2082 = !DILocation(line: 574, column: 21, scope: !2023)
!2083 = !DILocation(line: 575, column: 28, scope: !2023)
!2084 = !DILocation(line: 575, column: 24, scope: !2023)
!2085 = !DILocation(line: 575, column: 37, scope: !2023)
!2086 = !DILocation(line: 575, column: 12, scope: !2023)
!2087 = !DILocation(line: 575, column: 16, scope: !2023)
!2088 = !DILocation(line: 575, column: 5, scope: !2023)
!2089 = !DILocation(line: 575, column: 21, scope: !2023)
!2090 = !DILocation(line: 577, column: 36, scope: !2023)
!2091 = !DILocation(line: 577, column: 29, scope: !2023)
!2092 = !DILocation(line: 577, column: 27, scope: !2023)
!2093 = !DILocation(line: 577, column: 12, scope: !2023)
!2094 = !DILocation(line: 577, column: 5, scope: !2023)
!2095 = !DILocation(line: 577, column: 21, scope: !2023)
!2096 = !DILocation(line: 578, column: 36, scope: !2023)
!2097 = !DILocation(line: 578, column: 40, scope: !2023)
!2098 = !DILocation(line: 578, column: 29, scope: !2023)
!2099 = !DILocation(line: 578, column: 27, scope: !2023)
!2100 = !DILocation(line: 578, column: 12, scope: !2023)
!2101 = !DILocation(line: 578, column: 16, scope: !2023)
!2102 = !DILocation(line: 578, column: 5, scope: !2023)
!2103 = !DILocation(line: 578, column: 21, scope: !2023)
!2104 = !DILocation(line: 579, column: 36, scope: !2023)
!2105 = !DILocation(line: 579, column: 40, scope: !2023)
!2106 = !DILocation(line: 579, column: 29, scope: !2023)
!2107 = !DILocation(line: 579, column: 27, scope: !2023)
!2108 = !DILocation(line: 579, column: 12, scope: !2023)
!2109 = !DILocation(line: 579, column: 16, scope: !2023)
!2110 = !DILocation(line: 579, column: 5, scope: !2023)
!2111 = !DILocation(line: 579, column: 21, scope: !2023)
!2112 = !DILocation(line: 580, column: 36, scope: !2023)
!2113 = !DILocation(line: 580, column: 40, scope: !2023)
!2114 = !DILocation(line: 580, column: 29, scope: !2023)
!2115 = !DILocation(line: 580, column: 27, scope: !2023)
!2116 = !DILocation(line: 580, column: 12, scope: !2023)
!2117 = !DILocation(line: 580, column: 16, scope: !2023)
!2118 = !DILocation(line: 580, column: 5, scope: !2023)
!2119 = !DILocation(line: 580, column: 21, scope: !2023)
!2120 = !DILocation(line: 581, column: 36, scope: !2023)
!2121 = !DILocation(line: 581, column: 40, scope: !2023)
!2122 = !DILocation(line: 581, column: 29, scope: !2023)
!2123 = !DILocation(line: 581, column: 27, scope: !2023)
!2124 = !DILocation(line: 581, column: 12, scope: !2023)
!2125 = !DILocation(line: 581, column: 16, scope: !2023)
!2126 = !DILocation(line: 581, column: 5, scope: !2023)
!2127 = !DILocation(line: 581, column: 21, scope: !2023)
!2128 = !DILocation(line: 582, column: 36, scope: !2023)
!2129 = !DILocation(line: 582, column: 40, scope: !2023)
!2130 = !DILocation(line: 582, column: 29, scope: !2023)
!2131 = !DILocation(line: 582, column: 27, scope: !2023)
!2132 = !DILocation(line: 582, column: 12, scope: !2023)
!2133 = !DILocation(line: 582, column: 16, scope: !2023)
!2134 = !DILocation(line: 582, column: 5, scope: !2023)
!2135 = !DILocation(line: 582, column: 21, scope: !2023)
!2136 = !DILocation(line: 583, column: 36, scope: !2023)
!2137 = !DILocation(line: 583, column: 40, scope: !2023)
!2138 = !DILocation(line: 583, column: 29, scope: !2023)
!2139 = !DILocation(line: 583, column: 27, scope: !2023)
!2140 = !DILocation(line: 583, column: 12, scope: !2023)
!2141 = !DILocation(line: 583, column: 16, scope: !2023)
!2142 = !DILocation(line: 583, column: 5, scope: !2023)
!2143 = !DILocation(line: 583, column: 21, scope: !2023)
!2144 = !DILocation(line: 584, column: 36, scope: !2023)
!2145 = !DILocation(line: 584, column: 40, scope: !2023)
!2146 = !DILocation(line: 584, column: 29, scope: !2023)
!2147 = !DILocation(line: 584, column: 27, scope: !2023)
!2148 = !DILocation(line: 584, column: 12, scope: !2023)
!2149 = !DILocation(line: 584, column: 16, scope: !2023)
!2150 = !DILocation(line: 584, column: 5, scope: !2023)
!2151 = !DILocation(line: 584, column: 21, scope: !2023)
!2152 = !DILocation(line: 567, column: 26, scope: !2020)
!2153 = !DILocation(line: 567, column: 3, scope: !2020)
!2154 = distinct !{!2154, !2021, !2155, !200}
!2155 = !DILocation(line: 585, column: 3, scope: !2017)
!2156 = !DILocation(line: 596, column: 1, scope: !2011)
!2157 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyt1_pack", scope: !1272, file: !1272, line: 608, type: !1933, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2158 = !DILocalVariable(name: "r", arg: 1, scope: !2157, file: !1272, line: 608, type: !47)
!2159 = !DILocation(line: 0, scope: !2157)
!2160 = !DILocalVariable(name: "a", arg: 2, scope: !2157, file: !1272, line: 608, type: !919)
!2161 = !DILocalVariable(name: "i", scope: !2157, file: !1272, line: 609, type: !55)
!2162 = !DILocation(line: 612, column: 8, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2157, file: !1272, line: 612, column: 3)
!2164 = !DILocation(line: 612, scope: !2163)
!2165 = !DILocation(line: 612, column: 17, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !1272, line: 612, column: 3)
!2167 = !DILocation(line: 612, column: 3, scope: !2163)
!2168 = !DILocation(line: 613, column: 28, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2166, file: !1272, line: 612, column: 31)
!2170 = !DILocation(line: 613, column: 21, scope: !2169)
!2171 = !DILocation(line: 613, column: 20, scope: !2169)
!2172 = !DILocation(line: 613, column: 9, scope: !2169)
!2173 = !DILocation(line: 613, column: 5, scope: !2169)
!2174 = !DILocation(line: 613, column: 18, scope: !2169)
!2175 = !DILocation(line: 614, column: 28, scope: !2169)
!2176 = !DILocation(line: 614, column: 21, scope: !2169)
!2177 = !DILocation(line: 614, column: 37, scope: !2169)
!2178 = !DILocation(line: 614, column: 53, scope: !2169)
!2179 = !DILocation(line: 614, column: 57, scope: !2169)
!2180 = !DILocation(line: 614, column: 46, scope: !2169)
!2181 = !DILocation(line: 614, column: 62, scope: !2169)
!2182 = !DILocation(line: 614, column: 43, scope: !2169)
!2183 = !DILocation(line: 614, column: 20, scope: !2169)
!2184 = !DILocation(line: 614, column: 9, scope: !2169)
!2185 = !DILocation(line: 614, column: 5, scope: !2169)
!2186 = !DILocation(line: 614, column: 18, scope: !2169)
!2187 = !DILocation(line: 615, column: 28, scope: !2169)
!2188 = !DILocation(line: 615, column: 32, scope: !2169)
!2189 = !DILocation(line: 615, column: 21, scope: !2169)
!2190 = !DILocation(line: 615, column: 37, scope: !2169)
!2191 = !DILocation(line: 615, column: 53, scope: !2169)
!2192 = !DILocation(line: 615, column: 57, scope: !2169)
!2193 = !DILocation(line: 615, column: 46, scope: !2169)
!2194 = !DILocation(line: 615, column: 62, scope: !2169)
!2195 = !DILocation(line: 615, column: 43, scope: !2169)
!2196 = !DILocation(line: 615, column: 20, scope: !2169)
!2197 = !DILocation(line: 615, column: 9, scope: !2169)
!2198 = !DILocation(line: 615, column: 5, scope: !2169)
!2199 = !DILocation(line: 615, column: 18, scope: !2169)
!2200 = !DILocation(line: 616, column: 28, scope: !2169)
!2201 = !DILocation(line: 616, column: 32, scope: !2169)
!2202 = !DILocation(line: 616, column: 21, scope: !2169)
!2203 = !DILocation(line: 616, column: 37, scope: !2169)
!2204 = !DILocation(line: 616, column: 53, scope: !2169)
!2205 = !DILocation(line: 616, column: 57, scope: !2169)
!2206 = !DILocation(line: 616, column: 46, scope: !2169)
!2207 = !DILocation(line: 616, column: 62, scope: !2169)
!2208 = !DILocation(line: 616, column: 43, scope: !2169)
!2209 = !DILocation(line: 616, column: 20, scope: !2169)
!2210 = !DILocation(line: 616, column: 9, scope: !2169)
!2211 = !DILocation(line: 616, column: 5, scope: !2169)
!2212 = !DILocation(line: 616, column: 18, scope: !2169)
!2213 = !DILocation(line: 617, column: 28, scope: !2169)
!2214 = !DILocation(line: 617, column: 32, scope: !2169)
!2215 = !DILocation(line: 617, column: 21, scope: !2169)
!2216 = !DILocation(line: 617, column: 37, scope: !2169)
!2217 = !DILocation(line: 617, column: 20, scope: !2169)
!2218 = !DILocation(line: 617, column: 9, scope: !2169)
!2219 = !DILocation(line: 617, column: 5, scope: !2169)
!2220 = !DILocation(line: 617, column: 18, scope: !2169)
!2221 = !DILocation(line: 612, column: 26, scope: !2166)
!2222 = !DILocation(line: 612, column: 3, scope: !2166)
!2223 = distinct !{!2223, !2167, !2224, !200}
!2224 = !DILocation(line: 618, column: 3, scope: !2163)
!2225 = !DILocation(line: 621, column: 1, scope: !2157)
!2226 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyt1_unpack", scope: !1272, file: !1272, line: 632, type: !1708, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2227 = !DILocalVariable(name: "r", arg: 1, scope: !2226, file: !1272, line: 632, type: !770)
!2228 = !DILocation(line: 0, scope: !2226)
!2229 = !DILocalVariable(name: "a", arg: 2, scope: !2226, file: !1272, line: 632, type: !321)
!2230 = !DILocalVariable(name: "i", scope: !2226, file: !1272, line: 633, type: !55)
!2231 = !DILocation(line: 636, column: 8, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2226, file: !1272, line: 636, column: 3)
!2233 = !DILocation(line: 636, scope: !2232)
!2234 = !DILocation(line: 636, column: 17, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !1272, line: 636, column: 3)
!2236 = !DILocation(line: 636, column: 3, scope: !2232)
!2237 = !DILocation(line: 638, column: 15, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !1272, line: 636, column: 31)
!2239 = !DILocation(line: 638, column: 11, scope: !2238)
!2240 = !DILocation(line: 638, column: 47, scope: !2238)
!2241 = !DILocation(line: 638, column: 43, scope: !2238)
!2242 = !DILocation(line: 638, column: 33, scope: !2238)
!2243 = !DILocation(line: 638, column: 56, scope: !2238)
!2244 = !DILocation(line: 638, column: 63, scope: !2238)
!2245 = !DILocation(line: 637, column: 12, scope: !2238)
!2246 = !DILocation(line: 637, column: 5, scope: !2238)
!2247 = !DILocation(line: 637, column: 21, scope: !2238)
!2248 = !DILocation(line: 640, column: 15, scope: !2238)
!2249 = !DILocation(line: 640, column: 11, scope: !2238)
!2250 = !DILocation(line: 640, column: 24, scope: !2238)
!2251 = !DILocation(line: 640, column: 47, scope: !2238)
!2252 = !DILocation(line: 640, column: 43, scope: !2238)
!2253 = !DILocation(line: 640, column: 33, scope: !2238)
!2254 = !DILocation(line: 640, column: 56, scope: !2238)
!2255 = !DILocation(line: 640, column: 63, scope: !2238)
!2256 = !DILocation(line: 639, column: 12, scope: !2238)
!2257 = !DILocation(line: 639, column: 16, scope: !2238)
!2258 = !DILocation(line: 639, column: 5, scope: !2238)
!2259 = !DILocation(line: 639, column: 21, scope: !2238)
!2260 = !DILocation(line: 642, column: 15, scope: !2238)
!2261 = !DILocation(line: 642, column: 11, scope: !2238)
!2262 = !DILocation(line: 642, column: 24, scope: !2238)
!2263 = !DILocation(line: 642, column: 47, scope: !2238)
!2264 = !DILocation(line: 642, column: 43, scope: !2238)
!2265 = !DILocation(line: 642, column: 33, scope: !2238)
!2266 = !DILocation(line: 642, column: 56, scope: !2238)
!2267 = !DILocation(line: 642, column: 63, scope: !2238)
!2268 = !DILocation(line: 641, column: 12, scope: !2238)
!2269 = !DILocation(line: 641, column: 16, scope: !2238)
!2270 = !DILocation(line: 641, column: 5, scope: !2238)
!2271 = !DILocation(line: 641, column: 21, scope: !2238)
!2272 = !DILocation(line: 644, column: 15, scope: !2238)
!2273 = !DILocation(line: 644, column: 11, scope: !2238)
!2274 = !DILocation(line: 644, column: 24, scope: !2238)
!2275 = !DILocation(line: 644, column: 47, scope: !2238)
!2276 = !DILocation(line: 644, column: 43, scope: !2238)
!2277 = !DILocation(line: 644, column: 33, scope: !2238)
!2278 = !DILocation(line: 644, column: 56, scope: !2238)
!2279 = !DILocation(line: 644, column: 30, scope: !2238)
!2280 = !DILocation(line: 643, column: 12, scope: !2238)
!2281 = !DILocation(line: 643, column: 16, scope: !2238)
!2282 = !DILocation(line: 643, column: 5, scope: !2238)
!2283 = !DILocation(line: 643, column: 21, scope: !2238)
!2284 = !DILocation(line: 636, column: 26, scope: !2235)
!2285 = !DILocation(line: 636, column: 3, scope: !2235)
!2286 = distinct !{!2286, !2236, !2287, !200}
!2287 = !DILocation(line: 645, column: 3, scope: !2232)
!2288 = !DILocation(line: 648, column: 1, scope: !2226)
!2289 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyt0_pack", scope: !1272, file: !1272, line: 659, type: !1933, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2290 = !DILocalVariable(name: "r", arg: 1, scope: !2289, file: !1272, line: 659, type: !47)
!2291 = !DILocation(line: 0, scope: !2289)
!2292 = !DILocalVariable(name: "a", arg: 2, scope: !2289, file: !1272, line: 659, type: !919)
!2293 = !DILocalVariable(name: "i", scope: !2289, file: !1272, line: 660, type: !55)
!2294 = !DILocation(line: 664, column: 8, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2289, file: !1272, line: 664, column: 3)
!2296 = !DILocation(line: 664, scope: !2295)
!2297 = !DILocation(line: 664, column: 17, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !1272, line: 664, column: 3)
!2299 = !DILocation(line: 664, column: 3, scope: !2295)
!2300 = !DILocation(line: 665, column: 36, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2298, file: !1272, line: 664, column: 31)
!2302 = !DILocation(line: 665, column: 29, scope: !2301)
!2303 = !DILocation(line: 665, column: 27, scope: !2301)
!2304 = !DILocalVariable(name: "t", scope: !2289, file: !1272, line: 661, type: !2305)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !1951)
!2306 = !DILocation(line: 666, column: 36, scope: !2301)
!2307 = !DILocation(line: 666, column: 40, scope: !2301)
!2308 = !DILocation(line: 666, column: 29, scope: !2301)
!2309 = !DILocation(line: 666, column: 27, scope: !2301)
!2310 = !DILocation(line: 667, column: 36, scope: !2301)
!2311 = !DILocation(line: 667, column: 40, scope: !2301)
!2312 = !DILocation(line: 667, column: 29, scope: !2301)
!2313 = !DILocation(line: 667, column: 27, scope: !2301)
!2314 = !DILocation(line: 668, column: 36, scope: !2301)
!2315 = !DILocation(line: 668, column: 40, scope: !2301)
!2316 = !DILocation(line: 668, column: 29, scope: !2301)
!2317 = !DILocation(line: 668, column: 27, scope: !2301)
!2318 = !DILocation(line: 669, column: 36, scope: !2301)
!2319 = !DILocation(line: 669, column: 40, scope: !2301)
!2320 = !DILocation(line: 669, column: 29, scope: !2301)
!2321 = !DILocation(line: 669, column: 27, scope: !2301)
!2322 = !DILocation(line: 670, column: 36, scope: !2301)
!2323 = !DILocation(line: 670, column: 40, scope: !2301)
!2324 = !DILocation(line: 670, column: 29, scope: !2301)
!2325 = !DILocation(line: 670, column: 27, scope: !2301)
!2326 = !DILocation(line: 671, column: 36, scope: !2301)
!2327 = !DILocation(line: 671, column: 40, scope: !2301)
!2328 = !DILocation(line: 671, column: 29, scope: !2301)
!2329 = !DILocation(line: 671, column: 27, scope: !2301)
!2330 = !DILocation(line: 672, column: 36, scope: !2301)
!2331 = !DILocation(line: 672, column: 40, scope: !2301)
!2332 = !DILocation(line: 672, column: 29, scope: !2301)
!2333 = !DILocation(line: 672, column: 27, scope: !2301)
!2334 = !DILocation(line: 674, column: 21, scope: !2301)
!2335 = !DILocation(line: 674, column: 10, scope: !2301)
!2336 = !DILocation(line: 674, column: 5, scope: !2301)
!2337 = !DILocation(line: 674, column: 19, scope: !2301)
!2338 = !DILocation(line: 675, column: 26, scope: !2301)
!2339 = !DILocation(line: 675, column: 21, scope: !2301)
!2340 = !DILocation(line: 675, column: 10, scope: !2301)
!2341 = !DILocation(line: 675, column: 5, scope: !2301)
!2342 = !DILocation(line: 675, column: 19, scope: !2301)
!2343 = !DILocation(line: 676, column: 10, scope: !2301)
!2344 = !DILocation(line: 676, column: 5, scope: !2301)
!2345 = !DILocation(line: 676, column: 19, scope: !2301)
!2346 = !DILocation(line: 677, column: 26, scope: !2301)
!2347 = !DILocation(line: 677, column: 21, scope: !2301)
!2348 = !DILocation(line: 677, column: 10, scope: !2301)
!2349 = !DILocation(line: 677, column: 5, scope: !2301)
!2350 = !DILocation(line: 677, column: 19, scope: !2301)
!2351 = !DILocation(line: 678, column: 26, scope: !2301)
!2352 = !DILocation(line: 678, column: 21, scope: !2301)
!2353 = !DILocation(line: 678, column: 10, scope: !2301)
!2354 = !DILocation(line: 678, column: 5, scope: !2301)
!2355 = !DILocation(line: 678, column: 19, scope: !2301)
!2356 = !DILocation(line: 679, column: 10, scope: !2301)
!2357 = !DILocation(line: 679, column: 5, scope: !2301)
!2358 = !DILocation(line: 679, column: 19, scope: !2301)
!2359 = !DILocation(line: 680, column: 26, scope: !2301)
!2360 = !DILocation(line: 680, column: 21, scope: !2301)
!2361 = !DILocation(line: 680, column: 10, scope: !2301)
!2362 = !DILocation(line: 680, column: 5, scope: !2301)
!2363 = !DILocation(line: 680, column: 19, scope: !2301)
!2364 = !DILocation(line: 681, column: 10, scope: !2301)
!2365 = !DILocation(line: 681, column: 5, scope: !2301)
!2366 = !DILocation(line: 681, column: 19, scope: !2301)
!2367 = !DILocation(line: 682, column: 26, scope: !2301)
!2368 = !DILocation(line: 682, column: 21, scope: !2301)
!2369 = !DILocation(line: 682, column: 10, scope: !2301)
!2370 = !DILocation(line: 682, column: 5, scope: !2301)
!2371 = !DILocation(line: 682, column: 19, scope: !2301)
!2372 = !DILocation(line: 683, column: 26, scope: !2301)
!2373 = !DILocation(line: 683, column: 21, scope: !2301)
!2374 = !DILocation(line: 683, column: 10, scope: !2301)
!2375 = !DILocation(line: 683, column: 5, scope: !2301)
!2376 = !DILocation(line: 683, column: 19, scope: !2301)
!2377 = !DILocation(line: 684, column: 10, scope: !2301)
!2378 = !DILocation(line: 684, column: 5, scope: !2301)
!2379 = !DILocation(line: 684, column: 19, scope: !2301)
!2380 = !DILocation(line: 685, column: 26, scope: !2301)
!2381 = !DILocation(line: 685, column: 21, scope: !2301)
!2382 = !DILocation(line: 685, column: 10, scope: !2301)
!2383 = !DILocation(line: 685, column: 5, scope: !2301)
!2384 = !DILocation(line: 685, column: 19, scope: !2301)
!2385 = !DILocation(line: 686, column: 26, scope: !2301)
!2386 = !DILocation(line: 686, column: 21, scope: !2301)
!2387 = !DILocation(line: 686, column: 10, scope: !2301)
!2388 = !DILocation(line: 686, column: 5, scope: !2301)
!2389 = !DILocation(line: 686, column: 19, scope: !2301)
!2390 = !DILocation(line: 687, column: 10, scope: !2301)
!2391 = !DILocation(line: 687, column: 5, scope: !2301)
!2392 = !DILocation(line: 687, column: 19, scope: !2301)
!2393 = !DILocation(line: 688, column: 26, scope: !2301)
!2394 = !DILocation(line: 688, column: 21, scope: !2301)
!2395 = !DILocation(line: 688, column: 10, scope: !2301)
!2396 = !DILocation(line: 688, column: 5, scope: !2301)
!2397 = !DILocation(line: 688, column: 19, scope: !2301)
!2398 = !DILocation(line: 689, column: 10, scope: !2301)
!2399 = !DILocation(line: 689, column: 5, scope: !2301)
!2400 = !DILocation(line: 689, column: 19, scope: !2301)
!2401 = !DILocation(line: 690, column: 27, scope: !2301)
!2402 = !DILocation(line: 690, column: 22, scope: !2301)
!2403 = !DILocation(line: 690, column: 10, scope: !2301)
!2404 = !DILocation(line: 690, column: 5, scope: !2301)
!2405 = !DILocation(line: 690, column: 20, scope: !2301)
!2406 = !DILocation(line: 691, column: 27, scope: !2301)
!2407 = !DILocation(line: 691, column: 22, scope: !2301)
!2408 = !DILocation(line: 691, column: 10, scope: !2301)
!2409 = !DILocation(line: 691, column: 5, scope: !2301)
!2410 = !DILocation(line: 691, column: 20, scope: !2301)
!2411 = !DILocation(line: 692, column: 10, scope: !2301)
!2412 = !DILocation(line: 692, column: 5, scope: !2301)
!2413 = !DILocation(line: 692, column: 20, scope: !2301)
!2414 = !DILocation(line: 693, column: 27, scope: !2301)
!2415 = !DILocation(line: 693, column: 22, scope: !2301)
!2416 = !DILocation(line: 693, column: 10, scope: !2301)
!2417 = !DILocation(line: 693, column: 5, scope: !2301)
!2418 = !DILocation(line: 693, column: 20, scope: !2301)
!2419 = !DILocation(line: 664, column: 26, scope: !2298)
!2420 = !DILocation(line: 664, column: 3, scope: !2298)
!2421 = distinct !{!2421, !2299, !2422, !200}
!2422 = !DILocation(line: 694, column: 3, scope: !2295)
!2423 = !DILocation(line: 697, column: 1, scope: !2289)
!2424 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyt0_unpack", scope: !1272, file: !1272, line: 707, type: !1708, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2425 = !DILocalVariable(name: "r", arg: 1, scope: !2424, file: !1272, line: 707, type: !770)
!2426 = !DILocation(line: 0, scope: !2424)
!2427 = !DILocalVariable(name: "a", arg: 2, scope: !2424, file: !1272, line: 707, type: !321)
!2428 = !DILocalVariable(name: "i", scope: !2424, file: !1272, line: 708, type: !55)
!2429 = !DILocation(line: 711, column: 8, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2424, file: !1272, line: 711, column: 3)
!2431 = !DILocation(line: 711, scope: !2430)
!2432 = !DILocation(line: 711, column: 17, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !1272, line: 711, column: 3)
!2434 = !DILocation(line: 711, column: 3, scope: !2430)
!2435 = !DILocation(line: 712, column: 28, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !1272, line: 711, column: 31)
!2437 = !DILocation(line: 712, column: 23, scope: !2436)
!2438 = !DILocation(line: 712, column: 12, scope: !2436)
!2439 = !DILocation(line: 712, column: 5, scope: !2436)
!2440 = !DILocation(line: 712, column: 21, scope: !2436)
!2441 = !DILocation(line: 713, column: 39, scope: !2436)
!2442 = !DILocation(line: 713, column: 34, scope: !2436)
!2443 = !DILocation(line: 713, column: 24, scope: !2436)
!2444 = !DILocation(line: 713, column: 48, scope: !2436)
!2445 = !DILocation(line: 713, column: 12, scope: !2436)
!2446 = !DILocation(line: 713, column: 5, scope: !2436)
!2447 = !DILocation(line: 713, column: 21, scope: !2436)
!2448 = !DILocation(line: 714, column: 12, scope: !2436)
!2449 = !DILocation(line: 714, column: 5, scope: !2436)
!2450 = !DILocation(line: 714, column: 21, scope: !2436)
!2451 = !DILocation(line: 716, column: 28, scope: !2436)
!2452 = !DILocation(line: 716, column: 23, scope: !2436)
!2453 = !DILocation(line: 716, column: 37, scope: !2436)
!2454 = !DILocation(line: 716, column: 12, scope: !2436)
!2455 = !DILocation(line: 716, column: 16, scope: !2436)
!2456 = !DILocation(line: 716, column: 5, scope: !2436)
!2457 = !DILocation(line: 716, column: 21, scope: !2436)
!2458 = !DILocation(line: 717, column: 39, scope: !2436)
!2459 = !DILocation(line: 717, column: 34, scope: !2436)
!2460 = !DILocation(line: 717, column: 24, scope: !2436)
!2461 = !DILocation(line: 717, column: 48, scope: !2436)
!2462 = !DILocation(line: 717, column: 12, scope: !2436)
!2463 = !DILocation(line: 717, column: 16, scope: !2436)
!2464 = !DILocation(line: 717, column: 5, scope: !2436)
!2465 = !DILocation(line: 717, column: 21, scope: !2436)
!2466 = !DILocation(line: 718, column: 39, scope: !2436)
!2467 = !DILocation(line: 718, column: 34, scope: !2436)
!2468 = !DILocation(line: 718, column: 24, scope: !2436)
!2469 = !DILocation(line: 718, column: 48, scope: !2436)
!2470 = !DILocation(line: 718, column: 12, scope: !2436)
!2471 = !DILocation(line: 718, column: 16, scope: !2436)
!2472 = !DILocation(line: 718, column: 5, scope: !2436)
!2473 = !DILocation(line: 718, column: 21, scope: !2436)
!2474 = !DILocation(line: 719, column: 12, scope: !2436)
!2475 = !DILocation(line: 719, column: 16, scope: !2436)
!2476 = !DILocation(line: 719, column: 5, scope: !2436)
!2477 = !DILocation(line: 719, column: 21, scope: !2436)
!2478 = !DILocation(line: 721, column: 28, scope: !2436)
!2479 = !DILocation(line: 721, column: 23, scope: !2436)
!2480 = !DILocation(line: 721, column: 37, scope: !2436)
!2481 = !DILocation(line: 721, column: 12, scope: !2436)
!2482 = !DILocation(line: 721, column: 16, scope: !2436)
!2483 = !DILocation(line: 721, column: 5, scope: !2436)
!2484 = !DILocation(line: 721, column: 21, scope: !2436)
!2485 = !DILocation(line: 722, column: 39, scope: !2436)
!2486 = !DILocation(line: 722, column: 34, scope: !2436)
!2487 = !DILocation(line: 722, column: 24, scope: !2436)
!2488 = !DILocation(line: 722, column: 48, scope: !2436)
!2489 = !DILocation(line: 722, column: 12, scope: !2436)
!2490 = !DILocation(line: 722, column: 16, scope: !2436)
!2491 = !DILocation(line: 722, column: 5, scope: !2436)
!2492 = !DILocation(line: 722, column: 21, scope: !2436)
!2493 = !DILocation(line: 723, column: 12, scope: !2436)
!2494 = !DILocation(line: 723, column: 16, scope: !2436)
!2495 = !DILocation(line: 723, column: 5, scope: !2436)
!2496 = !DILocation(line: 723, column: 21, scope: !2436)
!2497 = !DILocation(line: 725, column: 28, scope: !2436)
!2498 = !DILocation(line: 725, column: 23, scope: !2436)
!2499 = !DILocation(line: 725, column: 37, scope: !2436)
!2500 = !DILocation(line: 725, column: 12, scope: !2436)
!2501 = !DILocation(line: 725, column: 16, scope: !2436)
!2502 = !DILocation(line: 725, column: 5, scope: !2436)
!2503 = !DILocation(line: 725, column: 21, scope: !2436)
!2504 = !DILocation(line: 726, column: 39, scope: !2436)
!2505 = !DILocation(line: 726, column: 34, scope: !2436)
!2506 = !DILocation(line: 726, column: 24, scope: !2436)
!2507 = !DILocation(line: 726, column: 48, scope: !2436)
!2508 = !DILocation(line: 726, column: 12, scope: !2436)
!2509 = !DILocation(line: 726, column: 16, scope: !2436)
!2510 = !DILocation(line: 726, column: 5, scope: !2436)
!2511 = !DILocation(line: 726, column: 21, scope: !2436)
!2512 = !DILocation(line: 727, column: 39, scope: !2436)
!2513 = !DILocation(line: 727, column: 34, scope: !2436)
!2514 = !DILocation(line: 727, column: 24, scope: !2436)
!2515 = !DILocation(line: 727, column: 48, scope: !2436)
!2516 = !DILocation(line: 727, column: 12, scope: !2436)
!2517 = !DILocation(line: 727, column: 16, scope: !2436)
!2518 = !DILocation(line: 727, column: 5, scope: !2436)
!2519 = !DILocation(line: 727, column: 21, scope: !2436)
!2520 = !DILocation(line: 728, column: 12, scope: !2436)
!2521 = !DILocation(line: 728, column: 16, scope: !2436)
!2522 = !DILocation(line: 728, column: 5, scope: !2436)
!2523 = !DILocation(line: 728, column: 21, scope: !2436)
!2524 = !DILocation(line: 730, column: 28, scope: !2436)
!2525 = !DILocation(line: 730, column: 23, scope: !2436)
!2526 = !DILocation(line: 730, column: 37, scope: !2436)
!2527 = !DILocation(line: 730, column: 12, scope: !2436)
!2528 = !DILocation(line: 730, column: 16, scope: !2436)
!2529 = !DILocation(line: 730, column: 5, scope: !2436)
!2530 = !DILocation(line: 730, column: 21, scope: !2436)
!2531 = !DILocation(line: 731, column: 39, scope: !2436)
!2532 = !DILocation(line: 731, column: 34, scope: !2436)
!2533 = !DILocation(line: 731, column: 24, scope: !2436)
!2534 = !DILocation(line: 731, column: 48, scope: !2436)
!2535 = !DILocation(line: 731, column: 12, scope: !2436)
!2536 = !DILocation(line: 731, column: 16, scope: !2436)
!2537 = !DILocation(line: 731, column: 5, scope: !2436)
!2538 = !DILocation(line: 731, column: 21, scope: !2436)
!2539 = !DILocation(line: 732, column: 39, scope: !2436)
!2540 = !DILocation(line: 732, column: 34, scope: !2436)
!2541 = !DILocation(line: 732, column: 24, scope: !2436)
!2542 = !DILocation(line: 732, column: 48, scope: !2436)
!2543 = !DILocation(line: 732, column: 12, scope: !2436)
!2544 = !DILocation(line: 732, column: 16, scope: !2436)
!2545 = !DILocation(line: 732, column: 5, scope: !2436)
!2546 = !DILocation(line: 732, column: 21, scope: !2436)
!2547 = !DILocation(line: 733, column: 12, scope: !2436)
!2548 = !DILocation(line: 733, column: 16, scope: !2436)
!2549 = !DILocation(line: 733, column: 5, scope: !2436)
!2550 = !DILocation(line: 733, column: 21, scope: !2436)
!2551 = !DILocation(line: 735, column: 28, scope: !2436)
!2552 = !DILocation(line: 735, column: 23, scope: !2436)
!2553 = !DILocation(line: 735, column: 37, scope: !2436)
!2554 = !DILocation(line: 735, column: 12, scope: !2436)
!2555 = !DILocation(line: 735, column: 16, scope: !2436)
!2556 = !DILocation(line: 735, column: 5, scope: !2436)
!2557 = !DILocation(line: 735, column: 21, scope: !2436)
!2558 = !DILocation(line: 736, column: 39, scope: !2436)
!2559 = !DILocation(line: 736, column: 34, scope: !2436)
!2560 = !DILocation(line: 736, column: 24, scope: !2436)
!2561 = !DILocation(line: 736, column: 48, scope: !2436)
!2562 = !DILocation(line: 736, column: 12, scope: !2436)
!2563 = !DILocation(line: 736, column: 16, scope: !2436)
!2564 = !DILocation(line: 736, column: 5, scope: !2436)
!2565 = !DILocation(line: 736, column: 21, scope: !2436)
!2566 = !DILocation(line: 737, column: 12, scope: !2436)
!2567 = !DILocation(line: 737, column: 16, scope: !2436)
!2568 = !DILocation(line: 737, column: 5, scope: !2436)
!2569 = !DILocation(line: 737, column: 21, scope: !2436)
!2570 = !DILocation(line: 739, column: 28, scope: !2436)
!2571 = !DILocation(line: 739, column: 23, scope: !2436)
!2572 = !DILocation(line: 739, column: 37, scope: !2436)
!2573 = !DILocation(line: 739, column: 12, scope: !2436)
!2574 = !DILocation(line: 739, column: 16, scope: !2436)
!2575 = !DILocation(line: 739, column: 5, scope: !2436)
!2576 = !DILocation(line: 739, column: 21, scope: !2436)
!2577 = !DILocation(line: 740, column: 39, scope: !2436)
!2578 = !DILocation(line: 740, column: 34, scope: !2436)
!2579 = !DILocation(line: 740, column: 24, scope: !2436)
!2580 = !DILocation(line: 740, column: 49, scope: !2436)
!2581 = !DILocation(line: 740, column: 12, scope: !2436)
!2582 = !DILocation(line: 740, column: 16, scope: !2436)
!2583 = !DILocation(line: 740, column: 5, scope: !2436)
!2584 = !DILocation(line: 740, column: 21, scope: !2436)
!2585 = !DILocation(line: 741, column: 39, scope: !2436)
!2586 = !DILocation(line: 741, column: 34, scope: !2436)
!2587 = !DILocation(line: 741, column: 24, scope: !2436)
!2588 = !DILocation(line: 741, column: 49, scope: !2436)
!2589 = !DILocation(line: 741, column: 12, scope: !2436)
!2590 = !DILocation(line: 741, column: 16, scope: !2436)
!2591 = !DILocation(line: 741, column: 5, scope: !2436)
!2592 = !DILocation(line: 741, column: 21, scope: !2436)
!2593 = !DILocation(line: 742, column: 12, scope: !2436)
!2594 = !DILocation(line: 742, column: 16, scope: !2436)
!2595 = !DILocation(line: 742, column: 5, scope: !2436)
!2596 = !DILocation(line: 742, column: 21, scope: !2436)
!2597 = !DILocation(line: 744, column: 28, scope: !2436)
!2598 = !DILocation(line: 744, column: 23, scope: !2436)
!2599 = !DILocation(line: 744, column: 38, scope: !2436)
!2600 = !DILocation(line: 744, column: 12, scope: !2436)
!2601 = !DILocation(line: 744, column: 16, scope: !2436)
!2602 = !DILocation(line: 744, column: 5, scope: !2436)
!2603 = !DILocation(line: 744, column: 21, scope: !2436)
!2604 = !DILocation(line: 745, column: 39, scope: !2436)
!2605 = !DILocation(line: 745, column: 34, scope: !2436)
!2606 = !DILocation(line: 745, column: 24, scope: !2436)
!2607 = !DILocation(line: 745, column: 49, scope: !2436)
!2608 = !DILocation(line: 745, column: 12, scope: !2436)
!2609 = !DILocation(line: 745, column: 16, scope: !2436)
!2610 = !DILocation(line: 745, column: 5, scope: !2436)
!2611 = !DILocation(line: 745, column: 21, scope: !2436)
!2612 = !DILocation(line: 746, column: 12, scope: !2436)
!2613 = !DILocation(line: 746, column: 16, scope: !2436)
!2614 = !DILocation(line: 746, column: 5, scope: !2436)
!2615 = !DILocation(line: 746, column: 21, scope: !2436)
!2616 = !DILocation(line: 748, column: 47, scope: !2436)
!2617 = !DILocation(line: 748, column: 40, scope: !2436)
!2618 = !DILocation(line: 748, column: 38, scope: !2436)
!2619 = !DILocation(line: 748, column: 12, scope: !2436)
!2620 = !DILocation(line: 748, column: 5, scope: !2436)
!2621 = !DILocation(line: 748, column: 21, scope: !2436)
!2622 = !DILocation(line: 749, column: 47, scope: !2436)
!2623 = !DILocation(line: 749, column: 51, scope: !2436)
!2624 = !DILocation(line: 749, column: 40, scope: !2436)
!2625 = !DILocation(line: 749, column: 38, scope: !2436)
!2626 = !DILocation(line: 749, column: 12, scope: !2436)
!2627 = !DILocation(line: 749, column: 16, scope: !2436)
!2628 = !DILocation(line: 749, column: 5, scope: !2436)
!2629 = !DILocation(line: 749, column: 21, scope: !2436)
!2630 = !DILocation(line: 750, column: 47, scope: !2436)
!2631 = !DILocation(line: 750, column: 51, scope: !2436)
!2632 = !DILocation(line: 750, column: 40, scope: !2436)
!2633 = !DILocation(line: 750, column: 38, scope: !2436)
!2634 = !DILocation(line: 750, column: 12, scope: !2436)
!2635 = !DILocation(line: 750, column: 16, scope: !2436)
!2636 = !DILocation(line: 750, column: 5, scope: !2436)
!2637 = !DILocation(line: 750, column: 21, scope: !2436)
!2638 = !DILocation(line: 751, column: 47, scope: !2436)
!2639 = !DILocation(line: 751, column: 51, scope: !2436)
!2640 = !DILocation(line: 751, column: 40, scope: !2436)
!2641 = !DILocation(line: 751, column: 38, scope: !2436)
!2642 = !DILocation(line: 751, column: 12, scope: !2436)
!2643 = !DILocation(line: 751, column: 16, scope: !2436)
!2644 = !DILocation(line: 751, column: 5, scope: !2436)
!2645 = !DILocation(line: 751, column: 21, scope: !2436)
!2646 = !DILocation(line: 752, column: 47, scope: !2436)
!2647 = !DILocation(line: 752, column: 51, scope: !2436)
!2648 = !DILocation(line: 752, column: 40, scope: !2436)
!2649 = !DILocation(line: 752, column: 38, scope: !2436)
!2650 = !DILocation(line: 752, column: 12, scope: !2436)
!2651 = !DILocation(line: 752, column: 16, scope: !2436)
!2652 = !DILocation(line: 752, column: 5, scope: !2436)
!2653 = !DILocation(line: 752, column: 21, scope: !2436)
!2654 = !DILocation(line: 753, column: 47, scope: !2436)
!2655 = !DILocation(line: 753, column: 51, scope: !2436)
!2656 = !DILocation(line: 753, column: 40, scope: !2436)
!2657 = !DILocation(line: 753, column: 38, scope: !2436)
!2658 = !DILocation(line: 753, column: 12, scope: !2436)
!2659 = !DILocation(line: 753, column: 16, scope: !2436)
!2660 = !DILocation(line: 753, column: 5, scope: !2436)
!2661 = !DILocation(line: 753, column: 21, scope: !2436)
!2662 = !DILocation(line: 754, column: 47, scope: !2436)
!2663 = !DILocation(line: 754, column: 51, scope: !2436)
!2664 = !DILocation(line: 754, column: 40, scope: !2436)
!2665 = !DILocation(line: 754, column: 38, scope: !2436)
!2666 = !DILocation(line: 754, column: 12, scope: !2436)
!2667 = !DILocation(line: 754, column: 16, scope: !2436)
!2668 = !DILocation(line: 754, column: 5, scope: !2436)
!2669 = !DILocation(line: 754, column: 21, scope: !2436)
!2670 = !DILocation(line: 755, column: 47, scope: !2436)
!2671 = !DILocation(line: 755, column: 51, scope: !2436)
!2672 = !DILocation(line: 755, column: 40, scope: !2436)
!2673 = !DILocation(line: 755, column: 38, scope: !2436)
!2674 = !DILocation(line: 755, column: 12, scope: !2436)
!2675 = !DILocation(line: 755, column: 16, scope: !2436)
!2676 = !DILocation(line: 755, column: 5, scope: !2436)
!2677 = !DILocation(line: 755, column: 21, scope: !2436)
!2678 = !DILocation(line: 711, column: 26, scope: !2433)
!2679 = !DILocation(line: 711, column: 3, scope: !2433)
!2680 = distinct !{!2680, !2434, !2681, !200}
!2681 = !DILocation(line: 756, column: 3, scope: !2430)
!2682 = !DILocation(line: 759, column: 1, scope: !2424)
!2683 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyz_pack", scope: !1272, file: !1272, line: 771, type: !1933, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2684 = !DILocalVariable(name: "r", arg: 1, scope: !2683, file: !1272, line: 771, type: !47)
!2685 = !DILocation(line: 0, scope: !2683)
!2686 = !DILocalVariable(name: "a", arg: 2, scope: !2683, file: !1272, line: 771, type: !919)
!2687 = !DILocalVariable(name: "i", scope: !2683, file: !1272, line: 772, type: !55)
!2688 = !DILocation(line: 777, column: 8, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2683, file: !1272, line: 777, column: 3)
!2690 = !DILocation(line: 777, scope: !2689)
!2691 = !DILocation(line: 777, column: 17, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2689, file: !1272, line: 777, column: 3)
!2693 = !DILocation(line: 777, column: 3, scope: !2689)
!2694 = !DILocation(line: 778, column: 28, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2692, file: !1272, line: 777, column: 31)
!2696 = !DILocation(line: 778, column: 21, scope: !2695)
!2697 = !DILocation(line: 778, column: 19, scope: !2695)
!2698 = !DILocalVariable(name: "t", scope: !2683, file: !1272, line: 773, type: !2699)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !300)
!2700 = !DILocation(line: 779, column: 28, scope: !2695)
!2701 = !DILocation(line: 779, column: 32, scope: !2695)
!2702 = !DILocation(line: 779, column: 21, scope: !2695)
!2703 = !DILocation(line: 779, column: 19, scope: !2695)
!2704 = !DILocation(line: 780, column: 28, scope: !2695)
!2705 = !DILocation(line: 780, column: 32, scope: !2695)
!2706 = !DILocation(line: 780, column: 21, scope: !2695)
!2707 = !DILocation(line: 780, column: 19, scope: !2695)
!2708 = !DILocation(line: 781, column: 28, scope: !2695)
!2709 = !DILocation(line: 781, column: 32, scope: !2695)
!2710 = !DILocation(line: 781, column: 21, scope: !2695)
!2711 = !DILocation(line: 781, column: 19, scope: !2695)
!2712 = !DILocation(line: 783, column: 20, scope: !2695)
!2713 = !DILocation(line: 783, column: 9, scope: !2695)
!2714 = !DILocation(line: 783, column: 5, scope: !2695)
!2715 = !DILocation(line: 783, column: 18, scope: !2695)
!2716 = !DILocation(line: 784, column: 25, scope: !2695)
!2717 = !DILocation(line: 784, column: 20, scope: !2695)
!2718 = !DILocation(line: 784, column: 9, scope: !2695)
!2719 = !DILocation(line: 784, column: 5, scope: !2695)
!2720 = !DILocation(line: 784, column: 18, scope: !2695)
!2721 = !DILocation(line: 785, column: 25, scope: !2695)
!2722 = !DILocation(line: 785, column: 20, scope: !2695)
!2723 = !DILocation(line: 785, column: 9, scope: !2695)
!2724 = !DILocation(line: 785, column: 5, scope: !2695)
!2725 = !DILocation(line: 785, column: 18, scope: !2695)
!2726 = !DILocation(line: 786, column: 9, scope: !2695)
!2727 = !DILocation(line: 786, column: 5, scope: !2695)
!2728 = !DILocation(line: 786, column: 18, scope: !2695)
!2729 = !DILocation(line: 787, column: 25, scope: !2695)
!2730 = !DILocation(line: 787, column: 20, scope: !2695)
!2731 = !DILocation(line: 787, column: 9, scope: !2695)
!2732 = !DILocation(line: 787, column: 5, scope: !2695)
!2733 = !DILocation(line: 787, column: 18, scope: !2695)
!2734 = !DILocation(line: 788, column: 25, scope: !2695)
!2735 = !DILocation(line: 788, column: 20, scope: !2695)
!2736 = !DILocation(line: 788, column: 9, scope: !2695)
!2737 = !DILocation(line: 788, column: 5, scope: !2695)
!2738 = !DILocation(line: 788, column: 18, scope: !2695)
!2739 = !DILocation(line: 789, column: 9, scope: !2695)
!2740 = !DILocation(line: 789, column: 5, scope: !2695)
!2741 = !DILocation(line: 789, column: 18, scope: !2695)
!2742 = !DILocation(line: 790, column: 25, scope: !2695)
!2743 = !DILocation(line: 790, column: 20, scope: !2695)
!2744 = !DILocation(line: 790, column: 9, scope: !2695)
!2745 = !DILocation(line: 790, column: 5, scope: !2695)
!2746 = !DILocation(line: 790, column: 18, scope: !2695)
!2747 = !DILocation(line: 791, column: 25, scope: !2695)
!2748 = !DILocation(line: 791, column: 20, scope: !2695)
!2749 = !DILocation(line: 791, column: 9, scope: !2695)
!2750 = !DILocation(line: 791, column: 5, scope: !2695)
!2751 = !DILocation(line: 791, column: 18, scope: !2695)
!2752 = !DILocation(line: 792, column: 9, scope: !2695)
!2753 = !DILocation(line: 792, column: 5, scope: !2695)
!2754 = !DILocation(line: 792, column: 18, scope: !2695)
!2755 = !DILocation(line: 793, column: 25, scope: !2695)
!2756 = !DILocation(line: 793, column: 20, scope: !2695)
!2757 = !DILocation(line: 793, column: 9, scope: !2695)
!2758 = !DILocation(line: 793, column: 5, scope: !2695)
!2759 = !DILocation(line: 793, column: 18, scope: !2695)
!2760 = !DILocation(line: 794, column: 25, scope: !2695)
!2761 = !DILocation(line: 794, column: 20, scope: !2695)
!2762 = !DILocation(line: 794, column: 9, scope: !2695)
!2763 = !DILocation(line: 794, column: 5, scope: !2695)
!2764 = !DILocation(line: 794, column: 18, scope: !2695)
!2765 = !DILocation(line: 777, column: 26, scope: !2692)
!2766 = !DILocation(line: 777, column: 3, scope: !2692)
!2767 = distinct !{!2767, !2693, !2768, !200}
!2768 = !DILocation(line: 795, column: 3, scope: !2689)
!2769 = !DILocation(line: 811, column: 1, scope: !2683)
!2770 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_polyw1_pack", scope: !1272, file: !1272, line: 884, type: !1933, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2771 = !DILocalVariable(name: "r", arg: 1, scope: !2770, file: !1272, line: 884, type: !47)
!2772 = !DILocation(line: 0, scope: !2770)
!2773 = !DILocalVariable(name: "a", arg: 2, scope: !2770, file: !1272, line: 884, type: !919)
!2774 = !DILocalVariable(name: "i", scope: !2770, file: !1272, line: 885, type: !55)
!2775 = !DILocation(line: 889, column: 8, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2770, file: !1272, line: 889, column: 3)
!2777 = !DILocation(line: 889, scope: !2776)
!2778 = !DILocation(line: 889, column: 17, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !1272, line: 889, column: 3)
!2780 = !DILocation(line: 889, column: 3, scope: !2776)
!2781 = !DILocation(line: 890, column: 27, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2779, file: !1272, line: 889, column: 31)
!2783 = !DILocation(line: 890, column: 20, scope: !2782)
!2784 = !DILocation(line: 890, column: 9, scope: !2782)
!2785 = !DILocation(line: 890, column: 5, scope: !2782)
!2786 = !DILocation(line: 890, column: 18, scope: !2782)
!2787 = !DILocation(line: 891, column: 28, scope: !2782)
!2788 = !DILocation(line: 891, column: 32, scope: !2782)
!2789 = !DILocation(line: 891, column: 21, scope: !2782)
!2790 = !DILocation(line: 891, column: 9, scope: !2782)
!2791 = !DILocation(line: 891, column: 5, scope: !2782)
!2792 = !DILocation(line: 891, column: 18, scope: !2782)
!2793 = !DILocation(line: 892, column: 27, scope: !2782)
!2794 = !DILocation(line: 892, column: 31, scope: !2782)
!2795 = !DILocation(line: 892, column: 20, scope: !2782)
!2796 = !DILocation(line: 892, column: 36, scope: !2782)
!2797 = !DILocation(line: 892, column: 9, scope: !2782)
!2798 = !DILocation(line: 892, column: 5, scope: !2782)
!2799 = !DILocation(line: 892, column: 18, scope: !2782)
!2800 = !DILocation(line: 893, column: 28, scope: !2782)
!2801 = !DILocation(line: 893, column: 32, scope: !2782)
!2802 = !DILocation(line: 893, column: 21, scope: !2782)
!2803 = !DILocation(line: 893, column: 9, scope: !2782)
!2804 = !DILocation(line: 893, column: 5, scope: !2782)
!2805 = !DILocation(line: 893, column: 18, scope: !2782)
!2806 = !DILocation(line: 894, column: 27, scope: !2782)
!2807 = !DILocation(line: 894, column: 31, scope: !2782)
!2808 = !DILocation(line: 894, column: 20, scope: !2782)
!2809 = !DILocation(line: 894, column: 36, scope: !2782)
!2810 = !DILocation(line: 894, column: 9, scope: !2782)
!2811 = !DILocation(line: 894, column: 5, scope: !2782)
!2812 = !DILocation(line: 894, column: 18, scope: !2782)
!2813 = !DILocation(line: 895, column: 28, scope: !2782)
!2814 = !DILocation(line: 895, column: 32, scope: !2782)
!2815 = !DILocation(line: 895, column: 21, scope: !2782)
!2816 = !DILocation(line: 895, column: 9, scope: !2782)
!2817 = !DILocation(line: 895, column: 5, scope: !2782)
!2818 = !DILocation(line: 895, column: 18, scope: !2782)
!2819 = !DILocation(line: 889, column: 26, scope: !2779)
!2820 = !DILocation(line: 889, column: 3, scope: !2779)
!2821 = distinct !{!2821, !2780, !2822, !200}
!2822 = !DILocation(line: 896, column: 3, scope: !2776)
!2823 = !DILocation(line: 903, column: 1, scope: !2770)
!2824 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_ntt", scope: !74, file: !74, line: 49, type: !2825, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !1584}
!2827 = !DILocalVariable(name: "a", arg: 1, scope: !2824, file: !74, line: 49, type: !1584)
!2828 = !DILocation(line: 0, scope: !2824)
!2829 = !DILocalVariable(name: "k", scope: !2824, file: !74, line: 50, type: !55)
!2830 = !DILocalVariable(name: "len", scope: !2824, file: !74, line: 50, type: !55)
!2831 = !DILocation(line: 54, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2824, file: !74, line: 54, column: 3)
!2833 = !DILocation(line: 54, scope: !2832)
!2834 = !DILocation(line: 53, column: 5, scope: !2824)
!2835 = !DILocation(line: 54, column: 22, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2832, file: !74, line: 54, column: 3)
!2837 = !DILocation(line: 54, column: 3, scope: !2832)
!2838 = !DILocation(line: 55, column: 5, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !74, line: 55, column: 5)
!2840 = distinct !DILexicalBlock(scope: !2836, file: !74, line: 54, column: 38)
!2841 = !DILocation(line: 55, scope: !2839)
!2842 = !DILocalVariable(name: "start", scope: !2824, file: !74, line: 50, type: !55)
!2843 = !DILocation(line: 55, column: 26, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2839, file: !74, line: 55, column: 5)
!2845 = !DILocation(line: 56, column: 20, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2844, file: !74, line: 55, column: 48)
!2847 = !DILocation(line: 56, column: 14, scope: !2846)
!2848 = !DILocalVariable(name: "zeta", scope: !2824, file: !74, line: 51, type: !77)
!2849 = !DILocalVariable(name: "j", scope: !2824, file: !74, line: 50, type: !55)
!2850 = !DILocation(line: 57, column: 11, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2846, file: !74, line: 57, column: 7)
!2852 = !DILocation(line: 57, scope: !2851)
!2853 = !DILocation(line: 57, column: 32, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2851, file: !74, line: 57, column: 7)
!2855 = !DILocation(line: 57, column: 24, scope: !2854)
!2856 = !DILocation(line: 57, column: 7, scope: !2851)
!2857 = !DILocation(line: 58, column: 31, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2854, file: !74, line: 57, column: 44)
!2859 = !DILocation(line: 58, column: 47, scope: !2858)
!2860 = !DILocation(line: 58, column: 45, scope: !2858)
!2861 = !DILocation(line: 58, column: 13, scope: !2858)
!2862 = !DILocalVariable(name: "t", scope: !2824, file: !74, line: 51, type: !77)
!2863 = !DILocation(line: 59, column: 22, scope: !2858)
!2864 = !DILocation(line: 59, column: 27, scope: !2858)
!2865 = !DILocation(line: 59, column: 9, scope: !2858)
!2866 = !DILocation(line: 59, column: 20, scope: !2858)
!2867 = !DILocation(line: 60, column: 16, scope: !2858)
!2868 = !DILocation(line: 60, column: 21, scope: !2858)
!2869 = !DILocation(line: 60, column: 9, scope: !2858)
!2870 = !DILocation(line: 60, column: 14, scope: !2858)
!2871 = !DILocation(line: 57, column: 39, scope: !2854)
!2872 = !DILocation(line: 57, column: 7, scope: !2854)
!2873 = distinct !{!2873, !2856, !2874, !200}
!2874 = !DILocation(line: 61, column: 7, scope: !2851)
!2875 = !DILocation(line: 55, column: 41, scope: !2844)
!2876 = !DILocation(line: 55, column: 5, scope: !2844)
!2877 = distinct !{!2877, !2838, !2878, !200}
!2878 = !DILocation(line: 62, column: 5, scope: !2839)
!2879 = !DILocation(line: 54, column: 31, scope: !2836)
!2880 = !DILocation(line: 54, column: 3, scope: !2836)
!2881 = distinct !{!2881, !2837, !2882, !200}
!2882 = !DILocation(line: 63, column: 3, scope: !2832)
!2883 = !DILocation(line: 64, column: 1, scope: !2824)
!2884 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_invntt_tomont", scope: !74, file: !74, line: 77, type: !2825, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !64)
!2885 = !DILocalVariable(name: "a", arg: 1, scope: !2884, file: !74, line: 77, type: !1584)
!2886 = !DILocation(line: 0, scope: !2884)
!2887 = !DILocalVariable(name: "f", scope: !2884, file: !74, line: 80, type: !76)
!2888 = !DILocalVariable(name: "k", scope: !2884, file: !74, line: 78, type: !55)
!2889 = !DILocalVariable(name: "len", scope: !2884, file: !74, line: 78, type: !55)
!2890 = !DILocation(line: 83, column: 7, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2884, file: !74, line: 83, column: 3)
!2892 = !DILocation(line: 83, scope: !2891)
!2893 = !DILocation(line: 82, column: 5, scope: !2884)
!2894 = !DILocation(line: 83, column: 20, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2891, file: !74, line: 83, column: 3)
!2896 = !DILocation(line: 83, column: 3, scope: !2891)
!2897 = !DILocation(line: 84, column: 5, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !74, line: 84, column: 5)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !74, line: 83, column: 36)
!2900 = !DILocation(line: 95, column: 3, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2884, file: !74, line: 95, column: 3)
!2902 = !DILocation(line: 84, scope: !2898)
!2903 = !DILocalVariable(name: "start", scope: !2884, file: !74, line: 78, type: !55)
!2904 = !DILocation(line: 84, column: 26, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2898, file: !74, line: 84, column: 5)
!2906 = !DILocation(line: 85, column: 21, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2905, file: !74, line: 84, column: 48)
!2908 = !DILocation(line: 85, column: 15, scope: !2907)
!2909 = !DILocation(line: 85, column: 14, scope: !2907)
!2910 = !DILocalVariable(name: "zeta", scope: !2884, file: !74, line: 79, type: !77)
!2911 = !DILocalVariable(name: "j", scope: !2884, file: !74, line: 78, type: !55)
!2912 = !DILocation(line: 86, column: 11, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2907, file: !74, line: 86, column: 7)
!2914 = !DILocation(line: 86, scope: !2913)
!2915 = !DILocation(line: 86, column: 32, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2913, file: !74, line: 86, column: 7)
!2917 = !DILocation(line: 86, column: 24, scope: !2916)
!2918 = !DILocation(line: 86, column: 7, scope: !2913)
!2919 = !DILocation(line: 87, column: 13, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2916, file: !74, line: 86, column: 44)
!2921 = !DILocalVariable(name: "t", scope: !2884, file: !74, line: 79, type: !77)
!2922 = !DILocation(line: 88, column: 20, scope: !2920)
!2923 = !DILocation(line: 88, column: 18, scope: !2920)
!2924 = !DILocation(line: 88, column: 9, scope: !2920)
!2925 = !DILocation(line: 88, column: 14, scope: !2920)
!2926 = !DILocation(line: 89, column: 26, scope: !2920)
!2927 = !DILocation(line: 89, column: 24, scope: !2920)
!2928 = !DILocation(line: 89, column: 9, scope: !2920)
!2929 = !DILocation(line: 89, column: 20, scope: !2920)
!2930 = !DILocation(line: 90, column: 40, scope: !2920)
!2931 = !DILocation(line: 90, column: 56, scope: !2920)
!2932 = !DILocation(line: 90, column: 54, scope: !2920)
!2933 = !DILocation(line: 90, column: 22, scope: !2920)
!2934 = !DILocation(line: 90, column: 9, scope: !2920)
!2935 = !DILocation(line: 90, column: 20, scope: !2920)
!2936 = !DILocation(line: 86, column: 39, scope: !2916)
!2937 = !DILocation(line: 86, column: 7, scope: !2916)
!2938 = distinct !{!2938, !2918, !2939, !200}
!2939 = !DILocation(line: 91, column: 7, scope: !2913)
!2940 = !DILocation(line: 84, column: 41, scope: !2905)
!2941 = !DILocation(line: 84, column: 5, scope: !2905)
!2942 = distinct !{!2942, !2897, !2943, !200}
!2943 = !DILocation(line: 92, column: 5, scope: !2898)
!2944 = !DILocation(line: 83, column: 29, scope: !2895)
!2945 = !DILocation(line: 83, column: 3, scope: !2895)
!2946 = distinct !{!2946, !2896, !2947, !200}
!2947 = !DILocation(line: 93, column: 3, scope: !2891)
!2948 = !DILocation(line: 95, scope: !2901)
!2949 = !DILocation(line: 95, column: 16, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2901, file: !74, line: 95, column: 3)
!2951 = !DILocation(line: 96, column: 43, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2950, file: !74, line: 95, column: 26)
!2953 = !DILocation(line: 96, column: 41, scope: !2952)
!2954 = !DILocation(line: 96, column: 12, scope: !2952)
!2955 = !DILocation(line: 96, column: 5, scope: !2952)
!2956 = !DILocation(line: 96, column: 10, scope: !2952)
!2957 = !DILocation(line: 95, column: 21, scope: !2950)
!2958 = !DILocation(line: 95, column: 3, scope: !2950)
!2959 = distinct !{!2959, !2900, !2960, !200}
!2960 = !DILocation(line: 97, column: 3, scope: !2901)
!2961 = !DILocation(line: 98, column: 1, scope: !2884)
!2962 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_montgomery_reduce", scope: !2963, file: !2963, line: 15, type: !2964, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2963 = !DIFile(filename: "../../../ref/reduce.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!77, !70}
!2966 = !DILocalVariable(name: "a", arg: 1, scope: !2962, file: !2963, line: 15, type: !70)
!2967 = !DILocation(line: 0, scope: !2962)
!2968 = !DILocation(line: 18, column: 7, scope: !2962)
!2969 = !DILocalVariable(name: "t", scope: !2962, file: !2963, line: 16, type: !77)
!2970 = !DILocation(line: 19, column: 12, scope: !2962)
!2971 = !DILocation(line: 19, column: 22, scope: !2962)
!2972 = !DILocation(line: 19, column: 10, scope: !2962)
!2973 = !DILocation(line: 19, column: 26, scope: !2962)
!2974 = !DILocation(line: 19, column: 7, scope: !2962)
!2975 = !DILocation(line: 20, column: 3, scope: !2962)
!2976 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_reduce32", scope: !2963, file: !2963, line: 33, type: !2977, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!77, !77}
!2979 = !DILocalVariable(name: "a", arg: 1, scope: !2976, file: !2963, line: 33, type: !77)
!2980 = !DILocation(line: 0, scope: !2976)
!2981 = !DILocation(line: 36, column: 10, scope: !2976)
!2982 = !DILocation(line: 36, column: 23, scope: !2976)
!2983 = !DILocalVariable(name: "t", scope: !2976, file: !2963, line: 34, type: !77)
!2984 = !DILocation(line: 37, column: 12, scope: !2976)
!2985 = !DILocation(line: 37, column: 9, scope: !2976)
!2986 = !DILocation(line: 38, column: 3, scope: !2976)
!2987 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_caddq", scope: !2963, file: !2963, line: 50, type: !2977, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2988 = !DILocalVariable(name: "a", arg: 1, scope: !2987, file: !2963, line: 50, type: !77)
!2989 = !DILocation(line: 0, scope: !2987)
!2990 = !DILocation(line: 51, column: 18, scope: !2987)
!2991 = !DILocation(line: 51, column: 5, scope: !2987)
!2992 = !DILocation(line: 52, column: 3, scope: !2987)
!2993 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_freeze", scope: !2963, file: !2963, line: 65, type: !2977, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2994 = !DILocalVariable(name: "a", arg: 1, scope: !2993, file: !2963, line: 65, type: !77)
!2995 = !DILocation(line: 0, scope: !2993)
!2996 = !DILocation(line: 66, column: 7, scope: !2993)
!2997 = !DILocation(line: 67, column: 7, scope: !2993)
!2998 = !DILocation(line: 68, column: 3, scope: !2993)
!2999 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_init", scope: !89, file: !89, line: 497, type: !3000, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{null, !3002}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 32)
!3003 = !DILocalVariable(name: "state", arg: 1, scope: !2999, file: !89, line: 497, type: !3002)
!3004 = !DILocation(line: 0, scope: !2999)
!3005 = !DILocation(line: 498, column: 3, scope: !2999)
!3006 = !DILocation(line: 499, column: 3, scope: !2999)
!3007 = !DILocation(line: 499, column: 29, scope: !2999)
!3008 = !DILocation(line: 500, column: 1, scope: !2999)
!3009 = distinct !DISubprogram(name: "keccak_init", scope: !89, file: !89, line: 340, type: !3010, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 32)
!3013 = !DILocalVariable(name: "s", arg: 1, scope: !3009, file: !89, line: 340, type: !3012)
!3014 = !DILocation(line: 0, scope: !3009)
!3015 = !DILocalVariable(name: "i", scope: !3009, file: !89, line: 341, type: !55)
!3016 = !DILocation(line: 342, column: 8, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3009, file: !89, line: 342, column: 3)
!3018 = !DILocation(line: 342, scope: !3017)
!3019 = !DILocation(line: 342, column: 17, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3017, file: !89, line: 342, column: 3)
!3021 = !DILocation(line: 342, column: 3, scope: !3017)
!3022 = !DILocation(line: 343, column: 5, scope: !3020)
!3023 = !DILocation(line: 343, column: 10, scope: !3020)
!3024 = !DILocation(line: 342, column: 24, scope: !3020)
!3025 = !DILocation(line: 342, column: 3, scope: !3020)
!3026 = distinct !{!3026, !3021, !3027, !200}
!3027 = !DILocation(line: 343, column: 12, scope: !3017)
!3028 = !DILocation(line: 344, column: 1, scope: !3009)
!3029 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_absorb", scope: !89, file: !89, line: 512, type: !3030, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !3002, !321, !53}
!3032 = !DILocalVariable(name: "state", arg: 1, scope: !3029, file: !89, line: 512, type: !3002)
!3033 = !DILocation(line: 0, scope: !3029)
!3034 = !DILocalVariable(name: "in", arg: 2, scope: !3029, file: !89, line: 512, type: !321)
!3035 = !DILocalVariable(name: "inlen", arg: 3, scope: !3029, file: !89, line: 512, type: !53)
!3036 = !DILocation(line: 514, column: 43, scope: !3029)
!3037 = !DILocation(line: 514, column: 29, scope: !3029)
!3038 = !DILocation(line: 514, column: 7, scope: !3029)
!3039 = !DILocalVariable(name: "pos", scope: !3029, file: !89, line: 513, type: !55)
!3040 = !DILocation(line: 516, column: 31, scope: !3029)
!3041 = !DILocation(line: 516, column: 3, scope: !3029)
!3042 = !DILocation(line: 516, column: 29, scope: !3029)
!3043 = !DILocation(line: 517, column: 1, scope: !3029)
!3044 = distinct !DISubprogram(name: "keccak_absorb", scope: !89, file: !89, line: 359, type: !3045, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!55, !3012, !55, !55, !321, !53}
!3047 = !DILocalVariable(name: "s", arg: 1, scope: !3044, file: !89, line: 359, type: !3012)
!3048 = !DILocation(line: 0, scope: !3044)
!3049 = !DILocalVariable(name: "pos", arg: 2, scope: !3044, file: !89, line: 359, type: !55)
!3050 = !DILocalVariable(name: "r", arg: 3, scope: !3044, file: !89, line: 360, type: !55)
!3051 = !DILocalVariable(name: "in", arg: 4, scope: !3044, file: !89, line: 360, type: !321)
!3052 = !DILocalVariable(name: "inlen", arg: 5, scope: !3044, file: !89, line: 361, type: !53)
!3053 = !DILocation(line: 364, column: 3, scope: !3044)
!3054 = !DILocation(line: 364, column: 14, scope: !3044)
!3055 = !DILocation(line: 364, column: 22, scope: !3044)
!3056 = !DILocation(line: 365, column: 5, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !89, line: 365, column: 5)
!3058 = distinct !DILexicalBlock(scope: !3044, file: !89, line: 364, column: 28)
!3059 = !DILocation(line: 372, column: 3, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3044, file: !89, line: 372, column: 3)
!3061 = !DILocation(line: 365, scope: !3057)
!3062 = !DILocalVariable(name: "i", scope: !3044, file: !89, line: 362, type: !55)
!3063 = !DILocation(line: 365, column: 21, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3057, file: !89, line: 365, column: 5)
!3065 = !DILocation(line: 366, column: 29, scope: !3064)
!3066 = !DILocation(line: 366, column: 19, scope: !3064)
!3067 = !DILocation(line: 366, column: 40, scope: !3064)
!3068 = !DILocation(line: 366, column: 35, scope: !3064)
!3069 = !DILocation(line: 366, column: 11, scope: !3064)
!3070 = !DILocation(line: 366, column: 7, scope: !3064)
!3071 = !DILocation(line: 366, column: 16, scope: !3064)
!3072 = !DILocation(line: 366, column: 32, scope: !3064)
!3073 = !DILocation(line: 365, column: 27, scope: !3064)
!3074 = !DILocation(line: 365, column: 5, scope: !3064)
!3075 = distinct !{!3075, !3056, !3076, !200}
!3076 = !DILocation(line: 366, column: 48, scope: !3057)
!3077 = !DILocation(line: 367, column: 16, scope: !3058)
!3078 = !DILocation(line: 367, column: 11, scope: !3058)
!3079 = !DILocation(line: 368, column: 5, scope: !3058)
!3080 = distinct !{!3080, !3053, !3081, !200}
!3081 = !DILocation(line: 370, column: 3, scope: !3044)
!3082 = !DILocation(line: 372, scope: !3060)
!3083 = !DILocation(line: 372, column: 25, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3060, file: !89, line: 372, column: 3)
!3085 = !DILocation(line: 372, column: 19, scope: !3084)
!3086 = !DILocation(line: 373, column: 27, scope: !3084)
!3087 = !DILocation(line: 373, column: 17, scope: !3084)
!3088 = !DILocation(line: 373, column: 38, scope: !3084)
!3089 = !DILocation(line: 373, column: 33, scope: !3084)
!3090 = !DILocation(line: 373, column: 9, scope: !3084)
!3091 = !DILocation(line: 373, column: 5, scope: !3084)
!3092 = !DILocation(line: 373, column: 14, scope: !3084)
!3093 = !DILocation(line: 373, column: 30, scope: !3084)
!3094 = !DILocation(line: 372, column: 35, scope: !3084)
!3095 = !DILocation(line: 372, column: 3, scope: !3084)
!3096 = distinct !{!3096, !3059, !3097, !200}
!3097 = !DILocation(line: 373, column: 46, scope: !3060)
!3098 = !DILocation(line: 375, column: 3, scope: !3044)
!3099 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !89, file: !89, line: 70, type: !3010, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3100 = !DILocalVariable(name: "state", arg: 1, scope: !3099, file: !89, line: 70, type: !3012)
!3101 = !DILocation(line: 0, scope: !3099)
!3102 = !DILocation(line: 87, column: 9, scope: !3099)
!3103 = !DILocalVariable(name: "Aba", scope: !3099, file: !89, line: 73, type: !85)
!3104 = !DILocation(line: 88, column: 9, scope: !3099)
!3105 = !DILocalVariable(name: "Abe", scope: !3099, file: !89, line: 73, type: !85)
!3106 = !DILocation(line: 89, column: 9, scope: !3099)
!3107 = !DILocalVariable(name: "Abi", scope: !3099, file: !89, line: 73, type: !85)
!3108 = !DILocation(line: 90, column: 9, scope: !3099)
!3109 = !DILocalVariable(name: "Abo", scope: !3099, file: !89, line: 73, type: !85)
!3110 = !DILocation(line: 91, column: 9, scope: !3099)
!3111 = !DILocalVariable(name: "Abu", scope: !3099, file: !89, line: 73, type: !85)
!3112 = !DILocation(line: 92, column: 9, scope: !3099)
!3113 = !DILocalVariable(name: "Aga", scope: !3099, file: !89, line: 74, type: !85)
!3114 = !DILocation(line: 93, column: 9, scope: !3099)
!3115 = !DILocalVariable(name: "Age", scope: !3099, file: !89, line: 74, type: !85)
!3116 = !DILocation(line: 94, column: 9, scope: !3099)
!3117 = !DILocalVariable(name: "Agi", scope: !3099, file: !89, line: 74, type: !85)
!3118 = !DILocation(line: 95, column: 9, scope: !3099)
!3119 = !DILocalVariable(name: "Ago", scope: !3099, file: !89, line: 74, type: !85)
!3120 = !DILocation(line: 96, column: 9, scope: !3099)
!3121 = !DILocalVariable(name: "Agu", scope: !3099, file: !89, line: 74, type: !85)
!3122 = !DILocation(line: 97, column: 9, scope: !3099)
!3123 = !DILocalVariable(name: "Aka", scope: !3099, file: !89, line: 75, type: !85)
!3124 = !DILocation(line: 98, column: 9, scope: !3099)
!3125 = !DILocalVariable(name: "Ake", scope: !3099, file: !89, line: 75, type: !85)
!3126 = !DILocation(line: 99, column: 9, scope: !3099)
!3127 = !DILocalVariable(name: "Aki", scope: !3099, file: !89, line: 75, type: !85)
!3128 = !DILocation(line: 100, column: 9, scope: !3099)
!3129 = !DILocalVariable(name: "Ako", scope: !3099, file: !89, line: 75, type: !85)
!3130 = !DILocation(line: 101, column: 9, scope: !3099)
!3131 = !DILocalVariable(name: "Aku", scope: !3099, file: !89, line: 75, type: !85)
!3132 = !DILocation(line: 102, column: 9, scope: !3099)
!3133 = !DILocalVariable(name: "Ama", scope: !3099, file: !89, line: 76, type: !85)
!3134 = !DILocation(line: 103, column: 9, scope: !3099)
!3135 = !DILocalVariable(name: "Ame", scope: !3099, file: !89, line: 76, type: !85)
!3136 = !DILocation(line: 104, column: 9, scope: !3099)
!3137 = !DILocalVariable(name: "Ami", scope: !3099, file: !89, line: 76, type: !85)
!3138 = !DILocation(line: 105, column: 9, scope: !3099)
!3139 = !DILocalVariable(name: "Amo", scope: !3099, file: !89, line: 76, type: !85)
!3140 = !DILocation(line: 106, column: 9, scope: !3099)
!3141 = !DILocalVariable(name: "Amu", scope: !3099, file: !89, line: 76, type: !85)
!3142 = !DILocation(line: 107, column: 9, scope: !3099)
!3143 = !DILocalVariable(name: "Asa", scope: !3099, file: !89, line: 77, type: !85)
!3144 = !DILocation(line: 108, column: 9, scope: !3099)
!3145 = !DILocalVariable(name: "Ase", scope: !3099, file: !89, line: 77, type: !85)
!3146 = !DILocation(line: 109, column: 9, scope: !3099)
!3147 = !DILocalVariable(name: "Asi", scope: !3099, file: !89, line: 77, type: !85)
!3148 = !DILocation(line: 110, column: 9, scope: !3099)
!3149 = !DILocalVariable(name: "Aso", scope: !3099, file: !89, line: 77, type: !85)
!3150 = !DILocation(line: 111, column: 9, scope: !3099)
!3151 = !DILocalVariable(name: "Asu", scope: !3099, file: !89, line: 77, type: !85)
!3152 = !DILocalVariable(name: "round", scope: !3099, file: !89, line: 71, type: !65)
!3153 = !DILocation(line: 113, column: 8, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3099, file: !89, line: 113, column: 3)
!3155 = !DILocation(line: 113, scope: !3154)
!3156 = !DILocation(line: 113, column: 25, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3154, file: !89, line: 113, column: 3)
!3158 = !DILocation(line: 113, column: 3, scope: !3154)
!3159 = !DILocalVariable(name: "BCa", scope: !3099, file: !89, line: 78, type: !85)
!3160 = !DILocalVariable(name: "BCe", scope: !3099, file: !89, line: 78, type: !85)
!3161 = !DILocalVariable(name: "BCi", scope: !3099, file: !89, line: 78, type: !85)
!3162 = !DILocalVariable(name: "BCo", scope: !3099, file: !89, line: 78, type: !85)
!3163 = !DILocalVariable(name: "BCu", scope: !3099, file: !89, line: 78, type: !85)
!3164 = !DILocalVariable(name: "Da", scope: !3099, file: !89, line: 79, type: !85)
!3165 = !DILocalVariable(name: "De", scope: !3099, file: !89, line: 79, type: !85)
!3166 = !DILocalVariable(name: "Di", scope: !3099, file: !89, line: 79, type: !85)
!3167 = !DILocalVariable(name: "Do", scope: !3099, file: !89, line: 79, type: !85)
!3168 = !DILocalVariable(name: "Du", scope: !3099, file: !89, line: 79, type: !85)
!3169 = !DILocalVariable(name: "Eba", scope: !3099, file: !89, line: 80, type: !85)
!3170 = !DILocalVariable(name: "Ebe", scope: !3099, file: !89, line: 80, type: !85)
!3171 = !DILocalVariable(name: "Ebi", scope: !3099, file: !89, line: 80, type: !85)
!3172 = !DILocalVariable(name: "Ebo", scope: !3099, file: !89, line: 80, type: !85)
!3173 = !DILocalVariable(name: "Ebu", scope: !3099, file: !89, line: 80, type: !85)
!3174 = !DILocalVariable(name: "Ega", scope: !3099, file: !89, line: 81, type: !85)
!3175 = !DILocalVariable(name: "Ege", scope: !3099, file: !89, line: 81, type: !85)
!3176 = !DILocalVariable(name: "Egi", scope: !3099, file: !89, line: 81, type: !85)
!3177 = !DILocalVariable(name: "Ego", scope: !3099, file: !89, line: 81, type: !85)
!3178 = !DILocalVariable(name: "Egu", scope: !3099, file: !89, line: 81, type: !85)
!3179 = !DILocalVariable(name: "Eka", scope: !3099, file: !89, line: 82, type: !85)
!3180 = !DILocalVariable(name: "Eke", scope: !3099, file: !89, line: 82, type: !85)
!3181 = !DILocalVariable(name: "Eki", scope: !3099, file: !89, line: 82, type: !85)
!3182 = !DILocalVariable(name: "Eko", scope: !3099, file: !89, line: 82, type: !85)
!3183 = !DILocalVariable(name: "Eku", scope: !3099, file: !89, line: 82, type: !85)
!3184 = !DILocalVariable(name: "Ema", scope: !3099, file: !89, line: 83, type: !85)
!3185 = !DILocalVariable(name: "Eme", scope: !3099, file: !89, line: 83, type: !85)
!3186 = !DILocalVariable(name: "Emi", scope: !3099, file: !89, line: 83, type: !85)
!3187 = !DILocalVariable(name: "Emo", scope: !3099, file: !89, line: 83, type: !85)
!3188 = !DILocalVariable(name: "Emu", scope: !3099, file: !89, line: 83, type: !85)
!3189 = !DILocalVariable(name: "Esa", scope: !3099, file: !89, line: 84, type: !85)
!3190 = !DILocalVariable(name: "Ese", scope: !3099, file: !89, line: 84, type: !85)
!3191 = !DILocalVariable(name: "Esi", scope: !3099, file: !89, line: 84, type: !85)
!3192 = !DILocalVariable(name: "Eso", scope: !3099, file: !89, line: 84, type: !85)
!3193 = !DILocalVariable(name: "Esu", scope: !3099, file: !89, line: 84, type: !85)
!3194 = !DILocation(line: 117, column: 15, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3157, file: !89, line: 113, column: 48)
!3196 = !DILocation(line: 117, column: 21, scope: !3195)
!3197 = !DILocation(line: 117, column: 27, scope: !3195)
!3198 = !DILocation(line: 117, column: 33, scope: !3195)
!3199 = !DILocation(line: 119, column: 15, scope: !3195)
!3200 = !DILocation(line: 119, column: 21, scope: !3195)
!3201 = !DILocation(line: 119, column: 27, scope: !3195)
!3202 = !DILocation(line: 119, column: 33, scope: !3195)
!3203 = !DILocation(line: 125, column: 16, scope: !3195)
!3204 = !DILocation(line: 125, column: 14, scope: !3195)
!3205 = !DILocation(line: 195, column: 9, scope: !3195)
!3206 = !DILocation(line: 196, column: 11, scope: !3195)
!3207 = !DILocation(line: 116, column: 15, scope: !3195)
!3208 = !DILocation(line: 116, column: 21, scope: !3195)
!3209 = !DILocation(line: 116, column: 27, scope: !3195)
!3210 = !DILocation(line: 116, column: 33, scope: !3195)
!3211 = !DILocation(line: 122, column: 16, scope: !3195)
!3212 = !DILocation(line: 122, column: 14, scope: !3195)
!3213 = !DILocation(line: 199, column: 9, scope: !3195)
!3214 = !DILocation(line: 200, column: 11, scope: !3195)
!3215 = !DILocation(line: 118, column: 15, scope: !3195)
!3216 = !DILocation(line: 118, column: 21, scope: !3195)
!3217 = !DILocation(line: 118, column: 27, scope: !3195)
!3218 = !DILocation(line: 118, column: 33, scope: !3195)
!3219 = !DILocation(line: 115, column: 15, scope: !3195)
!3220 = !DILocation(line: 115, column: 21, scope: !3195)
!3221 = !DILocation(line: 115, column: 27, scope: !3195)
!3222 = !DILocation(line: 115, column: 33, scope: !3195)
!3223 = !DILocation(line: 126, column: 16, scope: !3195)
!3224 = !DILocation(line: 126, column: 14, scope: !3195)
!3225 = !DILocation(line: 197, column: 9, scope: !3195)
!3226 = !DILocation(line: 198, column: 11, scope: !3195)
!3227 = !DILocation(line: 204, column: 19, scope: !3195)
!3228 = !DILocation(line: 204, column: 25, scope: !3195)
!3229 = !DILocation(line: 204, column: 15, scope: !3195)
!3230 = !DILocation(line: 124, column: 16, scope: !3195)
!3231 = !DILocation(line: 124, column: 14, scope: !3195)
!3232 = !DILocation(line: 132, column: 9, scope: !3195)
!3233 = !DILocation(line: 133, column: 11, scope: !3195)
!3234 = !DILocation(line: 123, column: 16, scope: !3195)
!3235 = !DILocation(line: 123, column: 14, scope: !3195)
!3236 = !DILocation(line: 130, column: 9, scope: !3195)
!3237 = !DILocation(line: 131, column: 11, scope: !3195)
!3238 = !DILocation(line: 138, column: 19, scope: !3195)
!3239 = !DILocation(line: 138, column: 25, scope: !3195)
!3240 = !DILocation(line: 139, column: 22, scope: !3195)
!3241 = !DILocation(line: 139, column: 9, scope: !3195)
!3242 = !DILocation(line: 128, column: 9, scope: !3195)
!3243 = !DILocation(line: 145, column: 9, scope: !3195)
!3244 = !DILocation(line: 146, column: 11, scope: !3195)
!3245 = !DILocation(line: 149, column: 9, scope: !3195)
!3246 = !DILocation(line: 150, column: 11, scope: !3195)
!3247 = !DILocation(line: 147, column: 9, scope: !3195)
!3248 = !DILocation(line: 148, column: 11, scope: !3195)
!3249 = !DILocation(line: 155, column: 19, scope: !3195)
!3250 = !DILocation(line: 155, column: 25, scope: !3195)
!3251 = !DILocation(line: 155, column: 15, scope: !3195)
!3252 = !DILocation(line: 210, column: 15, scope: !3195)
!3253 = !DILocation(line: 161, column: 9, scope: !3195)
!3254 = !DILocation(line: 162, column: 11, scope: !3195)
!3255 = !DILocation(line: 165, column: 9, scope: !3195)
!3256 = !DILocation(line: 166, column: 11, scope: !3195)
!3257 = !DILocation(line: 163, column: 9, scope: !3195)
!3258 = !DILocation(line: 164, column: 11, scope: !3195)
!3259 = !DILocation(line: 171, column: 19, scope: !3195)
!3260 = !DILocation(line: 171, column: 25, scope: !3195)
!3261 = !DILocation(line: 171, column: 15, scope: !3195)
!3262 = !DILocation(line: 210, column: 21, scope: !3195)
!3263 = !DILocation(line: 177, column: 9, scope: !3195)
!3264 = !DILocation(line: 178, column: 11, scope: !3195)
!3265 = !DILocation(line: 181, column: 9, scope: !3195)
!3266 = !DILocation(line: 182, column: 11, scope: !3195)
!3267 = !DILocation(line: 179, column: 9, scope: !3195)
!3268 = !DILocation(line: 180, column: 11, scope: !3195)
!3269 = !DILocation(line: 187, column: 19, scope: !3195)
!3270 = !DILocation(line: 187, column: 25, scope: !3195)
!3271 = !DILocation(line: 187, column: 15, scope: !3195)
!3272 = !DILocation(line: 210, column: 27, scope: !3195)
!3273 = !DILocation(line: 193, column: 9, scope: !3195)
!3274 = !DILocation(line: 194, column: 11, scope: !3195)
!3275 = !DILocation(line: 203, column: 19, scope: !3195)
!3276 = !DILocation(line: 203, column: 25, scope: !3195)
!3277 = !DILocation(line: 203, column: 15, scope: !3195)
!3278 = !DILocation(line: 210, column: 33, scope: !3195)
!3279 = !DILocation(line: 136, column: 9, scope: !3195)
!3280 = !DILocation(line: 137, column: 11, scope: !3195)
!3281 = !DILocation(line: 134, column: 9, scope: !3195)
!3282 = !DILocation(line: 135, column: 11, scope: !3195)
!3283 = !DILocation(line: 141, column: 19, scope: !3195)
!3284 = !DILocation(line: 141, column: 25, scope: !3195)
!3285 = !DILocation(line: 141, column: 15, scope: !3195)
!3286 = !DILocation(line: 153, column: 9, scope: !3195)
!3287 = !DILocation(line: 154, column: 11, scope: !3195)
!3288 = !DILocation(line: 151, column: 9, scope: !3195)
!3289 = !DILocation(line: 152, column: 11, scope: !3195)
!3290 = !DILocation(line: 157, column: 19, scope: !3195)
!3291 = !DILocation(line: 157, column: 25, scope: !3195)
!3292 = !DILocation(line: 157, column: 15, scope: !3195)
!3293 = !DILocation(line: 212, column: 15, scope: !3195)
!3294 = !DILocation(line: 169, column: 9, scope: !3195)
!3295 = !DILocation(line: 170, column: 11, scope: !3195)
!3296 = !DILocation(line: 167, column: 9, scope: !3195)
!3297 = !DILocation(line: 168, column: 11, scope: !3195)
!3298 = !DILocation(line: 173, column: 19, scope: !3195)
!3299 = !DILocation(line: 173, column: 25, scope: !3195)
!3300 = !DILocation(line: 173, column: 15, scope: !3195)
!3301 = !DILocation(line: 212, column: 21, scope: !3195)
!3302 = !DILocation(line: 185, column: 9, scope: !3195)
!3303 = !DILocation(line: 186, column: 11, scope: !3195)
!3304 = !DILocation(line: 183, column: 9, scope: !3195)
!3305 = !DILocation(line: 184, column: 11, scope: !3195)
!3306 = !DILocation(line: 189, column: 19, scope: !3195)
!3307 = !DILocation(line: 189, column: 25, scope: !3195)
!3308 = !DILocation(line: 189, column: 15, scope: !3195)
!3309 = !DILocation(line: 212, column: 27, scope: !3195)
!3310 = !DILocation(line: 201, column: 9, scope: !3195)
!3311 = !DILocation(line: 202, column: 11, scope: !3195)
!3312 = !DILocation(line: 205, column: 19, scope: !3195)
!3313 = !DILocation(line: 205, column: 25, scope: !3195)
!3314 = !DILocation(line: 205, column: 15, scope: !3195)
!3315 = !DILocation(line: 212, column: 33, scope: !3195)
!3316 = !DILocation(line: 218, column: 16, scope: !3195)
!3317 = !DILocation(line: 218, column: 14, scope: !3195)
!3318 = !DILocation(line: 296, column: 9, scope: !3195)
!3319 = !DILocation(line: 297, column: 11, scope: !3195)
!3320 = !DILocation(line: 158, column: 19, scope: !3195)
!3321 = !DILocation(line: 158, column: 25, scope: !3195)
!3322 = !DILocation(line: 158, column: 15, scope: !3195)
!3323 = !DILocation(line: 143, column: 19, scope: !3195)
!3324 = !DILocation(line: 143, column: 25, scope: !3195)
!3325 = !DILocation(line: 143, column: 15, scope: !3195)
!3326 = !DILocation(line: 159, column: 19, scope: !3195)
!3327 = !DILocation(line: 159, column: 25, scope: !3195)
!3328 = !DILocation(line: 159, column: 15, scope: !3195)
!3329 = !DILocation(line: 214, column: 15, scope: !3195)
!3330 = !DILocation(line: 175, column: 19, scope: !3195)
!3331 = !DILocation(line: 175, column: 25, scope: !3195)
!3332 = !DILocation(line: 175, column: 15, scope: !3195)
!3333 = !DILocation(line: 214, column: 21, scope: !3195)
!3334 = !DILocation(line: 191, column: 19, scope: !3195)
!3335 = !DILocation(line: 191, column: 25, scope: !3195)
!3336 = !DILocation(line: 191, column: 15, scope: !3195)
!3337 = !DILocation(line: 214, column: 27, scope: !3195)
!3338 = !DILocation(line: 207, column: 19, scope: !3195)
!3339 = !DILocation(line: 207, column: 25, scope: !3195)
!3340 = !DILocation(line: 207, column: 15, scope: !3195)
!3341 = !DILocation(line: 214, column: 33, scope: !3195)
!3342 = !DILocation(line: 220, column: 16, scope: !3195)
!3343 = !DILocation(line: 220, column: 14, scope: !3195)
!3344 = !DILocation(line: 290, column: 9, scope: !3195)
!3345 = !DILocation(line: 291, column: 11, scope: !3195)
!3346 = !DILocation(line: 140, column: 19, scope: !3195)
!3347 = !DILocation(line: 140, column: 25, scope: !3195)
!3348 = !DILocation(line: 140, column: 15, scope: !3195)
!3349 = !DILocation(line: 156, column: 19, scope: !3195)
!3350 = !DILocation(line: 156, column: 25, scope: !3195)
!3351 = !DILocation(line: 156, column: 15, scope: !3195)
!3352 = !DILocation(line: 211, column: 15, scope: !3195)
!3353 = !DILocation(line: 172, column: 19, scope: !3195)
!3354 = !DILocation(line: 172, column: 25, scope: !3195)
!3355 = !DILocation(line: 172, column: 15, scope: !3195)
!3356 = !DILocation(line: 211, column: 21, scope: !3195)
!3357 = !DILocation(line: 188, column: 19, scope: !3195)
!3358 = !DILocation(line: 188, column: 25, scope: !3195)
!3359 = !DILocation(line: 188, column: 15, scope: !3195)
!3360 = !DILocation(line: 211, column: 27, scope: !3195)
!3361 = !DILocation(line: 211, column: 33, scope: !3195)
!3362 = !DILocation(line: 142, column: 19, scope: !3195)
!3363 = !DILocation(line: 142, column: 25, scope: !3195)
!3364 = !DILocation(line: 142, column: 15, scope: !3195)
!3365 = !DILocation(line: 213, column: 15, scope: !3195)
!3366 = !DILocation(line: 174, column: 19, scope: !3195)
!3367 = !DILocation(line: 174, column: 25, scope: !3195)
!3368 = !DILocation(line: 174, column: 15, scope: !3195)
!3369 = !DILocation(line: 213, column: 21, scope: !3195)
!3370 = !DILocation(line: 190, column: 19, scope: !3195)
!3371 = !DILocation(line: 190, column: 25, scope: !3195)
!3372 = !DILocation(line: 190, column: 15, scope: !3195)
!3373 = !DILocation(line: 213, column: 27, scope: !3195)
!3374 = !DILocation(line: 206, column: 19, scope: !3195)
!3375 = !DILocation(line: 206, column: 25, scope: !3195)
!3376 = !DILocation(line: 206, column: 15, scope: !3195)
!3377 = !DILocation(line: 213, column: 33, scope: !3195)
!3378 = !DILocation(line: 219, column: 16, scope: !3195)
!3379 = !DILocation(line: 219, column: 14, scope: !3195)
!3380 = !DILocation(line: 288, column: 9, scope: !3195)
!3381 = !DILocation(line: 289, column: 11, scope: !3195)
!3382 = !DILocation(line: 302, column: 19, scope: !3195)
!3383 = !DILocation(line: 302, column: 25, scope: !3195)
!3384 = !DILocation(line: 302, column: 15, scope: !3195)
!3385 = !DILocation(line: 217, column: 16, scope: !3195)
!3386 = !DILocation(line: 217, column: 14, scope: !3195)
!3387 = !DILocation(line: 294, column: 9, scope: !3195)
!3388 = !DILocation(line: 295, column: 11, scope: !3195)
!3389 = !DILocation(line: 301, column: 19, scope: !3195)
!3390 = !DILocation(line: 301, column: 25, scope: !3195)
!3391 = !DILocation(line: 301, column: 15, scope: !3195)
!3392 = !DILocation(line: 221, column: 16, scope: !3195)
!3393 = !DILocation(line: 221, column: 14, scope: !3195)
!3394 = !DILocation(line: 292, column: 9, scope: !3195)
!3395 = !DILocation(line: 293, column: 11, scope: !3195)
!3396 = !DILocation(line: 300, column: 19, scope: !3195)
!3397 = !DILocation(line: 300, column: 25, scope: !3195)
!3398 = !DILocation(line: 300, column: 15, scope: !3195)
!3399 = !DILocation(line: 299, column: 19, scope: !3195)
!3400 = !DILocation(line: 299, column: 25, scope: !3195)
!3401 = !DILocation(line: 299, column: 15, scope: !3195)
!3402 = !DILocation(line: 298, column: 19, scope: !3195)
!3403 = !DILocation(line: 298, column: 25, scope: !3195)
!3404 = !DILocation(line: 298, column: 15, scope: !3195)
!3405 = !DILocation(line: 280, column: 9, scope: !3195)
!3406 = !DILocation(line: 281, column: 11, scope: !3195)
!3407 = !DILocation(line: 274, column: 9, scope: !3195)
!3408 = !DILocation(line: 275, column: 11, scope: !3195)
!3409 = !DILocation(line: 272, column: 9, scope: !3195)
!3410 = !DILocation(line: 273, column: 11, scope: !3195)
!3411 = !DILocation(line: 286, column: 19, scope: !3195)
!3412 = !DILocation(line: 286, column: 25, scope: !3195)
!3413 = !DILocation(line: 286, column: 15, scope: !3195)
!3414 = !DILocation(line: 278, column: 9, scope: !3195)
!3415 = !DILocation(line: 279, column: 11, scope: !3195)
!3416 = !DILocation(line: 285, column: 19, scope: !3195)
!3417 = !DILocation(line: 285, column: 25, scope: !3195)
!3418 = !DILocation(line: 285, column: 15, scope: !3195)
!3419 = !DILocation(line: 276, column: 9, scope: !3195)
!3420 = !DILocation(line: 277, column: 11, scope: !3195)
!3421 = !DILocation(line: 284, column: 19, scope: !3195)
!3422 = !DILocation(line: 284, column: 25, scope: !3195)
!3423 = !DILocation(line: 284, column: 15, scope: !3195)
!3424 = !DILocation(line: 283, column: 19, scope: !3195)
!3425 = !DILocation(line: 283, column: 25, scope: !3195)
!3426 = !DILocation(line: 283, column: 15, scope: !3195)
!3427 = !DILocation(line: 282, column: 19, scope: !3195)
!3428 = !DILocation(line: 282, column: 25, scope: !3195)
!3429 = !DILocation(line: 282, column: 15, scope: !3195)
!3430 = !DILocation(line: 264, column: 9, scope: !3195)
!3431 = !DILocation(line: 265, column: 11, scope: !3195)
!3432 = !DILocation(line: 258, column: 9, scope: !3195)
!3433 = !DILocation(line: 259, column: 11, scope: !3195)
!3434 = !DILocation(line: 256, column: 9, scope: !3195)
!3435 = !DILocation(line: 257, column: 11, scope: !3195)
!3436 = !DILocation(line: 270, column: 19, scope: !3195)
!3437 = !DILocation(line: 270, column: 25, scope: !3195)
!3438 = !DILocation(line: 270, column: 15, scope: !3195)
!3439 = !DILocation(line: 262, column: 9, scope: !3195)
!3440 = !DILocation(line: 263, column: 11, scope: !3195)
!3441 = !DILocation(line: 269, column: 19, scope: !3195)
!3442 = !DILocation(line: 269, column: 25, scope: !3195)
!3443 = !DILocation(line: 269, column: 15, scope: !3195)
!3444 = !DILocation(line: 260, column: 9, scope: !3195)
!3445 = !DILocation(line: 261, column: 11, scope: !3195)
!3446 = !DILocation(line: 268, column: 19, scope: !3195)
!3447 = !DILocation(line: 268, column: 25, scope: !3195)
!3448 = !DILocation(line: 268, column: 15, scope: !3195)
!3449 = !DILocation(line: 267, column: 19, scope: !3195)
!3450 = !DILocation(line: 267, column: 25, scope: !3195)
!3451 = !DILocation(line: 267, column: 15, scope: !3195)
!3452 = !DILocation(line: 266, column: 19, scope: !3195)
!3453 = !DILocation(line: 266, column: 25, scope: !3195)
!3454 = !DILocation(line: 266, column: 15, scope: !3195)
!3455 = !DILocation(line: 248, column: 9, scope: !3195)
!3456 = !DILocation(line: 249, column: 11, scope: !3195)
!3457 = !DILocation(line: 242, column: 9, scope: !3195)
!3458 = !DILocation(line: 243, column: 11, scope: !3195)
!3459 = !DILocation(line: 240, column: 9, scope: !3195)
!3460 = !DILocation(line: 241, column: 11, scope: !3195)
!3461 = !DILocation(line: 254, column: 19, scope: !3195)
!3462 = !DILocation(line: 254, column: 25, scope: !3195)
!3463 = !DILocation(line: 254, column: 15, scope: !3195)
!3464 = !DILocation(line: 246, column: 9, scope: !3195)
!3465 = !DILocation(line: 247, column: 11, scope: !3195)
!3466 = !DILocation(line: 253, column: 19, scope: !3195)
!3467 = !DILocation(line: 253, column: 25, scope: !3195)
!3468 = !DILocation(line: 253, column: 15, scope: !3195)
!3469 = !DILocation(line: 244, column: 9, scope: !3195)
!3470 = !DILocation(line: 245, column: 11, scope: !3195)
!3471 = !DILocation(line: 252, column: 19, scope: !3195)
!3472 = !DILocation(line: 252, column: 25, scope: !3195)
!3473 = !DILocation(line: 252, column: 15, scope: !3195)
!3474 = !DILocation(line: 251, column: 19, scope: !3195)
!3475 = !DILocation(line: 251, column: 25, scope: !3195)
!3476 = !DILocation(line: 251, column: 15, scope: !3195)
!3477 = !DILocation(line: 250, column: 19, scope: !3195)
!3478 = !DILocation(line: 250, column: 25, scope: !3195)
!3479 = !DILocation(line: 250, column: 15, scope: !3195)
!3480 = !DILocation(line: 231, column: 9, scope: !3195)
!3481 = !DILocation(line: 232, column: 11, scope: !3195)
!3482 = !DILocation(line: 225, column: 9, scope: !3195)
!3483 = !DILocation(line: 226, column: 11, scope: !3195)
!3484 = !DILocation(line: 223, column: 9, scope: !3195)
!3485 = !DILocation(line: 238, column: 19, scope: !3195)
!3486 = !DILocation(line: 238, column: 25, scope: !3195)
!3487 = !DILocation(line: 238, column: 15, scope: !3195)
!3488 = !DILocation(line: 229, column: 9, scope: !3195)
!3489 = !DILocation(line: 230, column: 11, scope: !3195)
!3490 = !DILocation(line: 237, column: 19, scope: !3195)
!3491 = !DILocation(line: 237, column: 25, scope: !3195)
!3492 = !DILocation(line: 237, column: 15, scope: !3195)
!3493 = !DILocation(line: 227, column: 9, scope: !3195)
!3494 = !DILocation(line: 228, column: 11, scope: !3195)
!3495 = !DILocation(line: 236, column: 19, scope: !3195)
!3496 = !DILocation(line: 236, column: 25, scope: !3195)
!3497 = !DILocation(line: 236, column: 15, scope: !3195)
!3498 = !DILocation(line: 235, column: 19, scope: !3195)
!3499 = !DILocation(line: 235, column: 25, scope: !3195)
!3500 = !DILocation(line: 235, column: 15, scope: !3195)
!3501 = !DILocation(line: 234, column: 51, scope: !3195)
!3502 = !DILocation(line: 234, column: 22, scope: !3195)
!3503 = !DILocation(line: 233, column: 19, scope: !3195)
!3504 = !DILocation(line: 233, column: 25, scope: !3195)
!3505 = !DILocation(line: 234, column: 9, scope: !3195)
!3506 = !DILocation(line: 113, column: 42, scope: !3157)
!3507 = !DILocation(line: 113, column: 3, scope: !3157)
!3508 = distinct !{!3508, !3158, !3509, !200}
!3509 = !DILocation(line: 303, column: 3, scope: !3154)
!3510 = !DILocation(line: 306, column: 12, scope: !3099)
!3511 = !DILocation(line: 307, column: 3, scope: !3099)
!3512 = !DILocation(line: 307, column: 12, scope: !3099)
!3513 = !DILocation(line: 308, column: 3, scope: !3099)
!3514 = !DILocation(line: 308, column: 12, scope: !3099)
!3515 = !DILocation(line: 309, column: 3, scope: !3099)
!3516 = !DILocation(line: 309, column: 12, scope: !3099)
!3517 = !DILocation(line: 310, column: 3, scope: !3099)
!3518 = !DILocation(line: 310, column: 12, scope: !3099)
!3519 = !DILocation(line: 311, column: 3, scope: !3099)
!3520 = !DILocation(line: 311, column: 12, scope: !3099)
!3521 = !DILocation(line: 312, column: 3, scope: !3099)
!3522 = !DILocation(line: 312, column: 12, scope: !3099)
!3523 = !DILocation(line: 313, column: 3, scope: !3099)
!3524 = !DILocation(line: 313, column: 12, scope: !3099)
!3525 = !DILocation(line: 314, column: 3, scope: !3099)
!3526 = !DILocation(line: 314, column: 12, scope: !3099)
!3527 = !DILocation(line: 315, column: 3, scope: !3099)
!3528 = !DILocation(line: 315, column: 12, scope: !3099)
!3529 = !DILocation(line: 316, column: 3, scope: !3099)
!3530 = !DILocation(line: 316, column: 13, scope: !3099)
!3531 = !DILocation(line: 317, column: 3, scope: !3099)
!3532 = !DILocation(line: 317, column: 13, scope: !3099)
!3533 = !DILocation(line: 318, column: 3, scope: !3099)
!3534 = !DILocation(line: 318, column: 13, scope: !3099)
!3535 = !DILocation(line: 319, column: 3, scope: !3099)
!3536 = !DILocation(line: 319, column: 13, scope: !3099)
!3537 = !DILocation(line: 320, column: 3, scope: !3099)
!3538 = !DILocation(line: 320, column: 13, scope: !3099)
!3539 = !DILocation(line: 321, column: 3, scope: !3099)
!3540 = !DILocation(line: 321, column: 13, scope: !3099)
!3541 = !DILocation(line: 322, column: 3, scope: !3099)
!3542 = !DILocation(line: 322, column: 13, scope: !3099)
!3543 = !DILocation(line: 323, column: 3, scope: !3099)
!3544 = !DILocation(line: 323, column: 13, scope: !3099)
!3545 = !DILocation(line: 324, column: 3, scope: !3099)
!3546 = !DILocation(line: 324, column: 13, scope: !3099)
!3547 = !DILocation(line: 325, column: 3, scope: !3099)
!3548 = !DILocation(line: 325, column: 13, scope: !3099)
!3549 = !DILocation(line: 326, column: 3, scope: !3099)
!3550 = !DILocation(line: 326, column: 13, scope: !3099)
!3551 = !DILocation(line: 327, column: 3, scope: !3099)
!3552 = !DILocation(line: 327, column: 13, scope: !3099)
!3553 = !DILocation(line: 328, column: 3, scope: !3099)
!3554 = !DILocation(line: 328, column: 13, scope: !3099)
!3555 = !DILocation(line: 329, column: 3, scope: !3099)
!3556 = !DILocation(line: 329, column: 13, scope: !3099)
!3557 = !DILocation(line: 330, column: 3, scope: !3099)
!3558 = !DILocation(line: 330, column: 13, scope: !3099)
!3559 = !DILocation(line: 331, column: 1, scope: !3099)
!3560 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_finalize", scope: !89, file: !89, line: 526, type: !3000, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3561 = !DILocalVariable(name: "state", arg: 1, scope: !3560, file: !89, line: 526, type: !3002)
!3562 = !DILocation(line: 0, scope: !3560)
!3563 = !DILocation(line: 527, column: 41, scope: !3560)
!3564 = !DILocation(line: 527, column: 27, scope: !3560)
!3565 = !DILocation(line: 527, column: 3, scope: !3560)
!3566 = !DILocation(line: 529, column: 3, scope: !3560)
!3567 = !DILocation(line: 529, column: 29, scope: !3560)
!3568 = !DILocation(line: 530, column: 1, scope: !3560)
!3569 = distinct !DISubprogram(name: "keccak_finalize", scope: !89, file: !89, line: 388, type: !3570, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{null, !3012, !55, !55, !48}
!3572 = !DILocalVariable(name: "s", arg: 1, scope: !3569, file: !89, line: 388, type: !3012)
!3573 = !DILocation(line: 0, scope: !3569)
!3574 = !DILocalVariable(name: "pos", arg: 2, scope: !3569, file: !89, line: 388, type: !55)
!3575 = !DILocalVariable(name: "r", arg: 3, scope: !3569, file: !89, line: 388, type: !55)
!3576 = !DILocalVariable(name: "p", arg: 4, scope: !3569, file: !89, line: 389, type: !48)
!3577 = !DILocation(line: 390, column: 34, scope: !3569)
!3578 = !DILocation(line: 390, column: 29, scope: !3569)
!3579 = !DILocation(line: 390, column: 9, scope: !3569)
!3580 = !DILocation(line: 390, column: 3, scope: !3569)
!3581 = !DILocation(line: 390, column: 14, scope: !3569)
!3582 = !DILocation(line: 391, column: 7, scope: !3569)
!3583 = !DILocation(line: 391, column: 3, scope: !3569)
!3584 = !DILocation(line: 391, column: 16, scope: !3569)
!3585 = !DILocation(line: 392, column: 1, scope: !3569)
!3586 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_squeeze", scope: !89, file: !89, line: 543, type: !3587, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{null, !47, !53, !3002}
!3589 = !DILocalVariable(name: "out", arg: 1, scope: !3586, file: !89, line: 543, type: !47)
!3590 = !DILocation(line: 0, scope: !3586)
!3591 = !DILocalVariable(name: "outlen", arg: 2, scope: !3586, file: !89, line: 543, type: !53)
!3592 = !DILocalVariable(name: "state", arg: 3, scope: !3586, file: !89, line: 543, type: !3002)
!3593 = !DILocation(line: 546, column: 36, scope: !3586)
!3594 = !DILocation(line: 546, column: 22, scope: !3586)
!3595 = !DILocation(line: 545, column: 7, scope: !3586)
!3596 = !DILocalVariable(name: "pos", scope: !3586, file: !89, line: 544, type: !55)
!3597 = !DILocation(line: 547, column: 31, scope: !3586)
!3598 = !DILocation(line: 547, column: 3, scope: !3586)
!3599 = !DILocation(line: 547, column: 29, scope: !3586)
!3600 = !DILocation(line: 548, column: 1, scope: !3586)
!3601 = distinct !DISubprogram(name: "keccak_squeeze", scope: !89, file: !89, line: 410, type: !3602, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!55, !47, !53, !3012, !55, !55}
!3604 = !DILocalVariable(name: "out", arg: 1, scope: !3601, file: !89, line: 410, type: !47)
!3605 = !DILocation(line: 0, scope: !3601)
!3606 = !DILocalVariable(name: "outlen", arg: 2, scope: !3601, file: !89, line: 410, type: !53)
!3607 = !DILocalVariable(name: "s", arg: 3, scope: !3601, file: !89, line: 410, type: !3012)
!3608 = !DILocalVariable(name: "pos", arg: 4, scope: !3601, file: !89, line: 411, type: !55)
!3609 = !DILocalVariable(name: "r", arg: 5, scope: !3601, file: !89, line: 411, type: !55)
!3610 = !DILocation(line: 414, column: 3, scope: !3601)
!3611 = !DILocation(line: 415, column: 13, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !89, line: 415, column: 9)
!3613 = distinct !DILexicalBlock(scope: !3601, file: !89, line: 414, column: 18)
!3614 = !DILocation(line: 416, column: 7, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3612, file: !89, line: 415, column: 19)
!3616 = !DILocation(line: 418, column: 5, scope: !3615)
!3617 = !DILocalVariable(name: "i", scope: !3601, file: !89, line: 412, type: !55)
!3618 = !DILocation(line: 419, column: 10, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3613, file: !89, line: 419, column: 5)
!3620 = !DILocation(line: 419, scope: !3619)
!3621 = !DILocation(line: 419, column: 21, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3619, file: !89, line: 419, column: 5)
!3623 = !DILocation(line: 419, column: 25, scope: !3622)
!3624 = !DILocation(line: 419, column: 5, scope: !3619)
!3625 = !DILocation(line: 420, column: 20, scope: !3622)
!3626 = !DILocation(line: 420, column: 16, scope: !3622)
!3627 = !DILocation(line: 420, column: 30, scope: !3622)
!3628 = !DILocation(line: 420, column: 25, scope: !3622)
!3629 = !DILocation(line: 420, column: 14, scope: !3622)
!3630 = !DILocation(line: 420, column: 11, scope: !3622)
!3631 = !DILocation(line: 419, column: 47, scope: !3622)
!3632 = !DILocation(line: 419, column: 5, scope: !3622)
!3633 = distinct !{!3633, !3624, !3634, !200}
!3634 = !DILocation(line: 420, column: 38, scope: !3619)
!3635 = !DILocation(line: 421, column: 17, scope: !3613)
!3636 = !DILocation(line: 421, column: 12, scope: !3613)
!3637 = distinct !{!3637, !3610, !3638, !200}
!3638 = !DILocation(line: 423, column: 3, scope: !3601)
!3639 = !DILocation(line: 425, column: 3, scope: !3601)
!3640 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_absorb_once", scope: !89, file: !89, line: 561, type: !3030, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3641 = !DILocalVariable(name: "state", arg: 1, scope: !3640, file: !89, line: 561, type: !3002)
!3642 = !DILocation(line: 0, scope: !3640)
!3643 = !DILocalVariable(name: "in", arg: 2, scope: !3640, file: !89, line: 561, type: !321)
!3644 = !DILocalVariable(name: "inlen", arg: 3, scope: !3640, file: !89, line: 562, type: !53)
!3645 = !DILocation(line: 563, column: 3, scope: !3640)
!3646 = !DILocation(line: 564, column: 3, scope: !3640)
!3647 = !DILocation(line: 564, column: 29, scope: !3640)
!3648 = !DILocation(line: 565, column: 1, scope: !3640)
!3649 = distinct !DISubprogram(name: "keccak_absorb_once", scope: !89, file: !89, line: 441, type: !3650, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{null, !3012, !55, !321, !53, !48}
!3652 = !DILocalVariable(name: "s", arg: 1, scope: !3649, file: !89, line: 441, type: !3012)
!3653 = !DILocation(line: 0, scope: !3649)
!3654 = !DILocalVariable(name: "r", arg: 2, scope: !3649, file: !89, line: 441, type: !55)
!3655 = !DILocalVariable(name: "in", arg: 3, scope: !3649, file: !89, line: 442, type: !321)
!3656 = !DILocalVariable(name: "inlen", arg: 4, scope: !3649, file: !89, line: 442, type: !53)
!3657 = !DILocalVariable(name: "p", arg: 5, scope: !3649, file: !89, line: 442, type: !48)
!3658 = !DILocalVariable(name: "i", scope: !3649, file: !89, line: 443, type: !55)
!3659 = !DILocation(line: 445, column: 8, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3649, file: !89, line: 445, column: 3)
!3661 = !DILocation(line: 445, scope: !3660)
!3662 = !DILocation(line: 445, column: 17, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3660, file: !89, line: 445, column: 3)
!3664 = !DILocation(line: 445, column: 3, scope: !3660)
!3665 = !DILocation(line: 448, column: 3, scope: !3649)
!3666 = !DILocation(line: 446, column: 5, scope: !3663)
!3667 = !DILocation(line: 446, column: 10, scope: !3663)
!3668 = !DILocation(line: 445, column: 24, scope: !3663)
!3669 = !DILocation(line: 445, column: 3, scope: !3663)
!3670 = distinct !{!3670, !3664, !3671, !200}
!3671 = !DILocation(line: 446, column: 12, scope: !3660)
!3672 = !DILocation(line: 448, column: 16, scope: !3649)
!3673 = !DILocation(line: 449, column: 5, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !89, line: 449, column: 5)
!3675 = distinct !DILexicalBlock(scope: !3649, file: !89, line: 448, column: 22)
!3676 = !DILocation(line: 456, column: 3, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3649, file: !89, line: 456, column: 3)
!3678 = !DILocation(line: 449, scope: !3674)
!3679 = !DILocation(line: 449, column: 19, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3674, file: !89, line: 449, column: 5)
!3681 = !DILocation(line: 450, column: 29, scope: !3680)
!3682 = !DILocation(line: 450, column: 25, scope: !3680)
!3683 = !DILocation(line: 450, column: 15, scope: !3680)
!3684 = !DILocation(line: 450, column: 7, scope: !3680)
!3685 = !DILocation(line: 450, column: 12, scope: !3680)
!3686 = !DILocation(line: 449, column: 29, scope: !3680)
!3687 = !DILocation(line: 449, column: 5, scope: !3680)
!3688 = distinct !{!3688, !3673, !3689, !200}
!3689 = !DILocation(line: 450, column: 32, scope: !3674)
!3690 = !DILocation(line: 451, column: 8, scope: !3675)
!3691 = !DILocation(line: 452, column: 11, scope: !3675)
!3692 = !DILocation(line: 453, column: 5, scope: !3675)
!3693 = distinct !{!3693, !3665, !3694, !200}
!3694 = !DILocation(line: 454, column: 3, scope: !3649)
!3695 = !DILocation(line: 456, scope: !3677)
!3696 = !DILocation(line: 456, column: 17, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3677, file: !89, line: 456, column: 3)
!3698 = !DILocation(line: 457, column: 27, scope: !3697)
!3699 = !DILocation(line: 457, column: 17, scope: !3697)
!3700 = !DILocation(line: 457, column: 38, scope: !3697)
!3701 = !DILocation(line: 457, column: 33, scope: !3697)
!3702 = !DILocation(line: 457, column: 9, scope: !3697)
!3703 = !DILocation(line: 457, column: 5, scope: !3697)
!3704 = !DILocation(line: 457, column: 14, scope: !3697)
!3705 = !DILocation(line: 456, column: 27, scope: !3697)
!3706 = !DILocation(line: 456, column: 3, scope: !3697)
!3707 = distinct !{!3707, !3676, !3708, !200}
!3708 = !DILocation(line: 457, column: 46, scope: !3677)
!3709 = !DILocation(line: 459, column: 15, scope: !3649)
!3710 = !DILocation(line: 459, column: 32, scope: !3649)
!3711 = !DILocation(line: 459, column: 27, scope: !3649)
!3712 = !DILocation(line: 459, column: 7, scope: !3649)
!3713 = !DILocation(line: 459, column: 3, scope: !3649)
!3714 = !DILocation(line: 459, column: 12, scope: !3649)
!3715 = !DILocation(line: 460, column: 8, scope: !3649)
!3716 = !DILocation(line: 460, column: 13, scope: !3649)
!3717 = !DILocation(line: 460, column: 3, scope: !3649)
!3718 = !DILocation(line: 460, column: 18, scope: !3649)
!3719 = !DILocation(line: 461, column: 1, scope: !3649)
!3720 = distinct !DISubprogram(name: "load64", scope: !89, file: !89, line: 22, type: !3721, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!85, !321}
!3723 = !DILocalVariable(name: "x", arg: 1, scope: !3720, file: !89, line: 22, type: !321)
!3724 = !DILocation(line: 0, scope: !3720)
!3725 = !DILocalVariable(name: "r", scope: !3720, file: !89, line: 24, type: !85)
!3726 = !DILocalVariable(name: "i", scope: !3720, file: !89, line: 23, type: !55)
!3727 = !DILocation(line: 26, column: 8, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3720, file: !89, line: 26, column: 3)
!3729 = !DILocation(line: 26, scope: !3728)
!3730 = !DILocation(line: 26, column: 17, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3728, file: !89, line: 26, column: 3)
!3732 = !DILocation(line: 26, column: 3, scope: !3728)
!3733 = !DILocation(line: 27, column: 20, scope: !3731)
!3734 = !DILocation(line: 27, column: 10, scope: !3731)
!3735 = !DILocation(line: 27, column: 30, scope: !3731)
!3736 = !DILocation(line: 27, column: 25, scope: !3731)
!3737 = !DILocation(line: 27, column: 7, scope: !3731)
!3738 = !DILocation(line: 26, column: 23, scope: !3731)
!3739 = !DILocation(line: 26, column: 3, scope: !3731)
!3740 = distinct !{!3740, !3732, !3741, !200}
!3741 = !DILocation(line: 27, column: 32, scope: !3728)
!3742 = !DILocation(line: 29, column: 3, scope: !3720)
!3743 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks", scope: !89, file: !89, line: 580, type: !3587, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3744 = !DILocalVariable(name: "out", arg: 1, scope: !3743, file: !89, line: 580, type: !47)
!3745 = !DILocation(line: 0, scope: !3743)
!3746 = !DILocalVariable(name: "nblocks", arg: 2, scope: !3743, file: !89, line: 580, type: !53)
!3747 = !DILocalVariable(name: "state", arg: 3, scope: !3743, file: !89, line: 580, type: !3002)
!3748 = !DILocation(line: 581, column: 3, scope: !3743)
!3749 = !DILocation(line: 582, column: 1, scope: !3743)
!3750 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !89, file: !89, line: 477, type: !3751, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{null, !47, !53, !3012, !55}
!3753 = !DILocalVariable(name: "out", arg: 1, scope: !3750, file: !89, line: 477, type: !47)
!3754 = !DILocation(line: 0, scope: !3750)
!3755 = !DILocalVariable(name: "nblocks", arg: 2, scope: !3750, file: !89, line: 477, type: !53)
!3756 = !DILocalVariable(name: "s", arg: 3, scope: !3750, file: !89, line: 477, type: !3012)
!3757 = !DILocalVariable(name: "r", arg: 4, scope: !3750, file: !89, line: 478, type: !55)
!3758 = !DILocation(line: 481, column: 3, scope: !3750)
!3759 = !DILocation(line: 482, column: 5, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3750, file: !89, line: 481, column: 19)
!3761 = !DILocalVariable(name: "i", scope: !3750, file: !89, line: 479, type: !55)
!3762 = !DILocation(line: 483, column: 10, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3760, file: !89, line: 483, column: 5)
!3764 = !DILocation(line: 483, scope: !3763)
!3765 = !DILocation(line: 483, column: 19, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3763, file: !89, line: 483, column: 5)
!3767 = !DILocation(line: 483, column: 5, scope: !3763)
!3768 = !DILocation(line: 484, column: 23, scope: !3766)
!3769 = !DILocation(line: 484, column: 19, scope: !3766)
!3770 = !DILocation(line: 484, column: 28, scope: !3766)
!3771 = !DILocation(line: 484, column: 7, scope: !3766)
!3772 = !DILocation(line: 483, column: 29, scope: !3766)
!3773 = !DILocation(line: 483, column: 5, scope: !3766)
!3774 = distinct !{!3774, !3767, !3775, !200}
!3775 = !DILocation(line: 484, column: 32, scope: !3763)
!3776 = !DILocation(line: 485, column: 9, scope: !3760)
!3777 = !DILocation(line: 486, column: 13, scope: !3760)
!3778 = distinct !{!3778, !3758, !3779, !200}
!3779 = !DILocation(line: 487, column: 3, scope: !3750)
!3780 = !DILocation(line: 488, column: 1, scope: !3750)
!3781 = distinct !DISubprogram(name: "store64", scope: !89, file: !89, line: 41, type: !3782, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !47, !85}
!3784 = !DILocalVariable(name: "x", arg: 1, scope: !3781, file: !89, line: 41, type: !47)
!3785 = !DILocation(line: 0, scope: !3781)
!3786 = !DILocalVariable(name: "u", arg: 2, scope: !3781, file: !89, line: 41, type: !85)
!3787 = !DILocalVariable(name: "i", scope: !3781, file: !89, line: 42, type: !55)
!3788 = !DILocation(line: 44, column: 8, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3781, file: !89, line: 44, column: 3)
!3790 = !DILocation(line: 44, scope: !3789)
!3791 = !DILocation(line: 44, column: 17, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3789, file: !89, line: 44, column: 3)
!3793 = !DILocation(line: 44, column: 3, scope: !3789)
!3794 = !DILocation(line: 45, column: 19, scope: !3792)
!3795 = !DILocation(line: 45, column: 14, scope: !3792)
!3796 = !DILocation(line: 45, column: 12, scope: !3792)
!3797 = !DILocation(line: 45, column: 5, scope: !3792)
!3798 = !DILocation(line: 45, column: 10, scope: !3792)
!3799 = !DILocation(line: 44, column: 23, scope: !3792)
!3800 = !DILocation(line: 44, column: 3, scope: !3792)
!3801 = distinct !{!3801, !3793, !3802, !200}
!3802 = !DILocation(line: 45, column: 21, scope: !3789)
!3803 = !DILocation(line: 46, column: 1, scope: !3781)
!3804 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_init", scope: !89, file: !89, line: 591, type: !3000, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3805 = !DILocalVariable(name: "state", arg: 1, scope: !3804, file: !89, line: 591, type: !3002)
!3806 = !DILocation(line: 0, scope: !3804)
!3807 = !DILocation(line: 592, column: 3, scope: !3804)
!3808 = !DILocation(line: 593, column: 3, scope: !3804)
!3809 = !DILocation(line: 593, column: 29, scope: !3804)
!3810 = !DILocation(line: 594, column: 1, scope: !3804)
!3811 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_absorb", scope: !89, file: !89, line: 606, type: !3030, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3812 = !DILocalVariable(name: "state", arg: 1, scope: !3811, file: !89, line: 606, type: !3002)
!3813 = !DILocation(line: 0, scope: !3811)
!3814 = !DILocalVariable(name: "in", arg: 2, scope: !3811, file: !89, line: 606, type: !321)
!3815 = !DILocalVariable(name: "inlen", arg: 3, scope: !3811, file: !89, line: 606, type: !53)
!3816 = !DILocation(line: 608, column: 43, scope: !3811)
!3817 = !DILocation(line: 608, column: 29, scope: !3811)
!3818 = !DILocation(line: 608, column: 7, scope: !3811)
!3819 = !DILocalVariable(name: "pos", scope: !3811, file: !89, line: 607, type: !55)
!3820 = !DILocation(line: 610, column: 31, scope: !3811)
!3821 = !DILocation(line: 610, column: 3, scope: !3811)
!3822 = !DILocation(line: 610, column: 29, scope: !3811)
!3823 = !DILocation(line: 611, column: 1, scope: !3811)
!3824 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_finalize", scope: !89, file: !89, line: 620, type: !3000, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3825 = !DILocalVariable(name: "state", arg: 1, scope: !3824, file: !89, line: 620, type: !3002)
!3826 = !DILocation(line: 0, scope: !3824)
!3827 = !DILocation(line: 621, column: 41, scope: !3824)
!3828 = !DILocation(line: 621, column: 27, scope: !3824)
!3829 = !DILocation(line: 621, column: 3, scope: !3824)
!3830 = !DILocation(line: 623, column: 3, scope: !3824)
!3831 = !DILocation(line: 623, column: 29, scope: !3824)
!3832 = !DILocation(line: 624, column: 1, scope: !3824)
!3833 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_squeeze", scope: !89, file: !89, line: 637, type: !3587, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3834 = !DILocalVariable(name: "out", arg: 1, scope: !3833, file: !89, line: 637, type: !47)
!3835 = !DILocation(line: 0, scope: !3833)
!3836 = !DILocalVariable(name: "outlen", arg: 2, scope: !3833, file: !89, line: 637, type: !53)
!3837 = !DILocalVariable(name: "state", arg: 3, scope: !3833, file: !89, line: 637, type: !3002)
!3838 = !DILocation(line: 640, column: 36, scope: !3833)
!3839 = !DILocation(line: 640, column: 22, scope: !3833)
!3840 = !DILocation(line: 639, column: 7, scope: !3833)
!3841 = !DILocalVariable(name: "pos", scope: !3833, file: !89, line: 638, type: !55)
!3842 = !DILocation(line: 641, column: 31, scope: !3833)
!3843 = !DILocation(line: 641, column: 3, scope: !3833)
!3844 = !DILocation(line: 641, column: 29, scope: !3833)
!3845 = !DILocation(line: 642, column: 1, scope: !3833)
!3846 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_absorb_once", scope: !89, file: !89, line: 655, type: !3030, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3847 = !DILocalVariable(name: "state", arg: 1, scope: !3846, file: !89, line: 655, type: !3002)
!3848 = !DILocation(line: 0, scope: !3846)
!3849 = !DILocalVariable(name: "in", arg: 2, scope: !3846, file: !89, line: 655, type: !321)
!3850 = !DILocalVariable(name: "inlen", arg: 3, scope: !3846, file: !89, line: 656, type: !53)
!3851 = !DILocation(line: 657, column: 3, scope: !3846)
!3852 = !DILocation(line: 658, column: 3, scope: !3846)
!3853 = !DILocation(line: 658, column: 29, scope: !3846)
!3854 = !DILocation(line: 659, column: 1, scope: !3846)
!3855 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks", scope: !89, file: !89, line: 674, type: !3587, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3856 = !DILocalVariable(name: "out", arg: 1, scope: !3855, file: !89, line: 674, type: !47)
!3857 = !DILocation(line: 0, scope: !3855)
!3858 = !DILocalVariable(name: "nblocks", arg: 2, scope: !3855, file: !89, line: 674, type: !53)
!3859 = !DILocalVariable(name: "state", arg: 3, scope: !3855, file: !89, line: 674, type: !3002)
!3860 = !DILocation(line: 675, column: 3, scope: !3855)
!3861 = !DILocation(line: 676, column: 1, scope: !3855)
!3862 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128", scope: !89, file: !89, line: 688, type: !3863, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !47, !53, !321, !53}
!3865 = !DILocalVariable(name: "out", arg: 1, scope: !3862, file: !89, line: 688, type: !47)
!3866 = !DILocation(line: 0, scope: !3862)
!3867 = !DILocalVariable(name: "outlen", arg: 2, scope: !3862, file: !89, line: 688, type: !53)
!3868 = !DILocalVariable(name: "in", arg: 3, scope: !3862, file: !89, line: 688, type: !321)
!3869 = !DILocalVariable(name: "inlen", arg: 4, scope: !3862, file: !89, line: 688, type: !53)
!3870 = !DILocalVariable(name: "state", scope: !3862, file: !89, line: 690, type: !383)
!3871 = !DILocation(line: 690, column: 16, scope: !3862)
!3872 = !DILocation(line: 692, column: 3, scope: !3862)
!3873 = !DILocation(line: 693, column: 20, scope: !3862)
!3874 = !DILocalVariable(name: "nblocks", scope: !3862, file: !89, line: 689, type: !53)
!3875 = !DILocation(line: 694, column: 3, scope: !3862)
!3876 = !DILocation(line: 695, column: 21, scope: !3862)
!3877 = !DILocation(line: 695, column: 10, scope: !3862)
!3878 = !DILocation(line: 696, column: 18, scope: !3862)
!3879 = !DILocation(line: 696, column: 7, scope: !3862)
!3880 = !DILocation(line: 697, column: 3, scope: !3862)
!3881 = !DILocation(line: 698, column: 1, scope: !3862)
!3882 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256", scope: !89, file: !89, line: 710, type: !3863, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3883 = !DILocalVariable(name: "out", arg: 1, scope: !3882, file: !89, line: 710, type: !47)
!3884 = !DILocation(line: 0, scope: !3882)
!3885 = !DILocalVariable(name: "outlen", arg: 2, scope: !3882, file: !89, line: 710, type: !53)
!3886 = !DILocalVariable(name: "in", arg: 3, scope: !3882, file: !89, line: 710, type: !321)
!3887 = !DILocalVariable(name: "inlen", arg: 4, scope: !3882, file: !89, line: 710, type: !53)
!3888 = !DILocalVariable(name: "state", scope: !3882, file: !89, line: 712, type: !383)
!3889 = !DILocation(line: 712, column: 16, scope: !3882)
!3890 = !DILocation(line: 714, column: 3, scope: !3882)
!3891 = !DILocation(line: 715, column: 20, scope: !3882)
!3892 = !DILocalVariable(name: "nblocks", scope: !3882, file: !89, line: 711, type: !53)
!3893 = !DILocation(line: 716, column: 3, scope: !3882)
!3894 = !DILocation(line: 717, column: 21, scope: !3882)
!3895 = !DILocation(line: 717, column: 10, scope: !3882)
!3896 = !DILocation(line: 718, column: 18, scope: !3882)
!3897 = !DILocation(line: 718, column: 7, scope: !3882)
!3898 = !DILocation(line: 719, column: 3, scope: !3882)
!3899 = !DILocation(line: 720, column: 1, scope: !3882)
!3900 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_sha3_256", scope: !89, file: !89, line: 731, type: !3901, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !47, !321, !53}
!3903 = !DILocalVariable(name: "h", arg: 1, scope: !3900, file: !89, line: 731, type: !47)
!3904 = !DILocation(line: 0, scope: !3900)
!3905 = !DILocalVariable(name: "in", arg: 2, scope: !3900, file: !89, line: 731, type: !321)
!3906 = !DILocalVariable(name: "inlen", arg: 3, scope: !3900, file: !89, line: 731, type: !53)
!3907 = !DILocalVariable(name: "s", scope: !3900, file: !89, line: 733, type: !3908)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 1600, elements: !3909)
!3909 = !{!3910}
!3910 = !DISubrange(count: 25)
!3911 = !DILocation(line: 733, column: 12, scope: !3900)
!3912 = !DILocation(line: 735, column: 3, scope: !3900)
!3913 = !DILocation(line: 736, column: 3, scope: !3900)
!3914 = !DILocalVariable(name: "i", scope: !3900, file: !89, line: 732, type: !55)
!3915 = !DILocation(line: 737, column: 8, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3900, file: !89, line: 737, column: 3)
!3917 = !DILocation(line: 737, scope: !3916)
!3918 = !DILocation(line: 737, column: 17, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3916, file: !89, line: 737, column: 3)
!3920 = !DILocation(line: 737, column: 3, scope: !3916)
!3921 = !DILocation(line: 738, column: 19, scope: !3919)
!3922 = !DILocation(line: 738, column: 15, scope: !3919)
!3923 = !DILocation(line: 738, column: 24, scope: !3919)
!3924 = !DILocation(line: 738, column: 5, scope: !3919)
!3925 = !DILocation(line: 737, column: 23, scope: !3919)
!3926 = !DILocation(line: 737, column: 3, scope: !3919)
!3927 = distinct !{!3927, !3920, !3928, !200}
!3928 = !DILocation(line: 738, column: 28, scope: !3916)
!3929 = !DILocation(line: 739, column: 1, scope: !3900)
!3930 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_sha3_512", scope: !89, file: !89, line: 750, type: !3901, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3931 = !DILocalVariable(name: "h", arg: 1, scope: !3930, file: !89, line: 750, type: !47)
!3932 = !DILocation(line: 0, scope: !3930)
!3933 = !DILocalVariable(name: "in", arg: 2, scope: !3930, file: !89, line: 750, type: !321)
!3934 = !DILocalVariable(name: "inlen", arg: 3, scope: !3930, file: !89, line: 750, type: !53)
!3935 = !DILocalVariable(name: "s", scope: !3930, file: !89, line: 752, type: !3908)
!3936 = !DILocation(line: 752, column: 12, scope: !3930)
!3937 = !DILocation(line: 754, column: 3, scope: !3930)
!3938 = !DILocation(line: 755, column: 3, scope: !3930)
!3939 = !DILocalVariable(name: "i", scope: !3930, file: !89, line: 751, type: !55)
!3940 = !DILocation(line: 756, column: 8, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3930, file: !89, line: 756, column: 3)
!3942 = !DILocation(line: 756, scope: !3941)
!3943 = !DILocation(line: 756, column: 17, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3941, file: !89, line: 756, column: 3)
!3945 = !DILocation(line: 756, column: 3, scope: !3941)
!3946 = !DILocation(line: 757, column: 19, scope: !3944)
!3947 = !DILocation(line: 757, column: 15, scope: !3944)
!3948 = !DILocation(line: 757, column: 24, scope: !3944)
!3949 = !DILocation(line: 757, column: 5, scope: !3944)
!3950 = !DILocation(line: 756, column: 23, scope: !3944)
!3951 = !DILocation(line: 756, column: 3, scope: !3944)
!3952 = distinct !{!3952, !3945, !3953, !200}
!3953 = !DILocation(line: 757, column: 28, scope: !3941)
!3954 = !DILocation(line: 758, column: 1, scope: !3930)
!3955 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_dilithium_shake128_stream_init", scope: !3956, file: !3956, line: 6, type: !3957, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !64)
!3956 = !DIFile(filename: "../../../ref/symmetric-shake.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!3957 = !DISubroutineType(types: !3958)
!3958 = !{null, !3002, !321, !359}
!3959 = !DILocalVariable(name: "state", arg: 1, scope: !3955, file: !3956, line: 6, type: !3002)
!3960 = !DILocation(line: 0, scope: !3955)
!3961 = !DILocalVariable(name: "seed", arg: 2, scope: !3955, file: !3956, line: 6, type: !321)
!3962 = !DILocalVariable(name: "nonce", arg: 3, scope: !3955, file: !3956, line: 6, type: !359)
!3963 = !DILocalVariable(name: "t", scope: !3955, file: !3956, line: 8, type: !3964)
!3964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 16, elements: !3965)
!3965 = !{!3966}
!3966 = !DISubrange(count: 2)
!3967 = !DILocation(line: 8, column: 11, scope: !3955)
!3968 = !DILocation(line: 9, column: 10, scope: !3955)
!3969 = !DILocation(line: 9, column: 8, scope: !3955)
!3970 = !DILocation(line: 10, column: 16, scope: !3955)
!3971 = !DILocation(line: 10, column: 10, scope: !3955)
!3972 = !DILocation(line: 10, column: 3, scope: !3955)
!3973 = !DILocation(line: 10, column: 8, scope: !3955)
!3974 = !DILocation(line: 12, column: 3, scope: !3955)
!3975 = !DILocation(line: 13, column: 3, scope: !3955)
!3976 = !DILocation(line: 14, column: 3, scope: !3955)
!3977 = !DILocation(line: 15, column: 3, scope: !3955)
!3978 = !DILocation(line: 16, column: 1, scope: !3955)
!3979 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_dilithium_shake256_stream_init", scope: !3956, file: !3956, line: 18, type: !3957, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !64)
!3980 = !DILocalVariable(name: "state", arg: 1, scope: !3979, file: !3956, line: 18, type: !3002)
!3981 = !DILocation(line: 0, scope: !3979)
!3982 = !DILocalVariable(name: "seed", arg: 2, scope: !3979, file: !3956, line: 18, type: !321)
!3983 = !DILocalVariable(name: "nonce", arg: 3, scope: !3979, file: !3956, line: 18, type: !359)
!3984 = !DILocalVariable(name: "t", scope: !3979, file: !3956, line: 20, type: !3964)
!3985 = !DILocation(line: 20, column: 11, scope: !3979)
!3986 = !DILocation(line: 21, column: 10, scope: !3979)
!3987 = !DILocation(line: 21, column: 8, scope: !3979)
!3988 = !DILocation(line: 22, column: 16, scope: !3979)
!3989 = !DILocation(line: 22, column: 10, scope: !3979)
!3990 = !DILocation(line: 22, column: 3, scope: !3979)
!3991 = !DILocation(line: 22, column: 8, scope: !3979)
!3992 = !DILocation(line: 24, column: 3, scope: !3979)
!3993 = !DILocation(line: 25, column: 3, scope: !3979)
!3994 = !DILocation(line: 26, column: 3, scope: !3979)
!3995 = !DILocation(line: 27, column: 3, scope: !3979)
!3996 = !DILocation(line: 28, column: 1, scope: !3979)
!3997 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_pack_pk", scope: !3998, file: !3998, line: 15, type: !3999, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!3998 = !DIFile(filename: "../../../ref/packing.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !47, !321, !1022}
!4001 = !DILocalVariable(name: "pk", arg: 1, scope: !3997, file: !3998, line: 15, type: !47)
!4002 = !DILocation(line: 0, scope: !3997)
!4003 = !DILocalVariable(name: "rho", arg: 2, scope: !3997, file: !3998, line: 15, type: !321)
!4004 = !DILocalVariable(name: "t1", arg: 3, scope: !3997, file: !3998, line: 16, type: !1022)
!4005 = !DILocalVariable(name: "i", scope: !3997, file: !3998, line: 17, type: !55)
!4006 = !DILocation(line: 19, column: 8, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3997, file: !3998, line: 19, column: 3)
!4008 = !DILocation(line: 19, scope: !4007)
!4009 = !DILocation(line: 19, column: 17, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4007, file: !3998, line: 19, column: 3)
!4011 = !DILocation(line: 19, column: 3, scope: !4007)
!4012 = !DILocation(line: 20, column: 13, scope: !4010)
!4013 = !DILocation(line: 20, column: 5, scope: !4010)
!4014 = !DILocation(line: 20, column: 11, scope: !4010)
!4015 = !DILocation(line: 19, column: 30, scope: !4010)
!4016 = !DILocation(line: 19, column: 3, scope: !4010)
!4017 = distinct !{!4017, !4011, !4018, !200}
!4018 = !DILocation(line: 20, column: 18, scope: !4007)
!4019 = !DILocation(line: 21, column: 6, scope: !3997)
!4020 = !DILocation(line: 23, column: 8, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3997, file: !3998, line: 23, column: 3)
!4022 = !DILocation(line: 23, scope: !4021)
!4023 = !DILocation(line: 23, column: 17, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4021, file: !3998, line: 23, column: 3)
!4025 = !DILocation(line: 23, column: 3, scope: !4021)
!4026 = !DILocation(line: 24, column: 24, scope: !4024)
!4027 = !DILocation(line: 24, column: 20, scope: !4024)
!4028 = !DILocation(line: 24, column: 47, scope: !4024)
!4029 = !DILocation(line: 24, column: 5, scope: !4024)
!4030 = !DILocation(line: 23, column: 22, scope: !4024)
!4031 = !DILocation(line: 23, column: 3, scope: !4024)
!4032 = distinct !{!4032, !4025, !4033, !200}
!4033 = !DILocation(line: 24, column: 55, scope: !4021)
!4034 = !DILocation(line: 25, column: 1, scope: !3997)
!4035 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_unpack_pk", scope: !3998, file: !3998, line: 36, type: !4036, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{null, !47, !745, !321}
!4038 = !DILocalVariable(name: "rho", arg: 1, scope: !4035, file: !3998, line: 36, type: !47)
!4039 = !DILocation(line: 0, scope: !4035)
!4040 = !DILocalVariable(name: "t1", arg: 2, scope: !4035, file: !3998, line: 36, type: !745)
!4041 = !DILocalVariable(name: "pk", arg: 3, scope: !4035, file: !3998, line: 37, type: !321)
!4042 = !DILocalVariable(name: "i", scope: !4035, file: !3998, line: 38, type: !55)
!4043 = !DILocation(line: 40, column: 8, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4035, file: !3998, line: 40, column: 3)
!4045 = !DILocation(line: 40, scope: !4044)
!4046 = !DILocation(line: 40, column: 17, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4044, file: !3998, line: 40, column: 3)
!4048 = !DILocation(line: 40, column: 3, scope: !4044)
!4049 = !DILocation(line: 41, column: 14, scope: !4047)
!4050 = !DILocation(line: 41, column: 5, scope: !4047)
!4051 = !DILocation(line: 41, column: 12, scope: !4047)
!4052 = !DILocation(line: 40, column: 30, scope: !4047)
!4053 = !DILocation(line: 40, column: 3, scope: !4047)
!4054 = distinct !{!4054, !4048, !4055, !200}
!4055 = !DILocation(line: 41, column: 18, scope: !4044)
!4056 = !DILocation(line: 42, column: 6, scope: !4035)
!4057 = !DILocation(line: 44, column: 8, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4035, file: !3998, line: 44, column: 3)
!4059 = !DILocation(line: 44, scope: !4058)
!4060 = !DILocation(line: 44, column: 17, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4058, file: !3998, line: 44, column: 3)
!4062 = !DILocation(line: 44, column: 3, scope: !4058)
!4063 = !DILocation(line: 45, column: 20, scope: !4061)
!4064 = !DILocation(line: 45, column: 37, scope: !4061)
!4065 = !DILocation(line: 45, column: 33, scope: !4061)
!4066 = !DILocation(line: 45, column: 5, scope: !4061)
!4067 = !DILocation(line: 44, column: 22, scope: !4061)
!4068 = !DILocation(line: 44, column: 3, scope: !4061)
!4069 = distinct !{!4069, !4062, !4070, !200}
!4070 = !DILocation(line: 45, column: 57, scope: !4058)
!4071 = !DILocation(line: 46, column: 1, scope: !4035)
!4072 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_pack_sk", scope: !3998, file: !3998, line: 61, type: !4073, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !47, !321, !321, !321, !1022, !746, !1022}
!4075 = !DILocalVariable(name: "sk", arg: 1, scope: !4072, file: !3998, line: 61, type: !47)
!4076 = !DILocation(line: 0, scope: !4072)
!4077 = !DILocalVariable(name: "rho", arg: 2, scope: !4072, file: !3998, line: 61, type: !321)
!4078 = !DILocalVariable(name: "tr", arg: 3, scope: !4072, file: !3998, line: 62, type: !321)
!4079 = !DILocalVariable(name: "key", arg: 4, scope: !4072, file: !3998, line: 62, type: !321)
!4080 = !DILocalVariable(name: "t0", arg: 5, scope: !4072, file: !3998, line: 63, type: !1022)
!4081 = !DILocalVariable(name: "s1", arg: 6, scope: !4072, file: !3998, line: 63, type: !746)
!4082 = !DILocalVariable(name: "s2", arg: 7, scope: !4072, file: !3998, line: 63, type: !1022)
!4083 = !DILocalVariable(name: "i", scope: !4072, file: !3998, line: 64, type: !55)
!4084 = !DILocation(line: 66, column: 8, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4072, file: !3998, line: 66, column: 3)
!4086 = !DILocation(line: 66, scope: !4085)
!4087 = !DILocation(line: 66, column: 17, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4085, file: !3998, line: 66, column: 3)
!4089 = !DILocation(line: 66, column: 3, scope: !4085)
!4090 = !DILocation(line: 67, column: 13, scope: !4088)
!4091 = !DILocation(line: 67, column: 5, scope: !4088)
!4092 = !DILocation(line: 67, column: 11, scope: !4088)
!4093 = !DILocation(line: 66, column: 30, scope: !4088)
!4094 = !DILocation(line: 66, column: 3, scope: !4088)
!4095 = distinct !{!4095, !4089, !4096, !200}
!4096 = !DILocation(line: 67, column: 18, scope: !4085)
!4097 = !DILocation(line: 68, column: 6, scope: !4072)
!4098 = !DILocation(line: 70, column: 8, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4072, file: !3998, line: 70, column: 3)
!4100 = !DILocation(line: 70, scope: !4099)
!4101 = !DILocation(line: 70, column: 17, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4099, file: !3998, line: 70, column: 3)
!4103 = !DILocation(line: 70, column: 3, scope: !4099)
!4104 = !DILocation(line: 71, column: 13, scope: !4102)
!4105 = !DILocation(line: 71, column: 5, scope: !4102)
!4106 = !DILocation(line: 71, column: 11, scope: !4102)
!4107 = !DILocation(line: 70, column: 30, scope: !4102)
!4108 = !DILocation(line: 70, column: 3, scope: !4102)
!4109 = distinct !{!4109, !4103, !4110, !200}
!4110 = !DILocation(line: 71, column: 18, scope: !4099)
!4111 = !DILocation(line: 72, column: 6, scope: !4072)
!4112 = !DILocation(line: 74, column: 8, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4072, file: !3998, line: 74, column: 3)
!4114 = !DILocation(line: 74, scope: !4113)
!4115 = !DILocation(line: 74, column: 17, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4113, file: !3998, line: 74, column: 3)
!4117 = !DILocation(line: 74, column: 3, scope: !4113)
!4118 = !DILocation(line: 75, column: 13, scope: !4116)
!4119 = !DILocation(line: 75, column: 5, scope: !4116)
!4120 = !DILocation(line: 75, column: 11, scope: !4116)
!4121 = !DILocation(line: 74, column: 28, scope: !4116)
!4122 = !DILocation(line: 74, column: 3, scope: !4116)
!4123 = distinct !{!4123, !4117, !4124, !200}
!4124 = !DILocation(line: 75, column: 17, scope: !4113)
!4125 = !DILocation(line: 76, column: 6, scope: !4072)
!4126 = !DILocation(line: 78, column: 8, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4072, file: !3998, line: 78, column: 3)
!4128 = !DILocation(line: 78, scope: !4127)
!4129 = !DILocation(line: 78, column: 17, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4127, file: !3998, line: 78, column: 3)
!4131 = !DILocation(line: 78, column: 3, scope: !4127)
!4132 = !DILocation(line: 79, column: 25, scope: !4130)
!4133 = !DILocation(line: 79, column: 21, scope: !4130)
!4134 = !DILocation(line: 79, column: 49, scope: !4130)
!4135 = !DILocation(line: 79, column: 5, scope: !4130)
!4136 = !DILocation(line: 78, column: 22, scope: !4130)
!4137 = !DILocation(line: 78, column: 3, scope: !4130)
!4138 = distinct !{!4138, !4131, !4139, !200}
!4139 = !DILocation(line: 79, column: 57, scope: !4127)
!4140 = !DILocation(line: 80, column: 6, scope: !4072)
!4141 = !DILocation(line: 82, column: 8, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4072, file: !3998, line: 82, column: 3)
!4143 = !DILocation(line: 82, scope: !4142)
!4144 = !DILocation(line: 82, column: 17, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4142, file: !3998, line: 82, column: 3)
!4146 = !DILocation(line: 82, column: 3, scope: !4142)
!4147 = !DILocation(line: 83, column: 25, scope: !4145)
!4148 = !DILocation(line: 83, column: 21, scope: !4145)
!4149 = !DILocation(line: 83, column: 49, scope: !4145)
!4150 = !DILocation(line: 83, column: 5, scope: !4145)
!4151 = !DILocation(line: 82, column: 22, scope: !4145)
!4152 = !DILocation(line: 82, column: 3, scope: !4145)
!4153 = distinct !{!4153, !4146, !4154, !200}
!4154 = !DILocation(line: 83, column: 57, scope: !4142)
!4155 = !DILocation(line: 84, column: 6, scope: !4072)
!4156 = !DILocation(line: 86, column: 8, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4072, file: !3998, line: 86, column: 3)
!4158 = !DILocation(line: 86, scope: !4157)
!4159 = !DILocation(line: 86, column: 17, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4157, file: !3998, line: 86, column: 3)
!4161 = !DILocation(line: 86, column: 3, scope: !4157)
!4162 = !DILocation(line: 87, column: 24, scope: !4160)
!4163 = !DILocation(line: 87, column: 20, scope: !4160)
!4164 = !DILocation(line: 87, column: 47, scope: !4160)
!4165 = !DILocation(line: 87, column: 5, scope: !4160)
!4166 = !DILocation(line: 86, column: 22, scope: !4160)
!4167 = !DILocation(line: 86, column: 3, scope: !4160)
!4168 = distinct !{!4168, !4161, !4169, !200}
!4169 = !DILocation(line: 87, column: 55, scope: !4157)
!4170 = !DILocation(line: 88, column: 1, scope: !4072)
!4171 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_unpack_sk", scope: !3998, file: !3998, line: 103, type: !4172, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{null, !47, !47, !47, !745, !711, !745, !321}
!4174 = !DILocalVariable(name: "rho", arg: 1, scope: !4171, file: !3998, line: 103, type: !47)
!4175 = !DILocation(line: 0, scope: !4171)
!4176 = !DILocalVariable(name: "tr", arg: 2, scope: !4171, file: !3998, line: 103, type: !47)
!4177 = !DILocalVariable(name: "key", arg: 3, scope: !4171, file: !3998, line: 104, type: !47)
!4178 = !DILocalVariable(name: "t0", arg: 4, scope: !4171, file: !3998, line: 104, type: !745)
!4179 = !DILocalVariable(name: "s1", arg: 5, scope: !4171, file: !3998, line: 104, type: !711)
!4180 = !DILocalVariable(name: "s2", arg: 6, scope: !4171, file: !3998, line: 104, type: !745)
!4181 = !DILocalVariable(name: "sk", arg: 7, scope: !4171, file: !3998, line: 105, type: !321)
!4182 = !DILocalVariable(name: "i", scope: !4171, file: !3998, line: 106, type: !55)
!4183 = !DILocation(line: 108, column: 8, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4171, file: !3998, line: 108, column: 3)
!4185 = !DILocation(line: 108, scope: !4184)
!4186 = !DILocation(line: 108, column: 17, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4184, file: !3998, line: 108, column: 3)
!4188 = !DILocation(line: 108, column: 3, scope: !4184)
!4189 = !DILocation(line: 109, column: 14, scope: !4187)
!4190 = !DILocation(line: 109, column: 5, scope: !4187)
!4191 = !DILocation(line: 109, column: 12, scope: !4187)
!4192 = !DILocation(line: 108, column: 30, scope: !4187)
!4193 = !DILocation(line: 108, column: 3, scope: !4187)
!4194 = distinct !{!4194, !4188, !4195, !200}
!4195 = !DILocation(line: 109, column: 18, scope: !4184)
!4196 = !DILocation(line: 110, column: 6, scope: !4171)
!4197 = !DILocation(line: 112, column: 8, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4171, file: !3998, line: 112, column: 3)
!4199 = !DILocation(line: 112, scope: !4198)
!4200 = !DILocation(line: 112, column: 17, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4198, file: !3998, line: 112, column: 3)
!4202 = !DILocation(line: 112, column: 3, scope: !4198)
!4203 = !DILocation(line: 113, column: 14, scope: !4201)
!4204 = !DILocation(line: 113, column: 5, scope: !4201)
!4205 = !DILocation(line: 113, column: 12, scope: !4201)
!4206 = !DILocation(line: 112, column: 30, scope: !4201)
!4207 = !DILocation(line: 112, column: 3, scope: !4201)
!4208 = distinct !{!4208, !4202, !4209, !200}
!4209 = !DILocation(line: 113, column: 18, scope: !4198)
!4210 = !DILocation(line: 114, column: 6, scope: !4171)
!4211 = !DILocation(line: 116, column: 8, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4171, file: !3998, line: 116, column: 3)
!4213 = !DILocation(line: 116, scope: !4212)
!4214 = !DILocation(line: 116, column: 17, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4212, file: !3998, line: 116, column: 3)
!4216 = !DILocation(line: 116, column: 3, scope: !4212)
!4217 = !DILocation(line: 117, column: 13, scope: !4215)
!4218 = !DILocation(line: 117, column: 5, scope: !4215)
!4219 = !DILocation(line: 117, column: 11, scope: !4215)
!4220 = !DILocation(line: 116, column: 28, scope: !4215)
!4221 = !DILocation(line: 116, column: 3, scope: !4215)
!4222 = distinct !{!4222, !4216, !4223, !200}
!4223 = !DILocation(line: 117, column: 17, scope: !4212)
!4224 = !DILocation(line: 118, column: 6, scope: !4171)
!4225 = !DILocation(line: 120, column: 8, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4171, file: !3998, line: 120, column: 3)
!4227 = !DILocation(line: 120, scope: !4226)
!4228 = !DILocation(line: 120, column: 17, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4226, file: !3998, line: 120, column: 3)
!4230 = !DILocation(line: 120, column: 3, scope: !4226)
!4231 = !DILocation(line: 121, column: 21, scope: !4229)
!4232 = !DILocation(line: 121, column: 38, scope: !4229)
!4233 = !DILocation(line: 121, column: 34, scope: !4229)
!4234 = !DILocation(line: 121, column: 5, scope: !4229)
!4235 = !DILocation(line: 120, column: 22, scope: !4229)
!4236 = !DILocation(line: 120, column: 3, scope: !4229)
!4237 = distinct !{!4237, !4230, !4238, !200}
!4238 = !DILocation(line: 121, column: 59, scope: !4226)
!4239 = !DILocation(line: 122, column: 6, scope: !4171)
!4240 = !DILocation(line: 124, column: 8, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4171, file: !3998, line: 124, column: 3)
!4242 = !DILocation(line: 124, scope: !4241)
!4243 = !DILocation(line: 124, column: 17, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4241, file: !3998, line: 124, column: 3)
!4245 = !DILocation(line: 124, column: 3, scope: !4241)
!4246 = !DILocation(line: 125, column: 21, scope: !4244)
!4247 = !DILocation(line: 125, column: 38, scope: !4244)
!4248 = !DILocation(line: 125, column: 34, scope: !4244)
!4249 = !DILocation(line: 125, column: 5, scope: !4244)
!4250 = !DILocation(line: 124, column: 22, scope: !4244)
!4251 = !DILocation(line: 124, column: 3, scope: !4244)
!4252 = distinct !{!4252, !4245, !4253, !200}
!4253 = !DILocation(line: 125, column: 59, scope: !4241)
!4254 = !DILocation(line: 126, column: 6, scope: !4171)
!4255 = !DILocation(line: 128, column: 8, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4171, file: !3998, line: 128, column: 3)
!4257 = !DILocation(line: 128, scope: !4256)
!4258 = !DILocation(line: 128, column: 17, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4256, file: !3998, line: 128, column: 3)
!4260 = !DILocation(line: 128, column: 3, scope: !4256)
!4261 = !DILocation(line: 129, column: 20, scope: !4259)
!4262 = !DILocation(line: 129, column: 37, scope: !4259)
!4263 = !DILocation(line: 129, column: 33, scope: !4259)
!4264 = !DILocation(line: 129, column: 5, scope: !4259)
!4265 = !DILocation(line: 128, column: 22, scope: !4259)
!4266 = !DILocation(line: 128, column: 3, scope: !4259)
!4267 = distinct !{!4267, !4260, !4268, !200}
!4268 = !DILocation(line: 129, column: 57, scope: !4256)
!4269 = !DILocation(line: 130, column: 1, scope: !4171)
!4270 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_pack_sig", scope: !3998, file: !3998, line: 142, type: !4271, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{null, !47, !321, !746, !1022}
!4273 = !DILocalVariable(name: "sig", arg: 1, scope: !4270, file: !3998, line: 142, type: !47)
!4274 = !DILocation(line: 0, scope: !4270)
!4275 = !DILocalVariable(name: "c", arg: 2, scope: !4270, file: !3998, line: 142, type: !321)
!4276 = !DILocalVariable(name: "z", arg: 3, scope: !4270, file: !3998, line: 143, type: !746)
!4277 = !DILocalVariable(name: "h", arg: 4, scope: !4270, file: !3998, line: 143, type: !1022)
!4278 = !DILocalVariable(name: "i", scope: !4270, file: !3998, line: 144, type: !55)
!4279 = !DILocation(line: 146, column: 8, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4270, file: !3998, line: 146, column: 3)
!4281 = !DILocation(line: 146, scope: !4280)
!4282 = !DILocation(line: 146, column: 17, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4280, file: !3998, line: 146, column: 3)
!4284 = !DILocation(line: 146, column: 3, scope: !4280)
!4285 = !DILocation(line: 147, column: 14, scope: !4283)
!4286 = !DILocation(line: 147, column: 5, scope: !4283)
!4287 = !DILocation(line: 147, column: 12, scope: !4283)
!4288 = !DILocation(line: 146, column: 32, scope: !4283)
!4289 = !DILocation(line: 146, column: 3, scope: !4283)
!4290 = distinct !{!4290, !4284, !4291, !200}
!4291 = !DILocation(line: 147, column: 17, scope: !4280)
!4292 = !DILocation(line: 148, column: 7, scope: !4270)
!4293 = !DILocation(line: 150, column: 8, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4270, file: !3998, line: 150, column: 3)
!4295 = !DILocation(line: 150, scope: !4294)
!4296 = !DILocation(line: 150, column: 17, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4294, file: !3998, line: 150, column: 3)
!4298 = !DILocation(line: 150, column: 3, scope: !4294)
!4299 = !DILocation(line: 151, column: 24, scope: !4297)
!4300 = !DILocation(line: 151, column: 20, scope: !4297)
!4301 = !DILocation(line: 151, column: 46, scope: !4297)
!4302 = !DILocation(line: 151, column: 5, scope: !4297)
!4303 = !DILocation(line: 150, column: 22, scope: !4297)
!4304 = !DILocation(line: 150, column: 3, scope: !4297)
!4305 = distinct !{!4305, !4298, !4306, !200}
!4306 = !DILocation(line: 151, column: 53, scope: !4294)
!4307 = !DILocation(line: 152, column: 7, scope: !4270)
!4308 = !DILocation(line: 155, column: 8, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4270, file: !3998, line: 155, column: 3)
!4310 = !DILocation(line: 155, scope: !4309)
!4311 = !DILocation(line: 155, column: 17, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4309, file: !3998, line: 155, column: 3)
!4313 = !DILocation(line: 155, column: 3, scope: !4309)
!4314 = !DILocation(line: 159, column: 3, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4270, file: !3998, line: 159, column: 3)
!4316 = !DILocation(line: 156, column: 5, scope: !4312)
!4317 = !DILocation(line: 156, column: 12, scope: !4312)
!4318 = !DILocation(line: 155, column: 30, scope: !4312)
!4319 = !DILocation(line: 155, column: 3, scope: !4312)
!4320 = distinct !{!4320, !4313, !4321, !200}
!4321 = !DILocation(line: 156, column: 14, scope: !4309)
!4322 = !DILocation(line: 159, scope: !4315)
!4323 = !DILocation(line: 158, column: 5, scope: !4270)
!4324 = !DILocalVariable(name: "k", scope: !4270, file: !3998, line: 144, type: !55)
!4325 = !DILocation(line: 159, column: 17, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4315, file: !3998, line: 159, column: 3)
!4327 = !DILocation(line: 160, column: 5, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4329, file: !3998, line: 160, column: 5)
!4329 = distinct !DILexicalBlock(scope: !4326, file: !3998, line: 159, column: 27)
!4330 = !DILocation(line: 160, scope: !4328)
!4331 = !DILocalVariable(name: "j", scope: !4270, file: !3998, line: 144, type: !55)
!4332 = !DILocation(line: 160, column: 19, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4328, file: !3998, line: 160, column: 5)
!4334 = !DILocation(line: 161, column: 11, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4333, file: !3998, line: 161, column: 11)
!4336 = !DILocation(line: 161, column: 22, scope: !4335)
!4337 = !DILocation(line: 162, column: 20, scope: !4335)
!4338 = !DILocation(line: 162, column: 14, scope: !4335)
!4339 = !DILocation(line: 162, column: 9, scope: !4335)
!4340 = !DILocation(line: 162, column: 18, scope: !4335)
!4341 = !DILocation(line: 160, column: 24, scope: !4333)
!4342 = !DILocation(line: 160, column: 5, scope: !4333)
!4343 = distinct !{!4343, !4327, !4344, !200}
!4344 = !DILocation(line: 162, column: 20, scope: !4328)
!4345 = !DILocation(line: 164, column: 22, scope: !4329)
!4346 = !DILocation(line: 164, column: 15, scope: !4329)
!4347 = !DILocation(line: 164, column: 5, scope: !4329)
!4348 = !DILocation(line: 164, column: 20, scope: !4329)
!4349 = !DILocation(line: 159, column: 22, scope: !4326)
!4350 = !DILocation(line: 159, column: 3, scope: !4326)
!4351 = distinct !{!4351, !4314, !4352, !200}
!4352 = !DILocation(line: 165, column: 3, scope: !4315)
!4353 = !DILocation(line: 166, column: 1, scope: !4270)
!4354 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_unpack_sig", scope: !3998, file: !3998, line: 181, type: !4355, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!65, !47, !711, !745, !321}
!4357 = !DILocalVariable(name: "c", arg: 1, scope: !4354, file: !3998, line: 181, type: !47)
!4358 = !DILocation(line: 0, scope: !4354)
!4359 = !DILocalVariable(name: "z", arg: 2, scope: !4354, file: !3998, line: 181, type: !711)
!4360 = !DILocalVariable(name: "h", arg: 3, scope: !4354, file: !3998, line: 181, type: !745)
!4361 = !DILocalVariable(name: "sig", arg: 4, scope: !4354, file: !3998, line: 182, type: !321)
!4362 = !DILocalVariable(name: "i", scope: !4354, file: !3998, line: 183, type: !55)
!4363 = !DILocation(line: 185, column: 8, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4354, file: !3998, line: 185, column: 3)
!4365 = !DILocation(line: 185, scope: !4364)
!4366 = !DILocation(line: 185, column: 17, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4364, file: !3998, line: 185, column: 3)
!4368 = !DILocation(line: 185, column: 3, scope: !4364)
!4369 = !DILocation(line: 186, column: 12, scope: !4367)
!4370 = !DILocation(line: 186, column: 5, scope: !4367)
!4371 = !DILocation(line: 186, column: 10, scope: !4367)
!4372 = !DILocation(line: 185, column: 32, scope: !4367)
!4373 = !DILocation(line: 185, column: 3, scope: !4367)
!4374 = distinct !{!4374, !4368, !4375, !200}
!4375 = !DILocation(line: 186, column: 17, scope: !4364)
!4376 = !DILocation(line: 187, column: 7, scope: !4354)
!4377 = !DILocation(line: 189, column: 8, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4354, file: !3998, line: 189, column: 3)
!4379 = !DILocation(line: 189, scope: !4378)
!4380 = !DILocation(line: 189, column: 17, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4378, file: !3998, line: 189, column: 3)
!4382 = !DILocation(line: 189, column: 3, scope: !4378)
!4383 = !DILocation(line: 190, column: 19, scope: !4381)
!4384 = !DILocation(line: 190, column: 36, scope: !4381)
!4385 = !DILocation(line: 190, column: 32, scope: !4381)
!4386 = !DILocation(line: 190, column: 5, scope: !4381)
!4387 = !DILocation(line: 189, column: 22, scope: !4381)
!4388 = !DILocation(line: 189, column: 3, scope: !4381)
!4389 = distinct !{!4389, !4382, !4390, !200}
!4390 = !DILocation(line: 190, column: 55, scope: !4378)
!4391 = !DILocation(line: 191, column: 7, scope: !4354)
!4392 = !DILocalVariable(name: "k", scope: !4354, file: !3998, line: 183, type: !55)
!4393 = !DILocation(line: 195, column: 8, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4354, file: !3998, line: 195, column: 3)
!4395 = !DILocation(line: 195, scope: !4394)
!4396 = !DILocation(line: 195, column: 17, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4394, file: !3998, line: 195, column: 3)
!4398 = !DILocation(line: 195, column: 3, scope: !4394)
!4399 = !DILocation(line: 196, column: 5, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !3998, line: 196, column: 5)
!4401 = distinct !DILexicalBlock(scope: !4397, file: !3998, line: 195, column: 27)
!4402 = !DILocation(line: 213, column: 3, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4354, file: !3998, line: 213, column: 3)
!4404 = !DILocation(line: 196, scope: !4400)
!4405 = !DILocalVariable(name: "j", scope: !4354, file: !3998, line: 183, type: !55)
!4406 = !DILocation(line: 196, column: 19, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4400, file: !3998, line: 196, column: 5)
!4408 = !DILocation(line: 197, column: 7, scope: !4407)
!4409 = !DILocation(line: 197, column: 18, scope: !4407)
!4410 = !DILocation(line: 196, column: 24, scope: !4407)
!4411 = !DILocation(line: 196, column: 5, scope: !4407)
!4412 = distinct !{!4412, !4399, !4413, !200}
!4413 = !DILocation(line: 197, column: 20, scope: !4400)
!4414 = !DILocation(line: 199, column: 19, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4401, file: !3998, line: 199, column: 9)
!4416 = !DILocation(line: 199, column: 9, scope: !4415)
!4417 = !DILocation(line: 199, column: 24, scope: !4415)
!4418 = !DILocation(line: 199, column: 28, scope: !4415)
!4419 = !DILocation(line: 199, column: 41, scope: !4415)
!4420 = !DILocation(line: 199, column: 31, scope: !4415)
!4421 = !DILocation(line: 199, column: 46, scope: !4415)
!4422 = !DILocation(line: 202, column: 5, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4401, file: !3998, line: 202, column: 5)
!4424 = !DILocation(line: 202, scope: !4423)
!4425 = !DILocation(line: 202, column: 31, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4423, file: !3998, line: 202, column: 5)
!4427 = !DILocation(line: 202, column: 21, scope: !4426)
!4428 = !DILocation(line: 202, column: 19, scope: !4426)
!4429 = !DILocation(line: 204, column: 13, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4431, file: !3998, line: 204, column: 11)
!4431 = distinct !DILexicalBlock(scope: !4426, file: !3998, line: 202, column: 42)
!4432 = !DILocation(line: 204, column: 17, scope: !4430)
!4433 = !DILocation(line: 204, column: 20, scope: !4430)
!4434 = !DILocation(line: 204, column: 30, scope: !4430)
!4435 = !DILocation(line: 204, column: 27, scope: !4430)
!4436 = !DILocation(line: 206, column: 15, scope: !4431)
!4437 = !DILocation(line: 206, column: 7, scope: !4431)
!4438 = !DILocation(line: 206, column: 23, scope: !4431)
!4439 = !DILocation(line: 202, column: 37, scope: !4426)
!4440 = !DILocation(line: 202, column: 5, scope: !4426)
!4441 = distinct !{!4441, !4422, !4442, !200}
!4442 = !DILocation(line: 207, column: 5, scope: !4423)
!4443 = !DILocation(line: 209, column: 19, scope: !4401)
!4444 = !DILocation(line: 209, column: 9, scope: !4401)
!4445 = !DILocation(line: 195, column: 22, scope: !4397)
!4446 = !DILocation(line: 195, column: 3, scope: !4397)
!4447 = distinct !{!4447, !4398, !4448, !200}
!4448 = !DILocation(line: 210, column: 3, scope: !4394)
!4449 = !DILocation(line: 213, scope: !4403)
!4450 = !DILocation(line: 213, column: 17, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4403, file: !3998, line: 213, column: 3)
!4452 = !DILocation(line: 214, column: 9, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4451, file: !3998, line: 214, column: 9)
!4454 = !DILocation(line: 213, column: 26, scope: !4451)
!4455 = !DILocation(line: 213, column: 3, scope: !4451)
!4456 = distinct !{!4456, !4402, !4457, !200}
!4457 = !DILocation(line: 215, column: 14, scope: !4403)
!4458 = !DILocation(line: 218, column: 1, scope: !4354)
!4459 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_power2round", scope: !4460, file: !4460, line: 17, type: !4461, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4460 = !DIFile(filename: "../../../ref/rounding.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!77, !1584, !77}
!4463 = !DILocalVariable(name: "a0", arg: 1, scope: !4459, file: !4460, line: 17, type: !1584)
!4464 = !DILocation(line: 0, scope: !4459)
!4465 = !DILocalVariable(name: "a", arg: 2, scope: !4459, file: !4460, line: 17, type: !77)
!4466 = !DILocation(line: 20, column: 26, scope: !4459)
!4467 = !DILocation(line: 20, column: 31, scope: !4459)
!4468 = !DILocalVariable(name: "a1", scope: !4459, file: !4460, line: 18, type: !77)
!4469 = !DILocation(line: 21, column: 17, scope: !4459)
!4470 = !DILocation(line: 21, column: 11, scope: !4459)
!4471 = !DILocation(line: 21, column: 7, scope: !4459)
!4472 = !DILocation(line: 22, column: 3, scope: !4459)
!4473 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_decompose", scope: !4460, file: !4460, line: 39, type: !4461, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4474 = !DILocalVariable(name: "a0", arg: 1, scope: !4473, file: !4460, line: 39, type: !1584)
!4475 = !DILocation(line: 0, scope: !4473)
!4476 = !DILocalVariable(name: "a", arg: 2, scope: !4473, file: !4460, line: 39, type: !77)
!4477 = !DILocation(line: 42, column: 12, scope: !4473)
!4478 = !DILocation(line: 42, column: 19, scope: !4473)
!4479 = !DILocalVariable(name: "a1", scope: !4473, file: !4460, line: 40, type: !77)
!4480 = !DILocation(line: 47, column: 12, scope: !4473)
!4481 = !DILocation(line: 47, column: 19, scope: !4473)
!4482 = !DILocation(line: 47, column: 32, scope: !4473)
!4483 = !DILocation(line: 48, column: 20, scope: !4473)
!4484 = !DILocation(line: 48, column: 6, scope: !4473)
!4485 = !DILocation(line: 51, column: 18, scope: !4473)
!4486 = !DILocation(line: 51, column: 12, scope: !4473)
!4487 = !DILocation(line: 52, column: 27, scope: !4473)
!4488 = !DILocation(line: 52, column: 34, scope: !4473)
!4489 = !DILocation(line: 52, column: 7, scope: !4473)
!4490 = !DILocation(line: 53, column: 3, scope: !4473)
!4491 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_make_hint", scope: !4460, file: !4460, line: 67, type: !4492, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!55, !77, !77}
!4494 = !DILocalVariable(name: "a0", arg: 1, scope: !4491, file: !4460, line: 67, type: !77)
!4495 = !DILocation(line: 0, scope: !4491)
!4496 = !DILocalVariable(name: "a1", arg: 2, scope: !4491, file: !4460, line: 67, type: !77)
!4497 = !DILocation(line: 68, column: 18, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4491, file: !4460, line: 68, column: 6)
!4499 = !DILocation(line: 72, column: 1, scope: !4491)
!4500 = distinct !DISubprogram(name: "pqcrystals_dilithium2_ref_use_hint", scope: !4460, file: !4460, line: 84, type: !4501, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!77, !77, !55}
!4503 = !DILocalVariable(name: "a", arg: 1, scope: !4500, file: !4460, line: 84, type: !77)
!4504 = !DILocation(line: 0, scope: !4500)
!4505 = !DILocalVariable(name: "hint", arg: 2, scope: !4500, file: !4460, line: 84, type: !55)
!4506 = !DILocalVariable(name: "a0", scope: !4500, file: !4460, line: 85, type: !77)
!4507 = !DILocation(line: 87, column: 8, scope: !4500)
!4508 = !DILocalVariable(name: "a1", scope: !4500, file: !4460, line: 85, type: !77)
!4509 = !DILocation(line: 88, column: 11, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4500, file: !4460, line: 88, column: 6)
!4511 = !DILocation(line: 97, column: 6, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4500, file: !4460, line: 97, column: 6)
!4513 = !DILocation(line: 97, column: 9, scope: !4512)
!4514 = !DILocation(line: 98, column: 16, scope: !4512)
!4515 = !DILocation(line: 98, column: 12, scope: !4512)
!4516 = !DILocation(line: 98, column: 5, scope: !4512)
!4517 = !DILocation(line: 100, column: 16, scope: !4512)
!4518 = !DILocation(line: 100, column: 12, scope: !4512)
!4519 = !DILocation(line: 100, column: 5, scope: !4512)
!4520 = !DILocation(line: 102, column: 1, scope: !4500)
!4521 = distinct !DISubprogram(name: "dilithium_memset", scope: !4522, file: !4522, line: 3, type: !4523, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !64)
!4522 = !DIFile(filename: "../mem.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !4525, !48, !103}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!4526 = !DILocalVariable(name: "dst", arg: 1, scope: !4521, file: !4522, line: 3, type: !4525)
!4527 = !DILocation(line: 0, scope: !4521)
!4528 = !DILocalVariable(name: "val", arg: 2, scope: !4521, file: !4522, line: 3, type: !48)
!4529 = !DILocalVariable(name: "len", arg: 3, scope: !4521, file: !4522, line: 3, type: !103)
!4530 = !DILocalVariable(name: "d", scope: !4521, file: !4522, line: 5, type: !47)
!4531 = !DILocalVariable(name: "i", scope: !4532, file: !4522, line: 7, type: !103)
!4532 = distinct !DILexicalBlock(scope: !4521, file: !4522, line: 7, column: 5)
!4533 = !DILocation(line: 0, scope: !4532)
!4534 = !DILocation(line: 7, column: 10, scope: !4532)
!4535 = !DILocation(line: 7, scope: !4532)
!4536 = !DILocation(line: 7, column: 28, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4532, file: !4522, line: 7, column: 5)
!4538 = !DILocation(line: 7, column: 5, scope: !4532)
!4539 = !DILocation(line: 8, column: 9, scope: !4537)
!4540 = !DILocation(line: 8, column: 14, scope: !4537)
!4541 = !DILocation(line: 7, column: 36, scope: !4537)
!4542 = !DILocation(line: 7, column: 5, scope: !4537)
!4543 = distinct !{!4543, !4538, !4544, !200}
!4544 = !DILocation(line: 8, column: 16, scope: !4532)
!4545 = !DILocation(line: 9, column: 1, scope: !4521)
!4546 = distinct !DISubprogram(name: "dilithium_memcpy", scope: !4522, file: !4522, line: 11, type: !4547, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{null, !4525, !4549, !103}
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 32)
!4550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4551 = !DILocalVariable(name: "dst", arg: 1, scope: !4546, file: !4522, line: 11, type: !4525)
!4552 = !DILocation(line: 0, scope: !4546)
!4553 = !DILocalVariable(name: "src", arg: 2, scope: !4546, file: !4522, line: 11, type: !4549)
!4554 = !DILocalVariable(name: "len", arg: 3, scope: !4546, file: !4522, line: 11, type: !103)
!4555 = !DILocalVariable(name: "d", scope: !4546, file: !4522, line: 13, type: !47)
!4556 = !DILocalVariable(name: "s", scope: !4546, file: !4522, line: 14, type: !321)
!4557 = !DILocalVariable(name: "i", scope: !4558, file: !4522, line: 16, type: !103)
!4558 = distinct !DILexicalBlock(scope: !4546, file: !4522, line: 16, column: 5)
!4559 = !DILocation(line: 0, scope: !4558)
!4560 = !DILocation(line: 16, column: 10, scope: !4558)
!4561 = !DILocation(line: 16, scope: !4558)
!4562 = !DILocation(line: 16, column: 28, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4558, file: !4522, line: 16, column: 5)
!4564 = !DILocation(line: 16, column: 5, scope: !4558)
!4565 = !DILocation(line: 17, column: 16, scope: !4563)
!4566 = !DILocation(line: 17, column: 9, scope: !4563)
!4567 = !DILocation(line: 17, column: 14, scope: !4563)
!4568 = !DILocation(line: 16, column: 36, scope: !4563)
!4569 = !DILocation(line: 16, column: 5, scope: !4563)
!4570 = distinct !{!4570, !4564, !4571, !200}
!4571 = !DILocation(line: 17, column: 19, scope: !4558)
!4572 = !DILocation(line: 18, column: 1, scope: !4546)

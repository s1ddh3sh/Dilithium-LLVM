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
  %m = alloca [3368 x i8], align 1
  %m2 = alloca [3368 x i8], align 1
  %sm = alloca [3368 x i8], align 1
  %pk = alloca [1952 x i8], align 1
  %sk = alloca [4032 x i8], align 1
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
  %call4 = call i32 @pqcrystals_dilithium3_ref_keypair(ptr noundef nonnull %pk, ptr noundef nonnull %sk) #4, !dbg !153
    #dbg_value(ptr %smlen, !154, !DIExpression(DW_OP_deref), !144)
  %call9 = call i32 @pqcrystals_dilithium3_ref(ptr noundef nonnull %sm, ptr noundef nonnull %smlen, ptr noundef nonnull %m, i32 noundef 59, ptr noundef nonnull %ctx, i32 noundef 14, ptr noundef nonnull %sk) #4, !dbg !155
  %0 = load i32, ptr %smlen, align 4, !dbg !156
    #dbg_value(i32 %0, !154, !DIExpression(), !144)
    #dbg_value(ptr %mlen, !157, !DIExpression(DW_OP_deref), !144)
  %call14 = call i32 @pqcrystals_dilithium3_ref_open(ptr noundef nonnull %m2, ptr noundef nonnull %mlen, ptr noundef nonnull %sm, i32 noundef %0, ptr noundef nonnull %ctx, i32 noundef 14, ptr noundef nonnull %pk) #4, !dbg !158
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
  %cmp16.not = icmp eq i32 %3, 3368, !dbg !168
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
  %arrayidx = getelementptr inbounds nuw [3368 x i8], ptr %m2, i32 0, i32 %9, !dbg !189
  %10 = load i8, ptr %arrayidx, align 1, !dbg !189
    #dbg_value(i32 %9, !183, !DIExpression(), !144)
  %arrayidx29 = getelementptr inbounds nuw [3368 x i8], ptr %m, i32 0, i32 %9, !dbg !190
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
  %rem = urem i32 %17, 3368, !dbg !213
  %arrayidx39 = getelementptr inbounds nuw [3368 x i8], ptr %sm, i32 0, i32 %rem, !dbg !214
  %18 = load i8, ptr %arrayidx39, align 1, !dbg !215
  %add = add i8 %18, %16, !dbg !215
  store i8 %add, ptr %arrayidx39, align 1, !dbg !215
  %19 = load i32, ptr %smlen, align 4, !dbg !216
    #dbg_value(i32 %19, !154, !DIExpression(), !144)
    #dbg_value(ptr %mlen, !157, !DIExpression(DW_OP_deref), !144)
  %call46 = call i32 @pqcrystals_dilithium3_ref_open(ptr noundef nonnull %m2, ptr noundef nonnull %mlen, ptr noundef nonnull %sm, i32 noundef %19, ptr noundef nonnull %ctx, i32 noundef 14, ptr noundef nonnull %pk) #4, !dbg !217
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
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i32 noundef 1952) #3, !dbg !229
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i32 noundef 4032) #3, !dbg !230
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i32 noundef 3309) #3, !dbg !231
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
define dso_local i32 @pqcrystals_dilithium3_ref_keypair(ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !275 {
entry:
  %seedbuf = alloca [128 x i8], align 1
  %tr = alloca [64 x i8], align 1
  %mat = alloca [6 x [5 x [256 x i32]]], align 4
  %s1 = alloca [5 x [256 x i32]], align 4
  %s1hat = alloca [5 x [256 x i32]], align 4
  %s2 = alloca [6 x [256 x i32]], align 4
  %t1 = alloca [6 x [256 x i32]], align 4
  %t0 = alloca [6 x [256 x i32]], align 4
    #dbg_value(ptr %pk, !279, !DIExpression(), !280)
    #dbg_value(ptr %sk, !281, !DIExpression(), !280)
    #dbg_declare(ptr %seedbuf, !282, !DIExpression(), !286)
    #dbg_declare(ptr %tr, !287, !DIExpression(), !291)
    #dbg_declare(ptr %mat, !292, !DIExpression(), !304)
    #dbg_declare(ptr %s1, !305, !DIExpression(), !306)
    #dbg_declare(ptr %s1hat, !307, !DIExpression(), !308)
    #dbg_declare(ptr %s2, !309, !DIExpression(), !312)
    #dbg_declare(ptr %t1, !313, !DIExpression(), !314)
    #dbg_declare(ptr %t0, !315, !DIExpression(), !316)
  call void @randombytes(ptr noundef nonnull %seedbuf, i32 noundef 32) #4, !dbg !317
  %arrayidx = getelementptr inbounds nuw i8, ptr %seedbuf, i32 32, !dbg !318
  store i8 6, ptr %arrayidx, align 1, !dbg !319
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 33, !dbg !320
  store i8 5, ptr %arrayidx1, align 1, !dbg !321
  call void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef nonnull %seedbuf, i32 noundef 128, ptr noundef nonnull %seedbuf, i32 noundef 34) #4, !dbg !322
    #dbg_value(ptr %seedbuf, !323, !DIExpression(), !280)
  %add.ptr = getelementptr inbounds nuw i8, ptr %seedbuf, i32 32, !dbg !326
    #dbg_value(ptr %add.ptr, !327, !DIExpression(), !280)
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 96, !dbg !328
    #dbg_value(ptr %add.ptr5, !329, !DIExpression(), !280)
  call void @pqcrystals_dilithium3_ref_polyvec_matrix_expand(ptr noundef nonnull %mat, ptr noundef nonnull %seedbuf) #4, !dbg !330
  call void @pqcrystals_dilithium3_ref_polyvecl_uniform_eta(ptr noundef nonnull %s1, ptr noundef nonnull %add.ptr, i16 noundef zeroext 0) #4, !dbg !331
  call void @pqcrystals_dilithium3_ref_polyveck_uniform_eta(ptr noundef nonnull %s2, ptr noundef nonnull %add.ptr, i16 noundef zeroext 5) #4, !dbg !332
  %call = call ptr @memcpy(ptr noundef nonnull %s1hat, ptr noundef nonnull %s1, i32 noundef 5120) #3, !dbg !333
  call void @pqcrystals_dilithium3_ref_polyvecl_ntt(ptr noundef nonnull %s1hat) #4, !dbg !334
  call void @pqcrystals_dilithium3_ref_polyvec_matrix_pointwise_montgomery(ptr noundef nonnull %t1, ptr noundef nonnull %mat, ptr noundef nonnull %s1hat) #4, !dbg !335
  call void @pqcrystals_dilithium3_ref_polyveck_reduce(ptr noundef nonnull %t1) #4, !dbg !336
  call void @pqcrystals_dilithium3_ref_polyveck_invntt_tomont(ptr noundef nonnull %t1) #4, !dbg !337
  call void @pqcrystals_dilithium3_ref_polyveck_add(ptr noundef nonnull %t1, ptr noundef nonnull %t1, ptr noundef nonnull %s2) #4, !dbg !338
  call void @pqcrystals_dilithium3_ref_polyveck_caddq(ptr noundef nonnull %t1) #4, !dbg !339
  call void @pqcrystals_dilithium3_ref_polyveck_power2round(ptr noundef nonnull %t1, ptr noundef nonnull %t0, ptr noundef nonnull %t1) #4, !dbg !340
  call void @pqcrystals_dilithium3_ref_pack_pk(ptr noundef %pk, ptr noundef nonnull %seedbuf, ptr noundef nonnull %t1) #4, !dbg !341
  call void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef nonnull %tr, i32 noundef 64, ptr noundef %pk, i32 noundef 1952) #4, !dbg !342
  call void @pqcrystals_dilithium3_ref_pack_sk(ptr noundef %sk, ptr noundef nonnull %seedbuf, ptr noundef nonnull %tr, ptr noundef nonnull %add.ptr5, ptr noundef nonnull %t0, ptr noundef nonnull %s1, ptr noundef nonnull %s2) #4, !dbg !343
  ret i32 0, !dbg !344
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium3_ref_signature_internal(ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %pre, i32 noundef %prelen, ptr noundef %rnd, ptr noundef %sk) local_unnamed_addr #0 !dbg !345 {
entry:
  %seedbuf = alloca [256 x i8], align 1
  %mat = alloca [6 x [5 x [256 x i32]]], align 4
  %s1 = alloca [5 x [256 x i32]], align 4
  %y = alloca [5 x [256 x i32]], align 4
  %z = alloca [5 x [256 x i32]], align 4
  %t0 = alloca [6 x [256 x i32]], align 4
  %s2 = alloca [6 x [256 x i32]], align 4
  %w1 = alloca [6 x [256 x i32]], align 4
  %w0 = alloca [6 x [256 x i32]], align 4
  %h = alloca [6 x [256 x i32]], align 4
  %cp = alloca [256 x i32], align 4
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %sig, !349, !DIExpression(), !350)
    #dbg_value(ptr %siglen, !351, !DIExpression(), !350)
    #dbg_value(ptr %m, !352, !DIExpression(), !350)
    #dbg_value(i32 %mlen, !353, !DIExpression(), !350)
    #dbg_value(ptr %pre, !354, !DIExpression(), !350)
    #dbg_value(i32 %prelen, !355, !DIExpression(), !350)
    #dbg_value(ptr %rnd, !356, !DIExpression(), !350)
    #dbg_value(ptr %sk, !357, !DIExpression(), !350)
    #dbg_declare(ptr %seedbuf, !358, !DIExpression(), !360)
    #dbg_value(i16 0, !361, !DIExpression(), !350)
    #dbg_declare(ptr %mat, !365, !DIExpression(), !366)
    #dbg_declare(ptr %s1, !367, !DIExpression(), !368)
    #dbg_declare(ptr %y, !369, !DIExpression(), !370)
    #dbg_declare(ptr %z, !371, !DIExpression(), !372)
    #dbg_declare(ptr %t0, !373, !DIExpression(), !374)
    #dbg_declare(ptr %s2, !375, !DIExpression(), !376)
    #dbg_declare(ptr %w1, !377, !DIExpression(), !378)
    #dbg_declare(ptr %w0, !379, !DIExpression(), !380)
    #dbg_declare(ptr %h, !381, !DIExpression(), !382)
    #dbg_declare(ptr %cp, !383, !DIExpression(), !384)
    #dbg_declare(ptr %state, !385, !DIExpression(), !391)
    #dbg_value(ptr %seedbuf, !392, !DIExpression(), !350)
  %add.ptr = getelementptr inbounds nuw i8, ptr %seedbuf, i32 32, !dbg !393
    #dbg_value(ptr %add.ptr, !394, !DIExpression(), !350)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 96, !dbg !395
    #dbg_value(ptr %add.ptr1, !396, !DIExpression(), !350)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 128, !dbg !397
    #dbg_value(ptr %add.ptr2, !398, !DIExpression(), !350)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 192, !dbg !399
    #dbg_value(ptr %add.ptr3, !400, !DIExpression(), !350)
  call void @pqcrystals_dilithium3_ref_unpack_sk(ptr noundef nonnull %seedbuf, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %t0, ptr noundef nonnull %s1, ptr noundef nonnull %s2, ptr noundef %sk) #4, !dbg !401
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !402
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %add.ptr, i32 noundef 64) #4, !dbg !403
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %pre, i32 noundef %prelen) #4, !dbg !404
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %m, i32 noundef %mlen) #4, !dbg !405
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !406
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef nonnull %add.ptr2, i32 noundef 64, ptr noundef nonnull %state) #4, !dbg !407
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !408
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %add.ptr1, i32 noundef 32) #4, !dbg !409
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %rnd, i32 noundef 32) #4, !dbg !410
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %add.ptr2, i32 noundef 64) #4, !dbg !411
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !412
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef nonnull %add.ptr3, i32 noundef 64, ptr noundef nonnull %state) #4, !dbg !413
  call void @pqcrystals_dilithium3_ref_polyvec_matrix_expand(ptr noundef nonnull %mat, ptr noundef nonnull %seedbuf) #4, !dbg !414
  call void @pqcrystals_dilithium3_ref_polyvecl_ntt(ptr noundef nonnull %s1) #4, !dbg !415
  call void @pqcrystals_dilithium3_ref_polyveck_ntt(ptr noundef nonnull %s2) #4, !dbg !416
  call void @pqcrystals_dilithium3_ref_polyveck_ntt(ptr noundef nonnull %t0) #4, !dbg !417
  br label %rej, !dbg !417

rej:                                              ; preds = %rej.backedge, %entry
  %nonce.0 = phi i16 [ 0, %entry ], [ %inc, %rej.backedge ], !dbg !350
    #dbg_value(i16 %nonce.0, !361, !DIExpression(), !350)
    #dbg_label(!418, !419)
  %inc = add i16 %nonce.0, 1, !dbg !420
    #dbg_value(i16 %inc, !361, !DIExpression(), !350)
  call void @pqcrystals_dilithium3_ref_polyvecl_uniform_gamma1(ptr noundef nonnull %y, ptr noundef nonnull %add.ptr3, i16 noundef zeroext %nonce.0) #4, !dbg !421
  %call = call ptr @memcpy(ptr noundef nonnull %z, ptr noundef nonnull %y, i32 noundef 5120) #3, !dbg !422
  call void @pqcrystals_dilithium3_ref_polyvecl_ntt(ptr noundef nonnull %z) #4, !dbg !423
  call void @pqcrystals_dilithium3_ref_polyvec_matrix_pointwise_montgomery(ptr noundef nonnull %w1, ptr noundef nonnull %mat, ptr noundef nonnull %z) #4, !dbg !424
  call void @pqcrystals_dilithium3_ref_polyveck_reduce(ptr noundef nonnull %w1) #4, !dbg !425
  call void @pqcrystals_dilithium3_ref_polyveck_invntt_tomont(ptr noundef nonnull %w1) #4, !dbg !426
  call void @pqcrystals_dilithium3_ref_polyveck_caddq(ptr noundef nonnull %w1) #4, !dbg !427
  call void @pqcrystals_dilithium3_ref_polyveck_decompose(ptr noundef nonnull %w1, ptr noundef nonnull %w0, ptr noundef nonnull %w1) #4, !dbg !428
  call void @pqcrystals_dilithium3_ref_polyveck_pack_w1(ptr noundef %sig, ptr noundef nonnull %w1) #4, !dbg !429
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !430
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %add.ptr2, i32 noundef 64) #4, !dbg !431
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %sig, i32 noundef 768) #4, !dbg !432
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !433
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef %sig, i32 noundef 48, ptr noundef nonnull %state) #4, !dbg !434
  call void @pqcrystals_dilithium3_ref_poly_challenge(ptr noundef nonnull %cp, ptr noundef %sig) #4, !dbg !435
  call void @pqcrystals_dilithium3_ref_poly_ntt(ptr noundef nonnull %cp) #4, !dbg !436
  call void @pqcrystals_dilithium3_ref_polyvecl_pointwise_poly_montgomery(ptr noundef nonnull %z, ptr noundef nonnull %cp, ptr noundef nonnull %s1) #4, !dbg !437
  call void @pqcrystals_dilithium3_ref_polyvecl_invntt_tomont(ptr noundef nonnull %z) #4, !dbg !438
  call void @pqcrystals_dilithium3_ref_polyvecl_add(ptr noundef nonnull %z, ptr noundef nonnull %z, ptr noundef nonnull %y) #4, !dbg !439
  call void @pqcrystals_dilithium3_ref_polyvecl_reduce(ptr noundef nonnull %z) #4, !dbg !440
  %call8 = call i32 @pqcrystals_dilithium3_ref_polyvecl_chknorm(ptr noundef nonnull %z, i32 noundef 524092) #4, !dbg !441
  %tobool.not = icmp eq i32 %call8, 0, !dbg !441
  br i1 %tobool.not, label %if.end, label %rej.backedge, !dbg !441

rej.backedge:                                     ; preds = %rej, %if.end, %if.end12, %if.end16
  br label %rej, !dbg !420

if.end:                                           ; preds = %rej
  call void @pqcrystals_dilithium3_ref_polyveck_pointwise_poly_montgomery(ptr noundef nonnull %h, ptr noundef nonnull %cp, ptr noundef nonnull %s2) #4, !dbg !443
  call void @pqcrystals_dilithium3_ref_polyveck_invntt_tomont(ptr noundef nonnull %h) #4, !dbg !444
  call void @pqcrystals_dilithium3_ref_polyveck_sub(ptr noundef nonnull %w0, ptr noundef nonnull %w0, ptr noundef nonnull %h) #4, !dbg !445
  call void @pqcrystals_dilithium3_ref_polyveck_reduce(ptr noundef nonnull %w0) #4, !dbg !446
  %call9 = call i32 @pqcrystals_dilithium3_ref_polyveck_chknorm(ptr noundef nonnull %w0, i32 noundef 261692) #4, !dbg !447
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !447
  br i1 %tobool10.not, label %if.end12, label %rej.backedge, !dbg !447

if.end12:                                         ; preds = %if.end
  call void @pqcrystals_dilithium3_ref_polyveck_pointwise_poly_montgomery(ptr noundef nonnull %h, ptr noundef nonnull %cp, ptr noundef nonnull %t0) #4, !dbg !449
  call void @pqcrystals_dilithium3_ref_polyveck_invntt_tomont(ptr noundef nonnull %h) #4, !dbg !450
  call void @pqcrystals_dilithium3_ref_polyveck_reduce(ptr noundef nonnull %h) #4, !dbg !451
  %call13 = call i32 @pqcrystals_dilithium3_ref_polyveck_chknorm(ptr noundef nonnull %h, i32 noundef 261888) #4, !dbg !452
  %tobool14.not = icmp eq i32 %call13, 0, !dbg !452
  br i1 %tobool14.not, label %if.end16, label %rej.backedge, !dbg !452

if.end16:                                         ; preds = %if.end12
  call void @pqcrystals_dilithium3_ref_polyveck_add(ptr noundef nonnull %w0, ptr noundef nonnull %w0, ptr noundef nonnull %h) #4, !dbg !454
  %call17 = call i32 @pqcrystals_dilithium3_ref_polyveck_make_hint(ptr noundef nonnull %h, ptr noundef nonnull %w0, ptr noundef nonnull %w1) #4, !dbg !455
    #dbg_value(i32 %call17, !456, !DIExpression(), !350)
  %cmp = icmp ugt i32 %call17, 55, !dbg !457
  br i1 %cmp, label %rej.backedge, label %if.end19, !dbg !457

if.end19:                                         ; preds = %if.end16
  call void @pqcrystals_dilithium3_ref_pack_sig(ptr noundef %sig, ptr noundef %sig, ptr noundef nonnull %z, ptr noundef nonnull %h) #4, !dbg !459
  store i32 3309, ptr %siglen, align 4, !dbg !460
  ret i32 0, !dbg !461
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium3_ref_signature(ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %sk) local_unnamed_addr #0 !dbg !462 {
entry:
  %pre = alloca [257 x i8], align 1
  %rnd = alloca [32 x i8], align 1
    #dbg_value(ptr %sig, !465, !DIExpression(), !466)
    #dbg_value(ptr %siglen, !467, !DIExpression(), !466)
    #dbg_value(ptr %m, !468, !DIExpression(), !466)
    #dbg_value(i32 %mlen, !469, !DIExpression(), !466)
    #dbg_value(ptr %ctx, !470, !DIExpression(), !466)
    #dbg_value(i32 %ctxlen, !471, !DIExpression(), !466)
    #dbg_value(ptr %sk, !472, !DIExpression(), !466)
    #dbg_declare(ptr %pre, !473, !DIExpression(), !477)
    #dbg_declare(ptr %rnd, !478, !DIExpression(), !482)
  %cmp = icmp ugt i32 %ctxlen, 255, !dbg !483
  br i1 %cmp, label %return, label %if.end, !dbg !483

if.end:                                           ; preds = %entry
  store i8 0, ptr %pre, align 1, !dbg !485
  %conv = trunc nuw i32 %ctxlen to i8, !dbg !486
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %pre, i32 1, !dbg !487
  store i8 %conv, ptr %arrayidx1, align 1, !dbg !488
    #dbg_value(i32 0, !489, !DIExpression(), !466)
  br label %for.cond, !dbg !490

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ], !dbg !492
    #dbg_value(i32 %i.0, !489, !DIExpression(), !466)
  %exitcond = icmp ne i32 %i.0, %ctxlen, !dbg !493
  br i1 %exitcond, label %for.body, label %for.end, !dbg !495

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %ctx, i32 %i.0, !dbg !496
  %0 = load i8, ptr %arrayidx4, align 1, !dbg !496
  %add = add nuw nsw i32 %i.0, 2, !dbg !497
  %arrayidx5 = getelementptr inbounds nuw [257 x i8], ptr %pre, i32 0, i32 %add, !dbg !498
  store i8 %0, ptr %arrayidx5, align 1, !dbg !499
  %inc = add nuw i32 %i.0, 1, !dbg !500
    #dbg_value(i32 %inc, !489, !DIExpression(), !466)
  br label %for.cond, !dbg !501, !llvm.loop !502

for.end:                                          ; preds = %for.cond
  call void @randombytes(ptr noundef nonnull %rnd, i32 noundef 32) #4, !dbg !504
  %add7 = add nuw nsw i32 %ctxlen, 2, !dbg !505
  %call = call i32 @pqcrystals_dilithium3_ref_signature_internal(ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef nonnull %pre, i32 noundef %add7, ptr noundef nonnull %rnd, ptr noundef %sk) #4, !dbg !506
  br label %return, !dbg !507

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %entry ], !dbg !466
  ret i32 %retval.0, !dbg !508
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium3_ref(ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %sk) local_unnamed_addr #0 !dbg !509 {
entry:
    #dbg_value(ptr %sm, !510, !DIExpression(), !511)
    #dbg_value(ptr %smlen, !512, !DIExpression(), !511)
    #dbg_value(ptr %m, !513, !DIExpression(), !511)
    #dbg_value(i32 %mlen, !514, !DIExpression(), !511)
    #dbg_value(ptr %ctx, !515, !DIExpression(), !511)
    #dbg_value(i32 %ctxlen, !516, !DIExpression(), !511)
    #dbg_value(ptr %sk, !517, !DIExpression(), !511)
    #dbg_value(i32 0, !518, !DIExpression(), !511)
  br label %for.cond, !dbg !519

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !521
    #dbg_value(i32 %i.0, !518, !DIExpression(), !511)
  %exitcond = icmp ne i32 %i.0, %mlen, !dbg !522
  br i1 %exitcond, label %for.body, label %for.end, !dbg !524

for.body:                                         ; preds = %for.cond
  %0 = xor i32 %i.0, -1, !dbg !525
  %1 = getelementptr i8, ptr %m, i32 %mlen, !dbg !526
  %arrayidx = getelementptr i8, ptr %1, i32 %0, !dbg !526
  %2 = load i8, ptr %arrayidx, align 1, !dbg !526
  %sub2 = add i32 %mlen, 3308, !dbg !527
  %sub3 = sub i32 %sub2, %i.0, !dbg !528
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %sm, i32 %sub3, !dbg !529
  store i8 %2, ptr %arrayidx4, align 1, !dbg !530
  %inc = add i32 %i.0, 1, !dbg !531
    #dbg_value(i32 %inc, !518, !DIExpression(), !511)
  br label %for.cond, !dbg !532, !llvm.loop !533

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 3309, !dbg !535
  %call = call i32 @pqcrystals_dilithium3_ref_signature(ptr noundef %sm, ptr noundef %smlen, ptr noundef nonnull %add.ptr, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %sk) #4, !dbg !536
    #dbg_value(i32 %call, !537, !DIExpression(), !511)
  %3 = load i32, ptr %smlen, align 4, !dbg !538
  %add5 = add i32 %3, %mlen, !dbg !538
  store i32 %add5, ptr %smlen, align 4, !dbg !538
  ret i32 %call, !dbg !539
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium3_ref_verify_internal(ptr noundef %sig, i32 noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %pre, i32 noundef %prelen, ptr noundef %pk) local_unnamed_addr #0 !dbg !540 {
entry:
  %buf = alloca [768 x i8], align 1
  %rho = alloca [32 x i8], align 1
  %mu = alloca [64 x i8], align 1
  %c = alloca [48 x i8], align 1
  %c2 = alloca [48 x i8], align 1
  %cp = alloca [256 x i32], align 4
  %mat = alloca [6 x [5 x [256 x i32]]], align 4
  %z = alloca [5 x [256 x i32]], align 4
  %t1 = alloca [6 x [256 x i32]], align 4
  %w1 = alloca [6 x [256 x i32]], align 4
  %h = alloca [6 x [256 x i32]], align 4
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %sig, !543, !DIExpression(), !544)
    #dbg_value(i32 %siglen, !545, !DIExpression(), !544)
    #dbg_value(ptr %m, !546, !DIExpression(), !544)
    #dbg_value(i32 %mlen, !547, !DIExpression(), !544)
    #dbg_value(ptr %pre, !548, !DIExpression(), !544)
    #dbg_value(i32 %prelen, !549, !DIExpression(), !544)
    #dbg_value(ptr %pk, !550, !DIExpression(), !544)
    #dbg_declare(ptr %buf, !551, !DIExpression(), !555)
    #dbg_declare(ptr %rho, !556, !DIExpression(), !557)
    #dbg_declare(ptr %mu, !558, !DIExpression(), !559)
    #dbg_declare(ptr %c, !560, !DIExpression(), !564)
    #dbg_declare(ptr %c2, !565, !DIExpression(), !566)
    #dbg_declare(ptr %cp, !567, !DIExpression(), !568)
    #dbg_declare(ptr %mat, !569, !DIExpression(), !570)
    #dbg_declare(ptr %z, !571, !DIExpression(), !572)
    #dbg_declare(ptr %t1, !573, !DIExpression(), !574)
    #dbg_declare(ptr %w1, !575, !DIExpression(), !576)
    #dbg_declare(ptr %h, !577, !DIExpression(), !578)
    #dbg_declare(ptr %state, !579, !DIExpression(), !580)
  %cmp.not = icmp eq i32 %siglen, 3309, !dbg !581
  br i1 %cmp.not, label %if.end, label %return, !dbg !581

if.end:                                           ; preds = %entry
  call void @pqcrystals_dilithium3_ref_unpack_pk(ptr noundef nonnull %rho, ptr noundef nonnull %t1, ptr noundef %pk) #4, !dbg !583
  %call = call i32 @pqcrystals_dilithium3_ref_unpack_sig(ptr noundef nonnull %c, ptr noundef nonnull %z, ptr noundef nonnull %h, ptr noundef %sig) #4, !dbg !584
  %tobool.not = icmp eq i32 %call, 0, !dbg !584
  br i1 %tobool.not, label %if.end3, label %return, !dbg !584

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @pqcrystals_dilithium3_ref_polyvecl_chknorm(ptr noundef nonnull %z, i32 noundef 524092) #4, !dbg !586
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !586
  br i1 %tobool5.not, label %if.end7, label %return, !dbg !586

if.end7:                                          ; preds = %if.end3
  call void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef nonnull %mu, i32 noundef 64, ptr noundef %pk, i32 noundef 1952) #4, !dbg !588
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !589
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %mu, i32 noundef 64) #4, !dbg !590
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %pre, i32 noundef %prelen) #4, !dbg !591
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %m, i32 noundef %mlen) #4, !dbg !592
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !593
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef nonnull %mu, i32 noundef 64, ptr noundef nonnull %state) #4, !dbg !594
  call void @pqcrystals_dilithium3_ref_poly_challenge(ptr noundef nonnull %cp, ptr noundef nonnull %c) #4, !dbg !595
  call void @pqcrystals_dilithium3_ref_polyvec_matrix_expand(ptr noundef nonnull %mat, ptr noundef nonnull %rho) #4, !dbg !596
  call void @pqcrystals_dilithium3_ref_polyvecl_ntt(ptr noundef nonnull %z) #4, !dbg !597
  call void @pqcrystals_dilithium3_ref_polyvec_matrix_pointwise_montgomery(ptr noundef nonnull %w1, ptr noundef nonnull %mat, ptr noundef nonnull %z) #4, !dbg !598
  call void @pqcrystals_dilithium3_ref_poly_ntt(ptr noundef nonnull %cp) #4, !dbg !599
  call void @pqcrystals_dilithium3_ref_polyveck_shiftl(ptr noundef nonnull %t1) #4, !dbg !600
  call void @pqcrystals_dilithium3_ref_polyveck_ntt(ptr noundef nonnull %t1) #4, !dbg !601
  call void @pqcrystals_dilithium3_ref_polyveck_pointwise_poly_montgomery(ptr noundef nonnull %t1, ptr noundef nonnull %cp, ptr noundef nonnull %t1) #4, !dbg !602
  call void @pqcrystals_dilithium3_ref_polyveck_sub(ptr noundef nonnull %w1, ptr noundef nonnull %w1, ptr noundef nonnull %t1) #4, !dbg !603
  call void @pqcrystals_dilithium3_ref_polyveck_reduce(ptr noundef nonnull %w1) #4, !dbg !604
  call void @pqcrystals_dilithium3_ref_polyveck_invntt_tomont(ptr noundef nonnull %w1) #4, !dbg !605
  call void @pqcrystals_dilithium3_ref_polyveck_caddq(ptr noundef nonnull %w1) #4, !dbg !606
  call void @pqcrystals_dilithium3_ref_polyveck_use_hint(ptr noundef nonnull %w1, ptr noundef nonnull %w1, ptr noundef nonnull %h) #4, !dbg !607
  call void @pqcrystals_dilithium3_ref_polyveck_pack_w1(ptr noundef nonnull %buf, ptr noundef nonnull %w1) #4, !dbg !608
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !609
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %mu, i32 noundef 64) #4, !dbg !610
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %buf, i32 noundef 768) #4, !dbg !611
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !612
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef nonnull %c2, i32 noundef 48, ptr noundef nonnull %state) #4, !dbg !613
    #dbg_value(i32 0, !614, !DIExpression(), !544)
  br label %for.cond, !dbg !615

for.cond:                                         ; preds = %for.inc, %if.end7
  %i.0 = phi i32 [ 0, %if.end7 ], [ %inc, %for.inc ], !dbg !617
    #dbg_value(i32 %i.0, !614, !DIExpression(), !544)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !618
  br i1 %exitcond, label %for.body, label %return.loopexit, !dbg !620

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [48 x i8], ptr %c, i32 0, i32 %i.0, !dbg !621
  %0 = load i8, ptr %arrayidx, align 1, !dbg !621
  %arrayidx20 = getelementptr inbounds nuw [48 x i8], ptr %c2, i32 0, i32 %i.0, !dbg !623
  %1 = load i8, ptr %arrayidx20, align 1, !dbg !623
  %cmp22.not = icmp eq i8 %0, %1, !dbg !624
  br i1 %cmp22.not, label %for.inc, label %return.loopexit, !dbg !624

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !625
    #dbg_value(i32 %inc, !614, !DIExpression(), !544)
  br label %for.cond, !dbg !626, !llvm.loop !627

return.loopexit:                                  ; preds = %for.body, %for.cond
  %retval.0.ph = phi i32 [ 0, %for.cond ], [ -1, %for.body ]
  br label %return, !dbg !629

return:                                           ; preds = %return.loopexit, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end3 ], [ %retval.0.ph, %return.loopexit ], !dbg !544
  ret i32 %retval.0, !dbg !629
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium3_ref_verify(ptr noundef %sig, i32 noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !630 {
entry:
  %pre = alloca [257 x i8], align 1
    #dbg_value(ptr %sig, !631, !DIExpression(), !632)
    #dbg_value(i32 %siglen, !633, !DIExpression(), !632)
    #dbg_value(ptr %m, !634, !DIExpression(), !632)
    #dbg_value(i32 %mlen, !635, !DIExpression(), !632)
    #dbg_value(ptr %ctx, !636, !DIExpression(), !632)
    #dbg_value(i32 %ctxlen, !637, !DIExpression(), !632)
    #dbg_value(ptr %pk, !638, !DIExpression(), !632)
    #dbg_declare(ptr %pre, !639, !DIExpression(), !640)
  %cmp = icmp ugt i32 %ctxlen, 255, !dbg !641
  br i1 %cmp, label %return, label %if.end, !dbg !641

if.end:                                           ; preds = %entry
  store i8 0, ptr %pre, align 1, !dbg !643
  %conv = trunc nuw i32 %ctxlen to i8, !dbg !644
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %pre, i32 1, !dbg !645
  store i8 %conv, ptr %arrayidx1, align 1, !dbg !646
    #dbg_value(i32 0, !647, !DIExpression(), !632)
  br label %for.cond, !dbg !648

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ], !dbg !650
    #dbg_value(i32 %i.0, !647, !DIExpression(), !632)
  %exitcond = icmp ne i32 %i.0, %ctxlen, !dbg !651
  br i1 %exitcond, label %for.body, label %for.end, !dbg !653

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %ctx, i32 %i.0, !dbg !654
  %0 = load i8, ptr %arrayidx4, align 1, !dbg !654
  %add = add nuw nsw i32 %i.0, 2, !dbg !655
  %arrayidx5 = getelementptr inbounds nuw [257 x i8], ptr %pre, i32 0, i32 %add, !dbg !656
  store i8 %0, ptr %arrayidx5, align 1, !dbg !657
  %inc = add nuw i32 %i.0, 1, !dbg !658
    #dbg_value(i32 %inc, !647, !DIExpression(), !632)
  br label %for.cond, !dbg !659, !llvm.loop !660

for.end:                                          ; preds = %for.cond
  %add6 = add nuw nsw i32 %ctxlen, 2, !dbg !662
  %call = call i32 @pqcrystals_dilithium3_ref_verify_internal(ptr noundef %sig, i32 noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef nonnull %pre, i32 noundef %add6, ptr noundef %pk) #4, !dbg !663
  br label %return, !dbg !664

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %call, %for.end ], [ -1, %entry ], !dbg !632
  ret i32 %retval.0, !dbg !665
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium3_ref_open(ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !666 {
entry:
    #dbg_value(ptr %m, !667, !DIExpression(), !668)
    #dbg_value(ptr %mlen, !669, !DIExpression(), !668)
    #dbg_value(ptr %sm, !670, !DIExpression(), !668)
    #dbg_value(i32 %smlen, !671, !DIExpression(), !668)
    #dbg_value(ptr %ctx, !672, !DIExpression(), !668)
    #dbg_value(i32 %ctxlen, !673, !DIExpression(), !668)
    #dbg_value(ptr %pk, !674, !DIExpression(), !668)
  %cmp = icmp ult i32 %smlen, 3309, !dbg !675
  br i1 %cmp, label %badsig, label %if.end, !dbg !675

if.end:                                           ; preds = %entry
  %sub = add i32 %smlen, -3309, !dbg !677
  store i32 %sub, ptr %mlen, align 4, !dbg !678
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 3309, !dbg !679
  %call = call i32 @pqcrystals_dilithium3_ref_verify(ptr noundef %sm, i32 noundef 3309, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %pk) #4, !dbg !681
  %tobool.not = icmp eq i32 %call, 0, !dbg !681
  br i1 %tobool.not, label %for.cond.preheader, label %badsig, !dbg !681

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !682

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !685
    #dbg_value(i32 %i.0, !686, !DIExpression(), !668)
  %0 = load i32, ptr %mlen, align 4, !dbg !687
  %cmp2 = icmp ult i32 %i.0, %0, !dbg !689
  br i1 %cmp2, label %for.body, label %return.loopexit1, !dbg !682

for.body:                                         ; preds = %for.cond
  %1 = getelementptr i8, ptr %sm, i32 %i.0, !dbg !690
  %arrayidx = getelementptr i8, ptr %1, i32 3309, !dbg !690
  %2 = load i8, ptr %arrayidx, align 1, !dbg !690
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !691
  store i8 %2, ptr %arrayidx3, align 1, !dbg !692
  %inc = add nuw i32 %i.0, 1, !dbg !693
    #dbg_value(i32 %inc, !686, !DIExpression(), !668)
  br label %for.cond, !dbg !694, !llvm.loop !695

badsig:                                           ; preds = %if.end, %entry
    #dbg_label(!697, !698)
  store i32 0, ptr %mlen, align 4, !dbg !699
    #dbg_value(i32 0, !686, !DIExpression(), !668)
  br label %for.cond4, !dbg !700

for.cond4:                                        ; preds = %for.body6, %badsig
  %i.1 = phi i32 [ 0, %badsig ], [ %inc9, %for.body6 ], !dbg !702
    #dbg_value(i32 %i.1, !686, !DIExpression(), !668)
  %exitcond = icmp ne i32 %i.1, %smlen, !dbg !703
  br i1 %exitcond, label %for.body6, label %return.loopexit, !dbg !705

for.body6:                                        ; preds = %for.cond4
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m, i32 %i.1, !dbg !706
  store i8 0, ptr %arrayidx7, align 1, !dbg !707
  %inc9 = add i32 %i.1, 1, !dbg !708
    #dbg_value(i32 %inc9, !686, !DIExpression(), !668)
  br label %for.cond4, !dbg !709, !llvm.loop !710

return.loopexit:                                  ; preds = %for.cond4
  br label %return, !dbg !712

return.loopexit1:                                 ; preds = %for.cond
  br label %return, !dbg !712

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i32 [ -1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !668
  ret i32 %retval.0, !dbg !712
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyvec_matrix_expand(ptr noundef %mat, ptr noundef %rho) local_unnamed_addr #0 !dbg !713 {
entry:
    #dbg_value(ptr %mat, !718, !DIExpression(), !719)
    #dbg_value(ptr %rho, !720, !DIExpression(), !719)
    #dbg_value(i32 0, !721, !DIExpression(), !719)
  br label %for.cond, !dbg !722

for.cond:                                         ; preds = %for.inc5, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ], !dbg !724
    #dbg_value(i32 %i.0, !721, !DIExpression(), !719)
  %exitcond1 = icmp ne i32 %i.0, 6, !dbg !725
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end7, !dbg !727

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !728

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !730
    #dbg_value(i32 %j.0, !731, !DIExpression(), !719)
  %exitcond = icmp ne i32 %j.0, 5, !dbg !732
  br i1 %exitcond, label %for.body3, label %for.inc5, !dbg !728

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds nuw [5 x [256 x i32]], ptr %mat, i32 %i.0, i32 %j.0, !dbg !734
  %shl = shl nuw nsw i32 %i.0, 8, !dbg !735
  %add = or disjoint i32 %shl, %j.0, !dbg !736
  %conv = trunc nuw i32 %add to i16, !dbg !737
  call void @pqcrystals_dilithium3_ref_poly_uniform(ptr noundef %arrayidx4, ptr noundef %rho, i16 noundef zeroext %conv) #4, !dbg !738
  %inc = add nuw nsw i32 %j.0, 1, !dbg !739
    #dbg_value(i32 %inc, !731, !DIExpression(), !719)
  br label %for.cond1, !dbg !740, !llvm.loop !741

for.inc5:                                         ; preds = %for.cond1
  %inc6 = add nuw nsw i32 %i.0, 1, !dbg !743
    #dbg_value(i32 %inc6, !721, !DIExpression(), !719)
  br label %for.cond, !dbg !744, !llvm.loop !745

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !747
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyvec_matrix_pointwise_montgomery(ptr noundef %t, ptr noundef %mat, ptr noundef %v) local_unnamed_addr #0 !dbg !748 {
entry:
    #dbg_value(ptr %t, !754, !DIExpression(), !755)
    #dbg_value(ptr %mat, !756, !DIExpression(), !755)
    #dbg_value(ptr %v, !757, !DIExpression(), !755)
    #dbg_value(i32 0, !758, !DIExpression(), !755)
  br label %for.cond, !dbg !759

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !761
    #dbg_value(i32 %i.0, !758, !DIExpression(), !755)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !762
  br i1 %exitcond, label %for.body, label %for.end, !dbg !764

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %t, i32 0, i32 %i.0, !dbg !765
  %arrayidx1 = getelementptr inbounds nuw [5 x [256 x i32]], ptr %mat, i32 %i.0, !dbg !766
  call void @pqcrystals_dilithium3_ref_polyvecl_pointwise_acc_montgomery(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %v) #4, !dbg !767
  %inc = add nuw nsw i32 %i.0, 1, !dbg !768
    #dbg_value(i32 %inc, !758, !DIExpression(), !755)
  br label %for.cond, !dbg !769, !llvm.loop !770

for.end:                                          ; preds = %for.cond
  ret void, !dbg !772
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyvecl_pointwise_acc_montgomery(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !773 {
entry:
  %t = alloca [256 x i32], align 4
    #dbg_value(ptr %w, !777, !DIExpression(), !778)
    #dbg_value(ptr %u, !779, !DIExpression(), !778)
    #dbg_value(ptr %v, !780, !DIExpression(), !778)
    #dbg_declare(ptr %t, !781, !DIExpression(), !782)
  call void @pqcrystals_dilithium3_ref_poly_pointwise_montgomery(ptr noundef %w, ptr noundef %u, ptr noundef %v) #4, !dbg !783
    #dbg_value(i32 1, !784, !DIExpression(), !778)
  br label %for.cond, !dbg !785

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ], !dbg !787
    #dbg_value(i32 %i.0, !784, !DIExpression(), !778)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !788
  br i1 %exitcond, label %for.body, label %for.end, !dbg !790

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw [5 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !791
  %arrayidx3 = getelementptr inbounds nuw [5 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !793
  call void @pqcrystals_dilithium3_ref_poly_pointwise_montgomery(ptr noundef nonnull %t, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx3) #4, !dbg !794
  call void @pqcrystals_dilithium3_ref_poly_add(ptr noundef %w, ptr noundef %w, ptr noundef nonnull %t) #4, !dbg !795
  %inc = add nuw nsw i32 %i.0, 1, !dbg !796
    #dbg_value(i32 %inc, !784, !DIExpression(), !778)
  br label %for.cond, !dbg !797, !llvm.loop !798

for.end:                                          ; preds = %for.cond
  ret void, !dbg !800
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyvecl_uniform_eta(ptr noundef %v, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !801 {
entry:
    #dbg_value(ptr %v, !804, !DIExpression(), !805)
    #dbg_value(ptr %seed, !806, !DIExpression(), !805)
    #dbg_value(i16 %nonce, !807, !DIExpression(), !805)
    #dbg_value(i32 0, !808, !DIExpression(), !805)
  br label %for.cond, !dbg !809

for.cond:                                         ; preds = %for.body, %entry
  %nonce.addr.0 = phi i16 [ %nonce, %entry ], [ %inc, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc1, %for.body ], !dbg !811
    #dbg_value(i32 %i.0, !808, !DIExpression(), !805)
    #dbg_value(i16 %nonce.addr.0, !807, !DIExpression(), !805)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !812
  br i1 %exitcond, label %for.body, label %for.end, !dbg !814

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [5 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !815
    #dbg_value(i16 %nonce.addr.0, !807, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !805)
  call void @pqcrystals_dilithium3_ref_poly_uniform_eta(ptr noundef %arrayidx, ptr noundef %seed, i16 noundef zeroext %nonce.addr.0) #4, !dbg !816
  %inc = add i16 %nonce.addr.0, 1, !dbg !817
    #dbg_value(i16 %inc, !807, !DIExpression(), !805)
  %inc1 = add nuw nsw i32 %i.0, 1, !dbg !818
    #dbg_value(i32 %inc1, !808, !DIExpression(), !805)
  br label %for.cond, !dbg !819, !llvm.loop !820

for.end:                                          ; preds = %for.cond
  ret void, !dbg !822
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyvecl_uniform_gamma1(ptr noundef %v, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !823 {
entry:
    #dbg_value(ptr %v, !824, !DIExpression(), !825)
    #dbg_value(ptr %seed, !826, !DIExpression(), !825)
    #dbg_value(i16 %nonce, !827, !DIExpression(), !825)
    #dbg_value(i32 0, !828, !DIExpression(), !825)
  br label %for.cond, !dbg !829

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !831
    #dbg_value(i32 %i.0, !828, !DIExpression(), !825)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !832
  br i1 %exitcond, label %for.body, label %for.end, !dbg !834

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [5 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !835
  %conv = zext i16 %nonce to i32, !dbg !836
  %mul = mul nuw nsw i32 %conv, 5, !dbg !837
  %add = add nuw nsw i32 %mul, %i.0, !dbg !838
  %conv1 = trunc i32 %add to i16, !dbg !839
  call void @pqcrystals_dilithium3_ref_poly_uniform_gamma1(ptr noundef %arrayidx, ptr noundef %seed, i16 noundef zeroext %conv1) #4, !dbg !840
  %inc = add nuw nsw i32 %i.0, 1, !dbg !841
    #dbg_value(i32 %inc, !828, !DIExpression(), !825)
  br label %for.cond, !dbg !842, !llvm.loop !843

for.end:                                          ; preds = %for.cond
  ret void, !dbg !845
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyvecl_reduce(ptr noundef %v) local_unnamed_addr #0 !dbg !846 {
entry:
    #dbg_value(ptr %v, !849, !DIExpression(), !850)
    #dbg_value(i32 0, !851, !DIExpression(), !850)
  br label %for.cond, !dbg !852

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !854
    #dbg_value(i32 %i.0, !851, !DIExpression(), !850)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !855
  br i1 %exitcond, label %for.body, label %for.end, !dbg !857

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [5 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !858
  call void @pqcrystals_dilithium3_ref_poly_reduce(ptr noundef %arrayidx) #4, !dbg !859
  %inc = add nuw nsw i32 %i.0, 1, !dbg !860
    #dbg_value(i32 %inc, !851, !DIExpression(), !850)
  br label %for.cond, !dbg !861, !llvm.loop !862

for.end:                                          ; preds = %for.cond
  ret void, !dbg !864
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyvecl_add(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !865 {
entry:
    #dbg_value(ptr %w, !868, !DIExpression(), !869)
    #dbg_value(ptr %u, !870, !DIExpression(), !869)
    #dbg_value(ptr %v, !871, !DIExpression(), !869)
    #dbg_value(i32 0, !872, !DIExpression(), !869)
  br label %for.cond, !dbg !873

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !875
    #dbg_value(i32 %i.0, !872, !DIExpression(), !869)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !876
  br i1 %exitcond, label %for.body, label %for.end, !dbg !878

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [5 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !879
  %arrayidx1 = getelementptr inbounds nuw [5 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !880
  %arrayidx2 = getelementptr inbounds nuw [5 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !881
  call void @pqcrystals_dilithium3_ref_poly_add(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !882
  %inc = add nuw nsw i32 %i.0, 1, !dbg !883
    #dbg_value(i32 %inc, !872, !DIExpression(), !869)
  br label %for.cond, !dbg !884, !llvm.loop !885

for.end:                                          ; preds = %for.cond
  ret void, !dbg !887
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyvecl_ntt(ptr noundef %v) local_unnamed_addr #0 !dbg !888 {
entry:
    #dbg_value(ptr %v, !889, !DIExpression(), !890)
    #dbg_value(i32 0, !891, !DIExpression(), !890)
  br label %for.cond, !dbg !892

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !894
    #dbg_value(i32 %i.0, !891, !DIExpression(), !890)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !895
  br i1 %exitcond, label %for.body, label %for.end, !dbg !897

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [5 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !898
  call void @pqcrystals_dilithium3_ref_poly_ntt(ptr noundef %arrayidx) #4, !dbg !899
  %inc = add nuw nsw i32 %i.0, 1, !dbg !900
    #dbg_value(i32 %inc, !891, !DIExpression(), !890)
  br label %for.cond, !dbg !901, !llvm.loop !902

for.end:                                          ; preds = %for.cond
  ret void, !dbg !904
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyvecl_invntt_tomont(ptr noundef %v) local_unnamed_addr #0 !dbg !905 {
entry:
    #dbg_value(ptr %v, !906, !DIExpression(), !907)
    #dbg_value(i32 0, !908, !DIExpression(), !907)
  br label %for.cond, !dbg !909

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !911
    #dbg_value(i32 %i.0, !908, !DIExpression(), !907)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !912
  br i1 %exitcond, label %for.body, label %for.end, !dbg !914

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [5 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !915
  call void @pqcrystals_dilithium3_ref_poly_invntt_tomont(ptr noundef %arrayidx) #4, !dbg !916
  %inc = add nuw nsw i32 %i.0, 1, !dbg !917
    #dbg_value(i32 %inc, !908, !DIExpression(), !907)
  br label %for.cond, !dbg !918, !llvm.loop !919

for.end:                                          ; preds = %for.cond
  ret void, !dbg !921
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyvecl_pointwise_poly_montgomery(ptr noundef %r, ptr noundef %a, ptr noundef %v) local_unnamed_addr #0 !dbg !922 {
entry:
    #dbg_value(ptr %r, !927, !DIExpression(), !928)
    #dbg_value(ptr %a, !929, !DIExpression(), !928)
    #dbg_value(ptr %v, !930, !DIExpression(), !928)
    #dbg_value(i32 0, !931, !DIExpression(), !928)
  br label %for.cond, !dbg !932

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !934
    #dbg_value(i32 %i.0, !931, !DIExpression(), !928)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !935
  br i1 %exitcond, label %for.body, label %for.end, !dbg !937

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [5 x [256 x i32]], ptr %r, i32 0, i32 %i.0, !dbg !938
  %arrayidx1 = getelementptr inbounds nuw [5 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !939
  call void @pqcrystals_dilithium3_ref_poly_pointwise_montgomery(ptr noundef %arrayidx, ptr noundef %a, ptr noundef %arrayidx1) #4, !dbg !940
  %inc = add nuw nsw i32 %i.0, 1, !dbg !941
    #dbg_value(i32 %inc, !931, !DIExpression(), !928)
  br label %for.cond, !dbg !942, !llvm.loop !943

for.end:                                          ; preds = %for.cond
  ret void, !dbg !945
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium3_ref_polyvecl_chknorm(ptr noundef %v, i32 noundef %bound) local_unnamed_addr #0 !dbg !946 {
entry:
    #dbg_value(ptr %v, !949, !DIExpression(), !950)
    #dbg_value(i32 %bound, !951, !DIExpression(), !950)
    #dbg_value(i32 0, !952, !DIExpression(), !950)
  br label %for.cond, !dbg !953

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !955
    #dbg_value(i32 %i.0, !952, !DIExpression(), !950)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !956
  br i1 %exitcond, label %for.body, label %return, !dbg !958

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [5 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !959
  %call = call i32 @pqcrystals_dilithium3_ref_poly_chknorm(ptr noundef %arrayidx, i32 noundef %bound) #4, !dbg !961
  %tobool.not = icmp eq i32 %call, 0, !dbg !961
  br i1 %tobool.not, label %for.inc, label %return, !dbg !961

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !962
    #dbg_value(i32 %inc, !952, !DIExpression(), !950)
  br label %for.cond, !dbg !963, !llvm.loop !964

return:                                           ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 1, %for.body ], [ 0, %for.cond ], !dbg !950
  ret i32 %retval.0, !dbg !966
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_uniform_eta(ptr noundef %v, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !967 {
entry:
    #dbg_value(ptr %v, !970, !DIExpression(), !971)
    #dbg_value(ptr %seed, !972, !DIExpression(), !971)
    #dbg_value(i16 %nonce, !973, !DIExpression(), !971)
    #dbg_value(i32 0, !974, !DIExpression(), !971)
  br label %for.cond, !dbg !975

for.cond:                                         ; preds = %for.body, %entry
  %nonce.addr.0 = phi i16 [ %nonce, %entry ], [ %inc, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc1, %for.body ], !dbg !977
    #dbg_value(i32 %i.0, !974, !DIExpression(), !971)
    #dbg_value(i16 %nonce.addr.0, !973, !DIExpression(), !971)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !978
  br i1 %exitcond, label %for.body, label %for.end, !dbg !980

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !981
    #dbg_value(i16 %nonce.addr.0, !973, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !971)
  call void @pqcrystals_dilithium3_ref_poly_uniform_eta(ptr noundef %arrayidx, ptr noundef %seed, i16 noundef zeroext %nonce.addr.0) #4, !dbg !982
  %inc = add i16 %nonce.addr.0, 1, !dbg !983
    #dbg_value(i16 %inc, !973, !DIExpression(), !971)
  %inc1 = add nuw nsw i32 %i.0, 1, !dbg !984
    #dbg_value(i32 %inc1, !974, !DIExpression(), !971)
  br label %for.cond, !dbg !985, !llvm.loop !986

for.end:                                          ; preds = %for.cond
  ret void, !dbg !988
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_reduce(ptr noundef %v) local_unnamed_addr #0 !dbg !989 {
entry:
    #dbg_value(ptr %v, !992, !DIExpression(), !993)
    #dbg_value(i32 0, !994, !DIExpression(), !993)
  br label %for.cond, !dbg !995

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !997
    #dbg_value(i32 %i.0, !994, !DIExpression(), !993)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !998
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1000

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1001
  call void @pqcrystals_dilithium3_ref_poly_reduce(ptr noundef %arrayidx) #4, !dbg !1002
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1003
    #dbg_value(i32 %inc, !994, !DIExpression(), !993)
  br label %for.cond, !dbg !1004, !llvm.loop !1005

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1007
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_caddq(ptr noundef %v) local_unnamed_addr #0 !dbg !1008 {
entry:
    #dbg_value(ptr %v, !1009, !DIExpression(), !1010)
    #dbg_value(i32 0, !1011, !DIExpression(), !1010)
  br label %for.cond, !dbg !1012

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1014
    #dbg_value(i32 %i.0, !1011, !DIExpression(), !1010)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1015
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1017

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1018
  call void @pqcrystals_dilithium3_ref_poly_caddq(ptr noundef %arrayidx) #4, !dbg !1019
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1020
    #dbg_value(i32 %inc, !1011, !DIExpression(), !1010)
  br label %for.cond, !dbg !1021, !llvm.loop !1022

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1024
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_add(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !1025 {
entry:
    #dbg_value(ptr %w, !1030, !DIExpression(), !1031)
    #dbg_value(ptr %u, !1032, !DIExpression(), !1031)
    #dbg_value(ptr %v, !1033, !DIExpression(), !1031)
    #dbg_value(i32 0, !1034, !DIExpression(), !1031)
  br label %for.cond, !dbg !1035

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1037
    #dbg_value(i32 %i.0, !1034, !DIExpression(), !1031)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1038
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1040

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !1041
  %arrayidx1 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !1042
  %arrayidx2 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1043
  call void @pqcrystals_dilithium3_ref_poly_add(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1044
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1045
    #dbg_value(i32 %inc, !1034, !DIExpression(), !1031)
  br label %for.cond, !dbg !1046, !llvm.loop !1047

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1049
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_sub(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !1050 {
entry:
    #dbg_value(ptr %w, !1051, !DIExpression(), !1052)
    #dbg_value(ptr %u, !1053, !DIExpression(), !1052)
    #dbg_value(ptr %v, !1054, !DIExpression(), !1052)
    #dbg_value(i32 0, !1055, !DIExpression(), !1052)
  br label %for.cond, !dbg !1056

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1058
    #dbg_value(i32 %i.0, !1055, !DIExpression(), !1052)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1059
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1061

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !1062
  %arrayidx1 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !1063
  %arrayidx2 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1064
  call void @pqcrystals_dilithium3_ref_poly_sub(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1065
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1066
    #dbg_value(i32 %inc, !1055, !DIExpression(), !1052)
  br label %for.cond, !dbg !1067, !llvm.loop !1068

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1070
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_shiftl(ptr noundef %v) local_unnamed_addr #0 !dbg !1071 {
entry:
    #dbg_value(ptr %v, !1072, !DIExpression(), !1073)
    #dbg_value(i32 0, !1074, !DIExpression(), !1073)
  br label %for.cond, !dbg !1075

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1077
    #dbg_value(i32 %i.0, !1074, !DIExpression(), !1073)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1078
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1080

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1081
  call void @pqcrystals_dilithium3_ref_poly_shiftl(ptr noundef %arrayidx) #4, !dbg !1082
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1083
    #dbg_value(i32 %inc, !1074, !DIExpression(), !1073)
  br label %for.cond, !dbg !1084, !llvm.loop !1085

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1087
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_ntt(ptr noundef %v) local_unnamed_addr #0 !dbg !1088 {
entry:
    #dbg_value(ptr %v, !1089, !DIExpression(), !1090)
    #dbg_value(i32 0, !1091, !DIExpression(), !1090)
  br label %for.cond, !dbg !1092

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1094
    #dbg_value(i32 %i.0, !1091, !DIExpression(), !1090)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1095
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1097

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1098
  call void @pqcrystals_dilithium3_ref_poly_ntt(ptr noundef %arrayidx) #4, !dbg !1099
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1100
    #dbg_value(i32 %inc, !1091, !DIExpression(), !1090)
  br label %for.cond, !dbg !1101, !llvm.loop !1102

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1104
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_invntt_tomont(ptr noundef %v) local_unnamed_addr #0 !dbg !1105 {
entry:
    #dbg_value(ptr %v, !1106, !DIExpression(), !1107)
    #dbg_value(i32 0, !1108, !DIExpression(), !1107)
  br label %for.cond, !dbg !1109

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1111
    #dbg_value(i32 %i.0, !1108, !DIExpression(), !1107)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1112
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1114

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1115
  call void @pqcrystals_dilithium3_ref_poly_invntt_tomont(ptr noundef %arrayidx) #4, !dbg !1116
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1117
    #dbg_value(i32 %inc, !1108, !DIExpression(), !1107)
  br label %for.cond, !dbg !1118, !llvm.loop !1119

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1121
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_pointwise_poly_montgomery(ptr noundef %r, ptr noundef %a, ptr noundef %v) local_unnamed_addr #0 !dbg !1122 {
entry:
    #dbg_value(ptr %r, !1125, !DIExpression(), !1126)
    #dbg_value(ptr %a, !1127, !DIExpression(), !1126)
    #dbg_value(ptr %v, !1128, !DIExpression(), !1126)
    #dbg_value(i32 0, !1129, !DIExpression(), !1126)
  br label %for.cond, !dbg !1130

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1132
    #dbg_value(i32 %i.0, !1129, !DIExpression(), !1126)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1133
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1135

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %r, i32 0, i32 %i.0, !dbg !1136
  %arrayidx1 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1137
  call void @pqcrystals_dilithium3_ref_poly_pointwise_montgomery(ptr noundef %arrayidx, ptr noundef %a, ptr noundef %arrayidx1) #4, !dbg !1138
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1139
    #dbg_value(i32 %inc, !1129, !DIExpression(), !1126)
  br label %for.cond, !dbg !1140, !llvm.loop !1141

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1143
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium3_ref_polyveck_chknorm(ptr noundef %v, i32 noundef %bound) local_unnamed_addr #0 !dbg !1144 {
entry:
    #dbg_value(ptr %v, !1147, !DIExpression(), !1148)
    #dbg_value(i32 %bound, !1149, !DIExpression(), !1148)
    #dbg_value(i32 0, !1150, !DIExpression(), !1148)
  br label %for.cond, !dbg !1151

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1153
    #dbg_value(i32 %i.0, !1150, !DIExpression(), !1148)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1154
  br i1 %exitcond, label %for.body, label %return, !dbg !1156

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1157
  %call = call i32 @pqcrystals_dilithium3_ref_poly_chknorm(ptr noundef %arrayidx, i32 noundef %bound) #4, !dbg !1159
  %tobool.not = icmp eq i32 %call, 0, !dbg !1159
  br i1 %tobool.not, label %for.inc, label %return, !dbg !1159

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1160
    #dbg_value(i32 %inc, !1150, !DIExpression(), !1148)
  br label %for.cond, !dbg !1161, !llvm.loop !1162

return:                                           ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 1, %for.body ], [ 0, %for.cond ], !dbg !1148
  ret i32 %retval.0, !dbg !1164
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_power2round(ptr noundef %v1, ptr noundef %v0, ptr noundef %v) local_unnamed_addr #0 !dbg !1165 {
entry:
    #dbg_value(ptr %v1, !1168, !DIExpression(), !1169)
    #dbg_value(ptr %v0, !1170, !DIExpression(), !1169)
    #dbg_value(ptr %v, !1171, !DIExpression(), !1169)
    #dbg_value(i32 0, !1172, !DIExpression(), !1169)
  br label %for.cond, !dbg !1173

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1175
    #dbg_value(i32 %i.0, !1172, !DIExpression(), !1169)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1176
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1178

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v1, i32 0, i32 %i.0, !dbg !1179
  %arrayidx1 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v0, i32 0, i32 %i.0, !dbg !1180
  %arrayidx2 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1181
  call void @pqcrystals_dilithium3_ref_poly_power2round(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1182
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1183
    #dbg_value(i32 %inc, !1172, !DIExpression(), !1169)
  br label %for.cond, !dbg !1184, !llvm.loop !1185

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1187
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_decompose(ptr noundef %v1, ptr noundef %v0, ptr noundef %v) local_unnamed_addr #0 !dbg !1188 {
entry:
    #dbg_value(ptr %v1, !1189, !DIExpression(), !1190)
    #dbg_value(ptr %v0, !1191, !DIExpression(), !1190)
    #dbg_value(ptr %v, !1192, !DIExpression(), !1190)
    #dbg_value(i32 0, !1193, !DIExpression(), !1190)
  br label %for.cond, !dbg !1194

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1196
    #dbg_value(i32 %i.0, !1193, !DIExpression(), !1190)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1197
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1199

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v1, i32 0, i32 %i.0, !dbg !1200
  %arrayidx1 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v0, i32 0, i32 %i.0, !dbg !1201
  %arrayidx2 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1202
  call void @pqcrystals_dilithium3_ref_poly_decompose(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1203
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1204
    #dbg_value(i32 %inc, !1193, !DIExpression(), !1190)
  br label %for.cond, !dbg !1205, !llvm.loop !1206

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1208
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium3_ref_polyveck_make_hint(ptr noundef %h, ptr noundef %v0, ptr noundef %v1) local_unnamed_addr #0 !dbg !1209 {
entry:
    #dbg_value(ptr %h, !1212, !DIExpression(), !1213)
    #dbg_value(ptr %v0, !1214, !DIExpression(), !1213)
    #dbg_value(ptr %v1, !1215, !DIExpression(), !1213)
    #dbg_value(i32 0, !1216, !DIExpression(), !1213)
    #dbg_value(i32 0, !1217, !DIExpression(), !1213)
  br label %for.cond, !dbg !1218

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1220
  %s.0 = phi i32 [ 0, %entry ], [ %add, %for.body ], !dbg !1213
    #dbg_value(i32 %s.0, !1216, !DIExpression(), !1213)
    #dbg_value(i32 %i.0, !1217, !DIExpression(), !1213)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1221
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1223

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %h, i32 0, i32 %i.0, !dbg !1224
  %arrayidx1 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v0, i32 0, i32 %i.0, !dbg !1225
  %arrayidx2 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %v1, i32 0, i32 %i.0, !dbg !1226
  %call = call i32 @pqcrystals_dilithium3_ref_poly_make_hint(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1227
    #dbg_value(!DIArgList(i32 %s.0, i32 %call), !1216, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1213)
  %add = add i32 %s.0, %call, !dbg !1228
    #dbg_value(i32 %add, !1216, !DIExpression(), !1213)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1229
    #dbg_value(i32 %inc, !1217, !DIExpression(), !1213)
  br label %for.cond, !dbg !1230, !llvm.loop !1231

for.end:                                          ; preds = %for.cond
  %s.0.lcssa = phi i32 [ %s.0, %for.cond ], !dbg !1213
  ret i32 %s.0.lcssa, !dbg !1233
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_use_hint(ptr noundef %w, ptr noundef %u, ptr noundef %h) local_unnamed_addr #0 !dbg !1234 {
entry:
    #dbg_value(ptr %w, !1235, !DIExpression(), !1236)
    #dbg_value(ptr %u, !1237, !DIExpression(), !1236)
    #dbg_value(ptr %h, !1238, !DIExpression(), !1236)
    #dbg_value(i32 0, !1239, !DIExpression(), !1236)
  br label %for.cond, !dbg !1240

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1242
    #dbg_value(i32 %i.0, !1239, !DIExpression(), !1236)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1243
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1245

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !1246
  %arrayidx1 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !1247
  %arrayidx2 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %h, i32 0, i32 %i.0, !dbg !1248
  call void @pqcrystals_dilithium3_ref_poly_use_hint(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1249
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1250
    #dbg_value(i32 %inc, !1239, !DIExpression(), !1236)
  br label %for.cond, !dbg !1251, !llvm.loop !1252

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1254
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyveck_pack_w1(ptr noundef %r, ptr noundef %w1) local_unnamed_addr #0 !dbg !1255 {
entry:
    #dbg_value(ptr %r, !1258, !DIExpression(), !1259)
    #dbg_value(ptr %w1, !1260, !DIExpression(), !1259)
    #dbg_value(i32 0, !1261, !DIExpression(), !1259)
  br label %for.cond, !dbg !1262

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1264
    #dbg_value(i32 %i.0, !1261, !DIExpression(), !1259)
  %exitcond = icmp ne i32 %i.0, 6, !dbg !1265
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1267

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 7, !dbg !1268
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %mul, !dbg !1269
  %arrayidx1 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %w1, i32 0, i32 %i.0, !dbg !1270
  call void @pqcrystals_dilithium3_ref_polyw1_pack(ptr noundef %arrayidx, ptr noundef %arrayidx1) #4, !dbg !1271
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1272
    #dbg_value(i32 %inc, !1261, !DIExpression(), !1259)
  br label %for.cond, !dbg !1273, !llvm.loop !1274

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1276
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_reduce(ptr noundef %a) local_unnamed_addr #0 !dbg !1277 {
entry:
    #dbg_value(ptr %a, !1281, !DIExpression(), !1282)
    #dbg_value(i32 0, !1283, !DIExpression(), !1282)
  br label %for.cond, !dbg !1284

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1286
    #dbg_value(i32 %i.0, !1283, !DIExpression(), !1282)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1287
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1289

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1290
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1290
  %call = call i32 @pqcrystals_dilithium3_ref_reduce32(i32 noundef %0) #4, !dbg !1291
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1292
  store i32 %call, ptr %arrayidx1, align 4, !dbg !1293
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1294
    #dbg_value(i32 %inc, !1283, !DIExpression(), !1282)
  br label %for.cond, !dbg !1295, !llvm.loop !1296

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1298
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_caddq(ptr noundef %a) local_unnamed_addr #0 !dbg !1299 {
entry:
    #dbg_value(ptr %a, !1300, !DIExpression(), !1301)
    #dbg_value(i32 0, !1302, !DIExpression(), !1301)
  br label %for.cond, !dbg !1303

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1305
    #dbg_value(i32 %i.0, !1302, !DIExpression(), !1301)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1306
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1308

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1309
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1309
  %call = call i32 @pqcrystals_dilithium3_ref_caddq(i32 noundef %0) #4, !dbg !1310
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1311
  store i32 %call, ptr %arrayidx1, align 4, !dbg !1312
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1313
    #dbg_value(i32 %inc, !1302, !DIExpression(), !1301)
  br label %for.cond, !dbg !1314, !llvm.loop !1315

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1317
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_add(ptr noundef %c, ptr noundef %a, ptr noundef %b) local_unnamed_addr #0 !dbg !1318 {
entry:
    #dbg_value(ptr %c, !1321, !DIExpression(), !1322)
    #dbg_value(ptr %a, !1323, !DIExpression(), !1322)
    #dbg_value(ptr %b, !1324, !DIExpression(), !1322)
    #dbg_value(i32 0, !1325, !DIExpression(), !1322)
  br label %for.cond, !dbg !1326

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1328
    #dbg_value(i32 %i.0, !1325, !DIExpression(), !1322)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1329
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1331

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1332
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1332
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1333
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1333
  %add = add nsw i32 %0, %1, !dbg !1334
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.0, !dbg !1335
  store i32 %add, ptr %arrayidx2, align 4, !dbg !1336
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1337
    #dbg_value(i32 %inc, !1325, !DIExpression(), !1322)
  br label %for.cond, !dbg !1338, !llvm.loop !1339

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1341
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_sub(ptr noundef %c, ptr noundef %a, ptr noundef %b) local_unnamed_addr #0 !dbg !1342 {
entry:
    #dbg_value(ptr %c, !1343, !DIExpression(), !1344)
    #dbg_value(ptr %a, !1345, !DIExpression(), !1344)
    #dbg_value(ptr %b, !1346, !DIExpression(), !1344)
    #dbg_value(i32 0, !1347, !DIExpression(), !1344)
  br label %for.cond, !dbg !1348

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1350
    #dbg_value(i32 %i.0, !1347, !DIExpression(), !1344)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1351
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1353

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1354
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1354
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1355
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1355
  %sub = sub nsw i32 %0, %1, !dbg !1356
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.0, !dbg !1357
  store i32 %sub, ptr %arrayidx2, align 4, !dbg !1358
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1359
    #dbg_value(i32 %inc, !1347, !DIExpression(), !1344)
  br label %for.cond, !dbg !1360, !llvm.loop !1361

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1363
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_shiftl(ptr noundef %a) local_unnamed_addr #0 !dbg !1364 {
entry:
    #dbg_value(ptr %a, !1365, !DIExpression(), !1366)
    #dbg_value(i32 0, !1367, !DIExpression(), !1366)
  br label %for.cond, !dbg !1368

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1370
    #dbg_value(i32 %i.0, !1367, !DIExpression(), !1366)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1371
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1373

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1374
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1375
  %shl = shl i32 %0, 13, !dbg !1375
  store i32 %shl, ptr %arrayidx, align 4, !dbg !1375
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1376
    #dbg_value(i32 %inc, !1367, !DIExpression(), !1366)
  br label %for.cond, !dbg !1377, !llvm.loop !1378

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1380
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_ntt(ptr noundef %a) local_unnamed_addr #0 !dbg !1381 {
entry:
    #dbg_value(ptr %a, !1382, !DIExpression(), !1383)
  call void @pqcrystals_dilithium3_ref_ntt(ptr noundef %a) #4, !dbg !1384
  ret void, !dbg !1385
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_invntt_tomont(ptr noundef %a) local_unnamed_addr #0 !dbg !1386 {
entry:
    #dbg_value(ptr %a, !1387, !DIExpression(), !1388)
  call void @pqcrystals_dilithium3_ref_invntt_tomont(ptr noundef %a) #4, !dbg !1389
  ret void, !dbg !1390
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_pointwise_montgomery(ptr noundef %c, ptr noundef %a, ptr noundef %b) local_unnamed_addr #0 !dbg !1391 {
entry:
    #dbg_value(ptr %c, !1392, !DIExpression(), !1393)
    #dbg_value(ptr %a, !1394, !DIExpression(), !1393)
    #dbg_value(ptr %b, !1395, !DIExpression(), !1393)
    #dbg_value(i32 0, !1396, !DIExpression(), !1393)
  br label %for.cond, !dbg !1397

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1399
    #dbg_value(i32 %i.0, !1396, !DIExpression(), !1393)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1400
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1402

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1403
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1403
  %conv = sext i32 %0 to i64, !dbg !1404
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1405
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1405
  %conv2 = sext i32 %1 to i64, !dbg !1405
  %mul = mul nsw i64 %conv, %conv2, !dbg !1406
  %call = call i32 @pqcrystals_dilithium3_ref_montgomery_reduce(i64 noundef %mul) #4, !dbg !1407
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.0, !dbg !1408
  store i32 %call, ptr %arrayidx3, align 4, !dbg !1409
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1410
    #dbg_value(i32 %inc, !1396, !DIExpression(), !1393)
  br label %for.cond, !dbg !1411, !llvm.loop !1412

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1414
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_power2round(ptr noundef %a1, ptr noundef %a0, ptr noundef %a) local_unnamed_addr #0 !dbg !1415 {
entry:
    #dbg_value(ptr %a1, !1418, !DIExpression(), !1419)
    #dbg_value(ptr %a0, !1420, !DIExpression(), !1419)
    #dbg_value(ptr %a, !1421, !DIExpression(), !1419)
    #dbg_value(i32 0, !1422, !DIExpression(), !1419)
  br label %for.cond, !dbg !1423

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1425
    #dbg_value(i32 %i.0, !1422, !DIExpression(), !1419)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1426
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1428

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a0, i32 0, i32 %i.0, !dbg !1429
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1430
  %0 = load i32, ptr %arrayidx1, align 4, !dbg !1430
  %call = call i32 @pqcrystals_dilithium3_ref_power2round(ptr noundef %arrayidx, i32 noundef %0) #4, !dbg !1431
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %a1, i32 0, i32 %i.0, !dbg !1432
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1433
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1434
    #dbg_value(i32 %inc, !1422, !DIExpression(), !1419)
  br label %for.cond, !dbg !1435, !llvm.loop !1436

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1438
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_decompose(ptr noundef %a1, ptr noundef %a0, ptr noundef %a) local_unnamed_addr #0 !dbg !1439 {
entry:
    #dbg_value(ptr %a1, !1440, !DIExpression(), !1441)
    #dbg_value(ptr %a0, !1442, !DIExpression(), !1441)
    #dbg_value(ptr %a, !1443, !DIExpression(), !1441)
    #dbg_value(i32 0, !1444, !DIExpression(), !1441)
  br label %for.cond, !dbg !1445

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1447
    #dbg_value(i32 %i.0, !1444, !DIExpression(), !1441)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1448
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1450

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a0, i32 0, i32 %i.0, !dbg !1451
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1452
  %0 = load i32, ptr %arrayidx1, align 4, !dbg !1452
  %call = call i32 @pqcrystals_dilithium3_ref_decompose(ptr noundef %arrayidx, i32 noundef %0) #4, !dbg !1453
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %a1, i32 0, i32 %i.0, !dbg !1454
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1455
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1456
    #dbg_value(i32 %inc, !1444, !DIExpression(), !1441)
  br label %for.cond, !dbg !1457, !llvm.loop !1458

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1460
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium3_ref_poly_make_hint(ptr noundef %h, ptr noundef %a0, ptr noundef %a1) local_unnamed_addr #0 !dbg !1461 {
entry:
    #dbg_value(ptr %h, !1464, !DIExpression(), !1465)
    #dbg_value(ptr %a0, !1466, !DIExpression(), !1465)
    #dbg_value(ptr %a1, !1467, !DIExpression(), !1465)
    #dbg_value(i32 0, !1468, !DIExpression(), !1465)
    #dbg_value(i32 0, !1469, !DIExpression(), !1465)
  br label %for.cond, !dbg !1470

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1472
  %s.0 = phi i32 [ 0, %entry ], [ %add, %for.body ], !dbg !1465
    #dbg_value(i32 %s.0, !1468, !DIExpression(), !1465)
    #dbg_value(i32 %i.0, !1469, !DIExpression(), !1465)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1473
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1475

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a0, i32 0, i32 %i.0, !dbg !1476
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1476
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a1, i32 0, i32 %i.0, !dbg !1478
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1478
  %call = call i32 @pqcrystals_dilithium3_ref_make_hint(i32 noundef %0, i32 noundef %1) #4, !dbg !1479
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %h, i32 0, i32 %i.0, !dbg !1480
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1481
    #dbg_value(!DIArgList(i32 %s.0, i32 %call), !1468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1465)
  %add = add i32 %s.0, %call, !dbg !1482
    #dbg_value(i32 %add, !1468, !DIExpression(), !1465)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1483
    #dbg_value(i32 %inc, !1469, !DIExpression(), !1465)
  br label %for.cond, !dbg !1484, !llvm.loop !1485

for.end:                                          ; preds = %for.cond
  %s.0.lcssa = phi i32 [ %s.0, %for.cond ], !dbg !1465
  ret i32 %s.0.lcssa, !dbg !1487
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_use_hint(ptr noundef %b, ptr noundef %a, ptr noundef %h) local_unnamed_addr #0 !dbg !1488 {
entry:
    #dbg_value(ptr %b, !1489, !DIExpression(), !1490)
    #dbg_value(ptr %a, !1491, !DIExpression(), !1490)
    #dbg_value(ptr %h, !1492, !DIExpression(), !1490)
    #dbg_value(i32 0, !1493, !DIExpression(), !1490)
  br label %for.cond, !dbg !1494

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1496
    #dbg_value(i32 %i.0, !1493, !DIExpression(), !1490)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1497
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1499

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1500
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1500
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %h, i32 0, i32 %i.0, !dbg !1501
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1501
  %call = call i32 @pqcrystals_dilithium3_ref_use_hint(i32 noundef %0, i32 noundef %1) #4, !dbg !1502
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1503
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1504
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1505
    #dbg_value(i32 %inc, !1493, !DIExpression(), !1490)
  br label %for.cond, !dbg !1506, !llvm.loop !1507

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1509
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium3_ref_poly_chknorm(ptr noundef %a, i32 noundef %B) local_unnamed_addr #0 !dbg !1510 {
entry:
    #dbg_value(ptr %a, !1513, !DIExpression(), !1514)
    #dbg_value(i32 %B, !1515, !DIExpression(), !1514)
  %cmp = icmp sgt i32 %B, 1047552, !dbg !1516
  br i1 %cmp, label %return, label %for.cond.preheader, !dbg !1516

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !1518

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !1520
    #dbg_value(i32 %i.0, !1521, !DIExpression(), !1514)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1522
  br i1 %exitcond, label %for.body, label %return.loopexit, !dbg !1518

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1524
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1524
    #dbg_value(i32 %0, !1526, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1514)
  %1 = call i32 @llvm.smin.i32(i32 %0, i32 0), !dbg !1527
  %and = shl i32 %1, 1, !dbg !1527
  %sub = sub nsw i32 %0, %and, !dbg !1528
    #dbg_value(i32 %sub, !1526, !DIExpression(), !1514)
  %cmp4.not = icmp slt i32 %sub, %B, !dbg !1529
  br i1 %cmp4.not, label %for.inc, label %return.loopexit, !dbg !1529

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1531
    #dbg_value(i32 %inc, !1521, !DIExpression(), !1514)
  br label %for.cond, !dbg !1532, !llvm.loop !1533

return.loopexit:                                  ; preds = %for.body, %for.cond
  %retval.0.ph = phi i32 [ 0, %for.cond ], [ 1, %for.body ]
  br label %return, !dbg !1535

return:                                           ; preds = %return.loopexit, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %retval.0.ph, %return.loopexit ], !dbg !1514
  ret i32 %retval.0, !dbg !1535
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_uniform(ptr noundef %a, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !1536 {
entry:
  %buf = alloca [842 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %a, !1539, !DIExpression(), !1540)
    #dbg_value(ptr %seed, !1541, !DIExpression(), !1540)
    #dbg_value(i16 %nonce, !1542, !DIExpression(), !1540)
    #dbg_value(i32 840, !1543, !DIExpression(), !1540)
    #dbg_declare(ptr %buf, !1544, !DIExpression(), !1548)
    #dbg_declare(ptr %state, !1549, !DIExpression(), !1552)
  call void @pqcrystals_dilithium3_ref_dilithium_shake128_stream_init(ptr noundef nonnull %state, ptr noundef %seed, i16 noundef zeroext %nonce) #4, !dbg !1553
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 5, ptr noundef nonnull %state) #4, !dbg !1554
  %call = call fastcc i32 @rej_uniform(ptr noundef %a, i32 noundef 256, ptr noundef nonnull %buf, i32 noundef 840) #4, !dbg !1555
    #dbg_value(i32 %call, !1556, !DIExpression(), !1540)
  br label %while.cond, !dbg !1557

while.cond:                                       ; preds = %for.end, %entry
  %ctr.0 = phi i32 [ %call, %entry ], [ %add12, %for.end ], !dbg !1540
  %buflen.0 = phi i32 [ 840, %entry ], [ %add6, %for.end ], !dbg !1540
    #dbg_value(i32 %buflen.0, !1543, !DIExpression(), !1540)
    #dbg_value(i32 %ctr.0, !1556, !DIExpression(), !1540)
  %cmp = icmp ult i32 %ctr.0, 256, !dbg !1558
  br i1 %cmp, label %while.body, label %while.end, !dbg !1557

while.body:                                       ; preds = %while.cond
  %rem = urem i32 %buflen.0, 3, !dbg !1559
    #dbg_value(i32 %rem, !1561, !DIExpression(), !1540)
    #dbg_value(i32 0, !1562, !DIExpression(), !1540)
  br label %for.cond, !dbg !1563

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !1565
    #dbg_value(i32 %i.0, !1562, !DIExpression(), !1540)
  %exitcond = icmp ne i32 %i.0, %rem, !dbg !1566
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1568

for.body:                                         ; preds = %for.cond
  %sub = sub nuw nsw i32 %buflen.0, %rem, !dbg !1569
  %add = add nuw nsw i32 %sub, %i.0, !dbg !1570
  %arrayidx = getelementptr inbounds nuw [842 x i8], ptr %buf, i32 0, i32 %add, !dbg !1571
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1571
  %arrayidx4 = getelementptr inbounds nuw [842 x i8], ptr %buf, i32 0, i32 %i.0, !dbg !1572
  store i8 %0, ptr %arrayidx4, align 1, !dbg !1573
  %inc = add nuw i32 %i.0, 1, !dbg !1574
    #dbg_value(i32 %inc, !1562, !DIExpression(), !1540)
  br label %for.cond, !dbg !1575, !llvm.loop !1576

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %buf, i32 %rem, !dbg !1578
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef nonnull %add.ptr, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1578
  %add6 = or disjoint i32 %rem, 168, !dbg !1579
    #dbg_value(i32 %add6, !1543, !DIExpression(), !1540)
  %add.ptr8 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1580
  %sub9 = sub nuw nsw i32 256, %ctr.0, !dbg !1581
  %call11 = call fastcc i32 @rej_uniform(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull %buf, i32 noundef %add6) #4, !dbg !1582
  %add12 = add i32 %ctr.0, %call11, !dbg !1583
    #dbg_value(i32 %add12, !1556, !DIExpression(), !1540)
  br label %while.cond, !dbg !1557, !llvm.loop !1584

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1586
}

; Function Attrs: nounwind
define internal fastcc i32 @rej_uniform(ptr noundef %a, i32 noundef range(i32 1, 257) %len, ptr noundef nonnull %buf, i32 noundef range(i32 168, 841) %buflen) unnamed_addr #0 !dbg !1587 {
entry:
    #dbg_value(ptr %a, !1591, !DIExpression(), !1592)
    #dbg_value(i32 %len, !1593, !DIExpression(), !1592)
    #dbg_value(ptr %buf, !1594, !DIExpression(), !1592)
    #dbg_value(i32 %buflen, !1595, !DIExpression(), !1592)
    #dbg_value(i32 0, !1596, !DIExpression(), !1592)
    #dbg_value(i32 0, !1597, !DIExpression(), !1592)
  br label %while.cond, !dbg !1598

while.cond:                                       ; preds = %if.end, %entry
  %ctr.0 = phi i32 [ 0, %entry ], [ %ctr.1, %if.end ], !dbg !1592
  %pos.0 = phi i32 [ 0, %entry ], [ %inc5, %if.end ], !dbg !1592
    #dbg_value(i32 %pos.0, !1596, !DIExpression(), !1592)
    #dbg_value(i32 %ctr.0, !1597, !DIExpression(), !1592)
  %cmp = icmp ult i32 %ctr.0, %len, !dbg !1599
  %add = add nuw nsw i32 %pos.0, 3, !dbg !1600
  %cmp1 = icmp ule i32 %add, %buflen, !dbg !1600
  %0 = select i1 %cmp, i1 %cmp1, i1 false, !dbg !1600
  br i1 %0, label %while.body, label %while.end, !dbg !1598

while.body:                                       ; preds = %while.cond
    #dbg_value(i32 %pos.0, !1596, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1592)
  %arrayidx = getelementptr inbounds nuw i8, ptr %buf, i32 %pos.0, !dbg !1601
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1601
  %conv = zext i8 %1 to i32, !dbg !1601
    #dbg_value(i32 %conv, !1603, !DIExpression(), !1592)
    #dbg_value(i32 %pos.0, !1596, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1592)
  %2 = getelementptr i8, ptr %buf, i32 %pos.0, !dbg !1604
  %arrayidx3 = getelementptr i8, ptr %2, i32 1, !dbg !1604
  %3 = load i8, ptr %arrayidx3, align 1, !dbg !1604
  %conv4 = zext i8 %3 to i32, !dbg !1605
  %shl = shl nuw nsw i32 %conv4, 8, !dbg !1606
  %or = or disjoint i32 %shl, %conv, !dbg !1607
    #dbg_value(i32 %or, !1603, !DIExpression(), !1592)
  %inc5 = add nuw nsw i32 %pos.0, 3, !dbg !1608
    #dbg_value(i32 %inc5, !1596, !DIExpression(), !1592)
  %4 = getelementptr i8, ptr %buf, i32 %pos.0, !dbg !1609
  %arrayidx6 = getelementptr i8, ptr %4, i32 2, !dbg !1609
  %5 = load i8, ptr %arrayidx6, align 1, !dbg !1609
  %conv7 = zext i8 %5 to i32, !dbg !1610
  %shl8 = shl nuw nsw i32 %conv7, 16, !dbg !1611
    #dbg_value(!DIArgList(i32 %or, i32 %shl8), !1603, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1592)
  %shl8.masked = and i32 %shl8, 8323072, !dbg !1612
  %and = or disjoint i32 %or, %shl8.masked, !dbg !1612
    #dbg_value(i32 %and, !1603, !DIExpression(), !1592)
  %cmp10 = icmp samesign ult i32 %and, 8380417, !dbg !1613
  br i1 %cmp10, label %if.then, label %if.end, !dbg !1613

if.then:                                          ; preds = %while.body
  %inc12 = add nuw nsw i32 %ctr.0, 1, !dbg !1615
    #dbg_value(i32 %inc12, !1597, !DIExpression(), !1592)
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1616
  store i32 %and, ptr %arrayidx13, align 4, !dbg !1617
  br label %if.end, !dbg !1616

if.end:                                           ; preds = %if.then, %while.body
  %ctr.1 = phi i32 [ %inc12, %if.then ], [ %ctr.0, %while.body ], !dbg !1592
    #dbg_value(i32 %ctr.1, !1597, !DIExpression(), !1592)
  br label %while.cond, !dbg !1598, !llvm.loop !1618

while.end:                                        ; preds = %while.cond
  %ctr.0.lcssa = phi i32 [ %ctr.0, %while.cond ], !dbg !1592
  ret i32 %ctr.0.lcssa, !dbg !1620
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_uniform_eta(ptr noundef %a, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !1621 {
entry:
  %buf = alloca [272 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %a, !1622, !DIExpression(), !1623)
    #dbg_value(ptr %seed, !1624, !DIExpression(), !1623)
    #dbg_value(i16 %nonce, !1625, !DIExpression(), !1623)
    #dbg_value(i32 272, !1626, !DIExpression(), !1623)
    #dbg_declare(ptr %buf, !1627, !DIExpression(), !1631)
    #dbg_declare(ptr %state, !1632, !DIExpression(), !1634)
  call void @pqcrystals_dilithium3_ref_dilithium_shake256_stream_init(ptr noundef nonnull %state, ptr noundef %seed, i16 noundef zeroext %nonce) #4, !dbg !1635
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 2, ptr noundef nonnull %state) #4, !dbg !1636
  %call = call fastcc i32 @rej_eta(ptr noundef %a, i32 noundef 256, ptr noundef nonnull %buf, i32 noundef 272) #4, !dbg !1637
    #dbg_value(i32 %call, !1638, !DIExpression(), !1623)
  br label %while.cond, !dbg !1639

while.cond:                                       ; preds = %while.body, %entry
  %ctr.0 = phi i32 [ %call, %entry ], [ %add, %while.body ], !dbg !1623
    #dbg_value(i32 %ctr.0, !1638, !DIExpression(), !1623)
  %cmp = icmp ult i32 %ctr.0, 256, !dbg !1640
  br i1 %cmp, label %while.body, label %while.end, !dbg !1639

while.body:                                       ; preds = %while.cond
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1641
  %add.ptr = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1643
  %sub = sub nuw nsw i32 256, %ctr.0, !dbg !1644
  %call6 = call fastcc i32 @rej_eta(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %buf, i32 noundef 136) #4, !dbg !1645
  %add = add i32 %ctr.0, %call6, !dbg !1646
    #dbg_value(i32 %add, !1638, !DIExpression(), !1623)
  br label %while.cond, !dbg !1639, !llvm.loop !1647

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1649
}

; Function Attrs: nounwind
define internal fastcc i32 @rej_eta(ptr noundef %a, i32 noundef range(i32 1, 257) %len, ptr noundef nonnull %buf, i32 noundef range(i32 136, 273) %buflen) unnamed_addr #0 !dbg !1650 {
entry:
    #dbg_value(ptr %a, !1651, !DIExpression(), !1652)
    #dbg_value(i32 %len, !1653, !DIExpression(), !1652)
    #dbg_value(ptr %buf, !1654, !DIExpression(), !1652)
    #dbg_value(i32 %buflen, !1655, !DIExpression(), !1652)
    #dbg_value(i32 0, !1656, !DIExpression(), !1652)
    #dbg_value(i32 0, !1657, !DIExpression(), !1652)
  br label %while.cond, !dbg !1658

while.cond:                                       ; preds = %if.end16, %entry
  %ctr.0 = phi i32 [ 0, %entry ], [ %ctr.2, %if.end16 ], !dbg !1652
  %pos.0 = phi i32 [ 0, %entry ], [ %inc, %if.end16 ], !dbg !1652
    #dbg_value(i32 %pos.0, !1656, !DIExpression(), !1652)
    #dbg_value(i32 %ctr.0, !1657, !DIExpression(), !1652)
  %cmp = icmp ult i32 %ctr.0, %len, !dbg !1659
  %cmp1 = icmp samesign ult i32 %pos.0, %buflen
  %spec.select = select i1 %cmp, i1 %cmp1, i1 false, !dbg !1660
  br i1 %spec.select, label %while.body, label %while.end, !dbg !1658

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %buf, i32 %pos.0, !dbg !1661
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1661
  %1 = and i8 %0, 15, !dbg !1663
    #dbg_value(i8 %1, !1664, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1652)
  %inc = add nuw nsw i32 %pos.0, 1, !dbg !1665
    #dbg_value(i32 %inc, !1656, !DIExpression(), !1652)
  %2 = lshr i8 %0, 4, !dbg !1666
  %shr = zext nneg i8 %2 to i32, !dbg !1666
    #dbg_value(i32 %shr, !1667, !DIExpression(), !1652)
  %cmp4 = icmp samesign ult i8 %1, 9, !dbg !1668
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1668

if.then:                                          ; preds = %while.body
  %and = zext nneg i8 %1 to i32, !dbg !1663
    #dbg_value(i32 %and, !1664, !DIExpression(), !1652)
  %sub = sub nsw i32 4, %and, !dbg !1670
  %inc6 = add nuw nsw i32 %ctr.0, 1, !dbg !1671
    #dbg_value(i32 %inc6, !1657, !DIExpression(), !1652)
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1672
  store i32 %sub, ptr %arrayidx7, align 4, !dbg !1673
  br label %if.end, !dbg !1672

if.end:                                           ; preds = %if.then, %while.body
  %ctr.1 = phi i32 [ %inc6, %if.then ], [ %ctr.0, %while.body ], !dbg !1652
    #dbg_value(i32 %ctr.1, !1657, !DIExpression(), !1652)
  %cmp8 = icmp ult i8 %0, -112, !dbg !1674
  %cmp10 = icmp ult i32 %ctr.1, %len
  %or.cond = and i1 %cmp8, %cmp10, !dbg !1676
  br i1 %or.cond, label %if.then12, label %if.end16, !dbg !1676

if.then12:                                        ; preds = %if.end
  %sub13 = sub nsw i32 4, %shr, !dbg !1677
  %inc14 = add nuw nsw i32 %ctr.1, 1, !dbg !1678
    #dbg_value(i32 %inc14, !1657, !DIExpression(), !1652)
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.1, !dbg !1679
  store i32 %sub13, ptr %arrayidx15, align 4, !dbg !1680
  br label %if.end16, !dbg !1679

if.end16:                                         ; preds = %if.then12, %if.end
  %ctr.2 = phi i32 [ %inc14, %if.then12 ], [ %ctr.1, %if.end ], !dbg !1681
    #dbg_value(i32 %ctr.2, !1657, !DIExpression(), !1652)
  br label %while.cond, !dbg !1658, !llvm.loop !1682

while.end:                                        ; preds = %while.cond
  %ctr.0.lcssa = phi i32 [ %ctr.0, %while.cond ], !dbg !1652
  ret i32 %ctr.0.lcssa, !dbg !1684
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_uniform_gamma1(ptr noundef %a, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !1685 {
entry:
  %buf = alloca [680 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %a, !1686, !DIExpression(), !1687)
    #dbg_value(ptr %seed, !1688, !DIExpression(), !1687)
    #dbg_value(i16 %nonce, !1689, !DIExpression(), !1687)
    #dbg_declare(ptr %buf, !1690, !DIExpression(), !1694)
    #dbg_declare(ptr %state, !1695, !DIExpression(), !1696)
  call void @pqcrystals_dilithium3_ref_dilithium_shake256_stream_init(ptr noundef nonnull %state, ptr noundef %seed, i16 noundef zeroext %nonce) #4, !dbg !1697
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 5, ptr noundef nonnull %state) #4, !dbg !1698
  call void @pqcrystals_dilithium3_ref_polyz_unpack(ptr noundef %a, ptr noundef nonnull %buf) #4, !dbg !1699
  ret void, !dbg !1700
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyz_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !1701 {
entry:
    #dbg_value(ptr %r, !1704, !DIExpression(), !1705)
    #dbg_value(ptr %a, !1706, !DIExpression(), !1705)
    #dbg_value(i32 0, !1707, !DIExpression(), !1705)
  br label %for.cond, !dbg !1708

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1710
    #dbg_value(i32 %i.0, !1707, !DIExpression(), !1705)
  %exitcond = icmp ne i32 %i.0, 128, !dbg !1711
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1713

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 5, !dbg !1714
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %mul, !dbg !1716
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1716
  %conv = zext i8 %0 to i32, !dbg !1716
  %mul1 = shl nuw nsw i32 %i.0, 1, !dbg !1717
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul1, !dbg !1718
  store i32 %conv, ptr %arrayidx3, align 4, !dbg !1719
  %mul4 = mul nuw nsw i32 %i.0, 5, !dbg !1720
  %1 = getelementptr inbounds nuw i8, ptr %a, i32 %mul4, !dbg !1721
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %1, i32 1, !dbg !1721
  %2 = load i8, ptr %arrayidx6, align 1, !dbg !1721
  %conv7 = zext i8 %2 to i32, !dbg !1722
  %shl = shl nuw nsw i32 %conv7, 8, !dbg !1723
  %mul8 = shl nuw nsw i32 %i.0, 1, !dbg !1724
  %arrayidx10 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul8, !dbg !1725
  %3 = load i32, ptr %arrayidx10, align 4, !dbg !1726
  %or = or i32 %3, %shl, !dbg !1726
  store i32 %or, ptr %arrayidx10, align 4, !dbg !1726
  %mul11 = mul nuw nsw i32 %i.0, 5, !dbg !1727
  %4 = getelementptr inbounds nuw i8, ptr %a, i32 %mul11, !dbg !1728
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %4, i32 2, !dbg !1728
  %5 = load i8, ptr %arrayidx13, align 1, !dbg !1728
  %conv14 = zext i8 %5 to i32, !dbg !1729
  %shl15 = shl nuw nsw i32 %conv14, 16, !dbg !1730
  %mul16 = shl nuw nsw i32 %i.0, 1, !dbg !1731
  %arrayidx18 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul16, !dbg !1732
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !1733
  %or19 = or i32 %6, %shl15, !dbg !1733
  store i32 %or19, ptr %arrayidx18, align 4, !dbg !1733
  %mul20 = shl nuw nsw i32 %i.0, 1, !dbg !1734
  %arrayidx22 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul20, !dbg !1735
  %7 = load i32, ptr %arrayidx22, align 4, !dbg !1736
  %and = and i32 %7, 1048575, !dbg !1736
  store i32 %and, ptr %arrayidx22, align 4, !dbg !1736
  %mul23 = mul nuw nsw i32 %i.0, 5, !dbg !1737
  %8 = getelementptr inbounds nuw i8, ptr %a, i32 %mul23, !dbg !1738
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %8, i32 2, !dbg !1738
  %9 = load i8, ptr %arrayidx25, align 1, !dbg !1738
  %10 = lshr i8 %9, 4, !dbg !1739
  %shr = zext nneg i8 %10 to i32, !dbg !1739
  %mul27 = shl nuw nsw i32 %i.0, 1, !dbg !1740
  %add28 = or disjoint i32 %mul27, 1, !dbg !1741
  %arrayidx29 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add28, !dbg !1742
  store i32 %shr, ptr %arrayidx29, align 4, !dbg !1743
  %mul30 = mul nuw nsw i32 %i.0, 5, !dbg !1744
  %11 = getelementptr inbounds nuw i8, ptr %a, i32 %mul30, !dbg !1745
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %11, i32 3, !dbg !1745
  %12 = load i8, ptr %arrayidx32, align 1, !dbg !1745
  %conv33 = zext i8 %12 to i32, !dbg !1746
  %shl34 = shl nuw nsw i32 %conv33, 4, !dbg !1747
  %mul35 = shl nuw nsw i32 %i.0, 1, !dbg !1748
  %add36 = or disjoint i32 %mul35, 1, !dbg !1749
  %arrayidx37 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add36, !dbg !1750
  %13 = load i32, ptr %arrayidx37, align 4, !dbg !1751
  %or38 = or i32 %13, %shl34, !dbg !1751
  store i32 %or38, ptr %arrayidx37, align 4, !dbg !1751
  %mul39 = mul nuw nsw i32 %i.0, 5, !dbg !1752
  %14 = getelementptr inbounds nuw i8, ptr %a, i32 %mul39, !dbg !1753
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %14, i32 4, !dbg !1753
  %15 = load i8, ptr %arrayidx41, align 1, !dbg !1753
  %conv42 = zext i8 %15 to i32, !dbg !1754
  %shl43 = shl nuw nsw i32 %conv42, 12, !dbg !1755
  %mul44 = shl nuw nsw i32 %i.0, 1, !dbg !1756
  %add45 = or disjoint i32 %mul44, 1, !dbg !1757
  %arrayidx46 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add45, !dbg !1758
  %16 = load i32, ptr %arrayidx46, align 4, !dbg !1759
  %or47 = or i32 %16, %shl43, !dbg !1759
  store i32 %or47, ptr %arrayidx46, align 4, !dbg !1759
  %mul48 = shl nuw nsw i32 %i.0, 1, !dbg !1760
  %arrayidx50 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul48, !dbg !1761
  %17 = load i32, ptr %arrayidx50, align 4, !dbg !1761
  %sub = sub nsw i32 524288, %17, !dbg !1762
  %mul51 = shl nuw nsw i32 %i.0, 1, !dbg !1763
  %arrayidx53 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul51, !dbg !1764
  store i32 %sub, ptr %arrayidx53, align 4, !dbg !1765
  %mul54 = shl nuw nsw i32 %i.0, 1, !dbg !1766
  %add55 = or disjoint i32 %mul54, 1, !dbg !1767
  %arrayidx56 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add55, !dbg !1768
  %18 = load i32, ptr %arrayidx56, align 4, !dbg !1768
  %sub57 = sub nsw i32 524288, %18, !dbg !1769
  %mul58 = shl nuw nsw i32 %i.0, 1, !dbg !1770
  %add59 = or disjoint i32 %mul58, 1, !dbg !1771
  %arrayidx60 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add59, !dbg !1772
  store i32 %sub57, ptr %arrayidx60, align 4, !dbg !1773
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1774
    #dbg_value(i32 %inc, !1707, !DIExpression(), !1705)
  br label %for.cond, !dbg !1775, !llvm.loop !1776

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1778
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_poly_challenge(ptr noundef %c, ptr noundef %seed) local_unnamed_addr #0 !dbg !1779 {
entry:
  %buf = alloca [136 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %c, !1780, !DIExpression(), !1781)
    #dbg_value(ptr %seed, !1782, !DIExpression(), !1781)
    #dbg_declare(ptr %buf, !1783, !DIExpression(), !1787)
    #dbg_declare(ptr %state, !1788, !DIExpression(), !1789)
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !1790
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %seed, i32 noundef 48) #4, !dbg !1791
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !1792
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1793
    #dbg_value(i64 0, !1794, !DIExpression(), !1781)
    #dbg_value(i32 0, !1795, !DIExpression(), !1781)
  br label %for.cond, !dbg !1796

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1798
  %signs.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !1781
    #dbg_value(i64 %signs.0, !1794, !DIExpression(), !1781)
    #dbg_value(i32 %i.0, !1795, !DIExpression(), !1781)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1799
  br i1 %exitcond, label %for.inc, label %for.cond1.preheader, !dbg !1801

for.cond1.preheader:                              ; preds = %for.cond
  %signs.0.lcssa = phi i64 [ %signs.0, %for.cond ], !dbg !1781
  br label %for.cond1, !dbg !1802

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !1794, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1781)
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %buf, i32 0, i32 %i.0, !dbg !1804
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1804
    #dbg_value(!DIArgList(i64 %signs.0, i8 %0, i32 %i.0), !1794, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1781)
  %conv = zext i8 %0 to i64, !dbg !1805
    #dbg_value(!DIArgList(i64 %signs.0, i64 %conv, i32 %i.0), !1794, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1781)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !1806
    #dbg_value(!DIArgList(i64 %signs.0, i64 %conv, i32 %mul), !1794, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1781)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !1807
    #dbg_value(!DIArgList(i64 %signs.0, i64 %conv, i64 %sh_prom), !1794, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1781)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !1807
    #dbg_value(!DIArgList(i64 %signs.0, i64 %shl), !1794, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1781)
  %or = or i64 %signs.0, %shl, !dbg !1808
    #dbg_value(i64 %or, !1794, !DIExpression(), !1781)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1809
    #dbg_value(i32 %inc, !1795, !DIExpression(), !1781)
  br label %for.cond, !dbg !1810, !llvm.loop !1811

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond1.preheader ], !dbg !1813
    #dbg_value(i32 %i.1, !1795, !DIExpression(), !1781)
  %exitcond1 = icmp ne i32 %i.1, 256, !dbg !1814
  br i1 %exitcond1, label %for.body4, label %for.cond9.preheader, !dbg !1802

for.cond9.preheader:                              ; preds = %for.cond1
  br label %for.cond9, !dbg !1816

for.body4:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.1, !dbg !1818
  store i32 0, ptr %arrayidx5, align 4, !dbg !1819
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !1820
    #dbg_value(i32 %inc7, !1795, !DIExpression(), !1781)
  br label %for.cond1, !dbg !1821, !llvm.loop !1822

for.cond9:                                        ; preds = %for.cond9.preheader, %do.end
  %i.2 = phi i32 [ %inc27, %do.end ], [ 207, %for.cond9.preheader ], !dbg !1824
  %pos.0 = phi i32 [ %inc16.lcssa, %do.end ], [ 8, %for.cond9.preheader ], !dbg !1781
  %signs.1 = phi i64 [ %shr, %do.end ], [ %signs.0.lcssa, %for.cond9.preheader ], !dbg !1781
    #dbg_value(i64 %signs.1, !1794, !DIExpression(), !1781)
    #dbg_value(i32 %pos.0, !1825, !DIExpression(), !1781)
    #dbg_value(i32 %i.2, !1795, !DIExpression(), !1781)
  %exitcond2 = icmp ne i32 %i.2, 256, !dbg !1826
  br i1 %exitcond2, label %do.body.preheader, label %for.end28, !dbg !1816

do.body.preheader:                                ; preds = %for.cond9
  br label %do.body, !dbg !1828

do.body:                                          ; preds = %do.body.preheader, %if.end
  %pos.1 = phi i32 [ %inc16, %if.end ], [ %pos.0, %do.body.preheader ], !dbg !1781
    #dbg_value(i32 %pos.1, !1825, !DIExpression(), !1781)
  %cmp13 = icmp ugt i32 %pos.1, 135, !dbg !1830
  br i1 %cmp13, label %if.then, label %if.end, !dbg !1830

if.then:                                          ; preds = %do.body
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1833
    #dbg_value(i32 0, !1825, !DIExpression(), !1781)
  br label %if.end, !dbg !1835

if.end:                                           ; preds = %if.then, %do.body
  %pos.2 = phi i32 [ 0, %if.then ], [ %pos.1, %do.body ], !dbg !1781
    #dbg_value(i32 %pos.2, !1825, !DIExpression(), !1781)
  %inc16 = add nuw nsw i32 %pos.2, 1, !dbg !1836
    #dbg_value(i32 %inc16, !1825, !DIExpression(), !1781)
  %arrayidx17 = getelementptr inbounds nuw [136 x i8], ptr %buf, i32 0, i32 %pos.2, !dbg !1837
  %1 = load i8, ptr %arrayidx17, align 1, !dbg !1837
  %conv18 = zext i8 %1 to i32, !dbg !1837
    #dbg_value(i32 %conv18, !1838, !DIExpression(), !1781)
  %cmp19 = icmp samesign ult i32 %i.2, %conv18, !dbg !1839
  br i1 %cmp19, label %do.body, label %do.end, !dbg !1840, !llvm.loop !1841

do.end:                                           ; preds = %if.end
  %inc16.lcssa = phi i32 [ %inc16, %if.end ], !dbg !1836
  %conv18.lcssa = phi i32 [ %conv18, %if.end ], !dbg !1837
  %arrayidx21 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %conv18.lcssa, !dbg !1843
  %2 = load i32, ptr %arrayidx21, align 4, !dbg !1843
  %arrayidx22 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.2, !dbg !1844
  store i32 %2, ptr %arrayidx22, align 4, !dbg !1845
  %signs.1.tr = trunc i64 %signs.1 to i32, !dbg !1846
  %3 = shl i32 %signs.1.tr, 1, !dbg !1846
  %4 = and i32 %3, 2, !dbg !1846
  %conv24 = sub nsw i32 1, %4, !dbg !1846
  %arrayidx25 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %conv18.lcssa, !dbg !1847
  store i32 %conv24, ptr %arrayidx25, align 4, !dbg !1848
    #dbg_value(i64 %signs.1, !1794, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !1781)
  %shr = lshr i64 %signs.1, 1, !dbg !1849
    #dbg_value(i64 %shr, !1794, !DIExpression(), !1781)
  %inc27 = add nuw nsw i32 %i.2, 1, !dbg !1850
    #dbg_value(i32 %inc27, !1795, !DIExpression(), !1781)
  br label %for.cond9, !dbg !1851, !llvm.loop !1852

for.end28:                                        ; preds = %for.cond9
  ret void, !dbg !1854
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyeta_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !1855 {
entry:
    #dbg_value(ptr %r, !1858, !DIExpression(), !1859)
    #dbg_value(ptr %a, !1860, !DIExpression(), !1859)
    #dbg_value(i32 0, !1861, !DIExpression(), !1859)
  br label %for.cond, !dbg !1862

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1864
    #dbg_value(i32 %i.0, !1861, !DIExpression(), !1859)
  %exitcond = icmp ne i32 %i.0, 128, !dbg !1865
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1867

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 1, !dbg !1868
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !1870
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1870
  %conv = sub i32 4, %0, !dbg !1871
    #dbg_value(!DIArgList(i8 4, i32 %0), !1872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !1859)
  %mul2 = shl nuw nsw i32 %i.0, 1, !dbg !1876
  %add3 = or disjoint i32 %mul2, 1, !dbg !1877
  %arrayidx4 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add3, !dbg !1878
  %1 = load i32, ptr %arrayidx4, align 4, !dbg !1878
    #dbg_value(!DIArgList(i8 4, i32 %1), !1872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !1859)
  %2 = shl i32 %1, 4, !dbg !1879
  %conv11 = sub i32 64, %2, !dbg !1879
  %or = or i32 %conv, %conv11, !dbg !1880
  %conv12 = trunc i32 %or to i8, !dbg !1881
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !1882
  store i8 %conv12, ptr %arrayidx13, align 1, !dbg !1883
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1884
    #dbg_value(i32 %inc, !1861, !DIExpression(), !1859)
  br label %for.cond, !dbg !1885, !llvm.loop !1886

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1888
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyeta_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !1889 {
entry:
    #dbg_value(ptr %r, !1890, !DIExpression(), !1891)
    #dbg_value(ptr %a, !1892, !DIExpression(), !1891)
    #dbg_value(i32 0, !1893, !DIExpression(), !1891)
  br label %for.cond, !dbg !1894

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1896
    #dbg_value(i32 %i.0, !1893, !DIExpression(), !1891)
  %exitcond = icmp ne i32 %i.0, 128, !dbg !1897
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1899

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1900
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1900
  %1 = and i8 %0, 15, !dbg !1902
  %and = zext nneg i8 %1 to i32, !dbg !1902
  %mul = shl nuw nsw i32 %i.0, 1, !dbg !1903
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul, !dbg !1904
  store i32 %and, ptr %arrayidx1, align 4, !dbg !1905
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1906
  %2 = load i8, ptr %arrayidx2, align 1, !dbg !1906
  %3 = lshr i8 %2, 4, !dbg !1907
  %shr = zext nneg i8 %3 to i32, !dbg !1907
  %mul4 = shl nuw nsw i32 %i.0, 1, !dbg !1908
  %add5 = or disjoint i32 %mul4, 1, !dbg !1909
  %arrayidx6 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add5, !dbg !1910
  store i32 %shr, ptr %arrayidx6, align 4, !dbg !1911
  %mul7 = shl nuw nsw i32 %i.0, 1, !dbg !1912
  %arrayidx9 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul7, !dbg !1913
  %4 = load i32, ptr %arrayidx9, align 4, !dbg !1913
  %sub = sub nsw i32 4, %4, !dbg !1914
  %mul10 = shl nuw nsw i32 %i.0, 1, !dbg !1915
  %arrayidx12 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul10, !dbg !1916
  store i32 %sub, ptr %arrayidx12, align 4, !dbg !1917
  %mul13 = shl nuw nsw i32 %i.0, 1, !dbg !1918
  %add14 = or disjoint i32 %mul13, 1, !dbg !1919
  %arrayidx15 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add14, !dbg !1920
  %5 = load i32, ptr %arrayidx15, align 4, !dbg !1920
  %sub16 = sub nsw i32 4, %5, !dbg !1921
  %mul17 = shl nuw nsw i32 %i.0, 1, !dbg !1922
  %add18 = or disjoint i32 %mul17, 1, !dbg !1923
  %arrayidx19 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add18, !dbg !1924
  store i32 %sub16, ptr %arrayidx19, align 4, !dbg !1925
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1926
    #dbg_value(i32 %inc, !1893, !DIExpression(), !1891)
  br label %for.cond, !dbg !1927, !llvm.loop !1928

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1930
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyt1_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !1931 {
entry:
    #dbg_value(ptr %r, !1932, !DIExpression(), !1933)
    #dbg_value(ptr %a, !1934, !DIExpression(), !1933)
    #dbg_value(i32 0, !1935, !DIExpression(), !1933)
  br label %for.cond, !dbg !1936

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1938
    #dbg_value(i32 %i.0, !1935, !DIExpression(), !1933)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !1939
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1941

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 2, !dbg !1942
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !1944
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1944
  %conv = trunc i32 %0 to i8, !dbg !1945
  %mul1 = mul nuw nsw i32 %i.0, 5, !dbg !1946
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %r, i32 %mul1, !dbg !1947
  store i8 %conv, ptr %arrayidx3, align 1, !dbg !1948
  %mul4 = shl nuw nsw i32 %i.0, 2, !dbg !1949
  %arrayidx6 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul4, !dbg !1950
  %1 = load i32, ptr %arrayidx6, align 4, !dbg !1950
  %shr7 = lshr i32 %1, 8, !dbg !1951
  %mul8 = shl nuw nsw i32 %i.0, 2, !dbg !1952
  %add9 = or disjoint i32 %mul8, 1, !dbg !1953
  %arrayidx10 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add9, !dbg !1954
  %2 = load i32, ptr %arrayidx10, align 4, !dbg !1954
  %shl = shl i32 %2, 2, !dbg !1955
  %or = or i32 %shr7, %shl, !dbg !1956
  %conv11 = trunc i32 %or to i8, !dbg !1957
  %mul12 = mul nuw nsw i32 %i.0, 5, !dbg !1958
  %3 = getelementptr inbounds nuw i8, ptr %r, i32 %mul12, !dbg !1959
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %3, i32 1, !dbg !1959
  store i8 %conv11, ptr %arrayidx14, align 1, !dbg !1960
  %mul15 = shl nuw nsw i32 %i.0, 2, !dbg !1961
  %add16 = or disjoint i32 %mul15, 1, !dbg !1962
  %arrayidx17 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add16, !dbg !1963
  %4 = load i32, ptr %arrayidx17, align 4, !dbg !1963
  %shr18 = lshr i32 %4, 6, !dbg !1964
  %mul19 = shl nuw nsw i32 %i.0, 2, !dbg !1965
  %add20 = or disjoint i32 %mul19, 2, !dbg !1966
  %arrayidx21 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add20, !dbg !1967
  %5 = load i32, ptr %arrayidx21, align 4, !dbg !1967
  %shl22 = shl i32 %5, 4, !dbg !1968
  %or23 = or i32 %shr18, %shl22, !dbg !1969
  %conv24 = trunc i32 %or23 to i8, !dbg !1970
  %mul25 = mul nuw nsw i32 %i.0, 5, !dbg !1971
  %6 = getelementptr inbounds nuw i8, ptr %r, i32 %mul25, !dbg !1972
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %6, i32 2, !dbg !1972
  store i8 %conv24, ptr %arrayidx27, align 1, !dbg !1973
  %mul28 = shl nuw nsw i32 %i.0, 2, !dbg !1974
  %add29 = or disjoint i32 %mul28, 2, !dbg !1975
  %arrayidx30 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add29, !dbg !1976
  %7 = load i32, ptr %arrayidx30, align 4, !dbg !1976
  %shr31 = lshr i32 %7, 4, !dbg !1977
  %mul32 = shl nuw nsw i32 %i.0, 2, !dbg !1978
  %add33 = or disjoint i32 %mul32, 3, !dbg !1979
  %arrayidx34 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add33, !dbg !1980
  %8 = load i32, ptr %arrayidx34, align 4, !dbg !1980
  %shl35 = shl i32 %8, 6, !dbg !1981
  %or36 = or i32 %shr31, %shl35, !dbg !1982
  %conv37 = trunc i32 %or36 to i8, !dbg !1983
  %mul38 = mul nuw nsw i32 %i.0, 5, !dbg !1984
  %9 = getelementptr inbounds nuw i8, ptr %r, i32 %mul38, !dbg !1985
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %9, i32 3, !dbg !1985
  store i8 %conv37, ptr %arrayidx40, align 1, !dbg !1986
  %mul41 = shl nuw nsw i32 %i.0, 2, !dbg !1987
  %add42 = or disjoint i32 %mul41, 3, !dbg !1988
  %arrayidx43 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add42, !dbg !1989
  %10 = load i32, ptr %arrayidx43, align 4, !dbg !1989
  %shr44 = lshr i32 %10, 2, !dbg !1990
  %conv45 = trunc i32 %shr44 to i8, !dbg !1991
  %mul46 = mul nuw nsw i32 %i.0, 5, !dbg !1992
  %11 = getelementptr inbounds nuw i8, ptr %r, i32 %mul46, !dbg !1993
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %11, i32 4, !dbg !1993
  store i8 %conv45, ptr %arrayidx48, align 1, !dbg !1994
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1995
    #dbg_value(i32 %inc, !1935, !DIExpression(), !1933)
  br label %for.cond, !dbg !1996, !llvm.loop !1997

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1999
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyt1_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2000 {
entry:
    #dbg_value(ptr %r, !2001, !DIExpression(), !2002)
    #dbg_value(ptr %a, !2003, !DIExpression(), !2002)
    #dbg_value(i32 0, !2004, !DIExpression(), !2002)
  br label %for.cond, !dbg !2005

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2007
    #dbg_value(i32 %i.0, !2004, !DIExpression(), !2002)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !2008
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2010

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 5, !dbg !2011
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %mul, !dbg !2013
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2013
  %conv = zext i8 %0 to i32, !dbg !2013
  %mul1 = mul nuw nsw i32 %i.0, 5, !dbg !2014
  %1 = getelementptr inbounds nuw i8, ptr %a, i32 %mul1, !dbg !2015
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %1, i32 1, !dbg !2015
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !2015
  %conv4 = zext i8 %2 to i32, !dbg !2016
  %shl = shl nuw nsw i32 %conv4, 8, !dbg !2017
  %shl.masked = and i32 %shl, 768, !dbg !2018
  %and = or disjoint i32 %shl.masked, %conv, !dbg !2018
  %mul5 = shl nuw nsw i32 %i.0, 2, !dbg !2019
  %arrayidx7 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul5, !dbg !2020
  store i32 %and, ptr %arrayidx7, align 4, !dbg !2021
  %mul8 = mul nuw nsw i32 %i.0, 5, !dbg !2022
  %3 = getelementptr inbounds nuw i8, ptr %a, i32 %mul8, !dbg !2023
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %3, i32 1, !dbg !2023
  %4 = load i8, ptr %arrayidx10, align 1, !dbg !2023
  %5 = lshr i8 %4, 2, !dbg !2024
  %shr12 = zext nneg i8 %5 to i32, !dbg !2024
  %mul13 = mul nuw nsw i32 %i.0, 5, !dbg !2025
  %6 = getelementptr inbounds nuw i8, ptr %a, i32 %mul13, !dbg !2026
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %6, i32 2, !dbg !2026
  %7 = load i8, ptr %arrayidx15, align 1, !dbg !2026
  %conv16 = zext i8 %7 to i32, !dbg !2027
  %shl17 = shl nuw nsw i32 %conv16, 6, !dbg !2028
  %shl17.masked = and i32 %shl17, 960, !dbg !2029
  %and19 = or disjoint i32 %shl17.masked, %shr12, !dbg !2029
  %mul20 = shl nuw nsw i32 %i.0, 2, !dbg !2030
  %add21 = or disjoint i32 %mul20, 1, !dbg !2031
  %arrayidx22 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add21, !dbg !2032
  store i32 %and19, ptr %arrayidx22, align 4, !dbg !2033
  %mul23 = mul nuw nsw i32 %i.0, 5, !dbg !2034
  %8 = getelementptr inbounds nuw i8, ptr %a, i32 %mul23, !dbg !2035
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %8, i32 2, !dbg !2035
  %9 = load i8, ptr %arrayidx25, align 1, !dbg !2035
  %10 = lshr i8 %9, 4, !dbg !2036
  %shr27 = zext nneg i8 %10 to i32, !dbg !2036
  %mul28 = mul nuw nsw i32 %i.0, 5, !dbg !2037
  %11 = getelementptr inbounds nuw i8, ptr %a, i32 %mul28, !dbg !2038
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %11, i32 3, !dbg !2038
  %12 = load i8, ptr %arrayidx30, align 1, !dbg !2038
  %conv31 = zext i8 %12 to i32, !dbg !2039
  %shl32 = shl nuw nsw i32 %conv31, 4, !dbg !2040
  %shl32.masked = and i32 %shl32, 1008, !dbg !2041
  %and34 = or disjoint i32 %shl32.masked, %shr27, !dbg !2041
  %mul35 = shl nuw nsw i32 %i.0, 2, !dbg !2042
  %add36 = or disjoint i32 %mul35, 2, !dbg !2043
  %arrayidx37 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add36, !dbg !2044
  store i32 %and34, ptr %arrayidx37, align 4, !dbg !2045
  %mul38 = mul nuw nsw i32 %i.0, 5, !dbg !2046
  %13 = getelementptr inbounds nuw i8, ptr %a, i32 %mul38, !dbg !2047
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %13, i32 3, !dbg !2047
  %14 = load i8, ptr %arrayidx40, align 1, !dbg !2047
  %15 = lshr i8 %14, 6, !dbg !2048
  %shr42 = zext nneg i8 %15 to i32, !dbg !2048
  %mul43 = mul nuw nsw i32 %i.0, 5, !dbg !2049
  %16 = getelementptr inbounds nuw i8, ptr %a, i32 %mul43, !dbg !2050
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %16, i32 4, !dbg !2050
  %17 = load i8, ptr %arrayidx45, align 1, !dbg !2050
  %conv46 = zext i8 %17 to i32, !dbg !2051
  %shl47 = shl nuw nsw i32 %conv46, 2, !dbg !2052
  %or48 = or disjoint i32 %shl47, %shr42, !dbg !2053
  %mul50 = shl nuw nsw i32 %i.0, 2, !dbg !2054
  %add51 = or disjoint i32 %mul50, 3, !dbg !2055
  %arrayidx52 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add51, !dbg !2056
  store i32 %or48, ptr %arrayidx52, align 4, !dbg !2057
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2058
    #dbg_value(i32 %inc, !2004, !DIExpression(), !2002)
  br label %for.cond, !dbg !2059, !llvm.loop !2060

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2062
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyt0_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2063 {
entry:
    #dbg_value(ptr %r, !2064, !DIExpression(), !2065)
    #dbg_value(ptr %a, !2066, !DIExpression(), !2065)
    #dbg_value(i32 0, !2067, !DIExpression(), !2065)
  br label %for.cond, !dbg !2068

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2070
    #dbg_value(i32 %i.0, !2067, !DIExpression(), !2065)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !2071
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2073

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !2074
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !2076
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2076
  %sub = sub nsw i32 4096, %0, !dbg !2077
    #dbg_value(i32 %sub, !2078, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2065)
  %mul2 = shl nuw nsw i32 %i.0, 3, !dbg !2080
  %add3 = or disjoint i32 %mul2, 1, !dbg !2081
  %arrayidx4 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add3, !dbg !2082
  %1 = load i32, ptr %arrayidx4, align 4, !dbg !2082
  %sub5 = sub nsw i32 4096, %1, !dbg !2083
    #dbg_value(i32 %sub5, !2078, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2065)
  %mul7 = shl nuw nsw i32 %i.0, 3, !dbg !2084
  %add8 = or disjoint i32 %mul7, 2, !dbg !2085
  %arrayidx9 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add8, !dbg !2086
  %2 = load i32, ptr %arrayidx9, align 4, !dbg !2086
  %sub10 = sub nsw i32 4096, %2, !dbg !2087
    #dbg_value(i32 %sub10, !2078, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2065)
  %mul12 = shl nuw nsw i32 %i.0, 3, !dbg !2088
  %add13 = or disjoint i32 %mul12, 3, !dbg !2089
  %arrayidx14 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add13, !dbg !2090
  %3 = load i32, ptr %arrayidx14, align 4, !dbg !2090
  %sub15 = sub nsw i32 4096, %3, !dbg !2091
    #dbg_value(i32 %sub15, !2078, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2065)
  %mul17 = shl nuw nsw i32 %i.0, 3, !dbg !2092
  %add18 = or disjoint i32 %mul17, 4, !dbg !2093
  %arrayidx19 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add18, !dbg !2094
  %4 = load i32, ptr %arrayidx19, align 4, !dbg !2094
  %sub20 = sub nsw i32 4096, %4, !dbg !2095
    #dbg_value(i32 %sub20, !2078, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !2065)
  %mul22 = shl nuw nsw i32 %i.0, 3, !dbg !2096
  %add23 = or disjoint i32 %mul22, 5, !dbg !2097
  %arrayidx24 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add23, !dbg !2098
  %5 = load i32, ptr %arrayidx24, align 4, !dbg !2098
  %sub25 = sub nsw i32 4096, %5, !dbg !2099
    #dbg_value(i32 %sub25, !2078, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !2065)
  %mul27 = shl nuw nsw i32 %i.0, 3, !dbg !2100
  %add28 = or disjoint i32 %mul27, 6, !dbg !2101
  %arrayidx29 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add28, !dbg !2102
  %6 = load i32, ptr %arrayidx29, align 4, !dbg !2102
  %sub30 = sub nsw i32 4096, %6, !dbg !2103
    #dbg_value(i32 %sub30, !2078, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !2065)
  %mul32 = shl nuw nsw i32 %i.0, 3, !dbg !2104
  %add33 = or disjoint i32 %mul32, 7, !dbg !2105
  %arrayidx34 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add33, !dbg !2106
  %7 = load i32, ptr %arrayidx34, align 4, !dbg !2106
  %sub35 = sub nsw i32 4096, %7, !dbg !2107
    #dbg_value(i32 %sub35, !2078, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !2065)
  %conv = trunc i32 %sub to i8, !dbg !2108
  %mul38 = mul nuw nsw i32 %i.0, 13, !dbg !2109
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %r, i32 %mul38, !dbg !2110
  store i8 %conv, ptr %arrayidx40, align 1, !dbg !2111
  %shr = lshr i32 %sub, 8, !dbg !2112
  %conv42 = trunc i32 %shr to i8, !dbg !2113
  %mul43 = mul nuw nsw i32 %i.0, 13, !dbg !2114
  %8 = getelementptr inbounds nuw i8, ptr %r, i32 %mul43, !dbg !2115
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %8, i32 1, !dbg !2115
  store i8 %conv42, ptr %arrayidx45, align 1, !dbg !2116
  %mul47 = mul nuw nsw i32 %i.0, 13, !dbg !2117
  %9 = getelementptr inbounds nuw i8, ptr %r, i32 %mul47, !dbg !2118
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %9, i32 1, !dbg !2118
  %10 = load i8, ptr %arrayidx49, align 1, !dbg !2119
  %sub5.tr = trunc i32 %sub5 to i8, !dbg !2119
  %11 = shl i8 %sub5.tr, 5, !dbg !2119
  %conv51 = or i8 %11, %10, !dbg !2119
  store i8 %conv51, ptr %arrayidx49, align 1, !dbg !2119
  %shr53 = lshr i32 %sub5, 3, !dbg !2120
  %conv54 = trunc i32 %shr53 to i8, !dbg !2121
  %mul55 = mul nuw nsw i32 %i.0, 13, !dbg !2122
  %12 = getelementptr inbounds nuw i8, ptr %r, i32 %mul55, !dbg !2123
  %arrayidx57 = getelementptr inbounds nuw i8, ptr %12, i32 2, !dbg !2123
  store i8 %conv54, ptr %arrayidx57, align 1, !dbg !2124
  %shr59 = lshr i32 %sub5, 11, !dbg !2125
  %conv60 = trunc i32 %shr59 to i8, !dbg !2126
  %mul61 = mul nuw nsw i32 %i.0, 13, !dbg !2127
  %13 = getelementptr inbounds nuw i8, ptr %r, i32 %mul61, !dbg !2128
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %13, i32 3, !dbg !2128
  store i8 %conv60, ptr %arrayidx63, align 1, !dbg !2129
  %mul66 = mul nuw nsw i32 %i.0, 13, !dbg !2130
  %14 = getelementptr inbounds nuw i8, ptr %r, i32 %mul66, !dbg !2131
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %14, i32 3, !dbg !2131
  %15 = load i8, ptr %arrayidx68, align 1, !dbg !2132
  %sub10.tr = trunc i32 %sub10 to i8, !dbg !2132
  %16 = shl i8 %sub10.tr, 2, !dbg !2132
  %conv71 = or i8 %16, %15, !dbg !2132
  store i8 %conv71, ptr %arrayidx68, align 1, !dbg !2132
  %shr73 = lshr i32 %sub10, 6, !dbg !2133
  %conv74 = trunc i32 %shr73 to i8, !dbg !2134
  %mul75 = mul nuw nsw i32 %i.0, 13, !dbg !2135
  %17 = getelementptr inbounds nuw i8, ptr %r, i32 %mul75, !dbg !2136
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %17, i32 4, !dbg !2136
  store i8 %conv74, ptr %arrayidx77, align 1, !dbg !2137
  %mul80 = mul nuw nsw i32 %i.0, 13, !dbg !2138
  %18 = getelementptr inbounds nuw i8, ptr %r, i32 %mul80, !dbg !2139
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %18, i32 4, !dbg !2139
  %19 = load i8, ptr %arrayidx82, align 1, !dbg !2140
  %sub15.tr = trunc i32 %sub15 to i8, !dbg !2140
  %20 = shl i8 %sub15.tr, 7, !dbg !2140
  %conv85 = or i8 %20, %19, !dbg !2140
  store i8 %conv85, ptr %arrayidx82, align 1, !dbg !2140
  %shr87 = lshr i32 %sub15, 1, !dbg !2141
  %conv88 = trunc i32 %shr87 to i8, !dbg !2142
  %mul89 = mul nuw nsw i32 %i.0, 13, !dbg !2143
  %21 = getelementptr inbounds nuw i8, ptr %r, i32 %mul89, !dbg !2144
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %21, i32 5, !dbg !2144
  store i8 %conv88, ptr %arrayidx91, align 1, !dbg !2145
  %shr93 = lshr i32 %sub15, 9, !dbg !2146
  %conv94 = trunc i32 %shr93 to i8, !dbg !2147
  %mul95 = mul nuw nsw i32 %i.0, 13, !dbg !2148
  %22 = getelementptr inbounds nuw i8, ptr %r, i32 %mul95, !dbg !2149
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %22, i32 6, !dbg !2149
  store i8 %conv94, ptr %arrayidx97, align 1, !dbg !2150
  %mul100 = mul nuw nsw i32 %i.0, 13, !dbg !2151
  %23 = getelementptr inbounds nuw i8, ptr %r, i32 %mul100, !dbg !2152
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %23, i32 6, !dbg !2152
  %24 = load i8, ptr %arrayidx102, align 1, !dbg !2153
  %sub20.tr = trunc i32 %sub20 to i8, !dbg !2153
  %25 = shl i8 %sub20.tr, 4, !dbg !2153
  %conv105 = or i8 %25, %24, !dbg !2153
  store i8 %conv105, ptr %arrayidx102, align 1, !dbg !2153
  %shr107 = lshr i32 %sub20, 4, !dbg !2154
  %conv108 = trunc i32 %shr107 to i8, !dbg !2155
  %mul109 = mul nuw nsw i32 %i.0, 13, !dbg !2156
  %26 = getelementptr inbounds nuw i8, ptr %r, i32 %mul109, !dbg !2157
  %arrayidx111 = getelementptr inbounds nuw i8, ptr %26, i32 7, !dbg !2157
  store i8 %conv108, ptr %arrayidx111, align 1, !dbg !2158
  %shr113 = lshr i32 %sub20, 12, !dbg !2159
  %conv114 = trunc i32 %shr113 to i8, !dbg !2160
  %mul115 = mul nuw nsw i32 %i.0, 13, !dbg !2161
  %27 = getelementptr inbounds nuw i8, ptr %r, i32 %mul115, !dbg !2162
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %27, i32 8, !dbg !2162
  store i8 %conv114, ptr %arrayidx117, align 1, !dbg !2163
  %mul120 = mul nuw nsw i32 %i.0, 13, !dbg !2164
  %28 = getelementptr inbounds nuw i8, ptr %r, i32 %mul120, !dbg !2165
  %arrayidx122 = getelementptr inbounds nuw i8, ptr %28, i32 8, !dbg !2165
  %29 = load i8, ptr %arrayidx122, align 1, !dbg !2166
  %sub25.tr = trunc i32 %sub25 to i8, !dbg !2166
  %30 = shl i8 %sub25.tr, 1, !dbg !2166
  %conv125 = or i8 %30, %29, !dbg !2166
  store i8 %conv125, ptr %arrayidx122, align 1, !dbg !2166
  %shr127 = lshr i32 %sub25, 7, !dbg !2167
  %conv128 = trunc i32 %shr127 to i8, !dbg !2168
  %mul129 = mul nuw nsw i32 %i.0, 13, !dbg !2169
  %31 = getelementptr inbounds nuw i8, ptr %r, i32 %mul129, !dbg !2170
  %arrayidx131 = getelementptr inbounds nuw i8, ptr %31, i32 9, !dbg !2170
  store i8 %conv128, ptr %arrayidx131, align 1, !dbg !2171
  %mul134 = mul nuw nsw i32 %i.0, 13, !dbg !2172
  %32 = getelementptr inbounds nuw i8, ptr %r, i32 %mul134, !dbg !2173
  %arrayidx136 = getelementptr inbounds nuw i8, ptr %32, i32 9, !dbg !2173
  %33 = load i8, ptr %arrayidx136, align 1, !dbg !2174
  %sub30.tr = trunc i32 %sub30 to i8, !dbg !2174
  %34 = shl i8 %sub30.tr, 6, !dbg !2174
  %conv139 = or i8 %34, %33, !dbg !2174
  store i8 %conv139, ptr %arrayidx136, align 1, !dbg !2174
  %shr141 = lshr i32 %sub30, 2, !dbg !2175
  %conv142 = trunc i32 %shr141 to i8, !dbg !2176
  %mul143 = mul nuw nsw i32 %i.0, 13, !dbg !2177
  %35 = getelementptr inbounds nuw i8, ptr %r, i32 %mul143, !dbg !2178
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %35, i32 10, !dbg !2178
  store i8 %conv142, ptr %arrayidx145, align 1, !dbg !2179
  %shr147 = lshr i32 %sub30, 10, !dbg !2180
  %conv148 = trunc i32 %shr147 to i8, !dbg !2181
  %mul149 = mul nuw nsw i32 %i.0, 13, !dbg !2182
  %36 = getelementptr inbounds nuw i8, ptr %r, i32 %mul149, !dbg !2183
  %arrayidx151 = getelementptr inbounds nuw i8, ptr %36, i32 11, !dbg !2183
  store i8 %conv148, ptr %arrayidx151, align 1, !dbg !2184
  %mul154 = mul nuw nsw i32 %i.0, 13, !dbg !2185
  %37 = getelementptr inbounds nuw i8, ptr %r, i32 %mul154, !dbg !2186
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %37, i32 11, !dbg !2186
  %38 = load i8, ptr %arrayidx156, align 1, !dbg !2187
  %sub35.tr = trunc i32 %sub35 to i8, !dbg !2187
  %39 = shl i8 %sub35.tr, 3, !dbg !2187
  %conv159 = or i8 %39, %38, !dbg !2187
  store i8 %conv159, ptr %arrayidx156, align 1, !dbg !2187
  %shr161 = lshr i32 %sub35, 5, !dbg !2188
  %conv162 = trunc i32 %shr161 to i8, !dbg !2189
  %mul163 = mul nuw nsw i32 %i.0, 13, !dbg !2190
  %40 = getelementptr inbounds nuw i8, ptr %r, i32 %mul163, !dbg !2191
  %arrayidx165 = getelementptr inbounds nuw i8, ptr %40, i32 12, !dbg !2191
  store i8 %conv162, ptr %arrayidx165, align 1, !dbg !2192
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2193
    #dbg_value(i32 %inc, !2067, !DIExpression(), !2065)
  br label %for.cond, !dbg !2194, !llvm.loop !2195

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2197
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyt0_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2198 {
entry:
    #dbg_value(ptr %r, !2199, !DIExpression(), !2200)
    #dbg_value(ptr %a, !2201, !DIExpression(), !2200)
    #dbg_value(i32 0, !2202, !DIExpression(), !2200)
  br label %for.cond, !dbg !2203

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2205
    #dbg_value(i32 %i.0, !2202, !DIExpression(), !2200)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !2206
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2208

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 13, !dbg !2209
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %mul, !dbg !2211
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2211
  %conv = zext i8 %0 to i32, !dbg !2211
  %mul1 = shl nuw nsw i32 %i.0, 3, !dbg !2212
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul1, !dbg !2213
  store i32 %conv, ptr %arrayidx3, align 4, !dbg !2214
  %mul4 = mul nuw nsw i32 %i.0, 13, !dbg !2215
  %1 = getelementptr inbounds nuw i8, ptr %a, i32 %mul4, !dbg !2216
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %1, i32 1, !dbg !2216
  %2 = load i8, ptr %arrayidx6, align 1, !dbg !2216
  %conv7 = zext i8 %2 to i32, !dbg !2217
  %shl = shl nuw nsw i32 %conv7, 8, !dbg !2218
  %mul8 = shl nuw nsw i32 %i.0, 3, !dbg !2219
  %arrayidx10 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul8, !dbg !2220
  %3 = load i32, ptr %arrayidx10, align 4, !dbg !2221
  %or = or i32 %3, %shl, !dbg !2221
  store i32 %or, ptr %arrayidx10, align 4, !dbg !2221
  %mul11 = shl nuw nsw i32 %i.0, 3, !dbg !2222
  %arrayidx13 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul11, !dbg !2223
  %4 = load i32, ptr %arrayidx13, align 4, !dbg !2224
  %and = and i32 %4, 8191, !dbg !2224
  store i32 %and, ptr %arrayidx13, align 4, !dbg !2224
  %mul14 = mul nuw nsw i32 %i.0, 13, !dbg !2225
  %5 = getelementptr inbounds nuw i8, ptr %a, i32 %mul14, !dbg !2226
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %5, i32 1, !dbg !2226
  %6 = load i8, ptr %arrayidx16, align 1, !dbg !2226
  %7 = lshr i8 %6, 5, !dbg !2227
  %shr = zext nneg i8 %7 to i32, !dbg !2227
  %mul18 = shl nuw nsw i32 %i.0, 3, !dbg !2228
  %add19 = or disjoint i32 %mul18, 1, !dbg !2229
  %arrayidx20 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add19, !dbg !2230
  store i32 %shr, ptr %arrayidx20, align 4, !dbg !2231
  %mul21 = mul nuw nsw i32 %i.0, 13, !dbg !2232
  %8 = getelementptr inbounds nuw i8, ptr %a, i32 %mul21, !dbg !2233
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %8, i32 2, !dbg !2233
  %9 = load i8, ptr %arrayidx23, align 1, !dbg !2233
  %conv24 = zext i8 %9 to i32, !dbg !2234
  %shl25 = shl nuw nsw i32 %conv24, 3, !dbg !2235
  %mul26 = shl nuw nsw i32 %i.0, 3, !dbg !2236
  %add27 = or disjoint i32 %mul26, 1, !dbg !2237
  %arrayidx28 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add27, !dbg !2238
  %10 = load i32, ptr %arrayidx28, align 4, !dbg !2239
  %or29 = or i32 %10, %shl25, !dbg !2239
  store i32 %or29, ptr %arrayidx28, align 4, !dbg !2239
  %mul30 = mul nuw nsw i32 %i.0, 13, !dbg !2240
  %11 = getelementptr inbounds nuw i8, ptr %a, i32 %mul30, !dbg !2241
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %11, i32 3, !dbg !2241
  %12 = load i8, ptr %arrayidx32, align 1, !dbg !2241
  %conv33 = zext i8 %12 to i32, !dbg !2242
  %shl34 = shl nuw nsw i32 %conv33, 11, !dbg !2243
  %mul35 = shl nuw nsw i32 %i.0, 3, !dbg !2244
  %add36 = or disjoint i32 %mul35, 1, !dbg !2245
  %arrayidx37 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add36, !dbg !2246
  %13 = load i32, ptr %arrayidx37, align 4, !dbg !2247
  %or38 = or i32 %13, %shl34, !dbg !2247
  store i32 %or38, ptr %arrayidx37, align 4, !dbg !2247
  %mul39 = shl nuw nsw i32 %i.0, 3, !dbg !2248
  %add40 = or disjoint i32 %mul39, 1, !dbg !2249
  %arrayidx41 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add40, !dbg !2250
  %14 = load i32, ptr %arrayidx41, align 4, !dbg !2251
  %and42 = and i32 %14, 8191, !dbg !2251
  store i32 %and42, ptr %arrayidx41, align 4, !dbg !2251
  %mul43 = mul nuw nsw i32 %i.0, 13, !dbg !2252
  %15 = getelementptr inbounds nuw i8, ptr %a, i32 %mul43, !dbg !2253
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %15, i32 3, !dbg !2253
  %16 = load i8, ptr %arrayidx45, align 1, !dbg !2253
  %17 = lshr i8 %16, 2, !dbg !2254
  %shr47 = zext nneg i8 %17 to i32, !dbg !2254
  %mul48 = shl nuw nsw i32 %i.0, 3, !dbg !2255
  %add49 = or disjoint i32 %mul48, 2, !dbg !2256
  %arrayidx50 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add49, !dbg !2257
  store i32 %shr47, ptr %arrayidx50, align 4, !dbg !2258
  %mul51 = mul nuw nsw i32 %i.0, 13, !dbg !2259
  %18 = getelementptr inbounds nuw i8, ptr %a, i32 %mul51, !dbg !2260
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %18, i32 4, !dbg !2260
  %19 = load i8, ptr %arrayidx53, align 1, !dbg !2260
  %conv54 = zext i8 %19 to i32, !dbg !2261
  %shl55 = shl nuw nsw i32 %conv54, 6, !dbg !2262
  %mul56 = shl nuw nsw i32 %i.0, 3, !dbg !2263
  %add57 = or disjoint i32 %mul56, 2, !dbg !2264
  %arrayidx58 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add57, !dbg !2265
  %20 = load i32, ptr %arrayidx58, align 4, !dbg !2266
  %or59 = or i32 %20, %shl55, !dbg !2266
  store i32 %or59, ptr %arrayidx58, align 4, !dbg !2266
  %mul60 = shl nuw nsw i32 %i.0, 3, !dbg !2267
  %add61 = or disjoint i32 %mul60, 2, !dbg !2268
  %arrayidx62 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add61, !dbg !2269
  %21 = load i32, ptr %arrayidx62, align 4, !dbg !2270
  %and63 = and i32 %21, 8191, !dbg !2270
  store i32 %and63, ptr %arrayidx62, align 4, !dbg !2270
  %mul64 = mul nuw nsw i32 %i.0, 13, !dbg !2271
  %22 = getelementptr inbounds nuw i8, ptr %a, i32 %mul64, !dbg !2272
  %arrayidx66 = getelementptr inbounds nuw i8, ptr %22, i32 4, !dbg !2272
  %23 = load i8, ptr %arrayidx66, align 1, !dbg !2272
  %24 = lshr i8 %23, 7, !dbg !2273
  %shr68 = zext nneg i8 %24 to i32, !dbg !2273
  %mul69 = shl nuw nsw i32 %i.0, 3, !dbg !2274
  %add70 = or disjoint i32 %mul69, 3, !dbg !2275
  %arrayidx71 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add70, !dbg !2276
  store i32 %shr68, ptr %arrayidx71, align 4, !dbg !2277
  %mul72 = mul nuw nsw i32 %i.0, 13, !dbg !2278
  %25 = getelementptr inbounds nuw i8, ptr %a, i32 %mul72, !dbg !2279
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %25, i32 5, !dbg !2279
  %26 = load i8, ptr %arrayidx74, align 1, !dbg !2279
  %conv75 = zext i8 %26 to i32, !dbg !2280
  %shl76 = shl nuw nsw i32 %conv75, 1, !dbg !2281
  %mul77 = shl nuw nsw i32 %i.0, 3, !dbg !2282
  %add78 = or disjoint i32 %mul77, 3, !dbg !2283
  %arrayidx79 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add78, !dbg !2284
  %27 = load i32, ptr %arrayidx79, align 4, !dbg !2285
  %or80 = or i32 %27, %shl76, !dbg !2285
  store i32 %or80, ptr %arrayidx79, align 4, !dbg !2285
  %mul81 = mul nuw nsw i32 %i.0, 13, !dbg !2286
  %28 = getelementptr inbounds nuw i8, ptr %a, i32 %mul81, !dbg !2287
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %28, i32 6, !dbg !2287
  %29 = load i8, ptr %arrayidx83, align 1, !dbg !2287
  %conv84 = zext i8 %29 to i32, !dbg !2288
  %shl85 = shl nuw nsw i32 %conv84, 9, !dbg !2289
  %mul86 = shl nuw nsw i32 %i.0, 3, !dbg !2290
  %add87 = or disjoint i32 %mul86, 3, !dbg !2291
  %arrayidx88 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add87, !dbg !2292
  %30 = load i32, ptr %arrayidx88, align 4, !dbg !2293
  %or89 = or i32 %30, %shl85, !dbg !2293
  store i32 %or89, ptr %arrayidx88, align 4, !dbg !2293
  %mul90 = shl nuw nsw i32 %i.0, 3, !dbg !2294
  %add91 = or disjoint i32 %mul90, 3, !dbg !2295
  %arrayidx92 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add91, !dbg !2296
  %31 = load i32, ptr %arrayidx92, align 4, !dbg !2297
  %and93 = and i32 %31, 8191, !dbg !2297
  store i32 %and93, ptr %arrayidx92, align 4, !dbg !2297
  %mul94 = mul nuw nsw i32 %i.0, 13, !dbg !2298
  %32 = getelementptr inbounds nuw i8, ptr %a, i32 %mul94, !dbg !2299
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %32, i32 6, !dbg !2299
  %33 = load i8, ptr %arrayidx96, align 1, !dbg !2299
  %34 = lshr i8 %33, 4, !dbg !2300
  %shr98 = zext nneg i8 %34 to i32, !dbg !2300
  %mul99 = shl nuw nsw i32 %i.0, 3, !dbg !2301
  %add100 = or disjoint i32 %mul99, 4, !dbg !2302
  %arrayidx101 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add100, !dbg !2303
  store i32 %shr98, ptr %arrayidx101, align 4, !dbg !2304
  %mul102 = mul nuw nsw i32 %i.0, 13, !dbg !2305
  %35 = getelementptr inbounds nuw i8, ptr %a, i32 %mul102, !dbg !2306
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %35, i32 7, !dbg !2306
  %36 = load i8, ptr %arrayidx104, align 1, !dbg !2306
  %conv105 = zext i8 %36 to i32, !dbg !2307
  %shl106 = shl nuw nsw i32 %conv105, 4, !dbg !2308
  %mul107 = shl nuw nsw i32 %i.0, 3, !dbg !2309
  %add108 = or disjoint i32 %mul107, 4, !dbg !2310
  %arrayidx109 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add108, !dbg !2311
  %37 = load i32, ptr %arrayidx109, align 4, !dbg !2312
  %or110 = or i32 %37, %shl106, !dbg !2312
  store i32 %or110, ptr %arrayidx109, align 4, !dbg !2312
  %mul111 = mul nuw nsw i32 %i.0, 13, !dbg !2313
  %38 = getelementptr inbounds nuw i8, ptr %a, i32 %mul111, !dbg !2314
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %38, i32 8, !dbg !2314
  %39 = load i8, ptr %arrayidx113, align 1, !dbg !2314
  %conv114 = zext i8 %39 to i32, !dbg !2315
  %shl115 = shl nuw nsw i32 %conv114, 12, !dbg !2316
  %mul116 = shl nuw nsw i32 %i.0, 3, !dbg !2317
  %add117 = or disjoint i32 %mul116, 4, !dbg !2318
  %arrayidx118 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add117, !dbg !2319
  %40 = load i32, ptr %arrayidx118, align 4, !dbg !2320
  %or119 = or i32 %40, %shl115, !dbg !2320
  store i32 %or119, ptr %arrayidx118, align 4, !dbg !2320
  %mul120 = shl nuw nsw i32 %i.0, 3, !dbg !2321
  %add121 = or disjoint i32 %mul120, 4, !dbg !2322
  %arrayidx122 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add121, !dbg !2323
  %41 = load i32, ptr %arrayidx122, align 4, !dbg !2324
  %and123 = and i32 %41, 8191, !dbg !2324
  store i32 %and123, ptr %arrayidx122, align 4, !dbg !2324
  %mul124 = mul nuw nsw i32 %i.0, 13, !dbg !2325
  %42 = getelementptr inbounds nuw i8, ptr %a, i32 %mul124, !dbg !2326
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %42, i32 8, !dbg !2326
  %43 = load i8, ptr %arrayidx126, align 1, !dbg !2326
  %44 = lshr i8 %43, 1, !dbg !2327
  %shr128 = zext nneg i8 %44 to i32, !dbg !2327
  %mul129 = shl nuw nsw i32 %i.0, 3, !dbg !2328
  %add130 = or disjoint i32 %mul129, 5, !dbg !2329
  %arrayidx131 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add130, !dbg !2330
  store i32 %shr128, ptr %arrayidx131, align 4, !dbg !2331
  %mul132 = mul nuw nsw i32 %i.0, 13, !dbg !2332
  %45 = getelementptr inbounds nuw i8, ptr %a, i32 %mul132, !dbg !2333
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %45, i32 9, !dbg !2333
  %46 = load i8, ptr %arrayidx134, align 1, !dbg !2333
  %conv135 = zext i8 %46 to i32, !dbg !2334
  %shl136 = shl nuw nsw i32 %conv135, 7, !dbg !2335
  %mul137 = shl nuw nsw i32 %i.0, 3, !dbg !2336
  %add138 = or disjoint i32 %mul137, 5, !dbg !2337
  %arrayidx139 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add138, !dbg !2338
  %47 = load i32, ptr %arrayidx139, align 4, !dbg !2339
  %or140 = or i32 %47, %shl136, !dbg !2339
  store i32 %or140, ptr %arrayidx139, align 4, !dbg !2339
  %mul141 = shl nuw nsw i32 %i.0, 3, !dbg !2340
  %add142 = or disjoint i32 %mul141, 5, !dbg !2341
  %arrayidx143 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add142, !dbg !2342
  %48 = load i32, ptr %arrayidx143, align 4, !dbg !2343
  %and144 = and i32 %48, 8191, !dbg !2343
  store i32 %and144, ptr %arrayidx143, align 4, !dbg !2343
  %mul145 = mul nuw nsw i32 %i.0, 13, !dbg !2344
  %49 = getelementptr inbounds nuw i8, ptr %a, i32 %mul145, !dbg !2345
  %arrayidx147 = getelementptr inbounds nuw i8, ptr %49, i32 9, !dbg !2345
  %50 = load i8, ptr %arrayidx147, align 1, !dbg !2345
  %51 = lshr i8 %50, 6, !dbg !2346
  %shr149 = zext nneg i8 %51 to i32, !dbg !2346
  %mul150 = shl nuw nsw i32 %i.0, 3, !dbg !2347
  %add151 = or disjoint i32 %mul150, 6, !dbg !2348
  %arrayidx152 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add151, !dbg !2349
  store i32 %shr149, ptr %arrayidx152, align 4, !dbg !2350
  %mul153 = mul nuw nsw i32 %i.0, 13, !dbg !2351
  %52 = getelementptr inbounds nuw i8, ptr %a, i32 %mul153, !dbg !2352
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %52, i32 10, !dbg !2352
  %53 = load i8, ptr %arrayidx155, align 1, !dbg !2352
  %conv156 = zext i8 %53 to i32, !dbg !2353
  %shl157 = shl nuw nsw i32 %conv156, 2, !dbg !2354
  %mul158 = shl nuw nsw i32 %i.0, 3, !dbg !2355
  %add159 = or disjoint i32 %mul158, 6, !dbg !2356
  %arrayidx160 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add159, !dbg !2357
  %54 = load i32, ptr %arrayidx160, align 4, !dbg !2358
  %or161 = or i32 %54, %shl157, !dbg !2358
  store i32 %or161, ptr %arrayidx160, align 4, !dbg !2358
  %mul162 = mul nuw nsw i32 %i.0, 13, !dbg !2359
  %55 = getelementptr inbounds nuw i8, ptr %a, i32 %mul162, !dbg !2360
  %arrayidx164 = getelementptr inbounds nuw i8, ptr %55, i32 11, !dbg !2360
  %56 = load i8, ptr %arrayidx164, align 1, !dbg !2360
  %conv165 = zext i8 %56 to i32, !dbg !2361
  %shl166 = shl nuw nsw i32 %conv165, 10, !dbg !2362
  %mul167 = shl nuw nsw i32 %i.0, 3, !dbg !2363
  %add168 = or disjoint i32 %mul167, 6, !dbg !2364
  %arrayidx169 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add168, !dbg !2365
  %57 = load i32, ptr %arrayidx169, align 4, !dbg !2366
  %or170 = or i32 %57, %shl166, !dbg !2366
  store i32 %or170, ptr %arrayidx169, align 4, !dbg !2366
  %mul171 = shl nuw nsw i32 %i.0, 3, !dbg !2367
  %add172 = or disjoint i32 %mul171, 6, !dbg !2368
  %arrayidx173 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add172, !dbg !2369
  %58 = load i32, ptr %arrayidx173, align 4, !dbg !2370
  %and174 = and i32 %58, 8191, !dbg !2370
  store i32 %and174, ptr %arrayidx173, align 4, !dbg !2370
  %mul175 = mul nuw nsw i32 %i.0, 13, !dbg !2371
  %59 = getelementptr inbounds nuw i8, ptr %a, i32 %mul175, !dbg !2372
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %59, i32 11, !dbg !2372
  %60 = load i8, ptr %arrayidx177, align 1, !dbg !2372
  %61 = lshr i8 %60, 3, !dbg !2373
  %shr179 = zext nneg i8 %61 to i32, !dbg !2373
  %mul180 = shl nuw nsw i32 %i.0, 3, !dbg !2374
  %add181 = or disjoint i32 %mul180, 7, !dbg !2375
  %arrayidx182 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add181, !dbg !2376
  store i32 %shr179, ptr %arrayidx182, align 4, !dbg !2377
  %mul183 = mul nuw nsw i32 %i.0, 13, !dbg !2378
  %62 = getelementptr inbounds nuw i8, ptr %a, i32 %mul183, !dbg !2379
  %arrayidx185 = getelementptr inbounds nuw i8, ptr %62, i32 12, !dbg !2379
  %63 = load i8, ptr %arrayidx185, align 1, !dbg !2379
  %conv186 = zext i8 %63 to i32, !dbg !2380
  %shl187 = shl nuw nsw i32 %conv186, 5, !dbg !2381
  %mul188 = shl nuw nsw i32 %i.0, 3, !dbg !2382
  %add189 = or disjoint i32 %mul188, 7, !dbg !2383
  %arrayidx190 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add189, !dbg !2384
  %64 = load i32, ptr %arrayidx190, align 4, !dbg !2385
  %or191 = or i32 %64, %shl187, !dbg !2385
  store i32 %or191, ptr %arrayidx190, align 4, !dbg !2385
  %mul192 = shl nuw nsw i32 %i.0, 3, !dbg !2386
  %add193 = or disjoint i32 %mul192, 7, !dbg !2387
  %arrayidx194 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add193, !dbg !2388
  %65 = load i32, ptr %arrayidx194, align 4, !dbg !2389
  %and195 = and i32 %65, 8191, !dbg !2389
  store i32 %and195, ptr %arrayidx194, align 4, !dbg !2389
  %mul196 = shl nuw nsw i32 %i.0, 3, !dbg !2390
  %arrayidx198 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul196, !dbg !2391
  %66 = load i32, ptr %arrayidx198, align 4, !dbg !2391
  %sub = sub nsw i32 4096, %66, !dbg !2392
  %mul199 = shl nuw nsw i32 %i.0, 3, !dbg !2393
  %arrayidx201 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul199, !dbg !2394
  store i32 %sub, ptr %arrayidx201, align 4, !dbg !2395
  %mul202 = shl nuw nsw i32 %i.0, 3, !dbg !2396
  %add203 = or disjoint i32 %mul202, 1, !dbg !2397
  %arrayidx204 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add203, !dbg !2398
  %67 = load i32, ptr %arrayidx204, align 4, !dbg !2398
  %sub205 = sub nsw i32 4096, %67, !dbg !2399
  %mul206 = shl nuw nsw i32 %i.0, 3, !dbg !2400
  %add207 = or disjoint i32 %mul206, 1, !dbg !2401
  %arrayidx208 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add207, !dbg !2402
  store i32 %sub205, ptr %arrayidx208, align 4, !dbg !2403
  %mul209 = shl nuw nsw i32 %i.0, 3, !dbg !2404
  %add210 = or disjoint i32 %mul209, 2, !dbg !2405
  %arrayidx211 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add210, !dbg !2406
  %68 = load i32, ptr %arrayidx211, align 4, !dbg !2406
  %sub212 = sub nsw i32 4096, %68, !dbg !2407
  %mul213 = shl nuw nsw i32 %i.0, 3, !dbg !2408
  %add214 = or disjoint i32 %mul213, 2, !dbg !2409
  %arrayidx215 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add214, !dbg !2410
  store i32 %sub212, ptr %arrayidx215, align 4, !dbg !2411
  %mul216 = shl nuw nsw i32 %i.0, 3, !dbg !2412
  %add217 = or disjoint i32 %mul216, 3, !dbg !2413
  %arrayidx218 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add217, !dbg !2414
  %69 = load i32, ptr %arrayidx218, align 4, !dbg !2414
  %sub219 = sub nsw i32 4096, %69, !dbg !2415
  %mul220 = shl nuw nsw i32 %i.0, 3, !dbg !2416
  %add221 = or disjoint i32 %mul220, 3, !dbg !2417
  %arrayidx222 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add221, !dbg !2418
  store i32 %sub219, ptr %arrayidx222, align 4, !dbg !2419
  %mul223 = shl nuw nsw i32 %i.0, 3, !dbg !2420
  %add224 = or disjoint i32 %mul223, 4, !dbg !2421
  %arrayidx225 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add224, !dbg !2422
  %70 = load i32, ptr %arrayidx225, align 4, !dbg !2422
  %sub226 = sub nsw i32 4096, %70, !dbg !2423
  %mul227 = shl nuw nsw i32 %i.0, 3, !dbg !2424
  %add228 = or disjoint i32 %mul227, 4, !dbg !2425
  %arrayidx229 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add228, !dbg !2426
  store i32 %sub226, ptr %arrayidx229, align 4, !dbg !2427
  %mul230 = shl nuw nsw i32 %i.0, 3, !dbg !2428
  %add231 = or disjoint i32 %mul230, 5, !dbg !2429
  %arrayidx232 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add231, !dbg !2430
  %71 = load i32, ptr %arrayidx232, align 4, !dbg !2430
  %sub233 = sub nsw i32 4096, %71, !dbg !2431
  %mul234 = shl nuw nsw i32 %i.0, 3, !dbg !2432
  %add235 = or disjoint i32 %mul234, 5, !dbg !2433
  %arrayidx236 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add235, !dbg !2434
  store i32 %sub233, ptr %arrayidx236, align 4, !dbg !2435
  %mul237 = shl nuw nsw i32 %i.0, 3, !dbg !2436
  %add238 = or disjoint i32 %mul237, 6, !dbg !2437
  %arrayidx239 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add238, !dbg !2438
  %72 = load i32, ptr %arrayidx239, align 4, !dbg !2438
  %sub240 = sub nsw i32 4096, %72, !dbg !2439
  %mul241 = shl nuw nsw i32 %i.0, 3, !dbg !2440
  %add242 = or disjoint i32 %mul241, 6, !dbg !2441
  %arrayidx243 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add242, !dbg !2442
  store i32 %sub240, ptr %arrayidx243, align 4, !dbg !2443
  %mul244 = shl nuw nsw i32 %i.0, 3, !dbg !2444
  %add245 = or disjoint i32 %mul244, 7, !dbg !2445
  %arrayidx246 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add245, !dbg !2446
  %73 = load i32, ptr %arrayidx246, align 4, !dbg !2446
  %sub247 = sub nsw i32 4096, %73, !dbg !2447
  %mul248 = shl nuw nsw i32 %i.0, 3, !dbg !2448
  %add249 = or disjoint i32 %mul248, 7, !dbg !2449
  %arrayidx250 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add249, !dbg !2450
  store i32 %sub247, ptr %arrayidx250, align 4, !dbg !2451
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2452
    #dbg_value(i32 %inc, !2202, !DIExpression(), !2200)
  br label %for.cond, !dbg !2453, !llvm.loop !2454

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2456
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyz_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2457 {
entry:
    #dbg_value(ptr %r, !2458, !DIExpression(), !2459)
    #dbg_value(ptr %a, !2460, !DIExpression(), !2459)
    #dbg_value(i32 0, !2461, !DIExpression(), !2459)
  br label %for.cond, !dbg !2462

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2464
    #dbg_value(i32 %i.0, !2461, !DIExpression(), !2459)
  %exitcond = icmp ne i32 %i.0, 128, !dbg !2465
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2467

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 1, !dbg !2468
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !2470
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2470
  %sub = sub nsw i32 524288, %0, !dbg !2471
    #dbg_value(i32 %sub, !2472, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2459)
  %mul2 = shl nuw nsw i32 %i.0, 1, !dbg !2476
  %add3 = or disjoint i32 %mul2, 1, !dbg !2477
  %arrayidx4 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add3, !dbg !2478
  %1 = load i32, ptr %arrayidx4, align 4, !dbg !2478
  %sub5 = sub nsw i32 524288, %1, !dbg !2479
    #dbg_value(i32 %sub5, !2472, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2459)
  %conv = trunc i32 %sub to i8, !dbg !2480
  %mul8 = mul nuw nsw i32 %i.0, 5, !dbg !2481
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %r, i32 %mul8, !dbg !2482
  store i8 %conv, ptr %arrayidx10, align 1, !dbg !2483
  %shr = lshr i32 %sub, 8, !dbg !2484
  %conv12 = trunc i32 %shr to i8, !dbg !2485
  %mul13 = mul nuw nsw i32 %i.0, 5, !dbg !2486
  %2 = getelementptr inbounds nuw i8, ptr %r, i32 %mul13, !dbg !2487
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %2, i32 1, !dbg !2487
  store i8 %conv12, ptr %arrayidx15, align 1, !dbg !2488
  %shr17 = lshr i32 %sub, 16, !dbg !2489
  %conv18 = trunc i32 %shr17 to i8, !dbg !2490
  %mul19 = mul nuw nsw i32 %i.0, 5, !dbg !2491
  %3 = getelementptr inbounds nuw i8, ptr %r, i32 %mul19, !dbg !2492
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %3, i32 2, !dbg !2492
  store i8 %conv18, ptr %arrayidx21, align 1, !dbg !2493
  %mul23 = mul nuw nsw i32 %i.0, 5, !dbg !2494
  %4 = getelementptr inbounds nuw i8, ptr %r, i32 %mul23, !dbg !2495
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %4, i32 2, !dbg !2495
  %5 = load i8, ptr %arrayidx25, align 1, !dbg !2496
  %sub5.tr = trunc i32 %sub5 to i8, !dbg !2496
  %6 = shl i8 %sub5.tr, 4, !dbg !2496
  %conv27 = or i8 %6, %5, !dbg !2496
  store i8 %conv27, ptr %arrayidx25, align 1, !dbg !2496
  %shr29 = lshr i32 %sub5, 4, !dbg !2497
  %conv30 = trunc i32 %shr29 to i8, !dbg !2498
  %mul31 = mul nuw nsw i32 %i.0, 5, !dbg !2499
  %7 = getelementptr inbounds nuw i8, ptr %r, i32 %mul31, !dbg !2500
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %7, i32 3, !dbg !2500
  store i8 %conv30, ptr %arrayidx33, align 1, !dbg !2501
  %shr35 = lshr i32 %sub5, 12, !dbg !2502
  %conv36 = trunc i32 %shr35 to i8, !dbg !2503
  %mul37 = mul nuw nsw i32 %i.0, 5, !dbg !2504
  %8 = getelementptr inbounds nuw i8, ptr %r, i32 %mul37, !dbg !2505
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %8, i32 4, !dbg !2505
  store i8 %conv36, ptr %arrayidx39, align 1, !dbg !2506
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2507
    #dbg_value(i32 %inc, !2461, !DIExpression(), !2459)
  br label %for.cond, !dbg !2508, !llvm.loop !2509

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2511
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_polyw1_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2512 {
entry:
    #dbg_value(ptr %r, !2513, !DIExpression(), !2514)
    #dbg_value(ptr %a, !2515, !DIExpression(), !2514)
    #dbg_value(i32 0, !2516, !DIExpression(), !2514)
  br label %for.cond, !dbg !2517

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2519
    #dbg_value(i32 %i.0, !2516, !DIExpression(), !2514)
  %exitcond = icmp ne i32 %i.0, 128, !dbg !2520
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2522

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 1, !dbg !2523
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !2524
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2524
  %mul1 = shl nuw nsw i32 %i.0, 1, !dbg !2525
  %add2 = or disjoint i32 %mul1, 1, !dbg !2526
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add2, !dbg !2527
  %1 = load i32, ptr %arrayidx3, align 4, !dbg !2527
  %shl = shl i32 %1, 4, !dbg !2528
  %or = or i32 %0, %shl, !dbg !2529
  %conv = trunc i32 %or to i8, !dbg !2524
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2530
  store i8 %conv, ptr %arrayidx4, align 1, !dbg !2531
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2532
    #dbg_value(i32 %inc, !2516, !DIExpression(), !2514)
  br label %for.cond, !dbg !2533, !llvm.loop !2534

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2536
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_ntt(ptr noundef %a) local_unnamed_addr #0 !dbg !2537 {
entry:
    #dbg_value(ptr %a, !2540, !DIExpression(), !2541)
    #dbg_value(i32 0, !2542, !DIExpression(), !2541)
    #dbg_value(i32 128, !2543, !DIExpression(), !2541)
  br label %for.cond, !dbg !2544

for.cond:                                         ; preds = %for.inc20, %entry
  %len.0 = phi i32 [ 128, %entry ], [ %shr, %for.inc20 ], !dbg !2546
  %k.0 = phi i32 [ 0, %entry ], [ %k.1.lcssa, %for.inc20 ], !dbg !2547
    #dbg_value(i32 %k.0, !2542, !DIExpression(), !2541)
    #dbg_value(i32 %len.0, !2543, !DIExpression(), !2541)
  %cmp.not = icmp eq i32 %len.0, 0, !dbg !2548
  br i1 %cmp.not, label %for.end21, label %for.cond1.preheader, !dbg !2550

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2551

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc17
  %start.0 = phi i32 [ %add18, %for.inc17 ], [ 0, %for.cond1.preheader ], !dbg !2554
  %k.1 = phi i32 [ %inc, %for.inc17 ], [ %k.0, %for.cond1.preheader ], !dbg !2541
    #dbg_value(i32 %k.1, !2542, !DIExpression(), !2541)
    #dbg_value(i32 %start.0, !2555, !DIExpression(), !2541)
  %cmp2 = icmp ult i32 %start.0, 256, !dbg !2556
  br i1 %cmp2, label %for.body3, label %for.inc20, !dbg !2551

for.body3:                                        ; preds = %for.cond1
  %inc = add i32 %k.1, 1, !dbg !2558
    #dbg_value(i32 %inc, !2542, !DIExpression(), !2541)
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @zetas, i32 0, i32 %inc, !dbg !2560
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2560
    #dbg_value(i32 %0, !2561, !DIExpression(), !2541)
    #dbg_value(i32 %start.0, !2562, !DIExpression(), !2541)
  br label %for.cond4, !dbg !2563

for.cond4:                                        ; preds = %for.body6, %for.body3
  %j.0 = phi i32 [ %start.0, %for.body3 ], [ %inc16, %for.body6 ], !dbg !2565
    #dbg_value(i32 %j.0, !2562, !DIExpression(), !2541)
  %add = add nuw nsw i32 %start.0, %len.0, !dbg !2566
  %cmp5 = icmp ult i32 %j.0, %add, !dbg !2568
  br i1 %cmp5, label %for.body6, label %for.inc17, !dbg !2569

for.body6:                                        ; preds = %for.cond4
  %conv = sext i32 %0 to i64, !dbg !2570
  %1 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2572
  %arrayidx8 = getelementptr i32, ptr %1, i32 %len.0, !dbg !2572
  %2 = load i32, ptr %arrayidx8, align 4, !dbg !2572
  %conv9 = sext i32 %2 to i64, !dbg !2572
  %mul = mul nsw i64 %conv, %conv9, !dbg !2573
  %call = call i32 @pqcrystals_dilithium3_ref_montgomery_reduce(i64 noundef %mul) #4, !dbg !2574
    #dbg_value(i32 %call, !2575, !DIExpression(), !2541)
  %arrayidx10 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2576
  %3 = load i32, ptr %arrayidx10, align 4, !dbg !2576
  %sub = sub nsw i32 %3, %call, !dbg !2577
  %4 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2578
  %arrayidx12 = getelementptr i32, ptr %4, i32 %len.0, !dbg !2578
  store i32 %sub, ptr %arrayidx12, align 4, !dbg !2579
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2580
  %5 = load i32, ptr %arrayidx13, align 4, !dbg !2580
  %add14 = add nsw i32 %5, %call, !dbg !2581
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2582
  store i32 %add14, ptr %arrayidx15, align 4, !dbg !2583
  %inc16 = add nuw i32 %j.0, 1, !dbg !2584
    #dbg_value(i32 %inc16, !2562, !DIExpression(), !2541)
  br label %for.cond4, !dbg !2585, !llvm.loop !2586

for.inc17:                                        ; preds = %for.cond4
  %j.0.lcssa = phi i32 [ %j.0, %for.cond4 ], !dbg !2565
  %add18 = add i32 %j.0.lcssa, %len.0, !dbg !2588
    #dbg_value(i32 %add18, !2555, !DIExpression(), !2541)
  br label %for.cond1, !dbg !2589, !llvm.loop !2590

for.inc20:                                        ; preds = %for.cond1
  %k.1.lcssa = phi i32 [ %k.1, %for.cond1 ], !dbg !2541
  %shr = lshr i32 %len.0, 1, !dbg !2592
    #dbg_value(i32 %shr, !2543, !DIExpression(), !2541)
  br label %for.cond, !dbg !2593, !llvm.loop !2594

for.end21:                                        ; preds = %for.cond
  ret void, !dbg !2596
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_invntt_tomont(ptr noundef %a) local_unnamed_addr #0 !dbg !2597 {
entry:
    #dbg_value(ptr %a, !2598, !DIExpression(), !2599)
    #dbg_value(i32 41978, !2600, !DIExpression(), !2599)
    #dbg_value(i32 256, !2601, !DIExpression(), !2599)
    #dbg_value(i32 1, !2602, !DIExpression(), !2599)
  br label %for.cond, !dbg !2603

for.cond:                                         ; preds = %for.inc25, %entry
  %len.0 = phi i32 [ 1, %entry ], [ %shl, %for.inc25 ], !dbg !2605
  %k.0 = phi i32 [ 256, %entry ], [ %k.1.lcssa, %for.inc25 ], !dbg !2606
    #dbg_value(i32 %k.0, !2601, !DIExpression(), !2599)
    #dbg_value(i32 %len.0, !2602, !DIExpression(), !2599)
  %cmp = icmp samesign ult i32 %len.0, 256, !dbg !2607
  br i1 %cmp, label %for.cond1.preheader, label %for.cond27.preheader, !dbg !2609

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2610

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !2613

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc22
  %start.0 = phi i32 [ %add23, %for.inc22 ], [ 0, %for.cond1.preheader ], !dbg !2615
  %k.1 = phi i32 [ %dec, %for.inc22 ], [ %k.0, %for.cond1.preheader ], !dbg !2599
    #dbg_value(i32 %k.1, !2601, !DIExpression(), !2599)
    #dbg_value(i32 %start.0, !2616, !DIExpression(), !2599)
  %cmp2 = icmp ult i32 %start.0, 256, !dbg !2617
  br i1 %cmp2, label %for.body3, label %for.inc25, !dbg !2610

for.body3:                                        ; preds = %for.cond1
  %dec = add i32 %k.1, -1, !dbg !2619
    #dbg_value(i32 %dec, !2601, !DIExpression(), !2599)
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @zetas, i32 0, i32 %dec, !dbg !2621
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2621
  %sub = sub nsw i32 0, %0, !dbg !2622
    #dbg_value(i32 %sub, !2623, !DIExpression(), !2599)
    #dbg_value(i32 %start.0, !2624, !DIExpression(), !2599)
  br label %for.cond4, !dbg !2625

for.cond4:                                        ; preds = %for.body6, %for.body3
  %j.0 = phi i32 [ %start.0, %for.body3 ], [ %inc, %for.body6 ], !dbg !2627
    #dbg_value(i32 %j.0, !2624, !DIExpression(), !2599)
  %add = add nuw nsw i32 %start.0, %len.0, !dbg !2628
  %cmp5 = icmp ult i32 %j.0, %add, !dbg !2630
  br i1 %cmp5, label %for.body6, label %for.inc22, !dbg !2631

for.body6:                                        ; preds = %for.cond4
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2632
  %1 = load i32, ptr %arrayidx7, align 4, !dbg !2632
    #dbg_value(i32 %1, !2634, !DIExpression(), !2599)
  %2 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2635
  %arrayidx9 = getelementptr i32, ptr %2, i32 %len.0, !dbg !2635
  %3 = load i32, ptr %arrayidx9, align 4, !dbg !2635
  %add10 = add nsw i32 %1, %3, !dbg !2636
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2637
  store i32 %add10, ptr %arrayidx11, align 4, !dbg !2638
  %4 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2639
  %arrayidx13 = getelementptr i32, ptr %4, i32 %len.0, !dbg !2639
  %5 = load i32, ptr %arrayidx13, align 4, !dbg !2639
  %sub14 = sub nsw i32 %1, %5, !dbg !2640
  %6 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2641
  %arrayidx16 = getelementptr i32, ptr %6, i32 %len.0, !dbg !2641
  store i32 %sub14, ptr %arrayidx16, align 4, !dbg !2642
  %conv = sext i32 %sub to i64, !dbg !2643
  %7 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2644
  %arrayidx18 = getelementptr i32, ptr %7, i32 %len.0, !dbg !2644
  %8 = load i32, ptr %arrayidx18, align 4, !dbg !2644
  %conv19 = sext i32 %8 to i64, !dbg !2644
  %mul = mul nsw i64 %conv, %conv19, !dbg !2645
  %call = call i32 @pqcrystals_dilithium3_ref_montgomery_reduce(i64 noundef %mul) #4, !dbg !2646
  %9 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2647
  %arrayidx21 = getelementptr i32, ptr %9, i32 %len.0, !dbg !2647
  store i32 %call, ptr %arrayidx21, align 4, !dbg !2648
  %inc = add nuw i32 %j.0, 1, !dbg !2649
    #dbg_value(i32 %inc, !2624, !DIExpression(), !2599)
  br label %for.cond4, !dbg !2650, !llvm.loop !2651

for.inc22:                                        ; preds = %for.cond4
  %j.0.lcssa = phi i32 [ %j.0, %for.cond4 ], !dbg !2627
  %add23 = add i32 %j.0.lcssa, %len.0, !dbg !2653
    #dbg_value(i32 %add23, !2616, !DIExpression(), !2599)
  br label %for.cond1, !dbg !2654, !llvm.loop !2655

for.inc25:                                        ; preds = %for.cond1
  %k.1.lcssa = phi i32 [ %k.1, %for.cond1 ], !dbg !2599
  %shl = shl nuw nsw i32 %len.0, 1, !dbg !2657
    #dbg_value(i32 %shl, !2602, !DIExpression(), !2599)
  br label %for.cond, !dbg !2658, !llvm.loop !2659

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %j.1 = phi i32 [ %inc37, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !2661
    #dbg_value(i32 %j.1, !2624, !DIExpression(), !2599)
  %exitcond = icmp ne i32 %j.1, 256, !dbg !2662
  br i1 %exitcond, label %for.body30, label %for.end38, !dbg !2613

for.body30:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw i32, ptr %a, i32 %j.1, !dbg !2664
  %10 = load i32, ptr %arrayidx31, align 4, !dbg !2664
  %conv32 = sext i32 %10 to i64, !dbg !2664
  %mul33 = mul nsw i64 %conv32, 41978, !dbg !2666
  %call34 = call i32 @pqcrystals_dilithium3_ref_montgomery_reduce(i64 noundef %mul33) #4, !dbg !2667
  %arrayidx35 = getelementptr inbounds nuw i32, ptr %a, i32 %j.1, !dbg !2668
  store i32 %call34, ptr %arrayidx35, align 4, !dbg !2669
  %inc37 = add nuw nsw i32 %j.1, 1, !dbg !2670
    #dbg_value(i32 %inc37, !2624, !DIExpression(), !2599)
  br label %for.cond27, !dbg !2671, !llvm.loop !2672

for.end38:                                        ; preds = %for.cond27
  ret void, !dbg !2674
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium3_ref_montgomery_reduce(i64 noundef %a) local_unnamed_addr #0 !dbg !2675 {
entry:
    #dbg_value(i64 %a, !2679, !DIExpression(), !2680)
  %0 = trunc i64 %a to i32, !dbg !2681
  %conv2 = mul i32 %0, 58728449, !dbg !2681
    #dbg_value(i32 %conv2, !2682, !DIExpression(), !2680)
  %conv3 = sext i32 %conv2 to i64, !dbg !2683
  %mul4.neg = mul nsw i64 %conv3, -8380417, !dbg !2684
  %sub = add i64 %mul4.neg, %a, !dbg !2685
  %shr = lshr i64 %sub, 32, !dbg !2686
  %conv5 = trunc nuw i64 %shr to i32, !dbg !2687
    #dbg_value(i32 %conv5, !2682, !DIExpression(), !2680)
  ret i32 %conv5, !dbg !2688
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium3_ref_reduce32(i32 noundef %a) local_unnamed_addr #0 !dbg !2689 {
entry:
    #dbg_value(i32 %a, !2692, !DIExpression(), !2693)
  %add = add nsw i32 %a, 4194304, !dbg !2694
  %shr = ashr i32 %add, 23, !dbg !2695
    #dbg_value(i32 %shr, !2696, !DIExpression(), !2693)
  %mul.neg = mul nsw i32 %shr, -8380417, !dbg !2697
  %sub = add i32 %mul.neg, %a, !dbg !2698
    #dbg_value(i32 %sub, !2696, !DIExpression(), !2693)
  ret i32 %sub, !dbg !2699
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium3_ref_caddq(i32 noundef %a) local_unnamed_addr #0 !dbg !2700 {
entry:
    #dbg_value(i32 %a, !2701, !DIExpression(), !2702)
  %isneg = icmp slt i32 %a, 0, !dbg !2703
  %and = select i1 %isneg, i32 8380417, i32 0, !dbg !2703
  %add = add nsw i32 %a, %and, !dbg !2704
    #dbg_value(i32 %add, !2701, !DIExpression(), !2702)
  ret i32 %add, !dbg !2705
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium3_ref_freeze(i32 noundef %a) local_unnamed_addr #0 !dbg !2706 {
entry:
    #dbg_value(i32 %a, !2707, !DIExpression(), !2708)
  %call = call i32 @pqcrystals_dilithium3_ref_reduce32(i32 noundef %a) #4, !dbg !2709
    #dbg_value(i32 %call, !2707, !DIExpression(), !2708)
  %call1 = call i32 @pqcrystals_dilithium3_ref_caddq(i32 noundef %call) #4, !dbg !2710
    #dbg_value(i32 %call1, !2707, !DIExpression(), !2708)
  ret i32 %call1, !dbg !2711
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_init(ptr noundef %state) local_unnamed_addr #0 !dbg !2712 {
entry:
    #dbg_value(ptr %state, !2716, !DIExpression(), !2717)
  call fastcc void @keccak_init(ptr noundef %state) #4, !dbg !2718
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !2719
  store i64 0, ptr %arrayidx, align 8, !dbg !2720
  ret void, !dbg !2721
}

; Function Attrs: nounwind
define internal fastcc void @keccak_init(ptr noundef %s) unnamed_addr #0 !dbg !2722 {
entry:
    #dbg_value(ptr %s, !2726, !DIExpression(), !2727)
    #dbg_value(i32 0, !2728, !DIExpression(), !2727)
  br label %for.cond, !dbg !2729

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2731
    #dbg_value(i32 %i.0, !2728, !DIExpression(), !2727)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !2732
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2734

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !2735
  store i64 0, ptr %arrayidx, align 8, !dbg !2736
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2737
    #dbg_value(i32 %inc, !2728, !DIExpression(), !2727)
  br label %for.cond, !dbg !2738, !llvm.loop !2739

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2741
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_absorb(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !2742 {
entry:
    #dbg_value(ptr %state, !2745, !DIExpression(), !2746)
    #dbg_value(ptr %in, !2747, !DIExpression(), !2746)
    #dbg_value(i32 %inlen, !2748, !DIExpression(), !2746)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !2749
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2749
  %conv = trunc i64 %0 to i32, !dbg !2750
  %call = call fastcc i32 @keccak_absorb(ptr noundef %state, i32 noundef %conv, i32 noundef 168, ptr noundef %in, i32 noundef %inlen) #4, !dbg !2751
    #dbg_value(i32 %call, !2752, !DIExpression(), !2746)
  %conv1 = zext i32 %call to i64, !dbg !2753
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !2754
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !2755
  ret void, !dbg !2756
}

; Function Attrs: nounwind
define internal fastcc i32 @keccak_absorb(ptr noundef %s, i32 noundef %pos, i32 noundef range(i32 136, 169) %r, ptr noundef %in, i32 noundef %inlen) unnamed_addr #0 !dbg !2757 {
entry:
    #dbg_value(ptr %s, !2760, !DIExpression(), !2761)
    #dbg_value(i32 %pos, !2762, !DIExpression(), !2761)
    #dbg_value(i32 %r, !2763, !DIExpression(), !2761)
    #dbg_value(ptr %in, !2764, !DIExpression(), !2761)
    #dbg_value(i32 %inlen, !2765, !DIExpression(), !2761)
  br label %while.cond, !dbg !2766

while.cond:                                       ; preds = %for.end, %entry
  %in.addr.0 = phi ptr [ %in, %entry ], [ %in.addr.1.lcssa, %for.end ]
  %inlen.addr.0 = phi i32 [ %inlen, %entry ], [ %sub2, %for.end ]
  %pos.addr.0 = phi i32 [ %pos, %entry ], [ 0, %for.end ]
    #dbg_value(i32 %pos.addr.0, !2762, !DIExpression(), !2761)
    #dbg_value(i32 %inlen.addr.0, !2765, !DIExpression(), !2761)
    #dbg_value(ptr %in.addr.0, !2764, !DIExpression(), !2761)
  %add = add i32 %pos.addr.0, %inlen.addr.0, !dbg !2767
  %cmp.not = icmp ult i32 %add, %r, !dbg !2768
  br i1 %cmp.not, label %for.cond3.preheader, label %for.cond.preheader, !dbg !2766

for.cond.preheader:                               ; preds = %while.cond
  %umax = call i32 @llvm.umax.i32(i32 %pos.addr.0, i32 %r), !dbg !2769
  br label %for.cond, !dbg !2769

for.cond3.preheader:                              ; preds = %while.cond
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %inlen.addr.0.lcssa = phi i32 [ %inlen.addr.0, %while.cond ]
  %pos.addr.0.lcssa = phi i32 [ %pos.addr.0, %while.cond ]
  br label %for.cond3, !dbg !2772

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %in.addr.1 = phi ptr [ %incdec.ptr, %for.body ], [ %in.addr.0, %for.cond.preheader ]
  %i.0 = phi i32 [ %inc, %for.body ], [ %pos.addr.0, %for.cond.preheader ], !dbg !2774
    #dbg_value(i32 %i.0, !2775, !DIExpression(), !2761)
    #dbg_value(ptr %in.addr.1, !2764, !DIExpression(), !2761)
  %exitcond = icmp ne i32 %i.0, %umax, !dbg !2776
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2769

for.body:                                         ; preds = %for.cond
    #dbg_value(ptr %in.addr.1, !2764, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2761)
  %0 = load i8, ptr %in.addr.1, align 1, !dbg !2778
  %conv = zext i8 %0 to i64, !dbg !2779
  %rem = shl nuw nsw i32 %i.0, 3, !dbg !2780
  %mul = and i32 %rem, 56, !dbg !2780
  %sh_prom = zext nneg i32 %mul to i64, !dbg !2781
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !2781
  %div2 = lshr i32 %i.0, 3, !dbg !2782
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %div2, !dbg !2783
  %1 = load i64, ptr %arrayidx, align 8, !dbg !2784
  %xor = xor i64 %1, %shl, !dbg !2784
  store i64 %xor, ptr %arrayidx, align 8, !dbg !2784
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %in.addr.1, i32 1, !dbg !2785
    #dbg_value(ptr %incdec.ptr, !2764, !DIExpression(), !2761)
  %inc = add i32 %i.0, 1, !dbg !2786
    #dbg_value(i32 %inc, !2775, !DIExpression(), !2761)
  br label %for.cond, !dbg !2787, !llvm.loop !2788

for.end:                                          ; preds = %for.cond
  %in.addr.1.lcssa = phi ptr [ %in.addr.1, %for.cond ]
  %sub.neg = sub i32 %pos.addr.0, %r, !dbg !2790
  %sub2 = add i32 %sub.neg, %inlen.addr.0, !dbg !2791
    #dbg_value(i32 %sub2, !2765, !DIExpression(), !2761)
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !2792
    #dbg_value(i32 0, !2762, !DIExpression(), !2761)
  br label %while.cond, !dbg !2766, !llvm.loop !2793

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body7
  %in.addr.2 = phi ptr [ %incdec.ptr8, %for.body7 ], [ %in.addr.0.lcssa, %for.cond3.preheader ]
  %i.1 = phi i32 [ %inc18, %for.body7 ], [ %pos.addr.0.lcssa, %for.cond3.preheader ], !dbg !2795
    #dbg_value(i32 %i.1, !2775, !DIExpression(), !2761)
    #dbg_value(ptr %in.addr.2, !2764, !DIExpression(), !2761)
  %add4 = add i32 %pos.addr.0.lcssa, %inlen.addr.0.lcssa, !dbg !2796
  %cmp5 = icmp ult i32 %i.1, %add4, !dbg !2798
  br i1 %cmp5, label %for.body7, label %for.end19, !dbg !2772

for.body7:                                        ; preds = %for.cond3
    #dbg_value(ptr %in.addr.2, !2764, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2761)
  %2 = load i8, ptr %in.addr.2, align 1, !dbg !2799
  %conv9 = zext i8 %2 to i64, !dbg !2800
  %rem10 = shl i32 %i.1, 3, !dbg !2801
  %mul11 = and i32 %rem10, 56, !dbg !2801
  %sh_prom12 = zext nneg i32 %mul11 to i64, !dbg !2802
  %shl13 = shl nuw i64 %conv9, %sh_prom12, !dbg !2802
  %div141 = lshr i32 %i.1, 3, !dbg !2803
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s, i32 %div141, !dbg !2804
  %3 = load i64, ptr %arrayidx15, align 8, !dbg !2805
  %xor16 = xor i64 %3, %shl13, !dbg !2805
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !2805
  %incdec.ptr8 = getelementptr inbounds nuw i8, ptr %in.addr.2, i32 1, !dbg !2806
    #dbg_value(ptr %incdec.ptr8, !2764, !DIExpression(), !2761)
  %inc18 = add nuw i32 %i.1, 1, !dbg !2807
    #dbg_value(i32 %inc18, !2775, !DIExpression(), !2761)
  br label %for.cond3, !dbg !2808, !llvm.loop !2809

for.end19:                                        ; preds = %for.cond3
  %i.1.lcssa = phi i32 [ %i.1, %for.cond3 ], !dbg !2795
  ret i32 %i.1.lcssa, !dbg !2811
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !2812 {
entry:
    #dbg_value(ptr %state, !2813, !DIExpression(), !2814)
  %0 = load i64, ptr %state, align 8, !dbg !2815
    #dbg_value(i64 %0, !2816, !DIExpression(), !2814)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !2817
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2817
    #dbg_value(i64 %1, !2818, !DIExpression(), !2814)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !2819
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !2819
    #dbg_value(i64 %2, !2820, !DIExpression(), !2814)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !2821
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !2821
    #dbg_value(i64 %3, !2822, !DIExpression(), !2814)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !2823
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !2823
    #dbg_value(i64 %4, !2824, !DIExpression(), !2814)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !2825
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !2825
    #dbg_value(i64 %5, !2826, !DIExpression(), !2814)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !2827
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !2827
    #dbg_value(i64 %6, !2828, !DIExpression(), !2814)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !2829
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !2829
    #dbg_value(i64 %7, !2830, !DIExpression(), !2814)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !2831
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !2831
    #dbg_value(i64 %8, !2832, !DIExpression(), !2814)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !2833
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !2833
    #dbg_value(i64 %9, !2834, !DIExpression(), !2814)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !2835
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !2835
    #dbg_value(i64 %10, !2836, !DIExpression(), !2814)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !2837
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !2837
    #dbg_value(i64 %11, !2838, !DIExpression(), !2814)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !2839
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !2839
    #dbg_value(i64 %12, !2840, !DIExpression(), !2814)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !2841
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !2841
    #dbg_value(i64 %13, !2842, !DIExpression(), !2814)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !2843
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !2843
    #dbg_value(i64 %14, !2844, !DIExpression(), !2814)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !2845
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !2845
    #dbg_value(i64 %15, !2846, !DIExpression(), !2814)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !2847
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !2847
    #dbg_value(i64 %16, !2848, !DIExpression(), !2814)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !2849
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !2849
    #dbg_value(i64 %17, !2850, !DIExpression(), !2814)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !2851
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !2851
    #dbg_value(i64 %18, !2852, !DIExpression(), !2814)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !2853
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !2853
    #dbg_value(i64 %19, !2854, !DIExpression(), !2814)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !2855
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !2855
    #dbg_value(i64 %20, !2856, !DIExpression(), !2814)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !2857
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !2857
    #dbg_value(i64 %21, !2858, !DIExpression(), !2814)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !2859
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !2859
    #dbg_value(i64 %22, !2860, !DIExpression(), !2814)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !2861
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !2861
    #dbg_value(i64 %23, !2862, !DIExpression(), !2814)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !2863
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !2863
    #dbg_value(i64 %24, !2864, !DIExpression(), !2814)
    #dbg_value(i32 0, !2865, !DIExpression(), !2814)
  br label %for.cond, !dbg !2866

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !2814
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !2814
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !2814
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !2814
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !2814
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !2814
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !2814
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !2814
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !2814
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !2814
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !2814
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !2814
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !2814
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !2814
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !2814
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !2814
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !2814
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !2814
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !2814
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !2814
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !2814
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !2814
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !2814
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !2814
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !2868
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !2814
    #dbg_value(i64 %Asu.0, !2864, !DIExpression(), !2814)
    #dbg_value(i32 %round.0, !2865, !DIExpression(), !2814)
    #dbg_value(i64 %Aba.0, !2816, !DIExpression(), !2814)
    #dbg_value(i64 %Abe.0, !2818, !DIExpression(), !2814)
    #dbg_value(i64 %Abi.0, !2820, !DIExpression(), !2814)
    #dbg_value(i64 %Abo.0, !2822, !DIExpression(), !2814)
    #dbg_value(i64 %Abu.0, !2824, !DIExpression(), !2814)
    #dbg_value(i64 %Aga.0, !2826, !DIExpression(), !2814)
    #dbg_value(i64 %Age.0, !2828, !DIExpression(), !2814)
    #dbg_value(i64 %Agi.0, !2830, !DIExpression(), !2814)
    #dbg_value(i64 %Ago.0, !2832, !DIExpression(), !2814)
    #dbg_value(i64 %Agu.0, !2834, !DIExpression(), !2814)
    #dbg_value(i64 %Aka.0, !2836, !DIExpression(), !2814)
    #dbg_value(i64 %Ake.0, !2838, !DIExpression(), !2814)
    #dbg_value(i64 %Aki.0, !2840, !DIExpression(), !2814)
    #dbg_value(i64 %Ako.0, !2842, !DIExpression(), !2814)
    #dbg_value(i64 %Aku.0, !2844, !DIExpression(), !2814)
    #dbg_value(i64 %Ama.0, !2846, !DIExpression(), !2814)
    #dbg_value(i64 %Ame.0, !2848, !DIExpression(), !2814)
    #dbg_value(i64 %Ami.0, !2850, !DIExpression(), !2814)
    #dbg_value(i64 %Amo.0, !2852, !DIExpression(), !2814)
    #dbg_value(i64 %Amu.0, !2854, !DIExpression(), !2814)
    #dbg_value(i64 %Asa.0, !2856, !DIExpression(), !2814)
    #dbg_value(i64 %Ase.0, !2858, !DIExpression(), !2814)
    #dbg_value(i64 %Asi.0, !2860, !DIExpression(), !2814)
    #dbg_value(i64 %Aso.0, !2862, !DIExpression(), !2814)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !2869
  br i1 %cmp, label %for.inc, label %for.end, !dbg !2871

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !2874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2877, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2880, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2881, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2816, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2828, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2840, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2864, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2883, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2884, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2885, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2886, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2822, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2834, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2860, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2887, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2889, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2818, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2854, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2856, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2894, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2896, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2824, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2826, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2838, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2850, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2862, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2899, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2900, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2901, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2820, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2832, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2846, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2858, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2903, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2904, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2905, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2906, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !2874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2877, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2880, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2881, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2894, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !2900, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2906, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2816, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !2816, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2818, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2820, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2822, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !2824, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !2885, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !2898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2904, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2826, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2828, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2832, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2834, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !2883, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2889, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !2895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2901, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2838, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2840, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2886, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2887, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !2893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2899, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !2905, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2846, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2850, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2854, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2884, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2896, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2903, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 poison, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2856, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2858, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2860, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2862, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2864, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !2907
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !2874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !2909
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !2874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !2910
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !2874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !2911
    #dbg_value(i64 %xor35, !2874, !DIExpression(), !2814)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !2912
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !2913
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !2914
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !2915
    #dbg_value(i64 %xor43, !2876, !DIExpression(), !2814)
  %25 = shl i64 %xor43, 1, !dbg !2916
  %26 = lshr i64 %xor43, 63, !dbg !2916
  %27 = or i64 %25, %26, !dbg !2916
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %27), !2832, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %27), !2822, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %27), !2842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %27), !2852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %27), !2862, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor35, i64 %27), !2880, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor57 = xor i64 %xor35, %27, !dbg !2917
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !2832, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !2822, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !2842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !2852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !2862, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 %xor57, !2880, !DIExpression(), !2814)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !2918
    #dbg_value(i64 %xor203, !2832, !DIExpression(), !2814)
  %28 = shl i64 %xor203, 55, !dbg !2919
  %29 = lshr i64 %xor203, 9, !dbg !2919
  %30 = or i64 %28, %29, !dbg !2919
    #dbg_value(i64 %30, !2873, !DIExpression(), !2814)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !2920
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !2921
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !2922
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !2923
    #dbg_value(i64 %xor31, !2873, !DIExpression(), !2814)
  %31 = shl i64 %xor31, 1, !dbg !2924
  %32 = lshr i64 %xor31, 63, !dbg !2924
  %33 = or i64 %31, %32, !dbg !2924
    #dbg_value(!DIArgList(i64 %xor43, i64 %33), !2877, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !2816, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %33), !2836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %33), !2826, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %33), !2856, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %33), !2846, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor45 = xor i64 %xor43, %33, !dbg !2925
    #dbg_value(i64 %xor45, !2877, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !2816, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !2836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !2826, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !2856, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !2846, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !2926
    #dbg_value(i64 %xor211, !2846, !DIExpression(), !2814)
  %34 = shl i64 %xor211, 41, !dbg !2927
  %35 = lshr i64 %xor211, 23, !dbg !2927
  %36 = or i64 %34, %35, !dbg !2927
    #dbg_value(i64 %36, !2875, !DIExpression(), !2814)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !2928
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !2929
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !2930
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !2931
    #dbg_value(i64 %xor39, !2875, !DIExpression(), !2814)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !2932
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !2933
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !2934
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !2935
    #dbg_value(i64 %xor27, !2872, !DIExpression(), !2814)
  %37 = shl i64 %xor27, 1, !dbg !2936
  %38 = lshr i64 %xor27, 63, !dbg !2936
  %39 = or i64 %37, %38, !dbg !2936
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %39), !2834, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %39), !2824, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %39), !2864, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %39), !2854, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor39, i64 %39), !2881, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %39), !2844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor61 = xor i64 %xor39, %39, !dbg !2937
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !2834, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !2824, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !2864, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !2854, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 %xor61, !2881, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !2844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !2938
    #dbg_value(i64 %xor207, !2844, !DIExpression(), !2814)
  %40 = shl i64 %xor207, 39, !dbg !2939
  %41 = lshr i64 %xor207, 25, !dbg !2939
  %42 = or i64 %40, %41, !dbg !2939
    #dbg_value(i64 %42, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %42), !2903, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not222 = xor i64 %42, -1, !dbg !2940
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %not222), !2903, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and223 = and i64 %36, %not222, !dbg !2941
    #dbg_value(!DIArgList(i64 %30, i64 %and223), !2903, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor224 = xor i64 %30, %and223, !dbg !2942
    #dbg_value(i64 %xor224, !2903, !DIExpression(), !2814)
  %43 = shl i64 %xor39, 1, !dbg !2943
  %44 = lshr i64 %xor39, 63, !dbg !2943
  %45 = or i64 %43, %44, !dbg !2943
    #dbg_value(!DIArgList(i64 %xor31, i64 %45), !2879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %45), !2840, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %45), !2830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %45), !2820, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %45), !2860, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %45), !2850, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor53 = xor i64 %xor31, %45, !dbg !2944
    #dbg_value(i64 %xor53, !2879, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !2840, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !2830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !2820, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !2860, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !2850, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !2945
    #dbg_value(i64 %xor67, !2840, !DIExpression(), !2814)
  %46 = shl i64 %xor67, 43, !dbg !2946
  %47 = lshr i64 %xor67, 21, !dbg !2946
  %48 = or i64 %46, %47, !dbg !2946
    #dbg_value(i64 %48, !2874, !DIExpression(), !2814)
  %49 = shl i64 %xor35, 1, !dbg !2947
  %50 = lshr i64 %xor35, 63, !dbg !2947
  %51 = or i64 %49, %50, !dbg !2947
    #dbg_value(!DIArgList(i64 %xor27, i64 %51), !2878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %51), !2828, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %51), !2818, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %51), !2838, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %51), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %51), !2858, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor49 = xor i64 %xor27, %51, !dbg !2948
    #dbg_value(i64 %xor49, !2878, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !2828, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !2818, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !2838, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !2858, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !2949
    #dbg_value(i64 %xor63, !2828, !DIExpression(), !2814)
  %52 = shl i64 %xor63, 44, !dbg !2950
  %53 = lshr i64 %xor63, 20, !dbg !2950
  %54 = or i64 %52, %53, !dbg !2950
    #dbg_value(i64 %54, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %54), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not = xor i64 %54, -1, !dbg !2951
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %not), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and = and i64 %48, %not, !dbg !2952
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @pqcrystals_dilithium_fips202_ref_KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !2953
  %55 = load i64, ptr %arrayidx80, align 8, !dbg !2953
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %55), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %56 = xor i64 %and, %55, !dbg !2954
    #dbg_value(!DIArgList(i64 %56, i64 %Aba.0, i64 %xor45), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !2955
    #dbg_value(i64 %xor62, !2816, !DIExpression(), !2814)
    #dbg_value(i64 %xor62, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %56, i64 %xor62), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor81 = xor i64 %56, %xor62, !dbg !2954
    #dbg_value(i64 %xor81, !2882, !DIExpression(), !2814)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !2956
    #dbg_value(i64 %xor94, !2822, !DIExpression(), !2814)
  %57 = shl i64 %xor94, 28, !dbg !2957
  %58 = lshr i64 %xor94, 36, !dbg !2957
  %59 = or i64 %57, %58, !dbg !2957
    #dbg_value(i64 %59, !2872, !DIExpression(), !2814)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !2958
    #dbg_value(i64 %xor102, !2836, !DIExpression(), !2814)
  %60 = shl i64 %xor102, 3, !dbg !2959
  %61 = lshr i64 %xor102, 61, !dbg !2959
  %62 = or i64 %60, %61, !dbg !2959
    #dbg_value(i64 %62, !2874, !DIExpression(), !2814)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !2960
    #dbg_value(i64 %xor98, !2834, !DIExpression(), !2814)
  %63 = shl i64 %xor98, 20, !dbg !2961
  %64 = lshr i64 %xor98, 44, !dbg !2961
  %65 = or i64 %63, %64, !dbg !2961
    #dbg_value(i64 %65, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %65), !2887, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not114 = xor i64 %65, -1, !dbg !2962
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %not114), !2887, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and115 = and i64 %62, %not114, !dbg !2963
    #dbg_value(!DIArgList(i64 %59, i64 %and115), !2887, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor116 = xor i64 %59, %and115, !dbg !2964
    #dbg_value(i64 %xor116, !2887, !DIExpression(), !2814)
  %xor234 = xor i64 %xor81, %xor116, !dbg !2965
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !2966
    #dbg_value(i64 %xor129, !2818, !DIExpression(), !2814)
  %66 = shl i64 %xor129, 1, !dbg !2967
  %67 = lshr i64 %xor129, 63, !dbg !2967
  %68 = or i64 %66, %67, !dbg !2967
    #dbg_value(i64 %68, !2872, !DIExpression(), !2814)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !2968
    #dbg_value(i64 %xor137, !2842, !DIExpression(), !2814)
  %69 = shl i64 %xor137, 25, !dbg !2969
  %70 = lshr i64 %xor137, 39, !dbg !2969
  %71 = or i64 %69, %70, !dbg !2969
    #dbg_value(i64 %71, !2874, !DIExpression(), !2814)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !2970
    #dbg_value(i64 %xor133, !2830, !DIExpression(), !2814)
  %72 = shl i64 %xor133, 6, !dbg !2971
  %73 = lshr i64 %xor133, 58, !dbg !2971
  %74 = or i64 %72, %73, !dbg !2971
    #dbg_value(i64 %74, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %74), !2892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not149 = xor i64 %74, -1, !dbg !2972
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %not149), !2892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and150 = and i64 %71, %not149, !dbg !2973
    #dbg_value(!DIArgList(i64 %68, i64 %and150), !2892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor151 = xor i64 %68, %and150, !dbg !2974
    #dbg_value(i64 %xor151, !2892, !DIExpression(), !2814)
  %xor235 = xor i64 %xor234, %xor151, !dbg !2975
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !2976
    #dbg_value(i64 %xor164, !2824, !DIExpression(), !2814)
  %75 = shl i64 %xor164, 27, !dbg !2977
  %76 = lshr i64 %xor164, 37, !dbg !2977
  %77 = or i64 %75, %76, !dbg !2977
    #dbg_value(i64 %77, !2872, !DIExpression(), !2814)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !2978
    #dbg_value(i64 %xor172, !2838, !DIExpression(), !2814)
  %78 = shl i64 %xor172, 10, !dbg !2979
  %79 = lshr i64 %xor172, 54, !dbg !2979
  %80 = or i64 %78, %79, !dbg !2979
    #dbg_value(i64 %80, !2874, !DIExpression(), !2814)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !2980
    #dbg_value(i64 %xor168, !2826, !DIExpression(), !2814)
  %81 = shl i64 %xor168, 36, !dbg !2981
  %82 = lshr i64 %xor168, 28, !dbg !2981
  %83 = or i64 %81, %82, !dbg !2981
    #dbg_value(i64 %83, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %83), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not184 = xor i64 %83, -1, !dbg !2982
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %not184), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and185 = and i64 %80, %not184, !dbg !2983
    #dbg_value(!DIArgList(i64 %77, i64 %and185), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor186 = xor i64 %77, %and185, !dbg !2984
    #dbg_value(i64 %xor186, !2897, !DIExpression(), !2814)
  %xor236 = xor i64 %xor235, %xor186, !dbg !2985
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !2986
    #dbg_value(i64 %xor199, !2820, !DIExpression(), !2814)
  %84 = shl i64 %xor199, 62, !dbg !2987
  %85 = lshr i64 %xor199, 2, !dbg !2987
  %86 = or i64 %84, %85, !dbg !2987
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %30), !2902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %30), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %not219 = xor i64 %30, -1, !dbg !2988
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %not219), !2902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %not219), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %and220 = and i64 %42, %not219, !dbg !2989
    #dbg_value(!DIArgList(i64 %86, i64 %and220), !2902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %and220), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor221 = xor i64 %86, %and220, !dbg !2990
    #dbg_value(i64 %xor221, !2902, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor237 = xor i64 %xor236, %xor221, !dbg !2991
    #dbg_value(i64 %xor237, !2872, !DIExpression(), !2814)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !2992
    #dbg_value(i64 %xor75, !2864, !DIExpression(), !2814)
  %87 = shl i64 %xor75, 14, !dbg !2993
  %88 = lshr i64 %xor75, 50, !dbg !2993
  %89 = or i64 %87, %88, !dbg !2993
    #dbg_value(i64 %89, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %xor62), !2886, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !2994
    #dbg_value(i64 %xor71, !2852, !DIExpression(), !2814)
  %90 = shl i64 %xor71, 21, !dbg !2995
  %91 = lshr i64 %xor71, 43, !dbg !2995
  %92 = or i64 %90, %91, !dbg !2995
    #dbg_value(i64 %92, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %92), !2884, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %54, i64 %92, i64 %48), !2883, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %92, i64 %xor62, i64 %89), !2885, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not85 = xor i64 %92, -1, !dbg !2996
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %not85), !2884, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and86 = and i64 %89, %not85, !dbg !2997
    #dbg_value(!DIArgList(i64 %48, i64 %and86), !2884, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor87 = xor i64 %48, %and86, !dbg !2998
    #dbg_value(i64 %xor87, !2884, !DIExpression(), !2814)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !2999
    #dbg_value(i64 %xor110, !2860, !DIExpression(), !2814)
  %93 = shl i64 %xor110, 61, !dbg !3000
  %94 = lshr i64 %xor110, 3, !dbg !3000
  %95 = or i64 %93, %94, !dbg !3000
    #dbg_value(i64 %95, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %59), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3001
    #dbg_value(i64 %xor106, !2848, !DIExpression(), !2814)
  %96 = shl i64 %xor106, 45, !dbg !3002
  %97 = lshr i64 %xor106, 19, !dbg !3002
  %98 = or i64 %96, %97, !dbg !3002
    #dbg_value(i64 %98, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %98), !2889, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %95), !2890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %65, i64 %98, i64 %62), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not120 = xor i64 %98, -1, !dbg !3003
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %not120), !2889, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and121 = and i64 %95, %not120, !dbg !3004
    #dbg_value(!DIArgList(i64 %62, i64 %and121), !2889, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor122 = xor i64 %62, %and121, !dbg !3005
    #dbg_value(i64 %xor122, !2889, !DIExpression(), !2814)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3006
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3007
    #dbg_value(i64 %xor145, !2856, !DIExpression(), !2814)
  %99 = shl i64 %xor145, 18, !dbg !3008
  %100 = lshr i64 %xor145, 46, !dbg !3008
  %101 = or i64 %99, %100, !dbg !3008
    #dbg_value(i64 %101, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %68), !2896, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3009
    #dbg_value(i64 %xor141, !2854, !DIExpression(), !2814)
  %102 = shl i64 %xor141, 8, !dbg !3010
  %103 = lshr i64 %xor141, 56, !dbg !3010
  %104 = or i64 %102, %103, !dbg !3010
    #dbg_value(i64 %104, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %104), !2894, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %74, i64 %104, i64 %71), !2893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %104, i64 %68, i64 %101), !2895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not155 = xor i64 %104, -1, !dbg !3011
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %not155), !2894, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and156 = and i64 %101, %not155, !dbg !3012
    #dbg_value(!DIArgList(i64 %71, i64 %and156), !2894, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor157 = xor i64 %71, %and156, !dbg !3013
    #dbg_value(i64 %xor157, !2894, !DIExpression(), !2814)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3014
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3015
    #dbg_value(i64 %xor180, !2862, !DIExpression(), !2814)
  %105 = shl i64 %xor180, 56, !dbg !3016
  %106 = lshr i64 %xor180, 8, !dbg !3016
  %107 = or i64 %105, %106, !dbg !3016
    #dbg_value(i64 %107, !2876, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %77), !2901, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3017
    #dbg_value(i64 %xor176, !2850, !DIExpression(), !2814)
  %108 = shl i64 %xor176, 15, !dbg !3018
  %109 = lshr i64 %xor176, 49, !dbg !3018
  %110 = or i64 %108, %109, !dbg !3018
    #dbg_value(i64 %110, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %110), !2899, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %83, i64 %110, i64 %80), !2898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %110, i64 %77, i64 %107), !2900, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %48), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %not190 = xor i64 %110, -1, !dbg !3019
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %not190), !2899, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and191 = and i64 %107, %not190, !dbg !3020
    #dbg_value(!DIArgList(i64 %80, i64 %and191), !2899, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor192 = xor i64 %80, %and191, !dbg !3021
    #dbg_value(i64 %xor192, !2899, !DIExpression(), !2814)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3022
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3023
    #dbg_value(i64 %xor215, !2858, !DIExpression(), !2814)
  %111 = shl i64 %xor215, 2, !dbg !3024
  %112 = lshr i64 %xor215, 62, !dbg !3024
  %113 = or i64 %111, %112, !dbg !3024
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %36), !2904, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %86), !2906, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %36, i64 %86, i64 %113), !2905, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %36), !2874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %95), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %xor62), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %not225 = xor i64 %36, -1, !dbg !3025
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %not225), !2904, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %not225), !2874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %and226 = and i64 %113, %not225, !dbg !3026
    #dbg_value(!DIArgList(i64 %42, i64 %and226), !2904, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %and226), !2874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor227 = xor i64 %42, %and226, !dbg !3027
    #dbg_value(i64 %xor227, !2904, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !2874, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3028
    #dbg_value(i64 %xor245, !2874, !DIExpression(), !2814)
  %114 = shl i64 %xor245, 1, !dbg !3029
  %115 = lshr i64 %xor245, 63, !dbg !3029
  %116 = or i64 %114, %115, !dbg !3029
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %116), !2903, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %54, i64 %xor237, i64 %92, i64 %48, i64 %116), !2883, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %65, i64 %xor237, i64 %98, i64 %62, i64 %116), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %74, i64 %xor237, i64 %104, i64 %71, i64 %116), !2893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %83, i64 %xor237, i64 %110, i64 %80, i64 %116), !2898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor237, i64 %116), !2878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor261 = xor i64 %xor237, %116, !dbg !3030
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !2903, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %48), !2883, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %62), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %71), !2893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %80), !2898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 %xor261, !2878, !DIExpression(), !2814)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3031
    #dbg_value(i64 %xor429, !2903, !DIExpression(), !2814)
  %117 = shl i64 %xor429, 2, !dbg !3032
  %118 = lshr i64 %xor429, 62, !dbg !3032
  %119 = or i64 %117, %118, !dbg !3032
    #dbg_value(i64 %119, !2876, !DIExpression(), !2814)
  %not123 = xor i64 %95, -1, !dbg !3033
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %not123), !2890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %not123), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %and124 = and i64 %59, %not123, !dbg !3034
    #dbg_value(!DIArgList(i64 %98, i64 %and124), !2890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %and124), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor125 = xor i64 %98, %and124, !dbg !3035
    #dbg_value(i64 %xor125, !2890, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %89), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %not91 = xor i64 %xor62, -1, !dbg !3036
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %not91), !2886, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %not91), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %and92 = and i64 %54, %not91, !dbg !3037
    #dbg_value(!DIArgList(i64 %89, i64 %and92), !2886, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %and92), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor93 = xor i64 %89, %and92, !dbg !3038
    #dbg_value(i64 %xor93, !2886, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %not126 = xor i64 %59, -1, !dbg !3039
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %not126), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %not126), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %and127 = and i64 %65, %not126, !dbg !3040
    #dbg_value(!DIArgList(i64 %95, i64 %and127), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %and127), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor128 = xor i64 %95, %and127, !dbg !3041
    #dbg_value(i64 %xor128, !2891, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %xor128), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3042
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %not161 = xor i64 %68, -1, !dbg !3043
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %not161), !2896, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %not161), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %and162 = and i64 %74, %not161, !dbg !3044
    #dbg_value(!DIArgList(i64 %101, i64 %and162), !2896, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %and162), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor163 = xor i64 %101, %and162, !dbg !3045
    #dbg_value(i64 %xor163, !2896, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %xor163), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3046
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %not196 = xor i64 %77, -1, !dbg !3047
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %not196), !2901, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %not196), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %and197 = and i64 %83, %not196, !dbg !3048
    #dbg_value(!DIArgList(i64 %107, i64 %and197), !2901, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %and197), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor198 = xor i64 %107, %and197, !dbg !3049
    #dbg_value(i64 %xor198, !2901, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %xor198), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3050
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %86), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %not231 = xor i64 %86, -1, !dbg !3051
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %not231), !2906, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %not231), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %and232 = and i64 %30, %not231, !dbg !3052
    #dbg_value(!DIArgList(i64 %113, i64 %and232), !2906, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %and232), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor233 = xor i64 %113, %and232, !dbg !3053
    #dbg_value(i64 %xor233, !2906, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !2876, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3054
    #dbg_value(i64 %xor253, !2876, !DIExpression(), !2814)
  %120 = shl i64 %xor253, 1, !dbg !3055
  %121 = lshr i64 %xor253, 63, !dbg !3055
  %122 = or i64 %120, %121, !dbg !3055
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %122), !2890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %92, i64 %xor245, i64 %xor62, i64 %89, i64 %122), !2885, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %104, i64 %xor245, i64 %68, i64 %101, i64 %122), !2895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %110, i64 %xor245, i64 %77, i64 %107, i64 %122), !2900, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %36, i64 %xor245, i64 %86, i64 %113, i64 %122), !2905, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor245, i64 %122), !2880, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor269 = xor i64 %xor245, %122, !dbg !3056
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !2890, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %89), !2885, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %101), !2895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %107), !2900, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %113), !2905, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 %xor269, !2880, !DIExpression(), !2814)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3057
    #dbg_value(i64 %xor417, !2890, !DIExpression(), !2814)
  %123 = shl i64 %xor417, 55, !dbg !3058
  %124 = lshr i64 %xor417, 9, !dbg !3058
  %125 = or i64 %123, %124, !dbg !3058
    #dbg_value(i64 %125, !2873, !DIExpression(), !2814)
  %not82 = xor i64 %48, -1, !dbg !3059
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %not82), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %not82), !2883, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %and83 = and i64 %92, %not82, !dbg !3060
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %and83), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %and83), !2883, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor84 = xor i64 %54, %and83, !dbg !3061
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !2883, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %not117 = xor i64 %62, -1, !dbg !3062
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %not117), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %not117), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %and118 = and i64 %98, %not117, !dbg !3063
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %and118), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %and118), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor119 = xor i64 %65, %and118, !dbg !3064
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %xor119), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !2888, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3065
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %not152 = xor i64 %71, -1, !dbg !3066
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %not152), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %not152), !2893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %and153 = and i64 %104, %not152, !dbg !3067
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %and153), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %and153), !2893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor154 = xor i64 %74, %and153, !dbg !3068
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %xor154), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !2893, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3069
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %80), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %not187 = xor i64 %80, -1, !dbg !3070
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %not187), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %not187), !2898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %and188 = and i64 %110, %not187, !dbg !3071
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %and188), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %and188), !2898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor189 = xor i64 %83, %and188, !dbg !3072
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !2898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3073
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !2873, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3074
    #dbg_value(i64 %xor241, !2873, !DIExpression(), !2814)
  %not88 = xor i64 %89, -1, !dbg !3075
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %not88), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %not88), !2885, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %and89 = and i64 %xor62, %not88, !dbg !3076
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %and89), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %and89), !2885, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor90 = xor i64 %92, %and89, !dbg !3077
    #dbg_value(!DIArgList(i64 %xor90, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !2885, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3078
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %not158 = xor i64 %101, -1, !dbg !3079
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %not158), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %not158), !2895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %and159 = and i64 %68, %not158, !dbg !3080
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %and159), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %and159), !2895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor160 = xor i64 %104, %and159, !dbg !3081
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %xor160), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !2895, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3082
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %not193 = xor i64 %107, -1, !dbg !3083
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %not193), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %not193), !2900, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %and194 = and i64 %77, %not193, !dbg !3084
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %and194), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %and194), !2900, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor195 = xor i64 %110, %and194, !dbg !3085
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %xor195), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !2900, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3086
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %113), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %not228 = xor i64 %113, -1, !dbg !3087
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %not228), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %not228), !2905, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %and229 = and i64 %86, %not228, !dbg !3088
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %and229), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %and229), !2905, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor230 = xor i64 %36, %and229, !dbg !3089
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !2875, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !2905, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3090
    #dbg_value(i64 %xor249, !2875, !DIExpression(), !2814)
  %126 = shl i64 %xor249, 1, !dbg !3091
  %127 = lshr i64 %xor249, 63, !dbg !3091
  %128 = or i64 %126, %127, !dbg !3091
    #dbg_value(!DIArgList(i64 %xor241, i64 %128), !2879, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %128), !2884, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %128), !2899, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %128), !2889, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %128), !2904, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %128), !2894, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor265 = xor i64 %xor241, %128, !dbg !3092
    #dbg_value(i64 %xor265, !2879, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !2884, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !2899, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !2889, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !2904, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !2894, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3093
    #dbg_value(i64 %xor413, !2884, !DIExpression(), !2814)
  %129 = shl i64 %xor413, 62, !dbg !3094
  %130 = lshr i64 %xor413, 2, !dbg !3094
  %131 = or i64 %129, %130, !dbg !3094
    #dbg_value(i64 %131, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %131), !2864, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not445 = xor i64 %131, -1, !dbg !3095
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %not445), !2864, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and446 = and i64 %125, %not445, !dbg !3096
    #dbg_value(!DIArgList(i64 %119, i64 %and446), !2864, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor447 = xor i64 %119, %and446, !dbg !3097
    #dbg_value(i64 %xor447, !2864, !DIExpression(), !2814)
  %132 = shl i64 %xor241, 1, !dbg !3098
  %133 = lshr i64 %xor241, 63, !dbg !3098
  %134 = or i64 %132, %133, !dbg !3098
    #dbg_value(!DIArgList(i64 %xor253, i64 %134), !2877, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %134), !2887, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %134), !2902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %134), !2892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %134), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor257 = xor i64 %xor253, %134, !dbg !3099
    #dbg_value(i64 %xor257, !2877, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !2887, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !2902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !2892, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !2872, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !2882, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !2897, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3100
    #dbg_value(i64 %xor425, !2897, !DIExpression(), !2814)
  %135 = shl i64 %xor425, 41, !dbg !3101
  %136 = lshr i64 %xor425, 23, !dbg !3101
  %137 = or i64 %135, %136, !dbg !3101
    #dbg_value(i64 %137, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %119), !2862, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not442 = xor i64 %119, -1, !dbg !3102
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %not442), !2862, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and443 = and i64 %131, %not442, !dbg !3103
    #dbg_value(!DIArgList(i64 %137, i64 %and443), !2862, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor444 = xor i64 %137, %and443, !dbg !3104
    #dbg_value(i64 %xor444, !2862, !DIExpression(), !2814)
  %138 = shl i64 %xor237, 1, !dbg !3105
  %139 = lshr i64 %xor237, 63, !dbg !3105
  %140 = or i64 %138, %139, !dbg !3105
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %140), !2886, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %140), !2901, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %140), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %140), !2906, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor249, i64 %140), !2881, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %140), !2896, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor273 = xor i64 %xor249, %140, !dbg !3106
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !2886, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !2901, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !2891, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !2906, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(i64 %xor273, !2881, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !2896, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3107
    #dbg_value(i64 %xor421, !2896, !DIExpression(), !2814)
  %141 = shl i64 %xor421, 39, !dbg !3108
  %142 = lshr i64 %xor421, 25, !dbg !3108
  %143 = or i64 %141, %142, !dbg !3108
    #dbg_value(i64 %143, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %137), !2860, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %143), !2858, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %125), !2856, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not439 = xor i64 %137, -1, !dbg !3109
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %not439), !2860, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and440 = and i64 %119, %not439, !dbg !3110
    #dbg_value(!DIArgList(i64 %143, i64 %and440), !2860, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor441 = xor i64 %143, %and440, !dbg !3111
    #dbg_value(i64 %xor441, !2860, !DIExpression(), !2814)
  %not436 = xor i64 %143, -1, !dbg !3112
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %not436), !2858, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and437 = and i64 %137, %not436, !dbg !3113
    #dbg_value(!DIArgList(i64 %125, i64 %and437), !2858, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor438 = xor i64 %125, %and437, !dbg !3114
    #dbg_value(i64 %xor438, !2858, !DIExpression(), !2814)
  %not433 = xor i64 %125, -1, !dbg !3115
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %not433), !2856, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and434 = and i64 %143, %not433, !dbg !3116
    #dbg_value(!DIArgList(i64 %131, i64 %and434), !2856, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor435 = xor i64 %131, %and434, !dbg !3117
    #dbg_value(i64 %xor435, !2856, !DIExpression(), !2814)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3118
    #dbg_value(i64 %xor394, !2905, !DIExpression(), !2814)
  %144 = shl i64 %xor394, 56, !dbg !3119
  %145 = lshr i64 %xor394, 8, !dbg !3119
  %146 = or i64 %144, %145, !dbg !3119
    #dbg_value(i64 %146, !2876, !DIExpression(), !2814)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3120
    #dbg_value(i64 %xor382, !2887, !DIExpression(), !2814)
  %147 = shl i64 %xor382, 36, !dbg !3121
  %148 = lshr i64 %xor382, 28, !dbg !3121
  %149 = or i64 %147, %148, !dbg !3121
    #dbg_value(i64 %149, !2873, !DIExpression(), !2814)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3122
    #dbg_value(i64 %xor378, !2886, !DIExpression(), !2814)
  %150 = shl i64 %xor378, 27, !dbg !3123
  %151 = lshr i64 %xor378, 37, !dbg !3123
  %152 = or i64 %150, %151, !dbg !3123
    #dbg_value(i64 %152, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %152), !2854, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not410 = xor i64 %152, -1, !dbg !3124
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %not410), !2854, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and411 = and i64 %149, %not410, !dbg !3125
    #dbg_value(!DIArgList(i64 %146, i64 %and411), !2854, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor412 = xor i64 %146, %and411, !dbg !3126
    #dbg_value(i64 %xor412, !2854, !DIExpression(), !2814)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3127
    #dbg_value(i64 %xor390, !2899, !DIExpression(), !2814)
  %153 = shl i64 %xor390, 15, !dbg !3128
  %154 = lshr i64 %xor390, 49, !dbg !3128
  %155 = or i64 %153, %154, !dbg !3128
    #dbg_value(i64 %155, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %146), !2852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not407 = xor i64 %146, -1, !dbg !3129
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %not407), !2852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and408 = and i64 %152, %not407, !dbg !3130
    #dbg_value(!DIArgList(i64 %155, i64 %and408), !2852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor409 = xor i64 %155, %and408, !dbg !3131
    #dbg_value(i64 %xor409, !2852, !DIExpression(), !2814)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3132
    #dbg_value(i64 %xor386, !2893, !DIExpression(), !2814)
  %156 = shl i64 %xor386, 10, !dbg !3133
  %157 = lshr i64 %xor386, 54, !dbg !3133
  %158 = or i64 %156, %157, !dbg !3133
    #dbg_value(i64 %158, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %155), !2850, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %158), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %149), !2846, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not404 = xor i64 %155, -1, !dbg !3134
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %not404), !2850, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and405 = and i64 %146, %not404, !dbg !3135
    #dbg_value(!DIArgList(i64 %158, i64 %and405), !2850, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor406 = xor i64 %158, %and405, !dbg !3136
    #dbg_value(i64 %xor406, !2850, !DIExpression(), !2814)
  %not401 = xor i64 %158, -1, !dbg !3137
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %not401), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and402 = and i64 %155, %not401, !dbg !3138
    #dbg_value(!DIArgList(i64 %149, i64 %and402), !2848, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor403 = xor i64 %149, %and402, !dbg !3139
    #dbg_value(i64 %xor403, !2848, !DIExpression(), !2814)
  %not398 = xor i64 %149, -1, !dbg !3140
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %not398), !2846, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and399 = and i64 %158, %not398, !dbg !3141
    #dbg_value(!DIArgList(i64 %152, i64 %and399), !2846, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor400 = xor i64 %152, %and399, !dbg !3142
    #dbg_value(i64 %xor400, !2846, !DIExpression(), !2814)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3143
    #dbg_value(i64 %xor359, !2902, !DIExpression(), !2814)
  %159 = shl i64 %xor359, 18, !dbg !3144
  %160 = lshr i64 %xor359, 46, !dbg !3144
  %161 = or i64 %159, %160, !dbg !3144
    #dbg_value(i64 %161, !2876, !DIExpression(), !2814)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3145
    #dbg_value(i64 %xor347, !2889, !DIExpression(), !2814)
  %162 = shl i64 %xor347, 6, !dbg !3146
  %163 = lshr i64 %xor347, 58, !dbg !3146
  %164 = or i64 %162, %163, !dbg !3146
    #dbg_value(i64 %164, !2873, !DIExpression(), !2814)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3147
    #dbg_value(i64 %xor343, !2883, !DIExpression(), !2814)
  %165 = shl i64 %xor343, 1, !dbg !3148
  %166 = lshr i64 %xor343, 63, !dbg !3148
  %167 = or i64 %165, %166, !dbg !3148
    #dbg_value(i64 %167, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %167), !2844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not375 = xor i64 %167, -1, !dbg !3149
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %not375), !2844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and376 = and i64 %164, %not375, !dbg !3150
    #dbg_value(!DIArgList(i64 %161, i64 %and376), !2844, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor377 = xor i64 %161, %and376, !dbg !3151
    #dbg_value(i64 %xor377, !2844, !DIExpression(), !2814)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3152
    #dbg_value(i64 %xor355, !2901, !DIExpression(), !2814)
  %168 = shl i64 %xor355, 8, !dbg !3153
  %169 = lshr i64 %xor355, 56, !dbg !3153
  %170 = or i64 %168, %169, !dbg !3153
    #dbg_value(i64 %170, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %161), !2842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not372 = xor i64 %161, -1, !dbg !3154
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %not372), !2842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and373 = and i64 %167, %not372, !dbg !3155
    #dbg_value(!DIArgList(i64 %170, i64 %and373), !2842, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor374 = xor i64 %170, %and373, !dbg !3156
    #dbg_value(i64 %xor374, !2842, !DIExpression(), !2814)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3157
    #dbg_value(i64 %xor351, !2895, !DIExpression(), !2814)
  %171 = shl i64 %xor351, 25, !dbg !3158
  %172 = lshr i64 %xor351, 39, !dbg !3158
  %173 = or i64 %171, %172, !dbg !3158
    #dbg_value(i64 %173, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %170), !2840, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %173), !2838, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %164), !2836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not369 = xor i64 %170, -1, !dbg !3159
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %not369), !2840, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and370 = and i64 %161, %not369, !dbg !3160
    #dbg_value(!DIArgList(i64 %173, i64 %and370), !2840, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor371 = xor i64 %173, %and370, !dbg !3161
    #dbg_value(i64 %xor371, !2840, !DIExpression(), !2814)
  %not366 = xor i64 %173, -1, !dbg !3162
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %not366), !2838, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and367 = and i64 %170, %not366, !dbg !3163
    #dbg_value(!DIArgList(i64 %164, i64 %and367), !2838, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor368 = xor i64 %164, %and367, !dbg !3164
    #dbg_value(i64 %xor368, !2838, !DIExpression(), !2814)
  %not363 = xor i64 %164, -1, !dbg !3165
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %not363), !2836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and364 = and i64 %173, %not363, !dbg !3166
    #dbg_value(!DIArgList(i64 %167, i64 %and364), !2836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor365 = xor i64 %167, %and364, !dbg !3167
    #dbg_value(i64 %xor365, !2836, !DIExpression(), !2814)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3168
    #dbg_value(i64 %xor324, !2904, !DIExpression(), !2814)
  %174 = shl i64 %xor324, 61, !dbg !3169
  %175 = lshr i64 %xor324, 3, !dbg !3169
  %176 = or i64 %174, %175, !dbg !3169
    #dbg_value(i64 %176, !2876, !DIExpression(), !2814)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3170
    #dbg_value(i64 %xor312, !2891, !DIExpression(), !2814)
  %177 = shl i64 %xor312, 20, !dbg !3171
  %178 = lshr i64 %xor312, 44, !dbg !3171
  %179 = or i64 %177, %178, !dbg !3171
    #dbg_value(i64 %179, !2873, !DIExpression(), !2814)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3172
    #dbg_value(i64 %xor308, !2885, !DIExpression(), !2814)
  %180 = shl i64 %xor308, 28, !dbg !3173
  %181 = lshr i64 %xor308, 36, !dbg !3173
  %182 = or i64 %180, %181, !dbg !3173
    #dbg_value(i64 %182, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %182), !2834, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not340 = xor i64 %182, -1, !dbg !3174
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %not340), !2834, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and341 = and i64 %179, %not340, !dbg !3175
    #dbg_value(!DIArgList(i64 %176, i64 %and341), !2834, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor342 = xor i64 %176, %and341, !dbg !3176
    #dbg_value(i64 %xor342, !2834, !DIExpression(), !2814)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3177
    #dbg_value(i64 %xor320, !2898, !DIExpression(), !2814)
  %183 = shl i64 %xor320, 45, !dbg !3178
  %184 = lshr i64 %xor320, 19, !dbg !3178
  %185 = or i64 %183, %184, !dbg !3178
    #dbg_value(i64 %185, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %176), !2832, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not337 = xor i64 %176, -1, !dbg !3179
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %not337), !2832, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and338 = and i64 %182, %not337, !dbg !3180
    #dbg_value(!DIArgList(i64 %185, i64 %and338), !2832, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor339 = xor i64 %185, %and338, !dbg !3181
    #dbg_value(i64 %xor339, !2832, !DIExpression(), !2814)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3182
    #dbg_value(i64 %xor316, !2892, !DIExpression(), !2814)
  %186 = shl i64 %xor316, 3, !dbg !3183
  %187 = lshr i64 %xor316, 61, !dbg !3183
  %188 = or i64 %186, %187, !dbg !3183
    #dbg_value(i64 %188, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %185), !2830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %188), !2828, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %179), !2826, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not334 = xor i64 %185, -1, !dbg !3184
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %not334), !2830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and335 = and i64 %176, %not334, !dbg !3185
    #dbg_value(!DIArgList(i64 %188, i64 %and335), !2830, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor336 = xor i64 %188, %and335, !dbg !3186
    #dbg_value(i64 %xor336, !2830, !DIExpression(), !2814)
  %not331 = xor i64 %188, -1, !dbg !3187
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %not331), !2828, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and332 = and i64 %185, %not331, !dbg !3188
    #dbg_value(!DIArgList(i64 %179, i64 %and332), !2828, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor333 = xor i64 %179, %and332, !dbg !3189
    #dbg_value(i64 %xor333, !2828, !DIExpression(), !2814)
  %not328 = xor i64 %179, -1, !dbg !3190
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %not328), !2826, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and329 = and i64 %188, %not328, !dbg !3191
    #dbg_value(!DIArgList(i64 %182, i64 %and329), !2826, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor330 = xor i64 %182, %and329, !dbg !3192
    #dbg_value(i64 %xor330, !2826, !DIExpression(), !2814)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3193
    #dbg_value(i64 %xor287, !2906, !DIExpression(), !2814)
  %189 = shl i64 %xor287, 14, !dbg !3194
  %190 = lshr i64 %xor287, 50, !dbg !3194
  %191 = or i64 %189, %190, !dbg !3194
    #dbg_value(i64 %191, !2876, !DIExpression(), !2814)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3195
    #dbg_value(i64 %xor275, !2888, !DIExpression(), !2814)
  %192 = shl i64 %xor275, 44, !dbg !3196
  %193 = lshr i64 %xor275, 20, !dbg !3196
  %194 = or i64 %192, %193, !dbg !3196
    #dbg_value(i64 %194, !2873, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor81, i64 %xor257), !2824, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3197
    #dbg_value(i64 %xor274, !2882, !DIExpression(), !2814)
    #dbg_value(i64 %xor274, !2872, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor274), !2824, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not305 = xor i64 %xor274, -1, !dbg !3198
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %not305), !2824, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and306 = and i64 %194, %not305, !dbg !3199
    #dbg_value(!DIArgList(i64 %191, i64 %and306), !2824, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor307 = xor i64 %191, %and306, !dbg !3200
    #dbg_value(i64 %xor307, !2824, !DIExpression(), !2814)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3201
    #dbg_value(i64 %xor283, !2900, !DIExpression(), !2814)
  %195 = shl i64 %xor283, 21, !dbg !3202
  %196 = lshr i64 %xor283, 43, !dbg !3202
  %197 = or i64 %195, %196, !dbg !3202
    #dbg_value(i64 %197, !2875, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %191), !2822, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not302 = xor i64 %191, -1, !dbg !3203
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %not302), !2822, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and303 = and i64 %xor274, %not302, !dbg !3204
    #dbg_value(!DIArgList(i64 %197, i64 %and303), !2822, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor304 = xor i64 %197, %and303, !dbg !3205
    #dbg_value(i64 %xor304, !2822, !DIExpression(), !2814)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3206
    #dbg_value(i64 %xor279, !2894, !DIExpression(), !2814)
  %198 = shl i64 %xor279, 43, !dbg !3207
  %199 = lshr i64 %xor279, 21, !dbg !3207
  %200 = or i64 %198, %199, !dbg !3207
    #dbg_value(i64 %200, !2874, !DIExpression(), !2814)
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %197), !2820, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %200), !2818, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
    #dbg_value(!DIArgList(i64 %xor274, i64 %200, i64 %194), !2816, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %not299 = xor i64 %197, -1, !dbg !3208
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %not299), !2820, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and300 = and i64 %191, %not299, !dbg !3209
    #dbg_value(!DIArgList(i64 %200, i64 %and300), !2820, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor301 = xor i64 %200, %and300, !dbg !3210
    #dbg_value(i64 %xor301, !2820, !DIExpression(), !2814)
  %not296 = xor i64 %200, -1, !dbg !3211
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %not296), !2818, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2814)
  %and297 = and i64 %197, %not296, !dbg !3212
    #dbg_value(!DIArgList(i64 %194, i64 %and297), !2818, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %xor298 = xor i64 %194, %and297, !dbg !3213
    #dbg_value(i64 %xor298, !2818, !DIExpression(), !2814)
  %add = or disjoint i32 %round.0, 1, !dbg !3214
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @pqcrystals_dilithium_fips202_ref_KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3215
  %201 = load i64, ptr %arrayidx294, align 8, !dbg !3215
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %194), !2816, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %not291 = xor i64 %194, -1, !dbg !3216
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %not291), !2816, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %and292 = and i64 %200, %not291, !dbg !3217
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %and292), !2816, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2814)
  %202 = xor i64 %and292, %201, !dbg !3218
  %xor295 = xor i64 %202, %xor274, !dbg !3218
    #dbg_value(i64 %xor295, !2816, !DIExpression(), !2814)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3219
    #dbg_value(i32 %add448, !2865, !DIExpression(), !2814)
  br label %for.cond, !dbg !3220, !llvm.loop !3221

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !2814
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !2814
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !2814
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !2814
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !2814
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !2814
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !2814
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !2814
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !2814
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !2814
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !2814
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !2814
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !2814
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !2814
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !2814
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !2814
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !2814
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !2814
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !2814
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !2814
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !2814
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !2814
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !2814
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !2814
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !2814
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3223
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3224
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3225
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3226
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3227
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3228
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3229
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3230
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3231
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3232
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3233
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3234
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3235
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3236
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3237
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3238
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3239
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3240
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3241
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3242
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3243
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3244
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3245
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3246
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3247
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3248
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3249
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3250
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3251
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3252
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3253
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3254
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3255
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3256
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3257
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3258
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3259
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3260
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3261
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3262
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3263
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3264
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3265
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3266
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3267
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3268
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3269
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3270
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3271
  ret void, !dbg !3272
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3273 {
entry:
    #dbg_value(ptr %state, !3274, !DIExpression(), !3275)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3276
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3276
  %conv = trunc i64 %0 to i32, !dbg !3277
  call fastcc void @keccak_finalize(ptr noundef %state, i32 noundef %conv, i32 noundef 168, i8 noundef zeroext 31) #4, !dbg !3278
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3279
  store i64 168, ptr %arrayidx1, align 8, !dbg !3280
  ret void, !dbg !3281
}

; Function Attrs: nounwind
define internal fastcc void @keccak_finalize(ptr noundef %s, i32 noundef %pos, i32 noundef range(i32 136, 169) %r, i8 noundef zeroext %p) unnamed_addr #0 !dbg !3282 {
entry:
    #dbg_value(ptr %s, !3285, !DIExpression(), !3286)
    #dbg_value(i32 %pos, !3287, !DIExpression(), !3286)
    #dbg_value(i32 %r, !3288, !DIExpression(), !3286)
    #dbg_value(i8 31, !3289, !DIExpression(), !3286)
  %rem = shl i32 %pos, 3, !dbg !3290
  %mul = and i32 %rem, 56, !dbg !3290
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3291
  %shl = shl nuw nsw i64 31, %sh_prom, !dbg !3291
  %div2 = lshr i32 %pos, 3, !dbg !3292
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %div2, !dbg !3293
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3294
  %xor = xor i64 %0, %shl, !dbg !3294
  store i64 %xor, ptr %arrayidx, align 8, !dbg !3294
  %div13 = lshr i32 %r, 3, !dbg !3295
  %1 = getelementptr i64, ptr %s, i32 %div13, !dbg !3296
  %arrayidx2 = getelementptr i8, ptr %1, i32 -8, !dbg !3296
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3297
  %xor3 = xor i64 %2, -9223372036854775808, !dbg !3297
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !3297
  ret void, !dbg !3298
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3299 {
entry:
    #dbg_value(ptr %out, !3302, !DIExpression(), !3303)
    #dbg_value(i32 %outlen, !3304, !DIExpression(), !3303)
    #dbg_value(ptr %state, !3305, !DIExpression(), !3303)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3306
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3306
  %conv = trunc i64 %0 to i32, !dbg !3307
  %call = call fastcc i32 @keccak_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state, i32 noundef %conv, i32 noundef 168) #4, !dbg !3308
    #dbg_value(i32 %call, !3309, !DIExpression(), !3303)
  %conv1 = zext i32 %call to i64, !dbg !3310
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3311
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !3312
  ret void, !dbg !3313
}

; Function Attrs: nounwind
define internal fastcc i32 @keccak_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %s, i32 noundef %pos, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3314 {
entry:
    #dbg_value(ptr %out, !3317, !DIExpression(), !3318)
    #dbg_value(i32 %outlen, !3319, !DIExpression(), !3318)
    #dbg_value(ptr %s, !3320, !DIExpression(), !3318)
    #dbg_value(i32 %pos, !3321, !DIExpression(), !3318)
    #dbg_value(i32 %r, !3322, !DIExpression(), !3318)
  br label %while.cond, !dbg !3323

while.cond:                                       ; preds = %for.end, %entry
  %pos.addr.0 = phi i32 [ %pos, %entry ], [ %i.0.lcssa, %for.end ]
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub3, %for.end ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %out.addr.1.lcssa, %for.end ]
    #dbg_value(ptr %out.addr.0, !3317, !DIExpression(), !3318)
    #dbg_value(i32 %outlen.addr.0, !3319, !DIExpression(), !3318)
    #dbg_value(i32 %pos.addr.0, !3321, !DIExpression(), !3318)
  %tobool.not = icmp eq i32 %outlen.addr.0, 0, !dbg !3323
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !3323

while.body:                                       ; preds = %while.cond
  %cmp = icmp eq i32 %pos.addr.0, %r, !dbg !3324
  br i1 %cmp, label %if.then, label %if.end, !dbg !3324

if.then:                                          ; preds = %while.body
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !3327
    #dbg_value(i32 0, !3321, !DIExpression(), !3318)
  br label %if.end, !dbg !3329

if.end:                                           ; preds = %if.then, %while.body
  %pos.addr.1 = phi i32 [ 0, %if.then ], [ %pos.addr.0, %while.body ]
    #dbg_value(i32 %pos.addr.1, !3321, !DIExpression(), !3318)
    #dbg_value(i32 %pos.addr.1, !3330, !DIExpression(), !3318)
  br label %for.cond, !dbg !3331

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ %pos.addr.1, %if.end ], [ %inc, %for.body ], !dbg !3333
  %out.addr.1 = phi ptr [ %out.addr.0, %if.end ], [ %incdec.ptr, %for.body ]
    #dbg_value(ptr %out.addr.1, !3317, !DIExpression(), !3318)
    #dbg_value(i32 %i.0, !3330, !DIExpression(), !3318)
  %cmp1 = icmp ult i32 %i.0, %r, !dbg !3334
  %add = add i32 %pos.addr.1, %outlen.addr.0, !dbg !3336
  %cmp2 = icmp ult i32 %i.0, %add, !dbg !3336
  %0 = and i1 %cmp1, %cmp2, !dbg !3336
  br i1 %0, label %for.body, label %for.end, !dbg !3337

for.body:                                         ; preds = %for.cond
  %div1 = lshr i32 %i.0, 3, !dbg !3338
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %div1, !dbg !3339
  %1 = load i64, ptr %arrayidx, align 8, !dbg !3339
  %rem = shl nuw nsw i32 %i.0, 3, !dbg !3340
  %mul = and i32 %rem, 56, !dbg !3340
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3341
  %shr = lshr i64 %1, %sh_prom, !dbg !3341
  %conv = trunc i64 %shr to i8, !dbg !3339
    #dbg_value(ptr %out.addr.1, !3317, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3318)
  store i8 %conv, ptr %out.addr.1, align 1, !dbg !3342
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %out.addr.1, i32 1, !dbg !3343
    #dbg_value(ptr %incdec.ptr, !3317, !DIExpression(), !3318)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3344
    #dbg_value(i32 %inc, !3330, !DIExpression(), !3318)
  br label %for.cond, !dbg !3345, !llvm.loop !3346

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3333
  %out.addr.1.lcssa = phi ptr [ %out.addr.1, %for.cond ]
  %sub.neg = sub i32 %pos.addr.1, %i.0.lcssa, !dbg !3348
  %sub3 = add i32 %sub.neg, %outlen.addr.0, !dbg !3349
    #dbg_value(i32 %sub3, !3319, !DIExpression(), !3318)
    #dbg_value(i32 %i.0.lcssa, !3321, !DIExpression(), !3318)
  br label %while.cond, !dbg !3323, !llvm.loop !3350

while.end:                                        ; preds = %while.cond
  %pos.addr.0.lcssa = phi i32 [ %pos.addr.0, %while.cond ]
  ret i32 %pos.addr.0.lcssa, !dbg !3352
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_absorb_once(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3353 {
entry:
    #dbg_value(ptr %state, !3354, !DIExpression(), !3355)
    #dbg_value(ptr %in, !3356, !DIExpression(), !3355)
    #dbg_value(i32 %inlen, !3357, !DIExpression(), !3355)
  call fastcc void @keccak_absorb_once(ptr noundef %state, i32 noundef 168, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !3358
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3359
  store i64 168, ptr %arrayidx, align 8, !dbg !3360
  ret void, !dbg !3361
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb_once(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3362 {
entry:
    #dbg_value(ptr %s, !3365, !DIExpression(), !3366)
    #dbg_value(i32 %r, !3367, !DIExpression(), !3366)
    #dbg_value(ptr %in, !3368, !DIExpression(), !3366)
    #dbg_value(i32 %inlen, !3369, !DIExpression(), !3366)
    #dbg_value(i8 %p, !3370, !DIExpression(), !3366)
    #dbg_value(i32 0, !3371, !DIExpression(), !3366)
  br label %for.cond, !dbg !3372

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3374
    #dbg_value(i32 %i.0, !3371, !DIExpression(), !3366)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3375
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !3377

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !3378
  br label %while.cond, !dbg !3378

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !3379
  store i64 0, ptr %arrayidx, align 8, !dbg !3380
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3381
    #dbg_value(i32 %inc, !3371, !DIExpression(), !3366)
  br label %for.cond, !dbg !3382, !llvm.loop !3383

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %in.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %in, %while.cond.preheader ]
  %inlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %inlen, %while.cond.preheader ]
    #dbg_value(i32 %inlen.addr.0, !3369, !DIExpression(), !3366)
    #dbg_value(ptr %in.addr.0, !3368, !DIExpression(), !3366)
  %cmp1.not = icmp ult i32 %inlen.addr.0, %r, !dbg !3385
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !3378

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !3386

for.cond10.preheader:                             ; preds = %while.cond
  %inlen.addr.0.lcssa6 = phi i32 [ %inlen.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  br label %for.cond10, !dbg !3389

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !3391
    #dbg_value(i32 %i.1, !3371, !DIExpression(), !3366)
  %exitcond5 = icmp ne i32 %i.1, %0, !dbg !3392
  br i1 %exitcond5, label %for.body4, label %for.end8, !dbg !3386

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !3394
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 %mul, !dbg !3395
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #4, !dbg !3396
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !3397
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !3398
  %xor = xor i64 %1, %call, !dbg !3398
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !3398
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !3399
    #dbg_value(i32 %inc7, !3371, !DIExpression(), !3366)
  br label %for.cond2, !dbg !3400, !llvm.loop !3401

for.end8:                                         ; preds = %for.cond2
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 %r, !dbg !3403
    #dbg_value(ptr %add.ptr9, !3368, !DIExpression(), !3366)
  %sub = sub i32 %inlen.addr.0, %r, !dbg !3404
    #dbg_value(i32 %sub, !3369, !DIExpression(), !3366)
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !3405
  br label %while.cond, !dbg !3378, !llvm.loop !3406

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc19, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !3408
    #dbg_value(i32 %i.2, !3371, !DIExpression(), !3366)
  %exitcond7 = icmp ne i32 %i.2, %inlen.addr.0.lcssa6, !dbg !3409
  br i1 %exitcond7, label %for.body12, label %for.end20, !dbg !3389

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %in.addr.0.lcssa, i32 %i.2, !dbg !3411
  %2 = load i8, ptr %arrayidx13, align 1, !dbg !3411
  %conv = zext i8 %2 to i64, !dbg !3412
  %rem = shl i32 %i.2, 3, !dbg !3413
  %mul14 = and i32 %rem, 56, !dbg !3413
  %sh_prom = zext nneg i32 %mul14 to i64, !dbg !3414
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !3414
  %div153 = lshr i32 %i.2, 3, !dbg !3415
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %s, i32 %div153, !dbg !3416
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !3417
  %xor17 = xor i64 %3, %shl, !dbg !3417
  store i64 %xor17, ptr %arrayidx16, align 8, !dbg !3417
  %inc19 = add i32 %i.2, 1, !dbg !3418
    #dbg_value(i32 %inc19, !3371, !DIExpression(), !3366)
  br label %for.cond10, !dbg !3419, !llvm.loop !3420

for.end20:                                        ; preds = %for.cond10
  %i.2.lcssa = phi i32 [ %i.2, %for.cond10 ], !dbg !3408
  %conv21 = zext nneg i8 %p to i64, !dbg !3422
  %rem22 = shl i32 %i.2.lcssa, 3, !dbg !3423
  %mul23 = and i32 %rem22, 56, !dbg !3423
  %sh_prom24 = zext nneg i32 %mul23 to i64, !dbg !3424
  %shl25 = shl nuw nsw i64 %conv21, %sh_prom24, !dbg !3424
  %div261 = lshr i32 %i.2.lcssa, 3, !dbg !3425
  %arrayidx27 = getelementptr inbounds nuw i64, ptr %s, i32 %div261, !dbg !3426
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !3427
  %xor28 = xor i64 %4, %shl25, !dbg !3427
  store i64 %xor28, ptr %arrayidx27, align 8, !dbg !3427
  %sub29 = add nsw i32 %r, -1, !dbg !3428
  %div302 = lshr i32 %sub29, 3, !dbg !3429
  %arrayidx31 = getelementptr inbounds nuw i64, ptr %s, i32 %div302, !dbg !3430
  %5 = load i64, ptr %arrayidx31, align 8, !dbg !3431
  %xor32 = xor i64 %5, -9223372036854775808, !dbg !3431
  store i64 %xor32, ptr %arrayidx31, align 8, !dbg !3431
  ret void, !dbg !3432
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !3433 {
entry:
    #dbg_value(ptr %x, !3436, !DIExpression(), !3437)
    #dbg_value(i64 0, !3438, !DIExpression(), !3437)
    #dbg_value(i32 0, !3439, !DIExpression(), !3437)
  br label %for.cond, !dbg !3440

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3442
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !3437
    #dbg_value(i64 %r.0, !3438, !DIExpression(), !3437)
    #dbg_value(i32 %i.0, !3439, !DIExpression(), !3437)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !3443
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !3445

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !3438, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3437)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !3446
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3446
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !3438, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3437)
  %conv = zext i8 %0 to i64, !dbg !3447
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !3438, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3437)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3448
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !3438, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3437)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3449
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !3438, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3437)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !3449
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !3438, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3437)
  %or = or i64 %r.0, %shl, !dbg !3450
    #dbg_value(i64 %or, !3438, !DIExpression(), !3437)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3451
    #dbg_value(i32 %inc, !3439, !DIExpression(), !3437)
  br label %for.cond, !dbg !3452, !llvm.loop !3453

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !3437
  ret i64 %r.0.lcssa, !dbg !3455
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !3456 {
entry:
    #dbg_value(ptr %out, !3457, !DIExpression(), !3458)
    #dbg_value(i32 %nblocks, !3459, !DIExpression(), !3458)
    #dbg_value(ptr %state, !3460, !DIExpression(), !3458)
  call fastcc void @keccak_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state, i32 noundef 168) #4, !dbg !3461
  ret void, !dbg !3462
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3463 {
entry:
    #dbg_value(ptr %out, !3466, !DIExpression(), !3467)
    #dbg_value(i32 %nblocks, !3468, !DIExpression(), !3467)
    #dbg_value(ptr %s, !3469, !DIExpression(), !3467)
    #dbg_value(i32 %r, !3470, !DIExpression(), !3467)
  %0 = lshr i32 %r, 3, !dbg !3471
  br label %while.cond, !dbg !3471

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %for.end ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr1, %for.end ]
    #dbg_value(ptr %out.addr.0, !3466, !DIExpression(), !3467)
    #dbg_value(i32 %nblocks.addr.0, !3468, !DIExpression(), !3467)
  %tobool.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !3471
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !3471

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !3472
    #dbg_value(i32 0, !3474, !DIExpression(), !3467)
  br label %for.cond, !dbg !3475

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !3477
    #dbg_value(i32 %i.0, !3474, !DIExpression(), !3467)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !3478
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3480

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3481
  %add.ptr = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 %mul, !dbg !3482
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !3483
  %1 = load i64, ptr %arrayidx, align 8, !dbg !3483
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #4, !dbg !3484
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3485
    #dbg_value(i32 %inc, !3474, !DIExpression(), !3467)
  br label %for.cond, !dbg !3486, !llvm.loop !3487

for.end:                                          ; preds = %for.cond
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 %r, !dbg !3489
    #dbg_value(ptr %add.ptr1, !3466, !DIExpression(), !3467)
  %sub = add i32 %nblocks.addr.0, -1, !dbg !3490
    #dbg_value(i32 %sub, !3468, !DIExpression(), !3467)
  br label %while.cond, !dbg !3471, !llvm.loop !3491

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3493
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !3494 {
entry:
    #dbg_value(ptr %x, !3497, !DIExpression(), !3498)
    #dbg_value(i64 %u, !3499, !DIExpression(), !3498)
    #dbg_value(i32 0, !3500, !DIExpression(), !3498)
  br label %for.cond, !dbg !3501

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3503
    #dbg_value(i32 %i.0, !3500, !DIExpression(), !3498)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !3504
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3506

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3507
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3508
  %shr = lshr i64 %u, %sh_prom, !dbg !3508
  %conv = trunc i64 %shr to i8, !dbg !3509
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !3510
  store i8 %conv, ptr %arrayidx, align 1, !dbg !3511
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3512
    #dbg_value(i32 %inc, !3500, !DIExpression(), !3498)
  br label %for.cond, !dbg !3513, !llvm.loop !3514

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3516
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3517 {
entry:
    #dbg_value(ptr %state, !3518, !DIExpression(), !3519)
  call fastcc void @keccak_init(ptr noundef %state) #4, !dbg !3520
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3521
  store i64 0, ptr %arrayidx, align 8, !dbg !3522
  ret void, !dbg !3523
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3524 {
entry:
    #dbg_value(ptr %state, !3525, !DIExpression(), !3526)
    #dbg_value(ptr %in, !3527, !DIExpression(), !3526)
    #dbg_value(i32 %inlen, !3528, !DIExpression(), !3526)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3529
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3529
  %conv = trunc i64 %0 to i32, !dbg !3530
  %call = call fastcc i32 @keccak_absorb(ptr noundef %state, i32 noundef %conv, i32 noundef 136, ptr noundef %in, i32 noundef %inlen) #4, !dbg !3531
    #dbg_value(i32 %call, !3532, !DIExpression(), !3526)
  %conv1 = zext i32 %call to i64, !dbg !3533
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3534
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !3535
  ret void, !dbg !3536
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3537 {
entry:
    #dbg_value(ptr %state, !3538, !DIExpression(), !3539)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3540
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3540
  %conv = trunc i64 %0 to i32, !dbg !3541
  call fastcc void @keccak_finalize(ptr noundef %state, i32 noundef %conv, i32 noundef 136, i8 noundef zeroext 31) #4, !dbg !3542
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3543
  store i64 136, ptr %arrayidx1, align 8, !dbg !3544
  ret void, !dbg !3545
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3546 {
entry:
    #dbg_value(ptr %out, !3547, !DIExpression(), !3548)
    #dbg_value(i32 %outlen, !3549, !DIExpression(), !3548)
    #dbg_value(ptr %state, !3550, !DIExpression(), !3548)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3551
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3551
  %conv = trunc i64 %0 to i32, !dbg !3552
  %call = call fastcc i32 @keccak_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state, i32 noundef %conv, i32 noundef 136) #4, !dbg !3553
    #dbg_value(i32 %call, !3554, !DIExpression(), !3548)
  %conv1 = zext i32 %call to i64, !dbg !3555
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3556
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !3557
  ret void, !dbg !3558
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_absorb_once(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3559 {
entry:
    #dbg_value(ptr %state, !3560, !DIExpression(), !3561)
    #dbg_value(ptr %in, !3562, !DIExpression(), !3561)
    #dbg_value(i32 %inlen, !3563, !DIExpression(), !3561)
  call fastcc void @keccak_absorb_once(ptr noundef %state, i32 noundef 136, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !3564
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3565
  store i64 136, ptr %arrayidx, align 8, !dbg !3566
  ret void, !dbg !3567
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !3568 {
entry:
    #dbg_value(ptr %out, !3569, !DIExpression(), !3570)
    #dbg_value(i32 %nblocks, !3571, !DIExpression(), !3570)
    #dbg_value(ptr %state, !3572, !DIExpression(), !3570)
  call fastcc void @keccak_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state, i32 noundef 136) #4, !dbg !3573
  ret void, !dbg !3574
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128(ptr noundef %out, i32 noundef %outlen, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3575 {
entry:
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %out, !3578, !DIExpression(), !3579)
    #dbg_value(i32 %outlen, !3580, !DIExpression(), !3579)
    #dbg_value(ptr %in, !3581, !DIExpression(), !3579)
    #dbg_value(i32 %inlen, !3582, !DIExpression(), !3579)
    #dbg_declare(ptr %state, !3583, !DIExpression(), !3584)
  call void @pqcrystals_dilithium_fips202_ref_shake128_absorb_once(ptr noundef nonnull %state, ptr noundef %in, i32 noundef %inlen) #4, !dbg !3585
  %div = udiv i32 %outlen, 168, !dbg !3586
    #dbg_value(i32 %div, !3587, !DIExpression(), !3579)
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef %out, i32 noundef %div, ptr noundef nonnull %state) #4, !dbg !3588
  %mul.neg = mul i32 %div, -168, !dbg !3589
  %sub = add i32 %mul.neg, %outlen, !dbg !3590
    #dbg_value(i32 %sub, !3580, !DIExpression(), !3579)
  %mul1 = mul nuw i32 %div, 168, !dbg !3591
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %mul1, !dbg !3592
    #dbg_value(ptr %add.ptr, !3578, !DIExpression(), !3579)
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeeze(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %state) #4, !dbg !3593
  ret void, !dbg !3594
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef %out, i32 noundef %outlen, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3595 {
entry:
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %out, !3596, !DIExpression(), !3597)
    #dbg_value(i32 %outlen, !3598, !DIExpression(), !3597)
    #dbg_value(ptr %in, !3599, !DIExpression(), !3597)
    #dbg_value(i32 %inlen, !3600, !DIExpression(), !3597)
    #dbg_declare(ptr %state, !3601, !DIExpression(), !3602)
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb_once(ptr noundef nonnull %state, ptr noundef %in, i32 noundef %inlen) #4, !dbg !3603
  %div = udiv i32 %outlen, 136, !dbg !3604
    #dbg_value(i32 %div, !3605, !DIExpression(), !3597)
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef %out, i32 noundef %div, ptr noundef nonnull %state) #4, !dbg !3606
  %mul.neg = mul i32 %div, -136, !dbg !3607
  %sub = add i32 %mul.neg, %outlen, !dbg !3608
    #dbg_value(i32 %sub, !3598, !DIExpression(), !3597)
  %mul1 = mul nuw i32 %div, 136, !dbg !3609
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %mul1, !dbg !3610
    #dbg_value(ptr %add.ptr, !3596, !DIExpression(), !3597)
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %state) #4, !dbg !3611
  ret void, !dbg !3612
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_sha3_256(ptr noundef %h, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3613 {
entry:
  %s = alloca [25 x i64], align 8
    #dbg_value(ptr %h, !3616, !DIExpression(), !3617)
    #dbg_value(ptr %in, !3618, !DIExpression(), !3617)
    #dbg_value(i32 %inlen, !3619, !DIExpression(), !3617)
    #dbg_declare(ptr %s, !3620, !DIExpression(), !3624)
  call fastcc void @keccak_absorb_once(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !3625
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s) #4, !dbg !3626
    #dbg_value(i32 0, !3627, !DIExpression(), !3617)
  br label %for.cond, !dbg !3628

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3630
    #dbg_value(i32 %i.0, !3627, !DIExpression(), !3617)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !3631
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3633

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3634
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %mul, !dbg !3635
  %arrayidx = getelementptr inbounds nuw [25 x i64], ptr %s, i32 0, i32 %i.0, !dbg !3636
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3636
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %0) #4, !dbg !3637
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3638
    #dbg_value(i32 %inc, !3627, !DIExpression(), !3617)
  br label %for.cond, !dbg !3639, !llvm.loop !3640

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3642
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_sha3_512(ptr noundef %h, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3643 {
entry:
  %s = alloca [25 x i64], align 8
    #dbg_value(ptr %h, !3644, !DIExpression(), !3645)
    #dbg_value(ptr %in, !3646, !DIExpression(), !3645)
    #dbg_value(i32 %inlen, !3647, !DIExpression(), !3645)
    #dbg_declare(ptr %s, !3648, !DIExpression(), !3649)
  call fastcc void @keccak_absorb_once(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !3650
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s) #4, !dbg !3651
    #dbg_value(i32 0, !3652, !DIExpression(), !3645)
  br label %for.cond, !dbg !3653

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3655
    #dbg_value(i32 %i.0, !3652, !DIExpression(), !3645)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !3656
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3658

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3659
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %mul, !dbg !3660
  %arrayidx = getelementptr inbounds nuw [25 x i64], ptr %s, i32 0, i32 %i.0, !dbg !3661
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3661
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %0) #4, !dbg !3662
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3663
    #dbg_value(i32 %inc, !3652, !DIExpression(), !3645)
  br label %for.cond, !dbg !3664, !llvm.loop !3665

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3667
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_dilithium_shake128_stream_init(ptr noundef %state, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !3668 {
entry:
  %t = alloca [2 x i8], align 1
    #dbg_value(ptr %state, !3672, !DIExpression(), !3673)
    #dbg_value(ptr %seed, !3674, !DIExpression(), !3673)
    #dbg_value(i16 %nonce, !3675, !DIExpression(), !3673)
    #dbg_declare(ptr %t, !3676, !DIExpression(), !3680)
  %conv = trunc i16 %nonce to i8, !dbg !3681
  store i8 %conv, ptr %t, align 1, !dbg !3682
  %0 = lshr i16 %nonce, 8, !dbg !3683
  %conv2 = trunc nuw i16 %0 to i8, !dbg !3684
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %t, i32 1, !dbg !3685
  store i8 %conv2, ptr %arrayidx3, align 1, !dbg !3686
  call void @pqcrystals_dilithium_fips202_ref_shake128_init(ptr noundef %state) #4, !dbg !3687
  call void @pqcrystals_dilithium_fips202_ref_shake128_absorb(ptr noundef %state, ptr noundef %seed, i32 noundef 32) #4, !dbg !3688
  call void @pqcrystals_dilithium_fips202_ref_shake128_absorb(ptr noundef %state, ptr noundef nonnull %t, i32 noundef 2) #4, !dbg !3689
  call void @pqcrystals_dilithium_fips202_ref_shake128_finalize(ptr noundef %state) #4, !dbg !3690
  ret void, !dbg !3691
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_dilithium_shake256_stream_init(ptr noundef %state, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !3692 {
entry:
  %t = alloca [2 x i8], align 1
    #dbg_value(ptr %state, !3693, !DIExpression(), !3694)
    #dbg_value(ptr %seed, !3695, !DIExpression(), !3694)
    #dbg_value(i16 %nonce, !3696, !DIExpression(), !3694)
    #dbg_declare(ptr %t, !3697, !DIExpression(), !3698)
  %conv = trunc i16 %nonce to i8, !dbg !3699
  store i8 %conv, ptr %t, align 1, !dbg !3700
  %0 = lshr i16 %nonce, 8, !dbg !3701
  %conv2 = trunc nuw i16 %0 to i8, !dbg !3702
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %t, i32 1, !dbg !3703
  store i8 %conv2, ptr %arrayidx3, align 1, !dbg !3704
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef %state) #4, !dbg !3705
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef %state, ptr noundef %seed, i32 noundef 64) #4, !dbg !3706
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef %state, ptr noundef nonnull %t, i32 noundef 2) #4, !dbg !3707
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef %state) #4, !dbg !3708
  ret void, !dbg !3709
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_pack_pk(ptr noundef %pk, ptr noundef %rho, ptr noundef %t1) local_unnamed_addr #0 !dbg !3710 {
entry:
    #dbg_value(ptr %pk, !3714, !DIExpression(), !3715)
    #dbg_value(ptr %rho, !3716, !DIExpression(), !3715)
    #dbg_value(ptr %t1, !3717, !DIExpression(), !3715)
    #dbg_value(i32 0, !3718, !DIExpression(), !3715)
  br label %for.cond, !dbg !3719

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3721
    #dbg_value(i32 %i.0, !3718, !DIExpression(), !3715)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !3722
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3724

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !3725
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3725
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %pk, i32 %i.0, !dbg !3726
  store i8 %0, ptr %arrayidx1, align 1, !dbg !3727
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3728
    #dbg_value(i32 %inc, !3718, !DIExpression(), !3715)
  br label %for.cond, !dbg !3729, !llvm.loop !3730

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 32, !dbg !3732
    #dbg_value(ptr %add.ptr, !3714, !DIExpression(), !3715)
    #dbg_value(i32 0, !3718, !DIExpression(), !3715)
  br label %for.cond2, !dbg !3733

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !3735
    #dbg_value(i32 %i.1, !3718, !DIExpression(), !3715)
  %exitcond1 = icmp ne i32 %i.1, 6, !dbg !3736
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !3738

for.body4:                                        ; preds = %for.cond2
  %mul = mul nuw nsw i32 %i.1, 320, !dbg !3739
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !3740
  %arrayidx6 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %t1, i32 0, i32 %i.1, !dbg !3741
  call void @pqcrystals_dilithium3_ref_polyt1_pack(ptr noundef nonnull %add.ptr5, ptr noundef %arrayidx6) #4, !dbg !3742
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !3743
    #dbg_value(i32 %inc8, !3718, !DIExpression(), !3715)
  br label %for.cond2, !dbg !3744, !llvm.loop !3745

for.end9:                                         ; preds = %for.cond2
  ret void, !dbg !3747
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_unpack_pk(ptr noundef %rho, ptr noundef %t1, ptr noundef %pk) local_unnamed_addr #0 !dbg !3748 {
entry:
    #dbg_value(ptr %rho, !3751, !DIExpression(), !3752)
    #dbg_value(ptr %t1, !3753, !DIExpression(), !3752)
    #dbg_value(ptr %pk, !3754, !DIExpression(), !3752)
    #dbg_value(i32 0, !3755, !DIExpression(), !3752)
  br label %for.cond, !dbg !3756

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3758
    #dbg_value(i32 %i.0, !3755, !DIExpression(), !3752)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !3759
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3761

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %pk, i32 %i.0, !dbg !3762
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3762
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !3763
  store i8 %0, ptr %arrayidx1, align 1, !dbg !3764
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3765
    #dbg_value(i32 %inc, !3755, !DIExpression(), !3752)
  br label %for.cond, !dbg !3766, !llvm.loop !3767

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 32, !dbg !3769
    #dbg_value(ptr %add.ptr, !3754, !DIExpression(), !3752)
    #dbg_value(i32 0, !3755, !DIExpression(), !3752)
  br label %for.cond2, !dbg !3770

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !3772
    #dbg_value(i32 %i.1, !3755, !DIExpression(), !3752)
  %exitcond1 = icmp ne i32 %i.1, 6, !dbg !3773
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !3775

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %t1, i32 0, i32 %i.1, !dbg !3776
  %mul = mul nuw nsw i32 %i.1, 320, !dbg !3777
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !3778
  call void @pqcrystals_dilithium3_ref_polyt1_unpack(ptr noundef %arrayidx5, ptr noundef nonnull %add.ptr6) #4, !dbg !3779
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !3780
    #dbg_value(i32 %inc8, !3755, !DIExpression(), !3752)
  br label %for.cond2, !dbg !3781, !llvm.loop !3782

for.end9:                                         ; preds = %for.cond2
  ret void, !dbg !3784
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_pack_sk(ptr noundef %sk, ptr noundef %rho, ptr noundef %tr, ptr noundef %key, ptr noundef %t0, ptr noundef %s1, ptr noundef %s2) local_unnamed_addr #0 !dbg !3785 {
entry:
    #dbg_value(ptr %sk, !3788, !DIExpression(), !3789)
    #dbg_value(ptr %rho, !3790, !DIExpression(), !3789)
    #dbg_value(ptr %tr, !3791, !DIExpression(), !3789)
    #dbg_value(ptr %key, !3792, !DIExpression(), !3789)
    #dbg_value(ptr %t0, !3793, !DIExpression(), !3789)
    #dbg_value(ptr %s1, !3794, !DIExpression(), !3789)
    #dbg_value(ptr %s2, !3795, !DIExpression(), !3789)
    #dbg_value(i32 0, !3796, !DIExpression(), !3789)
  br label %for.cond, !dbg !3797

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3799
    #dbg_value(i32 %i.0, !3796, !DIExpression(), !3789)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !3800
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3802

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !3803
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3803
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %sk, i32 %i.0, !dbg !3804
  store i8 %0, ptr %arrayidx1, align 1, !dbg !3805
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3806
    #dbg_value(i32 %inc, !3796, !DIExpression(), !3789)
  br label %for.cond, !dbg !3807, !llvm.loop !3808

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !3810
    #dbg_value(ptr %add.ptr, !3788, !DIExpression(), !3789)
    #dbg_value(i32 0, !3796, !DIExpression(), !3789)
  br label %for.cond2, !dbg !3811

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !3813
    #dbg_value(i32 %i.1, !3796, !DIExpression(), !3789)
  %exitcond1 = icmp ne i32 %i.1, 32, !dbg !3814
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !3816

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %key, i32 %i.1, !dbg !3817
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !3817
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.1, !dbg !3818
  store i8 %1, ptr %arrayidx6, align 1, !dbg !3819
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !3820
    #dbg_value(i32 %inc8, !3796, !DIExpression(), !3789)
  br label %for.cond2, !dbg !3821, !llvm.loop !3822

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sk, i32 64, !dbg !3824
    #dbg_value(ptr %add.ptr10, !3788, !DIExpression(), !3789)
    #dbg_value(i32 0, !3796, !DIExpression(), !3789)
  br label %for.cond11, !dbg !3825

for.cond11:                                       ; preds = %for.body13, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc17, %for.body13 ], !dbg !3827
    #dbg_value(i32 %i.2, !3796, !DIExpression(), !3789)
  %exitcond2 = icmp ne i32 %i.2, 64, !dbg !3828
  br i1 %exitcond2, label %for.body13, label %for.end18, !dbg !3830

for.body13:                                       ; preds = %for.cond11
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %tr, i32 %i.2, !dbg !3831
  %2 = load i8, ptr %arrayidx14, align 1, !dbg !3831
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !3832
  store i8 %2, ptr %arrayidx15, align 1, !dbg !3833
  %inc17 = add nuw nsw i32 %i.2, 1, !dbg !3834
    #dbg_value(i32 %inc17, !3796, !DIExpression(), !3789)
  br label %for.cond11, !dbg !3835, !llvm.loop !3836

for.end18:                                        ; preds = %for.cond11
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %sk, i32 128, !dbg !3838
    #dbg_value(ptr %add.ptr19, !3788, !DIExpression(), !3789)
    #dbg_value(i32 0, !3796, !DIExpression(), !3789)
  br label %for.cond20, !dbg !3839

for.cond20:                                       ; preds = %for.body22, %for.end18
  %i.3 = phi i32 [ 0, %for.end18 ], [ %inc26, %for.body22 ], !dbg !3841
    #dbg_value(i32 %i.3, !3796, !DIExpression(), !3789)
  %exitcond3 = icmp ne i32 %i.3, 5, !dbg !3842
  br i1 %exitcond3, label %for.body22, label %for.end27, !dbg !3844

for.body22:                                       ; preds = %for.cond20
  %mul = shl nuw nsw i32 %i.3, 7, !dbg !3845
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %add.ptr19, i32 %mul, !dbg !3846
  %arrayidx24 = getelementptr inbounds nuw [5 x [256 x i32]], ptr %s1, i32 0, i32 %i.3, !dbg !3847
  call void @pqcrystals_dilithium3_ref_polyeta_pack(ptr noundef nonnull %add.ptr23, ptr noundef %arrayidx24) #4, !dbg !3848
  %inc26 = add nuw nsw i32 %i.3, 1, !dbg !3849
    #dbg_value(i32 %inc26, !3796, !DIExpression(), !3789)
  br label %for.cond20, !dbg !3850, !llvm.loop !3851

for.end27:                                        ; preds = %for.cond20
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %sk, i32 768, !dbg !3853
    #dbg_value(ptr %add.ptr28, !3788, !DIExpression(), !3789)
    #dbg_value(i32 0, !3796, !DIExpression(), !3789)
  br label %for.cond29, !dbg !3854

for.cond29:                                       ; preds = %for.body31, %for.end27
  %i.4 = phi i32 [ 0, %for.end27 ], [ %inc36, %for.body31 ], !dbg !3856
    #dbg_value(i32 %i.4, !3796, !DIExpression(), !3789)
  %exitcond4 = icmp ne i32 %i.4, 6, !dbg !3857
  br i1 %exitcond4, label %for.body31, label %for.end37, !dbg !3859

for.body31:                                       ; preds = %for.cond29
  %mul32 = shl nuw nsw i32 %i.4, 7, !dbg !3860
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %add.ptr28, i32 %mul32, !dbg !3861
  %arrayidx34 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %s2, i32 0, i32 %i.4, !dbg !3862
  call void @pqcrystals_dilithium3_ref_polyeta_pack(ptr noundef nonnull %add.ptr33, ptr noundef %arrayidx34) #4, !dbg !3863
  %inc36 = add nuw nsw i32 %i.4, 1, !dbg !3864
    #dbg_value(i32 %inc36, !3796, !DIExpression(), !3789)
  br label %for.cond29, !dbg !3865, !llvm.loop !3866

for.end37:                                        ; preds = %for.cond29
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %sk, i32 1536, !dbg !3868
    #dbg_value(ptr %add.ptr38, !3788, !DIExpression(), !3789)
    #dbg_value(i32 0, !3796, !DIExpression(), !3789)
  br label %for.cond39, !dbg !3869

for.cond39:                                       ; preds = %for.body41, %for.end37
  %i.5 = phi i32 [ 0, %for.end37 ], [ %inc46, %for.body41 ], !dbg !3871
    #dbg_value(i32 %i.5, !3796, !DIExpression(), !3789)
  %exitcond5 = icmp ne i32 %i.5, 6, !dbg !3872
  br i1 %exitcond5, label %for.body41, label %for.end47, !dbg !3874

for.body41:                                       ; preds = %for.cond39
  %mul42 = mul nuw nsw i32 %i.5, 416, !dbg !3875
  %add.ptr43 = getelementptr inbounds nuw i8, ptr %add.ptr38, i32 %mul42, !dbg !3876
  %arrayidx44 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %t0, i32 0, i32 %i.5, !dbg !3877
  call void @pqcrystals_dilithium3_ref_polyt0_pack(ptr noundef nonnull %add.ptr43, ptr noundef %arrayidx44) #4, !dbg !3878
  %inc46 = add nuw nsw i32 %i.5, 1, !dbg !3879
    #dbg_value(i32 %inc46, !3796, !DIExpression(), !3789)
  br label %for.cond39, !dbg !3880, !llvm.loop !3881

for.end47:                                        ; preds = %for.cond39
  ret void, !dbg !3883
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_unpack_sk(ptr noundef %rho, ptr noundef %tr, ptr noundef %key, ptr noundef %t0, ptr noundef %s1, ptr noundef %s2, ptr noundef %sk) local_unnamed_addr #0 !dbg !3884 {
entry:
    #dbg_value(ptr %rho, !3887, !DIExpression(), !3888)
    #dbg_value(ptr %tr, !3889, !DIExpression(), !3888)
    #dbg_value(ptr %key, !3890, !DIExpression(), !3888)
    #dbg_value(ptr %t0, !3891, !DIExpression(), !3888)
    #dbg_value(ptr %s1, !3892, !DIExpression(), !3888)
    #dbg_value(ptr %s2, !3893, !DIExpression(), !3888)
    #dbg_value(ptr %sk, !3894, !DIExpression(), !3888)
    #dbg_value(i32 0, !3895, !DIExpression(), !3888)
  br label %for.cond, !dbg !3896

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3898
    #dbg_value(i32 %i.0, !3895, !DIExpression(), !3888)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !3899
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3901

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %sk, i32 %i.0, !dbg !3902
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3902
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !3903
  store i8 %0, ptr %arrayidx1, align 1, !dbg !3904
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3905
    #dbg_value(i32 %inc, !3895, !DIExpression(), !3888)
  br label %for.cond, !dbg !3906, !llvm.loop !3907

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !3909
    #dbg_value(ptr %add.ptr, !3894, !DIExpression(), !3888)
    #dbg_value(i32 0, !3895, !DIExpression(), !3888)
  br label %for.cond2, !dbg !3910

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !3912
    #dbg_value(i32 %i.1, !3895, !DIExpression(), !3888)
  %exitcond1 = icmp ne i32 %i.1, 32, !dbg !3913
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !3915

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.1, !dbg !3916
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !3916
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %key, i32 %i.1, !dbg !3917
  store i8 %1, ptr %arrayidx6, align 1, !dbg !3918
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !3919
    #dbg_value(i32 %inc8, !3895, !DIExpression(), !3888)
  br label %for.cond2, !dbg !3920, !llvm.loop !3921

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sk, i32 64, !dbg !3923
    #dbg_value(ptr %add.ptr10, !3894, !DIExpression(), !3888)
    #dbg_value(i32 0, !3895, !DIExpression(), !3888)
  br label %for.cond11, !dbg !3924

for.cond11:                                       ; preds = %for.body13, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc17, %for.body13 ], !dbg !3926
    #dbg_value(i32 %i.2, !3895, !DIExpression(), !3888)
  %exitcond2 = icmp ne i32 %i.2, 64, !dbg !3927
  br i1 %exitcond2, label %for.body13, label %for.end18, !dbg !3929

for.body13:                                       ; preds = %for.cond11
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !3930
  %2 = load i8, ptr %arrayidx14, align 1, !dbg !3930
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %tr, i32 %i.2, !dbg !3931
  store i8 %2, ptr %arrayidx15, align 1, !dbg !3932
  %inc17 = add nuw nsw i32 %i.2, 1, !dbg !3933
    #dbg_value(i32 %inc17, !3895, !DIExpression(), !3888)
  br label %for.cond11, !dbg !3934, !llvm.loop !3935

for.end18:                                        ; preds = %for.cond11
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %sk, i32 128, !dbg !3937
    #dbg_value(ptr %add.ptr19, !3894, !DIExpression(), !3888)
    #dbg_value(i32 0, !3895, !DIExpression(), !3888)
  br label %for.cond20, !dbg !3938

for.cond20:                                       ; preds = %for.body22, %for.end18
  %i.3 = phi i32 [ 0, %for.end18 ], [ %inc26, %for.body22 ], !dbg !3940
    #dbg_value(i32 %i.3, !3895, !DIExpression(), !3888)
  %exitcond3 = icmp ne i32 %i.3, 5, !dbg !3941
  br i1 %exitcond3, label %for.body22, label %for.end27, !dbg !3943

for.body22:                                       ; preds = %for.cond20
  %arrayidx23 = getelementptr inbounds nuw [5 x [256 x i32]], ptr %s1, i32 0, i32 %i.3, !dbg !3944
  %mul = shl nuw nsw i32 %i.3, 7, !dbg !3945
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %add.ptr19, i32 %mul, !dbg !3946
  call void @pqcrystals_dilithium3_ref_polyeta_unpack(ptr noundef %arrayidx23, ptr noundef nonnull %add.ptr24) #4, !dbg !3947
  %inc26 = add nuw nsw i32 %i.3, 1, !dbg !3948
    #dbg_value(i32 %inc26, !3895, !DIExpression(), !3888)
  br label %for.cond20, !dbg !3949, !llvm.loop !3950

for.end27:                                        ; preds = %for.cond20
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %sk, i32 768, !dbg !3952
    #dbg_value(ptr %add.ptr28, !3894, !DIExpression(), !3888)
    #dbg_value(i32 0, !3895, !DIExpression(), !3888)
  br label %for.cond29, !dbg !3953

for.cond29:                                       ; preds = %for.body31, %for.end27
  %i.4 = phi i32 [ 0, %for.end27 ], [ %inc36, %for.body31 ], !dbg !3955
    #dbg_value(i32 %i.4, !3895, !DIExpression(), !3888)
  %exitcond4 = icmp ne i32 %i.4, 6, !dbg !3956
  br i1 %exitcond4, label %for.body31, label %for.end37, !dbg !3958

for.body31:                                       ; preds = %for.cond29
  %arrayidx32 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %s2, i32 0, i32 %i.4, !dbg !3959
  %mul33 = shl nuw nsw i32 %i.4, 7, !dbg !3960
  %add.ptr34 = getelementptr inbounds nuw i8, ptr %add.ptr28, i32 %mul33, !dbg !3961
  call void @pqcrystals_dilithium3_ref_polyeta_unpack(ptr noundef %arrayidx32, ptr noundef nonnull %add.ptr34) #4, !dbg !3962
  %inc36 = add nuw nsw i32 %i.4, 1, !dbg !3963
    #dbg_value(i32 %inc36, !3895, !DIExpression(), !3888)
  br label %for.cond29, !dbg !3964, !llvm.loop !3965

for.end37:                                        ; preds = %for.cond29
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %sk, i32 1536, !dbg !3967
    #dbg_value(ptr %add.ptr38, !3894, !DIExpression(), !3888)
    #dbg_value(i32 0, !3895, !DIExpression(), !3888)
  br label %for.cond39, !dbg !3968

for.cond39:                                       ; preds = %for.body41, %for.end37
  %i.5 = phi i32 [ 0, %for.end37 ], [ %inc46, %for.body41 ], !dbg !3970
    #dbg_value(i32 %i.5, !3895, !DIExpression(), !3888)
  %exitcond5 = icmp ne i32 %i.5, 6, !dbg !3971
  br i1 %exitcond5, label %for.body41, label %for.end47, !dbg !3973

for.body41:                                       ; preds = %for.cond39
  %arrayidx42 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %t0, i32 0, i32 %i.5, !dbg !3974
  %mul43 = mul nuw nsw i32 %i.5, 416, !dbg !3975
  %add.ptr44 = getelementptr inbounds nuw i8, ptr %add.ptr38, i32 %mul43, !dbg !3976
  call void @pqcrystals_dilithium3_ref_polyt0_unpack(ptr noundef %arrayidx42, ptr noundef nonnull %add.ptr44) #4, !dbg !3977
  %inc46 = add nuw nsw i32 %i.5, 1, !dbg !3978
    #dbg_value(i32 %inc46, !3895, !DIExpression(), !3888)
  br label %for.cond39, !dbg !3979, !llvm.loop !3980

for.end47:                                        ; preds = %for.cond39
  ret void, !dbg !3982
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium3_ref_pack_sig(ptr noundef %sig, ptr noundef %c, ptr noundef %z, ptr noundef %h) local_unnamed_addr #0 !dbg !3983 {
entry:
    #dbg_value(ptr %sig, !3986, !DIExpression(), !3987)
    #dbg_value(ptr %c, !3988, !DIExpression(), !3987)
    #dbg_value(ptr %z, !3989, !DIExpression(), !3987)
    #dbg_value(ptr %h, !3990, !DIExpression(), !3987)
    #dbg_value(i32 0, !3991, !DIExpression(), !3987)
  br label %for.cond, !dbg !3992

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3994
    #dbg_value(i32 %i.0, !3991, !DIExpression(), !3987)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !3995
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3997

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !3998
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3998
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %sig, i32 %i.0, !dbg !3999
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4000
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4001
    #dbg_value(i32 %inc, !3991, !DIExpression(), !3987)
  br label %for.cond, !dbg !4002, !llvm.loop !4003

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sig, i32 48, !dbg !4005
    #dbg_value(ptr %add.ptr, !3986, !DIExpression(), !3987)
    #dbg_value(i32 0, !3991, !DIExpression(), !3987)
  br label %for.cond2, !dbg !4006

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !4008
    #dbg_value(i32 %i.1, !3991, !DIExpression(), !3987)
  %exitcond1 = icmp ne i32 %i.1, 5, !dbg !4009
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !4011

for.body4:                                        ; preds = %for.cond2
  %mul = mul nuw nsw i32 %i.1, 640, !dbg !4012
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !4013
  %arrayidx6 = getelementptr inbounds nuw [5 x [256 x i32]], ptr %z, i32 0, i32 %i.1, !dbg !4014
  call void @pqcrystals_dilithium3_ref_polyz_pack(ptr noundef nonnull %add.ptr5, ptr noundef %arrayidx6) #4, !dbg !4015
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !4016
    #dbg_value(i32 %inc8, !3991, !DIExpression(), !3987)
  br label %for.cond2, !dbg !4017, !llvm.loop !4018

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sig, i32 3248, !dbg !4020
    #dbg_value(ptr %add.ptr10, !3986, !DIExpression(), !3987)
    #dbg_value(i32 0, !3991, !DIExpression(), !3987)
  br label %for.cond11, !dbg !4021

for.cond11:                                       ; preds = %for.body13, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc16, %for.body13 ], !dbg !4023
    #dbg_value(i32 %i.2, !3991, !DIExpression(), !3987)
  %exitcond2 = icmp ne i32 %i.2, 61, !dbg !4024
  br i1 %exitcond2, label %for.body13, label %for.cond18.preheader, !dbg !4026

for.cond18.preheader:                             ; preds = %for.cond11
  br label %for.cond18, !dbg !4027

for.body13:                                       ; preds = %for.cond11
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4029
  store i8 0, ptr %arrayidx14, align 1, !dbg !4030
  %inc16 = add nuw nsw i32 %i.2, 1, !dbg !4031
    #dbg_value(i32 %inc16, !3991, !DIExpression(), !3987)
  br label %for.cond11, !dbg !4032, !llvm.loop !4033

for.cond18:                                       ; preds = %for.cond18.preheader, %for.end31
  %i.3 = phi i32 [ %inc35, %for.end31 ], [ 0, %for.cond18.preheader ], !dbg !4035
  %k.0 = phi i32 [ %k.1.lcssa, %for.end31 ], [ 0, %for.cond18.preheader ], !dbg !4036
    #dbg_value(i32 %k.0, !4037, !DIExpression(), !3987)
    #dbg_value(i32 %i.3, !3991, !DIExpression(), !3987)
  %exitcond4 = icmp ne i32 %i.3, 6, !dbg !4038
  br i1 %exitcond4, label %for.cond21.preheader, label %for.end36, !dbg !4027

for.cond21.preheader:                             ; preds = %for.cond18
  br label %for.cond21, !dbg !4040

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc29
  %j.0 = phi i32 [ %inc30, %for.inc29 ], [ 0, %for.cond21.preheader ], !dbg !4043
  %k.1 = phi i32 [ %k.2, %for.inc29 ], [ %k.0, %for.cond21.preheader ], !dbg !3987
    #dbg_value(i32 %k.1, !4037, !DIExpression(), !3987)
    #dbg_value(i32 %j.0, !4044, !DIExpression(), !3987)
  %exitcond3 = icmp ne i32 %j.0, 256, !dbg !4045
  br i1 %exitcond3, label %for.body23, label %for.end31, !dbg !4040

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %h, i32 0, i32 %i.3, i32 %j.0, !dbg !4047
  %1 = load i32, ptr %arrayidx25, align 4, !dbg !4047
  %cmp26.not = icmp eq i32 %1, 0, !dbg !4049
  br i1 %cmp26.not, label %for.inc29, label %if.then, !dbg !4049

if.then:                                          ; preds = %for.body23
  %conv = trunc nuw i32 %j.0 to i8, !dbg !4050
  %inc27 = add i32 %k.1, 1, !dbg !4051
    #dbg_value(i32 %inc27, !4037, !DIExpression(), !3987)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %k.1, !dbg !4052
  store i8 %conv, ptr %arrayidx28, align 1, !dbg !4053
  br label %for.inc29, !dbg !4052

for.inc29:                                        ; preds = %for.body23, %if.then
  %k.2 = phi i32 [ %inc27, %if.then ], [ %k.1, %for.body23 ], !dbg !3987
    #dbg_value(i32 %k.2, !4037, !DIExpression(), !3987)
  %inc30 = add nuw nsw i32 %j.0, 1, !dbg !4054
    #dbg_value(i32 %inc30, !4044, !DIExpression(), !3987)
  br label %for.cond21, !dbg !4055, !llvm.loop !4056

for.end31:                                        ; preds = %for.cond21
  %k.1.lcssa = phi i32 [ %k.1, %for.cond21 ], !dbg !3987
  %conv32 = trunc i32 %k.1.lcssa to i8, !dbg !4058
  %2 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.3, !dbg !4059
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %2, i32 55, !dbg !4059
  store i8 %conv32, ptr %arrayidx33, align 1, !dbg !4060
  %inc35 = add nuw nsw i32 %i.3, 1, !dbg !4061
    #dbg_value(i32 %inc35, !3991, !DIExpression(), !3987)
  br label %for.cond18, !dbg !4062, !llvm.loop !4063

for.end36:                                        ; preds = %for.cond18
  ret void, !dbg !4065
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium3_ref_unpack_sig(ptr noundef %c, ptr noundef %z, ptr noundef %h, ptr noundef %sig) local_unnamed_addr #0 !dbg !4066 {
entry:
    #dbg_value(ptr %c, !4069, !DIExpression(), !4070)
    #dbg_value(ptr %z, !4071, !DIExpression(), !4070)
    #dbg_value(ptr %h, !4072, !DIExpression(), !4070)
    #dbg_value(ptr %sig, !4073, !DIExpression(), !4070)
    #dbg_value(i32 0, !4074, !DIExpression(), !4070)
  br label %for.cond, !dbg !4075

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4077
    #dbg_value(i32 %i.0, !4074, !DIExpression(), !4070)
  %exitcond = icmp ne i32 %i.0, 48, !dbg !4078
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4080

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %sig, i32 %i.0, !dbg !4081
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4081
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !4082
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4083
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4084
    #dbg_value(i32 %inc, !4074, !DIExpression(), !4070)
  br label %for.cond, !dbg !4085, !llvm.loop !4086

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sig, i32 48, !dbg !4088
    #dbg_value(ptr %add.ptr, !4073, !DIExpression(), !4070)
    #dbg_value(i32 0, !4074, !DIExpression(), !4070)
  br label %for.cond2, !dbg !4089

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !4091
    #dbg_value(i32 %i.1, !4074, !DIExpression(), !4070)
  %exitcond5 = icmp ne i32 %i.1, 5, !dbg !4092
  br i1 %exitcond5, label %for.body4, label %for.end9, !dbg !4094

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw [5 x [256 x i32]], ptr %z, i32 0, i32 %i.1, !dbg !4095
  %mul = mul nuw nsw i32 %i.1, 640, !dbg !4096
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !4097
  call void @pqcrystals_dilithium3_ref_polyz_unpack(ptr noundef %arrayidx5, ptr noundef nonnull %add.ptr6) #4, !dbg !4098
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !4099
    #dbg_value(i32 %inc8, !4074, !DIExpression(), !4070)
  br label %for.cond2, !dbg !4100, !llvm.loop !4101

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sig, i32 3248, !dbg !4103
    #dbg_value(ptr %add.ptr10, !4073, !DIExpression(), !4070)
    #dbg_value(i32 0, !4104, !DIExpression(), !4070)
    #dbg_value(i32 0, !4074, !DIExpression(), !4070)
  br label %for.cond11, !dbg !4105

for.cond11:                                       ; preds = %for.inc56, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc57, %for.inc56 ], !dbg !4107
  %k.0 = phi i32 [ 0, %for.end9 ], [ %conv55, %for.inc56 ], !dbg !4070
    #dbg_value(i32 %k.0, !4104, !DIExpression(), !4070)
    #dbg_value(i32 %i.2, !4074, !DIExpression(), !4070)
  %exitcond7 = icmp ne i32 %i.2, 6, !dbg !4108
  br i1 %exitcond7, label %for.cond14.preheader, label %for.cond59.preheader, !dbg !4110

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !4111

for.cond59.preheader:                             ; preds = %for.cond11
  %k.0.lcssa8 = phi i32 [ %k.0, %for.cond11 ], !dbg !4070
  %k.0.lcssa = phi i32 [ %k.0, %for.cond11 ], !dbg !4070
  %umax = call i32 @llvm.umax.i32(i32 %k.0.lcssa8, i32 55), !dbg !4114
  br label %for.cond59, !dbg !4114

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %j.0 = phi i32 [ %inc20, %for.body16 ], [ 0, %for.cond14.preheader ], !dbg !4116
    #dbg_value(i32 %j.0, !4117, !DIExpression(), !4070)
  %exitcond6 = icmp ne i32 %j.0, 256, !dbg !4118
  br i1 %exitcond6, label %for.body16, label %for.end21, !dbg !4111

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %h, i32 0, i32 %i.2, i32 %j.0, !dbg !4120
  store i32 0, ptr %arrayidx18, align 4, !dbg !4121
  %inc20 = add nuw nsw i32 %j.0, 1, !dbg !4122
    #dbg_value(i32 %inc20, !4117, !DIExpression(), !4070)
  br label %for.cond14, !dbg !4123, !llvm.loop !4124

for.end21:                                        ; preds = %for.cond14
  %1 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4126
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %1, i32 55, !dbg !4126
  %2 = load i8, ptr %arrayidx22, align 1, !dbg !4126
  %conv = zext i8 %2 to i32, !dbg !4126
  %cmp23 = icmp samesign ugt i32 %k.0, %conv, !dbg !4128
  br i1 %cmp23, label %return.loopexit2, label %lor.lhs.false, !dbg !4129

lor.lhs.false:                                    ; preds = %for.end21
  %3 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4130
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %3, i32 55, !dbg !4130
  %4 = load i8, ptr %arrayidx26, align 1, !dbg !4130
  %cmp28 = icmp ugt i8 %4, 55, !dbg !4131
  br i1 %cmp28, label %return.loopexit2, label %for.cond30.preheader, !dbg !4129

for.cond30.preheader:                             ; preds = %lor.lhs.false
  br label %for.cond30, !dbg !4132

for.cond30:                                       ; preds = %for.cond30.preheader, %if.end46
  %j.1 = phi i32 [ %inc51, %if.end46 ], [ %k.0, %for.cond30.preheader ], !dbg !4134
    #dbg_value(i32 %j.1, !4117, !DIExpression(), !4070)
  %5 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4135
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %5, i32 55, !dbg !4135
  %6 = load i8, ptr %arrayidx32, align 1, !dbg !4135
  %conv33 = zext i8 %6 to i32, !dbg !4135
  %cmp34 = icmp samesign ult i32 %j.1, %conv33, !dbg !4137
  br i1 %cmp34, label %for.body36, label %for.inc56, !dbg !4132

for.body36:                                       ; preds = %for.cond30
  %cmp37 = icmp samesign ugt i32 %j.1, %k.0, !dbg !4138
  br i1 %cmp37, label %land.lhs.true, label %if.end46, !dbg !4141

land.lhs.true:                                    ; preds = %for.body36
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %j.1, !dbg !4142
  %7 = load i8, ptr %arrayidx39, align 1, !dbg !4142
  %8 = getelementptr i8, ptr %add.ptr10, i32 %j.1, !dbg !4143
  %arrayidx41 = getelementptr i8, ptr %8, i32 -1, !dbg !4143
  %9 = load i8, ptr %arrayidx41, align 1, !dbg !4143
  %cmp43.not = icmp ugt i8 %7, %9, !dbg !4144
  br i1 %cmp43.not, label %if.end46, label %return.loopexit1, !dbg !4141

if.end46:                                         ; preds = %land.lhs.true, %for.body36
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %j.1, !dbg !4145
  %10 = load i8, ptr %arrayidx48, align 1, !dbg !4145
  %idxprom = zext i8 %10 to i32, !dbg !4146
  %arrayidx49 = getelementptr inbounds nuw [6 x [256 x i32]], ptr %h, i32 0, i32 %i.2, i32 %idxprom, !dbg !4146
  store i32 1, ptr %arrayidx49, align 4, !dbg !4147
  %inc51 = add nuw nsw i32 %j.1, 1, !dbg !4148
    #dbg_value(i32 %inc51, !4117, !DIExpression(), !4070)
  br label %for.cond30, !dbg !4149, !llvm.loop !4150

for.inc56:                                        ; preds = %for.cond30
    #dbg_value(i8 poison, !4104, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4070)
  %11 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4152
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %11, i32 55, !dbg !4152
  %12 = load i8, ptr %arrayidx54, align 1, !dbg !4152
    #dbg_value(i8 %12, !4104, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4070)
  %conv55 = zext i8 %12 to i32, !dbg !4152
    #dbg_value(i32 %conv55, !4104, !DIExpression(), !4070)
  %inc57 = add nuw nsw i32 %i.2, 1, !dbg !4153
    #dbg_value(i32 %inc57, !4074, !DIExpression(), !4070)
  br label %for.cond11, !dbg !4154, !llvm.loop !4155

for.cond59:                                       ; preds = %for.cond59.preheader, %for.inc66
  %j.2 = phi i32 [ %inc67, %for.inc66 ], [ %k.0.lcssa, %for.cond59.preheader ], !dbg !4157
    #dbg_value(i32 %j.2, !4117, !DIExpression(), !4070)
  %exitcond11 = icmp ne i32 %j.2, %umax, !dbg !4158
  br i1 %exitcond11, label %for.body62, label %return.loopexit, !dbg !4114

for.body62:                                       ; preds = %for.cond59
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %j.2, !dbg !4160
  %13 = load i8, ptr %arrayidx63, align 1, !dbg !4160
  %tobool.not = icmp eq i8 %13, 0, !dbg !4160
  br i1 %tobool.not, label %for.inc66, label %return.loopexit, !dbg !4160

for.inc66:                                        ; preds = %for.body62
  %inc67 = add nuw nsw i32 %j.2, 1, !dbg !4162
    #dbg_value(i32 %inc67, !4117, !DIExpression(), !4070)
  br label %for.cond59, !dbg !4163, !llvm.loop !4164

return.loopexit:                                  ; preds = %for.body62, %for.cond59
  %retval.0.ph = phi i32 [ 0, %for.cond59 ], [ 1, %for.body62 ]
  br label %return, !dbg !4166

return.loopexit1:                                 ; preds = %land.lhs.true
  br label %return, !dbg !4166

return.loopexit2:                                 ; preds = %lor.lhs.false, %for.end21
  br label %return, !dbg !4166

return:                                           ; preds = %return.loopexit2, %return.loopexit1, %return.loopexit
  %retval.0 = phi i32 [ %retval.0.ph, %return.loopexit ], [ 1, %return.loopexit1 ], [ 1, %return.loopexit2 ], !dbg !4070
  ret i32 %retval.0, !dbg !4166
}

; Function Attrs: nounwind
define dso_local range(i32 -262144, 262144) i32 @pqcrystals_dilithium3_ref_power2round(ptr noundef %a0, i32 noundef %a) local_unnamed_addr #0 !dbg !4167 {
entry:
    #dbg_value(ptr %a0, !4171, !DIExpression(), !4172)
    #dbg_value(i32 %a, !4173, !DIExpression(), !4172)
  %sub = add nsw i32 %a, 4095, !dbg !4174
  %shr = ashr i32 %sub, 13, !dbg !4175
    #dbg_value(i32 %shr, !4176, !DIExpression(), !4172)
  %shl = and i32 %sub, -8192, !dbg !4177
  %sub1 = sub nsw i32 %a, %shl, !dbg !4178
  store i32 %sub1, ptr %a0, align 4, !dbg !4179
  ret i32 %shr, !dbg !4180
}

; Function Attrs: nounwind
define dso_local range(i32 0, 16) i32 @pqcrystals_dilithium3_ref_decompose(ptr noundef %a0, i32 noundef %a) local_unnamed_addr #0 !dbg !4181 {
entry:
    #dbg_value(ptr %a0, !4182, !DIExpression(), !4183)
    #dbg_value(i32 %a, !4184, !DIExpression(), !4183)
  %add = add nsw i32 %a, 127, !dbg !4185
  %shr = ashr i32 %add, 7, !dbg !4186
    #dbg_value(i32 %shr, !4187, !DIExpression(), !4183)
  %mul = mul nsw i32 %shr, 1025, !dbg !4188
  %add1 = add nsw i32 %mul, 2097152, !dbg !4189
  %shr2 = lshr i32 %add1, 22, !dbg !4190
    #dbg_value(i32 %add1, !4187, !DIExpression(DW_OP_constu, 22, DW_OP_shra, DW_OP_stack_value), !4183)
  %and = and i32 %shr2, 15, !dbg !4191
    #dbg_value(i32 %and, !4187, !DIExpression(), !4183)
  %mul4.neg = mul nsw i32 %and, -523776, !dbg !4192
  %sub = add i32 %mul4.neg, %a, !dbg !4193
  %0 = icmp sgt i32 %sub, 4190208, !dbg !4194
  %and7.neg = select i1 %0, i32 -8380417, i32 0, !dbg !4195
  %sub8 = add i32 %and7.neg, %sub, !dbg !4196
  store i32 %sub8, ptr %a0, align 4, !dbg !4196
  ret i32 %and, !dbg !4197
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium3_ref_make_hint(i32 noundef %a0, i32 noundef %a1) local_unnamed_addr #0 !dbg !4198 {
entry:
    #dbg_value(i32 %a0, !4201, !DIExpression(), !4202)
    #dbg_value(i32 %a1, !4203, !DIExpression(), !4202)
  %0 = add i32 %a0, -261889, !dbg !4204
  %or.cond = icmp ult i32 %0, -523777, !dbg !4204
  %cmp3 = icmp eq i32 %a0, -261888, !dbg !4204
  %cmp4.not = icmp ne i32 %a1, 0, !dbg !4204
  %or.cond1.not = and i1 %cmp3, %cmp4.not, !dbg !4204
  %narrow = or i1 %or.cond, %or.cond1.not, !dbg !4204
  %retval.0 = zext i1 %narrow to i32, !dbg !4204
  ret i32 %retval.0, !dbg !4206
}

; Function Attrs: nounwind
define dso_local range(i32 0, 16) i32 @pqcrystals_dilithium3_ref_use_hint(i32 noundef %a, i32 noundef %hint) local_unnamed_addr #0 !dbg !4207 {
entry:
  %a0 = alloca i32, align 4
    #dbg_value(i32 %a, !4210, !DIExpression(), !4211)
    #dbg_value(i32 %hint, !4212, !DIExpression(), !4211)
    #dbg_value(ptr %a0, !4213, !DIExpression(DW_OP_deref), !4211)
  %call = call i32 @pqcrystals_dilithium3_ref_decompose(ptr noundef nonnull %a0, i32 noundef %a) #4, !dbg !4214
    #dbg_value(i32 %call, !4215, !DIExpression(), !4211)
  %cmp = icmp eq i32 %hint, 0, !dbg !4216
  br i1 %cmp, label %return, label %if.end, !dbg !4216

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %a0, align 4, !dbg !4218
    #dbg_value(i32 %0, !4213, !DIExpression(), !4211)
  %cmp1 = icmp sgt i32 %0, 0, !dbg !4220
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !4220

if.then2:                                         ; preds = %if.end
  %add = add nuw nsw i32 %call, 1, !dbg !4221
  %and = and i32 %add, 15, !dbg !4222
  br label %return, !dbg !4223

if.else:                                          ; preds = %if.end
  %sub = add nuw nsw i32 %call, 15, !dbg !4224
  %and3 = and i32 %sub, 15, !dbg !4225
  br label %return, !dbg !4226

return:                                           ; preds = %entry, %if.else, %if.then2
  %retval.0 = phi i32 [ %and, %if.then2 ], [ %and3, %if.else ], [ %call, %entry ], !dbg !4211
  ret i32 %retval.0, !dbg !4227
}

; Function Attrs: nounwind
define dso_local void @dilithium_memset(ptr noundef %dst, i8 noundef zeroext %val, i32 noundef %len) local_unnamed_addr #0 !dbg !4228 {
entry:
    #dbg_value(ptr %dst, !4233, !DIExpression(), !4234)
    #dbg_value(i8 %val, !4235, !DIExpression(), !4234)
    #dbg_value(i32 %len, !4236, !DIExpression(), !4234)
    #dbg_value(ptr %dst, !4237, !DIExpression(), !4234)
    #dbg_value(i32 0, !4238, !DIExpression(), !4240)
  br label %for.cond, !dbg !4241

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4242
    #dbg_value(i32 %i.0, !4238, !DIExpression(), !4240)
  %exitcond = icmp ne i32 %i.0, %len, !dbg !4243
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4245

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0, !dbg !4246
  store i8 %val, ptr %arrayidx, align 1, !dbg !4247
  %inc = add i32 %i.0, 1, !dbg !4248
    #dbg_value(i32 %inc, !4238, !DIExpression(), !4240)
  br label %for.cond, !dbg !4249, !llvm.loop !4250

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4252
}

; Function Attrs: nounwind
define dso_local void @dilithium_memcpy(ptr noundef %dst, ptr noundef %src, i32 noundef %len) local_unnamed_addr #0 !dbg !4253 {
entry:
    #dbg_value(ptr %dst, !4258, !DIExpression(), !4259)
    #dbg_value(ptr %src, !4260, !DIExpression(), !4259)
    #dbg_value(i32 %len, !4261, !DIExpression(), !4259)
    #dbg_value(ptr %dst, !4262, !DIExpression(), !4259)
    #dbg_value(ptr %src, !4263, !DIExpression(), !4259)
    #dbg_value(i32 0, !4264, !DIExpression(), !4266)
  br label %for.cond, !dbg !4267

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4268
    #dbg_value(i32 %i.0, !4264, !DIExpression(), !4266)
  %exitcond = icmp ne i32 %i.0, %len, !dbg !4269
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4271

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %src, i32 %i.0, !dbg !4272
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4272
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0, !dbg !4273
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4274
  %inc = add i32 %i.0, 1, !dbg !4275
    #dbg_value(i32 %inc, !4264, !DIExpression(), !4266)
  br label %for.cond, !dbg !4276, !llvm.loop !4277

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4279
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
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 26944, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 3368)
!127 = !DILocation(line: 18, column: 11, scope: !117)
!128 = !DILocalVariable(name: "m2", scope: !117, file: !2, line: 19, type: !124)
!129 = !DILocation(line: 19, column: 11, scope: !117)
!130 = !DILocalVariable(name: "sm", scope: !117, file: !2, line: 20, type: !124)
!131 = !DILocation(line: 20, column: 11, scope: !117)
!132 = !DILocalVariable(name: "pk", scope: !117, file: !2, line: 21, type: !133)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 15616, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 1952)
!136 = !DILocation(line: 21, column: 11, scope: !117)
!137 = !DILocalVariable(name: "sk", scope: !117, file: !2, line: 22, type: !138)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32256, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 4032)
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
!275 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_keypair", scope: !276, file: !276, line: 24, type: !277, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
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
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 245760, elements: !302)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyvecl", file: !295, line: 13, baseType: !296)
!295 = !DIFile(filename: "../../../ref/polyvec.h", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 40960, elements: !300)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "poly", file: !298, line: 11, baseType: !299)
!298 = !DIFile(filename: "../../../ref/poly.h", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8192, elements: !79)
!300 = !{!301}
!301 = !DISubrange(count: 5)
!302 = !{!303}
!303 = !DISubrange(count: 6)
!304 = !DILocation(line: 28, column: 12, scope: !275)
!305 = !DILocalVariable(name: "s1", scope: !275, file: !276, line: 29, type: !294)
!306 = !DILocation(line: 29, column: 12, scope: !275)
!307 = !DILocalVariable(name: "s1hat", scope: !275, file: !276, line: 29, type: !294)
!308 = !DILocation(line: 29, column: 16, scope: !275)
!309 = !DILocalVariable(name: "s2", scope: !275, file: !276, line: 30, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyveck", file: !295, line: 49, baseType: !311)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 49152, elements: !302)
!312 = !DILocation(line: 30, column: 12, scope: !275)
!313 = !DILocalVariable(name: "t1", scope: !275, file: !276, line: 30, type: !310)
!314 = !DILocation(line: 30, column: 16, scope: !275)
!315 = !DILocalVariable(name: "t0", scope: !275, file: !276, line: 30, type: !310)
!316 = !DILocation(line: 30, column: 20, scope: !275)
!317 = !DILocation(line: 33, column: 3, scope: !275)
!318 = !DILocation(line: 34, column: 3, scope: !275)
!319 = !DILocation(line: 34, column: 26, scope: !275)
!320 = !DILocation(line: 35, column: 3, scope: !275)
!321 = !DILocation(line: 35, column: 26, scope: !275)
!322 = !DILocation(line: 36, column: 3, scope: !275)
!323 = !DILocalVariable(name: "rho", scope: !275, file: !276, line: 27, type: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!326 = !DILocation(line: 38, column: 18, scope: !275)
!327 = !DILocalVariable(name: "rhoprime", scope: !275, file: !276, line: 27, type: !324)
!328 = !DILocation(line: 39, column: 18, scope: !275)
!329 = !DILocalVariable(name: "key", scope: !275, file: !276, line: 27, type: !324)
!330 = !DILocation(line: 42, column: 3, scope: !275)
!331 = !DILocation(line: 45, column: 3, scope: !275)
!332 = !DILocation(line: 46, column: 3, scope: !275)
!333 = !DILocation(line: 49, column: 3, scope: !275)
!334 = !DILocation(line: 50, column: 3, scope: !275)
!335 = !DILocation(line: 51, column: 3, scope: !275)
!336 = !DILocation(line: 52, column: 3, scope: !275)
!337 = !DILocation(line: 53, column: 3, scope: !275)
!338 = !DILocation(line: 56, column: 3, scope: !275)
!339 = !DILocation(line: 59, column: 3, scope: !275)
!340 = !DILocation(line: 60, column: 3, scope: !275)
!341 = !DILocation(line: 61, column: 3, scope: !275)
!342 = !DILocation(line: 64, column: 3, scope: !275)
!343 = !DILocation(line: 65, column: 3, scope: !275)
!344 = !DILocation(line: 67, column: 3, scope: !275)
!345 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_signature_internal", scope: !276, file: !276, line: 87, type: !346, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!346 = !DISubroutineType(types: !347)
!347 = !{!65, !47, !348, !324, !53, !324, !53, !324, !324}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 32)
!349 = !DILocalVariable(name: "sig", arg: 1, scope: !345, file: !276, line: 87, type: !47)
!350 = !DILocation(line: 0, scope: !345)
!351 = !DILocalVariable(name: "siglen", arg: 2, scope: !345, file: !276, line: 87, type: !348)
!352 = !DILocalVariable(name: "m", arg: 3, scope: !345, file: !276, line: 88, type: !324)
!353 = !DILocalVariable(name: "mlen", arg: 4, scope: !345, file: !276, line: 88, type: !53)
!354 = !DILocalVariable(name: "pre", arg: 5, scope: !345, file: !276, line: 89, type: !324)
!355 = !DILocalVariable(name: "prelen", arg: 6, scope: !345, file: !276, line: 89, type: !53)
!356 = !DILocalVariable(name: "rnd", arg: 7, scope: !345, file: !276, line: 90, type: !324)
!357 = !DILocalVariable(name: "sk", arg: 8, scope: !345, file: !276, line: 91, type: !324)
!358 = !DILocalVariable(name: "seedbuf", scope: !345, file: !276, line: 93, type: !359)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2048, elements: !79)
!360 = !DILocation(line: 93, column: 11, scope: !345)
!361 = !DILocalVariable(name: "nonce", scope: !345, file: !276, line: 95, type: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !49, line: 36, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !51, line: 57, baseType: !364)
!364 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!365 = !DILocalVariable(name: "mat", scope: !345, file: !276, line: 96, type: !293)
!366 = !DILocation(line: 96, column: 12, scope: !345)
!367 = !DILocalVariable(name: "s1", scope: !345, file: !276, line: 96, type: !294)
!368 = !DILocation(line: 96, column: 20, scope: !345)
!369 = !DILocalVariable(name: "y", scope: !345, file: !276, line: 96, type: !294)
!370 = !DILocation(line: 96, column: 24, scope: !345)
!371 = !DILocalVariable(name: "z", scope: !345, file: !276, line: 96, type: !294)
!372 = !DILocation(line: 96, column: 27, scope: !345)
!373 = !DILocalVariable(name: "t0", scope: !345, file: !276, line: 97, type: !310)
!374 = !DILocation(line: 97, column: 12, scope: !345)
!375 = !DILocalVariable(name: "s2", scope: !345, file: !276, line: 97, type: !310)
!376 = !DILocation(line: 97, column: 16, scope: !345)
!377 = !DILocalVariable(name: "w1", scope: !345, file: !276, line: 97, type: !310)
!378 = !DILocation(line: 97, column: 20, scope: !345)
!379 = !DILocalVariable(name: "w0", scope: !345, file: !276, line: 97, type: !310)
!380 = !DILocation(line: 97, column: 24, scope: !345)
!381 = !DILocalVariable(name: "h", scope: !345, file: !276, line: 97, type: !310)
!382 = !DILocation(line: 97, column: 28, scope: !345)
!383 = !DILocalVariable(name: "cp", scope: !345, file: !276, line: 98, type: !297)
!384 = !DILocation(line: 98, column: 8, scope: !345)
!385 = !DILocalVariable(name: "state", scope: !345, file: !276, line: 99, type: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "keccak_state", file: !387, line: 15, baseType: !388)
!387 = !DIFile(filename: "../../../ref/fips202.h", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 1664, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 26)
!391 = !DILocation(line: 99, column: 16, scope: !345)
!392 = !DILocalVariable(name: "rho", scope: !345, file: !276, line: 94, type: !47)
!393 = !DILocation(line: 102, column: 12, scope: !345)
!394 = !DILocalVariable(name: "tr", scope: !345, file: !276, line: 94, type: !47)
!395 = !DILocation(line: 103, column: 12, scope: !345)
!396 = !DILocalVariable(name: "key", scope: !345, file: !276, line: 94, type: !47)
!397 = !DILocation(line: 104, column: 12, scope: !345)
!398 = !DILocalVariable(name: "mu", scope: !345, file: !276, line: 94, type: !47)
!399 = !DILocation(line: 105, column: 17, scope: !345)
!400 = !DILocalVariable(name: "rhoprime", scope: !345, file: !276, line: 94, type: !47)
!401 = !DILocation(line: 106, column: 3, scope: !345)
!402 = !DILocation(line: 109, column: 3, scope: !345)
!403 = !DILocation(line: 110, column: 3, scope: !345)
!404 = !DILocation(line: 111, column: 3, scope: !345)
!405 = !DILocation(line: 112, column: 3, scope: !345)
!406 = !DILocation(line: 113, column: 3, scope: !345)
!407 = !DILocation(line: 114, column: 3, scope: !345)
!408 = !DILocation(line: 117, column: 3, scope: !345)
!409 = !DILocation(line: 118, column: 3, scope: !345)
!410 = !DILocation(line: 119, column: 3, scope: !345)
!411 = !DILocation(line: 120, column: 3, scope: !345)
!412 = !DILocation(line: 121, column: 3, scope: !345)
!413 = !DILocation(line: 122, column: 3, scope: !345)
!414 = !DILocation(line: 125, column: 3, scope: !345)
!415 = !DILocation(line: 126, column: 3, scope: !345)
!416 = !DILocation(line: 127, column: 3, scope: !345)
!417 = !DILocation(line: 128, column: 3, scope: !345)
!418 = !DILabel(scope: !345, name: "rej", file: !276, line: 130)
!419 = !DILocation(line: 130, column: 1, scope: !345)
!420 = !DILocation(line: 132, column: 46, scope: !345)
!421 = !DILocation(line: 132, column: 3, scope: !345)
!422 = !DILocation(line: 135, column: 3, scope: !345)
!423 = !DILocation(line: 136, column: 3, scope: !345)
!424 = !DILocation(line: 137, column: 3, scope: !345)
!425 = !DILocation(line: 138, column: 3, scope: !345)
!426 = !DILocation(line: 139, column: 3, scope: !345)
!427 = !DILocation(line: 142, column: 3, scope: !345)
!428 = !DILocation(line: 143, column: 3, scope: !345)
!429 = !DILocation(line: 144, column: 3, scope: !345)
!430 = !DILocation(line: 146, column: 3, scope: !345)
!431 = !DILocation(line: 147, column: 3, scope: !345)
!432 = !DILocation(line: 148, column: 3, scope: !345)
!433 = !DILocation(line: 149, column: 3, scope: !345)
!434 = !DILocation(line: 150, column: 3, scope: !345)
!435 = !DILocation(line: 151, column: 3, scope: !345)
!436 = !DILocation(line: 152, column: 3, scope: !345)
!437 = !DILocation(line: 155, column: 3, scope: !345)
!438 = !DILocation(line: 156, column: 3, scope: !345)
!439 = !DILocation(line: 157, column: 3, scope: !345)
!440 = !DILocation(line: 158, column: 3, scope: !345)
!441 = !DILocation(line: 159, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !345, file: !276, line: 159, column: 7)
!443 = !DILocation(line: 164, column: 3, scope: !345)
!444 = !DILocation(line: 165, column: 3, scope: !345)
!445 = !DILocation(line: 166, column: 3, scope: !345)
!446 = !DILocation(line: 167, column: 3, scope: !345)
!447 = !DILocation(line: 168, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !345, file: !276, line: 168, column: 7)
!449 = !DILocation(line: 172, column: 3, scope: !345)
!450 = !DILocation(line: 173, column: 3, scope: !345)
!451 = !DILocation(line: 174, column: 3, scope: !345)
!452 = !DILocation(line: 175, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !345, file: !276, line: 175, column: 7)
!454 = !DILocation(line: 178, column: 3, scope: !345)
!455 = !DILocation(line: 179, column: 7, scope: !345)
!456 = !DILocalVariable(name: "n", scope: !345, file: !276, line: 92, type: !55)
!457 = !DILocation(line: 180, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !345, file: !276, line: 180, column: 7)
!459 = !DILocation(line: 184, column: 3, scope: !345)
!460 = !DILocation(line: 185, column: 11, scope: !345)
!461 = !DILocation(line: 186, column: 3, scope: !345)
!462 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_signature", scope: !276, file: !276, line: 205, type: !463, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!463 = !DISubroutineType(types: !464)
!464 = !{!65, !47, !348, !324, !53, !324, !53, !324}
!465 = !DILocalVariable(name: "sig", arg: 1, scope: !462, file: !276, line: 205, type: !47)
!466 = !DILocation(line: 0, scope: !462)
!467 = !DILocalVariable(name: "siglen", arg: 2, scope: !462, file: !276, line: 205, type: !348)
!468 = !DILocalVariable(name: "m", arg: 3, scope: !462, file: !276, line: 205, type: !324)
!469 = !DILocalVariable(name: "mlen", arg: 4, scope: !462, file: !276, line: 206, type: !53)
!470 = !DILocalVariable(name: "ctx", arg: 5, scope: !462, file: !276, line: 206, type: !324)
!471 = !DILocalVariable(name: "ctxlen", arg: 6, scope: !462, file: !276, line: 206, type: !53)
!472 = !DILocalVariable(name: "sk", arg: 7, scope: !462, file: !276, line: 207, type: !324)
!473 = !DILocalVariable(name: "pre", scope: !462, file: !276, line: 209, type: !474)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2056, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 257)
!477 = !DILocation(line: 209, column: 11, scope: !462)
!478 = !DILocalVariable(name: "rnd", scope: !462, file: !276, line: 210, type: !479)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 32)
!482 = !DILocation(line: 210, column: 11, scope: !462)
!483 = !DILocation(line: 212, column: 14, scope: !484)
!484 = distinct !DILexicalBlock(scope: !462, file: !276, line: 212, column: 7)
!485 = !DILocation(line: 216, column: 10, scope: !462)
!486 = !DILocation(line: 217, column: 12, scope: !462)
!487 = !DILocation(line: 217, column: 3, scope: !462)
!488 = !DILocation(line: 217, column: 10, scope: !462)
!489 = !DILocalVariable(name: "i", scope: !462, file: !276, line: 208, type: !53)
!490 = !DILocation(line: 218, column: 8, scope: !491)
!491 = distinct !DILexicalBlock(scope: !462, file: !276, line: 218, column: 3)
!492 = !DILocation(line: 218, scope: !491)
!493 = !DILocation(line: 218, column: 17, scope: !494)
!494 = distinct !DILexicalBlock(scope: !491, file: !276, line: 218, column: 3)
!495 = !DILocation(line: 218, column: 3, scope: !491)
!496 = !DILocation(line: 219, column: 18, scope: !494)
!497 = !DILocation(line: 219, column: 11, scope: !494)
!498 = !DILocation(line: 219, column: 5, scope: !494)
!499 = !DILocation(line: 219, column: 16, scope: !494)
!500 = !DILocation(line: 218, column: 28, scope: !494)
!501 = !DILocation(line: 218, column: 3, scope: !494)
!502 = distinct !{!502, !495, !503, !200}
!503 = !DILocation(line: 219, column: 23, scope: !491)
!504 = !DILocation(line: 222, column: 3, scope: !462)
!505 = !DILocation(line: 228, column: 63, scope: !462)
!506 = !DILocation(line: 228, column: 3, scope: !462)
!507 = !DILocation(line: 230, column: 3, scope: !462)
!508 = !DILocation(line: 231, column: 1, scope: !462)
!509 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref", scope: !276, file: !276, line: 251, type: !463, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!510 = !DILocalVariable(name: "sm", arg: 1, scope: !509, file: !276, line: 251, type: !47)
!511 = !DILocation(line: 0, scope: !509)
!512 = !DILocalVariable(name: "smlen", arg: 2, scope: !509, file: !276, line: 251, type: !348)
!513 = !DILocalVariable(name: "m", arg: 3, scope: !509, file: !276, line: 251, type: !324)
!514 = !DILocalVariable(name: "mlen", arg: 4, scope: !509, file: !276, line: 251, type: !53)
!515 = !DILocalVariable(name: "ctx", arg: 5, scope: !509, file: !276, line: 252, type: !324)
!516 = !DILocalVariable(name: "ctxlen", arg: 6, scope: !509, file: !276, line: 252, type: !53)
!517 = !DILocalVariable(name: "sk", arg: 7, scope: !509, file: !276, line: 252, type: !324)
!518 = !DILocalVariable(name: "i", scope: !509, file: !276, line: 254, type: !53)
!519 = !DILocation(line: 256, column: 8, scope: !520)
!520 = distinct !DILexicalBlock(scope: !509, file: !276, line: 256, column: 3)
!521 = !DILocation(line: 256, scope: !520)
!522 = !DILocation(line: 256, column: 17, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !276, line: 256, column: 3)
!524 = !DILocation(line: 256, column: 3, scope: !520)
!525 = !DILocation(line: 257, column: 50, scope: !523)
!526 = !DILocation(line: 257, column: 39, scope: !523)
!527 = !DILocation(line: 257, column: 28, scope: !523)
!528 = !DILocation(line: 257, column: 32, scope: !523)
!529 = !DILocation(line: 257, column: 5, scope: !523)
!530 = !DILocation(line: 257, column: 37, scope: !523)
!531 = !DILocation(line: 256, column: 25, scope: !523)
!532 = !DILocation(line: 256, column: 3, scope: !523)
!533 = distinct !{!533, !524, !534, !200}
!534 = !DILocation(line: 257, column: 53, scope: !520)
!535 = !DILocation(line: 258, column: 45, scope: !509)
!536 = !DILocation(line: 258, column: 9, scope: !509)
!537 = !DILocalVariable(name: "ret", scope: !509, file: !276, line: 253, type: !65)
!538 = !DILocation(line: 260, column: 10, scope: !509)
!539 = !DILocation(line: 261, column: 3, scope: !509)
!540 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_verify_internal", scope: !276, file: !276, line: 279, type: !541, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!541 = !DISubroutineType(types: !542)
!542 = !{!65, !324, !53, !324, !53, !324, !53, !324}
!543 = !DILocalVariable(name: "sig", arg: 1, scope: !540, file: !276, line: 279, type: !324)
!544 = !DILocation(line: 0, scope: !540)
!545 = !DILocalVariable(name: "siglen", arg: 2, scope: !540, file: !276, line: 279, type: !53)
!546 = !DILocalVariable(name: "m", arg: 3, scope: !540, file: !276, line: 280, type: !324)
!547 = !DILocalVariable(name: "mlen", arg: 4, scope: !540, file: !276, line: 280, type: !53)
!548 = !DILocalVariable(name: "pre", arg: 5, scope: !540, file: !276, line: 281, type: !324)
!549 = !DILocalVariable(name: "prelen", arg: 6, scope: !540, file: !276, line: 281, type: !53)
!550 = !DILocalVariable(name: "pk", arg: 7, scope: !540, file: !276, line: 282, type: !324)
!551 = !DILocalVariable(name: "buf", scope: !540, file: !276, line: 284, type: !552)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 6144, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 768)
!555 = !DILocation(line: 284, column: 11, scope: !540)
!556 = !DILocalVariable(name: "rho", scope: !540, file: !276, line: 285, type: !479)
!557 = !DILocation(line: 285, column: 11, scope: !540)
!558 = !DILocalVariable(name: "mu", scope: !540, file: !276, line: 286, type: !288)
!559 = !DILocation(line: 286, column: 11, scope: !540)
!560 = !DILocalVariable(name: "c", scope: !540, file: !276, line: 287, type: !561)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 384, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 48)
!564 = !DILocation(line: 287, column: 11, scope: !540)
!565 = !DILocalVariable(name: "c2", scope: !540, file: !276, line: 288, type: !561)
!566 = !DILocation(line: 288, column: 11, scope: !540)
!567 = !DILocalVariable(name: "cp", scope: !540, file: !276, line: 289, type: !297)
!568 = !DILocation(line: 289, column: 8, scope: !540)
!569 = !DILocalVariable(name: "mat", scope: !540, file: !276, line: 290, type: !293)
!570 = !DILocation(line: 290, column: 12, scope: !540)
!571 = !DILocalVariable(name: "z", scope: !540, file: !276, line: 290, type: !294)
!572 = !DILocation(line: 290, column: 20, scope: !540)
!573 = !DILocalVariable(name: "t1", scope: !540, file: !276, line: 291, type: !310)
!574 = !DILocation(line: 291, column: 12, scope: !540)
!575 = !DILocalVariable(name: "w1", scope: !540, file: !276, line: 291, type: !310)
!576 = !DILocation(line: 291, column: 16, scope: !540)
!577 = !DILocalVariable(name: "h", scope: !540, file: !276, line: 291, type: !310)
!578 = !DILocation(line: 291, column: 20, scope: !540)
!579 = !DILocalVariable(name: "state", scope: !540, file: !276, line: 292, type: !386)
!580 = !DILocation(line: 292, column: 16, scope: !540)
!581 = !DILocation(line: 294, column: 14, scope: !582)
!582 = distinct !DILexicalBlock(scope: !540, file: !276, line: 294, column: 7)
!583 = !DILocation(line: 297, column: 3, scope: !540)
!584 = !DILocation(line: 298, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !540, file: !276, line: 298, column: 7)
!586 = !DILocation(line: 300, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !540, file: !276, line: 300, column: 7)
!588 = !DILocation(line: 304, column: 3, scope: !540)
!589 = !DILocation(line: 305, column: 3, scope: !540)
!590 = !DILocation(line: 306, column: 3, scope: !540)
!591 = !DILocation(line: 307, column: 3, scope: !540)
!592 = !DILocation(line: 308, column: 3, scope: !540)
!593 = !DILocation(line: 309, column: 3, scope: !540)
!594 = !DILocation(line: 310, column: 3, scope: !540)
!595 = !DILocation(line: 313, column: 3, scope: !540)
!596 = !DILocation(line: 314, column: 3, scope: !540)
!597 = !DILocation(line: 316, column: 3, scope: !540)
!598 = !DILocation(line: 317, column: 3, scope: !540)
!599 = !DILocation(line: 319, column: 3, scope: !540)
!600 = !DILocation(line: 320, column: 3, scope: !540)
!601 = !DILocation(line: 321, column: 3, scope: !540)
!602 = !DILocation(line: 322, column: 3, scope: !540)
!603 = !DILocation(line: 324, column: 3, scope: !540)
!604 = !DILocation(line: 325, column: 3, scope: !540)
!605 = !DILocation(line: 326, column: 3, scope: !540)
!606 = !DILocation(line: 329, column: 3, scope: !540)
!607 = !DILocation(line: 330, column: 3, scope: !540)
!608 = !DILocation(line: 331, column: 3, scope: !540)
!609 = !DILocation(line: 334, column: 3, scope: !540)
!610 = !DILocation(line: 335, column: 3, scope: !540)
!611 = !DILocation(line: 336, column: 3, scope: !540)
!612 = !DILocation(line: 337, column: 3, scope: !540)
!613 = !DILocation(line: 338, column: 3, scope: !540)
!614 = !DILocalVariable(name: "i", scope: !540, file: !276, line: 283, type: !55)
!615 = !DILocation(line: 339, column: 8, scope: !616)
!616 = distinct !DILexicalBlock(scope: !540, file: !276, line: 339, column: 3)
!617 = !DILocation(line: 339, scope: !616)
!618 = !DILocation(line: 339, column: 17, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !276, line: 339, column: 3)
!620 = !DILocation(line: 339, column: 3, scope: !616)
!621 = !DILocation(line: 340, column: 9, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !276, line: 340, column: 9)
!623 = !DILocation(line: 340, column: 17, scope: !622)
!624 = !DILocation(line: 340, column: 14, scope: !622)
!625 = !DILocation(line: 339, column: 32, scope: !619)
!626 = !DILocation(line: 339, column: 3, scope: !619)
!627 = distinct !{!627, !620, !628, !200}
!628 = !DILocation(line: 341, column: 15, scope: !616)
!629 = !DILocation(line: 344, column: 1, scope: !540)
!630 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_verify", scope: !276, file: !276, line: 361, type: !541, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!631 = !DILocalVariable(name: "sig", arg: 1, scope: !630, file: !276, line: 361, type: !324)
!632 = !DILocation(line: 0, scope: !630)
!633 = !DILocalVariable(name: "siglen", arg: 2, scope: !630, file: !276, line: 361, type: !53)
!634 = !DILocalVariable(name: "m", arg: 3, scope: !630, file: !276, line: 361, type: !324)
!635 = !DILocalVariable(name: "mlen", arg: 4, scope: !630, file: !276, line: 362, type: !53)
!636 = !DILocalVariable(name: "ctx", arg: 5, scope: !630, file: !276, line: 362, type: !324)
!637 = !DILocalVariable(name: "ctxlen", arg: 6, scope: !630, file: !276, line: 362, type: !53)
!638 = !DILocalVariable(name: "pk", arg: 7, scope: !630, file: !276, line: 363, type: !324)
!639 = !DILocalVariable(name: "pre", scope: !630, file: !276, line: 365, type: !474)
!640 = !DILocation(line: 365, column: 11, scope: !630)
!641 = !DILocation(line: 367, column: 14, scope: !642)
!642 = distinct !DILexicalBlock(scope: !630, file: !276, line: 367, column: 7)
!643 = !DILocation(line: 370, column: 10, scope: !630)
!644 = !DILocation(line: 371, column: 12, scope: !630)
!645 = !DILocation(line: 371, column: 3, scope: !630)
!646 = !DILocation(line: 371, column: 10, scope: !630)
!647 = !DILocalVariable(name: "i", scope: !630, file: !276, line: 364, type: !53)
!648 = !DILocation(line: 372, column: 8, scope: !649)
!649 = distinct !DILexicalBlock(scope: !630, file: !276, line: 372, column: 3)
!650 = !DILocation(line: 372, scope: !649)
!651 = !DILocation(line: 372, column: 17, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !276, line: 372, column: 3)
!653 = !DILocation(line: 372, column: 3, scope: !649)
!654 = !DILocation(line: 373, column: 18, scope: !652)
!655 = !DILocation(line: 373, column: 11, scope: !652)
!656 = !DILocation(line: 373, column: 5, scope: !652)
!657 = !DILocation(line: 373, column: 16, scope: !652)
!658 = !DILocation(line: 372, column: 28, scope: !652)
!659 = !DILocation(line: 372, column: 3, scope: !652)
!660 = distinct !{!660, !653, !661, !200}
!661 = !DILocation(line: 373, column: 23, scope: !649)
!662 = !DILocation(line: 375, column: 67, scope: !630)
!663 = !DILocation(line: 375, column: 10, scope: !630)
!664 = !DILocation(line: 375, column: 3, scope: !630)
!665 = !DILocation(line: 376, column: 1, scope: !630)
!666 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_open", scope: !276, file: !276, line: 394, type: !463, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!667 = !DILocalVariable(name: "m", arg: 1, scope: !666, file: !276, line: 394, type: !47)
!668 = !DILocation(line: 0, scope: !666)
!669 = !DILocalVariable(name: "mlen", arg: 2, scope: !666, file: !276, line: 394, type: !348)
!670 = !DILocalVariable(name: "sm", arg: 3, scope: !666, file: !276, line: 394, type: !324)
!671 = !DILocalVariable(name: "smlen", arg: 4, scope: !666, file: !276, line: 394, type: !53)
!672 = !DILocalVariable(name: "ctx", arg: 5, scope: !666, file: !276, line: 395, type: !324)
!673 = !DILocalVariable(name: "ctxlen", arg: 6, scope: !666, file: !276, line: 395, type: !53)
!674 = !DILocalVariable(name: "pk", arg: 7, scope: !666, file: !276, line: 395, type: !324)
!675 = !DILocation(line: 398, column: 13, scope: !676)
!676 = distinct !DILexicalBlock(scope: !666, file: !276, line: 398, column: 7)
!677 = !DILocation(line: 401, column: 17, scope: !666)
!678 = !DILocation(line: 401, column: 9, scope: !666)
!679 = !DILocation(line: 402, column: 47, scope: !680)
!680 = distinct !DILexicalBlock(scope: !666, file: !276, line: 402, column: 7)
!681 = !DILocation(line: 402, column: 7, scope: !680)
!682 = !DILocation(line: 407, column: 5, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !276, line: 407, column: 5)
!684 = distinct !DILexicalBlock(scope: !680, file: !276, line: 405, column: 8)
!685 = !DILocation(line: 407, scope: !683)
!686 = !DILocalVariable(name: "i", scope: !666, file: !276, line: 396, type: !53)
!687 = !DILocation(line: 407, column: 21, scope: !688)
!688 = distinct !DILexicalBlock(scope: !683, file: !276, line: 407, column: 5)
!689 = !DILocation(line: 407, column: 19, scope: !688)
!690 = !DILocation(line: 408, column: 14, scope: !688)
!691 = !DILocation(line: 408, column: 7, scope: !688)
!692 = !DILocation(line: 408, column: 12, scope: !688)
!693 = !DILocation(line: 407, column: 28, scope: !688)
!694 = !DILocation(line: 407, column: 5, scope: !688)
!695 = distinct !{!695, !682, !696, !200}
!696 = !DILocation(line: 408, column: 33, scope: !683)
!697 = !DILabel(scope: !666, name: "badsig", file: !276, line: 412)
!698 = !DILocation(line: 412, column: 1, scope: !666)
!699 = !DILocation(line: 414, column: 9, scope: !666)
!700 = !DILocation(line: 415, column: 8, scope: !701)
!701 = distinct !DILexicalBlock(scope: !666, file: !276, line: 415, column: 3)
!702 = !DILocation(line: 415, scope: !701)
!703 = !DILocation(line: 415, column: 17, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !276, line: 415, column: 3)
!705 = !DILocation(line: 415, column: 3, scope: !701)
!706 = !DILocation(line: 416, column: 5, scope: !704)
!707 = !DILocation(line: 416, column: 10, scope: !704)
!708 = !DILocation(line: 415, column: 26, scope: !704)
!709 = !DILocation(line: 415, column: 3, scope: !704)
!710 = distinct !{!710, !705, !711, !200}
!711 = !DILocation(line: 416, column: 12, scope: !701)
!712 = !DILocation(line: 419, column: 1, scope: !666)
!713 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyvec_matrix_expand", scope: !714, file: !714, line: 16, type: !715, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!714 = !DIFile(filename: "../../../ref/polyvec.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!715 = !DISubroutineType(types: !716)
!716 = !{null, !717, !324}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 32)
!718 = !DILocalVariable(name: "mat", arg: 1, scope: !713, file: !714, line: 16, type: !717)
!719 = !DILocation(line: 0, scope: !713)
!720 = !DILocalVariable(name: "rho", arg: 2, scope: !713, file: !714, line: 16, type: !324)
!721 = !DILocalVariable(name: "i", scope: !713, file: !714, line: 17, type: !55)
!722 = !DILocation(line: 19, column: 8, scope: !723)
!723 = distinct !DILexicalBlock(scope: !713, file: !714, line: 19, column: 3)
!724 = !DILocation(line: 19, scope: !723)
!725 = !DILocation(line: 19, column: 17, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !714, line: 19, column: 3)
!727 = !DILocation(line: 19, column: 3, scope: !723)
!728 = !DILocation(line: 20, column: 5, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !714, line: 20, column: 5)
!730 = !DILocation(line: 20, scope: !729)
!731 = !DILocalVariable(name: "j", scope: !713, file: !714, line: 17, type: !55)
!732 = !DILocation(line: 20, column: 19, scope: !733)
!733 = distinct !DILexicalBlock(scope: !729, file: !714, line: 20, column: 5)
!734 = !DILocation(line: 21, column: 21, scope: !733)
!735 = !DILocation(line: 21, column: 40, scope: !733)
!736 = !DILocation(line: 21, column: 46, scope: !733)
!737 = !DILocation(line: 21, column: 37, scope: !733)
!738 = !DILocation(line: 21, column: 7, scope: !733)
!739 = !DILocation(line: 20, column: 24, scope: !733)
!740 = !DILocation(line: 20, column: 5, scope: !733)
!741 = distinct !{!741, !728, !742, !200}
!742 = !DILocation(line: 21, column: 49, scope: !729)
!743 = !DILocation(line: 19, column: 22, scope: !726)
!744 = !DILocation(line: 19, column: 3, scope: !726)
!745 = distinct !{!745, !727, !746, !200}
!746 = !DILocation(line: 21, column: 49, scope: !723)
!747 = !DILocation(line: 22, column: 1, scope: !713)
!748 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyvec_matrix_pointwise_montgomery", scope: !714, file: !714, line: 24, type: !749, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !751, !752, !752}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!754 = !DILocalVariable(name: "t", arg: 1, scope: !748, file: !714, line: 24, type: !751)
!755 = !DILocation(line: 0, scope: !748)
!756 = !DILocalVariable(name: "mat", arg: 2, scope: !748, file: !714, line: 24, type: !752)
!757 = !DILocalVariable(name: "v", arg: 3, scope: !748, file: !714, line: 25, type: !752)
!758 = !DILocalVariable(name: "i", scope: !748, file: !714, line: 26, type: !55)
!759 = !DILocation(line: 28, column: 8, scope: !760)
!760 = distinct !DILexicalBlock(scope: !748, file: !714, line: 28, column: 3)
!761 = !DILocation(line: 28, scope: !760)
!762 = !DILocation(line: 28, column: 17, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !714, line: 28, column: 3)
!764 = !DILocation(line: 28, column: 3, scope: !760)
!765 = !DILocation(line: 29, column: 40, scope: !763)
!766 = !DILocation(line: 29, column: 50, scope: !763)
!767 = !DILocation(line: 29, column: 5, scope: !763)
!768 = !DILocation(line: 28, column: 22, scope: !763)
!769 = !DILocation(line: 28, column: 3, scope: !763)
!770 = distinct !{!770, !764, !771, !200}
!771 = !DILocation(line: 29, column: 59, scope: !760)
!772 = !DILocation(line: 30, column: 1, scope: !748)
!773 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyvecl_pointwise_acc_montgomery", scope: !714, file: !714, line: 117, type: !774, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !776, !752, !752}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 32)
!777 = !DILocalVariable(name: "w", arg: 1, scope: !773, file: !714, line: 117, type: !776)
!778 = !DILocation(line: 0, scope: !773)
!779 = !DILocalVariable(name: "u", arg: 2, scope: !773, file: !714, line: 117, type: !752)
!780 = !DILocalVariable(name: "v", arg: 3, scope: !773, file: !714, line: 118, type: !752)
!781 = !DILocalVariable(name: "t", scope: !773, file: !714, line: 120, type: !297)
!782 = !DILocation(line: 120, column: 8, scope: !773)
!783 = !DILocation(line: 122, column: 3, scope: !773)
!784 = !DILocalVariable(name: "i", scope: !773, file: !714, line: 119, type: !55)
!785 = !DILocation(line: 123, column: 8, scope: !786)
!786 = distinct !DILexicalBlock(scope: !773, file: !714, line: 123, column: 3)
!787 = !DILocation(line: 123, scope: !786)
!788 = !DILocation(line: 123, column: 17, scope: !789)
!789 = distinct !DILexicalBlock(scope: !786, file: !714, line: 123, column: 3)
!790 = !DILocation(line: 123, column: 3, scope: !786)
!791 = !DILocation(line: 124, column: 36, scope: !792)
!792 = distinct !DILexicalBlock(scope: !789, file: !714, line: 123, column: 27)
!793 = !DILocation(line: 124, column: 46, scope: !792)
!794 = !DILocation(line: 124, column: 5, scope: !792)
!795 = !DILocation(line: 125, column: 5, scope: !792)
!796 = !DILocation(line: 123, column: 22, scope: !789)
!797 = !DILocation(line: 123, column: 3, scope: !789)
!798 = distinct !{!798, !790, !799, !200}
!799 = !DILocation(line: 126, column: 3, scope: !786)
!800 = !DILocation(line: 127, column: 1, scope: !773)
!801 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyvecl_uniform_eta", scope: !714, file: !714, line: 36, type: !802, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !717, !324, !362}
!804 = !DILocalVariable(name: "v", arg: 1, scope: !801, file: !714, line: 36, type: !717)
!805 = !DILocation(line: 0, scope: !801)
!806 = !DILocalVariable(name: "seed", arg: 2, scope: !801, file: !714, line: 36, type: !324)
!807 = !DILocalVariable(name: "nonce", arg: 3, scope: !801, file: !714, line: 37, type: !362)
!808 = !DILocalVariable(name: "i", scope: !801, file: !714, line: 38, type: !55)
!809 = !DILocation(line: 40, column: 8, scope: !810)
!810 = distinct !DILexicalBlock(scope: !801, file: !714, line: 40, column: 3)
!811 = !DILocation(line: 40, scope: !810)
!812 = !DILocation(line: 40, column: 17, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !714, line: 40, column: 3)
!814 = !DILocation(line: 40, column: 3, scope: !810)
!815 = !DILocation(line: 41, column: 23, scope: !813)
!816 = !DILocation(line: 41, column: 5, scope: !813)
!817 = !DILocation(line: 41, column: 43, scope: !813)
!818 = !DILocation(line: 40, column: 22, scope: !813)
!819 = !DILocation(line: 40, column: 3, scope: !813)
!820 = distinct !{!820, !814, !821, !200}
!821 = !DILocation(line: 41, column: 45, scope: !810)
!822 = !DILocation(line: 42, column: 1, scope: !801)
!823 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyvecl_uniform_gamma1", scope: !714, file: !714, line: 44, type: !802, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!824 = !DILocalVariable(name: "v", arg: 1, scope: !823, file: !714, line: 44, type: !717)
!825 = !DILocation(line: 0, scope: !823)
!826 = !DILocalVariable(name: "seed", arg: 2, scope: !823, file: !714, line: 44, type: !324)
!827 = !DILocalVariable(name: "nonce", arg: 3, scope: !823, file: !714, line: 45, type: !362)
!828 = !DILocalVariable(name: "i", scope: !823, file: !714, line: 46, type: !55)
!829 = !DILocation(line: 48, column: 8, scope: !830)
!830 = distinct !DILexicalBlock(scope: !823, file: !714, line: 48, column: 3)
!831 = !DILocation(line: 48, scope: !830)
!832 = !DILocation(line: 48, column: 17, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !714, line: 48, column: 3)
!834 = !DILocation(line: 48, column: 3, scope: !830)
!835 = !DILocation(line: 49, column: 26, scope: !833)
!836 = !DILocation(line: 49, column: 45, scope: !833)
!837 = !DILocation(line: 49, column: 43, scope: !833)
!838 = !DILocation(line: 49, column: 51, scope: !833)
!839 = !DILocation(line: 49, column: 41, scope: !833)
!840 = !DILocation(line: 49, column: 5, scope: !833)
!841 = !DILocation(line: 48, column: 22, scope: !833)
!842 = !DILocation(line: 48, column: 3, scope: !833)
!843 = distinct !{!843, !834, !844, !200}
!844 = !DILocation(line: 49, column: 54, scope: !830)
!845 = !DILocation(line: 50, column: 1, scope: !823)
!846 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyvecl_reduce", scope: !714, file: !714, line: 52, type: !847, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !717}
!849 = !DILocalVariable(name: "v", arg: 1, scope: !846, file: !714, line: 52, type: !717)
!850 = !DILocation(line: 0, scope: !846)
!851 = !DILocalVariable(name: "i", scope: !846, file: !714, line: 53, type: !55)
!852 = !DILocation(line: 55, column: 8, scope: !853)
!853 = distinct !DILexicalBlock(scope: !846, file: !714, line: 55, column: 3)
!854 = !DILocation(line: 55, scope: !853)
!855 = !DILocation(line: 55, column: 17, scope: !856)
!856 = distinct !DILexicalBlock(scope: !853, file: !714, line: 55, column: 3)
!857 = !DILocation(line: 55, column: 3, scope: !853)
!858 = !DILocation(line: 56, column: 18, scope: !856)
!859 = !DILocation(line: 56, column: 5, scope: !856)
!860 = !DILocation(line: 55, column: 22, scope: !856)
!861 = !DILocation(line: 55, column: 3, scope: !856)
!862 = distinct !{!862, !857, !863, !200}
!863 = !DILocation(line: 56, column: 25, scope: !853)
!864 = !DILocation(line: 57, column: 1, scope: !846)
!865 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyvecl_add", scope: !714, file: !714, line: 69, type: !866, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !717, !752, !752}
!868 = !DILocalVariable(name: "w", arg: 1, scope: !865, file: !714, line: 69, type: !717)
!869 = !DILocation(line: 0, scope: !865)
!870 = !DILocalVariable(name: "u", arg: 2, scope: !865, file: !714, line: 69, type: !752)
!871 = !DILocalVariable(name: "v", arg: 3, scope: !865, file: !714, line: 69, type: !752)
!872 = !DILocalVariable(name: "i", scope: !865, file: !714, line: 70, type: !55)
!873 = !DILocation(line: 72, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !865, file: !714, line: 72, column: 3)
!875 = !DILocation(line: 72, scope: !874)
!876 = !DILocation(line: 72, column: 17, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !714, line: 72, column: 3)
!878 = !DILocation(line: 72, column: 3, scope: !874)
!879 = !DILocation(line: 73, column: 15, scope: !877)
!880 = !DILocation(line: 73, column: 25, scope: !877)
!881 = !DILocation(line: 73, column: 35, scope: !877)
!882 = !DILocation(line: 73, column: 5, scope: !877)
!883 = !DILocation(line: 72, column: 22, scope: !877)
!884 = !DILocation(line: 72, column: 3, scope: !877)
!885 = distinct !{!885, !878, !886, !200}
!886 = !DILocation(line: 73, column: 42, scope: !874)
!887 = !DILocation(line: 74, column: 1, scope: !865)
!888 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyvecl_ntt", scope: !714, file: !714, line: 84, type: !847, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!889 = !DILocalVariable(name: "v", arg: 1, scope: !888, file: !714, line: 84, type: !717)
!890 = !DILocation(line: 0, scope: !888)
!891 = !DILocalVariable(name: "i", scope: !888, file: !714, line: 85, type: !55)
!892 = !DILocation(line: 87, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !888, file: !714, line: 87, column: 3)
!894 = !DILocation(line: 87, scope: !893)
!895 = !DILocation(line: 87, column: 17, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !714, line: 87, column: 3)
!897 = !DILocation(line: 87, column: 3, scope: !893)
!898 = !DILocation(line: 88, column: 15, scope: !896)
!899 = !DILocation(line: 88, column: 5, scope: !896)
!900 = !DILocation(line: 87, column: 22, scope: !896)
!901 = !DILocation(line: 87, column: 3, scope: !896)
!902 = distinct !{!902, !897, !903, !200}
!903 = !DILocation(line: 88, column: 22, scope: !893)
!904 = !DILocation(line: 89, column: 1, scope: !888)
!905 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyvecl_invntt_tomont", scope: !714, file: !714, line: 91, type: !847, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!906 = !DILocalVariable(name: "v", arg: 1, scope: !905, file: !714, line: 91, type: !717)
!907 = !DILocation(line: 0, scope: !905)
!908 = !DILocalVariable(name: "i", scope: !905, file: !714, line: 92, type: !55)
!909 = !DILocation(line: 94, column: 8, scope: !910)
!910 = distinct !DILexicalBlock(scope: !905, file: !714, line: 94, column: 3)
!911 = !DILocation(line: 94, scope: !910)
!912 = !DILocation(line: 94, column: 17, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !714, line: 94, column: 3)
!914 = !DILocation(line: 94, column: 3, scope: !910)
!915 = !DILocation(line: 95, column: 25, scope: !913)
!916 = !DILocation(line: 95, column: 5, scope: !913)
!917 = !DILocation(line: 94, column: 22, scope: !913)
!918 = !DILocation(line: 94, column: 3, scope: !913)
!919 = distinct !{!919, !914, !920, !200}
!920 = !DILocation(line: 95, column: 32, scope: !910)
!921 = !DILocation(line: 96, column: 1, scope: !905)
!922 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyvecl_pointwise_poly_montgomery", scope: !714, file: !714, line: 98, type: !923, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !717, !925, !752}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!927 = !DILocalVariable(name: "r", arg: 1, scope: !922, file: !714, line: 98, type: !717)
!928 = !DILocation(line: 0, scope: !922)
!929 = !DILocalVariable(name: "a", arg: 2, scope: !922, file: !714, line: 98, type: !925)
!930 = !DILocalVariable(name: "v", arg: 3, scope: !922, file: !714, line: 99, type: !752)
!931 = !DILocalVariable(name: "i", scope: !922, file: !714, line: 100, type: !55)
!932 = !DILocation(line: 102, column: 8, scope: !933)
!933 = distinct !DILexicalBlock(scope: !922, file: !714, line: 102, column: 3)
!934 = !DILocation(line: 102, scope: !933)
!935 = !DILocation(line: 102, column: 17, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !714, line: 102, column: 3)
!937 = !DILocation(line: 102, column: 3, scope: !933)
!938 = !DILocation(line: 103, column: 32, scope: !936)
!939 = !DILocation(line: 103, column: 45, scope: !936)
!940 = !DILocation(line: 103, column: 5, scope: !936)
!941 = !DILocation(line: 102, column: 22, scope: !936)
!942 = !DILocation(line: 102, column: 3, scope: !936)
!943 = distinct !{!943, !937, !944, !200}
!944 = !DILocation(line: 103, column: 52, scope: !933)
!945 = !DILocation(line: 104, column: 1, scope: !922)
!946 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyvecl_chknorm", scope: !714, file: !714, line: 141, type: !947, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!947 = !DISubroutineType(types: !948)
!948 = !{!65, !752, !77}
!949 = !DILocalVariable(name: "v", arg: 1, scope: !946, file: !714, line: 141, type: !752)
!950 = !DILocation(line: 0, scope: !946)
!951 = !DILocalVariable(name: "bound", arg: 2, scope: !946, file: !714, line: 141, type: !77)
!952 = !DILocalVariable(name: "i", scope: !946, file: !714, line: 142, type: !55)
!953 = !DILocation(line: 144, column: 8, scope: !954)
!954 = distinct !DILexicalBlock(scope: !946, file: !714, line: 144, column: 3)
!955 = !DILocation(line: 144, scope: !954)
!956 = !DILocation(line: 144, column: 17, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !714, line: 144, column: 3)
!958 = !DILocation(line: 144, column: 3, scope: !954)
!959 = !DILocation(line: 145, column: 23, scope: !960)
!960 = distinct !DILexicalBlock(scope: !957, file: !714, line: 145, column: 9)
!961 = !DILocation(line: 145, column: 9, scope: !960)
!962 = !DILocation(line: 144, column: 22, scope: !957)
!963 = !DILocation(line: 144, column: 3, scope: !957)
!964 = distinct !{!964, !958, !965, !200}
!965 = !DILocation(line: 146, column: 14, scope: !954)
!966 = !DILocation(line: 149, column: 1, scope: !946)
!967 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_uniform_eta", scope: !714, file: !714, line: 155, type: !968, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !751, !324, !362}
!970 = !DILocalVariable(name: "v", arg: 1, scope: !967, file: !714, line: 155, type: !751)
!971 = !DILocation(line: 0, scope: !967)
!972 = !DILocalVariable(name: "seed", arg: 2, scope: !967, file: !714, line: 155, type: !324)
!973 = !DILocalVariable(name: "nonce", arg: 3, scope: !967, file: !714, line: 156, type: !362)
!974 = !DILocalVariable(name: "i", scope: !967, file: !714, line: 157, type: !55)
!975 = !DILocation(line: 159, column: 8, scope: !976)
!976 = distinct !DILexicalBlock(scope: !967, file: !714, line: 159, column: 3)
!977 = !DILocation(line: 159, scope: !976)
!978 = !DILocation(line: 159, column: 17, scope: !979)
!979 = distinct !DILexicalBlock(scope: !976, file: !714, line: 159, column: 3)
!980 = !DILocation(line: 159, column: 3, scope: !976)
!981 = !DILocation(line: 160, column: 23, scope: !979)
!982 = !DILocation(line: 160, column: 5, scope: !979)
!983 = !DILocation(line: 160, column: 43, scope: !979)
!984 = !DILocation(line: 159, column: 22, scope: !979)
!985 = !DILocation(line: 159, column: 3, scope: !979)
!986 = distinct !{!986, !980, !987, !200}
!987 = !DILocation(line: 160, column: 45, scope: !976)
!988 = !DILocation(line: 161, column: 1, scope: !967)
!989 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_reduce", scope: !714, file: !714, line: 171, type: !990, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !751}
!992 = !DILocalVariable(name: "v", arg: 1, scope: !989, file: !714, line: 171, type: !751)
!993 = !DILocation(line: 0, scope: !989)
!994 = !DILocalVariable(name: "i", scope: !989, file: !714, line: 172, type: !55)
!995 = !DILocation(line: 174, column: 8, scope: !996)
!996 = distinct !DILexicalBlock(scope: !989, file: !714, line: 174, column: 3)
!997 = !DILocation(line: 174, scope: !996)
!998 = !DILocation(line: 174, column: 17, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !714, line: 174, column: 3)
!1000 = !DILocation(line: 174, column: 3, scope: !996)
!1001 = !DILocation(line: 175, column: 18, scope: !999)
!1002 = !DILocation(line: 175, column: 5, scope: !999)
!1003 = !DILocation(line: 174, column: 22, scope: !999)
!1004 = !DILocation(line: 174, column: 3, scope: !999)
!1005 = distinct !{!1005, !1000, !1006, !200}
!1006 = !DILocation(line: 175, column: 25, scope: !996)
!1007 = !DILocation(line: 176, column: 1, scope: !989)
!1008 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_caddq", scope: !714, file: !714, line: 186, type: !990, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1009 = !DILocalVariable(name: "v", arg: 1, scope: !1008, file: !714, line: 186, type: !751)
!1010 = !DILocation(line: 0, scope: !1008)
!1011 = !DILocalVariable(name: "i", scope: !1008, file: !714, line: 187, type: !55)
!1012 = !DILocation(line: 189, column: 8, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !714, line: 189, column: 3)
!1014 = !DILocation(line: 189, scope: !1013)
!1015 = !DILocation(line: 189, column: 17, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1013, file: !714, line: 189, column: 3)
!1017 = !DILocation(line: 189, column: 3, scope: !1013)
!1018 = !DILocation(line: 190, column: 17, scope: !1016)
!1019 = !DILocation(line: 190, column: 5, scope: !1016)
!1020 = !DILocation(line: 189, column: 22, scope: !1016)
!1021 = !DILocation(line: 189, column: 3, scope: !1016)
!1022 = distinct !{!1022, !1017, !1023, !200}
!1023 = !DILocation(line: 190, column: 24, scope: !1013)
!1024 = !DILocation(line: 191, column: 1, scope: !1008)
!1025 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_add", scope: !714, file: !714, line: 203, type: !1026, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !751, !1028, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!1030 = !DILocalVariable(name: "w", arg: 1, scope: !1025, file: !714, line: 203, type: !751)
!1031 = !DILocation(line: 0, scope: !1025)
!1032 = !DILocalVariable(name: "u", arg: 2, scope: !1025, file: !714, line: 203, type: !1028)
!1033 = !DILocalVariable(name: "v", arg: 3, scope: !1025, file: !714, line: 203, type: !1028)
!1034 = !DILocalVariable(name: "i", scope: !1025, file: !714, line: 204, type: !55)
!1035 = !DILocation(line: 206, column: 8, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1025, file: !714, line: 206, column: 3)
!1037 = !DILocation(line: 206, scope: !1036)
!1038 = !DILocation(line: 206, column: 17, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !714, line: 206, column: 3)
!1040 = !DILocation(line: 206, column: 3, scope: !1036)
!1041 = !DILocation(line: 207, column: 15, scope: !1039)
!1042 = !DILocation(line: 207, column: 25, scope: !1039)
!1043 = !DILocation(line: 207, column: 35, scope: !1039)
!1044 = !DILocation(line: 207, column: 5, scope: !1039)
!1045 = !DILocation(line: 206, column: 22, scope: !1039)
!1046 = !DILocation(line: 206, column: 3, scope: !1039)
!1047 = distinct !{!1047, !1040, !1048, !200}
!1048 = !DILocation(line: 207, column: 42, scope: !1036)
!1049 = !DILocation(line: 208, column: 1, scope: !1025)
!1050 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_sub", scope: !714, file: !714, line: 221, type: !1026, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1051 = !DILocalVariable(name: "w", arg: 1, scope: !1050, file: !714, line: 221, type: !751)
!1052 = !DILocation(line: 0, scope: !1050)
!1053 = !DILocalVariable(name: "u", arg: 2, scope: !1050, file: !714, line: 221, type: !1028)
!1054 = !DILocalVariable(name: "v", arg: 3, scope: !1050, file: !714, line: 221, type: !1028)
!1055 = !DILocalVariable(name: "i", scope: !1050, file: !714, line: 222, type: !55)
!1056 = !DILocation(line: 224, column: 8, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1050, file: !714, line: 224, column: 3)
!1058 = !DILocation(line: 224, scope: !1057)
!1059 = !DILocation(line: 224, column: 17, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !714, line: 224, column: 3)
!1061 = !DILocation(line: 224, column: 3, scope: !1057)
!1062 = !DILocation(line: 225, column: 15, scope: !1060)
!1063 = !DILocation(line: 225, column: 25, scope: !1060)
!1064 = !DILocation(line: 225, column: 35, scope: !1060)
!1065 = !DILocation(line: 225, column: 5, scope: !1060)
!1066 = !DILocation(line: 224, column: 22, scope: !1060)
!1067 = !DILocation(line: 224, column: 3, scope: !1060)
!1068 = distinct !{!1068, !1061, !1069, !200}
!1069 = !DILocation(line: 225, column: 42, scope: !1057)
!1070 = !DILocation(line: 226, column: 1, scope: !1050)
!1071 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_shiftl", scope: !714, file: !714, line: 236, type: !990, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1072 = !DILocalVariable(name: "v", arg: 1, scope: !1071, file: !714, line: 236, type: !751)
!1073 = !DILocation(line: 0, scope: !1071)
!1074 = !DILocalVariable(name: "i", scope: !1071, file: !714, line: 237, type: !55)
!1075 = !DILocation(line: 239, column: 8, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !714, line: 239, column: 3)
!1077 = !DILocation(line: 239, scope: !1076)
!1078 = !DILocation(line: 239, column: 17, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !714, line: 239, column: 3)
!1080 = !DILocation(line: 239, column: 3, scope: !1076)
!1081 = !DILocation(line: 240, column: 18, scope: !1079)
!1082 = !DILocation(line: 240, column: 5, scope: !1079)
!1083 = !DILocation(line: 239, column: 22, scope: !1079)
!1084 = !DILocation(line: 239, column: 3, scope: !1079)
!1085 = distinct !{!1085, !1080, !1086, !200}
!1086 = !DILocation(line: 240, column: 25, scope: !1076)
!1087 = !DILocation(line: 241, column: 1, scope: !1071)
!1088 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_ntt", scope: !714, file: !714, line: 251, type: !990, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1089 = !DILocalVariable(name: "v", arg: 1, scope: !1088, file: !714, line: 251, type: !751)
!1090 = !DILocation(line: 0, scope: !1088)
!1091 = !DILocalVariable(name: "i", scope: !1088, file: !714, line: 252, type: !55)
!1092 = !DILocation(line: 254, column: 8, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !714, line: 254, column: 3)
!1094 = !DILocation(line: 254, scope: !1093)
!1095 = !DILocation(line: 254, column: 17, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !714, line: 254, column: 3)
!1097 = !DILocation(line: 254, column: 3, scope: !1093)
!1098 = !DILocation(line: 255, column: 15, scope: !1096)
!1099 = !DILocation(line: 255, column: 5, scope: !1096)
!1100 = !DILocation(line: 254, column: 22, scope: !1096)
!1101 = !DILocation(line: 254, column: 3, scope: !1096)
!1102 = distinct !{!1102, !1097, !1103, !200}
!1103 = !DILocation(line: 255, column: 22, scope: !1093)
!1104 = !DILocation(line: 256, column: 1, scope: !1088)
!1105 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_invntt_tomont", scope: !714, file: !714, line: 267, type: !990, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1106 = !DILocalVariable(name: "v", arg: 1, scope: !1105, file: !714, line: 267, type: !751)
!1107 = !DILocation(line: 0, scope: !1105)
!1108 = !DILocalVariable(name: "i", scope: !1105, file: !714, line: 268, type: !55)
!1109 = !DILocation(line: 270, column: 8, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !714, line: 270, column: 3)
!1111 = !DILocation(line: 270, scope: !1110)
!1112 = !DILocation(line: 270, column: 17, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1110, file: !714, line: 270, column: 3)
!1114 = !DILocation(line: 270, column: 3, scope: !1110)
!1115 = !DILocation(line: 271, column: 25, scope: !1113)
!1116 = !DILocation(line: 271, column: 5, scope: !1113)
!1117 = !DILocation(line: 270, column: 22, scope: !1113)
!1118 = !DILocation(line: 270, column: 3, scope: !1113)
!1119 = distinct !{!1119, !1114, !1120, !200}
!1120 = !DILocation(line: 271, column: 32, scope: !1110)
!1121 = !DILocation(line: 272, column: 1, scope: !1105)
!1122 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_pointwise_poly_montgomery", scope: !714, file: !714, line: 274, type: !1123, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !751, !925, !1028}
!1125 = !DILocalVariable(name: "r", arg: 1, scope: !1122, file: !714, line: 274, type: !751)
!1126 = !DILocation(line: 0, scope: !1122)
!1127 = !DILocalVariable(name: "a", arg: 2, scope: !1122, file: !714, line: 274, type: !925)
!1128 = !DILocalVariable(name: "v", arg: 3, scope: !1122, file: !714, line: 275, type: !1028)
!1129 = !DILocalVariable(name: "i", scope: !1122, file: !714, line: 276, type: !55)
!1130 = !DILocation(line: 278, column: 8, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1122, file: !714, line: 278, column: 3)
!1132 = !DILocation(line: 278, scope: !1131)
!1133 = !DILocation(line: 278, column: 17, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !714, line: 278, column: 3)
!1135 = !DILocation(line: 278, column: 3, scope: !1131)
!1136 = !DILocation(line: 279, column: 32, scope: !1134)
!1137 = !DILocation(line: 279, column: 45, scope: !1134)
!1138 = !DILocation(line: 279, column: 5, scope: !1134)
!1139 = !DILocation(line: 278, column: 22, scope: !1134)
!1140 = !DILocation(line: 278, column: 3, scope: !1134)
!1141 = distinct !{!1141, !1135, !1142, !200}
!1142 = !DILocation(line: 279, column: 52, scope: !1131)
!1143 = !DILocation(line: 280, column: 1, scope: !1122)
!1144 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_chknorm", scope: !714, file: !714, line: 294, type: !1145, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!65, !1028, !77}
!1147 = !DILocalVariable(name: "v", arg: 1, scope: !1144, file: !714, line: 294, type: !1028)
!1148 = !DILocation(line: 0, scope: !1144)
!1149 = !DILocalVariable(name: "bound", arg: 2, scope: !1144, file: !714, line: 294, type: !77)
!1150 = !DILocalVariable(name: "i", scope: !1144, file: !714, line: 295, type: !55)
!1151 = !DILocation(line: 297, column: 8, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1144, file: !714, line: 297, column: 3)
!1153 = !DILocation(line: 297, scope: !1152)
!1154 = !DILocation(line: 297, column: 17, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !714, line: 297, column: 3)
!1156 = !DILocation(line: 297, column: 3, scope: !1152)
!1157 = !DILocation(line: 298, column: 23, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !714, line: 298, column: 9)
!1159 = !DILocation(line: 298, column: 9, scope: !1158)
!1160 = !DILocation(line: 297, column: 22, scope: !1155)
!1161 = !DILocation(line: 297, column: 3, scope: !1155)
!1162 = distinct !{!1162, !1156, !1163, !200}
!1163 = !DILocation(line: 299, column: 14, scope: !1152)
!1164 = !DILocation(line: 302, column: 1, scope: !1144)
!1165 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_power2round", scope: !714, file: !714, line: 318, type: !1166, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !751, !751, !1028}
!1168 = !DILocalVariable(name: "v1", arg: 1, scope: !1165, file: !714, line: 318, type: !751)
!1169 = !DILocation(line: 0, scope: !1165)
!1170 = !DILocalVariable(name: "v0", arg: 2, scope: !1165, file: !714, line: 318, type: !751)
!1171 = !DILocalVariable(name: "v", arg: 3, scope: !1165, file: !714, line: 318, type: !1028)
!1172 = !DILocalVariable(name: "i", scope: !1165, file: !714, line: 319, type: !55)
!1173 = !DILocation(line: 321, column: 8, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1165, file: !714, line: 321, column: 3)
!1175 = !DILocation(line: 321, scope: !1174)
!1176 = !DILocation(line: 321, column: 17, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !714, line: 321, column: 3)
!1178 = !DILocation(line: 321, column: 3, scope: !1174)
!1179 = !DILocation(line: 322, column: 23, scope: !1177)
!1180 = !DILocation(line: 322, column: 34, scope: !1177)
!1181 = !DILocation(line: 322, column: 45, scope: !1177)
!1182 = !DILocation(line: 322, column: 5, scope: !1177)
!1183 = !DILocation(line: 321, column: 22, scope: !1177)
!1184 = !DILocation(line: 321, column: 3, scope: !1177)
!1185 = distinct !{!1185, !1178, !1186, !200}
!1186 = !DILocation(line: 322, column: 52, scope: !1174)
!1187 = !DILocation(line: 323, column: 1, scope: !1165)
!1188 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_decompose", scope: !714, file: !714, line: 340, type: !1166, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1189 = !DILocalVariable(name: "v1", arg: 1, scope: !1188, file: !714, line: 340, type: !751)
!1190 = !DILocation(line: 0, scope: !1188)
!1191 = !DILocalVariable(name: "v0", arg: 2, scope: !1188, file: !714, line: 340, type: !751)
!1192 = !DILocalVariable(name: "v", arg: 3, scope: !1188, file: !714, line: 340, type: !1028)
!1193 = !DILocalVariable(name: "i", scope: !1188, file: !714, line: 341, type: !55)
!1194 = !DILocation(line: 343, column: 8, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1188, file: !714, line: 343, column: 3)
!1196 = !DILocation(line: 343, scope: !1195)
!1197 = !DILocation(line: 343, column: 17, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !714, line: 343, column: 3)
!1199 = !DILocation(line: 343, column: 3, scope: !1195)
!1200 = !DILocation(line: 344, column: 21, scope: !1198)
!1201 = !DILocation(line: 344, column: 32, scope: !1198)
!1202 = !DILocation(line: 344, column: 43, scope: !1198)
!1203 = !DILocation(line: 344, column: 5, scope: !1198)
!1204 = !DILocation(line: 343, column: 22, scope: !1198)
!1205 = !DILocation(line: 343, column: 3, scope: !1198)
!1206 = distinct !{!1206, !1199, !1207, !200}
!1207 = !DILocation(line: 344, column: 50, scope: !1195)
!1208 = !DILocation(line: 345, column: 1, scope: !1188)
!1209 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_make_hint", scope: !714, file: !714, line: 358, type: !1210, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!55, !751, !1028, !1028}
!1212 = !DILocalVariable(name: "h", arg: 1, scope: !1209, file: !714, line: 358, type: !751)
!1213 = !DILocation(line: 0, scope: !1209)
!1214 = !DILocalVariable(name: "v0", arg: 2, scope: !1209, file: !714, line: 358, type: !1028)
!1215 = !DILocalVariable(name: "v1", arg: 3, scope: !1209, file: !714, line: 359, type: !1028)
!1216 = !DILocalVariable(name: "s", scope: !1209, file: !714, line: 360, type: !55)
!1217 = !DILocalVariable(name: "i", scope: !1209, file: !714, line: 360, type: !55)
!1218 = !DILocation(line: 362, column: 8, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1209, file: !714, line: 362, column: 3)
!1220 = !DILocation(line: 362, scope: !1219)
!1221 = !DILocation(line: 362, column: 17, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !714, line: 362, column: 3)
!1223 = !DILocation(line: 362, column: 3, scope: !1219)
!1224 = !DILocation(line: 363, column: 26, scope: !1222)
!1225 = !DILocation(line: 363, column: 36, scope: !1222)
!1226 = !DILocation(line: 363, column: 47, scope: !1222)
!1227 = !DILocation(line: 363, column: 10, scope: !1222)
!1228 = !DILocation(line: 363, column: 7, scope: !1222)
!1229 = !DILocation(line: 362, column: 22, scope: !1222)
!1230 = !DILocation(line: 362, column: 3, scope: !1222)
!1231 = distinct !{!1231, !1223, !1232, !200}
!1232 = !DILocation(line: 363, column: 55, scope: !1219)
!1233 = !DILocation(line: 365, column: 3, scope: !1209)
!1234 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_use_hint", scope: !714, file: !714, line: 378, type: !1026, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1235 = !DILocalVariable(name: "w", arg: 1, scope: !1234, file: !714, line: 378, type: !751)
!1236 = !DILocation(line: 0, scope: !1234)
!1237 = !DILocalVariable(name: "u", arg: 2, scope: !1234, file: !714, line: 378, type: !1028)
!1238 = !DILocalVariable(name: "h", arg: 3, scope: !1234, file: !714, line: 378, type: !1028)
!1239 = !DILocalVariable(name: "i", scope: !1234, file: !714, line: 379, type: !55)
!1240 = !DILocation(line: 381, column: 8, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1234, file: !714, line: 381, column: 3)
!1242 = !DILocation(line: 381, scope: !1241)
!1243 = !DILocation(line: 381, column: 17, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !714, line: 381, column: 3)
!1245 = !DILocation(line: 381, column: 3, scope: !1241)
!1246 = !DILocation(line: 382, column: 20, scope: !1244)
!1247 = !DILocation(line: 382, column: 30, scope: !1244)
!1248 = !DILocation(line: 382, column: 40, scope: !1244)
!1249 = !DILocation(line: 382, column: 5, scope: !1244)
!1250 = !DILocation(line: 381, column: 22, scope: !1244)
!1251 = !DILocation(line: 381, column: 3, scope: !1244)
!1252 = distinct !{!1252, !1245, !1253, !200}
!1253 = !DILocation(line: 382, column: 47, scope: !1241)
!1254 = !DILocation(line: 383, column: 1, scope: !1234)
!1255 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyveck_pack_w1", scope: !714, file: !714, line: 385, type: !1256, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !47, !1028}
!1258 = !DILocalVariable(name: "r", arg: 1, scope: !1255, file: !714, line: 385, type: !47)
!1259 = !DILocation(line: 0, scope: !1255)
!1260 = !DILocalVariable(name: "w1", arg: 2, scope: !1255, file: !714, line: 385, type: !1028)
!1261 = !DILocalVariable(name: "i", scope: !1255, file: !714, line: 386, type: !55)
!1262 = !DILocation(line: 388, column: 8, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1255, file: !714, line: 388, column: 3)
!1264 = !DILocation(line: 388, scope: !1263)
!1265 = !DILocation(line: 388, column: 17, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !714, line: 388, column: 3)
!1267 = !DILocation(line: 388, column: 3, scope: !1263)
!1268 = !DILocation(line: 389, column: 22, scope: !1266)
!1269 = !DILocation(line: 389, column: 18, scope: !1266)
!1270 = !DILocation(line: 389, column: 46, scope: !1266)
!1271 = !DILocation(line: 389, column: 5, scope: !1266)
!1272 = !DILocation(line: 388, column: 22, scope: !1266)
!1273 = !DILocation(line: 388, column: 3, scope: !1266)
!1274 = distinct !{!1274, !1267, !1275, !200}
!1275 = !DILocation(line: 389, column: 54, scope: !1263)
!1276 = !DILocation(line: 390, column: 1, scope: !1255)
!1277 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_reduce", scope: !1278, file: !1278, line: 28, type: !1279, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1278 = !DIFile(filename: "../../../ref/poly.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !776}
!1281 = !DILocalVariable(name: "a", arg: 1, scope: !1277, file: !1278, line: 28, type: !776)
!1282 = !DILocation(line: 0, scope: !1277)
!1283 = !DILocalVariable(name: "i", scope: !1277, file: !1278, line: 29, type: !55)
!1284 = !DILocation(line: 32, column: 8, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1277, file: !1278, line: 32, column: 3)
!1286 = !DILocation(line: 32, scope: !1285)
!1287 = !DILocation(line: 32, column: 17, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !1278, line: 32, column: 3)
!1289 = !DILocation(line: 32, column: 3, scope: !1285)
!1290 = !DILocation(line: 33, column: 24, scope: !1288)
!1291 = !DILocation(line: 33, column: 15, scope: !1288)
!1292 = !DILocation(line: 33, column: 5, scope: !1288)
!1293 = !DILocation(line: 33, column: 13, scope: !1288)
!1294 = !DILocation(line: 32, column: 22, scope: !1288)
!1295 = !DILocation(line: 32, column: 3, scope: !1288)
!1296 = distinct !{!1296, !1289, !1297, !200}
!1297 = !DILocation(line: 33, column: 31, scope: !1285)
!1298 = !DILocation(line: 36, column: 1, scope: !1277)
!1299 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_caddq", scope: !1278, file: !1278, line: 46, type: !1279, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1300 = !DILocalVariable(name: "a", arg: 1, scope: !1299, file: !1278, line: 46, type: !776)
!1301 = !DILocation(line: 0, scope: !1299)
!1302 = !DILocalVariable(name: "i", scope: !1299, file: !1278, line: 47, type: !55)
!1303 = !DILocation(line: 50, column: 8, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !1278, line: 50, column: 3)
!1305 = !DILocation(line: 50, scope: !1304)
!1306 = !DILocation(line: 50, column: 17, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !1278, line: 50, column: 3)
!1308 = !DILocation(line: 50, column: 3, scope: !1304)
!1309 = !DILocation(line: 51, column: 21, scope: !1307)
!1310 = !DILocation(line: 51, column: 15, scope: !1307)
!1311 = !DILocation(line: 51, column: 5, scope: !1307)
!1312 = !DILocation(line: 51, column: 13, scope: !1307)
!1313 = !DILocation(line: 50, column: 22, scope: !1307)
!1314 = !DILocation(line: 50, column: 3, scope: !1307)
!1315 = distinct !{!1315, !1308, !1316, !200}
!1316 = !DILocation(line: 51, column: 28, scope: !1304)
!1317 = !DILocation(line: 54, column: 1, scope: !1299)
!1318 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_add", scope: !1278, file: !1278, line: 65, type: !1319, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !776, !925, !925}
!1321 = !DILocalVariable(name: "c", arg: 1, scope: !1318, file: !1278, line: 65, type: !776)
!1322 = !DILocation(line: 0, scope: !1318)
!1323 = !DILocalVariable(name: "a", arg: 2, scope: !1318, file: !1278, line: 65, type: !925)
!1324 = !DILocalVariable(name: "b", arg: 3, scope: !1318, file: !1278, line: 65, type: !925)
!1325 = !DILocalVariable(name: "i", scope: !1318, file: !1278, line: 66, type: !55)
!1326 = !DILocation(line: 69, column: 8, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1318, file: !1278, line: 69, column: 3)
!1328 = !DILocation(line: 69, scope: !1327)
!1329 = !DILocation(line: 69, column: 17, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !1278, line: 69, column: 3)
!1331 = !DILocation(line: 69, column: 3, scope: !1327)
!1332 = !DILocation(line: 70, column: 15, scope: !1330)
!1333 = !DILocation(line: 70, column: 25, scope: !1330)
!1334 = !DILocation(line: 70, column: 23, scope: !1330)
!1335 = !DILocation(line: 70, column: 5, scope: !1330)
!1336 = !DILocation(line: 70, column: 13, scope: !1330)
!1337 = !DILocation(line: 69, column: 22, scope: !1330)
!1338 = !DILocation(line: 69, column: 3, scope: !1330)
!1339 = distinct !{!1339, !1331, !1340, !200}
!1340 = !DILocation(line: 70, column: 31, scope: !1327)
!1341 = !DILocation(line: 73, column: 1, scope: !1318)
!1342 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_sub", scope: !1278, file: !1278, line: 86, type: !1319, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1343 = !DILocalVariable(name: "c", arg: 1, scope: !1342, file: !1278, line: 86, type: !776)
!1344 = !DILocation(line: 0, scope: !1342)
!1345 = !DILocalVariable(name: "a", arg: 2, scope: !1342, file: !1278, line: 86, type: !925)
!1346 = !DILocalVariable(name: "b", arg: 3, scope: !1342, file: !1278, line: 86, type: !925)
!1347 = !DILocalVariable(name: "i", scope: !1342, file: !1278, line: 87, type: !55)
!1348 = !DILocation(line: 90, column: 8, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1342, file: !1278, line: 90, column: 3)
!1350 = !DILocation(line: 90, scope: !1349)
!1351 = !DILocation(line: 90, column: 17, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !1278, line: 90, column: 3)
!1353 = !DILocation(line: 90, column: 3, scope: !1349)
!1354 = !DILocation(line: 91, column: 15, scope: !1352)
!1355 = !DILocation(line: 91, column: 25, scope: !1352)
!1356 = !DILocation(line: 91, column: 23, scope: !1352)
!1357 = !DILocation(line: 91, column: 5, scope: !1352)
!1358 = !DILocation(line: 91, column: 13, scope: !1352)
!1359 = !DILocation(line: 90, column: 22, scope: !1352)
!1360 = !DILocation(line: 90, column: 3, scope: !1352)
!1361 = distinct !{!1361, !1353, !1362, !200}
!1362 = !DILocation(line: 91, column: 31, scope: !1349)
!1363 = !DILocation(line: 94, column: 1, scope: !1342)
!1364 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_shiftl", scope: !1278, file: !1278, line: 104, type: !1279, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1365 = !DILocalVariable(name: "a", arg: 1, scope: !1364, file: !1278, line: 104, type: !776)
!1366 = !DILocation(line: 0, scope: !1364)
!1367 = !DILocalVariable(name: "i", scope: !1364, file: !1278, line: 105, type: !55)
!1368 = !DILocation(line: 108, column: 8, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !1278, line: 108, column: 3)
!1370 = !DILocation(line: 108, scope: !1369)
!1371 = !DILocation(line: 108, column: 17, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !1278, line: 108, column: 3)
!1373 = !DILocation(line: 108, column: 3, scope: !1369)
!1374 = !DILocation(line: 109, column: 5, scope: !1372)
!1375 = !DILocation(line: 109, column: 13, scope: !1372)
!1376 = !DILocation(line: 108, column: 22, scope: !1372)
!1377 = !DILocation(line: 108, column: 3, scope: !1372)
!1378 = distinct !{!1378, !1373, !1379, !200}
!1379 = !DILocation(line: 109, column: 17, scope: !1369)
!1380 = !DILocation(line: 112, column: 1, scope: !1364)
!1381 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_ntt", scope: !1278, file: !1278, line: 122, type: !1279, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1382 = !DILocalVariable(name: "a", arg: 1, scope: !1381, file: !1278, line: 122, type: !776)
!1383 = !DILocation(line: 0, scope: !1381)
!1384 = !DILocation(line: 125, column: 3, scope: !1381)
!1385 = !DILocation(line: 128, column: 1, scope: !1381)
!1386 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_invntt_tomont", scope: !1278, file: !1278, line: 139, type: !1279, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1387 = !DILocalVariable(name: "a", arg: 1, scope: !1386, file: !1278, line: 139, type: !776)
!1388 = !DILocation(line: 0, scope: !1386)
!1389 = !DILocation(line: 142, column: 3, scope: !1386)
!1390 = !DILocation(line: 145, column: 1, scope: !1386)
!1391 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_pointwise_montgomery", scope: !1278, file: !1278, line: 158, type: !1319, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1392 = !DILocalVariable(name: "c", arg: 1, scope: !1391, file: !1278, line: 158, type: !776)
!1393 = !DILocation(line: 0, scope: !1391)
!1394 = !DILocalVariable(name: "a", arg: 2, scope: !1391, file: !1278, line: 158, type: !925)
!1395 = !DILocalVariable(name: "b", arg: 3, scope: !1391, file: !1278, line: 158, type: !925)
!1396 = !DILocalVariable(name: "i", scope: !1391, file: !1278, line: 159, type: !55)
!1397 = !DILocation(line: 162, column: 8, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1391, file: !1278, line: 162, column: 3)
!1399 = !DILocation(line: 162, scope: !1398)
!1400 = !DILocation(line: 162, column: 17, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !1278, line: 162, column: 3)
!1402 = !DILocation(line: 162, column: 3, scope: !1398)
!1403 = !DILocation(line: 163, column: 42, scope: !1401)
!1404 = !DILocation(line: 163, column: 33, scope: !1401)
!1405 = !DILocation(line: 163, column: 52, scope: !1401)
!1406 = !DILocation(line: 163, column: 50, scope: !1401)
!1407 = !DILocation(line: 163, column: 15, scope: !1401)
!1408 = !DILocation(line: 163, column: 5, scope: !1401)
!1409 = !DILocation(line: 163, column: 13, scope: !1401)
!1410 = !DILocation(line: 162, column: 22, scope: !1401)
!1411 = !DILocation(line: 162, column: 3, scope: !1401)
!1412 = distinct !{!1412, !1402, !1413, !200}
!1413 = !DILocation(line: 163, column: 59, scope: !1398)
!1414 = !DILocation(line: 166, column: 1, scope: !1391)
!1415 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_power2round", scope: !1278, file: !1278, line: 180, type: !1416, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !776, !776, !925}
!1418 = !DILocalVariable(name: "a1", arg: 1, scope: !1415, file: !1278, line: 180, type: !776)
!1419 = !DILocation(line: 0, scope: !1415)
!1420 = !DILocalVariable(name: "a0", arg: 2, scope: !1415, file: !1278, line: 180, type: !776)
!1421 = !DILocalVariable(name: "a", arg: 3, scope: !1415, file: !1278, line: 180, type: !925)
!1422 = !DILocalVariable(name: "i", scope: !1415, file: !1278, line: 181, type: !55)
!1423 = !DILocation(line: 184, column: 8, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1415, file: !1278, line: 184, column: 3)
!1425 = !DILocation(line: 184, scope: !1424)
!1426 = !DILocation(line: 184, column: 17, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !1278, line: 184, column: 3)
!1428 = !DILocation(line: 184, column: 3, scope: !1424)
!1429 = !DILocation(line: 185, column: 29, scope: !1427)
!1430 = !DILocation(line: 185, column: 39, scope: !1427)
!1431 = !DILocation(line: 185, column: 16, scope: !1427)
!1432 = !DILocation(line: 185, column: 5, scope: !1427)
!1433 = !DILocation(line: 185, column: 14, scope: !1427)
!1434 = !DILocation(line: 184, column: 22, scope: !1427)
!1435 = !DILocation(line: 184, column: 3, scope: !1427)
!1436 = distinct !{!1436, !1428, !1437, !200}
!1437 = !DILocation(line: 185, column: 46, scope: !1424)
!1438 = !DILocation(line: 188, column: 1, scope: !1415)
!1439 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_decompose", scope: !1278, file: !1278, line: 203, type: !1416, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1440 = !DILocalVariable(name: "a1", arg: 1, scope: !1439, file: !1278, line: 203, type: !776)
!1441 = !DILocation(line: 0, scope: !1439)
!1442 = !DILocalVariable(name: "a0", arg: 2, scope: !1439, file: !1278, line: 203, type: !776)
!1443 = !DILocalVariable(name: "a", arg: 3, scope: !1439, file: !1278, line: 203, type: !925)
!1444 = !DILocalVariable(name: "i", scope: !1439, file: !1278, line: 204, type: !55)
!1445 = !DILocation(line: 207, column: 8, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1439, file: !1278, line: 207, column: 3)
!1447 = !DILocation(line: 207, scope: !1446)
!1448 = !DILocation(line: 207, column: 17, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !1278, line: 207, column: 3)
!1450 = !DILocation(line: 207, column: 3, scope: !1446)
!1451 = !DILocation(line: 208, column: 27, scope: !1449)
!1452 = !DILocation(line: 208, column: 37, scope: !1449)
!1453 = !DILocation(line: 208, column: 16, scope: !1449)
!1454 = !DILocation(line: 208, column: 5, scope: !1449)
!1455 = !DILocation(line: 208, column: 14, scope: !1449)
!1456 = !DILocation(line: 207, column: 22, scope: !1449)
!1457 = !DILocation(line: 207, column: 3, scope: !1449)
!1458 = distinct !{!1458, !1450, !1459, !200}
!1459 = !DILocation(line: 208, column: 44, scope: !1446)
!1460 = !DILocation(line: 211, column: 1, scope: !1439)
!1461 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_make_hint", scope: !1278, file: !1278, line: 226, type: !1462, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!55, !776, !925, !925}
!1464 = !DILocalVariable(name: "h", arg: 1, scope: !1461, file: !1278, line: 226, type: !776)
!1465 = !DILocation(line: 0, scope: !1461)
!1466 = !DILocalVariable(name: "a0", arg: 2, scope: !1461, file: !1278, line: 226, type: !925)
!1467 = !DILocalVariable(name: "a1", arg: 3, scope: !1461, file: !1278, line: 226, type: !925)
!1468 = !DILocalVariable(name: "s", scope: !1461, file: !1278, line: 227, type: !55)
!1469 = !DILocalVariable(name: "i", scope: !1461, file: !1278, line: 227, type: !55)
!1470 = !DILocation(line: 230, column: 8, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1461, file: !1278, line: 230, column: 3)
!1472 = !DILocation(line: 230, scope: !1471)
!1473 = !DILocation(line: 230, column: 17, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !1278, line: 230, column: 3)
!1475 = !DILocation(line: 230, column: 3, scope: !1471)
!1476 = !DILocation(line: 231, column: 25, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !1278, line: 230, column: 27)
!1478 = !DILocation(line: 231, column: 35, scope: !1477)
!1479 = !DILocation(line: 231, column: 15, scope: !1477)
!1480 = !DILocation(line: 231, column: 5, scope: !1477)
!1481 = !DILocation(line: 231, column: 13, scope: !1477)
!1482 = !DILocation(line: 232, column: 7, scope: !1477)
!1483 = !DILocation(line: 230, column: 22, scope: !1474)
!1484 = !DILocation(line: 230, column: 3, scope: !1474)
!1485 = distinct !{!1485, !1475, !1486, !200}
!1486 = !DILocation(line: 233, column: 3, scope: !1471)
!1487 = !DILocation(line: 236, column: 3, scope: !1461)
!1488 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_use_hint", scope: !1278, file: !1278, line: 248, type: !1319, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1489 = !DILocalVariable(name: "b", arg: 1, scope: !1488, file: !1278, line: 248, type: !776)
!1490 = !DILocation(line: 0, scope: !1488)
!1491 = !DILocalVariable(name: "a", arg: 2, scope: !1488, file: !1278, line: 248, type: !925)
!1492 = !DILocalVariable(name: "h", arg: 3, scope: !1488, file: !1278, line: 248, type: !925)
!1493 = !DILocalVariable(name: "i", scope: !1488, file: !1278, line: 249, type: !55)
!1494 = !DILocation(line: 252, column: 8, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1488, file: !1278, line: 252, column: 3)
!1496 = !DILocation(line: 252, scope: !1495)
!1497 = !DILocation(line: 252, column: 17, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1495, file: !1278, line: 252, column: 3)
!1499 = !DILocation(line: 252, column: 3, scope: !1495)
!1500 = !DILocation(line: 253, column: 24, scope: !1498)
!1501 = !DILocation(line: 253, column: 33, scope: !1498)
!1502 = !DILocation(line: 253, column: 15, scope: !1498)
!1503 = !DILocation(line: 253, column: 5, scope: !1498)
!1504 = !DILocation(line: 253, column: 13, scope: !1498)
!1505 = !DILocation(line: 252, column: 22, scope: !1498)
!1506 = !DILocation(line: 252, column: 3, scope: !1498)
!1507 = distinct !{!1507, !1499, !1508, !200}
!1508 = !DILocation(line: 253, column: 40, scope: !1495)
!1509 = !DILocation(line: 256, column: 1, scope: !1488)
!1510 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_chknorm", scope: !1278, file: !1278, line: 269, type: !1511, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!65, !925, !77}
!1513 = !DILocalVariable(name: "a", arg: 1, scope: !1510, file: !1278, line: 269, type: !925)
!1514 = !DILocation(line: 0, scope: !1510)
!1515 = !DILocalVariable(name: "B", arg: 2, scope: !1510, file: !1278, line: 269, type: !77)
!1516 = !DILocation(line: 274, column: 9, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1510, file: !1278, line: 274, column: 7)
!1518 = !DILocation(line: 280, column: 3, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1510, file: !1278, line: 280, column: 3)
!1520 = !DILocation(line: 280, scope: !1519)
!1521 = !DILocalVariable(name: "i", scope: !1510, file: !1278, line: 270, type: !55)
!1522 = !DILocation(line: 280, column: 17, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !1278, line: 280, column: 3)
!1524 = !DILocation(line: 282, column: 9, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1523, file: !1278, line: 280, column: 27)
!1526 = !DILocalVariable(name: "t", scope: !1510, file: !1278, line: 271, type: !77)
!1527 = !DILocation(line: 283, column: 22, scope: !1525)
!1528 = !DILocation(line: 283, column: 17, scope: !1525)
!1529 = !DILocation(line: 285, column: 11, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !1278, line: 285, column: 9)
!1531 = !DILocation(line: 280, column: 22, scope: !1523)
!1532 = !DILocation(line: 280, column: 3, scope: !1523)
!1533 = distinct !{!1533, !1518, !1534, !200}
!1534 = !DILocation(line: 289, column: 3, scope: !1519)
!1535 = !DILocation(line: 293, column: 1, scope: !1510)
!1536 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_uniform", scope: !1278, file: !1278, line: 343, type: !1537, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !776, !324, !362}
!1539 = !DILocalVariable(name: "a", arg: 1, scope: !1536, file: !1278, line: 343, type: !776)
!1540 = !DILocation(line: 0, scope: !1536)
!1541 = !DILocalVariable(name: "seed", arg: 2, scope: !1536, file: !1278, line: 343, type: !324)
!1542 = !DILocalVariable(name: "nonce", arg: 3, scope: !1536, file: !1278, line: 343, type: !362)
!1543 = !DILocalVariable(name: "buflen", scope: !1536, file: !1278, line: 345, type: !55)
!1544 = !DILocalVariable(name: "buf", scope: !1536, file: !1278, line: 346, type: !1545)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 6736, elements: !1546)
!1546 = !{!1547}
!1547 = !DISubrange(count: 842)
!1548 = !DILocation(line: 346, column: 11, scope: !1536)
!1549 = !DILocalVariable(name: "state", scope: !1536, file: !1278, line: 347, type: !1550)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream128_state", file: !1551, line: 9, baseType: !386)
!1551 = !DIFile(filename: "../../../ref/symmetric.h", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!1552 = !DILocation(line: 347, column: 19, scope: !1536)
!1553 = !DILocation(line: 349, column: 3, scope: !1536)
!1554 = !DILocation(line: 350, column: 3, scope: !1536)
!1555 = !DILocation(line: 352, column: 9, scope: !1536)
!1556 = !DILocalVariable(name: "ctr", scope: !1536, file: !1278, line: 344, type: !55)
!1557 = !DILocation(line: 354, column: 3, scope: !1536)
!1558 = !DILocation(line: 354, column: 14, scope: !1536)
!1559 = !DILocation(line: 355, column: 18, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1536, file: !1278, line: 354, column: 19)
!1561 = !DILocalVariable(name: "off", scope: !1536, file: !1278, line: 344, type: !55)
!1562 = !DILocalVariable(name: "i", scope: !1536, file: !1278, line: 344, type: !55)
!1563 = !DILocation(line: 356, column: 10, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !1278, line: 356, column: 5)
!1565 = !DILocation(line: 356, scope: !1564)
!1566 = !DILocation(line: 356, column: 19, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1564, file: !1278, line: 356, column: 5)
!1568 = !DILocation(line: 356, column: 5, scope: !1564)
!1569 = !DILocation(line: 357, column: 27, scope: !1567)
!1570 = !DILocation(line: 357, column: 33, scope: !1567)
!1571 = !DILocation(line: 357, column: 16, scope: !1567)
!1572 = !DILocation(line: 357, column: 7, scope: !1567)
!1573 = !DILocation(line: 357, column: 14, scope: !1567)
!1574 = !DILocation(line: 356, column: 26, scope: !1567)
!1575 = !DILocation(line: 356, column: 5, scope: !1567)
!1576 = distinct !{!1576, !1568, !1577, !200}
!1577 = !DILocation(line: 357, column: 36, scope: !1564)
!1578 = !DILocation(line: 359, column: 5, scope: !1560)
!1579 = !DILocation(line: 360, column: 35, scope: !1560)
!1580 = !DILocation(line: 361, column: 29, scope: !1560)
!1581 = !DILocation(line: 361, column: 38, scope: !1560)
!1582 = !DILocation(line: 361, column: 12, scope: !1560)
!1583 = !DILocation(line: 361, column: 9, scope: !1560)
!1584 = distinct !{!1584, !1557, !1585, !200}
!1585 = !DILocation(line: 362, column: 3, scope: !1536)
!1586 = !DILocation(line: 363, column: 1, scope: !1536)
!1587 = distinct !DISubprogram(name: "rej_uniform", scope: !1278, file: !1278, line: 309, type: !1588, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!55, !1590, !55, !324, !55}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!1591 = !DILocalVariable(name: "a", arg: 1, scope: !1587, file: !1278, line: 309, type: !1590)
!1592 = !DILocation(line: 0, scope: !1587)
!1593 = !DILocalVariable(name: "len", arg: 2, scope: !1587, file: !1278, line: 309, type: !55)
!1594 = !DILocalVariable(name: "buf", arg: 3, scope: !1587, file: !1278, line: 310, type: !324)
!1595 = !DILocalVariable(name: "buflen", arg: 4, scope: !1587, file: !1278, line: 310, type: !55)
!1596 = !DILocalVariable(name: "pos", scope: !1587, file: !1278, line: 311, type: !55)
!1597 = !DILocalVariable(name: "ctr", scope: !1587, file: !1278, line: 311, type: !55)
!1598 = !DILocation(line: 316, column: 3, scope: !1587)
!1599 = !DILocation(line: 316, column: 14, scope: !1587)
!1600 = !DILocation(line: 316, column: 20, scope: !1587)
!1601 = !DILocation(line: 317, column: 9, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1587, file: !1278, line: 316, column: 42)
!1603 = !DILocalVariable(name: "t", scope: !1587, file: !1278, line: 312, type: !103)
!1604 = !DILocation(line: 318, column: 20, scope: !1602)
!1605 = !DILocation(line: 318, column: 10, scope: !1602)
!1606 = !DILocation(line: 318, column: 31, scope: !1602)
!1607 = !DILocation(line: 318, column: 7, scope: !1602)
!1608 = !DILocation(line: 319, column: 27, scope: !1602)
!1609 = !DILocation(line: 319, column: 20, scope: !1602)
!1610 = !DILocation(line: 319, column: 10, scope: !1602)
!1611 = !DILocation(line: 319, column: 31, scope: !1602)
!1612 = !DILocation(line: 320, column: 7, scope: !1602)
!1613 = !DILocation(line: 322, column: 11, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1602, file: !1278, line: 322, column: 9)
!1615 = !DILocation(line: 323, column: 12, scope: !1614)
!1616 = !DILocation(line: 323, column: 7, scope: !1614)
!1617 = !DILocation(line: 323, column: 16, scope: !1614)
!1618 = distinct !{!1618, !1598, !1619, !200}
!1619 = !DILocation(line: 324, column: 3, scope: !1587)
!1620 = !DILocation(line: 327, column: 3, scope: !1587)
!1621 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_uniform_eta", scope: !1278, file: !1278, line: 429, type: !1537, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1622 = !DILocalVariable(name: "a", arg: 1, scope: !1621, file: !1278, line: 429, type: !776)
!1623 = !DILocation(line: 0, scope: !1621)
!1624 = !DILocalVariable(name: "seed", arg: 2, scope: !1621, file: !1278, line: 429, type: !324)
!1625 = !DILocalVariable(name: "nonce", arg: 3, scope: !1621, file: !1278, line: 429, type: !362)
!1626 = !DILocalVariable(name: "buflen", scope: !1621, file: !1278, line: 431, type: !55)
!1627 = !DILocalVariable(name: "buf", scope: !1621, file: !1278, line: 432, type: !1628)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2176, elements: !1629)
!1629 = !{!1630}
!1630 = !DISubrange(count: 272)
!1631 = !DILocation(line: 432, column: 11, scope: !1621)
!1632 = !DILocalVariable(name: "state", scope: !1621, file: !1278, line: 433, type: !1633)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream256_state", file: !1551, line: 10, baseType: !386)
!1634 = !DILocation(line: 433, column: 19, scope: !1621)
!1635 = !DILocation(line: 435, column: 3, scope: !1621)
!1636 = !DILocation(line: 436, column: 3, scope: !1621)
!1637 = !DILocation(line: 438, column: 9, scope: !1621)
!1638 = !DILocalVariable(name: "ctr", scope: !1621, file: !1278, line: 430, type: !55)
!1639 = !DILocation(line: 440, column: 3, scope: !1621)
!1640 = !DILocation(line: 440, column: 14, scope: !1621)
!1641 = !DILocation(line: 441, column: 5, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1621, file: !1278, line: 440, column: 19)
!1643 = !DILocation(line: 442, column: 25, scope: !1642)
!1644 = !DILocation(line: 442, column: 34, scope: !1642)
!1645 = !DILocation(line: 442, column: 12, scope: !1642)
!1646 = !DILocation(line: 442, column: 9, scope: !1642)
!1647 = distinct !{!1647, !1639, !1648, !200}
!1648 = !DILocation(line: 443, column: 3, scope: !1621)
!1649 = !DILocation(line: 444, column: 1, scope: !1621)
!1650 = distinct !DISubprogram(name: "rej_eta", scope: !1278, file: !1278, line: 379, type: !1588, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1651 = !DILocalVariable(name: "a", arg: 1, scope: !1650, file: !1278, line: 379, type: !1590)
!1652 = !DILocation(line: 0, scope: !1650)
!1653 = !DILocalVariable(name: "len", arg: 2, scope: !1650, file: !1278, line: 379, type: !55)
!1654 = !DILocalVariable(name: "buf", arg: 3, scope: !1650, file: !1278, line: 379, type: !324)
!1655 = !DILocalVariable(name: "buflen", arg: 4, scope: !1650, file: !1278, line: 380, type: !55)
!1656 = !DILocalVariable(name: "pos", scope: !1650, file: !1278, line: 381, type: !55)
!1657 = !DILocalVariable(name: "ctr", scope: !1650, file: !1278, line: 381, type: !55)
!1658 = !DILocation(line: 386, column: 3, scope: !1650)
!1659 = !DILocation(line: 386, column: 14, scope: !1650)
!1660 = !DILocation(line: 386, column: 20, scope: !1650)
!1661 = !DILocation(line: 387, column: 10, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1650, file: !1278, line: 386, column: 37)
!1663 = !DILocation(line: 387, column: 19, scope: !1662)
!1664 = !DILocalVariable(name: "t0", scope: !1650, file: !1278, line: 382, type: !103)
!1665 = !DILocation(line: 388, column: 17, scope: !1662)
!1666 = !DILocation(line: 388, column: 21, scope: !1662)
!1667 = !DILocalVariable(name: "t1", scope: !1650, file: !1278, line: 382, type: !103)
!1668 = !DILocation(line: 400, column: 12, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1662, file: !1278, line: 400, column: 9)
!1670 = !DILocation(line: 401, column: 20, scope: !1669)
!1671 = !DILocation(line: 401, column: 12, scope: !1669)
!1672 = !DILocation(line: 401, column: 7, scope: !1669)
!1673 = !DILocation(line: 401, column: 16, scope: !1669)
!1674 = !DILocation(line: 402, column: 12, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1662, file: !1278, line: 402, column: 9)
!1676 = !DILocation(line: 402, column: 16, scope: !1675)
!1677 = !DILocation(line: 403, column: 20, scope: !1675)
!1678 = !DILocation(line: 403, column: 12, scope: !1675)
!1679 = !DILocation(line: 403, column: 7, scope: !1675)
!1680 = !DILocation(line: 403, column: 16, scope: !1675)
!1681 = !DILocation(line: 0, scope: !1662)
!1682 = distinct !{!1682, !1658, !1683, !200}
!1683 = !DILocation(line: 405, column: 3, scope: !1650)
!1684 = !DILocation(line: 408, column: 3, scope: !1650)
!1685 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_uniform_gamma1", scope: !1278, file: !1278, line: 459, type: !1537, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1686 = !DILocalVariable(name: "a", arg: 1, scope: !1685, file: !1278, line: 459, type: !776)
!1687 = !DILocation(line: 0, scope: !1685)
!1688 = !DILocalVariable(name: "seed", arg: 2, scope: !1685, file: !1278, line: 459, type: !324)
!1689 = !DILocalVariable(name: "nonce", arg: 3, scope: !1685, file: !1278, line: 460, type: !362)
!1690 = !DILocalVariable(name: "buf", scope: !1685, file: !1278, line: 461, type: !1691)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 5440, elements: !1692)
!1692 = !{!1693}
!1693 = !DISubrange(count: 680)
!1694 = !DILocation(line: 461, column: 11, scope: !1685)
!1695 = !DILocalVariable(name: "state", scope: !1685, file: !1278, line: 462, type: !1633)
!1696 = !DILocation(line: 462, column: 19, scope: !1685)
!1697 = !DILocation(line: 464, column: 3, scope: !1685)
!1698 = !DILocation(line: 465, column: 3, scope: !1685)
!1699 = !DILocation(line: 466, column: 3, scope: !1685)
!1700 = !DILocation(line: 467, column: 1, scope: !1685)
!1701 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyz_unpack", scope: !1278, file: !1278, line: 822, type: !1702, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !776, !324}
!1704 = !DILocalVariable(name: "r", arg: 1, scope: !1701, file: !1278, line: 822, type: !776)
!1705 = !DILocation(line: 0, scope: !1701)
!1706 = !DILocalVariable(name: "a", arg: 2, scope: !1701, file: !1278, line: 822, type: !324)
!1707 = !DILocalVariable(name: "i", scope: !1701, file: !1278, line: 823, type: !55)
!1708 = !DILocation(line: 854, column: 8, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1701, file: !1278, line: 854, column: 3)
!1710 = !DILocation(line: 854, scope: !1709)
!1711 = !DILocation(line: 854, column: 17, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !1278, line: 854, column: 3)
!1713 = !DILocation(line: 854, column: 3, scope: !1709)
!1714 = !DILocation(line: 855, column: 27, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !1278, line: 854, column: 31)
!1716 = !DILocation(line: 855, column: 23, scope: !1715)
!1717 = !DILocation(line: 855, column: 12, scope: !1715)
!1718 = !DILocation(line: 855, column: 5, scope: !1715)
!1719 = !DILocation(line: 855, column: 21, scope: !1715)
!1720 = !DILocation(line: 856, column: 38, scope: !1715)
!1721 = !DILocation(line: 856, column: 34, scope: !1715)
!1722 = !DILocation(line: 856, column: 24, scope: !1715)
!1723 = !DILocation(line: 856, column: 47, scope: !1715)
!1724 = !DILocation(line: 856, column: 12, scope: !1715)
!1725 = !DILocation(line: 856, column: 5, scope: !1715)
!1726 = !DILocation(line: 856, column: 21, scope: !1715)
!1727 = !DILocation(line: 857, column: 38, scope: !1715)
!1728 = !DILocation(line: 857, column: 34, scope: !1715)
!1729 = !DILocation(line: 857, column: 24, scope: !1715)
!1730 = !DILocation(line: 857, column: 47, scope: !1715)
!1731 = !DILocation(line: 857, column: 12, scope: !1715)
!1732 = !DILocation(line: 857, column: 5, scope: !1715)
!1733 = !DILocation(line: 857, column: 21, scope: !1715)
!1734 = !DILocation(line: 858, column: 12, scope: !1715)
!1735 = !DILocation(line: 858, column: 5, scope: !1715)
!1736 = !DILocation(line: 858, column: 21, scope: !1715)
!1737 = !DILocation(line: 860, column: 27, scope: !1715)
!1738 = !DILocation(line: 860, column: 23, scope: !1715)
!1739 = !DILocation(line: 860, column: 36, scope: !1715)
!1740 = !DILocation(line: 860, column: 12, scope: !1715)
!1741 = !DILocation(line: 860, column: 16, scope: !1715)
!1742 = !DILocation(line: 860, column: 5, scope: !1715)
!1743 = !DILocation(line: 860, column: 21, scope: !1715)
!1744 = !DILocation(line: 861, column: 38, scope: !1715)
!1745 = !DILocation(line: 861, column: 34, scope: !1715)
!1746 = !DILocation(line: 861, column: 24, scope: !1715)
!1747 = !DILocation(line: 861, column: 47, scope: !1715)
!1748 = !DILocation(line: 861, column: 12, scope: !1715)
!1749 = !DILocation(line: 861, column: 16, scope: !1715)
!1750 = !DILocation(line: 861, column: 5, scope: !1715)
!1751 = !DILocation(line: 861, column: 21, scope: !1715)
!1752 = !DILocation(line: 862, column: 38, scope: !1715)
!1753 = !DILocation(line: 862, column: 34, scope: !1715)
!1754 = !DILocation(line: 862, column: 24, scope: !1715)
!1755 = !DILocation(line: 862, column: 47, scope: !1715)
!1756 = !DILocation(line: 862, column: 12, scope: !1715)
!1757 = !DILocation(line: 862, column: 16, scope: !1715)
!1758 = !DILocation(line: 862, column: 5, scope: !1715)
!1759 = !DILocation(line: 862, column: 21, scope: !1715)
!1760 = !DILocation(line: 866, column: 39, scope: !1715)
!1761 = !DILocation(line: 866, column: 32, scope: !1715)
!1762 = !DILocation(line: 866, column: 30, scope: !1715)
!1763 = !DILocation(line: 866, column: 12, scope: !1715)
!1764 = !DILocation(line: 866, column: 5, scope: !1715)
!1765 = !DILocation(line: 866, column: 21, scope: !1715)
!1766 = !DILocation(line: 867, column: 39, scope: !1715)
!1767 = !DILocation(line: 867, column: 43, scope: !1715)
!1768 = !DILocation(line: 867, column: 32, scope: !1715)
!1769 = !DILocation(line: 867, column: 30, scope: !1715)
!1770 = !DILocation(line: 867, column: 12, scope: !1715)
!1771 = !DILocation(line: 867, column: 16, scope: !1715)
!1772 = !DILocation(line: 867, column: 5, scope: !1715)
!1773 = !DILocation(line: 867, column: 21, scope: !1715)
!1774 = !DILocation(line: 854, column: 26, scope: !1712)
!1775 = !DILocation(line: 854, column: 3, scope: !1712)
!1776 = distinct !{!1776, !1713, !1777, !200}
!1777 = !DILocation(line: 868, column: 3, scope: !1709)
!1778 = !DILocation(line: 872, column: 1, scope: !1701)
!1779 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_poly_challenge", scope: !1278, file: !1278, line: 480, type: !1702, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1780 = !DILocalVariable(name: "c", arg: 1, scope: !1779, file: !1278, line: 480, type: !776)
!1781 = !DILocation(line: 0, scope: !1779)
!1782 = !DILocalVariable(name: "seed", arg: 2, scope: !1779, file: !1278, line: 480, type: !324)
!1783 = !DILocalVariable(name: "buf", scope: !1779, file: !1278, line: 483, type: !1784)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1088, elements: !1785)
!1785 = !{!1786}
!1786 = !DISubrange(count: 136)
!1787 = !DILocation(line: 483, column: 11, scope: !1779)
!1788 = !DILocalVariable(name: "state", scope: !1779, file: !1278, line: 484, type: !386)
!1789 = !DILocation(line: 484, column: 16, scope: !1779)
!1790 = !DILocation(line: 486, column: 3, scope: !1779)
!1791 = !DILocation(line: 487, column: 3, scope: !1779)
!1792 = !DILocation(line: 488, column: 3, scope: !1779)
!1793 = !DILocation(line: 489, column: 3, scope: !1779)
!1794 = !DILocalVariable(name: "signs", scope: !1779, file: !1278, line: 482, type: !85)
!1795 = !DILocalVariable(name: "i", scope: !1779, file: !1278, line: 481, type: !55)
!1796 = !DILocation(line: 492, column: 8, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1779, file: !1278, line: 492, column: 3)
!1798 = !DILocation(line: 492, scope: !1797)
!1799 = !DILocation(line: 492, column: 17, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !1278, line: 492, column: 3)
!1801 = !DILocation(line: 492, column: 3, scope: !1797)
!1802 = !DILocation(line: 496, column: 3, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1779, file: !1278, line: 496, column: 3)
!1804 = !DILocation(line: 493, column: 24, scope: !1800)
!1805 = !DILocation(line: 493, column: 14, scope: !1800)
!1806 = !DILocation(line: 493, column: 36, scope: !1800)
!1807 = !DILocation(line: 493, column: 31, scope: !1800)
!1808 = !DILocation(line: 493, column: 11, scope: !1800)
!1809 = !DILocation(line: 492, column: 22, scope: !1800)
!1810 = !DILocation(line: 492, column: 3, scope: !1800)
!1811 = distinct !{!1811, !1801, !1812, !200}
!1812 = !DILocation(line: 493, column: 38, scope: !1797)
!1813 = !DILocation(line: 496, scope: !1803)
!1814 = !DILocation(line: 496, column: 17, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1803, file: !1278, line: 496, column: 3)
!1816 = !DILocation(line: 498, column: 3, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1779, file: !1278, line: 498, column: 3)
!1818 = !DILocation(line: 497, column: 5, scope: !1815)
!1819 = !DILocation(line: 497, column: 13, scope: !1815)
!1820 = !DILocation(line: 496, column: 22, scope: !1815)
!1821 = !DILocation(line: 496, column: 3, scope: !1815)
!1822 = distinct !{!1822, !1802, !1823, !200}
!1823 = !DILocation(line: 497, column: 15, scope: !1803)
!1824 = !DILocation(line: 498, scope: !1817)
!1825 = !DILocalVariable(name: "pos", scope: !1779, file: !1278, line: 481, type: !55)
!1826 = !DILocation(line: 498, column: 23, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1817, file: !1278, line: 498, column: 3)
!1828 = !DILocation(line: 499, column: 5, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1827, file: !1278, line: 498, column: 33)
!1830 = !DILocation(line: 500, column: 15, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !1278, line: 500, column: 11)
!1832 = distinct !DILexicalBlock(scope: !1829, file: !1278, line: 499, column: 8)
!1833 = !DILocation(line: 501, column: 9, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1831, file: !1278, line: 500, column: 33)
!1835 = !DILocation(line: 503, column: 7, scope: !1834)
!1836 = !DILocation(line: 505, column: 18, scope: !1832)
!1837 = !DILocation(line: 505, column: 11, scope: !1832)
!1838 = !DILocalVariable(name: "b", scope: !1779, file: !1278, line: 481, type: !55)
!1839 = !DILocation(line: 506, column: 16, scope: !1829)
!1840 = !DILocation(line: 506, column: 5, scope: !1832)
!1841 = distinct !{!1841, !1828, !1842, !200}
!1842 = !DILocation(line: 506, column: 19, scope: !1829)
!1843 = !DILocation(line: 508, column: 15, scope: !1829)
!1844 = !DILocation(line: 508, column: 5, scope: !1829)
!1845 = !DILocation(line: 508, column: 13, scope: !1829)
!1846 = !DILocation(line: 509, column: 15, scope: !1829)
!1847 = !DILocation(line: 509, column: 5, scope: !1829)
!1848 = !DILocation(line: 509, column: 13, scope: !1829)
!1849 = !DILocation(line: 510, column: 11, scope: !1829)
!1850 = !DILocation(line: 498, column: 28, scope: !1827)
!1851 = !DILocation(line: 498, column: 3, scope: !1827)
!1852 = distinct !{!1852, !1816, !1853, !200}
!1853 = !DILocation(line: 511, column: 3, scope: !1817)
!1854 = !DILocation(line: 512, column: 1, scope: !1779)
!1855 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyeta_pack", scope: !1278, file: !1278, line: 523, type: !1856, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !47, !925}
!1858 = !DILocalVariable(name: "r", arg: 1, scope: !1855, file: !1278, line: 523, type: !47)
!1859 = !DILocation(line: 0, scope: !1855)
!1860 = !DILocalVariable(name: "a", arg: 2, scope: !1855, file: !1278, line: 523, type: !925)
!1861 = !DILocalVariable(name: "i", scope: !1855, file: !1278, line: 524, type: !55)
!1862 = !DILocation(line: 544, column: 8, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1855, file: !1278, line: 544, column: 3)
!1864 = !DILocation(line: 544, scope: !1863)
!1865 = !DILocation(line: 544, column: 17, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1863, file: !1278, line: 544, column: 3)
!1867 = !DILocation(line: 544, column: 3, scope: !1863)
!1868 = !DILocation(line: 545, column: 25, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1866, file: !1278, line: 544, column: 31)
!1870 = !DILocation(line: 545, column: 18, scope: !1869)
!1871 = !DILocation(line: 545, column: 12, scope: !1869)
!1872 = !DILocalVariable(name: "t", scope: !1855, file: !1278, line: 525, type: !1873)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !1874)
!1874 = !{!1875}
!1875 = !DISubrange(count: 8)
!1876 = !DILocation(line: 546, column: 25, scope: !1869)
!1877 = !DILocation(line: 546, column: 29, scope: !1869)
!1878 = !DILocation(line: 546, column: 18, scope: !1869)
!1879 = !DILocation(line: 547, column: 25, scope: !1869)
!1880 = !DILocation(line: 547, column: 17, scope: !1869)
!1881 = !DILocation(line: 547, column: 12, scope: !1869)
!1882 = !DILocation(line: 547, column: 5, scope: !1869)
!1883 = !DILocation(line: 547, column: 10, scope: !1869)
!1884 = !DILocation(line: 544, column: 26, scope: !1866)
!1885 = !DILocation(line: 544, column: 3, scope: !1866)
!1886 = distinct !{!1886, !1867, !1887, !200}
!1887 = !DILocation(line: 548, column: 3, scope: !1863)
!1888 = !DILocation(line: 552, column: 1, scope: !1855)
!1889 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyeta_unpack", scope: !1278, file: !1278, line: 562, type: !1702, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1890 = !DILocalVariable(name: "r", arg: 1, scope: !1889, file: !1278, line: 562, type: !776)
!1891 = !DILocation(line: 0, scope: !1889)
!1892 = !DILocalVariable(name: "a", arg: 2, scope: !1889, file: !1278, line: 562, type: !324)
!1893 = !DILocalVariable(name: "i", scope: !1889, file: !1278, line: 563, type: !55)
!1894 = !DILocation(line: 587, column: 8, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !1278, line: 587, column: 3)
!1896 = !DILocation(line: 587, scope: !1895)
!1897 = !DILocation(line: 587, column: 17, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1895, file: !1278, line: 587, column: 3)
!1899 = !DILocation(line: 587, column: 3, scope: !1895)
!1900 = !DILocation(line: 588, column: 23, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1898, file: !1278, line: 587, column: 31)
!1902 = !DILocation(line: 588, column: 28, scope: !1901)
!1903 = !DILocation(line: 588, column: 12, scope: !1901)
!1904 = !DILocation(line: 588, column: 5, scope: !1901)
!1905 = !DILocation(line: 588, column: 21, scope: !1901)
!1906 = !DILocation(line: 589, column: 23, scope: !1901)
!1907 = !DILocation(line: 589, column: 28, scope: !1901)
!1908 = !DILocation(line: 589, column: 12, scope: !1901)
!1909 = !DILocation(line: 589, column: 16, scope: !1901)
!1910 = !DILocation(line: 589, column: 5, scope: !1901)
!1911 = !DILocation(line: 589, column: 21, scope: !1901)
!1912 = !DILocation(line: 590, column: 36, scope: !1901)
!1913 = !DILocation(line: 590, column: 29, scope: !1901)
!1914 = !DILocation(line: 590, column: 27, scope: !1901)
!1915 = !DILocation(line: 590, column: 12, scope: !1901)
!1916 = !DILocation(line: 590, column: 5, scope: !1901)
!1917 = !DILocation(line: 590, column: 21, scope: !1901)
!1918 = !DILocation(line: 591, column: 36, scope: !1901)
!1919 = !DILocation(line: 591, column: 40, scope: !1901)
!1920 = !DILocation(line: 591, column: 29, scope: !1901)
!1921 = !DILocation(line: 591, column: 27, scope: !1901)
!1922 = !DILocation(line: 591, column: 12, scope: !1901)
!1923 = !DILocation(line: 591, column: 16, scope: !1901)
!1924 = !DILocation(line: 591, column: 5, scope: !1901)
!1925 = !DILocation(line: 591, column: 21, scope: !1901)
!1926 = !DILocation(line: 587, column: 26, scope: !1898)
!1927 = !DILocation(line: 587, column: 3, scope: !1898)
!1928 = distinct !{!1928, !1899, !1929, !200}
!1929 = !DILocation(line: 592, column: 3, scope: !1895)
!1930 = !DILocation(line: 596, column: 1, scope: !1889)
!1931 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyt1_pack", scope: !1278, file: !1278, line: 608, type: !1856, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1932 = !DILocalVariable(name: "r", arg: 1, scope: !1931, file: !1278, line: 608, type: !47)
!1933 = !DILocation(line: 0, scope: !1931)
!1934 = !DILocalVariable(name: "a", arg: 2, scope: !1931, file: !1278, line: 608, type: !925)
!1935 = !DILocalVariable(name: "i", scope: !1931, file: !1278, line: 609, type: !55)
!1936 = !DILocation(line: 612, column: 8, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1931, file: !1278, line: 612, column: 3)
!1938 = !DILocation(line: 612, scope: !1937)
!1939 = !DILocation(line: 612, column: 17, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !1278, line: 612, column: 3)
!1941 = !DILocation(line: 612, column: 3, scope: !1937)
!1942 = !DILocation(line: 613, column: 28, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1940, file: !1278, line: 612, column: 31)
!1944 = !DILocation(line: 613, column: 21, scope: !1943)
!1945 = !DILocation(line: 613, column: 20, scope: !1943)
!1946 = !DILocation(line: 613, column: 9, scope: !1943)
!1947 = !DILocation(line: 613, column: 5, scope: !1943)
!1948 = !DILocation(line: 613, column: 18, scope: !1943)
!1949 = !DILocation(line: 614, column: 28, scope: !1943)
!1950 = !DILocation(line: 614, column: 21, scope: !1943)
!1951 = !DILocation(line: 614, column: 37, scope: !1943)
!1952 = !DILocation(line: 614, column: 53, scope: !1943)
!1953 = !DILocation(line: 614, column: 57, scope: !1943)
!1954 = !DILocation(line: 614, column: 46, scope: !1943)
!1955 = !DILocation(line: 614, column: 62, scope: !1943)
!1956 = !DILocation(line: 614, column: 43, scope: !1943)
!1957 = !DILocation(line: 614, column: 20, scope: !1943)
!1958 = !DILocation(line: 614, column: 9, scope: !1943)
!1959 = !DILocation(line: 614, column: 5, scope: !1943)
!1960 = !DILocation(line: 614, column: 18, scope: !1943)
!1961 = !DILocation(line: 615, column: 28, scope: !1943)
!1962 = !DILocation(line: 615, column: 32, scope: !1943)
!1963 = !DILocation(line: 615, column: 21, scope: !1943)
!1964 = !DILocation(line: 615, column: 37, scope: !1943)
!1965 = !DILocation(line: 615, column: 53, scope: !1943)
!1966 = !DILocation(line: 615, column: 57, scope: !1943)
!1967 = !DILocation(line: 615, column: 46, scope: !1943)
!1968 = !DILocation(line: 615, column: 62, scope: !1943)
!1969 = !DILocation(line: 615, column: 43, scope: !1943)
!1970 = !DILocation(line: 615, column: 20, scope: !1943)
!1971 = !DILocation(line: 615, column: 9, scope: !1943)
!1972 = !DILocation(line: 615, column: 5, scope: !1943)
!1973 = !DILocation(line: 615, column: 18, scope: !1943)
!1974 = !DILocation(line: 616, column: 28, scope: !1943)
!1975 = !DILocation(line: 616, column: 32, scope: !1943)
!1976 = !DILocation(line: 616, column: 21, scope: !1943)
!1977 = !DILocation(line: 616, column: 37, scope: !1943)
!1978 = !DILocation(line: 616, column: 53, scope: !1943)
!1979 = !DILocation(line: 616, column: 57, scope: !1943)
!1980 = !DILocation(line: 616, column: 46, scope: !1943)
!1981 = !DILocation(line: 616, column: 62, scope: !1943)
!1982 = !DILocation(line: 616, column: 43, scope: !1943)
!1983 = !DILocation(line: 616, column: 20, scope: !1943)
!1984 = !DILocation(line: 616, column: 9, scope: !1943)
!1985 = !DILocation(line: 616, column: 5, scope: !1943)
!1986 = !DILocation(line: 616, column: 18, scope: !1943)
!1987 = !DILocation(line: 617, column: 28, scope: !1943)
!1988 = !DILocation(line: 617, column: 32, scope: !1943)
!1989 = !DILocation(line: 617, column: 21, scope: !1943)
!1990 = !DILocation(line: 617, column: 37, scope: !1943)
!1991 = !DILocation(line: 617, column: 20, scope: !1943)
!1992 = !DILocation(line: 617, column: 9, scope: !1943)
!1993 = !DILocation(line: 617, column: 5, scope: !1943)
!1994 = !DILocation(line: 617, column: 18, scope: !1943)
!1995 = !DILocation(line: 612, column: 26, scope: !1940)
!1996 = !DILocation(line: 612, column: 3, scope: !1940)
!1997 = distinct !{!1997, !1941, !1998, !200}
!1998 = !DILocation(line: 618, column: 3, scope: !1937)
!1999 = !DILocation(line: 621, column: 1, scope: !1931)
!2000 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyt1_unpack", scope: !1278, file: !1278, line: 632, type: !1702, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2001 = !DILocalVariable(name: "r", arg: 1, scope: !2000, file: !1278, line: 632, type: !776)
!2002 = !DILocation(line: 0, scope: !2000)
!2003 = !DILocalVariable(name: "a", arg: 2, scope: !2000, file: !1278, line: 632, type: !324)
!2004 = !DILocalVariable(name: "i", scope: !2000, file: !1278, line: 633, type: !55)
!2005 = !DILocation(line: 636, column: 8, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2000, file: !1278, line: 636, column: 3)
!2007 = !DILocation(line: 636, scope: !2006)
!2008 = !DILocation(line: 636, column: 17, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !1278, line: 636, column: 3)
!2010 = !DILocation(line: 636, column: 3, scope: !2006)
!2011 = !DILocation(line: 638, column: 15, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2009, file: !1278, line: 636, column: 31)
!2013 = !DILocation(line: 638, column: 11, scope: !2012)
!2014 = !DILocation(line: 638, column: 47, scope: !2012)
!2015 = !DILocation(line: 638, column: 43, scope: !2012)
!2016 = !DILocation(line: 638, column: 33, scope: !2012)
!2017 = !DILocation(line: 638, column: 56, scope: !2012)
!2018 = !DILocation(line: 638, column: 63, scope: !2012)
!2019 = !DILocation(line: 637, column: 12, scope: !2012)
!2020 = !DILocation(line: 637, column: 5, scope: !2012)
!2021 = !DILocation(line: 637, column: 21, scope: !2012)
!2022 = !DILocation(line: 640, column: 15, scope: !2012)
!2023 = !DILocation(line: 640, column: 11, scope: !2012)
!2024 = !DILocation(line: 640, column: 24, scope: !2012)
!2025 = !DILocation(line: 640, column: 47, scope: !2012)
!2026 = !DILocation(line: 640, column: 43, scope: !2012)
!2027 = !DILocation(line: 640, column: 33, scope: !2012)
!2028 = !DILocation(line: 640, column: 56, scope: !2012)
!2029 = !DILocation(line: 640, column: 63, scope: !2012)
!2030 = !DILocation(line: 639, column: 12, scope: !2012)
!2031 = !DILocation(line: 639, column: 16, scope: !2012)
!2032 = !DILocation(line: 639, column: 5, scope: !2012)
!2033 = !DILocation(line: 639, column: 21, scope: !2012)
!2034 = !DILocation(line: 642, column: 15, scope: !2012)
!2035 = !DILocation(line: 642, column: 11, scope: !2012)
!2036 = !DILocation(line: 642, column: 24, scope: !2012)
!2037 = !DILocation(line: 642, column: 47, scope: !2012)
!2038 = !DILocation(line: 642, column: 43, scope: !2012)
!2039 = !DILocation(line: 642, column: 33, scope: !2012)
!2040 = !DILocation(line: 642, column: 56, scope: !2012)
!2041 = !DILocation(line: 642, column: 63, scope: !2012)
!2042 = !DILocation(line: 641, column: 12, scope: !2012)
!2043 = !DILocation(line: 641, column: 16, scope: !2012)
!2044 = !DILocation(line: 641, column: 5, scope: !2012)
!2045 = !DILocation(line: 641, column: 21, scope: !2012)
!2046 = !DILocation(line: 644, column: 15, scope: !2012)
!2047 = !DILocation(line: 644, column: 11, scope: !2012)
!2048 = !DILocation(line: 644, column: 24, scope: !2012)
!2049 = !DILocation(line: 644, column: 47, scope: !2012)
!2050 = !DILocation(line: 644, column: 43, scope: !2012)
!2051 = !DILocation(line: 644, column: 33, scope: !2012)
!2052 = !DILocation(line: 644, column: 56, scope: !2012)
!2053 = !DILocation(line: 644, column: 30, scope: !2012)
!2054 = !DILocation(line: 643, column: 12, scope: !2012)
!2055 = !DILocation(line: 643, column: 16, scope: !2012)
!2056 = !DILocation(line: 643, column: 5, scope: !2012)
!2057 = !DILocation(line: 643, column: 21, scope: !2012)
!2058 = !DILocation(line: 636, column: 26, scope: !2009)
!2059 = !DILocation(line: 636, column: 3, scope: !2009)
!2060 = distinct !{!2060, !2010, !2061, !200}
!2061 = !DILocation(line: 645, column: 3, scope: !2006)
!2062 = !DILocation(line: 648, column: 1, scope: !2000)
!2063 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyt0_pack", scope: !1278, file: !1278, line: 659, type: !1856, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2064 = !DILocalVariable(name: "r", arg: 1, scope: !2063, file: !1278, line: 659, type: !47)
!2065 = !DILocation(line: 0, scope: !2063)
!2066 = !DILocalVariable(name: "a", arg: 2, scope: !2063, file: !1278, line: 659, type: !925)
!2067 = !DILocalVariable(name: "i", scope: !2063, file: !1278, line: 660, type: !55)
!2068 = !DILocation(line: 664, column: 8, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2063, file: !1278, line: 664, column: 3)
!2070 = !DILocation(line: 664, scope: !2069)
!2071 = !DILocation(line: 664, column: 17, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !1278, line: 664, column: 3)
!2073 = !DILocation(line: 664, column: 3, scope: !2069)
!2074 = !DILocation(line: 665, column: 36, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !1278, line: 664, column: 31)
!2076 = !DILocation(line: 665, column: 29, scope: !2075)
!2077 = !DILocation(line: 665, column: 27, scope: !2075)
!2078 = !DILocalVariable(name: "t", scope: !2063, file: !1278, line: 661, type: !2079)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !1874)
!2080 = !DILocation(line: 666, column: 36, scope: !2075)
!2081 = !DILocation(line: 666, column: 40, scope: !2075)
!2082 = !DILocation(line: 666, column: 29, scope: !2075)
!2083 = !DILocation(line: 666, column: 27, scope: !2075)
!2084 = !DILocation(line: 667, column: 36, scope: !2075)
!2085 = !DILocation(line: 667, column: 40, scope: !2075)
!2086 = !DILocation(line: 667, column: 29, scope: !2075)
!2087 = !DILocation(line: 667, column: 27, scope: !2075)
!2088 = !DILocation(line: 668, column: 36, scope: !2075)
!2089 = !DILocation(line: 668, column: 40, scope: !2075)
!2090 = !DILocation(line: 668, column: 29, scope: !2075)
!2091 = !DILocation(line: 668, column: 27, scope: !2075)
!2092 = !DILocation(line: 669, column: 36, scope: !2075)
!2093 = !DILocation(line: 669, column: 40, scope: !2075)
!2094 = !DILocation(line: 669, column: 29, scope: !2075)
!2095 = !DILocation(line: 669, column: 27, scope: !2075)
!2096 = !DILocation(line: 670, column: 36, scope: !2075)
!2097 = !DILocation(line: 670, column: 40, scope: !2075)
!2098 = !DILocation(line: 670, column: 29, scope: !2075)
!2099 = !DILocation(line: 670, column: 27, scope: !2075)
!2100 = !DILocation(line: 671, column: 36, scope: !2075)
!2101 = !DILocation(line: 671, column: 40, scope: !2075)
!2102 = !DILocation(line: 671, column: 29, scope: !2075)
!2103 = !DILocation(line: 671, column: 27, scope: !2075)
!2104 = !DILocation(line: 672, column: 36, scope: !2075)
!2105 = !DILocation(line: 672, column: 40, scope: !2075)
!2106 = !DILocation(line: 672, column: 29, scope: !2075)
!2107 = !DILocation(line: 672, column: 27, scope: !2075)
!2108 = !DILocation(line: 674, column: 21, scope: !2075)
!2109 = !DILocation(line: 674, column: 10, scope: !2075)
!2110 = !DILocation(line: 674, column: 5, scope: !2075)
!2111 = !DILocation(line: 674, column: 19, scope: !2075)
!2112 = !DILocation(line: 675, column: 26, scope: !2075)
!2113 = !DILocation(line: 675, column: 21, scope: !2075)
!2114 = !DILocation(line: 675, column: 10, scope: !2075)
!2115 = !DILocation(line: 675, column: 5, scope: !2075)
!2116 = !DILocation(line: 675, column: 19, scope: !2075)
!2117 = !DILocation(line: 676, column: 10, scope: !2075)
!2118 = !DILocation(line: 676, column: 5, scope: !2075)
!2119 = !DILocation(line: 676, column: 19, scope: !2075)
!2120 = !DILocation(line: 677, column: 26, scope: !2075)
!2121 = !DILocation(line: 677, column: 21, scope: !2075)
!2122 = !DILocation(line: 677, column: 10, scope: !2075)
!2123 = !DILocation(line: 677, column: 5, scope: !2075)
!2124 = !DILocation(line: 677, column: 19, scope: !2075)
!2125 = !DILocation(line: 678, column: 26, scope: !2075)
!2126 = !DILocation(line: 678, column: 21, scope: !2075)
!2127 = !DILocation(line: 678, column: 10, scope: !2075)
!2128 = !DILocation(line: 678, column: 5, scope: !2075)
!2129 = !DILocation(line: 678, column: 19, scope: !2075)
!2130 = !DILocation(line: 679, column: 10, scope: !2075)
!2131 = !DILocation(line: 679, column: 5, scope: !2075)
!2132 = !DILocation(line: 679, column: 19, scope: !2075)
!2133 = !DILocation(line: 680, column: 26, scope: !2075)
!2134 = !DILocation(line: 680, column: 21, scope: !2075)
!2135 = !DILocation(line: 680, column: 10, scope: !2075)
!2136 = !DILocation(line: 680, column: 5, scope: !2075)
!2137 = !DILocation(line: 680, column: 19, scope: !2075)
!2138 = !DILocation(line: 681, column: 10, scope: !2075)
!2139 = !DILocation(line: 681, column: 5, scope: !2075)
!2140 = !DILocation(line: 681, column: 19, scope: !2075)
!2141 = !DILocation(line: 682, column: 26, scope: !2075)
!2142 = !DILocation(line: 682, column: 21, scope: !2075)
!2143 = !DILocation(line: 682, column: 10, scope: !2075)
!2144 = !DILocation(line: 682, column: 5, scope: !2075)
!2145 = !DILocation(line: 682, column: 19, scope: !2075)
!2146 = !DILocation(line: 683, column: 26, scope: !2075)
!2147 = !DILocation(line: 683, column: 21, scope: !2075)
!2148 = !DILocation(line: 683, column: 10, scope: !2075)
!2149 = !DILocation(line: 683, column: 5, scope: !2075)
!2150 = !DILocation(line: 683, column: 19, scope: !2075)
!2151 = !DILocation(line: 684, column: 10, scope: !2075)
!2152 = !DILocation(line: 684, column: 5, scope: !2075)
!2153 = !DILocation(line: 684, column: 19, scope: !2075)
!2154 = !DILocation(line: 685, column: 26, scope: !2075)
!2155 = !DILocation(line: 685, column: 21, scope: !2075)
!2156 = !DILocation(line: 685, column: 10, scope: !2075)
!2157 = !DILocation(line: 685, column: 5, scope: !2075)
!2158 = !DILocation(line: 685, column: 19, scope: !2075)
!2159 = !DILocation(line: 686, column: 26, scope: !2075)
!2160 = !DILocation(line: 686, column: 21, scope: !2075)
!2161 = !DILocation(line: 686, column: 10, scope: !2075)
!2162 = !DILocation(line: 686, column: 5, scope: !2075)
!2163 = !DILocation(line: 686, column: 19, scope: !2075)
!2164 = !DILocation(line: 687, column: 10, scope: !2075)
!2165 = !DILocation(line: 687, column: 5, scope: !2075)
!2166 = !DILocation(line: 687, column: 19, scope: !2075)
!2167 = !DILocation(line: 688, column: 26, scope: !2075)
!2168 = !DILocation(line: 688, column: 21, scope: !2075)
!2169 = !DILocation(line: 688, column: 10, scope: !2075)
!2170 = !DILocation(line: 688, column: 5, scope: !2075)
!2171 = !DILocation(line: 688, column: 19, scope: !2075)
!2172 = !DILocation(line: 689, column: 10, scope: !2075)
!2173 = !DILocation(line: 689, column: 5, scope: !2075)
!2174 = !DILocation(line: 689, column: 19, scope: !2075)
!2175 = !DILocation(line: 690, column: 27, scope: !2075)
!2176 = !DILocation(line: 690, column: 22, scope: !2075)
!2177 = !DILocation(line: 690, column: 10, scope: !2075)
!2178 = !DILocation(line: 690, column: 5, scope: !2075)
!2179 = !DILocation(line: 690, column: 20, scope: !2075)
!2180 = !DILocation(line: 691, column: 27, scope: !2075)
!2181 = !DILocation(line: 691, column: 22, scope: !2075)
!2182 = !DILocation(line: 691, column: 10, scope: !2075)
!2183 = !DILocation(line: 691, column: 5, scope: !2075)
!2184 = !DILocation(line: 691, column: 20, scope: !2075)
!2185 = !DILocation(line: 692, column: 10, scope: !2075)
!2186 = !DILocation(line: 692, column: 5, scope: !2075)
!2187 = !DILocation(line: 692, column: 20, scope: !2075)
!2188 = !DILocation(line: 693, column: 27, scope: !2075)
!2189 = !DILocation(line: 693, column: 22, scope: !2075)
!2190 = !DILocation(line: 693, column: 10, scope: !2075)
!2191 = !DILocation(line: 693, column: 5, scope: !2075)
!2192 = !DILocation(line: 693, column: 20, scope: !2075)
!2193 = !DILocation(line: 664, column: 26, scope: !2072)
!2194 = !DILocation(line: 664, column: 3, scope: !2072)
!2195 = distinct !{!2195, !2073, !2196, !200}
!2196 = !DILocation(line: 694, column: 3, scope: !2069)
!2197 = !DILocation(line: 697, column: 1, scope: !2063)
!2198 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyt0_unpack", scope: !1278, file: !1278, line: 707, type: !1702, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2199 = !DILocalVariable(name: "r", arg: 1, scope: !2198, file: !1278, line: 707, type: !776)
!2200 = !DILocation(line: 0, scope: !2198)
!2201 = !DILocalVariable(name: "a", arg: 2, scope: !2198, file: !1278, line: 707, type: !324)
!2202 = !DILocalVariable(name: "i", scope: !2198, file: !1278, line: 708, type: !55)
!2203 = !DILocation(line: 711, column: 8, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2198, file: !1278, line: 711, column: 3)
!2205 = !DILocation(line: 711, scope: !2204)
!2206 = !DILocation(line: 711, column: 17, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !1278, line: 711, column: 3)
!2208 = !DILocation(line: 711, column: 3, scope: !2204)
!2209 = !DILocation(line: 712, column: 28, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !1278, line: 711, column: 31)
!2211 = !DILocation(line: 712, column: 23, scope: !2210)
!2212 = !DILocation(line: 712, column: 12, scope: !2210)
!2213 = !DILocation(line: 712, column: 5, scope: !2210)
!2214 = !DILocation(line: 712, column: 21, scope: !2210)
!2215 = !DILocation(line: 713, column: 39, scope: !2210)
!2216 = !DILocation(line: 713, column: 34, scope: !2210)
!2217 = !DILocation(line: 713, column: 24, scope: !2210)
!2218 = !DILocation(line: 713, column: 48, scope: !2210)
!2219 = !DILocation(line: 713, column: 12, scope: !2210)
!2220 = !DILocation(line: 713, column: 5, scope: !2210)
!2221 = !DILocation(line: 713, column: 21, scope: !2210)
!2222 = !DILocation(line: 714, column: 12, scope: !2210)
!2223 = !DILocation(line: 714, column: 5, scope: !2210)
!2224 = !DILocation(line: 714, column: 21, scope: !2210)
!2225 = !DILocation(line: 716, column: 28, scope: !2210)
!2226 = !DILocation(line: 716, column: 23, scope: !2210)
!2227 = !DILocation(line: 716, column: 37, scope: !2210)
!2228 = !DILocation(line: 716, column: 12, scope: !2210)
!2229 = !DILocation(line: 716, column: 16, scope: !2210)
!2230 = !DILocation(line: 716, column: 5, scope: !2210)
!2231 = !DILocation(line: 716, column: 21, scope: !2210)
!2232 = !DILocation(line: 717, column: 39, scope: !2210)
!2233 = !DILocation(line: 717, column: 34, scope: !2210)
!2234 = !DILocation(line: 717, column: 24, scope: !2210)
!2235 = !DILocation(line: 717, column: 48, scope: !2210)
!2236 = !DILocation(line: 717, column: 12, scope: !2210)
!2237 = !DILocation(line: 717, column: 16, scope: !2210)
!2238 = !DILocation(line: 717, column: 5, scope: !2210)
!2239 = !DILocation(line: 717, column: 21, scope: !2210)
!2240 = !DILocation(line: 718, column: 39, scope: !2210)
!2241 = !DILocation(line: 718, column: 34, scope: !2210)
!2242 = !DILocation(line: 718, column: 24, scope: !2210)
!2243 = !DILocation(line: 718, column: 48, scope: !2210)
!2244 = !DILocation(line: 718, column: 12, scope: !2210)
!2245 = !DILocation(line: 718, column: 16, scope: !2210)
!2246 = !DILocation(line: 718, column: 5, scope: !2210)
!2247 = !DILocation(line: 718, column: 21, scope: !2210)
!2248 = !DILocation(line: 719, column: 12, scope: !2210)
!2249 = !DILocation(line: 719, column: 16, scope: !2210)
!2250 = !DILocation(line: 719, column: 5, scope: !2210)
!2251 = !DILocation(line: 719, column: 21, scope: !2210)
!2252 = !DILocation(line: 721, column: 28, scope: !2210)
!2253 = !DILocation(line: 721, column: 23, scope: !2210)
!2254 = !DILocation(line: 721, column: 37, scope: !2210)
!2255 = !DILocation(line: 721, column: 12, scope: !2210)
!2256 = !DILocation(line: 721, column: 16, scope: !2210)
!2257 = !DILocation(line: 721, column: 5, scope: !2210)
!2258 = !DILocation(line: 721, column: 21, scope: !2210)
!2259 = !DILocation(line: 722, column: 39, scope: !2210)
!2260 = !DILocation(line: 722, column: 34, scope: !2210)
!2261 = !DILocation(line: 722, column: 24, scope: !2210)
!2262 = !DILocation(line: 722, column: 48, scope: !2210)
!2263 = !DILocation(line: 722, column: 12, scope: !2210)
!2264 = !DILocation(line: 722, column: 16, scope: !2210)
!2265 = !DILocation(line: 722, column: 5, scope: !2210)
!2266 = !DILocation(line: 722, column: 21, scope: !2210)
!2267 = !DILocation(line: 723, column: 12, scope: !2210)
!2268 = !DILocation(line: 723, column: 16, scope: !2210)
!2269 = !DILocation(line: 723, column: 5, scope: !2210)
!2270 = !DILocation(line: 723, column: 21, scope: !2210)
!2271 = !DILocation(line: 725, column: 28, scope: !2210)
!2272 = !DILocation(line: 725, column: 23, scope: !2210)
!2273 = !DILocation(line: 725, column: 37, scope: !2210)
!2274 = !DILocation(line: 725, column: 12, scope: !2210)
!2275 = !DILocation(line: 725, column: 16, scope: !2210)
!2276 = !DILocation(line: 725, column: 5, scope: !2210)
!2277 = !DILocation(line: 725, column: 21, scope: !2210)
!2278 = !DILocation(line: 726, column: 39, scope: !2210)
!2279 = !DILocation(line: 726, column: 34, scope: !2210)
!2280 = !DILocation(line: 726, column: 24, scope: !2210)
!2281 = !DILocation(line: 726, column: 48, scope: !2210)
!2282 = !DILocation(line: 726, column: 12, scope: !2210)
!2283 = !DILocation(line: 726, column: 16, scope: !2210)
!2284 = !DILocation(line: 726, column: 5, scope: !2210)
!2285 = !DILocation(line: 726, column: 21, scope: !2210)
!2286 = !DILocation(line: 727, column: 39, scope: !2210)
!2287 = !DILocation(line: 727, column: 34, scope: !2210)
!2288 = !DILocation(line: 727, column: 24, scope: !2210)
!2289 = !DILocation(line: 727, column: 48, scope: !2210)
!2290 = !DILocation(line: 727, column: 12, scope: !2210)
!2291 = !DILocation(line: 727, column: 16, scope: !2210)
!2292 = !DILocation(line: 727, column: 5, scope: !2210)
!2293 = !DILocation(line: 727, column: 21, scope: !2210)
!2294 = !DILocation(line: 728, column: 12, scope: !2210)
!2295 = !DILocation(line: 728, column: 16, scope: !2210)
!2296 = !DILocation(line: 728, column: 5, scope: !2210)
!2297 = !DILocation(line: 728, column: 21, scope: !2210)
!2298 = !DILocation(line: 730, column: 28, scope: !2210)
!2299 = !DILocation(line: 730, column: 23, scope: !2210)
!2300 = !DILocation(line: 730, column: 37, scope: !2210)
!2301 = !DILocation(line: 730, column: 12, scope: !2210)
!2302 = !DILocation(line: 730, column: 16, scope: !2210)
!2303 = !DILocation(line: 730, column: 5, scope: !2210)
!2304 = !DILocation(line: 730, column: 21, scope: !2210)
!2305 = !DILocation(line: 731, column: 39, scope: !2210)
!2306 = !DILocation(line: 731, column: 34, scope: !2210)
!2307 = !DILocation(line: 731, column: 24, scope: !2210)
!2308 = !DILocation(line: 731, column: 48, scope: !2210)
!2309 = !DILocation(line: 731, column: 12, scope: !2210)
!2310 = !DILocation(line: 731, column: 16, scope: !2210)
!2311 = !DILocation(line: 731, column: 5, scope: !2210)
!2312 = !DILocation(line: 731, column: 21, scope: !2210)
!2313 = !DILocation(line: 732, column: 39, scope: !2210)
!2314 = !DILocation(line: 732, column: 34, scope: !2210)
!2315 = !DILocation(line: 732, column: 24, scope: !2210)
!2316 = !DILocation(line: 732, column: 48, scope: !2210)
!2317 = !DILocation(line: 732, column: 12, scope: !2210)
!2318 = !DILocation(line: 732, column: 16, scope: !2210)
!2319 = !DILocation(line: 732, column: 5, scope: !2210)
!2320 = !DILocation(line: 732, column: 21, scope: !2210)
!2321 = !DILocation(line: 733, column: 12, scope: !2210)
!2322 = !DILocation(line: 733, column: 16, scope: !2210)
!2323 = !DILocation(line: 733, column: 5, scope: !2210)
!2324 = !DILocation(line: 733, column: 21, scope: !2210)
!2325 = !DILocation(line: 735, column: 28, scope: !2210)
!2326 = !DILocation(line: 735, column: 23, scope: !2210)
!2327 = !DILocation(line: 735, column: 37, scope: !2210)
!2328 = !DILocation(line: 735, column: 12, scope: !2210)
!2329 = !DILocation(line: 735, column: 16, scope: !2210)
!2330 = !DILocation(line: 735, column: 5, scope: !2210)
!2331 = !DILocation(line: 735, column: 21, scope: !2210)
!2332 = !DILocation(line: 736, column: 39, scope: !2210)
!2333 = !DILocation(line: 736, column: 34, scope: !2210)
!2334 = !DILocation(line: 736, column: 24, scope: !2210)
!2335 = !DILocation(line: 736, column: 48, scope: !2210)
!2336 = !DILocation(line: 736, column: 12, scope: !2210)
!2337 = !DILocation(line: 736, column: 16, scope: !2210)
!2338 = !DILocation(line: 736, column: 5, scope: !2210)
!2339 = !DILocation(line: 736, column: 21, scope: !2210)
!2340 = !DILocation(line: 737, column: 12, scope: !2210)
!2341 = !DILocation(line: 737, column: 16, scope: !2210)
!2342 = !DILocation(line: 737, column: 5, scope: !2210)
!2343 = !DILocation(line: 737, column: 21, scope: !2210)
!2344 = !DILocation(line: 739, column: 28, scope: !2210)
!2345 = !DILocation(line: 739, column: 23, scope: !2210)
!2346 = !DILocation(line: 739, column: 37, scope: !2210)
!2347 = !DILocation(line: 739, column: 12, scope: !2210)
!2348 = !DILocation(line: 739, column: 16, scope: !2210)
!2349 = !DILocation(line: 739, column: 5, scope: !2210)
!2350 = !DILocation(line: 739, column: 21, scope: !2210)
!2351 = !DILocation(line: 740, column: 39, scope: !2210)
!2352 = !DILocation(line: 740, column: 34, scope: !2210)
!2353 = !DILocation(line: 740, column: 24, scope: !2210)
!2354 = !DILocation(line: 740, column: 49, scope: !2210)
!2355 = !DILocation(line: 740, column: 12, scope: !2210)
!2356 = !DILocation(line: 740, column: 16, scope: !2210)
!2357 = !DILocation(line: 740, column: 5, scope: !2210)
!2358 = !DILocation(line: 740, column: 21, scope: !2210)
!2359 = !DILocation(line: 741, column: 39, scope: !2210)
!2360 = !DILocation(line: 741, column: 34, scope: !2210)
!2361 = !DILocation(line: 741, column: 24, scope: !2210)
!2362 = !DILocation(line: 741, column: 49, scope: !2210)
!2363 = !DILocation(line: 741, column: 12, scope: !2210)
!2364 = !DILocation(line: 741, column: 16, scope: !2210)
!2365 = !DILocation(line: 741, column: 5, scope: !2210)
!2366 = !DILocation(line: 741, column: 21, scope: !2210)
!2367 = !DILocation(line: 742, column: 12, scope: !2210)
!2368 = !DILocation(line: 742, column: 16, scope: !2210)
!2369 = !DILocation(line: 742, column: 5, scope: !2210)
!2370 = !DILocation(line: 742, column: 21, scope: !2210)
!2371 = !DILocation(line: 744, column: 28, scope: !2210)
!2372 = !DILocation(line: 744, column: 23, scope: !2210)
!2373 = !DILocation(line: 744, column: 38, scope: !2210)
!2374 = !DILocation(line: 744, column: 12, scope: !2210)
!2375 = !DILocation(line: 744, column: 16, scope: !2210)
!2376 = !DILocation(line: 744, column: 5, scope: !2210)
!2377 = !DILocation(line: 744, column: 21, scope: !2210)
!2378 = !DILocation(line: 745, column: 39, scope: !2210)
!2379 = !DILocation(line: 745, column: 34, scope: !2210)
!2380 = !DILocation(line: 745, column: 24, scope: !2210)
!2381 = !DILocation(line: 745, column: 49, scope: !2210)
!2382 = !DILocation(line: 745, column: 12, scope: !2210)
!2383 = !DILocation(line: 745, column: 16, scope: !2210)
!2384 = !DILocation(line: 745, column: 5, scope: !2210)
!2385 = !DILocation(line: 745, column: 21, scope: !2210)
!2386 = !DILocation(line: 746, column: 12, scope: !2210)
!2387 = !DILocation(line: 746, column: 16, scope: !2210)
!2388 = !DILocation(line: 746, column: 5, scope: !2210)
!2389 = !DILocation(line: 746, column: 21, scope: !2210)
!2390 = !DILocation(line: 748, column: 47, scope: !2210)
!2391 = !DILocation(line: 748, column: 40, scope: !2210)
!2392 = !DILocation(line: 748, column: 38, scope: !2210)
!2393 = !DILocation(line: 748, column: 12, scope: !2210)
!2394 = !DILocation(line: 748, column: 5, scope: !2210)
!2395 = !DILocation(line: 748, column: 21, scope: !2210)
!2396 = !DILocation(line: 749, column: 47, scope: !2210)
!2397 = !DILocation(line: 749, column: 51, scope: !2210)
!2398 = !DILocation(line: 749, column: 40, scope: !2210)
!2399 = !DILocation(line: 749, column: 38, scope: !2210)
!2400 = !DILocation(line: 749, column: 12, scope: !2210)
!2401 = !DILocation(line: 749, column: 16, scope: !2210)
!2402 = !DILocation(line: 749, column: 5, scope: !2210)
!2403 = !DILocation(line: 749, column: 21, scope: !2210)
!2404 = !DILocation(line: 750, column: 47, scope: !2210)
!2405 = !DILocation(line: 750, column: 51, scope: !2210)
!2406 = !DILocation(line: 750, column: 40, scope: !2210)
!2407 = !DILocation(line: 750, column: 38, scope: !2210)
!2408 = !DILocation(line: 750, column: 12, scope: !2210)
!2409 = !DILocation(line: 750, column: 16, scope: !2210)
!2410 = !DILocation(line: 750, column: 5, scope: !2210)
!2411 = !DILocation(line: 750, column: 21, scope: !2210)
!2412 = !DILocation(line: 751, column: 47, scope: !2210)
!2413 = !DILocation(line: 751, column: 51, scope: !2210)
!2414 = !DILocation(line: 751, column: 40, scope: !2210)
!2415 = !DILocation(line: 751, column: 38, scope: !2210)
!2416 = !DILocation(line: 751, column: 12, scope: !2210)
!2417 = !DILocation(line: 751, column: 16, scope: !2210)
!2418 = !DILocation(line: 751, column: 5, scope: !2210)
!2419 = !DILocation(line: 751, column: 21, scope: !2210)
!2420 = !DILocation(line: 752, column: 47, scope: !2210)
!2421 = !DILocation(line: 752, column: 51, scope: !2210)
!2422 = !DILocation(line: 752, column: 40, scope: !2210)
!2423 = !DILocation(line: 752, column: 38, scope: !2210)
!2424 = !DILocation(line: 752, column: 12, scope: !2210)
!2425 = !DILocation(line: 752, column: 16, scope: !2210)
!2426 = !DILocation(line: 752, column: 5, scope: !2210)
!2427 = !DILocation(line: 752, column: 21, scope: !2210)
!2428 = !DILocation(line: 753, column: 47, scope: !2210)
!2429 = !DILocation(line: 753, column: 51, scope: !2210)
!2430 = !DILocation(line: 753, column: 40, scope: !2210)
!2431 = !DILocation(line: 753, column: 38, scope: !2210)
!2432 = !DILocation(line: 753, column: 12, scope: !2210)
!2433 = !DILocation(line: 753, column: 16, scope: !2210)
!2434 = !DILocation(line: 753, column: 5, scope: !2210)
!2435 = !DILocation(line: 753, column: 21, scope: !2210)
!2436 = !DILocation(line: 754, column: 47, scope: !2210)
!2437 = !DILocation(line: 754, column: 51, scope: !2210)
!2438 = !DILocation(line: 754, column: 40, scope: !2210)
!2439 = !DILocation(line: 754, column: 38, scope: !2210)
!2440 = !DILocation(line: 754, column: 12, scope: !2210)
!2441 = !DILocation(line: 754, column: 16, scope: !2210)
!2442 = !DILocation(line: 754, column: 5, scope: !2210)
!2443 = !DILocation(line: 754, column: 21, scope: !2210)
!2444 = !DILocation(line: 755, column: 47, scope: !2210)
!2445 = !DILocation(line: 755, column: 51, scope: !2210)
!2446 = !DILocation(line: 755, column: 40, scope: !2210)
!2447 = !DILocation(line: 755, column: 38, scope: !2210)
!2448 = !DILocation(line: 755, column: 12, scope: !2210)
!2449 = !DILocation(line: 755, column: 16, scope: !2210)
!2450 = !DILocation(line: 755, column: 5, scope: !2210)
!2451 = !DILocation(line: 755, column: 21, scope: !2210)
!2452 = !DILocation(line: 711, column: 26, scope: !2207)
!2453 = !DILocation(line: 711, column: 3, scope: !2207)
!2454 = distinct !{!2454, !2208, !2455, !200}
!2455 = !DILocation(line: 756, column: 3, scope: !2204)
!2456 = !DILocation(line: 759, column: 1, scope: !2198)
!2457 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyz_pack", scope: !1278, file: !1278, line: 771, type: !1856, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2458 = !DILocalVariable(name: "r", arg: 1, scope: !2457, file: !1278, line: 771, type: !47)
!2459 = !DILocation(line: 0, scope: !2457)
!2460 = !DILocalVariable(name: "a", arg: 2, scope: !2457, file: !1278, line: 771, type: !925)
!2461 = !DILocalVariable(name: "i", scope: !2457, file: !1278, line: 772, type: !55)
!2462 = !DILocation(line: 797, column: 8, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2457, file: !1278, line: 797, column: 3)
!2464 = !DILocation(line: 797, scope: !2463)
!2465 = !DILocation(line: 797, column: 17, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2463, file: !1278, line: 797, column: 3)
!2467 = !DILocation(line: 797, column: 3, scope: !2463)
!2468 = !DILocation(line: 798, column: 28, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2466, file: !1278, line: 797, column: 31)
!2470 = !DILocation(line: 798, column: 21, scope: !2469)
!2471 = !DILocation(line: 798, column: 19, scope: !2469)
!2472 = !DILocalVariable(name: "t", scope: !2457, file: !1278, line: 773, type: !2473)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !2474)
!2474 = !{!2475}
!2475 = !DISubrange(count: 4)
!2476 = !DILocation(line: 799, column: 28, scope: !2469)
!2477 = !DILocation(line: 799, column: 32, scope: !2469)
!2478 = !DILocation(line: 799, column: 21, scope: !2469)
!2479 = !DILocation(line: 799, column: 19, scope: !2469)
!2480 = !DILocation(line: 801, column: 20, scope: !2469)
!2481 = !DILocation(line: 801, column: 9, scope: !2469)
!2482 = !DILocation(line: 801, column: 5, scope: !2469)
!2483 = !DILocation(line: 801, column: 18, scope: !2469)
!2484 = !DILocation(line: 802, column: 25, scope: !2469)
!2485 = !DILocation(line: 802, column: 20, scope: !2469)
!2486 = !DILocation(line: 802, column: 9, scope: !2469)
!2487 = !DILocation(line: 802, column: 5, scope: !2469)
!2488 = !DILocation(line: 802, column: 18, scope: !2469)
!2489 = !DILocation(line: 803, column: 25, scope: !2469)
!2490 = !DILocation(line: 803, column: 20, scope: !2469)
!2491 = !DILocation(line: 803, column: 9, scope: !2469)
!2492 = !DILocation(line: 803, column: 5, scope: !2469)
!2493 = !DILocation(line: 803, column: 18, scope: !2469)
!2494 = !DILocation(line: 804, column: 9, scope: !2469)
!2495 = !DILocation(line: 804, column: 5, scope: !2469)
!2496 = !DILocation(line: 804, column: 18, scope: !2469)
!2497 = !DILocation(line: 805, column: 25, scope: !2469)
!2498 = !DILocation(line: 805, column: 20, scope: !2469)
!2499 = !DILocation(line: 805, column: 9, scope: !2469)
!2500 = !DILocation(line: 805, column: 5, scope: !2469)
!2501 = !DILocation(line: 805, column: 18, scope: !2469)
!2502 = !DILocation(line: 806, column: 25, scope: !2469)
!2503 = !DILocation(line: 806, column: 20, scope: !2469)
!2504 = !DILocation(line: 806, column: 9, scope: !2469)
!2505 = !DILocation(line: 806, column: 5, scope: !2469)
!2506 = !DILocation(line: 806, column: 18, scope: !2469)
!2507 = !DILocation(line: 797, column: 26, scope: !2466)
!2508 = !DILocation(line: 797, column: 3, scope: !2466)
!2509 = distinct !{!2509, !2467, !2510, !200}
!2510 = !DILocation(line: 807, column: 3, scope: !2463)
!2511 = !DILocation(line: 811, column: 1, scope: !2457)
!2512 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_polyw1_pack", scope: !1278, file: !1278, line: 884, type: !1856, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2513 = !DILocalVariable(name: "r", arg: 1, scope: !2512, file: !1278, line: 884, type: !47)
!2514 = !DILocation(line: 0, scope: !2512)
!2515 = !DILocalVariable(name: "a", arg: 2, scope: !2512, file: !1278, line: 884, type: !925)
!2516 = !DILocalVariable(name: "i", scope: !2512, file: !1278, line: 885, type: !55)
!2517 = !DILocation(line: 898, column: 8, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2512, file: !1278, line: 898, column: 3)
!2519 = !DILocation(line: 898, scope: !2518)
!2520 = !DILocation(line: 898, column: 17, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !1278, line: 898, column: 3)
!2522 = !DILocation(line: 898, column: 3, scope: !2518)
!2523 = !DILocation(line: 899, column: 19, scope: !2521)
!2524 = !DILocation(line: 899, column: 12, scope: !2521)
!2525 = !DILocation(line: 899, column: 38, scope: !2521)
!2526 = !DILocation(line: 899, column: 42, scope: !2521)
!2527 = !DILocation(line: 899, column: 31, scope: !2521)
!2528 = !DILocation(line: 899, column: 47, scope: !2521)
!2529 = !DILocation(line: 899, column: 28, scope: !2521)
!2530 = !DILocation(line: 899, column: 5, scope: !2521)
!2531 = !DILocation(line: 899, column: 10, scope: !2521)
!2532 = !DILocation(line: 898, column: 26, scope: !2521)
!2533 = !DILocation(line: 898, column: 3, scope: !2521)
!2534 = distinct !{!2534, !2522, !2535, !200}
!2535 = !DILocation(line: 899, column: 51, scope: !2518)
!2536 = !DILocation(line: 903, column: 1, scope: !2512)
!2537 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_ntt", scope: !74, file: !74, line: 49, type: !2538, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{null, !1590}
!2540 = !DILocalVariable(name: "a", arg: 1, scope: !2537, file: !74, line: 49, type: !1590)
!2541 = !DILocation(line: 0, scope: !2537)
!2542 = !DILocalVariable(name: "k", scope: !2537, file: !74, line: 50, type: !55)
!2543 = !DILocalVariable(name: "len", scope: !2537, file: !74, line: 50, type: !55)
!2544 = !DILocation(line: 54, column: 7, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2537, file: !74, line: 54, column: 3)
!2546 = !DILocation(line: 54, scope: !2545)
!2547 = !DILocation(line: 53, column: 5, scope: !2537)
!2548 = !DILocation(line: 54, column: 22, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2545, file: !74, line: 54, column: 3)
!2550 = !DILocation(line: 54, column: 3, scope: !2545)
!2551 = !DILocation(line: 55, column: 5, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !74, line: 55, column: 5)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !74, line: 54, column: 38)
!2554 = !DILocation(line: 55, scope: !2552)
!2555 = !DILocalVariable(name: "start", scope: !2537, file: !74, line: 50, type: !55)
!2556 = !DILocation(line: 55, column: 26, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2552, file: !74, line: 55, column: 5)
!2558 = !DILocation(line: 56, column: 20, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2557, file: !74, line: 55, column: 48)
!2560 = !DILocation(line: 56, column: 14, scope: !2559)
!2561 = !DILocalVariable(name: "zeta", scope: !2537, file: !74, line: 51, type: !77)
!2562 = !DILocalVariable(name: "j", scope: !2537, file: !74, line: 50, type: !55)
!2563 = !DILocation(line: 57, column: 11, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !74, line: 57, column: 7)
!2565 = !DILocation(line: 57, scope: !2564)
!2566 = !DILocation(line: 57, column: 32, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2564, file: !74, line: 57, column: 7)
!2568 = !DILocation(line: 57, column: 24, scope: !2567)
!2569 = !DILocation(line: 57, column: 7, scope: !2564)
!2570 = !DILocation(line: 58, column: 31, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2567, file: !74, line: 57, column: 44)
!2572 = !DILocation(line: 58, column: 47, scope: !2571)
!2573 = !DILocation(line: 58, column: 45, scope: !2571)
!2574 = !DILocation(line: 58, column: 13, scope: !2571)
!2575 = !DILocalVariable(name: "t", scope: !2537, file: !74, line: 51, type: !77)
!2576 = !DILocation(line: 59, column: 22, scope: !2571)
!2577 = !DILocation(line: 59, column: 27, scope: !2571)
!2578 = !DILocation(line: 59, column: 9, scope: !2571)
!2579 = !DILocation(line: 59, column: 20, scope: !2571)
!2580 = !DILocation(line: 60, column: 16, scope: !2571)
!2581 = !DILocation(line: 60, column: 21, scope: !2571)
!2582 = !DILocation(line: 60, column: 9, scope: !2571)
!2583 = !DILocation(line: 60, column: 14, scope: !2571)
!2584 = !DILocation(line: 57, column: 39, scope: !2567)
!2585 = !DILocation(line: 57, column: 7, scope: !2567)
!2586 = distinct !{!2586, !2569, !2587, !200}
!2587 = !DILocation(line: 61, column: 7, scope: !2564)
!2588 = !DILocation(line: 55, column: 41, scope: !2557)
!2589 = !DILocation(line: 55, column: 5, scope: !2557)
!2590 = distinct !{!2590, !2551, !2591, !200}
!2591 = !DILocation(line: 62, column: 5, scope: !2552)
!2592 = !DILocation(line: 54, column: 31, scope: !2549)
!2593 = !DILocation(line: 54, column: 3, scope: !2549)
!2594 = distinct !{!2594, !2550, !2595, !200}
!2595 = !DILocation(line: 63, column: 3, scope: !2545)
!2596 = !DILocation(line: 64, column: 1, scope: !2537)
!2597 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_invntt_tomont", scope: !74, file: !74, line: 77, type: !2538, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !64)
!2598 = !DILocalVariable(name: "a", arg: 1, scope: !2597, file: !74, line: 77, type: !1590)
!2599 = !DILocation(line: 0, scope: !2597)
!2600 = !DILocalVariable(name: "f", scope: !2597, file: !74, line: 80, type: !76)
!2601 = !DILocalVariable(name: "k", scope: !2597, file: !74, line: 78, type: !55)
!2602 = !DILocalVariable(name: "len", scope: !2597, file: !74, line: 78, type: !55)
!2603 = !DILocation(line: 83, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2597, file: !74, line: 83, column: 3)
!2605 = !DILocation(line: 83, scope: !2604)
!2606 = !DILocation(line: 82, column: 5, scope: !2597)
!2607 = !DILocation(line: 83, column: 20, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2604, file: !74, line: 83, column: 3)
!2609 = !DILocation(line: 83, column: 3, scope: !2604)
!2610 = !DILocation(line: 84, column: 5, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !74, line: 84, column: 5)
!2612 = distinct !DILexicalBlock(scope: !2608, file: !74, line: 83, column: 36)
!2613 = !DILocation(line: 95, column: 3, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2597, file: !74, line: 95, column: 3)
!2615 = !DILocation(line: 84, scope: !2611)
!2616 = !DILocalVariable(name: "start", scope: !2597, file: !74, line: 78, type: !55)
!2617 = !DILocation(line: 84, column: 26, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2611, file: !74, line: 84, column: 5)
!2619 = !DILocation(line: 85, column: 21, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2618, file: !74, line: 84, column: 48)
!2621 = !DILocation(line: 85, column: 15, scope: !2620)
!2622 = !DILocation(line: 85, column: 14, scope: !2620)
!2623 = !DILocalVariable(name: "zeta", scope: !2597, file: !74, line: 79, type: !77)
!2624 = !DILocalVariable(name: "j", scope: !2597, file: !74, line: 78, type: !55)
!2625 = !DILocation(line: 86, column: 11, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2620, file: !74, line: 86, column: 7)
!2627 = !DILocation(line: 86, scope: !2626)
!2628 = !DILocation(line: 86, column: 32, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !74, line: 86, column: 7)
!2630 = !DILocation(line: 86, column: 24, scope: !2629)
!2631 = !DILocation(line: 86, column: 7, scope: !2626)
!2632 = !DILocation(line: 87, column: 13, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !74, line: 86, column: 44)
!2634 = !DILocalVariable(name: "t", scope: !2597, file: !74, line: 79, type: !77)
!2635 = !DILocation(line: 88, column: 20, scope: !2633)
!2636 = !DILocation(line: 88, column: 18, scope: !2633)
!2637 = !DILocation(line: 88, column: 9, scope: !2633)
!2638 = !DILocation(line: 88, column: 14, scope: !2633)
!2639 = !DILocation(line: 89, column: 26, scope: !2633)
!2640 = !DILocation(line: 89, column: 24, scope: !2633)
!2641 = !DILocation(line: 89, column: 9, scope: !2633)
!2642 = !DILocation(line: 89, column: 20, scope: !2633)
!2643 = !DILocation(line: 90, column: 40, scope: !2633)
!2644 = !DILocation(line: 90, column: 56, scope: !2633)
!2645 = !DILocation(line: 90, column: 54, scope: !2633)
!2646 = !DILocation(line: 90, column: 22, scope: !2633)
!2647 = !DILocation(line: 90, column: 9, scope: !2633)
!2648 = !DILocation(line: 90, column: 20, scope: !2633)
!2649 = !DILocation(line: 86, column: 39, scope: !2629)
!2650 = !DILocation(line: 86, column: 7, scope: !2629)
!2651 = distinct !{!2651, !2631, !2652, !200}
!2652 = !DILocation(line: 91, column: 7, scope: !2626)
!2653 = !DILocation(line: 84, column: 41, scope: !2618)
!2654 = !DILocation(line: 84, column: 5, scope: !2618)
!2655 = distinct !{!2655, !2610, !2656, !200}
!2656 = !DILocation(line: 92, column: 5, scope: !2611)
!2657 = !DILocation(line: 83, column: 29, scope: !2608)
!2658 = !DILocation(line: 83, column: 3, scope: !2608)
!2659 = distinct !{!2659, !2609, !2660, !200}
!2660 = !DILocation(line: 93, column: 3, scope: !2604)
!2661 = !DILocation(line: 95, scope: !2614)
!2662 = !DILocation(line: 95, column: 16, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2614, file: !74, line: 95, column: 3)
!2664 = !DILocation(line: 96, column: 43, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2663, file: !74, line: 95, column: 26)
!2666 = !DILocation(line: 96, column: 41, scope: !2665)
!2667 = !DILocation(line: 96, column: 12, scope: !2665)
!2668 = !DILocation(line: 96, column: 5, scope: !2665)
!2669 = !DILocation(line: 96, column: 10, scope: !2665)
!2670 = !DILocation(line: 95, column: 21, scope: !2663)
!2671 = !DILocation(line: 95, column: 3, scope: !2663)
!2672 = distinct !{!2672, !2613, !2673, !200}
!2673 = !DILocation(line: 97, column: 3, scope: !2614)
!2674 = !DILocation(line: 98, column: 1, scope: !2597)
!2675 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_montgomery_reduce", scope: !2676, file: !2676, line: 15, type: !2677, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2676 = !DIFile(filename: "../../../ref/reduce.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!77, !70}
!2679 = !DILocalVariable(name: "a", arg: 1, scope: !2675, file: !2676, line: 15, type: !70)
!2680 = !DILocation(line: 0, scope: !2675)
!2681 = !DILocation(line: 18, column: 7, scope: !2675)
!2682 = !DILocalVariable(name: "t", scope: !2675, file: !2676, line: 16, type: !77)
!2683 = !DILocation(line: 19, column: 12, scope: !2675)
!2684 = !DILocation(line: 19, column: 22, scope: !2675)
!2685 = !DILocation(line: 19, column: 10, scope: !2675)
!2686 = !DILocation(line: 19, column: 26, scope: !2675)
!2687 = !DILocation(line: 19, column: 7, scope: !2675)
!2688 = !DILocation(line: 20, column: 3, scope: !2675)
!2689 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_reduce32", scope: !2676, file: !2676, line: 33, type: !2690, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!77, !77}
!2692 = !DILocalVariable(name: "a", arg: 1, scope: !2689, file: !2676, line: 33, type: !77)
!2693 = !DILocation(line: 0, scope: !2689)
!2694 = !DILocation(line: 36, column: 10, scope: !2689)
!2695 = !DILocation(line: 36, column: 23, scope: !2689)
!2696 = !DILocalVariable(name: "t", scope: !2689, file: !2676, line: 34, type: !77)
!2697 = !DILocation(line: 37, column: 12, scope: !2689)
!2698 = !DILocation(line: 37, column: 9, scope: !2689)
!2699 = !DILocation(line: 38, column: 3, scope: !2689)
!2700 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_caddq", scope: !2676, file: !2676, line: 50, type: !2690, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2701 = !DILocalVariable(name: "a", arg: 1, scope: !2700, file: !2676, line: 50, type: !77)
!2702 = !DILocation(line: 0, scope: !2700)
!2703 = !DILocation(line: 51, column: 18, scope: !2700)
!2704 = !DILocation(line: 51, column: 5, scope: !2700)
!2705 = !DILocation(line: 52, column: 3, scope: !2700)
!2706 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_freeze", scope: !2676, file: !2676, line: 65, type: !2690, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2707 = !DILocalVariable(name: "a", arg: 1, scope: !2706, file: !2676, line: 65, type: !77)
!2708 = !DILocation(line: 0, scope: !2706)
!2709 = !DILocation(line: 66, column: 7, scope: !2706)
!2710 = !DILocation(line: 67, column: 7, scope: !2706)
!2711 = !DILocation(line: 68, column: 3, scope: !2706)
!2712 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_init", scope: !89, file: !89, line: 497, type: !2713, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!2716 = !DILocalVariable(name: "state", arg: 1, scope: !2712, file: !89, line: 497, type: !2715)
!2717 = !DILocation(line: 0, scope: !2712)
!2718 = !DILocation(line: 498, column: 3, scope: !2712)
!2719 = !DILocation(line: 499, column: 3, scope: !2712)
!2720 = !DILocation(line: 499, column: 29, scope: !2712)
!2721 = !DILocation(line: 500, column: 1, scope: !2712)
!2722 = distinct !DISubprogram(name: "keccak_init", scope: !89, file: !89, line: 340, type: !2723, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 32)
!2726 = !DILocalVariable(name: "s", arg: 1, scope: !2722, file: !89, line: 340, type: !2725)
!2727 = !DILocation(line: 0, scope: !2722)
!2728 = !DILocalVariable(name: "i", scope: !2722, file: !89, line: 341, type: !55)
!2729 = !DILocation(line: 342, column: 8, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2722, file: !89, line: 342, column: 3)
!2731 = !DILocation(line: 342, scope: !2730)
!2732 = !DILocation(line: 342, column: 17, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !89, line: 342, column: 3)
!2734 = !DILocation(line: 342, column: 3, scope: !2730)
!2735 = !DILocation(line: 343, column: 5, scope: !2733)
!2736 = !DILocation(line: 343, column: 10, scope: !2733)
!2737 = !DILocation(line: 342, column: 24, scope: !2733)
!2738 = !DILocation(line: 342, column: 3, scope: !2733)
!2739 = distinct !{!2739, !2734, !2740, !200}
!2740 = !DILocation(line: 343, column: 12, scope: !2730)
!2741 = !DILocation(line: 344, column: 1, scope: !2722)
!2742 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_absorb", scope: !89, file: !89, line: 512, type: !2743, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !2715, !324, !53}
!2745 = !DILocalVariable(name: "state", arg: 1, scope: !2742, file: !89, line: 512, type: !2715)
!2746 = !DILocation(line: 0, scope: !2742)
!2747 = !DILocalVariable(name: "in", arg: 2, scope: !2742, file: !89, line: 512, type: !324)
!2748 = !DILocalVariable(name: "inlen", arg: 3, scope: !2742, file: !89, line: 512, type: !53)
!2749 = !DILocation(line: 514, column: 43, scope: !2742)
!2750 = !DILocation(line: 514, column: 29, scope: !2742)
!2751 = !DILocation(line: 514, column: 7, scope: !2742)
!2752 = !DILocalVariable(name: "pos", scope: !2742, file: !89, line: 513, type: !55)
!2753 = !DILocation(line: 516, column: 31, scope: !2742)
!2754 = !DILocation(line: 516, column: 3, scope: !2742)
!2755 = !DILocation(line: 516, column: 29, scope: !2742)
!2756 = !DILocation(line: 517, column: 1, scope: !2742)
!2757 = distinct !DISubprogram(name: "keccak_absorb", scope: !89, file: !89, line: 359, type: !2758, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!55, !2725, !55, !55, !324, !53}
!2760 = !DILocalVariable(name: "s", arg: 1, scope: !2757, file: !89, line: 359, type: !2725)
!2761 = !DILocation(line: 0, scope: !2757)
!2762 = !DILocalVariable(name: "pos", arg: 2, scope: !2757, file: !89, line: 359, type: !55)
!2763 = !DILocalVariable(name: "r", arg: 3, scope: !2757, file: !89, line: 360, type: !55)
!2764 = !DILocalVariable(name: "in", arg: 4, scope: !2757, file: !89, line: 360, type: !324)
!2765 = !DILocalVariable(name: "inlen", arg: 5, scope: !2757, file: !89, line: 361, type: !53)
!2766 = !DILocation(line: 364, column: 3, scope: !2757)
!2767 = !DILocation(line: 364, column: 14, scope: !2757)
!2768 = !DILocation(line: 364, column: 22, scope: !2757)
!2769 = !DILocation(line: 365, column: 5, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !89, line: 365, column: 5)
!2771 = distinct !DILexicalBlock(scope: !2757, file: !89, line: 364, column: 28)
!2772 = !DILocation(line: 372, column: 3, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2757, file: !89, line: 372, column: 3)
!2774 = !DILocation(line: 365, scope: !2770)
!2775 = !DILocalVariable(name: "i", scope: !2757, file: !89, line: 362, type: !55)
!2776 = !DILocation(line: 365, column: 21, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2770, file: !89, line: 365, column: 5)
!2778 = !DILocation(line: 366, column: 29, scope: !2777)
!2779 = !DILocation(line: 366, column: 19, scope: !2777)
!2780 = !DILocation(line: 366, column: 40, scope: !2777)
!2781 = !DILocation(line: 366, column: 35, scope: !2777)
!2782 = !DILocation(line: 366, column: 11, scope: !2777)
!2783 = !DILocation(line: 366, column: 7, scope: !2777)
!2784 = !DILocation(line: 366, column: 16, scope: !2777)
!2785 = !DILocation(line: 366, column: 32, scope: !2777)
!2786 = !DILocation(line: 365, column: 27, scope: !2777)
!2787 = !DILocation(line: 365, column: 5, scope: !2777)
!2788 = distinct !{!2788, !2769, !2789, !200}
!2789 = !DILocation(line: 366, column: 48, scope: !2770)
!2790 = !DILocation(line: 367, column: 16, scope: !2771)
!2791 = !DILocation(line: 367, column: 11, scope: !2771)
!2792 = !DILocation(line: 368, column: 5, scope: !2771)
!2793 = distinct !{!2793, !2766, !2794, !200}
!2794 = !DILocation(line: 370, column: 3, scope: !2757)
!2795 = !DILocation(line: 372, scope: !2773)
!2796 = !DILocation(line: 372, column: 25, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2773, file: !89, line: 372, column: 3)
!2798 = !DILocation(line: 372, column: 19, scope: !2797)
!2799 = !DILocation(line: 373, column: 27, scope: !2797)
!2800 = !DILocation(line: 373, column: 17, scope: !2797)
!2801 = !DILocation(line: 373, column: 38, scope: !2797)
!2802 = !DILocation(line: 373, column: 33, scope: !2797)
!2803 = !DILocation(line: 373, column: 9, scope: !2797)
!2804 = !DILocation(line: 373, column: 5, scope: !2797)
!2805 = !DILocation(line: 373, column: 14, scope: !2797)
!2806 = !DILocation(line: 373, column: 30, scope: !2797)
!2807 = !DILocation(line: 372, column: 35, scope: !2797)
!2808 = !DILocation(line: 372, column: 3, scope: !2797)
!2809 = distinct !{!2809, !2772, !2810, !200}
!2810 = !DILocation(line: 373, column: 46, scope: !2773)
!2811 = !DILocation(line: 375, column: 3, scope: !2757)
!2812 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !89, file: !89, line: 70, type: !2723, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!2813 = !DILocalVariable(name: "state", arg: 1, scope: !2812, file: !89, line: 70, type: !2725)
!2814 = !DILocation(line: 0, scope: !2812)
!2815 = !DILocation(line: 87, column: 9, scope: !2812)
!2816 = !DILocalVariable(name: "Aba", scope: !2812, file: !89, line: 73, type: !85)
!2817 = !DILocation(line: 88, column: 9, scope: !2812)
!2818 = !DILocalVariable(name: "Abe", scope: !2812, file: !89, line: 73, type: !85)
!2819 = !DILocation(line: 89, column: 9, scope: !2812)
!2820 = !DILocalVariable(name: "Abi", scope: !2812, file: !89, line: 73, type: !85)
!2821 = !DILocation(line: 90, column: 9, scope: !2812)
!2822 = !DILocalVariable(name: "Abo", scope: !2812, file: !89, line: 73, type: !85)
!2823 = !DILocation(line: 91, column: 9, scope: !2812)
!2824 = !DILocalVariable(name: "Abu", scope: !2812, file: !89, line: 73, type: !85)
!2825 = !DILocation(line: 92, column: 9, scope: !2812)
!2826 = !DILocalVariable(name: "Aga", scope: !2812, file: !89, line: 74, type: !85)
!2827 = !DILocation(line: 93, column: 9, scope: !2812)
!2828 = !DILocalVariable(name: "Age", scope: !2812, file: !89, line: 74, type: !85)
!2829 = !DILocation(line: 94, column: 9, scope: !2812)
!2830 = !DILocalVariable(name: "Agi", scope: !2812, file: !89, line: 74, type: !85)
!2831 = !DILocation(line: 95, column: 9, scope: !2812)
!2832 = !DILocalVariable(name: "Ago", scope: !2812, file: !89, line: 74, type: !85)
!2833 = !DILocation(line: 96, column: 9, scope: !2812)
!2834 = !DILocalVariable(name: "Agu", scope: !2812, file: !89, line: 74, type: !85)
!2835 = !DILocation(line: 97, column: 9, scope: !2812)
!2836 = !DILocalVariable(name: "Aka", scope: !2812, file: !89, line: 75, type: !85)
!2837 = !DILocation(line: 98, column: 9, scope: !2812)
!2838 = !DILocalVariable(name: "Ake", scope: !2812, file: !89, line: 75, type: !85)
!2839 = !DILocation(line: 99, column: 9, scope: !2812)
!2840 = !DILocalVariable(name: "Aki", scope: !2812, file: !89, line: 75, type: !85)
!2841 = !DILocation(line: 100, column: 9, scope: !2812)
!2842 = !DILocalVariable(name: "Ako", scope: !2812, file: !89, line: 75, type: !85)
!2843 = !DILocation(line: 101, column: 9, scope: !2812)
!2844 = !DILocalVariable(name: "Aku", scope: !2812, file: !89, line: 75, type: !85)
!2845 = !DILocation(line: 102, column: 9, scope: !2812)
!2846 = !DILocalVariable(name: "Ama", scope: !2812, file: !89, line: 76, type: !85)
!2847 = !DILocation(line: 103, column: 9, scope: !2812)
!2848 = !DILocalVariable(name: "Ame", scope: !2812, file: !89, line: 76, type: !85)
!2849 = !DILocation(line: 104, column: 9, scope: !2812)
!2850 = !DILocalVariable(name: "Ami", scope: !2812, file: !89, line: 76, type: !85)
!2851 = !DILocation(line: 105, column: 9, scope: !2812)
!2852 = !DILocalVariable(name: "Amo", scope: !2812, file: !89, line: 76, type: !85)
!2853 = !DILocation(line: 106, column: 9, scope: !2812)
!2854 = !DILocalVariable(name: "Amu", scope: !2812, file: !89, line: 76, type: !85)
!2855 = !DILocation(line: 107, column: 9, scope: !2812)
!2856 = !DILocalVariable(name: "Asa", scope: !2812, file: !89, line: 77, type: !85)
!2857 = !DILocation(line: 108, column: 9, scope: !2812)
!2858 = !DILocalVariable(name: "Ase", scope: !2812, file: !89, line: 77, type: !85)
!2859 = !DILocation(line: 109, column: 9, scope: !2812)
!2860 = !DILocalVariable(name: "Asi", scope: !2812, file: !89, line: 77, type: !85)
!2861 = !DILocation(line: 110, column: 9, scope: !2812)
!2862 = !DILocalVariable(name: "Aso", scope: !2812, file: !89, line: 77, type: !85)
!2863 = !DILocation(line: 111, column: 9, scope: !2812)
!2864 = !DILocalVariable(name: "Asu", scope: !2812, file: !89, line: 77, type: !85)
!2865 = !DILocalVariable(name: "round", scope: !2812, file: !89, line: 71, type: !65)
!2866 = !DILocation(line: 113, column: 8, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2812, file: !89, line: 113, column: 3)
!2868 = !DILocation(line: 113, scope: !2867)
!2869 = !DILocation(line: 113, column: 25, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !89, line: 113, column: 3)
!2871 = !DILocation(line: 113, column: 3, scope: !2867)
!2872 = !DILocalVariable(name: "BCa", scope: !2812, file: !89, line: 78, type: !85)
!2873 = !DILocalVariable(name: "BCe", scope: !2812, file: !89, line: 78, type: !85)
!2874 = !DILocalVariable(name: "BCi", scope: !2812, file: !89, line: 78, type: !85)
!2875 = !DILocalVariable(name: "BCo", scope: !2812, file: !89, line: 78, type: !85)
!2876 = !DILocalVariable(name: "BCu", scope: !2812, file: !89, line: 78, type: !85)
!2877 = !DILocalVariable(name: "Da", scope: !2812, file: !89, line: 79, type: !85)
!2878 = !DILocalVariable(name: "De", scope: !2812, file: !89, line: 79, type: !85)
!2879 = !DILocalVariable(name: "Di", scope: !2812, file: !89, line: 79, type: !85)
!2880 = !DILocalVariable(name: "Do", scope: !2812, file: !89, line: 79, type: !85)
!2881 = !DILocalVariable(name: "Du", scope: !2812, file: !89, line: 79, type: !85)
!2882 = !DILocalVariable(name: "Eba", scope: !2812, file: !89, line: 80, type: !85)
!2883 = !DILocalVariable(name: "Ebe", scope: !2812, file: !89, line: 80, type: !85)
!2884 = !DILocalVariable(name: "Ebi", scope: !2812, file: !89, line: 80, type: !85)
!2885 = !DILocalVariable(name: "Ebo", scope: !2812, file: !89, line: 80, type: !85)
!2886 = !DILocalVariable(name: "Ebu", scope: !2812, file: !89, line: 80, type: !85)
!2887 = !DILocalVariable(name: "Ega", scope: !2812, file: !89, line: 81, type: !85)
!2888 = !DILocalVariable(name: "Ege", scope: !2812, file: !89, line: 81, type: !85)
!2889 = !DILocalVariable(name: "Egi", scope: !2812, file: !89, line: 81, type: !85)
!2890 = !DILocalVariable(name: "Ego", scope: !2812, file: !89, line: 81, type: !85)
!2891 = !DILocalVariable(name: "Egu", scope: !2812, file: !89, line: 81, type: !85)
!2892 = !DILocalVariable(name: "Eka", scope: !2812, file: !89, line: 82, type: !85)
!2893 = !DILocalVariable(name: "Eke", scope: !2812, file: !89, line: 82, type: !85)
!2894 = !DILocalVariable(name: "Eki", scope: !2812, file: !89, line: 82, type: !85)
!2895 = !DILocalVariable(name: "Eko", scope: !2812, file: !89, line: 82, type: !85)
!2896 = !DILocalVariable(name: "Eku", scope: !2812, file: !89, line: 82, type: !85)
!2897 = !DILocalVariable(name: "Ema", scope: !2812, file: !89, line: 83, type: !85)
!2898 = !DILocalVariable(name: "Eme", scope: !2812, file: !89, line: 83, type: !85)
!2899 = !DILocalVariable(name: "Emi", scope: !2812, file: !89, line: 83, type: !85)
!2900 = !DILocalVariable(name: "Emo", scope: !2812, file: !89, line: 83, type: !85)
!2901 = !DILocalVariable(name: "Emu", scope: !2812, file: !89, line: 83, type: !85)
!2902 = !DILocalVariable(name: "Esa", scope: !2812, file: !89, line: 84, type: !85)
!2903 = !DILocalVariable(name: "Ese", scope: !2812, file: !89, line: 84, type: !85)
!2904 = !DILocalVariable(name: "Esi", scope: !2812, file: !89, line: 84, type: !85)
!2905 = !DILocalVariable(name: "Eso", scope: !2812, file: !89, line: 84, type: !85)
!2906 = !DILocalVariable(name: "Esu", scope: !2812, file: !89, line: 84, type: !85)
!2907 = !DILocation(line: 117, column: 15, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2870, file: !89, line: 113, column: 48)
!2909 = !DILocation(line: 117, column: 21, scope: !2908)
!2910 = !DILocation(line: 117, column: 27, scope: !2908)
!2911 = !DILocation(line: 117, column: 33, scope: !2908)
!2912 = !DILocation(line: 119, column: 15, scope: !2908)
!2913 = !DILocation(line: 119, column: 21, scope: !2908)
!2914 = !DILocation(line: 119, column: 27, scope: !2908)
!2915 = !DILocation(line: 119, column: 33, scope: !2908)
!2916 = !DILocation(line: 125, column: 16, scope: !2908)
!2917 = !DILocation(line: 125, column: 14, scope: !2908)
!2918 = !DILocation(line: 195, column: 9, scope: !2908)
!2919 = !DILocation(line: 196, column: 11, scope: !2908)
!2920 = !DILocation(line: 116, column: 15, scope: !2908)
!2921 = !DILocation(line: 116, column: 21, scope: !2908)
!2922 = !DILocation(line: 116, column: 27, scope: !2908)
!2923 = !DILocation(line: 116, column: 33, scope: !2908)
!2924 = !DILocation(line: 122, column: 16, scope: !2908)
!2925 = !DILocation(line: 122, column: 14, scope: !2908)
!2926 = !DILocation(line: 199, column: 9, scope: !2908)
!2927 = !DILocation(line: 200, column: 11, scope: !2908)
!2928 = !DILocation(line: 118, column: 15, scope: !2908)
!2929 = !DILocation(line: 118, column: 21, scope: !2908)
!2930 = !DILocation(line: 118, column: 27, scope: !2908)
!2931 = !DILocation(line: 118, column: 33, scope: !2908)
!2932 = !DILocation(line: 115, column: 15, scope: !2908)
!2933 = !DILocation(line: 115, column: 21, scope: !2908)
!2934 = !DILocation(line: 115, column: 27, scope: !2908)
!2935 = !DILocation(line: 115, column: 33, scope: !2908)
!2936 = !DILocation(line: 126, column: 16, scope: !2908)
!2937 = !DILocation(line: 126, column: 14, scope: !2908)
!2938 = !DILocation(line: 197, column: 9, scope: !2908)
!2939 = !DILocation(line: 198, column: 11, scope: !2908)
!2940 = !DILocation(line: 204, column: 19, scope: !2908)
!2941 = !DILocation(line: 204, column: 25, scope: !2908)
!2942 = !DILocation(line: 204, column: 15, scope: !2908)
!2943 = !DILocation(line: 124, column: 16, scope: !2908)
!2944 = !DILocation(line: 124, column: 14, scope: !2908)
!2945 = !DILocation(line: 132, column: 9, scope: !2908)
!2946 = !DILocation(line: 133, column: 11, scope: !2908)
!2947 = !DILocation(line: 123, column: 16, scope: !2908)
!2948 = !DILocation(line: 123, column: 14, scope: !2908)
!2949 = !DILocation(line: 130, column: 9, scope: !2908)
!2950 = !DILocation(line: 131, column: 11, scope: !2908)
!2951 = !DILocation(line: 138, column: 19, scope: !2908)
!2952 = !DILocation(line: 138, column: 25, scope: !2908)
!2953 = !DILocation(line: 139, column: 22, scope: !2908)
!2954 = !DILocation(line: 139, column: 9, scope: !2908)
!2955 = !DILocation(line: 128, column: 9, scope: !2908)
!2956 = !DILocation(line: 145, column: 9, scope: !2908)
!2957 = !DILocation(line: 146, column: 11, scope: !2908)
!2958 = !DILocation(line: 149, column: 9, scope: !2908)
!2959 = !DILocation(line: 150, column: 11, scope: !2908)
!2960 = !DILocation(line: 147, column: 9, scope: !2908)
!2961 = !DILocation(line: 148, column: 11, scope: !2908)
!2962 = !DILocation(line: 155, column: 19, scope: !2908)
!2963 = !DILocation(line: 155, column: 25, scope: !2908)
!2964 = !DILocation(line: 155, column: 15, scope: !2908)
!2965 = !DILocation(line: 210, column: 15, scope: !2908)
!2966 = !DILocation(line: 161, column: 9, scope: !2908)
!2967 = !DILocation(line: 162, column: 11, scope: !2908)
!2968 = !DILocation(line: 165, column: 9, scope: !2908)
!2969 = !DILocation(line: 166, column: 11, scope: !2908)
!2970 = !DILocation(line: 163, column: 9, scope: !2908)
!2971 = !DILocation(line: 164, column: 11, scope: !2908)
!2972 = !DILocation(line: 171, column: 19, scope: !2908)
!2973 = !DILocation(line: 171, column: 25, scope: !2908)
!2974 = !DILocation(line: 171, column: 15, scope: !2908)
!2975 = !DILocation(line: 210, column: 21, scope: !2908)
!2976 = !DILocation(line: 177, column: 9, scope: !2908)
!2977 = !DILocation(line: 178, column: 11, scope: !2908)
!2978 = !DILocation(line: 181, column: 9, scope: !2908)
!2979 = !DILocation(line: 182, column: 11, scope: !2908)
!2980 = !DILocation(line: 179, column: 9, scope: !2908)
!2981 = !DILocation(line: 180, column: 11, scope: !2908)
!2982 = !DILocation(line: 187, column: 19, scope: !2908)
!2983 = !DILocation(line: 187, column: 25, scope: !2908)
!2984 = !DILocation(line: 187, column: 15, scope: !2908)
!2985 = !DILocation(line: 210, column: 27, scope: !2908)
!2986 = !DILocation(line: 193, column: 9, scope: !2908)
!2987 = !DILocation(line: 194, column: 11, scope: !2908)
!2988 = !DILocation(line: 203, column: 19, scope: !2908)
!2989 = !DILocation(line: 203, column: 25, scope: !2908)
!2990 = !DILocation(line: 203, column: 15, scope: !2908)
!2991 = !DILocation(line: 210, column: 33, scope: !2908)
!2992 = !DILocation(line: 136, column: 9, scope: !2908)
!2993 = !DILocation(line: 137, column: 11, scope: !2908)
!2994 = !DILocation(line: 134, column: 9, scope: !2908)
!2995 = !DILocation(line: 135, column: 11, scope: !2908)
!2996 = !DILocation(line: 141, column: 19, scope: !2908)
!2997 = !DILocation(line: 141, column: 25, scope: !2908)
!2998 = !DILocation(line: 141, column: 15, scope: !2908)
!2999 = !DILocation(line: 153, column: 9, scope: !2908)
!3000 = !DILocation(line: 154, column: 11, scope: !2908)
!3001 = !DILocation(line: 151, column: 9, scope: !2908)
!3002 = !DILocation(line: 152, column: 11, scope: !2908)
!3003 = !DILocation(line: 157, column: 19, scope: !2908)
!3004 = !DILocation(line: 157, column: 25, scope: !2908)
!3005 = !DILocation(line: 157, column: 15, scope: !2908)
!3006 = !DILocation(line: 212, column: 15, scope: !2908)
!3007 = !DILocation(line: 169, column: 9, scope: !2908)
!3008 = !DILocation(line: 170, column: 11, scope: !2908)
!3009 = !DILocation(line: 167, column: 9, scope: !2908)
!3010 = !DILocation(line: 168, column: 11, scope: !2908)
!3011 = !DILocation(line: 173, column: 19, scope: !2908)
!3012 = !DILocation(line: 173, column: 25, scope: !2908)
!3013 = !DILocation(line: 173, column: 15, scope: !2908)
!3014 = !DILocation(line: 212, column: 21, scope: !2908)
!3015 = !DILocation(line: 185, column: 9, scope: !2908)
!3016 = !DILocation(line: 186, column: 11, scope: !2908)
!3017 = !DILocation(line: 183, column: 9, scope: !2908)
!3018 = !DILocation(line: 184, column: 11, scope: !2908)
!3019 = !DILocation(line: 189, column: 19, scope: !2908)
!3020 = !DILocation(line: 189, column: 25, scope: !2908)
!3021 = !DILocation(line: 189, column: 15, scope: !2908)
!3022 = !DILocation(line: 212, column: 27, scope: !2908)
!3023 = !DILocation(line: 201, column: 9, scope: !2908)
!3024 = !DILocation(line: 202, column: 11, scope: !2908)
!3025 = !DILocation(line: 205, column: 19, scope: !2908)
!3026 = !DILocation(line: 205, column: 25, scope: !2908)
!3027 = !DILocation(line: 205, column: 15, scope: !2908)
!3028 = !DILocation(line: 212, column: 33, scope: !2908)
!3029 = !DILocation(line: 218, column: 16, scope: !2908)
!3030 = !DILocation(line: 218, column: 14, scope: !2908)
!3031 = !DILocation(line: 296, column: 9, scope: !2908)
!3032 = !DILocation(line: 297, column: 11, scope: !2908)
!3033 = !DILocation(line: 158, column: 19, scope: !2908)
!3034 = !DILocation(line: 158, column: 25, scope: !2908)
!3035 = !DILocation(line: 158, column: 15, scope: !2908)
!3036 = !DILocation(line: 143, column: 19, scope: !2908)
!3037 = !DILocation(line: 143, column: 25, scope: !2908)
!3038 = !DILocation(line: 143, column: 15, scope: !2908)
!3039 = !DILocation(line: 159, column: 19, scope: !2908)
!3040 = !DILocation(line: 159, column: 25, scope: !2908)
!3041 = !DILocation(line: 159, column: 15, scope: !2908)
!3042 = !DILocation(line: 214, column: 15, scope: !2908)
!3043 = !DILocation(line: 175, column: 19, scope: !2908)
!3044 = !DILocation(line: 175, column: 25, scope: !2908)
!3045 = !DILocation(line: 175, column: 15, scope: !2908)
!3046 = !DILocation(line: 214, column: 21, scope: !2908)
!3047 = !DILocation(line: 191, column: 19, scope: !2908)
!3048 = !DILocation(line: 191, column: 25, scope: !2908)
!3049 = !DILocation(line: 191, column: 15, scope: !2908)
!3050 = !DILocation(line: 214, column: 27, scope: !2908)
!3051 = !DILocation(line: 207, column: 19, scope: !2908)
!3052 = !DILocation(line: 207, column: 25, scope: !2908)
!3053 = !DILocation(line: 207, column: 15, scope: !2908)
!3054 = !DILocation(line: 214, column: 33, scope: !2908)
!3055 = !DILocation(line: 220, column: 16, scope: !2908)
!3056 = !DILocation(line: 220, column: 14, scope: !2908)
!3057 = !DILocation(line: 290, column: 9, scope: !2908)
!3058 = !DILocation(line: 291, column: 11, scope: !2908)
!3059 = !DILocation(line: 140, column: 19, scope: !2908)
!3060 = !DILocation(line: 140, column: 25, scope: !2908)
!3061 = !DILocation(line: 140, column: 15, scope: !2908)
!3062 = !DILocation(line: 156, column: 19, scope: !2908)
!3063 = !DILocation(line: 156, column: 25, scope: !2908)
!3064 = !DILocation(line: 156, column: 15, scope: !2908)
!3065 = !DILocation(line: 211, column: 15, scope: !2908)
!3066 = !DILocation(line: 172, column: 19, scope: !2908)
!3067 = !DILocation(line: 172, column: 25, scope: !2908)
!3068 = !DILocation(line: 172, column: 15, scope: !2908)
!3069 = !DILocation(line: 211, column: 21, scope: !2908)
!3070 = !DILocation(line: 188, column: 19, scope: !2908)
!3071 = !DILocation(line: 188, column: 25, scope: !2908)
!3072 = !DILocation(line: 188, column: 15, scope: !2908)
!3073 = !DILocation(line: 211, column: 27, scope: !2908)
!3074 = !DILocation(line: 211, column: 33, scope: !2908)
!3075 = !DILocation(line: 142, column: 19, scope: !2908)
!3076 = !DILocation(line: 142, column: 25, scope: !2908)
!3077 = !DILocation(line: 142, column: 15, scope: !2908)
!3078 = !DILocation(line: 213, column: 15, scope: !2908)
!3079 = !DILocation(line: 174, column: 19, scope: !2908)
!3080 = !DILocation(line: 174, column: 25, scope: !2908)
!3081 = !DILocation(line: 174, column: 15, scope: !2908)
!3082 = !DILocation(line: 213, column: 21, scope: !2908)
!3083 = !DILocation(line: 190, column: 19, scope: !2908)
!3084 = !DILocation(line: 190, column: 25, scope: !2908)
!3085 = !DILocation(line: 190, column: 15, scope: !2908)
!3086 = !DILocation(line: 213, column: 27, scope: !2908)
!3087 = !DILocation(line: 206, column: 19, scope: !2908)
!3088 = !DILocation(line: 206, column: 25, scope: !2908)
!3089 = !DILocation(line: 206, column: 15, scope: !2908)
!3090 = !DILocation(line: 213, column: 33, scope: !2908)
!3091 = !DILocation(line: 219, column: 16, scope: !2908)
!3092 = !DILocation(line: 219, column: 14, scope: !2908)
!3093 = !DILocation(line: 288, column: 9, scope: !2908)
!3094 = !DILocation(line: 289, column: 11, scope: !2908)
!3095 = !DILocation(line: 302, column: 19, scope: !2908)
!3096 = !DILocation(line: 302, column: 25, scope: !2908)
!3097 = !DILocation(line: 302, column: 15, scope: !2908)
!3098 = !DILocation(line: 217, column: 16, scope: !2908)
!3099 = !DILocation(line: 217, column: 14, scope: !2908)
!3100 = !DILocation(line: 294, column: 9, scope: !2908)
!3101 = !DILocation(line: 295, column: 11, scope: !2908)
!3102 = !DILocation(line: 301, column: 19, scope: !2908)
!3103 = !DILocation(line: 301, column: 25, scope: !2908)
!3104 = !DILocation(line: 301, column: 15, scope: !2908)
!3105 = !DILocation(line: 221, column: 16, scope: !2908)
!3106 = !DILocation(line: 221, column: 14, scope: !2908)
!3107 = !DILocation(line: 292, column: 9, scope: !2908)
!3108 = !DILocation(line: 293, column: 11, scope: !2908)
!3109 = !DILocation(line: 300, column: 19, scope: !2908)
!3110 = !DILocation(line: 300, column: 25, scope: !2908)
!3111 = !DILocation(line: 300, column: 15, scope: !2908)
!3112 = !DILocation(line: 299, column: 19, scope: !2908)
!3113 = !DILocation(line: 299, column: 25, scope: !2908)
!3114 = !DILocation(line: 299, column: 15, scope: !2908)
!3115 = !DILocation(line: 298, column: 19, scope: !2908)
!3116 = !DILocation(line: 298, column: 25, scope: !2908)
!3117 = !DILocation(line: 298, column: 15, scope: !2908)
!3118 = !DILocation(line: 280, column: 9, scope: !2908)
!3119 = !DILocation(line: 281, column: 11, scope: !2908)
!3120 = !DILocation(line: 274, column: 9, scope: !2908)
!3121 = !DILocation(line: 275, column: 11, scope: !2908)
!3122 = !DILocation(line: 272, column: 9, scope: !2908)
!3123 = !DILocation(line: 273, column: 11, scope: !2908)
!3124 = !DILocation(line: 286, column: 19, scope: !2908)
!3125 = !DILocation(line: 286, column: 25, scope: !2908)
!3126 = !DILocation(line: 286, column: 15, scope: !2908)
!3127 = !DILocation(line: 278, column: 9, scope: !2908)
!3128 = !DILocation(line: 279, column: 11, scope: !2908)
!3129 = !DILocation(line: 285, column: 19, scope: !2908)
!3130 = !DILocation(line: 285, column: 25, scope: !2908)
!3131 = !DILocation(line: 285, column: 15, scope: !2908)
!3132 = !DILocation(line: 276, column: 9, scope: !2908)
!3133 = !DILocation(line: 277, column: 11, scope: !2908)
!3134 = !DILocation(line: 284, column: 19, scope: !2908)
!3135 = !DILocation(line: 284, column: 25, scope: !2908)
!3136 = !DILocation(line: 284, column: 15, scope: !2908)
!3137 = !DILocation(line: 283, column: 19, scope: !2908)
!3138 = !DILocation(line: 283, column: 25, scope: !2908)
!3139 = !DILocation(line: 283, column: 15, scope: !2908)
!3140 = !DILocation(line: 282, column: 19, scope: !2908)
!3141 = !DILocation(line: 282, column: 25, scope: !2908)
!3142 = !DILocation(line: 282, column: 15, scope: !2908)
!3143 = !DILocation(line: 264, column: 9, scope: !2908)
!3144 = !DILocation(line: 265, column: 11, scope: !2908)
!3145 = !DILocation(line: 258, column: 9, scope: !2908)
!3146 = !DILocation(line: 259, column: 11, scope: !2908)
!3147 = !DILocation(line: 256, column: 9, scope: !2908)
!3148 = !DILocation(line: 257, column: 11, scope: !2908)
!3149 = !DILocation(line: 270, column: 19, scope: !2908)
!3150 = !DILocation(line: 270, column: 25, scope: !2908)
!3151 = !DILocation(line: 270, column: 15, scope: !2908)
!3152 = !DILocation(line: 262, column: 9, scope: !2908)
!3153 = !DILocation(line: 263, column: 11, scope: !2908)
!3154 = !DILocation(line: 269, column: 19, scope: !2908)
!3155 = !DILocation(line: 269, column: 25, scope: !2908)
!3156 = !DILocation(line: 269, column: 15, scope: !2908)
!3157 = !DILocation(line: 260, column: 9, scope: !2908)
!3158 = !DILocation(line: 261, column: 11, scope: !2908)
!3159 = !DILocation(line: 268, column: 19, scope: !2908)
!3160 = !DILocation(line: 268, column: 25, scope: !2908)
!3161 = !DILocation(line: 268, column: 15, scope: !2908)
!3162 = !DILocation(line: 267, column: 19, scope: !2908)
!3163 = !DILocation(line: 267, column: 25, scope: !2908)
!3164 = !DILocation(line: 267, column: 15, scope: !2908)
!3165 = !DILocation(line: 266, column: 19, scope: !2908)
!3166 = !DILocation(line: 266, column: 25, scope: !2908)
!3167 = !DILocation(line: 266, column: 15, scope: !2908)
!3168 = !DILocation(line: 248, column: 9, scope: !2908)
!3169 = !DILocation(line: 249, column: 11, scope: !2908)
!3170 = !DILocation(line: 242, column: 9, scope: !2908)
!3171 = !DILocation(line: 243, column: 11, scope: !2908)
!3172 = !DILocation(line: 240, column: 9, scope: !2908)
!3173 = !DILocation(line: 241, column: 11, scope: !2908)
!3174 = !DILocation(line: 254, column: 19, scope: !2908)
!3175 = !DILocation(line: 254, column: 25, scope: !2908)
!3176 = !DILocation(line: 254, column: 15, scope: !2908)
!3177 = !DILocation(line: 246, column: 9, scope: !2908)
!3178 = !DILocation(line: 247, column: 11, scope: !2908)
!3179 = !DILocation(line: 253, column: 19, scope: !2908)
!3180 = !DILocation(line: 253, column: 25, scope: !2908)
!3181 = !DILocation(line: 253, column: 15, scope: !2908)
!3182 = !DILocation(line: 244, column: 9, scope: !2908)
!3183 = !DILocation(line: 245, column: 11, scope: !2908)
!3184 = !DILocation(line: 252, column: 19, scope: !2908)
!3185 = !DILocation(line: 252, column: 25, scope: !2908)
!3186 = !DILocation(line: 252, column: 15, scope: !2908)
!3187 = !DILocation(line: 251, column: 19, scope: !2908)
!3188 = !DILocation(line: 251, column: 25, scope: !2908)
!3189 = !DILocation(line: 251, column: 15, scope: !2908)
!3190 = !DILocation(line: 250, column: 19, scope: !2908)
!3191 = !DILocation(line: 250, column: 25, scope: !2908)
!3192 = !DILocation(line: 250, column: 15, scope: !2908)
!3193 = !DILocation(line: 231, column: 9, scope: !2908)
!3194 = !DILocation(line: 232, column: 11, scope: !2908)
!3195 = !DILocation(line: 225, column: 9, scope: !2908)
!3196 = !DILocation(line: 226, column: 11, scope: !2908)
!3197 = !DILocation(line: 223, column: 9, scope: !2908)
!3198 = !DILocation(line: 238, column: 19, scope: !2908)
!3199 = !DILocation(line: 238, column: 25, scope: !2908)
!3200 = !DILocation(line: 238, column: 15, scope: !2908)
!3201 = !DILocation(line: 229, column: 9, scope: !2908)
!3202 = !DILocation(line: 230, column: 11, scope: !2908)
!3203 = !DILocation(line: 237, column: 19, scope: !2908)
!3204 = !DILocation(line: 237, column: 25, scope: !2908)
!3205 = !DILocation(line: 237, column: 15, scope: !2908)
!3206 = !DILocation(line: 227, column: 9, scope: !2908)
!3207 = !DILocation(line: 228, column: 11, scope: !2908)
!3208 = !DILocation(line: 236, column: 19, scope: !2908)
!3209 = !DILocation(line: 236, column: 25, scope: !2908)
!3210 = !DILocation(line: 236, column: 15, scope: !2908)
!3211 = !DILocation(line: 235, column: 19, scope: !2908)
!3212 = !DILocation(line: 235, column: 25, scope: !2908)
!3213 = !DILocation(line: 235, column: 15, scope: !2908)
!3214 = !DILocation(line: 234, column: 51, scope: !2908)
!3215 = !DILocation(line: 234, column: 22, scope: !2908)
!3216 = !DILocation(line: 233, column: 19, scope: !2908)
!3217 = !DILocation(line: 233, column: 25, scope: !2908)
!3218 = !DILocation(line: 234, column: 9, scope: !2908)
!3219 = !DILocation(line: 113, column: 42, scope: !2870)
!3220 = !DILocation(line: 113, column: 3, scope: !2870)
!3221 = distinct !{!3221, !2871, !3222, !200}
!3222 = !DILocation(line: 303, column: 3, scope: !2867)
!3223 = !DILocation(line: 306, column: 12, scope: !2812)
!3224 = !DILocation(line: 307, column: 3, scope: !2812)
!3225 = !DILocation(line: 307, column: 12, scope: !2812)
!3226 = !DILocation(line: 308, column: 3, scope: !2812)
!3227 = !DILocation(line: 308, column: 12, scope: !2812)
!3228 = !DILocation(line: 309, column: 3, scope: !2812)
!3229 = !DILocation(line: 309, column: 12, scope: !2812)
!3230 = !DILocation(line: 310, column: 3, scope: !2812)
!3231 = !DILocation(line: 310, column: 12, scope: !2812)
!3232 = !DILocation(line: 311, column: 3, scope: !2812)
!3233 = !DILocation(line: 311, column: 12, scope: !2812)
!3234 = !DILocation(line: 312, column: 3, scope: !2812)
!3235 = !DILocation(line: 312, column: 12, scope: !2812)
!3236 = !DILocation(line: 313, column: 3, scope: !2812)
!3237 = !DILocation(line: 313, column: 12, scope: !2812)
!3238 = !DILocation(line: 314, column: 3, scope: !2812)
!3239 = !DILocation(line: 314, column: 12, scope: !2812)
!3240 = !DILocation(line: 315, column: 3, scope: !2812)
!3241 = !DILocation(line: 315, column: 12, scope: !2812)
!3242 = !DILocation(line: 316, column: 3, scope: !2812)
!3243 = !DILocation(line: 316, column: 13, scope: !2812)
!3244 = !DILocation(line: 317, column: 3, scope: !2812)
!3245 = !DILocation(line: 317, column: 13, scope: !2812)
!3246 = !DILocation(line: 318, column: 3, scope: !2812)
!3247 = !DILocation(line: 318, column: 13, scope: !2812)
!3248 = !DILocation(line: 319, column: 3, scope: !2812)
!3249 = !DILocation(line: 319, column: 13, scope: !2812)
!3250 = !DILocation(line: 320, column: 3, scope: !2812)
!3251 = !DILocation(line: 320, column: 13, scope: !2812)
!3252 = !DILocation(line: 321, column: 3, scope: !2812)
!3253 = !DILocation(line: 321, column: 13, scope: !2812)
!3254 = !DILocation(line: 322, column: 3, scope: !2812)
!3255 = !DILocation(line: 322, column: 13, scope: !2812)
!3256 = !DILocation(line: 323, column: 3, scope: !2812)
!3257 = !DILocation(line: 323, column: 13, scope: !2812)
!3258 = !DILocation(line: 324, column: 3, scope: !2812)
!3259 = !DILocation(line: 324, column: 13, scope: !2812)
!3260 = !DILocation(line: 325, column: 3, scope: !2812)
!3261 = !DILocation(line: 325, column: 13, scope: !2812)
!3262 = !DILocation(line: 326, column: 3, scope: !2812)
!3263 = !DILocation(line: 326, column: 13, scope: !2812)
!3264 = !DILocation(line: 327, column: 3, scope: !2812)
!3265 = !DILocation(line: 327, column: 13, scope: !2812)
!3266 = !DILocation(line: 328, column: 3, scope: !2812)
!3267 = !DILocation(line: 328, column: 13, scope: !2812)
!3268 = !DILocation(line: 329, column: 3, scope: !2812)
!3269 = !DILocation(line: 329, column: 13, scope: !2812)
!3270 = !DILocation(line: 330, column: 3, scope: !2812)
!3271 = !DILocation(line: 330, column: 13, scope: !2812)
!3272 = !DILocation(line: 331, column: 1, scope: !2812)
!3273 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_finalize", scope: !89, file: !89, line: 526, type: !2713, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3274 = !DILocalVariable(name: "state", arg: 1, scope: !3273, file: !89, line: 526, type: !2715)
!3275 = !DILocation(line: 0, scope: !3273)
!3276 = !DILocation(line: 527, column: 41, scope: !3273)
!3277 = !DILocation(line: 527, column: 27, scope: !3273)
!3278 = !DILocation(line: 527, column: 3, scope: !3273)
!3279 = !DILocation(line: 529, column: 3, scope: !3273)
!3280 = !DILocation(line: 529, column: 29, scope: !3273)
!3281 = !DILocation(line: 530, column: 1, scope: !3273)
!3282 = distinct !DISubprogram(name: "keccak_finalize", scope: !89, file: !89, line: 388, type: !3283, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !2725, !55, !55, !48}
!3285 = !DILocalVariable(name: "s", arg: 1, scope: !3282, file: !89, line: 388, type: !2725)
!3286 = !DILocation(line: 0, scope: !3282)
!3287 = !DILocalVariable(name: "pos", arg: 2, scope: !3282, file: !89, line: 388, type: !55)
!3288 = !DILocalVariable(name: "r", arg: 3, scope: !3282, file: !89, line: 388, type: !55)
!3289 = !DILocalVariable(name: "p", arg: 4, scope: !3282, file: !89, line: 389, type: !48)
!3290 = !DILocation(line: 390, column: 34, scope: !3282)
!3291 = !DILocation(line: 390, column: 29, scope: !3282)
!3292 = !DILocation(line: 390, column: 9, scope: !3282)
!3293 = !DILocation(line: 390, column: 3, scope: !3282)
!3294 = !DILocation(line: 390, column: 14, scope: !3282)
!3295 = !DILocation(line: 391, column: 7, scope: !3282)
!3296 = !DILocation(line: 391, column: 3, scope: !3282)
!3297 = !DILocation(line: 391, column: 16, scope: !3282)
!3298 = !DILocation(line: 392, column: 1, scope: !3282)
!3299 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_squeeze", scope: !89, file: !89, line: 543, type: !3300, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{null, !47, !53, !2715}
!3302 = !DILocalVariable(name: "out", arg: 1, scope: !3299, file: !89, line: 543, type: !47)
!3303 = !DILocation(line: 0, scope: !3299)
!3304 = !DILocalVariable(name: "outlen", arg: 2, scope: !3299, file: !89, line: 543, type: !53)
!3305 = !DILocalVariable(name: "state", arg: 3, scope: !3299, file: !89, line: 543, type: !2715)
!3306 = !DILocation(line: 546, column: 36, scope: !3299)
!3307 = !DILocation(line: 546, column: 22, scope: !3299)
!3308 = !DILocation(line: 545, column: 7, scope: !3299)
!3309 = !DILocalVariable(name: "pos", scope: !3299, file: !89, line: 544, type: !55)
!3310 = !DILocation(line: 547, column: 31, scope: !3299)
!3311 = !DILocation(line: 547, column: 3, scope: !3299)
!3312 = !DILocation(line: 547, column: 29, scope: !3299)
!3313 = !DILocation(line: 548, column: 1, scope: !3299)
!3314 = distinct !DISubprogram(name: "keccak_squeeze", scope: !89, file: !89, line: 410, type: !3315, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!55, !47, !53, !2725, !55, !55}
!3317 = !DILocalVariable(name: "out", arg: 1, scope: !3314, file: !89, line: 410, type: !47)
!3318 = !DILocation(line: 0, scope: !3314)
!3319 = !DILocalVariable(name: "outlen", arg: 2, scope: !3314, file: !89, line: 410, type: !53)
!3320 = !DILocalVariable(name: "s", arg: 3, scope: !3314, file: !89, line: 410, type: !2725)
!3321 = !DILocalVariable(name: "pos", arg: 4, scope: !3314, file: !89, line: 411, type: !55)
!3322 = !DILocalVariable(name: "r", arg: 5, scope: !3314, file: !89, line: 411, type: !55)
!3323 = !DILocation(line: 414, column: 3, scope: !3314)
!3324 = !DILocation(line: 415, column: 13, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !89, line: 415, column: 9)
!3326 = distinct !DILexicalBlock(scope: !3314, file: !89, line: 414, column: 18)
!3327 = !DILocation(line: 416, column: 7, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3325, file: !89, line: 415, column: 19)
!3329 = !DILocation(line: 418, column: 5, scope: !3328)
!3330 = !DILocalVariable(name: "i", scope: !3314, file: !89, line: 412, type: !55)
!3331 = !DILocation(line: 419, column: 10, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3326, file: !89, line: 419, column: 5)
!3333 = !DILocation(line: 419, scope: !3332)
!3334 = !DILocation(line: 419, column: 21, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3332, file: !89, line: 419, column: 5)
!3336 = !DILocation(line: 419, column: 25, scope: !3335)
!3337 = !DILocation(line: 419, column: 5, scope: !3332)
!3338 = !DILocation(line: 420, column: 20, scope: !3335)
!3339 = !DILocation(line: 420, column: 16, scope: !3335)
!3340 = !DILocation(line: 420, column: 30, scope: !3335)
!3341 = !DILocation(line: 420, column: 25, scope: !3335)
!3342 = !DILocation(line: 420, column: 14, scope: !3335)
!3343 = !DILocation(line: 420, column: 11, scope: !3335)
!3344 = !DILocation(line: 419, column: 47, scope: !3335)
!3345 = !DILocation(line: 419, column: 5, scope: !3335)
!3346 = distinct !{!3346, !3337, !3347, !200}
!3347 = !DILocation(line: 420, column: 38, scope: !3332)
!3348 = !DILocation(line: 421, column: 17, scope: !3326)
!3349 = !DILocation(line: 421, column: 12, scope: !3326)
!3350 = distinct !{!3350, !3323, !3351, !200}
!3351 = !DILocation(line: 423, column: 3, scope: !3314)
!3352 = !DILocation(line: 425, column: 3, scope: !3314)
!3353 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_absorb_once", scope: !89, file: !89, line: 561, type: !2743, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3354 = !DILocalVariable(name: "state", arg: 1, scope: !3353, file: !89, line: 561, type: !2715)
!3355 = !DILocation(line: 0, scope: !3353)
!3356 = !DILocalVariable(name: "in", arg: 2, scope: !3353, file: !89, line: 561, type: !324)
!3357 = !DILocalVariable(name: "inlen", arg: 3, scope: !3353, file: !89, line: 562, type: !53)
!3358 = !DILocation(line: 563, column: 3, scope: !3353)
!3359 = !DILocation(line: 564, column: 3, scope: !3353)
!3360 = !DILocation(line: 564, column: 29, scope: !3353)
!3361 = !DILocation(line: 565, column: 1, scope: !3353)
!3362 = distinct !DISubprogram(name: "keccak_absorb_once", scope: !89, file: !89, line: 441, type: !3363, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !2725, !55, !324, !53, !48}
!3365 = !DILocalVariable(name: "s", arg: 1, scope: !3362, file: !89, line: 441, type: !2725)
!3366 = !DILocation(line: 0, scope: !3362)
!3367 = !DILocalVariable(name: "r", arg: 2, scope: !3362, file: !89, line: 441, type: !55)
!3368 = !DILocalVariable(name: "in", arg: 3, scope: !3362, file: !89, line: 442, type: !324)
!3369 = !DILocalVariable(name: "inlen", arg: 4, scope: !3362, file: !89, line: 442, type: !53)
!3370 = !DILocalVariable(name: "p", arg: 5, scope: !3362, file: !89, line: 442, type: !48)
!3371 = !DILocalVariable(name: "i", scope: !3362, file: !89, line: 443, type: !55)
!3372 = !DILocation(line: 445, column: 8, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3362, file: !89, line: 445, column: 3)
!3374 = !DILocation(line: 445, scope: !3373)
!3375 = !DILocation(line: 445, column: 17, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3373, file: !89, line: 445, column: 3)
!3377 = !DILocation(line: 445, column: 3, scope: !3373)
!3378 = !DILocation(line: 448, column: 3, scope: !3362)
!3379 = !DILocation(line: 446, column: 5, scope: !3376)
!3380 = !DILocation(line: 446, column: 10, scope: !3376)
!3381 = !DILocation(line: 445, column: 24, scope: !3376)
!3382 = !DILocation(line: 445, column: 3, scope: !3376)
!3383 = distinct !{!3383, !3377, !3384, !200}
!3384 = !DILocation(line: 446, column: 12, scope: !3373)
!3385 = !DILocation(line: 448, column: 16, scope: !3362)
!3386 = !DILocation(line: 449, column: 5, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !89, line: 449, column: 5)
!3388 = distinct !DILexicalBlock(scope: !3362, file: !89, line: 448, column: 22)
!3389 = !DILocation(line: 456, column: 3, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3362, file: !89, line: 456, column: 3)
!3391 = !DILocation(line: 449, scope: !3387)
!3392 = !DILocation(line: 449, column: 19, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3387, file: !89, line: 449, column: 5)
!3394 = !DILocation(line: 450, column: 29, scope: !3393)
!3395 = !DILocation(line: 450, column: 25, scope: !3393)
!3396 = !DILocation(line: 450, column: 15, scope: !3393)
!3397 = !DILocation(line: 450, column: 7, scope: !3393)
!3398 = !DILocation(line: 450, column: 12, scope: !3393)
!3399 = !DILocation(line: 449, column: 29, scope: !3393)
!3400 = !DILocation(line: 449, column: 5, scope: !3393)
!3401 = distinct !{!3401, !3386, !3402, !200}
!3402 = !DILocation(line: 450, column: 32, scope: !3387)
!3403 = !DILocation(line: 451, column: 8, scope: !3388)
!3404 = !DILocation(line: 452, column: 11, scope: !3388)
!3405 = !DILocation(line: 453, column: 5, scope: !3388)
!3406 = distinct !{!3406, !3378, !3407, !200}
!3407 = !DILocation(line: 454, column: 3, scope: !3362)
!3408 = !DILocation(line: 456, scope: !3390)
!3409 = !DILocation(line: 456, column: 17, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3390, file: !89, line: 456, column: 3)
!3411 = !DILocation(line: 457, column: 27, scope: !3410)
!3412 = !DILocation(line: 457, column: 17, scope: !3410)
!3413 = !DILocation(line: 457, column: 38, scope: !3410)
!3414 = !DILocation(line: 457, column: 33, scope: !3410)
!3415 = !DILocation(line: 457, column: 9, scope: !3410)
!3416 = !DILocation(line: 457, column: 5, scope: !3410)
!3417 = !DILocation(line: 457, column: 14, scope: !3410)
!3418 = !DILocation(line: 456, column: 27, scope: !3410)
!3419 = !DILocation(line: 456, column: 3, scope: !3410)
!3420 = distinct !{!3420, !3389, !3421, !200}
!3421 = !DILocation(line: 457, column: 46, scope: !3390)
!3422 = !DILocation(line: 459, column: 15, scope: !3362)
!3423 = !DILocation(line: 459, column: 32, scope: !3362)
!3424 = !DILocation(line: 459, column: 27, scope: !3362)
!3425 = !DILocation(line: 459, column: 7, scope: !3362)
!3426 = !DILocation(line: 459, column: 3, scope: !3362)
!3427 = !DILocation(line: 459, column: 12, scope: !3362)
!3428 = !DILocation(line: 460, column: 8, scope: !3362)
!3429 = !DILocation(line: 460, column: 13, scope: !3362)
!3430 = !DILocation(line: 460, column: 3, scope: !3362)
!3431 = !DILocation(line: 460, column: 18, scope: !3362)
!3432 = !DILocation(line: 461, column: 1, scope: !3362)
!3433 = distinct !DISubprogram(name: "load64", scope: !89, file: !89, line: 22, type: !3434, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!85, !324}
!3436 = !DILocalVariable(name: "x", arg: 1, scope: !3433, file: !89, line: 22, type: !324)
!3437 = !DILocation(line: 0, scope: !3433)
!3438 = !DILocalVariable(name: "r", scope: !3433, file: !89, line: 24, type: !85)
!3439 = !DILocalVariable(name: "i", scope: !3433, file: !89, line: 23, type: !55)
!3440 = !DILocation(line: 26, column: 8, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3433, file: !89, line: 26, column: 3)
!3442 = !DILocation(line: 26, scope: !3441)
!3443 = !DILocation(line: 26, column: 17, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3441, file: !89, line: 26, column: 3)
!3445 = !DILocation(line: 26, column: 3, scope: !3441)
!3446 = !DILocation(line: 27, column: 20, scope: !3444)
!3447 = !DILocation(line: 27, column: 10, scope: !3444)
!3448 = !DILocation(line: 27, column: 30, scope: !3444)
!3449 = !DILocation(line: 27, column: 25, scope: !3444)
!3450 = !DILocation(line: 27, column: 7, scope: !3444)
!3451 = !DILocation(line: 26, column: 23, scope: !3444)
!3452 = !DILocation(line: 26, column: 3, scope: !3444)
!3453 = distinct !{!3453, !3445, !3454, !200}
!3454 = !DILocation(line: 27, column: 32, scope: !3441)
!3455 = !DILocation(line: 29, column: 3, scope: !3433)
!3456 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks", scope: !89, file: !89, line: 580, type: !3300, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3457 = !DILocalVariable(name: "out", arg: 1, scope: !3456, file: !89, line: 580, type: !47)
!3458 = !DILocation(line: 0, scope: !3456)
!3459 = !DILocalVariable(name: "nblocks", arg: 2, scope: !3456, file: !89, line: 580, type: !53)
!3460 = !DILocalVariable(name: "state", arg: 3, scope: !3456, file: !89, line: 580, type: !2715)
!3461 = !DILocation(line: 581, column: 3, scope: !3456)
!3462 = !DILocation(line: 582, column: 1, scope: !3456)
!3463 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !89, file: !89, line: 477, type: !3464, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{null, !47, !53, !2725, !55}
!3466 = !DILocalVariable(name: "out", arg: 1, scope: !3463, file: !89, line: 477, type: !47)
!3467 = !DILocation(line: 0, scope: !3463)
!3468 = !DILocalVariable(name: "nblocks", arg: 2, scope: !3463, file: !89, line: 477, type: !53)
!3469 = !DILocalVariable(name: "s", arg: 3, scope: !3463, file: !89, line: 477, type: !2725)
!3470 = !DILocalVariable(name: "r", arg: 4, scope: !3463, file: !89, line: 478, type: !55)
!3471 = !DILocation(line: 481, column: 3, scope: !3463)
!3472 = !DILocation(line: 482, column: 5, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3463, file: !89, line: 481, column: 19)
!3474 = !DILocalVariable(name: "i", scope: !3463, file: !89, line: 479, type: !55)
!3475 = !DILocation(line: 483, column: 10, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3473, file: !89, line: 483, column: 5)
!3477 = !DILocation(line: 483, scope: !3476)
!3478 = !DILocation(line: 483, column: 19, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3476, file: !89, line: 483, column: 5)
!3480 = !DILocation(line: 483, column: 5, scope: !3476)
!3481 = !DILocation(line: 484, column: 23, scope: !3479)
!3482 = !DILocation(line: 484, column: 19, scope: !3479)
!3483 = !DILocation(line: 484, column: 28, scope: !3479)
!3484 = !DILocation(line: 484, column: 7, scope: !3479)
!3485 = !DILocation(line: 483, column: 29, scope: !3479)
!3486 = !DILocation(line: 483, column: 5, scope: !3479)
!3487 = distinct !{!3487, !3480, !3488, !200}
!3488 = !DILocation(line: 484, column: 32, scope: !3476)
!3489 = !DILocation(line: 485, column: 9, scope: !3473)
!3490 = !DILocation(line: 486, column: 13, scope: !3473)
!3491 = distinct !{!3491, !3471, !3492, !200}
!3492 = !DILocation(line: 487, column: 3, scope: !3463)
!3493 = !DILocation(line: 488, column: 1, scope: !3463)
!3494 = distinct !DISubprogram(name: "store64", scope: !89, file: !89, line: 41, type: !3495, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !47, !85}
!3497 = !DILocalVariable(name: "x", arg: 1, scope: !3494, file: !89, line: 41, type: !47)
!3498 = !DILocation(line: 0, scope: !3494)
!3499 = !DILocalVariable(name: "u", arg: 2, scope: !3494, file: !89, line: 41, type: !85)
!3500 = !DILocalVariable(name: "i", scope: !3494, file: !89, line: 42, type: !55)
!3501 = !DILocation(line: 44, column: 8, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3494, file: !89, line: 44, column: 3)
!3503 = !DILocation(line: 44, scope: !3502)
!3504 = !DILocation(line: 44, column: 17, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3502, file: !89, line: 44, column: 3)
!3506 = !DILocation(line: 44, column: 3, scope: !3502)
!3507 = !DILocation(line: 45, column: 19, scope: !3505)
!3508 = !DILocation(line: 45, column: 14, scope: !3505)
!3509 = !DILocation(line: 45, column: 12, scope: !3505)
!3510 = !DILocation(line: 45, column: 5, scope: !3505)
!3511 = !DILocation(line: 45, column: 10, scope: !3505)
!3512 = !DILocation(line: 44, column: 23, scope: !3505)
!3513 = !DILocation(line: 44, column: 3, scope: !3505)
!3514 = distinct !{!3514, !3506, !3515, !200}
!3515 = !DILocation(line: 45, column: 21, scope: !3502)
!3516 = !DILocation(line: 46, column: 1, scope: !3494)
!3517 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_init", scope: !89, file: !89, line: 591, type: !2713, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3518 = !DILocalVariable(name: "state", arg: 1, scope: !3517, file: !89, line: 591, type: !2715)
!3519 = !DILocation(line: 0, scope: !3517)
!3520 = !DILocation(line: 592, column: 3, scope: !3517)
!3521 = !DILocation(line: 593, column: 3, scope: !3517)
!3522 = !DILocation(line: 593, column: 29, scope: !3517)
!3523 = !DILocation(line: 594, column: 1, scope: !3517)
!3524 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_absorb", scope: !89, file: !89, line: 606, type: !2743, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3525 = !DILocalVariable(name: "state", arg: 1, scope: !3524, file: !89, line: 606, type: !2715)
!3526 = !DILocation(line: 0, scope: !3524)
!3527 = !DILocalVariable(name: "in", arg: 2, scope: !3524, file: !89, line: 606, type: !324)
!3528 = !DILocalVariable(name: "inlen", arg: 3, scope: !3524, file: !89, line: 606, type: !53)
!3529 = !DILocation(line: 608, column: 43, scope: !3524)
!3530 = !DILocation(line: 608, column: 29, scope: !3524)
!3531 = !DILocation(line: 608, column: 7, scope: !3524)
!3532 = !DILocalVariable(name: "pos", scope: !3524, file: !89, line: 607, type: !55)
!3533 = !DILocation(line: 610, column: 31, scope: !3524)
!3534 = !DILocation(line: 610, column: 3, scope: !3524)
!3535 = !DILocation(line: 610, column: 29, scope: !3524)
!3536 = !DILocation(line: 611, column: 1, scope: !3524)
!3537 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_finalize", scope: !89, file: !89, line: 620, type: !2713, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3538 = !DILocalVariable(name: "state", arg: 1, scope: !3537, file: !89, line: 620, type: !2715)
!3539 = !DILocation(line: 0, scope: !3537)
!3540 = !DILocation(line: 621, column: 41, scope: !3537)
!3541 = !DILocation(line: 621, column: 27, scope: !3537)
!3542 = !DILocation(line: 621, column: 3, scope: !3537)
!3543 = !DILocation(line: 623, column: 3, scope: !3537)
!3544 = !DILocation(line: 623, column: 29, scope: !3537)
!3545 = !DILocation(line: 624, column: 1, scope: !3537)
!3546 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_squeeze", scope: !89, file: !89, line: 637, type: !3300, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3547 = !DILocalVariable(name: "out", arg: 1, scope: !3546, file: !89, line: 637, type: !47)
!3548 = !DILocation(line: 0, scope: !3546)
!3549 = !DILocalVariable(name: "outlen", arg: 2, scope: !3546, file: !89, line: 637, type: !53)
!3550 = !DILocalVariable(name: "state", arg: 3, scope: !3546, file: !89, line: 637, type: !2715)
!3551 = !DILocation(line: 640, column: 36, scope: !3546)
!3552 = !DILocation(line: 640, column: 22, scope: !3546)
!3553 = !DILocation(line: 639, column: 7, scope: !3546)
!3554 = !DILocalVariable(name: "pos", scope: !3546, file: !89, line: 638, type: !55)
!3555 = !DILocation(line: 641, column: 31, scope: !3546)
!3556 = !DILocation(line: 641, column: 3, scope: !3546)
!3557 = !DILocation(line: 641, column: 29, scope: !3546)
!3558 = !DILocation(line: 642, column: 1, scope: !3546)
!3559 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_absorb_once", scope: !89, file: !89, line: 655, type: !2743, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3560 = !DILocalVariable(name: "state", arg: 1, scope: !3559, file: !89, line: 655, type: !2715)
!3561 = !DILocation(line: 0, scope: !3559)
!3562 = !DILocalVariable(name: "in", arg: 2, scope: !3559, file: !89, line: 655, type: !324)
!3563 = !DILocalVariable(name: "inlen", arg: 3, scope: !3559, file: !89, line: 656, type: !53)
!3564 = !DILocation(line: 657, column: 3, scope: !3559)
!3565 = !DILocation(line: 658, column: 3, scope: !3559)
!3566 = !DILocation(line: 658, column: 29, scope: !3559)
!3567 = !DILocation(line: 659, column: 1, scope: !3559)
!3568 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks", scope: !89, file: !89, line: 674, type: !3300, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3569 = !DILocalVariable(name: "out", arg: 1, scope: !3568, file: !89, line: 674, type: !47)
!3570 = !DILocation(line: 0, scope: !3568)
!3571 = !DILocalVariable(name: "nblocks", arg: 2, scope: !3568, file: !89, line: 674, type: !53)
!3572 = !DILocalVariable(name: "state", arg: 3, scope: !3568, file: !89, line: 674, type: !2715)
!3573 = !DILocation(line: 675, column: 3, scope: !3568)
!3574 = !DILocation(line: 676, column: 1, scope: !3568)
!3575 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128", scope: !89, file: !89, line: 688, type: !3576, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{null, !47, !53, !324, !53}
!3578 = !DILocalVariable(name: "out", arg: 1, scope: !3575, file: !89, line: 688, type: !47)
!3579 = !DILocation(line: 0, scope: !3575)
!3580 = !DILocalVariable(name: "outlen", arg: 2, scope: !3575, file: !89, line: 688, type: !53)
!3581 = !DILocalVariable(name: "in", arg: 3, scope: !3575, file: !89, line: 688, type: !324)
!3582 = !DILocalVariable(name: "inlen", arg: 4, scope: !3575, file: !89, line: 688, type: !53)
!3583 = !DILocalVariable(name: "state", scope: !3575, file: !89, line: 690, type: !386)
!3584 = !DILocation(line: 690, column: 16, scope: !3575)
!3585 = !DILocation(line: 692, column: 3, scope: !3575)
!3586 = !DILocation(line: 693, column: 20, scope: !3575)
!3587 = !DILocalVariable(name: "nblocks", scope: !3575, file: !89, line: 689, type: !53)
!3588 = !DILocation(line: 694, column: 3, scope: !3575)
!3589 = !DILocation(line: 695, column: 21, scope: !3575)
!3590 = !DILocation(line: 695, column: 10, scope: !3575)
!3591 = !DILocation(line: 696, column: 18, scope: !3575)
!3592 = !DILocation(line: 696, column: 7, scope: !3575)
!3593 = !DILocation(line: 697, column: 3, scope: !3575)
!3594 = !DILocation(line: 698, column: 1, scope: !3575)
!3595 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256", scope: !89, file: !89, line: 710, type: !3576, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3596 = !DILocalVariable(name: "out", arg: 1, scope: !3595, file: !89, line: 710, type: !47)
!3597 = !DILocation(line: 0, scope: !3595)
!3598 = !DILocalVariable(name: "outlen", arg: 2, scope: !3595, file: !89, line: 710, type: !53)
!3599 = !DILocalVariable(name: "in", arg: 3, scope: !3595, file: !89, line: 710, type: !324)
!3600 = !DILocalVariable(name: "inlen", arg: 4, scope: !3595, file: !89, line: 710, type: !53)
!3601 = !DILocalVariable(name: "state", scope: !3595, file: !89, line: 712, type: !386)
!3602 = !DILocation(line: 712, column: 16, scope: !3595)
!3603 = !DILocation(line: 714, column: 3, scope: !3595)
!3604 = !DILocation(line: 715, column: 20, scope: !3595)
!3605 = !DILocalVariable(name: "nblocks", scope: !3595, file: !89, line: 711, type: !53)
!3606 = !DILocation(line: 716, column: 3, scope: !3595)
!3607 = !DILocation(line: 717, column: 21, scope: !3595)
!3608 = !DILocation(line: 717, column: 10, scope: !3595)
!3609 = !DILocation(line: 718, column: 18, scope: !3595)
!3610 = !DILocation(line: 718, column: 7, scope: !3595)
!3611 = !DILocation(line: 719, column: 3, scope: !3595)
!3612 = !DILocation(line: 720, column: 1, scope: !3595)
!3613 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_sha3_256", scope: !89, file: !89, line: 731, type: !3614, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !47, !324, !53}
!3616 = !DILocalVariable(name: "h", arg: 1, scope: !3613, file: !89, line: 731, type: !47)
!3617 = !DILocation(line: 0, scope: !3613)
!3618 = !DILocalVariable(name: "in", arg: 2, scope: !3613, file: !89, line: 731, type: !324)
!3619 = !DILocalVariable(name: "inlen", arg: 3, scope: !3613, file: !89, line: 731, type: !53)
!3620 = !DILocalVariable(name: "s", scope: !3613, file: !89, line: 733, type: !3621)
!3621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 1600, elements: !3622)
!3622 = !{!3623}
!3623 = !DISubrange(count: 25)
!3624 = !DILocation(line: 733, column: 12, scope: !3613)
!3625 = !DILocation(line: 735, column: 3, scope: !3613)
!3626 = !DILocation(line: 736, column: 3, scope: !3613)
!3627 = !DILocalVariable(name: "i", scope: !3613, file: !89, line: 732, type: !55)
!3628 = !DILocation(line: 737, column: 8, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3613, file: !89, line: 737, column: 3)
!3630 = !DILocation(line: 737, scope: !3629)
!3631 = !DILocation(line: 737, column: 17, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3629, file: !89, line: 737, column: 3)
!3633 = !DILocation(line: 737, column: 3, scope: !3629)
!3634 = !DILocation(line: 738, column: 19, scope: !3632)
!3635 = !DILocation(line: 738, column: 15, scope: !3632)
!3636 = !DILocation(line: 738, column: 24, scope: !3632)
!3637 = !DILocation(line: 738, column: 5, scope: !3632)
!3638 = !DILocation(line: 737, column: 23, scope: !3632)
!3639 = !DILocation(line: 737, column: 3, scope: !3632)
!3640 = distinct !{!3640, !3633, !3641, !200}
!3641 = !DILocation(line: 738, column: 28, scope: !3629)
!3642 = !DILocation(line: 739, column: 1, scope: !3613)
!3643 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_sha3_512", scope: !89, file: !89, line: 750, type: !3614, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3644 = !DILocalVariable(name: "h", arg: 1, scope: !3643, file: !89, line: 750, type: !47)
!3645 = !DILocation(line: 0, scope: !3643)
!3646 = !DILocalVariable(name: "in", arg: 2, scope: !3643, file: !89, line: 750, type: !324)
!3647 = !DILocalVariable(name: "inlen", arg: 3, scope: !3643, file: !89, line: 750, type: !53)
!3648 = !DILocalVariable(name: "s", scope: !3643, file: !89, line: 752, type: !3621)
!3649 = !DILocation(line: 752, column: 12, scope: !3643)
!3650 = !DILocation(line: 754, column: 3, scope: !3643)
!3651 = !DILocation(line: 755, column: 3, scope: !3643)
!3652 = !DILocalVariable(name: "i", scope: !3643, file: !89, line: 751, type: !55)
!3653 = !DILocation(line: 756, column: 8, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3643, file: !89, line: 756, column: 3)
!3655 = !DILocation(line: 756, scope: !3654)
!3656 = !DILocation(line: 756, column: 17, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3654, file: !89, line: 756, column: 3)
!3658 = !DILocation(line: 756, column: 3, scope: !3654)
!3659 = !DILocation(line: 757, column: 19, scope: !3657)
!3660 = !DILocation(line: 757, column: 15, scope: !3657)
!3661 = !DILocation(line: 757, column: 24, scope: !3657)
!3662 = !DILocation(line: 757, column: 5, scope: !3657)
!3663 = !DILocation(line: 756, column: 23, scope: !3657)
!3664 = !DILocation(line: 756, column: 3, scope: !3657)
!3665 = distinct !{!3665, !3658, !3666, !200}
!3666 = !DILocation(line: 757, column: 28, scope: !3654)
!3667 = !DILocation(line: 758, column: 1, scope: !3643)
!3668 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_dilithium_shake128_stream_init", scope: !3669, file: !3669, line: 6, type: !3670, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !64)
!3669 = !DIFile(filename: "../../../ref/symmetric-shake.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !2715, !324, !362}
!3672 = !DILocalVariable(name: "state", arg: 1, scope: !3668, file: !3669, line: 6, type: !2715)
!3673 = !DILocation(line: 0, scope: !3668)
!3674 = !DILocalVariable(name: "seed", arg: 2, scope: !3668, file: !3669, line: 6, type: !324)
!3675 = !DILocalVariable(name: "nonce", arg: 3, scope: !3668, file: !3669, line: 6, type: !362)
!3676 = !DILocalVariable(name: "t", scope: !3668, file: !3669, line: 8, type: !3677)
!3677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 16, elements: !3678)
!3678 = !{!3679}
!3679 = !DISubrange(count: 2)
!3680 = !DILocation(line: 8, column: 11, scope: !3668)
!3681 = !DILocation(line: 9, column: 10, scope: !3668)
!3682 = !DILocation(line: 9, column: 8, scope: !3668)
!3683 = !DILocation(line: 10, column: 16, scope: !3668)
!3684 = !DILocation(line: 10, column: 10, scope: !3668)
!3685 = !DILocation(line: 10, column: 3, scope: !3668)
!3686 = !DILocation(line: 10, column: 8, scope: !3668)
!3687 = !DILocation(line: 12, column: 3, scope: !3668)
!3688 = !DILocation(line: 13, column: 3, scope: !3668)
!3689 = !DILocation(line: 14, column: 3, scope: !3668)
!3690 = !DILocation(line: 15, column: 3, scope: !3668)
!3691 = !DILocation(line: 16, column: 1, scope: !3668)
!3692 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_dilithium_shake256_stream_init", scope: !3669, file: !3669, line: 18, type: !3670, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !64)
!3693 = !DILocalVariable(name: "state", arg: 1, scope: !3692, file: !3669, line: 18, type: !2715)
!3694 = !DILocation(line: 0, scope: !3692)
!3695 = !DILocalVariable(name: "seed", arg: 2, scope: !3692, file: !3669, line: 18, type: !324)
!3696 = !DILocalVariable(name: "nonce", arg: 3, scope: !3692, file: !3669, line: 18, type: !362)
!3697 = !DILocalVariable(name: "t", scope: !3692, file: !3669, line: 20, type: !3677)
!3698 = !DILocation(line: 20, column: 11, scope: !3692)
!3699 = !DILocation(line: 21, column: 10, scope: !3692)
!3700 = !DILocation(line: 21, column: 8, scope: !3692)
!3701 = !DILocation(line: 22, column: 16, scope: !3692)
!3702 = !DILocation(line: 22, column: 10, scope: !3692)
!3703 = !DILocation(line: 22, column: 3, scope: !3692)
!3704 = !DILocation(line: 22, column: 8, scope: !3692)
!3705 = !DILocation(line: 24, column: 3, scope: !3692)
!3706 = !DILocation(line: 25, column: 3, scope: !3692)
!3707 = !DILocation(line: 26, column: 3, scope: !3692)
!3708 = !DILocation(line: 27, column: 3, scope: !3692)
!3709 = !DILocation(line: 28, column: 1, scope: !3692)
!3710 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_pack_pk", scope: !3711, file: !3711, line: 15, type: !3712, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!3711 = !DIFile(filename: "../../../ref/packing.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !47, !324, !1028}
!3714 = !DILocalVariable(name: "pk", arg: 1, scope: !3710, file: !3711, line: 15, type: !47)
!3715 = !DILocation(line: 0, scope: !3710)
!3716 = !DILocalVariable(name: "rho", arg: 2, scope: !3710, file: !3711, line: 15, type: !324)
!3717 = !DILocalVariable(name: "t1", arg: 3, scope: !3710, file: !3711, line: 16, type: !1028)
!3718 = !DILocalVariable(name: "i", scope: !3710, file: !3711, line: 17, type: !55)
!3719 = !DILocation(line: 19, column: 8, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3710, file: !3711, line: 19, column: 3)
!3721 = !DILocation(line: 19, scope: !3720)
!3722 = !DILocation(line: 19, column: 17, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3720, file: !3711, line: 19, column: 3)
!3724 = !DILocation(line: 19, column: 3, scope: !3720)
!3725 = !DILocation(line: 20, column: 13, scope: !3723)
!3726 = !DILocation(line: 20, column: 5, scope: !3723)
!3727 = !DILocation(line: 20, column: 11, scope: !3723)
!3728 = !DILocation(line: 19, column: 30, scope: !3723)
!3729 = !DILocation(line: 19, column: 3, scope: !3723)
!3730 = distinct !{!3730, !3724, !3731, !200}
!3731 = !DILocation(line: 20, column: 18, scope: !3720)
!3732 = !DILocation(line: 21, column: 6, scope: !3710)
!3733 = !DILocation(line: 23, column: 8, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3710, file: !3711, line: 23, column: 3)
!3735 = !DILocation(line: 23, scope: !3734)
!3736 = !DILocation(line: 23, column: 17, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3734, file: !3711, line: 23, column: 3)
!3738 = !DILocation(line: 23, column: 3, scope: !3734)
!3739 = !DILocation(line: 24, column: 24, scope: !3737)
!3740 = !DILocation(line: 24, column: 20, scope: !3737)
!3741 = !DILocation(line: 24, column: 47, scope: !3737)
!3742 = !DILocation(line: 24, column: 5, scope: !3737)
!3743 = !DILocation(line: 23, column: 22, scope: !3737)
!3744 = !DILocation(line: 23, column: 3, scope: !3737)
!3745 = distinct !{!3745, !3738, !3746, !200}
!3746 = !DILocation(line: 24, column: 55, scope: !3734)
!3747 = !DILocation(line: 25, column: 1, scope: !3710)
!3748 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_unpack_pk", scope: !3711, file: !3711, line: 36, type: !3749, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{null, !47, !751, !324}
!3751 = !DILocalVariable(name: "rho", arg: 1, scope: !3748, file: !3711, line: 36, type: !47)
!3752 = !DILocation(line: 0, scope: !3748)
!3753 = !DILocalVariable(name: "t1", arg: 2, scope: !3748, file: !3711, line: 36, type: !751)
!3754 = !DILocalVariable(name: "pk", arg: 3, scope: !3748, file: !3711, line: 37, type: !324)
!3755 = !DILocalVariable(name: "i", scope: !3748, file: !3711, line: 38, type: !55)
!3756 = !DILocation(line: 40, column: 8, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3748, file: !3711, line: 40, column: 3)
!3758 = !DILocation(line: 40, scope: !3757)
!3759 = !DILocation(line: 40, column: 17, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3757, file: !3711, line: 40, column: 3)
!3761 = !DILocation(line: 40, column: 3, scope: !3757)
!3762 = !DILocation(line: 41, column: 14, scope: !3760)
!3763 = !DILocation(line: 41, column: 5, scope: !3760)
!3764 = !DILocation(line: 41, column: 12, scope: !3760)
!3765 = !DILocation(line: 40, column: 30, scope: !3760)
!3766 = !DILocation(line: 40, column: 3, scope: !3760)
!3767 = distinct !{!3767, !3761, !3768, !200}
!3768 = !DILocation(line: 41, column: 18, scope: !3757)
!3769 = !DILocation(line: 42, column: 6, scope: !3748)
!3770 = !DILocation(line: 44, column: 8, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3748, file: !3711, line: 44, column: 3)
!3772 = !DILocation(line: 44, scope: !3771)
!3773 = !DILocation(line: 44, column: 17, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3771, file: !3711, line: 44, column: 3)
!3775 = !DILocation(line: 44, column: 3, scope: !3771)
!3776 = !DILocation(line: 45, column: 20, scope: !3774)
!3777 = !DILocation(line: 45, column: 37, scope: !3774)
!3778 = !DILocation(line: 45, column: 33, scope: !3774)
!3779 = !DILocation(line: 45, column: 5, scope: !3774)
!3780 = !DILocation(line: 44, column: 22, scope: !3774)
!3781 = !DILocation(line: 44, column: 3, scope: !3774)
!3782 = distinct !{!3782, !3775, !3783, !200}
!3783 = !DILocation(line: 45, column: 57, scope: !3771)
!3784 = !DILocation(line: 46, column: 1, scope: !3748)
!3785 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_pack_sk", scope: !3711, file: !3711, line: 61, type: !3786, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !47, !324, !324, !324, !1028, !752, !1028}
!3788 = !DILocalVariable(name: "sk", arg: 1, scope: !3785, file: !3711, line: 61, type: !47)
!3789 = !DILocation(line: 0, scope: !3785)
!3790 = !DILocalVariable(name: "rho", arg: 2, scope: !3785, file: !3711, line: 61, type: !324)
!3791 = !DILocalVariable(name: "tr", arg: 3, scope: !3785, file: !3711, line: 62, type: !324)
!3792 = !DILocalVariable(name: "key", arg: 4, scope: !3785, file: !3711, line: 62, type: !324)
!3793 = !DILocalVariable(name: "t0", arg: 5, scope: !3785, file: !3711, line: 63, type: !1028)
!3794 = !DILocalVariable(name: "s1", arg: 6, scope: !3785, file: !3711, line: 63, type: !752)
!3795 = !DILocalVariable(name: "s2", arg: 7, scope: !3785, file: !3711, line: 63, type: !1028)
!3796 = !DILocalVariable(name: "i", scope: !3785, file: !3711, line: 64, type: !55)
!3797 = !DILocation(line: 66, column: 8, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3785, file: !3711, line: 66, column: 3)
!3799 = !DILocation(line: 66, scope: !3798)
!3800 = !DILocation(line: 66, column: 17, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3798, file: !3711, line: 66, column: 3)
!3802 = !DILocation(line: 66, column: 3, scope: !3798)
!3803 = !DILocation(line: 67, column: 13, scope: !3801)
!3804 = !DILocation(line: 67, column: 5, scope: !3801)
!3805 = !DILocation(line: 67, column: 11, scope: !3801)
!3806 = !DILocation(line: 66, column: 30, scope: !3801)
!3807 = !DILocation(line: 66, column: 3, scope: !3801)
!3808 = distinct !{!3808, !3802, !3809, !200}
!3809 = !DILocation(line: 67, column: 18, scope: !3798)
!3810 = !DILocation(line: 68, column: 6, scope: !3785)
!3811 = !DILocation(line: 70, column: 8, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3785, file: !3711, line: 70, column: 3)
!3813 = !DILocation(line: 70, scope: !3812)
!3814 = !DILocation(line: 70, column: 17, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !3711, line: 70, column: 3)
!3816 = !DILocation(line: 70, column: 3, scope: !3812)
!3817 = !DILocation(line: 71, column: 13, scope: !3815)
!3818 = !DILocation(line: 71, column: 5, scope: !3815)
!3819 = !DILocation(line: 71, column: 11, scope: !3815)
!3820 = !DILocation(line: 70, column: 30, scope: !3815)
!3821 = !DILocation(line: 70, column: 3, scope: !3815)
!3822 = distinct !{!3822, !3816, !3823, !200}
!3823 = !DILocation(line: 71, column: 18, scope: !3812)
!3824 = !DILocation(line: 72, column: 6, scope: !3785)
!3825 = !DILocation(line: 74, column: 8, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3785, file: !3711, line: 74, column: 3)
!3827 = !DILocation(line: 74, scope: !3826)
!3828 = !DILocation(line: 74, column: 17, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3826, file: !3711, line: 74, column: 3)
!3830 = !DILocation(line: 74, column: 3, scope: !3826)
!3831 = !DILocation(line: 75, column: 13, scope: !3829)
!3832 = !DILocation(line: 75, column: 5, scope: !3829)
!3833 = !DILocation(line: 75, column: 11, scope: !3829)
!3834 = !DILocation(line: 74, column: 28, scope: !3829)
!3835 = !DILocation(line: 74, column: 3, scope: !3829)
!3836 = distinct !{!3836, !3830, !3837, !200}
!3837 = !DILocation(line: 75, column: 17, scope: !3826)
!3838 = !DILocation(line: 76, column: 6, scope: !3785)
!3839 = !DILocation(line: 78, column: 8, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3785, file: !3711, line: 78, column: 3)
!3841 = !DILocation(line: 78, scope: !3840)
!3842 = !DILocation(line: 78, column: 17, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3840, file: !3711, line: 78, column: 3)
!3844 = !DILocation(line: 78, column: 3, scope: !3840)
!3845 = !DILocation(line: 79, column: 25, scope: !3843)
!3846 = !DILocation(line: 79, column: 21, scope: !3843)
!3847 = !DILocation(line: 79, column: 49, scope: !3843)
!3848 = !DILocation(line: 79, column: 5, scope: !3843)
!3849 = !DILocation(line: 78, column: 22, scope: !3843)
!3850 = !DILocation(line: 78, column: 3, scope: !3843)
!3851 = distinct !{!3851, !3844, !3852, !200}
!3852 = !DILocation(line: 79, column: 57, scope: !3840)
!3853 = !DILocation(line: 80, column: 6, scope: !3785)
!3854 = !DILocation(line: 82, column: 8, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3785, file: !3711, line: 82, column: 3)
!3856 = !DILocation(line: 82, scope: !3855)
!3857 = !DILocation(line: 82, column: 17, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3855, file: !3711, line: 82, column: 3)
!3859 = !DILocation(line: 82, column: 3, scope: !3855)
!3860 = !DILocation(line: 83, column: 25, scope: !3858)
!3861 = !DILocation(line: 83, column: 21, scope: !3858)
!3862 = !DILocation(line: 83, column: 49, scope: !3858)
!3863 = !DILocation(line: 83, column: 5, scope: !3858)
!3864 = !DILocation(line: 82, column: 22, scope: !3858)
!3865 = !DILocation(line: 82, column: 3, scope: !3858)
!3866 = distinct !{!3866, !3859, !3867, !200}
!3867 = !DILocation(line: 83, column: 57, scope: !3855)
!3868 = !DILocation(line: 84, column: 6, scope: !3785)
!3869 = !DILocation(line: 86, column: 8, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3785, file: !3711, line: 86, column: 3)
!3871 = !DILocation(line: 86, scope: !3870)
!3872 = !DILocation(line: 86, column: 17, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3870, file: !3711, line: 86, column: 3)
!3874 = !DILocation(line: 86, column: 3, scope: !3870)
!3875 = !DILocation(line: 87, column: 24, scope: !3873)
!3876 = !DILocation(line: 87, column: 20, scope: !3873)
!3877 = !DILocation(line: 87, column: 47, scope: !3873)
!3878 = !DILocation(line: 87, column: 5, scope: !3873)
!3879 = !DILocation(line: 86, column: 22, scope: !3873)
!3880 = !DILocation(line: 86, column: 3, scope: !3873)
!3881 = distinct !{!3881, !3874, !3882, !200}
!3882 = !DILocation(line: 87, column: 55, scope: !3870)
!3883 = !DILocation(line: 88, column: 1, scope: !3785)
!3884 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_unpack_sk", scope: !3711, file: !3711, line: 103, type: !3885, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{null, !47, !47, !47, !751, !717, !751, !324}
!3887 = !DILocalVariable(name: "rho", arg: 1, scope: !3884, file: !3711, line: 103, type: !47)
!3888 = !DILocation(line: 0, scope: !3884)
!3889 = !DILocalVariable(name: "tr", arg: 2, scope: !3884, file: !3711, line: 103, type: !47)
!3890 = !DILocalVariable(name: "key", arg: 3, scope: !3884, file: !3711, line: 104, type: !47)
!3891 = !DILocalVariable(name: "t0", arg: 4, scope: !3884, file: !3711, line: 104, type: !751)
!3892 = !DILocalVariable(name: "s1", arg: 5, scope: !3884, file: !3711, line: 104, type: !717)
!3893 = !DILocalVariable(name: "s2", arg: 6, scope: !3884, file: !3711, line: 104, type: !751)
!3894 = !DILocalVariable(name: "sk", arg: 7, scope: !3884, file: !3711, line: 105, type: !324)
!3895 = !DILocalVariable(name: "i", scope: !3884, file: !3711, line: 106, type: !55)
!3896 = !DILocation(line: 108, column: 8, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3884, file: !3711, line: 108, column: 3)
!3898 = !DILocation(line: 108, scope: !3897)
!3899 = !DILocation(line: 108, column: 17, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3897, file: !3711, line: 108, column: 3)
!3901 = !DILocation(line: 108, column: 3, scope: !3897)
!3902 = !DILocation(line: 109, column: 14, scope: !3900)
!3903 = !DILocation(line: 109, column: 5, scope: !3900)
!3904 = !DILocation(line: 109, column: 12, scope: !3900)
!3905 = !DILocation(line: 108, column: 30, scope: !3900)
!3906 = !DILocation(line: 108, column: 3, scope: !3900)
!3907 = distinct !{!3907, !3901, !3908, !200}
!3908 = !DILocation(line: 109, column: 18, scope: !3897)
!3909 = !DILocation(line: 110, column: 6, scope: !3884)
!3910 = !DILocation(line: 112, column: 8, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3884, file: !3711, line: 112, column: 3)
!3912 = !DILocation(line: 112, scope: !3911)
!3913 = !DILocation(line: 112, column: 17, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3911, file: !3711, line: 112, column: 3)
!3915 = !DILocation(line: 112, column: 3, scope: !3911)
!3916 = !DILocation(line: 113, column: 14, scope: !3914)
!3917 = !DILocation(line: 113, column: 5, scope: !3914)
!3918 = !DILocation(line: 113, column: 12, scope: !3914)
!3919 = !DILocation(line: 112, column: 30, scope: !3914)
!3920 = !DILocation(line: 112, column: 3, scope: !3914)
!3921 = distinct !{!3921, !3915, !3922, !200}
!3922 = !DILocation(line: 113, column: 18, scope: !3911)
!3923 = !DILocation(line: 114, column: 6, scope: !3884)
!3924 = !DILocation(line: 116, column: 8, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3884, file: !3711, line: 116, column: 3)
!3926 = !DILocation(line: 116, scope: !3925)
!3927 = !DILocation(line: 116, column: 17, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3925, file: !3711, line: 116, column: 3)
!3929 = !DILocation(line: 116, column: 3, scope: !3925)
!3930 = !DILocation(line: 117, column: 13, scope: !3928)
!3931 = !DILocation(line: 117, column: 5, scope: !3928)
!3932 = !DILocation(line: 117, column: 11, scope: !3928)
!3933 = !DILocation(line: 116, column: 28, scope: !3928)
!3934 = !DILocation(line: 116, column: 3, scope: !3928)
!3935 = distinct !{!3935, !3929, !3936, !200}
!3936 = !DILocation(line: 117, column: 17, scope: !3925)
!3937 = !DILocation(line: 118, column: 6, scope: !3884)
!3938 = !DILocation(line: 120, column: 8, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3884, file: !3711, line: 120, column: 3)
!3940 = !DILocation(line: 120, scope: !3939)
!3941 = !DILocation(line: 120, column: 17, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3939, file: !3711, line: 120, column: 3)
!3943 = !DILocation(line: 120, column: 3, scope: !3939)
!3944 = !DILocation(line: 121, column: 21, scope: !3942)
!3945 = !DILocation(line: 121, column: 38, scope: !3942)
!3946 = !DILocation(line: 121, column: 34, scope: !3942)
!3947 = !DILocation(line: 121, column: 5, scope: !3942)
!3948 = !DILocation(line: 120, column: 22, scope: !3942)
!3949 = !DILocation(line: 120, column: 3, scope: !3942)
!3950 = distinct !{!3950, !3943, !3951, !200}
!3951 = !DILocation(line: 121, column: 59, scope: !3939)
!3952 = !DILocation(line: 122, column: 6, scope: !3884)
!3953 = !DILocation(line: 124, column: 8, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3884, file: !3711, line: 124, column: 3)
!3955 = !DILocation(line: 124, scope: !3954)
!3956 = !DILocation(line: 124, column: 17, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3954, file: !3711, line: 124, column: 3)
!3958 = !DILocation(line: 124, column: 3, scope: !3954)
!3959 = !DILocation(line: 125, column: 21, scope: !3957)
!3960 = !DILocation(line: 125, column: 38, scope: !3957)
!3961 = !DILocation(line: 125, column: 34, scope: !3957)
!3962 = !DILocation(line: 125, column: 5, scope: !3957)
!3963 = !DILocation(line: 124, column: 22, scope: !3957)
!3964 = !DILocation(line: 124, column: 3, scope: !3957)
!3965 = distinct !{!3965, !3958, !3966, !200}
!3966 = !DILocation(line: 125, column: 59, scope: !3954)
!3967 = !DILocation(line: 126, column: 6, scope: !3884)
!3968 = !DILocation(line: 128, column: 8, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3884, file: !3711, line: 128, column: 3)
!3970 = !DILocation(line: 128, scope: !3969)
!3971 = !DILocation(line: 128, column: 17, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3969, file: !3711, line: 128, column: 3)
!3973 = !DILocation(line: 128, column: 3, scope: !3969)
!3974 = !DILocation(line: 129, column: 20, scope: !3972)
!3975 = !DILocation(line: 129, column: 37, scope: !3972)
!3976 = !DILocation(line: 129, column: 33, scope: !3972)
!3977 = !DILocation(line: 129, column: 5, scope: !3972)
!3978 = !DILocation(line: 128, column: 22, scope: !3972)
!3979 = !DILocation(line: 128, column: 3, scope: !3972)
!3980 = distinct !{!3980, !3973, !3981, !200}
!3981 = !DILocation(line: 129, column: 57, scope: !3969)
!3982 = !DILocation(line: 130, column: 1, scope: !3884)
!3983 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_pack_sig", scope: !3711, file: !3711, line: 142, type: !3984, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{null, !47, !324, !752, !1028}
!3986 = !DILocalVariable(name: "sig", arg: 1, scope: !3983, file: !3711, line: 142, type: !47)
!3987 = !DILocation(line: 0, scope: !3983)
!3988 = !DILocalVariable(name: "c", arg: 2, scope: !3983, file: !3711, line: 142, type: !324)
!3989 = !DILocalVariable(name: "z", arg: 3, scope: !3983, file: !3711, line: 143, type: !752)
!3990 = !DILocalVariable(name: "h", arg: 4, scope: !3983, file: !3711, line: 143, type: !1028)
!3991 = !DILocalVariable(name: "i", scope: !3983, file: !3711, line: 144, type: !55)
!3992 = !DILocation(line: 146, column: 8, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3983, file: !3711, line: 146, column: 3)
!3994 = !DILocation(line: 146, scope: !3993)
!3995 = !DILocation(line: 146, column: 17, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !3711, line: 146, column: 3)
!3997 = !DILocation(line: 146, column: 3, scope: !3993)
!3998 = !DILocation(line: 147, column: 14, scope: !3996)
!3999 = !DILocation(line: 147, column: 5, scope: !3996)
!4000 = !DILocation(line: 147, column: 12, scope: !3996)
!4001 = !DILocation(line: 146, column: 32, scope: !3996)
!4002 = !DILocation(line: 146, column: 3, scope: !3996)
!4003 = distinct !{!4003, !3997, !4004, !200}
!4004 = !DILocation(line: 147, column: 17, scope: !3993)
!4005 = !DILocation(line: 148, column: 7, scope: !3983)
!4006 = !DILocation(line: 150, column: 8, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3983, file: !3711, line: 150, column: 3)
!4008 = !DILocation(line: 150, scope: !4007)
!4009 = !DILocation(line: 150, column: 17, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4007, file: !3711, line: 150, column: 3)
!4011 = !DILocation(line: 150, column: 3, scope: !4007)
!4012 = !DILocation(line: 151, column: 24, scope: !4010)
!4013 = !DILocation(line: 151, column: 20, scope: !4010)
!4014 = !DILocation(line: 151, column: 46, scope: !4010)
!4015 = !DILocation(line: 151, column: 5, scope: !4010)
!4016 = !DILocation(line: 150, column: 22, scope: !4010)
!4017 = !DILocation(line: 150, column: 3, scope: !4010)
!4018 = distinct !{!4018, !4011, !4019, !200}
!4019 = !DILocation(line: 151, column: 53, scope: !4007)
!4020 = !DILocation(line: 152, column: 7, scope: !3983)
!4021 = !DILocation(line: 155, column: 8, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3983, file: !3711, line: 155, column: 3)
!4023 = !DILocation(line: 155, scope: !4022)
!4024 = !DILocation(line: 155, column: 17, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4022, file: !3711, line: 155, column: 3)
!4026 = !DILocation(line: 155, column: 3, scope: !4022)
!4027 = !DILocation(line: 159, column: 3, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3983, file: !3711, line: 159, column: 3)
!4029 = !DILocation(line: 156, column: 5, scope: !4025)
!4030 = !DILocation(line: 156, column: 12, scope: !4025)
!4031 = !DILocation(line: 155, column: 30, scope: !4025)
!4032 = !DILocation(line: 155, column: 3, scope: !4025)
!4033 = distinct !{!4033, !4026, !4034, !200}
!4034 = !DILocation(line: 156, column: 14, scope: !4022)
!4035 = !DILocation(line: 159, scope: !4028)
!4036 = !DILocation(line: 158, column: 5, scope: !3983)
!4037 = !DILocalVariable(name: "k", scope: !3983, file: !3711, line: 144, type: !55)
!4038 = !DILocation(line: 159, column: 17, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4028, file: !3711, line: 159, column: 3)
!4040 = !DILocation(line: 160, column: 5, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !3711, line: 160, column: 5)
!4042 = distinct !DILexicalBlock(scope: !4039, file: !3711, line: 159, column: 27)
!4043 = !DILocation(line: 160, scope: !4041)
!4044 = !DILocalVariable(name: "j", scope: !3983, file: !3711, line: 144, type: !55)
!4045 = !DILocation(line: 160, column: 19, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4041, file: !3711, line: 160, column: 5)
!4047 = !DILocation(line: 161, column: 11, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4046, file: !3711, line: 161, column: 11)
!4049 = !DILocation(line: 161, column: 22, scope: !4048)
!4050 = !DILocation(line: 162, column: 20, scope: !4048)
!4051 = !DILocation(line: 162, column: 14, scope: !4048)
!4052 = !DILocation(line: 162, column: 9, scope: !4048)
!4053 = !DILocation(line: 162, column: 18, scope: !4048)
!4054 = !DILocation(line: 160, column: 24, scope: !4046)
!4055 = !DILocation(line: 160, column: 5, scope: !4046)
!4056 = distinct !{!4056, !4040, !4057, !200}
!4057 = !DILocation(line: 162, column: 20, scope: !4041)
!4058 = !DILocation(line: 164, column: 22, scope: !4042)
!4059 = !DILocation(line: 164, column: 5, scope: !4042)
!4060 = !DILocation(line: 164, column: 20, scope: !4042)
!4061 = !DILocation(line: 159, column: 22, scope: !4039)
!4062 = !DILocation(line: 159, column: 3, scope: !4039)
!4063 = distinct !{!4063, !4027, !4064, !200}
!4064 = !DILocation(line: 165, column: 3, scope: !4028)
!4065 = !DILocation(line: 166, column: 1, scope: !3983)
!4066 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_unpack_sig", scope: !3711, file: !3711, line: 181, type: !4067, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!65, !47, !717, !751, !324}
!4069 = !DILocalVariable(name: "c", arg: 1, scope: !4066, file: !3711, line: 181, type: !47)
!4070 = !DILocation(line: 0, scope: !4066)
!4071 = !DILocalVariable(name: "z", arg: 2, scope: !4066, file: !3711, line: 181, type: !717)
!4072 = !DILocalVariable(name: "h", arg: 3, scope: !4066, file: !3711, line: 181, type: !751)
!4073 = !DILocalVariable(name: "sig", arg: 4, scope: !4066, file: !3711, line: 182, type: !324)
!4074 = !DILocalVariable(name: "i", scope: !4066, file: !3711, line: 183, type: !55)
!4075 = !DILocation(line: 185, column: 8, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4066, file: !3711, line: 185, column: 3)
!4077 = !DILocation(line: 185, scope: !4076)
!4078 = !DILocation(line: 185, column: 17, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4076, file: !3711, line: 185, column: 3)
!4080 = !DILocation(line: 185, column: 3, scope: !4076)
!4081 = !DILocation(line: 186, column: 12, scope: !4079)
!4082 = !DILocation(line: 186, column: 5, scope: !4079)
!4083 = !DILocation(line: 186, column: 10, scope: !4079)
!4084 = !DILocation(line: 185, column: 32, scope: !4079)
!4085 = !DILocation(line: 185, column: 3, scope: !4079)
!4086 = distinct !{!4086, !4080, !4087, !200}
!4087 = !DILocation(line: 186, column: 17, scope: !4076)
!4088 = !DILocation(line: 187, column: 7, scope: !4066)
!4089 = !DILocation(line: 189, column: 8, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4066, file: !3711, line: 189, column: 3)
!4091 = !DILocation(line: 189, scope: !4090)
!4092 = !DILocation(line: 189, column: 17, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4090, file: !3711, line: 189, column: 3)
!4094 = !DILocation(line: 189, column: 3, scope: !4090)
!4095 = !DILocation(line: 190, column: 19, scope: !4093)
!4096 = !DILocation(line: 190, column: 36, scope: !4093)
!4097 = !DILocation(line: 190, column: 32, scope: !4093)
!4098 = !DILocation(line: 190, column: 5, scope: !4093)
!4099 = !DILocation(line: 189, column: 22, scope: !4093)
!4100 = !DILocation(line: 189, column: 3, scope: !4093)
!4101 = distinct !{!4101, !4094, !4102, !200}
!4102 = !DILocation(line: 190, column: 55, scope: !4090)
!4103 = !DILocation(line: 191, column: 7, scope: !4066)
!4104 = !DILocalVariable(name: "k", scope: !4066, file: !3711, line: 183, type: !55)
!4105 = !DILocation(line: 195, column: 8, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4066, file: !3711, line: 195, column: 3)
!4107 = !DILocation(line: 195, scope: !4106)
!4108 = !DILocation(line: 195, column: 17, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4106, file: !3711, line: 195, column: 3)
!4110 = !DILocation(line: 195, column: 3, scope: !4106)
!4111 = !DILocation(line: 196, column: 5, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !3711, line: 196, column: 5)
!4113 = distinct !DILexicalBlock(scope: !4109, file: !3711, line: 195, column: 27)
!4114 = !DILocation(line: 213, column: 3, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4066, file: !3711, line: 213, column: 3)
!4116 = !DILocation(line: 196, scope: !4112)
!4117 = !DILocalVariable(name: "j", scope: !4066, file: !3711, line: 183, type: !55)
!4118 = !DILocation(line: 196, column: 19, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4112, file: !3711, line: 196, column: 5)
!4120 = !DILocation(line: 197, column: 7, scope: !4119)
!4121 = !DILocation(line: 197, column: 18, scope: !4119)
!4122 = !DILocation(line: 196, column: 24, scope: !4119)
!4123 = !DILocation(line: 196, column: 5, scope: !4119)
!4124 = distinct !{!4124, !4111, !4125, !200}
!4125 = !DILocation(line: 197, column: 20, scope: !4112)
!4126 = !DILocation(line: 199, column: 9, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4113, file: !3711, line: 199, column: 9)
!4128 = !DILocation(line: 199, column: 24, scope: !4127)
!4129 = !DILocation(line: 199, column: 28, scope: !4127)
!4130 = !DILocation(line: 199, column: 31, scope: !4127)
!4131 = !DILocation(line: 199, column: 46, scope: !4127)
!4132 = !DILocation(line: 202, column: 5, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4113, file: !3711, line: 202, column: 5)
!4134 = !DILocation(line: 202, scope: !4133)
!4135 = !DILocation(line: 202, column: 21, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4133, file: !3711, line: 202, column: 5)
!4137 = !DILocation(line: 202, column: 19, scope: !4136)
!4138 = !DILocation(line: 204, column: 13, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !3711, line: 204, column: 11)
!4140 = distinct !DILexicalBlock(scope: !4136, file: !3711, line: 202, column: 42)
!4141 = !DILocation(line: 204, column: 17, scope: !4139)
!4142 = !DILocation(line: 204, column: 20, scope: !4139)
!4143 = !DILocation(line: 204, column: 30, scope: !4139)
!4144 = !DILocation(line: 204, column: 27, scope: !4139)
!4145 = !DILocation(line: 206, column: 15, scope: !4140)
!4146 = !DILocation(line: 206, column: 7, scope: !4140)
!4147 = !DILocation(line: 206, column: 23, scope: !4140)
!4148 = !DILocation(line: 202, column: 37, scope: !4136)
!4149 = !DILocation(line: 202, column: 5, scope: !4136)
!4150 = distinct !{!4150, !4132, !4151, !200}
!4151 = !DILocation(line: 207, column: 5, scope: !4133)
!4152 = !DILocation(line: 209, column: 9, scope: !4113)
!4153 = !DILocation(line: 195, column: 22, scope: !4109)
!4154 = !DILocation(line: 195, column: 3, scope: !4109)
!4155 = distinct !{!4155, !4110, !4156, !200}
!4156 = !DILocation(line: 210, column: 3, scope: !4106)
!4157 = !DILocation(line: 213, scope: !4115)
!4158 = !DILocation(line: 213, column: 17, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4115, file: !3711, line: 213, column: 3)
!4160 = !DILocation(line: 214, column: 9, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4159, file: !3711, line: 214, column: 9)
!4162 = !DILocation(line: 213, column: 26, scope: !4159)
!4163 = !DILocation(line: 213, column: 3, scope: !4159)
!4164 = distinct !{!4164, !4114, !4165, !200}
!4165 = !DILocation(line: 215, column: 14, scope: !4115)
!4166 = !DILocation(line: 218, column: 1, scope: !4066)
!4167 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_power2round", scope: !4168, file: !4168, line: 17, type: !4169, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4168 = !DIFile(filename: "../../../ref/rounding.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!77, !1590, !77}
!4171 = !DILocalVariable(name: "a0", arg: 1, scope: !4167, file: !4168, line: 17, type: !1590)
!4172 = !DILocation(line: 0, scope: !4167)
!4173 = !DILocalVariable(name: "a", arg: 2, scope: !4167, file: !4168, line: 17, type: !77)
!4174 = !DILocation(line: 20, column: 26, scope: !4167)
!4175 = !DILocation(line: 20, column: 31, scope: !4167)
!4176 = !DILocalVariable(name: "a1", scope: !4167, file: !4168, line: 18, type: !77)
!4177 = !DILocation(line: 21, column: 17, scope: !4167)
!4178 = !DILocation(line: 21, column: 11, scope: !4167)
!4179 = !DILocation(line: 21, column: 7, scope: !4167)
!4180 = !DILocation(line: 22, column: 3, scope: !4167)
!4181 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_decompose", scope: !4168, file: !4168, line: 39, type: !4169, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4182 = !DILocalVariable(name: "a0", arg: 1, scope: !4181, file: !4168, line: 39, type: !1590)
!4183 = !DILocation(line: 0, scope: !4181)
!4184 = !DILocalVariable(name: "a", arg: 2, scope: !4181, file: !4168, line: 39, type: !77)
!4185 = !DILocation(line: 42, column: 12, scope: !4181)
!4186 = !DILocation(line: 42, column: 19, scope: !4181)
!4187 = !DILocalVariable(name: "a1", scope: !4181, file: !4168, line: 40, type: !77)
!4188 = !DILocation(line: 44, column: 12, scope: !4181)
!4189 = !DILocation(line: 44, column: 18, scope: !4181)
!4190 = !DILocation(line: 44, column: 31, scope: !4181)
!4191 = !DILocation(line: 45, column: 6, scope: !4181)
!4192 = !DILocation(line: 51, column: 18, scope: !4181)
!4193 = !DILocation(line: 51, column: 12, scope: !4181)
!4194 = !DILocation(line: 52, column: 27, scope: !4181)
!4195 = !DILocation(line: 52, column: 34, scope: !4181)
!4196 = !DILocation(line: 52, column: 7, scope: !4181)
!4197 = !DILocation(line: 53, column: 3, scope: !4181)
!4198 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_make_hint", scope: !4168, file: !4168, line: 67, type: !4199, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!55, !77, !77}
!4201 = !DILocalVariable(name: "a0", arg: 1, scope: !4198, file: !4168, line: 67, type: !77)
!4202 = !DILocation(line: 0, scope: !4198)
!4203 = !DILocalVariable(name: "a1", arg: 2, scope: !4198, file: !4168, line: 67, type: !77)
!4204 = !DILocation(line: 68, column: 18, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4198, file: !4168, line: 68, column: 6)
!4206 = !DILocation(line: 72, column: 1, scope: !4198)
!4207 = distinct !DISubprogram(name: "pqcrystals_dilithium3_ref_use_hint", scope: !4168, file: !4168, line: 84, type: !4208, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!77, !77, !55}
!4210 = !DILocalVariable(name: "a", arg: 1, scope: !4207, file: !4168, line: 84, type: !77)
!4211 = !DILocation(line: 0, scope: !4207)
!4212 = !DILocalVariable(name: "hint", arg: 2, scope: !4207, file: !4168, line: 84, type: !55)
!4213 = !DILocalVariable(name: "a0", scope: !4207, file: !4168, line: 85, type: !77)
!4214 = !DILocation(line: 87, column: 8, scope: !4207)
!4215 = !DILocalVariable(name: "a1", scope: !4207, file: !4168, line: 85, type: !77)
!4216 = !DILocation(line: 88, column: 11, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4207, file: !4168, line: 88, column: 6)
!4218 = !DILocation(line: 92, column: 6, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4207, file: !4168, line: 92, column: 6)
!4220 = !DILocation(line: 92, column: 9, scope: !4219)
!4221 = !DILocation(line: 93, column: 16, scope: !4219)
!4222 = !DILocation(line: 93, column: 21, scope: !4219)
!4223 = !DILocation(line: 93, column: 5, scope: !4219)
!4224 = !DILocation(line: 95, column: 16, scope: !4219)
!4225 = !DILocation(line: 95, column: 21, scope: !4219)
!4226 = !DILocation(line: 95, column: 5, scope: !4219)
!4227 = !DILocation(line: 102, column: 1, scope: !4207)
!4228 = distinct !DISubprogram(name: "dilithium_memset", scope: !4229, file: !4229, line: 3, type: !4230, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !64)
!4229 = !DIFile(filename: "../mem.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !4232, !48, !103}
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!4233 = !DILocalVariable(name: "dst", arg: 1, scope: !4228, file: !4229, line: 3, type: !4232)
!4234 = !DILocation(line: 0, scope: !4228)
!4235 = !DILocalVariable(name: "val", arg: 2, scope: !4228, file: !4229, line: 3, type: !48)
!4236 = !DILocalVariable(name: "len", arg: 3, scope: !4228, file: !4229, line: 3, type: !103)
!4237 = !DILocalVariable(name: "d", scope: !4228, file: !4229, line: 5, type: !47)
!4238 = !DILocalVariable(name: "i", scope: !4239, file: !4229, line: 7, type: !103)
!4239 = distinct !DILexicalBlock(scope: !4228, file: !4229, line: 7, column: 5)
!4240 = !DILocation(line: 0, scope: !4239)
!4241 = !DILocation(line: 7, column: 10, scope: !4239)
!4242 = !DILocation(line: 7, scope: !4239)
!4243 = !DILocation(line: 7, column: 28, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4239, file: !4229, line: 7, column: 5)
!4245 = !DILocation(line: 7, column: 5, scope: !4239)
!4246 = !DILocation(line: 8, column: 9, scope: !4244)
!4247 = !DILocation(line: 8, column: 14, scope: !4244)
!4248 = !DILocation(line: 7, column: 36, scope: !4244)
!4249 = !DILocation(line: 7, column: 5, scope: !4244)
!4250 = distinct !{!4250, !4245, !4251, !200}
!4251 = !DILocation(line: 8, column: 16, scope: !4239)
!4252 = !DILocation(line: 9, column: 1, scope: !4228)
!4253 = distinct !DISubprogram(name: "dilithium_memcpy", scope: !4229, file: !4229, line: 11, type: !4254, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !4232, !4256, !103}
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 32)
!4257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4258 = !DILocalVariable(name: "dst", arg: 1, scope: !4253, file: !4229, line: 11, type: !4232)
!4259 = !DILocation(line: 0, scope: !4253)
!4260 = !DILocalVariable(name: "src", arg: 2, scope: !4253, file: !4229, line: 11, type: !4256)
!4261 = !DILocalVariable(name: "len", arg: 3, scope: !4253, file: !4229, line: 11, type: !103)
!4262 = !DILocalVariable(name: "d", scope: !4253, file: !4229, line: 13, type: !47)
!4263 = !DILocalVariable(name: "s", scope: !4253, file: !4229, line: 14, type: !324)
!4264 = !DILocalVariable(name: "i", scope: !4265, file: !4229, line: 16, type: !103)
!4265 = distinct !DILexicalBlock(scope: !4253, file: !4229, line: 16, column: 5)
!4266 = !DILocation(line: 0, scope: !4265)
!4267 = !DILocation(line: 16, column: 10, scope: !4265)
!4268 = !DILocation(line: 16, scope: !4265)
!4269 = !DILocation(line: 16, column: 28, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4265, file: !4229, line: 16, column: 5)
!4271 = !DILocation(line: 16, column: 5, scope: !4265)
!4272 = !DILocation(line: 17, column: 16, scope: !4270)
!4273 = !DILocation(line: 17, column: 9, scope: !4270)
!4274 = !DILocation(line: 17, column: 14, scope: !4270)
!4275 = !DILocation(line: 16, column: 36, scope: !4270)
!4276 = !DILocation(line: 16, column: 5, scope: !4270)
!4277 = distinct !{!4277, !4271, !4278, !200}
!4278 = !DILocation(line: 17, column: 19, scope: !4265)
!4279 = !DILocation(line: 18, column: 1, scope: !4253)

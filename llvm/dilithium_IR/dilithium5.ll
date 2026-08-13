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
  %m = alloca [4686 x i8], align 1
  %m2 = alloca [4686 x i8], align 1
  %sm = alloca [4686 x i8], align 1
  %pk = alloca [2592 x i8], align 1
  %sk = alloca [4896 x i8], align 1
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
  %call4 = call i32 @pqcrystals_dilithium5_ref_keypair(ptr noundef nonnull %pk, ptr noundef nonnull %sk) #4, !dbg !153
    #dbg_value(ptr %smlen, !154, !DIExpression(DW_OP_deref), !144)
  %call9 = call i32 @pqcrystals_dilithium5_ref(ptr noundef nonnull %sm, ptr noundef nonnull %smlen, ptr noundef nonnull %m, i32 noundef 59, ptr noundef nonnull %ctx, i32 noundef 14, ptr noundef nonnull %sk) #4, !dbg !155
  %0 = load i32, ptr %smlen, align 4, !dbg !156
    #dbg_value(i32 %0, !154, !DIExpression(), !144)
    #dbg_value(ptr %mlen, !157, !DIExpression(DW_OP_deref), !144)
  %call14 = call i32 @pqcrystals_dilithium5_ref_open(ptr noundef nonnull %m2, ptr noundef nonnull %mlen, ptr noundef nonnull %sm, i32 noundef %0, ptr noundef nonnull %ctx, i32 noundef 14, ptr noundef nonnull %pk) #4, !dbg !158
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
  %cmp16.not = icmp eq i32 %3, 4686, !dbg !168
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
  %arrayidx = getelementptr inbounds nuw [4686 x i8], ptr %m2, i32 0, i32 %9, !dbg !189
  %10 = load i8, ptr %arrayidx, align 1, !dbg !189
    #dbg_value(i32 %9, !183, !DIExpression(), !144)
  %arrayidx29 = getelementptr inbounds nuw [4686 x i8], ptr %m, i32 0, i32 %9, !dbg !190
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
  %rem = urem i32 %17, 4686, !dbg !213
  %arrayidx39 = getelementptr inbounds nuw [4686 x i8], ptr %sm, i32 0, i32 %rem, !dbg !214
  %18 = load i8, ptr %arrayidx39, align 1, !dbg !215
  %add = add i8 %18, %16, !dbg !215
  store i8 %add, ptr %arrayidx39, align 1, !dbg !215
  %19 = load i32, ptr %smlen, align 4, !dbg !216
    #dbg_value(i32 %19, !154, !DIExpression(), !144)
    #dbg_value(ptr %mlen, !157, !DIExpression(DW_OP_deref), !144)
  %call46 = call i32 @pqcrystals_dilithium5_ref_open(ptr noundef nonnull %m2, ptr noundef nonnull %mlen, ptr noundef nonnull %sm, i32 noundef %19, ptr noundef nonnull %ctx, i32 noundef 14, ptr noundef nonnull %pk) #4, !dbg !217
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
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i32 noundef 2592) #3, !dbg !229
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i32 noundef 4896) #3, !dbg !230
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i32 noundef 4627) #3, !dbg !231
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
define dso_local i32 @pqcrystals_dilithium5_ref_keypair(ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !275 {
entry:
  %seedbuf = alloca [128 x i8], align 1
  %tr = alloca [64 x i8], align 1
  %mat = alloca [8 x [7 x [256 x i32]]], align 4
  %s1 = alloca [7 x [256 x i32]], align 4
  %s1hat = alloca [7 x [256 x i32]], align 4
  %s2 = alloca [8 x [256 x i32]], align 4
  %t1 = alloca [8 x [256 x i32]], align 4
  %t0 = alloca [8 x [256 x i32]], align 4
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
  store i8 8, ptr %arrayidx, align 1, !dbg !319
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 33, !dbg !320
  store i8 7, ptr %arrayidx1, align 1, !dbg !321
  call void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef nonnull %seedbuf, i32 noundef 128, ptr noundef nonnull %seedbuf, i32 noundef 34) #4, !dbg !322
    #dbg_value(ptr %seedbuf, !323, !DIExpression(), !280)
  %add.ptr = getelementptr inbounds nuw i8, ptr %seedbuf, i32 32, !dbg !326
    #dbg_value(ptr %add.ptr, !327, !DIExpression(), !280)
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %seedbuf, i32 96, !dbg !328
    #dbg_value(ptr %add.ptr5, !329, !DIExpression(), !280)
  call void @pqcrystals_dilithium5_ref_polyvec_matrix_expand(ptr noundef nonnull %mat, ptr noundef nonnull %seedbuf) #4, !dbg !330
  call void @pqcrystals_dilithium5_ref_polyvecl_uniform_eta(ptr noundef nonnull %s1, ptr noundef nonnull %add.ptr, i16 noundef zeroext 0) #4, !dbg !331
  call void @pqcrystals_dilithium5_ref_polyveck_uniform_eta(ptr noundef nonnull %s2, ptr noundef nonnull %add.ptr, i16 noundef zeroext 7) #4, !dbg !332
  %call = call ptr @memcpy(ptr noundef nonnull %s1hat, ptr noundef nonnull %s1, i32 noundef 7168) #3, !dbg !333
  call void @pqcrystals_dilithium5_ref_polyvecl_ntt(ptr noundef nonnull %s1hat) #4, !dbg !334
  call void @pqcrystals_dilithium5_ref_polyvec_matrix_pointwise_montgomery(ptr noundef nonnull %t1, ptr noundef nonnull %mat, ptr noundef nonnull %s1hat) #4, !dbg !335
  call void @pqcrystals_dilithium5_ref_polyveck_reduce(ptr noundef nonnull %t1) #4, !dbg !336
  call void @pqcrystals_dilithium5_ref_polyveck_invntt_tomont(ptr noundef nonnull %t1) #4, !dbg !337
  call void @pqcrystals_dilithium5_ref_polyveck_add(ptr noundef nonnull %t1, ptr noundef nonnull %t1, ptr noundef nonnull %s2) #4, !dbg !338
  call void @pqcrystals_dilithium5_ref_polyveck_caddq(ptr noundef nonnull %t1) #4, !dbg !339
  call void @pqcrystals_dilithium5_ref_polyveck_power2round(ptr noundef nonnull %t1, ptr noundef nonnull %t0, ptr noundef nonnull %t1) #4, !dbg !340
  call void @pqcrystals_dilithium5_ref_pack_pk(ptr noundef %pk, ptr noundef nonnull %seedbuf, ptr noundef nonnull %t1) #4, !dbg !341
  call void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef nonnull %tr, i32 noundef 64, ptr noundef %pk, i32 noundef 2592) #4, !dbg !342
  call void @pqcrystals_dilithium5_ref_pack_sk(ptr noundef %sk, ptr noundef nonnull %seedbuf, ptr noundef nonnull %tr, ptr noundef nonnull %add.ptr5, ptr noundef nonnull %t0, ptr noundef nonnull %s1, ptr noundef nonnull %s2) #4, !dbg !343
  ret i32 0, !dbg !344
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium5_ref_signature_internal(ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %pre, i32 noundef %prelen, ptr noundef %rnd, ptr noundef %sk) local_unnamed_addr #0 !dbg !345 {
entry:
  %seedbuf = alloca [256 x i8], align 1
  %mat = alloca [8 x [7 x [256 x i32]]], align 4
  %s1 = alloca [7 x [256 x i32]], align 4
  %y = alloca [7 x [256 x i32]], align 4
  %z = alloca [7 x [256 x i32]], align 4
  %t0 = alloca [8 x [256 x i32]], align 4
  %s2 = alloca [8 x [256 x i32]], align 4
  %w1 = alloca [8 x [256 x i32]], align 4
  %w0 = alloca [8 x [256 x i32]], align 4
  %h = alloca [8 x [256 x i32]], align 4
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
  call void @pqcrystals_dilithium5_ref_unpack_sk(ptr noundef nonnull %seedbuf, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %t0, ptr noundef nonnull %s1, ptr noundef nonnull %s2, ptr noundef %sk) #4, !dbg !401
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
  call void @pqcrystals_dilithium5_ref_polyvec_matrix_expand(ptr noundef nonnull %mat, ptr noundef nonnull %seedbuf) #4, !dbg !414
  call void @pqcrystals_dilithium5_ref_polyvecl_ntt(ptr noundef nonnull %s1) #4, !dbg !415
  call void @pqcrystals_dilithium5_ref_polyveck_ntt(ptr noundef nonnull %s2) #4, !dbg !416
  call void @pqcrystals_dilithium5_ref_polyveck_ntt(ptr noundef nonnull %t0) #4, !dbg !417
  br label %rej, !dbg !417

rej:                                              ; preds = %rej.backedge, %entry
  %nonce.0 = phi i16 [ 0, %entry ], [ %inc, %rej.backedge ], !dbg !350
    #dbg_value(i16 %nonce.0, !361, !DIExpression(), !350)
    #dbg_label(!418, !419)
  %inc = add i16 %nonce.0, 1, !dbg !420
    #dbg_value(i16 %inc, !361, !DIExpression(), !350)
  call void @pqcrystals_dilithium5_ref_polyvecl_uniform_gamma1(ptr noundef nonnull %y, ptr noundef nonnull %add.ptr3, i16 noundef zeroext %nonce.0) #4, !dbg !421
  %call = call ptr @memcpy(ptr noundef nonnull %z, ptr noundef nonnull %y, i32 noundef 7168) #3, !dbg !422
  call void @pqcrystals_dilithium5_ref_polyvecl_ntt(ptr noundef nonnull %z) #4, !dbg !423
  call void @pqcrystals_dilithium5_ref_polyvec_matrix_pointwise_montgomery(ptr noundef nonnull %w1, ptr noundef nonnull %mat, ptr noundef nonnull %z) #4, !dbg !424
  call void @pqcrystals_dilithium5_ref_polyveck_reduce(ptr noundef nonnull %w1) #4, !dbg !425
  call void @pqcrystals_dilithium5_ref_polyveck_invntt_tomont(ptr noundef nonnull %w1) #4, !dbg !426
  call void @pqcrystals_dilithium5_ref_polyveck_caddq(ptr noundef nonnull %w1) #4, !dbg !427
  call void @pqcrystals_dilithium5_ref_polyveck_decompose(ptr noundef nonnull %w1, ptr noundef nonnull %w0, ptr noundef nonnull %w1) #4, !dbg !428
  call void @pqcrystals_dilithium5_ref_polyveck_pack_w1(ptr noundef %sig, ptr noundef nonnull %w1) #4, !dbg !429
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !430
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %add.ptr2, i32 noundef 64) #4, !dbg !431
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %sig, i32 noundef 1024) #4, !dbg !432
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !433
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef %sig, i32 noundef 64, ptr noundef nonnull %state) #4, !dbg !434
  call void @pqcrystals_dilithium5_ref_poly_challenge(ptr noundef nonnull %cp, ptr noundef %sig) #4, !dbg !435
  call void @pqcrystals_dilithium5_ref_poly_ntt(ptr noundef nonnull %cp) #4, !dbg !436
  call void @pqcrystals_dilithium5_ref_polyvecl_pointwise_poly_montgomery(ptr noundef nonnull %z, ptr noundef nonnull %cp, ptr noundef nonnull %s1) #4, !dbg !437
  call void @pqcrystals_dilithium5_ref_polyvecl_invntt_tomont(ptr noundef nonnull %z) #4, !dbg !438
  call void @pqcrystals_dilithium5_ref_polyvecl_add(ptr noundef nonnull %z, ptr noundef nonnull %z, ptr noundef nonnull %y) #4, !dbg !439
  call void @pqcrystals_dilithium5_ref_polyvecl_reduce(ptr noundef nonnull %z) #4, !dbg !440
  %call8 = call i32 @pqcrystals_dilithium5_ref_polyvecl_chknorm(ptr noundef nonnull %z, i32 noundef 524168) #4, !dbg !441
  %tobool.not = icmp eq i32 %call8, 0, !dbg !441
  br i1 %tobool.not, label %if.end, label %rej.backedge, !dbg !441

rej.backedge:                                     ; preds = %rej, %if.end, %if.end12, %if.end16
  br label %rej, !dbg !420

if.end:                                           ; preds = %rej
  call void @pqcrystals_dilithium5_ref_polyveck_pointwise_poly_montgomery(ptr noundef nonnull %h, ptr noundef nonnull %cp, ptr noundef nonnull %s2) #4, !dbg !443
  call void @pqcrystals_dilithium5_ref_polyveck_invntt_tomont(ptr noundef nonnull %h) #4, !dbg !444
  call void @pqcrystals_dilithium5_ref_polyveck_sub(ptr noundef nonnull %w0, ptr noundef nonnull %w0, ptr noundef nonnull %h) #4, !dbg !445
  call void @pqcrystals_dilithium5_ref_polyveck_reduce(ptr noundef nonnull %w0) #4, !dbg !446
  %call9 = call i32 @pqcrystals_dilithium5_ref_polyveck_chknorm(ptr noundef nonnull %w0, i32 noundef 261768) #4, !dbg !447
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !447
  br i1 %tobool10.not, label %if.end12, label %rej.backedge, !dbg !447

if.end12:                                         ; preds = %if.end
  call void @pqcrystals_dilithium5_ref_polyveck_pointwise_poly_montgomery(ptr noundef nonnull %h, ptr noundef nonnull %cp, ptr noundef nonnull %t0) #4, !dbg !449
  call void @pqcrystals_dilithium5_ref_polyveck_invntt_tomont(ptr noundef nonnull %h) #4, !dbg !450
  call void @pqcrystals_dilithium5_ref_polyveck_reduce(ptr noundef nonnull %h) #4, !dbg !451
  %call13 = call i32 @pqcrystals_dilithium5_ref_polyveck_chknorm(ptr noundef nonnull %h, i32 noundef 261888) #4, !dbg !452
  %tobool14.not = icmp eq i32 %call13, 0, !dbg !452
  br i1 %tobool14.not, label %if.end16, label %rej.backedge, !dbg !452

if.end16:                                         ; preds = %if.end12
  call void @pqcrystals_dilithium5_ref_polyveck_add(ptr noundef nonnull %w0, ptr noundef nonnull %w0, ptr noundef nonnull %h) #4, !dbg !454
  %call17 = call i32 @pqcrystals_dilithium5_ref_polyveck_make_hint(ptr noundef nonnull %h, ptr noundef nonnull %w0, ptr noundef nonnull %w1) #4, !dbg !455
    #dbg_value(i32 %call17, !456, !DIExpression(), !350)
  %cmp = icmp ugt i32 %call17, 75, !dbg !457
  br i1 %cmp, label %rej.backedge, label %if.end19, !dbg !457

if.end19:                                         ; preds = %if.end16
  call void @pqcrystals_dilithium5_ref_pack_sig(ptr noundef %sig, ptr noundef %sig, ptr noundef nonnull %z, ptr noundef nonnull %h) #4, !dbg !459
  store i32 4627, ptr %siglen, align 4, !dbg !460
  ret i32 0, !dbg !461
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium5_ref_signature(ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %sk) local_unnamed_addr #0 !dbg !462 {
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
  %call = call i32 @pqcrystals_dilithium5_ref_signature_internal(ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef nonnull %pre, i32 noundef %add7, ptr noundef nonnull %rnd, ptr noundef %sk) #4, !dbg !506
  br label %return, !dbg !507

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %entry ], !dbg !466
  ret i32 %retval.0, !dbg !508
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium5_ref(ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %sk) local_unnamed_addr #0 !dbg !509 {
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
  %sub2 = add i32 %mlen, 4626, !dbg !527
  %sub3 = sub i32 %sub2, %i.0, !dbg !528
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %sm, i32 %sub3, !dbg !529
  store i8 %2, ptr %arrayidx4, align 1, !dbg !530
  %inc = add i32 %i.0, 1, !dbg !531
    #dbg_value(i32 %inc, !518, !DIExpression(), !511)
  br label %for.cond, !dbg !532, !llvm.loop !533

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 4627, !dbg !535
  %call = call i32 @pqcrystals_dilithium5_ref_signature(ptr noundef %sm, ptr noundef %smlen, ptr noundef nonnull %add.ptr, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %sk) #4, !dbg !536
    #dbg_value(i32 %call, !537, !DIExpression(), !511)
  %3 = load i32, ptr %smlen, align 4, !dbg !538
  %add5 = add i32 %3, %mlen, !dbg !538
  store i32 %add5, ptr %smlen, align 4, !dbg !538
  ret i32 %call, !dbg !539
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium5_ref_verify_internal(ptr noundef %sig, i32 noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %pre, i32 noundef %prelen, ptr noundef %pk) local_unnamed_addr #0 !dbg !540 {
entry:
  %buf = alloca [1024 x i8], align 1
  %rho = alloca [32 x i8], align 1
  %mu = alloca [64 x i8], align 1
  %c = alloca [64 x i8], align 1
  %c2 = alloca [64 x i8], align 1
  %cp = alloca [256 x i32], align 4
  %mat = alloca [8 x [7 x [256 x i32]]], align 4
  %z = alloca [7 x [256 x i32]], align 4
  %t1 = alloca [8 x [256 x i32]], align 4
  %w1 = alloca [8 x [256 x i32]], align 4
  %h = alloca [8 x [256 x i32]], align 4
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
    #dbg_declare(ptr %c, !560, !DIExpression(), !561)
    #dbg_declare(ptr %c2, !562, !DIExpression(), !563)
    #dbg_declare(ptr %cp, !564, !DIExpression(), !565)
    #dbg_declare(ptr %mat, !566, !DIExpression(), !567)
    #dbg_declare(ptr %z, !568, !DIExpression(), !569)
    #dbg_declare(ptr %t1, !570, !DIExpression(), !571)
    #dbg_declare(ptr %w1, !572, !DIExpression(), !573)
    #dbg_declare(ptr %h, !574, !DIExpression(), !575)
    #dbg_declare(ptr %state, !576, !DIExpression(), !577)
  %cmp.not = icmp eq i32 %siglen, 4627, !dbg !578
  br i1 %cmp.not, label %if.end, label %return, !dbg !578

if.end:                                           ; preds = %entry
  call void @pqcrystals_dilithium5_ref_unpack_pk(ptr noundef nonnull %rho, ptr noundef nonnull %t1, ptr noundef %pk) #4, !dbg !580
  %call = call i32 @pqcrystals_dilithium5_ref_unpack_sig(ptr noundef nonnull %c, ptr noundef nonnull %z, ptr noundef nonnull %h, ptr noundef %sig) #4, !dbg !581
  %tobool.not = icmp eq i32 %call, 0, !dbg !581
  br i1 %tobool.not, label %if.end3, label %return, !dbg !581

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @pqcrystals_dilithium5_ref_polyvecl_chknorm(ptr noundef nonnull %z, i32 noundef 524168) #4, !dbg !583
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !583
  br i1 %tobool5.not, label %if.end7, label %return, !dbg !583

if.end7:                                          ; preds = %if.end3
  call void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef nonnull %mu, i32 noundef 64, ptr noundef %pk, i32 noundef 2592) #4, !dbg !585
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !586
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %mu, i32 noundef 64) #4, !dbg !587
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %pre, i32 noundef %prelen) #4, !dbg !588
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %m, i32 noundef %mlen) #4, !dbg !589
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !590
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef nonnull %mu, i32 noundef 64, ptr noundef nonnull %state) #4, !dbg !591
  call void @pqcrystals_dilithium5_ref_poly_challenge(ptr noundef nonnull %cp, ptr noundef nonnull %c) #4, !dbg !592
  call void @pqcrystals_dilithium5_ref_polyvec_matrix_expand(ptr noundef nonnull %mat, ptr noundef nonnull %rho) #4, !dbg !593
  call void @pqcrystals_dilithium5_ref_polyvecl_ntt(ptr noundef nonnull %z) #4, !dbg !594
  call void @pqcrystals_dilithium5_ref_polyvec_matrix_pointwise_montgomery(ptr noundef nonnull %w1, ptr noundef nonnull %mat, ptr noundef nonnull %z) #4, !dbg !595
  call void @pqcrystals_dilithium5_ref_poly_ntt(ptr noundef nonnull %cp) #4, !dbg !596
  call void @pqcrystals_dilithium5_ref_polyveck_shiftl(ptr noundef nonnull %t1) #4, !dbg !597
  call void @pqcrystals_dilithium5_ref_polyveck_ntt(ptr noundef nonnull %t1) #4, !dbg !598
  call void @pqcrystals_dilithium5_ref_polyveck_pointwise_poly_montgomery(ptr noundef nonnull %t1, ptr noundef nonnull %cp, ptr noundef nonnull %t1) #4, !dbg !599
  call void @pqcrystals_dilithium5_ref_polyveck_sub(ptr noundef nonnull %w1, ptr noundef nonnull %w1, ptr noundef nonnull %t1) #4, !dbg !600
  call void @pqcrystals_dilithium5_ref_polyveck_reduce(ptr noundef nonnull %w1) #4, !dbg !601
  call void @pqcrystals_dilithium5_ref_polyveck_invntt_tomont(ptr noundef nonnull %w1) #4, !dbg !602
  call void @pqcrystals_dilithium5_ref_polyveck_caddq(ptr noundef nonnull %w1) #4, !dbg !603
  call void @pqcrystals_dilithium5_ref_polyveck_use_hint(ptr noundef nonnull %w1, ptr noundef nonnull %w1, ptr noundef nonnull %h) #4, !dbg !604
  call void @pqcrystals_dilithium5_ref_polyveck_pack_w1(ptr noundef nonnull %buf, ptr noundef nonnull %w1) #4, !dbg !605
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !606
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %mu, i32 noundef 64) #4, !dbg !607
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef nonnull %buf, i32 noundef 1024) #4, !dbg !608
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !609
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef nonnull %c2, i32 noundef 64, ptr noundef nonnull %state) #4, !dbg !610
    #dbg_value(i32 0, !611, !DIExpression(), !544)
  br label %for.cond, !dbg !612

for.cond:                                         ; preds = %for.inc, %if.end7
  %i.0 = phi i32 [ 0, %if.end7 ], [ %inc, %for.inc ], !dbg !614
    #dbg_value(i32 %i.0, !611, !DIExpression(), !544)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !615
  br i1 %exitcond, label %for.body, label %return.loopexit, !dbg !617

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [64 x i8], ptr %c, i32 0, i32 %i.0, !dbg !618
  %0 = load i8, ptr %arrayidx, align 1, !dbg !618
  %arrayidx20 = getelementptr inbounds nuw [64 x i8], ptr %c2, i32 0, i32 %i.0, !dbg !620
  %1 = load i8, ptr %arrayidx20, align 1, !dbg !620
  %cmp22.not = icmp eq i8 %0, %1, !dbg !621
  br i1 %cmp22.not, label %for.inc, label %return.loopexit, !dbg !621

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !622
    #dbg_value(i32 %inc, !611, !DIExpression(), !544)
  br label %for.cond, !dbg !623, !llvm.loop !624

return.loopexit:                                  ; preds = %for.body, %for.cond
  %retval.0.ph = phi i32 [ 0, %for.cond ], [ -1, %for.body ]
  br label %return, !dbg !626

return:                                           ; preds = %return.loopexit, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end3 ], [ %retval.0.ph, %return.loopexit ], !dbg !544
  ret i32 %retval.0, !dbg !626
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium5_ref_verify(ptr noundef %sig, i32 noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !627 {
entry:
  %pre = alloca [257 x i8], align 1
    #dbg_value(ptr %sig, !628, !DIExpression(), !629)
    #dbg_value(i32 %siglen, !630, !DIExpression(), !629)
    #dbg_value(ptr %m, !631, !DIExpression(), !629)
    #dbg_value(i32 %mlen, !632, !DIExpression(), !629)
    #dbg_value(ptr %ctx, !633, !DIExpression(), !629)
    #dbg_value(i32 %ctxlen, !634, !DIExpression(), !629)
    #dbg_value(ptr %pk, !635, !DIExpression(), !629)
    #dbg_declare(ptr %pre, !636, !DIExpression(), !637)
  %cmp = icmp ugt i32 %ctxlen, 255, !dbg !638
  br i1 %cmp, label %return, label %if.end, !dbg !638

if.end:                                           ; preds = %entry
  store i8 0, ptr %pre, align 1, !dbg !640
  %conv = trunc nuw i32 %ctxlen to i8, !dbg !641
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %pre, i32 1, !dbg !642
  store i8 %conv, ptr %arrayidx1, align 1, !dbg !643
    #dbg_value(i32 0, !644, !DIExpression(), !629)
  br label %for.cond, !dbg !645

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ], !dbg !647
    #dbg_value(i32 %i.0, !644, !DIExpression(), !629)
  %exitcond = icmp ne i32 %i.0, %ctxlen, !dbg !648
  br i1 %exitcond, label %for.body, label %for.end, !dbg !650

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %ctx, i32 %i.0, !dbg !651
  %0 = load i8, ptr %arrayidx4, align 1, !dbg !651
  %add = add nuw nsw i32 %i.0, 2, !dbg !652
  %arrayidx5 = getelementptr inbounds nuw [257 x i8], ptr %pre, i32 0, i32 %add, !dbg !653
  store i8 %0, ptr %arrayidx5, align 1, !dbg !654
  %inc = add nuw i32 %i.0, 1, !dbg !655
    #dbg_value(i32 %inc, !644, !DIExpression(), !629)
  br label %for.cond, !dbg !656, !llvm.loop !657

for.end:                                          ; preds = %for.cond
  %add6 = add nuw nsw i32 %ctxlen, 2, !dbg !659
  %call = call i32 @pqcrystals_dilithium5_ref_verify_internal(ptr noundef %sig, i32 noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef nonnull %pre, i32 noundef %add6, ptr noundef %pk) #4, !dbg !660
  br label %return, !dbg !661

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %call, %for.end ], [ -1, %entry ], !dbg !629
  ret i32 %retval.0, !dbg !662
}

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @pqcrystals_dilithium5_ref_open(ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !663 {
entry:
    #dbg_value(ptr %m, !664, !DIExpression(), !665)
    #dbg_value(ptr %mlen, !666, !DIExpression(), !665)
    #dbg_value(ptr %sm, !667, !DIExpression(), !665)
    #dbg_value(i32 %smlen, !668, !DIExpression(), !665)
    #dbg_value(ptr %ctx, !669, !DIExpression(), !665)
    #dbg_value(i32 %ctxlen, !670, !DIExpression(), !665)
    #dbg_value(ptr %pk, !671, !DIExpression(), !665)
  %cmp = icmp ult i32 %smlen, 4627, !dbg !672
  br i1 %cmp, label %badsig, label %if.end, !dbg !672

if.end:                                           ; preds = %entry
  %sub = add i32 %smlen, -4627, !dbg !674
  store i32 %sub, ptr %mlen, align 4, !dbg !675
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 4627, !dbg !676
  %call = call i32 @pqcrystals_dilithium5_ref_verify(ptr noundef %sm, i32 noundef 4627, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %ctx, i32 noundef %ctxlen, ptr noundef %pk) #4, !dbg !678
  %tobool.not = icmp eq i32 %call, 0, !dbg !678
  br i1 %tobool.not, label %for.cond.preheader, label %badsig, !dbg !678

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !679

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !682
    #dbg_value(i32 %i.0, !683, !DIExpression(), !665)
  %0 = load i32, ptr %mlen, align 4, !dbg !684
  %cmp2 = icmp ult i32 %i.0, %0, !dbg !686
  br i1 %cmp2, label %for.body, label %return.loopexit1, !dbg !679

for.body:                                         ; preds = %for.cond
  %1 = getelementptr i8, ptr %sm, i32 %i.0, !dbg !687
  %arrayidx = getelementptr i8, ptr %1, i32 4627, !dbg !687
  %2 = load i8, ptr %arrayidx, align 1, !dbg !687
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !688
  store i8 %2, ptr %arrayidx3, align 1, !dbg !689
  %inc = add nuw i32 %i.0, 1, !dbg !690
    #dbg_value(i32 %inc, !683, !DIExpression(), !665)
  br label %for.cond, !dbg !691, !llvm.loop !692

badsig:                                           ; preds = %if.end, %entry
    #dbg_label(!694, !695)
  store i32 0, ptr %mlen, align 4, !dbg !696
    #dbg_value(i32 0, !683, !DIExpression(), !665)
  br label %for.cond4, !dbg !697

for.cond4:                                        ; preds = %for.body6, %badsig
  %i.1 = phi i32 [ 0, %badsig ], [ %inc9, %for.body6 ], !dbg !699
    #dbg_value(i32 %i.1, !683, !DIExpression(), !665)
  %exitcond = icmp ne i32 %i.1, %smlen, !dbg !700
  br i1 %exitcond, label %for.body6, label %return.loopexit, !dbg !702

for.body6:                                        ; preds = %for.cond4
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %m, i32 %i.1, !dbg !703
  store i8 0, ptr %arrayidx7, align 1, !dbg !704
  %inc9 = add i32 %i.1, 1, !dbg !705
    #dbg_value(i32 %inc9, !683, !DIExpression(), !665)
  br label %for.cond4, !dbg !706, !llvm.loop !707

return.loopexit:                                  ; preds = %for.cond4
  br label %return, !dbg !709

return.loopexit1:                                 ; preds = %for.cond
  br label %return, !dbg !709

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i32 [ -1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !665
  ret i32 %retval.0, !dbg !709
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyvec_matrix_expand(ptr noundef %mat, ptr noundef %rho) local_unnamed_addr #0 !dbg !710 {
entry:
    #dbg_value(ptr %mat, !715, !DIExpression(), !716)
    #dbg_value(ptr %rho, !717, !DIExpression(), !716)
    #dbg_value(i32 0, !718, !DIExpression(), !716)
  br label %for.cond, !dbg !719

for.cond:                                         ; preds = %for.inc5, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ], !dbg !721
    #dbg_value(i32 %i.0, !718, !DIExpression(), !716)
  %exitcond1 = icmp ne i32 %i.0, 8, !dbg !722
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end7, !dbg !724

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !725

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !727
    #dbg_value(i32 %j.0, !728, !DIExpression(), !716)
  %exitcond = icmp ne i32 %j.0, 7, !dbg !729
  br i1 %exitcond, label %for.body3, label %for.inc5, !dbg !725

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds nuw [7 x [256 x i32]], ptr %mat, i32 %i.0, i32 %j.0, !dbg !731
  %shl = shl nuw nsw i32 %i.0, 8, !dbg !732
  %add = or disjoint i32 %shl, %j.0, !dbg !733
  %conv = trunc nuw i32 %add to i16, !dbg !734
  call void @pqcrystals_dilithium5_ref_poly_uniform(ptr noundef %arrayidx4, ptr noundef %rho, i16 noundef zeroext %conv) #4, !dbg !735
  %inc = add nuw nsw i32 %j.0, 1, !dbg !736
    #dbg_value(i32 %inc, !728, !DIExpression(), !716)
  br label %for.cond1, !dbg !737, !llvm.loop !738

for.inc5:                                         ; preds = %for.cond1
  %inc6 = add nuw nsw i32 %i.0, 1, !dbg !740
    #dbg_value(i32 %inc6, !718, !DIExpression(), !716)
  br label %for.cond, !dbg !741, !llvm.loop !742

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !744
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyvec_matrix_pointwise_montgomery(ptr noundef %t, ptr noundef %mat, ptr noundef %v) local_unnamed_addr #0 !dbg !745 {
entry:
    #dbg_value(ptr %t, !751, !DIExpression(), !752)
    #dbg_value(ptr %mat, !753, !DIExpression(), !752)
    #dbg_value(ptr %v, !754, !DIExpression(), !752)
    #dbg_value(i32 0, !755, !DIExpression(), !752)
  br label %for.cond, !dbg !756

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !758
    #dbg_value(i32 %i.0, !755, !DIExpression(), !752)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !759
  br i1 %exitcond, label %for.body, label %for.end, !dbg !761

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %t, i32 0, i32 %i.0, !dbg !762
  %arrayidx1 = getelementptr inbounds nuw [7 x [256 x i32]], ptr %mat, i32 %i.0, !dbg !763
  call void @pqcrystals_dilithium5_ref_polyvecl_pointwise_acc_montgomery(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %v) #4, !dbg !764
  %inc = add nuw nsw i32 %i.0, 1, !dbg !765
    #dbg_value(i32 %inc, !755, !DIExpression(), !752)
  br label %for.cond, !dbg !766, !llvm.loop !767

for.end:                                          ; preds = %for.cond
  ret void, !dbg !769
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyvecl_pointwise_acc_montgomery(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !770 {
entry:
  %t = alloca [256 x i32], align 4
    #dbg_value(ptr %w, !774, !DIExpression(), !775)
    #dbg_value(ptr %u, !776, !DIExpression(), !775)
    #dbg_value(ptr %v, !777, !DIExpression(), !775)
    #dbg_declare(ptr %t, !778, !DIExpression(), !779)
  call void @pqcrystals_dilithium5_ref_poly_pointwise_montgomery(ptr noundef %w, ptr noundef %u, ptr noundef %v) #4, !dbg !780
    #dbg_value(i32 1, !781, !DIExpression(), !775)
  br label %for.cond, !dbg !782

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.body ], !dbg !784
    #dbg_value(i32 %i.0, !781, !DIExpression(), !775)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !785
  br i1 %exitcond, label %for.body, label %for.end, !dbg !787

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw [7 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !788
  %arrayidx3 = getelementptr inbounds nuw [7 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !790
  call void @pqcrystals_dilithium5_ref_poly_pointwise_montgomery(ptr noundef nonnull %t, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx3) #4, !dbg !791
  call void @pqcrystals_dilithium5_ref_poly_add(ptr noundef %w, ptr noundef %w, ptr noundef nonnull %t) #4, !dbg !792
  %inc = add nuw nsw i32 %i.0, 1, !dbg !793
    #dbg_value(i32 %inc, !781, !DIExpression(), !775)
  br label %for.cond, !dbg !794, !llvm.loop !795

for.end:                                          ; preds = %for.cond
  ret void, !dbg !797
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyvecl_uniform_eta(ptr noundef %v, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !798 {
entry:
    #dbg_value(ptr %v, !801, !DIExpression(), !802)
    #dbg_value(ptr %seed, !803, !DIExpression(), !802)
    #dbg_value(i16 %nonce, !804, !DIExpression(), !802)
    #dbg_value(i32 0, !805, !DIExpression(), !802)
  br label %for.cond, !dbg !806

for.cond:                                         ; preds = %for.body, %entry
  %nonce.addr.0 = phi i16 [ %nonce, %entry ], [ %inc, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc1, %for.body ], !dbg !808
    #dbg_value(i32 %i.0, !805, !DIExpression(), !802)
    #dbg_value(i16 %nonce.addr.0, !804, !DIExpression(), !802)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !809
  br i1 %exitcond, label %for.body, label %for.end, !dbg !811

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [7 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !812
    #dbg_value(i16 %nonce.addr.0, !804, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !802)
  call void @pqcrystals_dilithium5_ref_poly_uniform_eta(ptr noundef %arrayidx, ptr noundef %seed, i16 noundef zeroext %nonce.addr.0) #4, !dbg !813
  %inc = add i16 %nonce.addr.0, 1, !dbg !814
    #dbg_value(i16 %inc, !804, !DIExpression(), !802)
  %inc1 = add nuw nsw i32 %i.0, 1, !dbg !815
    #dbg_value(i32 %inc1, !805, !DIExpression(), !802)
  br label %for.cond, !dbg !816, !llvm.loop !817

for.end:                                          ; preds = %for.cond
  ret void, !dbg !819
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyvecl_uniform_gamma1(ptr noundef %v, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !820 {
entry:
    #dbg_value(ptr %v, !821, !DIExpression(), !822)
    #dbg_value(ptr %seed, !823, !DIExpression(), !822)
    #dbg_value(i16 %nonce, !824, !DIExpression(), !822)
    #dbg_value(i32 0, !825, !DIExpression(), !822)
  br label %for.cond, !dbg !826

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !828
    #dbg_value(i32 %i.0, !825, !DIExpression(), !822)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !829
  br i1 %exitcond, label %for.body, label %for.end, !dbg !831

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [7 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !832
  %conv = zext i16 %nonce to i32, !dbg !833
  %mul = mul nuw nsw i32 %conv, 7, !dbg !834
  %add = add nuw nsw i32 %mul, %i.0, !dbg !835
  %conv1 = trunc i32 %add to i16, !dbg !836
  call void @pqcrystals_dilithium5_ref_poly_uniform_gamma1(ptr noundef %arrayidx, ptr noundef %seed, i16 noundef zeroext %conv1) #4, !dbg !837
  %inc = add nuw nsw i32 %i.0, 1, !dbg !838
    #dbg_value(i32 %inc, !825, !DIExpression(), !822)
  br label %for.cond, !dbg !839, !llvm.loop !840

for.end:                                          ; preds = %for.cond
  ret void, !dbg !842
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyvecl_reduce(ptr noundef %v) local_unnamed_addr #0 !dbg !843 {
entry:
    #dbg_value(ptr %v, !846, !DIExpression(), !847)
    #dbg_value(i32 0, !848, !DIExpression(), !847)
  br label %for.cond, !dbg !849

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !851
    #dbg_value(i32 %i.0, !848, !DIExpression(), !847)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !852
  br i1 %exitcond, label %for.body, label %for.end, !dbg !854

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [7 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !855
  call void @pqcrystals_dilithium5_ref_poly_reduce(ptr noundef %arrayidx) #4, !dbg !856
  %inc = add nuw nsw i32 %i.0, 1, !dbg !857
    #dbg_value(i32 %inc, !848, !DIExpression(), !847)
  br label %for.cond, !dbg !858, !llvm.loop !859

for.end:                                          ; preds = %for.cond
  ret void, !dbg !861
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyvecl_add(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !862 {
entry:
    #dbg_value(ptr %w, !865, !DIExpression(), !866)
    #dbg_value(ptr %u, !867, !DIExpression(), !866)
    #dbg_value(ptr %v, !868, !DIExpression(), !866)
    #dbg_value(i32 0, !869, !DIExpression(), !866)
  br label %for.cond, !dbg !870

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !872
    #dbg_value(i32 %i.0, !869, !DIExpression(), !866)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !873
  br i1 %exitcond, label %for.body, label %for.end, !dbg !875

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [7 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !876
  %arrayidx1 = getelementptr inbounds nuw [7 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !877
  %arrayidx2 = getelementptr inbounds nuw [7 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !878
  call void @pqcrystals_dilithium5_ref_poly_add(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !879
  %inc = add nuw nsw i32 %i.0, 1, !dbg !880
    #dbg_value(i32 %inc, !869, !DIExpression(), !866)
  br label %for.cond, !dbg !881, !llvm.loop !882

for.end:                                          ; preds = %for.cond
  ret void, !dbg !884
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyvecl_ntt(ptr noundef %v) local_unnamed_addr #0 !dbg !885 {
entry:
    #dbg_value(ptr %v, !886, !DIExpression(), !887)
    #dbg_value(i32 0, !888, !DIExpression(), !887)
  br label %for.cond, !dbg !889

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !891
    #dbg_value(i32 %i.0, !888, !DIExpression(), !887)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !892
  br i1 %exitcond, label %for.body, label %for.end, !dbg !894

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [7 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !895
  call void @pqcrystals_dilithium5_ref_poly_ntt(ptr noundef %arrayidx) #4, !dbg !896
  %inc = add nuw nsw i32 %i.0, 1, !dbg !897
    #dbg_value(i32 %inc, !888, !DIExpression(), !887)
  br label %for.cond, !dbg !898, !llvm.loop !899

for.end:                                          ; preds = %for.cond
  ret void, !dbg !901
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyvecl_invntt_tomont(ptr noundef %v) local_unnamed_addr #0 !dbg !902 {
entry:
    #dbg_value(ptr %v, !903, !DIExpression(), !904)
    #dbg_value(i32 0, !905, !DIExpression(), !904)
  br label %for.cond, !dbg !906

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !908
    #dbg_value(i32 %i.0, !905, !DIExpression(), !904)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !909
  br i1 %exitcond, label %for.body, label %for.end, !dbg !911

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [7 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !912
  call void @pqcrystals_dilithium5_ref_poly_invntt_tomont(ptr noundef %arrayidx) #4, !dbg !913
  %inc = add nuw nsw i32 %i.0, 1, !dbg !914
    #dbg_value(i32 %inc, !905, !DIExpression(), !904)
  br label %for.cond, !dbg !915, !llvm.loop !916

for.end:                                          ; preds = %for.cond
  ret void, !dbg !918
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyvecl_pointwise_poly_montgomery(ptr noundef %r, ptr noundef %a, ptr noundef %v) local_unnamed_addr #0 !dbg !919 {
entry:
    #dbg_value(ptr %r, !924, !DIExpression(), !925)
    #dbg_value(ptr %a, !926, !DIExpression(), !925)
    #dbg_value(ptr %v, !927, !DIExpression(), !925)
    #dbg_value(i32 0, !928, !DIExpression(), !925)
  br label %for.cond, !dbg !929

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !931
    #dbg_value(i32 %i.0, !928, !DIExpression(), !925)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !932
  br i1 %exitcond, label %for.body, label %for.end, !dbg !934

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [7 x [256 x i32]], ptr %r, i32 0, i32 %i.0, !dbg !935
  %arrayidx1 = getelementptr inbounds nuw [7 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !936
  call void @pqcrystals_dilithium5_ref_poly_pointwise_montgomery(ptr noundef %arrayidx, ptr noundef %a, ptr noundef %arrayidx1) #4, !dbg !937
  %inc = add nuw nsw i32 %i.0, 1, !dbg !938
    #dbg_value(i32 %inc, !928, !DIExpression(), !925)
  br label %for.cond, !dbg !939, !llvm.loop !940

for.end:                                          ; preds = %for.cond
  ret void, !dbg !942
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium5_ref_polyvecl_chknorm(ptr noundef %v, i32 noundef %bound) local_unnamed_addr #0 !dbg !943 {
entry:
    #dbg_value(ptr %v, !946, !DIExpression(), !947)
    #dbg_value(i32 %bound, !948, !DIExpression(), !947)
    #dbg_value(i32 0, !949, !DIExpression(), !947)
  br label %for.cond, !dbg !950

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !952
    #dbg_value(i32 %i.0, !949, !DIExpression(), !947)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !953
  br i1 %exitcond, label %for.body, label %return, !dbg !955

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [7 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !956
  %call = call i32 @pqcrystals_dilithium5_ref_poly_chknorm(ptr noundef %arrayidx, i32 noundef %bound) #4, !dbg !958
  %tobool.not = icmp eq i32 %call, 0, !dbg !958
  br i1 %tobool.not, label %for.inc, label %return, !dbg !958

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !959
    #dbg_value(i32 %inc, !949, !DIExpression(), !947)
  br label %for.cond, !dbg !960, !llvm.loop !961

return:                                           ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 1, %for.body ], [ 0, %for.cond ], !dbg !947
  ret i32 %retval.0, !dbg !963
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_uniform_eta(ptr noundef %v, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !964 {
entry:
    #dbg_value(ptr %v, !967, !DIExpression(), !968)
    #dbg_value(ptr %seed, !969, !DIExpression(), !968)
    #dbg_value(i16 %nonce, !970, !DIExpression(), !968)
    #dbg_value(i32 0, !971, !DIExpression(), !968)
  br label %for.cond, !dbg !972

for.cond:                                         ; preds = %for.body, %entry
  %nonce.addr.0 = phi i16 [ %nonce, %entry ], [ %inc, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc1, %for.body ], !dbg !974
    #dbg_value(i32 %i.0, !971, !DIExpression(), !968)
    #dbg_value(i16 %nonce.addr.0, !970, !DIExpression(), !968)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !975
  br i1 %exitcond, label %for.body, label %for.end, !dbg !977

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !978
    #dbg_value(i16 %nonce.addr.0, !970, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !968)
  call void @pqcrystals_dilithium5_ref_poly_uniform_eta(ptr noundef %arrayidx, ptr noundef %seed, i16 noundef zeroext %nonce.addr.0) #4, !dbg !979
  %inc = add i16 %nonce.addr.0, 1, !dbg !980
    #dbg_value(i16 %inc, !970, !DIExpression(), !968)
  %inc1 = add nuw nsw i32 %i.0, 1, !dbg !981
    #dbg_value(i32 %inc1, !971, !DIExpression(), !968)
  br label %for.cond, !dbg !982, !llvm.loop !983

for.end:                                          ; preds = %for.cond
  ret void, !dbg !985
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_reduce(ptr noundef %v) local_unnamed_addr #0 !dbg !986 {
entry:
    #dbg_value(ptr %v, !989, !DIExpression(), !990)
    #dbg_value(i32 0, !991, !DIExpression(), !990)
  br label %for.cond, !dbg !992

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !994
    #dbg_value(i32 %i.0, !991, !DIExpression(), !990)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !995
  br i1 %exitcond, label %for.body, label %for.end, !dbg !997

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !998
  call void @pqcrystals_dilithium5_ref_poly_reduce(ptr noundef %arrayidx) #4, !dbg !999
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1000
    #dbg_value(i32 %inc, !991, !DIExpression(), !990)
  br label %for.cond, !dbg !1001, !llvm.loop !1002

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1004
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_caddq(ptr noundef %v) local_unnamed_addr #0 !dbg !1005 {
entry:
    #dbg_value(ptr %v, !1006, !DIExpression(), !1007)
    #dbg_value(i32 0, !1008, !DIExpression(), !1007)
  br label %for.cond, !dbg !1009

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1011
    #dbg_value(i32 %i.0, !1008, !DIExpression(), !1007)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1012
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1014

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1015
  call void @pqcrystals_dilithium5_ref_poly_caddq(ptr noundef %arrayidx) #4, !dbg !1016
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1017
    #dbg_value(i32 %inc, !1008, !DIExpression(), !1007)
  br label %for.cond, !dbg !1018, !llvm.loop !1019

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1021
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_add(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !1022 {
entry:
    #dbg_value(ptr %w, !1027, !DIExpression(), !1028)
    #dbg_value(ptr %u, !1029, !DIExpression(), !1028)
    #dbg_value(ptr %v, !1030, !DIExpression(), !1028)
    #dbg_value(i32 0, !1031, !DIExpression(), !1028)
  br label %for.cond, !dbg !1032

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1034
    #dbg_value(i32 %i.0, !1031, !DIExpression(), !1028)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1035
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1037

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !1038
  %arrayidx1 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !1039
  %arrayidx2 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1040
  call void @pqcrystals_dilithium5_ref_poly_add(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1041
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1042
    #dbg_value(i32 %inc, !1031, !DIExpression(), !1028)
  br label %for.cond, !dbg !1043, !llvm.loop !1044

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1046
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_sub(ptr noundef %w, ptr noundef %u, ptr noundef %v) local_unnamed_addr #0 !dbg !1047 {
entry:
    #dbg_value(ptr %w, !1048, !DIExpression(), !1049)
    #dbg_value(ptr %u, !1050, !DIExpression(), !1049)
    #dbg_value(ptr %v, !1051, !DIExpression(), !1049)
    #dbg_value(i32 0, !1052, !DIExpression(), !1049)
  br label %for.cond, !dbg !1053

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1055
    #dbg_value(i32 %i.0, !1052, !DIExpression(), !1049)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1056
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1058

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !1059
  %arrayidx1 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !1060
  %arrayidx2 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1061
  call void @pqcrystals_dilithium5_ref_poly_sub(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1062
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1063
    #dbg_value(i32 %inc, !1052, !DIExpression(), !1049)
  br label %for.cond, !dbg !1064, !llvm.loop !1065

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1067
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_shiftl(ptr noundef %v) local_unnamed_addr #0 !dbg !1068 {
entry:
    #dbg_value(ptr %v, !1069, !DIExpression(), !1070)
    #dbg_value(i32 0, !1071, !DIExpression(), !1070)
  br label %for.cond, !dbg !1072

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1074
    #dbg_value(i32 %i.0, !1071, !DIExpression(), !1070)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1075
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1077

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1078
  call void @pqcrystals_dilithium5_ref_poly_shiftl(ptr noundef %arrayidx) #4, !dbg !1079
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1080
    #dbg_value(i32 %inc, !1071, !DIExpression(), !1070)
  br label %for.cond, !dbg !1081, !llvm.loop !1082

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1084
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_ntt(ptr noundef %v) local_unnamed_addr #0 !dbg !1085 {
entry:
    #dbg_value(ptr %v, !1086, !DIExpression(), !1087)
    #dbg_value(i32 0, !1088, !DIExpression(), !1087)
  br label %for.cond, !dbg !1089

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1091
    #dbg_value(i32 %i.0, !1088, !DIExpression(), !1087)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1092
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1094

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1095
  call void @pqcrystals_dilithium5_ref_poly_ntt(ptr noundef %arrayidx) #4, !dbg !1096
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1097
    #dbg_value(i32 %inc, !1088, !DIExpression(), !1087)
  br label %for.cond, !dbg !1098, !llvm.loop !1099

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1101
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_invntt_tomont(ptr noundef %v) local_unnamed_addr #0 !dbg !1102 {
entry:
    #dbg_value(ptr %v, !1103, !DIExpression(), !1104)
    #dbg_value(i32 0, !1105, !DIExpression(), !1104)
  br label %for.cond, !dbg !1106

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1108
    #dbg_value(i32 %i.0, !1105, !DIExpression(), !1104)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1109
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1111

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1112
  call void @pqcrystals_dilithium5_ref_poly_invntt_tomont(ptr noundef %arrayidx) #4, !dbg !1113
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1114
    #dbg_value(i32 %inc, !1105, !DIExpression(), !1104)
  br label %for.cond, !dbg !1115, !llvm.loop !1116

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1118
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_pointwise_poly_montgomery(ptr noundef %r, ptr noundef %a, ptr noundef %v) local_unnamed_addr #0 !dbg !1119 {
entry:
    #dbg_value(ptr %r, !1122, !DIExpression(), !1123)
    #dbg_value(ptr %a, !1124, !DIExpression(), !1123)
    #dbg_value(ptr %v, !1125, !DIExpression(), !1123)
    #dbg_value(i32 0, !1126, !DIExpression(), !1123)
  br label %for.cond, !dbg !1127

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1129
    #dbg_value(i32 %i.0, !1126, !DIExpression(), !1123)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1130
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1132

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %r, i32 0, i32 %i.0, !dbg !1133
  %arrayidx1 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1134
  call void @pqcrystals_dilithium5_ref_poly_pointwise_montgomery(ptr noundef %arrayidx, ptr noundef %a, ptr noundef %arrayidx1) #4, !dbg !1135
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1136
    #dbg_value(i32 %inc, !1126, !DIExpression(), !1123)
  br label %for.cond, !dbg !1137, !llvm.loop !1138

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1140
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium5_ref_polyveck_chknorm(ptr noundef %v, i32 noundef %bound) local_unnamed_addr #0 !dbg !1141 {
entry:
    #dbg_value(ptr %v, !1144, !DIExpression(), !1145)
    #dbg_value(i32 %bound, !1146, !DIExpression(), !1145)
    #dbg_value(i32 0, !1147, !DIExpression(), !1145)
  br label %for.cond, !dbg !1148

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1150
    #dbg_value(i32 %i.0, !1147, !DIExpression(), !1145)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1151
  br i1 %exitcond, label %for.body, label %return, !dbg !1153

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1154
  %call = call i32 @pqcrystals_dilithium5_ref_poly_chknorm(ptr noundef %arrayidx, i32 noundef %bound) #4, !dbg !1156
  %tobool.not = icmp eq i32 %call, 0, !dbg !1156
  br i1 %tobool.not, label %for.inc, label %return, !dbg !1156

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1157
    #dbg_value(i32 %inc, !1147, !DIExpression(), !1145)
  br label %for.cond, !dbg !1158, !llvm.loop !1159

return:                                           ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 1, %for.body ], [ 0, %for.cond ], !dbg !1145
  ret i32 %retval.0, !dbg !1161
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_power2round(ptr noundef %v1, ptr noundef %v0, ptr noundef %v) local_unnamed_addr #0 !dbg !1162 {
entry:
    #dbg_value(ptr %v1, !1165, !DIExpression(), !1166)
    #dbg_value(ptr %v0, !1167, !DIExpression(), !1166)
    #dbg_value(ptr %v, !1168, !DIExpression(), !1166)
    #dbg_value(i32 0, !1169, !DIExpression(), !1166)
  br label %for.cond, !dbg !1170

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1172
    #dbg_value(i32 %i.0, !1169, !DIExpression(), !1166)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1173
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1175

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v1, i32 0, i32 %i.0, !dbg !1176
  %arrayidx1 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v0, i32 0, i32 %i.0, !dbg !1177
  %arrayidx2 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1178
  call void @pqcrystals_dilithium5_ref_poly_power2round(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1179
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1180
    #dbg_value(i32 %inc, !1169, !DIExpression(), !1166)
  br label %for.cond, !dbg !1181, !llvm.loop !1182

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1184
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_decompose(ptr noundef %v1, ptr noundef %v0, ptr noundef %v) local_unnamed_addr #0 !dbg !1185 {
entry:
    #dbg_value(ptr %v1, !1186, !DIExpression(), !1187)
    #dbg_value(ptr %v0, !1188, !DIExpression(), !1187)
    #dbg_value(ptr %v, !1189, !DIExpression(), !1187)
    #dbg_value(i32 0, !1190, !DIExpression(), !1187)
  br label %for.cond, !dbg !1191

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1193
    #dbg_value(i32 %i.0, !1190, !DIExpression(), !1187)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1194
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1196

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v1, i32 0, i32 %i.0, !dbg !1197
  %arrayidx1 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v0, i32 0, i32 %i.0, !dbg !1198
  %arrayidx2 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v, i32 0, i32 %i.0, !dbg !1199
  call void @pqcrystals_dilithium5_ref_poly_decompose(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1200
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1201
    #dbg_value(i32 %inc, !1190, !DIExpression(), !1187)
  br label %for.cond, !dbg !1202, !llvm.loop !1203

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1205
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium5_ref_polyveck_make_hint(ptr noundef %h, ptr noundef %v0, ptr noundef %v1) local_unnamed_addr #0 !dbg !1206 {
entry:
    #dbg_value(ptr %h, !1209, !DIExpression(), !1210)
    #dbg_value(ptr %v0, !1211, !DIExpression(), !1210)
    #dbg_value(ptr %v1, !1212, !DIExpression(), !1210)
    #dbg_value(i32 0, !1213, !DIExpression(), !1210)
    #dbg_value(i32 0, !1214, !DIExpression(), !1210)
  br label %for.cond, !dbg !1215

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1217
  %s.0 = phi i32 [ 0, %entry ], [ %add, %for.body ], !dbg !1210
    #dbg_value(i32 %s.0, !1213, !DIExpression(), !1210)
    #dbg_value(i32 %i.0, !1214, !DIExpression(), !1210)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1218
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1220

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %h, i32 0, i32 %i.0, !dbg !1221
  %arrayidx1 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v0, i32 0, i32 %i.0, !dbg !1222
  %arrayidx2 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %v1, i32 0, i32 %i.0, !dbg !1223
  %call = call i32 @pqcrystals_dilithium5_ref_poly_make_hint(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1224
    #dbg_value(!DIArgList(i32 %s.0, i32 %call), !1213, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1210)
  %add = add i32 %s.0, %call, !dbg !1225
    #dbg_value(i32 %add, !1213, !DIExpression(), !1210)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1226
    #dbg_value(i32 %inc, !1214, !DIExpression(), !1210)
  br label %for.cond, !dbg !1227, !llvm.loop !1228

for.end:                                          ; preds = %for.cond
  %s.0.lcssa = phi i32 [ %s.0, %for.cond ], !dbg !1210
  ret i32 %s.0.lcssa, !dbg !1230
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_use_hint(ptr noundef %w, ptr noundef %u, ptr noundef %h) local_unnamed_addr #0 !dbg !1231 {
entry:
    #dbg_value(ptr %w, !1232, !DIExpression(), !1233)
    #dbg_value(ptr %u, !1234, !DIExpression(), !1233)
    #dbg_value(ptr %h, !1235, !DIExpression(), !1233)
    #dbg_value(i32 0, !1236, !DIExpression(), !1233)
  br label %for.cond, !dbg !1237

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1239
    #dbg_value(i32 %i.0, !1236, !DIExpression(), !1233)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1240
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1242

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [8 x [256 x i32]], ptr %w, i32 0, i32 %i.0, !dbg !1243
  %arrayidx1 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %u, i32 0, i32 %i.0, !dbg !1244
  %arrayidx2 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %h, i32 0, i32 %i.0, !dbg !1245
  call void @pqcrystals_dilithium5_ref_poly_use_hint(ptr noundef %arrayidx, ptr noundef %arrayidx1, ptr noundef %arrayidx2) #4, !dbg !1246
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1247
    #dbg_value(i32 %inc, !1236, !DIExpression(), !1233)
  br label %for.cond, !dbg !1248, !llvm.loop !1249

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1251
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyveck_pack_w1(ptr noundef %r, ptr noundef %w1) local_unnamed_addr #0 !dbg !1252 {
entry:
    #dbg_value(ptr %r, !1255, !DIExpression(), !1256)
    #dbg_value(ptr %w1, !1257, !DIExpression(), !1256)
    #dbg_value(i32 0, !1258, !DIExpression(), !1256)
  br label %for.cond, !dbg !1259

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1261
    #dbg_value(i32 %i.0, !1258, !DIExpression(), !1256)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1262
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1264

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 7, !dbg !1265
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %mul, !dbg !1266
  %arrayidx1 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %w1, i32 0, i32 %i.0, !dbg !1267
  call void @pqcrystals_dilithium5_ref_polyw1_pack(ptr noundef %arrayidx, ptr noundef %arrayidx1) #4, !dbg !1268
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1269
    #dbg_value(i32 %inc, !1258, !DIExpression(), !1256)
  br label %for.cond, !dbg !1270, !llvm.loop !1271

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1273
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_reduce(ptr noundef %a) local_unnamed_addr #0 !dbg !1274 {
entry:
    #dbg_value(ptr %a, !1278, !DIExpression(), !1279)
    #dbg_value(i32 0, !1280, !DIExpression(), !1279)
  br label %for.cond, !dbg !1281

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1283
    #dbg_value(i32 %i.0, !1280, !DIExpression(), !1279)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1284
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1286

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1287
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1287
  %call = call i32 @pqcrystals_dilithium5_ref_reduce32(i32 noundef %0) #4, !dbg !1288
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1289
  store i32 %call, ptr %arrayidx1, align 4, !dbg !1290
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1291
    #dbg_value(i32 %inc, !1280, !DIExpression(), !1279)
  br label %for.cond, !dbg !1292, !llvm.loop !1293

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1295
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_caddq(ptr noundef %a) local_unnamed_addr #0 !dbg !1296 {
entry:
    #dbg_value(ptr %a, !1297, !DIExpression(), !1298)
    #dbg_value(i32 0, !1299, !DIExpression(), !1298)
  br label %for.cond, !dbg !1300

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1302
    #dbg_value(i32 %i.0, !1299, !DIExpression(), !1298)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1303
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1305

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1306
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1306
  %call = call i32 @pqcrystals_dilithium5_ref_caddq(i32 noundef %0) #4, !dbg !1307
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1308
  store i32 %call, ptr %arrayidx1, align 4, !dbg !1309
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1310
    #dbg_value(i32 %inc, !1299, !DIExpression(), !1298)
  br label %for.cond, !dbg !1311, !llvm.loop !1312

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1314
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_add(ptr noundef %c, ptr noundef %a, ptr noundef %b) local_unnamed_addr #0 !dbg !1315 {
entry:
    #dbg_value(ptr %c, !1318, !DIExpression(), !1319)
    #dbg_value(ptr %a, !1320, !DIExpression(), !1319)
    #dbg_value(ptr %b, !1321, !DIExpression(), !1319)
    #dbg_value(i32 0, !1322, !DIExpression(), !1319)
  br label %for.cond, !dbg !1323

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1325
    #dbg_value(i32 %i.0, !1322, !DIExpression(), !1319)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1326
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1328

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1329
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1329
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1330
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1330
  %add = add nsw i32 %0, %1, !dbg !1331
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.0, !dbg !1332
  store i32 %add, ptr %arrayidx2, align 4, !dbg !1333
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1334
    #dbg_value(i32 %inc, !1322, !DIExpression(), !1319)
  br label %for.cond, !dbg !1335, !llvm.loop !1336

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1338
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_sub(ptr noundef %c, ptr noundef %a, ptr noundef %b) local_unnamed_addr #0 !dbg !1339 {
entry:
    #dbg_value(ptr %c, !1340, !DIExpression(), !1341)
    #dbg_value(ptr %a, !1342, !DIExpression(), !1341)
    #dbg_value(ptr %b, !1343, !DIExpression(), !1341)
    #dbg_value(i32 0, !1344, !DIExpression(), !1341)
  br label %for.cond, !dbg !1345

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1347
    #dbg_value(i32 %i.0, !1344, !DIExpression(), !1341)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1348
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1350

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1351
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1351
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1352
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1352
  %sub = sub nsw i32 %0, %1, !dbg !1353
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.0, !dbg !1354
  store i32 %sub, ptr %arrayidx2, align 4, !dbg !1355
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1356
    #dbg_value(i32 %inc, !1344, !DIExpression(), !1341)
  br label %for.cond, !dbg !1357, !llvm.loop !1358

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1360
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_shiftl(ptr noundef %a) local_unnamed_addr #0 !dbg !1361 {
entry:
    #dbg_value(ptr %a, !1362, !DIExpression(), !1363)
    #dbg_value(i32 0, !1364, !DIExpression(), !1363)
  br label %for.cond, !dbg !1365

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1367
    #dbg_value(i32 %i.0, !1364, !DIExpression(), !1363)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1368
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1370

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1371
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1372
  %shl = shl i32 %0, 13, !dbg !1372
  store i32 %shl, ptr %arrayidx, align 4, !dbg !1372
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1373
    #dbg_value(i32 %inc, !1364, !DIExpression(), !1363)
  br label %for.cond, !dbg !1374, !llvm.loop !1375

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1377
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_ntt(ptr noundef %a) local_unnamed_addr #0 !dbg !1378 {
entry:
    #dbg_value(ptr %a, !1379, !DIExpression(), !1380)
  call void @pqcrystals_dilithium5_ref_ntt(ptr noundef %a) #4, !dbg !1381
  ret void, !dbg !1382
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_invntt_tomont(ptr noundef %a) local_unnamed_addr #0 !dbg !1383 {
entry:
    #dbg_value(ptr %a, !1384, !DIExpression(), !1385)
  call void @pqcrystals_dilithium5_ref_invntt_tomont(ptr noundef %a) #4, !dbg !1386
  ret void, !dbg !1387
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_pointwise_montgomery(ptr noundef %c, ptr noundef %a, ptr noundef %b) local_unnamed_addr #0 !dbg !1388 {
entry:
    #dbg_value(ptr %c, !1389, !DIExpression(), !1390)
    #dbg_value(ptr %a, !1391, !DIExpression(), !1390)
    #dbg_value(ptr %b, !1392, !DIExpression(), !1390)
    #dbg_value(i32 0, !1393, !DIExpression(), !1390)
  br label %for.cond, !dbg !1394

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1396
    #dbg_value(i32 %i.0, !1393, !DIExpression(), !1390)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1397
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1399

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1400
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1400
  %conv = sext i32 %0 to i64, !dbg !1401
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1402
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1402
  %conv2 = sext i32 %1 to i64, !dbg !1402
  %mul = mul nsw i64 %conv, %conv2, !dbg !1403
  %call = call i32 @pqcrystals_dilithium5_ref_montgomery_reduce(i64 noundef %mul) #4, !dbg !1404
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.0, !dbg !1405
  store i32 %call, ptr %arrayidx3, align 4, !dbg !1406
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1407
    #dbg_value(i32 %inc, !1393, !DIExpression(), !1390)
  br label %for.cond, !dbg !1408, !llvm.loop !1409

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1411
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_power2round(ptr noundef %a1, ptr noundef %a0, ptr noundef %a) local_unnamed_addr #0 !dbg !1412 {
entry:
    #dbg_value(ptr %a1, !1415, !DIExpression(), !1416)
    #dbg_value(ptr %a0, !1417, !DIExpression(), !1416)
    #dbg_value(ptr %a, !1418, !DIExpression(), !1416)
    #dbg_value(i32 0, !1419, !DIExpression(), !1416)
  br label %for.cond, !dbg !1420

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1422
    #dbg_value(i32 %i.0, !1419, !DIExpression(), !1416)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1423
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1425

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a0, i32 0, i32 %i.0, !dbg !1426
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1427
  %0 = load i32, ptr %arrayidx1, align 4, !dbg !1427
  %call = call i32 @pqcrystals_dilithium5_ref_power2round(ptr noundef %arrayidx, i32 noundef %0) #4, !dbg !1428
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %a1, i32 0, i32 %i.0, !dbg !1429
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1430
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1431
    #dbg_value(i32 %inc, !1419, !DIExpression(), !1416)
  br label %for.cond, !dbg !1432, !llvm.loop !1433

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1435
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_decompose(ptr noundef %a1, ptr noundef %a0, ptr noundef %a) local_unnamed_addr #0 !dbg !1436 {
entry:
    #dbg_value(ptr %a1, !1437, !DIExpression(), !1438)
    #dbg_value(ptr %a0, !1439, !DIExpression(), !1438)
    #dbg_value(ptr %a, !1440, !DIExpression(), !1438)
    #dbg_value(i32 0, !1441, !DIExpression(), !1438)
  br label %for.cond, !dbg !1442

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1444
    #dbg_value(i32 %i.0, !1441, !DIExpression(), !1438)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1445
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1447

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a0, i32 0, i32 %i.0, !dbg !1448
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1449
  %0 = load i32, ptr %arrayidx1, align 4, !dbg !1449
  %call = call i32 @pqcrystals_dilithium5_ref_decompose(ptr noundef %arrayidx, i32 noundef %0) #4, !dbg !1450
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %a1, i32 0, i32 %i.0, !dbg !1451
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1452
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1453
    #dbg_value(i32 %inc, !1441, !DIExpression(), !1438)
  br label %for.cond, !dbg !1454, !llvm.loop !1455

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1457
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium5_ref_poly_make_hint(ptr noundef %h, ptr noundef %a0, ptr noundef %a1) local_unnamed_addr #0 !dbg !1458 {
entry:
    #dbg_value(ptr %h, !1461, !DIExpression(), !1462)
    #dbg_value(ptr %a0, !1463, !DIExpression(), !1462)
    #dbg_value(ptr %a1, !1464, !DIExpression(), !1462)
    #dbg_value(i32 0, !1465, !DIExpression(), !1462)
    #dbg_value(i32 0, !1466, !DIExpression(), !1462)
  br label %for.cond, !dbg !1467

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1469
  %s.0 = phi i32 [ 0, %entry ], [ %add, %for.body ], !dbg !1462
    #dbg_value(i32 %s.0, !1465, !DIExpression(), !1462)
    #dbg_value(i32 %i.0, !1466, !DIExpression(), !1462)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1470
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1472

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a0, i32 0, i32 %i.0, !dbg !1473
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1473
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %a1, i32 0, i32 %i.0, !dbg !1475
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1475
  %call = call i32 @pqcrystals_dilithium5_ref_make_hint(i32 noundef %0, i32 noundef %1) #4, !dbg !1476
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %h, i32 0, i32 %i.0, !dbg !1477
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1478
    #dbg_value(!DIArgList(i32 %s.0, i32 %call), !1465, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !1462)
  %add = add i32 %s.0, %call, !dbg !1479
    #dbg_value(i32 %add, !1465, !DIExpression(), !1462)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1480
    #dbg_value(i32 %inc, !1466, !DIExpression(), !1462)
  br label %for.cond, !dbg !1481, !llvm.loop !1482

for.end:                                          ; preds = %for.cond
  %s.0.lcssa = phi i32 [ %s.0, %for.cond ], !dbg !1462
  ret i32 %s.0.lcssa, !dbg !1484
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_use_hint(ptr noundef %b, ptr noundef %a, ptr noundef %h) local_unnamed_addr #0 !dbg !1485 {
entry:
    #dbg_value(ptr %b, !1486, !DIExpression(), !1487)
    #dbg_value(ptr %a, !1488, !DIExpression(), !1487)
    #dbg_value(ptr %h, !1489, !DIExpression(), !1487)
    #dbg_value(i32 0, !1490, !DIExpression(), !1487)
  br label %for.cond, !dbg !1491

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1493
    #dbg_value(i32 %i.0, !1490, !DIExpression(), !1487)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1494
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1496

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1497
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1497
  %arrayidx1 = getelementptr inbounds nuw [256 x i32], ptr %h, i32 0, i32 %i.0, !dbg !1498
  %1 = load i32, ptr %arrayidx1, align 4, !dbg !1498
  %call = call i32 @pqcrystals_dilithium5_ref_use_hint(i32 noundef %0, i32 noundef %1) #4, !dbg !1499
  %arrayidx2 = getelementptr inbounds nuw [256 x i32], ptr %b, i32 0, i32 %i.0, !dbg !1500
  store i32 %call, ptr %arrayidx2, align 4, !dbg !1501
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1502
    #dbg_value(i32 %inc, !1490, !DIExpression(), !1487)
  br label %for.cond, !dbg !1503, !llvm.loop !1504

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1506
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium5_ref_poly_chknorm(ptr noundef %a, i32 noundef %B) local_unnamed_addr #0 !dbg !1507 {
entry:
    #dbg_value(ptr %a, !1510, !DIExpression(), !1511)
    #dbg_value(i32 %B, !1512, !DIExpression(), !1511)
  %cmp = icmp sgt i32 %B, 1047552, !dbg !1513
  br i1 %cmp, label %return, label %for.cond.preheader, !dbg !1513

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !1515

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !1517
    #dbg_value(i32 %i.0, !1518, !DIExpression(), !1511)
  %exitcond = icmp ne i32 %i.0, 256, !dbg !1519
  br i1 %exitcond, label %for.body, label %return.loopexit, !dbg !1515

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %i.0, !dbg !1521
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1521
    #dbg_value(i32 %0, !1523, !DIExpression(DW_OP_constu, 31, DW_OP_shra, DW_OP_stack_value), !1511)
  %1 = call i32 @llvm.smin.i32(i32 %0, i32 0), !dbg !1524
  %and = shl i32 %1, 1, !dbg !1524
  %sub = sub nsw i32 %0, %and, !dbg !1525
    #dbg_value(i32 %sub, !1523, !DIExpression(), !1511)
  %cmp4.not = icmp slt i32 %sub, %B, !dbg !1526
  br i1 %cmp4.not, label %for.inc, label %return.loopexit, !dbg !1526

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1528
    #dbg_value(i32 %inc, !1518, !DIExpression(), !1511)
  br label %for.cond, !dbg !1529, !llvm.loop !1530

return.loopexit:                                  ; preds = %for.body, %for.cond
  %retval.0.ph = phi i32 [ 0, %for.cond ], [ 1, %for.body ]
  br label %return, !dbg !1532

return:                                           ; preds = %return.loopexit, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %retval.0.ph, %return.loopexit ], !dbg !1511
  ret i32 %retval.0, !dbg !1532
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_uniform(ptr noundef %a, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !1533 {
entry:
  %buf = alloca [842 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %a, !1536, !DIExpression(), !1537)
    #dbg_value(ptr %seed, !1538, !DIExpression(), !1537)
    #dbg_value(i16 %nonce, !1539, !DIExpression(), !1537)
    #dbg_value(i32 840, !1540, !DIExpression(), !1537)
    #dbg_declare(ptr %buf, !1541, !DIExpression(), !1545)
    #dbg_declare(ptr %state, !1546, !DIExpression(), !1549)
  call void @pqcrystals_dilithium5_ref_dilithium_shake128_stream_init(ptr noundef nonnull %state, ptr noundef %seed, i16 noundef zeroext %nonce) #4, !dbg !1550
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 5, ptr noundef nonnull %state) #4, !dbg !1551
  %call = call fastcc i32 @rej_uniform(ptr noundef %a, i32 noundef 256, ptr noundef nonnull %buf, i32 noundef 840) #4, !dbg !1552
    #dbg_value(i32 %call, !1553, !DIExpression(), !1537)
  br label %while.cond, !dbg !1554

while.cond:                                       ; preds = %for.end, %entry
  %ctr.0 = phi i32 [ %call, %entry ], [ %add12, %for.end ], !dbg !1537
  %buflen.0 = phi i32 [ 840, %entry ], [ %add6, %for.end ], !dbg !1537
    #dbg_value(i32 %buflen.0, !1540, !DIExpression(), !1537)
    #dbg_value(i32 %ctr.0, !1553, !DIExpression(), !1537)
  %cmp = icmp ult i32 %ctr.0, 256, !dbg !1555
  br i1 %cmp, label %while.body, label %while.end, !dbg !1554

while.body:                                       ; preds = %while.cond
  %rem = urem i32 %buflen.0, 3, !dbg !1556
    #dbg_value(i32 %rem, !1558, !DIExpression(), !1537)
    #dbg_value(i32 0, !1559, !DIExpression(), !1537)
  br label %for.cond, !dbg !1560

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !1562
    #dbg_value(i32 %i.0, !1559, !DIExpression(), !1537)
  %exitcond = icmp ne i32 %i.0, %rem, !dbg !1563
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1565

for.body:                                         ; preds = %for.cond
  %sub = sub nuw nsw i32 %buflen.0, %rem, !dbg !1566
  %add = add nuw nsw i32 %sub, %i.0, !dbg !1567
  %arrayidx = getelementptr inbounds nuw [842 x i8], ptr %buf, i32 0, i32 %add, !dbg !1568
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1568
  %arrayidx4 = getelementptr inbounds nuw [842 x i8], ptr %buf, i32 0, i32 %i.0, !dbg !1569
  store i8 %0, ptr %arrayidx4, align 1, !dbg !1570
  %inc = add nuw i32 %i.0, 1, !dbg !1571
    #dbg_value(i32 %inc, !1559, !DIExpression(), !1537)
  br label %for.cond, !dbg !1572, !llvm.loop !1573

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %buf, i32 %rem, !dbg !1575
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef nonnull %add.ptr, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1575
  %add6 = or disjoint i32 %rem, 168, !dbg !1576
    #dbg_value(i32 %add6, !1540, !DIExpression(), !1537)
  %add.ptr8 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1577
  %sub9 = sub nuw nsw i32 256, %ctr.0, !dbg !1578
  %call11 = call fastcc i32 @rej_uniform(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull %buf, i32 noundef %add6) #4, !dbg !1579
  %add12 = add i32 %ctr.0, %call11, !dbg !1580
    #dbg_value(i32 %add12, !1553, !DIExpression(), !1537)
  br label %while.cond, !dbg !1554, !llvm.loop !1581

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1583
}

; Function Attrs: nounwind
define internal fastcc i32 @rej_uniform(ptr noundef %a, i32 noundef range(i32 1, 257) %len, ptr noundef nonnull %buf, i32 noundef range(i32 168, 841) %buflen) unnamed_addr #0 !dbg !1584 {
entry:
    #dbg_value(ptr %a, !1588, !DIExpression(), !1589)
    #dbg_value(i32 %len, !1590, !DIExpression(), !1589)
    #dbg_value(ptr %buf, !1591, !DIExpression(), !1589)
    #dbg_value(i32 %buflen, !1592, !DIExpression(), !1589)
    #dbg_value(i32 0, !1593, !DIExpression(), !1589)
    #dbg_value(i32 0, !1594, !DIExpression(), !1589)
  br label %while.cond, !dbg !1595

while.cond:                                       ; preds = %if.end, %entry
  %ctr.0 = phi i32 [ 0, %entry ], [ %ctr.1, %if.end ], !dbg !1589
  %pos.0 = phi i32 [ 0, %entry ], [ %inc5, %if.end ], !dbg !1589
    #dbg_value(i32 %pos.0, !1593, !DIExpression(), !1589)
    #dbg_value(i32 %ctr.0, !1594, !DIExpression(), !1589)
  %cmp = icmp ult i32 %ctr.0, %len, !dbg !1596
  %add = add nuw nsw i32 %pos.0, 3, !dbg !1597
  %cmp1 = icmp ule i32 %add, %buflen, !dbg !1597
  %0 = select i1 %cmp, i1 %cmp1, i1 false, !dbg !1597
  br i1 %0, label %while.body, label %while.end, !dbg !1595

while.body:                                       ; preds = %while.cond
    #dbg_value(i32 %pos.0, !1593, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1589)
  %arrayidx = getelementptr inbounds nuw i8, ptr %buf, i32 %pos.0, !dbg !1598
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1598
  %conv = zext i8 %1 to i32, !dbg !1598
    #dbg_value(i32 %conv, !1600, !DIExpression(), !1589)
    #dbg_value(i32 %pos.0, !1593, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1589)
  %2 = getelementptr i8, ptr %buf, i32 %pos.0, !dbg !1601
  %arrayidx3 = getelementptr i8, ptr %2, i32 1, !dbg !1601
  %3 = load i8, ptr %arrayidx3, align 1, !dbg !1601
  %conv4 = zext i8 %3 to i32, !dbg !1602
  %shl = shl nuw nsw i32 %conv4, 8, !dbg !1603
  %or = or disjoint i32 %shl, %conv, !dbg !1604
    #dbg_value(i32 %or, !1600, !DIExpression(), !1589)
  %inc5 = add nuw nsw i32 %pos.0, 3, !dbg !1605
    #dbg_value(i32 %inc5, !1593, !DIExpression(), !1589)
  %4 = getelementptr i8, ptr %buf, i32 %pos.0, !dbg !1606
  %arrayidx6 = getelementptr i8, ptr %4, i32 2, !dbg !1606
  %5 = load i8, ptr %arrayidx6, align 1, !dbg !1606
  %conv7 = zext i8 %5 to i32, !dbg !1607
  %shl8 = shl nuw nsw i32 %conv7, 16, !dbg !1608
    #dbg_value(!DIArgList(i32 %or, i32 %shl8), !1600, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1589)
  %shl8.masked = and i32 %shl8, 8323072, !dbg !1609
  %and = or disjoint i32 %or, %shl8.masked, !dbg !1609
    #dbg_value(i32 %and, !1600, !DIExpression(), !1589)
  %cmp10 = icmp samesign ult i32 %and, 8380417, !dbg !1610
  br i1 %cmp10, label %if.then, label %if.end, !dbg !1610

if.then:                                          ; preds = %while.body
  %inc12 = add nuw nsw i32 %ctr.0, 1, !dbg !1612
    #dbg_value(i32 %inc12, !1594, !DIExpression(), !1589)
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1613
  store i32 %and, ptr %arrayidx13, align 4, !dbg !1614
  br label %if.end, !dbg !1613

if.end:                                           ; preds = %if.then, %while.body
  %ctr.1 = phi i32 [ %inc12, %if.then ], [ %ctr.0, %while.body ], !dbg !1589
    #dbg_value(i32 %ctr.1, !1594, !DIExpression(), !1589)
  br label %while.cond, !dbg !1595, !llvm.loop !1615

while.end:                                        ; preds = %while.cond
  %ctr.0.lcssa = phi i32 [ %ctr.0, %while.cond ], !dbg !1589
  ret i32 %ctr.0.lcssa, !dbg !1617
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_uniform_eta(ptr noundef %a, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !1618 {
entry:
  %buf = alloca [136 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %a, !1619, !DIExpression(), !1620)
    #dbg_value(ptr %seed, !1621, !DIExpression(), !1620)
    #dbg_value(i16 %nonce, !1622, !DIExpression(), !1620)
    #dbg_value(i32 136, !1623, !DIExpression(), !1620)
    #dbg_declare(ptr %buf, !1624, !DIExpression(), !1628)
    #dbg_declare(ptr %state, !1629, !DIExpression(), !1631)
  call void @pqcrystals_dilithium5_ref_dilithium_shake256_stream_init(ptr noundef nonnull %state, ptr noundef %seed, i16 noundef zeroext %nonce) #4, !dbg !1632
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1633
  %call = call fastcc i32 @rej_eta(ptr noundef %a, i32 noundef 256, ptr noundef nonnull %buf, i32 noundef 136) #4, !dbg !1634
    #dbg_value(i32 %call, !1635, !DIExpression(), !1620)
  br label %while.cond, !dbg !1636

while.cond:                                       ; preds = %while.body, %entry
  %ctr.0 = phi i32 [ %call, %entry ], [ %add, %while.body ], !dbg !1620
    #dbg_value(i32 %ctr.0, !1635, !DIExpression(), !1620)
  %cmp = icmp ult i32 %ctr.0, 256, !dbg !1637
  br i1 %cmp, label %while.body, label %while.end, !dbg !1636

while.body:                                       ; preds = %while.cond
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1638
  %add.ptr = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1640
  %sub = sub nuw nsw i32 256, %ctr.0, !dbg !1641
  %call6 = call fastcc i32 @rej_eta(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %buf, i32 noundef 136) #4, !dbg !1642
  %add = add i32 %ctr.0, %call6, !dbg !1643
    #dbg_value(i32 %add, !1635, !DIExpression(), !1620)
  br label %while.cond, !dbg !1636, !llvm.loop !1644

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1646
}

; Function Attrs: nounwind
define internal fastcc i32 @rej_eta(ptr noundef %a, i32 noundef range(i32 1, 257) %len, ptr noundef nonnull %buf, i32 noundef %buflen) unnamed_addr #0 !dbg !1647 {
entry:
    #dbg_value(ptr %a, !1648, !DIExpression(), !1649)
    #dbg_value(i32 %len, !1650, !DIExpression(), !1649)
    #dbg_value(ptr %buf, !1651, !DIExpression(), !1649)
    #dbg_value(i32 136, !1652, !DIExpression(), !1649)
    #dbg_value(i32 0, !1653, !DIExpression(), !1649)
    #dbg_value(i32 0, !1654, !DIExpression(), !1649)
  br label %while.cond, !dbg !1655

while.cond:                                       ; preds = %if.end23, %entry
  %ctr.0 = phi i32 [ 0, %entry ], [ %ctr.2, %if.end23 ], !dbg !1649
  %pos.0 = phi i32 [ 0, %entry ], [ %inc, %if.end23 ], !dbg !1649
    #dbg_value(i32 %pos.0, !1653, !DIExpression(), !1649)
    #dbg_value(i32 %ctr.0, !1654, !DIExpression(), !1649)
  %cmp = icmp ult i32 %ctr.0, %len, !dbg !1656
  %cmp1 = icmp samesign ult i32 %pos.0, 136
  %spec.select = select i1 %cmp, i1 %cmp1, i1 false, !dbg !1657
  br i1 %spec.select, label %while.body, label %while.end, !dbg !1655

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %buf, i32 %pos.0, !dbg !1658
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1658
  %1 = and i8 %0, 15, !dbg !1660
    #dbg_value(i8 %1, !1661, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !1649)
  %inc = add nuw nsw i32 %pos.0, 1, !dbg !1662
    #dbg_value(i32 %inc, !1653, !DIExpression(), !1649)
  %2 = lshr i8 %0, 4, !dbg !1663
  %shr = zext nneg i8 %2 to i32, !dbg !1663
    #dbg_value(i32 %shr, !1664, !DIExpression(), !1649)
  %cmp4.not = icmp eq i8 %1, 15, !dbg !1665
  br i1 %cmp4.not, label %if.end, label %if.then, !dbg !1665

if.then:                                          ; preds = %while.body
  %and = zext nneg i8 %1 to i32, !dbg !1660
    #dbg_value(i32 %and, !1661, !DIExpression(), !1649)
  %mul = mul nuw nsw i32 %and, 205, !dbg !1667
  %shr6 = lshr i32 %mul, 10, !dbg !1669
  %mul7.neg = mul nsw i32 %shr6, -5, !dbg !1670
  %sub = add nsw i32 %mul7.neg, %and, !dbg !1671
    #dbg_value(i32 %sub, !1661, !DIExpression(), !1649)
  %sub8 = sub nsw i32 2, %sub, !dbg !1672
  %inc9 = add nuw nsw i32 %ctr.0, 1, !dbg !1673
    #dbg_value(i32 %inc9, !1654, !DIExpression(), !1649)
  %arrayidx10 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.0, !dbg !1674
  store i32 %sub8, ptr %arrayidx10, align 4, !dbg !1675
  br label %if.end, !dbg !1676

if.end:                                           ; preds = %if.then, %while.body
  %ctr.1 = phi i32 [ %inc9, %if.then ], [ %ctr.0, %while.body ], !dbg !1649
    #dbg_value(i32 %ctr.1, !1654, !DIExpression(), !1649)
  %cmp11.not = icmp ne i8 %2, 15, !dbg !1677
  %cmp13 = icmp ult i32 %ctr.1, %len
  %or.cond = and i1 %cmp11.not, %cmp13, !dbg !1679
  br i1 %or.cond, label %if.then15, label %if.end23, !dbg !1679

if.then15:                                        ; preds = %if.end
  %mul16 = mul nuw nsw i32 %shr, 205, !dbg !1680
  %shr17 = lshr i32 %mul16, 10, !dbg !1682
  %mul18.neg = mul nsw i32 %shr17, -5, !dbg !1683
  %sub19 = add nsw i32 %mul18.neg, %shr, !dbg !1684
    #dbg_value(i32 %sub19, !1664, !DIExpression(), !1649)
  %sub20 = sub nsw i32 2, %sub19, !dbg !1685
  %inc21 = add nuw nsw i32 %ctr.1, 1, !dbg !1686
    #dbg_value(i32 %inc21, !1654, !DIExpression(), !1649)
  %arrayidx22 = getelementptr inbounds nuw i32, ptr %a, i32 %ctr.1, !dbg !1687
  store i32 %sub20, ptr %arrayidx22, align 4, !dbg !1688
  br label %if.end23, !dbg !1689

if.end23:                                         ; preds = %if.then15, %if.end
  %ctr.2 = phi i32 [ %inc21, %if.then15 ], [ %ctr.1, %if.end ], !dbg !1690
    #dbg_value(i32 %ctr.2, !1654, !DIExpression(), !1649)
  br label %while.cond, !dbg !1655, !llvm.loop !1691

while.end:                                        ; preds = %while.cond
  %ctr.0.lcssa = phi i32 [ %ctr.0, %while.cond ], !dbg !1649
  ret i32 %ctr.0.lcssa, !dbg !1693
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_uniform_gamma1(ptr noundef %a, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !1694 {
entry:
  %buf = alloca [680 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %a, !1695, !DIExpression(), !1696)
    #dbg_value(ptr %seed, !1697, !DIExpression(), !1696)
    #dbg_value(i16 %nonce, !1698, !DIExpression(), !1696)
    #dbg_declare(ptr %buf, !1699, !DIExpression(), !1703)
    #dbg_declare(ptr %state, !1704, !DIExpression(), !1705)
  call void @pqcrystals_dilithium5_ref_dilithium_shake256_stream_init(ptr noundef nonnull %state, ptr noundef %seed, i16 noundef zeroext %nonce) #4, !dbg !1706
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 5, ptr noundef nonnull %state) #4, !dbg !1707
  call void @pqcrystals_dilithium5_ref_polyz_unpack(ptr noundef %a, ptr noundef nonnull %buf) #4, !dbg !1708
  ret void, !dbg !1709
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyz_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !1710 {
entry:
    #dbg_value(ptr %r, !1713, !DIExpression(), !1714)
    #dbg_value(ptr %a, !1715, !DIExpression(), !1714)
    #dbg_value(i32 0, !1716, !DIExpression(), !1714)
  br label %for.cond, !dbg !1717

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1719
    #dbg_value(i32 %i.0, !1716, !DIExpression(), !1714)
  %exitcond = icmp ne i32 %i.0, 128, !dbg !1720
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1722

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 5, !dbg !1723
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %mul, !dbg !1725
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1725
  %conv = zext i8 %0 to i32, !dbg !1725
  %mul1 = shl nuw nsw i32 %i.0, 1, !dbg !1726
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul1, !dbg !1727
  store i32 %conv, ptr %arrayidx3, align 4, !dbg !1728
  %mul4 = mul nuw nsw i32 %i.0, 5, !dbg !1729
  %1 = getelementptr inbounds nuw i8, ptr %a, i32 %mul4, !dbg !1730
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %1, i32 1, !dbg !1730
  %2 = load i8, ptr %arrayidx6, align 1, !dbg !1730
  %conv7 = zext i8 %2 to i32, !dbg !1731
  %shl = shl nuw nsw i32 %conv7, 8, !dbg !1732
  %mul8 = shl nuw nsw i32 %i.0, 1, !dbg !1733
  %arrayidx10 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul8, !dbg !1734
  %3 = load i32, ptr %arrayidx10, align 4, !dbg !1735
  %or = or i32 %3, %shl, !dbg !1735
  store i32 %or, ptr %arrayidx10, align 4, !dbg !1735
  %mul11 = mul nuw nsw i32 %i.0, 5, !dbg !1736
  %4 = getelementptr inbounds nuw i8, ptr %a, i32 %mul11, !dbg !1737
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %4, i32 2, !dbg !1737
  %5 = load i8, ptr %arrayidx13, align 1, !dbg !1737
  %conv14 = zext i8 %5 to i32, !dbg !1738
  %shl15 = shl nuw nsw i32 %conv14, 16, !dbg !1739
  %mul16 = shl nuw nsw i32 %i.0, 1, !dbg !1740
  %arrayidx18 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul16, !dbg !1741
  %6 = load i32, ptr %arrayidx18, align 4, !dbg !1742
  %or19 = or i32 %6, %shl15, !dbg !1742
  store i32 %or19, ptr %arrayidx18, align 4, !dbg !1742
  %mul20 = shl nuw nsw i32 %i.0, 1, !dbg !1743
  %arrayidx22 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul20, !dbg !1744
  %7 = load i32, ptr %arrayidx22, align 4, !dbg !1745
  %and = and i32 %7, 1048575, !dbg !1745
  store i32 %and, ptr %arrayidx22, align 4, !dbg !1745
  %mul23 = mul nuw nsw i32 %i.0, 5, !dbg !1746
  %8 = getelementptr inbounds nuw i8, ptr %a, i32 %mul23, !dbg !1747
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %8, i32 2, !dbg !1747
  %9 = load i8, ptr %arrayidx25, align 1, !dbg !1747
  %10 = lshr i8 %9, 4, !dbg !1748
  %shr = zext nneg i8 %10 to i32, !dbg !1748
  %mul27 = shl nuw nsw i32 %i.0, 1, !dbg !1749
  %add28 = or disjoint i32 %mul27, 1, !dbg !1750
  %arrayidx29 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add28, !dbg !1751
  store i32 %shr, ptr %arrayidx29, align 4, !dbg !1752
  %mul30 = mul nuw nsw i32 %i.0, 5, !dbg !1753
  %11 = getelementptr inbounds nuw i8, ptr %a, i32 %mul30, !dbg !1754
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %11, i32 3, !dbg !1754
  %12 = load i8, ptr %arrayidx32, align 1, !dbg !1754
  %conv33 = zext i8 %12 to i32, !dbg !1755
  %shl34 = shl nuw nsw i32 %conv33, 4, !dbg !1756
  %mul35 = shl nuw nsw i32 %i.0, 1, !dbg !1757
  %add36 = or disjoint i32 %mul35, 1, !dbg !1758
  %arrayidx37 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add36, !dbg !1759
  %13 = load i32, ptr %arrayidx37, align 4, !dbg !1760
  %or38 = or i32 %13, %shl34, !dbg !1760
  store i32 %or38, ptr %arrayidx37, align 4, !dbg !1760
  %mul39 = mul nuw nsw i32 %i.0, 5, !dbg !1761
  %14 = getelementptr inbounds nuw i8, ptr %a, i32 %mul39, !dbg !1762
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %14, i32 4, !dbg !1762
  %15 = load i8, ptr %arrayidx41, align 1, !dbg !1762
  %conv42 = zext i8 %15 to i32, !dbg !1763
  %shl43 = shl nuw nsw i32 %conv42, 12, !dbg !1764
  %mul44 = shl nuw nsw i32 %i.0, 1, !dbg !1765
  %add45 = or disjoint i32 %mul44, 1, !dbg !1766
  %arrayidx46 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add45, !dbg !1767
  %16 = load i32, ptr %arrayidx46, align 4, !dbg !1768
  %or47 = or i32 %16, %shl43, !dbg !1768
  store i32 %or47, ptr %arrayidx46, align 4, !dbg !1768
  %mul48 = shl nuw nsw i32 %i.0, 1, !dbg !1769
  %arrayidx50 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul48, !dbg !1770
  %17 = load i32, ptr %arrayidx50, align 4, !dbg !1770
  %sub = sub nsw i32 524288, %17, !dbg !1771
  %mul51 = shl nuw nsw i32 %i.0, 1, !dbg !1772
  %arrayidx53 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul51, !dbg !1773
  store i32 %sub, ptr %arrayidx53, align 4, !dbg !1774
  %mul54 = shl nuw nsw i32 %i.0, 1, !dbg !1775
  %add55 = or disjoint i32 %mul54, 1, !dbg !1776
  %arrayidx56 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add55, !dbg !1777
  %18 = load i32, ptr %arrayidx56, align 4, !dbg !1777
  %sub57 = sub nsw i32 524288, %18, !dbg !1778
  %mul58 = shl nuw nsw i32 %i.0, 1, !dbg !1779
  %add59 = or disjoint i32 %mul58, 1, !dbg !1780
  %arrayidx60 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add59, !dbg !1781
  store i32 %sub57, ptr %arrayidx60, align 4, !dbg !1782
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1783
    #dbg_value(i32 %inc, !1716, !DIExpression(), !1714)
  br label %for.cond, !dbg !1784, !llvm.loop !1785

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1787
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_poly_challenge(ptr noundef %c, ptr noundef %seed) local_unnamed_addr #0 !dbg !1788 {
entry:
  %buf = alloca [136 x i8], align 1
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %c, !1789, !DIExpression(), !1790)
    #dbg_value(ptr %seed, !1791, !DIExpression(), !1790)
    #dbg_declare(ptr %buf, !1792, !DIExpression(), !1793)
    #dbg_declare(ptr %state, !1794, !DIExpression(), !1795)
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef nonnull %state) #4, !dbg !1796
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef nonnull %state, ptr noundef %seed, i32 noundef 64) #4, !dbg !1797
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef nonnull %state) #4, !dbg !1798
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1799
    #dbg_value(i64 0, !1800, !DIExpression(), !1790)
    #dbg_value(i32 0, !1801, !DIExpression(), !1790)
  br label %for.cond, !dbg !1802

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1804
  %signs.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !1790
    #dbg_value(i64 %signs.0, !1800, !DIExpression(), !1790)
    #dbg_value(i32 %i.0, !1801, !DIExpression(), !1790)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !1805
  br i1 %exitcond, label %for.inc, label %for.cond1.preheader, !dbg !1807

for.cond1.preheader:                              ; preds = %for.cond
  %signs.0.lcssa = phi i64 [ %signs.0, %for.cond ], !dbg !1790
  br label %for.cond1, !dbg !1808

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1790)
  %arrayidx = getelementptr inbounds nuw [136 x i8], ptr %buf, i32 0, i32 %i.0, !dbg !1810
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1810
    #dbg_value(!DIArgList(i64 %signs.0, i8 %0, i32 %i.0), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1790)
  %conv = zext i8 %0 to i64, !dbg !1811
    #dbg_value(!DIArgList(i64 %signs.0, i64 %conv, i32 %i.0), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1790)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !1812
    #dbg_value(!DIArgList(i64 %signs.0, i64 %conv, i32 %mul), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1790)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !1813
    #dbg_value(!DIArgList(i64 %signs.0, i64 %conv, i64 %sh_prom), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !1790)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !1813
    #dbg_value(!DIArgList(i64 %signs.0, i64 %shl), !1800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !1790)
  %or = or i64 %signs.0, %shl, !dbg !1814
    #dbg_value(i64 %or, !1800, !DIExpression(), !1790)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1815
    #dbg_value(i32 %inc, !1801, !DIExpression(), !1790)
  br label %for.cond, !dbg !1816, !llvm.loop !1817

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond1.preheader ], !dbg !1819
    #dbg_value(i32 %i.1, !1801, !DIExpression(), !1790)
  %exitcond1 = icmp ne i32 %i.1, 256, !dbg !1820
  br i1 %exitcond1, label %for.body4, label %for.cond9.preheader, !dbg !1808

for.cond9.preheader:                              ; preds = %for.cond1
  br label %for.cond9, !dbg !1822

for.body4:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.1, !dbg !1824
  store i32 0, ptr %arrayidx5, align 4, !dbg !1825
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !1826
    #dbg_value(i32 %inc7, !1801, !DIExpression(), !1790)
  br label %for.cond1, !dbg !1827, !llvm.loop !1828

for.cond9:                                        ; preds = %for.cond9.preheader, %do.end
  %i.2 = phi i32 [ %inc27, %do.end ], [ 196, %for.cond9.preheader ], !dbg !1830
  %pos.0 = phi i32 [ %inc16.lcssa, %do.end ], [ 8, %for.cond9.preheader ], !dbg !1790
  %signs.1 = phi i64 [ %shr, %do.end ], [ %signs.0.lcssa, %for.cond9.preheader ], !dbg !1790
    #dbg_value(i64 %signs.1, !1800, !DIExpression(), !1790)
    #dbg_value(i32 %pos.0, !1831, !DIExpression(), !1790)
    #dbg_value(i32 %i.2, !1801, !DIExpression(), !1790)
  %exitcond2 = icmp ne i32 %i.2, 256, !dbg !1832
  br i1 %exitcond2, label %do.body.preheader, label %for.end28, !dbg !1822

do.body.preheader:                                ; preds = %for.cond9
  br label %do.body, !dbg !1834

do.body:                                          ; preds = %do.body.preheader, %if.end
  %pos.1 = phi i32 [ %inc16, %if.end ], [ %pos.0, %do.body.preheader ], !dbg !1790
    #dbg_value(i32 %pos.1, !1831, !DIExpression(), !1790)
  %cmp13 = icmp ugt i32 %pos.1, 135, !dbg !1836
  br i1 %cmp13, label %if.then, label %if.end, !dbg !1836

if.then:                                          ; preds = %do.body
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %state) #4, !dbg !1839
    #dbg_value(i32 0, !1831, !DIExpression(), !1790)
  br label %if.end, !dbg !1841

if.end:                                           ; preds = %if.then, %do.body
  %pos.2 = phi i32 [ 0, %if.then ], [ %pos.1, %do.body ], !dbg !1790
    #dbg_value(i32 %pos.2, !1831, !DIExpression(), !1790)
  %inc16 = add nuw nsw i32 %pos.2, 1, !dbg !1842
    #dbg_value(i32 %inc16, !1831, !DIExpression(), !1790)
  %arrayidx17 = getelementptr inbounds nuw [136 x i8], ptr %buf, i32 0, i32 %pos.2, !dbg !1843
  %1 = load i8, ptr %arrayidx17, align 1, !dbg !1843
  %conv18 = zext i8 %1 to i32, !dbg !1843
    #dbg_value(i32 %conv18, !1844, !DIExpression(), !1790)
  %cmp19 = icmp samesign ult i32 %i.2, %conv18, !dbg !1845
  br i1 %cmp19, label %do.body, label %do.end, !dbg !1846, !llvm.loop !1847

do.end:                                           ; preds = %if.end
  %inc16.lcssa = phi i32 [ %inc16, %if.end ], !dbg !1842
  %conv18.lcssa = phi i32 [ %conv18, %if.end ], !dbg !1843
  %arrayidx21 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %conv18.lcssa, !dbg !1849
  %2 = load i32, ptr %arrayidx21, align 4, !dbg !1849
  %arrayidx22 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %i.2, !dbg !1850
  store i32 %2, ptr %arrayidx22, align 4, !dbg !1851
  %signs.1.tr = trunc i64 %signs.1 to i32, !dbg !1852
  %3 = shl i32 %signs.1.tr, 1, !dbg !1852
  %4 = and i32 %3, 2, !dbg !1852
  %conv24 = sub nsw i32 1, %4, !dbg !1852
  %arrayidx25 = getelementptr inbounds nuw [256 x i32], ptr %c, i32 0, i32 %conv18.lcssa, !dbg !1853
  store i32 %conv24, ptr %arrayidx25, align 4, !dbg !1854
    #dbg_value(i64 %signs.1, !1800, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !1790)
  %shr = lshr i64 %signs.1, 1, !dbg !1855
    #dbg_value(i64 %shr, !1800, !DIExpression(), !1790)
  %inc27 = add nuw nsw i32 %i.2, 1, !dbg !1856
    #dbg_value(i32 %inc27, !1801, !DIExpression(), !1790)
  br label %for.cond9, !dbg !1857, !llvm.loop !1858

for.end28:                                        ; preds = %for.cond9
  ret void, !dbg !1860
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyeta_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !1861 {
entry:
    #dbg_value(ptr %r, !1864, !DIExpression(), !1865)
    #dbg_value(ptr %a, !1866, !DIExpression(), !1865)
    #dbg_value(i32 0, !1867, !DIExpression(), !1865)
  br label %for.cond, !dbg !1868

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1870
    #dbg_value(i32 %i.0, !1867, !DIExpression(), !1865)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !1871
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1873

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !1874
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !1876
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1876
  %conv = sub i32 2, %0, !dbg !1877
    #dbg_value(!DIArgList(i8 2, i32 %0), !1878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !1865)
  %mul2 = shl nuw nsw i32 %i.0, 3, !dbg !1880
  %add3 = or disjoint i32 %mul2, 1, !dbg !1881
  %arrayidx4 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add3, !dbg !1882
  %1 = load i32, ptr %arrayidx4, align 4, !dbg !1882
    #dbg_value(!DIArgList(i8 2, i32 %1), !1878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !1865)
  %mul8 = shl nuw nsw i32 %i.0, 3, !dbg !1883
  %add9 = or disjoint i32 %mul8, 2, !dbg !1884
  %arrayidx10 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add9, !dbg !1885
  %2 = load i32, ptr %arrayidx10, align 4, !dbg !1885
  %3 = trunc i32 %2 to i8, !dbg !1886
  %conv12 = sub i8 2, %3, !dbg !1886
    #dbg_value(i8 %conv12, !1878, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !1865)
  %mul14 = shl nuw nsw i32 %i.0, 3, !dbg !1887
  %add15 = or disjoint i32 %mul14, 3, !dbg !1888
  %arrayidx16 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add15, !dbg !1889
  %4 = load i32, ptr %arrayidx16, align 4, !dbg !1889
    #dbg_value(!DIArgList(i8 2, i32 %4), !1878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 24, 8), !1865)
  %mul20 = shl nuw nsw i32 %i.0, 3, !dbg !1890
  %add21 = or disjoint i32 %mul20, 4, !dbg !1891
  %arrayidx22 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add21, !dbg !1892
  %5 = load i32, ptr %arrayidx22, align 4, !dbg !1892
    #dbg_value(!DIArgList(i8 2, i32 %5), !1878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8), !1865)
  %mul26 = shl nuw nsw i32 %i.0, 3, !dbg !1893
  %add27 = or disjoint i32 %mul26, 5, !dbg !1894
  %arrayidx28 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add27, !dbg !1895
  %6 = load i32, ptr %arrayidx28, align 4, !dbg !1895
  %7 = trunc i32 %6 to i8, !dbg !1896
  %conv30 = sub i8 2, %7, !dbg !1896
    #dbg_value(i8 %conv30, !1878, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !1865)
  %mul32 = shl nuw nsw i32 %i.0, 3, !dbg !1897
  %add33 = or disjoint i32 %mul32, 6, !dbg !1898
  %arrayidx34 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add33, !dbg !1899
  %8 = load i32, ptr %arrayidx34, align 4, !dbg !1899
    #dbg_value(!DIArgList(i8 2, i32 %8), !1878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 8), !1865)
  %mul38 = shl nuw nsw i32 %i.0, 3, !dbg !1900
  %add39 = or disjoint i32 %mul38, 7, !dbg !1901
  %arrayidx40 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add39, !dbg !1902
  %9 = load i32, ptr %arrayidx40, align 4, !dbg !1902
    #dbg_value(!DIArgList(i8 2, i32 %9), !1878, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 56, 8), !1865)
  %10 = shl i32 %1, 3, !dbg !1903
  %conv47 = sub i32 16, %10, !dbg !1903
  %or = or i32 %conv, %conv47, !dbg !1904
  %conv49 = zext i8 %conv12 to i32, !dbg !1905
  %shl50 = shl nuw nsw i32 %conv49, 6, !dbg !1906
  %or51 = or i32 %or, %shl50, !dbg !1907
  %conv52 = trunc i32 %or51 to i8, !dbg !1908
  %mul53 = mul nuw nsw i32 %i.0, 3, !dbg !1909
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %r, i32 %mul53, !dbg !1910
  store i8 %conv52, ptr %arrayidx55, align 1, !dbg !1911
  %11 = lshr i8 %conv12, 2, !dbg !1912
  %shr58 = zext nneg i8 %11 to i32, !dbg !1912
  %12 = shl i32 %4, 1, !dbg !1913
  %conv60 = sub i32 4, %12, !dbg !1913
  %shl61 = and i32 %conv60, 254, !dbg !1913
  %or62 = or i32 %shl61, %shr58, !dbg !1914
  %13 = shl i32 %5, 4, !dbg !1915
  %conv64 = sub i32 32, %13, !dbg !1915
  %or66 = or i32 %or62, %conv64, !dbg !1916
  %conv68 = zext i8 %conv30 to i32, !dbg !1917
  %shl69 = shl nuw nsw i32 %conv68, 7, !dbg !1918
  %or70 = or i32 %or66, %shl69, !dbg !1919
  %conv71 = trunc i32 %or70 to i8, !dbg !1920
  %mul72 = mul nuw nsw i32 %i.0, 3, !dbg !1921
  %14 = getelementptr inbounds nuw i8, ptr %r, i32 %mul72, !dbg !1922
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %14, i32 1, !dbg !1922
  store i8 %conv71, ptr %arrayidx74, align 1, !dbg !1923
  %15 = lshr i8 %conv30, 1, !dbg !1924
  %shr77 = zext nneg i8 %15 to i32, !dbg !1924
  %16 = shl i32 %8, 2, !dbg !1925
  %conv79 = sub i32 8, %16, !dbg !1925
  %or81 = or i32 %conv79, %shr77, !dbg !1926
  %17 = shl i32 %9, 5, !dbg !1927
  %conv83 = sub i32 64, %17, !dbg !1927
  %or85 = or i32 %or81, %conv83, !dbg !1928
  %conv86 = trunc i32 %or85 to i8, !dbg !1929
  %mul87 = mul nuw nsw i32 %i.0, 3, !dbg !1930
  %18 = getelementptr inbounds nuw i8, ptr %r, i32 %mul87, !dbg !1931
  %arrayidx89 = getelementptr inbounds nuw i8, ptr %18, i32 2, !dbg !1931
  store i8 %conv86, ptr %arrayidx89, align 1, !dbg !1932
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1933
    #dbg_value(i32 %inc, !1867, !DIExpression(), !1865)
  br label %for.cond, !dbg !1934, !llvm.loop !1935

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1937
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyeta_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !1938 {
entry:
    #dbg_value(ptr %r, !1939, !DIExpression(), !1940)
    #dbg_value(ptr %a, !1941, !DIExpression(), !1940)
    #dbg_value(i32 0, !1942, !DIExpression(), !1940)
  br label %for.cond, !dbg !1943

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1945
    #dbg_value(i32 %i.0, !1942, !DIExpression(), !1940)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !1946
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1948

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 3, !dbg !1949
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %mul, !dbg !1951
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1951
  %1 = and i8 %0, 7, !dbg !1952
  %and = zext nneg i8 %1 to i32, !dbg !1952
  %mul1 = shl nuw nsw i32 %i.0, 3, !dbg !1953
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul1, !dbg !1954
  store i32 %and, ptr %arrayidx3, align 4, !dbg !1955
  %mul4 = mul nuw nsw i32 %i.0, 3, !dbg !1956
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %a, i32 %mul4, !dbg !1957
  %2 = load i8, ptr %arrayidx6, align 1, !dbg !1957
  %3 = lshr i8 %2, 3, !dbg !1958
  %4 = and i8 %3, 7, !dbg !1959
  %and9 = zext nneg i8 %4 to i32, !dbg !1959
  %mul10 = shl nuw nsw i32 %i.0, 3, !dbg !1960
  %add11 = or disjoint i32 %mul10, 1, !dbg !1961
  %arrayidx12 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add11, !dbg !1962
  store i32 %and9, ptr %arrayidx12, align 4, !dbg !1963
  %mul13 = mul nuw nsw i32 %i.0, 3, !dbg !1964
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %a, i32 %mul13, !dbg !1965
  %5 = load i8, ptr %arrayidx15, align 1, !dbg !1965
  %6 = lshr i8 %5, 6, !dbg !1966
  %shr17 = zext nneg i8 %6 to i32, !dbg !1966
  %mul18 = mul nuw nsw i32 %i.0, 3, !dbg !1967
  %7 = getelementptr inbounds nuw i8, ptr %a, i32 %mul18, !dbg !1968
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %7, i32 1, !dbg !1968
  %8 = load i8, ptr %arrayidx20, align 1, !dbg !1968
  %conv21 = zext i8 %8 to i32, !dbg !1968
  %shl = shl nuw nsw i32 %conv21, 2, !dbg !1969
  %shl.masked = and i32 %shl, 4, !dbg !1970
  %and22 = or disjoint i32 %shl.masked, %shr17, !dbg !1970
  %mul23 = shl nuw nsw i32 %i.0, 3, !dbg !1971
  %add24 = or disjoint i32 %mul23, 2, !dbg !1972
  %arrayidx25 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add24, !dbg !1973
  store i32 %and22, ptr %arrayidx25, align 4, !dbg !1974
  %mul26 = mul nuw nsw i32 %i.0, 3, !dbg !1975
  %9 = getelementptr inbounds nuw i8, ptr %a, i32 %mul26, !dbg !1976
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %9, i32 1, !dbg !1976
  %10 = load i8, ptr %arrayidx28, align 1, !dbg !1976
  %11 = lshr i8 %10, 1, !dbg !1977
  %12 = and i8 %11, 7, !dbg !1978
  %and31 = zext nneg i8 %12 to i32, !dbg !1978
  %mul32 = shl nuw nsw i32 %i.0, 3, !dbg !1979
  %add33 = or disjoint i32 %mul32, 3, !dbg !1980
  %arrayidx34 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add33, !dbg !1981
  store i32 %and31, ptr %arrayidx34, align 4, !dbg !1982
  %mul35 = mul nuw nsw i32 %i.0, 3, !dbg !1983
  %13 = getelementptr inbounds nuw i8, ptr %a, i32 %mul35, !dbg !1984
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %13, i32 1, !dbg !1984
  %14 = load i8, ptr %arrayidx37, align 1, !dbg !1984
  %15 = lshr i8 %14, 4, !dbg !1985
  %16 = and i8 %15, 7, !dbg !1986
  %and40 = zext nneg i8 %16 to i32, !dbg !1986
  %mul41 = shl nuw nsw i32 %i.0, 3, !dbg !1987
  %add42 = or disjoint i32 %mul41, 4, !dbg !1988
  %arrayidx43 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add42, !dbg !1989
  store i32 %and40, ptr %arrayidx43, align 4, !dbg !1990
  %mul44 = mul nuw nsw i32 %i.0, 3, !dbg !1991
  %17 = getelementptr inbounds nuw i8, ptr %a, i32 %mul44, !dbg !1992
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %17, i32 1, !dbg !1992
  %18 = load i8, ptr %arrayidx46, align 1, !dbg !1992
  %19 = lshr i8 %18, 7, !dbg !1993
  %shr48 = zext nneg i8 %19 to i32, !dbg !1993
  %mul49 = mul nuw nsw i32 %i.0, 3, !dbg !1994
  %20 = getelementptr inbounds nuw i8, ptr %a, i32 %mul49, !dbg !1995
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %20, i32 2, !dbg !1995
  %21 = load i8, ptr %arrayidx51, align 1, !dbg !1995
  %conv52 = zext i8 %21 to i32, !dbg !1995
  %shl53 = shl nuw nsw i32 %conv52, 1, !dbg !1996
  %shl53.masked = and i32 %shl53, 6, !dbg !1997
  %and55 = or disjoint i32 %shl53.masked, %shr48, !dbg !1997
  %mul56 = shl nuw nsw i32 %i.0, 3, !dbg !1998
  %add57 = or disjoint i32 %mul56, 5, !dbg !1999
  %arrayidx58 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add57, !dbg !2000
  store i32 %and55, ptr %arrayidx58, align 4, !dbg !2001
  %mul59 = mul nuw nsw i32 %i.0, 3, !dbg !2002
  %22 = getelementptr inbounds nuw i8, ptr %a, i32 %mul59, !dbg !2003
  %arrayidx61 = getelementptr inbounds nuw i8, ptr %22, i32 2, !dbg !2003
  %23 = load i8, ptr %arrayidx61, align 1, !dbg !2003
  %24 = lshr i8 %23, 2, !dbg !2004
  %25 = and i8 %24, 7, !dbg !2005
  %and64 = zext nneg i8 %25 to i32, !dbg !2005
  %mul65 = shl nuw nsw i32 %i.0, 3, !dbg !2006
  %add66 = or disjoint i32 %mul65, 6, !dbg !2007
  %arrayidx67 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add66, !dbg !2008
  store i32 %and64, ptr %arrayidx67, align 4, !dbg !2009
  %mul68 = mul nuw nsw i32 %i.0, 3, !dbg !2010
  %26 = getelementptr inbounds nuw i8, ptr %a, i32 %mul68, !dbg !2011
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %26, i32 2, !dbg !2011
  %27 = load i8, ptr %arrayidx70, align 1, !dbg !2011
  %28 = lshr i8 %27, 5, !dbg !2012
  %shr72 = zext nneg i8 %28 to i32, !dbg !2012
  %mul74 = shl nuw nsw i32 %i.0, 3, !dbg !2013
  %add75 = or disjoint i32 %mul74, 7, !dbg !2014
  %arrayidx76 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add75, !dbg !2015
  store i32 %shr72, ptr %arrayidx76, align 4, !dbg !2016
  %mul77 = shl nuw nsw i32 %i.0, 3, !dbg !2017
  %arrayidx79 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul77, !dbg !2018
  %29 = load i32, ptr %arrayidx79, align 4, !dbg !2018
  %sub = sub nsw i32 2, %29, !dbg !2019
  %mul80 = shl nuw nsw i32 %i.0, 3, !dbg !2020
  %arrayidx82 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul80, !dbg !2021
  store i32 %sub, ptr %arrayidx82, align 4, !dbg !2022
  %mul83 = shl nuw nsw i32 %i.0, 3, !dbg !2023
  %add84 = or disjoint i32 %mul83, 1, !dbg !2024
  %arrayidx85 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add84, !dbg !2025
  %30 = load i32, ptr %arrayidx85, align 4, !dbg !2025
  %sub86 = sub nsw i32 2, %30, !dbg !2026
  %mul87 = shl nuw nsw i32 %i.0, 3, !dbg !2027
  %add88 = or disjoint i32 %mul87, 1, !dbg !2028
  %arrayidx89 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add88, !dbg !2029
  store i32 %sub86, ptr %arrayidx89, align 4, !dbg !2030
  %mul90 = shl nuw nsw i32 %i.0, 3, !dbg !2031
  %add91 = or disjoint i32 %mul90, 2, !dbg !2032
  %arrayidx92 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add91, !dbg !2033
  %31 = load i32, ptr %arrayidx92, align 4, !dbg !2033
  %sub93 = sub nsw i32 2, %31, !dbg !2034
  %mul94 = shl nuw nsw i32 %i.0, 3, !dbg !2035
  %add95 = or disjoint i32 %mul94, 2, !dbg !2036
  %arrayidx96 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add95, !dbg !2037
  store i32 %sub93, ptr %arrayidx96, align 4, !dbg !2038
  %mul97 = shl nuw nsw i32 %i.0, 3, !dbg !2039
  %add98 = or disjoint i32 %mul97, 3, !dbg !2040
  %arrayidx99 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add98, !dbg !2041
  %32 = load i32, ptr %arrayidx99, align 4, !dbg !2041
  %sub100 = sub nsw i32 2, %32, !dbg !2042
  %mul101 = shl nuw nsw i32 %i.0, 3, !dbg !2043
  %add102 = or disjoint i32 %mul101, 3, !dbg !2044
  %arrayidx103 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add102, !dbg !2045
  store i32 %sub100, ptr %arrayidx103, align 4, !dbg !2046
  %mul104 = shl nuw nsw i32 %i.0, 3, !dbg !2047
  %add105 = or disjoint i32 %mul104, 4, !dbg !2048
  %arrayidx106 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add105, !dbg !2049
  %33 = load i32, ptr %arrayidx106, align 4, !dbg !2049
  %sub107 = sub nsw i32 2, %33, !dbg !2050
  %mul108 = shl nuw nsw i32 %i.0, 3, !dbg !2051
  %add109 = or disjoint i32 %mul108, 4, !dbg !2052
  %arrayidx110 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add109, !dbg !2053
  store i32 %sub107, ptr %arrayidx110, align 4, !dbg !2054
  %mul111 = shl nuw nsw i32 %i.0, 3, !dbg !2055
  %add112 = or disjoint i32 %mul111, 5, !dbg !2056
  %arrayidx113 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add112, !dbg !2057
  %34 = load i32, ptr %arrayidx113, align 4, !dbg !2057
  %sub114 = sub nsw i32 2, %34, !dbg !2058
  %mul115 = shl nuw nsw i32 %i.0, 3, !dbg !2059
  %add116 = or disjoint i32 %mul115, 5, !dbg !2060
  %arrayidx117 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add116, !dbg !2061
  store i32 %sub114, ptr %arrayidx117, align 4, !dbg !2062
  %mul118 = shl nuw nsw i32 %i.0, 3, !dbg !2063
  %add119 = or disjoint i32 %mul118, 6, !dbg !2064
  %arrayidx120 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add119, !dbg !2065
  %35 = load i32, ptr %arrayidx120, align 4, !dbg !2065
  %sub121 = sub nsw i32 2, %35, !dbg !2066
  %mul122 = shl nuw nsw i32 %i.0, 3, !dbg !2067
  %add123 = or disjoint i32 %mul122, 6, !dbg !2068
  %arrayidx124 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add123, !dbg !2069
  store i32 %sub121, ptr %arrayidx124, align 4, !dbg !2070
  %mul125 = shl nuw nsw i32 %i.0, 3, !dbg !2071
  %add126 = or disjoint i32 %mul125, 7, !dbg !2072
  %arrayidx127 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add126, !dbg !2073
  %36 = load i32, ptr %arrayidx127, align 4, !dbg !2073
  %sub128 = sub nsw i32 2, %36, !dbg !2074
  %mul129 = shl nuw nsw i32 %i.0, 3, !dbg !2075
  %add130 = or disjoint i32 %mul129, 7, !dbg !2076
  %arrayidx131 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add130, !dbg !2077
  store i32 %sub128, ptr %arrayidx131, align 4, !dbg !2078
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2079
    #dbg_value(i32 %inc, !1942, !DIExpression(), !1940)
  br label %for.cond, !dbg !2080, !llvm.loop !2081

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2083
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyt1_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2084 {
entry:
    #dbg_value(ptr %r, !2085, !DIExpression(), !2086)
    #dbg_value(ptr %a, !2087, !DIExpression(), !2086)
    #dbg_value(i32 0, !2088, !DIExpression(), !2086)
  br label %for.cond, !dbg !2089

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2091
    #dbg_value(i32 %i.0, !2088, !DIExpression(), !2086)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !2092
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2094

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 2, !dbg !2095
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !2097
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2097
  %conv = trunc i32 %0 to i8, !dbg !2098
  %mul1 = mul nuw nsw i32 %i.0, 5, !dbg !2099
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %r, i32 %mul1, !dbg !2100
  store i8 %conv, ptr %arrayidx3, align 1, !dbg !2101
  %mul4 = shl nuw nsw i32 %i.0, 2, !dbg !2102
  %arrayidx6 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul4, !dbg !2103
  %1 = load i32, ptr %arrayidx6, align 4, !dbg !2103
  %shr7 = lshr i32 %1, 8, !dbg !2104
  %mul8 = shl nuw nsw i32 %i.0, 2, !dbg !2105
  %add9 = or disjoint i32 %mul8, 1, !dbg !2106
  %arrayidx10 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add9, !dbg !2107
  %2 = load i32, ptr %arrayidx10, align 4, !dbg !2107
  %shl = shl i32 %2, 2, !dbg !2108
  %or = or i32 %shr7, %shl, !dbg !2109
  %conv11 = trunc i32 %or to i8, !dbg !2110
  %mul12 = mul nuw nsw i32 %i.0, 5, !dbg !2111
  %3 = getelementptr inbounds nuw i8, ptr %r, i32 %mul12, !dbg !2112
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %3, i32 1, !dbg !2112
  store i8 %conv11, ptr %arrayidx14, align 1, !dbg !2113
  %mul15 = shl nuw nsw i32 %i.0, 2, !dbg !2114
  %add16 = or disjoint i32 %mul15, 1, !dbg !2115
  %arrayidx17 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add16, !dbg !2116
  %4 = load i32, ptr %arrayidx17, align 4, !dbg !2116
  %shr18 = lshr i32 %4, 6, !dbg !2117
  %mul19 = shl nuw nsw i32 %i.0, 2, !dbg !2118
  %add20 = or disjoint i32 %mul19, 2, !dbg !2119
  %arrayidx21 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add20, !dbg !2120
  %5 = load i32, ptr %arrayidx21, align 4, !dbg !2120
  %shl22 = shl i32 %5, 4, !dbg !2121
  %or23 = or i32 %shr18, %shl22, !dbg !2122
  %conv24 = trunc i32 %or23 to i8, !dbg !2123
  %mul25 = mul nuw nsw i32 %i.0, 5, !dbg !2124
  %6 = getelementptr inbounds nuw i8, ptr %r, i32 %mul25, !dbg !2125
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %6, i32 2, !dbg !2125
  store i8 %conv24, ptr %arrayidx27, align 1, !dbg !2126
  %mul28 = shl nuw nsw i32 %i.0, 2, !dbg !2127
  %add29 = or disjoint i32 %mul28, 2, !dbg !2128
  %arrayidx30 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add29, !dbg !2129
  %7 = load i32, ptr %arrayidx30, align 4, !dbg !2129
  %shr31 = lshr i32 %7, 4, !dbg !2130
  %mul32 = shl nuw nsw i32 %i.0, 2, !dbg !2131
  %add33 = or disjoint i32 %mul32, 3, !dbg !2132
  %arrayidx34 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add33, !dbg !2133
  %8 = load i32, ptr %arrayidx34, align 4, !dbg !2133
  %shl35 = shl i32 %8, 6, !dbg !2134
  %or36 = or i32 %shr31, %shl35, !dbg !2135
  %conv37 = trunc i32 %or36 to i8, !dbg !2136
  %mul38 = mul nuw nsw i32 %i.0, 5, !dbg !2137
  %9 = getelementptr inbounds nuw i8, ptr %r, i32 %mul38, !dbg !2138
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %9, i32 3, !dbg !2138
  store i8 %conv37, ptr %arrayidx40, align 1, !dbg !2139
  %mul41 = shl nuw nsw i32 %i.0, 2, !dbg !2140
  %add42 = or disjoint i32 %mul41, 3, !dbg !2141
  %arrayidx43 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add42, !dbg !2142
  %10 = load i32, ptr %arrayidx43, align 4, !dbg !2142
  %shr44 = lshr i32 %10, 2, !dbg !2143
  %conv45 = trunc i32 %shr44 to i8, !dbg !2144
  %mul46 = mul nuw nsw i32 %i.0, 5, !dbg !2145
  %11 = getelementptr inbounds nuw i8, ptr %r, i32 %mul46, !dbg !2146
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %11, i32 4, !dbg !2146
  store i8 %conv45, ptr %arrayidx48, align 1, !dbg !2147
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2148
    #dbg_value(i32 %inc, !2088, !DIExpression(), !2086)
  br label %for.cond, !dbg !2149, !llvm.loop !2150

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2152
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyt1_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2153 {
entry:
    #dbg_value(ptr %r, !2154, !DIExpression(), !2155)
    #dbg_value(ptr %a, !2156, !DIExpression(), !2155)
    #dbg_value(i32 0, !2157, !DIExpression(), !2155)
  br label %for.cond, !dbg !2158

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2160
    #dbg_value(i32 %i.0, !2157, !DIExpression(), !2155)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !2161
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2163

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 5, !dbg !2164
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %mul, !dbg !2166
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2166
  %conv = zext i8 %0 to i32, !dbg !2166
  %mul1 = mul nuw nsw i32 %i.0, 5, !dbg !2167
  %1 = getelementptr inbounds nuw i8, ptr %a, i32 %mul1, !dbg !2168
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %1, i32 1, !dbg !2168
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !2168
  %conv4 = zext i8 %2 to i32, !dbg !2169
  %shl = shl nuw nsw i32 %conv4, 8, !dbg !2170
  %shl.masked = and i32 %shl, 768, !dbg !2171
  %and = or disjoint i32 %shl.masked, %conv, !dbg !2171
  %mul5 = shl nuw nsw i32 %i.0, 2, !dbg !2172
  %arrayidx7 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul5, !dbg !2173
  store i32 %and, ptr %arrayidx7, align 4, !dbg !2174
  %mul8 = mul nuw nsw i32 %i.0, 5, !dbg !2175
  %3 = getelementptr inbounds nuw i8, ptr %a, i32 %mul8, !dbg !2176
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %3, i32 1, !dbg !2176
  %4 = load i8, ptr %arrayidx10, align 1, !dbg !2176
  %5 = lshr i8 %4, 2, !dbg !2177
  %shr12 = zext nneg i8 %5 to i32, !dbg !2177
  %mul13 = mul nuw nsw i32 %i.0, 5, !dbg !2178
  %6 = getelementptr inbounds nuw i8, ptr %a, i32 %mul13, !dbg !2179
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %6, i32 2, !dbg !2179
  %7 = load i8, ptr %arrayidx15, align 1, !dbg !2179
  %conv16 = zext i8 %7 to i32, !dbg !2180
  %shl17 = shl nuw nsw i32 %conv16, 6, !dbg !2181
  %shl17.masked = and i32 %shl17, 960, !dbg !2182
  %and19 = or disjoint i32 %shl17.masked, %shr12, !dbg !2182
  %mul20 = shl nuw nsw i32 %i.0, 2, !dbg !2183
  %add21 = or disjoint i32 %mul20, 1, !dbg !2184
  %arrayidx22 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add21, !dbg !2185
  store i32 %and19, ptr %arrayidx22, align 4, !dbg !2186
  %mul23 = mul nuw nsw i32 %i.0, 5, !dbg !2187
  %8 = getelementptr inbounds nuw i8, ptr %a, i32 %mul23, !dbg !2188
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %8, i32 2, !dbg !2188
  %9 = load i8, ptr %arrayidx25, align 1, !dbg !2188
  %10 = lshr i8 %9, 4, !dbg !2189
  %shr27 = zext nneg i8 %10 to i32, !dbg !2189
  %mul28 = mul nuw nsw i32 %i.0, 5, !dbg !2190
  %11 = getelementptr inbounds nuw i8, ptr %a, i32 %mul28, !dbg !2191
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %11, i32 3, !dbg !2191
  %12 = load i8, ptr %arrayidx30, align 1, !dbg !2191
  %conv31 = zext i8 %12 to i32, !dbg !2192
  %shl32 = shl nuw nsw i32 %conv31, 4, !dbg !2193
  %shl32.masked = and i32 %shl32, 1008, !dbg !2194
  %and34 = or disjoint i32 %shl32.masked, %shr27, !dbg !2194
  %mul35 = shl nuw nsw i32 %i.0, 2, !dbg !2195
  %add36 = or disjoint i32 %mul35, 2, !dbg !2196
  %arrayidx37 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add36, !dbg !2197
  store i32 %and34, ptr %arrayidx37, align 4, !dbg !2198
  %mul38 = mul nuw nsw i32 %i.0, 5, !dbg !2199
  %13 = getelementptr inbounds nuw i8, ptr %a, i32 %mul38, !dbg !2200
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %13, i32 3, !dbg !2200
  %14 = load i8, ptr %arrayidx40, align 1, !dbg !2200
  %15 = lshr i8 %14, 6, !dbg !2201
  %shr42 = zext nneg i8 %15 to i32, !dbg !2201
  %mul43 = mul nuw nsw i32 %i.0, 5, !dbg !2202
  %16 = getelementptr inbounds nuw i8, ptr %a, i32 %mul43, !dbg !2203
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %16, i32 4, !dbg !2203
  %17 = load i8, ptr %arrayidx45, align 1, !dbg !2203
  %conv46 = zext i8 %17 to i32, !dbg !2204
  %shl47 = shl nuw nsw i32 %conv46, 2, !dbg !2205
  %or48 = or disjoint i32 %shl47, %shr42, !dbg !2206
  %mul50 = shl nuw nsw i32 %i.0, 2, !dbg !2207
  %add51 = or disjoint i32 %mul50, 3, !dbg !2208
  %arrayidx52 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add51, !dbg !2209
  store i32 %or48, ptr %arrayidx52, align 4, !dbg !2210
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2211
    #dbg_value(i32 %inc, !2157, !DIExpression(), !2155)
  br label %for.cond, !dbg !2212, !llvm.loop !2213

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2215
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyt0_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2216 {
entry:
    #dbg_value(ptr %r, !2217, !DIExpression(), !2218)
    #dbg_value(ptr %a, !2219, !DIExpression(), !2218)
    #dbg_value(i32 0, !2220, !DIExpression(), !2218)
  br label %for.cond, !dbg !2221

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2223
    #dbg_value(i32 %i.0, !2220, !DIExpression(), !2218)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !2224
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2226

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !2227
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !2229
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2229
  %sub = sub nsw i32 4096, %0, !dbg !2230
    #dbg_value(i32 %sub, !2231, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2218)
  %mul2 = shl nuw nsw i32 %i.0, 3, !dbg !2233
  %add3 = or disjoint i32 %mul2, 1, !dbg !2234
  %arrayidx4 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add3, !dbg !2235
  %1 = load i32, ptr %arrayidx4, align 4, !dbg !2235
  %sub5 = sub nsw i32 4096, %1, !dbg !2236
    #dbg_value(i32 %sub5, !2231, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2218)
  %mul7 = shl nuw nsw i32 %i.0, 3, !dbg !2237
  %add8 = or disjoint i32 %mul7, 2, !dbg !2238
  %arrayidx9 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add8, !dbg !2239
  %2 = load i32, ptr %arrayidx9, align 4, !dbg !2239
  %sub10 = sub nsw i32 4096, %2, !dbg !2240
    #dbg_value(i32 %sub10, !2231, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2218)
  %mul12 = shl nuw nsw i32 %i.0, 3, !dbg !2241
  %add13 = or disjoint i32 %mul12, 3, !dbg !2242
  %arrayidx14 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add13, !dbg !2243
  %3 = load i32, ptr %arrayidx14, align 4, !dbg !2243
  %sub15 = sub nsw i32 4096, %3, !dbg !2244
    #dbg_value(i32 %sub15, !2231, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !2218)
  %mul17 = shl nuw nsw i32 %i.0, 3, !dbg !2245
  %add18 = or disjoint i32 %mul17, 4, !dbg !2246
  %arrayidx19 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add18, !dbg !2247
  %4 = load i32, ptr %arrayidx19, align 4, !dbg !2247
  %sub20 = sub nsw i32 4096, %4, !dbg !2248
    #dbg_value(i32 %sub20, !2231, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !2218)
  %mul22 = shl nuw nsw i32 %i.0, 3, !dbg !2249
  %add23 = or disjoint i32 %mul22, 5, !dbg !2250
  %arrayidx24 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add23, !dbg !2251
  %5 = load i32, ptr %arrayidx24, align 4, !dbg !2251
  %sub25 = sub nsw i32 4096, %5, !dbg !2252
    #dbg_value(i32 %sub25, !2231, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !2218)
  %mul27 = shl nuw nsw i32 %i.0, 3, !dbg !2253
  %add28 = or disjoint i32 %mul27, 6, !dbg !2254
  %arrayidx29 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add28, !dbg !2255
  %6 = load i32, ptr %arrayidx29, align 4, !dbg !2255
  %sub30 = sub nsw i32 4096, %6, !dbg !2256
    #dbg_value(i32 %sub30, !2231, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !2218)
  %mul32 = shl nuw nsw i32 %i.0, 3, !dbg !2257
  %add33 = or disjoint i32 %mul32, 7, !dbg !2258
  %arrayidx34 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add33, !dbg !2259
  %7 = load i32, ptr %arrayidx34, align 4, !dbg !2259
  %sub35 = sub nsw i32 4096, %7, !dbg !2260
    #dbg_value(i32 %sub35, !2231, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !2218)
  %conv = trunc i32 %sub to i8, !dbg !2261
  %mul38 = mul nuw nsw i32 %i.0, 13, !dbg !2262
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %r, i32 %mul38, !dbg !2263
  store i8 %conv, ptr %arrayidx40, align 1, !dbg !2264
  %shr = lshr i32 %sub, 8, !dbg !2265
  %conv42 = trunc i32 %shr to i8, !dbg !2266
  %mul43 = mul nuw nsw i32 %i.0, 13, !dbg !2267
  %8 = getelementptr inbounds nuw i8, ptr %r, i32 %mul43, !dbg !2268
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %8, i32 1, !dbg !2268
  store i8 %conv42, ptr %arrayidx45, align 1, !dbg !2269
  %mul47 = mul nuw nsw i32 %i.0, 13, !dbg !2270
  %9 = getelementptr inbounds nuw i8, ptr %r, i32 %mul47, !dbg !2271
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %9, i32 1, !dbg !2271
  %10 = load i8, ptr %arrayidx49, align 1, !dbg !2272
  %sub5.tr = trunc i32 %sub5 to i8, !dbg !2272
  %11 = shl i8 %sub5.tr, 5, !dbg !2272
  %conv51 = or i8 %11, %10, !dbg !2272
  store i8 %conv51, ptr %arrayidx49, align 1, !dbg !2272
  %shr53 = lshr i32 %sub5, 3, !dbg !2273
  %conv54 = trunc i32 %shr53 to i8, !dbg !2274
  %mul55 = mul nuw nsw i32 %i.0, 13, !dbg !2275
  %12 = getelementptr inbounds nuw i8, ptr %r, i32 %mul55, !dbg !2276
  %arrayidx57 = getelementptr inbounds nuw i8, ptr %12, i32 2, !dbg !2276
  store i8 %conv54, ptr %arrayidx57, align 1, !dbg !2277
  %shr59 = lshr i32 %sub5, 11, !dbg !2278
  %conv60 = trunc i32 %shr59 to i8, !dbg !2279
  %mul61 = mul nuw nsw i32 %i.0, 13, !dbg !2280
  %13 = getelementptr inbounds nuw i8, ptr %r, i32 %mul61, !dbg !2281
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %13, i32 3, !dbg !2281
  store i8 %conv60, ptr %arrayidx63, align 1, !dbg !2282
  %mul66 = mul nuw nsw i32 %i.0, 13, !dbg !2283
  %14 = getelementptr inbounds nuw i8, ptr %r, i32 %mul66, !dbg !2284
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %14, i32 3, !dbg !2284
  %15 = load i8, ptr %arrayidx68, align 1, !dbg !2285
  %sub10.tr = trunc i32 %sub10 to i8, !dbg !2285
  %16 = shl i8 %sub10.tr, 2, !dbg !2285
  %conv71 = or i8 %16, %15, !dbg !2285
  store i8 %conv71, ptr %arrayidx68, align 1, !dbg !2285
  %shr73 = lshr i32 %sub10, 6, !dbg !2286
  %conv74 = trunc i32 %shr73 to i8, !dbg !2287
  %mul75 = mul nuw nsw i32 %i.0, 13, !dbg !2288
  %17 = getelementptr inbounds nuw i8, ptr %r, i32 %mul75, !dbg !2289
  %arrayidx77 = getelementptr inbounds nuw i8, ptr %17, i32 4, !dbg !2289
  store i8 %conv74, ptr %arrayidx77, align 1, !dbg !2290
  %mul80 = mul nuw nsw i32 %i.0, 13, !dbg !2291
  %18 = getelementptr inbounds nuw i8, ptr %r, i32 %mul80, !dbg !2292
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %18, i32 4, !dbg !2292
  %19 = load i8, ptr %arrayidx82, align 1, !dbg !2293
  %sub15.tr = trunc i32 %sub15 to i8, !dbg !2293
  %20 = shl i8 %sub15.tr, 7, !dbg !2293
  %conv85 = or i8 %20, %19, !dbg !2293
  store i8 %conv85, ptr %arrayidx82, align 1, !dbg !2293
  %shr87 = lshr i32 %sub15, 1, !dbg !2294
  %conv88 = trunc i32 %shr87 to i8, !dbg !2295
  %mul89 = mul nuw nsw i32 %i.0, 13, !dbg !2296
  %21 = getelementptr inbounds nuw i8, ptr %r, i32 %mul89, !dbg !2297
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %21, i32 5, !dbg !2297
  store i8 %conv88, ptr %arrayidx91, align 1, !dbg !2298
  %shr93 = lshr i32 %sub15, 9, !dbg !2299
  %conv94 = trunc i32 %shr93 to i8, !dbg !2300
  %mul95 = mul nuw nsw i32 %i.0, 13, !dbg !2301
  %22 = getelementptr inbounds nuw i8, ptr %r, i32 %mul95, !dbg !2302
  %arrayidx97 = getelementptr inbounds nuw i8, ptr %22, i32 6, !dbg !2302
  store i8 %conv94, ptr %arrayidx97, align 1, !dbg !2303
  %mul100 = mul nuw nsw i32 %i.0, 13, !dbg !2304
  %23 = getelementptr inbounds nuw i8, ptr %r, i32 %mul100, !dbg !2305
  %arrayidx102 = getelementptr inbounds nuw i8, ptr %23, i32 6, !dbg !2305
  %24 = load i8, ptr %arrayidx102, align 1, !dbg !2306
  %sub20.tr = trunc i32 %sub20 to i8, !dbg !2306
  %25 = shl i8 %sub20.tr, 4, !dbg !2306
  %conv105 = or i8 %25, %24, !dbg !2306
  store i8 %conv105, ptr %arrayidx102, align 1, !dbg !2306
  %shr107 = lshr i32 %sub20, 4, !dbg !2307
  %conv108 = trunc i32 %shr107 to i8, !dbg !2308
  %mul109 = mul nuw nsw i32 %i.0, 13, !dbg !2309
  %26 = getelementptr inbounds nuw i8, ptr %r, i32 %mul109, !dbg !2310
  %arrayidx111 = getelementptr inbounds nuw i8, ptr %26, i32 7, !dbg !2310
  store i8 %conv108, ptr %arrayidx111, align 1, !dbg !2311
  %shr113 = lshr i32 %sub20, 12, !dbg !2312
  %conv114 = trunc i32 %shr113 to i8, !dbg !2313
  %mul115 = mul nuw nsw i32 %i.0, 13, !dbg !2314
  %27 = getelementptr inbounds nuw i8, ptr %r, i32 %mul115, !dbg !2315
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %27, i32 8, !dbg !2315
  store i8 %conv114, ptr %arrayidx117, align 1, !dbg !2316
  %mul120 = mul nuw nsw i32 %i.0, 13, !dbg !2317
  %28 = getelementptr inbounds nuw i8, ptr %r, i32 %mul120, !dbg !2318
  %arrayidx122 = getelementptr inbounds nuw i8, ptr %28, i32 8, !dbg !2318
  %29 = load i8, ptr %arrayidx122, align 1, !dbg !2319
  %sub25.tr = trunc i32 %sub25 to i8, !dbg !2319
  %30 = shl i8 %sub25.tr, 1, !dbg !2319
  %conv125 = or i8 %30, %29, !dbg !2319
  store i8 %conv125, ptr %arrayidx122, align 1, !dbg !2319
  %shr127 = lshr i32 %sub25, 7, !dbg !2320
  %conv128 = trunc i32 %shr127 to i8, !dbg !2321
  %mul129 = mul nuw nsw i32 %i.0, 13, !dbg !2322
  %31 = getelementptr inbounds nuw i8, ptr %r, i32 %mul129, !dbg !2323
  %arrayidx131 = getelementptr inbounds nuw i8, ptr %31, i32 9, !dbg !2323
  store i8 %conv128, ptr %arrayidx131, align 1, !dbg !2324
  %mul134 = mul nuw nsw i32 %i.0, 13, !dbg !2325
  %32 = getelementptr inbounds nuw i8, ptr %r, i32 %mul134, !dbg !2326
  %arrayidx136 = getelementptr inbounds nuw i8, ptr %32, i32 9, !dbg !2326
  %33 = load i8, ptr %arrayidx136, align 1, !dbg !2327
  %sub30.tr = trunc i32 %sub30 to i8, !dbg !2327
  %34 = shl i8 %sub30.tr, 6, !dbg !2327
  %conv139 = or i8 %34, %33, !dbg !2327
  store i8 %conv139, ptr %arrayidx136, align 1, !dbg !2327
  %shr141 = lshr i32 %sub30, 2, !dbg !2328
  %conv142 = trunc i32 %shr141 to i8, !dbg !2329
  %mul143 = mul nuw nsw i32 %i.0, 13, !dbg !2330
  %35 = getelementptr inbounds nuw i8, ptr %r, i32 %mul143, !dbg !2331
  %arrayidx145 = getelementptr inbounds nuw i8, ptr %35, i32 10, !dbg !2331
  store i8 %conv142, ptr %arrayidx145, align 1, !dbg !2332
  %shr147 = lshr i32 %sub30, 10, !dbg !2333
  %conv148 = trunc i32 %shr147 to i8, !dbg !2334
  %mul149 = mul nuw nsw i32 %i.0, 13, !dbg !2335
  %36 = getelementptr inbounds nuw i8, ptr %r, i32 %mul149, !dbg !2336
  %arrayidx151 = getelementptr inbounds nuw i8, ptr %36, i32 11, !dbg !2336
  store i8 %conv148, ptr %arrayidx151, align 1, !dbg !2337
  %mul154 = mul nuw nsw i32 %i.0, 13, !dbg !2338
  %37 = getelementptr inbounds nuw i8, ptr %r, i32 %mul154, !dbg !2339
  %arrayidx156 = getelementptr inbounds nuw i8, ptr %37, i32 11, !dbg !2339
  %38 = load i8, ptr %arrayidx156, align 1, !dbg !2340
  %sub35.tr = trunc i32 %sub35 to i8, !dbg !2340
  %39 = shl i8 %sub35.tr, 3, !dbg !2340
  %conv159 = or i8 %39, %38, !dbg !2340
  store i8 %conv159, ptr %arrayidx156, align 1, !dbg !2340
  %shr161 = lshr i32 %sub35, 5, !dbg !2341
  %conv162 = trunc i32 %shr161 to i8, !dbg !2342
  %mul163 = mul nuw nsw i32 %i.0, 13, !dbg !2343
  %40 = getelementptr inbounds nuw i8, ptr %r, i32 %mul163, !dbg !2344
  %arrayidx165 = getelementptr inbounds nuw i8, ptr %40, i32 12, !dbg !2344
  store i8 %conv162, ptr %arrayidx165, align 1, !dbg !2345
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2346
    #dbg_value(i32 %inc, !2220, !DIExpression(), !2218)
  br label %for.cond, !dbg !2347, !llvm.loop !2348

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2350
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyt0_unpack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2351 {
entry:
    #dbg_value(ptr %r, !2352, !DIExpression(), !2353)
    #dbg_value(ptr %a, !2354, !DIExpression(), !2353)
    #dbg_value(i32 0, !2355, !DIExpression(), !2353)
  br label %for.cond, !dbg !2356

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2358
    #dbg_value(i32 %i.0, !2355, !DIExpression(), !2353)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !2359
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2361

for.body:                                         ; preds = %for.cond
  %mul = mul nuw nsw i32 %i.0, 13, !dbg !2362
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %mul, !dbg !2364
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2364
  %conv = zext i8 %0 to i32, !dbg !2364
  %mul1 = shl nuw nsw i32 %i.0, 3, !dbg !2365
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul1, !dbg !2366
  store i32 %conv, ptr %arrayidx3, align 4, !dbg !2367
  %mul4 = mul nuw nsw i32 %i.0, 13, !dbg !2368
  %1 = getelementptr inbounds nuw i8, ptr %a, i32 %mul4, !dbg !2369
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %1, i32 1, !dbg !2369
  %2 = load i8, ptr %arrayidx6, align 1, !dbg !2369
  %conv7 = zext i8 %2 to i32, !dbg !2370
  %shl = shl nuw nsw i32 %conv7, 8, !dbg !2371
  %mul8 = shl nuw nsw i32 %i.0, 3, !dbg !2372
  %arrayidx10 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul8, !dbg !2373
  %3 = load i32, ptr %arrayidx10, align 4, !dbg !2374
  %or = or i32 %3, %shl, !dbg !2374
  store i32 %or, ptr %arrayidx10, align 4, !dbg !2374
  %mul11 = shl nuw nsw i32 %i.0, 3, !dbg !2375
  %arrayidx13 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul11, !dbg !2376
  %4 = load i32, ptr %arrayidx13, align 4, !dbg !2377
  %and = and i32 %4, 8191, !dbg !2377
  store i32 %and, ptr %arrayidx13, align 4, !dbg !2377
  %mul14 = mul nuw nsw i32 %i.0, 13, !dbg !2378
  %5 = getelementptr inbounds nuw i8, ptr %a, i32 %mul14, !dbg !2379
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %5, i32 1, !dbg !2379
  %6 = load i8, ptr %arrayidx16, align 1, !dbg !2379
  %7 = lshr i8 %6, 5, !dbg !2380
  %shr = zext nneg i8 %7 to i32, !dbg !2380
  %mul18 = shl nuw nsw i32 %i.0, 3, !dbg !2381
  %add19 = or disjoint i32 %mul18, 1, !dbg !2382
  %arrayidx20 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add19, !dbg !2383
  store i32 %shr, ptr %arrayidx20, align 4, !dbg !2384
  %mul21 = mul nuw nsw i32 %i.0, 13, !dbg !2385
  %8 = getelementptr inbounds nuw i8, ptr %a, i32 %mul21, !dbg !2386
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %8, i32 2, !dbg !2386
  %9 = load i8, ptr %arrayidx23, align 1, !dbg !2386
  %conv24 = zext i8 %9 to i32, !dbg !2387
  %shl25 = shl nuw nsw i32 %conv24, 3, !dbg !2388
  %mul26 = shl nuw nsw i32 %i.0, 3, !dbg !2389
  %add27 = or disjoint i32 %mul26, 1, !dbg !2390
  %arrayidx28 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add27, !dbg !2391
  %10 = load i32, ptr %arrayidx28, align 4, !dbg !2392
  %or29 = or i32 %10, %shl25, !dbg !2392
  store i32 %or29, ptr %arrayidx28, align 4, !dbg !2392
  %mul30 = mul nuw nsw i32 %i.0, 13, !dbg !2393
  %11 = getelementptr inbounds nuw i8, ptr %a, i32 %mul30, !dbg !2394
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %11, i32 3, !dbg !2394
  %12 = load i8, ptr %arrayidx32, align 1, !dbg !2394
  %conv33 = zext i8 %12 to i32, !dbg !2395
  %shl34 = shl nuw nsw i32 %conv33, 11, !dbg !2396
  %mul35 = shl nuw nsw i32 %i.0, 3, !dbg !2397
  %add36 = or disjoint i32 %mul35, 1, !dbg !2398
  %arrayidx37 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add36, !dbg !2399
  %13 = load i32, ptr %arrayidx37, align 4, !dbg !2400
  %or38 = or i32 %13, %shl34, !dbg !2400
  store i32 %or38, ptr %arrayidx37, align 4, !dbg !2400
  %mul39 = shl nuw nsw i32 %i.0, 3, !dbg !2401
  %add40 = or disjoint i32 %mul39, 1, !dbg !2402
  %arrayidx41 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add40, !dbg !2403
  %14 = load i32, ptr %arrayidx41, align 4, !dbg !2404
  %and42 = and i32 %14, 8191, !dbg !2404
  store i32 %and42, ptr %arrayidx41, align 4, !dbg !2404
  %mul43 = mul nuw nsw i32 %i.0, 13, !dbg !2405
  %15 = getelementptr inbounds nuw i8, ptr %a, i32 %mul43, !dbg !2406
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %15, i32 3, !dbg !2406
  %16 = load i8, ptr %arrayidx45, align 1, !dbg !2406
  %17 = lshr i8 %16, 2, !dbg !2407
  %shr47 = zext nneg i8 %17 to i32, !dbg !2407
  %mul48 = shl nuw nsw i32 %i.0, 3, !dbg !2408
  %add49 = or disjoint i32 %mul48, 2, !dbg !2409
  %arrayidx50 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add49, !dbg !2410
  store i32 %shr47, ptr %arrayidx50, align 4, !dbg !2411
  %mul51 = mul nuw nsw i32 %i.0, 13, !dbg !2412
  %18 = getelementptr inbounds nuw i8, ptr %a, i32 %mul51, !dbg !2413
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %18, i32 4, !dbg !2413
  %19 = load i8, ptr %arrayidx53, align 1, !dbg !2413
  %conv54 = zext i8 %19 to i32, !dbg !2414
  %shl55 = shl nuw nsw i32 %conv54, 6, !dbg !2415
  %mul56 = shl nuw nsw i32 %i.0, 3, !dbg !2416
  %add57 = or disjoint i32 %mul56, 2, !dbg !2417
  %arrayidx58 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add57, !dbg !2418
  %20 = load i32, ptr %arrayidx58, align 4, !dbg !2419
  %or59 = or i32 %20, %shl55, !dbg !2419
  store i32 %or59, ptr %arrayidx58, align 4, !dbg !2419
  %mul60 = shl nuw nsw i32 %i.0, 3, !dbg !2420
  %add61 = or disjoint i32 %mul60, 2, !dbg !2421
  %arrayidx62 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add61, !dbg !2422
  %21 = load i32, ptr %arrayidx62, align 4, !dbg !2423
  %and63 = and i32 %21, 8191, !dbg !2423
  store i32 %and63, ptr %arrayidx62, align 4, !dbg !2423
  %mul64 = mul nuw nsw i32 %i.0, 13, !dbg !2424
  %22 = getelementptr inbounds nuw i8, ptr %a, i32 %mul64, !dbg !2425
  %arrayidx66 = getelementptr inbounds nuw i8, ptr %22, i32 4, !dbg !2425
  %23 = load i8, ptr %arrayidx66, align 1, !dbg !2425
  %24 = lshr i8 %23, 7, !dbg !2426
  %shr68 = zext nneg i8 %24 to i32, !dbg !2426
  %mul69 = shl nuw nsw i32 %i.0, 3, !dbg !2427
  %add70 = or disjoint i32 %mul69, 3, !dbg !2428
  %arrayidx71 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add70, !dbg !2429
  store i32 %shr68, ptr %arrayidx71, align 4, !dbg !2430
  %mul72 = mul nuw nsw i32 %i.0, 13, !dbg !2431
  %25 = getelementptr inbounds nuw i8, ptr %a, i32 %mul72, !dbg !2432
  %arrayidx74 = getelementptr inbounds nuw i8, ptr %25, i32 5, !dbg !2432
  %26 = load i8, ptr %arrayidx74, align 1, !dbg !2432
  %conv75 = zext i8 %26 to i32, !dbg !2433
  %shl76 = shl nuw nsw i32 %conv75, 1, !dbg !2434
  %mul77 = shl nuw nsw i32 %i.0, 3, !dbg !2435
  %add78 = or disjoint i32 %mul77, 3, !dbg !2436
  %arrayidx79 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add78, !dbg !2437
  %27 = load i32, ptr %arrayidx79, align 4, !dbg !2438
  %or80 = or i32 %27, %shl76, !dbg !2438
  store i32 %or80, ptr %arrayidx79, align 4, !dbg !2438
  %mul81 = mul nuw nsw i32 %i.0, 13, !dbg !2439
  %28 = getelementptr inbounds nuw i8, ptr %a, i32 %mul81, !dbg !2440
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %28, i32 6, !dbg !2440
  %29 = load i8, ptr %arrayidx83, align 1, !dbg !2440
  %conv84 = zext i8 %29 to i32, !dbg !2441
  %shl85 = shl nuw nsw i32 %conv84, 9, !dbg !2442
  %mul86 = shl nuw nsw i32 %i.0, 3, !dbg !2443
  %add87 = or disjoint i32 %mul86, 3, !dbg !2444
  %arrayidx88 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add87, !dbg !2445
  %30 = load i32, ptr %arrayidx88, align 4, !dbg !2446
  %or89 = or i32 %30, %shl85, !dbg !2446
  store i32 %or89, ptr %arrayidx88, align 4, !dbg !2446
  %mul90 = shl nuw nsw i32 %i.0, 3, !dbg !2447
  %add91 = or disjoint i32 %mul90, 3, !dbg !2448
  %arrayidx92 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add91, !dbg !2449
  %31 = load i32, ptr %arrayidx92, align 4, !dbg !2450
  %and93 = and i32 %31, 8191, !dbg !2450
  store i32 %and93, ptr %arrayidx92, align 4, !dbg !2450
  %mul94 = mul nuw nsw i32 %i.0, 13, !dbg !2451
  %32 = getelementptr inbounds nuw i8, ptr %a, i32 %mul94, !dbg !2452
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %32, i32 6, !dbg !2452
  %33 = load i8, ptr %arrayidx96, align 1, !dbg !2452
  %34 = lshr i8 %33, 4, !dbg !2453
  %shr98 = zext nneg i8 %34 to i32, !dbg !2453
  %mul99 = shl nuw nsw i32 %i.0, 3, !dbg !2454
  %add100 = or disjoint i32 %mul99, 4, !dbg !2455
  %arrayidx101 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add100, !dbg !2456
  store i32 %shr98, ptr %arrayidx101, align 4, !dbg !2457
  %mul102 = mul nuw nsw i32 %i.0, 13, !dbg !2458
  %35 = getelementptr inbounds nuw i8, ptr %a, i32 %mul102, !dbg !2459
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %35, i32 7, !dbg !2459
  %36 = load i8, ptr %arrayidx104, align 1, !dbg !2459
  %conv105 = zext i8 %36 to i32, !dbg !2460
  %shl106 = shl nuw nsw i32 %conv105, 4, !dbg !2461
  %mul107 = shl nuw nsw i32 %i.0, 3, !dbg !2462
  %add108 = or disjoint i32 %mul107, 4, !dbg !2463
  %arrayidx109 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add108, !dbg !2464
  %37 = load i32, ptr %arrayidx109, align 4, !dbg !2465
  %or110 = or i32 %37, %shl106, !dbg !2465
  store i32 %or110, ptr %arrayidx109, align 4, !dbg !2465
  %mul111 = mul nuw nsw i32 %i.0, 13, !dbg !2466
  %38 = getelementptr inbounds nuw i8, ptr %a, i32 %mul111, !dbg !2467
  %arrayidx113 = getelementptr inbounds nuw i8, ptr %38, i32 8, !dbg !2467
  %39 = load i8, ptr %arrayidx113, align 1, !dbg !2467
  %conv114 = zext i8 %39 to i32, !dbg !2468
  %shl115 = shl nuw nsw i32 %conv114, 12, !dbg !2469
  %mul116 = shl nuw nsw i32 %i.0, 3, !dbg !2470
  %add117 = or disjoint i32 %mul116, 4, !dbg !2471
  %arrayidx118 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add117, !dbg !2472
  %40 = load i32, ptr %arrayidx118, align 4, !dbg !2473
  %or119 = or i32 %40, %shl115, !dbg !2473
  store i32 %or119, ptr %arrayidx118, align 4, !dbg !2473
  %mul120 = shl nuw nsw i32 %i.0, 3, !dbg !2474
  %add121 = or disjoint i32 %mul120, 4, !dbg !2475
  %arrayidx122 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add121, !dbg !2476
  %41 = load i32, ptr %arrayidx122, align 4, !dbg !2477
  %and123 = and i32 %41, 8191, !dbg !2477
  store i32 %and123, ptr %arrayidx122, align 4, !dbg !2477
  %mul124 = mul nuw nsw i32 %i.0, 13, !dbg !2478
  %42 = getelementptr inbounds nuw i8, ptr %a, i32 %mul124, !dbg !2479
  %arrayidx126 = getelementptr inbounds nuw i8, ptr %42, i32 8, !dbg !2479
  %43 = load i8, ptr %arrayidx126, align 1, !dbg !2479
  %44 = lshr i8 %43, 1, !dbg !2480
  %shr128 = zext nneg i8 %44 to i32, !dbg !2480
  %mul129 = shl nuw nsw i32 %i.0, 3, !dbg !2481
  %add130 = or disjoint i32 %mul129, 5, !dbg !2482
  %arrayidx131 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add130, !dbg !2483
  store i32 %shr128, ptr %arrayidx131, align 4, !dbg !2484
  %mul132 = mul nuw nsw i32 %i.0, 13, !dbg !2485
  %45 = getelementptr inbounds nuw i8, ptr %a, i32 %mul132, !dbg !2486
  %arrayidx134 = getelementptr inbounds nuw i8, ptr %45, i32 9, !dbg !2486
  %46 = load i8, ptr %arrayidx134, align 1, !dbg !2486
  %conv135 = zext i8 %46 to i32, !dbg !2487
  %shl136 = shl nuw nsw i32 %conv135, 7, !dbg !2488
  %mul137 = shl nuw nsw i32 %i.0, 3, !dbg !2489
  %add138 = or disjoint i32 %mul137, 5, !dbg !2490
  %arrayidx139 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add138, !dbg !2491
  %47 = load i32, ptr %arrayidx139, align 4, !dbg !2492
  %or140 = or i32 %47, %shl136, !dbg !2492
  store i32 %or140, ptr %arrayidx139, align 4, !dbg !2492
  %mul141 = shl nuw nsw i32 %i.0, 3, !dbg !2493
  %add142 = or disjoint i32 %mul141, 5, !dbg !2494
  %arrayidx143 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add142, !dbg !2495
  %48 = load i32, ptr %arrayidx143, align 4, !dbg !2496
  %and144 = and i32 %48, 8191, !dbg !2496
  store i32 %and144, ptr %arrayidx143, align 4, !dbg !2496
  %mul145 = mul nuw nsw i32 %i.0, 13, !dbg !2497
  %49 = getelementptr inbounds nuw i8, ptr %a, i32 %mul145, !dbg !2498
  %arrayidx147 = getelementptr inbounds nuw i8, ptr %49, i32 9, !dbg !2498
  %50 = load i8, ptr %arrayidx147, align 1, !dbg !2498
  %51 = lshr i8 %50, 6, !dbg !2499
  %shr149 = zext nneg i8 %51 to i32, !dbg !2499
  %mul150 = shl nuw nsw i32 %i.0, 3, !dbg !2500
  %add151 = or disjoint i32 %mul150, 6, !dbg !2501
  %arrayidx152 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add151, !dbg !2502
  store i32 %shr149, ptr %arrayidx152, align 4, !dbg !2503
  %mul153 = mul nuw nsw i32 %i.0, 13, !dbg !2504
  %52 = getelementptr inbounds nuw i8, ptr %a, i32 %mul153, !dbg !2505
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %52, i32 10, !dbg !2505
  %53 = load i8, ptr %arrayidx155, align 1, !dbg !2505
  %conv156 = zext i8 %53 to i32, !dbg !2506
  %shl157 = shl nuw nsw i32 %conv156, 2, !dbg !2507
  %mul158 = shl nuw nsw i32 %i.0, 3, !dbg !2508
  %add159 = or disjoint i32 %mul158, 6, !dbg !2509
  %arrayidx160 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add159, !dbg !2510
  %54 = load i32, ptr %arrayidx160, align 4, !dbg !2511
  %or161 = or i32 %54, %shl157, !dbg !2511
  store i32 %or161, ptr %arrayidx160, align 4, !dbg !2511
  %mul162 = mul nuw nsw i32 %i.0, 13, !dbg !2512
  %55 = getelementptr inbounds nuw i8, ptr %a, i32 %mul162, !dbg !2513
  %arrayidx164 = getelementptr inbounds nuw i8, ptr %55, i32 11, !dbg !2513
  %56 = load i8, ptr %arrayidx164, align 1, !dbg !2513
  %conv165 = zext i8 %56 to i32, !dbg !2514
  %shl166 = shl nuw nsw i32 %conv165, 10, !dbg !2515
  %mul167 = shl nuw nsw i32 %i.0, 3, !dbg !2516
  %add168 = or disjoint i32 %mul167, 6, !dbg !2517
  %arrayidx169 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add168, !dbg !2518
  %57 = load i32, ptr %arrayidx169, align 4, !dbg !2519
  %or170 = or i32 %57, %shl166, !dbg !2519
  store i32 %or170, ptr %arrayidx169, align 4, !dbg !2519
  %mul171 = shl nuw nsw i32 %i.0, 3, !dbg !2520
  %add172 = or disjoint i32 %mul171, 6, !dbg !2521
  %arrayidx173 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add172, !dbg !2522
  %58 = load i32, ptr %arrayidx173, align 4, !dbg !2523
  %and174 = and i32 %58, 8191, !dbg !2523
  store i32 %and174, ptr %arrayidx173, align 4, !dbg !2523
  %mul175 = mul nuw nsw i32 %i.0, 13, !dbg !2524
  %59 = getelementptr inbounds nuw i8, ptr %a, i32 %mul175, !dbg !2525
  %arrayidx177 = getelementptr inbounds nuw i8, ptr %59, i32 11, !dbg !2525
  %60 = load i8, ptr %arrayidx177, align 1, !dbg !2525
  %61 = lshr i8 %60, 3, !dbg !2526
  %shr179 = zext nneg i8 %61 to i32, !dbg !2526
  %mul180 = shl nuw nsw i32 %i.0, 3, !dbg !2527
  %add181 = or disjoint i32 %mul180, 7, !dbg !2528
  %arrayidx182 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add181, !dbg !2529
  store i32 %shr179, ptr %arrayidx182, align 4, !dbg !2530
  %mul183 = mul nuw nsw i32 %i.0, 13, !dbg !2531
  %62 = getelementptr inbounds nuw i8, ptr %a, i32 %mul183, !dbg !2532
  %arrayidx185 = getelementptr inbounds nuw i8, ptr %62, i32 12, !dbg !2532
  %63 = load i8, ptr %arrayidx185, align 1, !dbg !2532
  %conv186 = zext i8 %63 to i32, !dbg !2533
  %shl187 = shl nuw nsw i32 %conv186, 5, !dbg !2534
  %mul188 = shl nuw nsw i32 %i.0, 3, !dbg !2535
  %add189 = or disjoint i32 %mul188, 7, !dbg !2536
  %arrayidx190 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add189, !dbg !2537
  %64 = load i32, ptr %arrayidx190, align 4, !dbg !2538
  %or191 = or i32 %64, %shl187, !dbg !2538
  store i32 %or191, ptr %arrayidx190, align 4, !dbg !2538
  %mul192 = shl nuw nsw i32 %i.0, 3, !dbg !2539
  %add193 = or disjoint i32 %mul192, 7, !dbg !2540
  %arrayidx194 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add193, !dbg !2541
  %65 = load i32, ptr %arrayidx194, align 4, !dbg !2542
  %and195 = and i32 %65, 8191, !dbg !2542
  store i32 %and195, ptr %arrayidx194, align 4, !dbg !2542
  %mul196 = shl nuw nsw i32 %i.0, 3, !dbg !2543
  %arrayidx198 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul196, !dbg !2544
  %66 = load i32, ptr %arrayidx198, align 4, !dbg !2544
  %sub = sub nsw i32 4096, %66, !dbg !2545
  %mul199 = shl nuw nsw i32 %i.0, 3, !dbg !2546
  %arrayidx201 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %mul199, !dbg !2547
  store i32 %sub, ptr %arrayidx201, align 4, !dbg !2548
  %mul202 = shl nuw nsw i32 %i.0, 3, !dbg !2549
  %add203 = or disjoint i32 %mul202, 1, !dbg !2550
  %arrayidx204 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add203, !dbg !2551
  %67 = load i32, ptr %arrayidx204, align 4, !dbg !2551
  %sub205 = sub nsw i32 4096, %67, !dbg !2552
  %mul206 = shl nuw nsw i32 %i.0, 3, !dbg !2553
  %add207 = or disjoint i32 %mul206, 1, !dbg !2554
  %arrayidx208 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add207, !dbg !2555
  store i32 %sub205, ptr %arrayidx208, align 4, !dbg !2556
  %mul209 = shl nuw nsw i32 %i.0, 3, !dbg !2557
  %add210 = or disjoint i32 %mul209, 2, !dbg !2558
  %arrayidx211 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add210, !dbg !2559
  %68 = load i32, ptr %arrayidx211, align 4, !dbg !2559
  %sub212 = sub nsw i32 4096, %68, !dbg !2560
  %mul213 = shl nuw nsw i32 %i.0, 3, !dbg !2561
  %add214 = or disjoint i32 %mul213, 2, !dbg !2562
  %arrayidx215 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add214, !dbg !2563
  store i32 %sub212, ptr %arrayidx215, align 4, !dbg !2564
  %mul216 = shl nuw nsw i32 %i.0, 3, !dbg !2565
  %add217 = or disjoint i32 %mul216, 3, !dbg !2566
  %arrayidx218 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add217, !dbg !2567
  %69 = load i32, ptr %arrayidx218, align 4, !dbg !2567
  %sub219 = sub nsw i32 4096, %69, !dbg !2568
  %mul220 = shl nuw nsw i32 %i.0, 3, !dbg !2569
  %add221 = or disjoint i32 %mul220, 3, !dbg !2570
  %arrayidx222 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add221, !dbg !2571
  store i32 %sub219, ptr %arrayidx222, align 4, !dbg !2572
  %mul223 = shl nuw nsw i32 %i.0, 3, !dbg !2573
  %add224 = or disjoint i32 %mul223, 4, !dbg !2574
  %arrayidx225 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add224, !dbg !2575
  %70 = load i32, ptr %arrayidx225, align 4, !dbg !2575
  %sub226 = sub nsw i32 4096, %70, !dbg !2576
  %mul227 = shl nuw nsw i32 %i.0, 3, !dbg !2577
  %add228 = or disjoint i32 %mul227, 4, !dbg !2578
  %arrayidx229 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add228, !dbg !2579
  store i32 %sub226, ptr %arrayidx229, align 4, !dbg !2580
  %mul230 = shl nuw nsw i32 %i.0, 3, !dbg !2581
  %add231 = or disjoint i32 %mul230, 5, !dbg !2582
  %arrayidx232 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add231, !dbg !2583
  %71 = load i32, ptr %arrayidx232, align 4, !dbg !2583
  %sub233 = sub nsw i32 4096, %71, !dbg !2584
  %mul234 = shl nuw nsw i32 %i.0, 3, !dbg !2585
  %add235 = or disjoint i32 %mul234, 5, !dbg !2586
  %arrayidx236 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add235, !dbg !2587
  store i32 %sub233, ptr %arrayidx236, align 4, !dbg !2588
  %mul237 = shl nuw nsw i32 %i.0, 3, !dbg !2589
  %add238 = or disjoint i32 %mul237, 6, !dbg !2590
  %arrayidx239 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add238, !dbg !2591
  %72 = load i32, ptr %arrayidx239, align 4, !dbg !2591
  %sub240 = sub nsw i32 4096, %72, !dbg !2592
  %mul241 = shl nuw nsw i32 %i.0, 3, !dbg !2593
  %add242 = or disjoint i32 %mul241, 6, !dbg !2594
  %arrayidx243 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add242, !dbg !2595
  store i32 %sub240, ptr %arrayidx243, align 4, !dbg !2596
  %mul244 = shl nuw nsw i32 %i.0, 3, !dbg !2597
  %add245 = or disjoint i32 %mul244, 7, !dbg !2598
  %arrayidx246 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add245, !dbg !2599
  %73 = load i32, ptr %arrayidx246, align 4, !dbg !2599
  %sub247 = sub nsw i32 4096, %73, !dbg !2600
  %mul248 = shl nuw nsw i32 %i.0, 3, !dbg !2601
  %add249 = or disjoint i32 %mul248, 7, !dbg !2602
  %arrayidx250 = getelementptr inbounds nuw [256 x i32], ptr %r, i32 0, i32 %add249, !dbg !2603
  store i32 %sub247, ptr %arrayidx250, align 4, !dbg !2604
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2605
    #dbg_value(i32 %inc, !2355, !DIExpression(), !2353)
  br label %for.cond, !dbg !2606, !llvm.loop !2607

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2609
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyz_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2610 {
entry:
    #dbg_value(ptr %r, !2611, !DIExpression(), !2612)
    #dbg_value(ptr %a, !2613, !DIExpression(), !2612)
    #dbg_value(i32 0, !2614, !DIExpression(), !2612)
  br label %for.cond, !dbg !2615

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2617
    #dbg_value(i32 %i.0, !2614, !DIExpression(), !2612)
  %exitcond = icmp ne i32 %i.0, 128, !dbg !2618
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2620

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 1, !dbg !2621
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !2623
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2623
  %sub = sub nsw i32 524288, %0, !dbg !2624
    #dbg_value(i32 %sub, !2625, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2612)
  %mul2 = shl nuw nsw i32 %i.0, 1, !dbg !2629
  %add3 = or disjoint i32 %mul2, 1, !dbg !2630
  %arrayidx4 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add3, !dbg !2631
  %1 = load i32, ptr %arrayidx4, align 4, !dbg !2631
  %sub5 = sub nsw i32 524288, %1, !dbg !2632
    #dbg_value(i32 %sub5, !2625, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !2612)
  %conv = trunc i32 %sub to i8, !dbg !2633
  %mul8 = mul nuw nsw i32 %i.0, 5, !dbg !2634
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %r, i32 %mul8, !dbg !2635
  store i8 %conv, ptr %arrayidx10, align 1, !dbg !2636
  %shr = lshr i32 %sub, 8, !dbg !2637
  %conv12 = trunc i32 %shr to i8, !dbg !2638
  %mul13 = mul nuw nsw i32 %i.0, 5, !dbg !2639
  %2 = getelementptr inbounds nuw i8, ptr %r, i32 %mul13, !dbg !2640
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %2, i32 1, !dbg !2640
  store i8 %conv12, ptr %arrayidx15, align 1, !dbg !2641
  %shr17 = lshr i32 %sub, 16, !dbg !2642
  %conv18 = trunc i32 %shr17 to i8, !dbg !2643
  %mul19 = mul nuw nsw i32 %i.0, 5, !dbg !2644
  %3 = getelementptr inbounds nuw i8, ptr %r, i32 %mul19, !dbg !2645
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %3, i32 2, !dbg !2645
  store i8 %conv18, ptr %arrayidx21, align 1, !dbg !2646
  %mul23 = mul nuw nsw i32 %i.0, 5, !dbg !2647
  %4 = getelementptr inbounds nuw i8, ptr %r, i32 %mul23, !dbg !2648
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %4, i32 2, !dbg !2648
  %5 = load i8, ptr %arrayidx25, align 1, !dbg !2649
  %sub5.tr = trunc i32 %sub5 to i8, !dbg !2649
  %6 = shl i8 %sub5.tr, 4, !dbg !2649
  %conv27 = or i8 %6, %5, !dbg !2649
  store i8 %conv27, ptr %arrayidx25, align 1, !dbg !2649
  %shr29 = lshr i32 %sub5, 4, !dbg !2650
  %conv30 = trunc i32 %shr29 to i8, !dbg !2651
  %mul31 = mul nuw nsw i32 %i.0, 5, !dbg !2652
  %7 = getelementptr inbounds nuw i8, ptr %r, i32 %mul31, !dbg !2653
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %7, i32 3, !dbg !2653
  store i8 %conv30, ptr %arrayidx33, align 1, !dbg !2654
  %shr35 = lshr i32 %sub5, 12, !dbg !2655
  %conv36 = trunc i32 %shr35 to i8, !dbg !2656
  %mul37 = mul nuw nsw i32 %i.0, 5, !dbg !2657
  %8 = getelementptr inbounds nuw i8, ptr %r, i32 %mul37, !dbg !2658
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %8, i32 4, !dbg !2658
  store i8 %conv36, ptr %arrayidx39, align 1, !dbg !2659
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2660
    #dbg_value(i32 %inc, !2614, !DIExpression(), !2612)
  br label %for.cond, !dbg !2661, !llvm.loop !2662

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2664
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_polyw1_pack(ptr noundef %r, ptr noundef %a) local_unnamed_addr #0 !dbg !2665 {
entry:
    #dbg_value(ptr %r, !2666, !DIExpression(), !2667)
    #dbg_value(ptr %a, !2668, !DIExpression(), !2667)
    #dbg_value(i32 0, !2669, !DIExpression(), !2667)
  br label %for.cond, !dbg !2670

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2672
    #dbg_value(i32 %i.0, !2669, !DIExpression(), !2667)
  %exitcond = icmp ne i32 %i.0, 128, !dbg !2673
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2675

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 1, !dbg !2676
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %mul, !dbg !2677
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2677
  %mul1 = shl nuw nsw i32 %i.0, 1, !dbg !2678
  %add2 = or disjoint i32 %mul1, 1, !dbg !2679
  %arrayidx3 = getelementptr inbounds nuw [256 x i32], ptr %a, i32 0, i32 %add2, !dbg !2680
  %1 = load i32, ptr %arrayidx3, align 4, !dbg !2680
  %shl = shl i32 %1, 4, !dbg !2681
  %or = or i32 %0, %shl, !dbg !2682
  %conv = trunc i32 %or to i8, !dbg !2677
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2683
  store i8 %conv, ptr %arrayidx4, align 1, !dbg !2684
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2685
    #dbg_value(i32 %inc, !2669, !DIExpression(), !2667)
  br label %for.cond, !dbg !2686, !llvm.loop !2687

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2689
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_ntt(ptr noundef %a) local_unnamed_addr #0 !dbg !2690 {
entry:
    #dbg_value(ptr %a, !2693, !DIExpression(), !2694)
    #dbg_value(i32 0, !2695, !DIExpression(), !2694)
    #dbg_value(i32 128, !2696, !DIExpression(), !2694)
  br label %for.cond, !dbg !2697

for.cond:                                         ; preds = %for.inc20, %entry
  %len.0 = phi i32 [ 128, %entry ], [ %shr, %for.inc20 ], !dbg !2699
  %k.0 = phi i32 [ 0, %entry ], [ %k.1.lcssa, %for.inc20 ], !dbg !2700
    #dbg_value(i32 %k.0, !2695, !DIExpression(), !2694)
    #dbg_value(i32 %len.0, !2696, !DIExpression(), !2694)
  %cmp.not = icmp eq i32 %len.0, 0, !dbg !2701
  br i1 %cmp.not, label %for.end21, label %for.cond1.preheader, !dbg !2703

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2704

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc17
  %start.0 = phi i32 [ %add18, %for.inc17 ], [ 0, %for.cond1.preheader ], !dbg !2707
  %k.1 = phi i32 [ %inc, %for.inc17 ], [ %k.0, %for.cond1.preheader ], !dbg !2694
    #dbg_value(i32 %k.1, !2695, !DIExpression(), !2694)
    #dbg_value(i32 %start.0, !2708, !DIExpression(), !2694)
  %cmp2 = icmp ult i32 %start.0, 256, !dbg !2709
  br i1 %cmp2, label %for.body3, label %for.inc20, !dbg !2704

for.body3:                                        ; preds = %for.cond1
  %inc = add i32 %k.1, 1, !dbg !2711
    #dbg_value(i32 %inc, !2695, !DIExpression(), !2694)
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @zetas, i32 0, i32 %inc, !dbg !2713
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2713
    #dbg_value(i32 %0, !2714, !DIExpression(), !2694)
    #dbg_value(i32 %start.0, !2715, !DIExpression(), !2694)
  br label %for.cond4, !dbg !2716

for.cond4:                                        ; preds = %for.body6, %for.body3
  %j.0 = phi i32 [ %start.0, %for.body3 ], [ %inc16, %for.body6 ], !dbg !2718
    #dbg_value(i32 %j.0, !2715, !DIExpression(), !2694)
  %add = add nuw nsw i32 %start.0, %len.0, !dbg !2719
  %cmp5 = icmp ult i32 %j.0, %add, !dbg !2721
  br i1 %cmp5, label %for.body6, label %for.inc17, !dbg !2722

for.body6:                                        ; preds = %for.cond4
  %conv = sext i32 %0 to i64, !dbg !2723
  %1 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2725
  %arrayidx8 = getelementptr i32, ptr %1, i32 %len.0, !dbg !2725
  %2 = load i32, ptr %arrayidx8, align 4, !dbg !2725
  %conv9 = sext i32 %2 to i64, !dbg !2725
  %mul = mul nsw i64 %conv, %conv9, !dbg !2726
  %call = call i32 @pqcrystals_dilithium5_ref_montgomery_reduce(i64 noundef %mul) #4, !dbg !2727
    #dbg_value(i32 %call, !2728, !DIExpression(), !2694)
  %arrayidx10 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2729
  %3 = load i32, ptr %arrayidx10, align 4, !dbg !2729
  %sub = sub nsw i32 %3, %call, !dbg !2730
  %4 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2731
  %arrayidx12 = getelementptr i32, ptr %4, i32 %len.0, !dbg !2731
  store i32 %sub, ptr %arrayidx12, align 4, !dbg !2732
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2733
  %5 = load i32, ptr %arrayidx13, align 4, !dbg !2733
  %add14 = add nsw i32 %5, %call, !dbg !2734
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2735
  store i32 %add14, ptr %arrayidx15, align 4, !dbg !2736
  %inc16 = add nuw i32 %j.0, 1, !dbg !2737
    #dbg_value(i32 %inc16, !2715, !DIExpression(), !2694)
  br label %for.cond4, !dbg !2738, !llvm.loop !2739

for.inc17:                                        ; preds = %for.cond4
  %j.0.lcssa = phi i32 [ %j.0, %for.cond4 ], !dbg !2718
  %add18 = add i32 %j.0.lcssa, %len.0, !dbg !2741
    #dbg_value(i32 %add18, !2708, !DIExpression(), !2694)
  br label %for.cond1, !dbg !2742, !llvm.loop !2743

for.inc20:                                        ; preds = %for.cond1
  %k.1.lcssa = phi i32 [ %k.1, %for.cond1 ], !dbg !2694
  %shr = lshr i32 %len.0, 1, !dbg !2745
    #dbg_value(i32 %shr, !2696, !DIExpression(), !2694)
  br label %for.cond, !dbg !2746, !llvm.loop !2747

for.end21:                                        ; preds = %for.cond
  ret void, !dbg !2749
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_invntt_tomont(ptr noundef %a) local_unnamed_addr #0 !dbg !2750 {
entry:
    #dbg_value(ptr %a, !2751, !DIExpression(), !2752)
    #dbg_value(i32 41978, !2753, !DIExpression(), !2752)
    #dbg_value(i32 256, !2754, !DIExpression(), !2752)
    #dbg_value(i32 1, !2755, !DIExpression(), !2752)
  br label %for.cond, !dbg !2756

for.cond:                                         ; preds = %for.inc25, %entry
  %len.0 = phi i32 [ 1, %entry ], [ %shl, %for.inc25 ], !dbg !2758
  %k.0 = phi i32 [ 256, %entry ], [ %k.1.lcssa, %for.inc25 ], !dbg !2759
    #dbg_value(i32 %k.0, !2754, !DIExpression(), !2752)
    #dbg_value(i32 %len.0, !2755, !DIExpression(), !2752)
  %cmp = icmp samesign ult i32 %len.0, 256, !dbg !2760
  br i1 %cmp, label %for.cond1.preheader, label %for.cond27.preheader, !dbg !2762

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2763

for.cond27.preheader:                             ; preds = %for.cond
  br label %for.cond27, !dbg !2766

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc22
  %start.0 = phi i32 [ %add23, %for.inc22 ], [ 0, %for.cond1.preheader ], !dbg !2768
  %k.1 = phi i32 [ %dec, %for.inc22 ], [ %k.0, %for.cond1.preheader ], !dbg !2752
    #dbg_value(i32 %k.1, !2754, !DIExpression(), !2752)
    #dbg_value(i32 %start.0, !2769, !DIExpression(), !2752)
  %cmp2 = icmp ult i32 %start.0, 256, !dbg !2770
  br i1 %cmp2, label %for.body3, label %for.inc25, !dbg !2763

for.body3:                                        ; preds = %for.cond1
  %dec = add i32 %k.1, -1, !dbg !2772
    #dbg_value(i32 %dec, !2754, !DIExpression(), !2752)
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @zetas, i32 0, i32 %dec, !dbg !2774
  %0 = load i32, ptr %arrayidx, align 4, !dbg !2774
  %sub = sub nsw i32 0, %0, !dbg !2775
    #dbg_value(i32 %sub, !2776, !DIExpression(), !2752)
    #dbg_value(i32 %start.0, !2777, !DIExpression(), !2752)
  br label %for.cond4, !dbg !2778

for.cond4:                                        ; preds = %for.body6, %for.body3
  %j.0 = phi i32 [ %start.0, %for.body3 ], [ %inc, %for.body6 ], !dbg !2780
    #dbg_value(i32 %j.0, !2777, !DIExpression(), !2752)
  %add = add nuw nsw i32 %start.0, %len.0, !dbg !2781
  %cmp5 = icmp ult i32 %j.0, %add, !dbg !2783
  br i1 %cmp5, label %for.body6, label %for.inc22, !dbg !2784

for.body6:                                        ; preds = %for.cond4
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2785
  %1 = load i32, ptr %arrayidx7, align 4, !dbg !2785
    #dbg_value(i32 %1, !2787, !DIExpression(), !2752)
  %2 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2788
  %arrayidx9 = getelementptr i32, ptr %2, i32 %len.0, !dbg !2788
  %3 = load i32, ptr %arrayidx9, align 4, !dbg !2788
  %add10 = add nsw i32 %1, %3, !dbg !2789
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %a, i32 %j.0, !dbg !2790
  store i32 %add10, ptr %arrayidx11, align 4, !dbg !2791
  %4 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2792
  %arrayidx13 = getelementptr i32, ptr %4, i32 %len.0, !dbg !2792
  %5 = load i32, ptr %arrayidx13, align 4, !dbg !2792
  %sub14 = sub nsw i32 %1, %5, !dbg !2793
  %6 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2794
  %arrayidx16 = getelementptr i32, ptr %6, i32 %len.0, !dbg !2794
  store i32 %sub14, ptr %arrayidx16, align 4, !dbg !2795
  %conv = sext i32 %sub to i64, !dbg !2796
  %7 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2797
  %arrayidx18 = getelementptr i32, ptr %7, i32 %len.0, !dbg !2797
  %8 = load i32, ptr %arrayidx18, align 4, !dbg !2797
  %conv19 = sext i32 %8 to i64, !dbg !2797
  %mul = mul nsw i64 %conv, %conv19, !dbg !2798
  %call = call i32 @pqcrystals_dilithium5_ref_montgomery_reduce(i64 noundef %mul) #4, !dbg !2799
  %9 = getelementptr i32, ptr %a, i32 %j.0, !dbg !2800
  %arrayidx21 = getelementptr i32, ptr %9, i32 %len.0, !dbg !2800
  store i32 %call, ptr %arrayidx21, align 4, !dbg !2801
  %inc = add nuw i32 %j.0, 1, !dbg !2802
    #dbg_value(i32 %inc, !2777, !DIExpression(), !2752)
  br label %for.cond4, !dbg !2803, !llvm.loop !2804

for.inc22:                                        ; preds = %for.cond4
  %j.0.lcssa = phi i32 [ %j.0, %for.cond4 ], !dbg !2780
  %add23 = add i32 %j.0.lcssa, %len.0, !dbg !2806
    #dbg_value(i32 %add23, !2769, !DIExpression(), !2752)
  br label %for.cond1, !dbg !2807, !llvm.loop !2808

for.inc25:                                        ; preds = %for.cond1
  %k.1.lcssa = phi i32 [ %k.1, %for.cond1 ], !dbg !2752
  %shl = shl nuw nsw i32 %len.0, 1, !dbg !2810
    #dbg_value(i32 %shl, !2755, !DIExpression(), !2752)
  br label %for.cond, !dbg !2811, !llvm.loop !2812

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body30
  %j.1 = phi i32 [ %inc37, %for.body30 ], [ 0, %for.cond27.preheader ], !dbg !2814
    #dbg_value(i32 %j.1, !2777, !DIExpression(), !2752)
  %exitcond = icmp ne i32 %j.1, 256, !dbg !2815
  br i1 %exitcond, label %for.body30, label %for.end38, !dbg !2766

for.body30:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw i32, ptr %a, i32 %j.1, !dbg !2817
  %10 = load i32, ptr %arrayidx31, align 4, !dbg !2817
  %conv32 = sext i32 %10 to i64, !dbg !2817
  %mul33 = mul nsw i64 %conv32, 41978, !dbg !2819
  %call34 = call i32 @pqcrystals_dilithium5_ref_montgomery_reduce(i64 noundef %mul33) #4, !dbg !2820
  %arrayidx35 = getelementptr inbounds nuw i32, ptr %a, i32 %j.1, !dbg !2821
  store i32 %call34, ptr %arrayidx35, align 4, !dbg !2822
  %inc37 = add nuw nsw i32 %j.1, 1, !dbg !2823
    #dbg_value(i32 %inc37, !2777, !DIExpression(), !2752)
  br label %for.cond27, !dbg !2824, !llvm.loop !2825

for.end38:                                        ; preds = %for.cond27
  ret void, !dbg !2827
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium5_ref_montgomery_reduce(i64 noundef %a) local_unnamed_addr #0 !dbg !2828 {
entry:
    #dbg_value(i64 %a, !2832, !DIExpression(), !2833)
  %0 = trunc i64 %a to i32, !dbg !2834
  %conv2 = mul i32 %0, 58728449, !dbg !2834
    #dbg_value(i32 %conv2, !2835, !DIExpression(), !2833)
  %conv3 = sext i32 %conv2 to i64, !dbg !2836
  %mul4.neg = mul nsw i64 %conv3, -8380417, !dbg !2837
  %sub = add i64 %mul4.neg, %a, !dbg !2838
  %shr = lshr i64 %sub, 32, !dbg !2839
  %conv5 = trunc nuw i64 %shr to i32, !dbg !2840
    #dbg_value(i32 %conv5, !2835, !DIExpression(), !2833)
  ret i32 %conv5, !dbg !2841
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium5_ref_reduce32(i32 noundef %a) local_unnamed_addr #0 !dbg !2842 {
entry:
    #dbg_value(i32 %a, !2845, !DIExpression(), !2846)
  %add = add nsw i32 %a, 4194304, !dbg !2847
  %shr = ashr i32 %add, 23, !dbg !2848
    #dbg_value(i32 %shr, !2849, !DIExpression(), !2846)
  %mul.neg = mul nsw i32 %shr, -8380417, !dbg !2850
  %sub = add i32 %mul.neg, %a, !dbg !2851
    #dbg_value(i32 %sub, !2849, !DIExpression(), !2846)
  ret i32 %sub, !dbg !2852
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium5_ref_caddq(i32 noundef %a) local_unnamed_addr #0 !dbg !2853 {
entry:
    #dbg_value(i32 %a, !2854, !DIExpression(), !2855)
  %isneg = icmp slt i32 %a, 0, !dbg !2856
  %and = select i1 %isneg, i32 8380417, i32 0, !dbg !2856
  %add = add nsw i32 %a, %and, !dbg !2857
    #dbg_value(i32 %add, !2854, !DIExpression(), !2855)
  ret i32 %add, !dbg !2858
}

; Function Attrs: nounwind
define dso_local i32 @pqcrystals_dilithium5_ref_freeze(i32 noundef %a) local_unnamed_addr #0 !dbg !2859 {
entry:
    #dbg_value(i32 %a, !2860, !DIExpression(), !2861)
  %call = call i32 @pqcrystals_dilithium5_ref_reduce32(i32 noundef %a) #4, !dbg !2862
    #dbg_value(i32 %call, !2860, !DIExpression(), !2861)
  %call1 = call i32 @pqcrystals_dilithium5_ref_caddq(i32 noundef %call) #4, !dbg !2863
    #dbg_value(i32 %call1, !2860, !DIExpression(), !2861)
  ret i32 %call1, !dbg !2864
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_init(ptr noundef %state) local_unnamed_addr #0 !dbg !2865 {
entry:
    #dbg_value(ptr %state, !2869, !DIExpression(), !2870)
  call fastcc void @keccak_init(ptr noundef %state) #4, !dbg !2871
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !2872
  store i64 0, ptr %arrayidx, align 8, !dbg !2873
  ret void, !dbg !2874
}

; Function Attrs: nounwind
define internal fastcc void @keccak_init(ptr noundef %s) unnamed_addr #0 !dbg !2875 {
entry:
    #dbg_value(ptr %s, !2879, !DIExpression(), !2880)
    #dbg_value(i32 0, !2881, !DIExpression(), !2880)
  br label %for.cond, !dbg !2882

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2884
    #dbg_value(i32 %i.0, !2881, !DIExpression(), !2880)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !2885
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2887

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !2888
  store i64 0, ptr %arrayidx, align 8, !dbg !2889
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2890
    #dbg_value(i32 %inc, !2881, !DIExpression(), !2880)
  br label %for.cond, !dbg !2891, !llvm.loop !2892

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2894
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_absorb(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !2895 {
entry:
    #dbg_value(ptr %state, !2898, !DIExpression(), !2899)
    #dbg_value(ptr %in, !2900, !DIExpression(), !2899)
    #dbg_value(i32 %inlen, !2901, !DIExpression(), !2899)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !2902
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2902
  %conv = trunc i64 %0 to i32, !dbg !2903
  %call = call fastcc i32 @keccak_absorb(ptr noundef %state, i32 noundef %conv, i32 noundef 168, ptr noundef %in, i32 noundef %inlen) #4, !dbg !2904
    #dbg_value(i32 %call, !2905, !DIExpression(), !2899)
  %conv1 = zext i32 %call to i64, !dbg !2906
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !2907
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !2908
  ret void, !dbg !2909
}

; Function Attrs: nounwind
define internal fastcc i32 @keccak_absorb(ptr noundef %s, i32 noundef %pos, i32 noundef range(i32 136, 169) %r, ptr noundef %in, i32 noundef %inlen) unnamed_addr #0 !dbg !2910 {
entry:
    #dbg_value(ptr %s, !2913, !DIExpression(), !2914)
    #dbg_value(i32 %pos, !2915, !DIExpression(), !2914)
    #dbg_value(i32 %r, !2916, !DIExpression(), !2914)
    #dbg_value(ptr %in, !2917, !DIExpression(), !2914)
    #dbg_value(i32 %inlen, !2918, !DIExpression(), !2914)
  br label %while.cond, !dbg !2919

while.cond:                                       ; preds = %for.end, %entry
  %in.addr.0 = phi ptr [ %in, %entry ], [ %in.addr.1.lcssa, %for.end ]
  %inlen.addr.0 = phi i32 [ %inlen, %entry ], [ %sub2, %for.end ]
  %pos.addr.0 = phi i32 [ %pos, %entry ], [ 0, %for.end ]
    #dbg_value(i32 %pos.addr.0, !2915, !DIExpression(), !2914)
    #dbg_value(i32 %inlen.addr.0, !2918, !DIExpression(), !2914)
    #dbg_value(ptr %in.addr.0, !2917, !DIExpression(), !2914)
  %add = add i32 %pos.addr.0, %inlen.addr.0, !dbg !2920
  %cmp.not = icmp ult i32 %add, %r, !dbg !2921
  br i1 %cmp.not, label %for.cond3.preheader, label %for.cond.preheader, !dbg !2919

for.cond.preheader:                               ; preds = %while.cond
  %umax = call i32 @llvm.umax.i32(i32 %pos.addr.0, i32 %r), !dbg !2922
  br label %for.cond, !dbg !2922

for.cond3.preheader:                              ; preds = %while.cond
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  %inlen.addr.0.lcssa = phi i32 [ %inlen.addr.0, %while.cond ]
  %pos.addr.0.lcssa = phi i32 [ %pos.addr.0, %while.cond ]
  br label %for.cond3, !dbg !2925

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %in.addr.1 = phi ptr [ %incdec.ptr, %for.body ], [ %in.addr.0, %for.cond.preheader ]
  %i.0 = phi i32 [ %inc, %for.body ], [ %pos.addr.0, %for.cond.preheader ], !dbg !2927
    #dbg_value(i32 %i.0, !2928, !DIExpression(), !2914)
    #dbg_value(ptr %in.addr.1, !2917, !DIExpression(), !2914)
  %exitcond = icmp ne i32 %i.0, %umax, !dbg !2929
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2922

for.body:                                         ; preds = %for.cond
    #dbg_value(ptr %in.addr.1, !2917, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2914)
  %0 = load i8, ptr %in.addr.1, align 1, !dbg !2931
  %conv = zext i8 %0 to i64, !dbg !2932
  %rem = shl nuw nsw i32 %i.0, 3, !dbg !2933
  %mul = and i32 %rem, 56, !dbg !2933
  %sh_prom = zext nneg i32 %mul to i64, !dbg !2934
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !2934
  %div2 = lshr i32 %i.0, 3, !dbg !2935
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %div2, !dbg !2936
  %1 = load i64, ptr %arrayidx, align 8, !dbg !2937
  %xor = xor i64 %1, %shl, !dbg !2937
  store i64 %xor, ptr %arrayidx, align 8, !dbg !2937
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %in.addr.1, i32 1, !dbg !2938
    #dbg_value(ptr %incdec.ptr, !2917, !DIExpression(), !2914)
  %inc = add i32 %i.0, 1, !dbg !2939
    #dbg_value(i32 %inc, !2928, !DIExpression(), !2914)
  br label %for.cond, !dbg !2940, !llvm.loop !2941

for.end:                                          ; preds = %for.cond
  %in.addr.1.lcssa = phi ptr [ %in.addr.1, %for.cond ]
  %sub.neg = sub i32 %pos.addr.0, %r, !dbg !2943
  %sub2 = add i32 %sub.neg, %inlen.addr.0, !dbg !2944
    #dbg_value(i32 %sub2, !2918, !DIExpression(), !2914)
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !2945
    #dbg_value(i32 0, !2915, !DIExpression(), !2914)
  br label %while.cond, !dbg !2919, !llvm.loop !2946

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body7
  %in.addr.2 = phi ptr [ %incdec.ptr8, %for.body7 ], [ %in.addr.0.lcssa, %for.cond3.preheader ]
  %i.1 = phi i32 [ %inc18, %for.body7 ], [ %pos.addr.0.lcssa, %for.cond3.preheader ], !dbg !2948
    #dbg_value(i32 %i.1, !2928, !DIExpression(), !2914)
    #dbg_value(ptr %in.addr.2, !2917, !DIExpression(), !2914)
  %add4 = add i32 %pos.addr.0.lcssa, %inlen.addr.0.lcssa, !dbg !2949
  %cmp5 = icmp ult i32 %i.1, %add4, !dbg !2951
  br i1 %cmp5, label %for.body7, label %for.end19, !dbg !2925

for.body7:                                        ; preds = %for.cond3
    #dbg_value(ptr %in.addr.2, !2917, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2914)
  %2 = load i8, ptr %in.addr.2, align 1, !dbg !2952
  %conv9 = zext i8 %2 to i64, !dbg !2953
  %rem10 = shl i32 %i.1, 3, !dbg !2954
  %mul11 = and i32 %rem10, 56, !dbg !2954
  %sh_prom12 = zext nneg i32 %mul11 to i64, !dbg !2955
  %shl13 = shl nuw i64 %conv9, %sh_prom12, !dbg !2955
  %div141 = lshr i32 %i.1, 3, !dbg !2956
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %s, i32 %div141, !dbg !2957
  %3 = load i64, ptr %arrayidx15, align 8, !dbg !2958
  %xor16 = xor i64 %3, %shl13, !dbg !2958
  store i64 %xor16, ptr %arrayidx15, align 8, !dbg !2958
  %incdec.ptr8 = getelementptr inbounds nuw i8, ptr %in.addr.2, i32 1, !dbg !2959
    #dbg_value(ptr %incdec.ptr8, !2917, !DIExpression(), !2914)
  %inc18 = add nuw i32 %i.1, 1, !dbg !2960
    #dbg_value(i32 %inc18, !2928, !DIExpression(), !2914)
  br label %for.cond3, !dbg !2961, !llvm.loop !2962

for.end19:                                        ; preds = %for.cond3
  %i.1.lcssa = phi i32 [ %i.1, %for.cond3 ], !dbg !2948
  ret i32 %i.1.lcssa, !dbg !2964
}

; Function Attrs: nounwind
define internal fastcc void @KeccakF1600_StatePermute(ptr noundef %state) unnamed_addr #0 !dbg !2965 {
entry:
    #dbg_value(ptr %state, !2966, !DIExpression(), !2967)
  %0 = load i64, ptr %state, align 8, !dbg !2968
    #dbg_value(i64 %0, !2969, !DIExpression(), !2967)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !2970
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2970
    #dbg_value(i64 %1, !2971, !DIExpression(), !2967)
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !2972
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !2972
    #dbg_value(i64 %2, !2973, !DIExpression(), !2967)
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !2974
  %3 = load i64, ptr %arrayidx3, align 8, !dbg !2974
    #dbg_value(i64 %3, !2975, !DIExpression(), !2967)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !2976
  %4 = load i64, ptr %arrayidx4, align 8, !dbg !2976
    #dbg_value(i64 %4, !2977, !DIExpression(), !2967)
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !2978
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !2978
    #dbg_value(i64 %5, !2979, !DIExpression(), !2967)
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !2980
  %6 = load i64, ptr %arrayidx6, align 8, !dbg !2980
    #dbg_value(i64 %6, !2981, !DIExpression(), !2967)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !2982
  %7 = load i64, ptr %arrayidx7, align 8, !dbg !2982
    #dbg_value(i64 %7, !2983, !DIExpression(), !2967)
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !2984
  %8 = load i64, ptr %arrayidx8, align 8, !dbg !2984
    #dbg_value(i64 %8, !2985, !DIExpression(), !2967)
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !2986
  %9 = load i64, ptr %arrayidx9, align 8, !dbg !2986
    #dbg_value(i64 %9, !2987, !DIExpression(), !2967)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !2988
  %10 = load i64, ptr %arrayidx10, align 8, !dbg !2988
    #dbg_value(i64 %10, !2989, !DIExpression(), !2967)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !2990
  %11 = load i64, ptr %arrayidx11, align 8, !dbg !2990
    #dbg_value(i64 %11, !2991, !DIExpression(), !2967)
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !2992
  %12 = load i64, ptr %arrayidx12, align 8, !dbg !2992
    #dbg_value(i64 %12, !2993, !DIExpression(), !2967)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !2994
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !2994
    #dbg_value(i64 %13, !2995, !DIExpression(), !2967)
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !2996
  %14 = load i64, ptr %arrayidx14, align 8, !dbg !2996
    #dbg_value(i64 %14, !2997, !DIExpression(), !2967)
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !2998
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !2998
    #dbg_value(i64 %15, !2999, !DIExpression(), !2967)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3000
  %16 = load i64, ptr %arrayidx16, align 8, !dbg !3000
    #dbg_value(i64 %16, !3001, !DIExpression(), !2967)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3002
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !3002
    #dbg_value(i64 %17, !3003, !DIExpression(), !2967)
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3004
  %18 = load i64, ptr %arrayidx18, align 8, !dbg !3004
    #dbg_value(i64 %18, !3005, !DIExpression(), !2967)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3006
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !3006
    #dbg_value(i64 %19, !3007, !DIExpression(), !2967)
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3008
  %20 = load i64, ptr %arrayidx20, align 8, !dbg !3008
    #dbg_value(i64 %20, !3009, !DIExpression(), !2967)
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3010
  %21 = load i64, ptr %arrayidx21, align 8, !dbg !3010
    #dbg_value(i64 %21, !3011, !DIExpression(), !2967)
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3012
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3012
    #dbg_value(i64 %22, !3013, !DIExpression(), !2967)
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3014
  %23 = load i64, ptr %arrayidx23, align 8, !dbg !3014
    #dbg_value(i64 %23, !3015, !DIExpression(), !2967)
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3016
  %24 = load i64, ptr %arrayidx24, align 8, !dbg !3016
    #dbg_value(i64 %24, !3017, !DIExpression(), !2967)
    #dbg_value(i32 0, !3018, !DIExpression(), !2967)
  br label %for.cond, !dbg !3019

for.cond:                                         ; preds = %for.inc, %entry
  %Aso.0 = phi i64 [ %23, %entry ], [ %xor444, %for.inc ], !dbg !2967
  %Asi.0 = phi i64 [ %22, %entry ], [ %xor441, %for.inc ], !dbg !2967
  %Ase.0 = phi i64 [ %21, %entry ], [ %xor438, %for.inc ], !dbg !2967
  %Asa.0 = phi i64 [ %20, %entry ], [ %xor435, %for.inc ], !dbg !2967
  %Amu.0 = phi i64 [ %19, %entry ], [ %xor412, %for.inc ], !dbg !2967
  %Amo.0 = phi i64 [ %18, %entry ], [ %xor409, %for.inc ], !dbg !2967
  %Ami.0 = phi i64 [ %17, %entry ], [ %xor406, %for.inc ], !dbg !2967
  %Ame.0 = phi i64 [ %16, %entry ], [ %xor403, %for.inc ], !dbg !2967
  %Ama.0 = phi i64 [ %15, %entry ], [ %xor400, %for.inc ], !dbg !2967
  %Aku.0 = phi i64 [ %14, %entry ], [ %xor377, %for.inc ], !dbg !2967
  %Ako.0 = phi i64 [ %13, %entry ], [ %xor374, %for.inc ], !dbg !2967
  %Aki.0 = phi i64 [ %12, %entry ], [ %xor371, %for.inc ], !dbg !2967
  %Ake.0 = phi i64 [ %11, %entry ], [ %xor368, %for.inc ], !dbg !2967
  %Aka.0 = phi i64 [ %10, %entry ], [ %xor365, %for.inc ], !dbg !2967
  %Agu.0 = phi i64 [ %9, %entry ], [ %xor342, %for.inc ], !dbg !2967
  %Ago.0 = phi i64 [ %8, %entry ], [ %xor339, %for.inc ], !dbg !2967
  %Agi.0 = phi i64 [ %7, %entry ], [ %xor336, %for.inc ], !dbg !2967
  %Age.0 = phi i64 [ %6, %entry ], [ %xor333, %for.inc ], !dbg !2967
  %Aga.0 = phi i64 [ %5, %entry ], [ %xor330, %for.inc ], !dbg !2967
  %Abu.0 = phi i64 [ %4, %entry ], [ %xor307, %for.inc ], !dbg !2967
  %Abo.0 = phi i64 [ %3, %entry ], [ %xor304, %for.inc ], !dbg !2967
  %Abi.0 = phi i64 [ %2, %entry ], [ %xor301, %for.inc ], !dbg !2967
  %Abe.0 = phi i64 [ %1, %entry ], [ %xor298, %for.inc ], !dbg !2967
  %Aba.0 = phi i64 [ %0, %entry ], [ %xor295, %for.inc ], !dbg !2967
  %round.0 = phi i32 [ 0, %entry ], [ %add448, %for.inc ], !dbg !3021
  %Asu.0 = phi i64 [ %24, %entry ], [ %xor447, %for.inc ], !dbg !2967
    #dbg_value(i64 %Asu.0, !3017, !DIExpression(), !2967)
    #dbg_value(i32 %round.0, !3018, !DIExpression(), !2967)
    #dbg_value(i64 %Aba.0, !2969, !DIExpression(), !2967)
    #dbg_value(i64 %Abe.0, !2971, !DIExpression(), !2967)
    #dbg_value(i64 %Abi.0, !2973, !DIExpression(), !2967)
    #dbg_value(i64 %Abo.0, !2975, !DIExpression(), !2967)
    #dbg_value(i64 %Abu.0, !2977, !DIExpression(), !2967)
    #dbg_value(i64 %Aga.0, !2979, !DIExpression(), !2967)
    #dbg_value(i64 %Age.0, !2981, !DIExpression(), !2967)
    #dbg_value(i64 %Agi.0, !2983, !DIExpression(), !2967)
    #dbg_value(i64 %Ago.0, !2985, !DIExpression(), !2967)
    #dbg_value(i64 %Agu.0, !2987, !DIExpression(), !2967)
    #dbg_value(i64 %Aka.0, !2989, !DIExpression(), !2967)
    #dbg_value(i64 %Ake.0, !2991, !DIExpression(), !2967)
    #dbg_value(i64 %Aki.0, !2993, !DIExpression(), !2967)
    #dbg_value(i64 %Ako.0, !2995, !DIExpression(), !2967)
    #dbg_value(i64 %Aku.0, !2997, !DIExpression(), !2967)
    #dbg_value(i64 %Ama.0, !2999, !DIExpression(), !2967)
    #dbg_value(i64 %Ame.0, !3001, !DIExpression(), !2967)
    #dbg_value(i64 %Ami.0, !3003, !DIExpression(), !2967)
    #dbg_value(i64 %Amo.0, !3005, !DIExpression(), !2967)
    #dbg_value(i64 %Amu.0, !3007, !DIExpression(), !2967)
    #dbg_value(i64 %Asa.0, !3009, !DIExpression(), !2967)
    #dbg_value(i64 %Ase.0, !3011, !DIExpression(), !2967)
    #dbg_value(i64 %Asi.0, !3013, !DIExpression(), !2967)
    #dbg_value(i64 %Aso.0, !3015, !DIExpression(), !2967)
  %cmp = icmp samesign ult i32 %round.0, 24, !dbg !3022
  br i1 %cmp, label %for.inc, label %for.end, !dbg !3024

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0, i64 %Aga.0), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0, i64 %Age.0), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0, i64 %Agi.0), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0, i64 %Ago.0), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0, i64 %Agu.0), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3032, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3033, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3034, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2969, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3005, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3017, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3039, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2987, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2989, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3001, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3013, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3040, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3042, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3043, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3044, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2971, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2983, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2995, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3009, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3046, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3047, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3048, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3049, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2979, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3003, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3050, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3051, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3052, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2973, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2985, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2997, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2999, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3011, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3055, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3056, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3057, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3058, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3059, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3032, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3033, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3034, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3047, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3059, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2969, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !2969, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2971, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2973, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison), !2977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3044, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3051, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3057, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2979, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2983, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2985, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2987, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3042, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3048, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3055, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2989, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2995, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2997, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3039, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3040, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3046, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3052, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison, i64 poison, i64 poison), !3058, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !2999, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3001, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3003, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3005, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3043, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3049, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3050, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3056, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 poison, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3009, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3011, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3013, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3017, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor32 = xor i64 %Abi.0, %Agi.0, !dbg !3060
    #dbg_value(!DIArgList(i64 %xor32, i64 %Asi.0, i64 %Ami.0, i64 %Aki.0), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor33 = xor i64 %xor32, %Aki.0, !dbg !3062
    #dbg_value(!DIArgList(i64 %xor33, i64 %Asi.0, i64 %Ami.0), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor34 = xor i64 %xor33, %Ami.0, !dbg !3063
    #dbg_value(!DIArgList(i64 %xor34, i64 %Asi.0), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor35 = xor i64 %xor34, %Asi.0, !dbg !3064
    #dbg_value(i64 %xor35, !3027, !DIExpression(), !2967)
  %xor40 = xor i64 %Abu.0, %Agu.0, !dbg !3065
    #dbg_value(!DIArgList(i64 %xor40, i64 %Asu.0, i64 %Amu.0, i64 %Aku.0), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor41 = xor i64 %xor40, %Aku.0, !dbg !3066
    #dbg_value(!DIArgList(i64 %xor41, i64 %Asu.0, i64 %Amu.0), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor42 = xor i64 %xor41, %Amu.0, !dbg !3067
    #dbg_value(!DIArgList(i64 %xor42, i64 %Asu.0), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor43 = xor i64 %xor42, %Asu.0, !dbg !3068
    #dbg_value(i64 %xor43, !3029, !DIExpression(), !2967)
  %25 = shl i64 %xor43, 1, !dbg !3069
  %26 = lshr i64 %xor43, 63, !dbg !3069
  %27 = or i64 %25, %26, !dbg !3069
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor35, i64 %27), !2985, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor35, i64 %27), !2975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor35, i64 %27), !2995, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor35, i64 %27), !3005, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor35, i64 %27), !3015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor35, i64 %27), !3033, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor57 = xor i64 %xor35, %27, !dbg !3070
    #dbg_value(!DIArgList(i64 %Ago.0, i64 %xor57), !2985, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abo.0, i64 %xor57), !2975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ako.0, i64 %xor57), !2995, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Amo.0, i64 %xor57), !3005, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Aso.0, i64 %xor57), !3015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 %xor57, !3033, !DIExpression(), !2967)
  %xor203 = xor i64 %Ago.0, %xor57, !dbg !3071
    #dbg_value(i64 %xor203, !2985, !DIExpression(), !2967)
  %28 = shl i64 %xor203, 55, !dbg !3072
  %29 = lshr i64 %xor203, 9, !dbg !3072
  %30 = or i64 %28, %29, !dbg !3072
    #dbg_value(i64 %30, !3026, !DIExpression(), !2967)
  %xor28 = xor i64 %Abe.0, %Age.0, !dbg !3073
    #dbg_value(!DIArgList(i64 %xor28, i64 %Ase.0, i64 %Ame.0, i64 %Ake.0), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor29 = xor i64 %xor28, %Ake.0, !dbg !3074
    #dbg_value(!DIArgList(i64 %xor29, i64 %Ase.0, i64 %Ame.0), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor30 = xor i64 %xor29, %Ame.0, !dbg !3075
    #dbg_value(!DIArgList(i64 %xor30, i64 %Ase.0), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor31 = xor i64 %xor30, %Ase.0, !dbg !3076
    #dbg_value(i64 %xor31, !3026, !DIExpression(), !2967)
  %31 = shl i64 %xor31, 1, !dbg !3077
  %32 = lshr i64 %xor31, 63, !dbg !3077
  %33 = or i64 %31, %32, !dbg !3077
    #dbg_value(!DIArgList(i64 %xor43, i64 %33), !3030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !2969, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor43, i64 %33), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor43, i64 %33), !2989, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor43, i64 %33), !2979, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor43, i64 %33), !3009, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor43, i64 %33), !2999, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor45 = xor i64 %xor43, %33, !dbg !3078
    #dbg_value(i64 %xor45, !3030, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %xor45), !2969, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Aka.0, i64 %xor45), !2989, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Aga.0, i64 %xor45), !2979, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Asa.0, i64 %xor45), !3009, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ama.0, i64 %xor45), !2999, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor211 = xor i64 %Ama.0, %xor45, !dbg !3079
    #dbg_value(i64 %xor211, !2999, !DIExpression(), !2967)
  %34 = shl i64 %xor211, 41, !dbg !3080
  %35 = lshr i64 %xor211, 23, !dbg !3080
  %36 = or i64 %34, %35, !dbg !3080
    #dbg_value(i64 %36, !3028, !DIExpression(), !2967)
  %xor36 = xor i64 %Abo.0, %Ago.0, !dbg !3081
    #dbg_value(!DIArgList(i64 %xor36, i64 %Aso.0, i64 %Amo.0, i64 %Ako.0), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor37 = xor i64 %xor36, %Ako.0, !dbg !3082
    #dbg_value(!DIArgList(i64 %xor37, i64 %Aso.0, i64 %Amo.0), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor38 = xor i64 %xor37, %Amo.0, !dbg !3083
    #dbg_value(!DIArgList(i64 %xor38, i64 %Aso.0), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor39 = xor i64 %xor38, %Aso.0, !dbg !3084
    #dbg_value(i64 %xor39, !3028, !DIExpression(), !2967)
  %xor = xor i64 %Aba.0, %Aga.0, !dbg !3085
    #dbg_value(!DIArgList(i64 %xor, i64 %Asa.0, i64 %Ama.0, i64 %Aka.0), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor25 = xor i64 %xor, %Aka.0, !dbg !3086
    #dbg_value(!DIArgList(i64 %xor25, i64 %Asa.0, i64 %Ama.0), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor26 = xor i64 %xor25, %Ama.0, !dbg !3087
    #dbg_value(!DIArgList(i64 %xor26, i64 %Asa.0), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor27 = xor i64 %xor26, %Asa.0, !dbg !3088
    #dbg_value(i64 %xor27, !3025, !DIExpression(), !2967)
  %37 = shl i64 %xor27, 1, !dbg !3089
  %38 = lshr i64 %xor27, 63, !dbg !3089
  %39 = or i64 %37, %38, !dbg !3089
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor39, i64 %39), !2987, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor39, i64 %39), !2977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor39, i64 %39), !3017, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor39, i64 %39), !3007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor39, i64 %39), !3034, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor39, i64 %39), !2997, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor61 = xor i64 %xor39, %39, !dbg !3090
    #dbg_value(!DIArgList(i64 %Agu.0, i64 %xor61), !2987, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abu.0, i64 %xor61), !2977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Asu.0, i64 %xor61), !3017, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Amu.0, i64 %xor61), !3007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 %xor61, !3034, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %Aku.0, i64 %xor61), !2997, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor207 = xor i64 %Aku.0, %xor61, !dbg !3091
    #dbg_value(i64 %xor207, !2997, !DIExpression(), !2967)
  %40 = shl i64 %xor207, 39, !dbg !3092
  %41 = lshr i64 %xor207, 25, !dbg !3092
  %42 = or i64 %40, %41, !dbg !3092
    #dbg_value(i64 %42, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %42), !3056, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not222 = xor i64 %42, -1, !dbg !3093
    #dbg_value(!DIArgList(i64 %30, i64 %36, i64 %not222), !3056, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and223 = and i64 %36, %not222, !dbg !3094
    #dbg_value(!DIArgList(i64 %30, i64 %and223), !3056, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor224 = xor i64 %30, %and223, !dbg !3095
    #dbg_value(i64 %xor224, !3056, !DIExpression(), !2967)
  %43 = shl i64 %xor39, 1, !dbg !3096
  %44 = lshr i64 %xor39, 63, !dbg !3096
  %45 = or i64 %43, %44, !dbg !3096
    #dbg_value(!DIArgList(i64 %xor31, i64 %45), !3032, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor31, i64 %45), !2993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor31, i64 %45), !2983, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor31, i64 %45), !2973, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor31, i64 %45), !3013, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor31, i64 %45), !3003, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor53 = xor i64 %xor31, %45, !dbg !3097
    #dbg_value(i64 %xor53, !3032, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %Aki.0, i64 %xor53), !2993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Agi.0, i64 %xor53), !2983, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abi.0, i64 %xor53), !2973, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Asi.0, i64 %xor53), !3013, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ami.0, i64 %xor53), !3003, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor67 = xor i64 %Aki.0, %xor53, !dbg !3098
    #dbg_value(i64 %xor67, !2993, !DIExpression(), !2967)
  %46 = shl i64 %xor67, 43, !dbg !3099
  %47 = lshr i64 %xor67, 21, !dbg !3099
  %48 = or i64 %46, %47, !dbg !3099
    #dbg_value(i64 %48, !3027, !DIExpression(), !2967)
  %49 = shl i64 %xor35, 1, !dbg !3100
  %50 = lshr i64 %xor35, 63, !dbg !3100
  %51 = or i64 %49, %50, !dbg !3100
    #dbg_value(!DIArgList(i64 %xor27, i64 %51), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor27, i64 %51), !2981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor27, i64 %51), !2971, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor27, i64 %51), !2991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor27, i64 %51), !3001, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor27, i64 %51), !3011, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor49 = xor i64 %xor27, %51, !dbg !3101
    #dbg_value(i64 %xor49, !3031, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %Age.0, i64 %xor49), !2981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Abe.0, i64 %xor49), !2971, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ake.0, i64 %xor49), !2991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ame.0, i64 %xor49), !3001, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %Ase.0, i64 %xor49), !3011, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor63 = xor i64 %Age.0, %xor49, !dbg !3102
    #dbg_value(i64 %xor63, !2981, !DIExpression(), !2967)
  %52 = shl i64 %xor63, 44, !dbg !3103
  %53 = lshr i64 %xor63, 20, !dbg !3103
  %54 = or i64 %52, %53, !dbg !3103
    #dbg_value(i64 %54, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %54), !3035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not = xor i64 %54, -1, !dbg !3104
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %48, i64 %xor45, i64 %not), !3035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and = and i64 %48, %not, !dbg !3105
    #dbg_value(!DIArgList(i64 %Aba.0, i64 %and, i64 %xor45), !3035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %arrayidx80 = getelementptr inbounds nuw [24 x i64], ptr @pqcrystals_dilithium_fips202_ref_KeccakF_RoundConstants, i32 0, i32 %round.0, !dbg !3106
  %55 = load i64, ptr %arrayidx80, align 8, !dbg !3106
    #dbg_value(!DIArgList(i64 %and, i64 %Aba.0, i64 %xor45, i64 %55), !3035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %56 = xor i64 %and, %55, !dbg !3107
    #dbg_value(!DIArgList(i64 %56, i64 %Aba.0, i64 %xor45), !3035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor62 = xor i64 %Aba.0, %xor45, !dbg !3108
    #dbg_value(i64 %xor62, !2969, !DIExpression(), !2967)
    #dbg_value(i64 %xor62, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %56, i64 %xor62), !3035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor81 = xor i64 %56, %xor62, !dbg !3107
    #dbg_value(i64 %xor81, !3035, !DIExpression(), !2967)
  %xor94 = xor i64 %Abo.0, %xor57, !dbg !3109
    #dbg_value(i64 %xor94, !2975, !DIExpression(), !2967)
  %57 = shl i64 %xor94, 28, !dbg !3110
  %58 = lshr i64 %xor94, 36, !dbg !3110
  %59 = or i64 %57, %58, !dbg !3110
    #dbg_value(i64 %59, !3025, !DIExpression(), !2967)
  %xor102 = xor i64 %Aka.0, %xor45, !dbg !3111
    #dbg_value(i64 %xor102, !2989, !DIExpression(), !2967)
  %60 = shl i64 %xor102, 3, !dbg !3112
  %61 = lshr i64 %xor102, 61, !dbg !3112
  %62 = or i64 %60, %61, !dbg !3112
    #dbg_value(i64 %62, !3027, !DIExpression(), !2967)
  %xor98 = xor i64 %Agu.0, %xor61, !dbg !3113
    #dbg_value(i64 %xor98, !2987, !DIExpression(), !2967)
  %63 = shl i64 %xor98, 20, !dbg !3114
  %64 = lshr i64 %xor98, 44, !dbg !3114
  %65 = or i64 %63, %64, !dbg !3114
    #dbg_value(i64 %65, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %65), !3040, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not114 = xor i64 %65, -1, !dbg !3115
    #dbg_value(!DIArgList(i64 %59, i64 %62, i64 %not114), !3040, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and115 = and i64 %62, %not114, !dbg !3116
    #dbg_value(!DIArgList(i64 %59, i64 %and115), !3040, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor116 = xor i64 %59, %and115, !dbg !3117
    #dbg_value(i64 %xor116, !3040, !DIExpression(), !2967)
  %xor234 = xor i64 %xor81, %xor116, !dbg !3118
  %xor129 = xor i64 %Abe.0, %xor49, !dbg !3119
    #dbg_value(i64 %xor129, !2971, !DIExpression(), !2967)
  %66 = shl i64 %xor129, 1, !dbg !3120
  %67 = lshr i64 %xor129, 63, !dbg !3120
  %68 = or i64 %66, %67, !dbg !3120
    #dbg_value(i64 %68, !3025, !DIExpression(), !2967)
  %xor137 = xor i64 %Ako.0, %xor57, !dbg !3121
    #dbg_value(i64 %xor137, !2995, !DIExpression(), !2967)
  %69 = shl i64 %xor137, 25, !dbg !3122
  %70 = lshr i64 %xor137, 39, !dbg !3122
  %71 = or i64 %69, %70, !dbg !3122
    #dbg_value(i64 %71, !3027, !DIExpression(), !2967)
  %xor133 = xor i64 %Agi.0, %xor53, !dbg !3123
    #dbg_value(i64 %xor133, !2983, !DIExpression(), !2967)
  %72 = shl i64 %xor133, 6, !dbg !3124
  %73 = lshr i64 %xor133, 58, !dbg !3124
  %74 = or i64 %72, %73, !dbg !3124
    #dbg_value(i64 %74, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %74), !3045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not149 = xor i64 %74, -1, !dbg !3125
    #dbg_value(!DIArgList(i64 %68, i64 %71, i64 %not149), !3045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and150 = and i64 %71, %not149, !dbg !3126
    #dbg_value(!DIArgList(i64 %68, i64 %and150), !3045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor151 = xor i64 %68, %and150, !dbg !3127
    #dbg_value(i64 %xor151, !3045, !DIExpression(), !2967)
  %xor235 = xor i64 %xor234, %xor151, !dbg !3128
  %xor164 = xor i64 %Abu.0, %xor61, !dbg !3129
    #dbg_value(i64 %xor164, !2977, !DIExpression(), !2967)
  %75 = shl i64 %xor164, 27, !dbg !3130
  %76 = lshr i64 %xor164, 37, !dbg !3130
  %77 = or i64 %75, %76, !dbg !3130
    #dbg_value(i64 %77, !3025, !DIExpression(), !2967)
  %xor172 = xor i64 %Ake.0, %xor49, !dbg !3131
    #dbg_value(i64 %xor172, !2991, !DIExpression(), !2967)
  %78 = shl i64 %xor172, 10, !dbg !3132
  %79 = lshr i64 %xor172, 54, !dbg !3132
  %80 = or i64 %78, %79, !dbg !3132
    #dbg_value(i64 %80, !3027, !DIExpression(), !2967)
  %xor168 = xor i64 %Aga.0, %xor45, !dbg !3133
    #dbg_value(i64 %xor168, !2979, !DIExpression(), !2967)
  %81 = shl i64 %xor168, 36, !dbg !3134
  %82 = lshr i64 %xor168, 28, !dbg !3134
  %83 = or i64 %81, %82, !dbg !3134
    #dbg_value(i64 %83, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %83), !3050, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not184 = xor i64 %83, -1, !dbg !3135
    #dbg_value(!DIArgList(i64 %77, i64 %80, i64 %not184), !3050, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and185 = and i64 %80, %not184, !dbg !3136
    #dbg_value(!DIArgList(i64 %77, i64 %and185), !3050, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor186 = xor i64 %77, %and185, !dbg !3137
    #dbg_value(i64 %xor186, !3050, !DIExpression(), !2967)
  %xor236 = xor i64 %xor235, %xor186, !dbg !3138
  %xor199 = xor i64 %Abi.0, %xor53, !dbg !3139
    #dbg_value(i64 %xor199, !2973, !DIExpression(), !2967)
  %84 = shl i64 %xor199, 62, !dbg !3140
  %85 = lshr i64 %xor199, 2, !dbg !3140
  %86 = or i64 %84, %85, !dbg !3140
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %30), !3055, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %30), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %not219 = xor i64 %30, -1, !dbg !3141
    #dbg_value(!DIArgList(i64 %86, i64 %42, i64 %not219), !3055, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %42, i64 %not219), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %and220 = and i64 %42, %not219, !dbg !3142
    #dbg_value(!DIArgList(i64 %86, i64 %and220), !3055, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor236, i64 %86, i64 %and220), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor221 = xor i64 %86, %and220, !dbg !3143
    #dbg_value(i64 %xor221, !3055, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %xor236, i64 %xor221), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor237 = xor i64 %xor236, %xor221, !dbg !3144
    #dbg_value(i64 %xor237, !3025, !DIExpression(), !2967)
  %xor75 = xor i64 %Asu.0, %xor61, !dbg !3145
    #dbg_value(i64 %xor75, !3017, !DIExpression(), !2967)
  %87 = shl i64 %xor75, 14, !dbg !3146
  %88 = lshr i64 %xor75, 50, !dbg !3146
  %89 = or i64 %87, %88, !dbg !3146
    #dbg_value(i64 %89, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %xor62), !3039, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor71 = xor i64 %Amo.0, %xor57, !dbg !3147
    #dbg_value(i64 %xor71, !3005, !DIExpression(), !2967)
  %90 = shl i64 %xor71, 21, !dbg !3148
  %91 = lshr i64 %xor71, 43, !dbg !3148
  %92 = or i64 %90, %91, !dbg !3148
    #dbg_value(i64 %92, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %92), !3037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %54, i64 %92, i64 %48), !3036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %92, i64 %xor62, i64 %89), !3038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not85 = xor i64 %92, -1, !dbg !3149
    #dbg_value(!DIArgList(i64 %48, i64 %89, i64 %not85), !3037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and86 = and i64 %89, %not85, !dbg !3150
    #dbg_value(!DIArgList(i64 %48, i64 %and86), !3037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor87 = xor i64 %48, %and86, !dbg !3151
    #dbg_value(i64 %xor87, !3037, !DIExpression(), !2967)
  %xor110 = xor i64 %Asi.0, %xor53, !dbg !3152
    #dbg_value(i64 %xor110, !3013, !DIExpression(), !2967)
  %93 = shl i64 %xor110, 61, !dbg !3153
  %94 = lshr i64 %xor110, 3, !dbg !3153
  %95 = or i64 %93, %94, !dbg !3153
    #dbg_value(i64 %95, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %59), !3044, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor106 = xor i64 %Ame.0, %xor49, !dbg !3154
    #dbg_value(i64 %xor106, !3001, !DIExpression(), !2967)
  %96 = shl i64 %xor106, 45, !dbg !3155
  %97 = lshr i64 %xor106, 19, !dbg !3155
  %98 = or i64 %96, %97, !dbg !3155
    #dbg_value(i64 %98, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %98), !3042, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %95), !3043, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %65, i64 %98, i64 %62), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not120 = xor i64 %98, -1, !dbg !3156
    #dbg_value(!DIArgList(i64 %62, i64 %95, i64 %not120), !3042, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and121 = and i64 %95, %not120, !dbg !3157
    #dbg_value(!DIArgList(i64 %62, i64 %and121), !3042, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor122 = xor i64 %62, %and121, !dbg !3158
    #dbg_value(i64 %xor122, !3042, !DIExpression(), !2967)
  %xor242 = xor i64 %xor87, %xor122, !dbg !3159
  %xor145 = xor i64 %Asa.0, %xor45, !dbg !3160
    #dbg_value(i64 %xor145, !3009, !DIExpression(), !2967)
  %99 = shl i64 %xor145, 18, !dbg !3161
  %100 = lshr i64 %xor145, 46, !dbg !3161
  %101 = or i64 %99, %100, !dbg !3161
    #dbg_value(i64 %101, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %68), !3049, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor141 = xor i64 %Amu.0, %xor61, !dbg !3162
    #dbg_value(i64 %xor141, !3007, !DIExpression(), !2967)
  %102 = shl i64 %xor141, 8, !dbg !3163
  %103 = lshr i64 %xor141, 56, !dbg !3163
  %104 = or i64 %102, %103, !dbg !3163
    #dbg_value(i64 %104, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %104), !3047, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %74, i64 %104, i64 %71), !3046, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %104, i64 %68, i64 %101), !3048, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not155 = xor i64 %104, -1, !dbg !3164
    #dbg_value(!DIArgList(i64 %71, i64 %101, i64 %not155), !3047, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and156 = and i64 %101, %not155, !dbg !3165
    #dbg_value(!DIArgList(i64 %71, i64 %and156), !3047, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor157 = xor i64 %71, %and156, !dbg !3166
    #dbg_value(i64 %xor157, !3047, !DIExpression(), !2967)
  %xor243 = xor i64 %xor242, %xor157, !dbg !3167
  %xor180 = xor i64 %Aso.0, %xor57, !dbg !3168
    #dbg_value(i64 %xor180, !3015, !DIExpression(), !2967)
  %105 = shl i64 %xor180, 56, !dbg !3169
  %106 = lshr i64 %xor180, 8, !dbg !3169
  %107 = or i64 %105, %106, !dbg !3169
    #dbg_value(i64 %107, !3029, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %77), !3054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor176 = xor i64 %Ami.0, %xor53, !dbg !3170
    #dbg_value(i64 %xor176, !3003, !DIExpression(), !2967)
  %108 = shl i64 %xor176, 15, !dbg !3171
  %109 = lshr i64 %xor176, 49, !dbg !3171
  %110 = or i64 %108, %109, !dbg !3171
    #dbg_value(i64 %110, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %110), !3052, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %83, i64 %110, i64 %80), !3051, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %110, i64 %77, i64 %107), !3053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %48), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %not190 = xor i64 %110, -1, !dbg !3172
    #dbg_value(!DIArgList(i64 %80, i64 %107, i64 %not190), !3052, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and191 = and i64 %107, %not190, !dbg !3173
    #dbg_value(!DIArgList(i64 %80, i64 %and191), !3052, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor192 = xor i64 %80, %and191, !dbg !3174
    #dbg_value(i64 %xor192, !3052, !DIExpression(), !2967)
  %xor244 = xor i64 %xor243, %xor192, !dbg !3175
  %xor215 = xor i64 %Ase.0, %xor49, !dbg !3176
    #dbg_value(i64 %xor215, !3011, !DIExpression(), !2967)
  %111 = shl i64 %xor215, 2, !dbg !3177
  %112 = lshr i64 %xor215, 62, !dbg !3177
  %113 = or i64 %111, %112, !dbg !3177
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %36), !3057, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %86), !3059, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %36, i64 %86, i64 %113), !3058, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %36), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %95), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %xor62), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %not225 = xor i64 %36, -1, !dbg !3178
    #dbg_value(!DIArgList(i64 %42, i64 %113, i64 %not225), !3057, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %113, i64 %not225), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %and226 = and i64 %113, %not225, !dbg !3179
    #dbg_value(!DIArgList(i64 %42, i64 %and226), !3057, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor244, i64 %42, i64 %and226), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor227 = xor i64 %42, %and226, !dbg !3180
    #dbg_value(i64 %xor227, !3057, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %xor244, i64 %xor227), !3027, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor245 = xor i64 %xor244, %xor227, !dbg !3181
    #dbg_value(i64 %xor245, !3027, !DIExpression(), !2967)
  %114 = shl i64 %xor245, 1, !dbg !3182
  %115 = lshr i64 %xor245, 63, !dbg !3182
  %116 = or i64 %114, %115, !dbg !3182
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor237, i64 %116), !3056, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %54, i64 %xor237, i64 %92, i64 %48, i64 %116), !3036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %65, i64 %xor237, i64 %98, i64 %62, i64 %116), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %74, i64 %xor237, i64 %104, i64 %71, i64 %116), !3046, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %83, i64 %xor237, i64 %110, i64 %80, i64 %116), !3051, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor237, i64 %116), !3031, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor261 = xor i64 %xor237, %116, !dbg !3183
    #dbg_value(!DIArgList(i64 %xor224, i64 %xor261), !3056, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %48), !3036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %62), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %71), !3046, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %80), !3051, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 %xor261, !3031, !DIExpression(), !2967)
  %xor429 = xor i64 %xor224, %xor261, !dbg !3184
    #dbg_value(i64 %xor429, !3056, !DIExpression(), !2967)
  %117 = shl i64 %xor429, 2, !dbg !3185
  %118 = lshr i64 %xor429, 62, !dbg !3185
  %119 = or i64 %117, %118, !dbg !3185
    #dbg_value(i64 %119, !3029, !DIExpression(), !2967)
  %not123 = xor i64 %95, -1, !dbg !3186
    #dbg_value(!DIArgList(i64 %98, i64 %59, i64 %not123), !3043, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %59, i64 %not123), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %and124 = and i64 %59, %not123, !dbg !3187
    #dbg_value(!DIArgList(i64 %98, i64 %and124), !3043, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %98, i64 %xor62, i64 %89, i64 %and124), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor125 = xor i64 %98, %and124, !dbg !3188
    #dbg_value(i64 %xor125, !3043, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %89), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %not91 = xor i64 %xor62, -1, !dbg !3189
    #dbg_value(!DIArgList(i64 %89, i64 %54, i64 %not91), !3039, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %54, i64 %not91), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_LLVM_arg, 14, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %and92 = and i64 %54, %not91, !dbg !3190
    #dbg_value(!DIArgList(i64 %89, i64 %and92), !3039, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %89, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59, i64 %and92), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 13, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor93 = xor i64 %89, %and92, !dbg !3191
    #dbg_value(i64 %xor93, !3039, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %59), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %not126 = xor i64 %59, -1, !dbg !3192
    #dbg_value(!DIArgList(i64 %95, i64 %65, i64 %not126), !3044, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %65, i64 %not126), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %and127 = and i64 %65, %not126, !dbg !3193
    #dbg_value(!DIArgList(i64 %95, i64 %and127), !3044, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %95, i64 %and127), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor128 = xor i64 %95, %and127, !dbg !3194
    #dbg_value(i64 %xor128, !3044, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %xor93, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68, i64 %xor128), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor250 = xor i64 %xor93, %xor128, !dbg !3195
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %68), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %not161 = xor i64 %68, -1, !dbg !3196
    #dbg_value(!DIArgList(i64 %101, i64 %74, i64 %not161), !3049, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %74, i64 %not161), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %and162 = and i64 %74, %not161, !dbg !3197
    #dbg_value(!DIArgList(i64 %101, i64 %and162), !3049, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %101, i64 %and162), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor163 = xor i64 %101, %and162, !dbg !3198
    #dbg_value(i64 %xor163, !3049, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %xor250, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77, i64 %xor163), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor251 = xor i64 %xor250, %xor163, !dbg !3199
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %77), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %not196 = xor i64 %77, -1, !dbg !3200
    #dbg_value(!DIArgList(i64 %107, i64 %83, i64 %not196), !3054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %83, i64 %not196), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %and197 = and i64 %83, %not196, !dbg !3201
    #dbg_value(!DIArgList(i64 %107, i64 %and197), !3054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %107, i64 %and197), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor198 = xor i64 %107, %and197, !dbg !3202
    #dbg_value(i64 %xor198, !3054, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %xor251, i64 %113, i64 %30, i64 %86, i64 %xor198), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor252 = xor i64 %xor251, %xor198, !dbg !3203
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %86), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %not231 = xor i64 %86, -1, !dbg !3204
    #dbg_value(!DIArgList(i64 %113, i64 %30, i64 %not231), !3059, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %30, i64 %not231), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %and232 = and i64 %30, %not231, !dbg !3205
    #dbg_value(!DIArgList(i64 %113, i64 %and232), !3059, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor252, i64 %113, i64 %and232), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor233 = xor i64 %113, %and232, !dbg !3206
    #dbg_value(i64 %xor233, !3059, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %xor252, i64 %xor233), !3029, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor253 = xor i64 %xor252, %xor233, !dbg !3207
    #dbg_value(i64 %xor253, !3029, !DIExpression(), !2967)
  %120 = shl i64 %xor253, 1, !dbg !3208
  %121 = lshr i64 %xor253, 63, !dbg !3208
  %122 = or i64 %120, %121, !dbg !3208
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor245, i64 %122), !3043, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %92, i64 %xor245, i64 %xor62, i64 %89, i64 %122), !3038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %104, i64 %xor245, i64 %68, i64 %101, i64 %122), !3048, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %110, i64 %xor245, i64 %77, i64 %107, i64 %122), !3053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %36, i64 %xor245, i64 %86, i64 %113, i64 %122), !3058, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor245, i64 %122), !3033, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor269 = xor i64 %xor245, %122, !dbg !3209
    #dbg_value(!DIArgList(i64 %xor125, i64 %xor269), !3043, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %89), !3038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %101), !3048, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %107), !3053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %113), !3058, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 %xor269, !3033, !DIExpression(), !2967)
  %xor417 = xor i64 %xor125, %xor269, !dbg !3210
    #dbg_value(i64 %xor417, !3043, !DIExpression(), !2967)
  %123 = shl i64 %xor417, 55, !dbg !3211
  %124 = lshr i64 %xor417, 9, !dbg !3211
  %125 = or i64 %123, %124, !dbg !3211
    #dbg_value(i64 %125, !3026, !DIExpression(), !2967)
  %not82 = xor i64 %48, -1, !dbg !3212
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %92, i64 %not82), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %92, i64 %not82), !3036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %and83 = and i64 %92, %not82, !dbg !3213
    #dbg_value(!DIArgList(i64 %54, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62, i64 %and83), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %54, i64 %xor261, i64 %and83), !3036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor84 = xor i64 %54, %and83, !dbg !3214
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %62), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor261), !3036, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %not117 = xor i64 %62, -1, !dbg !3215
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %98, i64 %not117), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_LLVM_arg, 10, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %98, i64 %not117), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %and118 = and i64 %98, %not117, !dbg !3216
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %65, i64 %and118), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %65, i64 %xor261, i64 %and118), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor119 = xor i64 %65, %and118, !dbg !3217
    #dbg_value(!DIArgList(i64 %xor84, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71, i64 %xor119), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor119, i64 %xor261), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor238 = xor i64 %xor84, %xor119, !dbg !3218
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %71), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %not152 = xor i64 %71, -1, !dbg !3219
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %104, i64 %not152), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %104, i64 %not152), !3046, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %and153 = and i64 %104, %not152, !dbg !3220
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %74, i64 %and153), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %74, i64 %xor261, i64 %and153), !3046, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor154 = xor i64 %74, %and153, !dbg !3221
    #dbg_value(!DIArgList(i64 %xor238, i64 %xor224, i64 %83, i64 %110, i64 %80, i64 %xor154), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor154, i64 %xor261), !3046, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor239 = xor i64 %xor238, %xor154, !dbg !3222
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %80), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %not187 = xor i64 %80, -1, !dbg !3223
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %110, i64 %not187), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %110, i64 %not187), !3051, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %and188 = and i64 %110, %not187, !dbg !3224
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %83, i64 %and188), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %83, i64 %xor261, i64 %and188), !3051, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor189 = xor i64 %83, %and188, !dbg !3225
    #dbg_value(!DIArgList(i64 %xor239, i64 %xor224, i64 %xor189), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor189, i64 %xor261), !3051, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor240 = xor i64 %xor239, %xor189, !dbg !3226
    #dbg_value(!DIArgList(i64 %xor240, i64 %xor224), !3026, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor241 = xor i64 %xor240, %xor224, !dbg !3227
    #dbg_value(i64 %xor241, !3026, !DIExpression(), !2967)
  %not88 = xor i64 %89, -1, !dbg !3228
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %xor62, i64 %not88), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_LLVM_arg, 12, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %xor62, i64 %not88), !3038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %and89 = and i64 %xor62, %not88, !dbg !3229
    #dbg_value(!DIArgList(i64 %92, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125, i64 %and89), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 11, DW_OP_xor, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %92, i64 %xor269, i64 %and89), !3038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor90 = xor i64 %92, %and89, !dbg !3230
    #dbg_value(!DIArgList(i64 %xor90, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101, i64 %xor125), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 10, DW_OP_xor, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor90, i64 %xor269), !3038, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor246 = xor i64 %xor90, %xor125, !dbg !3231
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %101), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %not158 = xor i64 %101, -1, !dbg !3232
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %68, i64 %not158), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_LLVM_arg, 9, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %68, i64 %not158), !3048, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %and159 = and i64 %68, %not158, !dbg !3233
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %104, i64 %and159), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_LLVM_arg, 8, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %104, i64 %xor269, i64 %and159), !3048, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor160 = xor i64 %104, %and159, !dbg !3234
    #dbg_value(!DIArgList(i64 %xor246, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107, i64 %xor160), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 7, DW_OP_xor, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor160, i64 %xor269), !3048, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor247 = xor i64 %xor246, %xor160, !dbg !3235
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %107), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %not193 = xor i64 %107, -1, !dbg !3236
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %77, i64 %not193), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %77, i64 %not193), !3053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %and194 = and i64 %77, %not193, !dbg !3237
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %110, i64 %and194), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_xor, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %110, i64 %xor269, i64 %and194), !3053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor195 = xor i64 %110, %and194, !dbg !3238
    #dbg_value(!DIArgList(i64 %xor247, i64 %36, i64 %86, i64 %113, i64 %xor195), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor195, i64 %xor269), !3053, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor248 = xor i64 %xor247, %xor195, !dbg !3239
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %113), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %not228 = xor i64 %113, -1, !dbg !3240
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %86, i64 %not228), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %86, i64 %not228), !3058, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %and229 = and i64 %86, %not228, !dbg !3241
    #dbg_value(!DIArgList(i64 %xor248, i64 %36, i64 %and229), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %36, i64 %xor269, i64 %and229), !3058, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor230 = xor i64 %36, %and229, !dbg !3242
    #dbg_value(!DIArgList(i64 %xor248, i64 %xor230), !3028, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor230, i64 %xor269), !3058, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor249 = xor i64 %xor248, %xor230, !dbg !3243
    #dbg_value(i64 %xor249, !3028, !DIExpression(), !2967)
  %126 = shl i64 %xor249, 1, !dbg !3244
  %127 = lshr i64 %xor249, 63, !dbg !3244
  %128 = or i64 %126, %127, !dbg !3244
    #dbg_value(!DIArgList(i64 %xor241, i64 %128), !3032, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor241, i64 %128), !3037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor241, i64 %128), !3052, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor241, i64 %128), !3042, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor241, i64 %128), !3057, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor241, i64 %128), !3047, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor265 = xor i64 %xor241, %128, !dbg !3245
    #dbg_value(i64 %xor265, !3032, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %xor87, i64 %xor265), !3037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor192, i64 %xor265), !3052, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor122, i64 %xor265), !3042, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor227, i64 %xor265), !3057, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor157, i64 %xor265), !3047, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor413 = xor i64 %xor87, %xor265, !dbg !3246
    #dbg_value(i64 %xor413, !3037, !DIExpression(), !2967)
  %129 = shl i64 %xor413, 62, !dbg !3247
  %130 = lshr i64 %xor413, 2, !dbg !3247
  %131 = or i64 %129, %130, !dbg !3247
    #dbg_value(i64 %131, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %131), !3017, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not445 = xor i64 %131, -1, !dbg !3248
    #dbg_value(!DIArgList(i64 %119, i64 %125, i64 %not445), !3017, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and446 = and i64 %125, %not445, !dbg !3249
    #dbg_value(!DIArgList(i64 %119, i64 %and446), !3017, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor447 = xor i64 %119, %and446, !dbg !3250
    #dbg_value(i64 %xor447, !3017, !DIExpression(), !2967)
  %132 = shl i64 %xor241, 1, !dbg !3251
  %133 = lshr i64 %xor241, 63, !dbg !3251
  %134 = or i64 %132, %133, !dbg !3251
    #dbg_value(!DIArgList(i64 %xor253, i64 %134), !3030, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor253, i64 %134), !3040, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor253, i64 %134), !3055, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor253, i64 %134), !3045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor253, i64 %134), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor253, i64 %134), !3050, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor257 = xor i64 %xor253, %134, !dbg !3252
    #dbg_value(i64 %xor257, !3030, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %xor116, i64 %xor257), !3040, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor221, i64 %xor257), !3055, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor151, i64 %xor257), !3045, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3025, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor81, i64 %xor257), !3035, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor186, i64 %xor257), !3050, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor425 = xor i64 %xor186, %xor257, !dbg !3253
    #dbg_value(i64 %xor425, !3050, !DIExpression(), !2967)
  %135 = shl i64 %xor425, 41, !dbg !3254
  %136 = lshr i64 %xor425, 23, !dbg !3254
  %137 = or i64 %135, %136, !dbg !3254
    #dbg_value(i64 %137, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %119), !3015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not442 = xor i64 %119, -1, !dbg !3255
    #dbg_value(!DIArgList(i64 %137, i64 %131, i64 %not442), !3015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and443 = and i64 %131, %not442, !dbg !3256
    #dbg_value(!DIArgList(i64 %137, i64 %and443), !3015, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor444 = xor i64 %137, %and443, !dbg !3257
    #dbg_value(i64 %xor444, !3015, !DIExpression(), !2967)
  %138 = shl i64 %xor237, 1, !dbg !3258
  %139 = lshr i64 %xor237, 63, !dbg !3258
  %140 = or i64 %138, %139, !dbg !3258
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor249, i64 %140), !3039, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor249, i64 %140), !3054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor249, i64 %140), !3044, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor249, i64 %140), !3059, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor249, i64 %140), !3034, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor249, i64 %140), !3049, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor273 = xor i64 %xor249, %140, !dbg !3259
    #dbg_value(!DIArgList(i64 %xor93, i64 %xor273), !3039, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor198, i64 %xor273), !3054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor128, i64 %xor273), !3044, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor233, i64 %xor273), !3059, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(i64 %xor273, !3034, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %xor163, i64 %xor273), !3049, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor421 = xor i64 %xor163, %xor273, !dbg !3260
    #dbg_value(i64 %xor421, !3049, !DIExpression(), !2967)
  %141 = shl i64 %xor421, 39, !dbg !3261
  %142 = lshr i64 %xor421, 25, !dbg !3261
  %143 = or i64 %141, %142, !dbg !3261
    #dbg_value(i64 %143, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %137), !3013, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %143), !3011, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %125), !3009, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not439 = xor i64 %137, -1, !dbg !3262
    #dbg_value(!DIArgList(i64 %143, i64 %119, i64 %not439), !3013, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and440 = and i64 %119, %not439, !dbg !3263
    #dbg_value(!DIArgList(i64 %143, i64 %and440), !3013, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor441 = xor i64 %143, %and440, !dbg !3264
    #dbg_value(i64 %xor441, !3013, !DIExpression(), !2967)
  %not436 = xor i64 %143, -1, !dbg !3265
    #dbg_value(!DIArgList(i64 %125, i64 %137, i64 %not436), !3011, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and437 = and i64 %137, %not436, !dbg !3266
    #dbg_value(!DIArgList(i64 %125, i64 %and437), !3011, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor438 = xor i64 %125, %and437, !dbg !3267
    #dbg_value(i64 %xor438, !3011, !DIExpression(), !2967)
  %not433 = xor i64 %125, -1, !dbg !3268
    #dbg_value(!DIArgList(i64 %131, i64 %143, i64 %not433), !3009, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and434 = and i64 %143, %not433, !dbg !3269
    #dbg_value(!DIArgList(i64 %131, i64 %and434), !3009, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor435 = xor i64 %131, %and434, !dbg !3270
    #dbg_value(i64 %xor435, !3009, !DIExpression(), !2967)
  %xor394 = xor i64 %xor230, %xor269, !dbg !3271
    #dbg_value(i64 %xor394, !3058, !DIExpression(), !2967)
  %144 = shl i64 %xor394, 56, !dbg !3272
  %145 = lshr i64 %xor394, 8, !dbg !3272
  %146 = or i64 %144, %145, !dbg !3272
    #dbg_value(i64 %146, !3029, !DIExpression(), !2967)
  %xor382 = xor i64 %xor116, %xor257, !dbg !3273
    #dbg_value(i64 %xor382, !3040, !DIExpression(), !2967)
  %147 = shl i64 %xor382, 36, !dbg !3274
  %148 = lshr i64 %xor382, 28, !dbg !3274
  %149 = or i64 %147, %148, !dbg !3274
    #dbg_value(i64 %149, !3026, !DIExpression(), !2967)
  %xor378 = xor i64 %xor93, %xor273, !dbg !3275
    #dbg_value(i64 %xor378, !3039, !DIExpression(), !2967)
  %150 = shl i64 %xor378, 27, !dbg !3276
  %151 = lshr i64 %xor378, 37, !dbg !3276
  %152 = or i64 %150, %151, !dbg !3276
    #dbg_value(i64 %152, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %152), !3007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not410 = xor i64 %152, -1, !dbg !3277
    #dbg_value(!DIArgList(i64 %146, i64 %149, i64 %not410), !3007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and411 = and i64 %149, %not410, !dbg !3278
    #dbg_value(!DIArgList(i64 %146, i64 %and411), !3007, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor412 = xor i64 %146, %and411, !dbg !3279
    #dbg_value(i64 %xor412, !3007, !DIExpression(), !2967)
  %xor390 = xor i64 %xor192, %xor265, !dbg !3280
    #dbg_value(i64 %xor390, !3052, !DIExpression(), !2967)
  %153 = shl i64 %xor390, 15, !dbg !3281
  %154 = lshr i64 %xor390, 49, !dbg !3281
  %155 = or i64 %153, %154, !dbg !3281
    #dbg_value(i64 %155, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %146), !3005, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not407 = xor i64 %146, -1, !dbg !3282
    #dbg_value(!DIArgList(i64 %155, i64 %152, i64 %not407), !3005, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and408 = and i64 %152, %not407, !dbg !3283
    #dbg_value(!DIArgList(i64 %155, i64 %and408), !3005, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor409 = xor i64 %155, %and408, !dbg !3284
    #dbg_value(i64 %xor409, !3005, !DIExpression(), !2967)
  %xor386 = xor i64 %xor154, %xor261, !dbg !3285
    #dbg_value(i64 %xor386, !3046, !DIExpression(), !2967)
  %156 = shl i64 %xor386, 10, !dbg !3286
  %157 = lshr i64 %xor386, 54, !dbg !3286
  %158 = or i64 %156, %157, !dbg !3286
    #dbg_value(i64 %158, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %155), !3003, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %158), !3001, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %149), !2999, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not404 = xor i64 %155, -1, !dbg !3287
    #dbg_value(!DIArgList(i64 %158, i64 %146, i64 %not404), !3003, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and405 = and i64 %146, %not404, !dbg !3288
    #dbg_value(!DIArgList(i64 %158, i64 %and405), !3003, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor406 = xor i64 %158, %and405, !dbg !3289
    #dbg_value(i64 %xor406, !3003, !DIExpression(), !2967)
  %not401 = xor i64 %158, -1, !dbg !3290
    #dbg_value(!DIArgList(i64 %149, i64 %155, i64 %not401), !3001, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and402 = and i64 %155, %not401, !dbg !3291
    #dbg_value(!DIArgList(i64 %149, i64 %and402), !3001, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor403 = xor i64 %149, %and402, !dbg !3292
    #dbg_value(i64 %xor403, !3001, !DIExpression(), !2967)
  %not398 = xor i64 %149, -1, !dbg !3293
    #dbg_value(!DIArgList(i64 %152, i64 %158, i64 %not398), !2999, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and399 = and i64 %158, %not398, !dbg !3294
    #dbg_value(!DIArgList(i64 %152, i64 %and399), !2999, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor400 = xor i64 %152, %and399, !dbg !3295
    #dbg_value(i64 %xor400, !2999, !DIExpression(), !2967)
  %xor359 = xor i64 %xor221, %xor257, !dbg !3296
    #dbg_value(i64 %xor359, !3055, !DIExpression(), !2967)
  %159 = shl i64 %xor359, 18, !dbg !3297
  %160 = lshr i64 %xor359, 46, !dbg !3297
  %161 = or i64 %159, %160, !dbg !3297
    #dbg_value(i64 %161, !3029, !DIExpression(), !2967)
  %xor347 = xor i64 %xor122, %xor265, !dbg !3298
    #dbg_value(i64 %xor347, !3042, !DIExpression(), !2967)
  %162 = shl i64 %xor347, 6, !dbg !3299
  %163 = lshr i64 %xor347, 58, !dbg !3299
  %164 = or i64 %162, %163, !dbg !3299
    #dbg_value(i64 %164, !3026, !DIExpression(), !2967)
  %xor343 = xor i64 %xor84, %xor261, !dbg !3300
    #dbg_value(i64 %xor343, !3036, !DIExpression(), !2967)
  %165 = shl i64 %xor343, 1, !dbg !3301
  %166 = lshr i64 %xor343, 63, !dbg !3301
  %167 = or i64 %165, %166, !dbg !3301
    #dbg_value(i64 %167, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %167), !2997, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not375 = xor i64 %167, -1, !dbg !3302
    #dbg_value(!DIArgList(i64 %161, i64 %164, i64 %not375), !2997, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and376 = and i64 %164, %not375, !dbg !3303
    #dbg_value(!DIArgList(i64 %161, i64 %and376), !2997, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor377 = xor i64 %161, %and376, !dbg !3304
    #dbg_value(i64 %xor377, !2997, !DIExpression(), !2967)
  %xor355 = xor i64 %xor198, %xor273, !dbg !3305
    #dbg_value(i64 %xor355, !3054, !DIExpression(), !2967)
  %168 = shl i64 %xor355, 8, !dbg !3306
  %169 = lshr i64 %xor355, 56, !dbg !3306
  %170 = or i64 %168, %169, !dbg !3306
    #dbg_value(i64 %170, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %161), !2995, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not372 = xor i64 %161, -1, !dbg !3307
    #dbg_value(!DIArgList(i64 %170, i64 %167, i64 %not372), !2995, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and373 = and i64 %167, %not372, !dbg !3308
    #dbg_value(!DIArgList(i64 %170, i64 %and373), !2995, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor374 = xor i64 %170, %and373, !dbg !3309
    #dbg_value(i64 %xor374, !2995, !DIExpression(), !2967)
  %xor351 = xor i64 %xor160, %xor269, !dbg !3310
    #dbg_value(i64 %xor351, !3048, !DIExpression(), !2967)
  %171 = shl i64 %xor351, 25, !dbg !3311
  %172 = lshr i64 %xor351, 39, !dbg !3311
  %173 = or i64 %171, %172, !dbg !3311
    #dbg_value(i64 %173, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %170), !2993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %173), !2991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %164), !2989, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not369 = xor i64 %170, -1, !dbg !3312
    #dbg_value(!DIArgList(i64 %173, i64 %161, i64 %not369), !2993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and370 = and i64 %161, %not369, !dbg !3313
    #dbg_value(!DIArgList(i64 %173, i64 %and370), !2993, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor371 = xor i64 %173, %and370, !dbg !3314
    #dbg_value(i64 %xor371, !2993, !DIExpression(), !2967)
  %not366 = xor i64 %173, -1, !dbg !3315
    #dbg_value(!DIArgList(i64 %164, i64 %170, i64 %not366), !2991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and367 = and i64 %170, %not366, !dbg !3316
    #dbg_value(!DIArgList(i64 %164, i64 %and367), !2991, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor368 = xor i64 %164, %and367, !dbg !3317
    #dbg_value(i64 %xor368, !2991, !DIExpression(), !2967)
  %not363 = xor i64 %164, -1, !dbg !3318
    #dbg_value(!DIArgList(i64 %167, i64 %173, i64 %not363), !2989, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and364 = and i64 %173, %not363, !dbg !3319
    #dbg_value(!DIArgList(i64 %167, i64 %and364), !2989, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor365 = xor i64 %167, %and364, !dbg !3320
    #dbg_value(i64 %xor365, !2989, !DIExpression(), !2967)
  %xor324 = xor i64 %xor227, %xor265, !dbg !3321
    #dbg_value(i64 %xor324, !3057, !DIExpression(), !2967)
  %174 = shl i64 %xor324, 61, !dbg !3322
  %175 = lshr i64 %xor324, 3, !dbg !3322
  %176 = or i64 %174, %175, !dbg !3322
    #dbg_value(i64 %176, !3029, !DIExpression(), !2967)
  %xor312 = xor i64 %xor128, %xor273, !dbg !3323
    #dbg_value(i64 %xor312, !3044, !DIExpression(), !2967)
  %177 = shl i64 %xor312, 20, !dbg !3324
  %178 = lshr i64 %xor312, 44, !dbg !3324
  %179 = or i64 %177, %178, !dbg !3324
    #dbg_value(i64 %179, !3026, !DIExpression(), !2967)
  %xor308 = xor i64 %xor90, %xor269, !dbg !3325
    #dbg_value(i64 %xor308, !3038, !DIExpression(), !2967)
  %180 = shl i64 %xor308, 28, !dbg !3326
  %181 = lshr i64 %xor308, 36, !dbg !3326
  %182 = or i64 %180, %181, !dbg !3326
    #dbg_value(i64 %182, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %182), !2987, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not340 = xor i64 %182, -1, !dbg !3327
    #dbg_value(!DIArgList(i64 %176, i64 %179, i64 %not340), !2987, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and341 = and i64 %179, %not340, !dbg !3328
    #dbg_value(!DIArgList(i64 %176, i64 %and341), !2987, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor342 = xor i64 %176, %and341, !dbg !3329
    #dbg_value(i64 %xor342, !2987, !DIExpression(), !2967)
  %xor320 = xor i64 %xor189, %xor261, !dbg !3330
    #dbg_value(i64 %xor320, !3051, !DIExpression(), !2967)
  %183 = shl i64 %xor320, 45, !dbg !3331
  %184 = lshr i64 %xor320, 19, !dbg !3331
  %185 = or i64 %183, %184, !dbg !3331
    #dbg_value(i64 %185, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %176), !2985, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not337 = xor i64 %176, -1, !dbg !3332
    #dbg_value(!DIArgList(i64 %185, i64 %182, i64 %not337), !2985, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and338 = and i64 %182, %not337, !dbg !3333
    #dbg_value(!DIArgList(i64 %185, i64 %and338), !2985, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor339 = xor i64 %185, %and338, !dbg !3334
    #dbg_value(i64 %xor339, !2985, !DIExpression(), !2967)
  %xor316 = xor i64 %xor151, %xor257, !dbg !3335
    #dbg_value(i64 %xor316, !3045, !DIExpression(), !2967)
  %186 = shl i64 %xor316, 3, !dbg !3336
  %187 = lshr i64 %xor316, 61, !dbg !3336
  %188 = or i64 %186, %187, !dbg !3336
    #dbg_value(i64 %188, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %185), !2983, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %188), !2981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %179), !2979, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not334 = xor i64 %185, -1, !dbg !3337
    #dbg_value(!DIArgList(i64 %188, i64 %176, i64 %not334), !2983, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and335 = and i64 %176, %not334, !dbg !3338
    #dbg_value(!DIArgList(i64 %188, i64 %and335), !2983, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor336 = xor i64 %188, %and335, !dbg !3339
    #dbg_value(i64 %xor336, !2983, !DIExpression(), !2967)
  %not331 = xor i64 %188, -1, !dbg !3340
    #dbg_value(!DIArgList(i64 %179, i64 %185, i64 %not331), !2981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and332 = and i64 %185, %not331, !dbg !3341
    #dbg_value(!DIArgList(i64 %179, i64 %and332), !2981, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor333 = xor i64 %179, %and332, !dbg !3342
    #dbg_value(i64 %xor333, !2981, !DIExpression(), !2967)
  %not328 = xor i64 %179, -1, !dbg !3343
    #dbg_value(!DIArgList(i64 %182, i64 %188, i64 %not328), !2979, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and329 = and i64 %188, %not328, !dbg !3344
    #dbg_value(!DIArgList(i64 %182, i64 %and329), !2979, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor330 = xor i64 %182, %and329, !dbg !3345
    #dbg_value(i64 %xor330, !2979, !DIExpression(), !2967)
  %xor287 = xor i64 %xor233, %xor273, !dbg !3346
    #dbg_value(i64 %xor287, !3059, !DIExpression(), !2967)
  %189 = shl i64 %xor287, 14, !dbg !3347
  %190 = lshr i64 %xor287, 50, !dbg !3347
  %191 = or i64 %189, %190, !dbg !3347
    #dbg_value(i64 %191, !3029, !DIExpression(), !2967)
  %xor275 = xor i64 %xor119, %xor261, !dbg !3348
    #dbg_value(i64 %xor275, !3041, !DIExpression(), !2967)
  %192 = shl i64 %xor275, 44, !dbg !3349
  %193 = lshr i64 %xor275, 20, !dbg !3349
  %194 = or i64 %192, %193, !dbg !3349
    #dbg_value(i64 %194, !3026, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor81, i64 %xor257), !2977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_xor, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor274 = xor i64 %xor81, %xor257, !dbg !3350
    #dbg_value(i64 %xor274, !3035, !DIExpression(), !2967)
    #dbg_value(i64 %xor274, !3025, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %xor274), !2977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not305 = xor i64 %xor274, -1, !dbg !3351
    #dbg_value(!DIArgList(i64 %191, i64 %194, i64 %not305), !2977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and306 = and i64 %194, %not305, !dbg !3352
    #dbg_value(!DIArgList(i64 %191, i64 %and306), !2977, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor307 = xor i64 %191, %and306, !dbg !3353
    #dbg_value(i64 %xor307, !2977, !DIExpression(), !2967)
  %xor283 = xor i64 %xor195, %xor269, !dbg !3354
    #dbg_value(i64 %xor283, !3053, !DIExpression(), !2967)
  %195 = shl i64 %xor283, 21, !dbg !3355
  %196 = lshr i64 %xor283, 43, !dbg !3355
  %197 = or i64 %195, %196, !dbg !3355
    #dbg_value(i64 %197, !3028, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %191), !2975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not302 = xor i64 %191, -1, !dbg !3356
    #dbg_value(!DIArgList(i64 %197, i64 %xor274, i64 %not302), !2975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and303 = and i64 %xor274, %not302, !dbg !3357
    #dbg_value(!DIArgList(i64 %197, i64 %and303), !2975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor304 = xor i64 %197, %and303, !dbg !3358
    #dbg_value(i64 %xor304, !2975, !DIExpression(), !2967)
  %xor279 = xor i64 %xor157, %xor265, !dbg !3359
    #dbg_value(i64 %xor279, !3047, !DIExpression(), !2967)
  %198 = shl i64 %xor279, 43, !dbg !3360
  %199 = lshr i64 %xor279, 21, !dbg !3360
  %200 = or i64 %198, %199, !dbg !3360
    #dbg_value(i64 %200, !3027, !DIExpression(), !2967)
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %197), !2973, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %200), !2971, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
    #dbg_value(!DIArgList(i64 %xor274, i64 %200, i64 %194), !2969, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %not299 = xor i64 %197, -1, !dbg !3361
    #dbg_value(!DIArgList(i64 %200, i64 %191, i64 %not299), !2973, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and300 = and i64 %191, %not299, !dbg !3362
    #dbg_value(!DIArgList(i64 %200, i64 %and300), !2973, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor301 = xor i64 %200, %and300, !dbg !3363
    #dbg_value(i64 %xor301, !2973, !DIExpression(), !2967)
  %not296 = xor i64 %200, -1, !dbg !3364
    #dbg_value(!DIArgList(i64 %194, i64 %197, i64 %not296), !2971, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_xor, DW_OP_stack_value), !2967)
  %and297 = and i64 %197, %not296, !dbg !3365
    #dbg_value(!DIArgList(i64 %194, i64 %and297), !2971, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %xor298 = xor i64 %194, %and297, !dbg !3366
    #dbg_value(i64 %xor298, !2971, !DIExpression(), !2967)
  %add = or disjoint i32 %round.0, 1, !dbg !3367
  %arrayidx294 = getelementptr inbounds nuw [24 x i64], ptr @pqcrystals_dilithium_fips202_ref_KeccakF_RoundConstants, i32 0, i32 %add, !dbg !3368
  %201 = load i64, ptr %arrayidx294, align 8, !dbg !3368
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %194), !2969, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %not291 = xor i64 %194, -1, !dbg !3369
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %200, i64 %not291), !2969, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_and, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %and292 = and i64 %200, %not291, !dbg !3370
    #dbg_value(!DIArgList(i64 %xor274, i64 %201, i64 %and292), !2969, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_xor, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value), !2967)
  %202 = xor i64 %and292, %201, !dbg !3371
  %xor295 = xor i64 %202, %xor274, !dbg !3371
    #dbg_value(i64 %xor295, !2969, !DIExpression(), !2967)
  %add448 = add nuw nsw i32 %round.0, 2, !dbg !3372
    #dbg_value(i32 %add448, !3018, !DIExpression(), !2967)
  br label %for.cond, !dbg !3373, !llvm.loop !3374

for.end:                                          ; preds = %for.cond
  %Aso.0.lcssa = phi i64 [ %Aso.0, %for.cond ], !dbg !2967
  %Asi.0.lcssa = phi i64 [ %Asi.0, %for.cond ], !dbg !2967
  %Ase.0.lcssa = phi i64 [ %Ase.0, %for.cond ], !dbg !2967
  %Asa.0.lcssa = phi i64 [ %Asa.0, %for.cond ], !dbg !2967
  %Amu.0.lcssa = phi i64 [ %Amu.0, %for.cond ], !dbg !2967
  %Amo.0.lcssa = phi i64 [ %Amo.0, %for.cond ], !dbg !2967
  %Ami.0.lcssa = phi i64 [ %Ami.0, %for.cond ], !dbg !2967
  %Ame.0.lcssa = phi i64 [ %Ame.0, %for.cond ], !dbg !2967
  %Ama.0.lcssa = phi i64 [ %Ama.0, %for.cond ], !dbg !2967
  %Aku.0.lcssa = phi i64 [ %Aku.0, %for.cond ], !dbg !2967
  %Ako.0.lcssa = phi i64 [ %Ako.0, %for.cond ], !dbg !2967
  %Aki.0.lcssa = phi i64 [ %Aki.0, %for.cond ], !dbg !2967
  %Ake.0.lcssa = phi i64 [ %Ake.0, %for.cond ], !dbg !2967
  %Aka.0.lcssa = phi i64 [ %Aka.0, %for.cond ], !dbg !2967
  %Agu.0.lcssa = phi i64 [ %Agu.0, %for.cond ], !dbg !2967
  %Ago.0.lcssa = phi i64 [ %Ago.0, %for.cond ], !dbg !2967
  %Agi.0.lcssa = phi i64 [ %Agi.0, %for.cond ], !dbg !2967
  %Age.0.lcssa = phi i64 [ %Age.0, %for.cond ], !dbg !2967
  %Aga.0.lcssa = phi i64 [ %Aga.0, %for.cond ], !dbg !2967
  %Abu.0.lcssa = phi i64 [ %Abu.0, %for.cond ], !dbg !2967
  %Abo.0.lcssa = phi i64 [ %Abo.0, %for.cond ], !dbg !2967
  %Abi.0.lcssa = phi i64 [ %Abi.0, %for.cond ], !dbg !2967
  %Abe.0.lcssa = phi i64 [ %Abe.0, %for.cond ], !dbg !2967
  %Aba.0.lcssa = phi i64 [ %Aba.0, %for.cond ], !dbg !2967
  %Asu.0.lcssa = phi i64 [ %Asu.0, %for.cond ], !dbg !2967
  store i64 %Aba.0.lcssa, ptr %state, align 8, !dbg !3376
  %arrayidx450 = getelementptr inbounds nuw i8, ptr %state, i32 8, !dbg !3377
  store i64 %Abe.0.lcssa, ptr %arrayidx450, align 8, !dbg !3378
  %arrayidx451 = getelementptr inbounds nuw i8, ptr %state, i32 16, !dbg !3379
  store i64 %Abi.0.lcssa, ptr %arrayidx451, align 8, !dbg !3380
  %arrayidx452 = getelementptr inbounds nuw i8, ptr %state, i32 24, !dbg !3381
  store i64 %Abo.0.lcssa, ptr %arrayidx452, align 8, !dbg !3382
  %arrayidx453 = getelementptr inbounds nuw i8, ptr %state, i32 32, !dbg !3383
  store i64 %Abu.0.lcssa, ptr %arrayidx453, align 8, !dbg !3384
  %arrayidx454 = getelementptr inbounds nuw i8, ptr %state, i32 40, !dbg !3385
  store i64 %Aga.0.lcssa, ptr %arrayidx454, align 8, !dbg !3386
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %state, i32 48, !dbg !3387
  store i64 %Age.0.lcssa, ptr %arrayidx455, align 8, !dbg !3388
  %arrayidx456 = getelementptr inbounds nuw i8, ptr %state, i32 56, !dbg !3389
  store i64 %Agi.0.lcssa, ptr %arrayidx456, align 8, !dbg !3390
  %arrayidx457 = getelementptr inbounds nuw i8, ptr %state, i32 64, !dbg !3391
  store i64 %Ago.0.lcssa, ptr %arrayidx457, align 8, !dbg !3392
  %arrayidx458 = getelementptr inbounds nuw i8, ptr %state, i32 72, !dbg !3393
  store i64 %Agu.0.lcssa, ptr %arrayidx458, align 8, !dbg !3394
  %arrayidx459 = getelementptr inbounds nuw i8, ptr %state, i32 80, !dbg !3395
  store i64 %Aka.0.lcssa, ptr %arrayidx459, align 8, !dbg !3396
  %arrayidx460 = getelementptr inbounds nuw i8, ptr %state, i32 88, !dbg !3397
  store i64 %Ake.0.lcssa, ptr %arrayidx460, align 8, !dbg !3398
  %arrayidx461 = getelementptr inbounds nuw i8, ptr %state, i32 96, !dbg !3399
  store i64 %Aki.0.lcssa, ptr %arrayidx461, align 8, !dbg !3400
  %arrayidx462 = getelementptr inbounds nuw i8, ptr %state, i32 104, !dbg !3401
  store i64 %Ako.0.lcssa, ptr %arrayidx462, align 8, !dbg !3402
  %arrayidx463 = getelementptr inbounds nuw i8, ptr %state, i32 112, !dbg !3403
  store i64 %Aku.0.lcssa, ptr %arrayidx463, align 8, !dbg !3404
  %arrayidx464 = getelementptr inbounds nuw i8, ptr %state, i32 120, !dbg !3405
  store i64 %Ama.0.lcssa, ptr %arrayidx464, align 8, !dbg !3406
  %arrayidx465 = getelementptr inbounds nuw i8, ptr %state, i32 128, !dbg !3407
  store i64 %Ame.0.lcssa, ptr %arrayidx465, align 8, !dbg !3408
  %arrayidx466 = getelementptr inbounds nuw i8, ptr %state, i32 136, !dbg !3409
  store i64 %Ami.0.lcssa, ptr %arrayidx466, align 8, !dbg !3410
  %arrayidx467 = getelementptr inbounds nuw i8, ptr %state, i32 144, !dbg !3411
  store i64 %Amo.0.lcssa, ptr %arrayidx467, align 8, !dbg !3412
  %arrayidx468 = getelementptr inbounds nuw i8, ptr %state, i32 152, !dbg !3413
  store i64 %Amu.0.lcssa, ptr %arrayidx468, align 8, !dbg !3414
  %arrayidx469 = getelementptr inbounds nuw i8, ptr %state, i32 160, !dbg !3415
  store i64 %Asa.0.lcssa, ptr %arrayidx469, align 8, !dbg !3416
  %arrayidx470 = getelementptr inbounds nuw i8, ptr %state, i32 168, !dbg !3417
  store i64 %Ase.0.lcssa, ptr %arrayidx470, align 8, !dbg !3418
  %arrayidx471 = getelementptr inbounds nuw i8, ptr %state, i32 176, !dbg !3419
  store i64 %Asi.0.lcssa, ptr %arrayidx471, align 8, !dbg !3420
  %arrayidx472 = getelementptr inbounds nuw i8, ptr %state, i32 184, !dbg !3421
  store i64 %Aso.0.lcssa, ptr %arrayidx472, align 8, !dbg !3422
  %arrayidx473 = getelementptr inbounds nuw i8, ptr %state, i32 192, !dbg !3423
  store i64 %Asu.0.lcssa, ptr %arrayidx473, align 8, !dbg !3424
  ret void, !dbg !3425
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3426 {
entry:
    #dbg_value(ptr %state, !3427, !DIExpression(), !3428)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3429
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3429
  %conv = trunc i64 %0 to i32, !dbg !3430
  call fastcc void @keccak_finalize(ptr noundef %state, i32 noundef %conv, i32 noundef 168, i8 noundef zeroext 31) #4, !dbg !3431
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3432
  store i64 168, ptr %arrayidx1, align 8, !dbg !3433
  ret void, !dbg !3434
}

; Function Attrs: nounwind
define internal fastcc void @keccak_finalize(ptr noundef %s, i32 noundef %pos, i32 noundef range(i32 136, 169) %r, i8 noundef zeroext %p) unnamed_addr #0 !dbg !3435 {
entry:
    #dbg_value(ptr %s, !3438, !DIExpression(), !3439)
    #dbg_value(i32 %pos, !3440, !DIExpression(), !3439)
    #dbg_value(i32 %r, !3441, !DIExpression(), !3439)
    #dbg_value(i8 31, !3442, !DIExpression(), !3439)
  %rem = shl i32 %pos, 3, !dbg !3443
  %mul = and i32 %rem, 56, !dbg !3443
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3444
  %shl = shl nuw nsw i64 31, %sh_prom, !dbg !3444
  %div2 = lshr i32 %pos, 3, !dbg !3445
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %div2, !dbg !3446
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3447
  %xor = xor i64 %0, %shl, !dbg !3447
  store i64 %xor, ptr %arrayidx, align 8, !dbg !3447
  %div13 = lshr i32 %r, 3, !dbg !3448
  %1 = getelementptr i64, ptr %s, i32 %div13, !dbg !3449
  %arrayidx2 = getelementptr i8, ptr %1, i32 -8, !dbg !3449
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !3450
  %xor3 = xor i64 %2, -9223372036854775808, !dbg !3450
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !3450
  ret void, !dbg !3451
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3452 {
entry:
    #dbg_value(ptr %out, !3455, !DIExpression(), !3456)
    #dbg_value(i32 %outlen, !3457, !DIExpression(), !3456)
    #dbg_value(ptr %state, !3458, !DIExpression(), !3456)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3459
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3459
  %conv = trunc i64 %0 to i32, !dbg !3460
  %call = call fastcc i32 @keccak_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state, i32 noundef %conv, i32 noundef 168) #4, !dbg !3461
    #dbg_value(i32 %call, !3462, !DIExpression(), !3456)
  %conv1 = zext i32 %call to i64, !dbg !3463
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3464
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !3465
  ret void, !dbg !3466
}

; Function Attrs: nounwind
define internal fastcc i32 @keccak_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %s, i32 noundef %pos, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3467 {
entry:
    #dbg_value(ptr %out, !3470, !DIExpression(), !3471)
    #dbg_value(i32 %outlen, !3472, !DIExpression(), !3471)
    #dbg_value(ptr %s, !3473, !DIExpression(), !3471)
    #dbg_value(i32 %pos, !3474, !DIExpression(), !3471)
    #dbg_value(i32 %r, !3475, !DIExpression(), !3471)
  br label %while.cond, !dbg !3476

while.cond:                                       ; preds = %for.end, %entry
  %pos.addr.0 = phi i32 [ %pos, %entry ], [ %i.0.lcssa, %for.end ]
  %outlen.addr.0 = phi i32 [ %outlen, %entry ], [ %sub3, %for.end ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %out.addr.1.lcssa, %for.end ]
    #dbg_value(ptr %out.addr.0, !3470, !DIExpression(), !3471)
    #dbg_value(i32 %outlen.addr.0, !3472, !DIExpression(), !3471)
    #dbg_value(i32 %pos.addr.0, !3474, !DIExpression(), !3471)
  %tobool.not = icmp eq i32 %outlen.addr.0, 0, !dbg !3476
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !3476

while.body:                                       ; preds = %while.cond
  %cmp = icmp eq i32 %pos.addr.0, %r, !dbg !3477
  br i1 %cmp, label %if.then, label %if.end, !dbg !3477

if.then:                                          ; preds = %while.body
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !3480
    #dbg_value(i32 0, !3474, !DIExpression(), !3471)
  br label %if.end, !dbg !3482

if.end:                                           ; preds = %if.then, %while.body
  %pos.addr.1 = phi i32 [ 0, %if.then ], [ %pos.addr.0, %while.body ]
    #dbg_value(i32 %pos.addr.1, !3474, !DIExpression(), !3471)
    #dbg_value(i32 %pos.addr.1, !3483, !DIExpression(), !3471)
  br label %for.cond, !dbg !3484

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ %pos.addr.1, %if.end ], [ %inc, %for.body ], !dbg !3486
  %out.addr.1 = phi ptr [ %out.addr.0, %if.end ], [ %incdec.ptr, %for.body ]
    #dbg_value(ptr %out.addr.1, !3470, !DIExpression(), !3471)
    #dbg_value(i32 %i.0, !3483, !DIExpression(), !3471)
  %cmp1 = icmp ult i32 %i.0, %r, !dbg !3487
  %add = add i32 %pos.addr.1, %outlen.addr.0, !dbg !3489
  %cmp2 = icmp ult i32 %i.0, %add, !dbg !3489
  %0 = and i1 %cmp1, %cmp2, !dbg !3489
  br i1 %0, label %for.body, label %for.end, !dbg !3490

for.body:                                         ; preds = %for.cond
  %div1 = lshr i32 %i.0, 3, !dbg !3491
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %div1, !dbg !3492
  %1 = load i64, ptr %arrayidx, align 8, !dbg !3492
  %rem = shl nuw nsw i32 %i.0, 3, !dbg !3493
  %mul = and i32 %rem, 56, !dbg !3493
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3494
  %shr = lshr i64 %1, %sh_prom, !dbg !3494
  %conv = trunc i64 %shr to i8, !dbg !3492
    #dbg_value(ptr %out.addr.1, !3470, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3471)
  store i8 %conv, ptr %out.addr.1, align 1, !dbg !3495
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %out.addr.1, i32 1, !dbg !3496
    #dbg_value(ptr %incdec.ptr, !3470, !DIExpression(), !3471)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3497
    #dbg_value(i32 %inc, !3483, !DIExpression(), !3471)
  br label %for.cond, !dbg !3498, !llvm.loop !3499

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3486
  %out.addr.1.lcssa = phi ptr [ %out.addr.1, %for.cond ]
  %sub.neg = sub i32 %pos.addr.1, %i.0.lcssa, !dbg !3501
  %sub3 = add i32 %sub.neg, %outlen.addr.0, !dbg !3502
    #dbg_value(i32 %sub3, !3472, !DIExpression(), !3471)
    #dbg_value(i32 %i.0.lcssa, !3474, !DIExpression(), !3471)
  br label %while.cond, !dbg !3476, !llvm.loop !3503

while.end:                                        ; preds = %while.cond
  %pos.addr.0.lcssa = phi i32 [ %pos.addr.0, %while.cond ]
  ret i32 %pos.addr.0.lcssa, !dbg !3505
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_absorb_once(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3506 {
entry:
    #dbg_value(ptr %state, !3507, !DIExpression(), !3508)
    #dbg_value(ptr %in, !3509, !DIExpression(), !3508)
    #dbg_value(i32 %inlen, !3510, !DIExpression(), !3508)
  call fastcc void @keccak_absorb_once(ptr noundef %state, i32 noundef 168, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !3511
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3512
  store i64 168, ptr %arrayidx, align 8, !dbg !3513
  ret void, !dbg !3514
}

; Function Attrs: nounwind
define internal fastcc void @keccak_absorb_once(ptr noundef %s, i32 noundef range(i32 72, 169) %r, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext range(i8 6, 32) %p) unnamed_addr #0 !dbg !3515 {
entry:
    #dbg_value(ptr %s, !3518, !DIExpression(), !3519)
    #dbg_value(i32 %r, !3520, !DIExpression(), !3519)
    #dbg_value(ptr %in, !3521, !DIExpression(), !3519)
    #dbg_value(i32 %inlen, !3522, !DIExpression(), !3519)
    #dbg_value(i8 %p, !3523, !DIExpression(), !3519)
    #dbg_value(i32 0, !3524, !DIExpression(), !3519)
  br label %for.cond, !dbg !3525

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3527
    #dbg_value(i32 %i.0, !3524, !DIExpression(), !3519)
  %exitcond = icmp ne i32 %i.0, 25, !dbg !3528
  br i1 %exitcond, label %for.body, label %while.cond.preheader, !dbg !3530

while.cond.preheader:                             ; preds = %for.cond
  %0 = lshr i32 %r, 3, !dbg !3531
  br label %while.cond, !dbg !3531

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !3532
  store i64 0, ptr %arrayidx, align 8, !dbg !3533
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3534
    #dbg_value(i32 %inc, !3524, !DIExpression(), !3519)
  br label %for.cond, !dbg !3535, !llvm.loop !3536

while.cond:                                       ; preds = %while.cond.preheader, %for.end8
  %in.addr.0 = phi ptr [ %add.ptr9, %for.end8 ], [ %in, %while.cond.preheader ]
  %inlen.addr.0 = phi i32 [ %sub, %for.end8 ], [ %inlen, %while.cond.preheader ]
    #dbg_value(i32 %inlen.addr.0, !3522, !DIExpression(), !3519)
    #dbg_value(ptr %in.addr.0, !3521, !DIExpression(), !3519)
  %cmp1.not = icmp ult i32 %inlen.addr.0, %r, !dbg !3538
  br i1 %cmp1.not, label %for.cond10.preheader, label %for.cond2.preheader, !dbg !3531

for.cond2.preheader:                              ; preds = %while.cond
  br label %for.cond2, !dbg !3539

for.cond10.preheader:                             ; preds = %while.cond
  %inlen.addr.0.lcssa6 = phi i32 [ %inlen.addr.0, %while.cond ]
  %in.addr.0.lcssa = phi ptr [ %in.addr.0, %while.cond ]
  br label %for.cond10, !dbg !3542

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %i.1 = phi i32 [ %inc7, %for.body4 ], [ 0, %for.cond2.preheader ], !dbg !3544
    #dbg_value(i32 %i.1, !3524, !DIExpression(), !3519)
  %exitcond5 = icmp ne i32 %i.1, %0, !dbg !3545
  br i1 %exitcond5, label %for.body4, label %for.end8, !dbg !3539

for.body4:                                        ; preds = %for.cond2
  %mul = shl nuw nsw i32 %i.1, 3, !dbg !3547
  %add.ptr = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 %mul, !dbg !3548
  %call = call fastcc i64 @load64(ptr noundef %add.ptr) #4, !dbg !3549
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %s, i32 %i.1, !dbg !3550
  %1 = load i64, ptr %arrayidx5, align 8, !dbg !3551
  %xor = xor i64 %1, %call, !dbg !3551
  store i64 %xor, ptr %arrayidx5, align 8, !dbg !3551
  %inc7 = add nuw nsw i32 %i.1, 1, !dbg !3552
    #dbg_value(i32 %inc7, !3524, !DIExpression(), !3519)
  br label %for.cond2, !dbg !3553, !llvm.loop !3554

for.end8:                                         ; preds = %for.cond2
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %in.addr.0, i32 %r, !dbg !3556
    #dbg_value(ptr %add.ptr9, !3521, !DIExpression(), !3519)
  %sub = sub i32 %inlen.addr.0, %r, !dbg !3557
    #dbg_value(i32 %sub, !3522, !DIExpression(), !3519)
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !3558
  br label %while.cond, !dbg !3531, !llvm.loop !3559

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %i.2 = phi i32 [ %inc19, %for.body12 ], [ 0, %for.cond10.preheader ], !dbg !3561
    #dbg_value(i32 %i.2, !3524, !DIExpression(), !3519)
  %exitcond7 = icmp ne i32 %i.2, %inlen.addr.0.lcssa6, !dbg !3562
  br i1 %exitcond7, label %for.body12, label %for.end20, !dbg !3542

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %in.addr.0.lcssa, i32 %i.2, !dbg !3564
  %2 = load i8, ptr %arrayidx13, align 1, !dbg !3564
  %conv = zext i8 %2 to i64, !dbg !3565
  %rem = shl i32 %i.2, 3, !dbg !3566
  %mul14 = and i32 %rem, 56, !dbg !3566
  %sh_prom = zext nneg i32 %mul14 to i64, !dbg !3567
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !3567
  %div153 = lshr i32 %i.2, 3, !dbg !3568
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %s, i32 %div153, !dbg !3569
  %3 = load i64, ptr %arrayidx16, align 8, !dbg !3570
  %xor17 = xor i64 %3, %shl, !dbg !3570
  store i64 %xor17, ptr %arrayidx16, align 8, !dbg !3570
  %inc19 = add i32 %i.2, 1, !dbg !3571
    #dbg_value(i32 %inc19, !3524, !DIExpression(), !3519)
  br label %for.cond10, !dbg !3572, !llvm.loop !3573

for.end20:                                        ; preds = %for.cond10
  %i.2.lcssa = phi i32 [ %i.2, %for.cond10 ], !dbg !3561
  %conv21 = zext nneg i8 %p to i64, !dbg !3575
  %rem22 = shl i32 %i.2.lcssa, 3, !dbg !3576
  %mul23 = and i32 %rem22, 56, !dbg !3576
  %sh_prom24 = zext nneg i32 %mul23 to i64, !dbg !3577
  %shl25 = shl nuw nsw i64 %conv21, %sh_prom24, !dbg !3577
  %div261 = lshr i32 %i.2.lcssa, 3, !dbg !3578
  %arrayidx27 = getelementptr inbounds nuw i64, ptr %s, i32 %div261, !dbg !3579
  %4 = load i64, ptr %arrayidx27, align 8, !dbg !3580
  %xor28 = xor i64 %4, %shl25, !dbg !3580
  store i64 %xor28, ptr %arrayidx27, align 8, !dbg !3580
  %sub29 = add nsw i32 %r, -1, !dbg !3581
  %div302 = lshr i32 %sub29, 3, !dbg !3582
  %arrayidx31 = getelementptr inbounds nuw i64, ptr %s, i32 %div302, !dbg !3583
  %5 = load i64, ptr %arrayidx31, align 8, !dbg !3584
  %xor32 = xor i64 %5, -9223372036854775808, !dbg !3584
  store i64 %xor32, ptr %arrayidx31, align 8, !dbg !3584
  ret void, !dbg !3585
}

; Function Attrs: nounwind
define internal fastcc i64 @load64(ptr noundef %x) unnamed_addr #0 !dbg !3586 {
entry:
    #dbg_value(ptr %x, !3589, !DIExpression(), !3590)
    #dbg_value(i64 0, !3591, !DIExpression(), !3590)
    #dbg_value(i32 0, !3592, !DIExpression(), !3590)
  br label %for.cond, !dbg !3593

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3595
  %r.0 = phi i64 [ 0, %entry ], [ %or, %for.inc ], !dbg !3590
    #dbg_value(i64 %r.0, !3591, !DIExpression(), !3590)
    #dbg_value(i32 %i.0, !3592, !DIExpression(), !3590)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !3596
  br i1 %exitcond, label %for.inc, label %for.end, !dbg !3598

for.inc:                                          ; preds = %for.cond
    #dbg_value(!DIArgList(i64 poison, i8 poison, i32 poison), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3590)
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !3599
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3599
    #dbg_value(!DIArgList(i64 %r.0, i8 %0, i32 %i.0), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3590)
  %conv = zext i8 %0 to i64, !dbg !3600
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %i.0), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3590)
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3601
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i32 %mul), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3590)
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3602
    #dbg_value(!DIArgList(i64 %r.0, i64 %conv, i64 %sh_prom), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !3590)
  %shl = shl nuw i64 %conv, %sh_prom, !dbg !3602
    #dbg_value(!DIArgList(i64 %r.0, i64 %shl), !3591, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3590)
  %or = or i64 %r.0, %shl, !dbg !3603
    #dbg_value(i64 %or, !3591, !DIExpression(), !3590)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3604
    #dbg_value(i32 %inc, !3592, !DIExpression(), !3590)
  br label %for.cond, !dbg !3605, !llvm.loop !3606

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi i64 [ %r.0, %for.cond ], !dbg !3590
  ret i64 %r.0.lcssa, !dbg !3608
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !3609 {
entry:
    #dbg_value(ptr %out, !3610, !DIExpression(), !3611)
    #dbg_value(i32 %nblocks, !3612, !DIExpression(), !3611)
    #dbg_value(ptr %state, !3613, !DIExpression(), !3611)
  call fastcc void @keccak_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state, i32 noundef 168) #4, !dbg !3614
  ret void, !dbg !3615
}

; Function Attrs: nounwind
define internal fastcc void @keccak_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %s, i32 noundef range(i32 136, 169) %r) unnamed_addr #0 !dbg !3616 {
entry:
    #dbg_value(ptr %out, !3619, !DIExpression(), !3620)
    #dbg_value(i32 %nblocks, !3621, !DIExpression(), !3620)
    #dbg_value(ptr %s, !3622, !DIExpression(), !3620)
    #dbg_value(i32 %r, !3623, !DIExpression(), !3620)
  %0 = lshr i32 %r, 3, !dbg !3624
  br label %while.cond, !dbg !3624

while.cond:                                       ; preds = %for.end, %entry
  %nblocks.addr.0 = phi i32 [ %nblocks, %entry ], [ %sub, %for.end ]
  %out.addr.0 = phi ptr [ %out, %entry ], [ %add.ptr1, %for.end ]
    #dbg_value(ptr %out.addr.0, !3619, !DIExpression(), !3620)
    #dbg_value(i32 %nblocks.addr.0, !3621, !DIExpression(), !3620)
  %tobool.not = icmp eq i32 %nblocks.addr.0, 0, !dbg !3624
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !3624

while.body:                                       ; preds = %while.cond
  call fastcc void @KeccakF1600_StatePermute(ptr noundef %s) #4, !dbg !3625
    #dbg_value(i32 0, !3627, !DIExpression(), !3620)
  br label %for.cond, !dbg !3628

for.cond:                                         ; preds = %for.body, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc, %for.body ], !dbg !3630
    #dbg_value(i32 %i.0, !3627, !DIExpression(), !3620)
  %exitcond = icmp ne i32 %i.0, %0, !dbg !3631
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3633

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3634
  %add.ptr = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 %mul, !dbg !3635
  %arrayidx = getelementptr inbounds nuw i64, ptr %s, i32 %i.0, !dbg !3636
  %1 = load i64, ptr %arrayidx, align 8, !dbg !3636
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %1) #4, !dbg !3637
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3638
    #dbg_value(i32 %inc, !3627, !DIExpression(), !3620)
  br label %for.cond, !dbg !3639, !llvm.loop !3640

for.end:                                          ; preds = %for.cond
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %out.addr.0, i32 %r, !dbg !3642
    #dbg_value(ptr %add.ptr1, !3619, !DIExpression(), !3620)
  %sub = add i32 %nblocks.addr.0, -1, !dbg !3643
    #dbg_value(i32 %sub, !3621, !DIExpression(), !3620)
  br label %while.cond, !dbg !3624, !llvm.loop !3644

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3646
}

; Function Attrs: nounwind
define internal fastcc void @store64(ptr noundef %x, i64 noundef %u) unnamed_addr #0 !dbg !3647 {
entry:
    #dbg_value(ptr %x, !3650, !DIExpression(), !3651)
    #dbg_value(i64 %u, !3652, !DIExpression(), !3651)
    #dbg_value(i32 0, !3653, !DIExpression(), !3651)
  br label %for.cond, !dbg !3654

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3656
    #dbg_value(i32 %i.0, !3653, !DIExpression(), !3651)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !3657
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3659

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3660
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3661
  %shr = lshr i64 %u, %sh_prom, !dbg !3661
  %conv = trunc i64 %shr to i8, !dbg !3662
  %arrayidx = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !3663
  store i8 %conv, ptr %arrayidx, align 1, !dbg !3664
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3665
    #dbg_value(i32 %inc, !3653, !DIExpression(), !3651)
  br label %for.cond, !dbg !3666, !llvm.loop !3667

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3669
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef %state) local_unnamed_addr #0 !dbg !3670 {
entry:
    #dbg_value(ptr %state, !3671, !DIExpression(), !3672)
  call fastcc void @keccak_init(ptr noundef %state) #4, !dbg !3673
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3674
  store i64 0, ptr %arrayidx, align 8, !dbg !3675
  ret void, !dbg !3676
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3677 {
entry:
    #dbg_value(ptr %state, !3678, !DIExpression(), !3679)
    #dbg_value(ptr %in, !3680, !DIExpression(), !3679)
    #dbg_value(i32 %inlen, !3681, !DIExpression(), !3679)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3682
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3682
  %conv = trunc i64 %0 to i32, !dbg !3683
  %call = call fastcc i32 @keccak_absorb(ptr noundef %state, i32 noundef %conv, i32 noundef 136, ptr noundef %in, i32 noundef %inlen) #4, !dbg !3684
    #dbg_value(i32 %call, !3685, !DIExpression(), !3679)
  %conv1 = zext i32 %call to i64, !dbg !3686
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3687
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !3688
  ret void, !dbg !3689
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef %state) local_unnamed_addr #0 !dbg !3690 {
entry:
    #dbg_value(ptr %state, !3691, !DIExpression(), !3692)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3693
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3693
  %conv = trunc i64 %0 to i32, !dbg !3694
  call fastcc void @keccak_finalize(ptr noundef %state, i32 noundef %conv, i32 noundef 136, i8 noundef zeroext 31) #4, !dbg !3695
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3696
  store i64 136, ptr %arrayidx1, align 8, !dbg !3697
  ret void, !dbg !3698
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state) local_unnamed_addr #0 !dbg !3699 {
entry:
    #dbg_value(ptr %out, !3700, !DIExpression(), !3701)
    #dbg_value(i32 %outlen, !3702, !DIExpression(), !3701)
    #dbg_value(ptr %state, !3703, !DIExpression(), !3701)
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3704
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3704
  %conv = trunc i64 %0 to i32, !dbg !3705
  %call = call fastcc i32 @keccak_squeeze(ptr noundef %out, i32 noundef %outlen, ptr noundef %state, i32 noundef %conv, i32 noundef 136) #4, !dbg !3706
    #dbg_value(i32 %call, !3707, !DIExpression(), !3701)
  %conv1 = zext i32 %call to i64, !dbg !3708
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3709
  store i64 %conv1, ptr %arrayidx2, align 8, !dbg !3710
  ret void, !dbg !3711
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_absorb_once(ptr noundef %state, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3712 {
entry:
    #dbg_value(ptr %state, !3713, !DIExpression(), !3714)
    #dbg_value(ptr %in, !3715, !DIExpression(), !3714)
    #dbg_value(i32 %inlen, !3716, !DIExpression(), !3714)
  call fastcc void @keccak_absorb_once(ptr noundef %state, i32 noundef 136, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 31) #4, !dbg !3717
  %arrayidx = getelementptr inbounds nuw i8, ptr %state, i32 200, !dbg !3718
  store i64 136, ptr %arrayidx, align 8, !dbg !3719
  ret void, !dbg !3720
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state) local_unnamed_addr #0 !dbg !3721 {
entry:
    #dbg_value(ptr %out, !3722, !DIExpression(), !3723)
    #dbg_value(i32 %nblocks, !3724, !DIExpression(), !3723)
    #dbg_value(ptr %state, !3725, !DIExpression(), !3723)
  call fastcc void @keccak_squeezeblocks(ptr noundef %out, i32 noundef %nblocks, ptr noundef %state, i32 noundef 136) #4, !dbg !3726
  ret void, !dbg !3727
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake128(ptr noundef %out, i32 noundef %outlen, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3728 {
entry:
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %out, !3731, !DIExpression(), !3732)
    #dbg_value(i32 %outlen, !3733, !DIExpression(), !3732)
    #dbg_value(ptr %in, !3734, !DIExpression(), !3732)
    #dbg_value(i32 %inlen, !3735, !DIExpression(), !3732)
    #dbg_declare(ptr %state, !3736, !DIExpression(), !3737)
  call void @pqcrystals_dilithium_fips202_ref_shake128_absorb_once(ptr noundef nonnull %state, ptr noundef %in, i32 noundef %inlen) #4, !dbg !3738
  %div = udiv i32 %outlen, 168, !dbg !3739
    #dbg_value(i32 %div, !3740, !DIExpression(), !3732)
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks(ptr noundef %out, i32 noundef %div, ptr noundef nonnull %state) #4, !dbg !3741
  %mul.neg = mul i32 %div, -168, !dbg !3742
  %sub = add i32 %mul.neg, %outlen, !dbg !3743
    #dbg_value(i32 %sub, !3733, !DIExpression(), !3732)
  %mul1 = mul nuw i32 %div, 168, !dbg !3744
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %mul1, !dbg !3745
    #dbg_value(ptr %add.ptr, !3731, !DIExpression(), !3732)
  call void @pqcrystals_dilithium_fips202_ref_shake128_squeeze(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %state) #4, !dbg !3746
  ret void, !dbg !3747
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_shake256(ptr noundef %out, i32 noundef %outlen, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3748 {
entry:
  %state = alloca [26 x i64], align 8
    #dbg_value(ptr %out, !3749, !DIExpression(), !3750)
    #dbg_value(i32 %outlen, !3751, !DIExpression(), !3750)
    #dbg_value(ptr %in, !3752, !DIExpression(), !3750)
    #dbg_value(i32 %inlen, !3753, !DIExpression(), !3750)
    #dbg_declare(ptr %state, !3754, !DIExpression(), !3755)
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb_once(ptr noundef nonnull %state, ptr noundef %in, i32 noundef %inlen) #4, !dbg !3756
  %div = udiv i32 %outlen, 136, !dbg !3757
    #dbg_value(i32 %div, !3758, !DIExpression(), !3750)
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks(ptr noundef %out, i32 noundef %div, ptr noundef nonnull %state) #4, !dbg !3759
  %mul.neg = mul i32 %div, -136, !dbg !3760
  %sub = add i32 %mul.neg, %outlen, !dbg !3761
    #dbg_value(i32 %sub, !3751, !DIExpression(), !3750)
  %mul1 = mul nuw i32 %div, 136, !dbg !3762
  %add.ptr = getelementptr inbounds nuw i8, ptr %out, i32 %mul1, !dbg !3763
    #dbg_value(ptr %add.ptr, !3749, !DIExpression(), !3750)
  call void @pqcrystals_dilithium_fips202_ref_shake256_squeeze(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %state) #4, !dbg !3764
  ret void, !dbg !3765
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_sha3_256(ptr noundef %h, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3766 {
entry:
  %s = alloca [25 x i64], align 8
    #dbg_value(ptr %h, !3769, !DIExpression(), !3770)
    #dbg_value(ptr %in, !3771, !DIExpression(), !3770)
    #dbg_value(i32 %inlen, !3772, !DIExpression(), !3770)
    #dbg_declare(ptr %s, !3773, !DIExpression(), !3777)
  call fastcc void @keccak_absorb_once(ptr noundef nonnull %s, i32 noundef 136, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !3778
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s) #4, !dbg !3779
    #dbg_value(i32 0, !3780, !DIExpression(), !3770)
  br label %for.cond, !dbg !3781

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3783
    #dbg_value(i32 %i.0, !3780, !DIExpression(), !3770)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !3784
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3786

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3787
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %mul, !dbg !3788
  %arrayidx = getelementptr inbounds nuw [25 x i64], ptr %s, i32 0, i32 %i.0, !dbg !3789
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3789
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %0) #4, !dbg !3790
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3791
    #dbg_value(i32 %inc, !3780, !DIExpression(), !3770)
  br label %for.cond, !dbg !3792, !llvm.loop !3793

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3795
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium_fips202_ref_sha3_512(ptr noundef %h, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 !dbg !3796 {
entry:
  %s = alloca [25 x i64], align 8
    #dbg_value(ptr %h, !3797, !DIExpression(), !3798)
    #dbg_value(ptr %in, !3799, !DIExpression(), !3798)
    #dbg_value(i32 %inlen, !3800, !DIExpression(), !3798)
    #dbg_declare(ptr %s, !3801, !DIExpression(), !3802)
  call fastcc void @keccak_absorb_once(ptr noundef nonnull %s, i32 noundef 72, ptr noundef %in, i32 noundef %inlen, i8 noundef zeroext 6) #4, !dbg !3803
  call fastcc void @KeccakF1600_StatePermute(ptr noundef nonnull %s) #4, !dbg !3804
    #dbg_value(i32 0, !3805, !DIExpression(), !3798)
  br label %for.cond, !dbg !3806

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3808
    #dbg_value(i32 %i.0, !3805, !DIExpression(), !3798)
  %exitcond = icmp ne i32 %i.0, 8, !dbg !3809
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3811

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %i.0, 3, !dbg !3812
  %add.ptr = getelementptr inbounds nuw i8, ptr %h, i32 %mul, !dbg !3813
  %arrayidx = getelementptr inbounds nuw [25 x i64], ptr %s, i32 0, i32 %i.0, !dbg !3814
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3814
  call fastcc void @store64(ptr noundef %add.ptr, i64 noundef %0) #4, !dbg !3815
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3816
    #dbg_value(i32 %inc, !3805, !DIExpression(), !3798)
  br label %for.cond, !dbg !3817, !llvm.loop !3818

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3820
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_dilithium_shake128_stream_init(ptr noundef %state, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !3821 {
entry:
  %t = alloca [2 x i8], align 1
    #dbg_value(ptr %state, !3825, !DIExpression(), !3826)
    #dbg_value(ptr %seed, !3827, !DIExpression(), !3826)
    #dbg_value(i16 %nonce, !3828, !DIExpression(), !3826)
    #dbg_declare(ptr %t, !3829, !DIExpression(), !3833)
  %conv = trunc i16 %nonce to i8, !dbg !3834
  store i8 %conv, ptr %t, align 1, !dbg !3835
  %0 = lshr i16 %nonce, 8, !dbg !3836
  %conv2 = trunc nuw i16 %0 to i8, !dbg !3837
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %t, i32 1, !dbg !3838
  store i8 %conv2, ptr %arrayidx3, align 1, !dbg !3839
  call void @pqcrystals_dilithium_fips202_ref_shake128_init(ptr noundef %state) #4, !dbg !3840
  call void @pqcrystals_dilithium_fips202_ref_shake128_absorb(ptr noundef %state, ptr noundef %seed, i32 noundef 32) #4, !dbg !3841
  call void @pqcrystals_dilithium_fips202_ref_shake128_absorb(ptr noundef %state, ptr noundef nonnull %t, i32 noundef 2) #4, !dbg !3842
  call void @pqcrystals_dilithium_fips202_ref_shake128_finalize(ptr noundef %state) #4, !dbg !3843
  ret void, !dbg !3844
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_dilithium_shake256_stream_init(ptr noundef %state, ptr noundef %seed, i16 noundef zeroext %nonce) local_unnamed_addr #0 !dbg !3845 {
entry:
  %t = alloca [2 x i8], align 1
    #dbg_value(ptr %state, !3846, !DIExpression(), !3847)
    #dbg_value(ptr %seed, !3848, !DIExpression(), !3847)
    #dbg_value(i16 %nonce, !3849, !DIExpression(), !3847)
    #dbg_declare(ptr %t, !3850, !DIExpression(), !3851)
  %conv = trunc i16 %nonce to i8, !dbg !3852
  store i8 %conv, ptr %t, align 1, !dbg !3853
  %0 = lshr i16 %nonce, 8, !dbg !3854
  %conv2 = trunc nuw i16 %0 to i8, !dbg !3855
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %t, i32 1, !dbg !3856
  store i8 %conv2, ptr %arrayidx3, align 1, !dbg !3857
  call void @pqcrystals_dilithium_fips202_ref_shake256_init(ptr noundef %state) #4, !dbg !3858
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef %state, ptr noundef %seed, i32 noundef 64) #4, !dbg !3859
  call void @pqcrystals_dilithium_fips202_ref_shake256_absorb(ptr noundef %state, ptr noundef nonnull %t, i32 noundef 2) #4, !dbg !3860
  call void @pqcrystals_dilithium_fips202_ref_shake256_finalize(ptr noundef %state) #4, !dbg !3861
  ret void, !dbg !3862
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_pack_pk(ptr noundef %pk, ptr noundef %rho, ptr noundef %t1) local_unnamed_addr #0 !dbg !3863 {
entry:
    #dbg_value(ptr %pk, !3867, !DIExpression(), !3868)
    #dbg_value(ptr %rho, !3869, !DIExpression(), !3868)
    #dbg_value(ptr %t1, !3870, !DIExpression(), !3868)
    #dbg_value(i32 0, !3871, !DIExpression(), !3868)
  br label %for.cond, !dbg !3872

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3874
    #dbg_value(i32 %i.0, !3871, !DIExpression(), !3868)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !3875
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3877

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !3878
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3878
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %pk, i32 %i.0, !dbg !3879
  store i8 %0, ptr %arrayidx1, align 1, !dbg !3880
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3881
    #dbg_value(i32 %inc, !3871, !DIExpression(), !3868)
  br label %for.cond, !dbg !3882, !llvm.loop !3883

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 32, !dbg !3885
    #dbg_value(ptr %add.ptr, !3867, !DIExpression(), !3868)
    #dbg_value(i32 0, !3871, !DIExpression(), !3868)
  br label %for.cond2, !dbg !3886

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !3888
    #dbg_value(i32 %i.1, !3871, !DIExpression(), !3868)
  %exitcond1 = icmp ne i32 %i.1, 8, !dbg !3889
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !3891

for.body4:                                        ; preds = %for.cond2
  %mul = mul nuw nsw i32 %i.1, 320, !dbg !3892
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !3893
  %arrayidx6 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %t1, i32 0, i32 %i.1, !dbg !3894
  call void @pqcrystals_dilithium5_ref_polyt1_pack(ptr noundef nonnull %add.ptr5, ptr noundef %arrayidx6) #4, !dbg !3895
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !3896
    #dbg_value(i32 %inc8, !3871, !DIExpression(), !3868)
  br label %for.cond2, !dbg !3897, !llvm.loop !3898

for.end9:                                         ; preds = %for.cond2
  ret void, !dbg !3900
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_unpack_pk(ptr noundef %rho, ptr noundef %t1, ptr noundef %pk) local_unnamed_addr #0 !dbg !3901 {
entry:
    #dbg_value(ptr %rho, !3904, !DIExpression(), !3905)
    #dbg_value(ptr %t1, !3906, !DIExpression(), !3905)
    #dbg_value(ptr %pk, !3907, !DIExpression(), !3905)
    #dbg_value(i32 0, !3908, !DIExpression(), !3905)
  br label %for.cond, !dbg !3909

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3911
    #dbg_value(i32 %i.0, !3908, !DIExpression(), !3905)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !3912
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3914

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %pk, i32 %i.0, !dbg !3915
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3915
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !3916
  store i8 %0, ptr %arrayidx1, align 1, !dbg !3917
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3918
    #dbg_value(i32 %inc, !3908, !DIExpression(), !3905)
  br label %for.cond, !dbg !3919, !llvm.loop !3920

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 32, !dbg !3922
    #dbg_value(ptr %add.ptr, !3907, !DIExpression(), !3905)
    #dbg_value(i32 0, !3908, !DIExpression(), !3905)
  br label %for.cond2, !dbg !3923

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !3925
    #dbg_value(i32 %i.1, !3908, !DIExpression(), !3905)
  %exitcond1 = icmp ne i32 %i.1, 8, !dbg !3926
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !3928

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %t1, i32 0, i32 %i.1, !dbg !3929
  %mul = mul nuw nsw i32 %i.1, 320, !dbg !3930
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !3931
  call void @pqcrystals_dilithium5_ref_polyt1_unpack(ptr noundef %arrayidx5, ptr noundef nonnull %add.ptr6) #4, !dbg !3932
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !3933
    #dbg_value(i32 %inc8, !3908, !DIExpression(), !3905)
  br label %for.cond2, !dbg !3934, !llvm.loop !3935

for.end9:                                         ; preds = %for.cond2
  ret void, !dbg !3937
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_pack_sk(ptr noundef %sk, ptr noundef %rho, ptr noundef %tr, ptr noundef %key, ptr noundef %t0, ptr noundef %s1, ptr noundef %s2) local_unnamed_addr #0 !dbg !3938 {
entry:
    #dbg_value(ptr %sk, !3941, !DIExpression(), !3942)
    #dbg_value(ptr %rho, !3943, !DIExpression(), !3942)
    #dbg_value(ptr %tr, !3944, !DIExpression(), !3942)
    #dbg_value(ptr %key, !3945, !DIExpression(), !3942)
    #dbg_value(ptr %t0, !3946, !DIExpression(), !3942)
    #dbg_value(ptr %s1, !3947, !DIExpression(), !3942)
    #dbg_value(ptr %s2, !3948, !DIExpression(), !3942)
    #dbg_value(i32 0, !3949, !DIExpression(), !3942)
  br label %for.cond, !dbg !3950

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3952
    #dbg_value(i32 %i.0, !3949, !DIExpression(), !3942)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !3953
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3955

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !3956
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3956
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %sk, i32 %i.0, !dbg !3957
  store i8 %0, ptr %arrayidx1, align 1, !dbg !3958
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3959
    #dbg_value(i32 %inc, !3949, !DIExpression(), !3942)
  br label %for.cond, !dbg !3960, !llvm.loop !3961

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !3963
    #dbg_value(ptr %add.ptr, !3941, !DIExpression(), !3942)
    #dbg_value(i32 0, !3949, !DIExpression(), !3942)
  br label %for.cond2, !dbg !3964

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !3966
    #dbg_value(i32 %i.1, !3949, !DIExpression(), !3942)
  %exitcond1 = icmp ne i32 %i.1, 32, !dbg !3967
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !3969

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %key, i32 %i.1, !dbg !3970
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !3970
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.1, !dbg !3971
  store i8 %1, ptr %arrayidx6, align 1, !dbg !3972
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !3973
    #dbg_value(i32 %inc8, !3949, !DIExpression(), !3942)
  br label %for.cond2, !dbg !3974, !llvm.loop !3975

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sk, i32 64, !dbg !3977
    #dbg_value(ptr %add.ptr10, !3941, !DIExpression(), !3942)
    #dbg_value(i32 0, !3949, !DIExpression(), !3942)
  br label %for.cond11, !dbg !3978

for.cond11:                                       ; preds = %for.body13, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc17, %for.body13 ], !dbg !3980
    #dbg_value(i32 %i.2, !3949, !DIExpression(), !3942)
  %exitcond2 = icmp ne i32 %i.2, 64, !dbg !3981
  br i1 %exitcond2, label %for.body13, label %for.end18, !dbg !3983

for.body13:                                       ; preds = %for.cond11
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %tr, i32 %i.2, !dbg !3984
  %2 = load i8, ptr %arrayidx14, align 1, !dbg !3984
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !3985
  store i8 %2, ptr %arrayidx15, align 1, !dbg !3986
  %inc17 = add nuw nsw i32 %i.2, 1, !dbg !3987
    #dbg_value(i32 %inc17, !3949, !DIExpression(), !3942)
  br label %for.cond11, !dbg !3988, !llvm.loop !3989

for.end18:                                        ; preds = %for.cond11
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %sk, i32 128, !dbg !3991
    #dbg_value(ptr %add.ptr19, !3941, !DIExpression(), !3942)
    #dbg_value(i32 0, !3949, !DIExpression(), !3942)
  br label %for.cond20, !dbg !3992

for.cond20:                                       ; preds = %for.body22, %for.end18
  %i.3 = phi i32 [ 0, %for.end18 ], [ %inc26, %for.body22 ], !dbg !3994
    #dbg_value(i32 %i.3, !3949, !DIExpression(), !3942)
  %exitcond3 = icmp ne i32 %i.3, 7, !dbg !3995
  br i1 %exitcond3, label %for.body22, label %for.end27, !dbg !3997

for.body22:                                       ; preds = %for.cond20
  %mul = mul nuw nsw i32 %i.3, 96, !dbg !3998
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %add.ptr19, i32 %mul, !dbg !3999
  %arrayidx24 = getelementptr inbounds nuw [7 x [256 x i32]], ptr %s1, i32 0, i32 %i.3, !dbg !4000
  call void @pqcrystals_dilithium5_ref_polyeta_pack(ptr noundef nonnull %add.ptr23, ptr noundef %arrayidx24) #4, !dbg !4001
  %inc26 = add nuw nsw i32 %i.3, 1, !dbg !4002
    #dbg_value(i32 %inc26, !3949, !DIExpression(), !3942)
  br label %for.cond20, !dbg !4003, !llvm.loop !4004

for.end27:                                        ; preds = %for.cond20
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %sk, i32 800, !dbg !4006
    #dbg_value(ptr %add.ptr28, !3941, !DIExpression(), !3942)
    #dbg_value(i32 0, !3949, !DIExpression(), !3942)
  br label %for.cond29, !dbg !4007

for.cond29:                                       ; preds = %for.body31, %for.end27
  %i.4 = phi i32 [ 0, %for.end27 ], [ %inc36, %for.body31 ], !dbg !4009
    #dbg_value(i32 %i.4, !3949, !DIExpression(), !3942)
  %exitcond4 = icmp ne i32 %i.4, 8, !dbg !4010
  br i1 %exitcond4, label %for.body31, label %for.end37, !dbg !4012

for.body31:                                       ; preds = %for.cond29
  %mul32 = mul nuw nsw i32 %i.4, 96, !dbg !4013
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %add.ptr28, i32 %mul32, !dbg !4014
  %arrayidx34 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %s2, i32 0, i32 %i.4, !dbg !4015
  call void @pqcrystals_dilithium5_ref_polyeta_pack(ptr noundef nonnull %add.ptr33, ptr noundef %arrayidx34) #4, !dbg !4016
  %inc36 = add nuw nsw i32 %i.4, 1, !dbg !4017
    #dbg_value(i32 %inc36, !3949, !DIExpression(), !3942)
  br label %for.cond29, !dbg !4018, !llvm.loop !4019

for.end37:                                        ; preds = %for.cond29
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %sk, i32 1568, !dbg !4021
    #dbg_value(ptr %add.ptr38, !3941, !DIExpression(), !3942)
    #dbg_value(i32 0, !3949, !DIExpression(), !3942)
  br label %for.cond39, !dbg !4022

for.cond39:                                       ; preds = %for.body41, %for.end37
  %i.5 = phi i32 [ 0, %for.end37 ], [ %inc46, %for.body41 ], !dbg !4024
    #dbg_value(i32 %i.5, !3949, !DIExpression(), !3942)
  %exitcond5 = icmp ne i32 %i.5, 8, !dbg !4025
  br i1 %exitcond5, label %for.body41, label %for.end47, !dbg !4027

for.body41:                                       ; preds = %for.cond39
  %mul42 = mul nuw nsw i32 %i.5, 416, !dbg !4028
  %add.ptr43 = getelementptr inbounds nuw i8, ptr %add.ptr38, i32 %mul42, !dbg !4029
  %arrayidx44 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %t0, i32 0, i32 %i.5, !dbg !4030
  call void @pqcrystals_dilithium5_ref_polyt0_pack(ptr noundef nonnull %add.ptr43, ptr noundef %arrayidx44) #4, !dbg !4031
  %inc46 = add nuw nsw i32 %i.5, 1, !dbg !4032
    #dbg_value(i32 %inc46, !3949, !DIExpression(), !3942)
  br label %for.cond39, !dbg !4033, !llvm.loop !4034

for.end47:                                        ; preds = %for.cond39
  ret void, !dbg !4036
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_unpack_sk(ptr noundef %rho, ptr noundef %tr, ptr noundef %key, ptr noundef %t0, ptr noundef %s1, ptr noundef %s2, ptr noundef %sk) local_unnamed_addr #0 !dbg !4037 {
entry:
    #dbg_value(ptr %rho, !4040, !DIExpression(), !4041)
    #dbg_value(ptr %tr, !4042, !DIExpression(), !4041)
    #dbg_value(ptr %key, !4043, !DIExpression(), !4041)
    #dbg_value(ptr %t0, !4044, !DIExpression(), !4041)
    #dbg_value(ptr %s1, !4045, !DIExpression(), !4041)
    #dbg_value(ptr %s2, !4046, !DIExpression(), !4041)
    #dbg_value(ptr %sk, !4047, !DIExpression(), !4041)
    #dbg_value(i32 0, !4048, !DIExpression(), !4041)
  br label %for.cond, !dbg !4049

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4051
    #dbg_value(i32 %i.0, !4048, !DIExpression(), !4041)
  %exitcond = icmp ne i32 %i.0, 32, !dbg !4052
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4054

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %sk, i32 %i.0, !dbg !4055
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4055
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %rho, i32 %i.0, !dbg !4056
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4057
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4058
    #dbg_value(i32 %inc, !4048, !DIExpression(), !4041)
  br label %for.cond, !dbg !4059, !llvm.loop !4060

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 32, !dbg !4062
    #dbg_value(ptr %add.ptr, !4047, !DIExpression(), !4041)
    #dbg_value(i32 0, !4048, !DIExpression(), !4041)
  br label %for.cond2, !dbg !4063

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !4065
    #dbg_value(i32 %i.1, !4048, !DIExpression(), !4041)
  %exitcond1 = icmp ne i32 %i.1, 32, !dbg !4066
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !4068

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %i.1, !dbg !4069
  %1 = load i8, ptr %arrayidx5, align 1, !dbg !4069
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %key, i32 %i.1, !dbg !4070
  store i8 %1, ptr %arrayidx6, align 1, !dbg !4071
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !4072
    #dbg_value(i32 %inc8, !4048, !DIExpression(), !4041)
  br label %for.cond2, !dbg !4073, !llvm.loop !4074

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sk, i32 64, !dbg !4076
    #dbg_value(ptr %add.ptr10, !4047, !DIExpression(), !4041)
    #dbg_value(i32 0, !4048, !DIExpression(), !4041)
  br label %for.cond11, !dbg !4077

for.cond11:                                       ; preds = %for.body13, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc17, %for.body13 ], !dbg !4079
    #dbg_value(i32 %i.2, !4048, !DIExpression(), !4041)
  %exitcond2 = icmp ne i32 %i.2, 64, !dbg !4080
  br i1 %exitcond2, label %for.body13, label %for.end18, !dbg !4082

for.body13:                                       ; preds = %for.cond11
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4083
  %2 = load i8, ptr %arrayidx14, align 1, !dbg !4083
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %tr, i32 %i.2, !dbg !4084
  store i8 %2, ptr %arrayidx15, align 1, !dbg !4085
  %inc17 = add nuw nsw i32 %i.2, 1, !dbg !4086
    #dbg_value(i32 %inc17, !4048, !DIExpression(), !4041)
  br label %for.cond11, !dbg !4087, !llvm.loop !4088

for.end18:                                        ; preds = %for.cond11
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %sk, i32 128, !dbg !4090
    #dbg_value(ptr %add.ptr19, !4047, !DIExpression(), !4041)
    #dbg_value(i32 0, !4048, !DIExpression(), !4041)
  br label %for.cond20, !dbg !4091

for.cond20:                                       ; preds = %for.body22, %for.end18
  %i.3 = phi i32 [ 0, %for.end18 ], [ %inc26, %for.body22 ], !dbg !4093
    #dbg_value(i32 %i.3, !4048, !DIExpression(), !4041)
  %exitcond3 = icmp ne i32 %i.3, 7, !dbg !4094
  br i1 %exitcond3, label %for.body22, label %for.end27, !dbg !4096

for.body22:                                       ; preds = %for.cond20
  %arrayidx23 = getelementptr inbounds nuw [7 x [256 x i32]], ptr %s1, i32 0, i32 %i.3, !dbg !4097
  %mul = mul nuw nsw i32 %i.3, 96, !dbg !4098
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %add.ptr19, i32 %mul, !dbg !4099
  call void @pqcrystals_dilithium5_ref_polyeta_unpack(ptr noundef %arrayidx23, ptr noundef nonnull %add.ptr24) #4, !dbg !4100
  %inc26 = add nuw nsw i32 %i.3, 1, !dbg !4101
    #dbg_value(i32 %inc26, !4048, !DIExpression(), !4041)
  br label %for.cond20, !dbg !4102, !llvm.loop !4103

for.end27:                                        ; preds = %for.cond20
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %sk, i32 800, !dbg !4105
    #dbg_value(ptr %add.ptr28, !4047, !DIExpression(), !4041)
    #dbg_value(i32 0, !4048, !DIExpression(), !4041)
  br label %for.cond29, !dbg !4106

for.cond29:                                       ; preds = %for.body31, %for.end27
  %i.4 = phi i32 [ 0, %for.end27 ], [ %inc36, %for.body31 ], !dbg !4108
    #dbg_value(i32 %i.4, !4048, !DIExpression(), !4041)
  %exitcond4 = icmp ne i32 %i.4, 8, !dbg !4109
  br i1 %exitcond4, label %for.body31, label %for.end37, !dbg !4111

for.body31:                                       ; preds = %for.cond29
  %arrayidx32 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %s2, i32 0, i32 %i.4, !dbg !4112
  %mul33 = mul nuw nsw i32 %i.4, 96, !dbg !4113
  %add.ptr34 = getelementptr inbounds nuw i8, ptr %add.ptr28, i32 %mul33, !dbg !4114
  call void @pqcrystals_dilithium5_ref_polyeta_unpack(ptr noundef %arrayidx32, ptr noundef nonnull %add.ptr34) #4, !dbg !4115
  %inc36 = add nuw nsw i32 %i.4, 1, !dbg !4116
    #dbg_value(i32 %inc36, !4048, !DIExpression(), !4041)
  br label %for.cond29, !dbg !4117, !llvm.loop !4118

for.end37:                                        ; preds = %for.cond29
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %sk, i32 1568, !dbg !4120
    #dbg_value(ptr %add.ptr38, !4047, !DIExpression(), !4041)
    #dbg_value(i32 0, !4048, !DIExpression(), !4041)
  br label %for.cond39, !dbg !4121

for.cond39:                                       ; preds = %for.body41, %for.end37
  %i.5 = phi i32 [ 0, %for.end37 ], [ %inc46, %for.body41 ], !dbg !4123
    #dbg_value(i32 %i.5, !4048, !DIExpression(), !4041)
  %exitcond5 = icmp ne i32 %i.5, 8, !dbg !4124
  br i1 %exitcond5, label %for.body41, label %for.end47, !dbg !4126

for.body41:                                       ; preds = %for.cond39
  %arrayidx42 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %t0, i32 0, i32 %i.5, !dbg !4127
  %mul43 = mul nuw nsw i32 %i.5, 416, !dbg !4128
  %add.ptr44 = getelementptr inbounds nuw i8, ptr %add.ptr38, i32 %mul43, !dbg !4129
  call void @pqcrystals_dilithium5_ref_polyt0_unpack(ptr noundef %arrayidx42, ptr noundef nonnull %add.ptr44) #4, !dbg !4130
  %inc46 = add nuw nsw i32 %i.5, 1, !dbg !4131
    #dbg_value(i32 %inc46, !4048, !DIExpression(), !4041)
  br label %for.cond39, !dbg !4132, !llvm.loop !4133

for.end47:                                        ; preds = %for.cond39
  ret void, !dbg !4135
}

; Function Attrs: nounwind
define dso_local void @pqcrystals_dilithium5_ref_pack_sig(ptr noundef %sig, ptr noundef %c, ptr noundef %z, ptr noundef %h) local_unnamed_addr #0 !dbg !4136 {
entry:
    #dbg_value(ptr %sig, !4139, !DIExpression(), !4140)
    #dbg_value(ptr %c, !4141, !DIExpression(), !4140)
    #dbg_value(ptr %z, !4142, !DIExpression(), !4140)
    #dbg_value(ptr %h, !4143, !DIExpression(), !4140)
    #dbg_value(i32 0, !4144, !DIExpression(), !4140)
  br label %for.cond, !dbg !4145

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4147
    #dbg_value(i32 %i.0, !4144, !DIExpression(), !4140)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4148
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4150

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !4151
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4151
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %sig, i32 %i.0, !dbg !4152
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4153
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4154
    #dbg_value(i32 %inc, !4144, !DIExpression(), !4140)
  br label %for.cond, !dbg !4155, !llvm.loop !4156

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sig, i32 64, !dbg !4158
    #dbg_value(ptr %add.ptr, !4139, !DIExpression(), !4140)
    #dbg_value(i32 0, !4144, !DIExpression(), !4140)
  br label %for.cond2, !dbg !4159

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !4161
    #dbg_value(i32 %i.1, !4144, !DIExpression(), !4140)
  %exitcond1 = icmp ne i32 %i.1, 7, !dbg !4162
  br i1 %exitcond1, label %for.body4, label %for.end9, !dbg !4164

for.body4:                                        ; preds = %for.cond2
  %mul = mul nuw nsw i32 %i.1, 640, !dbg !4165
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !4166
  %arrayidx6 = getelementptr inbounds nuw [7 x [256 x i32]], ptr %z, i32 0, i32 %i.1, !dbg !4167
  call void @pqcrystals_dilithium5_ref_polyz_pack(ptr noundef nonnull %add.ptr5, ptr noundef %arrayidx6) #4, !dbg !4168
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !4169
    #dbg_value(i32 %inc8, !4144, !DIExpression(), !4140)
  br label %for.cond2, !dbg !4170, !llvm.loop !4171

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sig, i32 4544, !dbg !4173
    #dbg_value(ptr %add.ptr10, !4139, !DIExpression(), !4140)
    #dbg_value(i32 0, !4144, !DIExpression(), !4140)
  br label %for.cond11, !dbg !4174

for.cond11:                                       ; preds = %for.body13, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc16, %for.body13 ], !dbg !4176
    #dbg_value(i32 %i.2, !4144, !DIExpression(), !4140)
  %exitcond2 = icmp ne i32 %i.2, 83, !dbg !4177
  br i1 %exitcond2, label %for.body13, label %for.cond18.preheader, !dbg !4179

for.cond18.preheader:                             ; preds = %for.cond11
  br label %for.cond18, !dbg !4180

for.body13:                                       ; preds = %for.cond11
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4182
  store i8 0, ptr %arrayidx14, align 1, !dbg !4183
  %inc16 = add nuw nsw i32 %i.2, 1, !dbg !4184
    #dbg_value(i32 %inc16, !4144, !DIExpression(), !4140)
  br label %for.cond11, !dbg !4185, !llvm.loop !4186

for.cond18:                                       ; preds = %for.cond18.preheader, %for.end31
  %i.3 = phi i32 [ %inc35, %for.end31 ], [ 0, %for.cond18.preheader ], !dbg !4188
  %k.0 = phi i32 [ %k.1.lcssa, %for.end31 ], [ 0, %for.cond18.preheader ], !dbg !4189
    #dbg_value(i32 %k.0, !4190, !DIExpression(), !4140)
    #dbg_value(i32 %i.3, !4144, !DIExpression(), !4140)
  %exitcond4 = icmp ne i32 %i.3, 8, !dbg !4191
  br i1 %exitcond4, label %for.cond21.preheader, label %for.end36, !dbg !4180

for.cond21.preheader:                             ; preds = %for.cond18
  br label %for.cond21, !dbg !4193

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc29
  %j.0 = phi i32 [ %inc30, %for.inc29 ], [ 0, %for.cond21.preheader ], !dbg !4196
  %k.1 = phi i32 [ %k.2, %for.inc29 ], [ %k.0, %for.cond21.preheader ], !dbg !4140
    #dbg_value(i32 %k.1, !4190, !DIExpression(), !4140)
    #dbg_value(i32 %j.0, !4197, !DIExpression(), !4140)
  %exitcond3 = icmp ne i32 %j.0, 256, !dbg !4198
  br i1 %exitcond3, label %for.body23, label %for.end31, !dbg !4193

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %h, i32 0, i32 %i.3, i32 %j.0, !dbg !4200
  %1 = load i32, ptr %arrayidx25, align 4, !dbg !4200
  %cmp26.not = icmp eq i32 %1, 0, !dbg !4202
  br i1 %cmp26.not, label %for.inc29, label %if.then, !dbg !4202

if.then:                                          ; preds = %for.body23
  %conv = trunc nuw i32 %j.0 to i8, !dbg !4203
  %inc27 = add i32 %k.1, 1, !dbg !4204
    #dbg_value(i32 %inc27, !4190, !DIExpression(), !4140)
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %k.1, !dbg !4205
  store i8 %conv, ptr %arrayidx28, align 1, !dbg !4206
  br label %for.inc29, !dbg !4205

for.inc29:                                        ; preds = %for.body23, %if.then
  %k.2 = phi i32 [ %inc27, %if.then ], [ %k.1, %for.body23 ], !dbg !4140
    #dbg_value(i32 %k.2, !4190, !DIExpression(), !4140)
  %inc30 = add nuw nsw i32 %j.0, 1, !dbg !4207
    #dbg_value(i32 %inc30, !4197, !DIExpression(), !4140)
  br label %for.cond21, !dbg !4208, !llvm.loop !4209

for.end31:                                        ; preds = %for.cond21
  %k.1.lcssa = phi i32 [ %k.1, %for.cond21 ], !dbg !4140
  %conv32 = trunc i32 %k.1.lcssa to i8, !dbg !4211
  %2 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.3, !dbg !4212
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %2, i32 75, !dbg !4212
  store i8 %conv32, ptr %arrayidx33, align 1, !dbg !4213
  %inc35 = add nuw nsw i32 %i.3, 1, !dbg !4214
    #dbg_value(i32 %inc35, !4144, !DIExpression(), !4140)
  br label %for.cond18, !dbg !4215, !llvm.loop !4216

for.end36:                                        ; preds = %for.cond18
  ret void, !dbg !4218
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium5_ref_unpack_sig(ptr noundef %c, ptr noundef %z, ptr noundef %h, ptr noundef %sig) local_unnamed_addr #0 !dbg !4219 {
entry:
    #dbg_value(ptr %c, !4222, !DIExpression(), !4223)
    #dbg_value(ptr %z, !4224, !DIExpression(), !4223)
    #dbg_value(ptr %h, !4225, !DIExpression(), !4223)
    #dbg_value(ptr %sig, !4226, !DIExpression(), !4223)
    #dbg_value(i32 0, !4227, !DIExpression(), !4223)
  br label %for.cond, !dbg !4228

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4230
    #dbg_value(i32 %i.0, !4227, !DIExpression(), !4223)
  %exitcond = icmp ne i32 %i.0, 64, !dbg !4231
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4233

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %sig, i32 %i.0, !dbg !4234
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4234
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %c, i32 %i.0, !dbg !4235
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4236
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4237
    #dbg_value(i32 %inc, !4227, !DIExpression(), !4223)
  br label %for.cond, !dbg !4238, !llvm.loop !4239

for.end:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %sig, i32 64, !dbg !4241
    #dbg_value(ptr %add.ptr, !4226, !DIExpression(), !4223)
    #dbg_value(i32 0, !4227, !DIExpression(), !4223)
  br label %for.cond2, !dbg !4242

for.cond2:                                        ; preds = %for.body4, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.body4 ], !dbg !4244
    #dbg_value(i32 %i.1, !4227, !DIExpression(), !4223)
  %exitcond5 = icmp ne i32 %i.1, 7, !dbg !4245
  br i1 %exitcond5, label %for.body4, label %for.end9, !dbg !4247

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds nuw [7 x [256 x i32]], ptr %z, i32 0, i32 %i.1, !dbg !4248
  %mul = mul nuw nsw i32 %i.1, 640, !dbg !4249
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %mul, !dbg !4250
  call void @pqcrystals_dilithium5_ref_polyz_unpack(ptr noundef %arrayidx5, ptr noundef nonnull %add.ptr6) #4, !dbg !4251
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !4252
    #dbg_value(i32 %inc8, !4227, !DIExpression(), !4223)
  br label %for.cond2, !dbg !4253, !llvm.loop !4254

for.end9:                                         ; preds = %for.cond2
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %sig, i32 4544, !dbg !4256
    #dbg_value(ptr %add.ptr10, !4226, !DIExpression(), !4223)
    #dbg_value(i32 0, !4257, !DIExpression(), !4223)
    #dbg_value(i32 0, !4227, !DIExpression(), !4223)
  br label %for.cond11, !dbg !4258

for.cond11:                                       ; preds = %for.inc56, %for.end9
  %i.2 = phi i32 [ 0, %for.end9 ], [ %inc57, %for.inc56 ], !dbg !4260
  %k.0 = phi i32 [ 0, %for.end9 ], [ %conv55, %for.inc56 ], !dbg !4223
    #dbg_value(i32 %k.0, !4257, !DIExpression(), !4223)
    #dbg_value(i32 %i.2, !4227, !DIExpression(), !4223)
  %exitcond7 = icmp ne i32 %i.2, 8, !dbg !4261
  br i1 %exitcond7, label %for.cond14.preheader, label %for.cond59.preheader, !dbg !4263

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !4264

for.cond59.preheader:                             ; preds = %for.cond11
  %k.0.lcssa8 = phi i32 [ %k.0, %for.cond11 ], !dbg !4223
  %k.0.lcssa = phi i32 [ %k.0, %for.cond11 ], !dbg !4223
  %umax = call i32 @llvm.umax.i32(i32 %k.0.lcssa8, i32 75), !dbg !4267
  br label %for.cond59, !dbg !4267

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %j.0 = phi i32 [ %inc20, %for.body16 ], [ 0, %for.cond14.preheader ], !dbg !4269
    #dbg_value(i32 %j.0, !4270, !DIExpression(), !4223)
  %exitcond6 = icmp ne i32 %j.0, 256, !dbg !4271
  br i1 %exitcond6, label %for.body16, label %for.end21, !dbg !4264

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %h, i32 0, i32 %i.2, i32 %j.0, !dbg !4273
  store i32 0, ptr %arrayidx18, align 4, !dbg !4274
  %inc20 = add nuw nsw i32 %j.0, 1, !dbg !4275
    #dbg_value(i32 %inc20, !4270, !DIExpression(), !4223)
  br label %for.cond14, !dbg !4276, !llvm.loop !4277

for.end21:                                        ; preds = %for.cond14
  %1 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4279
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %1, i32 75, !dbg !4279
  %2 = load i8, ptr %arrayidx22, align 1, !dbg !4279
  %conv = zext i8 %2 to i32, !dbg !4279
  %cmp23 = icmp samesign ugt i32 %k.0, %conv, !dbg !4281
  br i1 %cmp23, label %return.loopexit2, label %lor.lhs.false, !dbg !4282

lor.lhs.false:                                    ; preds = %for.end21
  %3 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4283
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %3, i32 75, !dbg !4283
  %4 = load i8, ptr %arrayidx26, align 1, !dbg !4283
  %cmp28 = icmp ugt i8 %4, 75, !dbg !4284
  br i1 %cmp28, label %return.loopexit2, label %for.cond30.preheader, !dbg !4282

for.cond30.preheader:                             ; preds = %lor.lhs.false
  br label %for.cond30, !dbg !4285

for.cond30:                                       ; preds = %for.cond30.preheader, %if.end46
  %j.1 = phi i32 [ %inc51, %if.end46 ], [ %k.0, %for.cond30.preheader ], !dbg !4287
    #dbg_value(i32 %j.1, !4270, !DIExpression(), !4223)
  %5 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4288
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %5, i32 75, !dbg !4288
  %6 = load i8, ptr %arrayidx32, align 1, !dbg !4288
  %conv33 = zext i8 %6 to i32, !dbg !4288
  %cmp34 = icmp samesign ult i32 %j.1, %conv33, !dbg !4290
  br i1 %cmp34, label %for.body36, label %for.inc56, !dbg !4285

for.body36:                                       ; preds = %for.cond30
  %cmp37 = icmp samesign ugt i32 %j.1, %k.0, !dbg !4291
  br i1 %cmp37, label %land.lhs.true, label %if.end46, !dbg !4294

land.lhs.true:                                    ; preds = %for.body36
  %arrayidx39 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %j.1, !dbg !4295
  %7 = load i8, ptr %arrayidx39, align 1, !dbg !4295
  %8 = getelementptr i8, ptr %add.ptr10, i32 %j.1, !dbg !4296
  %arrayidx41 = getelementptr i8, ptr %8, i32 -1, !dbg !4296
  %9 = load i8, ptr %arrayidx41, align 1, !dbg !4296
  %cmp43.not = icmp ugt i8 %7, %9, !dbg !4297
  br i1 %cmp43.not, label %if.end46, label %return.loopexit1, !dbg !4294

if.end46:                                         ; preds = %land.lhs.true, %for.body36
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %j.1, !dbg !4298
  %10 = load i8, ptr %arrayidx48, align 1, !dbg !4298
  %idxprom = zext i8 %10 to i32, !dbg !4299
  %arrayidx49 = getelementptr inbounds nuw [8 x [256 x i32]], ptr %h, i32 0, i32 %i.2, i32 %idxprom, !dbg !4299
  store i32 1, ptr %arrayidx49, align 4, !dbg !4300
  %inc51 = add nuw nsw i32 %j.1, 1, !dbg !4301
    #dbg_value(i32 %inc51, !4270, !DIExpression(), !4223)
  br label %for.cond30, !dbg !4302, !llvm.loop !4303

for.inc56:                                        ; preds = %for.cond30
    #dbg_value(i8 poison, !4257, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4223)
  %11 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %i.2, !dbg !4305
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %11, i32 75, !dbg !4305
  %12 = load i8, ptr %arrayidx54, align 1, !dbg !4305
    #dbg_value(i8 %12, !4257, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !4223)
  %conv55 = zext i8 %12 to i32, !dbg !4305
    #dbg_value(i32 %conv55, !4257, !DIExpression(), !4223)
  %inc57 = add nuw nsw i32 %i.2, 1, !dbg !4306
    #dbg_value(i32 %inc57, !4227, !DIExpression(), !4223)
  br label %for.cond11, !dbg !4307, !llvm.loop !4308

for.cond59:                                       ; preds = %for.cond59.preheader, %for.inc66
  %j.2 = phi i32 [ %inc67, %for.inc66 ], [ %k.0.lcssa, %for.cond59.preheader ], !dbg !4310
    #dbg_value(i32 %j.2, !4270, !DIExpression(), !4223)
  %exitcond11 = icmp ne i32 %j.2, %umax, !dbg !4311
  br i1 %exitcond11, label %for.body62, label %return.loopexit, !dbg !4267

for.body62:                                       ; preds = %for.cond59
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %add.ptr10, i32 %j.2, !dbg !4313
  %13 = load i8, ptr %arrayidx63, align 1, !dbg !4313
  %tobool.not = icmp eq i8 %13, 0, !dbg !4313
  br i1 %tobool.not, label %for.inc66, label %return.loopexit, !dbg !4313

for.inc66:                                        ; preds = %for.body62
  %inc67 = add nuw nsw i32 %j.2, 1, !dbg !4315
    #dbg_value(i32 %inc67, !4270, !DIExpression(), !4223)
  br label %for.cond59, !dbg !4316, !llvm.loop !4317

return.loopexit:                                  ; preds = %for.body62, %for.cond59
  %retval.0.ph = phi i32 [ 0, %for.cond59 ], [ 1, %for.body62 ]
  br label %return, !dbg !4319

return.loopexit1:                                 ; preds = %land.lhs.true
  br label %return, !dbg !4319

return.loopexit2:                                 ; preds = %lor.lhs.false, %for.end21
  br label %return, !dbg !4319

return:                                           ; preds = %return.loopexit2, %return.loopexit1, %return.loopexit
  %retval.0 = phi i32 [ %retval.0.ph, %return.loopexit ], [ 1, %return.loopexit1 ], [ 1, %return.loopexit2 ], !dbg !4223
  ret i32 %retval.0, !dbg !4319
}

; Function Attrs: nounwind
define dso_local range(i32 -262144, 262144) i32 @pqcrystals_dilithium5_ref_power2round(ptr noundef %a0, i32 noundef %a) local_unnamed_addr #0 !dbg !4320 {
entry:
    #dbg_value(ptr %a0, !4324, !DIExpression(), !4325)
    #dbg_value(i32 %a, !4326, !DIExpression(), !4325)
  %sub = add nsw i32 %a, 4095, !dbg !4327
  %shr = ashr i32 %sub, 13, !dbg !4328
    #dbg_value(i32 %shr, !4329, !DIExpression(), !4325)
  %shl = and i32 %sub, -8192, !dbg !4330
  %sub1 = sub nsw i32 %a, %shl, !dbg !4331
  store i32 %sub1, ptr %a0, align 4, !dbg !4332
  ret i32 %shr, !dbg !4333
}

; Function Attrs: nounwind
define dso_local range(i32 0, 16) i32 @pqcrystals_dilithium5_ref_decompose(ptr noundef %a0, i32 noundef %a) local_unnamed_addr #0 !dbg !4334 {
entry:
    #dbg_value(ptr %a0, !4335, !DIExpression(), !4336)
    #dbg_value(i32 %a, !4337, !DIExpression(), !4336)
  %add = add nsw i32 %a, 127, !dbg !4338
  %shr = ashr i32 %add, 7, !dbg !4339
    #dbg_value(i32 %shr, !4340, !DIExpression(), !4336)
  %mul = mul nsw i32 %shr, 1025, !dbg !4341
  %add1 = add nsw i32 %mul, 2097152, !dbg !4342
  %shr2 = lshr i32 %add1, 22, !dbg !4343
    #dbg_value(i32 %add1, !4340, !DIExpression(DW_OP_constu, 22, DW_OP_shra, DW_OP_stack_value), !4336)
  %and = and i32 %shr2, 15, !dbg !4344
    #dbg_value(i32 %and, !4340, !DIExpression(), !4336)
  %mul4.neg = mul nsw i32 %and, -523776, !dbg !4345
  %sub = add i32 %mul4.neg, %a, !dbg !4346
  %0 = icmp sgt i32 %sub, 4190208, !dbg !4347
  %and7.neg = select i1 %0, i32 -8380417, i32 0, !dbg !4348
  %sub8 = add i32 %and7.neg, %sub, !dbg !4349
  store i32 %sub8, ptr %a0, align 4, !dbg !4349
  ret i32 %and, !dbg !4350
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqcrystals_dilithium5_ref_make_hint(i32 noundef %a0, i32 noundef %a1) local_unnamed_addr #0 !dbg !4351 {
entry:
    #dbg_value(i32 %a0, !4354, !DIExpression(), !4355)
    #dbg_value(i32 %a1, !4356, !DIExpression(), !4355)
  %0 = add i32 %a0, -261889, !dbg !4357
  %or.cond = icmp ult i32 %0, -523777, !dbg !4357
  %cmp3 = icmp eq i32 %a0, -261888, !dbg !4357
  %cmp4.not = icmp ne i32 %a1, 0, !dbg !4357
  %or.cond1.not = and i1 %cmp3, %cmp4.not, !dbg !4357
  %narrow = or i1 %or.cond, %or.cond1.not, !dbg !4357
  %retval.0 = zext i1 %narrow to i32, !dbg !4357
  ret i32 %retval.0, !dbg !4359
}

; Function Attrs: nounwind
define dso_local range(i32 0, 16) i32 @pqcrystals_dilithium5_ref_use_hint(i32 noundef %a, i32 noundef %hint) local_unnamed_addr #0 !dbg !4360 {
entry:
  %a0 = alloca i32, align 4
    #dbg_value(i32 %a, !4363, !DIExpression(), !4364)
    #dbg_value(i32 %hint, !4365, !DIExpression(), !4364)
    #dbg_value(ptr %a0, !4366, !DIExpression(DW_OP_deref), !4364)
  %call = call i32 @pqcrystals_dilithium5_ref_decompose(ptr noundef nonnull %a0, i32 noundef %a) #4, !dbg !4367
    #dbg_value(i32 %call, !4368, !DIExpression(), !4364)
  %cmp = icmp eq i32 %hint, 0, !dbg !4369
  br i1 %cmp, label %return, label %if.end, !dbg !4369

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %a0, align 4, !dbg !4371
    #dbg_value(i32 %0, !4366, !DIExpression(), !4364)
  %cmp1 = icmp sgt i32 %0, 0, !dbg !4373
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !4373

if.then2:                                         ; preds = %if.end
  %add = add nuw nsw i32 %call, 1, !dbg !4374
  %and = and i32 %add, 15, !dbg !4375
  br label %return, !dbg !4376

if.else:                                          ; preds = %if.end
  %sub = add nuw nsw i32 %call, 15, !dbg !4377
  %and3 = and i32 %sub, 15, !dbg !4378
  br label %return, !dbg !4379

return:                                           ; preds = %entry, %if.else, %if.then2
  %retval.0 = phi i32 [ %and, %if.then2 ], [ %and3, %if.else ], [ %call, %entry ], !dbg !4364
  ret i32 %retval.0, !dbg !4380
}

; Function Attrs: nounwind
define dso_local void @dilithium_memset(ptr noundef %dst, i8 noundef zeroext %val, i32 noundef %len) local_unnamed_addr #0 !dbg !4381 {
entry:
    #dbg_value(ptr %dst, !4386, !DIExpression(), !4387)
    #dbg_value(i8 %val, !4388, !DIExpression(), !4387)
    #dbg_value(i32 %len, !4389, !DIExpression(), !4387)
    #dbg_value(ptr %dst, !4390, !DIExpression(), !4387)
    #dbg_value(i32 0, !4391, !DIExpression(), !4393)
  br label %for.cond, !dbg !4394

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4395
    #dbg_value(i32 %i.0, !4391, !DIExpression(), !4393)
  %exitcond = icmp ne i32 %i.0, %len, !dbg !4396
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4398

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0, !dbg !4399
  store i8 %val, ptr %arrayidx, align 1, !dbg !4400
  %inc = add i32 %i.0, 1, !dbg !4401
    #dbg_value(i32 %inc, !4391, !DIExpression(), !4393)
  br label %for.cond, !dbg !4402, !llvm.loop !4403

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4405
}

; Function Attrs: nounwind
define dso_local void @dilithium_memcpy(ptr noundef %dst, ptr noundef %src, i32 noundef %len) local_unnamed_addr #0 !dbg !4406 {
entry:
    #dbg_value(ptr %dst, !4411, !DIExpression(), !4412)
    #dbg_value(ptr %src, !4413, !DIExpression(), !4412)
    #dbg_value(i32 %len, !4414, !DIExpression(), !4412)
    #dbg_value(ptr %dst, !4415, !DIExpression(), !4412)
    #dbg_value(ptr %src, !4416, !DIExpression(), !4412)
    #dbg_value(i32 0, !4417, !DIExpression(), !4419)
  br label %for.cond, !dbg !4420

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !4421
    #dbg_value(i32 %i.0, !4417, !DIExpression(), !4419)
  %exitcond = icmp ne i32 %i.0, %len, !dbg !4422
  br i1 %exitcond, label %for.body, label %for.end, !dbg !4424

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %src, i32 %i.0, !dbg !4425
  %0 = load i8, ptr %arrayidx, align 1, !dbg !4425
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %dst, i32 %i.0, !dbg !4426
  store i8 %0, ptr %arrayidx1, align 1, !dbg !4427
  %inc = add i32 %i.0, 1, !dbg !4428
    #dbg_value(i32 %inc, !4417, !DIExpression(), !4419)
  br label %for.cond, !dbg !4429, !llvm.loop !4430

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4432
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
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 37488, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 4686)
!127 = !DILocation(line: 18, column: 11, scope: !117)
!128 = !DILocalVariable(name: "m2", scope: !117, file: !2, line: 19, type: !124)
!129 = !DILocation(line: 19, column: 11, scope: !117)
!130 = !DILocalVariable(name: "sm", scope: !117, file: !2, line: 20, type: !124)
!131 = !DILocation(line: 20, column: 11, scope: !117)
!132 = !DILocalVariable(name: "pk", scope: !117, file: !2, line: 21, type: !133)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 20736, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 2592)
!136 = !DILocation(line: 21, column: 11, scope: !117)
!137 = !DILocalVariable(name: "sk", scope: !117, file: !2, line: 22, type: !138)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 39168, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 4896)
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
!275 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_keypair", scope: !276, file: !276, line: 24, type: !277, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
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
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 458752, elements: !302)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyvecl", file: !295, line: 13, baseType: !296)
!295 = !DIFile(filename: "../../../ref/polyvec.h", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 57344, elements: !300)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "poly", file: !298, line: 11, baseType: !299)
!298 = !DIFile(filename: "../../../ref/poly.h", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8192, elements: !79)
!300 = !{!301}
!301 = !DISubrange(count: 7)
!302 = !{!303}
!303 = !DISubrange(count: 8)
!304 = !DILocation(line: 28, column: 12, scope: !275)
!305 = !DILocalVariable(name: "s1", scope: !275, file: !276, line: 29, type: !294)
!306 = !DILocation(line: 29, column: 12, scope: !275)
!307 = !DILocalVariable(name: "s1hat", scope: !275, file: !276, line: 29, type: !294)
!308 = !DILocation(line: 29, column: 16, scope: !275)
!309 = !DILocalVariable(name: "s2", scope: !275, file: !276, line: 30, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "polyveck", file: !295, line: 49, baseType: !311)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 65536, elements: !302)
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
!345 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_signature_internal", scope: !276, file: !276, line: 87, type: !346, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
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
!462 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_signature", scope: !276, file: !276, line: 205, type: !463, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
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
!509 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref", scope: !276, file: !276, line: 251, type: !463, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
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
!540 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_verify_internal", scope: !276, file: !276, line: 279, type: !541, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
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
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8192, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 1024)
!555 = !DILocation(line: 284, column: 11, scope: !540)
!556 = !DILocalVariable(name: "rho", scope: !540, file: !276, line: 285, type: !479)
!557 = !DILocation(line: 285, column: 11, scope: !540)
!558 = !DILocalVariable(name: "mu", scope: !540, file: !276, line: 286, type: !288)
!559 = !DILocation(line: 286, column: 11, scope: !540)
!560 = !DILocalVariable(name: "c", scope: !540, file: !276, line: 287, type: !288)
!561 = !DILocation(line: 287, column: 11, scope: !540)
!562 = !DILocalVariable(name: "c2", scope: !540, file: !276, line: 288, type: !288)
!563 = !DILocation(line: 288, column: 11, scope: !540)
!564 = !DILocalVariable(name: "cp", scope: !540, file: !276, line: 289, type: !297)
!565 = !DILocation(line: 289, column: 8, scope: !540)
!566 = !DILocalVariable(name: "mat", scope: !540, file: !276, line: 290, type: !293)
!567 = !DILocation(line: 290, column: 12, scope: !540)
!568 = !DILocalVariable(name: "z", scope: !540, file: !276, line: 290, type: !294)
!569 = !DILocation(line: 290, column: 20, scope: !540)
!570 = !DILocalVariable(name: "t1", scope: !540, file: !276, line: 291, type: !310)
!571 = !DILocation(line: 291, column: 12, scope: !540)
!572 = !DILocalVariable(name: "w1", scope: !540, file: !276, line: 291, type: !310)
!573 = !DILocation(line: 291, column: 16, scope: !540)
!574 = !DILocalVariable(name: "h", scope: !540, file: !276, line: 291, type: !310)
!575 = !DILocation(line: 291, column: 20, scope: !540)
!576 = !DILocalVariable(name: "state", scope: !540, file: !276, line: 292, type: !386)
!577 = !DILocation(line: 292, column: 16, scope: !540)
!578 = !DILocation(line: 294, column: 14, scope: !579)
!579 = distinct !DILexicalBlock(scope: !540, file: !276, line: 294, column: 7)
!580 = !DILocation(line: 297, column: 3, scope: !540)
!581 = !DILocation(line: 298, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !540, file: !276, line: 298, column: 7)
!583 = !DILocation(line: 300, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !540, file: !276, line: 300, column: 7)
!585 = !DILocation(line: 304, column: 3, scope: !540)
!586 = !DILocation(line: 305, column: 3, scope: !540)
!587 = !DILocation(line: 306, column: 3, scope: !540)
!588 = !DILocation(line: 307, column: 3, scope: !540)
!589 = !DILocation(line: 308, column: 3, scope: !540)
!590 = !DILocation(line: 309, column: 3, scope: !540)
!591 = !DILocation(line: 310, column: 3, scope: !540)
!592 = !DILocation(line: 313, column: 3, scope: !540)
!593 = !DILocation(line: 314, column: 3, scope: !540)
!594 = !DILocation(line: 316, column: 3, scope: !540)
!595 = !DILocation(line: 317, column: 3, scope: !540)
!596 = !DILocation(line: 319, column: 3, scope: !540)
!597 = !DILocation(line: 320, column: 3, scope: !540)
!598 = !DILocation(line: 321, column: 3, scope: !540)
!599 = !DILocation(line: 322, column: 3, scope: !540)
!600 = !DILocation(line: 324, column: 3, scope: !540)
!601 = !DILocation(line: 325, column: 3, scope: !540)
!602 = !DILocation(line: 326, column: 3, scope: !540)
!603 = !DILocation(line: 329, column: 3, scope: !540)
!604 = !DILocation(line: 330, column: 3, scope: !540)
!605 = !DILocation(line: 331, column: 3, scope: !540)
!606 = !DILocation(line: 334, column: 3, scope: !540)
!607 = !DILocation(line: 335, column: 3, scope: !540)
!608 = !DILocation(line: 336, column: 3, scope: !540)
!609 = !DILocation(line: 337, column: 3, scope: !540)
!610 = !DILocation(line: 338, column: 3, scope: !540)
!611 = !DILocalVariable(name: "i", scope: !540, file: !276, line: 283, type: !55)
!612 = !DILocation(line: 339, column: 8, scope: !613)
!613 = distinct !DILexicalBlock(scope: !540, file: !276, line: 339, column: 3)
!614 = !DILocation(line: 339, scope: !613)
!615 = !DILocation(line: 339, column: 17, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !276, line: 339, column: 3)
!617 = !DILocation(line: 339, column: 3, scope: !613)
!618 = !DILocation(line: 340, column: 9, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !276, line: 340, column: 9)
!620 = !DILocation(line: 340, column: 17, scope: !619)
!621 = !DILocation(line: 340, column: 14, scope: !619)
!622 = !DILocation(line: 339, column: 32, scope: !616)
!623 = !DILocation(line: 339, column: 3, scope: !616)
!624 = distinct !{!624, !617, !625, !200}
!625 = !DILocation(line: 341, column: 15, scope: !613)
!626 = !DILocation(line: 344, column: 1, scope: !540)
!627 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_verify", scope: !276, file: !276, line: 361, type: !541, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!628 = !DILocalVariable(name: "sig", arg: 1, scope: !627, file: !276, line: 361, type: !324)
!629 = !DILocation(line: 0, scope: !627)
!630 = !DILocalVariable(name: "siglen", arg: 2, scope: !627, file: !276, line: 361, type: !53)
!631 = !DILocalVariable(name: "m", arg: 3, scope: !627, file: !276, line: 361, type: !324)
!632 = !DILocalVariable(name: "mlen", arg: 4, scope: !627, file: !276, line: 362, type: !53)
!633 = !DILocalVariable(name: "ctx", arg: 5, scope: !627, file: !276, line: 362, type: !324)
!634 = !DILocalVariable(name: "ctxlen", arg: 6, scope: !627, file: !276, line: 362, type: !53)
!635 = !DILocalVariable(name: "pk", arg: 7, scope: !627, file: !276, line: 363, type: !324)
!636 = !DILocalVariable(name: "pre", scope: !627, file: !276, line: 365, type: !474)
!637 = !DILocation(line: 365, column: 11, scope: !627)
!638 = !DILocation(line: 367, column: 14, scope: !639)
!639 = distinct !DILexicalBlock(scope: !627, file: !276, line: 367, column: 7)
!640 = !DILocation(line: 370, column: 10, scope: !627)
!641 = !DILocation(line: 371, column: 12, scope: !627)
!642 = !DILocation(line: 371, column: 3, scope: !627)
!643 = !DILocation(line: 371, column: 10, scope: !627)
!644 = !DILocalVariable(name: "i", scope: !627, file: !276, line: 364, type: !53)
!645 = !DILocation(line: 372, column: 8, scope: !646)
!646 = distinct !DILexicalBlock(scope: !627, file: !276, line: 372, column: 3)
!647 = !DILocation(line: 372, scope: !646)
!648 = !DILocation(line: 372, column: 17, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !276, line: 372, column: 3)
!650 = !DILocation(line: 372, column: 3, scope: !646)
!651 = !DILocation(line: 373, column: 18, scope: !649)
!652 = !DILocation(line: 373, column: 11, scope: !649)
!653 = !DILocation(line: 373, column: 5, scope: !649)
!654 = !DILocation(line: 373, column: 16, scope: !649)
!655 = !DILocation(line: 372, column: 28, scope: !649)
!656 = !DILocation(line: 372, column: 3, scope: !649)
!657 = distinct !{!657, !650, !658, !200}
!658 = !DILocation(line: 373, column: 23, scope: !646)
!659 = !DILocation(line: 375, column: 67, scope: !627)
!660 = !DILocation(line: 375, column: 10, scope: !627)
!661 = !DILocation(line: 375, column: 3, scope: !627)
!662 = !DILocation(line: 376, column: 1, scope: !627)
!663 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_open", scope: !276, file: !276, line: 394, type: !463, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !64)
!664 = !DILocalVariable(name: "m", arg: 1, scope: !663, file: !276, line: 394, type: !47)
!665 = !DILocation(line: 0, scope: !663)
!666 = !DILocalVariable(name: "mlen", arg: 2, scope: !663, file: !276, line: 394, type: !348)
!667 = !DILocalVariable(name: "sm", arg: 3, scope: !663, file: !276, line: 394, type: !324)
!668 = !DILocalVariable(name: "smlen", arg: 4, scope: !663, file: !276, line: 394, type: !53)
!669 = !DILocalVariable(name: "ctx", arg: 5, scope: !663, file: !276, line: 395, type: !324)
!670 = !DILocalVariable(name: "ctxlen", arg: 6, scope: !663, file: !276, line: 395, type: !53)
!671 = !DILocalVariable(name: "pk", arg: 7, scope: !663, file: !276, line: 395, type: !324)
!672 = !DILocation(line: 398, column: 13, scope: !673)
!673 = distinct !DILexicalBlock(scope: !663, file: !276, line: 398, column: 7)
!674 = !DILocation(line: 401, column: 17, scope: !663)
!675 = !DILocation(line: 401, column: 9, scope: !663)
!676 = !DILocation(line: 402, column: 47, scope: !677)
!677 = distinct !DILexicalBlock(scope: !663, file: !276, line: 402, column: 7)
!678 = !DILocation(line: 402, column: 7, scope: !677)
!679 = !DILocation(line: 407, column: 5, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !276, line: 407, column: 5)
!681 = distinct !DILexicalBlock(scope: !677, file: !276, line: 405, column: 8)
!682 = !DILocation(line: 407, scope: !680)
!683 = !DILocalVariable(name: "i", scope: !663, file: !276, line: 396, type: !53)
!684 = !DILocation(line: 407, column: 21, scope: !685)
!685 = distinct !DILexicalBlock(scope: !680, file: !276, line: 407, column: 5)
!686 = !DILocation(line: 407, column: 19, scope: !685)
!687 = !DILocation(line: 408, column: 14, scope: !685)
!688 = !DILocation(line: 408, column: 7, scope: !685)
!689 = !DILocation(line: 408, column: 12, scope: !685)
!690 = !DILocation(line: 407, column: 28, scope: !685)
!691 = !DILocation(line: 407, column: 5, scope: !685)
!692 = distinct !{!692, !679, !693, !200}
!693 = !DILocation(line: 408, column: 33, scope: !680)
!694 = !DILabel(scope: !663, name: "badsig", file: !276, line: 412)
!695 = !DILocation(line: 412, column: 1, scope: !663)
!696 = !DILocation(line: 414, column: 9, scope: !663)
!697 = !DILocation(line: 415, column: 8, scope: !698)
!698 = distinct !DILexicalBlock(scope: !663, file: !276, line: 415, column: 3)
!699 = !DILocation(line: 415, scope: !698)
!700 = !DILocation(line: 415, column: 17, scope: !701)
!701 = distinct !DILexicalBlock(scope: !698, file: !276, line: 415, column: 3)
!702 = !DILocation(line: 415, column: 3, scope: !698)
!703 = !DILocation(line: 416, column: 5, scope: !701)
!704 = !DILocation(line: 416, column: 10, scope: !701)
!705 = !DILocation(line: 415, column: 26, scope: !701)
!706 = !DILocation(line: 415, column: 3, scope: !701)
!707 = distinct !{!707, !702, !708, !200}
!708 = !DILocation(line: 416, column: 12, scope: !698)
!709 = !DILocation(line: 419, column: 1, scope: !663)
!710 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyvec_matrix_expand", scope: !711, file: !711, line: 16, type: !712, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!711 = !DIFile(filename: "../../../ref/polyvec.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!712 = !DISubroutineType(types: !713)
!713 = !{null, !714, !324}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 32)
!715 = !DILocalVariable(name: "mat", arg: 1, scope: !710, file: !711, line: 16, type: !714)
!716 = !DILocation(line: 0, scope: !710)
!717 = !DILocalVariable(name: "rho", arg: 2, scope: !710, file: !711, line: 16, type: !324)
!718 = !DILocalVariable(name: "i", scope: !710, file: !711, line: 17, type: !55)
!719 = !DILocation(line: 19, column: 8, scope: !720)
!720 = distinct !DILexicalBlock(scope: !710, file: !711, line: 19, column: 3)
!721 = !DILocation(line: 19, scope: !720)
!722 = !DILocation(line: 19, column: 17, scope: !723)
!723 = distinct !DILexicalBlock(scope: !720, file: !711, line: 19, column: 3)
!724 = !DILocation(line: 19, column: 3, scope: !720)
!725 = !DILocation(line: 20, column: 5, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !711, line: 20, column: 5)
!727 = !DILocation(line: 20, scope: !726)
!728 = !DILocalVariable(name: "j", scope: !710, file: !711, line: 17, type: !55)
!729 = !DILocation(line: 20, column: 19, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !711, line: 20, column: 5)
!731 = !DILocation(line: 21, column: 21, scope: !730)
!732 = !DILocation(line: 21, column: 40, scope: !730)
!733 = !DILocation(line: 21, column: 46, scope: !730)
!734 = !DILocation(line: 21, column: 37, scope: !730)
!735 = !DILocation(line: 21, column: 7, scope: !730)
!736 = !DILocation(line: 20, column: 24, scope: !730)
!737 = !DILocation(line: 20, column: 5, scope: !730)
!738 = distinct !{!738, !725, !739, !200}
!739 = !DILocation(line: 21, column: 49, scope: !726)
!740 = !DILocation(line: 19, column: 22, scope: !723)
!741 = !DILocation(line: 19, column: 3, scope: !723)
!742 = distinct !{!742, !724, !743, !200}
!743 = !DILocation(line: 21, column: 49, scope: !720)
!744 = !DILocation(line: 22, column: 1, scope: !710)
!745 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyvec_matrix_pointwise_montgomery", scope: !711, file: !711, line: 24, type: !746, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !748, !749, !749}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!751 = !DILocalVariable(name: "t", arg: 1, scope: !745, file: !711, line: 24, type: !748)
!752 = !DILocation(line: 0, scope: !745)
!753 = !DILocalVariable(name: "mat", arg: 2, scope: !745, file: !711, line: 24, type: !749)
!754 = !DILocalVariable(name: "v", arg: 3, scope: !745, file: !711, line: 25, type: !749)
!755 = !DILocalVariable(name: "i", scope: !745, file: !711, line: 26, type: !55)
!756 = !DILocation(line: 28, column: 8, scope: !757)
!757 = distinct !DILexicalBlock(scope: !745, file: !711, line: 28, column: 3)
!758 = !DILocation(line: 28, scope: !757)
!759 = !DILocation(line: 28, column: 17, scope: !760)
!760 = distinct !DILexicalBlock(scope: !757, file: !711, line: 28, column: 3)
!761 = !DILocation(line: 28, column: 3, scope: !757)
!762 = !DILocation(line: 29, column: 40, scope: !760)
!763 = !DILocation(line: 29, column: 50, scope: !760)
!764 = !DILocation(line: 29, column: 5, scope: !760)
!765 = !DILocation(line: 28, column: 22, scope: !760)
!766 = !DILocation(line: 28, column: 3, scope: !760)
!767 = distinct !{!767, !761, !768, !200}
!768 = !DILocation(line: 29, column: 59, scope: !757)
!769 = !DILocation(line: 30, column: 1, scope: !745)
!770 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyvecl_pointwise_acc_montgomery", scope: !711, file: !711, line: 117, type: !771, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !773, !749, !749}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 32)
!774 = !DILocalVariable(name: "w", arg: 1, scope: !770, file: !711, line: 117, type: !773)
!775 = !DILocation(line: 0, scope: !770)
!776 = !DILocalVariable(name: "u", arg: 2, scope: !770, file: !711, line: 117, type: !749)
!777 = !DILocalVariable(name: "v", arg: 3, scope: !770, file: !711, line: 118, type: !749)
!778 = !DILocalVariable(name: "t", scope: !770, file: !711, line: 120, type: !297)
!779 = !DILocation(line: 120, column: 8, scope: !770)
!780 = !DILocation(line: 122, column: 3, scope: !770)
!781 = !DILocalVariable(name: "i", scope: !770, file: !711, line: 119, type: !55)
!782 = !DILocation(line: 123, column: 8, scope: !783)
!783 = distinct !DILexicalBlock(scope: !770, file: !711, line: 123, column: 3)
!784 = !DILocation(line: 123, scope: !783)
!785 = !DILocation(line: 123, column: 17, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !711, line: 123, column: 3)
!787 = !DILocation(line: 123, column: 3, scope: !783)
!788 = !DILocation(line: 124, column: 36, scope: !789)
!789 = distinct !DILexicalBlock(scope: !786, file: !711, line: 123, column: 27)
!790 = !DILocation(line: 124, column: 46, scope: !789)
!791 = !DILocation(line: 124, column: 5, scope: !789)
!792 = !DILocation(line: 125, column: 5, scope: !789)
!793 = !DILocation(line: 123, column: 22, scope: !786)
!794 = !DILocation(line: 123, column: 3, scope: !786)
!795 = distinct !{!795, !787, !796, !200}
!796 = !DILocation(line: 126, column: 3, scope: !783)
!797 = !DILocation(line: 127, column: 1, scope: !770)
!798 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyvecl_uniform_eta", scope: !711, file: !711, line: 36, type: !799, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !714, !324, !362}
!801 = !DILocalVariable(name: "v", arg: 1, scope: !798, file: !711, line: 36, type: !714)
!802 = !DILocation(line: 0, scope: !798)
!803 = !DILocalVariable(name: "seed", arg: 2, scope: !798, file: !711, line: 36, type: !324)
!804 = !DILocalVariable(name: "nonce", arg: 3, scope: !798, file: !711, line: 37, type: !362)
!805 = !DILocalVariable(name: "i", scope: !798, file: !711, line: 38, type: !55)
!806 = !DILocation(line: 40, column: 8, scope: !807)
!807 = distinct !DILexicalBlock(scope: !798, file: !711, line: 40, column: 3)
!808 = !DILocation(line: 40, scope: !807)
!809 = !DILocation(line: 40, column: 17, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !711, line: 40, column: 3)
!811 = !DILocation(line: 40, column: 3, scope: !807)
!812 = !DILocation(line: 41, column: 23, scope: !810)
!813 = !DILocation(line: 41, column: 5, scope: !810)
!814 = !DILocation(line: 41, column: 43, scope: !810)
!815 = !DILocation(line: 40, column: 22, scope: !810)
!816 = !DILocation(line: 40, column: 3, scope: !810)
!817 = distinct !{!817, !811, !818, !200}
!818 = !DILocation(line: 41, column: 45, scope: !807)
!819 = !DILocation(line: 42, column: 1, scope: !798)
!820 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyvecl_uniform_gamma1", scope: !711, file: !711, line: 44, type: !799, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!821 = !DILocalVariable(name: "v", arg: 1, scope: !820, file: !711, line: 44, type: !714)
!822 = !DILocation(line: 0, scope: !820)
!823 = !DILocalVariable(name: "seed", arg: 2, scope: !820, file: !711, line: 44, type: !324)
!824 = !DILocalVariable(name: "nonce", arg: 3, scope: !820, file: !711, line: 45, type: !362)
!825 = !DILocalVariable(name: "i", scope: !820, file: !711, line: 46, type: !55)
!826 = !DILocation(line: 48, column: 8, scope: !827)
!827 = distinct !DILexicalBlock(scope: !820, file: !711, line: 48, column: 3)
!828 = !DILocation(line: 48, scope: !827)
!829 = !DILocation(line: 48, column: 17, scope: !830)
!830 = distinct !DILexicalBlock(scope: !827, file: !711, line: 48, column: 3)
!831 = !DILocation(line: 48, column: 3, scope: !827)
!832 = !DILocation(line: 49, column: 26, scope: !830)
!833 = !DILocation(line: 49, column: 45, scope: !830)
!834 = !DILocation(line: 49, column: 43, scope: !830)
!835 = !DILocation(line: 49, column: 51, scope: !830)
!836 = !DILocation(line: 49, column: 41, scope: !830)
!837 = !DILocation(line: 49, column: 5, scope: !830)
!838 = !DILocation(line: 48, column: 22, scope: !830)
!839 = !DILocation(line: 48, column: 3, scope: !830)
!840 = distinct !{!840, !831, !841, !200}
!841 = !DILocation(line: 49, column: 54, scope: !827)
!842 = !DILocation(line: 50, column: 1, scope: !820)
!843 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyvecl_reduce", scope: !711, file: !711, line: 52, type: !844, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !714}
!846 = !DILocalVariable(name: "v", arg: 1, scope: !843, file: !711, line: 52, type: !714)
!847 = !DILocation(line: 0, scope: !843)
!848 = !DILocalVariable(name: "i", scope: !843, file: !711, line: 53, type: !55)
!849 = !DILocation(line: 55, column: 8, scope: !850)
!850 = distinct !DILexicalBlock(scope: !843, file: !711, line: 55, column: 3)
!851 = !DILocation(line: 55, scope: !850)
!852 = !DILocation(line: 55, column: 17, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !711, line: 55, column: 3)
!854 = !DILocation(line: 55, column: 3, scope: !850)
!855 = !DILocation(line: 56, column: 18, scope: !853)
!856 = !DILocation(line: 56, column: 5, scope: !853)
!857 = !DILocation(line: 55, column: 22, scope: !853)
!858 = !DILocation(line: 55, column: 3, scope: !853)
!859 = distinct !{!859, !854, !860, !200}
!860 = !DILocation(line: 56, column: 25, scope: !850)
!861 = !DILocation(line: 57, column: 1, scope: !843)
!862 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyvecl_add", scope: !711, file: !711, line: 69, type: !863, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !714, !749, !749}
!865 = !DILocalVariable(name: "w", arg: 1, scope: !862, file: !711, line: 69, type: !714)
!866 = !DILocation(line: 0, scope: !862)
!867 = !DILocalVariable(name: "u", arg: 2, scope: !862, file: !711, line: 69, type: !749)
!868 = !DILocalVariable(name: "v", arg: 3, scope: !862, file: !711, line: 69, type: !749)
!869 = !DILocalVariable(name: "i", scope: !862, file: !711, line: 70, type: !55)
!870 = !DILocation(line: 72, column: 8, scope: !871)
!871 = distinct !DILexicalBlock(scope: !862, file: !711, line: 72, column: 3)
!872 = !DILocation(line: 72, scope: !871)
!873 = !DILocation(line: 72, column: 17, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !711, line: 72, column: 3)
!875 = !DILocation(line: 72, column: 3, scope: !871)
!876 = !DILocation(line: 73, column: 15, scope: !874)
!877 = !DILocation(line: 73, column: 25, scope: !874)
!878 = !DILocation(line: 73, column: 35, scope: !874)
!879 = !DILocation(line: 73, column: 5, scope: !874)
!880 = !DILocation(line: 72, column: 22, scope: !874)
!881 = !DILocation(line: 72, column: 3, scope: !874)
!882 = distinct !{!882, !875, !883, !200}
!883 = !DILocation(line: 73, column: 42, scope: !871)
!884 = !DILocation(line: 74, column: 1, scope: !862)
!885 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyvecl_ntt", scope: !711, file: !711, line: 84, type: !844, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!886 = !DILocalVariable(name: "v", arg: 1, scope: !885, file: !711, line: 84, type: !714)
!887 = !DILocation(line: 0, scope: !885)
!888 = !DILocalVariable(name: "i", scope: !885, file: !711, line: 85, type: !55)
!889 = !DILocation(line: 87, column: 8, scope: !890)
!890 = distinct !DILexicalBlock(scope: !885, file: !711, line: 87, column: 3)
!891 = !DILocation(line: 87, scope: !890)
!892 = !DILocation(line: 87, column: 17, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !711, line: 87, column: 3)
!894 = !DILocation(line: 87, column: 3, scope: !890)
!895 = !DILocation(line: 88, column: 15, scope: !893)
!896 = !DILocation(line: 88, column: 5, scope: !893)
!897 = !DILocation(line: 87, column: 22, scope: !893)
!898 = !DILocation(line: 87, column: 3, scope: !893)
!899 = distinct !{!899, !894, !900, !200}
!900 = !DILocation(line: 88, column: 22, scope: !890)
!901 = !DILocation(line: 89, column: 1, scope: !885)
!902 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyvecl_invntt_tomont", scope: !711, file: !711, line: 91, type: !844, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!903 = !DILocalVariable(name: "v", arg: 1, scope: !902, file: !711, line: 91, type: !714)
!904 = !DILocation(line: 0, scope: !902)
!905 = !DILocalVariable(name: "i", scope: !902, file: !711, line: 92, type: !55)
!906 = !DILocation(line: 94, column: 8, scope: !907)
!907 = distinct !DILexicalBlock(scope: !902, file: !711, line: 94, column: 3)
!908 = !DILocation(line: 94, scope: !907)
!909 = !DILocation(line: 94, column: 17, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !711, line: 94, column: 3)
!911 = !DILocation(line: 94, column: 3, scope: !907)
!912 = !DILocation(line: 95, column: 25, scope: !910)
!913 = !DILocation(line: 95, column: 5, scope: !910)
!914 = !DILocation(line: 94, column: 22, scope: !910)
!915 = !DILocation(line: 94, column: 3, scope: !910)
!916 = distinct !{!916, !911, !917, !200}
!917 = !DILocation(line: 95, column: 32, scope: !907)
!918 = !DILocation(line: 96, column: 1, scope: !902)
!919 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyvecl_pointwise_poly_montgomery", scope: !711, file: !711, line: 98, type: !920, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !714, !922, !749}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!924 = !DILocalVariable(name: "r", arg: 1, scope: !919, file: !711, line: 98, type: !714)
!925 = !DILocation(line: 0, scope: !919)
!926 = !DILocalVariable(name: "a", arg: 2, scope: !919, file: !711, line: 98, type: !922)
!927 = !DILocalVariable(name: "v", arg: 3, scope: !919, file: !711, line: 99, type: !749)
!928 = !DILocalVariable(name: "i", scope: !919, file: !711, line: 100, type: !55)
!929 = !DILocation(line: 102, column: 8, scope: !930)
!930 = distinct !DILexicalBlock(scope: !919, file: !711, line: 102, column: 3)
!931 = !DILocation(line: 102, scope: !930)
!932 = !DILocation(line: 102, column: 17, scope: !933)
!933 = distinct !DILexicalBlock(scope: !930, file: !711, line: 102, column: 3)
!934 = !DILocation(line: 102, column: 3, scope: !930)
!935 = !DILocation(line: 103, column: 32, scope: !933)
!936 = !DILocation(line: 103, column: 45, scope: !933)
!937 = !DILocation(line: 103, column: 5, scope: !933)
!938 = !DILocation(line: 102, column: 22, scope: !933)
!939 = !DILocation(line: 102, column: 3, scope: !933)
!940 = distinct !{!940, !934, !941, !200}
!941 = !DILocation(line: 103, column: 52, scope: !930)
!942 = !DILocation(line: 104, column: 1, scope: !919)
!943 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyvecl_chknorm", scope: !711, file: !711, line: 141, type: !944, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!944 = !DISubroutineType(types: !945)
!945 = !{!65, !749, !77}
!946 = !DILocalVariable(name: "v", arg: 1, scope: !943, file: !711, line: 141, type: !749)
!947 = !DILocation(line: 0, scope: !943)
!948 = !DILocalVariable(name: "bound", arg: 2, scope: !943, file: !711, line: 141, type: !77)
!949 = !DILocalVariable(name: "i", scope: !943, file: !711, line: 142, type: !55)
!950 = !DILocation(line: 144, column: 8, scope: !951)
!951 = distinct !DILexicalBlock(scope: !943, file: !711, line: 144, column: 3)
!952 = !DILocation(line: 144, scope: !951)
!953 = !DILocation(line: 144, column: 17, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !711, line: 144, column: 3)
!955 = !DILocation(line: 144, column: 3, scope: !951)
!956 = !DILocation(line: 145, column: 23, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !711, line: 145, column: 9)
!958 = !DILocation(line: 145, column: 9, scope: !957)
!959 = !DILocation(line: 144, column: 22, scope: !954)
!960 = !DILocation(line: 144, column: 3, scope: !954)
!961 = distinct !{!961, !955, !962, !200}
!962 = !DILocation(line: 146, column: 14, scope: !951)
!963 = !DILocation(line: 149, column: 1, scope: !943)
!964 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_uniform_eta", scope: !711, file: !711, line: 155, type: !965, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !748, !324, !362}
!967 = !DILocalVariable(name: "v", arg: 1, scope: !964, file: !711, line: 155, type: !748)
!968 = !DILocation(line: 0, scope: !964)
!969 = !DILocalVariable(name: "seed", arg: 2, scope: !964, file: !711, line: 155, type: !324)
!970 = !DILocalVariable(name: "nonce", arg: 3, scope: !964, file: !711, line: 156, type: !362)
!971 = !DILocalVariable(name: "i", scope: !964, file: !711, line: 157, type: !55)
!972 = !DILocation(line: 159, column: 8, scope: !973)
!973 = distinct !DILexicalBlock(scope: !964, file: !711, line: 159, column: 3)
!974 = !DILocation(line: 159, scope: !973)
!975 = !DILocation(line: 159, column: 17, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !711, line: 159, column: 3)
!977 = !DILocation(line: 159, column: 3, scope: !973)
!978 = !DILocation(line: 160, column: 23, scope: !976)
!979 = !DILocation(line: 160, column: 5, scope: !976)
!980 = !DILocation(line: 160, column: 43, scope: !976)
!981 = !DILocation(line: 159, column: 22, scope: !976)
!982 = !DILocation(line: 159, column: 3, scope: !976)
!983 = distinct !{!983, !977, !984, !200}
!984 = !DILocation(line: 160, column: 45, scope: !973)
!985 = !DILocation(line: 161, column: 1, scope: !964)
!986 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_reduce", scope: !711, file: !711, line: 171, type: !987, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !748}
!989 = !DILocalVariable(name: "v", arg: 1, scope: !986, file: !711, line: 171, type: !748)
!990 = !DILocation(line: 0, scope: !986)
!991 = !DILocalVariable(name: "i", scope: !986, file: !711, line: 172, type: !55)
!992 = !DILocation(line: 174, column: 8, scope: !993)
!993 = distinct !DILexicalBlock(scope: !986, file: !711, line: 174, column: 3)
!994 = !DILocation(line: 174, scope: !993)
!995 = !DILocation(line: 174, column: 17, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !711, line: 174, column: 3)
!997 = !DILocation(line: 174, column: 3, scope: !993)
!998 = !DILocation(line: 175, column: 18, scope: !996)
!999 = !DILocation(line: 175, column: 5, scope: !996)
!1000 = !DILocation(line: 174, column: 22, scope: !996)
!1001 = !DILocation(line: 174, column: 3, scope: !996)
!1002 = distinct !{!1002, !997, !1003, !200}
!1003 = !DILocation(line: 175, column: 25, scope: !993)
!1004 = !DILocation(line: 176, column: 1, scope: !986)
!1005 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_caddq", scope: !711, file: !711, line: 186, type: !987, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1006 = !DILocalVariable(name: "v", arg: 1, scope: !1005, file: !711, line: 186, type: !748)
!1007 = !DILocation(line: 0, scope: !1005)
!1008 = !DILocalVariable(name: "i", scope: !1005, file: !711, line: 187, type: !55)
!1009 = !DILocation(line: 189, column: 8, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !711, line: 189, column: 3)
!1011 = !DILocation(line: 189, scope: !1010)
!1012 = !DILocation(line: 189, column: 17, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !711, line: 189, column: 3)
!1014 = !DILocation(line: 189, column: 3, scope: !1010)
!1015 = !DILocation(line: 190, column: 17, scope: !1013)
!1016 = !DILocation(line: 190, column: 5, scope: !1013)
!1017 = !DILocation(line: 189, column: 22, scope: !1013)
!1018 = !DILocation(line: 189, column: 3, scope: !1013)
!1019 = distinct !{!1019, !1014, !1020, !200}
!1020 = !DILocation(line: 190, column: 24, scope: !1010)
!1021 = !DILocation(line: 191, column: 1, scope: !1005)
!1022 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_add", scope: !711, file: !711, line: 203, type: !1023, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !748, !1025, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!1027 = !DILocalVariable(name: "w", arg: 1, scope: !1022, file: !711, line: 203, type: !748)
!1028 = !DILocation(line: 0, scope: !1022)
!1029 = !DILocalVariable(name: "u", arg: 2, scope: !1022, file: !711, line: 203, type: !1025)
!1030 = !DILocalVariable(name: "v", arg: 3, scope: !1022, file: !711, line: 203, type: !1025)
!1031 = !DILocalVariable(name: "i", scope: !1022, file: !711, line: 204, type: !55)
!1032 = !DILocation(line: 206, column: 8, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1022, file: !711, line: 206, column: 3)
!1034 = !DILocation(line: 206, scope: !1033)
!1035 = !DILocation(line: 206, column: 17, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1033, file: !711, line: 206, column: 3)
!1037 = !DILocation(line: 206, column: 3, scope: !1033)
!1038 = !DILocation(line: 207, column: 15, scope: !1036)
!1039 = !DILocation(line: 207, column: 25, scope: !1036)
!1040 = !DILocation(line: 207, column: 35, scope: !1036)
!1041 = !DILocation(line: 207, column: 5, scope: !1036)
!1042 = !DILocation(line: 206, column: 22, scope: !1036)
!1043 = !DILocation(line: 206, column: 3, scope: !1036)
!1044 = distinct !{!1044, !1037, !1045, !200}
!1045 = !DILocation(line: 207, column: 42, scope: !1033)
!1046 = !DILocation(line: 208, column: 1, scope: !1022)
!1047 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_sub", scope: !711, file: !711, line: 221, type: !1023, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1048 = !DILocalVariable(name: "w", arg: 1, scope: !1047, file: !711, line: 221, type: !748)
!1049 = !DILocation(line: 0, scope: !1047)
!1050 = !DILocalVariable(name: "u", arg: 2, scope: !1047, file: !711, line: 221, type: !1025)
!1051 = !DILocalVariable(name: "v", arg: 3, scope: !1047, file: !711, line: 221, type: !1025)
!1052 = !DILocalVariable(name: "i", scope: !1047, file: !711, line: 222, type: !55)
!1053 = !DILocation(line: 224, column: 8, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1047, file: !711, line: 224, column: 3)
!1055 = !DILocation(line: 224, scope: !1054)
!1056 = !DILocation(line: 224, column: 17, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !711, line: 224, column: 3)
!1058 = !DILocation(line: 224, column: 3, scope: !1054)
!1059 = !DILocation(line: 225, column: 15, scope: !1057)
!1060 = !DILocation(line: 225, column: 25, scope: !1057)
!1061 = !DILocation(line: 225, column: 35, scope: !1057)
!1062 = !DILocation(line: 225, column: 5, scope: !1057)
!1063 = !DILocation(line: 224, column: 22, scope: !1057)
!1064 = !DILocation(line: 224, column: 3, scope: !1057)
!1065 = distinct !{!1065, !1058, !1066, !200}
!1066 = !DILocation(line: 225, column: 42, scope: !1054)
!1067 = !DILocation(line: 226, column: 1, scope: !1047)
!1068 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_shiftl", scope: !711, file: !711, line: 236, type: !987, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1069 = !DILocalVariable(name: "v", arg: 1, scope: !1068, file: !711, line: 236, type: !748)
!1070 = !DILocation(line: 0, scope: !1068)
!1071 = !DILocalVariable(name: "i", scope: !1068, file: !711, line: 237, type: !55)
!1072 = !DILocation(line: 239, column: 8, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !711, line: 239, column: 3)
!1074 = !DILocation(line: 239, scope: !1073)
!1075 = !DILocation(line: 239, column: 17, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !711, line: 239, column: 3)
!1077 = !DILocation(line: 239, column: 3, scope: !1073)
!1078 = !DILocation(line: 240, column: 18, scope: !1076)
!1079 = !DILocation(line: 240, column: 5, scope: !1076)
!1080 = !DILocation(line: 239, column: 22, scope: !1076)
!1081 = !DILocation(line: 239, column: 3, scope: !1076)
!1082 = distinct !{!1082, !1077, !1083, !200}
!1083 = !DILocation(line: 240, column: 25, scope: !1073)
!1084 = !DILocation(line: 241, column: 1, scope: !1068)
!1085 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_ntt", scope: !711, file: !711, line: 251, type: !987, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1086 = !DILocalVariable(name: "v", arg: 1, scope: !1085, file: !711, line: 251, type: !748)
!1087 = !DILocation(line: 0, scope: !1085)
!1088 = !DILocalVariable(name: "i", scope: !1085, file: !711, line: 252, type: !55)
!1089 = !DILocation(line: 254, column: 8, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !711, line: 254, column: 3)
!1091 = !DILocation(line: 254, scope: !1090)
!1092 = !DILocation(line: 254, column: 17, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !711, line: 254, column: 3)
!1094 = !DILocation(line: 254, column: 3, scope: !1090)
!1095 = !DILocation(line: 255, column: 15, scope: !1093)
!1096 = !DILocation(line: 255, column: 5, scope: !1093)
!1097 = !DILocation(line: 254, column: 22, scope: !1093)
!1098 = !DILocation(line: 254, column: 3, scope: !1093)
!1099 = distinct !{!1099, !1094, !1100, !200}
!1100 = !DILocation(line: 255, column: 22, scope: !1090)
!1101 = !DILocation(line: 256, column: 1, scope: !1085)
!1102 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_invntt_tomont", scope: !711, file: !711, line: 267, type: !987, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1103 = !DILocalVariable(name: "v", arg: 1, scope: !1102, file: !711, line: 267, type: !748)
!1104 = !DILocation(line: 0, scope: !1102)
!1105 = !DILocalVariable(name: "i", scope: !1102, file: !711, line: 268, type: !55)
!1106 = !DILocation(line: 270, column: 8, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !711, line: 270, column: 3)
!1108 = !DILocation(line: 270, scope: !1107)
!1109 = !DILocation(line: 270, column: 17, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !711, line: 270, column: 3)
!1111 = !DILocation(line: 270, column: 3, scope: !1107)
!1112 = !DILocation(line: 271, column: 25, scope: !1110)
!1113 = !DILocation(line: 271, column: 5, scope: !1110)
!1114 = !DILocation(line: 270, column: 22, scope: !1110)
!1115 = !DILocation(line: 270, column: 3, scope: !1110)
!1116 = distinct !{!1116, !1111, !1117, !200}
!1117 = !DILocation(line: 271, column: 32, scope: !1107)
!1118 = !DILocation(line: 272, column: 1, scope: !1102)
!1119 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_pointwise_poly_montgomery", scope: !711, file: !711, line: 274, type: !1120, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !748, !922, !1025}
!1122 = !DILocalVariable(name: "r", arg: 1, scope: !1119, file: !711, line: 274, type: !748)
!1123 = !DILocation(line: 0, scope: !1119)
!1124 = !DILocalVariable(name: "a", arg: 2, scope: !1119, file: !711, line: 274, type: !922)
!1125 = !DILocalVariable(name: "v", arg: 3, scope: !1119, file: !711, line: 275, type: !1025)
!1126 = !DILocalVariable(name: "i", scope: !1119, file: !711, line: 276, type: !55)
!1127 = !DILocation(line: 278, column: 8, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1119, file: !711, line: 278, column: 3)
!1129 = !DILocation(line: 278, scope: !1128)
!1130 = !DILocation(line: 278, column: 17, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !711, line: 278, column: 3)
!1132 = !DILocation(line: 278, column: 3, scope: !1128)
!1133 = !DILocation(line: 279, column: 32, scope: !1131)
!1134 = !DILocation(line: 279, column: 45, scope: !1131)
!1135 = !DILocation(line: 279, column: 5, scope: !1131)
!1136 = !DILocation(line: 278, column: 22, scope: !1131)
!1137 = !DILocation(line: 278, column: 3, scope: !1131)
!1138 = distinct !{!1138, !1132, !1139, !200}
!1139 = !DILocation(line: 279, column: 52, scope: !1128)
!1140 = !DILocation(line: 280, column: 1, scope: !1119)
!1141 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_chknorm", scope: !711, file: !711, line: 294, type: !1142, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!65, !1025, !77}
!1144 = !DILocalVariable(name: "v", arg: 1, scope: !1141, file: !711, line: 294, type: !1025)
!1145 = !DILocation(line: 0, scope: !1141)
!1146 = !DILocalVariable(name: "bound", arg: 2, scope: !1141, file: !711, line: 294, type: !77)
!1147 = !DILocalVariable(name: "i", scope: !1141, file: !711, line: 295, type: !55)
!1148 = !DILocation(line: 297, column: 8, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1141, file: !711, line: 297, column: 3)
!1150 = !DILocation(line: 297, scope: !1149)
!1151 = !DILocation(line: 297, column: 17, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !711, line: 297, column: 3)
!1153 = !DILocation(line: 297, column: 3, scope: !1149)
!1154 = !DILocation(line: 298, column: 23, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !711, line: 298, column: 9)
!1156 = !DILocation(line: 298, column: 9, scope: !1155)
!1157 = !DILocation(line: 297, column: 22, scope: !1152)
!1158 = !DILocation(line: 297, column: 3, scope: !1152)
!1159 = distinct !{!1159, !1153, !1160, !200}
!1160 = !DILocation(line: 299, column: 14, scope: !1149)
!1161 = !DILocation(line: 302, column: 1, scope: !1141)
!1162 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_power2round", scope: !711, file: !711, line: 318, type: !1163, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !748, !748, !1025}
!1165 = !DILocalVariable(name: "v1", arg: 1, scope: !1162, file: !711, line: 318, type: !748)
!1166 = !DILocation(line: 0, scope: !1162)
!1167 = !DILocalVariable(name: "v0", arg: 2, scope: !1162, file: !711, line: 318, type: !748)
!1168 = !DILocalVariable(name: "v", arg: 3, scope: !1162, file: !711, line: 318, type: !1025)
!1169 = !DILocalVariable(name: "i", scope: !1162, file: !711, line: 319, type: !55)
!1170 = !DILocation(line: 321, column: 8, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1162, file: !711, line: 321, column: 3)
!1172 = !DILocation(line: 321, scope: !1171)
!1173 = !DILocation(line: 321, column: 17, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !711, line: 321, column: 3)
!1175 = !DILocation(line: 321, column: 3, scope: !1171)
!1176 = !DILocation(line: 322, column: 23, scope: !1174)
!1177 = !DILocation(line: 322, column: 34, scope: !1174)
!1178 = !DILocation(line: 322, column: 45, scope: !1174)
!1179 = !DILocation(line: 322, column: 5, scope: !1174)
!1180 = !DILocation(line: 321, column: 22, scope: !1174)
!1181 = !DILocation(line: 321, column: 3, scope: !1174)
!1182 = distinct !{!1182, !1175, !1183, !200}
!1183 = !DILocation(line: 322, column: 52, scope: !1171)
!1184 = !DILocation(line: 323, column: 1, scope: !1162)
!1185 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_decompose", scope: !711, file: !711, line: 340, type: !1163, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1186 = !DILocalVariable(name: "v1", arg: 1, scope: !1185, file: !711, line: 340, type: !748)
!1187 = !DILocation(line: 0, scope: !1185)
!1188 = !DILocalVariable(name: "v0", arg: 2, scope: !1185, file: !711, line: 340, type: !748)
!1189 = !DILocalVariable(name: "v", arg: 3, scope: !1185, file: !711, line: 340, type: !1025)
!1190 = !DILocalVariable(name: "i", scope: !1185, file: !711, line: 341, type: !55)
!1191 = !DILocation(line: 343, column: 8, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1185, file: !711, line: 343, column: 3)
!1193 = !DILocation(line: 343, scope: !1192)
!1194 = !DILocation(line: 343, column: 17, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !711, line: 343, column: 3)
!1196 = !DILocation(line: 343, column: 3, scope: !1192)
!1197 = !DILocation(line: 344, column: 21, scope: !1195)
!1198 = !DILocation(line: 344, column: 32, scope: !1195)
!1199 = !DILocation(line: 344, column: 43, scope: !1195)
!1200 = !DILocation(line: 344, column: 5, scope: !1195)
!1201 = !DILocation(line: 343, column: 22, scope: !1195)
!1202 = !DILocation(line: 343, column: 3, scope: !1195)
!1203 = distinct !{!1203, !1196, !1204, !200}
!1204 = !DILocation(line: 344, column: 50, scope: !1192)
!1205 = !DILocation(line: 345, column: 1, scope: !1185)
!1206 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_make_hint", scope: !711, file: !711, line: 358, type: !1207, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!55, !748, !1025, !1025}
!1209 = !DILocalVariable(name: "h", arg: 1, scope: !1206, file: !711, line: 358, type: !748)
!1210 = !DILocation(line: 0, scope: !1206)
!1211 = !DILocalVariable(name: "v0", arg: 2, scope: !1206, file: !711, line: 358, type: !1025)
!1212 = !DILocalVariable(name: "v1", arg: 3, scope: !1206, file: !711, line: 359, type: !1025)
!1213 = !DILocalVariable(name: "s", scope: !1206, file: !711, line: 360, type: !55)
!1214 = !DILocalVariable(name: "i", scope: !1206, file: !711, line: 360, type: !55)
!1215 = !DILocation(line: 362, column: 8, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1206, file: !711, line: 362, column: 3)
!1217 = !DILocation(line: 362, scope: !1216)
!1218 = !DILocation(line: 362, column: 17, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !711, line: 362, column: 3)
!1220 = !DILocation(line: 362, column: 3, scope: !1216)
!1221 = !DILocation(line: 363, column: 26, scope: !1219)
!1222 = !DILocation(line: 363, column: 36, scope: !1219)
!1223 = !DILocation(line: 363, column: 47, scope: !1219)
!1224 = !DILocation(line: 363, column: 10, scope: !1219)
!1225 = !DILocation(line: 363, column: 7, scope: !1219)
!1226 = !DILocation(line: 362, column: 22, scope: !1219)
!1227 = !DILocation(line: 362, column: 3, scope: !1219)
!1228 = distinct !{!1228, !1220, !1229, !200}
!1229 = !DILocation(line: 363, column: 55, scope: !1216)
!1230 = !DILocation(line: 365, column: 3, scope: !1206)
!1231 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_use_hint", scope: !711, file: !711, line: 378, type: !1023, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1232 = !DILocalVariable(name: "w", arg: 1, scope: !1231, file: !711, line: 378, type: !748)
!1233 = !DILocation(line: 0, scope: !1231)
!1234 = !DILocalVariable(name: "u", arg: 2, scope: !1231, file: !711, line: 378, type: !1025)
!1235 = !DILocalVariable(name: "h", arg: 3, scope: !1231, file: !711, line: 378, type: !1025)
!1236 = !DILocalVariable(name: "i", scope: !1231, file: !711, line: 379, type: !55)
!1237 = !DILocation(line: 381, column: 8, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1231, file: !711, line: 381, column: 3)
!1239 = !DILocation(line: 381, scope: !1238)
!1240 = !DILocation(line: 381, column: 17, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !711, line: 381, column: 3)
!1242 = !DILocation(line: 381, column: 3, scope: !1238)
!1243 = !DILocation(line: 382, column: 20, scope: !1241)
!1244 = !DILocation(line: 382, column: 30, scope: !1241)
!1245 = !DILocation(line: 382, column: 40, scope: !1241)
!1246 = !DILocation(line: 382, column: 5, scope: !1241)
!1247 = !DILocation(line: 381, column: 22, scope: !1241)
!1248 = !DILocation(line: 381, column: 3, scope: !1241)
!1249 = distinct !{!1249, !1242, !1250, !200}
!1250 = !DILocation(line: 382, column: 47, scope: !1238)
!1251 = !DILocation(line: 383, column: 1, scope: !1231)
!1252 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyveck_pack_w1", scope: !711, file: !711, line: 385, type: !1253, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !47, !1025}
!1255 = !DILocalVariable(name: "r", arg: 1, scope: !1252, file: !711, line: 385, type: !47)
!1256 = !DILocation(line: 0, scope: !1252)
!1257 = !DILocalVariable(name: "w1", arg: 2, scope: !1252, file: !711, line: 385, type: !1025)
!1258 = !DILocalVariable(name: "i", scope: !1252, file: !711, line: 386, type: !55)
!1259 = !DILocation(line: 388, column: 8, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1252, file: !711, line: 388, column: 3)
!1261 = !DILocation(line: 388, scope: !1260)
!1262 = !DILocation(line: 388, column: 17, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1260, file: !711, line: 388, column: 3)
!1264 = !DILocation(line: 388, column: 3, scope: !1260)
!1265 = !DILocation(line: 389, column: 22, scope: !1263)
!1266 = !DILocation(line: 389, column: 18, scope: !1263)
!1267 = !DILocation(line: 389, column: 46, scope: !1263)
!1268 = !DILocation(line: 389, column: 5, scope: !1263)
!1269 = !DILocation(line: 388, column: 22, scope: !1263)
!1270 = !DILocation(line: 388, column: 3, scope: !1263)
!1271 = distinct !{!1271, !1264, !1272, !200}
!1272 = !DILocation(line: 389, column: 54, scope: !1260)
!1273 = !DILocation(line: 390, column: 1, scope: !1252)
!1274 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_reduce", scope: !1275, file: !1275, line: 28, type: !1276, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1275 = !DIFile(filename: "../../../ref/poly.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !773}
!1278 = !DILocalVariable(name: "a", arg: 1, scope: !1274, file: !1275, line: 28, type: !773)
!1279 = !DILocation(line: 0, scope: !1274)
!1280 = !DILocalVariable(name: "i", scope: !1274, file: !1275, line: 29, type: !55)
!1281 = !DILocation(line: 32, column: 8, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1274, file: !1275, line: 32, column: 3)
!1283 = !DILocation(line: 32, scope: !1282)
!1284 = !DILocation(line: 32, column: 17, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !1275, line: 32, column: 3)
!1286 = !DILocation(line: 32, column: 3, scope: !1282)
!1287 = !DILocation(line: 33, column: 24, scope: !1285)
!1288 = !DILocation(line: 33, column: 15, scope: !1285)
!1289 = !DILocation(line: 33, column: 5, scope: !1285)
!1290 = !DILocation(line: 33, column: 13, scope: !1285)
!1291 = !DILocation(line: 32, column: 22, scope: !1285)
!1292 = !DILocation(line: 32, column: 3, scope: !1285)
!1293 = distinct !{!1293, !1286, !1294, !200}
!1294 = !DILocation(line: 33, column: 31, scope: !1282)
!1295 = !DILocation(line: 36, column: 1, scope: !1274)
!1296 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_caddq", scope: !1275, file: !1275, line: 46, type: !1276, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1297 = !DILocalVariable(name: "a", arg: 1, scope: !1296, file: !1275, line: 46, type: !773)
!1298 = !DILocation(line: 0, scope: !1296)
!1299 = !DILocalVariable(name: "i", scope: !1296, file: !1275, line: 47, type: !55)
!1300 = !DILocation(line: 50, column: 8, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !1275, line: 50, column: 3)
!1302 = !DILocation(line: 50, scope: !1301)
!1303 = !DILocation(line: 50, column: 17, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1301, file: !1275, line: 50, column: 3)
!1305 = !DILocation(line: 50, column: 3, scope: !1301)
!1306 = !DILocation(line: 51, column: 21, scope: !1304)
!1307 = !DILocation(line: 51, column: 15, scope: !1304)
!1308 = !DILocation(line: 51, column: 5, scope: !1304)
!1309 = !DILocation(line: 51, column: 13, scope: !1304)
!1310 = !DILocation(line: 50, column: 22, scope: !1304)
!1311 = !DILocation(line: 50, column: 3, scope: !1304)
!1312 = distinct !{!1312, !1305, !1313, !200}
!1313 = !DILocation(line: 51, column: 28, scope: !1301)
!1314 = !DILocation(line: 54, column: 1, scope: !1296)
!1315 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_add", scope: !1275, file: !1275, line: 65, type: !1316, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !773, !922, !922}
!1318 = !DILocalVariable(name: "c", arg: 1, scope: !1315, file: !1275, line: 65, type: !773)
!1319 = !DILocation(line: 0, scope: !1315)
!1320 = !DILocalVariable(name: "a", arg: 2, scope: !1315, file: !1275, line: 65, type: !922)
!1321 = !DILocalVariable(name: "b", arg: 3, scope: !1315, file: !1275, line: 65, type: !922)
!1322 = !DILocalVariable(name: "i", scope: !1315, file: !1275, line: 66, type: !55)
!1323 = !DILocation(line: 69, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1315, file: !1275, line: 69, column: 3)
!1325 = !DILocation(line: 69, scope: !1324)
!1326 = !DILocation(line: 69, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !1275, line: 69, column: 3)
!1328 = !DILocation(line: 69, column: 3, scope: !1324)
!1329 = !DILocation(line: 70, column: 15, scope: !1327)
!1330 = !DILocation(line: 70, column: 25, scope: !1327)
!1331 = !DILocation(line: 70, column: 23, scope: !1327)
!1332 = !DILocation(line: 70, column: 5, scope: !1327)
!1333 = !DILocation(line: 70, column: 13, scope: !1327)
!1334 = !DILocation(line: 69, column: 22, scope: !1327)
!1335 = !DILocation(line: 69, column: 3, scope: !1327)
!1336 = distinct !{!1336, !1328, !1337, !200}
!1337 = !DILocation(line: 70, column: 31, scope: !1324)
!1338 = !DILocation(line: 73, column: 1, scope: !1315)
!1339 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_sub", scope: !1275, file: !1275, line: 86, type: !1316, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1340 = !DILocalVariable(name: "c", arg: 1, scope: !1339, file: !1275, line: 86, type: !773)
!1341 = !DILocation(line: 0, scope: !1339)
!1342 = !DILocalVariable(name: "a", arg: 2, scope: !1339, file: !1275, line: 86, type: !922)
!1343 = !DILocalVariable(name: "b", arg: 3, scope: !1339, file: !1275, line: 86, type: !922)
!1344 = !DILocalVariable(name: "i", scope: !1339, file: !1275, line: 87, type: !55)
!1345 = !DILocation(line: 90, column: 8, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1339, file: !1275, line: 90, column: 3)
!1347 = !DILocation(line: 90, scope: !1346)
!1348 = !DILocation(line: 90, column: 17, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !1275, line: 90, column: 3)
!1350 = !DILocation(line: 90, column: 3, scope: !1346)
!1351 = !DILocation(line: 91, column: 15, scope: !1349)
!1352 = !DILocation(line: 91, column: 25, scope: !1349)
!1353 = !DILocation(line: 91, column: 23, scope: !1349)
!1354 = !DILocation(line: 91, column: 5, scope: !1349)
!1355 = !DILocation(line: 91, column: 13, scope: !1349)
!1356 = !DILocation(line: 90, column: 22, scope: !1349)
!1357 = !DILocation(line: 90, column: 3, scope: !1349)
!1358 = distinct !{!1358, !1350, !1359, !200}
!1359 = !DILocation(line: 91, column: 31, scope: !1346)
!1360 = !DILocation(line: 94, column: 1, scope: !1339)
!1361 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_shiftl", scope: !1275, file: !1275, line: 104, type: !1276, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1362 = !DILocalVariable(name: "a", arg: 1, scope: !1361, file: !1275, line: 104, type: !773)
!1363 = !DILocation(line: 0, scope: !1361)
!1364 = !DILocalVariable(name: "i", scope: !1361, file: !1275, line: 105, type: !55)
!1365 = !DILocation(line: 108, column: 8, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !1275, line: 108, column: 3)
!1367 = !DILocation(line: 108, scope: !1366)
!1368 = !DILocation(line: 108, column: 17, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !1275, line: 108, column: 3)
!1370 = !DILocation(line: 108, column: 3, scope: !1366)
!1371 = !DILocation(line: 109, column: 5, scope: !1369)
!1372 = !DILocation(line: 109, column: 13, scope: !1369)
!1373 = !DILocation(line: 108, column: 22, scope: !1369)
!1374 = !DILocation(line: 108, column: 3, scope: !1369)
!1375 = distinct !{!1375, !1370, !1376, !200}
!1376 = !DILocation(line: 109, column: 17, scope: !1366)
!1377 = !DILocation(line: 112, column: 1, scope: !1361)
!1378 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_ntt", scope: !1275, file: !1275, line: 122, type: !1276, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1379 = !DILocalVariable(name: "a", arg: 1, scope: !1378, file: !1275, line: 122, type: !773)
!1380 = !DILocation(line: 0, scope: !1378)
!1381 = !DILocation(line: 125, column: 3, scope: !1378)
!1382 = !DILocation(line: 128, column: 1, scope: !1378)
!1383 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_invntt_tomont", scope: !1275, file: !1275, line: 139, type: !1276, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1384 = !DILocalVariable(name: "a", arg: 1, scope: !1383, file: !1275, line: 139, type: !773)
!1385 = !DILocation(line: 0, scope: !1383)
!1386 = !DILocation(line: 142, column: 3, scope: !1383)
!1387 = !DILocation(line: 145, column: 1, scope: !1383)
!1388 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_pointwise_montgomery", scope: !1275, file: !1275, line: 158, type: !1316, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1389 = !DILocalVariable(name: "c", arg: 1, scope: !1388, file: !1275, line: 158, type: !773)
!1390 = !DILocation(line: 0, scope: !1388)
!1391 = !DILocalVariable(name: "a", arg: 2, scope: !1388, file: !1275, line: 158, type: !922)
!1392 = !DILocalVariable(name: "b", arg: 3, scope: !1388, file: !1275, line: 158, type: !922)
!1393 = !DILocalVariable(name: "i", scope: !1388, file: !1275, line: 159, type: !55)
!1394 = !DILocation(line: 162, column: 8, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1388, file: !1275, line: 162, column: 3)
!1396 = !DILocation(line: 162, scope: !1395)
!1397 = !DILocation(line: 162, column: 17, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !1275, line: 162, column: 3)
!1399 = !DILocation(line: 162, column: 3, scope: !1395)
!1400 = !DILocation(line: 163, column: 42, scope: !1398)
!1401 = !DILocation(line: 163, column: 33, scope: !1398)
!1402 = !DILocation(line: 163, column: 52, scope: !1398)
!1403 = !DILocation(line: 163, column: 50, scope: !1398)
!1404 = !DILocation(line: 163, column: 15, scope: !1398)
!1405 = !DILocation(line: 163, column: 5, scope: !1398)
!1406 = !DILocation(line: 163, column: 13, scope: !1398)
!1407 = !DILocation(line: 162, column: 22, scope: !1398)
!1408 = !DILocation(line: 162, column: 3, scope: !1398)
!1409 = distinct !{!1409, !1399, !1410, !200}
!1410 = !DILocation(line: 163, column: 59, scope: !1395)
!1411 = !DILocation(line: 166, column: 1, scope: !1388)
!1412 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_power2round", scope: !1275, file: !1275, line: 180, type: !1413, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !773, !773, !922}
!1415 = !DILocalVariable(name: "a1", arg: 1, scope: !1412, file: !1275, line: 180, type: !773)
!1416 = !DILocation(line: 0, scope: !1412)
!1417 = !DILocalVariable(name: "a0", arg: 2, scope: !1412, file: !1275, line: 180, type: !773)
!1418 = !DILocalVariable(name: "a", arg: 3, scope: !1412, file: !1275, line: 180, type: !922)
!1419 = !DILocalVariable(name: "i", scope: !1412, file: !1275, line: 181, type: !55)
!1420 = !DILocation(line: 184, column: 8, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1412, file: !1275, line: 184, column: 3)
!1422 = !DILocation(line: 184, scope: !1421)
!1423 = !DILocation(line: 184, column: 17, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !1275, line: 184, column: 3)
!1425 = !DILocation(line: 184, column: 3, scope: !1421)
!1426 = !DILocation(line: 185, column: 29, scope: !1424)
!1427 = !DILocation(line: 185, column: 39, scope: !1424)
!1428 = !DILocation(line: 185, column: 16, scope: !1424)
!1429 = !DILocation(line: 185, column: 5, scope: !1424)
!1430 = !DILocation(line: 185, column: 14, scope: !1424)
!1431 = !DILocation(line: 184, column: 22, scope: !1424)
!1432 = !DILocation(line: 184, column: 3, scope: !1424)
!1433 = distinct !{!1433, !1425, !1434, !200}
!1434 = !DILocation(line: 185, column: 46, scope: !1421)
!1435 = !DILocation(line: 188, column: 1, scope: !1412)
!1436 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_decompose", scope: !1275, file: !1275, line: 203, type: !1413, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1437 = !DILocalVariable(name: "a1", arg: 1, scope: !1436, file: !1275, line: 203, type: !773)
!1438 = !DILocation(line: 0, scope: !1436)
!1439 = !DILocalVariable(name: "a0", arg: 2, scope: !1436, file: !1275, line: 203, type: !773)
!1440 = !DILocalVariable(name: "a", arg: 3, scope: !1436, file: !1275, line: 203, type: !922)
!1441 = !DILocalVariable(name: "i", scope: !1436, file: !1275, line: 204, type: !55)
!1442 = !DILocation(line: 207, column: 8, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1436, file: !1275, line: 207, column: 3)
!1444 = !DILocation(line: 207, scope: !1443)
!1445 = !DILocation(line: 207, column: 17, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !1275, line: 207, column: 3)
!1447 = !DILocation(line: 207, column: 3, scope: !1443)
!1448 = !DILocation(line: 208, column: 27, scope: !1446)
!1449 = !DILocation(line: 208, column: 37, scope: !1446)
!1450 = !DILocation(line: 208, column: 16, scope: !1446)
!1451 = !DILocation(line: 208, column: 5, scope: !1446)
!1452 = !DILocation(line: 208, column: 14, scope: !1446)
!1453 = !DILocation(line: 207, column: 22, scope: !1446)
!1454 = !DILocation(line: 207, column: 3, scope: !1446)
!1455 = distinct !{!1455, !1447, !1456, !200}
!1456 = !DILocation(line: 208, column: 44, scope: !1443)
!1457 = !DILocation(line: 211, column: 1, scope: !1436)
!1458 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_make_hint", scope: !1275, file: !1275, line: 226, type: !1459, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!55, !773, !922, !922}
!1461 = !DILocalVariable(name: "h", arg: 1, scope: !1458, file: !1275, line: 226, type: !773)
!1462 = !DILocation(line: 0, scope: !1458)
!1463 = !DILocalVariable(name: "a0", arg: 2, scope: !1458, file: !1275, line: 226, type: !922)
!1464 = !DILocalVariable(name: "a1", arg: 3, scope: !1458, file: !1275, line: 226, type: !922)
!1465 = !DILocalVariable(name: "s", scope: !1458, file: !1275, line: 227, type: !55)
!1466 = !DILocalVariable(name: "i", scope: !1458, file: !1275, line: 227, type: !55)
!1467 = !DILocation(line: 230, column: 8, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1458, file: !1275, line: 230, column: 3)
!1469 = !DILocation(line: 230, scope: !1468)
!1470 = !DILocation(line: 230, column: 17, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !1275, line: 230, column: 3)
!1472 = !DILocation(line: 230, column: 3, scope: !1468)
!1473 = !DILocation(line: 231, column: 25, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1471, file: !1275, line: 230, column: 27)
!1475 = !DILocation(line: 231, column: 35, scope: !1474)
!1476 = !DILocation(line: 231, column: 15, scope: !1474)
!1477 = !DILocation(line: 231, column: 5, scope: !1474)
!1478 = !DILocation(line: 231, column: 13, scope: !1474)
!1479 = !DILocation(line: 232, column: 7, scope: !1474)
!1480 = !DILocation(line: 230, column: 22, scope: !1471)
!1481 = !DILocation(line: 230, column: 3, scope: !1471)
!1482 = distinct !{!1482, !1472, !1483, !200}
!1483 = !DILocation(line: 233, column: 3, scope: !1468)
!1484 = !DILocation(line: 236, column: 3, scope: !1458)
!1485 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_use_hint", scope: !1275, file: !1275, line: 248, type: !1316, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1486 = !DILocalVariable(name: "b", arg: 1, scope: !1485, file: !1275, line: 248, type: !773)
!1487 = !DILocation(line: 0, scope: !1485)
!1488 = !DILocalVariable(name: "a", arg: 2, scope: !1485, file: !1275, line: 248, type: !922)
!1489 = !DILocalVariable(name: "h", arg: 3, scope: !1485, file: !1275, line: 248, type: !922)
!1490 = !DILocalVariable(name: "i", scope: !1485, file: !1275, line: 249, type: !55)
!1491 = !DILocation(line: 252, column: 8, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1485, file: !1275, line: 252, column: 3)
!1493 = !DILocation(line: 252, scope: !1492)
!1494 = !DILocation(line: 252, column: 17, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !1275, line: 252, column: 3)
!1496 = !DILocation(line: 252, column: 3, scope: !1492)
!1497 = !DILocation(line: 253, column: 24, scope: !1495)
!1498 = !DILocation(line: 253, column: 33, scope: !1495)
!1499 = !DILocation(line: 253, column: 15, scope: !1495)
!1500 = !DILocation(line: 253, column: 5, scope: !1495)
!1501 = !DILocation(line: 253, column: 13, scope: !1495)
!1502 = !DILocation(line: 252, column: 22, scope: !1495)
!1503 = !DILocation(line: 252, column: 3, scope: !1495)
!1504 = distinct !{!1504, !1496, !1505, !200}
!1505 = !DILocation(line: 253, column: 40, scope: !1492)
!1506 = !DILocation(line: 256, column: 1, scope: !1485)
!1507 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_chknorm", scope: !1275, file: !1275, line: 269, type: !1508, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!65, !922, !77}
!1510 = !DILocalVariable(name: "a", arg: 1, scope: !1507, file: !1275, line: 269, type: !922)
!1511 = !DILocation(line: 0, scope: !1507)
!1512 = !DILocalVariable(name: "B", arg: 2, scope: !1507, file: !1275, line: 269, type: !77)
!1513 = !DILocation(line: 274, column: 9, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1507, file: !1275, line: 274, column: 7)
!1515 = !DILocation(line: 280, column: 3, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1507, file: !1275, line: 280, column: 3)
!1517 = !DILocation(line: 280, scope: !1516)
!1518 = !DILocalVariable(name: "i", scope: !1507, file: !1275, line: 270, type: !55)
!1519 = !DILocation(line: 280, column: 17, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !1275, line: 280, column: 3)
!1521 = !DILocation(line: 282, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1520, file: !1275, line: 280, column: 27)
!1523 = !DILocalVariable(name: "t", scope: !1507, file: !1275, line: 271, type: !77)
!1524 = !DILocation(line: 283, column: 22, scope: !1522)
!1525 = !DILocation(line: 283, column: 17, scope: !1522)
!1526 = !DILocation(line: 285, column: 11, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1522, file: !1275, line: 285, column: 9)
!1528 = !DILocation(line: 280, column: 22, scope: !1520)
!1529 = !DILocation(line: 280, column: 3, scope: !1520)
!1530 = distinct !{!1530, !1515, !1531, !200}
!1531 = !DILocation(line: 289, column: 3, scope: !1516)
!1532 = !DILocation(line: 293, column: 1, scope: !1507)
!1533 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_uniform", scope: !1275, file: !1275, line: 343, type: !1534, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !773, !324, !362}
!1536 = !DILocalVariable(name: "a", arg: 1, scope: !1533, file: !1275, line: 343, type: !773)
!1537 = !DILocation(line: 0, scope: !1533)
!1538 = !DILocalVariable(name: "seed", arg: 2, scope: !1533, file: !1275, line: 343, type: !324)
!1539 = !DILocalVariable(name: "nonce", arg: 3, scope: !1533, file: !1275, line: 343, type: !362)
!1540 = !DILocalVariable(name: "buflen", scope: !1533, file: !1275, line: 345, type: !55)
!1541 = !DILocalVariable(name: "buf", scope: !1533, file: !1275, line: 346, type: !1542)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 6736, elements: !1543)
!1543 = !{!1544}
!1544 = !DISubrange(count: 842)
!1545 = !DILocation(line: 346, column: 11, scope: !1533)
!1546 = !DILocalVariable(name: "state", scope: !1533, file: !1275, line: 347, type: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream128_state", file: !1548, line: 9, baseType: !386)
!1548 = !DIFile(filename: "../../../ref/symmetric.h", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!1549 = !DILocation(line: 347, column: 19, scope: !1533)
!1550 = !DILocation(line: 349, column: 3, scope: !1533)
!1551 = !DILocation(line: 350, column: 3, scope: !1533)
!1552 = !DILocation(line: 352, column: 9, scope: !1533)
!1553 = !DILocalVariable(name: "ctr", scope: !1533, file: !1275, line: 344, type: !55)
!1554 = !DILocation(line: 354, column: 3, scope: !1533)
!1555 = !DILocation(line: 354, column: 14, scope: !1533)
!1556 = !DILocation(line: 355, column: 18, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1533, file: !1275, line: 354, column: 19)
!1558 = !DILocalVariable(name: "off", scope: !1533, file: !1275, line: 344, type: !55)
!1559 = !DILocalVariable(name: "i", scope: !1533, file: !1275, line: 344, type: !55)
!1560 = !DILocation(line: 356, column: 10, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !1275, line: 356, column: 5)
!1562 = !DILocation(line: 356, scope: !1561)
!1563 = !DILocation(line: 356, column: 19, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1561, file: !1275, line: 356, column: 5)
!1565 = !DILocation(line: 356, column: 5, scope: !1561)
!1566 = !DILocation(line: 357, column: 27, scope: !1564)
!1567 = !DILocation(line: 357, column: 33, scope: !1564)
!1568 = !DILocation(line: 357, column: 16, scope: !1564)
!1569 = !DILocation(line: 357, column: 7, scope: !1564)
!1570 = !DILocation(line: 357, column: 14, scope: !1564)
!1571 = !DILocation(line: 356, column: 26, scope: !1564)
!1572 = !DILocation(line: 356, column: 5, scope: !1564)
!1573 = distinct !{!1573, !1565, !1574, !200}
!1574 = !DILocation(line: 357, column: 36, scope: !1561)
!1575 = !DILocation(line: 359, column: 5, scope: !1557)
!1576 = !DILocation(line: 360, column: 35, scope: !1557)
!1577 = !DILocation(line: 361, column: 29, scope: !1557)
!1578 = !DILocation(line: 361, column: 38, scope: !1557)
!1579 = !DILocation(line: 361, column: 12, scope: !1557)
!1580 = !DILocation(line: 361, column: 9, scope: !1557)
!1581 = distinct !{!1581, !1554, !1582, !200}
!1582 = !DILocation(line: 362, column: 3, scope: !1533)
!1583 = !DILocation(line: 363, column: 1, scope: !1533)
!1584 = distinct !DISubprogram(name: "rej_uniform", scope: !1275, file: !1275, line: 309, type: !1585, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!55, !1587, !55, !324, !55}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!1588 = !DILocalVariable(name: "a", arg: 1, scope: !1584, file: !1275, line: 309, type: !1587)
!1589 = !DILocation(line: 0, scope: !1584)
!1590 = !DILocalVariable(name: "len", arg: 2, scope: !1584, file: !1275, line: 309, type: !55)
!1591 = !DILocalVariable(name: "buf", arg: 3, scope: !1584, file: !1275, line: 310, type: !324)
!1592 = !DILocalVariable(name: "buflen", arg: 4, scope: !1584, file: !1275, line: 310, type: !55)
!1593 = !DILocalVariable(name: "pos", scope: !1584, file: !1275, line: 311, type: !55)
!1594 = !DILocalVariable(name: "ctr", scope: !1584, file: !1275, line: 311, type: !55)
!1595 = !DILocation(line: 316, column: 3, scope: !1584)
!1596 = !DILocation(line: 316, column: 14, scope: !1584)
!1597 = !DILocation(line: 316, column: 20, scope: !1584)
!1598 = !DILocation(line: 317, column: 9, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1584, file: !1275, line: 316, column: 42)
!1600 = !DILocalVariable(name: "t", scope: !1584, file: !1275, line: 312, type: !103)
!1601 = !DILocation(line: 318, column: 20, scope: !1599)
!1602 = !DILocation(line: 318, column: 10, scope: !1599)
!1603 = !DILocation(line: 318, column: 31, scope: !1599)
!1604 = !DILocation(line: 318, column: 7, scope: !1599)
!1605 = !DILocation(line: 319, column: 27, scope: !1599)
!1606 = !DILocation(line: 319, column: 20, scope: !1599)
!1607 = !DILocation(line: 319, column: 10, scope: !1599)
!1608 = !DILocation(line: 319, column: 31, scope: !1599)
!1609 = !DILocation(line: 320, column: 7, scope: !1599)
!1610 = !DILocation(line: 322, column: 11, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1599, file: !1275, line: 322, column: 9)
!1612 = !DILocation(line: 323, column: 12, scope: !1611)
!1613 = !DILocation(line: 323, column: 7, scope: !1611)
!1614 = !DILocation(line: 323, column: 16, scope: !1611)
!1615 = distinct !{!1615, !1595, !1616, !200}
!1616 = !DILocation(line: 324, column: 3, scope: !1584)
!1617 = !DILocation(line: 327, column: 3, scope: !1584)
!1618 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_uniform_eta", scope: !1275, file: !1275, line: 429, type: !1534, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1619 = !DILocalVariable(name: "a", arg: 1, scope: !1618, file: !1275, line: 429, type: !773)
!1620 = !DILocation(line: 0, scope: !1618)
!1621 = !DILocalVariable(name: "seed", arg: 2, scope: !1618, file: !1275, line: 429, type: !324)
!1622 = !DILocalVariable(name: "nonce", arg: 3, scope: !1618, file: !1275, line: 429, type: !362)
!1623 = !DILocalVariable(name: "buflen", scope: !1618, file: !1275, line: 431, type: !55)
!1624 = !DILocalVariable(name: "buf", scope: !1618, file: !1275, line: 432, type: !1625)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1088, elements: !1626)
!1626 = !{!1627}
!1627 = !DISubrange(count: 136)
!1628 = !DILocation(line: 432, column: 11, scope: !1618)
!1629 = !DILocalVariable(name: "state", scope: !1618, file: !1275, line: 433, type: !1630)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream256_state", file: !1548, line: 10, baseType: !386)
!1631 = !DILocation(line: 433, column: 19, scope: !1618)
!1632 = !DILocation(line: 435, column: 3, scope: !1618)
!1633 = !DILocation(line: 436, column: 3, scope: !1618)
!1634 = !DILocation(line: 438, column: 9, scope: !1618)
!1635 = !DILocalVariable(name: "ctr", scope: !1618, file: !1275, line: 430, type: !55)
!1636 = !DILocation(line: 440, column: 3, scope: !1618)
!1637 = !DILocation(line: 440, column: 14, scope: !1618)
!1638 = !DILocation(line: 441, column: 5, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1618, file: !1275, line: 440, column: 19)
!1640 = !DILocation(line: 442, column: 25, scope: !1639)
!1641 = !DILocation(line: 442, column: 34, scope: !1639)
!1642 = !DILocation(line: 442, column: 12, scope: !1639)
!1643 = !DILocation(line: 442, column: 9, scope: !1639)
!1644 = distinct !{!1644, !1636, !1645, !200}
!1645 = !DILocation(line: 443, column: 3, scope: !1618)
!1646 = !DILocation(line: 444, column: 1, scope: !1618)
!1647 = distinct !DISubprogram(name: "rej_eta", scope: !1275, file: !1275, line: 379, type: !1585, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1648 = !DILocalVariable(name: "a", arg: 1, scope: !1647, file: !1275, line: 379, type: !1587)
!1649 = !DILocation(line: 0, scope: !1647)
!1650 = !DILocalVariable(name: "len", arg: 2, scope: !1647, file: !1275, line: 379, type: !55)
!1651 = !DILocalVariable(name: "buf", arg: 3, scope: !1647, file: !1275, line: 379, type: !324)
!1652 = !DILocalVariable(name: "buflen", arg: 4, scope: !1647, file: !1275, line: 380, type: !55)
!1653 = !DILocalVariable(name: "pos", scope: !1647, file: !1275, line: 381, type: !55)
!1654 = !DILocalVariable(name: "ctr", scope: !1647, file: !1275, line: 381, type: !55)
!1655 = !DILocation(line: 386, column: 3, scope: !1647)
!1656 = !DILocation(line: 386, column: 14, scope: !1647)
!1657 = !DILocation(line: 386, column: 20, scope: !1647)
!1658 = !DILocation(line: 387, column: 10, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1647, file: !1275, line: 386, column: 37)
!1660 = !DILocation(line: 387, column: 19, scope: !1659)
!1661 = !DILocalVariable(name: "t0", scope: !1647, file: !1275, line: 382, type: !103)
!1662 = !DILocation(line: 388, column: 17, scope: !1659)
!1663 = !DILocation(line: 388, column: 21, scope: !1659)
!1664 = !DILocalVariable(name: "t1", scope: !1647, file: !1275, line: 382, type: !103)
!1665 = !DILocation(line: 391, column: 12, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1659, file: !1275, line: 391, column: 9)
!1667 = !DILocation(line: 392, column: 22, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1666, file: !1275, line: 391, column: 18)
!1669 = !DILocation(line: 392, column: 27, scope: !1668)
!1670 = !DILocation(line: 392, column: 34, scope: !1668)
!1671 = !DILocation(line: 392, column: 15, scope: !1668)
!1672 = !DILocation(line: 393, column: 20, scope: !1668)
!1673 = !DILocation(line: 393, column: 12, scope: !1668)
!1674 = !DILocation(line: 393, column: 7, scope: !1668)
!1675 = !DILocation(line: 393, column: 16, scope: !1668)
!1676 = !DILocation(line: 394, column: 5, scope: !1668)
!1677 = !DILocation(line: 395, column: 12, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1659, file: !1275, line: 395, column: 9)
!1679 = !DILocation(line: 395, column: 17, scope: !1678)
!1680 = !DILocation(line: 396, column: 22, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !1275, line: 395, column: 31)
!1682 = !DILocation(line: 396, column: 27, scope: !1681)
!1683 = !DILocation(line: 396, column: 34, scope: !1681)
!1684 = !DILocation(line: 396, column: 15, scope: !1681)
!1685 = !DILocation(line: 397, column: 20, scope: !1681)
!1686 = !DILocation(line: 397, column: 12, scope: !1681)
!1687 = !DILocation(line: 397, column: 7, scope: !1681)
!1688 = !DILocation(line: 397, column: 16, scope: !1681)
!1689 = !DILocation(line: 398, column: 5, scope: !1681)
!1690 = !DILocation(line: 0, scope: !1659)
!1691 = distinct !{!1691, !1655, !1692, !200}
!1692 = !DILocation(line: 405, column: 3, scope: !1647)
!1693 = !DILocation(line: 408, column: 3, scope: !1647)
!1694 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_uniform_gamma1", scope: !1275, file: !1275, line: 459, type: !1534, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1695 = !DILocalVariable(name: "a", arg: 1, scope: !1694, file: !1275, line: 459, type: !773)
!1696 = !DILocation(line: 0, scope: !1694)
!1697 = !DILocalVariable(name: "seed", arg: 2, scope: !1694, file: !1275, line: 459, type: !324)
!1698 = !DILocalVariable(name: "nonce", arg: 3, scope: !1694, file: !1275, line: 460, type: !362)
!1699 = !DILocalVariable(name: "buf", scope: !1694, file: !1275, line: 461, type: !1700)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 5440, elements: !1701)
!1701 = !{!1702}
!1702 = !DISubrange(count: 680)
!1703 = !DILocation(line: 461, column: 11, scope: !1694)
!1704 = !DILocalVariable(name: "state", scope: !1694, file: !1275, line: 462, type: !1630)
!1705 = !DILocation(line: 462, column: 19, scope: !1694)
!1706 = !DILocation(line: 464, column: 3, scope: !1694)
!1707 = !DILocation(line: 465, column: 3, scope: !1694)
!1708 = !DILocation(line: 466, column: 3, scope: !1694)
!1709 = !DILocation(line: 467, column: 1, scope: !1694)
!1710 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyz_unpack", scope: !1275, file: !1275, line: 822, type: !1711, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !773, !324}
!1713 = !DILocalVariable(name: "r", arg: 1, scope: !1710, file: !1275, line: 822, type: !773)
!1714 = !DILocation(line: 0, scope: !1710)
!1715 = !DILocalVariable(name: "a", arg: 2, scope: !1710, file: !1275, line: 822, type: !324)
!1716 = !DILocalVariable(name: "i", scope: !1710, file: !1275, line: 823, type: !55)
!1717 = !DILocation(line: 854, column: 8, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1710, file: !1275, line: 854, column: 3)
!1719 = !DILocation(line: 854, scope: !1718)
!1720 = !DILocation(line: 854, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !1275, line: 854, column: 3)
!1722 = !DILocation(line: 854, column: 3, scope: !1718)
!1723 = !DILocation(line: 855, column: 27, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !1275, line: 854, column: 31)
!1725 = !DILocation(line: 855, column: 23, scope: !1724)
!1726 = !DILocation(line: 855, column: 12, scope: !1724)
!1727 = !DILocation(line: 855, column: 5, scope: !1724)
!1728 = !DILocation(line: 855, column: 21, scope: !1724)
!1729 = !DILocation(line: 856, column: 38, scope: !1724)
!1730 = !DILocation(line: 856, column: 34, scope: !1724)
!1731 = !DILocation(line: 856, column: 24, scope: !1724)
!1732 = !DILocation(line: 856, column: 47, scope: !1724)
!1733 = !DILocation(line: 856, column: 12, scope: !1724)
!1734 = !DILocation(line: 856, column: 5, scope: !1724)
!1735 = !DILocation(line: 856, column: 21, scope: !1724)
!1736 = !DILocation(line: 857, column: 38, scope: !1724)
!1737 = !DILocation(line: 857, column: 34, scope: !1724)
!1738 = !DILocation(line: 857, column: 24, scope: !1724)
!1739 = !DILocation(line: 857, column: 47, scope: !1724)
!1740 = !DILocation(line: 857, column: 12, scope: !1724)
!1741 = !DILocation(line: 857, column: 5, scope: !1724)
!1742 = !DILocation(line: 857, column: 21, scope: !1724)
!1743 = !DILocation(line: 858, column: 12, scope: !1724)
!1744 = !DILocation(line: 858, column: 5, scope: !1724)
!1745 = !DILocation(line: 858, column: 21, scope: !1724)
!1746 = !DILocation(line: 860, column: 27, scope: !1724)
!1747 = !DILocation(line: 860, column: 23, scope: !1724)
!1748 = !DILocation(line: 860, column: 36, scope: !1724)
!1749 = !DILocation(line: 860, column: 12, scope: !1724)
!1750 = !DILocation(line: 860, column: 16, scope: !1724)
!1751 = !DILocation(line: 860, column: 5, scope: !1724)
!1752 = !DILocation(line: 860, column: 21, scope: !1724)
!1753 = !DILocation(line: 861, column: 38, scope: !1724)
!1754 = !DILocation(line: 861, column: 34, scope: !1724)
!1755 = !DILocation(line: 861, column: 24, scope: !1724)
!1756 = !DILocation(line: 861, column: 47, scope: !1724)
!1757 = !DILocation(line: 861, column: 12, scope: !1724)
!1758 = !DILocation(line: 861, column: 16, scope: !1724)
!1759 = !DILocation(line: 861, column: 5, scope: !1724)
!1760 = !DILocation(line: 861, column: 21, scope: !1724)
!1761 = !DILocation(line: 862, column: 38, scope: !1724)
!1762 = !DILocation(line: 862, column: 34, scope: !1724)
!1763 = !DILocation(line: 862, column: 24, scope: !1724)
!1764 = !DILocation(line: 862, column: 47, scope: !1724)
!1765 = !DILocation(line: 862, column: 12, scope: !1724)
!1766 = !DILocation(line: 862, column: 16, scope: !1724)
!1767 = !DILocation(line: 862, column: 5, scope: !1724)
!1768 = !DILocation(line: 862, column: 21, scope: !1724)
!1769 = !DILocation(line: 866, column: 39, scope: !1724)
!1770 = !DILocation(line: 866, column: 32, scope: !1724)
!1771 = !DILocation(line: 866, column: 30, scope: !1724)
!1772 = !DILocation(line: 866, column: 12, scope: !1724)
!1773 = !DILocation(line: 866, column: 5, scope: !1724)
!1774 = !DILocation(line: 866, column: 21, scope: !1724)
!1775 = !DILocation(line: 867, column: 39, scope: !1724)
!1776 = !DILocation(line: 867, column: 43, scope: !1724)
!1777 = !DILocation(line: 867, column: 32, scope: !1724)
!1778 = !DILocation(line: 867, column: 30, scope: !1724)
!1779 = !DILocation(line: 867, column: 12, scope: !1724)
!1780 = !DILocation(line: 867, column: 16, scope: !1724)
!1781 = !DILocation(line: 867, column: 5, scope: !1724)
!1782 = !DILocation(line: 867, column: 21, scope: !1724)
!1783 = !DILocation(line: 854, column: 26, scope: !1721)
!1784 = !DILocation(line: 854, column: 3, scope: !1721)
!1785 = distinct !{!1785, !1722, !1786, !200}
!1786 = !DILocation(line: 868, column: 3, scope: !1718)
!1787 = !DILocation(line: 872, column: 1, scope: !1710)
!1788 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_poly_challenge", scope: !1275, file: !1275, line: 480, type: !1711, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1789 = !DILocalVariable(name: "c", arg: 1, scope: !1788, file: !1275, line: 480, type: !773)
!1790 = !DILocation(line: 0, scope: !1788)
!1791 = !DILocalVariable(name: "seed", arg: 2, scope: !1788, file: !1275, line: 480, type: !324)
!1792 = !DILocalVariable(name: "buf", scope: !1788, file: !1275, line: 483, type: !1625)
!1793 = !DILocation(line: 483, column: 11, scope: !1788)
!1794 = !DILocalVariable(name: "state", scope: !1788, file: !1275, line: 484, type: !386)
!1795 = !DILocation(line: 484, column: 16, scope: !1788)
!1796 = !DILocation(line: 486, column: 3, scope: !1788)
!1797 = !DILocation(line: 487, column: 3, scope: !1788)
!1798 = !DILocation(line: 488, column: 3, scope: !1788)
!1799 = !DILocation(line: 489, column: 3, scope: !1788)
!1800 = !DILocalVariable(name: "signs", scope: !1788, file: !1275, line: 482, type: !85)
!1801 = !DILocalVariable(name: "i", scope: !1788, file: !1275, line: 481, type: !55)
!1802 = !DILocation(line: 492, column: 8, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1788, file: !1275, line: 492, column: 3)
!1804 = !DILocation(line: 492, scope: !1803)
!1805 = !DILocation(line: 492, column: 17, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !1275, line: 492, column: 3)
!1807 = !DILocation(line: 492, column: 3, scope: !1803)
!1808 = !DILocation(line: 496, column: 3, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1788, file: !1275, line: 496, column: 3)
!1810 = !DILocation(line: 493, column: 24, scope: !1806)
!1811 = !DILocation(line: 493, column: 14, scope: !1806)
!1812 = !DILocation(line: 493, column: 36, scope: !1806)
!1813 = !DILocation(line: 493, column: 31, scope: !1806)
!1814 = !DILocation(line: 493, column: 11, scope: !1806)
!1815 = !DILocation(line: 492, column: 22, scope: !1806)
!1816 = !DILocation(line: 492, column: 3, scope: !1806)
!1817 = distinct !{!1817, !1807, !1818, !200}
!1818 = !DILocation(line: 493, column: 38, scope: !1803)
!1819 = !DILocation(line: 496, scope: !1809)
!1820 = !DILocation(line: 496, column: 17, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1809, file: !1275, line: 496, column: 3)
!1822 = !DILocation(line: 498, column: 3, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1788, file: !1275, line: 498, column: 3)
!1824 = !DILocation(line: 497, column: 5, scope: !1821)
!1825 = !DILocation(line: 497, column: 13, scope: !1821)
!1826 = !DILocation(line: 496, column: 22, scope: !1821)
!1827 = !DILocation(line: 496, column: 3, scope: !1821)
!1828 = distinct !{!1828, !1808, !1829, !200}
!1829 = !DILocation(line: 497, column: 15, scope: !1809)
!1830 = !DILocation(line: 498, scope: !1823)
!1831 = !DILocalVariable(name: "pos", scope: !1788, file: !1275, line: 481, type: !55)
!1832 = !DILocation(line: 498, column: 23, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1823, file: !1275, line: 498, column: 3)
!1834 = !DILocation(line: 499, column: 5, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1833, file: !1275, line: 498, column: 33)
!1836 = !DILocation(line: 500, column: 15, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !1275, line: 500, column: 11)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !1275, line: 499, column: 8)
!1839 = !DILocation(line: 501, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !1275, line: 500, column: 33)
!1841 = !DILocation(line: 503, column: 7, scope: !1840)
!1842 = !DILocation(line: 505, column: 18, scope: !1838)
!1843 = !DILocation(line: 505, column: 11, scope: !1838)
!1844 = !DILocalVariable(name: "b", scope: !1788, file: !1275, line: 481, type: !55)
!1845 = !DILocation(line: 506, column: 16, scope: !1835)
!1846 = !DILocation(line: 506, column: 5, scope: !1838)
!1847 = distinct !{!1847, !1834, !1848, !200}
!1848 = !DILocation(line: 506, column: 19, scope: !1835)
!1849 = !DILocation(line: 508, column: 15, scope: !1835)
!1850 = !DILocation(line: 508, column: 5, scope: !1835)
!1851 = !DILocation(line: 508, column: 13, scope: !1835)
!1852 = !DILocation(line: 509, column: 15, scope: !1835)
!1853 = !DILocation(line: 509, column: 5, scope: !1835)
!1854 = !DILocation(line: 509, column: 13, scope: !1835)
!1855 = !DILocation(line: 510, column: 11, scope: !1835)
!1856 = !DILocation(line: 498, column: 28, scope: !1833)
!1857 = !DILocation(line: 498, column: 3, scope: !1833)
!1858 = distinct !{!1858, !1822, !1859, !200}
!1859 = !DILocation(line: 511, column: 3, scope: !1823)
!1860 = !DILocation(line: 512, column: 1, scope: !1788)
!1861 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyeta_pack", scope: !1275, file: !1275, line: 523, type: !1862, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !47, !922}
!1864 = !DILocalVariable(name: "r", arg: 1, scope: !1861, file: !1275, line: 523, type: !47)
!1865 = !DILocation(line: 0, scope: !1861)
!1866 = !DILocalVariable(name: "a", arg: 2, scope: !1861, file: !1275, line: 523, type: !922)
!1867 = !DILocalVariable(name: "i", scope: !1861, file: !1275, line: 524, type: !55)
!1868 = !DILocation(line: 529, column: 8, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1861, file: !1275, line: 529, column: 3)
!1870 = !DILocation(line: 529, scope: !1869)
!1871 = !DILocation(line: 529, column: 17, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !1275, line: 529, column: 3)
!1873 = !DILocation(line: 529, column: 3, scope: !1869)
!1874 = !DILocation(line: 530, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1872, file: !1275, line: 529, column: 31)
!1876 = !DILocation(line: 530, column: 18, scope: !1875)
!1877 = !DILocation(line: 530, column: 12, scope: !1875)
!1878 = !DILocalVariable(name: "t", scope: !1861, file: !1275, line: 525, type: !1879)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !302)
!1880 = !DILocation(line: 531, column: 25, scope: !1875)
!1881 = !DILocation(line: 531, column: 29, scope: !1875)
!1882 = !DILocation(line: 531, column: 18, scope: !1875)
!1883 = !DILocation(line: 532, column: 25, scope: !1875)
!1884 = !DILocation(line: 532, column: 29, scope: !1875)
!1885 = !DILocation(line: 532, column: 18, scope: !1875)
!1886 = !DILocation(line: 532, column: 12, scope: !1875)
!1887 = !DILocation(line: 533, column: 25, scope: !1875)
!1888 = !DILocation(line: 533, column: 29, scope: !1875)
!1889 = !DILocation(line: 533, column: 18, scope: !1875)
!1890 = !DILocation(line: 534, column: 25, scope: !1875)
!1891 = !DILocation(line: 534, column: 29, scope: !1875)
!1892 = !DILocation(line: 534, column: 18, scope: !1875)
!1893 = !DILocation(line: 535, column: 25, scope: !1875)
!1894 = !DILocation(line: 535, column: 29, scope: !1875)
!1895 = !DILocation(line: 535, column: 18, scope: !1875)
!1896 = !DILocation(line: 535, column: 12, scope: !1875)
!1897 = !DILocation(line: 536, column: 25, scope: !1875)
!1898 = !DILocation(line: 536, column: 29, scope: !1875)
!1899 = !DILocation(line: 536, column: 18, scope: !1875)
!1900 = !DILocation(line: 537, column: 25, scope: !1875)
!1901 = !DILocation(line: 537, column: 29, scope: !1875)
!1902 = !DILocation(line: 537, column: 18, scope: !1875)
!1903 = !DILocation(line: 539, column: 40, scope: !1875)
!1904 = !DILocation(line: 539, column: 32, scope: !1875)
!1905 = !DILocation(line: 539, column: 49, scope: !1875)
!1906 = !DILocation(line: 539, column: 54, scope: !1875)
!1907 = !DILocation(line: 539, column: 46, scope: !1875)
!1908 = !DILocation(line: 539, column: 20, scope: !1875)
!1909 = !DILocation(line: 539, column: 9, scope: !1875)
!1910 = !DILocation(line: 539, column: 5, scope: !1875)
!1911 = !DILocation(line: 539, column: 18, scope: !1875)
!1912 = !DILocation(line: 540, column: 26, scope: !1875)
!1913 = !DILocation(line: 540, column: 40, scope: !1875)
!1914 = !DILocation(line: 540, column: 32, scope: !1875)
!1915 = !DILocation(line: 540, column: 54, scope: !1875)
!1916 = !DILocation(line: 540, column: 46, scope: !1875)
!1917 = !DILocation(line: 540, column: 63, scope: !1875)
!1918 = !DILocation(line: 540, column: 68, scope: !1875)
!1919 = !DILocation(line: 540, column: 60, scope: !1875)
!1920 = !DILocation(line: 540, column: 20, scope: !1875)
!1921 = !DILocation(line: 540, column: 9, scope: !1875)
!1922 = !DILocation(line: 540, column: 5, scope: !1875)
!1923 = !DILocation(line: 540, column: 18, scope: !1875)
!1924 = !DILocation(line: 541, column: 26, scope: !1875)
!1925 = !DILocation(line: 541, column: 40, scope: !1875)
!1926 = !DILocation(line: 541, column: 32, scope: !1875)
!1927 = !DILocation(line: 541, column: 54, scope: !1875)
!1928 = !DILocation(line: 541, column: 46, scope: !1875)
!1929 = !DILocation(line: 541, column: 20, scope: !1875)
!1930 = !DILocation(line: 541, column: 9, scope: !1875)
!1931 = !DILocation(line: 541, column: 5, scope: !1875)
!1932 = !DILocation(line: 541, column: 18, scope: !1875)
!1933 = !DILocation(line: 529, column: 26, scope: !1872)
!1934 = !DILocation(line: 529, column: 3, scope: !1872)
!1935 = distinct !{!1935, !1873, !1936, !200}
!1936 = !DILocation(line: 542, column: 3, scope: !1869)
!1937 = !DILocation(line: 552, column: 1, scope: !1861)
!1938 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyeta_unpack", scope: !1275, file: !1275, line: 562, type: !1711, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!1939 = !DILocalVariable(name: "r", arg: 1, scope: !1938, file: !1275, line: 562, type: !773)
!1940 = !DILocation(line: 0, scope: !1938)
!1941 = !DILocalVariable(name: "a", arg: 2, scope: !1938, file: !1275, line: 562, type: !324)
!1942 = !DILocalVariable(name: "i", scope: !1938, file: !1275, line: 563, type: !55)
!1943 = !DILocation(line: 567, column: 8, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1938, file: !1275, line: 567, column: 3)
!1945 = !DILocation(line: 567, scope: !1944)
!1946 = !DILocation(line: 567, column: 17, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !1275, line: 567, column: 3)
!1948 = !DILocation(line: 567, column: 3, scope: !1944)
!1949 = !DILocation(line: 568, column: 28, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1947, file: !1275, line: 567, column: 31)
!1951 = !DILocation(line: 568, column: 24, scope: !1950)
!1952 = !DILocation(line: 568, column: 43, scope: !1950)
!1953 = !DILocation(line: 568, column: 12, scope: !1950)
!1954 = !DILocation(line: 568, column: 5, scope: !1950)
!1955 = !DILocation(line: 568, column: 21, scope: !1950)
!1956 = !DILocation(line: 569, column: 28, scope: !1950)
!1957 = !DILocation(line: 569, column: 24, scope: !1950)
!1958 = !DILocation(line: 569, column: 37, scope: !1950)
!1959 = !DILocation(line: 569, column: 43, scope: !1950)
!1960 = !DILocation(line: 569, column: 12, scope: !1950)
!1961 = !DILocation(line: 569, column: 16, scope: !1950)
!1962 = !DILocation(line: 569, column: 5, scope: !1950)
!1963 = !DILocation(line: 569, column: 21, scope: !1950)
!1964 = !DILocation(line: 570, column: 29, scope: !1950)
!1965 = !DILocation(line: 570, column: 25, scope: !1950)
!1966 = !DILocation(line: 570, column: 38, scope: !1950)
!1967 = !DILocation(line: 570, column: 51, scope: !1950)
!1968 = !DILocation(line: 570, column: 47, scope: !1950)
!1969 = !DILocation(line: 570, column: 60, scope: !1950)
!1970 = !DILocation(line: 570, column: 67, scope: !1950)
!1971 = !DILocation(line: 570, column: 12, scope: !1950)
!1972 = !DILocation(line: 570, column: 16, scope: !1950)
!1973 = !DILocation(line: 570, column: 5, scope: !1950)
!1974 = !DILocation(line: 570, column: 21, scope: !1950)
!1975 = !DILocation(line: 571, column: 28, scope: !1950)
!1976 = !DILocation(line: 571, column: 24, scope: !1950)
!1977 = !DILocation(line: 571, column: 37, scope: !1950)
!1978 = !DILocation(line: 571, column: 43, scope: !1950)
!1979 = !DILocation(line: 571, column: 12, scope: !1950)
!1980 = !DILocation(line: 571, column: 16, scope: !1950)
!1981 = !DILocation(line: 571, column: 5, scope: !1950)
!1982 = !DILocation(line: 571, column: 21, scope: !1950)
!1983 = !DILocation(line: 572, column: 28, scope: !1950)
!1984 = !DILocation(line: 572, column: 24, scope: !1950)
!1985 = !DILocation(line: 572, column: 37, scope: !1950)
!1986 = !DILocation(line: 572, column: 43, scope: !1950)
!1987 = !DILocation(line: 572, column: 12, scope: !1950)
!1988 = !DILocation(line: 572, column: 16, scope: !1950)
!1989 = !DILocation(line: 572, column: 5, scope: !1950)
!1990 = !DILocation(line: 572, column: 21, scope: !1950)
!1991 = !DILocation(line: 573, column: 29, scope: !1950)
!1992 = !DILocation(line: 573, column: 25, scope: !1950)
!1993 = !DILocation(line: 573, column: 38, scope: !1950)
!1994 = !DILocation(line: 573, column: 51, scope: !1950)
!1995 = !DILocation(line: 573, column: 47, scope: !1950)
!1996 = !DILocation(line: 573, column: 60, scope: !1950)
!1997 = !DILocation(line: 573, column: 67, scope: !1950)
!1998 = !DILocation(line: 573, column: 12, scope: !1950)
!1999 = !DILocation(line: 573, column: 16, scope: !1950)
!2000 = !DILocation(line: 573, column: 5, scope: !1950)
!2001 = !DILocation(line: 573, column: 21, scope: !1950)
!2002 = !DILocation(line: 574, column: 28, scope: !1950)
!2003 = !DILocation(line: 574, column: 24, scope: !1950)
!2004 = !DILocation(line: 574, column: 37, scope: !1950)
!2005 = !DILocation(line: 574, column: 43, scope: !1950)
!2006 = !DILocation(line: 574, column: 12, scope: !1950)
!2007 = !DILocation(line: 574, column: 16, scope: !1950)
!2008 = !DILocation(line: 574, column: 5, scope: !1950)
!2009 = !DILocation(line: 574, column: 21, scope: !1950)
!2010 = !DILocation(line: 575, column: 28, scope: !1950)
!2011 = !DILocation(line: 575, column: 24, scope: !1950)
!2012 = !DILocation(line: 575, column: 37, scope: !1950)
!2013 = !DILocation(line: 575, column: 12, scope: !1950)
!2014 = !DILocation(line: 575, column: 16, scope: !1950)
!2015 = !DILocation(line: 575, column: 5, scope: !1950)
!2016 = !DILocation(line: 575, column: 21, scope: !1950)
!2017 = !DILocation(line: 577, column: 36, scope: !1950)
!2018 = !DILocation(line: 577, column: 29, scope: !1950)
!2019 = !DILocation(line: 577, column: 27, scope: !1950)
!2020 = !DILocation(line: 577, column: 12, scope: !1950)
!2021 = !DILocation(line: 577, column: 5, scope: !1950)
!2022 = !DILocation(line: 577, column: 21, scope: !1950)
!2023 = !DILocation(line: 578, column: 36, scope: !1950)
!2024 = !DILocation(line: 578, column: 40, scope: !1950)
!2025 = !DILocation(line: 578, column: 29, scope: !1950)
!2026 = !DILocation(line: 578, column: 27, scope: !1950)
!2027 = !DILocation(line: 578, column: 12, scope: !1950)
!2028 = !DILocation(line: 578, column: 16, scope: !1950)
!2029 = !DILocation(line: 578, column: 5, scope: !1950)
!2030 = !DILocation(line: 578, column: 21, scope: !1950)
!2031 = !DILocation(line: 579, column: 36, scope: !1950)
!2032 = !DILocation(line: 579, column: 40, scope: !1950)
!2033 = !DILocation(line: 579, column: 29, scope: !1950)
!2034 = !DILocation(line: 579, column: 27, scope: !1950)
!2035 = !DILocation(line: 579, column: 12, scope: !1950)
!2036 = !DILocation(line: 579, column: 16, scope: !1950)
!2037 = !DILocation(line: 579, column: 5, scope: !1950)
!2038 = !DILocation(line: 579, column: 21, scope: !1950)
!2039 = !DILocation(line: 580, column: 36, scope: !1950)
!2040 = !DILocation(line: 580, column: 40, scope: !1950)
!2041 = !DILocation(line: 580, column: 29, scope: !1950)
!2042 = !DILocation(line: 580, column: 27, scope: !1950)
!2043 = !DILocation(line: 580, column: 12, scope: !1950)
!2044 = !DILocation(line: 580, column: 16, scope: !1950)
!2045 = !DILocation(line: 580, column: 5, scope: !1950)
!2046 = !DILocation(line: 580, column: 21, scope: !1950)
!2047 = !DILocation(line: 581, column: 36, scope: !1950)
!2048 = !DILocation(line: 581, column: 40, scope: !1950)
!2049 = !DILocation(line: 581, column: 29, scope: !1950)
!2050 = !DILocation(line: 581, column: 27, scope: !1950)
!2051 = !DILocation(line: 581, column: 12, scope: !1950)
!2052 = !DILocation(line: 581, column: 16, scope: !1950)
!2053 = !DILocation(line: 581, column: 5, scope: !1950)
!2054 = !DILocation(line: 581, column: 21, scope: !1950)
!2055 = !DILocation(line: 582, column: 36, scope: !1950)
!2056 = !DILocation(line: 582, column: 40, scope: !1950)
!2057 = !DILocation(line: 582, column: 29, scope: !1950)
!2058 = !DILocation(line: 582, column: 27, scope: !1950)
!2059 = !DILocation(line: 582, column: 12, scope: !1950)
!2060 = !DILocation(line: 582, column: 16, scope: !1950)
!2061 = !DILocation(line: 582, column: 5, scope: !1950)
!2062 = !DILocation(line: 582, column: 21, scope: !1950)
!2063 = !DILocation(line: 583, column: 36, scope: !1950)
!2064 = !DILocation(line: 583, column: 40, scope: !1950)
!2065 = !DILocation(line: 583, column: 29, scope: !1950)
!2066 = !DILocation(line: 583, column: 27, scope: !1950)
!2067 = !DILocation(line: 583, column: 12, scope: !1950)
!2068 = !DILocation(line: 583, column: 16, scope: !1950)
!2069 = !DILocation(line: 583, column: 5, scope: !1950)
!2070 = !DILocation(line: 583, column: 21, scope: !1950)
!2071 = !DILocation(line: 584, column: 36, scope: !1950)
!2072 = !DILocation(line: 584, column: 40, scope: !1950)
!2073 = !DILocation(line: 584, column: 29, scope: !1950)
!2074 = !DILocation(line: 584, column: 27, scope: !1950)
!2075 = !DILocation(line: 584, column: 12, scope: !1950)
!2076 = !DILocation(line: 584, column: 16, scope: !1950)
!2077 = !DILocation(line: 584, column: 5, scope: !1950)
!2078 = !DILocation(line: 584, column: 21, scope: !1950)
!2079 = !DILocation(line: 567, column: 26, scope: !1947)
!2080 = !DILocation(line: 567, column: 3, scope: !1947)
!2081 = distinct !{!2081, !1948, !2082, !200}
!2082 = !DILocation(line: 585, column: 3, scope: !1944)
!2083 = !DILocation(line: 596, column: 1, scope: !1938)
!2084 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyt1_pack", scope: !1275, file: !1275, line: 608, type: !1862, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2085 = !DILocalVariable(name: "r", arg: 1, scope: !2084, file: !1275, line: 608, type: !47)
!2086 = !DILocation(line: 0, scope: !2084)
!2087 = !DILocalVariable(name: "a", arg: 2, scope: !2084, file: !1275, line: 608, type: !922)
!2088 = !DILocalVariable(name: "i", scope: !2084, file: !1275, line: 609, type: !55)
!2089 = !DILocation(line: 612, column: 8, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2084, file: !1275, line: 612, column: 3)
!2091 = !DILocation(line: 612, scope: !2090)
!2092 = !DILocation(line: 612, column: 17, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !1275, line: 612, column: 3)
!2094 = !DILocation(line: 612, column: 3, scope: !2090)
!2095 = !DILocation(line: 613, column: 28, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !1275, line: 612, column: 31)
!2097 = !DILocation(line: 613, column: 21, scope: !2096)
!2098 = !DILocation(line: 613, column: 20, scope: !2096)
!2099 = !DILocation(line: 613, column: 9, scope: !2096)
!2100 = !DILocation(line: 613, column: 5, scope: !2096)
!2101 = !DILocation(line: 613, column: 18, scope: !2096)
!2102 = !DILocation(line: 614, column: 28, scope: !2096)
!2103 = !DILocation(line: 614, column: 21, scope: !2096)
!2104 = !DILocation(line: 614, column: 37, scope: !2096)
!2105 = !DILocation(line: 614, column: 53, scope: !2096)
!2106 = !DILocation(line: 614, column: 57, scope: !2096)
!2107 = !DILocation(line: 614, column: 46, scope: !2096)
!2108 = !DILocation(line: 614, column: 62, scope: !2096)
!2109 = !DILocation(line: 614, column: 43, scope: !2096)
!2110 = !DILocation(line: 614, column: 20, scope: !2096)
!2111 = !DILocation(line: 614, column: 9, scope: !2096)
!2112 = !DILocation(line: 614, column: 5, scope: !2096)
!2113 = !DILocation(line: 614, column: 18, scope: !2096)
!2114 = !DILocation(line: 615, column: 28, scope: !2096)
!2115 = !DILocation(line: 615, column: 32, scope: !2096)
!2116 = !DILocation(line: 615, column: 21, scope: !2096)
!2117 = !DILocation(line: 615, column: 37, scope: !2096)
!2118 = !DILocation(line: 615, column: 53, scope: !2096)
!2119 = !DILocation(line: 615, column: 57, scope: !2096)
!2120 = !DILocation(line: 615, column: 46, scope: !2096)
!2121 = !DILocation(line: 615, column: 62, scope: !2096)
!2122 = !DILocation(line: 615, column: 43, scope: !2096)
!2123 = !DILocation(line: 615, column: 20, scope: !2096)
!2124 = !DILocation(line: 615, column: 9, scope: !2096)
!2125 = !DILocation(line: 615, column: 5, scope: !2096)
!2126 = !DILocation(line: 615, column: 18, scope: !2096)
!2127 = !DILocation(line: 616, column: 28, scope: !2096)
!2128 = !DILocation(line: 616, column: 32, scope: !2096)
!2129 = !DILocation(line: 616, column: 21, scope: !2096)
!2130 = !DILocation(line: 616, column: 37, scope: !2096)
!2131 = !DILocation(line: 616, column: 53, scope: !2096)
!2132 = !DILocation(line: 616, column: 57, scope: !2096)
!2133 = !DILocation(line: 616, column: 46, scope: !2096)
!2134 = !DILocation(line: 616, column: 62, scope: !2096)
!2135 = !DILocation(line: 616, column: 43, scope: !2096)
!2136 = !DILocation(line: 616, column: 20, scope: !2096)
!2137 = !DILocation(line: 616, column: 9, scope: !2096)
!2138 = !DILocation(line: 616, column: 5, scope: !2096)
!2139 = !DILocation(line: 616, column: 18, scope: !2096)
!2140 = !DILocation(line: 617, column: 28, scope: !2096)
!2141 = !DILocation(line: 617, column: 32, scope: !2096)
!2142 = !DILocation(line: 617, column: 21, scope: !2096)
!2143 = !DILocation(line: 617, column: 37, scope: !2096)
!2144 = !DILocation(line: 617, column: 20, scope: !2096)
!2145 = !DILocation(line: 617, column: 9, scope: !2096)
!2146 = !DILocation(line: 617, column: 5, scope: !2096)
!2147 = !DILocation(line: 617, column: 18, scope: !2096)
!2148 = !DILocation(line: 612, column: 26, scope: !2093)
!2149 = !DILocation(line: 612, column: 3, scope: !2093)
!2150 = distinct !{!2150, !2094, !2151, !200}
!2151 = !DILocation(line: 618, column: 3, scope: !2090)
!2152 = !DILocation(line: 621, column: 1, scope: !2084)
!2153 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyt1_unpack", scope: !1275, file: !1275, line: 632, type: !1711, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2154 = !DILocalVariable(name: "r", arg: 1, scope: !2153, file: !1275, line: 632, type: !773)
!2155 = !DILocation(line: 0, scope: !2153)
!2156 = !DILocalVariable(name: "a", arg: 2, scope: !2153, file: !1275, line: 632, type: !324)
!2157 = !DILocalVariable(name: "i", scope: !2153, file: !1275, line: 633, type: !55)
!2158 = !DILocation(line: 636, column: 8, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2153, file: !1275, line: 636, column: 3)
!2160 = !DILocation(line: 636, scope: !2159)
!2161 = !DILocation(line: 636, column: 17, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !1275, line: 636, column: 3)
!2163 = !DILocation(line: 636, column: 3, scope: !2159)
!2164 = !DILocation(line: 638, column: 15, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2162, file: !1275, line: 636, column: 31)
!2166 = !DILocation(line: 638, column: 11, scope: !2165)
!2167 = !DILocation(line: 638, column: 47, scope: !2165)
!2168 = !DILocation(line: 638, column: 43, scope: !2165)
!2169 = !DILocation(line: 638, column: 33, scope: !2165)
!2170 = !DILocation(line: 638, column: 56, scope: !2165)
!2171 = !DILocation(line: 638, column: 63, scope: !2165)
!2172 = !DILocation(line: 637, column: 12, scope: !2165)
!2173 = !DILocation(line: 637, column: 5, scope: !2165)
!2174 = !DILocation(line: 637, column: 21, scope: !2165)
!2175 = !DILocation(line: 640, column: 15, scope: !2165)
!2176 = !DILocation(line: 640, column: 11, scope: !2165)
!2177 = !DILocation(line: 640, column: 24, scope: !2165)
!2178 = !DILocation(line: 640, column: 47, scope: !2165)
!2179 = !DILocation(line: 640, column: 43, scope: !2165)
!2180 = !DILocation(line: 640, column: 33, scope: !2165)
!2181 = !DILocation(line: 640, column: 56, scope: !2165)
!2182 = !DILocation(line: 640, column: 63, scope: !2165)
!2183 = !DILocation(line: 639, column: 12, scope: !2165)
!2184 = !DILocation(line: 639, column: 16, scope: !2165)
!2185 = !DILocation(line: 639, column: 5, scope: !2165)
!2186 = !DILocation(line: 639, column: 21, scope: !2165)
!2187 = !DILocation(line: 642, column: 15, scope: !2165)
!2188 = !DILocation(line: 642, column: 11, scope: !2165)
!2189 = !DILocation(line: 642, column: 24, scope: !2165)
!2190 = !DILocation(line: 642, column: 47, scope: !2165)
!2191 = !DILocation(line: 642, column: 43, scope: !2165)
!2192 = !DILocation(line: 642, column: 33, scope: !2165)
!2193 = !DILocation(line: 642, column: 56, scope: !2165)
!2194 = !DILocation(line: 642, column: 63, scope: !2165)
!2195 = !DILocation(line: 641, column: 12, scope: !2165)
!2196 = !DILocation(line: 641, column: 16, scope: !2165)
!2197 = !DILocation(line: 641, column: 5, scope: !2165)
!2198 = !DILocation(line: 641, column: 21, scope: !2165)
!2199 = !DILocation(line: 644, column: 15, scope: !2165)
!2200 = !DILocation(line: 644, column: 11, scope: !2165)
!2201 = !DILocation(line: 644, column: 24, scope: !2165)
!2202 = !DILocation(line: 644, column: 47, scope: !2165)
!2203 = !DILocation(line: 644, column: 43, scope: !2165)
!2204 = !DILocation(line: 644, column: 33, scope: !2165)
!2205 = !DILocation(line: 644, column: 56, scope: !2165)
!2206 = !DILocation(line: 644, column: 30, scope: !2165)
!2207 = !DILocation(line: 643, column: 12, scope: !2165)
!2208 = !DILocation(line: 643, column: 16, scope: !2165)
!2209 = !DILocation(line: 643, column: 5, scope: !2165)
!2210 = !DILocation(line: 643, column: 21, scope: !2165)
!2211 = !DILocation(line: 636, column: 26, scope: !2162)
!2212 = !DILocation(line: 636, column: 3, scope: !2162)
!2213 = distinct !{!2213, !2163, !2214, !200}
!2214 = !DILocation(line: 645, column: 3, scope: !2159)
!2215 = !DILocation(line: 648, column: 1, scope: !2153)
!2216 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyt0_pack", scope: !1275, file: !1275, line: 659, type: !1862, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2217 = !DILocalVariable(name: "r", arg: 1, scope: !2216, file: !1275, line: 659, type: !47)
!2218 = !DILocation(line: 0, scope: !2216)
!2219 = !DILocalVariable(name: "a", arg: 2, scope: !2216, file: !1275, line: 659, type: !922)
!2220 = !DILocalVariable(name: "i", scope: !2216, file: !1275, line: 660, type: !55)
!2221 = !DILocation(line: 664, column: 8, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2216, file: !1275, line: 664, column: 3)
!2223 = !DILocation(line: 664, scope: !2222)
!2224 = !DILocation(line: 664, column: 17, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !1275, line: 664, column: 3)
!2226 = !DILocation(line: 664, column: 3, scope: !2222)
!2227 = !DILocation(line: 665, column: 36, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2225, file: !1275, line: 664, column: 31)
!2229 = !DILocation(line: 665, column: 29, scope: !2228)
!2230 = !DILocation(line: 665, column: 27, scope: !2228)
!2231 = !DILocalVariable(name: "t", scope: !2216, file: !1275, line: 661, type: !2232)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !302)
!2233 = !DILocation(line: 666, column: 36, scope: !2228)
!2234 = !DILocation(line: 666, column: 40, scope: !2228)
!2235 = !DILocation(line: 666, column: 29, scope: !2228)
!2236 = !DILocation(line: 666, column: 27, scope: !2228)
!2237 = !DILocation(line: 667, column: 36, scope: !2228)
!2238 = !DILocation(line: 667, column: 40, scope: !2228)
!2239 = !DILocation(line: 667, column: 29, scope: !2228)
!2240 = !DILocation(line: 667, column: 27, scope: !2228)
!2241 = !DILocation(line: 668, column: 36, scope: !2228)
!2242 = !DILocation(line: 668, column: 40, scope: !2228)
!2243 = !DILocation(line: 668, column: 29, scope: !2228)
!2244 = !DILocation(line: 668, column: 27, scope: !2228)
!2245 = !DILocation(line: 669, column: 36, scope: !2228)
!2246 = !DILocation(line: 669, column: 40, scope: !2228)
!2247 = !DILocation(line: 669, column: 29, scope: !2228)
!2248 = !DILocation(line: 669, column: 27, scope: !2228)
!2249 = !DILocation(line: 670, column: 36, scope: !2228)
!2250 = !DILocation(line: 670, column: 40, scope: !2228)
!2251 = !DILocation(line: 670, column: 29, scope: !2228)
!2252 = !DILocation(line: 670, column: 27, scope: !2228)
!2253 = !DILocation(line: 671, column: 36, scope: !2228)
!2254 = !DILocation(line: 671, column: 40, scope: !2228)
!2255 = !DILocation(line: 671, column: 29, scope: !2228)
!2256 = !DILocation(line: 671, column: 27, scope: !2228)
!2257 = !DILocation(line: 672, column: 36, scope: !2228)
!2258 = !DILocation(line: 672, column: 40, scope: !2228)
!2259 = !DILocation(line: 672, column: 29, scope: !2228)
!2260 = !DILocation(line: 672, column: 27, scope: !2228)
!2261 = !DILocation(line: 674, column: 21, scope: !2228)
!2262 = !DILocation(line: 674, column: 10, scope: !2228)
!2263 = !DILocation(line: 674, column: 5, scope: !2228)
!2264 = !DILocation(line: 674, column: 19, scope: !2228)
!2265 = !DILocation(line: 675, column: 26, scope: !2228)
!2266 = !DILocation(line: 675, column: 21, scope: !2228)
!2267 = !DILocation(line: 675, column: 10, scope: !2228)
!2268 = !DILocation(line: 675, column: 5, scope: !2228)
!2269 = !DILocation(line: 675, column: 19, scope: !2228)
!2270 = !DILocation(line: 676, column: 10, scope: !2228)
!2271 = !DILocation(line: 676, column: 5, scope: !2228)
!2272 = !DILocation(line: 676, column: 19, scope: !2228)
!2273 = !DILocation(line: 677, column: 26, scope: !2228)
!2274 = !DILocation(line: 677, column: 21, scope: !2228)
!2275 = !DILocation(line: 677, column: 10, scope: !2228)
!2276 = !DILocation(line: 677, column: 5, scope: !2228)
!2277 = !DILocation(line: 677, column: 19, scope: !2228)
!2278 = !DILocation(line: 678, column: 26, scope: !2228)
!2279 = !DILocation(line: 678, column: 21, scope: !2228)
!2280 = !DILocation(line: 678, column: 10, scope: !2228)
!2281 = !DILocation(line: 678, column: 5, scope: !2228)
!2282 = !DILocation(line: 678, column: 19, scope: !2228)
!2283 = !DILocation(line: 679, column: 10, scope: !2228)
!2284 = !DILocation(line: 679, column: 5, scope: !2228)
!2285 = !DILocation(line: 679, column: 19, scope: !2228)
!2286 = !DILocation(line: 680, column: 26, scope: !2228)
!2287 = !DILocation(line: 680, column: 21, scope: !2228)
!2288 = !DILocation(line: 680, column: 10, scope: !2228)
!2289 = !DILocation(line: 680, column: 5, scope: !2228)
!2290 = !DILocation(line: 680, column: 19, scope: !2228)
!2291 = !DILocation(line: 681, column: 10, scope: !2228)
!2292 = !DILocation(line: 681, column: 5, scope: !2228)
!2293 = !DILocation(line: 681, column: 19, scope: !2228)
!2294 = !DILocation(line: 682, column: 26, scope: !2228)
!2295 = !DILocation(line: 682, column: 21, scope: !2228)
!2296 = !DILocation(line: 682, column: 10, scope: !2228)
!2297 = !DILocation(line: 682, column: 5, scope: !2228)
!2298 = !DILocation(line: 682, column: 19, scope: !2228)
!2299 = !DILocation(line: 683, column: 26, scope: !2228)
!2300 = !DILocation(line: 683, column: 21, scope: !2228)
!2301 = !DILocation(line: 683, column: 10, scope: !2228)
!2302 = !DILocation(line: 683, column: 5, scope: !2228)
!2303 = !DILocation(line: 683, column: 19, scope: !2228)
!2304 = !DILocation(line: 684, column: 10, scope: !2228)
!2305 = !DILocation(line: 684, column: 5, scope: !2228)
!2306 = !DILocation(line: 684, column: 19, scope: !2228)
!2307 = !DILocation(line: 685, column: 26, scope: !2228)
!2308 = !DILocation(line: 685, column: 21, scope: !2228)
!2309 = !DILocation(line: 685, column: 10, scope: !2228)
!2310 = !DILocation(line: 685, column: 5, scope: !2228)
!2311 = !DILocation(line: 685, column: 19, scope: !2228)
!2312 = !DILocation(line: 686, column: 26, scope: !2228)
!2313 = !DILocation(line: 686, column: 21, scope: !2228)
!2314 = !DILocation(line: 686, column: 10, scope: !2228)
!2315 = !DILocation(line: 686, column: 5, scope: !2228)
!2316 = !DILocation(line: 686, column: 19, scope: !2228)
!2317 = !DILocation(line: 687, column: 10, scope: !2228)
!2318 = !DILocation(line: 687, column: 5, scope: !2228)
!2319 = !DILocation(line: 687, column: 19, scope: !2228)
!2320 = !DILocation(line: 688, column: 26, scope: !2228)
!2321 = !DILocation(line: 688, column: 21, scope: !2228)
!2322 = !DILocation(line: 688, column: 10, scope: !2228)
!2323 = !DILocation(line: 688, column: 5, scope: !2228)
!2324 = !DILocation(line: 688, column: 19, scope: !2228)
!2325 = !DILocation(line: 689, column: 10, scope: !2228)
!2326 = !DILocation(line: 689, column: 5, scope: !2228)
!2327 = !DILocation(line: 689, column: 19, scope: !2228)
!2328 = !DILocation(line: 690, column: 27, scope: !2228)
!2329 = !DILocation(line: 690, column: 22, scope: !2228)
!2330 = !DILocation(line: 690, column: 10, scope: !2228)
!2331 = !DILocation(line: 690, column: 5, scope: !2228)
!2332 = !DILocation(line: 690, column: 20, scope: !2228)
!2333 = !DILocation(line: 691, column: 27, scope: !2228)
!2334 = !DILocation(line: 691, column: 22, scope: !2228)
!2335 = !DILocation(line: 691, column: 10, scope: !2228)
!2336 = !DILocation(line: 691, column: 5, scope: !2228)
!2337 = !DILocation(line: 691, column: 20, scope: !2228)
!2338 = !DILocation(line: 692, column: 10, scope: !2228)
!2339 = !DILocation(line: 692, column: 5, scope: !2228)
!2340 = !DILocation(line: 692, column: 20, scope: !2228)
!2341 = !DILocation(line: 693, column: 27, scope: !2228)
!2342 = !DILocation(line: 693, column: 22, scope: !2228)
!2343 = !DILocation(line: 693, column: 10, scope: !2228)
!2344 = !DILocation(line: 693, column: 5, scope: !2228)
!2345 = !DILocation(line: 693, column: 20, scope: !2228)
!2346 = !DILocation(line: 664, column: 26, scope: !2225)
!2347 = !DILocation(line: 664, column: 3, scope: !2225)
!2348 = distinct !{!2348, !2226, !2349, !200}
!2349 = !DILocation(line: 694, column: 3, scope: !2222)
!2350 = !DILocation(line: 697, column: 1, scope: !2216)
!2351 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyt0_unpack", scope: !1275, file: !1275, line: 707, type: !1711, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2352 = !DILocalVariable(name: "r", arg: 1, scope: !2351, file: !1275, line: 707, type: !773)
!2353 = !DILocation(line: 0, scope: !2351)
!2354 = !DILocalVariable(name: "a", arg: 2, scope: !2351, file: !1275, line: 707, type: !324)
!2355 = !DILocalVariable(name: "i", scope: !2351, file: !1275, line: 708, type: !55)
!2356 = !DILocation(line: 711, column: 8, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2351, file: !1275, line: 711, column: 3)
!2358 = !DILocation(line: 711, scope: !2357)
!2359 = !DILocation(line: 711, column: 17, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2357, file: !1275, line: 711, column: 3)
!2361 = !DILocation(line: 711, column: 3, scope: !2357)
!2362 = !DILocation(line: 712, column: 28, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !1275, line: 711, column: 31)
!2364 = !DILocation(line: 712, column: 23, scope: !2363)
!2365 = !DILocation(line: 712, column: 12, scope: !2363)
!2366 = !DILocation(line: 712, column: 5, scope: !2363)
!2367 = !DILocation(line: 712, column: 21, scope: !2363)
!2368 = !DILocation(line: 713, column: 39, scope: !2363)
!2369 = !DILocation(line: 713, column: 34, scope: !2363)
!2370 = !DILocation(line: 713, column: 24, scope: !2363)
!2371 = !DILocation(line: 713, column: 48, scope: !2363)
!2372 = !DILocation(line: 713, column: 12, scope: !2363)
!2373 = !DILocation(line: 713, column: 5, scope: !2363)
!2374 = !DILocation(line: 713, column: 21, scope: !2363)
!2375 = !DILocation(line: 714, column: 12, scope: !2363)
!2376 = !DILocation(line: 714, column: 5, scope: !2363)
!2377 = !DILocation(line: 714, column: 21, scope: !2363)
!2378 = !DILocation(line: 716, column: 28, scope: !2363)
!2379 = !DILocation(line: 716, column: 23, scope: !2363)
!2380 = !DILocation(line: 716, column: 37, scope: !2363)
!2381 = !DILocation(line: 716, column: 12, scope: !2363)
!2382 = !DILocation(line: 716, column: 16, scope: !2363)
!2383 = !DILocation(line: 716, column: 5, scope: !2363)
!2384 = !DILocation(line: 716, column: 21, scope: !2363)
!2385 = !DILocation(line: 717, column: 39, scope: !2363)
!2386 = !DILocation(line: 717, column: 34, scope: !2363)
!2387 = !DILocation(line: 717, column: 24, scope: !2363)
!2388 = !DILocation(line: 717, column: 48, scope: !2363)
!2389 = !DILocation(line: 717, column: 12, scope: !2363)
!2390 = !DILocation(line: 717, column: 16, scope: !2363)
!2391 = !DILocation(line: 717, column: 5, scope: !2363)
!2392 = !DILocation(line: 717, column: 21, scope: !2363)
!2393 = !DILocation(line: 718, column: 39, scope: !2363)
!2394 = !DILocation(line: 718, column: 34, scope: !2363)
!2395 = !DILocation(line: 718, column: 24, scope: !2363)
!2396 = !DILocation(line: 718, column: 48, scope: !2363)
!2397 = !DILocation(line: 718, column: 12, scope: !2363)
!2398 = !DILocation(line: 718, column: 16, scope: !2363)
!2399 = !DILocation(line: 718, column: 5, scope: !2363)
!2400 = !DILocation(line: 718, column: 21, scope: !2363)
!2401 = !DILocation(line: 719, column: 12, scope: !2363)
!2402 = !DILocation(line: 719, column: 16, scope: !2363)
!2403 = !DILocation(line: 719, column: 5, scope: !2363)
!2404 = !DILocation(line: 719, column: 21, scope: !2363)
!2405 = !DILocation(line: 721, column: 28, scope: !2363)
!2406 = !DILocation(line: 721, column: 23, scope: !2363)
!2407 = !DILocation(line: 721, column: 37, scope: !2363)
!2408 = !DILocation(line: 721, column: 12, scope: !2363)
!2409 = !DILocation(line: 721, column: 16, scope: !2363)
!2410 = !DILocation(line: 721, column: 5, scope: !2363)
!2411 = !DILocation(line: 721, column: 21, scope: !2363)
!2412 = !DILocation(line: 722, column: 39, scope: !2363)
!2413 = !DILocation(line: 722, column: 34, scope: !2363)
!2414 = !DILocation(line: 722, column: 24, scope: !2363)
!2415 = !DILocation(line: 722, column: 48, scope: !2363)
!2416 = !DILocation(line: 722, column: 12, scope: !2363)
!2417 = !DILocation(line: 722, column: 16, scope: !2363)
!2418 = !DILocation(line: 722, column: 5, scope: !2363)
!2419 = !DILocation(line: 722, column: 21, scope: !2363)
!2420 = !DILocation(line: 723, column: 12, scope: !2363)
!2421 = !DILocation(line: 723, column: 16, scope: !2363)
!2422 = !DILocation(line: 723, column: 5, scope: !2363)
!2423 = !DILocation(line: 723, column: 21, scope: !2363)
!2424 = !DILocation(line: 725, column: 28, scope: !2363)
!2425 = !DILocation(line: 725, column: 23, scope: !2363)
!2426 = !DILocation(line: 725, column: 37, scope: !2363)
!2427 = !DILocation(line: 725, column: 12, scope: !2363)
!2428 = !DILocation(line: 725, column: 16, scope: !2363)
!2429 = !DILocation(line: 725, column: 5, scope: !2363)
!2430 = !DILocation(line: 725, column: 21, scope: !2363)
!2431 = !DILocation(line: 726, column: 39, scope: !2363)
!2432 = !DILocation(line: 726, column: 34, scope: !2363)
!2433 = !DILocation(line: 726, column: 24, scope: !2363)
!2434 = !DILocation(line: 726, column: 48, scope: !2363)
!2435 = !DILocation(line: 726, column: 12, scope: !2363)
!2436 = !DILocation(line: 726, column: 16, scope: !2363)
!2437 = !DILocation(line: 726, column: 5, scope: !2363)
!2438 = !DILocation(line: 726, column: 21, scope: !2363)
!2439 = !DILocation(line: 727, column: 39, scope: !2363)
!2440 = !DILocation(line: 727, column: 34, scope: !2363)
!2441 = !DILocation(line: 727, column: 24, scope: !2363)
!2442 = !DILocation(line: 727, column: 48, scope: !2363)
!2443 = !DILocation(line: 727, column: 12, scope: !2363)
!2444 = !DILocation(line: 727, column: 16, scope: !2363)
!2445 = !DILocation(line: 727, column: 5, scope: !2363)
!2446 = !DILocation(line: 727, column: 21, scope: !2363)
!2447 = !DILocation(line: 728, column: 12, scope: !2363)
!2448 = !DILocation(line: 728, column: 16, scope: !2363)
!2449 = !DILocation(line: 728, column: 5, scope: !2363)
!2450 = !DILocation(line: 728, column: 21, scope: !2363)
!2451 = !DILocation(line: 730, column: 28, scope: !2363)
!2452 = !DILocation(line: 730, column: 23, scope: !2363)
!2453 = !DILocation(line: 730, column: 37, scope: !2363)
!2454 = !DILocation(line: 730, column: 12, scope: !2363)
!2455 = !DILocation(line: 730, column: 16, scope: !2363)
!2456 = !DILocation(line: 730, column: 5, scope: !2363)
!2457 = !DILocation(line: 730, column: 21, scope: !2363)
!2458 = !DILocation(line: 731, column: 39, scope: !2363)
!2459 = !DILocation(line: 731, column: 34, scope: !2363)
!2460 = !DILocation(line: 731, column: 24, scope: !2363)
!2461 = !DILocation(line: 731, column: 48, scope: !2363)
!2462 = !DILocation(line: 731, column: 12, scope: !2363)
!2463 = !DILocation(line: 731, column: 16, scope: !2363)
!2464 = !DILocation(line: 731, column: 5, scope: !2363)
!2465 = !DILocation(line: 731, column: 21, scope: !2363)
!2466 = !DILocation(line: 732, column: 39, scope: !2363)
!2467 = !DILocation(line: 732, column: 34, scope: !2363)
!2468 = !DILocation(line: 732, column: 24, scope: !2363)
!2469 = !DILocation(line: 732, column: 48, scope: !2363)
!2470 = !DILocation(line: 732, column: 12, scope: !2363)
!2471 = !DILocation(line: 732, column: 16, scope: !2363)
!2472 = !DILocation(line: 732, column: 5, scope: !2363)
!2473 = !DILocation(line: 732, column: 21, scope: !2363)
!2474 = !DILocation(line: 733, column: 12, scope: !2363)
!2475 = !DILocation(line: 733, column: 16, scope: !2363)
!2476 = !DILocation(line: 733, column: 5, scope: !2363)
!2477 = !DILocation(line: 733, column: 21, scope: !2363)
!2478 = !DILocation(line: 735, column: 28, scope: !2363)
!2479 = !DILocation(line: 735, column: 23, scope: !2363)
!2480 = !DILocation(line: 735, column: 37, scope: !2363)
!2481 = !DILocation(line: 735, column: 12, scope: !2363)
!2482 = !DILocation(line: 735, column: 16, scope: !2363)
!2483 = !DILocation(line: 735, column: 5, scope: !2363)
!2484 = !DILocation(line: 735, column: 21, scope: !2363)
!2485 = !DILocation(line: 736, column: 39, scope: !2363)
!2486 = !DILocation(line: 736, column: 34, scope: !2363)
!2487 = !DILocation(line: 736, column: 24, scope: !2363)
!2488 = !DILocation(line: 736, column: 48, scope: !2363)
!2489 = !DILocation(line: 736, column: 12, scope: !2363)
!2490 = !DILocation(line: 736, column: 16, scope: !2363)
!2491 = !DILocation(line: 736, column: 5, scope: !2363)
!2492 = !DILocation(line: 736, column: 21, scope: !2363)
!2493 = !DILocation(line: 737, column: 12, scope: !2363)
!2494 = !DILocation(line: 737, column: 16, scope: !2363)
!2495 = !DILocation(line: 737, column: 5, scope: !2363)
!2496 = !DILocation(line: 737, column: 21, scope: !2363)
!2497 = !DILocation(line: 739, column: 28, scope: !2363)
!2498 = !DILocation(line: 739, column: 23, scope: !2363)
!2499 = !DILocation(line: 739, column: 37, scope: !2363)
!2500 = !DILocation(line: 739, column: 12, scope: !2363)
!2501 = !DILocation(line: 739, column: 16, scope: !2363)
!2502 = !DILocation(line: 739, column: 5, scope: !2363)
!2503 = !DILocation(line: 739, column: 21, scope: !2363)
!2504 = !DILocation(line: 740, column: 39, scope: !2363)
!2505 = !DILocation(line: 740, column: 34, scope: !2363)
!2506 = !DILocation(line: 740, column: 24, scope: !2363)
!2507 = !DILocation(line: 740, column: 49, scope: !2363)
!2508 = !DILocation(line: 740, column: 12, scope: !2363)
!2509 = !DILocation(line: 740, column: 16, scope: !2363)
!2510 = !DILocation(line: 740, column: 5, scope: !2363)
!2511 = !DILocation(line: 740, column: 21, scope: !2363)
!2512 = !DILocation(line: 741, column: 39, scope: !2363)
!2513 = !DILocation(line: 741, column: 34, scope: !2363)
!2514 = !DILocation(line: 741, column: 24, scope: !2363)
!2515 = !DILocation(line: 741, column: 49, scope: !2363)
!2516 = !DILocation(line: 741, column: 12, scope: !2363)
!2517 = !DILocation(line: 741, column: 16, scope: !2363)
!2518 = !DILocation(line: 741, column: 5, scope: !2363)
!2519 = !DILocation(line: 741, column: 21, scope: !2363)
!2520 = !DILocation(line: 742, column: 12, scope: !2363)
!2521 = !DILocation(line: 742, column: 16, scope: !2363)
!2522 = !DILocation(line: 742, column: 5, scope: !2363)
!2523 = !DILocation(line: 742, column: 21, scope: !2363)
!2524 = !DILocation(line: 744, column: 28, scope: !2363)
!2525 = !DILocation(line: 744, column: 23, scope: !2363)
!2526 = !DILocation(line: 744, column: 38, scope: !2363)
!2527 = !DILocation(line: 744, column: 12, scope: !2363)
!2528 = !DILocation(line: 744, column: 16, scope: !2363)
!2529 = !DILocation(line: 744, column: 5, scope: !2363)
!2530 = !DILocation(line: 744, column: 21, scope: !2363)
!2531 = !DILocation(line: 745, column: 39, scope: !2363)
!2532 = !DILocation(line: 745, column: 34, scope: !2363)
!2533 = !DILocation(line: 745, column: 24, scope: !2363)
!2534 = !DILocation(line: 745, column: 49, scope: !2363)
!2535 = !DILocation(line: 745, column: 12, scope: !2363)
!2536 = !DILocation(line: 745, column: 16, scope: !2363)
!2537 = !DILocation(line: 745, column: 5, scope: !2363)
!2538 = !DILocation(line: 745, column: 21, scope: !2363)
!2539 = !DILocation(line: 746, column: 12, scope: !2363)
!2540 = !DILocation(line: 746, column: 16, scope: !2363)
!2541 = !DILocation(line: 746, column: 5, scope: !2363)
!2542 = !DILocation(line: 746, column: 21, scope: !2363)
!2543 = !DILocation(line: 748, column: 47, scope: !2363)
!2544 = !DILocation(line: 748, column: 40, scope: !2363)
!2545 = !DILocation(line: 748, column: 38, scope: !2363)
!2546 = !DILocation(line: 748, column: 12, scope: !2363)
!2547 = !DILocation(line: 748, column: 5, scope: !2363)
!2548 = !DILocation(line: 748, column: 21, scope: !2363)
!2549 = !DILocation(line: 749, column: 47, scope: !2363)
!2550 = !DILocation(line: 749, column: 51, scope: !2363)
!2551 = !DILocation(line: 749, column: 40, scope: !2363)
!2552 = !DILocation(line: 749, column: 38, scope: !2363)
!2553 = !DILocation(line: 749, column: 12, scope: !2363)
!2554 = !DILocation(line: 749, column: 16, scope: !2363)
!2555 = !DILocation(line: 749, column: 5, scope: !2363)
!2556 = !DILocation(line: 749, column: 21, scope: !2363)
!2557 = !DILocation(line: 750, column: 47, scope: !2363)
!2558 = !DILocation(line: 750, column: 51, scope: !2363)
!2559 = !DILocation(line: 750, column: 40, scope: !2363)
!2560 = !DILocation(line: 750, column: 38, scope: !2363)
!2561 = !DILocation(line: 750, column: 12, scope: !2363)
!2562 = !DILocation(line: 750, column: 16, scope: !2363)
!2563 = !DILocation(line: 750, column: 5, scope: !2363)
!2564 = !DILocation(line: 750, column: 21, scope: !2363)
!2565 = !DILocation(line: 751, column: 47, scope: !2363)
!2566 = !DILocation(line: 751, column: 51, scope: !2363)
!2567 = !DILocation(line: 751, column: 40, scope: !2363)
!2568 = !DILocation(line: 751, column: 38, scope: !2363)
!2569 = !DILocation(line: 751, column: 12, scope: !2363)
!2570 = !DILocation(line: 751, column: 16, scope: !2363)
!2571 = !DILocation(line: 751, column: 5, scope: !2363)
!2572 = !DILocation(line: 751, column: 21, scope: !2363)
!2573 = !DILocation(line: 752, column: 47, scope: !2363)
!2574 = !DILocation(line: 752, column: 51, scope: !2363)
!2575 = !DILocation(line: 752, column: 40, scope: !2363)
!2576 = !DILocation(line: 752, column: 38, scope: !2363)
!2577 = !DILocation(line: 752, column: 12, scope: !2363)
!2578 = !DILocation(line: 752, column: 16, scope: !2363)
!2579 = !DILocation(line: 752, column: 5, scope: !2363)
!2580 = !DILocation(line: 752, column: 21, scope: !2363)
!2581 = !DILocation(line: 753, column: 47, scope: !2363)
!2582 = !DILocation(line: 753, column: 51, scope: !2363)
!2583 = !DILocation(line: 753, column: 40, scope: !2363)
!2584 = !DILocation(line: 753, column: 38, scope: !2363)
!2585 = !DILocation(line: 753, column: 12, scope: !2363)
!2586 = !DILocation(line: 753, column: 16, scope: !2363)
!2587 = !DILocation(line: 753, column: 5, scope: !2363)
!2588 = !DILocation(line: 753, column: 21, scope: !2363)
!2589 = !DILocation(line: 754, column: 47, scope: !2363)
!2590 = !DILocation(line: 754, column: 51, scope: !2363)
!2591 = !DILocation(line: 754, column: 40, scope: !2363)
!2592 = !DILocation(line: 754, column: 38, scope: !2363)
!2593 = !DILocation(line: 754, column: 12, scope: !2363)
!2594 = !DILocation(line: 754, column: 16, scope: !2363)
!2595 = !DILocation(line: 754, column: 5, scope: !2363)
!2596 = !DILocation(line: 754, column: 21, scope: !2363)
!2597 = !DILocation(line: 755, column: 47, scope: !2363)
!2598 = !DILocation(line: 755, column: 51, scope: !2363)
!2599 = !DILocation(line: 755, column: 40, scope: !2363)
!2600 = !DILocation(line: 755, column: 38, scope: !2363)
!2601 = !DILocation(line: 755, column: 12, scope: !2363)
!2602 = !DILocation(line: 755, column: 16, scope: !2363)
!2603 = !DILocation(line: 755, column: 5, scope: !2363)
!2604 = !DILocation(line: 755, column: 21, scope: !2363)
!2605 = !DILocation(line: 711, column: 26, scope: !2360)
!2606 = !DILocation(line: 711, column: 3, scope: !2360)
!2607 = distinct !{!2607, !2361, !2608, !200}
!2608 = !DILocation(line: 756, column: 3, scope: !2357)
!2609 = !DILocation(line: 759, column: 1, scope: !2351)
!2610 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyz_pack", scope: !1275, file: !1275, line: 771, type: !1862, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2611 = !DILocalVariable(name: "r", arg: 1, scope: !2610, file: !1275, line: 771, type: !47)
!2612 = !DILocation(line: 0, scope: !2610)
!2613 = !DILocalVariable(name: "a", arg: 2, scope: !2610, file: !1275, line: 771, type: !922)
!2614 = !DILocalVariable(name: "i", scope: !2610, file: !1275, line: 772, type: !55)
!2615 = !DILocation(line: 797, column: 8, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2610, file: !1275, line: 797, column: 3)
!2617 = !DILocation(line: 797, scope: !2616)
!2618 = !DILocation(line: 797, column: 17, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !1275, line: 797, column: 3)
!2620 = !DILocation(line: 797, column: 3, scope: !2616)
!2621 = !DILocation(line: 798, column: 28, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2619, file: !1275, line: 797, column: 31)
!2623 = !DILocation(line: 798, column: 21, scope: !2622)
!2624 = !DILocation(line: 798, column: 19, scope: !2622)
!2625 = !DILocalVariable(name: "t", scope: !2610, file: !1275, line: 773, type: !2626)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !2627)
!2627 = !{!2628}
!2628 = !DISubrange(count: 4)
!2629 = !DILocation(line: 799, column: 28, scope: !2622)
!2630 = !DILocation(line: 799, column: 32, scope: !2622)
!2631 = !DILocation(line: 799, column: 21, scope: !2622)
!2632 = !DILocation(line: 799, column: 19, scope: !2622)
!2633 = !DILocation(line: 801, column: 20, scope: !2622)
!2634 = !DILocation(line: 801, column: 9, scope: !2622)
!2635 = !DILocation(line: 801, column: 5, scope: !2622)
!2636 = !DILocation(line: 801, column: 18, scope: !2622)
!2637 = !DILocation(line: 802, column: 25, scope: !2622)
!2638 = !DILocation(line: 802, column: 20, scope: !2622)
!2639 = !DILocation(line: 802, column: 9, scope: !2622)
!2640 = !DILocation(line: 802, column: 5, scope: !2622)
!2641 = !DILocation(line: 802, column: 18, scope: !2622)
!2642 = !DILocation(line: 803, column: 25, scope: !2622)
!2643 = !DILocation(line: 803, column: 20, scope: !2622)
!2644 = !DILocation(line: 803, column: 9, scope: !2622)
!2645 = !DILocation(line: 803, column: 5, scope: !2622)
!2646 = !DILocation(line: 803, column: 18, scope: !2622)
!2647 = !DILocation(line: 804, column: 9, scope: !2622)
!2648 = !DILocation(line: 804, column: 5, scope: !2622)
!2649 = !DILocation(line: 804, column: 18, scope: !2622)
!2650 = !DILocation(line: 805, column: 25, scope: !2622)
!2651 = !DILocation(line: 805, column: 20, scope: !2622)
!2652 = !DILocation(line: 805, column: 9, scope: !2622)
!2653 = !DILocation(line: 805, column: 5, scope: !2622)
!2654 = !DILocation(line: 805, column: 18, scope: !2622)
!2655 = !DILocation(line: 806, column: 25, scope: !2622)
!2656 = !DILocation(line: 806, column: 20, scope: !2622)
!2657 = !DILocation(line: 806, column: 9, scope: !2622)
!2658 = !DILocation(line: 806, column: 5, scope: !2622)
!2659 = !DILocation(line: 806, column: 18, scope: !2622)
!2660 = !DILocation(line: 797, column: 26, scope: !2619)
!2661 = !DILocation(line: 797, column: 3, scope: !2619)
!2662 = distinct !{!2662, !2620, !2663, !200}
!2663 = !DILocation(line: 807, column: 3, scope: !2616)
!2664 = !DILocation(line: 811, column: 1, scope: !2610)
!2665 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_polyw1_pack", scope: !1275, file: !1275, line: 884, type: !1862, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !101, retainedNodes: !64)
!2666 = !DILocalVariable(name: "r", arg: 1, scope: !2665, file: !1275, line: 884, type: !47)
!2667 = !DILocation(line: 0, scope: !2665)
!2668 = !DILocalVariable(name: "a", arg: 2, scope: !2665, file: !1275, line: 884, type: !922)
!2669 = !DILocalVariable(name: "i", scope: !2665, file: !1275, line: 885, type: !55)
!2670 = !DILocation(line: 898, column: 8, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2665, file: !1275, line: 898, column: 3)
!2672 = !DILocation(line: 898, scope: !2671)
!2673 = !DILocation(line: 898, column: 17, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2671, file: !1275, line: 898, column: 3)
!2675 = !DILocation(line: 898, column: 3, scope: !2671)
!2676 = !DILocation(line: 899, column: 19, scope: !2674)
!2677 = !DILocation(line: 899, column: 12, scope: !2674)
!2678 = !DILocation(line: 899, column: 38, scope: !2674)
!2679 = !DILocation(line: 899, column: 42, scope: !2674)
!2680 = !DILocation(line: 899, column: 31, scope: !2674)
!2681 = !DILocation(line: 899, column: 47, scope: !2674)
!2682 = !DILocation(line: 899, column: 28, scope: !2674)
!2683 = !DILocation(line: 899, column: 5, scope: !2674)
!2684 = !DILocation(line: 899, column: 10, scope: !2674)
!2685 = !DILocation(line: 898, column: 26, scope: !2674)
!2686 = !DILocation(line: 898, column: 3, scope: !2674)
!2687 = distinct !{!2687, !2675, !2688, !200}
!2688 = !DILocation(line: 899, column: 51, scope: !2671)
!2689 = !DILocation(line: 903, column: 1, scope: !2665)
!2690 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_ntt", scope: !74, file: !74, line: 49, type: !2691, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{null, !1587}
!2693 = !DILocalVariable(name: "a", arg: 1, scope: !2690, file: !74, line: 49, type: !1587)
!2694 = !DILocation(line: 0, scope: !2690)
!2695 = !DILocalVariable(name: "k", scope: !2690, file: !74, line: 50, type: !55)
!2696 = !DILocalVariable(name: "len", scope: !2690, file: !74, line: 50, type: !55)
!2697 = !DILocation(line: 54, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2690, file: !74, line: 54, column: 3)
!2699 = !DILocation(line: 54, scope: !2698)
!2700 = !DILocation(line: 53, column: 5, scope: !2690)
!2701 = !DILocation(line: 54, column: 22, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2698, file: !74, line: 54, column: 3)
!2703 = !DILocation(line: 54, column: 3, scope: !2698)
!2704 = !DILocation(line: 55, column: 5, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !74, line: 55, column: 5)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !74, line: 54, column: 38)
!2707 = !DILocation(line: 55, scope: !2705)
!2708 = !DILocalVariable(name: "start", scope: !2690, file: !74, line: 50, type: !55)
!2709 = !DILocation(line: 55, column: 26, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2705, file: !74, line: 55, column: 5)
!2711 = !DILocation(line: 56, column: 20, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2710, file: !74, line: 55, column: 48)
!2713 = !DILocation(line: 56, column: 14, scope: !2712)
!2714 = !DILocalVariable(name: "zeta", scope: !2690, file: !74, line: 51, type: !77)
!2715 = !DILocalVariable(name: "j", scope: !2690, file: !74, line: 50, type: !55)
!2716 = !DILocation(line: 57, column: 11, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2712, file: !74, line: 57, column: 7)
!2718 = !DILocation(line: 57, scope: !2717)
!2719 = !DILocation(line: 57, column: 32, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !74, line: 57, column: 7)
!2721 = !DILocation(line: 57, column: 24, scope: !2720)
!2722 = !DILocation(line: 57, column: 7, scope: !2717)
!2723 = !DILocation(line: 58, column: 31, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2720, file: !74, line: 57, column: 44)
!2725 = !DILocation(line: 58, column: 47, scope: !2724)
!2726 = !DILocation(line: 58, column: 45, scope: !2724)
!2727 = !DILocation(line: 58, column: 13, scope: !2724)
!2728 = !DILocalVariable(name: "t", scope: !2690, file: !74, line: 51, type: !77)
!2729 = !DILocation(line: 59, column: 22, scope: !2724)
!2730 = !DILocation(line: 59, column: 27, scope: !2724)
!2731 = !DILocation(line: 59, column: 9, scope: !2724)
!2732 = !DILocation(line: 59, column: 20, scope: !2724)
!2733 = !DILocation(line: 60, column: 16, scope: !2724)
!2734 = !DILocation(line: 60, column: 21, scope: !2724)
!2735 = !DILocation(line: 60, column: 9, scope: !2724)
!2736 = !DILocation(line: 60, column: 14, scope: !2724)
!2737 = !DILocation(line: 57, column: 39, scope: !2720)
!2738 = !DILocation(line: 57, column: 7, scope: !2720)
!2739 = distinct !{!2739, !2722, !2740, !200}
!2740 = !DILocation(line: 61, column: 7, scope: !2717)
!2741 = !DILocation(line: 55, column: 41, scope: !2710)
!2742 = !DILocation(line: 55, column: 5, scope: !2710)
!2743 = distinct !{!2743, !2704, !2744, !200}
!2744 = !DILocation(line: 62, column: 5, scope: !2705)
!2745 = !DILocation(line: 54, column: 31, scope: !2702)
!2746 = !DILocation(line: 54, column: 3, scope: !2702)
!2747 = distinct !{!2747, !2703, !2748, !200}
!2748 = !DILocation(line: 63, column: 3, scope: !2698)
!2749 = !DILocation(line: 64, column: 1, scope: !2690)
!2750 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_invntt_tomont", scope: !74, file: !74, line: 77, type: !2691, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !64)
!2751 = !DILocalVariable(name: "a", arg: 1, scope: !2750, file: !74, line: 77, type: !1587)
!2752 = !DILocation(line: 0, scope: !2750)
!2753 = !DILocalVariable(name: "f", scope: !2750, file: !74, line: 80, type: !76)
!2754 = !DILocalVariable(name: "k", scope: !2750, file: !74, line: 78, type: !55)
!2755 = !DILocalVariable(name: "len", scope: !2750, file: !74, line: 78, type: !55)
!2756 = !DILocation(line: 83, column: 7, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2750, file: !74, line: 83, column: 3)
!2758 = !DILocation(line: 83, scope: !2757)
!2759 = !DILocation(line: 82, column: 5, scope: !2750)
!2760 = !DILocation(line: 83, column: 20, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2757, file: !74, line: 83, column: 3)
!2762 = !DILocation(line: 83, column: 3, scope: !2757)
!2763 = !DILocation(line: 84, column: 5, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !74, line: 84, column: 5)
!2765 = distinct !DILexicalBlock(scope: !2761, file: !74, line: 83, column: 36)
!2766 = !DILocation(line: 95, column: 3, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2750, file: !74, line: 95, column: 3)
!2768 = !DILocation(line: 84, scope: !2764)
!2769 = !DILocalVariable(name: "start", scope: !2750, file: !74, line: 78, type: !55)
!2770 = !DILocation(line: 84, column: 26, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2764, file: !74, line: 84, column: 5)
!2772 = !DILocation(line: 85, column: 21, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2771, file: !74, line: 84, column: 48)
!2774 = !DILocation(line: 85, column: 15, scope: !2773)
!2775 = !DILocation(line: 85, column: 14, scope: !2773)
!2776 = !DILocalVariable(name: "zeta", scope: !2750, file: !74, line: 79, type: !77)
!2777 = !DILocalVariable(name: "j", scope: !2750, file: !74, line: 78, type: !55)
!2778 = !DILocation(line: 86, column: 11, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2773, file: !74, line: 86, column: 7)
!2780 = !DILocation(line: 86, scope: !2779)
!2781 = !DILocation(line: 86, column: 32, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2779, file: !74, line: 86, column: 7)
!2783 = !DILocation(line: 86, column: 24, scope: !2782)
!2784 = !DILocation(line: 86, column: 7, scope: !2779)
!2785 = !DILocation(line: 87, column: 13, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2782, file: !74, line: 86, column: 44)
!2787 = !DILocalVariable(name: "t", scope: !2750, file: !74, line: 79, type: !77)
!2788 = !DILocation(line: 88, column: 20, scope: !2786)
!2789 = !DILocation(line: 88, column: 18, scope: !2786)
!2790 = !DILocation(line: 88, column: 9, scope: !2786)
!2791 = !DILocation(line: 88, column: 14, scope: !2786)
!2792 = !DILocation(line: 89, column: 26, scope: !2786)
!2793 = !DILocation(line: 89, column: 24, scope: !2786)
!2794 = !DILocation(line: 89, column: 9, scope: !2786)
!2795 = !DILocation(line: 89, column: 20, scope: !2786)
!2796 = !DILocation(line: 90, column: 40, scope: !2786)
!2797 = !DILocation(line: 90, column: 56, scope: !2786)
!2798 = !DILocation(line: 90, column: 54, scope: !2786)
!2799 = !DILocation(line: 90, column: 22, scope: !2786)
!2800 = !DILocation(line: 90, column: 9, scope: !2786)
!2801 = !DILocation(line: 90, column: 20, scope: !2786)
!2802 = !DILocation(line: 86, column: 39, scope: !2782)
!2803 = !DILocation(line: 86, column: 7, scope: !2782)
!2804 = distinct !{!2804, !2784, !2805, !200}
!2805 = !DILocation(line: 91, column: 7, scope: !2779)
!2806 = !DILocation(line: 84, column: 41, scope: !2771)
!2807 = !DILocation(line: 84, column: 5, scope: !2771)
!2808 = distinct !{!2808, !2763, !2809, !200}
!2809 = !DILocation(line: 92, column: 5, scope: !2764)
!2810 = !DILocation(line: 83, column: 29, scope: !2761)
!2811 = !DILocation(line: 83, column: 3, scope: !2761)
!2812 = distinct !{!2812, !2762, !2813, !200}
!2813 = !DILocation(line: 93, column: 3, scope: !2757)
!2814 = !DILocation(line: 95, scope: !2767)
!2815 = !DILocation(line: 95, column: 16, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2767, file: !74, line: 95, column: 3)
!2817 = !DILocation(line: 96, column: 43, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2816, file: !74, line: 95, column: 26)
!2819 = !DILocation(line: 96, column: 41, scope: !2818)
!2820 = !DILocation(line: 96, column: 12, scope: !2818)
!2821 = !DILocation(line: 96, column: 5, scope: !2818)
!2822 = !DILocation(line: 96, column: 10, scope: !2818)
!2823 = !DILocation(line: 95, column: 21, scope: !2816)
!2824 = !DILocation(line: 95, column: 3, scope: !2816)
!2825 = distinct !{!2825, !2766, !2826, !200}
!2826 = !DILocation(line: 97, column: 3, scope: !2767)
!2827 = !DILocation(line: 98, column: 1, scope: !2750)
!2828 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_montgomery_reduce", scope: !2829, file: !2829, line: 15, type: !2830, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2829 = !DIFile(filename: "../../../ref/reduce.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!77, !70}
!2832 = !DILocalVariable(name: "a", arg: 1, scope: !2828, file: !2829, line: 15, type: !70)
!2833 = !DILocation(line: 0, scope: !2828)
!2834 = !DILocation(line: 18, column: 7, scope: !2828)
!2835 = !DILocalVariable(name: "t", scope: !2828, file: !2829, line: 16, type: !77)
!2836 = !DILocation(line: 19, column: 12, scope: !2828)
!2837 = !DILocation(line: 19, column: 22, scope: !2828)
!2838 = !DILocation(line: 19, column: 10, scope: !2828)
!2839 = !DILocation(line: 19, column: 26, scope: !2828)
!2840 = !DILocation(line: 19, column: 7, scope: !2828)
!2841 = !DILocation(line: 20, column: 3, scope: !2828)
!2842 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_reduce32", scope: !2829, file: !2829, line: 33, type: !2843, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!77, !77}
!2845 = !DILocalVariable(name: "a", arg: 1, scope: !2842, file: !2829, line: 33, type: !77)
!2846 = !DILocation(line: 0, scope: !2842)
!2847 = !DILocation(line: 36, column: 10, scope: !2842)
!2848 = !DILocation(line: 36, column: 23, scope: !2842)
!2849 = !DILocalVariable(name: "t", scope: !2842, file: !2829, line: 34, type: !77)
!2850 = !DILocation(line: 37, column: 12, scope: !2842)
!2851 = !DILocation(line: 37, column: 9, scope: !2842)
!2852 = !DILocation(line: 38, column: 3, scope: !2842)
!2853 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_caddq", scope: !2829, file: !2829, line: 50, type: !2843, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2854 = !DILocalVariable(name: "a", arg: 1, scope: !2853, file: !2829, line: 50, type: !77)
!2855 = !DILocation(line: 0, scope: !2853)
!2856 = !DILocation(line: 51, column: 18, scope: !2853)
!2857 = !DILocation(line: 51, column: 5, scope: !2853)
!2858 = !DILocation(line: 52, column: 3, scope: !2853)
!2859 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_freeze", scope: !2829, file: !2829, line: 65, type: !2843, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !64)
!2860 = !DILocalVariable(name: "a", arg: 1, scope: !2859, file: !2829, line: 65, type: !77)
!2861 = !DILocation(line: 0, scope: !2859)
!2862 = !DILocation(line: 66, column: 7, scope: !2859)
!2863 = !DILocation(line: 67, column: 7, scope: !2859)
!2864 = !DILocation(line: 68, column: 3, scope: !2859)
!2865 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_init", scope: !89, file: !89, line: 497, type: !2866, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!2869 = !DILocalVariable(name: "state", arg: 1, scope: !2865, file: !89, line: 497, type: !2868)
!2870 = !DILocation(line: 0, scope: !2865)
!2871 = !DILocation(line: 498, column: 3, scope: !2865)
!2872 = !DILocation(line: 499, column: 3, scope: !2865)
!2873 = !DILocation(line: 499, column: 29, scope: !2865)
!2874 = !DILocation(line: 500, column: 1, scope: !2865)
!2875 = distinct !DISubprogram(name: "keccak_init", scope: !89, file: !89, line: 340, type: !2876, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 32)
!2879 = !DILocalVariable(name: "s", arg: 1, scope: !2875, file: !89, line: 340, type: !2878)
!2880 = !DILocation(line: 0, scope: !2875)
!2881 = !DILocalVariable(name: "i", scope: !2875, file: !89, line: 341, type: !55)
!2882 = !DILocation(line: 342, column: 8, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2875, file: !89, line: 342, column: 3)
!2884 = !DILocation(line: 342, scope: !2883)
!2885 = !DILocation(line: 342, column: 17, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2883, file: !89, line: 342, column: 3)
!2887 = !DILocation(line: 342, column: 3, scope: !2883)
!2888 = !DILocation(line: 343, column: 5, scope: !2886)
!2889 = !DILocation(line: 343, column: 10, scope: !2886)
!2890 = !DILocation(line: 342, column: 24, scope: !2886)
!2891 = !DILocation(line: 342, column: 3, scope: !2886)
!2892 = distinct !{!2892, !2887, !2893, !200}
!2893 = !DILocation(line: 343, column: 12, scope: !2883)
!2894 = !DILocation(line: 344, column: 1, scope: !2875)
!2895 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_absorb", scope: !89, file: !89, line: 512, type: !2896, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{null, !2868, !324, !53}
!2898 = !DILocalVariable(name: "state", arg: 1, scope: !2895, file: !89, line: 512, type: !2868)
!2899 = !DILocation(line: 0, scope: !2895)
!2900 = !DILocalVariable(name: "in", arg: 2, scope: !2895, file: !89, line: 512, type: !324)
!2901 = !DILocalVariable(name: "inlen", arg: 3, scope: !2895, file: !89, line: 512, type: !53)
!2902 = !DILocation(line: 514, column: 43, scope: !2895)
!2903 = !DILocation(line: 514, column: 29, scope: !2895)
!2904 = !DILocation(line: 514, column: 7, scope: !2895)
!2905 = !DILocalVariable(name: "pos", scope: !2895, file: !89, line: 513, type: !55)
!2906 = !DILocation(line: 516, column: 31, scope: !2895)
!2907 = !DILocation(line: 516, column: 3, scope: !2895)
!2908 = !DILocation(line: 516, column: 29, scope: !2895)
!2909 = !DILocation(line: 517, column: 1, scope: !2895)
!2910 = distinct !DISubprogram(name: "keccak_absorb", scope: !89, file: !89, line: 359, type: !2911, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!55, !2878, !55, !55, !324, !53}
!2913 = !DILocalVariable(name: "s", arg: 1, scope: !2910, file: !89, line: 359, type: !2878)
!2914 = !DILocation(line: 0, scope: !2910)
!2915 = !DILocalVariable(name: "pos", arg: 2, scope: !2910, file: !89, line: 359, type: !55)
!2916 = !DILocalVariable(name: "r", arg: 3, scope: !2910, file: !89, line: 360, type: !55)
!2917 = !DILocalVariable(name: "in", arg: 4, scope: !2910, file: !89, line: 360, type: !324)
!2918 = !DILocalVariable(name: "inlen", arg: 5, scope: !2910, file: !89, line: 361, type: !53)
!2919 = !DILocation(line: 364, column: 3, scope: !2910)
!2920 = !DILocation(line: 364, column: 14, scope: !2910)
!2921 = !DILocation(line: 364, column: 22, scope: !2910)
!2922 = !DILocation(line: 365, column: 5, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !89, line: 365, column: 5)
!2924 = distinct !DILexicalBlock(scope: !2910, file: !89, line: 364, column: 28)
!2925 = !DILocation(line: 372, column: 3, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2910, file: !89, line: 372, column: 3)
!2927 = !DILocation(line: 365, scope: !2923)
!2928 = !DILocalVariable(name: "i", scope: !2910, file: !89, line: 362, type: !55)
!2929 = !DILocation(line: 365, column: 21, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2923, file: !89, line: 365, column: 5)
!2931 = !DILocation(line: 366, column: 29, scope: !2930)
!2932 = !DILocation(line: 366, column: 19, scope: !2930)
!2933 = !DILocation(line: 366, column: 40, scope: !2930)
!2934 = !DILocation(line: 366, column: 35, scope: !2930)
!2935 = !DILocation(line: 366, column: 11, scope: !2930)
!2936 = !DILocation(line: 366, column: 7, scope: !2930)
!2937 = !DILocation(line: 366, column: 16, scope: !2930)
!2938 = !DILocation(line: 366, column: 32, scope: !2930)
!2939 = !DILocation(line: 365, column: 27, scope: !2930)
!2940 = !DILocation(line: 365, column: 5, scope: !2930)
!2941 = distinct !{!2941, !2922, !2942, !200}
!2942 = !DILocation(line: 366, column: 48, scope: !2923)
!2943 = !DILocation(line: 367, column: 16, scope: !2924)
!2944 = !DILocation(line: 367, column: 11, scope: !2924)
!2945 = !DILocation(line: 368, column: 5, scope: !2924)
!2946 = distinct !{!2946, !2919, !2947, !200}
!2947 = !DILocation(line: 370, column: 3, scope: !2910)
!2948 = !DILocation(line: 372, scope: !2926)
!2949 = !DILocation(line: 372, column: 25, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2926, file: !89, line: 372, column: 3)
!2951 = !DILocation(line: 372, column: 19, scope: !2950)
!2952 = !DILocation(line: 373, column: 27, scope: !2950)
!2953 = !DILocation(line: 373, column: 17, scope: !2950)
!2954 = !DILocation(line: 373, column: 38, scope: !2950)
!2955 = !DILocation(line: 373, column: 33, scope: !2950)
!2956 = !DILocation(line: 373, column: 9, scope: !2950)
!2957 = !DILocation(line: 373, column: 5, scope: !2950)
!2958 = !DILocation(line: 373, column: 14, scope: !2950)
!2959 = !DILocation(line: 373, column: 30, scope: !2950)
!2960 = !DILocation(line: 372, column: 35, scope: !2950)
!2961 = !DILocation(line: 372, column: 3, scope: !2950)
!2962 = distinct !{!2962, !2925, !2963, !200}
!2963 = !DILocation(line: 373, column: 46, scope: !2926)
!2964 = !DILocation(line: 375, column: 3, scope: !2910)
!2965 = distinct !DISubprogram(name: "KeccakF1600_StatePermute", scope: !89, file: !89, line: 70, type: !2876, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!2966 = !DILocalVariable(name: "state", arg: 1, scope: !2965, file: !89, line: 70, type: !2878)
!2967 = !DILocation(line: 0, scope: !2965)
!2968 = !DILocation(line: 87, column: 9, scope: !2965)
!2969 = !DILocalVariable(name: "Aba", scope: !2965, file: !89, line: 73, type: !85)
!2970 = !DILocation(line: 88, column: 9, scope: !2965)
!2971 = !DILocalVariable(name: "Abe", scope: !2965, file: !89, line: 73, type: !85)
!2972 = !DILocation(line: 89, column: 9, scope: !2965)
!2973 = !DILocalVariable(name: "Abi", scope: !2965, file: !89, line: 73, type: !85)
!2974 = !DILocation(line: 90, column: 9, scope: !2965)
!2975 = !DILocalVariable(name: "Abo", scope: !2965, file: !89, line: 73, type: !85)
!2976 = !DILocation(line: 91, column: 9, scope: !2965)
!2977 = !DILocalVariable(name: "Abu", scope: !2965, file: !89, line: 73, type: !85)
!2978 = !DILocation(line: 92, column: 9, scope: !2965)
!2979 = !DILocalVariable(name: "Aga", scope: !2965, file: !89, line: 74, type: !85)
!2980 = !DILocation(line: 93, column: 9, scope: !2965)
!2981 = !DILocalVariable(name: "Age", scope: !2965, file: !89, line: 74, type: !85)
!2982 = !DILocation(line: 94, column: 9, scope: !2965)
!2983 = !DILocalVariable(name: "Agi", scope: !2965, file: !89, line: 74, type: !85)
!2984 = !DILocation(line: 95, column: 9, scope: !2965)
!2985 = !DILocalVariable(name: "Ago", scope: !2965, file: !89, line: 74, type: !85)
!2986 = !DILocation(line: 96, column: 9, scope: !2965)
!2987 = !DILocalVariable(name: "Agu", scope: !2965, file: !89, line: 74, type: !85)
!2988 = !DILocation(line: 97, column: 9, scope: !2965)
!2989 = !DILocalVariable(name: "Aka", scope: !2965, file: !89, line: 75, type: !85)
!2990 = !DILocation(line: 98, column: 9, scope: !2965)
!2991 = !DILocalVariable(name: "Ake", scope: !2965, file: !89, line: 75, type: !85)
!2992 = !DILocation(line: 99, column: 9, scope: !2965)
!2993 = !DILocalVariable(name: "Aki", scope: !2965, file: !89, line: 75, type: !85)
!2994 = !DILocation(line: 100, column: 9, scope: !2965)
!2995 = !DILocalVariable(name: "Ako", scope: !2965, file: !89, line: 75, type: !85)
!2996 = !DILocation(line: 101, column: 9, scope: !2965)
!2997 = !DILocalVariable(name: "Aku", scope: !2965, file: !89, line: 75, type: !85)
!2998 = !DILocation(line: 102, column: 9, scope: !2965)
!2999 = !DILocalVariable(name: "Ama", scope: !2965, file: !89, line: 76, type: !85)
!3000 = !DILocation(line: 103, column: 9, scope: !2965)
!3001 = !DILocalVariable(name: "Ame", scope: !2965, file: !89, line: 76, type: !85)
!3002 = !DILocation(line: 104, column: 9, scope: !2965)
!3003 = !DILocalVariable(name: "Ami", scope: !2965, file: !89, line: 76, type: !85)
!3004 = !DILocation(line: 105, column: 9, scope: !2965)
!3005 = !DILocalVariable(name: "Amo", scope: !2965, file: !89, line: 76, type: !85)
!3006 = !DILocation(line: 106, column: 9, scope: !2965)
!3007 = !DILocalVariable(name: "Amu", scope: !2965, file: !89, line: 76, type: !85)
!3008 = !DILocation(line: 107, column: 9, scope: !2965)
!3009 = !DILocalVariable(name: "Asa", scope: !2965, file: !89, line: 77, type: !85)
!3010 = !DILocation(line: 108, column: 9, scope: !2965)
!3011 = !DILocalVariable(name: "Ase", scope: !2965, file: !89, line: 77, type: !85)
!3012 = !DILocation(line: 109, column: 9, scope: !2965)
!3013 = !DILocalVariable(name: "Asi", scope: !2965, file: !89, line: 77, type: !85)
!3014 = !DILocation(line: 110, column: 9, scope: !2965)
!3015 = !DILocalVariable(name: "Aso", scope: !2965, file: !89, line: 77, type: !85)
!3016 = !DILocation(line: 111, column: 9, scope: !2965)
!3017 = !DILocalVariable(name: "Asu", scope: !2965, file: !89, line: 77, type: !85)
!3018 = !DILocalVariable(name: "round", scope: !2965, file: !89, line: 71, type: !65)
!3019 = !DILocation(line: 113, column: 8, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2965, file: !89, line: 113, column: 3)
!3021 = !DILocation(line: 113, scope: !3020)
!3022 = !DILocation(line: 113, column: 25, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3020, file: !89, line: 113, column: 3)
!3024 = !DILocation(line: 113, column: 3, scope: !3020)
!3025 = !DILocalVariable(name: "BCa", scope: !2965, file: !89, line: 78, type: !85)
!3026 = !DILocalVariable(name: "BCe", scope: !2965, file: !89, line: 78, type: !85)
!3027 = !DILocalVariable(name: "BCi", scope: !2965, file: !89, line: 78, type: !85)
!3028 = !DILocalVariable(name: "BCo", scope: !2965, file: !89, line: 78, type: !85)
!3029 = !DILocalVariable(name: "BCu", scope: !2965, file: !89, line: 78, type: !85)
!3030 = !DILocalVariable(name: "Da", scope: !2965, file: !89, line: 79, type: !85)
!3031 = !DILocalVariable(name: "De", scope: !2965, file: !89, line: 79, type: !85)
!3032 = !DILocalVariable(name: "Di", scope: !2965, file: !89, line: 79, type: !85)
!3033 = !DILocalVariable(name: "Do", scope: !2965, file: !89, line: 79, type: !85)
!3034 = !DILocalVariable(name: "Du", scope: !2965, file: !89, line: 79, type: !85)
!3035 = !DILocalVariable(name: "Eba", scope: !2965, file: !89, line: 80, type: !85)
!3036 = !DILocalVariable(name: "Ebe", scope: !2965, file: !89, line: 80, type: !85)
!3037 = !DILocalVariable(name: "Ebi", scope: !2965, file: !89, line: 80, type: !85)
!3038 = !DILocalVariable(name: "Ebo", scope: !2965, file: !89, line: 80, type: !85)
!3039 = !DILocalVariable(name: "Ebu", scope: !2965, file: !89, line: 80, type: !85)
!3040 = !DILocalVariable(name: "Ega", scope: !2965, file: !89, line: 81, type: !85)
!3041 = !DILocalVariable(name: "Ege", scope: !2965, file: !89, line: 81, type: !85)
!3042 = !DILocalVariable(name: "Egi", scope: !2965, file: !89, line: 81, type: !85)
!3043 = !DILocalVariable(name: "Ego", scope: !2965, file: !89, line: 81, type: !85)
!3044 = !DILocalVariable(name: "Egu", scope: !2965, file: !89, line: 81, type: !85)
!3045 = !DILocalVariable(name: "Eka", scope: !2965, file: !89, line: 82, type: !85)
!3046 = !DILocalVariable(name: "Eke", scope: !2965, file: !89, line: 82, type: !85)
!3047 = !DILocalVariable(name: "Eki", scope: !2965, file: !89, line: 82, type: !85)
!3048 = !DILocalVariable(name: "Eko", scope: !2965, file: !89, line: 82, type: !85)
!3049 = !DILocalVariable(name: "Eku", scope: !2965, file: !89, line: 82, type: !85)
!3050 = !DILocalVariable(name: "Ema", scope: !2965, file: !89, line: 83, type: !85)
!3051 = !DILocalVariable(name: "Eme", scope: !2965, file: !89, line: 83, type: !85)
!3052 = !DILocalVariable(name: "Emi", scope: !2965, file: !89, line: 83, type: !85)
!3053 = !DILocalVariable(name: "Emo", scope: !2965, file: !89, line: 83, type: !85)
!3054 = !DILocalVariable(name: "Emu", scope: !2965, file: !89, line: 83, type: !85)
!3055 = !DILocalVariable(name: "Esa", scope: !2965, file: !89, line: 84, type: !85)
!3056 = !DILocalVariable(name: "Ese", scope: !2965, file: !89, line: 84, type: !85)
!3057 = !DILocalVariable(name: "Esi", scope: !2965, file: !89, line: 84, type: !85)
!3058 = !DILocalVariable(name: "Eso", scope: !2965, file: !89, line: 84, type: !85)
!3059 = !DILocalVariable(name: "Esu", scope: !2965, file: !89, line: 84, type: !85)
!3060 = !DILocation(line: 117, column: 15, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3023, file: !89, line: 113, column: 48)
!3062 = !DILocation(line: 117, column: 21, scope: !3061)
!3063 = !DILocation(line: 117, column: 27, scope: !3061)
!3064 = !DILocation(line: 117, column: 33, scope: !3061)
!3065 = !DILocation(line: 119, column: 15, scope: !3061)
!3066 = !DILocation(line: 119, column: 21, scope: !3061)
!3067 = !DILocation(line: 119, column: 27, scope: !3061)
!3068 = !DILocation(line: 119, column: 33, scope: !3061)
!3069 = !DILocation(line: 125, column: 16, scope: !3061)
!3070 = !DILocation(line: 125, column: 14, scope: !3061)
!3071 = !DILocation(line: 195, column: 9, scope: !3061)
!3072 = !DILocation(line: 196, column: 11, scope: !3061)
!3073 = !DILocation(line: 116, column: 15, scope: !3061)
!3074 = !DILocation(line: 116, column: 21, scope: !3061)
!3075 = !DILocation(line: 116, column: 27, scope: !3061)
!3076 = !DILocation(line: 116, column: 33, scope: !3061)
!3077 = !DILocation(line: 122, column: 16, scope: !3061)
!3078 = !DILocation(line: 122, column: 14, scope: !3061)
!3079 = !DILocation(line: 199, column: 9, scope: !3061)
!3080 = !DILocation(line: 200, column: 11, scope: !3061)
!3081 = !DILocation(line: 118, column: 15, scope: !3061)
!3082 = !DILocation(line: 118, column: 21, scope: !3061)
!3083 = !DILocation(line: 118, column: 27, scope: !3061)
!3084 = !DILocation(line: 118, column: 33, scope: !3061)
!3085 = !DILocation(line: 115, column: 15, scope: !3061)
!3086 = !DILocation(line: 115, column: 21, scope: !3061)
!3087 = !DILocation(line: 115, column: 27, scope: !3061)
!3088 = !DILocation(line: 115, column: 33, scope: !3061)
!3089 = !DILocation(line: 126, column: 16, scope: !3061)
!3090 = !DILocation(line: 126, column: 14, scope: !3061)
!3091 = !DILocation(line: 197, column: 9, scope: !3061)
!3092 = !DILocation(line: 198, column: 11, scope: !3061)
!3093 = !DILocation(line: 204, column: 19, scope: !3061)
!3094 = !DILocation(line: 204, column: 25, scope: !3061)
!3095 = !DILocation(line: 204, column: 15, scope: !3061)
!3096 = !DILocation(line: 124, column: 16, scope: !3061)
!3097 = !DILocation(line: 124, column: 14, scope: !3061)
!3098 = !DILocation(line: 132, column: 9, scope: !3061)
!3099 = !DILocation(line: 133, column: 11, scope: !3061)
!3100 = !DILocation(line: 123, column: 16, scope: !3061)
!3101 = !DILocation(line: 123, column: 14, scope: !3061)
!3102 = !DILocation(line: 130, column: 9, scope: !3061)
!3103 = !DILocation(line: 131, column: 11, scope: !3061)
!3104 = !DILocation(line: 138, column: 19, scope: !3061)
!3105 = !DILocation(line: 138, column: 25, scope: !3061)
!3106 = !DILocation(line: 139, column: 22, scope: !3061)
!3107 = !DILocation(line: 139, column: 9, scope: !3061)
!3108 = !DILocation(line: 128, column: 9, scope: !3061)
!3109 = !DILocation(line: 145, column: 9, scope: !3061)
!3110 = !DILocation(line: 146, column: 11, scope: !3061)
!3111 = !DILocation(line: 149, column: 9, scope: !3061)
!3112 = !DILocation(line: 150, column: 11, scope: !3061)
!3113 = !DILocation(line: 147, column: 9, scope: !3061)
!3114 = !DILocation(line: 148, column: 11, scope: !3061)
!3115 = !DILocation(line: 155, column: 19, scope: !3061)
!3116 = !DILocation(line: 155, column: 25, scope: !3061)
!3117 = !DILocation(line: 155, column: 15, scope: !3061)
!3118 = !DILocation(line: 210, column: 15, scope: !3061)
!3119 = !DILocation(line: 161, column: 9, scope: !3061)
!3120 = !DILocation(line: 162, column: 11, scope: !3061)
!3121 = !DILocation(line: 165, column: 9, scope: !3061)
!3122 = !DILocation(line: 166, column: 11, scope: !3061)
!3123 = !DILocation(line: 163, column: 9, scope: !3061)
!3124 = !DILocation(line: 164, column: 11, scope: !3061)
!3125 = !DILocation(line: 171, column: 19, scope: !3061)
!3126 = !DILocation(line: 171, column: 25, scope: !3061)
!3127 = !DILocation(line: 171, column: 15, scope: !3061)
!3128 = !DILocation(line: 210, column: 21, scope: !3061)
!3129 = !DILocation(line: 177, column: 9, scope: !3061)
!3130 = !DILocation(line: 178, column: 11, scope: !3061)
!3131 = !DILocation(line: 181, column: 9, scope: !3061)
!3132 = !DILocation(line: 182, column: 11, scope: !3061)
!3133 = !DILocation(line: 179, column: 9, scope: !3061)
!3134 = !DILocation(line: 180, column: 11, scope: !3061)
!3135 = !DILocation(line: 187, column: 19, scope: !3061)
!3136 = !DILocation(line: 187, column: 25, scope: !3061)
!3137 = !DILocation(line: 187, column: 15, scope: !3061)
!3138 = !DILocation(line: 210, column: 27, scope: !3061)
!3139 = !DILocation(line: 193, column: 9, scope: !3061)
!3140 = !DILocation(line: 194, column: 11, scope: !3061)
!3141 = !DILocation(line: 203, column: 19, scope: !3061)
!3142 = !DILocation(line: 203, column: 25, scope: !3061)
!3143 = !DILocation(line: 203, column: 15, scope: !3061)
!3144 = !DILocation(line: 210, column: 33, scope: !3061)
!3145 = !DILocation(line: 136, column: 9, scope: !3061)
!3146 = !DILocation(line: 137, column: 11, scope: !3061)
!3147 = !DILocation(line: 134, column: 9, scope: !3061)
!3148 = !DILocation(line: 135, column: 11, scope: !3061)
!3149 = !DILocation(line: 141, column: 19, scope: !3061)
!3150 = !DILocation(line: 141, column: 25, scope: !3061)
!3151 = !DILocation(line: 141, column: 15, scope: !3061)
!3152 = !DILocation(line: 153, column: 9, scope: !3061)
!3153 = !DILocation(line: 154, column: 11, scope: !3061)
!3154 = !DILocation(line: 151, column: 9, scope: !3061)
!3155 = !DILocation(line: 152, column: 11, scope: !3061)
!3156 = !DILocation(line: 157, column: 19, scope: !3061)
!3157 = !DILocation(line: 157, column: 25, scope: !3061)
!3158 = !DILocation(line: 157, column: 15, scope: !3061)
!3159 = !DILocation(line: 212, column: 15, scope: !3061)
!3160 = !DILocation(line: 169, column: 9, scope: !3061)
!3161 = !DILocation(line: 170, column: 11, scope: !3061)
!3162 = !DILocation(line: 167, column: 9, scope: !3061)
!3163 = !DILocation(line: 168, column: 11, scope: !3061)
!3164 = !DILocation(line: 173, column: 19, scope: !3061)
!3165 = !DILocation(line: 173, column: 25, scope: !3061)
!3166 = !DILocation(line: 173, column: 15, scope: !3061)
!3167 = !DILocation(line: 212, column: 21, scope: !3061)
!3168 = !DILocation(line: 185, column: 9, scope: !3061)
!3169 = !DILocation(line: 186, column: 11, scope: !3061)
!3170 = !DILocation(line: 183, column: 9, scope: !3061)
!3171 = !DILocation(line: 184, column: 11, scope: !3061)
!3172 = !DILocation(line: 189, column: 19, scope: !3061)
!3173 = !DILocation(line: 189, column: 25, scope: !3061)
!3174 = !DILocation(line: 189, column: 15, scope: !3061)
!3175 = !DILocation(line: 212, column: 27, scope: !3061)
!3176 = !DILocation(line: 201, column: 9, scope: !3061)
!3177 = !DILocation(line: 202, column: 11, scope: !3061)
!3178 = !DILocation(line: 205, column: 19, scope: !3061)
!3179 = !DILocation(line: 205, column: 25, scope: !3061)
!3180 = !DILocation(line: 205, column: 15, scope: !3061)
!3181 = !DILocation(line: 212, column: 33, scope: !3061)
!3182 = !DILocation(line: 218, column: 16, scope: !3061)
!3183 = !DILocation(line: 218, column: 14, scope: !3061)
!3184 = !DILocation(line: 296, column: 9, scope: !3061)
!3185 = !DILocation(line: 297, column: 11, scope: !3061)
!3186 = !DILocation(line: 158, column: 19, scope: !3061)
!3187 = !DILocation(line: 158, column: 25, scope: !3061)
!3188 = !DILocation(line: 158, column: 15, scope: !3061)
!3189 = !DILocation(line: 143, column: 19, scope: !3061)
!3190 = !DILocation(line: 143, column: 25, scope: !3061)
!3191 = !DILocation(line: 143, column: 15, scope: !3061)
!3192 = !DILocation(line: 159, column: 19, scope: !3061)
!3193 = !DILocation(line: 159, column: 25, scope: !3061)
!3194 = !DILocation(line: 159, column: 15, scope: !3061)
!3195 = !DILocation(line: 214, column: 15, scope: !3061)
!3196 = !DILocation(line: 175, column: 19, scope: !3061)
!3197 = !DILocation(line: 175, column: 25, scope: !3061)
!3198 = !DILocation(line: 175, column: 15, scope: !3061)
!3199 = !DILocation(line: 214, column: 21, scope: !3061)
!3200 = !DILocation(line: 191, column: 19, scope: !3061)
!3201 = !DILocation(line: 191, column: 25, scope: !3061)
!3202 = !DILocation(line: 191, column: 15, scope: !3061)
!3203 = !DILocation(line: 214, column: 27, scope: !3061)
!3204 = !DILocation(line: 207, column: 19, scope: !3061)
!3205 = !DILocation(line: 207, column: 25, scope: !3061)
!3206 = !DILocation(line: 207, column: 15, scope: !3061)
!3207 = !DILocation(line: 214, column: 33, scope: !3061)
!3208 = !DILocation(line: 220, column: 16, scope: !3061)
!3209 = !DILocation(line: 220, column: 14, scope: !3061)
!3210 = !DILocation(line: 290, column: 9, scope: !3061)
!3211 = !DILocation(line: 291, column: 11, scope: !3061)
!3212 = !DILocation(line: 140, column: 19, scope: !3061)
!3213 = !DILocation(line: 140, column: 25, scope: !3061)
!3214 = !DILocation(line: 140, column: 15, scope: !3061)
!3215 = !DILocation(line: 156, column: 19, scope: !3061)
!3216 = !DILocation(line: 156, column: 25, scope: !3061)
!3217 = !DILocation(line: 156, column: 15, scope: !3061)
!3218 = !DILocation(line: 211, column: 15, scope: !3061)
!3219 = !DILocation(line: 172, column: 19, scope: !3061)
!3220 = !DILocation(line: 172, column: 25, scope: !3061)
!3221 = !DILocation(line: 172, column: 15, scope: !3061)
!3222 = !DILocation(line: 211, column: 21, scope: !3061)
!3223 = !DILocation(line: 188, column: 19, scope: !3061)
!3224 = !DILocation(line: 188, column: 25, scope: !3061)
!3225 = !DILocation(line: 188, column: 15, scope: !3061)
!3226 = !DILocation(line: 211, column: 27, scope: !3061)
!3227 = !DILocation(line: 211, column: 33, scope: !3061)
!3228 = !DILocation(line: 142, column: 19, scope: !3061)
!3229 = !DILocation(line: 142, column: 25, scope: !3061)
!3230 = !DILocation(line: 142, column: 15, scope: !3061)
!3231 = !DILocation(line: 213, column: 15, scope: !3061)
!3232 = !DILocation(line: 174, column: 19, scope: !3061)
!3233 = !DILocation(line: 174, column: 25, scope: !3061)
!3234 = !DILocation(line: 174, column: 15, scope: !3061)
!3235 = !DILocation(line: 213, column: 21, scope: !3061)
!3236 = !DILocation(line: 190, column: 19, scope: !3061)
!3237 = !DILocation(line: 190, column: 25, scope: !3061)
!3238 = !DILocation(line: 190, column: 15, scope: !3061)
!3239 = !DILocation(line: 213, column: 27, scope: !3061)
!3240 = !DILocation(line: 206, column: 19, scope: !3061)
!3241 = !DILocation(line: 206, column: 25, scope: !3061)
!3242 = !DILocation(line: 206, column: 15, scope: !3061)
!3243 = !DILocation(line: 213, column: 33, scope: !3061)
!3244 = !DILocation(line: 219, column: 16, scope: !3061)
!3245 = !DILocation(line: 219, column: 14, scope: !3061)
!3246 = !DILocation(line: 288, column: 9, scope: !3061)
!3247 = !DILocation(line: 289, column: 11, scope: !3061)
!3248 = !DILocation(line: 302, column: 19, scope: !3061)
!3249 = !DILocation(line: 302, column: 25, scope: !3061)
!3250 = !DILocation(line: 302, column: 15, scope: !3061)
!3251 = !DILocation(line: 217, column: 16, scope: !3061)
!3252 = !DILocation(line: 217, column: 14, scope: !3061)
!3253 = !DILocation(line: 294, column: 9, scope: !3061)
!3254 = !DILocation(line: 295, column: 11, scope: !3061)
!3255 = !DILocation(line: 301, column: 19, scope: !3061)
!3256 = !DILocation(line: 301, column: 25, scope: !3061)
!3257 = !DILocation(line: 301, column: 15, scope: !3061)
!3258 = !DILocation(line: 221, column: 16, scope: !3061)
!3259 = !DILocation(line: 221, column: 14, scope: !3061)
!3260 = !DILocation(line: 292, column: 9, scope: !3061)
!3261 = !DILocation(line: 293, column: 11, scope: !3061)
!3262 = !DILocation(line: 300, column: 19, scope: !3061)
!3263 = !DILocation(line: 300, column: 25, scope: !3061)
!3264 = !DILocation(line: 300, column: 15, scope: !3061)
!3265 = !DILocation(line: 299, column: 19, scope: !3061)
!3266 = !DILocation(line: 299, column: 25, scope: !3061)
!3267 = !DILocation(line: 299, column: 15, scope: !3061)
!3268 = !DILocation(line: 298, column: 19, scope: !3061)
!3269 = !DILocation(line: 298, column: 25, scope: !3061)
!3270 = !DILocation(line: 298, column: 15, scope: !3061)
!3271 = !DILocation(line: 280, column: 9, scope: !3061)
!3272 = !DILocation(line: 281, column: 11, scope: !3061)
!3273 = !DILocation(line: 274, column: 9, scope: !3061)
!3274 = !DILocation(line: 275, column: 11, scope: !3061)
!3275 = !DILocation(line: 272, column: 9, scope: !3061)
!3276 = !DILocation(line: 273, column: 11, scope: !3061)
!3277 = !DILocation(line: 286, column: 19, scope: !3061)
!3278 = !DILocation(line: 286, column: 25, scope: !3061)
!3279 = !DILocation(line: 286, column: 15, scope: !3061)
!3280 = !DILocation(line: 278, column: 9, scope: !3061)
!3281 = !DILocation(line: 279, column: 11, scope: !3061)
!3282 = !DILocation(line: 285, column: 19, scope: !3061)
!3283 = !DILocation(line: 285, column: 25, scope: !3061)
!3284 = !DILocation(line: 285, column: 15, scope: !3061)
!3285 = !DILocation(line: 276, column: 9, scope: !3061)
!3286 = !DILocation(line: 277, column: 11, scope: !3061)
!3287 = !DILocation(line: 284, column: 19, scope: !3061)
!3288 = !DILocation(line: 284, column: 25, scope: !3061)
!3289 = !DILocation(line: 284, column: 15, scope: !3061)
!3290 = !DILocation(line: 283, column: 19, scope: !3061)
!3291 = !DILocation(line: 283, column: 25, scope: !3061)
!3292 = !DILocation(line: 283, column: 15, scope: !3061)
!3293 = !DILocation(line: 282, column: 19, scope: !3061)
!3294 = !DILocation(line: 282, column: 25, scope: !3061)
!3295 = !DILocation(line: 282, column: 15, scope: !3061)
!3296 = !DILocation(line: 264, column: 9, scope: !3061)
!3297 = !DILocation(line: 265, column: 11, scope: !3061)
!3298 = !DILocation(line: 258, column: 9, scope: !3061)
!3299 = !DILocation(line: 259, column: 11, scope: !3061)
!3300 = !DILocation(line: 256, column: 9, scope: !3061)
!3301 = !DILocation(line: 257, column: 11, scope: !3061)
!3302 = !DILocation(line: 270, column: 19, scope: !3061)
!3303 = !DILocation(line: 270, column: 25, scope: !3061)
!3304 = !DILocation(line: 270, column: 15, scope: !3061)
!3305 = !DILocation(line: 262, column: 9, scope: !3061)
!3306 = !DILocation(line: 263, column: 11, scope: !3061)
!3307 = !DILocation(line: 269, column: 19, scope: !3061)
!3308 = !DILocation(line: 269, column: 25, scope: !3061)
!3309 = !DILocation(line: 269, column: 15, scope: !3061)
!3310 = !DILocation(line: 260, column: 9, scope: !3061)
!3311 = !DILocation(line: 261, column: 11, scope: !3061)
!3312 = !DILocation(line: 268, column: 19, scope: !3061)
!3313 = !DILocation(line: 268, column: 25, scope: !3061)
!3314 = !DILocation(line: 268, column: 15, scope: !3061)
!3315 = !DILocation(line: 267, column: 19, scope: !3061)
!3316 = !DILocation(line: 267, column: 25, scope: !3061)
!3317 = !DILocation(line: 267, column: 15, scope: !3061)
!3318 = !DILocation(line: 266, column: 19, scope: !3061)
!3319 = !DILocation(line: 266, column: 25, scope: !3061)
!3320 = !DILocation(line: 266, column: 15, scope: !3061)
!3321 = !DILocation(line: 248, column: 9, scope: !3061)
!3322 = !DILocation(line: 249, column: 11, scope: !3061)
!3323 = !DILocation(line: 242, column: 9, scope: !3061)
!3324 = !DILocation(line: 243, column: 11, scope: !3061)
!3325 = !DILocation(line: 240, column: 9, scope: !3061)
!3326 = !DILocation(line: 241, column: 11, scope: !3061)
!3327 = !DILocation(line: 254, column: 19, scope: !3061)
!3328 = !DILocation(line: 254, column: 25, scope: !3061)
!3329 = !DILocation(line: 254, column: 15, scope: !3061)
!3330 = !DILocation(line: 246, column: 9, scope: !3061)
!3331 = !DILocation(line: 247, column: 11, scope: !3061)
!3332 = !DILocation(line: 253, column: 19, scope: !3061)
!3333 = !DILocation(line: 253, column: 25, scope: !3061)
!3334 = !DILocation(line: 253, column: 15, scope: !3061)
!3335 = !DILocation(line: 244, column: 9, scope: !3061)
!3336 = !DILocation(line: 245, column: 11, scope: !3061)
!3337 = !DILocation(line: 252, column: 19, scope: !3061)
!3338 = !DILocation(line: 252, column: 25, scope: !3061)
!3339 = !DILocation(line: 252, column: 15, scope: !3061)
!3340 = !DILocation(line: 251, column: 19, scope: !3061)
!3341 = !DILocation(line: 251, column: 25, scope: !3061)
!3342 = !DILocation(line: 251, column: 15, scope: !3061)
!3343 = !DILocation(line: 250, column: 19, scope: !3061)
!3344 = !DILocation(line: 250, column: 25, scope: !3061)
!3345 = !DILocation(line: 250, column: 15, scope: !3061)
!3346 = !DILocation(line: 231, column: 9, scope: !3061)
!3347 = !DILocation(line: 232, column: 11, scope: !3061)
!3348 = !DILocation(line: 225, column: 9, scope: !3061)
!3349 = !DILocation(line: 226, column: 11, scope: !3061)
!3350 = !DILocation(line: 223, column: 9, scope: !3061)
!3351 = !DILocation(line: 238, column: 19, scope: !3061)
!3352 = !DILocation(line: 238, column: 25, scope: !3061)
!3353 = !DILocation(line: 238, column: 15, scope: !3061)
!3354 = !DILocation(line: 229, column: 9, scope: !3061)
!3355 = !DILocation(line: 230, column: 11, scope: !3061)
!3356 = !DILocation(line: 237, column: 19, scope: !3061)
!3357 = !DILocation(line: 237, column: 25, scope: !3061)
!3358 = !DILocation(line: 237, column: 15, scope: !3061)
!3359 = !DILocation(line: 227, column: 9, scope: !3061)
!3360 = !DILocation(line: 228, column: 11, scope: !3061)
!3361 = !DILocation(line: 236, column: 19, scope: !3061)
!3362 = !DILocation(line: 236, column: 25, scope: !3061)
!3363 = !DILocation(line: 236, column: 15, scope: !3061)
!3364 = !DILocation(line: 235, column: 19, scope: !3061)
!3365 = !DILocation(line: 235, column: 25, scope: !3061)
!3366 = !DILocation(line: 235, column: 15, scope: !3061)
!3367 = !DILocation(line: 234, column: 51, scope: !3061)
!3368 = !DILocation(line: 234, column: 22, scope: !3061)
!3369 = !DILocation(line: 233, column: 19, scope: !3061)
!3370 = !DILocation(line: 233, column: 25, scope: !3061)
!3371 = !DILocation(line: 234, column: 9, scope: !3061)
!3372 = !DILocation(line: 113, column: 42, scope: !3023)
!3373 = !DILocation(line: 113, column: 3, scope: !3023)
!3374 = distinct !{!3374, !3024, !3375, !200}
!3375 = !DILocation(line: 303, column: 3, scope: !3020)
!3376 = !DILocation(line: 306, column: 12, scope: !2965)
!3377 = !DILocation(line: 307, column: 3, scope: !2965)
!3378 = !DILocation(line: 307, column: 12, scope: !2965)
!3379 = !DILocation(line: 308, column: 3, scope: !2965)
!3380 = !DILocation(line: 308, column: 12, scope: !2965)
!3381 = !DILocation(line: 309, column: 3, scope: !2965)
!3382 = !DILocation(line: 309, column: 12, scope: !2965)
!3383 = !DILocation(line: 310, column: 3, scope: !2965)
!3384 = !DILocation(line: 310, column: 12, scope: !2965)
!3385 = !DILocation(line: 311, column: 3, scope: !2965)
!3386 = !DILocation(line: 311, column: 12, scope: !2965)
!3387 = !DILocation(line: 312, column: 3, scope: !2965)
!3388 = !DILocation(line: 312, column: 12, scope: !2965)
!3389 = !DILocation(line: 313, column: 3, scope: !2965)
!3390 = !DILocation(line: 313, column: 12, scope: !2965)
!3391 = !DILocation(line: 314, column: 3, scope: !2965)
!3392 = !DILocation(line: 314, column: 12, scope: !2965)
!3393 = !DILocation(line: 315, column: 3, scope: !2965)
!3394 = !DILocation(line: 315, column: 12, scope: !2965)
!3395 = !DILocation(line: 316, column: 3, scope: !2965)
!3396 = !DILocation(line: 316, column: 13, scope: !2965)
!3397 = !DILocation(line: 317, column: 3, scope: !2965)
!3398 = !DILocation(line: 317, column: 13, scope: !2965)
!3399 = !DILocation(line: 318, column: 3, scope: !2965)
!3400 = !DILocation(line: 318, column: 13, scope: !2965)
!3401 = !DILocation(line: 319, column: 3, scope: !2965)
!3402 = !DILocation(line: 319, column: 13, scope: !2965)
!3403 = !DILocation(line: 320, column: 3, scope: !2965)
!3404 = !DILocation(line: 320, column: 13, scope: !2965)
!3405 = !DILocation(line: 321, column: 3, scope: !2965)
!3406 = !DILocation(line: 321, column: 13, scope: !2965)
!3407 = !DILocation(line: 322, column: 3, scope: !2965)
!3408 = !DILocation(line: 322, column: 13, scope: !2965)
!3409 = !DILocation(line: 323, column: 3, scope: !2965)
!3410 = !DILocation(line: 323, column: 13, scope: !2965)
!3411 = !DILocation(line: 324, column: 3, scope: !2965)
!3412 = !DILocation(line: 324, column: 13, scope: !2965)
!3413 = !DILocation(line: 325, column: 3, scope: !2965)
!3414 = !DILocation(line: 325, column: 13, scope: !2965)
!3415 = !DILocation(line: 326, column: 3, scope: !2965)
!3416 = !DILocation(line: 326, column: 13, scope: !2965)
!3417 = !DILocation(line: 327, column: 3, scope: !2965)
!3418 = !DILocation(line: 327, column: 13, scope: !2965)
!3419 = !DILocation(line: 328, column: 3, scope: !2965)
!3420 = !DILocation(line: 328, column: 13, scope: !2965)
!3421 = !DILocation(line: 329, column: 3, scope: !2965)
!3422 = !DILocation(line: 329, column: 13, scope: !2965)
!3423 = !DILocation(line: 330, column: 3, scope: !2965)
!3424 = !DILocation(line: 330, column: 13, scope: !2965)
!3425 = !DILocation(line: 331, column: 1, scope: !2965)
!3426 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_finalize", scope: !89, file: !89, line: 526, type: !2866, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3427 = !DILocalVariable(name: "state", arg: 1, scope: !3426, file: !89, line: 526, type: !2868)
!3428 = !DILocation(line: 0, scope: !3426)
!3429 = !DILocation(line: 527, column: 41, scope: !3426)
!3430 = !DILocation(line: 527, column: 27, scope: !3426)
!3431 = !DILocation(line: 527, column: 3, scope: !3426)
!3432 = !DILocation(line: 529, column: 3, scope: !3426)
!3433 = !DILocation(line: 529, column: 29, scope: !3426)
!3434 = !DILocation(line: 530, column: 1, scope: !3426)
!3435 = distinct !DISubprogram(name: "keccak_finalize", scope: !89, file: !89, line: 388, type: !3436, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !2878, !55, !55, !48}
!3438 = !DILocalVariable(name: "s", arg: 1, scope: !3435, file: !89, line: 388, type: !2878)
!3439 = !DILocation(line: 0, scope: !3435)
!3440 = !DILocalVariable(name: "pos", arg: 2, scope: !3435, file: !89, line: 388, type: !55)
!3441 = !DILocalVariable(name: "r", arg: 3, scope: !3435, file: !89, line: 388, type: !55)
!3442 = !DILocalVariable(name: "p", arg: 4, scope: !3435, file: !89, line: 389, type: !48)
!3443 = !DILocation(line: 390, column: 34, scope: !3435)
!3444 = !DILocation(line: 390, column: 29, scope: !3435)
!3445 = !DILocation(line: 390, column: 9, scope: !3435)
!3446 = !DILocation(line: 390, column: 3, scope: !3435)
!3447 = !DILocation(line: 390, column: 14, scope: !3435)
!3448 = !DILocation(line: 391, column: 7, scope: !3435)
!3449 = !DILocation(line: 391, column: 3, scope: !3435)
!3450 = !DILocation(line: 391, column: 16, scope: !3435)
!3451 = !DILocation(line: 392, column: 1, scope: !3435)
!3452 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_squeeze", scope: !89, file: !89, line: 543, type: !3453, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{null, !47, !53, !2868}
!3455 = !DILocalVariable(name: "out", arg: 1, scope: !3452, file: !89, line: 543, type: !47)
!3456 = !DILocation(line: 0, scope: !3452)
!3457 = !DILocalVariable(name: "outlen", arg: 2, scope: !3452, file: !89, line: 543, type: !53)
!3458 = !DILocalVariable(name: "state", arg: 3, scope: !3452, file: !89, line: 543, type: !2868)
!3459 = !DILocation(line: 546, column: 36, scope: !3452)
!3460 = !DILocation(line: 546, column: 22, scope: !3452)
!3461 = !DILocation(line: 545, column: 7, scope: !3452)
!3462 = !DILocalVariable(name: "pos", scope: !3452, file: !89, line: 544, type: !55)
!3463 = !DILocation(line: 547, column: 31, scope: !3452)
!3464 = !DILocation(line: 547, column: 3, scope: !3452)
!3465 = !DILocation(line: 547, column: 29, scope: !3452)
!3466 = !DILocation(line: 548, column: 1, scope: !3452)
!3467 = distinct !DISubprogram(name: "keccak_squeeze", scope: !89, file: !89, line: 410, type: !3468, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!55, !47, !53, !2878, !55, !55}
!3470 = !DILocalVariable(name: "out", arg: 1, scope: !3467, file: !89, line: 410, type: !47)
!3471 = !DILocation(line: 0, scope: !3467)
!3472 = !DILocalVariable(name: "outlen", arg: 2, scope: !3467, file: !89, line: 410, type: !53)
!3473 = !DILocalVariable(name: "s", arg: 3, scope: !3467, file: !89, line: 410, type: !2878)
!3474 = !DILocalVariable(name: "pos", arg: 4, scope: !3467, file: !89, line: 411, type: !55)
!3475 = !DILocalVariable(name: "r", arg: 5, scope: !3467, file: !89, line: 411, type: !55)
!3476 = !DILocation(line: 414, column: 3, scope: !3467)
!3477 = !DILocation(line: 415, column: 13, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !89, line: 415, column: 9)
!3479 = distinct !DILexicalBlock(scope: !3467, file: !89, line: 414, column: 18)
!3480 = !DILocation(line: 416, column: 7, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3478, file: !89, line: 415, column: 19)
!3482 = !DILocation(line: 418, column: 5, scope: !3481)
!3483 = !DILocalVariable(name: "i", scope: !3467, file: !89, line: 412, type: !55)
!3484 = !DILocation(line: 419, column: 10, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3479, file: !89, line: 419, column: 5)
!3486 = !DILocation(line: 419, scope: !3485)
!3487 = !DILocation(line: 419, column: 21, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3485, file: !89, line: 419, column: 5)
!3489 = !DILocation(line: 419, column: 25, scope: !3488)
!3490 = !DILocation(line: 419, column: 5, scope: !3485)
!3491 = !DILocation(line: 420, column: 20, scope: !3488)
!3492 = !DILocation(line: 420, column: 16, scope: !3488)
!3493 = !DILocation(line: 420, column: 30, scope: !3488)
!3494 = !DILocation(line: 420, column: 25, scope: !3488)
!3495 = !DILocation(line: 420, column: 14, scope: !3488)
!3496 = !DILocation(line: 420, column: 11, scope: !3488)
!3497 = !DILocation(line: 419, column: 47, scope: !3488)
!3498 = !DILocation(line: 419, column: 5, scope: !3488)
!3499 = distinct !{!3499, !3490, !3500, !200}
!3500 = !DILocation(line: 420, column: 38, scope: !3485)
!3501 = !DILocation(line: 421, column: 17, scope: !3479)
!3502 = !DILocation(line: 421, column: 12, scope: !3479)
!3503 = distinct !{!3503, !3476, !3504, !200}
!3504 = !DILocation(line: 423, column: 3, scope: !3467)
!3505 = !DILocation(line: 425, column: 3, scope: !3467)
!3506 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_absorb_once", scope: !89, file: !89, line: 561, type: !2896, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3507 = !DILocalVariable(name: "state", arg: 1, scope: !3506, file: !89, line: 561, type: !2868)
!3508 = !DILocation(line: 0, scope: !3506)
!3509 = !DILocalVariable(name: "in", arg: 2, scope: !3506, file: !89, line: 561, type: !324)
!3510 = !DILocalVariable(name: "inlen", arg: 3, scope: !3506, file: !89, line: 562, type: !53)
!3511 = !DILocation(line: 563, column: 3, scope: !3506)
!3512 = !DILocation(line: 564, column: 3, scope: !3506)
!3513 = !DILocation(line: 564, column: 29, scope: !3506)
!3514 = !DILocation(line: 565, column: 1, scope: !3506)
!3515 = distinct !DISubprogram(name: "keccak_absorb_once", scope: !89, file: !89, line: 441, type: !3516, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{null, !2878, !55, !324, !53, !48}
!3518 = !DILocalVariable(name: "s", arg: 1, scope: !3515, file: !89, line: 441, type: !2878)
!3519 = !DILocation(line: 0, scope: !3515)
!3520 = !DILocalVariable(name: "r", arg: 2, scope: !3515, file: !89, line: 441, type: !55)
!3521 = !DILocalVariable(name: "in", arg: 3, scope: !3515, file: !89, line: 442, type: !324)
!3522 = !DILocalVariable(name: "inlen", arg: 4, scope: !3515, file: !89, line: 442, type: !53)
!3523 = !DILocalVariable(name: "p", arg: 5, scope: !3515, file: !89, line: 442, type: !48)
!3524 = !DILocalVariable(name: "i", scope: !3515, file: !89, line: 443, type: !55)
!3525 = !DILocation(line: 445, column: 8, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3515, file: !89, line: 445, column: 3)
!3527 = !DILocation(line: 445, scope: !3526)
!3528 = !DILocation(line: 445, column: 17, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3526, file: !89, line: 445, column: 3)
!3530 = !DILocation(line: 445, column: 3, scope: !3526)
!3531 = !DILocation(line: 448, column: 3, scope: !3515)
!3532 = !DILocation(line: 446, column: 5, scope: !3529)
!3533 = !DILocation(line: 446, column: 10, scope: !3529)
!3534 = !DILocation(line: 445, column: 24, scope: !3529)
!3535 = !DILocation(line: 445, column: 3, scope: !3529)
!3536 = distinct !{!3536, !3530, !3537, !200}
!3537 = !DILocation(line: 446, column: 12, scope: !3526)
!3538 = !DILocation(line: 448, column: 16, scope: !3515)
!3539 = !DILocation(line: 449, column: 5, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !89, line: 449, column: 5)
!3541 = distinct !DILexicalBlock(scope: !3515, file: !89, line: 448, column: 22)
!3542 = !DILocation(line: 456, column: 3, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3515, file: !89, line: 456, column: 3)
!3544 = !DILocation(line: 449, scope: !3540)
!3545 = !DILocation(line: 449, column: 19, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3540, file: !89, line: 449, column: 5)
!3547 = !DILocation(line: 450, column: 29, scope: !3546)
!3548 = !DILocation(line: 450, column: 25, scope: !3546)
!3549 = !DILocation(line: 450, column: 15, scope: !3546)
!3550 = !DILocation(line: 450, column: 7, scope: !3546)
!3551 = !DILocation(line: 450, column: 12, scope: !3546)
!3552 = !DILocation(line: 449, column: 29, scope: !3546)
!3553 = !DILocation(line: 449, column: 5, scope: !3546)
!3554 = distinct !{!3554, !3539, !3555, !200}
!3555 = !DILocation(line: 450, column: 32, scope: !3540)
!3556 = !DILocation(line: 451, column: 8, scope: !3541)
!3557 = !DILocation(line: 452, column: 11, scope: !3541)
!3558 = !DILocation(line: 453, column: 5, scope: !3541)
!3559 = distinct !{!3559, !3531, !3560, !200}
!3560 = !DILocation(line: 454, column: 3, scope: !3515)
!3561 = !DILocation(line: 456, scope: !3543)
!3562 = !DILocation(line: 456, column: 17, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3543, file: !89, line: 456, column: 3)
!3564 = !DILocation(line: 457, column: 27, scope: !3563)
!3565 = !DILocation(line: 457, column: 17, scope: !3563)
!3566 = !DILocation(line: 457, column: 38, scope: !3563)
!3567 = !DILocation(line: 457, column: 33, scope: !3563)
!3568 = !DILocation(line: 457, column: 9, scope: !3563)
!3569 = !DILocation(line: 457, column: 5, scope: !3563)
!3570 = !DILocation(line: 457, column: 14, scope: !3563)
!3571 = !DILocation(line: 456, column: 27, scope: !3563)
!3572 = !DILocation(line: 456, column: 3, scope: !3563)
!3573 = distinct !{!3573, !3542, !3574, !200}
!3574 = !DILocation(line: 457, column: 46, scope: !3543)
!3575 = !DILocation(line: 459, column: 15, scope: !3515)
!3576 = !DILocation(line: 459, column: 32, scope: !3515)
!3577 = !DILocation(line: 459, column: 27, scope: !3515)
!3578 = !DILocation(line: 459, column: 7, scope: !3515)
!3579 = !DILocation(line: 459, column: 3, scope: !3515)
!3580 = !DILocation(line: 459, column: 12, scope: !3515)
!3581 = !DILocation(line: 460, column: 8, scope: !3515)
!3582 = !DILocation(line: 460, column: 13, scope: !3515)
!3583 = !DILocation(line: 460, column: 3, scope: !3515)
!3584 = !DILocation(line: 460, column: 18, scope: !3515)
!3585 = !DILocation(line: 461, column: 1, scope: !3515)
!3586 = distinct !DISubprogram(name: "load64", scope: !89, file: !89, line: 22, type: !3587, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!85, !324}
!3589 = !DILocalVariable(name: "x", arg: 1, scope: !3586, file: !89, line: 22, type: !324)
!3590 = !DILocation(line: 0, scope: !3586)
!3591 = !DILocalVariable(name: "r", scope: !3586, file: !89, line: 24, type: !85)
!3592 = !DILocalVariable(name: "i", scope: !3586, file: !89, line: 23, type: !55)
!3593 = !DILocation(line: 26, column: 8, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3586, file: !89, line: 26, column: 3)
!3595 = !DILocation(line: 26, scope: !3594)
!3596 = !DILocation(line: 26, column: 17, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3594, file: !89, line: 26, column: 3)
!3598 = !DILocation(line: 26, column: 3, scope: !3594)
!3599 = !DILocation(line: 27, column: 20, scope: !3597)
!3600 = !DILocation(line: 27, column: 10, scope: !3597)
!3601 = !DILocation(line: 27, column: 30, scope: !3597)
!3602 = !DILocation(line: 27, column: 25, scope: !3597)
!3603 = !DILocation(line: 27, column: 7, scope: !3597)
!3604 = !DILocation(line: 26, column: 23, scope: !3597)
!3605 = !DILocation(line: 26, column: 3, scope: !3597)
!3606 = distinct !{!3606, !3598, !3607, !200}
!3607 = !DILocation(line: 27, column: 32, scope: !3594)
!3608 = !DILocation(line: 29, column: 3, scope: !3586)
!3609 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks", scope: !89, file: !89, line: 580, type: !3453, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3610 = !DILocalVariable(name: "out", arg: 1, scope: !3609, file: !89, line: 580, type: !47)
!3611 = !DILocation(line: 0, scope: !3609)
!3612 = !DILocalVariable(name: "nblocks", arg: 2, scope: !3609, file: !89, line: 580, type: !53)
!3613 = !DILocalVariable(name: "state", arg: 3, scope: !3609, file: !89, line: 580, type: !2868)
!3614 = !DILocation(line: 581, column: 3, scope: !3609)
!3615 = !DILocation(line: 582, column: 1, scope: !3609)
!3616 = distinct !DISubprogram(name: "keccak_squeezeblocks", scope: !89, file: !89, line: 477, type: !3617, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !47, !53, !2878, !55}
!3619 = !DILocalVariable(name: "out", arg: 1, scope: !3616, file: !89, line: 477, type: !47)
!3620 = !DILocation(line: 0, scope: !3616)
!3621 = !DILocalVariable(name: "nblocks", arg: 2, scope: !3616, file: !89, line: 477, type: !53)
!3622 = !DILocalVariable(name: "s", arg: 3, scope: !3616, file: !89, line: 477, type: !2878)
!3623 = !DILocalVariable(name: "r", arg: 4, scope: !3616, file: !89, line: 478, type: !55)
!3624 = !DILocation(line: 481, column: 3, scope: !3616)
!3625 = !DILocation(line: 482, column: 5, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3616, file: !89, line: 481, column: 19)
!3627 = !DILocalVariable(name: "i", scope: !3616, file: !89, line: 479, type: !55)
!3628 = !DILocation(line: 483, column: 10, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3626, file: !89, line: 483, column: 5)
!3630 = !DILocation(line: 483, scope: !3629)
!3631 = !DILocation(line: 483, column: 19, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3629, file: !89, line: 483, column: 5)
!3633 = !DILocation(line: 483, column: 5, scope: !3629)
!3634 = !DILocation(line: 484, column: 23, scope: !3632)
!3635 = !DILocation(line: 484, column: 19, scope: !3632)
!3636 = !DILocation(line: 484, column: 28, scope: !3632)
!3637 = !DILocation(line: 484, column: 7, scope: !3632)
!3638 = !DILocation(line: 483, column: 29, scope: !3632)
!3639 = !DILocation(line: 483, column: 5, scope: !3632)
!3640 = distinct !{!3640, !3633, !3641, !200}
!3641 = !DILocation(line: 484, column: 32, scope: !3629)
!3642 = !DILocation(line: 485, column: 9, scope: !3626)
!3643 = !DILocation(line: 486, column: 13, scope: !3626)
!3644 = distinct !{!3644, !3624, !3645, !200}
!3645 = !DILocation(line: 487, column: 3, scope: !3616)
!3646 = !DILocation(line: 488, column: 1, scope: !3616)
!3647 = distinct !DISubprogram(name: "store64", scope: !89, file: !89, line: 41, type: !3648, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !47, !85}
!3650 = !DILocalVariable(name: "x", arg: 1, scope: !3647, file: !89, line: 41, type: !47)
!3651 = !DILocation(line: 0, scope: !3647)
!3652 = !DILocalVariable(name: "u", arg: 2, scope: !3647, file: !89, line: 41, type: !85)
!3653 = !DILocalVariable(name: "i", scope: !3647, file: !89, line: 42, type: !55)
!3654 = !DILocation(line: 44, column: 8, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3647, file: !89, line: 44, column: 3)
!3656 = !DILocation(line: 44, scope: !3655)
!3657 = !DILocation(line: 44, column: 17, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3655, file: !89, line: 44, column: 3)
!3659 = !DILocation(line: 44, column: 3, scope: !3655)
!3660 = !DILocation(line: 45, column: 19, scope: !3658)
!3661 = !DILocation(line: 45, column: 14, scope: !3658)
!3662 = !DILocation(line: 45, column: 12, scope: !3658)
!3663 = !DILocation(line: 45, column: 5, scope: !3658)
!3664 = !DILocation(line: 45, column: 10, scope: !3658)
!3665 = !DILocation(line: 44, column: 23, scope: !3658)
!3666 = !DILocation(line: 44, column: 3, scope: !3658)
!3667 = distinct !{!3667, !3659, !3668, !200}
!3668 = !DILocation(line: 45, column: 21, scope: !3655)
!3669 = !DILocation(line: 46, column: 1, scope: !3647)
!3670 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_init", scope: !89, file: !89, line: 591, type: !2866, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3671 = !DILocalVariable(name: "state", arg: 1, scope: !3670, file: !89, line: 591, type: !2868)
!3672 = !DILocation(line: 0, scope: !3670)
!3673 = !DILocation(line: 592, column: 3, scope: !3670)
!3674 = !DILocation(line: 593, column: 3, scope: !3670)
!3675 = !DILocation(line: 593, column: 29, scope: !3670)
!3676 = !DILocation(line: 594, column: 1, scope: !3670)
!3677 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_absorb", scope: !89, file: !89, line: 606, type: !2896, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3678 = !DILocalVariable(name: "state", arg: 1, scope: !3677, file: !89, line: 606, type: !2868)
!3679 = !DILocation(line: 0, scope: !3677)
!3680 = !DILocalVariable(name: "in", arg: 2, scope: !3677, file: !89, line: 606, type: !324)
!3681 = !DILocalVariable(name: "inlen", arg: 3, scope: !3677, file: !89, line: 606, type: !53)
!3682 = !DILocation(line: 608, column: 43, scope: !3677)
!3683 = !DILocation(line: 608, column: 29, scope: !3677)
!3684 = !DILocation(line: 608, column: 7, scope: !3677)
!3685 = !DILocalVariable(name: "pos", scope: !3677, file: !89, line: 607, type: !55)
!3686 = !DILocation(line: 610, column: 31, scope: !3677)
!3687 = !DILocation(line: 610, column: 3, scope: !3677)
!3688 = !DILocation(line: 610, column: 29, scope: !3677)
!3689 = !DILocation(line: 611, column: 1, scope: !3677)
!3690 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_finalize", scope: !89, file: !89, line: 620, type: !2866, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3691 = !DILocalVariable(name: "state", arg: 1, scope: !3690, file: !89, line: 620, type: !2868)
!3692 = !DILocation(line: 0, scope: !3690)
!3693 = !DILocation(line: 621, column: 41, scope: !3690)
!3694 = !DILocation(line: 621, column: 27, scope: !3690)
!3695 = !DILocation(line: 621, column: 3, scope: !3690)
!3696 = !DILocation(line: 623, column: 3, scope: !3690)
!3697 = !DILocation(line: 623, column: 29, scope: !3690)
!3698 = !DILocation(line: 624, column: 1, scope: !3690)
!3699 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_squeeze", scope: !89, file: !89, line: 637, type: !3453, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3700 = !DILocalVariable(name: "out", arg: 1, scope: !3699, file: !89, line: 637, type: !47)
!3701 = !DILocation(line: 0, scope: !3699)
!3702 = !DILocalVariable(name: "outlen", arg: 2, scope: !3699, file: !89, line: 637, type: !53)
!3703 = !DILocalVariable(name: "state", arg: 3, scope: !3699, file: !89, line: 637, type: !2868)
!3704 = !DILocation(line: 640, column: 36, scope: !3699)
!3705 = !DILocation(line: 640, column: 22, scope: !3699)
!3706 = !DILocation(line: 639, column: 7, scope: !3699)
!3707 = !DILocalVariable(name: "pos", scope: !3699, file: !89, line: 638, type: !55)
!3708 = !DILocation(line: 641, column: 31, scope: !3699)
!3709 = !DILocation(line: 641, column: 3, scope: !3699)
!3710 = !DILocation(line: 641, column: 29, scope: !3699)
!3711 = !DILocation(line: 642, column: 1, scope: !3699)
!3712 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_absorb_once", scope: !89, file: !89, line: 655, type: !2896, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3713 = !DILocalVariable(name: "state", arg: 1, scope: !3712, file: !89, line: 655, type: !2868)
!3714 = !DILocation(line: 0, scope: !3712)
!3715 = !DILocalVariable(name: "in", arg: 2, scope: !3712, file: !89, line: 655, type: !324)
!3716 = !DILocalVariable(name: "inlen", arg: 3, scope: !3712, file: !89, line: 656, type: !53)
!3717 = !DILocation(line: 657, column: 3, scope: !3712)
!3718 = !DILocation(line: 658, column: 3, scope: !3712)
!3719 = !DILocation(line: 658, column: 29, scope: !3712)
!3720 = !DILocation(line: 659, column: 1, scope: !3712)
!3721 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks", scope: !89, file: !89, line: 674, type: !3453, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3722 = !DILocalVariable(name: "out", arg: 1, scope: !3721, file: !89, line: 674, type: !47)
!3723 = !DILocation(line: 0, scope: !3721)
!3724 = !DILocalVariable(name: "nblocks", arg: 2, scope: !3721, file: !89, line: 674, type: !53)
!3725 = !DILocalVariable(name: "state", arg: 3, scope: !3721, file: !89, line: 674, type: !2868)
!3726 = !DILocation(line: 675, column: 3, scope: !3721)
!3727 = !DILocation(line: 676, column: 1, scope: !3721)
!3728 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake128", scope: !89, file: !89, line: 688, type: !3729, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{null, !47, !53, !324, !53}
!3731 = !DILocalVariable(name: "out", arg: 1, scope: !3728, file: !89, line: 688, type: !47)
!3732 = !DILocation(line: 0, scope: !3728)
!3733 = !DILocalVariable(name: "outlen", arg: 2, scope: !3728, file: !89, line: 688, type: !53)
!3734 = !DILocalVariable(name: "in", arg: 3, scope: !3728, file: !89, line: 688, type: !324)
!3735 = !DILocalVariable(name: "inlen", arg: 4, scope: !3728, file: !89, line: 688, type: !53)
!3736 = !DILocalVariable(name: "state", scope: !3728, file: !89, line: 690, type: !386)
!3737 = !DILocation(line: 690, column: 16, scope: !3728)
!3738 = !DILocation(line: 692, column: 3, scope: !3728)
!3739 = !DILocation(line: 693, column: 20, scope: !3728)
!3740 = !DILocalVariable(name: "nblocks", scope: !3728, file: !89, line: 689, type: !53)
!3741 = !DILocation(line: 694, column: 3, scope: !3728)
!3742 = !DILocation(line: 695, column: 21, scope: !3728)
!3743 = !DILocation(line: 695, column: 10, scope: !3728)
!3744 = !DILocation(line: 696, column: 18, scope: !3728)
!3745 = !DILocation(line: 696, column: 7, scope: !3728)
!3746 = !DILocation(line: 697, column: 3, scope: !3728)
!3747 = !DILocation(line: 698, column: 1, scope: !3728)
!3748 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_shake256", scope: !89, file: !89, line: 710, type: !3729, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3749 = !DILocalVariable(name: "out", arg: 1, scope: !3748, file: !89, line: 710, type: !47)
!3750 = !DILocation(line: 0, scope: !3748)
!3751 = !DILocalVariable(name: "outlen", arg: 2, scope: !3748, file: !89, line: 710, type: !53)
!3752 = !DILocalVariable(name: "in", arg: 3, scope: !3748, file: !89, line: 710, type: !324)
!3753 = !DILocalVariable(name: "inlen", arg: 4, scope: !3748, file: !89, line: 710, type: !53)
!3754 = !DILocalVariable(name: "state", scope: !3748, file: !89, line: 712, type: !386)
!3755 = !DILocation(line: 712, column: 16, scope: !3748)
!3756 = !DILocation(line: 714, column: 3, scope: !3748)
!3757 = !DILocation(line: 715, column: 20, scope: !3748)
!3758 = !DILocalVariable(name: "nblocks", scope: !3748, file: !89, line: 711, type: !53)
!3759 = !DILocation(line: 716, column: 3, scope: !3748)
!3760 = !DILocation(line: 717, column: 21, scope: !3748)
!3761 = !DILocation(line: 717, column: 10, scope: !3748)
!3762 = !DILocation(line: 718, column: 18, scope: !3748)
!3763 = !DILocation(line: 718, column: 7, scope: !3748)
!3764 = !DILocation(line: 719, column: 3, scope: !3748)
!3765 = !DILocation(line: 720, column: 1, scope: !3748)
!3766 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_sha3_256", scope: !89, file: !89, line: 731, type: !3767, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !47, !324, !53}
!3769 = !DILocalVariable(name: "h", arg: 1, scope: !3766, file: !89, line: 731, type: !47)
!3770 = !DILocation(line: 0, scope: !3766)
!3771 = !DILocalVariable(name: "in", arg: 2, scope: !3766, file: !89, line: 731, type: !324)
!3772 = !DILocalVariable(name: "inlen", arg: 3, scope: !3766, file: !89, line: 731, type: !53)
!3773 = !DILocalVariable(name: "s", scope: !3766, file: !89, line: 733, type: !3774)
!3774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 1600, elements: !3775)
!3775 = !{!3776}
!3776 = !DISubrange(count: 25)
!3777 = !DILocation(line: 733, column: 12, scope: !3766)
!3778 = !DILocation(line: 735, column: 3, scope: !3766)
!3779 = !DILocation(line: 736, column: 3, scope: !3766)
!3780 = !DILocalVariable(name: "i", scope: !3766, file: !89, line: 732, type: !55)
!3781 = !DILocation(line: 737, column: 8, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3766, file: !89, line: 737, column: 3)
!3783 = !DILocation(line: 737, scope: !3782)
!3784 = !DILocation(line: 737, column: 17, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3782, file: !89, line: 737, column: 3)
!3786 = !DILocation(line: 737, column: 3, scope: !3782)
!3787 = !DILocation(line: 738, column: 19, scope: !3785)
!3788 = !DILocation(line: 738, column: 15, scope: !3785)
!3789 = !DILocation(line: 738, column: 24, scope: !3785)
!3790 = !DILocation(line: 738, column: 5, scope: !3785)
!3791 = !DILocation(line: 737, column: 23, scope: !3785)
!3792 = !DILocation(line: 737, column: 3, scope: !3785)
!3793 = distinct !{!3793, !3786, !3794, !200}
!3794 = !DILocation(line: 738, column: 28, scope: !3782)
!3795 = !DILocation(line: 739, column: 1, scope: !3766)
!3796 = distinct !DISubprogram(name: "pqcrystals_dilithium_fips202_ref_sha3_512", scope: !89, file: !89, line: 750, type: !3767, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !64)
!3797 = !DILocalVariable(name: "h", arg: 1, scope: !3796, file: !89, line: 750, type: !47)
!3798 = !DILocation(line: 0, scope: !3796)
!3799 = !DILocalVariable(name: "in", arg: 2, scope: !3796, file: !89, line: 750, type: !324)
!3800 = !DILocalVariable(name: "inlen", arg: 3, scope: !3796, file: !89, line: 750, type: !53)
!3801 = !DILocalVariable(name: "s", scope: !3796, file: !89, line: 752, type: !3774)
!3802 = !DILocation(line: 752, column: 12, scope: !3796)
!3803 = !DILocation(line: 754, column: 3, scope: !3796)
!3804 = !DILocation(line: 755, column: 3, scope: !3796)
!3805 = !DILocalVariable(name: "i", scope: !3796, file: !89, line: 751, type: !55)
!3806 = !DILocation(line: 756, column: 8, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3796, file: !89, line: 756, column: 3)
!3808 = !DILocation(line: 756, scope: !3807)
!3809 = !DILocation(line: 756, column: 17, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3807, file: !89, line: 756, column: 3)
!3811 = !DILocation(line: 756, column: 3, scope: !3807)
!3812 = !DILocation(line: 757, column: 19, scope: !3810)
!3813 = !DILocation(line: 757, column: 15, scope: !3810)
!3814 = !DILocation(line: 757, column: 24, scope: !3810)
!3815 = !DILocation(line: 757, column: 5, scope: !3810)
!3816 = !DILocation(line: 756, column: 23, scope: !3810)
!3817 = !DILocation(line: 756, column: 3, scope: !3810)
!3818 = distinct !{!3818, !3811, !3819, !200}
!3819 = !DILocation(line: 757, column: 28, scope: !3807)
!3820 = !DILocation(line: 758, column: 1, scope: !3796)
!3821 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_dilithium_shake128_stream_init", scope: !3822, file: !3822, line: 6, type: !3823, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !64)
!3822 = !DIFile(filename: "../../../ref/symmetric-shake.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !2868, !324, !362}
!3825 = !DILocalVariable(name: "state", arg: 1, scope: !3821, file: !3822, line: 6, type: !2868)
!3826 = !DILocation(line: 0, scope: !3821)
!3827 = !DILocalVariable(name: "seed", arg: 2, scope: !3821, file: !3822, line: 6, type: !324)
!3828 = !DILocalVariable(name: "nonce", arg: 3, scope: !3821, file: !3822, line: 6, type: !362)
!3829 = !DILocalVariable(name: "t", scope: !3821, file: !3822, line: 8, type: !3830)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 16, elements: !3831)
!3831 = !{!3832}
!3832 = !DISubrange(count: 2)
!3833 = !DILocation(line: 8, column: 11, scope: !3821)
!3834 = !DILocation(line: 9, column: 10, scope: !3821)
!3835 = !DILocation(line: 9, column: 8, scope: !3821)
!3836 = !DILocation(line: 10, column: 16, scope: !3821)
!3837 = !DILocation(line: 10, column: 10, scope: !3821)
!3838 = !DILocation(line: 10, column: 3, scope: !3821)
!3839 = !DILocation(line: 10, column: 8, scope: !3821)
!3840 = !DILocation(line: 12, column: 3, scope: !3821)
!3841 = !DILocation(line: 13, column: 3, scope: !3821)
!3842 = !DILocation(line: 14, column: 3, scope: !3821)
!3843 = !DILocation(line: 15, column: 3, scope: !3821)
!3844 = !DILocation(line: 16, column: 1, scope: !3821)
!3845 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_dilithium_shake256_stream_init", scope: !3822, file: !3822, line: 18, type: !3823, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !107, retainedNodes: !64)
!3846 = !DILocalVariable(name: "state", arg: 1, scope: !3845, file: !3822, line: 18, type: !2868)
!3847 = !DILocation(line: 0, scope: !3845)
!3848 = !DILocalVariable(name: "seed", arg: 2, scope: !3845, file: !3822, line: 18, type: !324)
!3849 = !DILocalVariable(name: "nonce", arg: 3, scope: !3845, file: !3822, line: 18, type: !362)
!3850 = !DILocalVariable(name: "t", scope: !3845, file: !3822, line: 20, type: !3830)
!3851 = !DILocation(line: 20, column: 11, scope: !3845)
!3852 = !DILocation(line: 21, column: 10, scope: !3845)
!3853 = !DILocation(line: 21, column: 8, scope: !3845)
!3854 = !DILocation(line: 22, column: 16, scope: !3845)
!3855 = !DILocation(line: 22, column: 10, scope: !3845)
!3856 = !DILocation(line: 22, column: 3, scope: !3845)
!3857 = !DILocation(line: 22, column: 8, scope: !3845)
!3858 = !DILocation(line: 24, column: 3, scope: !3845)
!3859 = !DILocation(line: 25, column: 3, scope: !3845)
!3860 = !DILocation(line: 26, column: 3, scope: !3845)
!3861 = !DILocation(line: 27, column: 3, scope: !3845)
!3862 = !DILocation(line: 28, column: 1, scope: !3845)
!3863 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_pack_pk", scope: !3864, file: !3864, line: 15, type: !3865, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!3864 = !DIFile(filename: "../../../ref/packing.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!3865 = !DISubroutineType(types: !3866)
!3866 = !{null, !47, !324, !1025}
!3867 = !DILocalVariable(name: "pk", arg: 1, scope: !3863, file: !3864, line: 15, type: !47)
!3868 = !DILocation(line: 0, scope: !3863)
!3869 = !DILocalVariable(name: "rho", arg: 2, scope: !3863, file: !3864, line: 15, type: !324)
!3870 = !DILocalVariable(name: "t1", arg: 3, scope: !3863, file: !3864, line: 16, type: !1025)
!3871 = !DILocalVariable(name: "i", scope: !3863, file: !3864, line: 17, type: !55)
!3872 = !DILocation(line: 19, column: 8, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3863, file: !3864, line: 19, column: 3)
!3874 = !DILocation(line: 19, scope: !3873)
!3875 = !DILocation(line: 19, column: 17, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3873, file: !3864, line: 19, column: 3)
!3877 = !DILocation(line: 19, column: 3, scope: !3873)
!3878 = !DILocation(line: 20, column: 13, scope: !3876)
!3879 = !DILocation(line: 20, column: 5, scope: !3876)
!3880 = !DILocation(line: 20, column: 11, scope: !3876)
!3881 = !DILocation(line: 19, column: 30, scope: !3876)
!3882 = !DILocation(line: 19, column: 3, scope: !3876)
!3883 = distinct !{!3883, !3877, !3884, !200}
!3884 = !DILocation(line: 20, column: 18, scope: !3873)
!3885 = !DILocation(line: 21, column: 6, scope: !3863)
!3886 = !DILocation(line: 23, column: 8, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3863, file: !3864, line: 23, column: 3)
!3888 = !DILocation(line: 23, scope: !3887)
!3889 = !DILocation(line: 23, column: 17, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3887, file: !3864, line: 23, column: 3)
!3891 = !DILocation(line: 23, column: 3, scope: !3887)
!3892 = !DILocation(line: 24, column: 24, scope: !3890)
!3893 = !DILocation(line: 24, column: 20, scope: !3890)
!3894 = !DILocation(line: 24, column: 47, scope: !3890)
!3895 = !DILocation(line: 24, column: 5, scope: !3890)
!3896 = !DILocation(line: 23, column: 22, scope: !3890)
!3897 = !DILocation(line: 23, column: 3, scope: !3890)
!3898 = distinct !{!3898, !3891, !3899, !200}
!3899 = !DILocation(line: 24, column: 55, scope: !3887)
!3900 = !DILocation(line: 25, column: 1, scope: !3863)
!3901 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_unpack_pk", scope: !3864, file: !3864, line: 36, type: !3902, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{null, !47, !748, !324}
!3904 = !DILocalVariable(name: "rho", arg: 1, scope: !3901, file: !3864, line: 36, type: !47)
!3905 = !DILocation(line: 0, scope: !3901)
!3906 = !DILocalVariable(name: "t1", arg: 2, scope: !3901, file: !3864, line: 36, type: !748)
!3907 = !DILocalVariable(name: "pk", arg: 3, scope: !3901, file: !3864, line: 37, type: !324)
!3908 = !DILocalVariable(name: "i", scope: !3901, file: !3864, line: 38, type: !55)
!3909 = !DILocation(line: 40, column: 8, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3901, file: !3864, line: 40, column: 3)
!3911 = !DILocation(line: 40, scope: !3910)
!3912 = !DILocation(line: 40, column: 17, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3910, file: !3864, line: 40, column: 3)
!3914 = !DILocation(line: 40, column: 3, scope: !3910)
!3915 = !DILocation(line: 41, column: 14, scope: !3913)
!3916 = !DILocation(line: 41, column: 5, scope: !3913)
!3917 = !DILocation(line: 41, column: 12, scope: !3913)
!3918 = !DILocation(line: 40, column: 30, scope: !3913)
!3919 = !DILocation(line: 40, column: 3, scope: !3913)
!3920 = distinct !{!3920, !3914, !3921, !200}
!3921 = !DILocation(line: 41, column: 18, scope: !3910)
!3922 = !DILocation(line: 42, column: 6, scope: !3901)
!3923 = !DILocation(line: 44, column: 8, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3901, file: !3864, line: 44, column: 3)
!3925 = !DILocation(line: 44, scope: !3924)
!3926 = !DILocation(line: 44, column: 17, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3924, file: !3864, line: 44, column: 3)
!3928 = !DILocation(line: 44, column: 3, scope: !3924)
!3929 = !DILocation(line: 45, column: 20, scope: !3927)
!3930 = !DILocation(line: 45, column: 37, scope: !3927)
!3931 = !DILocation(line: 45, column: 33, scope: !3927)
!3932 = !DILocation(line: 45, column: 5, scope: !3927)
!3933 = !DILocation(line: 44, column: 22, scope: !3927)
!3934 = !DILocation(line: 44, column: 3, scope: !3927)
!3935 = distinct !{!3935, !3928, !3936, !200}
!3936 = !DILocation(line: 45, column: 57, scope: !3924)
!3937 = !DILocation(line: 46, column: 1, scope: !3901)
!3938 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_pack_sk", scope: !3864, file: !3864, line: 61, type: !3939, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !47, !324, !324, !324, !1025, !749, !1025}
!3941 = !DILocalVariable(name: "sk", arg: 1, scope: !3938, file: !3864, line: 61, type: !47)
!3942 = !DILocation(line: 0, scope: !3938)
!3943 = !DILocalVariable(name: "rho", arg: 2, scope: !3938, file: !3864, line: 61, type: !324)
!3944 = !DILocalVariable(name: "tr", arg: 3, scope: !3938, file: !3864, line: 62, type: !324)
!3945 = !DILocalVariable(name: "key", arg: 4, scope: !3938, file: !3864, line: 62, type: !324)
!3946 = !DILocalVariable(name: "t0", arg: 5, scope: !3938, file: !3864, line: 63, type: !1025)
!3947 = !DILocalVariable(name: "s1", arg: 6, scope: !3938, file: !3864, line: 63, type: !749)
!3948 = !DILocalVariable(name: "s2", arg: 7, scope: !3938, file: !3864, line: 63, type: !1025)
!3949 = !DILocalVariable(name: "i", scope: !3938, file: !3864, line: 64, type: !55)
!3950 = !DILocation(line: 66, column: 8, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3938, file: !3864, line: 66, column: 3)
!3952 = !DILocation(line: 66, scope: !3951)
!3953 = !DILocation(line: 66, column: 17, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3951, file: !3864, line: 66, column: 3)
!3955 = !DILocation(line: 66, column: 3, scope: !3951)
!3956 = !DILocation(line: 67, column: 13, scope: !3954)
!3957 = !DILocation(line: 67, column: 5, scope: !3954)
!3958 = !DILocation(line: 67, column: 11, scope: !3954)
!3959 = !DILocation(line: 66, column: 30, scope: !3954)
!3960 = !DILocation(line: 66, column: 3, scope: !3954)
!3961 = distinct !{!3961, !3955, !3962, !200}
!3962 = !DILocation(line: 67, column: 18, scope: !3951)
!3963 = !DILocation(line: 68, column: 6, scope: !3938)
!3964 = !DILocation(line: 70, column: 8, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3938, file: !3864, line: 70, column: 3)
!3966 = !DILocation(line: 70, scope: !3965)
!3967 = !DILocation(line: 70, column: 17, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3965, file: !3864, line: 70, column: 3)
!3969 = !DILocation(line: 70, column: 3, scope: !3965)
!3970 = !DILocation(line: 71, column: 13, scope: !3968)
!3971 = !DILocation(line: 71, column: 5, scope: !3968)
!3972 = !DILocation(line: 71, column: 11, scope: !3968)
!3973 = !DILocation(line: 70, column: 30, scope: !3968)
!3974 = !DILocation(line: 70, column: 3, scope: !3968)
!3975 = distinct !{!3975, !3969, !3976, !200}
!3976 = !DILocation(line: 71, column: 18, scope: !3965)
!3977 = !DILocation(line: 72, column: 6, scope: !3938)
!3978 = !DILocation(line: 74, column: 8, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3938, file: !3864, line: 74, column: 3)
!3980 = !DILocation(line: 74, scope: !3979)
!3981 = !DILocation(line: 74, column: 17, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3979, file: !3864, line: 74, column: 3)
!3983 = !DILocation(line: 74, column: 3, scope: !3979)
!3984 = !DILocation(line: 75, column: 13, scope: !3982)
!3985 = !DILocation(line: 75, column: 5, scope: !3982)
!3986 = !DILocation(line: 75, column: 11, scope: !3982)
!3987 = !DILocation(line: 74, column: 28, scope: !3982)
!3988 = !DILocation(line: 74, column: 3, scope: !3982)
!3989 = distinct !{!3989, !3983, !3990, !200}
!3990 = !DILocation(line: 75, column: 17, scope: !3979)
!3991 = !DILocation(line: 76, column: 6, scope: !3938)
!3992 = !DILocation(line: 78, column: 8, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3938, file: !3864, line: 78, column: 3)
!3994 = !DILocation(line: 78, scope: !3993)
!3995 = !DILocation(line: 78, column: 17, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !3864, line: 78, column: 3)
!3997 = !DILocation(line: 78, column: 3, scope: !3993)
!3998 = !DILocation(line: 79, column: 25, scope: !3996)
!3999 = !DILocation(line: 79, column: 21, scope: !3996)
!4000 = !DILocation(line: 79, column: 49, scope: !3996)
!4001 = !DILocation(line: 79, column: 5, scope: !3996)
!4002 = !DILocation(line: 78, column: 22, scope: !3996)
!4003 = !DILocation(line: 78, column: 3, scope: !3996)
!4004 = distinct !{!4004, !3997, !4005, !200}
!4005 = !DILocation(line: 79, column: 57, scope: !3993)
!4006 = !DILocation(line: 80, column: 6, scope: !3938)
!4007 = !DILocation(line: 82, column: 8, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3938, file: !3864, line: 82, column: 3)
!4009 = !DILocation(line: 82, scope: !4008)
!4010 = !DILocation(line: 82, column: 17, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4008, file: !3864, line: 82, column: 3)
!4012 = !DILocation(line: 82, column: 3, scope: !4008)
!4013 = !DILocation(line: 83, column: 25, scope: !4011)
!4014 = !DILocation(line: 83, column: 21, scope: !4011)
!4015 = !DILocation(line: 83, column: 49, scope: !4011)
!4016 = !DILocation(line: 83, column: 5, scope: !4011)
!4017 = !DILocation(line: 82, column: 22, scope: !4011)
!4018 = !DILocation(line: 82, column: 3, scope: !4011)
!4019 = distinct !{!4019, !4012, !4020, !200}
!4020 = !DILocation(line: 83, column: 57, scope: !4008)
!4021 = !DILocation(line: 84, column: 6, scope: !3938)
!4022 = !DILocation(line: 86, column: 8, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3938, file: !3864, line: 86, column: 3)
!4024 = !DILocation(line: 86, scope: !4023)
!4025 = !DILocation(line: 86, column: 17, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4023, file: !3864, line: 86, column: 3)
!4027 = !DILocation(line: 86, column: 3, scope: !4023)
!4028 = !DILocation(line: 87, column: 24, scope: !4026)
!4029 = !DILocation(line: 87, column: 20, scope: !4026)
!4030 = !DILocation(line: 87, column: 47, scope: !4026)
!4031 = !DILocation(line: 87, column: 5, scope: !4026)
!4032 = !DILocation(line: 86, column: 22, scope: !4026)
!4033 = !DILocation(line: 86, column: 3, scope: !4026)
!4034 = distinct !{!4034, !4027, !4035, !200}
!4035 = !DILocation(line: 87, column: 55, scope: !4023)
!4036 = !DILocation(line: 88, column: 1, scope: !3938)
!4037 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_unpack_sk", scope: !3864, file: !3864, line: 103, type: !4038, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !47, !47, !47, !748, !714, !748, !324}
!4040 = !DILocalVariable(name: "rho", arg: 1, scope: !4037, file: !3864, line: 103, type: !47)
!4041 = !DILocation(line: 0, scope: !4037)
!4042 = !DILocalVariable(name: "tr", arg: 2, scope: !4037, file: !3864, line: 103, type: !47)
!4043 = !DILocalVariable(name: "key", arg: 3, scope: !4037, file: !3864, line: 104, type: !47)
!4044 = !DILocalVariable(name: "t0", arg: 4, scope: !4037, file: !3864, line: 104, type: !748)
!4045 = !DILocalVariable(name: "s1", arg: 5, scope: !4037, file: !3864, line: 104, type: !714)
!4046 = !DILocalVariable(name: "s2", arg: 6, scope: !4037, file: !3864, line: 104, type: !748)
!4047 = !DILocalVariable(name: "sk", arg: 7, scope: !4037, file: !3864, line: 105, type: !324)
!4048 = !DILocalVariable(name: "i", scope: !4037, file: !3864, line: 106, type: !55)
!4049 = !DILocation(line: 108, column: 8, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4037, file: !3864, line: 108, column: 3)
!4051 = !DILocation(line: 108, scope: !4050)
!4052 = !DILocation(line: 108, column: 17, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4050, file: !3864, line: 108, column: 3)
!4054 = !DILocation(line: 108, column: 3, scope: !4050)
!4055 = !DILocation(line: 109, column: 14, scope: !4053)
!4056 = !DILocation(line: 109, column: 5, scope: !4053)
!4057 = !DILocation(line: 109, column: 12, scope: !4053)
!4058 = !DILocation(line: 108, column: 30, scope: !4053)
!4059 = !DILocation(line: 108, column: 3, scope: !4053)
!4060 = distinct !{!4060, !4054, !4061, !200}
!4061 = !DILocation(line: 109, column: 18, scope: !4050)
!4062 = !DILocation(line: 110, column: 6, scope: !4037)
!4063 = !DILocation(line: 112, column: 8, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4037, file: !3864, line: 112, column: 3)
!4065 = !DILocation(line: 112, scope: !4064)
!4066 = !DILocation(line: 112, column: 17, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4064, file: !3864, line: 112, column: 3)
!4068 = !DILocation(line: 112, column: 3, scope: !4064)
!4069 = !DILocation(line: 113, column: 14, scope: !4067)
!4070 = !DILocation(line: 113, column: 5, scope: !4067)
!4071 = !DILocation(line: 113, column: 12, scope: !4067)
!4072 = !DILocation(line: 112, column: 30, scope: !4067)
!4073 = !DILocation(line: 112, column: 3, scope: !4067)
!4074 = distinct !{!4074, !4068, !4075, !200}
!4075 = !DILocation(line: 113, column: 18, scope: !4064)
!4076 = !DILocation(line: 114, column: 6, scope: !4037)
!4077 = !DILocation(line: 116, column: 8, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4037, file: !3864, line: 116, column: 3)
!4079 = !DILocation(line: 116, scope: !4078)
!4080 = !DILocation(line: 116, column: 17, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4078, file: !3864, line: 116, column: 3)
!4082 = !DILocation(line: 116, column: 3, scope: !4078)
!4083 = !DILocation(line: 117, column: 13, scope: !4081)
!4084 = !DILocation(line: 117, column: 5, scope: !4081)
!4085 = !DILocation(line: 117, column: 11, scope: !4081)
!4086 = !DILocation(line: 116, column: 28, scope: !4081)
!4087 = !DILocation(line: 116, column: 3, scope: !4081)
!4088 = distinct !{!4088, !4082, !4089, !200}
!4089 = !DILocation(line: 117, column: 17, scope: !4078)
!4090 = !DILocation(line: 118, column: 6, scope: !4037)
!4091 = !DILocation(line: 120, column: 8, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4037, file: !3864, line: 120, column: 3)
!4093 = !DILocation(line: 120, scope: !4092)
!4094 = !DILocation(line: 120, column: 17, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4092, file: !3864, line: 120, column: 3)
!4096 = !DILocation(line: 120, column: 3, scope: !4092)
!4097 = !DILocation(line: 121, column: 21, scope: !4095)
!4098 = !DILocation(line: 121, column: 38, scope: !4095)
!4099 = !DILocation(line: 121, column: 34, scope: !4095)
!4100 = !DILocation(line: 121, column: 5, scope: !4095)
!4101 = !DILocation(line: 120, column: 22, scope: !4095)
!4102 = !DILocation(line: 120, column: 3, scope: !4095)
!4103 = distinct !{!4103, !4096, !4104, !200}
!4104 = !DILocation(line: 121, column: 59, scope: !4092)
!4105 = !DILocation(line: 122, column: 6, scope: !4037)
!4106 = !DILocation(line: 124, column: 8, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4037, file: !3864, line: 124, column: 3)
!4108 = !DILocation(line: 124, scope: !4107)
!4109 = !DILocation(line: 124, column: 17, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4107, file: !3864, line: 124, column: 3)
!4111 = !DILocation(line: 124, column: 3, scope: !4107)
!4112 = !DILocation(line: 125, column: 21, scope: !4110)
!4113 = !DILocation(line: 125, column: 38, scope: !4110)
!4114 = !DILocation(line: 125, column: 34, scope: !4110)
!4115 = !DILocation(line: 125, column: 5, scope: !4110)
!4116 = !DILocation(line: 124, column: 22, scope: !4110)
!4117 = !DILocation(line: 124, column: 3, scope: !4110)
!4118 = distinct !{!4118, !4111, !4119, !200}
!4119 = !DILocation(line: 125, column: 59, scope: !4107)
!4120 = !DILocation(line: 126, column: 6, scope: !4037)
!4121 = !DILocation(line: 128, column: 8, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4037, file: !3864, line: 128, column: 3)
!4123 = !DILocation(line: 128, scope: !4122)
!4124 = !DILocation(line: 128, column: 17, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4122, file: !3864, line: 128, column: 3)
!4126 = !DILocation(line: 128, column: 3, scope: !4122)
!4127 = !DILocation(line: 129, column: 20, scope: !4125)
!4128 = !DILocation(line: 129, column: 37, scope: !4125)
!4129 = !DILocation(line: 129, column: 33, scope: !4125)
!4130 = !DILocation(line: 129, column: 5, scope: !4125)
!4131 = !DILocation(line: 128, column: 22, scope: !4125)
!4132 = !DILocation(line: 128, column: 3, scope: !4125)
!4133 = distinct !{!4133, !4126, !4134, !200}
!4134 = !DILocation(line: 129, column: 57, scope: !4122)
!4135 = !DILocation(line: 130, column: 1, scope: !4037)
!4136 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_pack_sig", scope: !3864, file: !3864, line: 142, type: !4137, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !47, !324, !749, !1025}
!4139 = !DILocalVariable(name: "sig", arg: 1, scope: !4136, file: !3864, line: 142, type: !47)
!4140 = !DILocation(line: 0, scope: !4136)
!4141 = !DILocalVariable(name: "c", arg: 2, scope: !4136, file: !3864, line: 142, type: !324)
!4142 = !DILocalVariable(name: "z", arg: 3, scope: !4136, file: !3864, line: 143, type: !749)
!4143 = !DILocalVariable(name: "h", arg: 4, scope: !4136, file: !3864, line: 143, type: !1025)
!4144 = !DILocalVariable(name: "i", scope: !4136, file: !3864, line: 144, type: !55)
!4145 = !DILocation(line: 146, column: 8, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4136, file: !3864, line: 146, column: 3)
!4147 = !DILocation(line: 146, scope: !4146)
!4148 = !DILocation(line: 146, column: 17, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4146, file: !3864, line: 146, column: 3)
!4150 = !DILocation(line: 146, column: 3, scope: !4146)
!4151 = !DILocation(line: 147, column: 14, scope: !4149)
!4152 = !DILocation(line: 147, column: 5, scope: !4149)
!4153 = !DILocation(line: 147, column: 12, scope: !4149)
!4154 = !DILocation(line: 146, column: 32, scope: !4149)
!4155 = !DILocation(line: 146, column: 3, scope: !4149)
!4156 = distinct !{!4156, !4150, !4157, !200}
!4157 = !DILocation(line: 147, column: 17, scope: !4146)
!4158 = !DILocation(line: 148, column: 7, scope: !4136)
!4159 = !DILocation(line: 150, column: 8, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4136, file: !3864, line: 150, column: 3)
!4161 = !DILocation(line: 150, scope: !4160)
!4162 = !DILocation(line: 150, column: 17, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4160, file: !3864, line: 150, column: 3)
!4164 = !DILocation(line: 150, column: 3, scope: !4160)
!4165 = !DILocation(line: 151, column: 24, scope: !4163)
!4166 = !DILocation(line: 151, column: 20, scope: !4163)
!4167 = !DILocation(line: 151, column: 46, scope: !4163)
!4168 = !DILocation(line: 151, column: 5, scope: !4163)
!4169 = !DILocation(line: 150, column: 22, scope: !4163)
!4170 = !DILocation(line: 150, column: 3, scope: !4163)
!4171 = distinct !{!4171, !4164, !4172, !200}
!4172 = !DILocation(line: 151, column: 53, scope: !4160)
!4173 = !DILocation(line: 152, column: 7, scope: !4136)
!4174 = !DILocation(line: 155, column: 8, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4136, file: !3864, line: 155, column: 3)
!4176 = !DILocation(line: 155, scope: !4175)
!4177 = !DILocation(line: 155, column: 17, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4175, file: !3864, line: 155, column: 3)
!4179 = !DILocation(line: 155, column: 3, scope: !4175)
!4180 = !DILocation(line: 159, column: 3, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4136, file: !3864, line: 159, column: 3)
!4182 = !DILocation(line: 156, column: 5, scope: !4178)
!4183 = !DILocation(line: 156, column: 12, scope: !4178)
!4184 = !DILocation(line: 155, column: 30, scope: !4178)
!4185 = !DILocation(line: 155, column: 3, scope: !4178)
!4186 = distinct !{!4186, !4179, !4187, !200}
!4187 = !DILocation(line: 156, column: 14, scope: !4175)
!4188 = !DILocation(line: 159, scope: !4181)
!4189 = !DILocation(line: 158, column: 5, scope: !4136)
!4190 = !DILocalVariable(name: "k", scope: !4136, file: !3864, line: 144, type: !55)
!4191 = !DILocation(line: 159, column: 17, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4181, file: !3864, line: 159, column: 3)
!4193 = !DILocation(line: 160, column: 5, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4195, file: !3864, line: 160, column: 5)
!4195 = distinct !DILexicalBlock(scope: !4192, file: !3864, line: 159, column: 27)
!4196 = !DILocation(line: 160, scope: !4194)
!4197 = !DILocalVariable(name: "j", scope: !4136, file: !3864, line: 144, type: !55)
!4198 = !DILocation(line: 160, column: 19, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4194, file: !3864, line: 160, column: 5)
!4200 = !DILocation(line: 161, column: 11, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4199, file: !3864, line: 161, column: 11)
!4202 = !DILocation(line: 161, column: 22, scope: !4201)
!4203 = !DILocation(line: 162, column: 20, scope: !4201)
!4204 = !DILocation(line: 162, column: 14, scope: !4201)
!4205 = !DILocation(line: 162, column: 9, scope: !4201)
!4206 = !DILocation(line: 162, column: 18, scope: !4201)
!4207 = !DILocation(line: 160, column: 24, scope: !4199)
!4208 = !DILocation(line: 160, column: 5, scope: !4199)
!4209 = distinct !{!4209, !4193, !4210, !200}
!4210 = !DILocation(line: 162, column: 20, scope: !4194)
!4211 = !DILocation(line: 164, column: 22, scope: !4195)
!4212 = !DILocation(line: 164, column: 5, scope: !4195)
!4213 = !DILocation(line: 164, column: 20, scope: !4195)
!4214 = !DILocation(line: 159, column: 22, scope: !4192)
!4215 = !DILocation(line: 159, column: 3, scope: !4192)
!4216 = distinct !{!4216, !4180, !4217, !200}
!4217 = !DILocation(line: 165, column: 3, scope: !4181)
!4218 = !DILocation(line: 166, column: 1, scope: !4136)
!4219 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_unpack_sig", scope: !3864, file: !3864, line: 181, type: !4220, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!65, !47, !714, !748, !324}
!4222 = !DILocalVariable(name: "c", arg: 1, scope: !4219, file: !3864, line: 181, type: !47)
!4223 = !DILocation(line: 0, scope: !4219)
!4224 = !DILocalVariable(name: "z", arg: 2, scope: !4219, file: !3864, line: 181, type: !714)
!4225 = !DILocalVariable(name: "h", arg: 3, scope: !4219, file: !3864, line: 181, type: !748)
!4226 = !DILocalVariable(name: "sig", arg: 4, scope: !4219, file: !3864, line: 182, type: !324)
!4227 = !DILocalVariable(name: "i", scope: !4219, file: !3864, line: 183, type: !55)
!4228 = !DILocation(line: 185, column: 8, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4219, file: !3864, line: 185, column: 3)
!4230 = !DILocation(line: 185, scope: !4229)
!4231 = !DILocation(line: 185, column: 17, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4229, file: !3864, line: 185, column: 3)
!4233 = !DILocation(line: 185, column: 3, scope: !4229)
!4234 = !DILocation(line: 186, column: 12, scope: !4232)
!4235 = !DILocation(line: 186, column: 5, scope: !4232)
!4236 = !DILocation(line: 186, column: 10, scope: !4232)
!4237 = !DILocation(line: 185, column: 32, scope: !4232)
!4238 = !DILocation(line: 185, column: 3, scope: !4232)
!4239 = distinct !{!4239, !4233, !4240, !200}
!4240 = !DILocation(line: 186, column: 17, scope: !4229)
!4241 = !DILocation(line: 187, column: 7, scope: !4219)
!4242 = !DILocation(line: 189, column: 8, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4219, file: !3864, line: 189, column: 3)
!4244 = !DILocation(line: 189, scope: !4243)
!4245 = !DILocation(line: 189, column: 17, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4243, file: !3864, line: 189, column: 3)
!4247 = !DILocation(line: 189, column: 3, scope: !4243)
!4248 = !DILocation(line: 190, column: 19, scope: !4246)
!4249 = !DILocation(line: 190, column: 36, scope: !4246)
!4250 = !DILocation(line: 190, column: 32, scope: !4246)
!4251 = !DILocation(line: 190, column: 5, scope: !4246)
!4252 = !DILocation(line: 189, column: 22, scope: !4246)
!4253 = !DILocation(line: 189, column: 3, scope: !4246)
!4254 = distinct !{!4254, !4247, !4255, !200}
!4255 = !DILocation(line: 190, column: 55, scope: !4243)
!4256 = !DILocation(line: 191, column: 7, scope: !4219)
!4257 = !DILocalVariable(name: "k", scope: !4219, file: !3864, line: 183, type: !55)
!4258 = !DILocation(line: 195, column: 8, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4219, file: !3864, line: 195, column: 3)
!4260 = !DILocation(line: 195, scope: !4259)
!4261 = !DILocation(line: 195, column: 17, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4259, file: !3864, line: 195, column: 3)
!4263 = !DILocation(line: 195, column: 3, scope: !4259)
!4264 = !DILocation(line: 196, column: 5, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !3864, line: 196, column: 5)
!4266 = distinct !DILexicalBlock(scope: !4262, file: !3864, line: 195, column: 27)
!4267 = !DILocation(line: 213, column: 3, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4219, file: !3864, line: 213, column: 3)
!4269 = !DILocation(line: 196, scope: !4265)
!4270 = !DILocalVariable(name: "j", scope: !4219, file: !3864, line: 183, type: !55)
!4271 = !DILocation(line: 196, column: 19, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4265, file: !3864, line: 196, column: 5)
!4273 = !DILocation(line: 197, column: 7, scope: !4272)
!4274 = !DILocation(line: 197, column: 18, scope: !4272)
!4275 = !DILocation(line: 196, column: 24, scope: !4272)
!4276 = !DILocation(line: 196, column: 5, scope: !4272)
!4277 = distinct !{!4277, !4264, !4278, !200}
!4278 = !DILocation(line: 197, column: 20, scope: !4265)
!4279 = !DILocation(line: 199, column: 9, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4266, file: !3864, line: 199, column: 9)
!4281 = !DILocation(line: 199, column: 24, scope: !4280)
!4282 = !DILocation(line: 199, column: 28, scope: !4280)
!4283 = !DILocation(line: 199, column: 31, scope: !4280)
!4284 = !DILocation(line: 199, column: 46, scope: !4280)
!4285 = !DILocation(line: 202, column: 5, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4266, file: !3864, line: 202, column: 5)
!4287 = !DILocation(line: 202, scope: !4286)
!4288 = !DILocation(line: 202, column: 21, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4286, file: !3864, line: 202, column: 5)
!4290 = !DILocation(line: 202, column: 19, scope: !4289)
!4291 = !DILocation(line: 204, column: 13, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4293, file: !3864, line: 204, column: 11)
!4293 = distinct !DILexicalBlock(scope: !4289, file: !3864, line: 202, column: 42)
!4294 = !DILocation(line: 204, column: 17, scope: !4292)
!4295 = !DILocation(line: 204, column: 20, scope: !4292)
!4296 = !DILocation(line: 204, column: 30, scope: !4292)
!4297 = !DILocation(line: 204, column: 27, scope: !4292)
!4298 = !DILocation(line: 206, column: 15, scope: !4293)
!4299 = !DILocation(line: 206, column: 7, scope: !4293)
!4300 = !DILocation(line: 206, column: 23, scope: !4293)
!4301 = !DILocation(line: 202, column: 37, scope: !4289)
!4302 = !DILocation(line: 202, column: 5, scope: !4289)
!4303 = distinct !{!4303, !4285, !4304, !200}
!4304 = !DILocation(line: 207, column: 5, scope: !4286)
!4305 = !DILocation(line: 209, column: 9, scope: !4266)
!4306 = !DILocation(line: 195, column: 22, scope: !4262)
!4307 = !DILocation(line: 195, column: 3, scope: !4262)
!4308 = distinct !{!4308, !4263, !4309, !200}
!4309 = !DILocation(line: 210, column: 3, scope: !4259)
!4310 = !DILocation(line: 213, scope: !4268)
!4311 = !DILocation(line: 213, column: 17, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4268, file: !3864, line: 213, column: 3)
!4313 = !DILocation(line: 214, column: 9, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4312, file: !3864, line: 214, column: 9)
!4315 = !DILocation(line: 213, column: 26, scope: !4312)
!4316 = !DILocation(line: 213, column: 3, scope: !4312)
!4317 = distinct !{!4317, !4267, !4318, !200}
!4318 = !DILocation(line: 215, column: 14, scope: !4268)
!4319 = !DILocation(line: 218, column: 1, scope: !4219)
!4320 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_power2round", scope: !4321, file: !4321, line: 17, type: !4322, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4321 = !DIFile(filename: "../../../ref/rounding.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!77, !1587, !77}
!4324 = !DILocalVariable(name: "a0", arg: 1, scope: !4320, file: !4321, line: 17, type: !1587)
!4325 = !DILocation(line: 0, scope: !4320)
!4326 = !DILocalVariable(name: "a", arg: 2, scope: !4320, file: !4321, line: 17, type: !77)
!4327 = !DILocation(line: 20, column: 26, scope: !4320)
!4328 = !DILocation(line: 20, column: 31, scope: !4320)
!4329 = !DILocalVariable(name: "a1", scope: !4320, file: !4321, line: 18, type: !77)
!4330 = !DILocation(line: 21, column: 17, scope: !4320)
!4331 = !DILocation(line: 21, column: 11, scope: !4320)
!4332 = !DILocation(line: 21, column: 7, scope: !4320)
!4333 = !DILocation(line: 22, column: 3, scope: !4320)
!4334 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_decompose", scope: !4321, file: !4321, line: 39, type: !4322, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4335 = !DILocalVariable(name: "a0", arg: 1, scope: !4334, file: !4321, line: 39, type: !1587)
!4336 = !DILocation(line: 0, scope: !4334)
!4337 = !DILocalVariable(name: "a", arg: 2, scope: !4334, file: !4321, line: 39, type: !77)
!4338 = !DILocation(line: 42, column: 12, scope: !4334)
!4339 = !DILocation(line: 42, column: 19, scope: !4334)
!4340 = !DILocalVariable(name: "a1", scope: !4334, file: !4321, line: 40, type: !77)
!4341 = !DILocation(line: 44, column: 12, scope: !4334)
!4342 = !DILocation(line: 44, column: 18, scope: !4334)
!4343 = !DILocation(line: 44, column: 31, scope: !4334)
!4344 = !DILocation(line: 45, column: 6, scope: !4334)
!4345 = !DILocation(line: 51, column: 18, scope: !4334)
!4346 = !DILocation(line: 51, column: 12, scope: !4334)
!4347 = !DILocation(line: 52, column: 27, scope: !4334)
!4348 = !DILocation(line: 52, column: 34, scope: !4334)
!4349 = !DILocation(line: 52, column: 7, scope: !4334)
!4350 = !DILocation(line: 53, column: 3, scope: !4334)
!4351 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_make_hint", scope: !4321, file: !4321, line: 67, type: !4352, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!55, !77, !77}
!4354 = !DILocalVariable(name: "a0", arg: 1, scope: !4351, file: !4321, line: 67, type: !77)
!4355 = !DILocation(line: 0, scope: !4351)
!4356 = !DILocalVariable(name: "a1", arg: 2, scope: !4351, file: !4321, line: 67, type: !77)
!4357 = !DILocation(line: 68, column: 18, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4351, file: !4321, line: 68, column: 6)
!4359 = !DILocation(line: 72, column: 1, scope: !4351)
!4360 = distinct !DISubprogram(name: "pqcrystals_dilithium5_ref_use_hint", scope: !4321, file: !4321, line: 84, type: !4361, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !109, retainedNodes: !64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!77, !77, !55}
!4363 = !DILocalVariable(name: "a", arg: 1, scope: !4360, file: !4321, line: 84, type: !77)
!4364 = !DILocation(line: 0, scope: !4360)
!4365 = !DILocalVariable(name: "hint", arg: 2, scope: !4360, file: !4321, line: 84, type: !55)
!4366 = !DILocalVariable(name: "a0", scope: !4360, file: !4321, line: 85, type: !77)
!4367 = !DILocation(line: 87, column: 8, scope: !4360)
!4368 = !DILocalVariable(name: "a1", scope: !4360, file: !4321, line: 85, type: !77)
!4369 = !DILocation(line: 88, column: 11, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4360, file: !4321, line: 88, column: 6)
!4371 = !DILocation(line: 92, column: 6, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4360, file: !4321, line: 92, column: 6)
!4373 = !DILocation(line: 92, column: 9, scope: !4372)
!4374 = !DILocation(line: 93, column: 16, scope: !4372)
!4375 = !DILocation(line: 93, column: 21, scope: !4372)
!4376 = !DILocation(line: 93, column: 5, scope: !4372)
!4377 = !DILocation(line: 95, column: 16, scope: !4372)
!4378 = !DILocation(line: 95, column: 21, scope: !4372)
!4379 = !DILocation(line: 95, column: 5, scope: !4372)
!4380 = !DILocation(line: 102, column: 1, scope: !4360)
!4381 = distinct !DISubprogram(name: "dilithium_memset", scope: !4382, file: !4382, line: 3, type: !4383, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !64)
!4382 = !DIFile(filename: "../mem.c", directory: "/home/siddhesh/Desktop/Dilithium-LLVM/llvm/llvm-gen/build")
!4383 = !DISubroutineType(types: !4384)
!4384 = !{null, !4385, !48, !103}
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!4386 = !DILocalVariable(name: "dst", arg: 1, scope: !4381, file: !4382, line: 3, type: !4385)
!4387 = !DILocation(line: 0, scope: !4381)
!4388 = !DILocalVariable(name: "val", arg: 2, scope: !4381, file: !4382, line: 3, type: !48)
!4389 = !DILocalVariable(name: "len", arg: 3, scope: !4381, file: !4382, line: 3, type: !103)
!4390 = !DILocalVariable(name: "d", scope: !4381, file: !4382, line: 5, type: !47)
!4391 = !DILocalVariable(name: "i", scope: !4392, file: !4382, line: 7, type: !103)
!4392 = distinct !DILexicalBlock(scope: !4381, file: !4382, line: 7, column: 5)
!4393 = !DILocation(line: 0, scope: !4392)
!4394 = !DILocation(line: 7, column: 10, scope: !4392)
!4395 = !DILocation(line: 7, scope: !4392)
!4396 = !DILocation(line: 7, column: 28, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4392, file: !4382, line: 7, column: 5)
!4398 = !DILocation(line: 7, column: 5, scope: !4392)
!4399 = !DILocation(line: 8, column: 9, scope: !4397)
!4400 = !DILocation(line: 8, column: 14, scope: !4397)
!4401 = !DILocation(line: 7, column: 36, scope: !4397)
!4402 = !DILocation(line: 7, column: 5, scope: !4397)
!4403 = distinct !{!4403, !4398, !4404, !200}
!4404 = !DILocation(line: 8, column: 16, scope: !4392)
!4405 = !DILocation(line: 9, column: 1, scope: !4381)
!4406 = distinct !DISubprogram(name: "dilithium_memcpy", scope: !4382, file: !4382, line: 11, type: !4407, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{null, !4385, !4409, !103}
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 32)
!4410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4411 = !DILocalVariable(name: "dst", arg: 1, scope: !4406, file: !4382, line: 11, type: !4385)
!4412 = !DILocation(line: 0, scope: !4406)
!4413 = !DILocalVariable(name: "src", arg: 2, scope: !4406, file: !4382, line: 11, type: !4409)
!4414 = !DILocalVariable(name: "len", arg: 3, scope: !4406, file: !4382, line: 11, type: !103)
!4415 = !DILocalVariable(name: "d", scope: !4406, file: !4382, line: 13, type: !47)
!4416 = !DILocalVariable(name: "s", scope: !4406, file: !4382, line: 14, type: !324)
!4417 = !DILocalVariable(name: "i", scope: !4418, file: !4382, line: 16, type: !103)
!4418 = distinct !DILexicalBlock(scope: !4406, file: !4382, line: 16, column: 5)
!4419 = !DILocation(line: 0, scope: !4418)
!4420 = !DILocation(line: 16, column: 10, scope: !4418)
!4421 = !DILocation(line: 16, scope: !4418)
!4422 = !DILocation(line: 16, column: 28, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4418, file: !4382, line: 16, column: 5)
!4424 = !DILocation(line: 16, column: 5, scope: !4418)
!4425 = !DILocation(line: 17, column: 16, scope: !4423)
!4426 = !DILocation(line: 17, column: 9, scope: !4423)
!4427 = !DILocation(line: 17, column: 14, scope: !4423)
!4428 = !DILocation(line: 16, column: 36, scope: !4423)
!4429 = !DILocation(line: 16, column: 5, scope: !4423)
!4430 = distinct !{!4430, !4424, !4431, !200}
!4431 = !DILocation(line: 17, column: 19, scope: !4418)
!4432 = !DILocation(line: 18, column: 1, scope: !4406)

.class public final Lrr2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lpq2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpq2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrr2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lrr2;->b:Lpq2;

    return-void
.end method

.method public static a(Lkd3;)Z
    .locals 2

    .line 1
    sget-object v0, Lqr2;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final b()Lkd3;
    .locals 14

    .line 1
    sget-object v0, Lkd3;->i:Lkd3;

    sget-object v1, Lkd3;->j:Lkd3;

    sget-object v2, Lkd3;->g:Lkd3;

    sget-object v3, Lkd3;->h:Lkd3;

    sget-object v4, Lkd3;->k:Lkd3;

    sget-object v5, Lkd3;->f:Lkd3;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lrr2;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v8, "lib"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const/16 v8, 0x1399

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez v7, :cond_1

    .line 3
    iget-object v6, p0, Lrr2;->b:Lpq2;

    if-eqz v6, :cond_0

    const-string v7, "No lib/"

    .line 4
    invoke-virtual {v6, v8, v7}, Lpq2;->e(ILjava/lang/String;)Le45;

    :cond_0
    :goto_0
    move-object v6, v4

    goto/16 :goto_4

    .line 5
    :cond_1
    new-instance v7, Lnu2;

    const/4 v11, 0x2

    const-string v12, ".*\\.so$"

    .line 6
    invoke-static {v12, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-direct {v7, v12}, Lnu2;-><init>(Ljava/util/regex/Pattern;)V

    .line 7
    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 8
    array-length v7, v6

    if-nez v7, :cond_2

    goto/16 :goto_3

    .line 9
    :cond_2
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    aget-object v6, v6, v9

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x14

    :try_start_1
    new-array v8, v6, [B

    .line 10
    invoke-virtual {v7, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    if-ne v12, v6, :cond_8

    new-array v6, v11, [B

    aput-byte v9, v6, v9

    const/4 v12, 0x1

    aput-byte v9, v6, v12

    const/4 v13, 0x5

    .line 11
    aget-byte v13, v8, v13

    if-ne v13, v11, :cond_3

    .line 12
    invoke-virtual {p0, v8, v10}, Lrr2;->c([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_3
    const/16 v11, 0x13

    .line 14
    :try_start_3
    aget-byte v11, v8, v11

    aput-byte v11, v6, v9

    const/16 v11, 0x12

    .line 15
    aget-byte v11, v8, v11

    aput-byte v11, v6, v12

    .line 16
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 17
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    const/4 v11, 0x3

    if-eq v6, v11, :cond_7

    const/16 v11, 0x28

    if-eq v6, v11, :cond_6

    const/16 v11, 0x3e

    if-eq v6, v11, :cond_5

    const/16 v11, 0xb7

    if-eq v6, v11, :cond_4

    .line 18
    invoke-virtual {p0, v8, v10}, Lrr2;->c([BLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    move-object v6, v0

    goto :goto_4

    .line 21
    :cond_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    move-object v6, v1

    goto :goto_4

    .line 22
    :cond_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    move-object v6, v2

    goto :goto_4

    .line 23
    :cond_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    move-object v6, v3

    goto :goto_4

    .line 24
    :cond_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v6

    .line 25
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    .line 26
    :try_start_6
    sget-object v8, Lt43;->a:Ls43;

    invoke-virtual {v8, v6, v7}, Ls43;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 27
    :goto_1
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v6

    .line 28
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v10, v6}, Lrr2;->c([BLjava/lang/String;)V

    :goto_2
    move-object v6, v5

    goto :goto_4

    .line 29
    :cond_9
    :goto_3
    iget-object v6, p0, Lrr2;->b:Lpq2;

    if-eqz v6, :cond_0

    const-string v7, "No .so"

    .line 30
    invoke-virtual {v6, v8, v7}, Lpq2;->e(ILjava/lang/String;)Le45;

    goto/16 :goto_0

    :goto_4
    if-ne v6, v4, :cond_14

    .line 31
    new-instance v4, Ljava/util/HashSet;

    const-string v6, "i686"

    const-string v7, "armv71"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v8, "os.arch"

    .line 32
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 33
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    const-wide/16 v11, 0x0

    const/16 v4, 0x7e8

    .line 34
    :try_start_7
    const-class v8, Landroid/os/Build;

    const-string v13, "SUPPORTED_ABIS"

    invoke-virtual {v8, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 35
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 36
    array-length v13, v8

    if-lez v13, :cond_b

    .line 37
    aget-object v8, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :catch_1
    move-exception v8

    .line 38
    iget-object v9, p0, Lrr2;->b:Lpq2;

    if-eqz v9, :cond_b

    .line 39
    invoke-virtual {v9, v4, v11, v12, v8}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    goto :goto_5

    :catch_2
    move-exception v8

    .line 40
    iget-object v9, p0, Lrr2;->b:Lpq2;

    if-eqz v9, :cond_b

    .line 41
    invoke-virtual {v9, v4, v11, v12, v8}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    .line 42
    :cond_b
    :goto_5
    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v8, :cond_c

    goto :goto_6

    .line 43
    :cond_c
    sget-object v8, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 44
    :goto_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v0, "Empty dev arch"

    .line 45
    invoke-virtual {p0, v10, v0}, Lrr2;->c([BLjava/lang/String;)V

    :goto_7
    move-object v0, v5

    goto :goto_a

    .line 46
    :cond_d
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "x86"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_9

    :cond_e
    const-string v3, "x86_64"

    .line 47
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v0, v1

    goto :goto_a

    :cond_f
    const-string v1, "arm64-v8a"

    .line 48
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_a

    :cond_10
    const-string v0, "armeabi-v7a"

    .line 49
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_8

    .line 50
    :cond_11
    invoke-virtual {p0, v10, v8}, Lrr2;->c([BLjava/lang/String;)V

    goto :goto_7

    :cond_12
    :goto_8
    move-object v0, v2

    goto :goto_a

    :cond_13
    :goto_9
    move-object v0, v3

    goto :goto_a

    :cond_14
    move-object v0, v6

    .line 51
    :goto_a
    iget-object v1, p0, Lrr2;->b:Lpq2;

    if-eqz v1, :cond_15

    const/16 v2, 0x139a

    .line 52
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lpq2;->e(ILjava/lang/String;)Le45;

    :cond_15
    return-object v0
.end method

.method public final c([BLjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrr2;->b:Lpq2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "os.arch:"

    .line 2
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "os.arch"

    .line 3
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "SUPPORTED_ABIS"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "supported_abis:"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    const-string v2, "CPU_ABI:"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v3, "CPU_ABI2:"

    invoke-static {v0, v2, v1, v3}, Ljo;->H(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string v2, "ELF:"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "dbg:"

    .line 11
    invoke-static {v0, p1, p2, v1}, Ljo;->H(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-object p1, p0, Lrr2;->b:Lpq2;

    const/16 p2, 0xfa7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lpq2;->e(ILjava/lang/String;)Le45;

    return-void
.end method

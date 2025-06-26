.class public final Les2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Ljava/lang/String;

.field public final d:Lsr2;

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Les2;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkd3;Lsr2;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Les2;->e:Z

    .line 3
    iput-object p1, p0, Les2;->a:Landroid/content/Context;

    .line 4
    iget p2, p2, Lkd3;->e:I

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Les2;->c:Ljava/lang/String;

    const-string p2, "pcvmspf"

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Les2;->b:Landroid/content/SharedPreferences;

    .line 7
    iput-object p3, p0, Les2;->d:Lsr2;

    .line 8
    iput-boolean p4, p0, Les2;->e:Z

    return-void
.end method

.method public static f(Lmd3;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lpd3;->J()Lpd3$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lmd3;->y()Lpd3;

    move-result-object v1

    invoke-virtual {v1}, Lpd3;->E()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-boolean v2, v0, Ls63$b;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 5
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 6
    :cond_0
    iget-object v2, v0, Ls63$b;->f:Ls63;

    check-cast v2, Lpd3;

    invoke-static {v2, v1}, Lpd3;->y(Lpd3;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lmd3;->y()Lpd3;

    move-result-object v1

    invoke-virtual {v1}, Lpd3;->F()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-boolean v2, v0, Ls63$b;->g:Z

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 10
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 11
    :cond_1
    iget-object v2, v0, Ls63$b;->f:Ls63;

    check-cast v2, Lpd3;

    invoke-static {v2, v1}, Lpd3;->B(Lpd3;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lmd3;->y()Lpd3;

    move-result-object v1

    invoke-virtual {v1}, Lpd3;->H()J

    move-result-wide v1

    .line 13
    iget-boolean v4, v0, Ls63$b;->g:Z

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 15
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 16
    :cond_2
    iget-object v4, v0, Ls63$b;->f:Ls63;

    check-cast v4, Lpd3;

    invoke-static {v4, v1, v2}, Lpd3;->A(Lpd3;J)V

    .line 17
    invoke-virtual {p0}, Lmd3;->y()Lpd3;

    move-result-object v1

    invoke-virtual {v1}, Lpd3;->I()J

    move-result-wide v1

    .line 18
    iget-boolean v4, v0, Ls63$b;->g:Z

    if-eqz v4, :cond_3

    .line 19
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 20
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 21
    :cond_3
    iget-object v4, v0, Ls63$b;->f:Ls63;

    check-cast v4, Lpd3;

    invoke-static {v4, v1, v2}, Lpd3;->D(Lpd3;J)V

    .line 22
    invoke-virtual {p0}, Lmd3;->y()Lpd3;

    move-result-object p0

    invoke-virtual {p0}, Lpd3;->G()J

    move-result-wide v1

    .line 23
    iget-boolean p0, v0, Ls63$b;->g:Z

    if-eqz p0, :cond_4

    .line 24
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 25
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 26
    :cond_4
    iget-object p0, v0, Ls63$b;->f:Ls63;

    check-cast p0, Lpd3;

    invoke-static {p0, v1, v2}, Lpd3;->x(Lpd3;J)V

    .line 27
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p0

    check-cast p0, Ls63;

    check-cast p0, Lpd3;

    .line 28
    invoke-virtual {p0}, Lb53;->f()Lk53;

    move-result-object p0

    invoke-virtual {p0}, Lk53;->d()[B

    move-result-object p0

    invoke-static {p0}, Le20;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Les2;->d:Lsr2;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lsr2;->a(IJ)V

    :cond_0
    return-void
.end method

.method public final b(Lmd3;)Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Les2;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lmd3;->y()Lpd3;

    move-result-object v3

    invoke-virtual {v3}, Lpd3;->E()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0, v3}, Les2;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/io/File;

    const-string v5, "pcbc"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lmd3;->A()Lk53;

    move-result-object v3

    invoke-virtual {v3}, Lk53;->d()[B

    move-result-object v3

    invoke-static {v4, v3}, Lc50;->x2(Ljava/io/File;[B)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 p1, 0xfb4

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Les2;->a(IJ)V

    const/4 p1, 0x0

    .line 8
    monitor-exit v2

    return p1

    .line 9
    :cond_0
    invoke-static {p1}, Les2;->f(Lmd3;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v3, p0, Les2;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 11
    invoke-virtual {p0}, Les2;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0x1397

    .line 13
    invoke-virtual {p0, v3, v0, v1}, Les2;->a(IJ)V

    goto :goto_0

    :cond_1
    const/16 v3, 0xfb5

    .line 14
    invoke-virtual {p0, v3, v0, v1}, Les2;->a(IJ)V

    .line 15
    :goto_0
    monitor-exit v2

    return p1

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lmd3;Ltp2;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2
    sget-object v4, Les2;->f:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x1

    .line 3
    :try_start_0
    invoke-virtual {v1, v5}, Les2;->g(I)Lpd3;

    move-result-object v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Lmd3;->y()Lpd3;

    move-result-object v7

    invoke-virtual {v7}, Lpd3;->E()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v6}, Lpd3;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v0, 0xfae

    .line 6
    invoke-virtual {v1, v0, v2, v3}, Les2;->a(IJ)V

    .line 7
    monitor-exit v4

    return v8

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 9
    invoke-virtual {v1, v7}, Les2;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    const/16 v12, 0xfaf

    if-eqz v11, :cond_4

    const/16 v11, 0xfb7

    .line 11
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "1"

    goto :goto_0

    :cond_1
    const-string v13, "0"

    .line 12
    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "1"

    goto :goto_1

    :cond_2
    const-string v6, "0"

    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "d:"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",f:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 13
    iget-object v13, v1, Les2;->d:Lsr2;

    if-eqz v13, :cond_3

    .line 14
    invoke-interface {v13, v11, v9, v10, v6}, Lsr2;->b(IJLjava/lang/String;)V

    .line 15
    :cond_3
    invoke-virtual {v1, v12, v9, v10}, Les2;->a(IJ)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_8

    const/16 v11, 0xfb8

    const-string v13, "cw:"

    .line 17
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "1"

    goto :goto_2

    :cond_5
    const-string v6, "0"

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v13, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 18
    :goto_3
    iget-object v13, v1, Les2;->d:Lsr2;

    if-eqz v13, :cond_7

    .line 19
    invoke-interface {v13, v11, v9, v10, v6}, Lsr2;->b(IJLjava/lang/String;)V

    .line 20
    :cond_7
    invoke-virtual {v1, v12, v9, v10}, Les2;->a(IJ)V

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-nez v6, :cond_9

    .line 21
    monitor-exit v4

    return v8

    .line 22
    :cond_9
    invoke-virtual {v1, v7}, Les2;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 23
    new-instance v7, Ljava/io/File;

    const-string v9, "pcam.jar"

    invoke-direct {v7, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    new-instance v9, Ljava/io/File;

    const-string v10, "pcbc"

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lmd3;->z()Lk53;

    move-result-object v10

    invoke-virtual {v10}, Lk53;->d()[B

    move-result-object v10

    invoke-static {v7, v10}, Lc50;->x2(Ljava/io/File;[B)Z

    move-result v10

    if-nez v10, :cond_a

    const/16 v0, 0xfb0

    .line 26
    invoke-virtual {v1, v0, v2, v3}, Les2;->a(IJ)V

    .line 27
    monitor-exit v4

    return v8

    .line 28
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lmd3;->A()Lk53;

    move-result-object v10

    invoke-virtual {v10}, Lk53;->d()[B

    move-result-object v10

    invoke-static {v9, v10}, Lc50;->x2(Ljava/io/File;[B)Z

    move-result v9

    if-nez v9, :cond_b

    const/16 v0, 0xfb1

    .line 29
    invoke-virtual {v1, v0, v2, v3}, Les2;->a(IJ)V

    .line 30
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v8

    :cond_b
    if-eqz v0, :cond_c

    .line 31
    :try_start_1
    iget-object v0, v0, Ltp2;->a:Loq2;

    invoke-virtual {v0, v7}, Loq2;->a(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catch_0
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_c

    const/16 v0, 0xfb2

    .line 32
    :try_start_2
    invoke-virtual {v1, v0, v2, v3}, Les2;->a(IJ)V

    .line 33
    invoke-static {v6}, Lc50;->S3(Ljava/io/File;)Z

    .line 34
    monitor-exit v4

    return v8

    .line 35
    :cond_c
    invoke-static/range {p1 .. p1}, Les2;->f(Lmd3;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 37
    iget-object v9, v1, Les2;->b:Landroid/content/SharedPreferences;

    invoke-virtual/range {p0 .. p0}, Les2;->e()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 38
    iget-object v10, v1, Les2;->b:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 39
    invoke-virtual/range {p0 .. p0}, Les2;->e()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v9, :cond_d

    .line 40
    invoke-virtual/range {p0 .. p0}, Les2;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    :cond_d
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v9, 0xfb3

    .line 42
    invoke-virtual {v1, v9, v6, v7}, Les2;->a(IJ)V

    :cond_e
    if-nez v0, :cond_f

    .line 43
    monitor-exit v4

    return v8

    .line 44
    :cond_f
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 45
    invoke-virtual {v1, v5}, Les2;->g(I)Lpd3;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 46
    invoke-virtual {v6}, Lpd3;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    const/4 v6, 0x2

    .line 47
    invoke-virtual {v1, v6}, Les2;->g(I)Lpd3;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 48
    invoke-virtual {v6}, Lpd3;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_11
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Les2;->a:Landroid/content/Context;

    const-string v9, "pccache"

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    iget-object v9, v1, Les2;->c:Ljava/lang/String;

    invoke-direct {v6, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    :goto_7
    if-ge v8, v7, :cond_13

    aget-object v9, v6, v8

    .line 51
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 52
    invoke-static {v9}, Lc50;->S3(Ljava/io/File;)Z

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_13
    const/16 v0, 0x1396

    .line 53
    invoke-virtual {v1, v0, v2, v3}, Les2;->a(IJ)V

    .line 54
    monitor-exit v4

    return v5

    :catchall_0
    move-exception v0

    .line 55
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    const-string v0, "FBAMTD"

    .line 1
    iget-object v1, p0, Les2;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    const-string v0, "LATMTD"

    .line 1
    iget-object v1, p0, Les2;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final g(I)Lpd3;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Les2;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Les2;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2
    iget-object p1, p0, Les2;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Les2;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 3
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    :try_start_0
    invoke-static {p1}, Le20;->c(Ljava/lang/String;)[B

    move-result-object p1

    .line 5
    sget-object v3, Lk53;->f:Lk53;

    .line 6
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Lk53;->M([BII)Lk53;

    move-result-object p1

    .line 7
    iget-boolean v3, p0, Les2;->e:Z

    if-eqz v3, :cond_3

    .line 8
    invoke-static {}, Le63;->a()Le63;

    move-result-object v3

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {}, Le63;->b()Le63;

    move-result-object v3

    .line 10
    :goto_1
    invoke-static {p1, v3}, Lpd3;->z(Lk53;Le63;)Lpd3;

    move-result-object p1
    :try_end_0
    .catch Le73; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/16 p1, 0x7ed

    .line 11
    invoke-virtual {p0, p1, v1, v2}, Les2;->a(IJ)V

    :catch_1
    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Les2;->a:Landroid/content/Context;

    const-string v1, "pccache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Les2;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

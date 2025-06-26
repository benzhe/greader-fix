.class public final Lhs2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lgs2;

.field public final c:Lpq2;

.field public final d:Loq2;

.field public e:Las2;

.field public final f:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhs2;->g:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgs2;Lpq2;Loq2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhs2;->f:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lhs2;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lhs2;->b:Lgs2;

    .line 5
    iput-object p3, p0, Lhs2;->c:Lpq2;

    .line 6
    iput-object p4, p0, Lhs2;->d:Loq2;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lzr2;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfs2;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lzr2;->a:Lpd3;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lpd3;->E()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lhs2;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 4
    monitor-exit p0

    return-object v2

    :cond_0
    const/16 v2, 0x7ea

    .line 5
    :try_start_1
    iget-object v3, p0, Lhs2;->d:Loq2;

    .line 6
    iget-object v4, p1, Lzr2;->b:Ljava/io/File;

    .line 7
    invoke-virtual {v3, v4}, Loq2;->a(Ljava/io/File;)Z

    move-result v3
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 8
    :try_start_2
    iget-object v2, p1, Lzr2;->c:Ljava/io/File;

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_1
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 12
    iget-object p1, p1, Lzr2;->b:Ljava/io/File;

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lhs2;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, p1, v2, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string p1, "com.google.ccc.abuse.droidguard.DroidGuard"

    .line 16
    invoke-virtual {v3, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 19
    :goto_0
    :try_start_4
    new-instance v0, Lfs2;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1, p1}, Lfs2;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :cond_2
    :try_start_5
    new-instance p1, Lfs2;

    const-string v0, "VM did not pass signature verification"

    invoke-direct {p1, v2, v0}, Lfs2;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    move-exception p1

    .line 21
    :try_start_6
    new-instance v0, Lfs2;

    invoke-direct {v0, v2, p1}, Lfs2;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 22
    :cond_3
    new-instance p1, Lfs2;

    const/16 v0, 0xfaa

    const-string v1, "mc"

    invoke-direct {p1, v0, v1}, Lfs2;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/Class;Lzr2;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lzr2;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfs2;
        }
    .end annotation

    const/4 v0, 0x6

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, [B

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/Object;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Landroid/os/Bundle;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lhs2;->a:Landroid/content/Context;

    aput-object v1, v0, v3

    const-string v1, "msa-r"

    aput-object v1, v0, v4

    .line 4
    iget-object v1, p2, Lzr2;->e:[B

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p2, Lzr2;->d:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 6
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-static {v3}, Lk53;->A(Ljava/io/InputStream;)Lk53;

    move-result-object v1

    invoke-virtual {v1}, Lk53;->d()[B

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v2, :cond_0

    .line 9
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 10
    :catch_1
    :cond_0
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_2
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    .line 11
    :try_start_6
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_3
    :cond_1
    move-object v1, v2

    .line 12
    :catch_4
    :goto_2
    :try_start_7
    iput-object v1, p2, Lzr2;->e:[B

    .line 13
    :cond_2
    iget-object p2, p2, Lzr2;->e:[B

    if-nez p2, :cond_3

    move-object p2, v2

    goto :goto_3

    .line 14
    :cond_3
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    :goto_3
    aput-object p2, v0, v5

    aput-object v2, v0, v6

    .line 15
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    aput-object p2, v0, v7

    .line 16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v8

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    .line 18
    new-instance p2, Lfs2;

    const/16 v0, 0x7d4

    invoke-direct {p2, v0, p1}, Lfs2;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method public final c()Lvq2;
    .locals 2

    .line 1
    iget-object v0, p0, Lhs2;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lhs2;->e:Las2;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Lzr2;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lhs2;->a(Lzr2;)Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v2, p1}, Lhs2;->b(Ljava/lang/Class;Lzr2;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    new-instance v3, Las2;

    iget-object v4, p0, Lhs2;->b:Lgs2;

    iget-object v5, p0, Lhs2;->c:Lpq2;

    invoke-direct {v3, v2, p1, v4, v5}, Las2;-><init>(Ljava/lang/Object;Lzr2;Lgs2;Lpq2;)V

    .line 5
    invoke-virtual {v3}, Las2;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v3}, Las2;->d()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lhs2;->f:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Lfs2; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    iget-object v2, p0, Lhs2;->e:Las2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 9
    :try_start_2
    invoke-virtual {v2}, Las2;->a()V
    :try_end_2
    .catch Lfs2; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    :try_start_3
    iget-object v4, p0, Lhs2;->c:Lpq2;

    .line 11
    iget v5, v2, Lfs2;->e:I

    const-wide/16 v6, -0x1

    .line 12
    invoke-virtual {v4, v5, v6, v7, v2}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    .line 13
    :cond_0
    :goto_0
    iput-object v3, p0, Lhs2;->e:Las2;

    .line 14
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :try_start_4
    iget-object p1, p0, Lhs2;->c:Lpq2;

    const/16 v2, 0xbb8

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 17
    invoke-virtual {p1, v2, v3, v4}, Lpq2;->f(IJ)Le45;
    :try_end_4
    .catch Lfs2; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catchall_0
    move-exception v2

    .line 18
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    .line 19
    :cond_1
    new-instance v2, Lfs2;

    const/16 v3, 0xfa1

    const/16 v4, 0xf

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ci: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lfs2;-><init>(ILjava/lang/String;)V

    throw v2

    .line 20
    :cond_2
    new-instance p1, Lfs2;

    const/16 v2, 0xfa0

    const-string v3, "init failed"

    invoke-direct {p1, v2, v3}, Lfs2;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_6
    .catch Lfs2; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p1

    .line 21
    iget-object v2, p0, Lhs2;->c:Lpq2;

    const/16 v3, 0xfaa

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 23
    invoke-virtual {v2, v3, v4, v5, p1}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    return-void

    :catch_2
    move-exception p1

    .line 24
    iget-object v2, p0, Lhs2;->c:Lpq2;

    .line 25
    iget v3, p1, Lfs2;->e:I

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 27
    invoke-virtual {v2, v3, v4, v5, p1}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    return-void
.end method

.class public abstract Lsy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr11;


# static fields
.field public static a:Lsy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Lhg0;I)Lsy0;
    .locals 1

    .line 1
    invoke-static {p0, p2}, Lsy0;->z(Landroid/content/Context;I)Lsy0;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lsy0;->j()Lnq1;

    move-result-object p2

    .line 3
    iget-object p2, p2, Lnq1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static z(Landroid/content/Context;I)Lsy0;
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    const-class v8, Lsy0;

    monitor-enter v8

    .line 2
    :try_start_0
    sget-object v1, Lsy0;->a:Lsy0;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v8

    return-object v1

    .line 4
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbar;

    const v3, 0xc365f90

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    move/from16 v4, p1

    .line 6
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbar;-><init>(IIZZZ)V

    .line 7
    new-instance v1, Lmz0;

    invoke-direct {v1}, Lmz0;-><init>()V

    .line 8
    monitor-enter v8

    .line 9
    :try_start_1
    sget-object v2, Lsy0;->a:Lsy0;

    if-nez v2, :cond_3

    .line 10
    new-instance v2, Lry0$a;

    invoke-direct {v2}, Lry0$a;-><init>()V

    .line 11
    iput-object v9, v2, Lry0$a;->a:Lcom/google/android/gms/internal/ads/zzbar;

    .line 12
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lry0$a;->c:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    iput-object v3, v2, Lry0$a;->b:Landroid/content/Context;

    .line 14
    new-instance v11, Lry0;

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Lry0;-><init>(Lry0$a;Lty0;)V

    .line 15
    new-instance v12, Lu01;

    invoke-direct {v12, v1}, Lu01;-><init>(Lu01$a;)V

    .line 16
    const-class v1, Lry0;

    invoke-static {v11, v1}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 17
    const-class v1, Lu01;

    invoke-static {v12, v1}, Lc50;->l2(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 18
    new-instance v13, Lkp2;

    invoke-direct {v13}, Lkp2;-><init>()V

    .line 19
    new-instance v14, Le11;

    invoke-direct {v14}, Le11;-><init>()V

    .line 20
    new-instance v15, Lcm2;

    invoke-direct {v15}, Lcm2;-><init>()V

    .line 21
    new-instance v1, Lpz0;

    const/16 v16, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lpz0;-><init>(Lry0;Lu01;Lkp2;Le11;Lcm2;Loz0;)V

    .line 22
    sput-object v1, Lsy0;->a:Lsy0;

    .line 23
    invoke-static/range {p0 .. p0}, Ly40;->a(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    invoke-virtual {v1, v0, v9}, Lor0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lio3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio3;->b(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzan(Landroid/content/Context;)Z

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzao(Landroid/content/Context;)Z

    .line 28
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/util/zzb;->zzam(Landroid/content/Context;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lvm3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lvm3;->c(Landroid/content/Context;)V

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlq()Lcom/google/android/gms/ads/internal/util/zzbv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzbv;->initialize(Landroid/content/Context;)V

    .line 31
    invoke-static/range {p0 .. p0}, Lxp0;->a(Landroid/content/Context;)Lxp0;

    .line 32
    sget-object v1, Ly40;->M3:Lo40;

    .line 33
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 34
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ly40;->m0:Lo40;

    .line 36
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 37
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 39
    new-instance v10, Lny1;

    new-instance v4, Lep3;

    new-instance v1, Lip3;

    invoke-direct {v1, v0}, Lip3;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v1}, Lep3;-><init>(Lip3;)V

    new-instance v5, Lxx1;

    new-instance v1, Lvx1;

    invoke-direct {v1, v0}, Lvx1;-><init>(Landroid/content/Context;)V

    sget-object v2, Lsy0;->a:Lsy0;

    .line 40
    invoke-virtual {v2}, Lsy0;->h()Lzv2;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lxx1;-><init>(Lvx1;Lzv2;)V

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzj;->zzzr()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lsy0;->a:Lsy0;

    .line 42
    invoke-virtual {v1}, Lsy0;->d()Lpp2;

    move-result-object v7

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v9

    invoke-direct/range {v1 .. v7}, Lny1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lep3;Lxx1;Ljava/lang/String;Lpp2;)V

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    invoke-virtual {v0}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    iget-object v1, v10, Lny1;->c:Lxx1;

    new-instance v2, Lmy1;

    invoke-direct {v2, v10, v0}, Lmy1;-><init>(Lny1;Z)V

    invoke-virtual {v1, v2}, Lxx1;->a(Ljo2;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Error in offline signals database startup: "

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, Lis0;->zzex(Ljava/lang/String;)V

    .line 46
    :cond_3
    :goto_2
    sget-object v0, Lsy0;->a:Lsy0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :catchall_1
    move-exception v0

    .line 47
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;I)Lvz0;
    .locals 1

    .line 1
    new-instance v0, Lof2;

    invoke-direct {v0, p1, p2}, Lof2;-><init>(Lcom/google/android/gms/internal/ads/zzauj;I)V

    invoke-virtual {p0, v0}, Lsy0;->c(Lof2;)Lvz0;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Lof2;)Lvz0;
.end method

.method public abstract d()Lpp2;
.end method

.method public abstract e()Ljava/util/concurrent/Executor;
.end method

.method public abstract f()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract g()Ljava/util/concurrent/Executor;
.end method

.method public abstract h()Lzv2;
.end method

.method public abstract i()Lkc1;
.end method

.method public abstract j()Lnq1;
.end method

.method public abstract k()La11;
.end method

.method public abstract l()Lc01;
.end method

.method public abstract m()Lg01;
.end method

.method public abstract n()Lzz0;
.end method

.method public abstract o()Luz0;
.end method

.method public abstract p()La01;
.end method

.method public abstract q()Lk01;
.end method

.method public abstract r()Ll01;
.end method

.method public abstract s()Lrz0;
.end method

.method public abstract t()Lp01;
.end method

.method public abstract u()Ln01;
.end method

.method public abstract v()Lt01;
.end method

.method public abstract w()Ll72;
.end method

.method public abstract x()Lcz1;
.end method

.method public abstract y()Lyl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyl2<",
            "Lio1;",
            ">;"
        }
    .end annotation
.end method

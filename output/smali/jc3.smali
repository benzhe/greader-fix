.class public final Ljc3;
.super Lid3;
.source "SourceFile"


# static fields
.field public static final n:Lld3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lld3<",
            "Lj32;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final l:Landroid/content/Context;

.field public m:Lfh1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lld3;

    invoke-direct {v0}, Lld3;-><init>()V

    sput-object v0, Ljc3;->n:Lld3;

    return-void
.end method

.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;ILandroid/content/Context;Lfh1;)V
    .locals 7

    const/16 v6, 0x1b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lid3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ljc3;->m:Lfh1;

    .line 3
    iput-object p6, p0, Ljc3;->l:Landroid/content/Context;

    .line 4
    iput-object p7, p0, Ljc3;->m:Lfh1;

    return-void
.end method

.method public static c(Lfh1;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lfh1;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lfh1;->x()Lhh1;

    move-result-object v0

    invoke-virtual {v0}, Lhh1;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbc3;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lfh1;->x()Lhh1;

    move-result-object p0

    invoke-virtual {p0}, Lhh1;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lej1;->i:Lej1;

    sget-object v1, Lej1;->h:Lej1;

    sget-object v2, Ljc3;->n:Lld3;

    iget-object v3, p0, Ljc3;->l:Landroid/content/Context;

    .line 2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lld3;->a(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj32;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 5
    iget-object v6, v3, Lj32;->b:Ljava/lang/String;

    .line 6
    invoke-static {v6}, Lbc3;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v3, Lj32;->b:Ljava/lang/String;

    const-string v7, "E"

    .line 7
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v3, v3, Lj32;->b:Ljava/lang/String;

    const-string v6, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 8
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_c

    .line 9
    iget-object v3, p0, Ljc3;->m:Lfh1;

    invoke-static {v3}, Ljc3;->c(Lfh1;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbc3;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    sget-object v0, Lej1;->j:Lej1;

    goto :goto_3

    .line 11
    :cond_2
    iget-object v3, p0, Ljc3;->m:Lfh1;

    .line 12
    invoke-static {v3}, Ljc3;->c(Lfh1;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lbc3;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v3}, Lfh1;->z()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 14
    invoke-virtual {v3}, Lfh1;->A()Lgh1;

    move-result-object v3

    invoke-virtual {v3}, Lgh1;->x()Lej1;

    move-result-object v3

    if-ne v3, v0, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 15
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17
    iget-object v3, p0, Lid3;->e:Lxb3;

    .line 18
    iget-boolean v3, v3, Lxb3;->n:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    if-ne v0, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 19
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 20
    iget-object v3, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Ljc3;->l:Landroid/content/Context;

    aput-object v8, v7, v4

    aput-object v1, v7, v5

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 22
    new-instance v7, Lj32;

    invoke-direct {v7, v3}, Lj32;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v3, v7, Lj32;->b:Ljava/lang/String;

    invoke-static {v3}, Lbc3;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v7, Lj32;->b:Ljava/lang/String;

    const-string v8, "E"

    .line 24
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 25
    :cond_6
    sget-object v3, Lmc3;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v0, v5, :cond_a

    if-eq v0, v6, :cond_7

    goto :goto_5

    .line 26
    :cond_7
    :try_start_1
    iget-object v0, p0, Lid3;->e:Lxb3;

    .line 27
    iget-object v0, v0, Lxb3;->k:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_8

    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 29
    :cond_8
    iget-object v0, p0, Lid3;->e:Lxb3;

    .line 30
    iget-object v0, v0, Lxb3;->j:Lgl1;

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v0}, Lgl1;->P()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 32
    invoke-virtual {v0}, Lgl1;->M()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :catch_0
    :cond_9
    :try_start_2
    invoke-static {v1}, Lbc3;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 34
    iput-object v1, v7, Lj32;->b:Ljava/lang/String;

    goto :goto_5

    .line 35
    :cond_a
    iget-object v0, p0, Ljc3;->m:Lfh1;

    invoke-virtual {v0}, Lfh1;->x()Lhh1;

    move-result-object v0

    invoke-virtual {v0}, Lhh1;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lj32;->b:Ljava/lang/String;

    .line 36
    :cond_b
    :goto_5
    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 37
    :cond_c
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj32;

    .line 38
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    iget-object v1, p0, Lid3;->h:Lgl1$b;

    monitor-enter v1

    if-eqz v0, :cond_12

    .line 40
    :try_start_3
    iget-object v2, p0, Lid3;->h:Lgl1$b;

    iget-object v3, v0, Lj32;->b:Ljava/lang/String;

    .line 41
    iget-boolean v5, v2, Ls63$b;->g:Z

    if-eqz v5, :cond_d

    .line 42
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 43
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 44
    :cond_d
    iget-object v2, v2, Ls63$b;->f:Ls63;

    check-cast v2, Lgl1;

    invoke-static {v2, v3}, Lgl1;->e0(Lgl1;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lid3;->h:Lgl1$b;

    iget-wide v5, v0, Lj32;->c:J

    .line 46
    iget-boolean v3, v2, Ls63$b;->g:Z

    if-eqz v3, :cond_e

    .line 47
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 48
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 49
    :cond_e
    iget-object v2, v2, Ls63$b;->f:Ls63;

    check-cast v2, Lgl1;

    invoke-static {v2, v5, v6}, Lgl1;->z0(Lgl1;J)V

    .line 50
    iget-object v2, p0, Lid3;->h:Lgl1$b;

    iget-object v3, v0, Lj32;->d:Ljava/lang/String;

    .line 51
    iget-boolean v5, v2, Ls63$b;->g:Z

    if-eqz v5, :cond_f

    .line 52
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 53
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 54
    :cond_f
    iget-object v2, v2, Ls63$b;->f:Ls63;

    check-cast v2, Lgl1;

    invoke-static {v2, v3}, Lgl1;->k0(Lgl1;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lid3;->h:Lgl1$b;

    iget-object v3, v0, Lj32;->e:Ljava/lang/String;

    .line 56
    iget-boolean v5, v2, Ls63$b;->g:Z

    if-eqz v5, :cond_10

    .line 57
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 58
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 59
    :cond_10
    iget-object v2, v2, Ls63$b;->f:Ls63;

    check-cast v2, Lgl1;

    invoke-static {v2, v3}, Lgl1;->m0(Lgl1;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lid3;->h:Lgl1$b;

    iget-object v0, v0, Lj32;->f:Ljava/lang/String;

    .line 61
    iget-boolean v3, v2, Ls63$b;->g:Z

    if-eqz v3, :cond_11

    .line 62
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 63
    iput-boolean v4, v2, Ls63$b;->g:Z

    .line 64
    :cond_11
    iget-object v2, v2, Ls63$b;->f:Ls63;

    check-cast v2, Lgl1;

    invoke-static {v2, v0}, Lgl1;->o0(Lgl1;Ljava/lang/String;)V

    .line 65
    :cond_12
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 66
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

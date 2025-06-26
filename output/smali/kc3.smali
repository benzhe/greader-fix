.class public final Lkc3;
.super Lid3;
.source "SourceFile"


# static fields
.field public static m:Lld3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lld3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final l:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lld3;

    invoke-direct {v0}, Lld3;-><init>()V

    sput-object v0, Lkc3;->m:Lld3;

    return-void
.end method

.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;ILandroid/content/Context;)V
    .locals 7

    const/16 v6, 0x1d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lid3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V

    .line 2
    iput-object p6, p0, Lkc3;->l:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    const-string v1, "E"

    .line 2
    iget-boolean v2, v0, Ls63$b;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 4
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 5
    :cond_0
    iget-object v0, v0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, v1}, Lgl1;->h0(Lgl1;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lkc3;->m:Lld3;

    iget-object v1, p0, Lkc3;->l:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lld3;->a(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lkc3;->l:Landroid/content/Context;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lid3;->h:Lgl1$b;

    monitor-enter v1

    .line 15
    :try_start_1
    iget-object v4, p0, Lid3;->h:Lgl1$b;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Lc50;->P1([BZ)Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-boolean v2, v4, Ls63$b;->g:Z

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 18
    iput-boolean v3, v4, Ls63$b;->g:Z

    .line 19
    :cond_3
    iget-object v2, v4, Ls63$b;->f:Ls63;

    check-cast v2, Lgl1;

    invoke-static {v2, v0}, Lgl1;->h0(Lgl1;Ljava/lang/String;)V

    .line 20
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

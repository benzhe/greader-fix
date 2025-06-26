.class public final Lar2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lar2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lar2;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lnr2;->A()Lnr2$b;

    move-result-object v0

    iget-object v1, p0, Lar2;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

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

    check-cast v2, Lnr2;

    invoke-static {v2, v1}, Lnr2;->z(Lnr2;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lnr2$a;->g:Lnr2$a;

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

    check-cast v2, Lnr2;

    invoke-static {v2, v1}, Lnr2;->y(Lnr2;Lnr2$a;)V

    .line 12
    invoke-static {}, Lhr2;->z()Lhr2$b;

    move-result-object v1

    .line 13
    iget-boolean v2, v1, Ls63$b;->g:Z

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 15
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 16
    :cond_2
    iget-object v2, v1, Ls63$b;->f:Ls63;

    check-cast v2, Lhr2;

    invoke-static {v2, p1}, Lhr2;->y(Lhr2;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lhr2$a;->g:Lhr2$a;

    .line 18
    iget-boolean v2, v1, Ls63$b;->g:Z

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 20
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 21
    :cond_3
    iget-object v2, v1, Ls63$b;->f:Ls63;

    check-cast v2, Lhr2;

    invoke-static {v2, p1}, Lhr2;->x(Lhr2;Lhr2$a;)V

    .line 22
    iget-boolean p1, v0, Ls63$b;->g:Z

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 24
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 25
    :cond_4
    iget-object p1, v0, Ls63$b;->f:Ls63;

    check-cast p1, Lnr2;

    invoke-virtual {v1}, Ls63$b;->j()Le83;

    move-result-object v1

    check-cast v1, Ls63;

    check-cast v1, Lhr2;

    invoke-static {p1, v1}, Lnr2;->x(Lnr2;Lhr2;)V

    .line 26
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Lnr2;

    .line 27
    iget-object v0, p0, Lar2;->a:Landroid/content/Context;

    iget-object v1, p0, Lar2;->b:Landroid/os/Looper;

    .line 28
    new-instance v2, Lzq2;

    invoke-direct {v2, v0, v1, p1}, Lzq2;-><init>(Landroid/content/Context;Landroid/os/Looper;Lnr2;)V

    .line 29
    iget-object p1, v2, Lzq2;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 30
    :try_start_0
    iget-boolean v0, v2, Lzq2;->d:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, v2, Lzq2;->d:Z

    .line 32
    iget-object v0, v2, Lzq2;->a:Ltr2;

    invoke-virtual {v0}, Li00;->checkAvailabilityAndConnect()V

    .line 33
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;
.super Lff4;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field public e:Lrx4;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lry4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lff4;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    new-instance v0, Lf4;

    invoke-direct {v0}, Lf4;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->c()Lxu4;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lxu4;->f(Ljava/lang/String;J)V

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lsz4;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public clearMeasurementEnabled(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p1}, Lrx4;->s()Lsz4;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lww4;->f()V

    iget-object p2, p1, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {p2}, Lrx4;->m()Lox4;

    move-result-object p2

    new-instance v0, Lmz4;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, p1, v1}, Lmz4;-><init>(Lsz4;Ljava/lang/Boolean;)V

    .line 6
    invoke-virtual {p2, v0}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->c()Lxu4;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lxu4;->g(Ljava/lang/String;J)V

    return-void
.end method

.method public final g0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to perform action before initialize."

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateEventId(Lbg4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    invoke-virtual {v0}, Lp25;->c0()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 3
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lp25;->Q(Lbg4;J)V

    return-void
.end method

.method public getAppInstanceId(Lbg4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v1, Luy4;

    invoke-direct {v1, p0, p1}, Luy4;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lbg4;)V

    .line 3
    invoke-virtual {v0, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCachedAppInstanceId(Lbg4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lsz4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 6
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lp25;->P(Lbg4;Ljava/lang/String;)V

    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lbg4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v1, Lq25;

    invoke-direct {v1, p0, p3, p1, p2}, Lq25;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lbg4;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentScreenClass(Lbg4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v0}, Lrx4;->y()Lh05;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lh05;->c:La05;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v0, La05;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 8
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lp25;->P(Lbg4;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentScreenName(Lbg4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v0}, Lrx4;->y()Lh05;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lh05;->c:La05;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v0, La05;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 8
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lp25;->P(Lbg4;Ljava/lang/String;)V

    return-void
.end method

.method public getGmpAppId(Lbg4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    invoke-virtual {v0}, Lsz4;->s()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 4
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lp25;->P(Lbg4;Ljava/lang/String;)V

    return-void
.end method

.method public getMaxUserProperties(Ljava/lang/String;Lbg4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, v0, Lly4;->a:Lrx4;

    .line 5
    iget-object p1, p1, Lrx4;->g:Lcs4;

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 7
    invoke-virtual {p1}, Lrx4;->t()Lp25;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p1, p2, v0}, Lp25;->R(Lbg4;I)V

    return-void
.end method

.method public getTestFlag(Lbg4;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p2}, Lrx4;->t()Lp25;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    new-instance v6, Lez4;

    .line 7
    invoke-direct {v6, v0, v2}, Lez4;-><init>(Lsz4;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v3, 0x3a98

    const-string v5, "boolean test flag value"

    .line 8
    invoke-virtual/range {v1 .. v6}, Lox4;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lp25;->T(Lbg4;Z)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 10
    invoke-virtual {p2}, Lrx4;->t()Lp25;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    new-instance v6, Lkz4;

    .line 14
    invoke-direct {v6, v0, v2}, Lkz4;-><init>(Lsz4;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v3, 0x3a98

    const-string v5, "int test flag value"

    .line 15
    invoke-virtual/range {v1 .. v6}, Lox4;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lp25;->R(Lbg4;I)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 17
    invoke-virtual {p2}, Lrx4;->t()Lp25;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 18
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 21
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    new-instance v6, Llz4;

    .line 22
    invoke-direct {v6, v0, v2}, Llz4;-><init>(Lsz4;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v3, 0x3a98

    const-string v5, "double test flag value"

    .line 23
    invoke-virtual/range {v1 .. v6}, Lox4;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v2, Landroid/os/Bundle;

    .line 25
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "r"

    .line 26
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 27
    :try_start_0
    invoke-interface {p1, v2}, Lbg4;->zzb(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    iget-object p2, p2, Lly4;->a:Lrx4;

    .line 29
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 30
    iget-object p2, p2, Lqw4;->i:Low4;

    const-string v0, "Error returning double value to wrapper"

    .line 31
    invoke-virtual {p2, v0, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 33
    invoke-virtual {p2}, Lrx4;->t()Lp25;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 36
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    new-instance v6, Ljz4;

    .line 37
    invoke-direct {v6, v0, v2}, Ljz4;-><init>(Lsz4;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v3, 0x3a98

    const-string v5, "long test flag value"

    .line 38
    invoke-virtual/range {v1 .. v6}, Lox4;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lp25;->Q(Lbg4;J)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 40
    invoke-virtual {p2}, Lrx4;->t()Lp25;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 41
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 44
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    new-instance v6, Liz4;

    .line 45
    invoke-direct {v6, v0, v2}, Liz4;-><init>(Lsz4;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v3, 0x3a98

    const-string v5, "String test flag value"

    .line 46
    invoke-virtual/range {v1 .. v6}, Lox4;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {p2, p1, v0}, Lp25;->P(Lbg4;Ljava/lang/String;)V

    return-void
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLbg4;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v7, Lu05;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lu05;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lbg4;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {v0, v7}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initForTests(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    return-void
.end method

.method public initialize(Lx20;Lcom/google/android/gms/internal/measurement/zzy;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lrx4;->d(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/Long;)Lrx4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lqw4;->i:Low4;

    const-string p2, "Attempting to initialize multiple times"

    .line 5
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public isDataCollectionEnabled(Lbg4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v1, Lr25;

    invoke-direct {v1, p0, p1}, Lr25;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lbg4;)V

    .line 3
    invoke-virtual {v0, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v1}, Lrx4;->s()Lsz4;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lsz4;->D(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lbg4;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    .line 2
    invoke-static {p2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v4, "app"

    const-string v1, "_o"

    .line 6
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v3, p3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    move-object v1, v0

    move-object v2, p2

    move-wide v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 8
    invoke-virtual {p2}, Lrx4;->m()Lox4;

    move-result-object p2

    new-instance p3, Luz4;

    invoke-direct {p3, p0, p4, v0, p1}, Luz4;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lbg4;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, p3}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logHealthData(ILjava/lang/String;Lx20;Lx20;Lx20;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lx20;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lx20;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Lx20;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v6, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    :goto_0
    if-nez p4, :cond_1

    move-object v7, v0

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p4}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    :goto_1
    if-nez p5, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-static {p5}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    move-object v8, v0

    .line 5
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 6
    invoke-virtual {p3}, Lrx4;->a()Lqw4;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Lqw4;->u(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityCreated(Lx20;Landroid/os/Bundle;J)V
    .locals 0
    .param p1    # Lx20;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p3}, Lrx4;->s()Lsz4;

    move-result-object p3

    iget-object p3, p3, Lsz4;->c:Lrz4;

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 3
    invoke-virtual {p4}, Lrx4;->s()Lsz4;

    move-result-object p4

    invoke-virtual {p4}, Lsz4;->w()V

    .line 4
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p3, p1, p2}, Lrz4;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Lx20;J)V
    .locals 0
    .param p1    # Lx20;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p2}, Lrx4;->s()Lsz4;

    move-result-object p2

    iget-object p2, p2, Lsz4;->c:Lrz4;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 3
    invoke-virtual {p3}, Lrx4;->s()Lsz4;

    move-result-object p3

    invoke-virtual {p3}, Lsz4;->w()V

    .line 4
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lrz4;->onActivityDestroyed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Lx20;J)V
    .locals 0
    .param p1    # Lx20;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p2}, Lrx4;->s()Lsz4;

    move-result-object p2

    iget-object p2, p2, Lsz4;->c:Lrz4;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 3
    invoke-virtual {p3}, Lrx4;->s()Lsz4;

    move-result-object p3

    invoke-virtual {p3}, Lsz4;->w()V

    .line 4
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lrz4;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Lx20;J)V
    .locals 0
    .param p1    # Lx20;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p2}, Lrx4;->s()Lsz4;

    move-result-object p2

    iget-object p2, p2, Lsz4;->c:Lrz4;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 3
    invoke-virtual {p3}, Lrx4;->s()Lsz4;

    move-result-object p3

    invoke-virtual {p3}, Lsz4;->w()V

    .line 4
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lrz4;->onActivityResumed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Lx20;Lbg4;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p3}, Lrx4;->s()Lsz4;

    move-result-object p3

    iget-object p3, p3, Lsz4;->c:Lrz4;

    new-instance p4, Landroid/os/Bundle;

    .line 3
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 4
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    invoke-virtual {v0}, Lsz4;->w()V

    .line 5
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p3, p1, p4}, Lrz4;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p2, p4}, Lbg4;->zzb(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 7
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 8
    iget-object p2, p2, Lqw4;->i:Low4;

    const-string p3, "Error returning bundle value to wrapper"

    .line 9
    invoke-virtual {p2, p3, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStarted(Lx20;J)V
    .locals 0
    .param p1    # Lx20;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p2}, Lrx4;->s()Lsz4;

    move-result-object p2

    iget-object p2, p2, Lsz4;->c:Lrz4;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 3
    invoke-virtual {p2}, Lrx4;->s()Lsz4;

    move-result-object p2

    invoke-virtual {p2}, Lsz4;->w()V

    .line 4
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onActivityStopped(Lx20;J)V
    .locals 0
    .param p1    # Lx20;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p2}, Lrx4;->s()Lsz4;

    move-result-object p2

    iget-object p2, p2, Lsz4;->c:Lrz4;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 3
    invoke-virtual {p2}, Lrx4;->s()Lsz4;

    move-result-object p2

    invoke-virtual {p2}, Lsz4;->w()V

    .line 4
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public performAction(Landroid/os/Bundle;Lbg4;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Lbg4;->zzb(Landroid/os/Bundle;)V

    return-void
.end method

.method public registerOnMeasurementEventListener(Leg4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f:Ljava/util/Map;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Leg4;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lry4;

    if-nez v1, :cond_0

    new-instance v1, Lt25;

    .line 4
    invoke-direct {v1, p0, p1}, Lt25;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Leg4;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f:Ljava/util/Map;

    .line 5
    invoke-interface {p1}, Leg4;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 7
    invoke-virtual {p1}, Lrx4;->s()Lsz4;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lww4;->f()V

    .line 9
    iget-object v0, p1, Lsz4;->e:Ljava/util/Set;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lqw4;->i:Low4;

    const-string v0, "OnEventListener already registered"

    .line 13
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetAnalyticsData(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lsz4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 5
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    new-instance v2, Lbz4;

    .line 6
    invoke-direct {v2, v0, p1, p2}, Lbz4;-><init>(Lsz4;J)V

    .line 7
    invoke-virtual {v1, v2}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string p2, "Conditional user property must not be null"

    .line 4
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 5
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lsz4;->q(Landroid/os/Bundle;J)V

    return-void
.end method

.method public setConsent(Landroid/os/Bundle;J)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 3
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 4
    iget-object v1, v1, Lrx4;->g:Lcs4;

    const/4 v2, 0x0

    .line 5
    sget-object v3, Lew4;->E0:Ldw4;

    invoke-virtual {v1, v2, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    .line 6
    invoke-virtual {v0, p1, v1, p2, p3}, Lsz4;->x(Landroid/os/Bundle;IJ)V

    :cond_0
    return-void
.end method

.method public setConsentThirdParty(Landroid/os/Bundle;J)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    .line 3
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 4
    iget-object v1, v1, Lrx4;->g:Lcs4;

    const/4 v2, 0x0

    .line 5
    sget-object v3, Lew4;->F0:Ldw4;

    invoke-virtual {v1, v2, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    .line 6
    invoke-virtual {v0, p1, v1, p2, p3}, Lsz4;->x(Landroid/os/Bundle;IJ)V

    :cond_0
    return-void
.end method

.method public setCurrentScreen(Lx20;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1    # Lx20;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p4}, Lrx4;->y()Lh05;

    move-result-object p4

    .line 3
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 4
    iget-object p5, p4, Lly4;->a:Lrx4;

    .line 5
    iget-object p5, p5, Lrx4;->g:Lcs4;

    .line 6
    invoke-virtual {p5}, Lcs4;->x()Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p1, p4, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lqw4;->k:Low4;

    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    .line 9
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    iget-object p5, p4, Lh05;->c:La05;

    if-nez p5, :cond_1

    iget-object p1, p4, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lqw4;->k:Low4;

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    .line 12
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    iget-object v0, p4, Lh05;->f:Ljava/util/Map;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p1, p4, Lly4;->a:Lrx4;

    .line 14
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lqw4;->k:Low4;

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 16
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    if-nez p3, :cond_3

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "Activity"

    invoke-virtual {p4, p3, v0}, Lh05;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    iget-object v0, p5, La05;->b:Ljava/lang/String;

    .line 18
    invoke-static {v0, p3}, Lp25;->G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object p5, p5, La05;->a:Ljava/lang/String;

    .line 19
    invoke-static {p5, p2}, Lp25;->G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-eqz v0, :cond_5

    if-nez p5, :cond_4

    goto :goto_0

    .line 20
    :cond_4
    iget-object p1, p4, Lly4;->a:Lrx4;

    .line 21
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 22
    iget-object p1, p1, Lqw4;->k:Low4;

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 23
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    :goto_0
    const/16 p5, 0x64

    if-eqz p2, :cond_7

    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p4, Lly4;->a:Lrx4;

    .line 26
    iget-object v1, v1, Lrx4;->g:Lcs4;

    if-gt v0, p5, :cond_6

    goto :goto_1

    .line 27
    :cond_6
    iget-object p1, p4, Lly4;->a:Lrx4;

    .line 28
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lqw4;->k:Low4;

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    :goto_1
    if-eqz p3, :cond_9

    .line 31
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 32
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p4, Lly4;->a:Lrx4;

    .line 33
    iget-object v1, v1, Lrx4;->g:Lcs4;

    if-gt v0, p5, :cond_8

    goto :goto_2

    .line 34
    :cond_8
    iget-object p1, p4, Lly4;->a:Lrx4;

    .line 35
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 36
    iget-object p1, p1, Lqw4;->k:Low4;

    .line 37
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 38
    :cond_9
    :goto_2
    iget-object p5, p4, Lly4;->a:Lrx4;

    .line 39
    invoke-virtual {p5}, Lrx4;->a()Lqw4;

    move-result-object p5

    .line 40
    iget-object p5, p5, Lqw4;->n:Low4;

    if-nez p2, :cond_a

    const-string v0, "null"

    goto :goto_3

    :cond_a
    move-object v0, p2

    :goto_3
    const-string v1, "Setting current screen to name, class"

    .line 41
    invoke-virtual {p5, v1, v0, p3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p5, La05;

    iget-object v0, p4, Lly4;->a:Lrx4;

    .line 42
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lp25;->c0()J

    move-result-wide v0

    invoke-direct {p5, p2, p3, v0, v1}, La05;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p4, Lh05;->f:Ljava/util/Map;

    .line 44
    invoke-interface {p2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 45
    invoke-virtual {p4, p1, p5, p2}, Lh05;->i(Landroid/app/Activity;La05;Z)V

    :goto_4
    return-void
.end method

.method public setDataCollectionEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    invoke-virtual {v0}, Lww4;->f()V

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    new-instance v2, Lwy4;

    .line 4
    invoke-direct {v2, v0, p1}, Lwy4;-><init>(Lsz4;Z)V

    .line 5
    invoke-virtual {v1, v2}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 4
    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v1

    .line 5
    :goto_0
    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    new-instance v2, Lty4;

    .line 7
    invoke-direct {v2, v0, p1}, Lty4;-><init>(Lsz4;Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {v1, v2}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEventInterceptor(Leg4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    new-instance v0, Ls25;

    .line 2
    invoke-direct {v0, p0, p1}, Ls25;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Leg4;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 3
    invoke-virtual {p1}, Lrx4;->m()Lox4;

    move-result-object p1

    invoke-virtual {p1}, Lox4;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 4
    invoke-virtual {p1}, Lrx4;->s()Lsz4;

    move-result-object p1

    invoke-virtual {p1, v0}, Lsz4;->p(Ls25;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 5
    invoke-virtual {p1}, Lrx4;->m()Lox4;

    move-result-object p1

    new-instance v1, Lv15;

    invoke-direct {v1, p0, v0}, Lv15;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Ls25;)V

    .line 6
    invoke-virtual {p1, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInstanceIdProvider(Lgg4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    return-void
.end method

.method public setMeasurementEnabled(ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {p2}, Lrx4;->s()Lsz4;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lww4;->f()V

    iget-object p3, p2, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {p3}, Lrx4;->m()Lox4;

    move-result-object p3

    new-instance v0, Lmz4;

    .line 5
    invoke-direct {v0, p2, p1}, Lmz4;-><init>(Lsz4;Ljava/lang/Boolean;)V

    .line 6
    invoke-virtual {p3, v0}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    new-instance v2, Lyy4;

    .line 4
    invoke-direct {v2, v0, p1, p2}, Lyy4;-><init>(Lsz4;J)V

    .line 5
    invoke-virtual {v1, v2}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;J)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "_id"

    const/4 v5, 0x1

    move-object v4, p1

    move-wide v6, p2

    .line 3
    invoke-virtual/range {v1 .. v7}, Lsz4;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Lx20;ZJ)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lx20;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    .line 2
    invoke-static {p3}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v3

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 3
    invoke-virtual {p3}, Lrx4;->s()Lsz4;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lsz4;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public unregisterOnMeasurementEventListener(Leg4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f:Ljava/util/Map;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Leg4;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lry4;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lt25;

    .line 5
    invoke-direct {v1, p0, p1}, Lt25;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Leg4;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 6
    invoke-virtual {p1}, Lrx4;->s()Lsz4;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lww4;->f()V

    .line 8
    iget-object v0, p1, Lsz4;->e:Ljava/util/Set;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lqw4;->i:Low4;

    const-string v0, "OnEventListener had not been registered"

    .line 12
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

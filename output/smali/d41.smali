.class public final Ld41;
.super Lwn3;
.source "SourceFile"


# instance fields
.field public final e:Le41;

.field public final f:Lit3;

.field public final g:Lmg2;

.field public h:Z


# direct methods
.method public constructor <init>(Le41;Lit3;Lmg2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lwn3;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ld41;->h:Z

    .line 3
    iput-object p1, p0, Ld41;->e:Le41;

    .line 4
    iput-object p2, p0, Ld41;->f:Lit3;

    .line 5
    iput-object p3, p0, Ld41;->g:Lmg2;

    return-void
.end method


# virtual methods
.method public final d1(Lx20;Ldo3;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ld41;->g:Lmg2;

    .line 2
    iget-object v0, v0, Lmg2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Ld41;->e:Le41;

    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean v1, p0, Ld41;->h:Z

    invoke-virtual {v0, p1, p2, v1}, Le41;->c(Landroid/app/Activity;Ldo3;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 4
    invoke-static {p2, p1}, Lis0;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d2()Lit3;
    .locals 1

    .line 1
    iget-object v0, p0, Ld41;->f:Lit3;

    return-object v0
.end method

.method public final r6(Lco3;)V
    .locals 0

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ld41;->h:Z

    return-void
.end method

.method public final zza(Lmu3;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ld41;->g:Lmg2;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lmg2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzkm()Lru3;
    .locals 2

    .line 1
    sget-object v0, Ly40;->m4:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Ld41;->e:Le41;

    .line 6
    iget-object v0, v0, Lf61;->f:Lt91;

    return-object v0
.end method

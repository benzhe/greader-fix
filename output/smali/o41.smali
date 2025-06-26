.class public final synthetic Lo41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ll41;


# direct methods
.method public constructor <init>(Ll41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo41;->e:Ll41;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo41;->e:Ll41;

    .line 1
    iget-object v1, v0, Ll41;->m:Ldk1;

    .line 2
    iget-object v1, v1, Ldk1;->d:Lj90;

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    iget-object v2, v0, Ll41;->o:Lxa3;

    .line 4
    invoke-interface {v2}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit3;

    iget-object v0, v0, Ll41;->h:Landroid/content/Context;

    .line 5
    new-instance v3, Ly20;

    invoke-direct {v3, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-interface {v1, v2, v3}, Lj90;->G6(Lit3;Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 7
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

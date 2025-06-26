.class public final Lo14;
.super Lyy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyy<",
        "Lcom/google/android/gms/common/api/Status;",
        "Ls14;",
        ">;"
    }
.end annotation


# instance fields
.field public final l:Lcom/google/android/gms/clearcut/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/clearcut/zze;Lqy;)V
    .locals 1

    sget-object v0, Lyx;->o:Lny;

    invoke-direct {p0, v0, p2}, Lyy;-><init>(Lny;Lqy;)V

    iput-object p1, p0, Lo14;->l:Lcom/google/android/gms/clearcut/zze;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lty;
    .locals 0

    return-object p1
.end method

.method public final synthetic g(Lny$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Ls14;

    new-instance v0, Lr14;

    invoke-direct {v0, p0}, Lr14;-><init>(Lo14;)V

    :try_start_0
    iget-object v1, p0, Lo14;->l:Lcom/google/android/gms/clearcut/zze;

    iget-object v2, v1, Lcom/google/android/gms/clearcut/zze;->n:Lyx$c;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/google/android/gms/clearcut/zze;->m:Lp14;

    iget-object v4, v3, Lp14;->l:[B

    array-length v4, v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Lyx$c;->a()[B

    move-result-object v2

    iput-object v2, v3, Lp14;->l:[B

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/clearcut/zze;->m:Lp14;

    invoke-virtual {v2}, Lc14;->d()I

    move-result v3

    new-array v4, v3, [B

    invoke-static {v2, v4, v3}, Lc14;->c(Lc14;[BI)V

    iput-object v4, v1, Lcom/google/android/gms/clearcut/zze;->f:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Li00;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lv14;

    iget-object v1, p0, Lo14;->l:Lcom/google/android/gms/clearcut/zze;

    invoke-interface {p1, v0, v1}, Lv14;->M1(Lt14;Lcom/google/android/gms/clearcut/zze;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "derived ClearcutLogger.MessageProducer "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lyy;->h(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

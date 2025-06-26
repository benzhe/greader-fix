.class public abstract Lyz;
.super Lsz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lsz;"
    }
.end annotation


# instance fields
.field public final a:Lf45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf45<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILf45;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lf45<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lsz;-><init>(I)V

    .line 2
    iput-object p2, p0, Lyz;->a:Lf45;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyz;->a:Lf45;

    new-instance v1, Loy;

    invoke-direct {v1, p1}, Loy;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lf45;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Lzy$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzy$a<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lyz;->h(Lzy$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lyz;->a:Lf45;

    invoke-virtual {v0, p1}, Lf45;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 3
    invoke-static {p1}, Liz;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lyz;->a:Lf45;

    new-instance v1, Loy;

    invoke-direct {v1, p1}, Loy;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lf45;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_2
    move-exception p1

    .line 5
    invoke-static {p1}, Liz;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lyz;->a:Lf45;

    new-instance v2, Loy;

    invoke-direct {v2, v0}, Loy;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lf45;->a(Ljava/lang/Exception;)Z

    .line 7
    throw p1
.end method

.method public d(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyz;->a:Lf45;

    invoke-virtual {v0, p1}, Lf45;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public abstract h(Lzy$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzy$a<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

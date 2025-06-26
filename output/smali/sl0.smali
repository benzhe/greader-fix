.class public final Lsl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lzq0;


# direct methods
.method public constructor <init>(Ltl0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ltl0;->a:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lsl0;->a:Landroid/view/View;

    .line 4
    iget-object p1, p1, Ltl0;->b:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lsl0;->b:Ljava/util/Map;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lql0;->a(Landroid/content/Context;)Lzq0;

    move-result-object v1

    iput-object v1, p0, Lsl0;->c:Lzq0;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzatj;

    .line 9
    new-instance v3, Ly20;

    invoke-direct {v3, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ly20;

    invoke-direct {v0, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 10
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzatj;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 11
    invoke-interface {v1, v2}, Lzq0;->Z1(Lcom/google/android/gms/internal/ads/zzatj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to call remote method."

    .line 12
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

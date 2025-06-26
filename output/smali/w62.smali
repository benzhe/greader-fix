.class public final Lw62;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La72;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La72<",
            "Lf61;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public c:Lru3;


# direct methods
.method public constructor <init>(La72;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La72<",
            "Lf61;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw62;->a:La72;

    .line 3
    iput-object p2, p0, Lw62;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzvq;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lw62;->c:Lru3;

    .line 2
    new-instance v0, Lb72;

    invoke-direct {v0, p2}, Lb72;-><init>(I)V

    .line 3
    iget-object p2, p0, Lw62;->a:La72;

    iget-object v1, p0, Lw62;->b:Ljava/lang/String;

    new-instance v2, Lv62;

    invoke-direct {v2, p0}, Lv62;-><init>(Lw62;)V

    .line 4
    invoke-interface {p2, p1, v1, v0, v2}, La72;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lz62;Lc72;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

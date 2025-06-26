.class public final Lrb1;
.super Lxd1;
.source "SourceFile"

# interfaces
.implements Lra0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxd1<",
        "Lcom/google/android/gms/ads/reward/AdMetadataListener;",
        ">;",
        "Lra0;"
    }
.end annotation


# instance fields
.field public f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lcom/google/android/gms/ads/reward/AdMetadataListener;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lxd1;-><init>(Ljava/util/Set;)V

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lrb1;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final declared-synchronized d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lrb1;->f:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lqb1;->a:Lzd1;

    invoke-virtual {p0, p1}, Lxd1;->D0(Lzd1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.class public final Le92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lc92;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lzv2;

.field public final b:Lnq1;

.field public final c:Lmt1;

.field public final d:Lg92;


# direct methods
.method public constructor <init>(Lzv2;Lnq1;Lmt1;Lg92;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le92;->a:Lzv2;

    .line 3
    iput-object p2, p0, Le92;->b:Lnq1;

    .line 4
    iput-object p3, p0, Le92;->c:Lmt1;

    .line 5
    iput-object p4, p0, Le92;->d:Lg92;

    return-void
.end method

.method public static b(Lzl2;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lzl2;->a:Lig0;

    invoke-interface {v1}, Lig0;->M()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v2, "sdk_version"

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    new-instance v2, Lpl2;

    invoke-direct {v2, v1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Lpl2; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    iget-object p0, p0, Lzl2;->a:Lig0;

    invoke-interface {p0}, Lig0;->O()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    :try_start_3
    const-string v1, "adapter_version"

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqr;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 7
    new-instance v1, Lpl2;

    invoke-direct {v1, p0}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Lpl2; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a()Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lc92;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ly40;->U0:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    sget v1, Lat2;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Le92;->d:Lg92;

    .line 8
    iget-object v0, v0, Lg92;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Le92;->c:Lmt1;

    .line 10
    iget-boolean v0, v0, Lmt1;->b:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    iget-object v0, p0, Le92;->d:Lg92;

    .line 12
    iget-object v0, v0, Lg92;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    iget-object v0, p0, Le92;->a:Lzv2;

    new-instance v1, Li92;

    invoke-direct {v1, p0}, Li92;-><init>(Le92;)V

    invoke-interface {v0, v1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v0

    return-object v0

    .line 14
    :cond_3
    :goto_2
    new-instance v0, Lc92;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc92;-><init>(Landroid/os/Bundle;Lf92;)V

    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    return-object v0
.end method

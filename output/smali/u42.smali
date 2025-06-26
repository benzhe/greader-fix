.class public final Lu42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljz1<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field public final a:Lt50;

.field public final b:Lzv2;

.field public final c:Lzo2;

.field public final d:Lv42;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv42<",
            "TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzo2;Lzv2;Lt50;Lv42;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo2;",
            "Lzv2;",
            "Lt50;",
            "Lv42<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu42;->c:Lzo2;

    .line 3
    iput-object p2, p0, Lu42;->b:Lzv2;

    .line 4
    iput-object p3, p0, Lu42;->a:Lt50;

    .line 5
    iput-object p4, p0, Lu42;->d:Lv42;

    return-void
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lu42;->a:Lt50;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lsk2;->r:Lzk2;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lzk2;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lhl2;Lsk2;)Law2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            ")",
            "Law2<",
            "TAdT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lxs0;

    invoke-direct {v6}, Lxs0;-><init>()V

    .line 2
    new-instance v7, Lc52;

    invoke-direct {v7}, Lc52;-><init>()V

    .line 3
    new-instance v8, Lw42;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lw42;-><init>(Lu42;Lxs0;Lhl2;Lsk2;Lc52;)V

    .line 4
    monitor-enter v7

    .line 5
    :try_start_0
    iput-object v8, v7, Lc52;->a:Lcom/google/android/gms/ads/internal/zzg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v7

    .line 7
    new-instance p1, Lq50;

    iget-object p2, p2, Lsk2;->r:Lzk2;

    iget-object v0, p2, Lzk2;->b:Ljava/lang/String;

    iget-object p2, p2, Lzk2;->a:Ljava/lang/String;

    invoke-direct {p1, v7, v0, p2}, Lq50;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lu42;->c:Lzo2;

    sget-object v0, Lap2;->v:Lap2;

    .line 9
    invoke-virtual {p2, v0}, Lko2;->c(Ljava/lang/Object;)Loo2;

    move-result-object p2

    new-instance v0, Lt42;

    invoke-direct {v0, p0, p1}, Lt42;-><init>(Lu42;Lq50;)V

    iget-object p1, p0, Lu42;->b:Lzv2;

    .line 10
    new-instance v1, Lro2;

    invoke-direct {v1, v0}, Lro2;-><init>(Lio2;)V

    invoke-virtual {p2, v1, p1}, Loo2;->a(Ljava/util/concurrent/Callable;Lzv2;)Lqo2;

    move-result-object p1

    .line 11
    sget-object p2, Lap2;->w:Lap2;

    .line 12
    invoke-virtual {p1}, Lqo2;->e()Llo2;

    move-result-object v0

    .line 13
    iget-object p1, p1, Lqo2;->f:Lko2;

    invoke-virtual {p1, p2, v0}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v6}, Lqo2;->f(Law2;)Lqo2;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lqo2;->e()Llo2;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v7

    throw p1
.end method

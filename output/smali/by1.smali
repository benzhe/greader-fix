.class public final Lby1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda1;
.implements Lob1;


# static fields
.field public static final g:Ljava/lang/Object;

.field public static h:I


# instance fields
.field public final e:Lcom/google/android/gms/ads/internal/util/zzf;

.field public final f:Lgy1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lby1;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgy1;Lcom/google/android/gms/ads/internal/util/zzf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lby1;->f:Lgy1;

    .line 3
    iput-object p2, p0, Lby1;->e:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method


# virtual methods
.method public final Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lby1;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 1
    sget-object v0, Ly40;->M3:Lo40;

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

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lby1;->e:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    sget-object v0, Lby1;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    sget v1, Lby1;->h:I

    sget-object v2, Ly40;->N3:Lo40;

    .line 8
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 9
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object v1, p0, Lby1;->f:Lgy1;

    .line 12
    iget-object v2, v1, Lgy1;->b:Lg91;

    .line 13
    invoke-virtual {v2}, Lg91;->a()Law2;

    move-result-object v2

    new-instance v4, Ljy1;

    invoke-direct {v4, v1, p1}, Ljy1;-><init>(Lgy1;Z)V

    sget-object p1, Lms0;->f:Lzv2;

    .line 14
    new-instance v1, Lsv2;

    invoke-direct {v1, v2, v4}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    check-cast v2, Llo2;

    invoke-virtual {v2, v1, p1}, Llo2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    monitor-enter v0

    .line 16
    :try_start_1
    sget p1, Lby1;->h:I

    add-int/2addr p1, v3

    sput p1, Lby1;->h:I

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final onAdLoaded()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lby1;->a(Z)V

    return-void
.end method

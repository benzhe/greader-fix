.class public final Lxr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan3;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/google/android/gms/ads/internal/util/zzf;

.field public final c:Lwr0;

.field public final d:Ltr0;

.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lnr0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lvr0;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzf;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxr0;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lxr0;->e:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lxr0;->f:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lxr0;->g:Z

    .line 6
    new-instance v0, Ltr0;

    invoke-direct {v0, p1, p2}, Ltr0;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzf;)V

    iput-object v0, p0, Lxr0;->d:Ltr0;

    .line 7
    iput-object p2, p0, Lxr0;->b:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 8
    new-instance p1, Lwr0;

    invoke-direct {p1}, Lwr0;-><init>()V

    iput-object p1, p0, Lxr0;->c:Lwr0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lxr0;->b:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzh()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p1, Ly40;->C0:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v2, p1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 6
    iget-object p1, p0, Lxr0;->d:Ltr0;

    const/4 v0, -0x1

    .line 7
    iput v0, p1, Ltr0;->d:I

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lxr0;->d:Ltr0;

    iget-object v0, p0, Lxr0;->b:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzi()I

    move-result v0

    .line 9
    iput v0, p1, Ltr0;->d:I

    :goto_0
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lxr0;->g:Z

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lxr0;->b:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzfa(J)V

    .line 12
    iget-object p1, p0, Lxr0;->b:Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v0, p0, Lxr0;->d:Ltr0;

    .line 13
    iget v0, v0, Ltr0;->d:I

    .line 14
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzdj(I)V

    return-void
.end method

.method public final b(Lnr0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxr0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lxr0;->e:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

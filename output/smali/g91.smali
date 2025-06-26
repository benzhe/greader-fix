.class public final Lg91;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lzo2;

.field public final b:Lcom/google/android/gms/internal/ads/zzbar;

.field public final c:Landroid/content/pm/ApplicationInfo;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/pm/PackageInfo;

.field public final g:Lxa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxa3<",
            "Law2<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/String;

.field public final i:Lpd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpd2<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzo2;Lcom/google/android/gms/internal/ads/zzbar;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lxa3;Ljava/lang/String;Lpd2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo2;",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Lxa3<",
            "Law2<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            "Ljava/lang/String;",
            "Lpd2<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg91;->a:Lzo2;

    .line 3
    iput-object p2, p0, Lg91;->b:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    iput-object p3, p0, Lg91;->c:Landroid/content/pm/ApplicationInfo;

    .line 5
    iput-object p4, p0, Lg91;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lg91;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lg91;->f:Landroid/content/pm/PackageInfo;

    .line 8
    iput-object p7, p0, Lg91;->g:Lxa3;

    .line 9
    iput-object p8, p0, Lg91;->h:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lg91;->i:Lpd2;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg91;->a:Lzo2;

    sget-object v1, Lap2;->f:Lap2;

    invoke-virtual {v0, v1}, Lko2;->c(Ljava/lang/Object;)Loo2;

    move-result-object v0

    iget-object v1, p0, Lg91;->i:Lpd2;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lpd2;->a(Ljava/lang/Object;)Law2;

    move-result-object v1

    invoke-virtual {v0, v1}, Loo2;->b(Law2;)Lqo2;

    move-result-object v0

    invoke-virtual {v0}, Lqo2;->e()Llo2;

    move-result-object v0

    return-object v0
.end method

.method public final b()Law2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg91;->a()Law2;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lg91;->a:Lzo2;

    sget-object v2, Lap2;->g:Lap2;

    const/4 v3, 0x2

    new-array v3, v3, [Law2;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v4, p0, Lg91;->g:Lxa3;

    .line 3
    invoke-interface {v4}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Law2;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lko2;->a(Ljava/lang/Object;[Law2;)Lmo2;

    move-result-object v1

    new-instance v2, Lj91;

    invoke-direct {v2, p0, v0}, Lj91;-><init>(Lg91;Law2;)V

    .line 4
    invoke-virtual {v1, v2}, Lmo2;->a(Ljava/util/concurrent/Callable;)Lqo2;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lqo2;->e()Llo2;

    move-result-object v0

    return-object v0
.end method

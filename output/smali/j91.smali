.class public final synthetic Lj91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lg91;

.field public final f:Law2;


# direct methods
.method public constructor <init>(Lg91;Law2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj91;->e:Lg91;

    iput-object p2, p0, Lj91;->f:Law2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lj91;->e:Lg91;

    iget-object v1, p0, Lj91;->f:Law2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v13, Lcom/google/android/gms/internal/ads/zzauj;

    .line 3
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, v0, Lg91;->b:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v5, v0, Lg91;->c:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Lg91;->d:Ljava/lang/String;

    iget-object v7, v0, Lg91;->e:Ljava/util/List;

    iget-object v8, v0, Lg91;->f:Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Lg91;->g:Lxa3;

    .line 4
    invoke-interface {v1}, Lxa3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Law2;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lg91;->h:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzauj;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzbar;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrc;Ljava/lang/String;)V

    return-object v13
.end method

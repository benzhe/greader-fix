.class public final Lcom/google/android/gms/ads/query/ReportingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/query/ReportingInfo$Builder;
    }
.end annotation


# instance fields
.field public final a:Lsl0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/query/ReportingInfo$Builder;Lpx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lsl0;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/ads/query/ReportingInfo$Builder;->a:Ltl0;

    .line 4
    invoke-direct {p2, p1}, Lsl0;-><init>(Ltl0;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->a:Lsl0;

    return-void
.end method


# virtual methods
.method public final reportTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->a:Lsl0;

    .line 2
    iget-object v0, v0, Lsl0;->c:Lzq0;

    if-nez v0, :cond_0

    const-string p1, "Failed to get internal reporting info generator."

    .line 3
    invoke-static {p1}, Lis0;->zzdz(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, v1}, Lzq0;->o0(Lx20;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to call remote method."

    .line 6
    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final updateClickUrl(Landroid/net/Uri;Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->a:Lsl0;

    .line 2
    iget-object v1, v0, Lsl0;->c:Lzq0;

    if-nez v1, :cond_0

    const-string v1, "Failed to get internal reporting info generator."

    .line 3
    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;->onFailure(Ljava/lang/String;)V

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, v0, Lsl0;->c:Lzq0;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 5
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, v0, Lsl0;->a:Landroid/view/View;

    .line 6
    new-instance v0, Ly20;

    invoke-direct {v0, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lul0;

    invoke-direct {p1, p2}, Lul0;-><init>(Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;)V

    .line 8
    invoke-interface {v1, v2, v0, p1}, Lzq0;->U5(Ljava/util/List;Lx20;Lkl0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Internal error: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/query/UpdateClickUrlCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final updateImpressionUrls(Ljava/util/List;Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/query/ReportingInfo;->a:Lsl0;

    .line 2
    iget-object v1, v0, Lsl0;->c:Lzq0;

    if-nez v1, :cond_0

    const-string v1, "Failed to get internal reporting info generator."

    .line 3
    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;->onFailure(Ljava/lang/String;)V

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, v0, Lsl0;->c:Lzq0;

    iget-object v0, v0, Lsl0;->a:Landroid/view/View;

    .line 5
    new-instance v2, Ly20;

    invoke-direct {v2, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lrl0;

    invoke-direct {v0, p2}, Lrl0;-><init>(Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V

    .line 7
    invoke-interface {v1, p1, v2, v0}, Lzq0;->h1(Ljava/util/List;Lx20;Lkl0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Internal error: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;->onFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

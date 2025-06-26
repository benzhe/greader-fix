.class public final Lg22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsz1<",
        "Lkj1;",
        "Lvi0;",
        "Lg12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lji1;

.field public c:Lbh0;

.field public final d:Lcom/google/android/gms/internal/ads/zzbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lji1;Lcom/google/android/gms/internal/ads/zzbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg22;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lg22;->b:Lji1;

    .line 4
    iput-object p3, p0, Lg22;->d:Lcom/google/android/gms/internal/ads/zzbar;

    return-void
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;Lmz1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;,
            Lz22;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lhl2;->a:Lcl2;

    iget-object v0, v0, Lcl2;->a:Lll2;

    iget-object v0, v0, Lll2;->g:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lg22;->c:Lbh0;

    invoke-static {v0}, Lwj1;->s(Lbh0;)Lwj1;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lhl2;->a:Lcl2;

    iget-object v1, v1, Lcl2;->a:Lll2;

    iget-object v1, v1, Lll2;->g:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Lwj1;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lg22;->b:Lji1;

    new-instance v2, Lv61;

    iget-object v3, p3, Lmz1;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance p1, Ljk1;

    invoke-direct {p1, v0}, Ljk1;-><init>(Lwj1;)V

    new-instance p2, Lam1;

    iget-object v0, p0, Lg22;->c:Lbh0;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0}, Lam1;-><init>(Lwg0;Lvg0;Lbh0;)V

    .line 7
    invoke-virtual {v1, v2, p1, p2}, Lji1;->a(Lv61;Ljk1;Lam1;)Lxj1;

    move-result-object p1

    .line 8
    iget-object p2, p3, Lmz1;->c:Llb1;

    check-cast p2, Lg12;

    invoke-virtual {p1}, Lh61;->g()Lh42;

    move-result-object p3

    .line 9
    monitor-enter p2

    .line 10
    :try_start_0
    iput-object p3, p2, Lg12;->e:Lng0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p2

    .line 12
    invoke-virtual {p1}, Lvj1;->h()Lkj1;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p2

    throw p1

    .line 14
    :cond_0
    new-instance p1, Lz22;

    sget-object p2, Ldm2;->e:Ldm2;

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p2, p3}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Lz22;

    sget-object p2, Ldm2;->f:Ldm2;

    const-string p3, "Unified must be used for RTB."

    invoke-direct {p1, p2, p3}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lhl2;Lsk2;Lmz1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            "Lmz1<",
            "Lvi0;",
            "Lg12;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lvi0;

    iget-object v1, p2, Lsk2;->T:Ljava/lang/String;

    invoke-interface {v0, v1}, Lvi0;->z1(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lg22;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    sget-object v1, Ly40;->e1:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lvi0;

    iget-object v4, p2, Lsk2;->O:Ljava/lang/String;

    iget-object p2, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v6, p1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p0, Lg22;->a:Landroid/content/Context;

    .line 8
    new-instance v7, Ly20;

    invoke-direct {v7, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 9
    new-instance v8, Li22;

    invoke-direct {v8, p0, p3, v2}, Li22;-><init>(Lg22;Lmz1;Lj22;)V

    iget-object p1, p3, Lmz1;->c:Llb1;

    move-object v9, p1

    check-cast v9, Lng0;

    .line 10
    invoke-interface/range {v3 .. v9}, Lvi0;->t0(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Loi0;Lng0;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lvi0;

    iget-object v4, p2, Lsk2;->O:Ljava/lang/String;

    iget-object p2, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p1, Lhl2;->a:Lcl2;

    iget-object p2, p2, Lcl2;->a:Lll2;

    iget-object v6, p2, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p2, p0, Lg22;->a:Landroid/content/Context;

    .line 13
    new-instance v7, Ly20;

    invoke-direct {v7, p2}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 14
    new-instance v8, Li22;

    invoke-direct {v8, p0, p3, v2}, Li22;-><init>(Lg22;Lmz1;Lj22;)V

    iget-object p2, p3, Lmz1;->c:Llb1;

    move-object v9, p2

    check-cast v9, Lng0;

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v10, p1, Lll2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 15
    invoke-interface/range {v3 .. v10}, Lvi0;->S3(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Loi0;Lng0;Lcom/google/android/gms/internal/ads/zzaei;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

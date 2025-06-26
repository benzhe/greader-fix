.class public final Lg32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsz1<",
        "Ldp1;",
        "Lvi0;",
        "Lg12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lgp1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg32;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lg32;->b:Lgp1;

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
    new-instance v0, Lq12;

    iget-object v1, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v1, Lvi0;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lq12;-><init>(Lsk2;Lvi0;Z)V

    .line 2
    iget-object v1, p0, Lg32;->b:Lgp1;

    new-instance v2, Lv61;

    iget-object v3, p3, Lmz1;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance p1, Lep1;

    invoke-direct {p1, v0}, Lep1;-><init>(Lwh1;)V

    .line 3
    invoke-virtual {v1, v2, p1}, Lgp1;->e(Lv61;Lep1;)Lfp1;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lh61;->d()Lqa1;

    move-result-object p2

    .line 5
    iput-object p2, v0, Lq12;->d:Lqa1;

    .line 6
    iget-object p2, p3, Lmz1;->c:Llb1;

    check-cast p2, Lg12;

    invoke-virtual {p1}, Lfp1;->n()Le42;

    move-result-object p3

    invoke-virtual {p2, p3}, Lg12;->X6(Lng0;)V

    .line 7
    invoke-virtual {p1}, Lfp1;->k()Ldp1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lhl2;Lsk2;Lmz1;)V
    .locals 8
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
    iget-object v0, p1, Lhl2;->a:Lcl2;

    iget-object v0, v0, Lcl2;->a:Lll2;

    .line 3
    iget-object v0, v0, Lll2;->o:Lxk2;

    iget v0, v0, Lxk2;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lvi0;

    iget-object v2, p2, Lsk2;->O:Ljava/lang/String;

    iget-object p2, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v4, p1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p0, Lg32;->a:Landroid/content/Context;

    .line 6
    new-instance v5, Ly20;

    invoke-direct {v5, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 7
    new-instance v6, Li32;

    invoke-direct {v6, p0, p3}, Li32;-><init>(Lg32;Lmz1;)V

    iget-object p1, p3, Lmz1;->c:Llb1;

    move-object v7, p1

    check-cast v7, Lng0;

    .line 8
    invoke-interface/range {v1 .. v7}, Lvi0;->C6(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Lti0;Lng0;)V

    return-void

    .line 9
    :cond_0
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lvi0;

    iget-object v2, p2, Lsk2;->O:Ljava/lang/String;

    iget-object p2, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v4, p1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p0, Lg32;->a:Landroid/content/Context;

    .line 11
    new-instance v5, Ly20;

    invoke-direct {v5, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 12
    new-instance v6, Li32;

    invoke-direct {v6, p0, p3}, Li32;-><init>(Lg32;Lmz1;)V

    iget-object p1, p3, Lmz1;->c:Llb1;

    move-object v7, p1

    check-cast v7, Lng0;

    .line 13
    invoke-interface/range {v1 .. v7}, Lvi0;->K5(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Lti0;Lng0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote exception loading a rewarded RTB ad"

    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

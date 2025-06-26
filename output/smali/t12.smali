.class public final Lt12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsz1<",
        "Lqg1;",
        "Lvi0;",
        "Lg12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Loh1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Loh1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt12;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lt12;->b:Loh1;

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

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lq12;-><init>(Lsk2;Lvi0;Z)V

    .line 2
    iget-object v1, p0, Lt12;->b:Loh1;

    new-instance v2, Lv61;

    iget-object v3, p3, Lmz1;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance p1, Lrg1;

    invoke-direct {p1, v0}, Lrg1;-><init>(Lwh1;)V

    .line 3
    invoke-virtual {v1, v2, p1}, Loh1;->a(Lv61;Lrg1;)Lsg1;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lh61;->d()Lqa1;

    move-result-object p2

    .line 5
    iput-object p2, v0, Lq12;->d:Lqa1;

    .line 6
    iget-object p2, p3, Lmz1;->c:Llb1;

    check-cast p2, Lg12;

    invoke-virtual {p1}, Lh61;->g()Lh42;

    move-result-object p3

    invoke-virtual {p2, p3}, Lg12;->X6(Lng0;)V

    .line 7
    invoke-virtual {p1}, Lsg1;->j()Lqg1;

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
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lvi0;

    iget-object v2, p2, Lsk2;->O:Ljava/lang/String;

    iget-object p2, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v4, p1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p0, Lt12;->a:Landroid/content/Context;

    .line 4
    new-instance v5, Ly20;

    invoke-direct {v5, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 5
    new-instance v6, Lv12;

    invoke-direct {v6, p0, p3}, Lv12;-><init>(Lt12;Lmz1;)V

    iget-object p1, p3, Lmz1;->c:Llb1;

    move-object v7, p1

    check-cast v7, Lng0;

    .line 6
    invoke-interface/range {v1 .. v7}, Lvi0;->e6(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvq;Lx20;Lni0;Lng0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

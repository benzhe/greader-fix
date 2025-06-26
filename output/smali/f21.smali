.class public final Lf21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lg21;


# direct methods
.method public constructor <init>(Lg21;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf21;->a:Lg21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lf21;->a:Lg21;

    .line 2
    iget-object v0, p1, Lg21;->k:Lrl2;

    .line 3
    iget-object v1, p1, Lg21;->j:Lhq2;

    .line 4
    iget-object v2, p1, Lg21;->h:Lhl2;

    .line 5
    iget-object v3, p1, Lg21;->i:Lsk2;

    .line 6
    iget-object v7, v3, Lsk2;->c:Ljava/util/List;

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "failure_click_attok"

    .line 7
    invoke-virtual/range {v1 .. v7}, Lhq2;->b(Lhl2;Lsk2;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v1, p0, Lf21;->a:Lg21;

    .line 9
    iget-object v1, v1, Lg21;->e:Landroid/content/Context;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 11
    :goto_0
    invoke-virtual {v0, p1, v1}, Lrl2;->a(Ljava/util/List;I)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    .line 1
    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lf21;->a:Lg21;

    .line 3
    iget-object v7, p1, Lg21;->k:Lrl2;

    .line 4
    iget-object v0, p1, Lg21;->j:Lhq2;

    .line 5
    iget-object v1, p1, Lg21;->h:Lhl2;

    .line 6
    iget-object v2, p1, Lg21;->i:Lsk2;

    .line 7
    iget-object v6, v2, Lsk2;->c:Ljava/util/List;

    const/4 v3, 0x0

    const-string v4, ""

    .line 8
    invoke-virtual/range {v0 .. v6}, Lhq2;->b(Lhl2;Lsk2;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lf21;->a:Lg21;

    .line 10
    iget-object v0, v0, Lg21;->e:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 12
    :goto_0
    invoke-virtual {v7, p1, v0}, Lrl2;->a(Ljava/util/List;I)V

    return-void
.end method

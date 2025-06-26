.class public final Lyh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lob1;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lxw0;

.field public final g:Lsk2;

.field public final h:Lcom/google/android/gms/internal/ads/zzbar;

.field public final i:Llp3$a;

.field public j:Lx20;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxw0;Lsk2;Lcom/google/android/gms/internal/ads/zzbar;Llp3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lyh1;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lyh1;->f:Lxw0;

    .line 4
    iput-object p3, p0, Lyh1;->g:Lsk2;

    .line 5
    iput-object p4, p0, Lyh1;->h:Lcom/google/android/gms/internal/ads/zzbar;

    .line 6
    iput-object p5, p0, Lyh1;->i:Llp3$a;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 13

    .line 1
    iget-object v0, p0, Lyh1;->i:Llp3$a;

    sget-object v1, Llp3$a;->m:Llp3$a;

    if-eq v0, v1, :cond_0

    sget-object v1, Llp3$a;->i:Llp3$a;

    if-eq v0, v1, :cond_0

    sget-object v1, Llp3$a;->p:Llp3$a;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lyh1;->g:Lsk2;

    iget-boolean v0, v0, Lsk2;->N:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyh1;->f:Lxw0;

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v0

    iget-object v1, p0, Lyh1;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lrk0;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lyh1;->h:Lcom/google/android/gms/internal/ads/zzbar;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbar;->f:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object v0, p0, Lyh1;->g:Lsk2;

    iget-object v0, v0, Lsk2;->P:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getVideoEventsOwner()Ljava/lang/String;

    move-result-object v9

    .line 5
    sget-object v0, Ly40;->V2:Lo40;

    .line 6
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lyh1;->g:Lsk2;

    iget-object v0, v0, Lsk2;->P:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getMediaType()Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->VIDEO:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    if-ne v0, v1, :cond_1

    .line 10
    sget-object v0, Lsk0;->h:Lsk0;

    .line 11
    sget-object v1, Luk0;->g:Luk0;

    move-object v11, v0

    move-object v10, v1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lyh1;->g:Lsk2;

    iget v0, v0, Lsk2;->S:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 13
    sget-object v0, Luk0;->i:Luk0;

    goto :goto_0

    .line 14
    :cond_2
    sget-object v0, Luk0;->f:Luk0;

    .line 15
    :goto_0
    sget-object v1, Lsk0;->f:Lsk0;

    move-object v10, v0

    move-object v11, v1

    .line 16
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v4

    iget-object v0, p0, Lyh1;->f:Lxw0;

    .line 17
    invoke-interface {v0}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    iget-object v0, p0, Lyh1;->g:Lsk2;

    iget-object v12, v0, Lsk2;->g0:Ljava/lang/String;

    const-string v7, ""

    const-string v8, "javascript"

    .line 18
    invoke-virtual/range {v4 .. v12}, Lrk0;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Luk0;Lsk0;Ljava/lang/String;)Lx20;

    move-result-object v0

    iput-object v0, p0, Lyh1;->j:Lx20;

    goto :goto_2

    .line 19
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v4

    iget-object v0, p0, Lyh1;->f:Lxw0;

    .line 20
    invoke-interface {v0}, Lxw0;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    const-string v10, "Google"

    .line 21
    invoke-virtual/range {v4 .. v10}, Lrk0;->b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx20;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lyh1;->j:Lx20;

    .line 23
    :goto_2
    iget-object v0, p0, Lyh1;->j:Lx20;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyh1;->f:Lxw0;

    invoke-interface {v0}, Lxw0;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v0

    iget-object v1, p0, Lyh1;->j:Lx20;

    iget-object v2, p0, Lyh1;->f:Lxw0;

    invoke-interface {v2}, Lxw0;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrk0;->c(Lx20;Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lyh1;->f:Lxw0;

    iget-object v1, p0, Lyh1;->j:Lx20;

    invoke-interface {v0, v1}, Lxw0;->u0(Lx20;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v0

    iget-object v1, p0, Lyh1;->j:Lx20;

    invoke-virtual {v0, v1}, Lrk0;->d(Lx20;)V

    .line 27
    sget-object v0, Ly40;->X2:Lo40;

    .line 28
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 29
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    iget-object v0, p0, Lyh1;->f:Lxw0;

    new-instance v1, Lf4;

    invoke-direct {v1}, Lf4;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lyh1;->j:Lx20;

    return-void
.end method

.method public final zzvz()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyh1;->j:Lx20;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyh1;->f:Lxw0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lf4;

    invoke-direct {v1}, Lf4;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

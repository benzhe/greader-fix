.class public final Lvx0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lyx0;",
        ":",
        "Ldy0;",
        ":",
        "Ley0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lux0;

.field public final b:Lyx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyx0;Lux0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lux0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lvx0;->a:Lux0;

    .line 3
    iput-object p1, p0, Lvx0;->b:Lyx0;

    return-void
.end method


# virtual methods
.method public final getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string p1, "Click string is empty, not proceeding."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lvx0;->b:Lyx0;

    check-cast v0, Ldy0;

    invoke-interface {v0}, Ldy0;->l()Ld23;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Signal utils is empty, ignoring."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_1
    iget-object v0, v0, Ld23;->b:Lws2;

    if-nez v0, :cond_2

    const-string p1, "Signals object is empty, ignoring."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object v1

    .line 7
    :cond_2
    iget-object v2, p0, Lvx0;->b:Lyx0;

    invoke-interface {v2}, Lyx0;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p1, "Context is null, ignoring."

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object v1

    .line 9
    :cond_3
    iget-object v1, p0, Lvx0;->b:Lyx0;

    .line 10
    invoke-interface {v1}, Lyx0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lvx0;->b:Lyx0;

    check-cast v2, Ley0;

    invoke-interface {v2}, Ley0;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lvx0;->b:Lyx0;

    invoke-interface {v3}, Lyx0;->a()Landroid/app/Activity;

    move-result-object v3

    .line 11
    invoke-interface {v0, v1, p1, v2, v3}, Lws2;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final notify(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "URL is empty, ignoring message"

    .line 2
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v1, Lwx0;

    invoke-direct {v1, p0, p1}, Lwx0;-><init>(Lvx0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class public final Lmq6;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Loq6;


# direct methods
.method public constructor <init>(Loq6;)V
    .locals 0

    iput-object p1, p0, Lmq6;->a:Loq6;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    .line 2
    iget-object v0, p0, Lmq6;->a:Loq6;

    iget-object v0, v0, Loq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 3
    sget v1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->T:I

    .line 4
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_0
    return-void
.end method

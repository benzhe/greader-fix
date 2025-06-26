.class public final Lja0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

.field public final synthetic f:Lit3;

.field public final synthetic g:Lga0;


# direct methods
.method public constructor <init>(Lga0;Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lit3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lja0;->g:Lga0;

    iput-object p2, p0, Lja0;->e:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iput-object p3, p0, Lja0;->f:Lit3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lja0;->e:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v1, p0, Lja0;->f:Lit3;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zza(Lit3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lja0;->g:Lga0;

    .line 3
    iget-object v0, v0, Lga0;->e:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    .line 4
    iget-object v1, p0, Lja0;->e:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;->onAdManagerAdViewLoaded(Lcom/google/android/gms/ads/admanager/AdManagerAdView;)V

    return-void

    :cond_0
    const-string v0, "Could not bind."

    .line 5
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void
.end method

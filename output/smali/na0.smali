.class public final Lna0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field public final synthetic f:Lit3;

.field public final synthetic g:Lka0;


# direct methods
.method public constructor <init>(Lka0;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;Lit3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lna0;->g:Lka0;

    iput-object p2, p0, Lna0;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iput-object p3, p0, Lna0;->f:Lit3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lna0;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lna0;->f:Lit3;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zza(Lit3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lna0;->g:Lka0;

    .line 3
    iget-object v0, v0, Lka0;->e:Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;

    .line 4
    iget-object v1, p0, Lna0;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;->onPublisherAdViewLoaded(Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)V

    return-void

    :cond_0
    const-string v0, "Could not bind."

    .line 5
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-void
.end method

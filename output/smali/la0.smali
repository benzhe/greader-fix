.class public final Lla0;
.super Ly80;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly80;-><init>()V

    .line 2
    iput-object p1, p0, Lla0;->e:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final T1(Lm80;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lla0;->e:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    .line 2
    new-instance v1, Lr80;

    invoke-direct {v1, p1}, Lr80;-><init>(Lm80;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;->onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    return-void
.end method

.class public final Lfk0;
.super Lf90;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lek0;


# direct methods
.method public constructor <init>(Lek0;Ldk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfk0;->e:Lek0;

    invoke-direct {p0}, Lf90;-><init>()V

    return-void
.end method


# virtual methods
.method public final b5(Lq80;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfk0;->e:Lek0;

    .line 2
    iget-object v1, v0, Lek0;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    .line 3
    invoke-static {v0, p1}, Lek0;->a(Lek0;Lq80;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;->onCustomFormatAdLoaded(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    return-void
.end method

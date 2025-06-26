.class public final Lha0;
.super Lf90;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lba0;


# direct methods
.method public constructor <init>(Lba0;Lfa0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha0;->e:Lba0;

    invoke-direct {p0}, Lf90;-><init>()V

    return-void
.end method


# virtual methods
.method public final b5(Lq80;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha0;->e:Lba0;

    .line 2
    iget-object v1, v0, Lba0;->a:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    .line 3
    invoke-static {v0, p1}, Lba0;->a(Lba0;Lq80;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;->onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    return-void
.end method

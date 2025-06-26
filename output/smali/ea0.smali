.class public final Lea0;
.super Le90;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lba0;


# direct methods
.method public constructor <init>(Lba0;Lfa0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lea0;->e:Lba0;

    invoke-direct {p0}, Le90;-><init>()V

    return-void
.end method


# virtual methods
.method public final Y(Lq80;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lea0;->e:Lba0;

    .line 2
    iget-object v1, v0, Lba0;->b:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0, p1}, Lba0;->a(Lba0;Lq80;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    .line 4
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V

    return-void
.end method

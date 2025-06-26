.class public final Lgk0;
.super Le90;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lek0;


# direct methods
.method public constructor <init>(Lek0;Ldk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgk0;->e:Lek0;

    invoke-direct {p0}, Le90;-><init>()V

    return-void
.end method


# virtual methods
.method public final Y(Lq80;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lgk0;->e:Lek0;

    .line 2
    iget-object v1, v0, Lek0;->b:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0, p1}, Lek0;->a(Lek0;Lq80;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    .line 4
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Ljava/lang/String;)V

    return-void
.end method

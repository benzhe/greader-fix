.class public final Lbn0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lmf0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmf0<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcf0;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->n()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcf0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lhf0;

    move-result-object v0

    sget-object v1, Lgf0;->b:Ldf0;

    .line 4
    iget-object v0, v0, Lhf0;->a:Lyd0;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcf0;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->n()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcf0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lhf0;

    move-result-object p1

    .line 7
    new-instance v0, Lmf0;

    iget-object p1, p1, Lhf0;->a:Lyd0;

    const-string v2, "google.afma.sdkConstants.getSdkConstants"

    invoke-direct {v0, p1, v2, v1, v1}, Lmf0;-><init>(Lyd0;Ljava/lang/String;Lef0;Lbf0;)V

    .line 8
    iput-object v0, p0, Lbn0;->a:Lmf0;

    return-void
.end method

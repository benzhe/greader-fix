.class public Lcom/google/android/gms/ads/internal/util/zzz;
.super Lcom/google/android/gms/ads/internal/util/zzaa;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzaa;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lvq3;
    .locals 2

    .line 1
    sget-object v0, Lvq3;->f:Lvq3;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lvq3;->g:Lvq3;

    return-object p1

    :cond_0
    return-object v0
.end method

.class public final synthetic Lzd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lae2;


# direct methods
.method public constructor <init>(Lae2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzd2;->e:Lae2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lzd2;->e:Lae2;

    .line 1
    iget-object v1, v0, Lae2;->b:Landroid/content/Context;

    const-string v2, "phone"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {}, Lbi;->K()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Ly40;->Z4:Lo40;

    .line 5
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v5, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    move v5, v2

    .line 9
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v1, v0, Lae2;->b:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 11
    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 12
    iget-object v0, v0, Lae2;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 14
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 16
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 17
    :goto_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    move v7, v0

    move v4, v1

    move v8, v2

    goto :goto_2

    :cond_2
    const/4 v0, -0x2

    const/4 v4, -0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 18
    :goto_2
    new-instance v0, Lxd2;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lxd2;-><init>(Ljava/lang/String;IIIZI)V

    return-object v0
.end method

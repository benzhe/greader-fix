.class public final Lmr3;
.super Lz20;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz20<",
        "Ljt3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    .line 1
    invoke-direct {p0, v0}, Lz20;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljt3;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Ljt3;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lmt3;

    invoke-direct {v0, p1}, Lmt3;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;I)Lit3;
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ly20;

    invoke-direct {v2, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lz20;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljt3;

    const v6, 0xc365f90

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    .line 3
    invoke-interface/range {v1 .. v7}, Ljt3;->Z4(Lx20;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lhg0;II)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 4
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 5
    instance-of p3, p2, Lit3;

    if-eqz p3, :cond_1

    .line 6
    check-cast p2, Lit3;

    return-object p2

    .line 7
    :cond_1
    new-instance p2, Lkt3;

    invoke-direct {p2, p1}, Lkt3;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lz20$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "Could not create remote AdManager."

    .line 8
    invoke-static {p2, p1}, Lis0;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

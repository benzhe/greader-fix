.class public final Ltr2;
.super Lcom/google/android/gms/ads/internal/zzc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/zzc<",
        "Lyr2;",
        ">;"
    }
.end annotation


# instance fields
.field public final D:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Li00$a;Li00$b;I)V
    .locals 6

    const/16 v3, 0x74

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Landroid/content/Context;Landroid/os/Looper;ILi00$a;Li00$b;)V

    .line 2
    iput p5, p0, Ltr2;->D:I

    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lyr2;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lyr2;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lxr2;

    invoke-direct {v0, p1}, Lxr2;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.gass.START"

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    .line 1
    iget v0, p0, Ltr2;->D:I

    return v0
.end method

.method public final p()Lyr2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Li00;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lyr2;

    return-object v0
.end method

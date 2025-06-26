.class public final Ljs3;
.super Lms3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lms3<",
        "Lbt3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lhg0;

.field public final synthetic e:Lwr3;


# direct methods
.method public constructor <init>(Lwr3;Landroid/content/Context;Ljava/lang/String;Lhg0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljs3;->e:Lwr3;

    iput-object p2, p0, Ljs3;->b:Landroid/content/Context;

    iput-object p3, p0, Ljs3;->c:Ljava/lang/String;

    iput-object p4, p0, Ljs3;->d:Lhg0;

    invoke-direct {p0}, Lms3;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqt3;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljs3;->b:Landroid/content/Context;

    .line 2
    new-instance v1, Ly20;

    invoke-direct {v1, v0}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Ljs3;->c:Ljava/lang/String;

    iget-object v2, p0, Ljs3;->d:Lhg0;

    const v3, 0xc365f90

    .line 4
    invoke-interface {p1, v1, v0, v2, v3}, Lqt3;->zza(Lx20;Ljava/lang/String;Lhg0;I)Lbt3;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ljs3;->b:Landroid/content/Context;

    const-string v1, "native_ad"

    invoke-static {v0, v1}, Lwr3;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lp30;

    invoke-direct {v0}, Lp30;-><init>()V

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljs3;->e:Lwr3;

    .line 2
    iget-object v0, v0, Lwr3;->b:Ljr3;

    .line 3
    iget-object v1, p0, Ljs3;->b:Landroid/content/Context;

    iget-object v2, p0, Ljs3;->c:Ljava/lang/String;

    iget-object v3, p0, Ljs3;->d:Lhg0;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    :try_start_0
    new-instance v5, Ly20;

    invoke-direct {v5, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v1}, Lz20;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgt3;

    const v1, 0xc365f90

    .line 7
    invoke-interface {v0, v5, v2, v3, v1}, Lgt3;->p1(Lx20;Ljava/lang/String;Lhg0;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    .line 8
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lbt3;

    if-eqz v2, :cond_1

    .line 10
    check-cast v1, Lbt3;

    :goto_0
    move-object v4, v1

    goto :goto_2

    .line 11
    :cond_1
    new-instance v1, Ldt3;

    invoke-direct {v1, v0}, Ldt3;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lz20$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v1, "Could not create remote builder for AdLoader."

    .line 12
    invoke-static {v1, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v4
.end method

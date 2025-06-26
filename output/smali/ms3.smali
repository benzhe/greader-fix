.class public abstract Lms3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lqt3;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Lwr3;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    instance-of v2, v1, Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string v1, "ClientApi class is not an instance of IBinder."

    .line 7
    invoke-static {v1}, Lis0;->zzez(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_0
    check-cast v1, Landroid/os/IBinder;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "com.google.android.gms.ads.internal.client.IClientApi"

    .line 9
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 10
    instance-of v3, v2, Lqt3;

    if-eqz v3, :cond_2

    .line 11
    check-cast v2, Lqt3;

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 12
    :cond_2
    new-instance v2, Ltt3;

    invoke-direct {v2, v1}, Ltt3;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed to instantiate ClientApi class."

    .line 13
    invoke-static {v1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 14
    :goto_1
    sput-object v0, Lms3;->a:Lqt3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lqt3;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqt3;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final b(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->a:Lzr0;

    const v1, 0xbdfcb8

    .line 2
    invoke-static {p1, v1}, Lzr0;->n(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p2, "Google Play Services is not available."

    .line 3
    invoke-static {p2}, Lis0;->zzdz(Ljava/lang/String;)V

    const/4 p2, 0x1

    :cond_0
    const-string v1, "com.google.android.gms.ads.dynamite"

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-le v2, v1, :cond_1

    const/4 p2, 0x1

    .line 6
    :cond_1
    invoke-static {p1}, Ly40;->a(Landroid/content/Context;)V

    .line 7
    sget-object v1, Ln60;->a:Le60;

    invoke-virtual {v1}, Le60;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Ln60;->b:Le60;

    invoke-virtual {v1}, Le60;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p2, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    const-string v4, "Cannot invoke remote loader."

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p0}, Lms3;->e()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    if-nez v1, :cond_9

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lms3;->d()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 11
    invoke-static {v4, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 12
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lms3;->d()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 13
    invoke-static {v4, p2}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-nez v3, :cond_5

    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_7

    .line 14
    sget-object v1, Lw60;->a:Le60;

    invoke-virtual {v1}, Le60;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 15
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->h:Ljava/util/Random;

    .line 16
    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "dynamite_load"

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_missing"

    .line 19
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    sget-object p2, Los3;->j:Los3;

    iget-object v1, p2, Los3;->a:Lzr0;

    .line 21
    iget-object p2, p2, Los3;->g:Lcom/google/android/gms/internal/ads/zzbar;

    .line 22
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v1, Lyr0;

    invoke-direct {v1}, Lyr0;-><init>()V

    const-string v2, "gmob-apps"

    invoke-static {p1, p2, v2, v0, v1}, Lzr0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Las0;)V

    :cond_7
    if-nez v3, :cond_8

    .line 25
    invoke-virtual {p0}, Lms3;->e()Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_8
    :goto_5
    move-object p1, v3

    :cond_9
    :goto_6
    if-nez p1, :cond_a

    .line 26
    invoke-virtual {p0}, Lms3;->c()Ljava/lang/Object;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final e()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lms3;->a:Lqt3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ClientApi class cannot be loaded."

    .line 2
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lms3;->a(Lqt3;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Cannot invoke local loader using ClientApi class."

    .line 4
    invoke-static {v2, v0}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

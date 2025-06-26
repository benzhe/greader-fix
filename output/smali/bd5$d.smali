.class public final Lbd5$d;
.super Lbd5$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbd5$c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lnc5;

.field public final c:Landroid/os/IBinder;

.field public final synthetic d:Lbd5;


# direct methods
.method public constructor <init>(Lbd5;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    iput-object p1, p0, Lbd5$d;->d:Lbd5;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lbd5$c;-><init>(Lbd5;Ljava/lang/Object;)V

    .line 1
    sget-object p1, Lnc5;->g:Lnc5;

    :try_start_0
    invoke-static {p2}, Lnc5;->valueOf(Ljava/lang/String;)Lnc5;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iput-object p1, p0, Lbd5$d;->b:Lnc5;

    iput-object p3, p0, Lbd5$d;->c:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "com.google.android.youtube.player.internal.IYouTubeService"

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    sget-object p1, Lbd5$a;->a:[I

    iget-object v1, p0, Lbd5$d;->b:Lnc5;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lbd5$d;->d:Lbd5;

    iget-object v0, p0, Lbd5$d;->b:Lnc5;

    invoke-virtual {p1, v0}, Lbd5;->d(Lnc5;)V

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lbd5$d;->c:Landroid/os/IBinder;

    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lbd5$d;->d:Lbd5;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lbd5$d;->d:Lbd5;

    iget-object v1, p0, Lbd5$d;->c:Landroid/os/IBinder;

    move-object v2, p1

    check-cast v2, Lzc5;

    .line 1
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lyc5$a;->e:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lyc5;

    if-eqz v2, :cond_2

    check-cast v0, Lyc5;

    goto :goto_0

    :cond_2
    new-instance v0, Lyc5$a$a;

    invoke-direct {v0, v1}, Lyc5$a$a;-><init>(Landroid/os/IBinder;)V

    .line 3
    :goto_0
    iput-object v0, p1, Lbd5;->c:Landroid/os/IInterface;

    .line 4
    iget-object p1, p0, Lbd5$d;->d:Lbd5;

    .line 5
    iget-object v0, p1, Lbd5;->c:Landroid/os/IInterface;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lbd5;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_3
    iget-object p1, p0, Lbd5$d;->d:Lbd5;

    .line 7
    invoke-virtual {p1}, Lbd5;->c()V

    .line 8
    iget-object p1, p0, Lbd5$d;->d:Lbd5;

    sget-object v0, Lnc5;->f:Lnc5;

    invoke-virtual {p1, v0}, Lbd5;->d(Lnc5;)V

    :cond_4
    :goto_1
    return-void
.end method

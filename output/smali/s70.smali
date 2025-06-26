.class public abstract Ls70;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lt70;


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IMediaContent"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener"

    .line 2
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 3
    instance-of p4, p2, Lh90;

    if-eqz p4, :cond_1

    .line 4
    move-object p1, p2

    check-cast p1, Lh90;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Lk90;

    invoke-direct {p2, p1}, Lk90;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 6
    :goto_0
    move-object p2, p0

    check-cast p2, Lij1;

    .line 7
    sget-object p4, Ly40;->Q3:Lo40;

    .line 8
    sget-object v0, Los3;->j:Los3;

    iget-object v0, v0, Los3;->f:Lu40;

    .line 9
    invoke-virtual {v0, p4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p4

    .line 10
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    iget-object p4, p2, Lij1;->f:Lwj1;

    invoke-virtual {p4}, Lwj1;->h()Lsu3;

    move-result-object p4

    instance-of p4, p4, Lrx0;

    if-eqz p4, :cond_3

    .line 12
    iget-object p2, p2, Lij1;->f:Lwj1;

    .line 13
    invoke-virtual {p2}, Lwj1;->h()Lsu3;

    move-result-object p2

    check-cast p2, Lrx0;

    .line 14
    iget-object p4, p2, Lrx0;->f:Ljava/lang/Object;

    monitor-enter p4

    .line 15
    :try_start_0
    iput-object p1, p2, Lrx0;->r:Lh90;

    .line 16
    monitor-exit p4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 18
    :pswitch_1
    move-object p1, p0

    check-cast p1, Lij1;

    invoke-virtual {p1}, Lij1;->hasVideoContent()Z

    move-result p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    sget-object p2, Lrd3;->a:Ljava/lang/ClassLoader;

    .line 21
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 22
    :pswitch_2
    move-object p1, p0

    check-cast p1, Lij1;

    invoke-virtual {p1}, Lij1;->getVideoController()Lsu3;

    move-result-object p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 25
    :pswitch_3
    move-object p1, p0

    check-cast p1, Lij1;

    invoke-virtual {p1}, Lij1;->getCurrentTime()F

    move-result p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_2

    .line 28
    :pswitch_4
    move-object p1, p0

    check-cast p1, Lij1;

    invoke-virtual {p1}, Lij1;->getDuration()F

    move-result p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_2

    .line 31
    :pswitch_5
    move-object p1, p0

    check-cast p1, Lij1;

    invoke-virtual {p1}, Lij1;->w5()Lx20;

    move-result-object p1

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 34
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lx20$a;->g0(Landroid/os/IBinder;)Lx20;

    move-result-object p1

    .line 35
    move-object p2, p0

    check-cast p2, Lij1;

    invoke-virtual {p2, p1}, Lij1;->c1(Lx20;)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 37
    :pswitch_7
    move-object p1, p0

    check-cast p1, Lij1;

    invoke-virtual {p1}, Lij1;->getAspectRatio()F

    move-result p1

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

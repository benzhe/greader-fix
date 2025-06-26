.class public abstract Lp80;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lm80;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeContentAd"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
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
    move-object p1, p0

    check-cast p1, Lao1;

    .line 2
    iget-object p1, p1, Lao1;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    move-object p1, p0

    check-cast p1, Lao1;

    .line 6
    iget-object p1, p1, Lao1;->g:Lwj1;

    invoke-virtual {p1}, Lwj1;->w()Lx20;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 9
    :pswitch_2
    move-object p1, p0

    check-cast p1, Lao1;

    invoke-virtual {p1}, Lao1;->f()Lm70;

    move-result-object p1

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 12
    :pswitch_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 13
    move-object p2, p0

    check-cast p2, Lao1;

    .line 14
    iget-object p2, p2, Lao1;->f:Lkj1;

    invoke-virtual {p2, p1}, Lkj1;->l(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 16
    :pswitch_4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 17
    move-object p2, p0

    check-cast p2, Lao1;

    .line 18
    iget-object p2, p2, Lao1;->f:Lkj1;

    invoke-virtual {p2, p1}, Lkj1;->m(Landroid/os/Bundle;)Z

    move-result p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 21
    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lrd3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 22
    move-object p2, p0

    check-cast p2, Lao1;

    .line 23
    iget-object p2, p2, Lao1;->f:Lkj1;

    invoke-virtual {p2, p1}, Lkj1;->k(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 25
    :pswitch_6
    move-object p1, p0

    check-cast p1, Lao1;

    invoke-virtual {p1}, Lao1;->getVideoController()Lsu3;

    move-result-object p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    invoke-static {p3, p1}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 28
    :pswitch_7
    move-object p1, p0

    check-cast p1, Lao1;

    .line 29
    iget-object p1, p1, Lao1;->f:Lkj1;

    invoke-virtual {p1}, Lkj1;->a()V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 31
    :pswitch_8
    move-object p1, p0

    check-cast p1, Lao1;

    .line 32
    iget-object p1, p1, Lao1;->g:Lwj1;

    invoke-virtual {p1}, Lwj1;->d()Landroid/os/Bundle;

    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-static {p3, p1}, Lrd3;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 35
    :pswitch_9
    move-object p1, p0

    check-cast p1, Lao1;

    .line 36
    iget-object p1, p1, Lao1;->g:Lwj1;

    .line 37
    monitor-enter p1

    :try_start_0
    const-string p2, "advertiser"

    .line 38
    invoke-virtual {p1, p2}, Lwj1;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 41
    monitor-exit p1

    throw p2

    .line 42
    :pswitch_a
    move-object p1, p0

    check-cast p1, Lao1;

    .line 43
    iget-object p1, p1, Lao1;->g:Lwj1;

    invoke-virtual {p1}, Lwj1;->b()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_b
    move-object p1, p0

    check-cast p1, Lao1;

    .line 47
    iget-object p1, p1, Lao1;->g:Lwj1;

    .line 48
    monitor-enter p1

    .line 49
    :try_start_1
    iget-object p2, p1, Lwj1;->p:Lu70;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-static {p3, p2}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 52
    monitor-exit p1

    throw p2

    .line 53
    :pswitch_c
    move-object p1, p0

    check-cast p1, Lao1;

    .line 54
    iget-object p1, p1, Lao1;->g:Lwj1;

    invoke-virtual {p1}, Lwj1;->a()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_d
    move-object p1, p0

    check-cast p1, Lao1;

    .line 58
    iget-object p1, p1, Lao1;->g:Lwj1;

    invoke-virtual {p1}, Lwj1;->f()Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 61
    :pswitch_e
    move-object p1, p0

    check-cast p1, Lao1;

    .line 62
    iget-object p1, p1, Lao1;->g:Lwj1;

    invoke-virtual {p1}, Lwj1;->e()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_f
    move-object p1, p0

    check-cast p1, Lao1;

    .line 66
    iget-object p1, p1, Lao1;->f:Lkj1;

    .line 67
    new-instance p2, Ly20;

    invoke-direct {p2, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-static {p3, p2}, Lrd3;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

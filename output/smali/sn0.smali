.class public final Lsn0;
.super Lsd3;
.source "SourceFile"

# interfaces
.implements Lpn0;


# instance fields
.field public e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    .line 1
    invoke-direct {p0, v0}, Lsd3;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method


# virtual methods
.method public final D5(Lgn0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lqn0;

    invoke-direct {v1, p1}, Lqn0;-><init>(Lgn0;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V

    :cond_0
    return-void
.end method

.method public final V6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    iget-object p1, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    goto :goto_1

    .line 3
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Lsn0;->onRewardedVideoAdFailedToLoad(I)V

    goto :goto_1

    .line 5
    :pswitch_2
    iget-object p1, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLeftApplication()V

    goto :goto_1

    .line 7
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardItem"

    .line 8
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 9
    instance-of p4, p2, Lgn0;

    if-eqz p4, :cond_1

    .line 10
    move-object p1, p2

    check-cast p1, Lgn0;

    goto :goto_0

    .line 11
    :cond_1
    new-instance p2, Lin0;

    invoke-direct {p2, p1}, Lin0;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 12
    :goto_0
    iget-object p2, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz p2, :cond_2

    .line 13
    new-instance p4, Lqn0;

    invoke-direct {p4, p1}, Lqn0;-><init>(Lgn0;)V

    invoke-interface {p2, p4}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V

    goto :goto_1

    .line 14
    :pswitch_4
    iget-object p1, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz p1, :cond_2

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdClosed()V

    goto :goto_1

    .line 16
    :pswitch_5
    iget-object p1, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz p1, :cond_2

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoStarted()V

    goto :goto_1

    .line 18
    :pswitch_6
    iget-object p1, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz p1, :cond_2

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdOpened()V

    goto :goto_1

    .line 20
    :pswitch_7
    iget-object p1, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz p1, :cond_2

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLoaded()V

    .line 22
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    :goto_2
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final onRewardedVideoAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdFailedToLoad(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdLeftApplication()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLoaded()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdOpened()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdOpened()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsn0;->e:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoStarted()V

    :cond_0
    return-void
.end method

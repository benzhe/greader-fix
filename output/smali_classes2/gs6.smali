.class public final Lgs6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# instance fields
.field public final synthetic a:Lhs6;


# direct methods
.method public constructor <init>(Lhs6;)V
    .locals 0

    iput-object p1, p0, Lgs6;->a:Lhs6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 6

    const-string v0, "rewardItem"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lto0;

    invoke-virtual {p1}, Lto0;->getAmount()I

    move-result v0

    int-to-long v0, v0

    .line 2
    sget-object v2, Ln48;->g:Ln48;

    const v2, 0x15180

    .line 3
    invoke-static {v0, v1, v2}, Lkt7;->r(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln48;->i(JI)Ln48;

    move-result-object v0

    const-string v1, "Duration.ofDays(rewardItem.amount.toLong())"

    .line 4
    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-wide v0, v0, Ln48;->e:J

    .line 6
    iget-object v3, p0, Lgs6;->a:Lhs6;

    iget-object v3, v3, Lhs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 7
    sget v4, Lcn6;->b:I

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    const-string v0, "premium_rewarded_expiry_time"

    .line 9
    invoke-static {v3, v0, v4, v5}, Liw6;->U(Landroid/content/Context;Ljava/lang/String;J)V

    .line 10
    new-instance v0, Lt75;

    iget-object v1, p0, Lgs6;->a:Lhs6;

    iget-object v1, v1, Lhs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    invoke-direct {v0, v1}, Lt75;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1102e0

    .line 11
    invoke-virtual {v0, v1}, Lt75;->m(I)Lt75;

    .line 12
    iget-object v1, p0, Lgs6;->a:Lhs6;

    iget-object v1, v1, Lhs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lto0;->getAmount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    const p1, 0x7f1102de

    invoke-virtual {v1, p1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v1, v0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 14
    iget-object p1, p0, Lgs6;->a:Lhs6;

    iget-object p1, p1, Lhs6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const v1, 0x104000a

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v1, Lc;->g:Lc;

    invoke-virtual {v0, p1, v1}, Lt75;->k(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 15
    invoke-virtual {v0}, Lt75;->a()La0;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.class public final synthetic Lsk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ltk1;

.field public final f:Lxl1;


# direct methods
.method public constructor <init>(Ltk1;Lxl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk1;->e:Ltk1;

    iput-object p2, p0, Lsk1;->f:Lxl1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lsk1;->e:Ltk1;

    iget-object v1, p0, Lsk1;->f:Lxl1;

    .line 1
    iget-object v2, v0, Ltk1;->c:Lak1;

    invoke-virtual {v2}, Lak1;->e()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Ltk1;->c:Lak1;

    .line 2
    invoke-virtual {v2}, Lak1;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v5, 0x0

    if-eqz v2, :cond_3

    const-string v2, "1098"

    const-string v6, "3011"

    .line 3
    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x2

    if-ge v6, v7, :cond_3

    .line 4
    aget-object v7, v2, v6

    .line 5
    invoke-interface {v1, v7}, Lxl1;->S2(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 6
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    .line 7
    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object v7, v5

    :goto_3
    if-eqz v7, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 8
    :goto_4
    invoke-interface {v1}, Lxl1;->y5()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 9
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 10
    iget-object v9, v0, Ltk1;->d:Lwj1;

    .line 11
    monitor-enter v9

    .line 12
    :try_start_0
    iget-object v10, v9, Lwj1;->d:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v9

    if-eqz v10, :cond_6

    .line 13
    iget-object v6, v0, Ltk1;->d:Lwj1;

    .line 14
    monitor-enter v6

    .line 15
    :try_start_1
    iget-object v9, v6, Lwj1;->d:Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 16
    iget-object v6, v0, Ltk1;->i:Lcom/google/android/gms/internal/ads/zzaei;

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    if-nez v2, :cond_9

    .line 17
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzaei;->i:I

    invoke-static {v8, v6}, Ltk1;->a(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 18
    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 19
    monitor-exit v6

    throw v0

    .line 20
    :cond_6
    iget-object v9, v0, Ltk1;->d:Lwj1;

    invoke-virtual {v9}, Lwj1;->v()Lm70;

    move-result-object v9

    instance-of v9, v9, Lg70;

    if-nez v9, :cond_7

    move-object v9, v5

    goto :goto_5

    .line 21
    :cond_7
    iget-object v9, v0, Ltk1;->d:Lwj1;

    invoke-virtual {v9}, Lwj1;->v()Lm70;

    move-result-object v9

    check-cast v9, Lg70;

    if-nez v2, :cond_8

    .line 22
    iget v10, v9, Lg70;->l:I

    .line 23
    invoke-static {v8, v10}, Ltk1;->a(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 24
    :cond_8
    new-instance v10, Lcom/google/android/gms/internal/ads/zzaec;

    invoke-direct {v10, v6, v9, v8}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(Landroid/content/Context;Lg70;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 25
    sget-object v6, Ly40;->Y1:Lo40;

    .line 26
    sget-object v8, Los3;->j:Los3;

    iget-object v8, v8, Los3;->f:Lu40;

    .line 27
    invoke-virtual {v8, v6}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v6

    .line 28
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v10, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v9, v10

    :cond_9
    :goto_5
    const/4 v6, -0x1

    if-eqz v9, :cond_d

    .line 29
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_a

    .line 30
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    if-eqz v2, :cond_b

    .line 31
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 33
    :cond_b
    new-instance v2, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-interface {v1}, Lxl1;->y5()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 36
    invoke-interface {v1}, Lxl1;->e2()Landroid/widget/FrameLayout;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 37
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 38
    :cond_c
    :goto_6
    invoke-interface {v1}, Lxl1;->v6()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v9, v4}, Lxl1;->l0(Ljava/lang/String;Landroid/view/View;Z)V

    .line 39
    :cond_d
    sget-object v2, Lrk1;->s:[Ljava/lang/String;

    array-length v4, v2

    :goto_7
    if-ge v3, v4, :cond_f

    aget-object v7, v2, v3

    .line 40
    invoke-interface {v1, v7}, Lxl1;->S2(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    .line 41
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_e

    .line 42
    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_8

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    move-object v7, v5

    .line 43
    :goto_8
    iget-object v2, v0, Ltk1;->h:Ljava/util/concurrent/Executor;

    new-instance v3, Lvk1;

    invoke-direct {v3, v0, v7}, Lvk1;-><init>(Ltk1;Landroid/view/ViewGroup;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-eqz v7, :cond_15

    .line 44
    invoke-virtual {v0, v7}, Ltk1;->b(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 45
    iget-object v2, v0, Ltk1;->d:Lwj1;

    invoke-virtual {v2}, Lwj1;->o()Lxw0;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 46
    iget-object v2, v0, Ltk1;->d:Lwj1;

    .line 47
    invoke-virtual {v2}, Lwj1;->o()Lxw0;

    move-result-object v2

    new-instance v3, Luk1;

    invoke-direct {v3, v0, v1, v7}, Luk1;-><init>(Ltk1;Lxl1;Landroid/view/ViewGroup;)V

    .line 48
    invoke-interface {v2, v3}, Lxw0;->K(Lj70;)V

    goto/16 :goto_c

    .line 49
    :cond_10
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 50
    invoke-interface {v1}, Lxl1;->y5()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    :cond_11
    if-eqz v5, :cond_15

    .line 52
    sget-object v2, Ly40;->X1:Lo40;

    .line 53
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 54
    invoke-virtual {v3, v2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 56
    iget-object v0, v0, Ltk1;->j:Lrj1;

    invoke-virtual {v0}, Lrj1;->a()Lt70;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 57
    :try_start_2
    invoke-interface {v0}, Lt70;->w5()Lx20;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    const-string v0, "Could not get main image drawable"

    .line 58
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    goto :goto_c

    .line 59
    :cond_12
    iget-object v0, v0, Ltk1;->d:Lwj1;

    invoke-virtual {v0}, Lwj1;->l()Lu70;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 60
    :try_start_3
    invoke-interface {v0}, Lu70;->q2()Lx20;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_9
    if-eqz v0, :cond_15

    .line 61
    invoke-static {v0}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 62
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-interface {v1}, Lxl1;->g0()Lx20;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 65
    sget-object v1, Ly40;->L3:Lo40;

    .line 66
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 67
    invoke-virtual {v3, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_a

    .line 69
    :cond_13
    invoke-static {v0}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;

    .line 70
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_b

    .line 71
    :cond_14
    :goto_a
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    :goto_b
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_c

    :catch_1
    const-string v0, "Could not get drawable from image"

    .line 74
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    :cond_15
    :goto_c
    return-void

    :catchall_1
    move-exception v0

    .line 75
    monitor-exit v9

    throw v0
.end method

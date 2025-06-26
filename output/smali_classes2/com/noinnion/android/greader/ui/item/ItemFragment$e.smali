.class public final Lcom/noinnion/android/greader/ui/item/ItemFragment$e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/item/ItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$e;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "e"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$e;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 2
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget v1, v1, Lkw6;->r:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    const/4 v5, 0x2

    if-eq v1, v5, :cond_a

    const/4 v5, 0x3

    if-eq v1, v5, :cond_8

    const/4 v5, 0x4

    if-eq v1, v5, :cond_7

    const/4 v5, 0x5

    if-eq v1, v5, :cond_6

    const/16 v5, 0x9

    if-eq v1, v5, :cond_5

    const/16 v5, 0xd

    if-eq v1, v5, :cond_1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    invoke-static {v1, v0, v4}, Ln56;->O1(Landroid/app/Activity;Lap6;Z)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v5, v1, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-nez v5, :cond_2

    move-object v1, v2

    :cond_2
    check-cast v1, Lcom/noinnion/android/greader/ui/item/ItemActivity;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/noinnion/android/greader/ui/item/ItemActivity;->onBackPressed()V

    .line 5
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    check-cast v2, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->Y()V

    goto :goto_1

    .line 6
    :cond_5
    invoke-virtual {v0, v4}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->x(Z)V

    goto :goto_1

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Liw6;->Q(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v1, v2, v0}, Ljw6;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_1

    .line 8
    :cond_7
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C()V

    goto :goto_1

    .line 9
    :cond_8
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->J()V

    goto :goto_1

    .line 10
    :cond_9
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->H()V

    :cond_a
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_b

    .line 11
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    const/4 v3, 0x1

    :cond_c
    return v3

    :cond_d
    const-string p1, "mReadingOptions"

    .line 12
    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    throw v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "e"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$e;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 2
    iget-wide v3, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->R:J

    sub-long/2addr v0, v3

    .line 3
    iget-wide v3, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->S:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->O:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->O:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->P:Z

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p3, "e1"

    invoke-static {p1, p3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$e;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 2
    iput-wide p2, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->R:J

    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const-string v0, "e1"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e2"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$e;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->O:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->P:Z

    .line 4
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->p()V

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "e"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$e;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 2
    iget-boolean v1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->P:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->O:Z

    .line 4
    iput-boolean v1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->P:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->O:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$e;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 7
    iget-wide v3, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->R:J

    sub-long/2addr v0, v3

    .line 8
    iget-wide v2, v2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->S:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$e;->a:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 10
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->l()V

    .line 11
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.class public Lu07$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu07;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lu07;


# direct methods
.method public constructor <init>(Lu07;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu07$a;->e:Lu07;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lu07$a;->e:Lu07;

    iget-object v1, v0, Lu07;->f:Lt07$e;

    .line 2
    iget-boolean v2, v1, Lt07$e;->g:Z

    if-eqz v2, :cond_6

    .line 3
    iget-object v2, v1, Lt07$e;->h:Lt07;

    iget-object v0, v0, Lu07;->e:Landroid/view/View;

    .line 4
    iget v1, v1, Lt07$e;->e:I

    .line 5
    iget-object v3, v2, Lt07;->m:Lt07$d;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 6
    check-cast v3, Ldr6;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 9
    iget-object v6, v3, Ldr6;->e:Ler6;

    invoke-virtual {v6, v5}, Lt27;->getItem(I)Landroid/database/Cursor;

    move-result-object v5

    .line 10
    new-instance v6, Lap6;

    invoke-direct {v6, v5}, Lap6;-><init>(Landroid/database/Cursor;)V

    .line 11
    invoke-virtual {v6}, Lap6;->d()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 12
    invoke-virtual {v6}, Lap6;->n()Ljava/lang/String;

    move-result-object v5

    .line 13
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v6

    .line 15
    new-instance v7, Ltx6;

    invoke-direct {v7, v5}, Ltx6;-><init>(Ljava/lang/String;)V

    iput-object v7, v3, Ldr6;->a:Lg07;

    .line 16
    invoke-virtual {v6, v7}, Lhz6;->b(Lg07;)V

    .line 17
    new-instance v7, Lcr6;

    invoke-direct {v7, v3}, Lcr6;-><init>(Ldr6;)V

    invoke-virtual {v6, v5, v4, v4, v7}, Lhz6;->l(Ljava/lang/String;Luz6;Lgz6;Ll07;)V

    .line 18
    :cond_3
    :goto_0
    iget-object v3, v2, Lt07;->d:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 21
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 22
    invoke-virtual {v0, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 24
    iget-boolean v3, v2, Lt07;->f:Z

    if-eqz v3, :cond_4

    .line 25
    iget-object v3, v2, Lt07;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object v3, v2, Lt07;->d:Landroid/view/ViewGroup;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, v2, Lt07;->a:Lt07$b;

    iget-object v7, v7, Lt07$b;->a:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, v2, Lt07;->c:Landroid/view/ViewGroup;

    invoke-static {v8}, Ln56;->n(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_4
    iget-object v3, v2, Lt07;->e:Lv07;

    const/16 v6, 0x113

    .line 28
    iget-object v7, v3, Lv07;->b:Landroid/view/View;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 29
    iget-object v7, v3, Lv07;->a:Landroid/view/View;

    const/4 v9, 0x1

    new-array v10, v9, [F

    aput v8, v10, v5

    const-string v11, "alpha"

    invoke-static {v7, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 30
    new-instance v10, Landroid/view/animation/OvershootInterpolator;

    const v11, 0x3f99999a    # 1.2f

    invoke-direct {v10, v11}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v12, v6

    .line 31
    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 32
    iget-object v6, v3, Lv07;->b:Landroid/view/View;

    new-array v10, v9, [F

    aput v8, v10, v5

    const-string v14, "scaleX"

    invoke-static {v6, v14, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 33
    invoke-virtual {v6, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 34
    iget-object v3, v3, Lv07;->b:Landroid/view/View;

    new-array v10, v9, [F

    aput v8, v10, v5

    const-string v8, "scaleY"

    invoke-static {v3, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 35
    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 36
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 37
    new-instance v10, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v10, v11}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 39
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 40
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 41
    iget-object v3, v2, Lt07;->a:Lt07$b;

    iget-object v3, v3, Lt07$b;->c:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 42
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 43
    :cond_5
    iput v5, v2, Lt07;->t:I

    .line 44
    iput v5, v2, Lt07;->u:I

    .line 45
    iget-object v2, v2, Lt07;->n:Lt07$c;

    .line 46
    iput-object v0, v2, Lt07$c;->b:Landroid/view/View;

    .line 47
    iput v1, v2, Lt07$c;->a:I

    .line 48
    iget-object v0, p0, Lu07$a;->e:Lu07;

    iget-object v0, v0, Lu07;->f:Lt07$e;

    .line 49
    iput-object v4, v0, Lt07$e;->f:Ljava/lang/Runnable;

    :cond_6
    return-void
.end method

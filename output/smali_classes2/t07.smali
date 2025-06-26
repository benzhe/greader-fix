.class public Lt07;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt07$d;,
        Lt07$c;,
        Lt07$e;,
        Lt07$b;
    }
.end annotation


# instance fields
.field public a:Lt07$b;

.field public b:Landroid/view/View;

.field public c:Landroid/view/ViewGroup;

.field public d:Landroid/view/ViewGroup;

.field public e:Lv07;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx07;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw07;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lw07;

.field public m:Lt07$d;

.field public n:Lt07$c;

.field public o:Landroid/view/GestureDetector;

.field public p:Ljava/util/Timer;

.field public q:I

.field public r:[F

.field public s:I

.field public t:I

.field public u:I

.field public v:J


# direct methods
.method public constructor <init>(Lt07$b;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lt07;->p:Ljava/util/Timer;

    .line 3
    iput-object p1, p0, Lt07;->a:Lt07$b;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lt07;->m:Lt07$d;

    .line 5
    iget-object p1, p0, Lt07;->a:Lt07$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lt07;->a:Lt07$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Lt07$c;

    invoke-direct {p1, p0}, Lt07$c;-><init>(Lt07;)V

    iput-object p1, p0, Lt07;->n:Lt07$c;

    .line 8
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lt07;->a:Lt07$b;

    iget-object v0, v0, Lt07$b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lt07;->n:Lt07$c;

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lt07;->o:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lt07;->a:Lt07$b;

    iget-object v1, v1, Lt07$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lt07;->a:Lt07$b;

    iget-object v1, v1, Lt07$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 11
    new-instance v2, Lt07$e;

    const/4 v3, -0x1

    invoke-direct {v2, p0, v3}, Lt07$e;-><init>(Lt07;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_0

    .line 13
    new-instance v2, Ls07;

    invoke-direct {v2, p0}, Ls07;-><init>(Lt07;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lt07;->o:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt07;->j:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt07;->k:Ljava/util/ArrayList;

    .line 17
    iget-object v0, p0, Lt07;->a:Lt07$b;

    iget-boolean v1, v0, Lt07$b;->e:Z

    iput-boolean v1, p0, Lt07;->f:Z

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lt07;->g:Z

    .line 19
    iput-boolean v1, p0, Lt07;->h:Z

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p0, Lt07;->i:Z

    .line 21
    iget-object v0, p0, Lt07;->a:Lt07$b;

    iget-object v0, v0, Lt07$b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lt07;->q:I

    .line 22
    iget-object v0, p0, Lt07;->a:Lt07$b;

    iget-object v0, v0, Lt07$b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0xc

    int-to-float v2, v2

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 24
    iput v0, p0, Lt07;->s:I

    .line 25
    iget-object v0, p0, Lt07;->a:Lt07$b;

    iget-object v0, v0, Lt07$b;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lt07;->a:Lt07$b;

    iget-object v1, v1, Lt07$b;->a:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lt07;->c:Landroid/view/ViewGroup;

    .line 27
    sget v2, Lcom/peekandpop/shalskar/peekandpop/R$layout;->peek_background:I

    invoke-virtual {v0, v2, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lt07;->d:Landroid/view/ViewGroup;

    .line 28
    iget-object v2, p0, Lt07;->a:Lt07$b;

    iget v2, v2, Lt07$b;->b:I

    invoke-virtual {v0, v2, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lt07;->b:Landroid/view/View;

    .line 29
    sget v0, Lcom/peekandpop/shalskar/peekandpop/R$id;->peek_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 30
    iget-object p1, p0, Lt07;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    .line 31
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    iget v0, p0, Lt07;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 33
    iget v0, p0, Lt07;->s:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 34
    :cond_2
    iget-object v0, p0, Lt07;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lt07;->b:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object p1, p0, Lt07;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lt07;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    iget-object p1, p0, Lt07;->d:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lt07;->d:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 38
    iget-object p1, p0, Lt07;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 39
    new-instance p1, Lv07;

    iget-object v0, p0, Lt07;->a:Lt07$b;

    iget-object v0, v0, Lt07$b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lt07;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Lt07;->b:Landroid/view/View;

    invoke-direct {p1, v0, v1, v2}, Lv07;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lt07;->e:Lv07;

    const/high16 p1, 0x41200000    # 10.0f

    .line 40
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 41
    iget-object v0, p0, Lt07;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    .line 42
    iget-object p1, p0, Lt07;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lr07;

    invoke-direct {v0, p0}, Lr07;-><init>(Lt07;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 43
    invoke-virtual {p0}, Lt07;->c()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    .line 1
    new-instance v0, Lt07$e;

    invoke-direct {v0, p0, p2}, Lt07$e;-><init>(Lt07;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Ls07;

    invoke-direct {p2, p0}, Ls07;-><init>(Lt07;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 8

    .line 1
    iget-object p1, p0, Lt07;->m:Lt07$d;

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    check-cast p1, Ldr6;

    .line 3
    iget-object v1, p1, Ldr6;->c:Lpl/droidsonroids/gif/GifImageView;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_0
    iget-object v1, p1, Ldr6;->b:Lr78;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lr78;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p1, Ldr6;->b:Lr78;

    .line 7
    iput-boolean p2, v1, Lr78;->f:Z

    .line 8
    iget-object v2, v1, Lr78;->q:Lw78;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object v2, v1, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->e()V

    .line 10
    iget-object v1, v1, Lr78;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    :cond_1
    iget-object v1, p1, Ldr6;->a:Lg07;

    if-eqz v1, :cond_2

    .line 12
    invoke-static {}, Lux6;->n()Lux6;

    move-result-object v1

    .line 13
    iget-object v2, p1, Ldr6;->a:Lg07;

    invoke-virtual {v1, v2}, Lhz6;->b(Lg07;)V

    .line 14
    iput-object v0, p1, Ldr6;->a:Lg07;

    .line 15
    :cond_2
    iput-object v0, p0, Lt07;->l:Lw07;

    .line 16
    iget-object p1, p0, Lt07;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw07;

    .line 17
    iget-object v0, v0, Lw07;->a:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 19
    :cond_4
    iget-object p1, p0, Lt07;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx07;

    .line 20
    iget-object v0, v0, Lx07;->a:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_1

    .line 22
    :cond_6
    iget-object p1, p0, Lt07;->e:Lv07;

    new-instance v0, Lt07$a;

    invoke-direct {v0, p0}, Lt07$a;-><init>(Lt07;)V

    const/16 v1, 0xfa

    .line 23
    iget-object v2, p1, Lv07;->a:Landroid/view/View;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, p2

    const-string v6, "alpha"

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v6, v1

    .line 24
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 25
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 28
    iget-object v0, p1, Lv07;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_7

    .line 29
    iget-object v0, p1, Lv07;->b:Landroid/view/View;

    new-array v1, v3, [F

    aput v5, v1, p2

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_2

    .line 30
    :cond_7
    iget-object v0, p1, Lv07;->b:Landroid/view/View;

    new-array v1, v3, [F

    aput v5, v1, p2

    const-string v2, "translationX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 31
    :goto_2
    iget-object v1, p1, Lv07;->b:Landroid/view/View;

    new-array v2, v3, [F

    const/high16 v4, 0x3f400000    # 0.75f

    aput v4, v2, p2

    const-string v5, "scaleY"

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 32
    iget-object p1, p1, Lv07;->b:Landroid/view/View;

    new-array v2, v3, [F

    aput v4, v2, p2

    const-string p2, "scaleX"

    invoke-static {p1, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 33
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 38
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 39
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 40
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 41
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lt07;->v:J

    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lt07;->d:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lt07;->t:I

    .line 3
    iput v0, p0, Lt07;->u:I

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lt07;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lt07;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx07;

    .line 6
    iget-object v2, v2, Lx07;->a:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 8
    iget-object v2, p0, Lt07;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx07;

    const/4 v3, 0x0

    .line 9
    iput-object v3, v2, Lx07;->a:Ljava/util/Timer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lt07;->r:[F

    if-eqz v1, :cond_2

    .line 11
    iget-object v2, p0, Lt07;->b:Landroid/view/View;

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 12
    iget-object v0, p0, Lt07;->b:Landroid/view/View;

    iget-object v1, p0, Lt07;->r:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 13
    :cond_2
    iget-object v0, p0, Lt07;->b:Landroid/view/View;

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 14
    iget-object v0, p0, Lt07;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

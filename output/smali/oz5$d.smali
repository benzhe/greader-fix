.class public Loz5$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loz5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Loz5;


# direct methods
.method public constructor <init>(Loz5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loz5$d;->e:Loz5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Loz5$d;->e:Loz5;

    iget-object v1, v0, Loz5;->d:Llz5;

    .line 2
    iget-object v1, v1, Llz5;->j:Lc06;

    .line 3
    iget-object v10, v0, Loz5;->a:Lq06;

    iget-object v0, v0, Loz5;->b:Landroid/app/Activity;

    .line 4
    invoke-virtual {v1}, Lc06;->c()Z

    move-result v2

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_0

    const-string v0, "FIAM.Display"

    const-string v1, "Fiam already active. Cannot show new Fiam."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-virtual {v10}, Lq06;->b()Lf06;

    move-result-object v2

    .line 7
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    .line 8
    iget-object v3, v2, Lf06;->g:Ljava/lang/Integer;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 10
    iget-object v3, v2, Lf06;->h:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x3eb

    .line 12
    iget-object v3, v2, Lf06;->e:Ljava/lang/Integer;

    .line 13
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x3

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 14
    invoke-virtual {v1, v0}, Lc06;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v3

    .line 15
    iget-object v4, v2, Lf06;->f:Ljava/lang/Integer;

    .line 16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x30

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    .line 17
    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    const v3, 0x3e99999a    # 0.3f

    .line 18
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 19
    iget-object v3, v2, Lf06;->f:Ljava/lang/Integer;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 21
    iput v12, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 22
    invoke-virtual {v1, v0}, Lc06;->b(Landroid/app/Activity;)Landroid/view/WindowManager;

    move-result-object v8

    .line 23
    invoke-virtual {v10}, Lq06;->f()Landroid/view/ViewGroup;

    move-result-object v3

    .line 24
    invoke-interface {v8, v3, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {v1, v0}, Lc06;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    .line 26
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const-string v5, "Inset (top, bottom)"

    invoke-static {v5, v3, v4}, Lc50;->v0(Ljava/lang/String;FF)V

    .line 27
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    const-string v4, "Inset (left, right)"

    invoke-static {v4, v3, v0}, Lc50;->v0(Ljava/lang/String;FF)V

    .line 28
    invoke-virtual {v10}, Lq06;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    new-instance v6, La06;

    invoke-direct {v6, v1, v10}, La06;-><init>(Lc06;Lq06;)V

    .line 30
    iget-object v0, v2, Lf06;->g:Ljava/lang/Integer;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v11, :cond_2

    .line 32
    new-instance v0, Ll06;

    invoke-virtual {v10}, Lq06;->c()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v6}, Ll06;-><init>(Landroid/view/View;Ljava/lang/Object;Ll06$b;)V

    goto :goto_0

    .line 33
    :cond_2
    new-instance v0, Lb06;

    invoke-virtual {v10}, Lq06;->c()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, v1

    move-object v7, v9

    move-object v9, v10

    invoke-direct/range {v2 .. v9}, Lb06;-><init>(Lc06;Landroid/view/View;Ljava/lang/Object;Ll06$b;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Lq06;)V

    .line 34
    :goto_0
    invoke-virtual {v10}, Lq06;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    :cond_3
    iput-object v10, v1, Lc06;->a:Lq06;

    .line 36
    :goto_1
    iget-object v0, p0, Loz5$d;->e:Loz5;

    iget-object v0, v0, Loz5;->a:Lq06;

    invoke-virtual {v0}, Lq06;->b()Lf06;

    move-result-object v0

    .line 37
    iget-object v0, v0, Lf06;->j:Ljava/lang/Boolean;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    iget-object v0, p0, Loz5$d;->e:Loz5;

    iget-object v1, v0, Loz5;->d:Llz5;

    .line 40
    iget-object v2, v1, Llz5;->m:Lwz5;

    .line 41
    iget-object v1, v1, Llz5;->l:Landroid/app/Application;

    .line 42
    iget-object v0, v0, Loz5;->a:Lq06;

    invoke-virtual {v0}, Lq06;->f()Landroid/view/ViewGroup;

    move-result-object v0

    .line 43
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, -0x2

    .line 45
    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 46
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v12, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 48
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    .line 49
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1

    .line 50
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lvz5;

    invoke-direct {v4, v2, v0, v1}, Lvz5;-><init>(Lwz5;Landroid/view/View;Landroid/app/Application;)V

    .line 51
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_4
    return-void
.end method

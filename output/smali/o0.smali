.class public Lo0;
.super Lu;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0$d;
    }
.end annotation


# static fields
.field public static final A:Landroid/view/animation/Interpolator;

.field public static final B:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Ll2;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public g:Landroid/view/View;

.field public h:Z

.field public i:Lo0$d;

.field public j:Lv0;

.field public k:Lv0$a;

.field public l:Z

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu$b;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lb1;

.field public v:Z

.field public w:Z

.field public final x:Lna;

.field public final y:Lna;

.field public final z:Lpa;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lo0;->A:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lo0;->B:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lo0;->o:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lo0;->p:Z

    .line 6
    iput-boolean v0, p0, Lo0;->t:Z

    .line 7
    new-instance v0, Lo0$a;

    invoke-direct {v0, p0}, Lo0$a;-><init>(Lo0;)V

    iput-object v0, p0, Lo0;->x:Lna;

    .line 8
    new-instance v0, Lo0$b;

    invoke-direct {v0, p0}, Lo0$b;-><init>(Lo0;)V

    iput-object v0, p0, Lo0;->y:Lna;

    .line 9
    new-instance v0, Lo0$c;

    invoke-direct {v0, p0}, Lo0$c;-><init>(Lo0;)V

    iput-object v0, p0, Lo0;->z:Lpa;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lo0;->z(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo0;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lu;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo0;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lo0;->o:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lo0;->p:Z

    .line 19
    iput-boolean v0, p0, Lo0;->t:Z

    .line 20
    new-instance v0, Lo0$a;

    invoke-direct {v0, p0}, Lo0$a;-><init>(Lo0;)V

    iput-object v0, p0, Lo0;->x:Lna;

    .line 21
    new-instance v0, Lo0$b;

    invoke-direct {v0, p0}, Lo0$b;-><init>(Lo0;)V

    iput-object v0, p0, Lo0;->y:Lna;

    .line 22
    new-instance v0, Lo0$c;

    invoke-direct {v0, p0}, Lo0$c;-><init>(Lo0;)V

    iput-object v0, p0, Lo0;->z:Lpa;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo0;->z(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public A(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo0;->e:Ll2;

    invoke-interface {v0}, Ll2;->s()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lo0;->h:Z

    .line 3
    :cond_0
    iget-object v1, p0, Lo0;->e:Ll2;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Ll2;->i(I)V

    return-void
.end method

.method public final B(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lo0;->n:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lo0;->e:Ll2;

    invoke-interface {p1, v0}, Ll2;->g(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 3
    iget-object p1, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 5
    iget-object p1, p0, Lo0;->e:Ll2;

    invoke-interface {p1, v0}, Ll2;->g(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lo0;->e:Ll2;

    invoke-interface {p1}, Ll2;->m()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_1
    iget-object v0, p0, Lo0;->e:Ll2;

    iget-boolean v3, p0, Lo0;->n:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0, v3}, Ll2;->w(Z)V

    .line 8
    iget-object v0, p0, Lo0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lo0;->n:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final C(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lo0;->q:Z

    iget-boolean v1, p0, Lo0;->r:Z

    iget-boolean v2, p0, Lo0;->s:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    const-wide/16 v1, 0xfa

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_d

    .line 2
    iget-boolean v0, p0, Lo0;->t:Z

    if-nez v0, :cond_17

    .line 3
    iput-boolean v3, p0, Lo0;->t:Z

    .line 4
    iget-object v0, p0, Lo0;->u:Lb1;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lb1;->a()V

    .line 6
    :cond_3
    iget-object v0, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 7
    iget v0, p0, Lo0;->o:I

    const/4 v4, 0x0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lo0;->v:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_b

    .line 8
    :cond_4
    iget-object v0, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 9
    iget-object v0, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_5

    new-array p1, v5, [I

    .line 10
    fill-array-data p1, :array_0

    .line 11
    iget-object v5, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 12
    aget p1, p1, v3

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 13
    :cond_5
    iget-object p1, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 14
    new-instance p1, Lb1;

    invoke-direct {p1}, Lb1;-><init>()V

    .line 15
    iget-object v3, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v3}, Lha;->b(Landroid/view/View;)Lma;

    move-result-object v3

    invoke-virtual {v3, v4}, Lma;->g(F)Lma;

    .line 16
    iget-object v5, p0, Lo0;->z:Lpa;

    invoke-virtual {v3, v5}, Lma;->f(Lpa;)Lma;

    .line 17
    iget-boolean v5, p1, Lb1;->e:Z

    if-nez v5, :cond_6

    .line 18
    iget-object v5, p1, Lb1;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_6
    iget-boolean v3, p0, Lo0;->p:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lo0;->g:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 20
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 21
    iget-object v0, p0, Lo0;->g:Landroid/view/View;

    invoke-static {v0}, Lha;->b(Landroid/view/View;)Lma;

    move-result-object v0

    invoke-virtual {v0, v4}, Lma;->g(F)Lma;

    .line 22
    iget-boolean v3, p1, Lb1;->e:Z

    if-nez v3, :cond_7

    .line 23
    iget-object v3, p1, Lb1;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_7
    sget-object v0, Lo0;->B:Landroid/view/animation/Interpolator;

    .line 25
    iget-boolean v3, p1, Lb1;->e:Z

    if-nez v3, :cond_8

    .line 26
    iput-object v0, p1, Lb1;->c:Landroid/view/animation/Interpolator;

    :cond_8
    if-nez v3, :cond_9

    .line 27
    iput-wide v1, p1, Lb1;->b:J

    .line 28
    :cond_9
    iget-object v0, p0, Lo0;->y:Lna;

    if-nez v3, :cond_a

    .line 29
    iput-object v0, p1, Lb1;->d:Lna;

    .line 30
    :cond_a
    iput-object p1, p0, Lo0;->u:Lb1;

    .line 31
    invoke-virtual {p1}, Lb1;->b()V

    goto :goto_3

    .line 32
    :cond_b
    iget-object p1, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 33
    iget-object p1, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 34
    iget-boolean p1, p0, Lo0;->p:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lo0;->g:Landroid/view/View;

    if-eqz p1, :cond_c

    .line 35
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 36
    :cond_c
    iget-object p1, p0, Lo0;->y:Lna;

    invoke-interface {p1, v7}, Lna;->b(Landroid/view/View;)V

    .line 37
    :goto_3
    iget-object p1, p0, Lo0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_17

    .line 38
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    goto/16 :goto_4

    .line 40
    :cond_d
    iget-boolean v0, p0, Lo0;->t:Z

    if-eqz v0, :cond_17

    .line 41
    iput-boolean v4, p0, Lo0;->t:Z

    .line 42
    iget-object v0, p0, Lo0;->u:Lb1;

    if-eqz v0, :cond_e

    .line 43
    invoke-virtual {v0}, Lb1;->a()V

    .line 44
    :cond_e
    iget v0, p0, Lo0;->o:I

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lo0;->v:Z

    if-nez v0, :cond_f

    if-eqz p1, :cond_16

    .line 45
    :cond_f
    iget-object v0, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 46
    iget-object v0, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 47
    new-instance v0, Lb1;

    invoke-direct {v0}, Lb1;-><init>()V

    .line 48
    iget-object v4, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    if-eqz p1, :cond_10

    new-array p1, v5, [I

    .line 49
    fill-array-data p1, :array_1

    .line 50
    iget-object v5, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 51
    aget p1, p1, v3

    int-to-float p1, p1

    sub-float/2addr v4, p1

    .line 52
    :cond_10
    iget-object p1, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lha;->b(Landroid/view/View;)Lma;

    move-result-object p1

    invoke-virtual {p1, v4}, Lma;->g(F)Lma;

    .line 53
    iget-object v3, p0, Lo0;->z:Lpa;

    invoke-virtual {p1, v3}, Lma;->f(Lpa;)Lma;

    .line 54
    iget-boolean v3, v0, Lb1;->e:Z

    if-nez v3, :cond_11

    .line 55
    iget-object v3, v0, Lb1;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_11
    iget-boolean p1, p0, Lo0;->p:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lo0;->g:Landroid/view/View;

    if-eqz p1, :cond_12

    .line 57
    invoke-static {p1}, Lha;->b(Landroid/view/View;)Lma;

    move-result-object p1

    invoke-virtual {p1, v4}, Lma;->g(F)Lma;

    .line 58
    iget-boolean v3, v0, Lb1;->e:Z

    if-nez v3, :cond_12

    .line 59
    iget-object v3, v0, Lb1;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_12
    sget-object p1, Lo0;->A:Landroid/view/animation/Interpolator;

    .line 61
    iget-boolean v3, v0, Lb1;->e:Z

    if-nez v3, :cond_13

    .line 62
    iput-object p1, v0, Lb1;->c:Landroid/view/animation/Interpolator;

    :cond_13
    if-nez v3, :cond_14

    .line 63
    iput-wide v1, v0, Lb1;->b:J

    .line 64
    :cond_14
    iget-object p1, p0, Lo0;->x:Lna;

    if-nez v3, :cond_15

    .line 65
    iput-object p1, v0, Lb1;->d:Lna;

    .line 66
    :cond_15
    iput-object v0, p0, Lo0;->u:Lb1;

    .line 67
    invoke-virtual {v0}, Lb1;->b()V

    goto :goto_4

    .line 68
    :cond_16
    iget-object p1, p0, Lo0;->x:Lna;

    invoke-interface {p1, v7}, Lna;->b(Landroid/view/View;)V

    :cond_17
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo0;->e:Ll2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ll2;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lo0;->e:Ll2;

    invoke-interface {v0}, Ll2;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo0;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lo0;->l:Z

    .line 3
    iget-object v0, p0, Lo0;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Lo0;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu$b;

    invoke-interface {v2, p1}, Lu$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo0;->e:Ll2;

    invoke-interface {v0}, Ll2;->s()I

    move-result v0

    return v0
.end method

.method public e()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Lo0;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    iget-object v1, p0, Lo0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 4
    sget v2, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lo0;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lo0;->b:Landroid/content/Context;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lo0;->a:Landroid/content/Context;

    iput-object v0, p0, Lo0;->b:Landroid/content/Context;

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lo0;->b:Landroid/content/Context;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo0;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo0;->q:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lo0;->C(Z)V

    :cond_0
    return-void
.end method

.method public h(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo0;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lo0;->B(Z)V

    return-void
.end method

.method public j(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lo0;->i:Lo0$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lo0$d;->h:Lj1;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 4
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 6
    invoke-virtual {v0, p1, p2, v1}, Lj1;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public m(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0;->e:Ll2;

    invoke-interface {v0, p1}, Ll2;->t(Landroid/view/View;)V

    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo0;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo0;->A(II)V

    :cond_1
    return-void
.end method

.method public o(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo0;->A(II)V

    return-void
.end method

.method public p(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo0;->A(II)V

    return-void
.end method

.method public q(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo0;->A(II)V

    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lo0;->v:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lo0;->u:Lb1;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb1;->a()V

    :cond_0
    return-void
.end method

.method public s(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0;->e:Ll2;

    invoke-interface {v0, p1}, Ll2;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public t(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lo0;->e:Ll2;

    invoke-interface {v0, p1}, Ll2;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public u(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0;->e:Ll2;

    invoke-interface {v0, p1}, Ll2;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public v(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo0;->e:Ll2;

    invoke-interface {v0, p1}, Ll2;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo0;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo0;->q:Z

    .line 3
    invoke-virtual {p0, v0}, Lo0;->C(Z)V

    :cond_0
    return-void
.end method

.method public x(Lv0$a;)Lv0;
    .locals 2

    .line 1
    iget-object v0, p0, Lo0;->i:Lo0$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lo0$d;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lo0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 4
    iget-object v0, p0, Lo0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 5
    new-instance v0, Lo0$d;

    iget-object v1, p0, Lo0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lo0$d;-><init>(Lo0;Landroid/content/Context;Lv0$a;)V

    .line 6
    iget-object p1, v0, Lo0$d;->h:Lj1;

    invoke-virtual {p1}, Lj1;->B()V

    .line 7
    :try_start_0
    iget-object p1, v0, Lo0$d;->i:Lv0$a;

    iget-object v1, v0, Lo0$d;->h:Lj1;

    invoke-interface {p1, v0, v1}, Lv0$a;->b(Lv0;Landroid/view/Menu;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, v0, Lo0$d;->h:Lj1;

    invoke-virtual {v1}, Lj1;->A()V

    if-eqz p1, :cond_1

    .line 9
    iput-object v0, p0, Lo0;->i:Lo0$d;

    .line 10
    invoke-virtual {v0}, Lo0$d;->i()V

    .line 11
    iget-object p1, p0, Lo0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lv0;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lo0;->y(Z)V

    .line 13
    iget-object p1, p0, Lo0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    iget-object v0, v0, Lo0$d;->h:Lj1;

    invoke-virtual {v0}, Lj1;->A()V

    .line 15
    throw p1
.end method

.method public y(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v1, p0, Lo0;->s:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lo0;->s:Z

    .line 3
    iget-object v2, p0, Lo0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lo0;->C(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v1, p0, Lo0;->s:Z

    if-eqz v1, :cond_3

    .line 7
    iput-boolean v0, p0, Lo0;->s:Z

    .line 8
    iget-object v1, p0, Lo0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Lo0;->C(Z)V

    .line 11
    :cond_3
    :goto_0
    iget-object v1, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    sget-object v2, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_7

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lo0;->e:Ll2;

    invoke-interface {p1, v2, v4, v5}, Ll2;->n(IJ)Lma;

    move-result-object p1

    .line 15
    iget-object v1, p0, Lo0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0, v6, v7}, Lw1;->e(IJ)Lma;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p0, Lo0;->e:Ll2;

    invoke-interface {p1, v0, v6, v7}, Ll2;->n(IJ)Lma;

    move-result-object v0

    .line 17
    iget-object p1, p0, Lo0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3, v4, v5}, Lw1;->e(IJ)Lma;

    move-result-object p1

    .line 18
    :goto_1
    new-instance v1, Lb1;

    invoke-direct {v1}, Lb1;-><init>()V

    .line 19
    iget-object v2, v1, Lb1;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p1, Lma;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x0

    .line 22
    :goto_2
    iget-object p1, v0, Lma;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 24
    :cond_6
    iget-object p1, v1, Lb1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v1}, Lb1;->b()V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 26
    iget-object p1, p0, Lo0;->e:Ll2;

    invoke-interface {p1, v2}, Ll2;->p(I)V

    .line 27
    iget-object p1, p0, Lo0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3

    .line 28
    :cond_8
    iget-object p1, p0, Lo0;->e:Ll2;

    invoke-interface {p1, v0}, Ll2;->p(I)V

    .line 29
    iget-object p1, p0, Lo0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final z(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Landroidx/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lo0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    .line 3
    :cond_0
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ll2;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ll2;

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Ll2;

    move-result-object v0

    .line 8
    :goto_0
    iput-object v0, p0, Lo0;->e:Ll2;

    .line 9
    sget v0, Landroidx/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Lo0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 10
    sget v0, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 11
    iget-object v0, p0, Lo0;->e:Ll2;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lo0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    .line 12
    invoke-interface {v0}, Ll2;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo0;->a:Landroid/content/Context;

    .line 13
    iget-object p1, p0, Lo0;->e:Ll2;

    invoke-interface {p1}, Ll2;->s()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 14
    iput-boolean v0, p0, Lo0;->h:Z

    .line 15
    :cond_3
    iget-object v2, p0, Lo0;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x1

    .line 17
    :goto_4
    iget-object v3, p0, Lo0;->e:Ll2;

    invoke-interface {v3, p1}, Ll2;->r(Z)V

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lo0;->B(Z)V

    .line 20
    iget-object p1, p0, Lo0;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroidx/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 21
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 22
    iget-object v2, p0, Lo0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 23
    iget-boolean v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    if-eqz v3, :cond_7

    .line 24
    iput-boolean v0, p0, Lo0;->w:Z

    .line 25
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_5

    .line 26
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_8
    :goto_5
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_9

    int-to-float v0, v0

    .line 28
    iget-object v1, p0, Lo0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 29
    sget-object v2, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setElevation(F)V

    .line 31
    :cond_9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 32
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lo0;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_c

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    const-string v0, "null"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

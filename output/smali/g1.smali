.class public final Lg1;
.super Ln1;
.source "SourceFile"

# interfaces
.implements Lp1;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg1$d;
    }
.end annotation


# static fields
.field public static final F:I


# instance fields
.field public A:Z

.field public B:Lp1$a;

.field public C:Landroid/view/ViewTreeObserver;

.field public D:Landroid/widget/PopupWindow$OnDismissListener;

.field public E:Z

.field public final f:Landroid/content/Context;

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Z

.field public final k:Landroid/os/Handler;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj1;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg1$d;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final o:Landroid/view/View$OnAttachStateChangeListener;

.field public final p:Lr2;

.field public q:I

.field public r:I

.field public s:Landroid/view/View;

.field public t:Landroid/view/View;

.field public u:I

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/R$layout;->abc_cascading_menu_item_layout:I

    sput v0, Lg1;->F:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln1;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1;->l:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg1;->m:Ljava/util/List;

    .line 4
    new-instance v0, Lg1$a;

    invoke-direct {v0, p0}, Lg1$a;-><init>(Lg1;)V

    iput-object v0, p0, Lg1;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    new-instance v0, Lg1$b;

    invoke-direct {v0, p0}, Lg1$b;-><init>(Lg1;)V

    iput-object v0, p0, Lg1;->o:Landroid/view/View$OnAttachStateChangeListener;

    .line 6
    new-instance v0, Lg1$c;

    invoke-direct {v0, p0}, Lg1$c;-><init>(Lg1;)V

    iput-object v0, p0, Lg1;->p:Lr2;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lg1;->q:I

    .line 8
    iput v0, p0, Lg1;->r:I

    .line 9
    iput-object p1, p0, Lg1;->f:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lg1;->s:Landroid/view/View;

    .line 11
    iput p3, p0, Lg1;->h:I

    .line 12
    iput p4, p0, Lg1;->i:I

    .line 13
    iput-boolean p5, p0, Lg1;->j:Z

    .line 14
    iput-boolean v0, p0, Lg1;->z:Z

    .line 15
    sget-object p3, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 17
    :goto_0
    iput v0, p0, Lg1;->u:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 20
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 21
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lg1;->g:I

    .line 22
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lg1;->k:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1$d;

    iget-object v0, v0, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b(Lj1;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1$d;

    .line 3
    iget-object v3, v3, Lg1$d;->b:Lj1;

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 4
    iget-object v3, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 5
    iget-object v3, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1$d;

    .line 6
    iget-object v0, v0, Lg1$d;->b:Lj1;

    invoke-virtual {v0, v1}, Lj1;->c(Z)V

    .line 7
    :cond_3
    iget-object v0, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1$d;

    .line 8
    iget-object v2, v0, Lg1$d;->b:Lj1;

    invoke-virtual {v2, p0}, Lj1;->u(Lp1;)V

    .line 9
    iget-boolean v2, p0, Lg1;->E:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 10
    iget-object v2, v0, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4

    .line 13
    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 14
    :cond_4
    iget-object v2, v0, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 15
    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 16
    :cond_5
    iget-object v0, v0, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 17
    iget-object v0, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_6

    .line 18
    iget-object v4, p0, Lg1;->m:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg1$d;

    iget v4, v4, Lg1$d;->c:I

    iput v4, p0, Lg1;->u:I

    goto :goto_3

    .line 19
    :cond_6
    iget-object v4, p0, Lg1;->s:Landroid/view/View;

    .line 20
    sget-object v5, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_7

    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    const/4 v4, 0x1

    .line 22
    :goto_2
    iput v4, p0, Lg1;->u:I

    :goto_3
    if-nez v0, :cond_b

    .line 23
    invoke-virtual {p0}, Lg1;->dismiss()V

    .line 24
    iget-object p2, p0, Lg1;->B:Lp1$a;

    if-eqz p2, :cond_8

    .line 25
    invoke-interface {p2, p1, v2}, Lp1$a;->b(Lj1;Z)V

    .line 26
    :cond_8
    iget-object p1, p0, Lg1;->C:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_a

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 28
    iget-object p1, p0, Lg1;->C:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lg1;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 29
    :cond_9
    iput-object v3, p0, Lg1;->C:Landroid/view/ViewTreeObserver;

    .line 30
    :cond_a
    iget-object p1, p0, Lg1;->t:Landroid/view/View;

    iget-object p2, p0, Lg1;->o:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 31
    iget-object p1, p0, Lg1;->D:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_4

    :cond_b
    if-eqz p2, :cond_c

    .line 32
    iget-object p1, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg1$d;

    .line 33
    iget-object p1, p1, Lg1$d;->b:Lj1;

    invoke-virtual {p1, v1}, Lj1;->c(Z)V

    :cond_c
    :goto_4
    return-void
.end method

.method public c(Lj1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg1;->f:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lj1;->b(Lp1;Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lg1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lg1;->y(Lj1;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lg1;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Lg1;->m:Ljava/util/List;

    new-array v2, v0, [Lg1$d;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg1$d;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    aget-object v2, v1, v0

    .line 5
    iget-object v3, v2, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, v2, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg1;->s:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lg1;->s:Landroid/view/View;

    .line 3
    iget v0, p0, Lg1;->q:I

    .line 4
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    .line 6
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 7
    iput p1, p0, Lg1;->r:I

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg1;->z:Z

    return-void
.end method

.method public h()Landroid/widget/ListView;
    .locals 2

    .line 1
    iget-object v0, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1$d;

    .line 3
    iget-object v0, v0, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 4
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->g:Ln2;

    :goto_0
    return-object v0
.end method

.method public i(I)V
    .locals 2

    .line 1
    iget v0, p0, Lg1;->q:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lg1;->q:I

    .line 3
    iget-object v0, p0, Lg1;->s:Landroid/view/View;

    .line 4
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 6
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 7
    iput p1, p0, Lg1;->r:I

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lg1;->v:Z

    .line 2
    iput p1, p0, Lg1;->x:I

    return-void
.end method

.method public k(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg1;->D:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg1;->A:Z

    return-void
.end method

.method public m(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lg1;->w:Z

    .line 2
    iput p1, p0, Lg1;->y:I

    return-void
.end method

.method public o(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1$d;

    .line 2
    iget-object v0, v0, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->g:Ln2;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Li1;

    goto :goto_1

    .line 7
    :cond_0
    check-cast v0, Li1;

    .line 8
    :goto_1
    invoke-virtual {v0}, Li1;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1$d;

    .line 3
    iget-object v4, v3, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->a()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 4
    iget-object v0, v3, Lg1$d;->b:Lj1;

    invoke-virtual {v0, v1}, Lj1;->c(Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lg1;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s(Lp1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg1;->B:Lp1$a;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lg1;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj1;

    .line 3
    invoke-virtual {p0, v1}, Lg1;->y(Lj1;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lg1;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lg1;->s:Landroid/view/View;

    iput-object v0, p0, Lg1;->t:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 6
    iget-object v1, p0, Lg1;->C:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lg1;->C:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lg1;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lg1;->t:Landroid/view/View;

    iget-object v1, p0, Lg1;->o:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public u(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public v(Lu1;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lg1;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1$d;

    .line 2
    iget-object v3, v1, Lg1$d;->b:Lj1;

    if-ne p1, v3, :cond_0

    .line 3
    iget-object p1, v1, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 4
    iget-object p1, p1, Landroidx/appcompat/widget/ListPopupWindow;->g:Ln2;

    .line 5
    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    .line 6
    :cond_1
    invoke-virtual {p1}, Lj1;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lg1;->f:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lj1;->b(Lp1;Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Lg1;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lg1;->y(Lj1;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lg1;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_0
    iget-object v0, p0, Lg1;->B:Lp1$a;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0, p1}, Lp1$a;->c(Lj1;)Z

    :cond_3
    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public w()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final y(Lj1;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lg1;->f:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2
    new-instance v3, Li1;

    iget-boolean v4, v0, Lg1;->j:Z

    sget v5, Lg1;->F:I

    invoke-direct {v3, v1, v2, v4, v5}, Li1;-><init>(Lj1;Landroid/view/LayoutInflater;ZI)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lg1;->a()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lg1;->z:Z

    if-eqz v4, :cond_0

    .line 4
    iput-boolean v5, v3, Li1;->g:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lg1;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static/range {p1 .. p1}, Ln1;->x(Lj1;)Z

    move-result v4

    .line 7
    iput-boolean v4, v3, Li1;->g:Z

    .line 8
    :cond_1
    :goto_0
    iget-object v4, v0, Lg1;->f:Landroid/content/Context;

    iget v6, v0, Lg1;->g:I

    const/4 v7, 0x0

    invoke-static {v3, v7, v4, v6}, Ln1;->e(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v4

    .line 9
    new-instance v6, Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v8, v0, Lg1;->f:Landroid/content/Context;

    iget v9, v0, Lg1;->h:I

    iget v10, v0, Lg1;->i:I

    invoke-direct {v6, v8, v7, v9, v10}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    iget-object v8, v0, Lg1;->p:Lr2;

    .line 11
    iput-object v8, v6, Landroidx/appcompat/widget/MenuPopupWindow;->H:Lr2;

    .line 12
    iput-object v0, v6, Landroidx/appcompat/widget/ListPopupWindow;->u:Landroid/widget/AdapterView$OnItemClickListener;

    .line 13
    iget-object v8, v6, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 14
    iget-object v8, v0, Lg1;->s:Landroid/view/View;

    .line 15
    iput-object v8, v6, Landroidx/appcompat/widget/ListPopupWindow;->t:Landroid/view/View;

    .line 16
    iget v8, v0, Lg1;->r:I

    .line 17
    iput v8, v6, Landroidx/appcompat/widget/ListPopupWindow;->p:I

    .line 18
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ListPopupWindow;->r(Z)V

    .line 19
    iget-object v8, v6, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 20
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/ListPopupWindow;->o(Landroid/widget/ListAdapter;)V

    .line 21
    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/ListPopupWindow;->q(I)V

    .line 22
    iget v3, v0, Lg1;->r:I

    .line 23
    iput v3, v6, Landroidx/appcompat/widget/ListPopupWindow;->p:I

    .line 24
    iget-object v3, v0, Lg1;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x0

    if-lez v3, :cond_a

    .line 25
    iget-object v3, v0, Lg1;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1$d;

    .line 26
    iget-object v10, v3, Lg1$d;->b:Lj1;

    .line 27
    invoke-virtual {v10}, Lj1;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_3

    .line 28
    invoke-virtual {v10, v12}, Lj1;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 29
    invoke-interface {v13}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    if-ne v1, v14, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    move-object v13, v7

    :goto_2
    if-nez v13, :cond_4

    goto :goto_7

    .line 30
    :cond_4
    iget-object v10, v3, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 31
    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->g:Ln2;

    .line 32
    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    .line 33
    instance-of v12, v11, Landroid/widget/HeaderViewListAdapter;

    if-eqz v12, :cond_5

    .line 34
    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    .line 35
    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v12

    .line 36
    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Li1;

    goto :goto_3

    .line 37
    :cond_5
    check-cast v11, Li1;

    const/4 v12, 0x0

    .line 38
    :goto_3
    invoke-virtual {v11}, Li1;->getCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    const/4 v9, -0x1

    if-ge v15, v14, :cond_7

    .line 39
    invoke-virtual {v11, v15}, Li1;->b(I)Ll1;

    move-result-object v7

    if-ne v13, v7, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    const/4 v15, -0x1

    :goto_5
    if-ne v15, v9, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr v15, v12

    .line 40
    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v15, v7

    if-ltz v15, :cond_b

    .line 41
    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-lt v15, v7, :cond_9

    goto :goto_6

    .line 42
    :cond_9
    invoke-virtual {v10, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :cond_b
    :goto_6
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_18

    .line 43
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-gt v9, v10, :cond_c

    .line 44
    sget-object v9, Landroidx/appcompat/widget/MenuPopupWindow;->I:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_d

    .line 45
    :try_start_0
    iget-object v10, v6, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    new-array v11, v5, [Ljava/lang/Object;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const-string v9, "MenuPopupWindow"

    const-string v10, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    .line 46
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 47
    :cond_c
    iget-object v9, v6, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v9, v8}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    .line 48
    :cond_d
    :goto_8
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_e

    .line 49
    iget-object v10, v6, Landroidx/appcompat/widget/ListPopupWindow;->D:Landroid/widget/PopupWindow;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 50
    :cond_e
    iget-object v10, v0, Lg1;->m:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg1$d;

    .line 51
    iget-object v10, v10, Lg1$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 52
    iget-object v10, v10, Landroidx/appcompat/widget/ListPopupWindow;->g:Ln2;

    const/4 v11, 0x2

    new-array v12, v11, [I

    .line 53
    invoke-virtual {v10, v12}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 54
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 55
    iget-object v13, v0, Lg1;->t:Landroid/view/View;

    invoke-virtual {v13, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 56
    iget v13, v0, Lg1;->u:I

    if-ne v13, v5, :cond_f

    .line 57
    aget v12, v12, v8

    invoke-virtual {v10}, Landroid/widget/ListView;->getWidth()I

    move-result v10

    add-int/2addr v10, v12

    add-int/2addr v10, v4

    .line 58
    iget v11, v11, Landroid/graphics/Rect;->right:I

    if-le v10, v11, :cond_10

    goto :goto_9

    .line 59
    :cond_f
    aget v10, v12, v8

    sub-int/2addr v10, v4

    if-gez v10, :cond_11

    :cond_10
    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v10, 0x0

    :goto_a
    if-ne v10, v5, :cond_12

    const/4 v11, 0x1

    goto :goto_b

    :cond_12
    const/4 v11, 0x0

    .line 60
    :goto_b
    iput v10, v0, Lg1;->u:I

    const/16 v10, 0x1a

    const/4 v12, 0x5

    if-lt v9, v10, :cond_13

    .line 61
    iput-object v7, v6, Landroidx/appcompat/widget/ListPopupWindow;->t:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v13, 0x0

    goto :goto_c

    :cond_13
    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 62
    iget-object v13, v0, Lg1;->s:Landroid/view/View;

    invoke-virtual {v13, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v9, v9, [I

    .line 63
    invoke-virtual {v7, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 64
    iget v13, v0, Lg1;->r:I

    and-int/lit8 v13, v13, 0x7

    if-ne v13, v12, :cond_14

    .line 65
    aget v13, v10, v8

    iget-object v14, v0, Lg1;->s:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v13

    aput v14, v10, v8

    .line 66
    aget v13, v9, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v13

    aput v14, v9, v8

    .line 67
    :cond_14
    aget v13, v9, v8

    aget v14, v10, v8

    sub-int/2addr v13, v14

    .line 68
    aget v9, v9, v5

    aget v10, v10, v5

    sub-int/2addr v9, v10

    .line 69
    :goto_c
    iget v10, v0, Lg1;->r:I

    and-int/2addr v10, v12

    if-ne v10, v12, :cond_16

    if-eqz v11, :cond_15

    goto :goto_d

    .line 70
    :cond_15
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_e

    :cond_16
    if-eqz v11, :cond_17

    .line 71
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_d
    add-int/2addr v13, v4

    goto :goto_f

    :cond_17
    :goto_e
    sub-int/2addr v13, v4

    .line 72
    :goto_f
    iput v13, v6, Landroidx/appcompat/widget/ListPopupWindow;->j:I

    .line 73
    iput-boolean v5, v6, Landroidx/appcompat/widget/ListPopupWindow;->o:Z

    .line 74
    iput-boolean v5, v6, Landroidx/appcompat/widget/ListPopupWindow;->n:Z

    .line 75
    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/ListPopupWindow;->k(I)V

    goto :goto_11

    .line 76
    :cond_18
    iget-boolean v4, v0, Lg1;->v:Z

    if-eqz v4, :cond_19

    .line 77
    iget v4, v0, Lg1;->x:I

    .line 78
    iput v4, v6, Landroidx/appcompat/widget/ListPopupWindow;->j:I

    .line 79
    :cond_19
    iget-boolean v4, v0, Lg1;->w:Z

    if-eqz v4, :cond_1a

    .line 80
    iget v4, v0, Lg1;->y:I

    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/ListPopupWindow;->k(I)V

    .line 81
    :cond_1a
    iget-object v4, v0, Ln1;->e:Landroid/graphics/Rect;

    if-eqz v4, :cond_1b

    .line 82
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_10

    :cond_1b
    const/4 v11, 0x0

    :goto_10
    iput-object v11, v6, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/graphics/Rect;

    .line 83
    :goto_11
    new-instance v4, Lg1$d;

    iget v5, v0, Lg1;->u:I

    invoke-direct {v4, v6, v1, v5}, Lg1$d;-><init>(Landroidx/appcompat/widget/MenuPopupWindow;Lj1;I)V

    .line 84
    iget-object v5, v0, Lg1;->m:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v6}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 86
    iget-object v4, v6, Landroidx/appcompat/widget/ListPopupWindow;->g:Ln2;

    .line 87
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v3, :cond_1c

    .line 88
    iget-boolean v3, v0, Lg1;->A:Z

    if-eqz v3, :cond_1c

    .line 89
    iget-object v3, v1, Lj1;->m:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1c

    .line 90
    sget v3, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v2, v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x1020016

    .line 91
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 92
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 93
    iget-object v1, v1, Lj1;->m:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v4, v2, v1, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 96
    invoke-virtual {v6}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_1c
    return-void
.end method

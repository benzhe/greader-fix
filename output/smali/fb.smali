.class public abstract Lfb;
.super Lv9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfb$c;
    }
.end annotation


# static fields
.field public static final n:Landroid/graphics/Rect;

.field public static final o:Lgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgb<",
            "Lsa;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Lhb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhb<",
            "Ln4<",
            "Lsa;",
            ">;",
            "Lsa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:[I

.field public final h:Landroid/view/accessibility/AccessibilityManager;

.field public final i:Landroid/view/View;

.field public j:Lfb$c;

.field public k:I

.field public l:I

.field private m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lfb;->n:Landroid/graphics/Rect;

    .line 2
    new-instance v0, Lfb$a;

    invoke-direct {v0}, Lfb$a;-><init>()V

    sput-object v0, Lfb;->o:Lgb;

    .line 3
    new-instance v0, Lfb$b;

    invoke-direct {v0}, Lfb$b;-><init>()V

    sput-object v0, Lfb;->p:Lhb;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lv9;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lfb;->d:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lfb;->e:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lfb;->f:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lfb;->g:[I

    const/high16 v0, -0x80000000

    .line 6
    iput v0, p0, Lfb;->k:I

    .line 7
    iput v0, p0, Lfb;->l:I

    .line 8
    iput v0, p0, Lfb;->m:I

    if-eqz p1, :cond_1

    .line 9
    iput-object p1, p0, Lfb;->i:Landroid/view/View;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lfb;->h:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(Landroid/view/View;)Lta;
    .locals 0

    .line 1
    iget-object p1, p0, Lfb;->j:Lfb$c;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lfb$c;

    invoke-direct {p1, p0}, Lfb$c;-><init>(Lfb;)V

    iput-object p1, p0, Lfb;->j:Lfb$c;

    .line 3
    :cond_0
    iget-object p1, p0, Lfb;->j:Lfb$c;

    return-object p1
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv9;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public d(Landroid/view/View;Lsa;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv9;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    invoke-virtual {p0, p2}, Lfb;->u(Lsa;)V

    return-void
.end method

.method public final j(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lfb;->k:I

    if-ne v0, p1, :cond_0

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lfb;->k:I

    .line 3
    iget-object v0, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    .line 4
    invoke-virtual {p0, p1, v0}, Lfb;->y(II)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lfb;->l:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lfb;->l:I

    .line 3
    invoke-virtual {p0, p1, v1}, Lfb;->w(IZ)V

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, p1, v0}, Lfb;->y(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final l(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 1
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1}, Lfb;->s(I)Lsa;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lsa;->j()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Lsa;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, v0, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 7
    iget-object v1, v0, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v1

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 9
    invoke-virtual {v0}, Lsa;->l()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 10
    iget-object v1, v0, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 12
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lsa;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lfb;->i:Landroid/view/View;

    .line 16
    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 17
    iget-object p1, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2

    .line 18
    :cond_2
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method public final m(I)Lsa;
    .locals 7

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2
    new-instance v1, Lsa;

    invoke-direct {v1, v0}, Lsa;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 4
    iget-object v0, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 5
    iget-object v0, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v3, "android.view.View"

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 6
    sget-object v0, Lfb;->n:Landroid/graphics/Rect;

    .line 7
    iget-object v3, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 8
    iget-object v3, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 9
    iget-object v3, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {v1, v3}, Lsa;->v(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0, p1, v1}, Lfb;->v(ILsa;)V

    .line 11
    invoke-virtual {v1}, Lsa;->j()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lsa;->g()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget-object v3, p0, Lfb;->e:Landroid/graphics/Rect;

    .line 14
    iget-object v4, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 15
    iget-object v3, p0, Lfb;->e:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 16
    invoke-virtual {v1}, Lsa;->d()I

    move-result v3

    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_10

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-nez v3, :cond_f

    .line 17
    iget-object v3, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 18
    iget-object v5, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v3, p0, Lfb;->i:Landroid/view/View;

    .line 20
    iput p1, v1, Lsa;->c:I

    .line 21
    iget-object v5, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 22
    iget v3, p0, Lfb;->k:I

    const/4 v5, 0x0

    if-ne v3, p1, :cond_2

    .line 23
    iget-object v3, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 24
    iget-object v3, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1

    .line 25
    :cond_2
    iget-object v3, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 26
    iget-object v3, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 27
    :goto_1
    iget v3, p0, Lfb;->l:I

    if-ne v3, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    const/4 v3, 0x2

    .line 28
    iget-object v4, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_3

    .line 29
    :cond_4
    invoke-virtual {v1}, Lsa;->m()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 30
    iget-object v3, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 31
    :cond_5
    :goto_3
    iget-object v3, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 32
    iget-object p1, p0, Lfb;->i:Landroid/view/View;

    iget-object v3, p0, Lfb;->g:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 33
    iget-object p1, p0, Lfb;->d:Landroid/graphics/Rect;

    .line 34
    iget-object v3, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 35
    iget-object p1, p0, Lfb;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 36
    iget-object p1, p0, Lfb;->d:Landroid/graphics/Rect;

    .line 37
    iget-object v0, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 38
    iget p1, v1, Lsa;->b:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    .line 39
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 40
    new-instance v3, Lsa;

    invoke-direct {v3, p1}, Lsa;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 41
    iget p1, v1, Lsa;->b:I

    :goto_4
    if-eq p1, v0, :cond_6

    .line 42
    iget-object v4, p0, Lfb;->i:Landroid/view/View;

    .line 43
    iput v0, v3, Lsa;->b:I

    .line 44
    iget-object v6, v3, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6, v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 45
    sget-object v4, Lfb;->n:Landroid/graphics/Rect;

    .line 46
    iget-object v6, v3, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 47
    invoke-virtual {p0, p1, v3}, Lfb;->v(ILsa;)V

    .line 48
    iget-object p1, p0, Lfb;->e:Landroid/graphics/Rect;

    .line 49
    iget-object v4, v3, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 50
    iget-object p1, p0, Lfb;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lfb;->e:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 51
    iget p1, v3, Lsa;->b:I

    goto :goto_4

    .line 52
    :cond_6
    iget-object p1, v3, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 53
    :cond_7
    iget-object p1, p0, Lfb;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lfb;->g:[I

    aget v0, v0, v5

    iget-object v3, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lfb;->g:[I

    aget v3, v3, v2

    iget-object v4, p0, Lfb;->i:Landroid/view/View;

    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 55
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 56
    :cond_8
    iget-object p1, p0, Lfb;->i:Landroid/view/View;

    iget-object v0, p0, Lfb;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 57
    iget-object p1, p0, Lfb;->f:Landroid/graphics/Rect;

    iget-object v0, p0, Lfb;->g:[I

    aget v0, v0, v5

    iget-object v3, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lfb;->g:[I

    aget v3, v3, v2

    iget-object v4, p0, Lfb;->i:Landroid/view/View;

    .line 58
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 59
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 60
    iget-object p1, p0, Lfb;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lfb;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 61
    iget-object p1, p0, Lfb;->d:Landroid/graphics/Rect;

    .line 62
    iget-object v0, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 63
    iget-object p1, p0, Lfb;->d:Landroid/graphics/Rect;

    if-eqz p1, :cond_d

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_6

    .line 65
    :cond_9
    iget-object p1, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_6

    .line 66
    :cond_a
    iget-object p1, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 67
    :goto_5
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 68
    check-cast p1, Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-lez v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    .line 70
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_5

    :cond_c
    if-eqz p1, :cond_d

    const/4 v5, 0x1

    :cond_d
    :goto_6
    if-eqz v5, :cond_e

    .line 71
    iget-object p1, v1, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_e
    return-object v1

    .line 72
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lfb;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfb;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x7

    const/16 v4, 0x100

    const/16 v5, 0x80

    const/high16 v6, -0x80000000

    if-eq v0, v3, :cond_4

    const/16 v3, 0x9

    if-eq v0, v3, :cond_4

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    return v2

    .line 3
    :cond_1
    iget p1, p0, Lfb;->m:I

    if-eq p1, v6, :cond_3

    if-ne p1, v6, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iput v6, p0, Lfb;->m:I

    .line 5
    invoke-virtual {p0, v6, v5}, Lfb;->y(II)Z

    .line 6
    invoke-virtual {p0, p1, v4}, Lfb;->y(II)Z

    :goto_0
    return v1

    :cond_3
    return v2

    .line 7
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lfb;->o(FF)I

    move-result p1

    .line 8
    iget v0, p0, Lfb;->m:I

    if-ne v0, p1, :cond_5

    goto :goto_1

    .line 9
    :cond_5
    iput p1, p0, Lfb;->m:I

    .line 10
    invoke-virtual {p0, p1, v5}, Lfb;->y(II)Z

    .line 11
    invoke-virtual {p0, v0, v4}, Lfb;->y(II)Z

    :goto_1
    if-eq p1, v6, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public abstract o(FF)I
.end method

.method public abstract p(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final q(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lfb;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    .line 3
    invoke-virtual {p0, p1, v1}, Lfb;->l(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 5
    iget-object v1, p0, Lfb;->i:Landroid/view/View;

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method public final r(ILandroid/graphics/Rect;)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, v3}, Lfb;->p(Ljava/util/List;)V

    .line 3
    new-instance v4, Ln4;

    const/16 v5, 0xa

    .line 4
    invoke-direct {v4, v5}, Ln4;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 6
    invoke-virtual {v0, v6}, Lfb;->m(I)Lsa;

    move-result-object v7

    .line 7
    invoke-virtual {v4, v6, v7}, Ln4;->h(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget v3, v0, Lfb;->l:I

    const/high16 v7, -0x80000000

    if-ne v3, v7, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v4, v3}, Ln4;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsa;

    :goto_1
    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-eq v1, v10, :cond_16

    if-eq v1, v8, :cond_16

    const/16 v8, 0x82

    const/16 v11, 0x42

    const/16 v12, 0x21

    const/16 v13, 0x11

    if-eq v1, v13, :cond_3

    if-eq v1, v12, :cond_3

    if-eq v1, v11, :cond_3

    if-ne v1, v8, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
    :goto_2
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iget v15, v0, Lfb;->l:I

    const-string v6, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    if-eq v15, v7, :cond_4

    .line 13
    invoke-virtual {v0, v15}, Lfb;->s(I)Lsa;

    move-result-object v2

    .line 14
    iget-object v2, v2, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 16
    :cond_5
    iget-object v2, v0, Lfb;->i:Landroid/view/View;

    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v1, v13, :cond_9

    if-eq v1, v12, :cond_8

    if-eq v1, v11, :cond_7

    if-ne v1, v8, :cond_6

    .line 19
    invoke-virtual {v14, v5, v9, v15, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 20
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_7
    invoke-virtual {v14, v9, v5, v9, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 22
    :cond_8
    invoke-virtual {v14, v5, v2, v15, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 23
    :cond_9
    invoke-virtual {v14, v15, v5, v15, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    :goto_3
    sget-object v2, Lfb;->p:Lhb;

    sget-object v15, Lfb;->o:Lgb;

    .line 25
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eq v1, v13, :cond_d

    if-eq v1, v12, :cond_c

    if-eq v1, v11, :cond_b

    if-ne v1, v8, :cond_a

    .line 26
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v10

    neg-int v6, v6

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 27
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_b
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v10

    neg-int v6, v6

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 29
    :cond_c
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v10

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 30
    :cond_d
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v10

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 31
    :goto_4
    check-cast v2, Lfb$b;

    .line 32
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v4}, Ln4;->j()I

    move-result v2

    .line 34
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_5
    if-ge v8, v2, :cond_1f

    .line 35
    iget-boolean v11, v4, Ln4;->e:Z

    if-eqz v11, :cond_e

    .line 36
    invoke-virtual {v4}, Ln4;->d()V

    .line 37
    :cond_e
    iget-object v11, v4, Ln4;->g:[Ljava/lang/Object;

    aget-object v11, v11, v8

    .line 38
    check-cast v11, Lsa;

    if-ne v11, v3, :cond_f

    goto :goto_9

    .line 39
    :cond_f
    move-object v12, v15

    check-cast v12, Lfb$a;

    invoke-virtual {v12, v11, v6}, Lfb$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 40
    invoke-static {v14, v6, v1}, Ld0$h;->M(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v12

    if-nez v12, :cond_10

    goto :goto_7

    .line 41
    :cond_10
    invoke-static {v14, v7, v1}, Ld0$h;->M(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v12

    if-nez v12, :cond_11

    goto :goto_6

    .line 42
    :cond_11
    invoke-static {v1, v14, v6, v7}, Ld0$h;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_12

    goto :goto_6

    .line 43
    :cond_12
    invoke-static {v1, v14, v7, v6}, Ld0$h;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_13

    goto :goto_7

    .line 44
    :cond_13
    invoke-static {v1, v14, v6}, Ld0$h;->O(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v12

    .line 45
    invoke-static {v1, v14, v6}, Ld0$h;->P(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v13

    mul-int/lit8 v17, v12, 0xd

    mul-int v17, v17, v12

    mul-int v13, v13, v13

    add-int v13, v13, v17

    .line 46
    invoke-static {v1, v14, v7}, Ld0$h;->O(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v12

    .line 47
    invoke-static {v1, v14, v7}, Ld0$h;->P(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v17

    mul-int/lit8 v18, v12, 0xd

    mul-int v18, v18, v12

    mul-int v17, v17, v17

    add-int v12, v17, v18

    if-ge v13, v12, :cond_14

    :goto_6
    const/4 v12, 0x1

    goto :goto_8

    :cond_14
    :goto_7
    const/4 v12, 0x0

    :goto_8
    if-eqz v12, :cond_15

    .line 48
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v16, v11

    :cond_15
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 49
    :cond_16
    iget-object v2, v0, Lfb;->i:Landroid/view/View;

    .line 50
    sget-object v6, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v10, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    .line 52
    :goto_a
    sget-object v6, Lfb;->p:Lhb;

    sget-object v7, Lfb;->o:Lgb;

    .line 53
    check-cast v6, Lfb$b;

    .line 54
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v4}, Ln4;->j()I

    move-result v6

    .line 56
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v6, :cond_19

    .line 57
    iget-boolean v13, v4, Ln4;->e:Z

    if-eqz v13, :cond_18

    .line 58
    invoke-virtual {v4}, Ln4;->d()V

    .line 59
    :cond_18
    iget-object v13, v4, Ln4;->g:[Ljava/lang/Object;

    aget-object v13, v13, v12

    .line 60
    check-cast v13, Lsa;

    .line 61
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 62
    :cond_19
    new-instance v6, Lib;

    invoke-direct {v6, v2, v7}, Lib;-><init>(ZLgb;)V

    .line 63
    invoke-static {v11, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eq v1, v10, :cond_1d

    if-ne v1, v8, :cond_1c

    .line 64
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v3, :cond_1a

    const/4 v2, -0x1

    goto :goto_c

    .line 65
    :cond_1a
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    :goto_c
    add-int/2addr v2, v10

    if-ge v2, v1, :cond_1b

    .line 66
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_e

    :cond_1b
    const/4 v6, 0x0

    goto :goto_e

    .line 67
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v3, :cond_1e

    goto :goto_d

    .line 69
    :cond_1e
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_d
    add-int/2addr v1, v9

    if-ltz v1, :cond_1b

    .line 70
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 71
    :goto_e
    move-object/from16 v16, v6

    check-cast v16, Lsa;

    :cond_1f
    move-object/from16 v1, v16

    if-nez v1, :cond_20

    const/high16 v7, -0x80000000

    goto :goto_11

    .line 72
    :cond_20
    iget-boolean v2, v4, Ln4;->e:Z

    if-eqz v2, :cond_21

    .line 73
    invoke-virtual {v4}, Ln4;->d()V

    .line 74
    :cond_21
    :goto_f
    iget v2, v4, Ln4;->h:I

    if-ge v5, v2, :cond_23

    .line 75
    iget-object v2, v4, Ln4;->g:[Ljava/lang/Object;

    aget-object v2, v2, v5

    if-ne v2, v1, :cond_22

    move v9, v5

    goto :goto_10

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 76
    :cond_23
    :goto_10
    invoke-virtual {v4, v9}, Ln4;->g(I)I

    move-result v7

    .line 77
    :goto_11
    invoke-virtual {v0, v7}, Lfb;->x(I)Z

    move-result v1

    return v1
.end method

.method public s(I)Lsa;
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 1
    iget-object p1, p0, Lfb;->i:Landroid/view/View;

    .line 2
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 3
    new-instance v0, Lsa;

    invoke-direct {v0, p1}, Lsa;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object v1, p0, Lfb;->i:Landroid/view/View;

    .line 5
    sget-object v2, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v1, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lfb;->p(Ljava/util/List;)V

    .line 9
    iget-object v1, v0, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Views cannot have both real and virtual children"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    .line 13
    iget-object v3, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 14
    iget-object v5, v0, Lsa;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    .line 15
    :cond_3
    invoke-virtual {p0, p1}, Lfb;->m(I)Lsa;

    move-result-object p1

    return-object p1
.end method

.method public abstract t(IILandroid/os/Bundle;)Z
.end method

.method public u(Lsa;)V
    .locals 0

    return-void
.end method

.method public abstract v(ILsa;)V
.end method

.method public w(IZ)V
    .locals 0

    return-void
.end method

.method public final x(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lfb;->l:I

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Lfb;->k(I)Z

    .line 4
    :cond_2
    iput p1, p0, Lfb;->l:I

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lfb;->w(IZ)V

    const/16 v1, 0x8

    .line 6
    invoke-virtual {p0, p1, v1}, Lfb;->y(II)Z

    return v0
.end method

.method public final y(II)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    .line 1
    iget-object v1, p0, Lfb;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lfb;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lfb;->l(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lfb;->i:Landroid/view/View;

    .line 5
    invoke-interface {v1, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final z(I)V
    .locals 2

    .line 1
    iget v0, p0, Lfb;->m:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lfb;->m:I

    const/16 v1, 0x80

    .line 3
    invoke-virtual {p0, p1, v1}, Lfb;->y(II)Z

    const/16 p1, 0x100

    .line 4
    invoke-virtual {p0, v0, p1}, Lfb;->y(II)Z

    return-void
.end method

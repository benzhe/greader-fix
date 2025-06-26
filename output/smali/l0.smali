.class public Ll0;
.super Lu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll0$d;,
        Ll0$c;,
        Ll0$e;
    }
.end annotation


# instance fields
.field public a:Ll2;

.field public b:Z

.field public c:Landroid/view/Window$Callback;

.field public d:Z

.field public e:Z

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Runnable;

.field public final h:Landroidx/appcompat/widget/Toolbar$f;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lu;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll0;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ll0$a;

    invoke-direct {v0, p0}, Ll0$a;-><init>(Ll0;)V

    iput-object v0, p0, Ll0;->g:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ll0$b;

    invoke-direct {v0, p0}, Ll0$b;-><init>(Ll0;)V

    iput-object v0, p0, Ll0;->h:Landroidx/appcompat/widget/Toolbar$f;

    .line 5
    new-instance v1, Le3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Le3;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Ll0;->a:Ll2;

    .line 6
    new-instance v1, Ll0$e;

    invoke-direct {v1, p0, p3}, Ll0$e;-><init>(Ll0;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Ll0;->c:Landroid/view/Window$Callback;

    .line 7
    iget-object p3, p0, Ll0;->a:Ll2;

    invoke-interface {p3, v1}, Ll2;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 8
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    .line 9
    iget-object p1, p0, Ll0;->a:Ll2;

    invoke-interface {p1, p2}, Ll2;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0}, Ll2;->d()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0}, Ll2;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ll0;->a:Ll2;

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
    iget-boolean v0, p0, Ll0;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Ll0;->e:Z

    .line 3
    iget-object v0, p0, Ll0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Ll0;->f:Ljava/util/ArrayList;

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
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0}, Ll2;->s()I

    move-result v0

    return v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0}, Ll2;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ll2;->p(I)V

    return-void
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0}, Ll2;->q()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Ll0;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0}, Ll2;->q()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Ll0;->g:Ljava/lang/Runnable;

    .line 3
    sget-object v2, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public h(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0}, Ll2;->q()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Ll0;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ll0;->y()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 3
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 5
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public k(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Ll0;->a:Ll2;

    invoke-interface {p1}, Ll2;->e()Z

    :cond_0
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0}, Ll2;->e()Z

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Lu$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lu$a;-><init>(II)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0, p1}, Ll2;->t(Landroid/view/View;)V

    return-void
.end method

.method public n(Z)V
    .locals 0

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
    invoke-virtual {p0, p1, v0}, Ll0;->z(II)V

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
    invoke-virtual {p0, p1, v0}, Ll0;->z(II)V

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
    invoke-virtual {p0, p1, v0}, Ll0;->z(II)V

    return-void
.end method

.method public r(Z)V
    .locals 0

    return-void
.end method

.method public s(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0, p1}, Ll2;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public t(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ll2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Ll2;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public u(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0, p1}, Ll2;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public v(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0, p1}, Ll2;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ll2;->p(I)V

    return-void
.end method

.method public final y()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ll0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ll0;->a:Ll2;

    new-instance v1, Ll0$c;

    invoke-direct {v1, p0}, Ll0$c;-><init>(Ll0;)V

    new-instance v2, Ll0$d;

    invoke-direct {v2, p0}, Ll0$d;-><init>(Ll0;)V

    invoke-interface {v0, v1, v2}, Ll2;->o(Lp1$a;Lj1$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ll0;->d:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0}, Ll2;->k()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public z(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll0;->a:Ll2;

    invoke-interface {v0}, Ll2;->s()I

    move-result v0

    .line 2
    iget-object v1, p0, Ll0;->a:Ll2;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Ll2;->i(I)V

    return-void
.end method

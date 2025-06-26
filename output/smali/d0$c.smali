.class public Ld0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lv0$a;

.field public final synthetic b:Ld0;


# direct methods
.method public constructor <init>(Ld0;Lv0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld0$c;->b:Ld0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ld0$c;->a:Lv0$a;

    return-void
.end method


# virtual methods
.method public a(Lv0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld0$c;->a:Lv0$a;

    invoke-interface {v0, p1}, Lv0$a;->a(Lv0;)V

    .line 2
    iget-object p1, p0, Ld0$c;->b:Ld0;

    iget-object v0, p1, Ld0;->t:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Ld0;->i:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld0$c;->b:Ld0;

    iget-object v0, v0, Ld0;->u:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Ld0$c;->b:Ld0;

    iget-object v0, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ld0;->J()V

    .line 6
    iget-object p1, p0, Ld0$c;->b:Ld0;

    iget-object v0, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lha;->b(Landroid/view/View;)Lma;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lma;->a(F)Lma;

    iput-object v0, p1, Ld0;->v:Lma;

    .line 7
    iget-object p1, p0, Ld0$c;->b:Ld0;

    iget-object p1, p1, Ld0;->v:Lma;

    new-instance v0, Ld0$c$a;

    invoke-direct {v0, p0}, Ld0$c$a;-><init>(Ld0$c;)V

    .line 8
    iget-object v1, p1, Lma;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1, v1, v0}, Lma;->e(Landroid/view/View;Lna;)V

    .line 10
    :cond_1
    iget-object p1, p0, Ld0$c;->b:Ld0;

    iget-object v0, p1, Ld0;->k:Lb0;

    if-eqz v0, :cond_2

    .line 11
    iget-object p1, p1, Ld0;->r:Lv0;

    invoke-interface {v0, p1}, Lb0;->e(Lv0;)V

    .line 12
    :cond_2
    iget-object p1, p0, Ld0$c;->b:Ld0;

    const/4 v0, 0x0

    iput-object v0, p1, Ld0;->r:Lv0;

    .line 13
    iget-object p1, p1, Ld0;->y:Landroid/view/ViewGroup;

    .line 14
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public b(Lv0;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld0$c;->a:Lv0$a;

    invoke-interface {v0, p1, p2}, Lv0$a;->b(Lv0;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public c(Lv0;Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld0$c;->b:Ld0;

    iget-object v0, v0, Ld0;->y:Landroid/view/ViewGroup;

    .line 2
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 4
    iget-object v0, p0, Ld0$c;->a:Lv0$a;

    invoke-interface {v0, p1, p2}, Lv0$a;->c(Lv0;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public d(Lv0;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld0$c;->a:Lv0$a;

    invoke-interface {v0, p1, p2}, Lv0$a;->d(Lv0;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.class public Lk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lp1$a;


# instance fields
.field public e:Lj1;

.field public f:La0;

.field public g:Lh1;


# direct methods
.method public constructor <init>(Lj1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk1;->e:Lj1;

    return-void
.end method


# virtual methods
.method public b(Lj1;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lk1;->e:Lj1;

    if-ne p1, p2, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lk1;->f:La0;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Li0;->dismiss()V

    :cond_1
    return-void
.end method

.method public c(Lj1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lk1;->e:Lj1;

    iget-object v0, p0, Lk1;->g:Lh1;

    invoke-virtual {v0}, Lh1;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lh1$a;

    .line 2
    invoke-virtual {v0, p2}, Lh1$a;->b(I)Ll1;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, Lj1;->r(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lk1;->g:Lh1;

    iget-object v0, p0, Lk1;->e:Lj1;

    .line 2
    iget-object p1, p1, Lh1;->j:Lp1$a;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p1, v0, v1}, Lp1$a;->b(Lj1;Z)V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lk1;->f:La0;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    .line 7
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lk1;->f:La0;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object p2, p0, Lk1;->e:Lj1;

    invoke-virtual {p2, v1}, Lj1;->c(Z)V

    .line 13
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    .line 14
    :cond_2
    iget-object p1, p0, Lk1;->e:Lj1;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lj1;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

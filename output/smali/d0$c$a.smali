.class public Ld0$c$a;
.super Loa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0$c;->a(Lv0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld0$c;


# direct methods
.method public constructor <init>(Ld0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld0$c$a;->a:Ld0$c;

    invoke-direct {p0}, Loa;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld0$c$a;->a:Ld0$c;

    iget-object p1, p1, Ld0$c;->b:Ld0;

    iget-object p1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Ld0$c$a;->a:Ld0$c;

    iget-object p1, p1, Ld0$c;->b:Ld0;

    iget-object v0, p1, Ld0;->t:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Ld0$c$a;->a:Ld0$c;

    iget-object p1, p1, Ld0$c;->b:Ld0;

    iget-object p1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 6
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Ld0$c$a;->a:Ld0$c;

    iget-object p1, p1, Ld0$c;->b:Ld0;

    iget-object p1, p1, Ld0;->s:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object p1, p0, Ld0$c$a;->a:Ld0$c;

    iget-object p1, p1, Ld0$c;->b:Ld0;

    iget-object p1, p1, Ld0;->v:Lma;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lma;->d(Lna;)Lma;

    .line 10
    iget-object p1, p0, Ld0$c$a;->a:Ld0$c;

    iget-object p1, p1, Ld0$c;->b:Ld0;

    iput-object v0, p1, Ld0;->v:Lma;

    .line 11
    iget-object p1, p1, Ld0;->y:Landroid/view/ViewGroup;

    .line 12
    sget-object v0, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

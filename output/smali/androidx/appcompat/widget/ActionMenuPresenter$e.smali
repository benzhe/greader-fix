.class public Landroidx/appcompat/widget/ActionMenuPresenter$e;
.super Lo1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Lj1;Landroid/view/View;Z)V
    .locals 7

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    sget v5, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lo1;-><init>(Landroid/content/Context;Lj1;Landroid/view/View;ZII)V

    const p2, 0x800005

    .line 4
    iput p2, p0, Lo1;->g:I

    .line 5
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->C:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    invoke-virtual {p0, p1}, Lo1;->d(Lp1$a;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    iget-object v0, v0, Le1;->g:Lj1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lj1;->c(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$e;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 5
    invoke-super {p0}, Lo1;->c()V

    return-void
.end method

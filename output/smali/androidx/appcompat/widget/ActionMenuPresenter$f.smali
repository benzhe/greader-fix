.class public Landroidx/appcompat/widget/ActionMenuPresenter$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic e:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$f;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lj1;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lu1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lj1;->k()Lj1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj1;->c(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$f;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 4
    iget-object v0, v0, Le1;->i:Lp1$a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1, p2}, Lp1$a;->b(Lj1;Z)V

    :cond_1
    return-void
.end method

.method public c(Lj1;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$f;->e:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    iget-object v1, v0, Le1;->g:Lj1;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    .line 3
    :cond_0
    move-object v1, p1

    check-cast v1, Lu1;

    .line 4
    iget-object v1, v1, Lu1;->A:Ll1;

    .line 5
    iget v1, v1, Ll1;->a:I

    .line 6
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:I

    .line 7
    iget-object v0, v0, Le1;->i:Lp1$a;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1}, Lp1$a;->c(Lj1;)Z

    move-result v2

    :cond_1
    return v2
.end method

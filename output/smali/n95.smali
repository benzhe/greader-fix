.class public Ln95;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo95;


# direct methods
.method public constructor <init>(Lo95;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln95;->a:Lo95;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Ln95;->a:Lo95;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lo95;->a(Lo95;ZZ)Z

    .line 3
    iget-object p1, p0, Ln95;->a:Lo95;

    .line 4
    iget-object v0, p1, Lo95;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean v1, p1, Lo95;->k:Z

    if-nez v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loi;

    .line 6
    invoke-virtual {v1, p1}, Loi;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

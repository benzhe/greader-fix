.class public final synthetic Lqk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lrk1;


# direct methods
.method public constructor <init>(Lrk1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqk1;->e:Lrk1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lqk1;->e:Lrk1;

    .line 1
    iget-object v1, v0, Lrk1;->k:Landroid/view/View;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/view/View;

    iget-object v2, v0, Lrk1;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lrk1;->k:Landroid/view/View;

    .line 3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    :cond_0
    iget-object v1, v0, Lrk1;->h:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lrk1;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 5
    iget-object v1, v0, Lrk1;->h:Landroid/widget/FrameLayout;

    iget-object v0, v0, Lrk1;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final e:Landroid/view/View;

.field public final synthetic f:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->f:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->f:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->e:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->f:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->e:Landroid/view/View;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;->d:Landroid/graphics/Paint;

    .line 6
    sget-object v2, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->f:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

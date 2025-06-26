.class public Lnet/simonvt/menudrawer/MenuDrawer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/menudrawer/MenuDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lnet/simonvt/menudrawer/MenuDrawer;


# direct methods
.method public constructor <init>(Lnet/simonvt/menudrawer/MenuDrawer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/simonvt/menudrawer/MenuDrawer$b;->e:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer$b;->e:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, v0, Lnet/simonvt/menudrawer/MenuDrawer;->l:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer$b;->e:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, v0, Lnet/simonvt/menudrawer/MenuDrawer;->l:Landroid/view/View;

    .line 3
    iget-object v0, v0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer$b;->e:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, v0, Lnet/simonvt/menudrawer/MenuDrawer;->l:Landroid/view/View;

    .line 6
    iget-object v2, v0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8
    iget-object v0, p0, Lnet/simonvt/menudrawer/MenuDrawer$b;->e:Lnet/simonvt/menudrawer/MenuDrawer;

    .line 9
    iget-object v1, v0, Lnet/simonvt/menudrawer/MenuDrawer;->p:Landroid/graphics/Rect;

    .line 10
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lnet/simonvt/menudrawer/MenuDrawer;->o:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v4, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v4, :cond_0

    .line 11
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v4, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

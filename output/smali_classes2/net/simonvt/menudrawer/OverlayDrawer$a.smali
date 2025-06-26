.class public Lnet/simonvt/menudrawer/OverlayDrawer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/menudrawer/OverlayDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lnet/simonvt/menudrawer/OverlayDrawer;


# direct methods
.method public constructor <init>(Lnet/simonvt/menudrawer/OverlayDrawer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/simonvt/menudrawer/OverlayDrawer$a;->e:Lnet/simonvt/menudrawer/OverlayDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer$a;->e:Lnet/simonvt/menudrawer/OverlayDrawer;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 4
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lnet/simonvt/menudrawer/MenuDrawer;->s:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 9
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer$a;->e:Lnet/simonvt/menudrawer/OverlayDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->getPosition()Lns7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer$a;->e:Lnet/simonvt/menudrawer/OverlayDrawer;

    .line 11
    iget v0, v0, Lnet/simonvt/menudrawer/OverlayDrawer;->v0:I

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/OverlayDrawer$a;->e:Lnet/simonvt/menudrawer/OverlayDrawer;

    .line 13
    iget v0, v0, Lnet/simonvt/menudrawer/OverlayDrawer;->v0:I

    neg-int v0, v0

    .line 14
    :goto_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/OverlayDrawer$a;->e:Lnet/simonvt/menudrawer/OverlayDrawer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v0, v2}, Lnet/simonvt/menudrawer/DraggableDrawer;->o(II)V

    return-void
.end method

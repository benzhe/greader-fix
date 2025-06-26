.class public Lcom/noinnion/android/widget/TouchListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/widget/TouchListView$d;,
        Lcom/noinnion/android/widget/TouchListView$c;,
        Lcom/noinnion/android/widget/TouchListView$b;
    }
.end annotation


# instance fields
.field public e:Landroid/widget/ImageView;

.field public f:Landroid/view/WindowManager;

.field public g:Landroid/view/WindowManager$LayoutParams;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Lcom/noinnion/android/widget/TouchListView$b;

.field public m:Lcom/noinnion/android/widget/TouchListView$c;

.field public n:Lcom/noinnion/android/widget/TouchListView$d;

.field public o:I

.field public p:I

.field public q:I

.field public r:Landroid/view/GestureDetector;

.field public s:I

.field public t:Landroid/graphics/Rect;

.field public u:Landroid/graphics/Bitmap;

.field public final v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/noinnion/android/widget/TouchListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 3
    iput p3, p0, Lcom/noinnion/android/widget/TouchListView;->s:I

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->t:Landroid/graphics/Rect;

    .line 5
    iput p3, p0, Lcom/noinnion/android/widget/TouchListView;->w:I

    .line 6
    iput p3, p0, Lcom/noinnion/android/widget/TouchListView;->x:I

    .line 7
    iput p3, p0, Lcom/noinnion/android/widget/TouchListView;->y:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/noinnion/android/widget/TouchListView;->z:I

    .line 9
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/noinnion/android/widget/TouchListView;->v:I

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/noinnion/android/R$styleable;->TouchListView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lcom/noinnion/android/R$styleable;->TouchListView_normal_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/widget/TouchListView;->w:I

    .line 12
    sget v1, Lcom/noinnion/android/R$styleable;->TouchListView_expanded_height:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/widget/TouchListView;->x:I

    .line 13
    sget p2, Lcom/noinnion/android/R$styleable;->TouchListView_grabber:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/widget/TouchListView;->y:I

    .line 14
    sget p2, Lcom/noinnion/android/R$styleable;->TouchListView_dragndrop_background:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/widget/TouchListView;->z:I

    .line 15
    sget p2, Lcom/noinnion/android/R$styleable;->TouchListView_remove_mode:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/noinnion/android/widget/TouchListView;->s:I

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/noinnion/android/widget/TouchListView;->y:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final addFooterView(Landroid/view/View;)V
    .locals 1

    .line 3
    iget p1, p0, Lcom/noinnion/android/widget/TouchListView;->s:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Footers are not supported with TouchListView in conjunction with remove_mode"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/noinnion/android/widget/TouchListView;->s:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Footers are not supported with TouchListView in conjunction with remove_mode"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addHeaderView(Landroid/view/View;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Headers are not supported with TouchListView"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Headers are not supported with TouchListView"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    iget-object v2, p0, Lcom/noinnion/android/widget/TouchListView;->e:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iput-object v1, p0, Lcom/noinnion/android/widget/TouchListView;->e:Landroid/widget/ImageView;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->u:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    iput-object v1, p0, Lcom/noinnion/android/widget/TouchListView;->u:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public final c(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    invoke-virtual {p0, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Lcom/noinnion/android/widget/TouchListView;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10
    iget v4, p0, Lcom/noinnion/android/widget/TouchListView;->w:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->n:Lcom/noinnion/android/widget/TouchListView$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->r:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/noinnion/android/widget/TouchListView;->s:I

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/noinnion/android/widget/TouchListView$a;

    invoke-direct {v2, p0}, Lcom/noinnion/android/widget/TouchListView$a;-><init>(Lcom/noinnion/android/widget/TouchListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->r:Landroid/view/GestureDetector;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->l:Lcom/noinnion/android/widget/TouchListView$b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->m:Lcom/noinnion/android/widget/TouchListView$c;

    if-eqz v0, :cond_5

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    goto/16 :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10
    invoke-virtual {p0, v3}, Lcom/noinnion/android/widget/TouchListView;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v1, v4

    iput v4, p0, Lcom/noinnion/android/widget/TouchListView;->j:I

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/noinnion/android/widget/TouchListView;->k:I

    .line 13
    iget v4, p0, Lcom/noinnion/android/widget/TouchListView;->y:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 14
    iget-object v5, p0, Lcom/noinnion/android/widget/TouchListView;->t:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 16
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 19
    iget v4, v5, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    if-ge v4, v0, :cond_4

    iget v4, v5, Landroid/graphics/Rect;->right:I

    if-ge v0, v4, :cond_4

    const/4 p1, 0x1

    .line 20
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {v3, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 23
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 24
    invoke-virtual {p0, v3, v6}, Landroid/widget/ListView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 25
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 26
    invoke-virtual {p0}, Lcom/noinnion/android/widget/TouchListView;->b()V

    .line 27
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, p0, Lcom/noinnion/android/widget/TouchListView;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x33

    .line 28
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 29
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 30
    iget v3, p0, Lcom/noinnion/android/widget/TouchListView;->j:I

    sub-int v3, v1, v3

    iget v5, p0, Lcom/noinnion/android/widget/TouchListView;->k:I

    add-int/2addr v3, v5

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, -0x2

    .line 31
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 32
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x198

    .line 33
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x3

    .line 34
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 35
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 36
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    iget v4, p0, Lcom/noinnion/android/widget/TouchListView;->z:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 38
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 39
    iput-object p1, p0, Lcom/noinnion/android/widget/TouchListView;->u:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/noinnion/android/widget/TouchListView;->f:Landroid/view/WindowManager;

    .line 41
    iget-object v4, p0, Lcom/noinnion/android/widget/TouchListView;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iput-object v3, p0, Lcom/noinnion/android/widget/TouchListView;->e:Landroid/widget/ImageView;

    .line 43
    iput v2, p0, Lcom/noinnion/android/widget/TouchListView;->h:I

    .line 44
    iput v2, p0, Lcom/noinnion/android/widget/TouchListView;->i:I

    .line 45
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/noinnion/android/widget/TouchListView;->q:I

    .line 46
    iget v2, p0, Lcom/noinnion/android/widget/TouchListView;->v:I

    sub-int v3, v1, v2

    .line 47
    div-int/lit8 p1, p1, 0x3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/noinnion/android/widget/TouchListView;->o:I

    add-int/2addr v1, v2

    .line 48
    iget p1, p0, Lcom/noinnion/android/widget/TouchListView;->q:I

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/noinnion/android/widget/TouchListView;->p:I

    return v0

    .line 49
    :cond_4
    iput-object v6, p0, Lcom/noinnion/android/widget/TouchListView;->e:Landroid/widget/ImageView;

    .line 50
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->r:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->l:Lcom/noinnion/android/widget/TouchListView$b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->m:Lcom/noinnion/android/widget/TouchListView$c;

    if-eqz v0, :cond_22

    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_22

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_8

    if-eq v0, v2, :cond_2

    goto/16 :goto_8

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->t:Landroid/graphics/Rect;

    .line 6
    iget-object v6, p0, Lcom/noinnion/android/widget/TouchListView;->e:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p0}, Lcom/noinnion/android/widget/TouchListView;->b()V

    .line 8
    iget v6, p0, Lcom/noinnion/android/widget/TouchListView;->s:I

    if-ne v6, v5, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/2addr v8, v1

    add-int/2addr v8, v7

    int-to-float v2, v8

    cmpl-float v2, v6, v2

    if-lez v2, :cond_4

    .line 9
    iget-object p1, p0, Lcom/noinnion/android/widget/TouchListView;->n:Lcom/noinnion/android/widget/TouchListView$d;

    if-eqz p1, :cond_3

    .line 10
    iget v0, p0, Lcom/noinnion/android/widget/TouchListView;->i:I

    invoke-interface {p1, v0}, Lcom/noinnion/android/widget/TouchListView$d;->remove(I)V

    .line 11
    :cond_3
    invoke-virtual {p0, v5}, Lcom/noinnion/android/widget/TouchListView;->c(Z)V

    goto/16 :goto_8

    .line 12
    :cond_4
    iget v2, p0, Lcom/noinnion/android/widget/TouchListView;->s:I

    if-ne v2, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/noinnion/android/widget/TouchListView;->n:Lcom/noinnion/android/widget/TouchListView$d;

    if-eqz p1, :cond_5

    .line 14
    iget v0, p0, Lcom/noinnion/android/widget/TouchListView;->i:I

    invoke-interface {p1, v0}, Lcom/noinnion/android/widget/TouchListView$d;->remove(I)V

    .line 15
    :cond_5
    invoke-virtual {p0, v5}, Lcom/noinnion/android/widget/TouchListView;->c(Z)V

    goto/16 :goto_8

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/noinnion/android/widget/TouchListView;->m:Lcom/noinnion/android/widget/TouchListView$c;

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/noinnion/android/widget/TouchListView;->h:I

    if-ltz p1, :cond_7

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 17
    iget-object p1, p0, Lcom/noinnion/android/widget/TouchListView;->m:Lcom/noinnion/android/widget/TouchListView$c;

    iget v0, p0, Lcom/noinnion/android/widget/TouchListView;->i:I

    iget v1, p0, Lcom/noinnion/android/widget/TouchListView;->h:I

    invoke-interface {p1, v0, v1}, Lcom/noinnion/android/widget/TouchListView$c;->m(II)V

    .line 18
    :cond_7
    invoke-virtual {p0, v3}, Lcom/noinnion/android/widget/TouchListView;->c(Z)V

    goto/16 :goto_8

    .line 19
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 21
    iget-object v7, p0, Lcom/noinnion/android/widget/TouchListView;->e:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    .line 22
    iget v8, p0, Lcom/noinnion/android/widget/TouchListView;->s:I

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v8, v5, :cond_a

    .line 23
    div-int/lit8 v8, v7, 0x2

    if-le v6, v8, :cond_9

    sub-int/2addr v7, v6

    int-to-float v6, v7

    int-to-float v7, v8

    div-float v9, v6, v7

    .line 24
    :cond_9
    iget-object v6, p0, Lcom/noinnion/android/widget/TouchListView;->g:Landroid/view/WindowManager$LayoutParams;

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->alpha:F

    goto :goto_0

    :cond_a
    if-ne v8, v4, :cond_c

    .line 25
    div-int/2addr v7, v4

    if-ge v6, v7, :cond_b

    int-to-float v6, v6

    int-to-float v7, v7

    div-float v9, v6, v7

    .line 26
    :cond_b
    iget-object v6, p0, Lcom/noinnion/android/widget/TouchListView;->g:Landroid/view/WindowManager$LayoutParams;

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 27
    :cond_c
    :goto_0
    iget-object v6, p0, Lcom/noinnion/android/widget/TouchListView;->g:Landroid/view/WindowManager$LayoutParams;

    iget v7, p0, Lcom/noinnion/android/widget/TouchListView;->j:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/noinnion/android/widget/TouchListView;->k:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 28
    iget-object v7, p0, Lcom/noinnion/android/widget/TouchListView;->f:Landroid/view/WindowManager;

    iget-object v8, p0, Lcom/noinnion/android/widget/TouchListView;->e:Landroid/widget/ImageView;

    invoke-interface {v7, v8, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget v6, p0, Lcom/noinnion/android/widget/TouchListView;->j:I

    sub-int v6, p1, v6

    iget v7, p0, Lcom/noinnion/android/widget/TouchListView;->w:I

    div-int/2addr v7, v4

    sub-int/2addr v6, v7

    .line 30
    iget-object v7, p0, Lcom/noinnion/android/widget/TouchListView;->t:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    const/4 v9, -0x1

    add-int/2addr v8, v9

    :goto_1
    if-ltz v8, :cond_e

    .line 32
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 33
    invoke-virtual {v10, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 34
    invoke-virtual {v7, v3, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 35
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    add-int/2addr v7, v8

    goto :goto_2

    :cond_d
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_e
    const/4 v7, -0x1

    :goto_2
    if-ltz v7, :cond_f

    .line 36
    iget v6, p0, Lcom/noinnion/android/widget/TouchListView;->i:I

    if-gt v7, v6, :cond_10

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_f
    if-gez v6, :cond_10

    const/4 v7, 0x0

    :cond_10
    :goto_3
    if-ltz v7, :cond_21

    if-eqz v0, :cond_11

    .line 37
    iget v0, p0, Lcom/noinnion/android/widget/TouchListView;->h:I

    if-eq v7, v0, :cond_14

    .line 38
    :cond_11
    iget-object v0, p0, Lcom/noinnion/android/widget/TouchListView;->l:Lcom/noinnion/android/widget/TouchListView$b;

    if-eqz v0, :cond_12

    .line 39
    iget v6, p0, Lcom/noinnion/android/widget/TouchListView;->h:I

    invoke-interface {v0, v6, v7}, Lcom/noinnion/android/widget/TouchListView$b;->a(II)V

    .line 40
    :cond_12
    iput v7, p0, Lcom/noinnion/android/widget/TouchListView;->h:I

    .line 41
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v7, v0

    .line 42
    iget v0, p0, Lcom/noinnion/android/widget/TouchListView;->h:I

    iget v6, p0, Lcom/noinnion/android/widget/TouchListView;->i:I

    if-le v0, v6, :cond_13

    add-int/lit8 v7, v7, 0x1

    .line 43
    :cond_13
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v6, 0x0

    .line 44
    :goto_4
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_1c

    .line 45
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 46
    :cond_14
    iget v0, p0, Lcom/noinnion/android/widget/TouchListView;->q:I

    div-int/lit8 v6, v0, 0x3

    if-lt p1, v6, :cond_15

    .line 47
    iput v6, p0, Lcom/noinnion/android/widget/TouchListView;->o:I

    :cond_15
    mul-int/lit8 v6, v0, 0x2

    .line 48
    div-int/2addr v6, v2

    if-gt p1, v6, :cond_16

    .line 49
    iput v6, p0, Lcom/noinnion/android/widget/TouchListView;->p:I

    .line 50
    :cond_16
    iget v2, p0, Lcom/noinnion/android/widget/TouchListView;->p:I

    if-le p1, v2, :cond_17

    add-int/2addr v2, v0

    .line 51
    div-int/2addr v2, v4

    if-le p1, v2, :cond_1a

    const/16 v1, 0x10

    goto :goto_5

    .line 52
    :cond_17
    iget v1, p0, Lcom/noinnion/android/widget/TouchListView;->o:I

    if-ge p1, v1, :cond_19

    .line 53
    div-int/2addr v1, v4

    if-ge p1, v1, :cond_18

    const/16 p1, -0x10

    const/16 v1, -0x10

    goto :goto_5

    :cond_18
    const/4 p1, -0x4

    const/4 v1, -0x4

    goto :goto_5

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_5
    if-eqz v1, :cond_21

    .line 54
    div-int/2addr v0, v4

    invoke-virtual {p0, v3, v0}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result p1

    if-ne p1, v9, :cond_1b

    .line 55
    iget p1, p0, Lcom/noinnion/android/widget/TouchListView;->q:I

    div-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {p0, v3, v0}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result p1

    .line 56
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    .line 58
    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_8

    .line 59
    :cond_1c
    iget v10, p0, Lcom/noinnion/android/widget/TouchListView;->w:I

    .line 60
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 61
    iget v11, p0, Lcom/noinnion/android/widget/TouchListView;->h:I

    iget v12, p0, Lcom/noinnion/android/widget/TouchListView;->i:I

    if-ne v11, v12, :cond_1d

    const/4 v11, 0x4

    goto :goto_7

    :cond_1d
    const/4 v10, 0x1

    goto :goto_6

    :cond_1e
    if-ne v6, v7, :cond_1f

    .line 62
    iget v11, p0, Lcom/noinnion/android/widget/TouchListView;->h:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v12

    sub-int/2addr v12, v5

    if-ge v11, v12, :cond_1f

    .line 63
    iget v10, p0, Lcom/noinnion/android/widget/TouchListView;->x:I

    :cond_1f
    :goto_6
    const/4 v11, 0x0

    .line 64
    :goto_7
    invoke-virtual {p0, v8}, Lcom/noinnion/android/widget/TouchListView;->a(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 65
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 66
    iput v10, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    invoke-virtual {v8, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_21
    :goto_8
    return v5

    .line 69
    :cond_22
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDragListener(Lcom/noinnion/android/widget/TouchListView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/widget/TouchListView;->l:Lcom/noinnion/android/widget/TouchListView$b;

    return-void
.end method

.method public setDropListener(Lcom/noinnion/android/widget/TouchListView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/widget/TouchListView;->m:Lcom/noinnion/android/widget/TouchListView$c;

    return-void
.end method

.method public setRemoveListener(Lcom/noinnion/android/widget/TouchListView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/widget/TouchListView;->n:Lcom/noinnion/android/widget/TouchListView$d;

    return-void
.end method

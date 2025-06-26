.class public Lcom/noinnion/android/widget/TouchListView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/widget/TouchListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/widget/TouchListView;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/widget/TouchListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/widget/TouchListView$a;->a:Lcom/noinnion/android/widget/TouchListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/widget/TouchListView$a;->a:Lcom/noinnion/android/widget/TouchListView;

    .line 2
    iget-object p4, p1, Lcom/noinnion/android/widget/TouchListView;->e:Landroid/widget/ImageView;

    if-eqz p4, :cond_1

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x1

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    .line 3
    iget-object p1, p1, Lcom/noinnion/android/widget/TouchListView;->t:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/noinnion/android/widget/TouchListView$a;->a:Lcom/noinnion/android/widget/TouchListView;

    .line 7
    invoke-virtual {p1}, Lcom/noinnion/android/widget/TouchListView;->b()V

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/widget/TouchListView$a;->a:Lcom/noinnion/android/widget/TouchListView;

    .line 9
    iget-object p2, p1, Lcom/noinnion/android/widget/TouchListView;->n:Lcom/noinnion/android/widget/TouchListView$d;

    .line 10
    iget p1, p1, Lcom/noinnion/android/widget/TouchListView;->i:I

    .line 11
    invoke-interface {p2, p1}, Lcom/noinnion/android/widget/TouchListView$d;->remove(I)V

    .line 12
    iget-object p1, p0, Lcom/noinnion/android/widget/TouchListView$a;->a:Lcom/noinnion/android/widget/TouchListView;

    .line 13
    invoke-virtual {p1, v1}, Lcom/noinnion/android/widget/TouchListView;->c(Z)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

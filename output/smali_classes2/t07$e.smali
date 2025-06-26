.class public Lt07$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Z

.field public final synthetic h:Lt07;


# direct methods
.method public constructor <init>(Lt07;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt07$e;->h:Lt07;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lt07$e;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt07$e;->h:Lt07;

    .line 2
    iget-object v0, v0, Lt07;->p:Ljava/util/Timer;

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    iget-object v0, p0, Lt07$e;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lt07$e$a;

    invoke-direct {v0, p0, p1}, Lt07$e$a;-><init>(Lt07$e;Landroid/view/View;)V

    iput-object v0, p0, Lt07$e;->f:Ljava/lang/Runnable;

    .line 6
    iget-object p1, p0, Lt07$e;->h:Lt07;

    iget-object p1, p1, Lt07;->a:Lt07$b;

    iget-object p1, p1, Lt07$b;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lt07$e;->h:Lt07;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lt07$e;->g:Z

    .line 5
    invoke-virtual {p0, p1}, Lt07$e;->a(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lt07$e;->h:Lt07;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 7
    iput-object v3, v0, Lt07;->p:Ljava/util/Timer;

    .line 8
    iget-object v0, p0, Lt07$e;->h:Lt07;

    .line 9
    iget-object v0, v0, Lt07;->p:Ljava/util/Timer;

    .line 10
    new-instance v3, Lu07;

    invoke-direct {v3, p0, p1}, Lu07;-><init>(Lt07$e;Landroid/view/View;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lt07$e;->a(Landroid/view/View;)V

    .line 13
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lt07$e;->g:Z

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lt07$e;->h:Lt07;

    iget v3, p0, Lt07$e;->e:I

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Lt07;->t:I

    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Lt07;->u:I

    goto :goto_2

    .line 20
    :cond_4
    :goto_1
    invoke-virtual {v0, p1, v3}, Lt07;->b(Landroid/view/View;I)V

    .line 21
    :cond_5
    :goto_2
    iget-object p1, v0, Lt07;->o:Landroid/view/GestureDetector;

    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    :cond_6
    iget-boolean p1, p0, Lt07$e;->g:Z

    return p1
.end method

.class public Ld85;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Le85$f;

.field public final synthetic c:Le85;


# direct methods
.method public constructor <init>(Le85;ZLe85$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld85;->c:Le85;

    iput-boolean p2, p0, Ld85;->a:Z

    iput-object p3, p0, Ld85;->b:Le85$f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld85;->c:Le85;

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Le85;->u:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Le85;->o:Landroid/animation/Animator;

    .line 4
    iget-object p1, p0, Ld85;->b:Le85$f;

    if-eqz p1, :cond_0

    .line 5
    check-cast p1, Lb85;

    .line 6
    iget-object v0, p1, Lb85;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    iget-object p1, p1, Lb85;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld85;->c:Le85;

    iget-object v0, v0, Le85;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Ld85;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->b(IZ)V

    .line 2
    iget-object v0, p0, Ld85;->c:Le85;

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Le85;->u:I

    .line 4
    iput-object p1, v0, Le85;->o:Landroid/animation/Animator;

    return-void
.end method

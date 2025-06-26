.class public Lb06;
.super Ll06;
.source "SourceFile"


# instance fields
.field public final synthetic s:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic t:Landroid/view/WindowManager;

.field public final synthetic u:Lq06;


# direct methods
.method public constructor <init>(Lc06;Landroid/view/View;Ljava/lang/Object;Ll06$b;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Lq06;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lb06;->s:Landroid/view/WindowManager$LayoutParams;

    iput-object p6, p0, Lb06;->t:Landroid/view/WindowManager;

    iput-object p7, p0, Lb06;->u:Lq06;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p4}, Ll06;-><init>(Landroid/view/View;Ljava/lang/Object;Ll06$b;)V

    return-void
.end method


# virtual methods
.method public b()F
    .locals 1

    .line 1
    iget-object v0, p0, Lb06;->s:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    return v0
.end method

.method public c(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb06;->s:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2
    iget-object p1, p0, Lb06;->t:Landroid/view/WindowManager;

    iget-object v0, p0, Lb06;->u:Lq06;

    invoke-virtual {v0}, Lq06;->f()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lb06;->s:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

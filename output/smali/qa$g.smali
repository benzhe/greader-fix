.class public Lqa$g;
.super Lqa$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public e:Le8;


# direct methods
.method public constructor <init>(Lqa;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lqa$f;-><init>(Lqa;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lqa$g;->e:Le8;

    return-void
.end method


# virtual methods
.method public e()Le8;
    .locals 4

    .line 1
    iget-object v0, p0, Lqa$g;->e:Le8;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v2, v3, v0}, Le8;->a(IIII)Le8;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lqa$g;->e:Le8;

    .line 6
    :cond_0
    iget-object v0, p0, Lqa$g;->e:Le8;

    return-object v0
.end method

.method public h(IIII)Lqa;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lqa;->k(Landroid/view/WindowInsets;)Lqa;

    move-result-object p1

    return-object p1
.end method

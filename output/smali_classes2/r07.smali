.class public Lr07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic e:Lt07;


# direct methods
.method public constructor <init>(Lt07;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr07;->e:Lt07;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr07;->e:Lt07;

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 2
    iput-object v2, v0, Lt07;->r:[F

    .line 3
    iget-object v3, v0, Lt07;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    iget-object v4, v0, Lt07;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 4
    iget-object v2, v0, Lt07;->r:[F

    iget-object v3, v0, Lt07;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    iget-object v4, v0, Lt07;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v1

    sub-int/2addr v3, v4

    iget v0, v0, Lt07;->s:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-void
.end method

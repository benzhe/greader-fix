.class public Landroidx/recyclerview/widget/LinearLayoutManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lwf;

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    .line 2
    invoke-virtual {v0}, Lwf;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    .line 3
    invoke-virtual {v0}, Lwf;->k()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {v0, p1}, Lwf;->b(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    .line 3
    invoke-virtual {v0}, Lwf;->m()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {v0, p1}, Lwf;->e(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    .line 5
    :goto_0
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {v0}, Lwf;->m()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b(Landroid/view/View;I)V

    return-void

    .line 3
    :cond_0
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 4
    iget-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {p2}, Lwf;->g()I

    move-result p2

    sub-int/2addr p2, v0

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {v0, p1}, Lwf;->b(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {v0}, Lwf;->g()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    if-lez p2, :cond_2

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {v0, p1}, Lwf;->c(Landroid/view/View;)I

    move-result v0

    .line 9
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    sub-int/2addr v2, v0

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {v0}, Lwf;->k()I

    move-result v0

    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {v3, p1}, Lwf;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v0

    .line 12
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr v2, p1

    if-gez v2, :cond_2

    .line 13
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    neg-int v0, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    goto :goto_0

    .line 14
    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {p2, p1}, Lwf;->e(Landroid/view/View;)I

    move-result p2

    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {v2}, Lwf;->k()I

    move-result v2

    sub-int v2, p2, v2

    .line 16
    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    if-lez v2, :cond_2

    .line 17
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    .line 18
    invoke-virtual {v3, p1}, Lwf;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p2

    .line 19
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {p2}, Lwf;->g()I

    move-result p2

    sub-int/2addr p2, v0

    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    .line 21
    invoke-virtual {v0, p1}, Lwf;->b(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->a:Lwf;

    invoke-virtual {p1}, Lwf;->g()I

    move-result p1

    .line 23
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v3

    if-gez p1, :cond_2

    .line 24
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    neg-int p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    :cond_2
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AnchorInfo{mPosition="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

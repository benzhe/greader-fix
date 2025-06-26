.class public Lm6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm6$a;,
        Lm6$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc6;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lm6$a;

.field public c:Ld6;


# direct methods
.method public constructor <init>(Ld6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm6;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lm6$a;

    invoke-direct {v0}, Lm6$a;-><init>()V

    iput-object v0, p0, Lm6;->b:Lm6$a;

    .line 4
    iput-object p1, p0, Lm6;->c:Ld6;

    return-void
.end method


# virtual methods
.method public final a(Lm6$b;Lc6;Z)Z
    .locals 6

    .line 1
    sget-object v0, Lc6$a;->e:Lc6$a;

    iget-object v1, p0, Lm6;->b:Lm6$a;

    invoke-virtual {p2}, Lc6;->o()Lc6$a;

    move-result-object v2

    iput-object v2, v1, Lm6$a;->a:Lc6$a;

    .line 2
    iget-object v1, p0, Lm6;->b:Lm6$a;

    invoke-virtual {p2}, Lc6;->s()Lc6$a;

    move-result-object v2

    iput-object v2, v1, Lm6$a;->b:Lc6$a;

    .line 3
    iget-object v1, p0, Lm6;->b:Lm6$a;

    invoke-virtual {p2}, Lc6;->t()I

    move-result v2

    iput v2, v1, Lm6$a;->c:I

    .line 4
    iget-object v1, p0, Lm6;->b:Lm6$a;

    invoke-virtual {p2}, Lc6;->n()I

    move-result v2

    iput v2, v1, Lm6$a;->d:I

    .line 5
    iget-object v1, p0, Lm6;->b:Lm6$a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lm6$a;->i:Z

    .line 6
    iput-boolean p3, v1, Lm6$a;->j:Z

    .line 7
    iget-object p3, v1, Lm6$a;->a:Lc6$a;

    sget-object v3, Lc6$a;->g:Lc6$a;

    const/4 v4, 0x1

    if-ne p3, v3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 8
    :goto_0
    iget-object v5, v1, Lm6$a;->b:Lc6$a;

    if-ne v5, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x0

    if-eqz p3, :cond_2

    .line 9
    iget p3, p2, Lc6;->P:F

    cmpl-float p3, p3, v5

    if-lez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 10
    iget v3, p2, Lc6;->P:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x4

    if-eqz p3, :cond_4

    .line 11
    iget-object p3, p2, Lc6;->l:[I

    aget p3, p3, v2

    if-ne p3, v5, :cond_4

    .line 12
    iput-object v0, v1, Lm6$a;->a:Lc6$a;

    :cond_4
    if-eqz v3, :cond_5

    .line 13
    iget-object p3, p2, Lc6;->l:[I

    aget p3, p3, v4

    if-ne p3, v5, :cond_5

    .line 14
    iput-object v0, v1, Lm6$a;->b:Lc6$a;

    .line 15
    :cond_5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(Lc6;Lm6$a;)V

    .line 16
    iget-object p1, p0, Lm6;->b:Lm6$a;

    iget p1, p1, Lm6$a;->e:I

    invoke-virtual {p2, p1}, Lc6;->I(I)V

    .line 17
    iget-object p1, p0, Lm6;->b:Lm6$a;

    iget p1, p1, Lm6$a;->f:I

    invoke-virtual {p2, p1}, Lc6;->D(I)V

    .line 18
    iget-object p1, p0, Lm6;->b:Lm6$a;

    iget-boolean p3, p1, Lm6$a;->h:Z

    .line 19
    iput-boolean p3, p2, Lc6;->y:Z

    .line 20
    iget p1, p1, Lm6$a;->g:I

    invoke-virtual {p2, p1}, Lc6;->C(I)V

    .line 21
    iget-object p1, p0, Lm6;->b:Lm6$a;

    iput-boolean v2, p1, Lm6$a;->j:Z

    .line 22
    iget-boolean p1, p1, Lm6$a;->i:Z

    return p1
.end method

.method public final b(Ld6;II)V
    .locals 3

    .line 1
    iget v0, p1, Lc6;->Y:I

    .line 2
    iget v1, p1, Lc6;->Z:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Lc6;->G(I)V

    .line 4
    invoke-virtual {p1, v2}, Lc6;->F(I)V

    .line 5
    iput p2, p1, Lc6;->N:I

    .line 6
    iget v2, p1, Lc6;->Y:I

    if-ge p2, v2, :cond_0

    .line 7
    iput v2, p1, Lc6;->N:I

    .line 8
    :cond_0
    iput p3, p1, Lc6;->O:I

    .line 9
    iget p2, p1, Lc6;->Z:I

    if-ge p3, p2, :cond_1

    .line 10
    iput p2, p1, Lc6;->O:I

    .line 11
    :cond_1
    invoke-virtual {p1, v0}, Lc6;->G(I)V

    .line 12
    invoke-virtual {p1, v1}, Lc6;->F(I)V

    .line 13
    iget-object p1, p0, Lm6;->c:Ld6;

    invoke-virtual {p1}, Ld6;->L()V

    return-void
.end method

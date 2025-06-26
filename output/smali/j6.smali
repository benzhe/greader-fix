.class public Lj6;
.super Lh6;
.source "SourceFile"


# instance fields
.field public E0:I

.field public F0:I

.field public G0:I

.field public H0:I

.field public I0:I

.field public J0:I

.field public K0:Z

.field public L0:I

.field public M0:I

.field public N0:Lm6$a;

.field public O0:Lm6$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lh6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lj6;->E0:I

    .line 3
    iput v0, p0, Lj6;->F0:I

    .line 4
    iput v0, p0, Lj6;->G0:I

    .line 5
    iput v0, p0, Lj6;->H0:I

    .line 6
    iput v0, p0, Lj6;->I0:I

    .line 7
    iput v0, p0, Lj6;->J0:I

    .line 8
    iput-boolean v0, p0, Lj6;->K0:Z

    .line 9
    iput v0, p0, Lj6;->L0:I

    .line 10
    iput v0, p0, Lj6;->M0:I

    .line 11
    new-instance v0, Lm6$a;

    invoke-direct {v0}, Lm6$a;-><init>()V

    iput-object v0, p0, Lj6;->N0:Lm6$a;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lj6;->O0:Lm6$b;

    return-void
.end method


# virtual methods
.method public L(IIII)V
    .locals 0

    return-void
.end method

.method public M(Lc6;Lc6$a;ILc6$a;I)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lj6;->O0:Lm6$b;

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lc6;->M:Lc6;

    if-eqz v1, :cond_0

    .line 3
    check-cast v1, Ld6;

    .line 4
    iget-object v0, v1, Ld6;->F0:Lm6$b;

    .line 5
    iput-object v0, p0, Lj6;->O0:Lm6$b;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lj6;->N0:Lm6$a;

    iput-object p2, v1, Lm6$a;->a:Lc6$a;

    .line 7
    iput-object p4, v1, Lm6$a;->b:Lc6$a;

    .line 8
    iput p3, v1, Lm6$a;->c:I

    .line 9
    iput p5, v1, Lm6$a;->d:I

    .line 10
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(Lc6;Lm6$a;)V

    .line 11
    iget-object p2, p0, Lj6;->N0:Lm6$a;

    iget p2, p2, Lm6$a;->e:I

    invoke-virtual {p1, p2}, Lc6;->I(I)V

    .line 12
    iget-object p2, p0, Lj6;->N0:Lm6$a;

    iget p2, p2, Lm6$a;->f:I

    invoke-virtual {p1, p2}, Lc6;->D(I)V

    .line 13
    iget-object p2, p0, Lj6;->N0:Lm6$a;

    iget-boolean p3, p2, Lm6$a;->h:Z

    .line 14
    iput-boolean p3, p1, Lc6;->y:Z

    .line 15
    iget p2, p2, Lm6$a;->g:I

    invoke-virtual {p1, p2}, Lc6;->C(I)V

    return-void
.end method

.method public c(Ld6;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget v0, p0, Lh6;->D0:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lh6;->C0:[Lc6;

    aget-object v0, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

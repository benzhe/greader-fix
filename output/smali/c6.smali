.class public Lc6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6$a;
    }
.end annotation


# instance fields
.field public A:Lb6;

.field public A0:Lc6;

.field public B:Lb6;

.field public B0:Lc6;

.field public C:Lb6;

.field public D:Lb6;

.field public E:Lb6;

.field public F:Lb6;

.field public G:Lb6;

.field public H:Lb6;

.field public I:[Lb6;

.field public J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb6;",
            ">;"
        }
    .end annotation
.end field

.field public K:[Z

.field public L:[Lc6$a;

.field public M:Lc6;

.field public N:I

.field public O:I

.field public P:F

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:F

.field public b:Ln6;

.field public b0:F

.field public c:Ln6;

.field public c0:Ljava/lang/Object;

.field public d:Lu6;

.field public d0:I

.field public e:Lw6;

.field public e0:I

.field public f:[Z

.field public f0:Ljava/lang/String;

.field public g:[I

.field public g0:Ljava/lang/String;

.field public h:I

.field public h0:I

.field public i:I

.field public i0:I

.field public j:I

.field public j0:I

.field public k:I

.field public k0:I

.field public l:[I

.field public l0:Z

.field public m:I

.field public m0:Z

.field public n:I

.field public n0:Z

.field public o:F

.field public o0:Z

.field public p:I

.field public p0:Z

.field public q:I

.field public q0:Z

.field public r:F

.field public r0:Z

.field public s:Z

.field public s0:Z

.field public t:Z

.field public t0:I

.field public u:I

.field public u0:I

.field public v:F

.field public v0:Z

.field public w:[I

.field public w0:Z

.field public x:F

.field public x0:[F

.field public y:Z

.field public y0:[Lc6;

.field public z:Z

.field public z0:[Lc6;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc6;->a:Z

    .line 3
    new-instance v1, Lu6;

    invoke-direct {v1, p0}, Lu6;-><init>(Lc6;)V

    iput-object v1, p0, Lc6;->d:Lu6;

    .line 4
    new-instance v1, Lw6;

    invoke-direct {v1, p0}, Lw6;-><init>(Lc6;)V

    iput-object v1, p0, Lc6;->e:Lw6;

    const/4 v1, 0x2

    new-array v2, v1, [Z

    .line 5
    fill-array-data v2, :array_0

    iput-object v2, p0, Lc6;->f:[Z

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 6
    fill-array-data v3, :array_1

    iput-object v3, p0, Lc6;->g:[I

    const/4 v3, -0x1

    .line 7
    iput v3, p0, Lc6;->h:I

    .line 8
    iput v3, p0, Lc6;->i:I

    .line 9
    iput v0, p0, Lc6;->j:I

    .line 10
    iput v0, p0, Lc6;->k:I

    new-array v4, v1, [I

    .line 11
    iput-object v4, p0, Lc6;->l:[I

    .line 12
    iput v0, p0, Lc6;->m:I

    .line 13
    iput v0, p0, Lc6;->n:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 14
    iput v4, p0, Lc6;->o:F

    .line 15
    iput v0, p0, Lc6;->p:I

    .line 16
    iput v0, p0, Lc6;->q:I

    .line 17
    iput v4, p0, Lc6;->r:F

    .line 18
    iput v3, p0, Lc6;->u:I

    .line 19
    iput v4, p0, Lc6;->v:F

    new-array v4, v1, [I

    .line 20
    fill-array-data v4, :array_2

    iput-object v4, p0, Lc6;->w:[I

    const/4 v4, 0x0

    .line 21
    iput v4, p0, Lc6;->x:F

    .line 22
    iput-boolean v0, p0, Lc6;->y:Z

    .line 23
    new-instance v5, Lb6;

    sget-object v6, Lb6$a;->f:Lb6$a;

    invoke-direct {v5, p0, v6}, Lb6;-><init>(Lc6;Lb6$a;)V

    iput-object v5, p0, Lc6;->A:Lb6;

    .line 24
    new-instance v6, Lb6;

    sget-object v7, Lb6$a;->g:Lb6$a;

    invoke-direct {v6, p0, v7}, Lb6;-><init>(Lc6;Lb6$a;)V

    iput-object v6, p0, Lc6;->B:Lb6;

    .line 25
    new-instance v7, Lb6;

    sget-object v8, Lb6$a;->h:Lb6$a;

    invoke-direct {v7, p0, v8}, Lb6;-><init>(Lc6;Lb6$a;)V

    iput-object v7, p0, Lc6;->C:Lb6;

    .line 26
    new-instance v8, Lb6;

    sget-object v9, Lb6$a;->i:Lb6$a;

    invoke-direct {v8, p0, v9}, Lb6;-><init>(Lc6;Lb6$a;)V

    iput-object v8, p0, Lc6;->D:Lb6;

    .line 27
    new-instance v9, Lb6;

    sget-object v10, Lb6$a;->j:Lb6$a;

    invoke-direct {v9, p0, v10}, Lb6;-><init>(Lc6;Lb6$a;)V

    iput-object v9, p0, Lc6;->E:Lb6;

    .line 28
    new-instance v10, Lb6;

    sget-object v11, Lb6$a;->l:Lb6$a;

    invoke-direct {v10, p0, v11}, Lb6;-><init>(Lc6;Lb6$a;)V

    iput-object v10, p0, Lc6;->F:Lb6;

    .line 29
    new-instance v10, Lb6;

    sget-object v11, Lb6$a;->m:Lb6$a;

    invoke-direct {v10, p0, v11}, Lb6;-><init>(Lc6;Lb6$a;)V

    iput-object v10, p0, Lc6;->G:Lb6;

    .line 30
    new-instance v10, Lb6;

    sget-object v11, Lb6$a;->k:Lb6$a;

    invoke-direct {v10, p0, v11}, Lb6;-><init>(Lc6;Lb6$a;)V

    iput-object v10, p0, Lc6;->H:Lb6;

    const/4 v11, 0x6

    new-array v11, v11, [Lb6;

    aput-object v5, v11, v0

    const/4 v5, 0x1

    aput-object v7, v11, v5

    aput-object v6, v11, v1

    const/4 v6, 0x3

    aput-object v8, v11, v6

    aput-object v9, v11, v2

    const/4 v2, 0x5

    aput-object v10, v11, v2

    .line 31
    iput-object v11, p0, Lc6;->I:[Lb6;

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc6;->J:Ljava/util/ArrayList;

    new-array v6, v1, [Z

    .line 33
    iput-object v6, p0, Lc6;->K:[Z

    new-array v6, v1, [Lc6$a;

    .line 34
    sget-object v7, Lc6$a;->e:Lc6$a;

    aput-object v7, v6, v0

    aput-object v7, v6, v5

    iput-object v6, p0, Lc6;->L:[Lc6$a;

    const/4 v6, 0x0

    .line 35
    iput-object v6, p0, Lc6;->M:Lc6;

    .line 36
    iput v0, p0, Lc6;->N:I

    .line 37
    iput v0, p0, Lc6;->O:I

    .line 38
    iput v4, p0, Lc6;->P:F

    .line 39
    iput v3, p0, Lc6;->Q:I

    .line 40
    iput v0, p0, Lc6;->R:I

    .line 41
    iput v0, p0, Lc6;->S:I

    .line 42
    iput v0, p0, Lc6;->T:I

    .line 43
    iput v0, p0, Lc6;->U:I

    .line 44
    iput v0, p0, Lc6;->V:I

    .line 45
    iput v0, p0, Lc6;->W:I

    .line 46
    iput v0, p0, Lc6;->X:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 47
    iput v3, p0, Lc6;->a0:F

    .line 48
    iput v3, p0, Lc6;->b0:F

    .line 49
    iput v0, p0, Lc6;->d0:I

    .line 50
    iput v0, p0, Lc6;->e0:I

    .line 51
    iput-object v6, p0, Lc6;->f0:Ljava/lang/String;

    .line 52
    iput-object v6, p0, Lc6;->g0:Ljava/lang/String;

    .line 53
    iput-boolean v0, p0, Lc6;->r0:Z

    .line 54
    iput-boolean v0, p0, Lc6;->s0:Z

    .line 55
    iput v0, p0, Lc6;->t0:I

    .line 56
    iput v0, p0, Lc6;->u0:I

    new-array v3, v1, [F

    .line 57
    fill-array-data v3, :array_3

    iput-object v3, p0, Lc6;->x0:[F

    new-array v3, v1, [Lc6;

    aput-object v6, v3, v0

    aput-object v6, v3, v5

    .line 58
    iput-object v3, p0, Lc6;->y0:[Lc6;

    new-array v1, v1, [Lc6;

    aput-object v6, v1, v0

    aput-object v6, v1, v5

    .line 59
    iput-object v1, p0, Lc6;->z0:[Lc6;

    .line 60
    iput-object v6, p0, Lc6;->A0:Lc6;

    .line 61
    iput-object v6, p0, Lc6;->B0:Lc6;

    .line 62
    iget-object v0, p0, Lc6;->A:Lb6;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lc6;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lc6;->B:Lb6;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lc6;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lc6;->C:Lb6;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lc6;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lc6;->D:Lb6;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lc6;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lc6;->F:Lb6;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lc6;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lc6;->G:Lb6;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lc6;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lc6;->H:Lb6;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lc6;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lc6;->E:Lb6;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc6;->M:Lc6;

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Ld6;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ld6;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lc6;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 6
    iget-object v2, p0, Lc6;->J:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb6;

    .line 7
    invoke-virtual {v2}, Lb6;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public B(Lt5;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc6;->A:Lb6;

    invoke-virtual {p1}, Lb6;->i()V

    .line 2
    iget-object p1, p0, Lc6;->B:Lb6;

    invoke-virtual {p1}, Lb6;->i()V

    .line 3
    iget-object p1, p0, Lc6;->C:Lb6;

    invoke-virtual {p1}, Lb6;->i()V

    .line 4
    iget-object p1, p0, Lc6;->D:Lb6;

    invoke-virtual {p1}, Lb6;->i()V

    .line 5
    iget-object p1, p0, Lc6;->E:Lb6;

    invoke-virtual {p1}, Lb6;->i()V

    .line 6
    iget-object p1, p0, Lc6;->H:Lb6;

    invoke-virtual {p1}, Lb6;->i()V

    .line 7
    iget-object p1, p0, Lc6;->F:Lb6;

    invoke-virtual {p1}, Lb6;->i()V

    .line 8
    iget-object p1, p0, Lc6;->G:Lb6;

    invoke-virtual {p1}, Lb6;->i()V

    return-void
.end method

.method public C(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc6;->X:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lc6;->y:Z

    return-void
.end method

.method public D(I)V
    .locals 1

    .line 1
    iput p1, p0, Lc6;->O:I

    .line 2
    iget v0, p0, Lc6;->Z:I

    if-ge p1, v0, :cond_0

    .line 3
    iput v0, p0, Lc6;->O:I

    :cond_0
    return-void
.end method

.method public E(Lc6$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc6;->L:[Lc6$a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public F(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lc6;->Z:I

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lc6;->Z:I

    :goto_0
    return-void
.end method

.method public G(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lc6;->Y:I

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lc6;->Y:I

    :goto_0
    return-void
.end method

.method public H(Lc6$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc6;->L:[Lc6$a;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public I(I)V
    .locals 1

    .line 1
    iput p1, p0, Lc6;->N:I

    .line 2
    iget v0, p0, Lc6;->Y:I

    if-ge p1, v0, :cond_0

    .line 3
    iput v0, p0, Lc6;->N:I

    :cond_0
    return-void
.end method

.method public J(ZZ)V
    .locals 8

    .line 1
    sget-object v0, Lc6$a;->e:Lc6$a;

    iget-object v1, p0, Lc6;->d:Lu6;

    .line 2
    iget-boolean v2, v1, Lx6;->g:Z

    and-int/2addr p1, v2

    .line 3
    iget-object v2, p0, Lc6;->e:Lw6;

    .line 4
    iget-boolean v3, v2, Lx6;->g:Z

    and-int/2addr p2, v3

    .line 5
    iget-object v3, v1, Lx6;->h:Lq6;

    iget v3, v3, Lq6;->g:I

    .line 6
    iget-object v4, v2, Lx6;->h:Lq6;

    iget v4, v4, Lq6;->g:I

    .line 7
    iget-object v1, v1, Lx6;->i:Lq6;

    iget v1, v1, Lq6;->g:I

    .line 8
    iget-object v2, v2, Lx6;->i:Lq6;

    iget v2, v2, Lq6;->g:I

    sub-int v5, v1, v3

    sub-int v6, v2, v4

    const/4 v7, 0x0

    if-ltz v5, :cond_0

    if-ltz v6, :cond_0

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_0

    const v6, 0x7fffffff

    if-eq v3, v6, :cond_0

    if-eq v4, v5, :cond_0

    if-eq v4, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v2, v5, :cond_0

    if-ne v2, v6, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    sub-int/2addr v1, v3

    sub-int/2addr v2, v4

    if-eqz p1, :cond_2

    .line 9
    iput v3, p0, Lc6;->R:I

    :cond_2
    if-eqz p2, :cond_3

    .line 10
    iput v4, p0, Lc6;->S:I

    .line 11
    :cond_3
    iget v3, p0, Lc6;->e0:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 12
    iput v7, p0, Lc6;->N:I

    .line 13
    iput v7, p0, Lc6;->O:I

    return-void

    :cond_4
    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Lc6;->L:[Lc6$a;

    aget-object p1, p1, v7

    if-ne p1, v0, :cond_5

    iget p1, p0, Lc6;->N:I

    if-ge v1, p1, :cond_5

    move v1, p1

    .line 15
    :cond_5
    iput v1, p0, Lc6;->N:I

    .line 16
    iget p1, p0, Lc6;->Y:I

    if-ge v1, p1, :cond_6

    .line 17
    iput p1, p0, Lc6;->N:I

    :cond_6
    if-eqz p2, :cond_8

    .line 18
    iget-object p1, p0, Lc6;->L:[Lc6$a;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    if-ne p1, v0, :cond_7

    iget p1, p0, Lc6;->O:I

    if-ge v2, p1, :cond_7

    move v2, p1

    .line 19
    :cond_7
    iput v2, p0, Lc6;->O:I

    .line 20
    iget p1, p0, Lc6;->Z:I

    if-ge v2, p1, :cond_8

    .line 21
    iput p1, p0, Lc6;->O:I

    :cond_8
    return-void
.end method

.method public K(Lu5;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc6;->A:Lb6;

    invoke-virtual {p1, v0}, Lu5;->o(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lc6;->B:Lb6;

    invoke-virtual {p1, v1}, Lu5;->o(Ljava/lang/Object;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lc6;->C:Lb6;

    invoke-virtual {p1, v2}, Lu5;->o(Ljava/lang/Object;)I

    move-result v2

    .line 4
    iget-object v3, p0, Lc6;->D:Lb6;

    invoke-virtual {p1, v3}, Lu5;->o(Ljava/lang/Object;)I

    move-result p1

    .line 5
    iget-object v3, p0, Lc6;->d:Lu6;

    iget-object v4, v3, Lx6;->h:Lq6;

    iget-boolean v5, v4, Lq6;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Lx6;->i:Lq6;

    iget-boolean v5, v3, Lq6;->j:Z

    if-eqz v5, :cond_0

    .line 6
    iget v0, v4, Lq6;->g:I

    .line 7
    iget v2, v3, Lq6;->g:I

    .line 8
    :cond_0
    iget-object v3, p0, Lc6;->e:Lw6;

    iget-object v4, v3, Lx6;->h:Lq6;

    iget-boolean v5, v4, Lq6;->j:Z

    if-eqz v5, :cond_1

    iget-object v3, v3, Lx6;->i:Lq6;

    iget-boolean v5, v3, Lq6;->j:Z

    if-eqz v5, :cond_1

    .line 9
    iget v1, v4, Lq6;->g:I

    .line 10
    iget p1, v3, Lq6;->g:I

    :cond_1
    sub-int v3, v2, v0

    sub-int v4, p1, v1

    const/4 v5, 0x0

    if-ltz v3, :cond_2

    if-ltz v4, :cond_2

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_2

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_2

    if-eq p1, v3, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_3
    sub-int/2addr v2, v0

    sub-int/2addr p1, v1

    .line 11
    iput v0, p0, Lc6;->R:I

    .line 12
    iput v1, p0, Lc6;->S:I

    .line 13
    iget v0, p0, Lc6;->e0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 14
    iput v5, p0, Lc6;->N:I

    .line 15
    iput v5, p0, Lc6;->O:I

    goto :goto_0

    .line 16
    :cond_4
    iget-object v0, p0, Lc6;->L:[Lc6$a;

    aget-object v1, v0, v5

    sget-object v3, Lc6$a;->e:Lc6$a;

    if-ne v1, v3, :cond_5

    iget v1, p0, Lc6;->N:I

    if-ge v2, v1, :cond_5

    move v2, v1

    :cond_5
    const/4 v1, 0x1

    .line 17
    aget-object v0, v0, v1

    if-ne v0, v3, :cond_6

    iget v0, p0, Lc6;->O:I

    if-ge p1, v0, :cond_6

    move p1, v0

    .line 18
    :cond_6
    iput v2, p0, Lc6;->N:I

    .line 19
    iput p1, p0, Lc6;->O:I

    .line 20
    iget v0, p0, Lc6;->Z:I

    if-ge p1, v0, :cond_7

    .line 21
    iput v0, p0, Lc6;->O:I

    .line 22
    :cond_7
    iget p1, p0, Lc6;->Y:I

    if-ge v2, p1, :cond_8

    .line 23
    iput p1, p0, Lc6;->N:I

    :cond_8
    :goto_0
    return-void
.end method

.method public d(Lu5;)V
    .locals 47

    move-object/from16 v13, p0

    move-object/from16 v9, p1

    .line 1
    sget-object v7, Lc6$a;->f:Lc6$a;

    iget-object v0, v13, Lc6;->A:Lb6;

    invoke-virtual {v9, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v6

    .line 2
    iget-object v0, v13, Lc6;->C:Lb6;

    invoke-virtual {v9, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v4

    .line 3
    iget-object v0, v13, Lc6;->B:Lb6;

    invoke-virtual {v9, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v3

    .line 4
    iget-object v0, v13, Lc6;->D:Lb6;

    invoke-virtual {v9, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v1

    .line 5
    iget-object v0, v13, Lc6;->E:Lb6;

    invoke-virtual {v9, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v0

    .line 6
    iget-object v2, v13, Lc6;->d:Lu6;

    iget-object v5, v2, Lx6;->h:Lq6;

    iget-boolean v8, v5, Lq6;->j:Z

    const/16 v15, 0x8

    const/4 v14, 0x1

    const/4 v12, 0x0

    if-eqz v8, :cond_4

    iget-object v2, v2, Lx6;->i:Lq6;

    iget-boolean v2, v2, Lq6;->j:Z

    if-eqz v2, :cond_4

    iget-object v2, v13, Lc6;->e:Lw6;

    iget-object v8, v2, Lx6;->h:Lq6;

    iget-boolean v8, v8, Lq6;->j:Z

    if-eqz v8, :cond_4

    iget-object v2, v2, Lx6;->i:Lq6;

    iget-boolean v2, v2, Lq6;->j:Z

    if-eqz v2, :cond_4

    .line 7
    iget v2, v5, Lq6;->g:I

    invoke-virtual {v9, v6, v2}, Lu5;->e(Lx5;I)V

    .line 8
    iget-object v2, v13, Lc6;->d:Lu6;

    iget-object v2, v2, Lx6;->i:Lq6;

    iget v2, v2, Lq6;->g:I

    invoke-virtual {v9, v4, v2}, Lu5;->e(Lx5;I)V

    .line 9
    iget-object v2, v13, Lc6;->e:Lw6;

    iget-object v2, v2, Lx6;->h:Lq6;

    iget v2, v2, Lq6;->g:I

    invoke-virtual {v9, v3, v2}, Lu5;->e(Lx5;I)V

    .line 10
    iget-object v2, v13, Lc6;->e:Lw6;

    iget-object v2, v2, Lx6;->i:Lq6;

    iget v2, v2, Lq6;->g:I

    invoke-virtual {v9, v1, v2}, Lu5;->e(Lx5;I)V

    .line 11
    iget-object v2, v13, Lc6;->e:Lw6;

    iget-object v2, v2, Lw6;->k:Lq6;

    iget v2, v2, Lq6;->g:I

    invoke-virtual {v9, v0, v2}, Lu5;->e(Lx5;I)V

    .line 12
    iget-object v0, v13, Lc6;->M:Lc6;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_0

    .line 13
    iget-object v2, v0, Lc6;->L:[Lc6$a;

    aget-object v2, v2, v12

    if-ne v2, v7, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, v0, Lc6;->L:[Lc6$a;

    aget-object v0, v0, v14

    if-ne v0, v7, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 15
    iget-object v2, v13, Lc6;->f:[Z

    aget-boolean v2, v2, v12

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lc6;->x()Z

    move-result v2

    if-nez v2, :cond_2

    .line 16
    iget-object v2, v13, Lc6;->M:Lc6;

    iget-object v2, v2, Lc6;->C:Lb6;

    invoke-virtual {v9, v2}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v2

    .line 17
    invoke-virtual {v9, v2, v4, v12, v15}, Lu5;->f(Lx5;Lx5;II)V

    :cond_2
    if-eqz v0, :cond_3

    .line 18
    iget-object v0, v13, Lc6;->f:[Z

    aget-boolean v0, v0, v14

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lc6;->y()Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    iget-object v0, v13, Lc6;->M:Lc6;

    iget-object v0, v0, Lc6;->D:Lb6;

    invoke-virtual {v9, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v0

    .line 20
    invoke-virtual {v9, v0, v1, v12, v15}, Lu5;->f(Lx5;Lx5;II)V

    :cond_3
    return-void

    .line 21
    :cond_4
    iget-object v2, v13, Lc6;->M:Lc6;

    if-eqz v2, :cond_b

    if-eqz v2, :cond_5

    .line 22
    iget-object v5, v2, Lc6;->L:[Lc6$a;

    aget-object v5, v5, v12

    if-ne v5, v7, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v2, :cond_6

    .line 23
    iget-object v2, v2, Lc6;->L:[Lc6$a;

    aget-object v2, v2, v14

    if-ne v2, v7, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 24
    :goto_3
    invoke-virtual {v13, v12}, Lc6;->w(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 25
    iget-object v8, v13, Lc6;->M:Lc6;

    check-cast v8, Ld6;

    invoke-virtual {v8, v13, v12}, Ld6;->M(Lc6;I)V

    const/4 v8, 0x1

    goto :goto_4

    .line 26
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lc6;->x()Z

    move-result v8

    .line 27
    :goto_4
    invoke-virtual {v13, v14}, Lc6;->w(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 28
    iget-object v10, v13, Lc6;->M:Lc6;

    check-cast v10, Ld6;

    invoke-virtual {v10, v13, v14}, Ld6;->M(Lc6;I)V

    const/4 v10, 0x1

    goto :goto_5

    .line 29
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lc6;->y()Z

    move-result v10

    :goto_5
    if-nez v8, :cond_9

    if-eqz v5, :cond_9

    .line 30
    iget v11, v13, Lc6;->e0:I

    if-eq v11, v15, :cond_9

    iget-object v11, v13, Lc6;->A:Lb6;

    iget-object v11, v11, Lb6;->d:Lb6;

    if-nez v11, :cond_9

    iget-object v11, v13, Lc6;->C:Lb6;

    iget-object v11, v11, Lb6;->d:Lb6;

    if-nez v11, :cond_9

    .line 31
    iget-object v11, v13, Lc6;->M:Lc6;

    iget-object v11, v11, Lc6;->C:Lb6;

    invoke-virtual {v9, v11}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v11

    .line 32
    invoke-virtual {v9, v11, v4, v12, v14}, Lu5;->f(Lx5;Lx5;II)V

    :cond_9
    if-nez v10, :cond_a

    if-eqz v2, :cond_a

    .line 33
    iget v11, v13, Lc6;->e0:I

    if-eq v11, v15, :cond_a

    iget-object v11, v13, Lc6;->B:Lb6;

    iget-object v11, v11, Lb6;->d:Lb6;

    if-nez v11, :cond_a

    iget-object v11, v13, Lc6;->D:Lb6;

    iget-object v11, v11, Lb6;->d:Lb6;

    if-nez v11, :cond_a

    iget-object v11, v13, Lc6;->E:Lb6;

    if-nez v11, :cond_a

    .line 34
    iget-object v11, v13, Lc6;->M:Lc6;

    iget-object v11, v11, Lc6;->D:Lb6;

    invoke-virtual {v9, v11}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v11

    .line 35
    invoke-virtual {v9, v11, v1, v12, v14}, Lu5;->f(Lx5;Lx5;II)V

    :cond_a
    move/from16 v27, v2

    move/from16 v28, v5

    move/from16 v30, v8

    move/from16 v29, v10

    goto :goto_6

    :cond_b
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 36
    :goto_6
    iget v2, v13, Lc6;->N:I

    .line 37
    iget v5, v13, Lc6;->Y:I

    if-ge v2, v5, :cond_c

    goto :goto_7

    :cond_c
    move v5, v2

    .line 38
    :goto_7
    iget v8, v13, Lc6;->O:I

    .line 39
    iget v10, v13, Lc6;->Z:I

    if-ge v8, v10, :cond_d

    goto :goto_8

    :cond_d
    move v10, v8

    .line 40
    :goto_8
    iget-object v11, v13, Lc6;->L:[Lc6$a;

    aget-object v15, v11, v12

    sget-object v12, Lc6$a;->g:Lc6$a;

    move-object/from16 v18, v0

    if-eq v15, v12, :cond_e

    const/4 v15, 0x1

    goto :goto_9

    :cond_e
    const/4 v15, 0x0

    .line 41
    :goto_9
    aget-object v0, v11, v14

    if-eq v0, v12, :cond_f

    const/4 v0, 0x1

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    .line 42
    :goto_a
    iget v14, v13, Lc6;->Q:I

    iput v14, v13, Lc6;->u:I

    move-object/from16 v20, v1

    .line 43
    iget v1, v13, Lc6;->P:F

    iput v1, v13, Lc6;->v:F

    move-object/from16 v21, v3

    .line 44
    iget v3, v13, Lc6;->j:I

    move/from16 v22, v5

    .line 45
    iget v5, v13, Lc6;->k:I

    const/16 v23, 0x0

    const/16 v24, 0x4

    move/from16 v25, v10

    cmpl-float v23, v1, v23

    if-lez v23, :cond_22

    .line 46
    iget v10, v13, Lc6;->e0:I

    move-object/from16 v26, v4

    const/16 v4, 0x8

    if-eq v10, v4, :cond_23

    const/4 v4, 0x0

    .line 47
    aget-object v10, v11, v4

    if-ne v10, v12, :cond_10

    if-nez v3, :cond_10

    const/4 v3, 0x3

    :cond_10
    const/4 v10, 0x1

    .line 48
    aget-object v4, v11, v10

    if-ne v4, v12, :cond_11

    if-nez v5, :cond_11

    const/4 v4, 0x0

    const/4 v5, 0x3

    goto :goto_b

    :cond_11
    const/4 v4, 0x0

    .line 49
    :goto_b
    aget-object v10, v11, v4

    const/high16 v32, 0x3f800000    # 1.0f

    if-ne v10, v12, :cond_1c

    const/4 v10, 0x1

    aget-object v4, v11, v10

    if-ne v4, v12, :cond_1c

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1c

    if-ne v5, v4, :cond_1c

    const/4 v2, -0x1

    if-ne v14, v2, :cond_13

    if-eqz v15, :cond_12

    if-nez v0, :cond_12

    const/4 v4, 0x0

    .line 50
    iput v4, v13, Lc6;->u:I

    goto :goto_c

    :cond_12
    if-nez v15, :cond_13

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 51
    iput v0, v13, Lc6;->u:I

    if-ne v14, v2, :cond_13

    div-float v0, v32, v1

    .line 52
    iput v0, v13, Lc6;->v:F

    .line 53
    :cond_13
    :goto_c
    iget v0, v13, Lc6;->u:I

    if-nez v0, :cond_15

    iget-object v0, v13, Lc6;->B:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v13, Lc6;->D:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    const/4 v0, 0x1

    .line 54
    iput v0, v13, Lc6;->u:I

    goto :goto_d

    :cond_15
    const/4 v0, 0x1

    .line 55
    iget v1, v13, Lc6;->u:I

    if-ne v1, v0, :cond_17

    iget-object v0, v13, Lc6;->A:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v13, Lc6;->C:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    const/4 v0, 0x0

    .line 56
    iput v0, v13, Lc6;->u:I

    .line 57
    :cond_17
    :goto_d
    iget v0, v13, Lc6;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 58
    iget-object v0, v13, Lc6;->B:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v13, Lc6;->D:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v13, Lc6;->A:Lb6;

    .line 59
    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v13, Lc6;->C:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 60
    :cond_18
    iget-object v0, v13, Lc6;->B:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v13, Lc6;->D:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 61
    iput v0, v13, Lc6;->u:I

    goto :goto_e

    .line 62
    :cond_19
    iget-object v0, v13, Lc6;->A:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v13, Lc6;->C:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 63
    iget v0, v13, Lc6;->v:F

    div-float v0, v32, v0

    iput v0, v13, Lc6;->v:F

    const/4 v0, 0x1

    .line 64
    iput v0, v13, Lc6;->u:I

    .line 65
    :cond_1a
    :goto_e
    iget v0, v13, Lc6;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    .line 66
    iget v0, v13, Lc6;->m:I

    if-lez v0, :cond_1b

    iget v1, v13, Lc6;->p:I

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    .line 67
    iput v1, v13, Lc6;->u:I

    goto/16 :goto_10

    :cond_1b
    if-nez v0, :cond_21

    .line 68
    iget v0, v13, Lc6;->p:I

    if-lez v0, :cond_21

    .line 69
    iget v0, v13, Lc6;->v:F

    div-float v0, v32, v0

    iput v0, v13, Lc6;->v:F

    const/4 v0, 0x1

    .line 70
    iput v0, v13, Lc6;->u:I

    goto :goto_10

    :cond_1c
    const/4 v0, 0x0

    .line 71
    aget-object v4, v11, v0

    if-ne v4, v12, :cond_1e

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    .line 72
    iput v0, v13, Lc6;->u:I

    int-to-float v0, v8

    mul-float v1, v1, v0

    float-to-int v0, v1

    const/4 v4, 0x1

    .line 73
    aget-object v1, v11, v4

    if-eq v1, v12, :cond_1d

    move/from16 v33, v5

    move/from16 v32, v25

    const/16 v17, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x4

    goto :goto_f

    :cond_1d
    move/from16 v34, v3

    move/from16 v33, v5

    move/from16 v32, v25

    const/16 v17, 0x0

    const/16 v31, 0x1

    :goto_f
    move v5, v0

    goto :goto_12

    :cond_1e
    const/4 v4, 0x1

    .line 74
    aget-object v0, v11, v4

    if-ne v0, v12, :cond_21

    const/4 v0, 0x3

    if-ne v5, v0, :cond_21

    .line 75
    iput v4, v13, Lc6;->u:I

    const/4 v0, -0x1

    if-ne v14, v0, :cond_1f

    div-float v0, v32, v1

    .line 76
    iput v0, v13, Lc6;->v:F

    .line 77
    :cond_1f
    iget v0, v13, Lc6;->v:F

    int-to-float v1, v2

    mul-float v0, v0, v1

    float-to-int v10, v0

    const/16 v17, 0x0

    .line 78
    aget-object v0, v11, v17

    move/from16 v34, v3

    if-eq v0, v12, :cond_20

    move/from16 v32, v10

    move/from16 v5, v22

    const/16 v31, 0x0

    const/16 v33, 0x4

    goto :goto_12

    :cond_20
    move/from16 v33, v5

    move/from16 v32, v10

    move/from16 v5, v22

    goto :goto_11

    :cond_21
    :goto_10
    const/16 v17, 0x0

    move/from16 v34, v3

    move/from16 v33, v5

    move/from16 v5, v22

    move/from16 v32, v25

    :goto_11
    const/16 v31, 0x1

    goto :goto_12

    :cond_22
    move-object/from16 v26, v4

    :cond_23
    const/16 v17, 0x0

    move/from16 v34, v3

    move/from16 v33, v5

    move/from16 v5, v22

    move/from16 v32, v25

    const/16 v31, 0x0

    .line 79
    :goto_12
    iget-object v0, v13, Lc6;->l:[I

    aput v34, v0, v17

    const/4 v1, 0x1

    .line 80
    aput v33, v0, v1

    if-eqz v31, :cond_25

    .line 81
    iget v0, v13, Lc6;->u:I

    const/4 v1, -0x1

    if-eqz v0, :cond_24

    if-ne v0, v1, :cond_26

    :cond_24
    const/16 v22, 0x1

    goto :goto_13

    :cond_25
    const/4 v1, -0x1

    :cond_26
    const/16 v22, 0x0

    .line 82
    :goto_13
    iget-object v0, v13, Lc6;->L:[Lc6$a;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-ne v0, v7, :cond_27

    instance-of v0, v13, Ld6;

    if-eqz v0, :cond_27

    const/16 v35, 0x1

    goto :goto_14

    :cond_27
    const/16 v35, 0x0

    :goto_14
    if-eqz v35, :cond_28

    const/16 v36, 0x0

    goto :goto_15

    :cond_28
    move/from16 v36, v5

    .line 83
    :goto_15
    iget-object v0, v13, Lc6;->H:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/lit8 v37, v0, 0x1

    .line 84
    iget-object v0, v13, Lc6;->K:[Z

    const/4 v2, 0x0

    aget-boolean v38, v0, v2

    .line 85
    aget-boolean v39, v0, v3

    .line 86
    iget v0, v13, Lc6;->h:I

    const/4 v4, 0x2

    const/16 v40, 0x0

    if-eq v0, v4, :cond_2e

    .line 87
    iget-object v0, v13, Lc6;->d:Lu6;

    iget-object v2, v0, Lx6;->h:Lq6;

    iget-boolean v5, v2, Lq6;->j:Z

    if-eqz v5, :cond_2b

    iget-object v0, v0, Lx6;->i:Lq6;

    iget-boolean v0, v0, Lq6;->j:Z

    if-nez v0, :cond_29

    goto :goto_16

    .line 88
    :cond_29
    iget v0, v2, Lq6;->g:I

    invoke-virtual {v9, v6, v0}, Lu5;->e(Lx5;I)V

    .line 89
    iget-object v0, v13, Lc6;->d:Lu6;

    iget-object v0, v0, Lx6;->i:Lq6;

    iget v0, v0, Lq6;->g:I

    move-object/from16 v15, v26

    invoke-virtual {v9, v15, v0}, Lu5;->e(Lx5;I)V

    .line 90
    iget-object v0, v13, Lc6;->M:Lc6;

    if-eqz v0, :cond_2a

    if-eqz v28, :cond_2a

    .line 91
    iget-object v0, v13, Lc6;->f:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lc6;->x()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 92
    iget-object v0, v13, Lc6;->M:Lc6;

    iget-object v0, v0, Lc6;->C:Lb6;

    invoke-virtual {v9, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v0

    const/16 v14, 0x8

    .line 93
    invoke-virtual {v9, v0, v15, v2, v14}, Lu5;->f(Lx5;Lx5;II)V

    :cond_2a
    move-object/from16 v45, v6

    move-object/from16 v46, v7

    move-object/from16 v44, v15

    move-object/from16 v41, v18

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    goto/16 :goto_1a

    :cond_2b
    :goto_16
    move-object/from16 v15, v26

    const/16 v14, 0x8

    .line 94
    iget-object v0, v13, Lc6;->M:Lc6;

    if-eqz v0, :cond_2c

    iget-object v0, v0, Lc6;->C:Lb6;

    invoke-virtual {v9, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_17

    :cond_2c
    move-object/from16 v19, v40

    .line 95
    :goto_17
    iget-object v0, v13, Lc6;->M:Lc6;

    if-eqz v0, :cond_2d

    iget-object v0, v0, Lc6;->A:Lb6;

    invoke-virtual {v9, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_18

    :cond_2d
    move-object/from16 v26, v40

    :goto_18
    const/4 v2, 0x1

    .line 96
    iget-object v0, v13, Lc6;->f:[Z

    const/4 v12, 0x0

    aget-boolean v5, v0, v12

    iget-object v0, v13, Lc6;->L:[Lc6$a;

    aget-object v8, v0, v12

    iget-object v10, v13, Lc6;->A:Lb6;

    iget-object v11, v13, Lc6;->C:Lb6;

    iget v0, v13, Lc6;->R:I

    const/4 v2, 0x0

    move v12, v0

    iget v0, v13, Lc6;->Y:I

    const/16 v16, 0x8

    move v14, v0

    iget-object v0, v13, Lc6;->w:[I

    aget v0, v0, v2

    move-object/from16 v17, v15

    move v15, v0

    iget v0, v13, Lc6;->a0:F

    move/from16 v16, v0

    iget v0, v13, Lc6;->m:I

    move/from16 v23, v0

    iget v0, v13, Lc6;->n:I

    move/from16 v24, v0

    iget v0, v13, Lc6;->o:F

    move/from16 v25, v0

    move-object/from16 v41, v18

    move-object/from16 v0, p0

    move-object/from16 v42, v20

    move-object/from16 v1, p1

    move-object/from16 v43, v21

    move/from16 v3, v28

    move-object/from16 v44, v17

    move/from16 v4, v27

    move-object/from16 v45, v6

    move-object/from16 v6, v26

    move-object/from16 v46, v7

    move-object/from16 v7, v19

    move/from16 v9, v35

    move/from16 v13, v36

    move/from16 v17, v22

    move/from16 v18, v30

    move/from16 v19, v29

    move/from16 v20, v38

    move/from16 v21, v34

    move/from16 v22, v33

    move/from16 v26, v37

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v26}, Lc6;->f(Lu5;ZZZZLx5;Lx5;Lc6$a;ZLb6;Lb6;IIIIFZZZZIIIIFZ)V

    goto :goto_19

    :cond_2e
    move-object/from16 v45, v6

    move-object/from16 v46, v7

    move-object/from16 v41, v18

    move-object/from16 v42, v20

    move-object/from16 v43, v21

    move-object/from16 v44, v26

    :goto_19
    move-object/from16 v13, p0

    .line 97
    :goto_1a
    iget-object v0, v13, Lc6;->e:Lw6;

    iget-object v1, v0, Lx6;->h:Lq6;

    iget-boolean v2, v1, Lq6;->j:Z

    if-eqz v2, :cond_31

    iget-object v0, v0, Lx6;->i:Lq6;

    iget-boolean v0, v0, Lq6;->j:Z

    if-eqz v0, :cond_31

    .line 98
    iget v0, v1, Lq6;->g:I

    move-object/from16 v9, p1

    move-object/from16 v7, v43

    invoke-virtual {v9, v7, v0}, Lu5;->e(Lx5;I)V

    .line 99
    iget-object v0, v13, Lc6;->e:Lw6;

    iget-object v0, v0, Lx6;->i:Lq6;

    iget v0, v0, Lq6;->g:I

    move-object/from16 v6, v42

    invoke-virtual {v9, v6, v0}, Lu5;->e(Lx5;I)V

    .line 100
    iget-object v0, v13, Lc6;->e:Lw6;

    iget-object v0, v0, Lw6;->k:Lq6;

    iget v0, v0, Lq6;->g:I

    move-object/from16 v1, v41

    invoke-virtual {v9, v1, v0}, Lu5;->e(Lx5;I)V

    .line 101
    iget-object v0, v13, Lc6;->M:Lc6;

    if-eqz v0, :cond_30

    if-nez v29, :cond_30

    if-eqz v27, :cond_30

    .line 102
    iget-object v2, v13, Lc6;->f:[Z

    const/4 v4, 0x1

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_2f

    .line 103
    iget-object v0, v0, Lc6;->D:Lb6;

    invoke-virtual {v9, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 104
    invoke-virtual {v9, v0, v6, v3, v2}, Lu5;->f(Lx5;Lx5;II)V

    goto :goto_1b

    :cond_2f
    const/16 v2, 0x8

    const/4 v3, 0x0

    goto :goto_1b

    :cond_30
    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_1b
    const/4 v14, 0x0

    goto :goto_1c

    :cond_31
    move-object/from16 v9, p1

    move-object/from16 v1, v41

    move-object/from16 v6, v42

    move-object/from16 v7, v43

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v14, 0x1

    .line 105
    :goto_1c
    iget v0, v13, Lc6;->i:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_32

    const/4 v12, 0x0

    goto :goto_1d

    :cond_32
    move v12, v14

    :goto_1d
    if-eqz v12, :cond_3d

    .line 106
    iget-object v0, v13, Lc6;->L:[Lc6$a;

    aget-object v0, v0, v4

    move-object/from16 v5, v46

    if-ne v0, v5, :cond_33

    instance-of v0, v13, Ld6;

    if-eqz v0, :cond_33

    const/16 v17, 0x1

    goto :goto_1e

    :cond_33
    const/16 v17, 0x0

    :goto_1e
    if-eqz v17, :cond_34

    const/16 v32, 0x0

    :cond_34
    if-eqz v31, :cond_36

    .line 107
    iget v0, v13, Lc6;->u:I

    if-eq v0, v4, :cond_35

    const/4 v5, -0x1

    if-ne v0, v5, :cond_36

    :cond_35
    const/16 v18, 0x1

    goto :goto_1f

    :cond_36
    const/16 v18, 0x0

    .line 108
    :goto_1f
    iget-object v0, v13, Lc6;->M:Lc6;

    if-eqz v0, :cond_37

    iget-object v0, v0, Lc6;->D:Lb6;

    invoke-virtual {v9, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v0

    goto :goto_20

    :cond_37
    move-object/from16 v0, v40

    .line 109
    :goto_20
    iget-object v5, v13, Lc6;->M:Lc6;

    if-eqz v5, :cond_38

    iget-object v5, v5, Lc6;->B:Lb6;

    invoke-virtual {v9, v5}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v5

    move-object/from16 v40, v5

    .line 110
    :cond_38
    iget v5, v13, Lc6;->X:I

    if-gtz v5, :cond_39

    iget v8, v13, Lc6;->e0:I

    if-ne v8, v2, :cond_3c

    .line 111
    :cond_39
    invoke-virtual {v9, v1, v7, v5, v2}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 112
    iget-object v5, v13, Lc6;->E:Lb6;

    iget-object v5, v5, Lb6;->d:Lb6;

    if-eqz v5, :cond_3b

    .line 113
    invoke-virtual {v9, v5}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v5

    .line 114
    invoke-virtual {v9, v1, v5, v3, v2}, Lu5;->d(Lx5;Lx5;II)Ls5;

    if-eqz v27, :cond_3a

    .line 115
    iget-object v1, v13, Lc6;->D:Lb6;

    invoke-virtual {v9, v1}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v1

    const/4 v2, 0x5

    .line 116
    invoke-virtual {v9, v0, v1, v3, v2}, Lu5;->f(Lx5;Lx5;II)V

    :cond_3a
    const/16 v26, 0x0

    goto :goto_21

    .line 117
    :cond_3b
    iget v5, v13, Lc6;->e0:I

    if-ne v5, v2, :cond_3c

    .line 118
    invoke-virtual {v9, v1, v7, v3, v2}, Lu5;->d(Lx5;Lx5;II)Ls5;

    :cond_3c
    move/from16 v26, v37

    :goto_21
    const/4 v2, 0x0

    .line 119
    iget-object v1, v13, Lc6;->f:[Z

    aget-boolean v5, v1, v4

    iget-object v1, v13, Lc6;->L:[Lc6$a;

    aget-object v8, v1, v4

    iget-object v10, v13, Lc6;->B:Lb6;

    iget-object v11, v13, Lc6;->D:Lb6;

    iget v12, v13, Lc6;->S:I

    iget v14, v13, Lc6;->Z:I

    iget-object v1, v13, Lc6;->w:[I

    aget v15, v1, v4

    iget v1, v13, Lc6;->b0:F

    move/from16 v16, v1

    iget v1, v13, Lc6;->p:I

    move/from16 v23, v1

    iget v1, v13, Lc6;->q:I

    move/from16 v24, v1

    iget v1, v13, Lc6;->r:F

    move/from16 v25, v1

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v27

    move/from16 v4, v28

    move-object/from16 v27, v6

    move-object/from16 v6, v40

    move-object/from16 v28, v7

    move-object/from16 v7, v19

    move/from16 v9, v17

    move/from16 v13, v32

    move/from16 v17, v18

    move/from16 v18, v29

    move/from16 v19, v30

    move/from16 v20, v39

    move/from16 v21, v33

    move/from16 v22, v34

    invoke-virtual/range {v0 .. v26}, Lc6;->f(Lu5;ZZZZLx5;Lx5;Lc6$a;ZLb6;Lb6;IIIIFZZZZIIIIFZ)V

    goto :goto_22

    :cond_3d
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    :goto_22
    if-eqz v31, :cond_3f

    const/16 v6, 0x8

    move-object/from16 v7, p0

    .line 120
    iget v0, v7, Lc6;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    .line 121
    iget v5, v7, Lc6;->v:F

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v44

    move-object/from16 v4, v45

    invoke-virtual/range {v0 .. v6}, Lu5;->h(Lx5;Lx5;Lx5;Lx5;FI)V

    goto :goto_23

    .line 122
    :cond_3e
    iget v5, v7, Lc6;->v:F

    const/16 v6, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual/range {v0 .. v6}, Lu5;->h(Lx5;Lx5;Lx5;Lx5;FI)V

    goto :goto_23

    :cond_3f
    move-object/from16 v7, p0

    .line 123
    :goto_23
    iget-object v0, v7, Lc6;->H:Lb6;

    invoke-virtual {v0}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 124
    iget-object v0, v7, Lc6;->H:Lb6;

    .line 125
    iget-object v0, v0, Lb6;->d:Lb6;

    .line 126
    iget-object v0, v0, Lb6;->b:Lc6;

    .line 127
    iget v1, v7, Lc6;->x:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Lc6;->H:Lb6;

    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    .line 128
    sget-object v3, Lb6$a;->f:Lb6$a;

    invoke-virtual {v7, v3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v9

    .line 129
    sget-object v4, Lb6$a;->g:Lb6$a;

    invoke-virtual {v7, v4}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v6

    invoke-virtual {v5, v6}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v11

    .line 130
    sget-object v6, Lb6$a;->h:Lb6$a;

    invoke-virtual {v7, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v8

    invoke-virtual {v5, v8}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v16

    .line 131
    sget-object v8, Lb6$a;->i:Lb6$a;

    invoke-virtual {v7, v8}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v10

    invoke-virtual {v5, v10}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v12

    .line 132
    invoke-virtual {v0, v3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v3

    invoke-virtual {v5, v3}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v3

    .line 133
    invoke-virtual {v0, v4}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v4

    invoke-virtual {v5, v4}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v13

    .line 134
    invoke-virtual {v0, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v4

    invoke-virtual {v5, v4}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v4

    .line 135
    invoke-virtual {v0, v8}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v0

    invoke-virtual {v5, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v14

    .line 136
    invoke-virtual/range {p1 .. p1}, Lu5;->m()Ls5;

    move-result-object v0

    float-to-double v6, v1

    .line 137
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    int-to-double v1, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    mul-double v3, v17, v1

    double-to-float v15, v3

    move-object v10, v0

    .line 138
    invoke-virtual/range {v10 .. v15}, Ls5;->g(Lx5;Lx5;Lx5;Lx5;F)Ls5;

    .line 139
    invoke-virtual {v5, v0}, Lu5;->c(Ls5;)V

    .line 140
    invoke-virtual/range {p1 .. p1}, Lu5;->m()Ls5;

    move-result-object v0

    .line 141
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-float v13, v3

    move-object v8, v0

    move-object/from16 v10, v16

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    .line 142
    invoke-virtual/range {v8 .. v13}, Ls5;->g(Lx5;Lx5;Lx5;Lx5;F)Ls5;

    .line 143
    invoke-virtual {v5, v0}, Lu5;->c(Ls5;)V

    :cond_40
    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    iget v0, p0, Lc6;->e0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(Lu5;ZZZZLx5;Lx5;Lc6$a;ZLb6;Lb6;IIIIFZZZZIIIIFZ)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p22

    move/from16 v3, p23

    move/from16 v4, p24

    .line 1
    sget-object v5, Lb6$a;->i:Lb6$a;

    invoke-virtual {v10, v13}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v9

    .line 2
    invoke-virtual {v10, v14}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v8

    .line 3
    iget-object v6, v13, Lb6;->d:Lb6;

    .line 4
    invoke-virtual {v10, v6}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v7

    .line 5
    iget-object v6, v14, Lb6;->d:Lb6;

    .line 6
    invoke-virtual {v10, v6}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v6

    .line 7
    invoke-virtual/range {p10 .. p10}, Lb6;->f()Z

    move-result v22

    .line 8
    invoke-virtual/range {p11 .. p11}, Lb6;->f()Z

    move-result v23

    .line 9
    iget-object v12, v0, Lc6;->H:Lb6;

    invoke-virtual {v12}, Lb6;->f()Z

    move-result v12

    if-eqz v23, :cond_0

    add-int/lit8 v16, v22, 0x1

    goto :goto_0

    :cond_0
    move/from16 v16, v22

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v16, v16, 0x1

    :cond_1
    move/from16 v2, v16

    if-eqz p17, :cond_2

    const/4 v14, 0x3

    goto :goto_1

    :cond_2
    move/from16 v14, p21

    .line 10
    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object/from16 v24, v6

    const/4 v6, 0x1

    if-eqz v11, :cond_5

    if-eq v11, v6, :cond_5

    const/4 v6, 0x2

    if-eq v11, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x4

    if-ne v14, v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    :goto_2
    const/4 v6, 0x4

    :goto_3
    const/4 v11, 0x0

    .line 11
    :goto_4
    iget v6, v0, Lc6;->e0:I

    move/from16 v16, v11

    const/16 v11, 0x8

    if-ne v6, v11, :cond_6

    const/4 v6, 0x0

    const/16 v16, 0x0

    goto :goto_5

    :cond_6
    move/from16 v6, p13

    :goto_5
    if-eqz p26, :cond_8

    if-nez v22, :cond_7

    if-nez v23, :cond_7

    if-nez v12, :cond_7

    move/from16 v11, p12

    .line 12
    invoke-virtual {v10, v9, v11}, Lu5;->e(Lx5;I)V

    goto :goto_6

    :cond_7
    if-eqz v22, :cond_8

    if-nez v23, :cond_8

    .line 13
    invoke-virtual/range {p10 .. p10}, Lb6;->c()I

    move-result v11

    move/from16 v27, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v9, v7, v11, v12}, Lu5;->d(Lx5;Lx5;II)Ls5;

    goto :goto_7

    :cond_8
    :goto_6
    move/from16 v27, v12

    const/16 v12, 0x8

    :goto_7
    if-nez v16, :cond_c

    if-eqz p9, :cond_a

    const/4 v5, 0x3

    const/4 v11, 0x0

    .line 14
    invoke-virtual {v10, v8, v9, v11, v5}, Lu5;->d(Lx5;Lx5;II)Ls5;

    if-lez v15, :cond_9

    .line 15
    invoke-virtual {v10, v8, v9, v15, v12}, Lu5;->f(Lx5;Lx5;II)V

    :cond_9
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_b

    .line 16
    invoke-virtual {v10, v8, v9, v1, v12}, Lu5;->g(Lx5;Lx5;II)V

    goto :goto_8

    :cond_a
    const/4 v5, 0x3

    .line 17
    invoke-virtual {v10, v8, v9, v6, v12}, Lu5;->d(Lx5;Lx5;II)Ls5;

    :cond_b
    :goto_8
    const/4 v1, 0x3

    goto/16 :goto_c

    :cond_c
    const/4 v1, 0x3

    const/4 v11, 0x2

    if-eq v2, v11, :cond_f

    if-nez p17, :cond_f

    const/4 v11, 0x1

    if-eq v14, v11, :cond_d

    if-nez v14, :cond_f

    .line 18
    :cond_d
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v4, :cond_e

    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_e
    const/16 v6, 0x8

    .line 20
    invoke-virtual {v10, v8, v9, v5, v6}, Lu5;->d(Lx5;Lx5;II)Ls5;

    goto/16 :goto_f

    :cond_f
    const/4 v11, -0x2

    if-ne v3, v11, :cond_10

    move v3, v6

    :cond_10
    if-ne v4, v11, :cond_11

    move v4, v6

    :cond_11
    if-lez v6, :cond_12

    const/4 v11, 0x1

    if-eq v14, v11, :cond_12

    const/4 v6, 0x0

    :cond_12
    if-lez v3, :cond_13

    const/16 v11, 0x8

    .line 21
    invoke-virtual {v10, v8, v9, v3, v11}, Lu5;->f(Lx5;Lx5;II)V

    .line 22
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_13
    if-lez v4, :cond_16

    if-eqz p3, :cond_14

    const/4 v11, 0x1

    if-ne v14, v11, :cond_14

    const/4 v11, 0x0

    goto :goto_9

    :cond_14
    const/4 v11, 0x1

    :goto_9
    if-eqz v11, :cond_15

    const/16 v11, 0x8

    .line 23
    invoke-virtual {v10, v8, v9, v4, v11}, Lu5;->g(Lx5;Lx5;II)V

    goto :goto_a

    :cond_15
    const/16 v11, 0x8

    .line 24
    :goto_a
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_b

    :cond_16
    const/16 v11, 0x8

    :goto_b
    const/4 v12, 0x1

    if-ne v14, v12, :cond_19

    if-eqz p3, :cond_17

    .line 25
    invoke-virtual {v10, v8, v9, v6, v11}, Lu5;->d(Lx5;Lx5;II)Ls5;

    goto :goto_c

    :cond_17
    if-eqz p18, :cond_18

    const/4 v5, 0x5

    .line 26
    invoke-virtual {v10, v8, v9, v6, v5}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 27
    invoke-virtual {v10, v8, v9, v6, v11}, Lu5;->g(Lx5;Lx5;II)V

    goto :goto_c

    :cond_18
    const/4 v5, 0x5

    .line 28
    invoke-virtual {v10, v8, v9, v6, v5}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 29
    invoke-virtual {v10, v8, v9, v6, v11}, Lu5;->g(Lx5;Lx5;II)V

    :goto_c
    move/from16 v11, p5

    move v12, v3

    goto :goto_10

    :cond_19
    const/4 v6, 0x2

    if-ne v14, v6, :cond_1c

    .line 30
    iget-object v6, v13, Lb6;->c:Lb6$a;

    .line 31
    sget-object v11, Lb6$a;->g:Lb6$a;

    if-eq v6, v11, :cond_1b

    if-ne v6, v5, :cond_1a

    goto :goto_d

    .line 32
    :cond_1a
    iget-object v5, v0, Lc6;->M:Lc6;

    sget-object v6, Lb6$a;->f:Lb6$a;

    invoke-virtual {v5, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v5

    invoke-virtual {v10, v5}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v5

    .line 33
    iget-object v6, v0, Lc6;->M:Lc6;

    sget-object v11, Lb6$a;->h:Lb6$a;

    invoke-virtual {v6, v11}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v6

    invoke-virtual {v10, v6}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v6

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    goto :goto_e

    .line 34
    :cond_1b
    :goto_d
    iget-object v6, v0, Lc6;->M:Lc6;

    invoke-virtual {v6, v11}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v6

    invoke-virtual {v10, v6}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v6

    .line 35
    iget-object v11, v0, Lc6;->M:Lc6;

    invoke-virtual {v11, v5}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v5

    invoke-virtual {v10, v5}, Lu5;->l(Ljava/lang/Object;)Lx5;

    move-result-object v5

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .line 36
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lu5;->m()Ls5;

    move-result-object v5

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v21, p25

    invoke-virtual/range {v16 .. v21}, Ls5;->d(Lx5;Lx5;Lx5;Lx5;F)Ls5;

    invoke-virtual {v10, v5}, Lu5;->c(Ls5;)V

    :goto_f
    move/from16 v11, p5

    move v12, v3

    const/16 v16, 0x0

    goto :goto_10

    :cond_1c
    move v12, v3

    const/4 v11, 0x1

    :goto_10
    if-eqz p26, :cond_50

    if-eqz p18, :cond_1d

    move-object/from16 v5, p7

    move v1, v2

    move-object v3, v8

    move-object v13, v9

    move/from16 p5, v11

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/16 v25, 0x1

    move-object/from16 v2, p6

    goto/16 :goto_2e

    :cond_1d
    if-nez v22, :cond_1e

    if-nez v23, :cond_1e

    if-nez v27, :cond_1e

    goto :goto_11

    :cond_1e
    if-eqz v22, :cond_1f

    if-nez v23, :cond_1f

    :goto_11
    move-object v3, v8

    move/from16 p5, v11

    move-object/from16 v1, v24

    goto/16 :goto_2a

    :cond_1f
    if-nez v22, :cond_20

    if-eqz v23, :cond_20

    .line 37
    invoke-virtual/range {p11 .. p11}, Lb6;->c()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v6, v24

    const/16 v2, 0x8

    invoke-virtual {v10, v8, v6, v1, v2}, Lu5;->d(Lx5;Lx5;II)Ls5;

    if-eqz p3, :cond_4d

    move-object/from16 v3, p6

    const/4 v1, 0x5

    const/4 v5, 0x0

    .line 38
    invoke-virtual {v10, v9, v3, v5, v1}, Lu5;->f(Lx5;Lx5;II)V

    goto/16 :goto_2b

    :cond_20
    move-object/from16 v3, p6

    move-object/from16 v6, v24

    const/4 v5, 0x0

    if-eqz v22, :cond_4d

    if-eqz v23, :cond_4d

    .line 39
    iget-object v2, v13, Lb6;->d:Lb6;

    iget-object v2, v2, Lb6;->b:Lc6;

    move-object/from16 v1, p11

    const/4 v13, 0x3

    .line 40
    iget-object v5, v1, Lb6;->d:Lb6;

    iget-object v5, v5, Lb6;->b:Lc6;

    .line 41
    iget-object v13, v0, Lc6;->M:Lc6;

    const/16 v17, 0x6

    if-eqz v16, :cond_32

    if-nez v14, :cond_24

    if-nez v4, :cond_21

    if-nez v12, :cond_21

    const/4 v4, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x8

    const/16 v20, 0x8

    goto :goto_12

    :cond_21
    const/4 v4, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x5

    const/16 v20, 0x5

    .line 42
    :goto_12
    instance-of v1, v2, Lz5;

    if-nez v1, :cond_22

    instance-of v1, v5, Lz5;

    if-eqz v1, :cond_23

    :cond_22
    const/16 v20, 0x4

    :cond_23
    move v1, v4

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/16 v26, 0x0

    goto/16 :goto_1d

    :cond_24
    const/4 v1, 0x1

    if-ne v14, v1, :cond_25

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v26, 0x1

    goto/16 :goto_1c

    :cond_25
    const/4 v1, 0x3

    if-ne v14, v1, :cond_31

    .line 43
    iget v1, v0, Lc6;->u:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_28

    if-eqz p19, :cond_27

    if-eqz p3, :cond_26

    const/4 v1, 0x5

    goto :goto_13

    :cond_26
    const/4 v1, 0x4

    goto :goto_13

    :cond_27
    const/16 v1, 0x8

    :goto_13
    move v4, v1

    const/4 v1, 0x5

    const/4 v3, 0x1

    const/16 v18, 0x8

    goto :goto_1a

    :cond_28
    if-eqz p17, :cond_2c

    move/from16 v1, p22

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2a

    const/4 v3, 0x1

    if-ne v1, v3, :cond_29

    goto :goto_14

    :cond_29
    const/4 v1, 0x0

    goto :goto_15

    :cond_2a
    const/4 v3, 0x1

    :goto_14
    const/4 v1, 0x1

    :goto_15
    if-nez v1, :cond_2b

    const/4 v1, 0x5

    const/16 v4, 0x8

    goto :goto_16

    :cond_2b
    const/4 v1, 0x4

    const/4 v4, 0x5

    :goto_16
    move/from16 v18, v4

    :goto_17
    const/4 v4, 0x6

    goto :goto_1a

    :cond_2c
    const/4 v3, 0x1

    if-lez v4, :cond_2d

    const/4 v1, 0x5

    goto :goto_19

    :cond_2d
    if-nez v4, :cond_30

    if-nez v12, :cond_30

    if-nez p19, :cond_2e

    const/16 v1, 0x8

    goto :goto_19

    :cond_2e
    if-eq v2, v13, :cond_2f

    if-eq v5, v13, :cond_2f

    const/4 v1, 0x4

    goto :goto_18

    :cond_2f
    const/4 v1, 0x5

    :goto_18
    move/from16 v18, v1

    const/4 v1, 0x4

    goto :goto_17

    :cond_30
    const/4 v1, 0x4

    :goto_19
    const/4 v4, 0x6

    const/16 v18, 0x5

    :goto_1a
    move/from16 v20, v1

    move/from16 v19, v18

    const/4 v1, 0x1

    const/16 v18, 0x1

    const/16 v26, 0x1

    goto :goto_1d

    :cond_31
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_1b

    :cond_32
    const/4 v3, 0x1

    const/4 v1, 0x1

    const/4 v4, 0x1

    :goto_1b
    move/from16 v26, v1

    const/4 v1, 0x5

    :goto_1c
    move/from16 v19, v1

    move v1, v4

    const/4 v4, 0x6

    const/16 v18, 0x0

    const/16 v20, 0x4

    :goto_1d
    if-eqz v26, :cond_33

    if-ne v7, v6, :cond_33

    if-eq v2, v13, :cond_33

    const/16 v21, 0x0

    const/16 v26, 0x0

    goto :goto_1e

    :cond_33
    const/16 v21, 0x1

    :goto_1e
    if-eqz v1, :cond_35

    .line 44
    iget v1, v0, Lc6;->e0:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_34

    const/16 v23, 0x4

    goto :goto_1f

    :cond_34
    move/from16 v23, v4

    .line 45
    :goto_1f
    invoke-virtual/range {p10 .. p10}, Lb6;->c()I

    move-result v4

    .line 46
    invoke-virtual/range {p11 .. p11}, Lb6;->c()I

    move-result v24

    move-object/from16 v3, p11

    move-object/from16 v1, p1

    move/from16 p5, v11

    move-object v11, v2

    move-object v2, v9

    move/from16 v27, v14

    const/16 v22, 0x1

    move-object/from16 v14, p6

    move-object v3, v7

    move/from16 p8, v12

    const/16 v25, 0x0

    move-object v12, v5

    move/from16 v5, p16

    move-object/from16 p2, v6

    const/16 v22, 0x4

    const/16 v25, 0x1

    move-object v15, v7

    move-object v7, v8

    move-object v14, v8

    move/from16 v8, v24

    move-object/from16 v24, v13

    move-object v13, v9

    move/from16 v9, v23

    .line 47
    invoke-virtual/range {v1 .. v9}, Lu5;->b(Lx5;Lx5;IFLx5;Lx5;II)V

    goto :goto_20

    :cond_35
    move-object/from16 p2, v6

    move-object v15, v7

    move/from16 p5, v11

    move/from16 p8, v12

    move-object/from16 v24, v13

    move/from16 v27, v14

    const/16 v22, 0x4

    const/16 v25, 0x1

    move-object v11, v2

    move-object v12, v5

    move-object v14, v8

    move-object v13, v9

    .line 48
    :goto_20
    iget v1, v0, Lc6;->e0:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_36

    return-void

    :cond_36
    if-eqz v26, :cond_39

    move-object/from16 v1, p2

    if-eqz p3, :cond_38

    if-eq v15, v1, :cond_38

    if-nez v16, :cond_38

    .line 49
    instance-of v2, v11, Lz5;

    if-nez v2, :cond_37

    instance-of v2, v12, Lz5;

    if-eqz v2, :cond_38

    :cond_37
    const/4 v2, 0x6

    goto :goto_21

    :cond_38
    move/from16 v2, v19

    .line 50
    :goto_21
    invoke-virtual/range {p10 .. p10}, Lb6;->c()I

    move-result v3

    invoke-virtual {v10, v13, v15, v3, v2}, Lu5;->f(Lx5;Lx5;II)V

    .line 51
    invoke-virtual/range {p11 .. p11}, Lb6;->c()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v14, v1, v3, v2}, Lu5;->g(Lx5;Lx5;II)V

    move/from16 v19, v2

    goto :goto_22

    :cond_39
    move-object/from16 v1, p2

    :goto_22
    if-eqz p3, :cond_3a

    if-eqz p20, :cond_3a

    .line 52
    instance-of v2, v11, Lz5;

    if-nez v2, :cond_3a

    instance-of v2, v12, Lz5;

    if-nez v2, :cond_3a

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v6, 0x1

    goto :goto_23

    :cond_3a
    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v6, v21

    :goto_23
    if-eqz v6, :cond_47

    if-eqz v18, :cond_43

    if-eqz p19, :cond_3b

    if-eqz p4, :cond_43

    :cond_3b
    move-object/from16 v4, v24

    if-eq v11, v4, :cond_3d

    if-ne v12, v4, :cond_3c

    goto :goto_24

    :cond_3c
    move/from16 v17, v3

    .line 53
    :cond_3d
    :goto_24
    instance-of v5, v11, Lf6;

    if-nez v5, :cond_3e

    instance-of v5, v12, Lf6;

    if-eqz v5, :cond_3f

    :cond_3e
    const/16 v17, 0x5

    .line 54
    :cond_3f
    instance-of v5, v11, Lz5;

    if-nez v5, :cond_40

    instance-of v5, v12, Lz5;

    if-eqz v5, :cond_41

    :cond_40
    const/16 v17, 0x5

    :cond_41
    if-eqz p19, :cond_42

    const/4 v5, 0x5

    goto :goto_25

    :cond_42
    move/from16 v5, v17

    .line 55
    :goto_25
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_26

    :cond_43
    move-object/from16 v4, v24

    :goto_26
    if-eqz p3, :cond_46

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p17, :cond_45

    if-nez p19, :cond_45

    if-eq v11, v4, :cond_44

    if-ne v12, v4, :cond_45

    :cond_44
    const/4 v6, 0x4

    goto :goto_27

    :cond_45
    move v6, v2

    goto :goto_27

    :cond_46
    move v6, v3

    .line 57
    :goto_27
    invoke-virtual/range {p10 .. p10}, Lb6;->c()I

    move-result v2

    invoke-virtual {v10, v13, v15, v2, v6}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 58
    invoke-virtual/range {p11 .. p11}, Lb6;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v14, v1, v2, v6}, Lu5;->d(Lx5;Lx5;II)Ls5;

    :cond_47
    if-eqz p3, :cond_49

    move-object/from16 v2, p6

    move-object v3, v14

    if-ne v2, v15, :cond_48

    .line 59
    invoke-virtual/range {p10 .. p10}, Lb6;->c()I

    move-result v6

    goto :goto_28

    :cond_48
    const/4 v6, 0x0

    :goto_28
    if-eq v15, v2, :cond_4a

    const/4 v4, 0x5

    .line 60
    invoke-virtual {v10, v13, v2, v6, v4}, Lu5;->f(Lx5;Lx5;II)V

    goto :goto_29

    :cond_49
    move-object v3, v14

    :cond_4a
    :goto_29
    if-eqz p3, :cond_4c

    if-eqz v16, :cond_4c

    if-nez p14, :cond_4c

    if-nez p8, :cond_4c

    if-eqz v16, :cond_4b

    move/from16 v14, v27

    const/4 v2, 0x3

    if-ne v14, v2, :cond_4b

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 61
    invoke-virtual {v10, v3, v13, v4, v2}, Lu5;->f(Lx5;Lx5;II)V

    goto :goto_2c

    :cond_4b
    const/4 v4, 0x0

    const/4 v2, 0x5

    .line 62
    invoke-virtual {v10, v3, v13, v4, v2}, Lu5;->f(Lx5;Lx5;II)V

    goto :goto_2c

    :cond_4c
    :goto_2a
    const/4 v4, 0x0

    goto :goto_2c

    :cond_4d
    :goto_2b
    move-object v1, v6

    move-object v3, v8

    move/from16 p5, v11

    goto :goto_2a

    :goto_2c
    if-eqz p3, :cond_4f

    if-eqz p5, :cond_4f

    move-object/from16 v2, p11

    .line 63
    iget-object v5, v2, Lb6;->d:Lb6;

    if-eqz v5, :cond_4e

    .line 64
    invoke-virtual/range {p11 .. p11}, Lb6;->c()I

    move-result v6

    move-object/from16 v5, p7

    goto :goto_2d

    :cond_4e
    move-object/from16 v5, p7

    const/4 v6, 0x0

    :goto_2d
    if-eq v1, v5, :cond_4f

    const/4 v1, 0x5

    .line 65
    invoke-virtual {v10, v5, v3, v6, v1}, Lu5;->f(Lx5;Lx5;II)V

    :cond_4f
    return-void

    :cond_50
    move-object/from16 v5, p7

    move v1, v2

    move-object v3, v8

    move-object v13, v9

    move/from16 p5, v11

    const/4 v4, 0x0

    const/16 v25, 0x1

    move-object/from16 v2, p6

    const/4 v6, 0x2

    :goto_2e
    if-ge v1, v6, :cond_55

    if-eqz p3, :cond_55

    if-eqz p5, :cond_55

    const/16 v1, 0x8

    .line 66
    invoke-virtual {v10, v13, v2, v4, v1}, Lu5;->f(Lx5;Lx5;II)V

    if-nez p2, :cond_52

    .line 67
    iget-object v1, v0, Lc6;->E:Lb6;

    iget-object v1, v1, Lb6;->d:Lb6;

    if-nez v1, :cond_51

    goto :goto_2f

    :cond_51
    const/4 v6, 0x0

    goto :goto_30

    :cond_52
    :goto_2f
    const/4 v6, 0x1

    :goto_30
    if-nez p2, :cond_54

    .line 68
    iget-object v1, v0, Lc6;->E:Lb6;

    iget-object v1, v1, Lb6;->d:Lb6;

    if-eqz v1, :cond_54

    .line 69
    iget-object v1, v1, Lb6;->b:Lc6;

    .line 70
    iget v2, v1, Lc6;->P:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_53

    iget-object v1, v1, Lc6;->L:[Lc6$a;

    aget-object v2, v1, v4

    sget-object v6, Lc6$a;->g:Lc6$a;

    if-ne v2, v6, :cond_53

    aget-object v1, v1, v25

    if-ne v1, v6, :cond_53

    const/4 v6, 0x1

    goto :goto_31

    :cond_53
    const/4 v6, 0x0

    :cond_54
    :goto_31
    if-eqz v6, :cond_55

    const/16 v1, 0x8

    .line 71
    invoke-virtual {v10, v5, v3, v4, v1}, Lu5;->f(Lx5;Lx5;II)V

    :cond_55
    return-void
.end method

.method public g(Lb6$a;Lc6;Lb6$a;I)V
    .locals 10

    .line 1
    sget-object v0, Lb6$a;->m:Lb6$a;

    sget-object v1, Lb6$a;->l:Lb6$a;

    sget-object v2, Lb6$a;->f:Lb6$a;

    sget-object v3, Lb6$a;->g:Lb6$a;

    sget-object v4, Lb6$a;->h:Lb6$a;

    sget-object v5, Lb6$a;->i:Lb6$a;

    sget-object v6, Lb6$a;->k:Lb6$a;

    const/4 v7, 0x0

    if-ne p1, v6, :cond_c

    if-ne p3, v6, :cond_8

    .line 2
    invoke-virtual {p0, v2}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 3
    invoke-virtual {p0, v4}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p3

    .line 4
    invoke-virtual {p0, v3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p4

    .line 5
    invoke-virtual {p0, v5}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lb6;->f()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p3}, Lb6;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v2, p2, v2, v7}, Lc6;->g(Lb6$a;Lc6;Lb6$a;I)V

    .line 9
    invoke-virtual {p0, v4, p2, v4, v7}, Lc6;->g(Lb6$a;Lc6;Lb6$a;I)V

    const/4 p1, 0x1

    :goto_0
    if-eqz p4, :cond_3

    .line 10
    invoke-virtual {p4}, Lb6;->f()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v8, :cond_5

    .line 11
    invoke-virtual {v8}, Lb6;->f()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p0, v3, p2, v3, v7}, Lc6;->g(Lb6$a;Lc6;Lb6$a;I)V

    .line 13
    invoke-virtual {p0, v5, p2, v5, v7}, Lc6;->g(Lb6$a;Lc6;Lb6$a;I)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v9, :cond_6

    .line 14
    invoke-virtual {p0, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 15
    invoke-virtual {p2, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lb6;->a(Lb6;I)Z

    goto/16 :goto_5

    :cond_6
    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p0, v1}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 17
    invoke-virtual {p2, v1}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lb6;->a(Lb6;I)Z

    goto/16 :goto_5

    :cond_7
    if-eqz v9, :cond_1d

    .line 18
    invoke-virtual {p0, v0}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 19
    invoke-virtual {p2, v0}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lb6;->a(Lb6;I)Z

    goto/16 :goto_5

    :cond_8
    if-eq p3, v2, :cond_b

    if-ne p3, v4, :cond_9

    goto :goto_2

    :cond_9
    if-eq p3, v3, :cond_a

    if-ne p3, v5, :cond_1d

    .line 20
    :cond_a
    invoke-virtual {p0, v3, p2, p3, v7}, Lc6;->g(Lb6$a;Lc6;Lb6$a;I)V

    .line 21
    invoke-virtual {p0, v5, p2, p3, v7}, Lc6;->g(Lb6$a;Lc6;Lb6$a;I)V

    .line 22
    invoke-virtual {p0, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 23
    invoke-virtual {p2, p3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lb6;->a(Lb6;I)Z

    goto/16 :goto_5

    .line 24
    :cond_b
    :goto_2
    invoke-virtual {p0, v2, p2, p3, v7}, Lc6;->g(Lb6$a;Lc6;Lb6$a;I)V

    .line 25
    :try_start_0
    invoke-virtual {p0, v4, p2, p3, v7}, Lc6;->g(Lb6$a;Lc6;Lb6$a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p0, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 27
    invoke-virtual {p2, p3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lb6;->a(Lb6;I)Z

    goto/16 :goto_5

    :cond_c
    if-ne p1, v1, :cond_e

    if-eq p3, v2, :cond_d

    if-ne p3, v4, :cond_e

    .line 28
    :cond_d
    invoke-virtual {p0, v2}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 29
    invoke-virtual {p2, p3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    .line 30
    invoke-virtual {p0, v4}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p3

    .line 31
    invoke-virtual {p1, p2, v7}, Lb6;->a(Lb6;I)Z

    .line 32
    invoke-virtual {p3, p2, v7}, Lb6;->a(Lb6;I)Z

    .line 33
    invoke-virtual {p0, v1}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 34
    invoke-virtual {p1, p2, v7}, Lb6;->a(Lb6;I)Z

    goto/16 :goto_5

    :cond_e
    if-ne p1, v0, :cond_10

    if-eq p3, v3, :cond_f

    if-ne p3, v5, :cond_10

    .line 35
    :cond_f
    invoke-virtual {p2, p3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 36
    invoke-virtual {p0, v3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    .line 37
    invoke-virtual {p2, p1, v7}, Lb6;->a(Lb6;I)Z

    .line 38
    invoke-virtual {p0, v5}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    .line 39
    invoke-virtual {p2, p1, v7}, Lb6;->a(Lb6;I)Z

    .line 40
    invoke-virtual {p0, v0}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    .line 41
    invoke-virtual {p2, p1, v7}, Lb6;->a(Lb6;I)Z

    goto/16 :goto_5

    :cond_10
    if-ne p1, v1, :cond_11

    if-ne p3, v1, :cond_11

    .line 42
    invoke-virtual {p0, v2}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 43
    invoke-virtual {p2, v2}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p4

    .line 44
    invoke-virtual {p1, p4, v7}, Lb6;->a(Lb6;I)Z

    .line 45
    invoke-virtual {p0, v4}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 46
    invoke-virtual {p2, v4}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p4

    .line 47
    invoke-virtual {p1, p4, v7}, Lb6;->a(Lb6;I)Z

    .line 48
    invoke-virtual {p0, v1}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 49
    invoke-virtual {p2, p3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lb6;->a(Lb6;I)Z

    goto/16 :goto_5

    :cond_11
    if-ne p1, v0, :cond_12

    if-ne p3, v0, :cond_12

    .line 50
    invoke-virtual {p0, v3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 51
    invoke-virtual {p2, v3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p4

    .line 52
    invoke-virtual {p1, p4, v7}, Lb6;->a(Lb6;I)Z

    .line 53
    invoke-virtual {p0, v5}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 54
    invoke-virtual {p2, v5}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p4

    .line 55
    invoke-virtual {p1, p4, v7}, Lb6;->a(Lb6;I)Z

    .line 56
    invoke-virtual {p0, v0}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 57
    invoke-virtual {p2, p3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lb6;->a(Lb6;I)Z

    goto/16 :goto_5

    .line 58
    :cond_12
    invoke-virtual {p0, p1}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v8

    .line 59
    invoke-virtual {p2, p3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p2

    .line 60
    invoke-virtual {v8, p2}, Lb6;->g(Lb6;)Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 61
    sget-object p3, Lb6$a;->j:Lb6$a;

    if-ne p1, p3, :cond_15

    .line 62
    invoke-virtual {p0, v3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    .line 63
    invoke-virtual {p0, v5}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p3

    if-eqz p1, :cond_13

    .line 64
    invoke-virtual {p1}, Lb6;->h()V

    :cond_13
    if-eqz p3, :cond_14

    .line 65
    invoke-virtual {p3}, Lb6;->h()V

    :cond_14
    const/4 p4, 0x0

    goto :goto_4

    :cond_15
    if-eq p1, v3, :cond_19

    if-ne p1, v5, :cond_16

    goto :goto_3

    :cond_16
    if-eq p1, v2, :cond_17

    if-ne p1, v4, :cond_1c

    .line 66
    :cond_17
    invoke-virtual {p0, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p3

    .line 67
    iget-object v0, p3, Lb6;->d:Lb6;

    if-eq v0, p2, :cond_18

    .line 68
    invoke-virtual {p3}, Lb6;->h()V

    .line 69
    :cond_18
    invoke-virtual {p0, p1}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    invoke-virtual {p1}, Lb6;->d()Lb6;

    move-result-object p1

    .line 70
    invoke-virtual {p0, v1}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p3

    .line 71
    invoke-virtual {p3}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 72
    invoke-virtual {p1}, Lb6;->h()V

    .line 73
    invoke-virtual {p3}, Lb6;->h()V

    goto :goto_4

    .line 74
    :cond_19
    :goto_3
    invoke-virtual {p0, p3}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p3

    if-eqz p3, :cond_1a

    .line 75
    invoke-virtual {p3}, Lb6;->h()V

    .line 76
    :cond_1a
    invoke-virtual {p0, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p3

    .line 77
    iget-object v1, p3, Lb6;->d:Lb6;

    if-eq v1, p2, :cond_1b

    .line 78
    invoke-virtual {p3}, Lb6;->h()V

    .line 79
    :cond_1b
    invoke-virtual {p0, p1}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p1

    invoke-virtual {p1}, Lb6;->d()Lb6;

    move-result-object p1

    .line 80
    invoke-virtual {p0, v0}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object p3

    .line 81
    invoke-virtual {p3}, Lb6;->f()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 82
    invoke-virtual {p1}, Lb6;->h()V

    .line 83
    invoke-virtual {p3}, Lb6;->h()V

    .line 84
    :cond_1c
    :goto_4
    invoke-virtual {v8, p2, p4}, Lb6;->a(Lb6;I)Z

    :cond_1d
    :goto_5
    return-void

    :catchall_0
    move-exception p1

    .line 85
    throw p1
.end method

.method public h(Lb6;Lb6;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Lb6;->b:Lc6;

    if-ne v0, p0, :cond_0

    .line 2
    iget-object p1, p1, Lb6;->c:Lb6$a;

    .line 3
    iget-object v0, p2, Lb6;->b:Lc6;

    .line 4
    iget-object p2, p2, Lb6;->c:Lb6$a;

    .line 5
    invoke-virtual {p0, p1, v0, p2, p3}, Lc6;->g(Lb6$a;Lc6;Lb6$a;I)V

    :cond_0
    return-void
.end method

.method public i(Lc6;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc6;",
            "Ljava/util/HashMap<",
            "Lc6;",
            "Lc6;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lc6;->h:I

    iput v0, p0, Lc6;->h:I

    .line 2
    iget v0, p1, Lc6;->i:I

    iput v0, p0, Lc6;->i:I

    .line 3
    iget v0, p1, Lc6;->j:I

    iput v0, p0, Lc6;->j:I

    .line 4
    iget v0, p1, Lc6;->k:I

    iput v0, p0, Lc6;->k:I

    .line 5
    iget-object v0, p0, Lc6;->l:[I

    iget-object v1, p1, Lc6;->l:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x1

    .line 6
    aget v1, v1, v3

    aput v1, v0, v3

    .line 7
    iget v0, p1, Lc6;->m:I

    iput v0, p0, Lc6;->m:I

    .line 8
    iget v0, p1, Lc6;->n:I

    iput v0, p0, Lc6;->n:I

    .line 9
    iget v0, p1, Lc6;->p:I

    iput v0, p0, Lc6;->p:I

    .line 10
    iget v0, p1, Lc6;->q:I

    iput v0, p0, Lc6;->q:I

    .line 11
    iget v0, p1, Lc6;->r:F

    iput v0, p0, Lc6;->r:F

    .line 12
    iget-boolean v0, p1, Lc6;->s:Z

    iput-boolean v0, p0, Lc6;->s:Z

    .line 13
    iget-boolean v0, p1, Lc6;->t:Z

    iput-boolean v0, p0, Lc6;->t:Z

    .line 14
    iget v0, p1, Lc6;->u:I

    iput v0, p0, Lc6;->u:I

    .line 15
    iget v0, p1, Lc6;->v:F

    iput v0, p0, Lc6;->v:F

    .line 16
    iget-object v0, p1, Lc6;->w:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lc6;->w:[I

    .line 17
    iget v0, p1, Lc6;->x:F

    iput v0, p0, Lc6;->x:F

    .line 18
    iget-boolean v0, p1, Lc6;->y:Z

    iput-boolean v0, p0, Lc6;->y:Z

    .line 19
    iget-boolean v0, p1, Lc6;->z:Z

    iput-boolean v0, p0, Lc6;->z:Z

    .line 20
    iget-object v0, p0, Lc6;->A:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 21
    iget-object v0, p0, Lc6;->B:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 22
    iget-object v0, p0, Lc6;->C:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 23
    iget-object v0, p0, Lc6;->D:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 24
    iget-object v0, p0, Lc6;->E:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 25
    iget-object v0, p0, Lc6;->F:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 26
    iget-object v0, p0, Lc6;->G:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 27
    iget-object v0, p0, Lc6;->H:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 28
    iget-object v0, p0, Lc6;->L:[Lc6$a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc6$a;

    iput-object v0, p0, Lc6;->L:[Lc6$a;

    .line 29
    iget-object v0, p0, Lc6;->M:Lc6;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lc6;->M:Lc6;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6;

    :goto_0
    iput-object v0, p0, Lc6;->M:Lc6;

    .line 30
    iget v0, p1, Lc6;->N:I

    iput v0, p0, Lc6;->N:I

    .line 31
    iget v0, p1, Lc6;->O:I

    iput v0, p0, Lc6;->O:I

    .line 32
    iget v0, p1, Lc6;->P:F

    iput v0, p0, Lc6;->P:F

    .line 33
    iget v0, p1, Lc6;->Q:I

    iput v0, p0, Lc6;->Q:I

    .line 34
    iget v0, p1, Lc6;->R:I

    iput v0, p0, Lc6;->R:I

    .line 35
    iget v0, p1, Lc6;->S:I

    iput v0, p0, Lc6;->S:I

    .line 36
    iget v0, p1, Lc6;->T:I

    iput v0, p0, Lc6;->T:I

    .line 37
    iget v0, p1, Lc6;->U:I

    iput v0, p0, Lc6;->U:I

    .line 38
    iget v0, p1, Lc6;->V:I

    iput v0, p0, Lc6;->V:I

    .line 39
    iget v0, p1, Lc6;->W:I

    iput v0, p0, Lc6;->W:I

    .line 40
    iget v0, p1, Lc6;->X:I

    iput v0, p0, Lc6;->X:I

    .line 41
    iget v0, p1, Lc6;->Y:I

    iput v0, p0, Lc6;->Y:I

    .line 42
    iget v0, p1, Lc6;->Z:I

    iput v0, p0, Lc6;->Z:I

    .line 43
    iget v0, p1, Lc6;->a0:F

    iput v0, p0, Lc6;->a0:F

    .line 44
    iget v0, p1, Lc6;->b0:F

    iput v0, p0, Lc6;->b0:F

    .line 45
    iget-object v0, p1, Lc6;->c0:Ljava/lang/Object;

    iput-object v0, p0, Lc6;->c0:Ljava/lang/Object;

    .line 46
    iget v0, p1, Lc6;->d0:I

    iput v0, p0, Lc6;->d0:I

    .line 47
    iget v0, p1, Lc6;->e0:I

    iput v0, p0, Lc6;->e0:I

    .line 48
    iget-object v0, p1, Lc6;->f0:Ljava/lang/String;

    iput-object v0, p0, Lc6;->f0:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lc6;->g0:Ljava/lang/String;

    iput-object v0, p0, Lc6;->g0:Ljava/lang/String;

    .line 50
    iget v0, p1, Lc6;->h0:I

    iput v0, p0, Lc6;->h0:I

    .line 51
    iget v0, p1, Lc6;->i0:I

    iput v0, p0, Lc6;->i0:I

    .line 52
    iget v0, p1, Lc6;->j0:I

    iput v0, p0, Lc6;->j0:I

    .line 53
    iget v0, p1, Lc6;->k0:I

    iput v0, p0, Lc6;->k0:I

    .line 54
    iget-boolean v0, p1, Lc6;->l0:Z

    iput-boolean v0, p0, Lc6;->l0:Z

    .line 55
    iget-boolean v0, p1, Lc6;->m0:Z

    iput-boolean v0, p0, Lc6;->m0:Z

    .line 56
    iget-boolean v0, p1, Lc6;->n0:Z

    iput-boolean v0, p0, Lc6;->n0:Z

    .line 57
    iget-boolean v0, p1, Lc6;->o0:Z

    iput-boolean v0, p0, Lc6;->o0:Z

    .line 58
    iget-boolean v0, p1, Lc6;->p0:Z

    iput-boolean v0, p0, Lc6;->p0:Z

    .line 59
    iget-boolean v0, p1, Lc6;->q0:Z

    iput-boolean v0, p0, Lc6;->q0:Z

    .line 60
    iget-boolean v0, p1, Lc6;->r0:Z

    iput-boolean v0, p0, Lc6;->r0:Z

    .line 61
    iget-boolean v0, p1, Lc6;->s0:Z

    iput-boolean v0, p0, Lc6;->s0:Z

    .line 62
    iget v0, p1, Lc6;->t0:I

    iput v0, p0, Lc6;->t0:I

    .line 63
    iget v0, p1, Lc6;->u0:I

    iput v0, p0, Lc6;->u0:I

    .line 64
    iget-boolean v0, p1, Lc6;->v0:Z

    iput-boolean v0, p0, Lc6;->v0:Z

    .line 65
    iget-boolean v0, p1, Lc6;->w0:Z

    iput-boolean v0, p0, Lc6;->w0:Z

    .line 66
    iget-object v0, p0, Lc6;->x0:[F

    iget-object v4, p1, Lc6;->x0:[F

    aget v5, v4, v2

    aput v5, v0, v2

    .line 67
    aget v4, v4, v3

    aput v4, v0, v3

    .line 68
    iget-object v0, p0, Lc6;->y0:[Lc6;

    iget-object v4, p1, Lc6;->y0:[Lc6;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    .line 69
    aget-object v4, v4, v3

    aput-object v4, v0, v3

    .line 70
    iget-object v0, p0, Lc6;->z0:[Lc6;

    iget-object v4, p1, Lc6;->z0:[Lc6;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    .line 71
    aget-object v2, v4, v3

    aput-object v2, v0, v3

    .line 72
    iget-object v0, p1, Lc6;->A0:Lc6;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6;

    :goto_1
    iput-object v0, p0, Lc6;->A0:Lc6;

    .line 73
    iget-object p1, p1, Lc6;->B0:Lc6;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lc6;

    :goto_2
    iput-object v1, p0, Lc6;->B0:Lc6;

    return-void
.end method

.method public j(Lu5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc6;->A:Lb6;

    invoke-virtual {p1, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    .line 2
    iget-object v0, p0, Lc6;->B:Lb6;

    invoke-virtual {p1, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    .line 3
    iget-object v0, p0, Lc6;->C:Lb6;

    invoke-virtual {p1, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    .line 4
    iget-object v0, p0, Lc6;->D:Lb6;

    invoke-virtual {p1, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    .line 5
    iget v0, p0, Lc6;->X:I

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lc6;->E:Lb6;

    invoke-virtual {p1, v0}, Lu5;->l(Ljava/lang/Object;)Lx5;

    :cond_0
    return-void
.end method

.method public k(Lb6$a;)Lb6;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Lc6;->G:Lb6;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Lc6;->F:Lb6;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Lc6;->H:Lb6;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Lc6;->E:Lb6;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Lc6;->D:Lb6;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Lc6;->C:Lb6;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Lc6;->B:Lb6;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Lc6;->A:Lb6;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public l()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc6;->v()I

    move-result v0

    iget v1, p0, Lc6;->O:I

    add-int/2addr v0, v1

    return v0
.end method

.method public m(I)Lc6$a;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lc6;->o()Lc6$a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc6;->s()Lc6$a;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public n()I
    .locals 2

    .line 1
    iget v0, p0, Lc6;->e0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lc6;->O:I

    return v0
.end method

.method public o()Lc6$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lc6;->L:[Lc6$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public p(I)Lc6;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lc6;->C:Lb6;

    iget-object v0, p1, Lb6;->d:Lb6;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb6;->d:Lb6;

    if-ne v1, p1, :cond_1

    .line 2
    iget-object p1, v0, Lb6;->b:Lc6;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lc6;->D:Lb6;

    iget-object v0, p1, Lb6;->d:Lb6;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb6;->d:Lb6;

    if-ne v1, p1, :cond_1

    .line 4
    iget-object p1, v0, Lb6;->b:Lc6;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public q(I)Lc6;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lc6;->A:Lb6;

    iget-object v0, p1, Lb6;->d:Lb6;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb6;->d:Lb6;

    if-ne v1, p1, :cond_1

    .line 2
    iget-object p1, v0, Lb6;->b:Lc6;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lc6;->B:Lb6;

    iget-object v0, p1, Lb6;->d:Lb6;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb6;->d:Lb6;

    if-ne v1, p1, :cond_1

    .line 4
    iget-object p1, v0, Lb6;->b:Lc6;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public r()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc6;->u()I

    move-result v0

    iget v1, p0, Lc6;->N:I

    add-int/2addr v0, v1

    return v0
.end method

.method public s()Lc6$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lc6;->L:[Lc6$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public t()I
    .locals 2

    .line 1
    iget v0, p0, Lc6;->e0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lc6;->N:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc6;->g0:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    const-string v1, "type: "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lc6;->g0:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc6;->f0:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "id: "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lc6;->f0:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc6;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc6;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc6;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc6;->O:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Ljo;->q(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc6;->M:Lc6;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ld6;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ld6;

    iget v0, v0, Ld6;->I0:I

    iget v1, p0, Lc6;->R:I

    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lc6;->R:I

    return v0
.end method

.method public v()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc6;->M:Lc6;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ld6;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ld6;

    iget v0, v0, Ld6;->J0:I

    iget v1, p0, Lc6;->S:I

    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lc6;->S:I

    return v0
.end method

.method public final w(I)Z
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    .line 1
    iget-object v0, p0, Lc6;->I:[Lb6;

    aget-object v1, v0, p1

    iget-object v1, v1, Lb6;->d:Lb6;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Lb6;->d:Lb6;

    iget-object v1, v1, Lb6;->d:Lb6;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_0

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, Lb6;->d:Lb6;

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Lb6;->d:Lb6;

    iget-object v1, v1, Lb6;->d:Lb6;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public x()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc6;->A:Lb6;

    iget-object v1, v0, Lb6;->d:Lb6;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lb6;->d:Lb6;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc6;->C:Lb6;

    iget-object v1, v0, Lb6;->d:Lb6;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lb6;->d:Lb6;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc6;->B:Lb6;

    iget-object v1, v0, Lb6;->d:Lb6;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lb6;->d:Lb6;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc6;->D:Lb6;

    iget-object v1, v0, Lb6;->d:Lb6;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lb6;->d:Lb6;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public z()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc6;->A:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 2
    iget-object v0, p0, Lc6;->B:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 3
    iget-object v0, p0, Lc6;->C:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 4
    iget-object v0, p0, Lc6;->D:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 5
    iget-object v0, p0, Lc6;->E:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 6
    iget-object v0, p0, Lc6;->F:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 7
    iget-object v0, p0, Lc6;->G:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    .line 8
    iget-object v0, p0, Lc6;->H:Lb6;

    invoke-virtual {v0}, Lb6;->h()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lc6;->M:Lc6;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lc6;->x:F

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lc6;->N:I

    .line 12
    iput v2, p0, Lc6;->O:I

    .line 13
    iput v1, p0, Lc6;->P:F

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lc6;->Q:I

    .line 15
    iput v2, p0, Lc6;->R:I

    .line 16
    iput v2, p0, Lc6;->S:I

    .line 17
    iput v2, p0, Lc6;->V:I

    .line 18
    iput v2, p0, Lc6;->W:I

    .line 19
    iput v2, p0, Lc6;->X:I

    .line 20
    iput v2, p0, Lc6;->Y:I

    .line 21
    iput v2, p0, Lc6;->Z:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 22
    iput v3, p0, Lc6;->a0:F

    .line 23
    iput v3, p0, Lc6;->b0:F

    .line 24
    iget-object v3, p0, Lc6;->L:[Lc6$a;

    sget-object v4, Lc6$a;->e:Lc6$a;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    .line 25
    aput-object v4, v3, v5

    .line 26
    iput-object v0, p0, Lc6;->c0:Ljava/lang/Object;

    .line 27
    iput v2, p0, Lc6;->d0:I

    .line 28
    iput v2, p0, Lc6;->e0:I

    .line 29
    iput-object v0, p0, Lc6;->g0:Ljava/lang/String;

    .line 30
    iput-boolean v2, p0, Lc6;->p0:Z

    .line 31
    iput-boolean v2, p0, Lc6;->q0:Z

    .line 32
    iput v2, p0, Lc6;->t0:I

    .line 33
    iput v2, p0, Lc6;->u0:I

    .line 34
    iput-boolean v2, p0, Lc6;->v0:Z

    .line 35
    iput-boolean v2, p0, Lc6;->w0:Z

    .line 36
    iget-object v0, p0, Lc6;->x0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 37
    aput v3, v0, v5

    .line 38
    iput v1, p0, Lc6;->h:I

    .line 39
    iput v1, p0, Lc6;->i:I

    .line 40
    iget-object v0, p0, Lc6;->w:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    .line 41
    aput v3, v0, v5

    .line 42
    iput v2, p0, Lc6;->j:I

    .line 43
    iput v2, p0, Lc6;->k:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    iput v0, p0, Lc6;->o:F

    .line 45
    iput v0, p0, Lc6;->r:F

    .line 46
    iput v3, p0, Lc6;->n:I

    .line 47
    iput v3, p0, Lc6;->q:I

    .line 48
    iput v2, p0, Lc6;->m:I

    .line 49
    iput v2, p0, Lc6;->p:I

    .line 50
    iput v1, p0, Lc6;->u:I

    .line 51
    iput v0, p0, Lc6;->v:F

    .line 52
    iput-boolean v2, p0, Lc6;->r0:Z

    .line 53
    iput-boolean v2, p0, Lc6;->s0:Z

    .line 54
    iget-object v0, p0, Lc6;->f:[Z

    aput-boolean v5, v0, v2

    .line 55
    aput-boolean v5, v0, v5

    .line 56
    iget-object v0, p0, Lc6;->K:[Z

    aput-boolean v2, v0, v2

    .line 57
    aput-boolean v2, v0, v5

    return-void
.end method

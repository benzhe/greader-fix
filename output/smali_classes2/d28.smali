.class public Ld28;
.super Lv18;
.source "SourceFile"


# instance fields
.field public a:Lv18$a;

.field public b:[Lv18;

.field public c:[Z

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lv18;-><init>()V

    const/4 v0, 0x7

    new-array v1, v0, [Lv18;

    .line 2
    iput-object v1, p0, Ld28;->b:[Lv18;

    new-array v0, v0, [Z

    .line 3
    iput-object v0, p0, Ld28;->c:[Z

    .line 4
    new-instance v0, Lh28;

    invoke-direct {v0}, Lh28;-><init>()V

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 5
    iget-object v0, p0, Ld28;->b:[Lv18;

    new-instance v1, Lf28;

    invoke-direct {v1}, Lf28;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 6
    iget-object v0, p0, Ld28;->b:[Lv18;

    new-instance v1, Lw18;

    invoke-direct {v1}, Lw18;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7
    iget-object v0, p0, Ld28;->b:[Lv18;

    new-instance v1, La28;

    invoke-direct {v1}, La28;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 8
    iget-object v0, p0, Ld28;->b:[Lv18;

    new-instance v1, Lx18;

    invoke-direct {v1}, Lx18;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 9
    iget-object v0, p0, Ld28;->b:[Lv18;

    new-instance v1, Lu18;

    invoke-direct {v1}, Lu18;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 10
    iget-object v0, p0, Ld28;->b:[Lv18;

    new-instance v1, Ly18;

    invoke-direct {v1}, Ly18;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 11
    invoke-virtual {p0}, Ld28;->f()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ld28;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ld28;->b()F

    .line 3
    iget v0, p0, Ld28;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ld28;->d:I

    .line 5
    :cond_0
    iget-object v0, p0, Ld28;->b:[Lv18;

    iget v1, p0, Ld28;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lv18;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()F
    .locals 4

    .line 1
    iget-object v0, p0, Ld28;->a:Lv18$a;

    sget-object v1, Lv18$a;->f:Lv18$a;

    if-ne v0, v1, :cond_0

    const v0, 0x3f7d70a4    # 0.99f

    return v0

    .line 2
    :cond_0
    sget-object v1, Lv18$a;->g:Lv18$a;

    if-ne v0, v1, :cond_1

    const v0, 0x3c23d70a    # 0.01f

    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Ld28;->b:[Lv18;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 4
    iget-object v3, p0, Ld28;->c:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lv18;->b()F

    move-result v2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_3

    .line 6
    iput v0, p0, Ld28;->d:I

    move v1, v2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public c()Lv18$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ld28;->a:Lv18$a;

    return-object v0
.end method

.method public d([BII)Lv18$a;
    .locals 6

    .line 1
    new-array v0, p3, [B

    add-int/2addr p3, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    .line 2
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    add-int/lit8 v3, v4, 0x1

    .line 3
    aget-byte v5, p1, p2

    aput-byte v5, v0, v4

    move v4, v3

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    add-int/lit8 v3, v4, 0x1

    .line 4
    aget-byte v5, p1, p2

    aput-byte v5, v0, v4

    move v4, v3

    const/4 v3, 0x0

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 5
    :goto_2
    iget-object p2, p0, Ld28;->b:[Lv18;

    array-length p3, p2

    if-ge p1, p3, :cond_6

    .line 6
    iget-object p3, p0, Ld28;->c:[Z

    aget-boolean p3, p3, p1

    if-nez p3, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    aget-object p2, p2, p1

    invoke-virtual {p2, v0, v1, v4}, Lv18;->d([BII)Lv18$a;

    move-result-object p2

    .line 8
    sget-object p3, Lv18$a;->f:Lv18$a;

    if-ne p2, p3, :cond_4

    .line 9
    iput p1, p0, Ld28;->d:I

    .line 10
    iput-object p3, p0, Ld28;->a:Lv18$a;

    goto :goto_4

    .line 11
    :cond_4
    sget-object p3, Lv18$a;->g:Lv18$a;

    if-ne p2, p3, :cond_5

    .line 12
    iget-object p2, p0, Ld28;->c:[Z

    aput-boolean v1, p2, p1

    .line 13
    iget p2, p0, Ld28;->e:I

    sub-int/2addr p2, v2

    iput p2, p0, Ld28;->e:I

    if-gtz p2, :cond_5

    .line 14
    iput-object p3, p0, Ld28;->a:Lv18$a;

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 15
    :cond_6
    :goto_4
    iget-object p1, p0, Ld28;->a:Lv18$a;

    return-object p1
.end method

.method public f()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ld28;->e:I

    .line 2
    :goto_0
    iget-object v1, p0, Ld28;->b:[Lv18;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lv18;->f()V

    .line 4
    iget-object v1, p0, Ld28;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 5
    iget v1, p0, Ld28;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Ld28;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Ld28;->d:I

    .line 7
    sget-object v0, Lv18$a;->e:Lv18$a;

    iput-object v0, p0, Ld28;->a:Lv18$a;

    return-void
.end method

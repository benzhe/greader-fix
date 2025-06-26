.class public Lb28;
.super Lv18;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:B

.field public d:B

.field public e:Lv18;

.field public f:Lv18;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv18;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb28;->e:Lv18;

    .line 3
    iput-object v0, p0, Lb28;->f:Lv18;

    .line 4
    invoke-virtual {p0}, Lb28;->f()V

    return-void
.end method

.method public static g(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xea

    if-eq p0, v0, :cond_1

    const/16 v0, 0xed

    if-eq p0, v0, :cond_1

    const/16 v0, 0xef

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lb28;->a:I

    iget v1, p0, Lb28;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Ls18;->t:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, -0x5

    if-gt v0, v1, :cond_1

    .line 3
    sget-object v0, Ls18;->f:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lb28;->e:Lv18;

    invoke-virtual {v1}, Lv18;->b()F

    move-result v1

    iget-object v2, p0, Lb28;->f:Lv18;

    invoke-virtual {v2}, Lv18;->b()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 5
    sget-object v0, Ls18;->t:Ljava/lang/String;

    return-object v0

    :cond_2
    const v2, -0x43dc28f6    # -0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 6
    sget-object v0, Ls18;->f:Ljava/lang/String;

    return-object v0

    :cond_3
    if-gez v0, :cond_4

    .line 7
    sget-object v0, Ls18;->f:Ljava/lang/String;

    return-object v0

    .line 8
    :cond_4
    sget-object v0, Ls18;->t:Ljava/lang/String;

    return-object v0
.end method

.method public b()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lv18$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lb28;->e:Lv18;

    invoke-virtual {v0}, Lv18;->c()Lv18$a;

    move-result-object v0

    sget-object v1, Lv18$a;->g:Lv18$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb28;->f:Lv18;

    invoke-virtual {v0}, Lv18;->c()Lv18$a;

    move-result-object v0

    if-ne v0, v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lv18$a;->e:Lv18$a;

    return-object v0
.end method

.method public d([BII)Lv18$a;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb28;->c()Lv18$a;

    move-result-object v0

    sget-object v1, Lv18$a;->g:Lv18$a;

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_6

    .line 2
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    .line 3
    iget-byte v3, p0, Lb28;->d:B

    if-eq v3, v1, :cond_5

    .line 4
    iget-byte v1, p0, Lb28;->c:B

    invoke-static {v1}, Lb28;->g(B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget v1, p0, Lb28;->a:I

    add-int/2addr v1, v2

    iput v1, p0, Lb28;->a:I

    goto :goto_3

    .line 6
    :cond_1
    iget-byte v1, p0, Lb28;->c:B

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0xeb

    if-eq v1, v3, :cond_3

    const/16 v3, 0xee

    if-eq v1, v3, :cond_3

    const/16 v3, 0xf0

    if-eq v1, v3, :cond_3

    const/16 v3, 0xf4

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_5

    .line 7
    iget v1, p0, Lb28;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lb28;->b:I

    goto :goto_3

    .line 8
    :cond_4
    iget-byte v3, p0, Lb28;->d:B

    if-ne v3, v1, :cond_5

    iget-byte v3, p0, Lb28;->c:B

    invoke-static {v3}, Lb28;->g(B)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eq v0, v1, :cond_5

    .line 9
    iget v1, p0, Lb28;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lb28;->b:I

    .line 10
    :cond_5
    :goto_3
    iget-byte v1, p0, Lb28;->c:B

    iput-byte v1, p0, Lb28;->d:B

    .line 11
    iput-byte v0, p0, Lb28;->c:B

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_6
    sget-object p1, Lv18$a;->e:Lv18$a;

    return-object p1
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lb28;->a:I

    .line 2
    iput v0, p0, Lb28;->b:I

    const/16 v0, 0x20

    .line 3
    iput-byte v0, p0, Lb28;->c:B

    .line 4
    iput-byte v0, p0, Lb28;->d:B

    return-void
.end method

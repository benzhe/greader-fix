.class public Lt18;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt18$a;
    }
.end annotation


# instance fields
.field public a:Lt18$a;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:B

.field public f:Ljava/lang/String;

.field public g:[Lv18;

.field public h:Lv18;


# direct methods
.method public constructor <init>(Lr18;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lt18;->h:Lv18;

    const/4 v0, 0x3

    new-array v0, v0, [Lv18;

    .line 3
    iput-object v0, p0, Lt18;->g:[Lv18;

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lt18;->g:[Lv18;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 5
    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lt18;->b()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 12

    .line 1
    sget-object v0, Lv18$a;->f:Lv18$a;

    sget-object v1, Lt18$a;->g:Lt18$a;

    sget-object v2, Lt18$a;->f:Lt18$a;

    iget-boolean v3, p0, Lt18;->b:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    if-lez p3, :cond_1

    .line 2
    iput-boolean v3, p0, Lt18;->d:Z

    .line 3
    :cond_1
    iget-boolean v4, p0, Lt18;->c:Z

    const/4 v5, 0x0

    const/16 v6, 0xff

    if-eqz v4, :cond_a

    .line 4
    iput-boolean v5, p0, Lt18;->c:Z

    const/4 v4, 0x3

    if-le p3, v4, :cond_a

    .line 5
    aget-byte v4, p1, p2

    and-int/2addr v4, v6

    add-int/lit8 v7, p2, 0x1

    .line 6
    aget-byte v7, p1, v7

    and-int/2addr v7, v6

    add-int/lit8 v8, p2, 0x2

    .line 7
    aget-byte v8, p1, v8

    and-int/2addr v8, v6

    add-int/lit8 v9, p2, 0x3

    .line 8
    aget-byte v9, p1, v9

    and-int/2addr v9, v6

    const/16 v10, 0xfe

    if-eqz v4, :cond_7

    const/16 v11, 0xef

    if-eq v4, v11, :cond_6

    if-eq v4, v10, :cond_4

    if-eq v4, v6, :cond_2

    goto :goto_0

    :cond_2
    if-ne v7, v10, :cond_3

    if-nez v8, :cond_3

    if-nez v9, :cond_3

    .line 9
    sget-object v4, Ls18;->y:Ljava/lang/String;

    iput-object v4, p0, Lt18;->f:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-ne v7, v10, :cond_9

    .line 10
    sget-object v4, Ls18;->w:Ljava/lang/String;

    iput-object v4, p0, Lt18;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-ne v7, v6, :cond_5

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    .line 11
    sget-object v4, Ls18;->A:Ljava/lang/String;

    iput-object v4, p0, Lt18;->f:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne v7, v6, :cond_9

    .line 12
    sget-object v4, Ls18;->v:Ljava/lang/String;

    iput-object v4, p0, Lt18;->f:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/16 v4, 0xbb

    if-ne v7, v4, :cond_9

    const/16 v4, 0xbf

    if-ne v8, v4, :cond_9

    .line 13
    sget-object v4, Ls18;->u:Ljava/lang/String;

    iput-object v4, p0, Lt18;->f:Ljava/lang/String;

    goto :goto_0

    :cond_7
    if-nez v7, :cond_8

    if-ne v8, v10, :cond_8

    if-ne v9, v6, :cond_8

    .line 14
    sget-object v4, Ls18;->x:Ljava/lang/String;

    iput-object v4, p0, Lt18;->f:Ljava/lang/String;

    goto :goto_0

    :cond_8
    if-nez v7, :cond_9

    if-ne v8, v6, :cond_9

    if-ne v9, v10, :cond_9

    .line 15
    sget-object v4, Ls18;->B:Ljava/lang/String;

    iput-object v4, p0, Lt18;->f:Ljava/lang/String;

    .line 16
    :cond_9
    :goto_0
    iget-object v4, p0, Lt18;->f:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 17
    iput-boolean v3, p0, Lt18;->b:Z

    return-void

    :cond_a
    add-int v4, p2, p3

    move v7, p2

    :goto_1
    if-ge v7, v4, :cond_12

    .line 18
    aget-byte v8, p1, v7

    and-int/2addr v8, v6

    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_e

    const/16 v9, 0xa0

    if-eq v8, v9, :cond_e

    .line 19
    iget-object v8, p0, Lt18;->a:Lt18$a;

    if-eq v8, v1, :cond_11

    .line 20
    iput-object v1, p0, Lt18;->a:Lt18$a;

    .line 21
    iget-object v8, p0, Lt18;->h:Lv18;

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    .line 22
    iput-object v8, p0, Lt18;->h:Lv18;

    .line 23
    :cond_b
    iget-object v8, p0, Lt18;->g:[Lv18;

    aget-object v9, v8, v5

    if-nez v9, :cond_c

    .line 24
    new-instance v9, Ld28;

    invoke-direct {v9}, Ld28;-><init>()V

    aput-object v9, v8, v5

    .line 25
    :cond_c
    iget-object v8, p0, Lt18;->g:[Lv18;

    aget-object v9, v8, v3

    if-nez v9, :cond_d

    .line 26
    new-instance v9, Le28;

    invoke-direct {v9}, Le28;-><init>()V

    aput-object v9, v8, v3

    .line 27
    :cond_d
    iget-object v8, p0, Lt18;->g:[Lv18;

    const/4 v9, 0x2

    aget-object v10, v8, v9

    if-nez v10, :cond_11

    .line 28
    new-instance v10, Lc28;

    invoke-direct {v10}, Lc28;-><init>()V

    aput-object v10, v8, v9

    goto :goto_2

    .line 29
    :cond_e
    iget-object v9, p0, Lt18;->a:Lt18$a;

    sget-object v10, Lt18$a;->e:Lt18$a;

    if-ne v9, v10, :cond_10

    const/16 v9, 0x1b

    if-eq v8, v9, :cond_f

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_10

    iget-byte v8, p0, Lt18;->e:B

    const/16 v9, 0x7e

    if-ne v8, v9, :cond_10

    .line 30
    :cond_f
    iput-object v2, p0, Lt18;->a:Lt18$a;

    .line 31
    :cond_10
    aget-byte v8, p1, v7

    iput-byte v8, p0, Lt18;->e:B

    :cond_11
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 32
    :cond_12
    iget-object v4, p0, Lt18;->a:Lt18$a;

    if-ne v4, v2, :cond_14

    .line 33
    iget-object v1, p0, Lt18;->h:Lv18;

    if-nez v1, :cond_13

    .line 34
    new-instance v1, Lz18;

    invoke-direct {v1}, Lz18;-><init>()V

    iput-object v1, p0, Lt18;->h:Lv18;

    .line 35
    :cond_13
    iget-object v1, p0, Lt18;->h:Lv18;

    invoke-virtual {v1, p1, p2, p3}, Lv18;->d([BII)Lv18$a;

    move-result-object p1

    if-ne p1, v0, :cond_16

    .line 36
    iput-boolean v3, p0, Lt18;->b:Z

    .line 37
    iget-object p1, p0, Lt18;->h:Lv18;

    invoke-virtual {p1}, Lv18;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lt18;->f:Ljava/lang/String;

    goto :goto_4

    :cond_14
    if-ne v4, v1, :cond_16

    .line 38
    :goto_3
    iget-object v1, p0, Lt18;->g:[Lv18;

    array-length v2, v1

    if-ge v5, v2, :cond_16

    .line 39
    aget-object v1, v1, v5

    invoke-virtual {v1, p1, p2, p3}, Lv18;->d([BII)Lv18$a;

    move-result-object v1

    if-ne v1, v0, :cond_15

    .line 40
    iput-boolean v3, p0, Lt18;->b:Z

    .line 41
    iget-object p1, p0, Lt18;->g:[Lv18;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Lv18;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lt18;->f:Ljava/lang/String;

    return-void

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_16
    :goto_4
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lt18;->b:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lt18;->c:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lt18;->f:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lt18;->d:Z

    .line 5
    sget-object v1, Lt18$a;->e:Lt18$a;

    iput-object v1, p0, Lt18;->a:Lt18$a;

    .line 6
    iput-byte v0, p0, Lt18;->e:B

    .line 7
    iget-object v1, p0, Lt18;->h:Lv18;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lv18;->f()V

    .line 9
    :cond_0
    :goto_0
    iget-object v1, p0, Lt18;->g:[Lv18;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 10
    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 11
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lv18;->f()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

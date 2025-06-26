.class public Le28;
.super Lv18;
.source "SourceFile"


# static fields
.field public static final f:Le38;

.field public static final g:Le38;

.field public static final h:Le38;

.field public static final i:Le38;

.field public static final j:Le38;

.field public static final k:Le38;

.field public static final l:Le38;

.field public static final m:Le38;

.field public static final n:Le38;

.field public static final o:Le38;

.field public static final p:Le38;


# instance fields
.field public a:Lv18$a;

.field public b:[Lv18;

.field public c:[Z

.field public d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg38;

    invoke-direct {v0}, Lg38;-><init>()V

    sput-object v0, Le28;->f:Le38;

    .line 2
    new-instance v0, Lz28;

    invoke-direct {v0}, Lz28;-><init>()V

    sput-object v0, Le28;->g:Le38;

    .line 3
    new-instance v0, Lb38;

    invoke-direct {v0}, Lb38;-><init>()V

    sput-object v0, Le28;->h:Le38;

    .line 4
    new-instance v0, Ld38;

    invoke-direct {v0}, Ld38;-><init>()V

    sput-object v0, Le28;->i:Le38;

    .line 5
    new-instance v0, Ly28;

    invoke-direct {v0}, Ly28;-><init>()V

    sput-object v0, Le28;->j:Le38;

    .line 6
    new-instance v0, Lx28;

    invoke-direct {v0}, Lx28;-><init>()V

    sput-object v0, Le28;->k:Le38;

    .line 7
    new-instance v0, Lc38;

    invoke-direct {v0}, Lc38;-><init>()V

    sput-object v0, Le28;->l:Le38;

    .line 8
    new-instance v0, Lh38;

    invoke-direct {v0}, Lh38;-><init>()V

    sput-object v0, Le28;->m:Le38;

    .line 9
    new-instance v0, La38;

    invoke-direct {v0}, La38;-><init>()V

    sput-object v0, Le28;->n:Le38;

    .line 10
    new-instance v0, Lf38;

    invoke-direct {v0}, Lf38;-><init>()V

    sput-object v0, Le28;->o:Le38;

    .line 11
    new-instance v0, Lw28;

    invoke-direct {v0}, Lw28;-><init>()V

    sput-object v0, Le28;->p:Le38;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lv18;-><init>()V

    const/16 v0, 0xd

    new-array v1, v0, [Lv18;

    .line 2
    iput-object v1, p0, Le28;->b:[Lv18;

    new-array v0, v0, [Z

    .line 3
    iput-object v0, p0, Le28;->c:[Z

    .line 4
    new-instance v0, Lg28;

    sget-object v2, Le28;->f:Le38;

    invoke-direct {v0, v2}, Lg28;-><init>(Le38;)V

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 5
    iget-object v0, p0, Le28;->b:[Lv18;

    new-instance v1, Lg28;

    sget-object v3, Le28;->g:Le38;

    invoke-direct {v1, v3}, Lg28;-><init>(Le38;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 6
    iget-object v0, p0, Le28;->b:[Lv18;

    new-instance v1, Lg28;

    sget-object v4, Le28;->h:Le38;

    invoke-direct {v1, v4}, Lg28;-><init>(Le38;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 7
    iget-object v0, p0, Le28;->b:[Lv18;

    new-instance v1, Lg28;

    sget-object v4, Le28;->i:Le38;

    invoke-direct {v1, v4}, Lg28;-><init>(Le38;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 8
    iget-object v0, p0, Le28;->b:[Lv18;

    new-instance v1, Lg28;

    sget-object v4, Le28;->j:Le38;

    invoke-direct {v1, v4}, Lg28;-><init>(Le38;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 9
    iget-object v0, p0, Le28;->b:[Lv18;

    new-instance v1, Lg28;

    sget-object v4, Le28;->k:Le38;

    invoke-direct {v1, v4}, Lg28;-><init>(Le38;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 10
    iget-object v0, p0, Le28;->b:[Lv18;

    new-instance v1, Lg28;

    sget-object v4, Le28;->l:Le38;

    invoke-direct {v1, v4}, Lg28;-><init>(Le38;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 11
    iget-object v0, p0, Le28;->b:[Lv18;

    new-instance v1, Lg28;

    sget-object v4, Le28;->m:Le38;

    invoke-direct {v1, v4}, Lg28;-><init>(Le38;)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    .line 12
    iget-object v0, p0, Le28;->b:[Lv18;

    new-instance v1, Lg28;

    sget-object v4, Le28;->n:Le38;

    invoke-direct {v1, v4}, Lg28;-><init>(Le38;)V

    const/16 v4, 0x8

    aput-object v1, v0, v4

    .line 13
    iget-object v0, p0, Le28;->b:[Lv18;

    new-instance v1, Lg28;

    sget-object v4, Le28;->o:Le38;

    invoke-direct {v1, v4}, Lg28;-><init>(Le38;)V

    const/16 v4, 0x9

    aput-object v1, v0, v4

    .line 14
    new-instance v0, Lb28;

    invoke-direct {v0}, Lb28;-><init>()V

    .line 15
    iget-object v1, p0, Le28;->b:[Lv18;

    const/16 v4, 0xa

    aput-object v0, v1, v4

    .line 16
    new-instance v4, Lg28;

    sget-object v5, Le28;->p:Le38;

    invoke-direct {v4, v5, v2, v0}, Lg28;-><init>(Le38;ZLv18;)V

    const/16 v2, 0xb

    aput-object v4, v1, v2

    .line 17
    iget-object v1, p0, Le28;->b:[Lv18;

    new-instance v4, Lg28;

    invoke-direct {v4, v5, v3, v0}, Lg28;-><init>(Le38;ZLv18;)V

    const/16 v3, 0xc

    aput-object v4, v1, v3

    .line 18
    iget-object v1, p0, Le28;->b:[Lv18;

    aget-object v2, v1, v2

    aget-object v1, v1, v3

    .line 19
    iput-object v2, v0, Lb28;->e:Lv18;

    .line 20
    iput-object v1, v0, Lb28;->f:Lv18;

    .line 21
    invoke-virtual {p0}, Le28;->f()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Le28;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le28;->b()F

    .line 3
    iget v0, p0, Le28;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le28;->d:I

    .line 5
    :cond_0
    iget-object v0, p0, Le28;->b:[Lv18;

    iget v1, p0, Le28;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lv18;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()F
    .locals 4

    .line 1
    iget-object v0, p0, Le28;->a:Lv18$a;

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
    iget-object v2, p0, Le28;->b:[Lv18;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 4
    iget-object v3, p0, Le28;->c:[Z

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
    iput v0, p0, Le28;->d:I

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
    iget-object v0, p0, Le28;->a:Lv18$a;

    return-object v0
.end method

.method public d([BII)Lv18$a;
    .locals 7

    .line 1
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/2addr p3, p2

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge p2, p3, :cond_4

    .line 2
    aget-byte v5, p1, p2

    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0, v5}, Lv18;->e(B)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    if-le p2, v2, :cond_2

    sub-int v3, p2, v2

    .line 4
    invoke-virtual {v0, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v2, 0x20

    .line 5
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, p2, 0x1

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-le p2, v2, :cond_5

    sub-int/2addr p2, v2

    .line 6
    invoke-virtual {v0, p1, v2, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 7
    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_3
    iget-object p2, p0, Le28;->b:[Lv18;

    array-length p3, p2

    if-ge p1, p3, :cond_a

    .line 9
    iget-object p3, p0, Le28;->c:[Z

    aget-boolean p3, p3, p1

    if-nez p3, :cond_7

    goto :goto_4

    .line 10
    :cond_7
    aget-object p2, p2, p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2, p3, v1, v2}, Lv18;->d([BII)Lv18$a;

    move-result-object p2

    .line 11
    sget-object p3, Lv18$a;->f:Lv18$a;

    if-ne p2, p3, :cond_8

    .line 12
    iput p1, p0, Le28;->d:I

    .line 13
    iput-object p3, p0, Le28;->a:Lv18$a;

    goto :goto_5

    .line 14
    :cond_8
    sget-object p3, Lv18$a;->g:Lv18$a;

    if-ne p2, p3, :cond_9

    .line 15
    iget-object p2, p0, Le28;->c:[Z

    aput-boolean v1, p2, p1

    .line 16
    iget p2, p0, Le28;->e:I

    sub-int/2addr p2, v4

    iput p2, p0, Le28;->e:I

    if-gtz p2, :cond_9

    .line 17
    iput-object p3, p0, Le28;->a:Lv18$a;

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 18
    :cond_a
    :goto_5
    iget-object p1, p0, Le28;->a:Lv18$a;

    return-object p1
.end method

.method public f()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le28;->e:I

    .line 2
    :goto_0
    iget-object v1, p0, Le28;->b:[Lv18;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lv18;->f()V

    .line 4
    iget-object v1, p0, Le28;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 5
    iget v1, p0, Le28;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Le28;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Le28;->d:I

    .line 7
    sget-object v0, Lv18$a;->e:Lv18$a;

    iput-object v0, p0, Le28;->a:Lv18$a;

    return-void
.end method

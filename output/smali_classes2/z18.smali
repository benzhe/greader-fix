.class public Lz18;
.super Lv18;
.source "SourceFile"


# static fields
.field public static final e:Lo38;

.field public static final f:Lp38;

.field public static final g:Lq38;

.field public static final h:Lr38;


# instance fields
.field public a:[Lj38;

.field public b:I

.field public c:Lv18$a;

.field public d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo38;

    invoke-direct {v0}, Lo38;-><init>()V

    sput-object v0, Lz18;->e:Lo38;

    .line 2
    new-instance v0, Lp38;

    invoke-direct {v0}, Lp38;-><init>()V

    sput-object v0, Lz18;->f:Lp38;

    .line 3
    new-instance v0, Lq38;

    invoke-direct {v0}, Lq38;-><init>()V

    sput-object v0, Lz18;->g:Lq38;

    .line 4
    new-instance v0, Lr38;

    invoke-direct {v0}, Lr38;-><init>()V

    sput-object v0, Lz18;->h:Lr38;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lv18;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lj38;

    .line 2
    iput-object v0, p0, Lz18;->a:[Lj38;

    .line 3
    new-instance v1, Lj38;

    sget-object v2, Lz18;->e:Lo38;

    invoke-direct {v1, v2}, Lj38;-><init>(Lu38;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    new-instance v1, Lj38;

    sget-object v2, Lz18;->f:Lp38;

    invoke-direct {v1, v2}, Lj38;-><init>(Lu38;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    new-instance v1, Lj38;

    sget-object v2, Lz18;->g:Lq38;

    invoke-direct {v1, v2}, Lj38;-><init>(Lu38;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 6
    new-instance v1, Lj38;

    sget-object v2, Lz18;->h:Lr38;

    invoke-direct {v1, v2}, Lj38;-><init>(Lu38;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 7
    invoke-virtual {p0}, Lz18;->f()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lz18;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()F
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    return v0
.end method

.method public c()Lv18$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lz18;->c:Lv18$a;

    return-object v0
.end method

.method public d([BII)Lv18$a;
    .locals 6

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_4

    .line 1
    iget-object v0, p0, Lz18;->c:Lv18$a;

    sget-object v1, Lv18$a;->e:Lv18$a;

    if-ne v0, v1, :cond_4

    .line 2
    iget v0, p0, Lz18;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_3

    .line 3
    iget-object v2, p0, Lz18;->a:[Lj38;

    aget-object v2, v2, v0

    aget-byte v3, p1, p2

    invoke-virtual {v2, v3}, Lj38;->a(B)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 4
    iget v2, p0, Lz18;->b:I

    sub-int/2addr v2, v1

    iput v2, p0, Lz18;->b:I

    if-gtz v2, :cond_0

    .line 5
    sget-object p1, Lv18$a;->g:Lv18$a;

    iput-object p1, p0, Lz18;->c:Lv18$a;

    return-object p1

    :cond_0
    if-eq v0, v2, :cond_2

    .line 6
    iget-object v3, p0, Lz18;->a:[Lj38;

    aget-object v4, v3, v2

    .line 7
    aget-object v5, v3, v0

    aput-object v5, v3, v2

    .line 8
    aput-object v4, v3, v0

    goto :goto_2

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 9
    sget-object p1, Lv18$a;->f:Lv18$a;

    iput-object p1, p0, Lz18;->c:Lv18$a;

    .line 10
    iget-object p2, p0, Lz18;->a:[Lj38;

    aget-object p2, p2, v0

    .line 11
    iget-object p2, p2, Lj38;->a:Lu38;

    .line 12
    iget-object p2, p2, Lu38;->e:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lz18;->d:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lz18;->c:Lv18$a;

    return-object p1
.end method

.method public f()V
    .locals 4

    .line 1
    sget-object v0, Lv18$a;->e:Lv18$a;

    iput-object v0, p0, Lz18;->c:Lv18$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lz18;->a:[Lj38;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    .line 4
    iput v0, v2, Lj38;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    array-length v0, v2

    iput v0, p0, Lz18;->b:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lz18;->d:Ljava/lang/String;

    return-void
.end method

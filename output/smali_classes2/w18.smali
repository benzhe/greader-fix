.class public Lw18;
.super Lv18;
.source "SourceFile"


# static fields
.field public static final f:Lu38;


# instance fields
.field public a:Lj38;

.field public b:Lv18$a;

.field public c:Li28;

.field public d:Ln28;

.field public e:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk38;

    invoke-direct {v0}, Lk38;-><init>()V

    sput-object v0, Lw18;->f:Lu38;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lv18;-><init>()V

    .line 2
    new-instance v0, Lj38;

    sget-object v1, Lw18;->f:Lu38;

    invoke-direct {v0, v1}, Lj38;-><init>(Lu38;)V

    iput-object v0, p0, Lw18;->a:Lj38;

    .line 3
    new-instance v0, Li28;

    invoke-direct {v0}, Li28;-><init>()V

    iput-object v0, p0, Lw18;->c:Li28;

    .line 4
    new-instance v0, Ln28;

    invoke-direct {v0}, Ln28;-><init>()V

    iput-object v0, p0, Lw18;->d:Ln28;

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lw18;->e:[B

    .line 6
    invoke-virtual {p0}, Lw18;->f()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ls18;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b()F
    .locals 2

    .line 1
    iget-object v0, p0, Lw18;->c:Li28;

    invoke-virtual {v0}, Lj28;->a()F

    move-result v0

    .line 2
    iget-object v1, p0, Lw18;->d:Ln28;

    invoke-virtual {v1}, Lm28;->a()F

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public c()Lv18$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw18;->b:Lv18$a;

    return-object v0
.end method

.method public d([BII)Lv18$a;
    .locals 7

    .line 1
    sget-object v0, Lv18$a;->f:Lv18$a;

    add-int/2addr p3, p2

    move v1, p2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, p3, :cond_4

    .line 2
    iget-object v4, p0, Lw18;->a:Lj38;

    aget-byte v5, p1, v1

    invoke-virtual {v4, v5}, Lj38;->a(B)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 3
    sget-object p2, Lv18$a;->g:Lv18$a;

    iput-object p2, p0, Lw18;->b:Lv18$a;

    goto :goto_2

    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 4
    iput-object v0, p0, Lw18;->b:Lv18$a;

    goto :goto_2

    :cond_1
    if-nez v4, :cond_3

    .line 5
    iget-object v4, p0, Lw18;->a:Lj38;

    .line 6
    iget v4, v4, Lj38;->c:I

    if-ne v1, p2, :cond_2

    .line 7
    iget-object v5, p0, Lw18;->e:[B

    aget-byte v6, p1, p2

    aput-byte v6, v5, v3

    .line 8
    iget-object v3, p0, Lw18;->c:Li28;

    invoke-virtual {v3, v5, v2, v4}, Lj28;->c([BII)V

    .line 9
    iget-object v3, p0, Lw18;->d:Ln28;

    iget-object v5, p0, Lw18;->e:[B

    invoke-virtual {v3, v5, v2, v4}, Lm28;->d([BII)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v2, p0, Lw18;->c:Li28;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, p1, v3, v4}, Lj28;->c([BII)V

    .line 11
    iget-object v2, p0, Lw18;->d:Ln28;

    invoke-virtual {v2, p1, v3, v4}, Lm28;->d([BII)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_4
    :goto_2
    iget-object p2, p0, Lw18;->e:[B

    sub-int/2addr p3, v3

    aget-byte p1, p1, p3

    aput-byte p1, p2, v2

    .line 13
    iget-object p1, p0, Lw18;->b:Lv18$a;

    sget-object p2, Lv18$a;->e:Lv18$a;

    if-ne p1, p2, :cond_6

    .line 14
    iget-object p1, p0, Lw18;->c:Li28;

    .line 15
    iget p1, p1, Lj28;->b:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {p0}, Lw18;->b()F

    move-result p1

    const p2, 0x3f733333    # 0.95f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    .line 17
    iput-object v0, p0, Lw18;->b:Lv18$a;

    .line 18
    :cond_6
    iget-object p1, p0, Lw18;->b:Lv18$a;

    return-object p1
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw18;->a:Lj38;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lj38;->b:I

    .line 3
    sget-object v0, Lv18$a;->e:Lv18$a;

    iput-object v0, p0, Lw18;->b:Lv18$a;

    .line 4
    iget-object v0, p0, Lw18;->c:Li28;

    invoke-virtual {v0}, Lj28;->d()V

    .line 5
    iget-object v0, p0, Lw18;->d:Ln28;

    invoke-virtual {v0}, Lm28;->e()V

    .line 6
    iget-object v0, p0, Lw18;->e:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

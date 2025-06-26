.class public Lg28;
.super Lv18;
.source "SourceFile"


# instance fields
.field public a:Lv18$a;

.field public b:Le38;

.field public c:Z

.field public d:S

.field public e:I

.field public f:[I

.field public g:I

.field public h:I

.field public i:Lv18;


# direct methods
.method public constructor <init>(Le38;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv18;-><init>()V

    .line 2
    iput-object p1, p0, Lg28;->b:Le38;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lg28;->c:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lg28;->i:Lv18;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 5
    iput-object p1, p0, Lg28;->f:[I

    .line 6
    invoke-virtual {p0}, Lg28;->f()V

    return-void
.end method

.method public constructor <init>(Le38;ZLv18;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lv18;-><init>()V

    .line 8
    iput-object p1, p0, Lg28;->b:Le38;

    .line 9
    iput-boolean p2, p0, Lg28;->c:Z

    .line 10
    iput-object p3, p0, Lg28;->i:Lv18;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 11
    iput-object p1, p0, Lg28;->f:[I

    .line 12
    invoke-virtual {p0}, Lg28;->f()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg28;->i:Lv18;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg28;->b:Le38;

    .line 3
    iget-object v0, v0, Le38;->d:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lv18;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()F
    .locals 3

    .line 1
    iget v0, p0, Lg28;->e:I

    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Lg28;->f:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget-object v0, p0, Lg28;->b:Le38;

    .line 3
    iget v0, v0, Le38;->c:F

    div-float/2addr v1, v0

    .line 4
    iget v0, p0, Lg28;->h:I

    int-to-float v0, v0

    mul-float v1, v1, v0

    iget v0, p0, Lg28;->g:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_0

    const v1, 0x3f7d70a4    # 0.99f

    :cond_0
    return v1

    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    return v0
.end method

.method public c()Lv18$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg28;->a:Lv18$a;

    return-object v0
.end method

.method public d([BII)Lv18$a;
    .locals 5

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_3

    .line 1
    iget-object v0, p0, Lg28;->b:Le38;

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 2
    iget-object v2, v0, Le38;->a:[S

    aget-short v1, v2, v1

    const/16 v2, 0xfa

    if-ge v1, v2, :cond_0

    .line 3
    iget v2, p0, Lg28;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lg28;->g:I

    :cond_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_2

    .line 4
    iget v3, p0, Lg28;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lg28;->h:I

    .line 5
    iget-short v3, p0, Lg28;->d:S

    if-ge v3, v2, :cond_2

    .line 6
    iget v2, p0, Lg28;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lg28;->e:I

    .line 7
    iget-boolean v2, p0, Lg28;->c:Z

    if-nez v2, :cond_1

    .line 8
    iget-object v2, p0, Lg28;->f:[I

    mul-int/lit8 v3, v3, 0x40

    add-int/2addr v3, v1

    .line 9
    iget-object v0, v0, Le38;->b:[B

    aget-byte v0, v0, v3

    .line 10
    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    goto :goto_1

    .line 11
    :cond_1
    iget-object v2, p0, Lg28;->f:[I

    mul-int/lit8 v4, v1, 0x40

    add-int/2addr v4, v3

    .line 12
    iget-object v0, v0, Le38;->b:[B

    aget-byte v0, v0, v4

    .line 13
    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 14
    :cond_2
    :goto_1
    iput-short v1, p0, Lg28;->d:S

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lg28;->a:Lv18$a;

    sget-object p2, Lv18$a;->e:Lv18$a;

    if-ne p1, p2, :cond_5

    .line 16
    iget p1, p0, Lg28;->e:I

    const/16 p2, 0x400

    if-le p1, p2, :cond_5

    .line 17
    invoke-virtual {p0}, Lg28;->b()F

    move-result p1

    const p2, 0x3f733333    # 0.95f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_4

    .line 18
    sget-object p1, Lv18$a;->f:Lv18$a;

    iput-object p1, p0, Lg28;->a:Lv18$a;

    goto :goto_2

    :cond_4
    const p2, 0x3d4ccccd    # 0.05f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    .line 19
    sget-object p1, Lv18$a;->g:Lv18$a;

    iput-object p1, p0, Lg28;->a:Lv18$a;

    .line 20
    :cond_5
    :goto_2
    iget-object p1, p0, Lg28;->a:Lv18$a;

    return-object p1
.end method

.method public f()V
    .locals 3

    .line 1
    sget-object v0, Lv18$a;->e:Lv18$a;

    iput-object v0, p0, Lg28;->a:Lv18$a;

    const/16 v0, 0xff

    .line 2
    iput-short v0, p0, Lg28;->d:S

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lg28;->f:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput v0, p0, Lg28;->e:I

    .line 5
    iput v0, p0, Lg28;->g:I

    .line 6
    iput v0, p0, Lg28;->h:I

    return-void
.end method

.class public Lh28;
.super Lv18;
.source "SourceFile"


# static fields
.field public static final d:Lu38;


# instance fields
.field public a:Lj38;

.field public b:Lv18$a;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv38;

    invoke-direct {v0}, Lv38;-><init>()V

    sput-object v0, Lh28;->d:Lu38;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lv18;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lh28;->c:I

    .line 3
    new-instance v0, Lj38;

    sget-object v1, Lh28;->d:Lu38;

    invoke-direct {v0, v1}, Lj38;-><init>(Lu38;)V

    iput-object v0, p0, Lh28;->a:Lj38;

    .line 4
    invoke-virtual {p0}, Lh28;->f()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ls18;->u:Ljava/lang/String;

    return-object v0
.end method

.method public b()F
    .locals 3

    .line 1
    iget v0, p0, Lh28;->c:I

    const v1, 0x3f7d70a4    # 0.99f

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lh28;->c:I

    if-ge v0, v2, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0

    :cond_1
    return v1
.end method

.method public c()Lv18$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lh28;->b:Lv18$a;

    return-object v0
.end method

.method public d([BII)Lv18$a;
    .locals 4

    .line 1
    sget-object v0, Lv18$a;->f:Lv18$a;

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_3

    .line 2
    iget-object v1, p0, Lh28;->a:Lj38;

    aget-byte v2, p1, p2

    invoke-virtual {v1, v2}, Lj38;->a(B)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    sget-object p1, Lv18$a;->g:Lv18$a;

    iput-object p1, p0, Lh28;->b:Lv18$a;

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 4
    iput-object v0, p0, Lh28;->b:Lv18$a;

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lh28;->a:Lj38;

    .line 6
    iget v1, v1, Lj38;->c:I

    if-lt v1, v3, :cond_2

    .line 7
    iget v1, p0, Lh28;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lh28;->c:I

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    iget-object p1, p0, Lh28;->b:Lv18$a;

    sget-object p2, Lv18$a;->e:Lv18$a;

    if-ne p1, p2, :cond_4

    .line 9
    invoke-virtual {p0}, Lh28;->b()F

    move-result p1

    const p2, 0x3f733333    # 0.95f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    .line 10
    iput-object v0, p0, Lh28;->b:Lv18$a;

    .line 11
    :cond_4
    iget-object p1, p0, Lh28;->b:Lv18$a;

    return-object p1
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh28;->a:Lj38;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lj38;->b:I

    .line 3
    iput v1, p0, Lh28;->c:I

    .line 4
    sget-object v0, Lv18$a;->e:Lv18$a;

    iput-object v0, p0, Lh28;->b:Lv18$a;

    return-void
.end method

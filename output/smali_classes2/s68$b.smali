.class public abstract enum Ls68$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ly68;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls68$b;",
        ">;",
        "Ly68;"
    }
.end annotation


# static fields
.field public static final enum e:Ls68$b;

.field public static final enum f:Ls68$b;

.field public static final enum g:Ls68$b;

.field public static final enum h:Ls68$b;

.field public static final i:[I

.field public static final synthetic j:[Ls68$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ls68$b$a;

    const-string v1, "DAY_OF_QUARTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls68$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls68$b;->e:Ls68$b;

    .line 2
    new-instance v1, Ls68$b$b;

    const-string v3, "QUARTER_OF_YEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls68$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls68$b;->f:Ls68$b;

    .line 3
    new-instance v3, Ls68$b$c;

    const-string v5, "WEEK_OF_WEEK_BASED_YEAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ls68$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ls68$b;->g:Ls68$b;

    .line 4
    new-instance v5, Ls68$b$d;

    const-string v7, "WEEK_BASED_YEAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ls68$b$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ls68$b;->h:Ls68$b;

    const/4 v7, 0x4

    new-array v7, v7, [Ls68$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Ls68$b;->j:[Ls68$b;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    sput-object v0, Ls68$b;->i:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ILs68$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static C(Lu68;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lj58;->y(Lu68;)Lj58;

    move-result-object p0

    sget-object v0, Lo58;->g:Lo58;

    invoke-virtual {p0, v0}, Lj58;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static D(Lp48;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lp48;->X()Lm48;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lp48;->Y()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    .line 3
    div-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v0, v3

    const/4 v3, -0x3

    add-int/2addr v0, v3

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    if-ge v1, v0, :cond_1

    const/16 v0, 0xb4

    .line 4
    invoke-virtual {p0, v0}, Lp48;->n0(I)Lp48;

    move-result-object p0

    const-wide/16 v0, -0x1

    .line 5
    invoke-virtual {p0, v0, v1}, Lp48;->j0(J)Lp48;

    move-result-object p0

    .line 6
    invoke-static {p0}, Ls68$b;->I(Lp48;)I

    move-result p0

    .line 7
    invoke-static {p0}, Ls68$b;->K(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ld78;->d(JJ)Ld78;

    move-result-object p0

    .line 8
    iget-wide v0, p0, Ld78;->h:J

    long-to-int p0, v0

    goto :goto_3

    :cond_1
    sub-int/2addr v1, v0

    .line 9
    div-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v2

    const/16 v4, 0x35

    if-ne v1, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    .line 10
    invoke-virtual {p0}, Lp48;->a0()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    move p0, v2

    :goto_3
    return p0
.end method

.method public static I(Lp48;)I
    .locals 4

    .line 1
    iget v0, p0, Lp48;->e:I

    .line 2
    invoke-virtual {p0}, Lp48;->Y()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lp48;->X()Lm48;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, -0x2

    if-ge v1, p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x16b

    if-lt v1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lp48;->X()Lm48;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Lp48;->a0()Z

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v3

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static K(I)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lp48;->c0(III)Lp48;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lp48;->X()Lm48;

    move-result-object v0

    sget-object v1, Lm48;->h:Lm48;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lp48;->X()Lm48;

    move-result-object v0

    sget-object v1, Lm48;->g:Lm48;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lp48;->a0()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x34

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x35

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Ls68$b;
    .locals 1

    .line 1
    const-class v0, Ls68$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls68$b;

    return-object p0
.end method

.method public static values()[Ls68$b;
    .locals 1

    .line 1
    sget-object v0, Ls68$b;->j:[Ls68$b;

    invoke-virtual {v0}, [Ls68$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls68$b;

    return-object v0
.end method


# virtual methods
.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class public final Lhh3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldh3;


# instance fields
.field public final a:Lal3;

.field public final b:I

.field public final c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lch3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lch3;->P0:Lal3;

    iput-object p1, p0, Lhh3;->a:Lal3;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lal3;->h(I)V

    .line 4
    invoke-virtual {p1}, Lal3;->o()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lhh3;->c:I

    .line 5
    invoke-virtual {p1}, Lal3;->o()I

    move-result p1

    iput p1, p0, Lhh3;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 2

    .line 1
    iget v0, p0, Lhh3;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lhh3;->a:Lal3;

    invoke-virtual {v0}, Lal3;->d()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lhh3;->a:Lal3;

    invoke-virtual {v0}, Lal3;->e()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget v0, p0, Lhh3;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lhh3;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lhh3;->a:Lal3;

    invoke-virtual {v0}, Lal3;->d()I

    move-result v0

    iput v0, p0, Lhh3;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 6
    :cond_2
    iget v0, p0, Lhh3;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lhh3;->b:I

    return v0
.end method

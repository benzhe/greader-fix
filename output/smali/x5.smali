.class public Lx5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx5$a;
    }
.end annotation


# static fields
.field public static m:I = 0x1


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:Z

.field public g:[F

.field public h:[F

.field public i:Lx5$a;

.field public j:[Ls5;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Lx5$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lx5;->b:I

    .line 3
    iput v0, p0, Lx5;->c:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lx5;->d:I

    .line 5
    iput-boolean v0, p0, Lx5;->f:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    .line 6
    iput-object v2, p0, Lx5;->g:[F

    new-array v1, v1, [F

    .line 7
    iput-object v1, p0, Lx5;->h:[F

    const/16 v1, 0x10

    new-array v1, v1, [Ls5;

    .line 8
    iput-object v1, p0, Lx5;->j:[Ls5;

    .line 9
    iput v0, p0, Lx5;->k:I

    .line 10
    iput v0, p0, Lx5;->l:I

    .line 11
    iput-object p1, p0, Lx5;->i:Lx5$a;

    return-void
.end method


# virtual methods
.method public final a(Ls5;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lx5;->k:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lx5;->j:[Ls5;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lx5;->j:[Ls5;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 4
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls5;

    iput-object v0, p0, Lx5;->j:[Ls5;

    .line 5
    :cond_2
    iget-object v0, p0, Lx5;->j:[Ls5;

    iget v1, p0, Lx5;->k:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lx5;->k:I

    return-void
.end method

.method public final b(Ls5;)V
    .locals 4

    .line 1
    iget v0, p0, Lx5;->k:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Lx5;->j:[Ls5;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lx5;->j:[Ls5;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    .line 4
    :cond_0
    iget p1, p0, Lx5;->k:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lx5;->k:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c()V
    .locals 6

    .line 1
    sget-object v0, Lx5$a;->i:Lx5$a;

    iput-object v0, p0, Lx5;->i:Lx5$a;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lx5;->d:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lx5;->b:I

    .line 4
    iput v1, p0, Lx5;->c:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lx5;->e:F

    .line 6
    iput-boolean v0, p0, Lx5;->f:Z

    .line 7
    iget v2, p0, Lx5;->k:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 8
    iget-object v4, p0, Lx5;->j:[Ls5;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput v0, p0, Lx5;->k:I

    .line 10
    iput v0, p0, Lx5;->l:I

    .line 11
    iput-boolean v0, p0, Lx5;->a:Z

    .line 12
    iget-object v0, p0, Lx5;->h:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public d(Lu5;F)V
    .locals 2

    .line 1
    iput p2, p0, Lx5;->e:F

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lx5;->f:Z

    .line 3
    iget p1, p0, Lx5;->k:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 4
    iget-object v1, p0, Lx5;->j:[Ls5;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0, p2}, Ls5;->k(Lx5;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput p2, p0, Lx5;->k:I

    return-void
.end method

.method public final e(Ls5;)V
    .locals 4

    .line 1
    iget v0, p0, Lx5;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lx5;->j:[Ls5;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v1}, Ls5;->l(Ls5;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lx5;->k:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lx5;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

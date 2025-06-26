.class public final Lc68$m;
.super Lc68$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# static fields
.field public static final m:Lp48;


# instance fields
.field public final k:I

.field public final l:Le58;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v1}, Lp48;->c0(III)Lp48;

    move-result-object v0

    sput-object v0, Lc68$m;->m:Lp48;

    return-void
.end method

.method public constructor <init>(Ly68;IIILe58;)V
    .locals 2

    .line 1
    sget-object v0, Lj68;->h:Lj68;

    invoke-direct {p0, p1, p2, p3, v0}, Lc68$j;-><init>(Ly68;IILj68;)V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_5

    const/16 v1, 0xa

    if-gt p2, v1, :cond_5

    if-lt p3, v0, :cond_4

    if-gt p3, v1, :cond_4

    if-lt p3, p2, :cond_3

    if-nez p5, :cond_2

    .line 2
    invoke-interface {p1}, Ly68;->w()Ld78;

    move-result-object p1

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Ld78;->c(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lc68$j;->j:[I

    aget p1, p1, p2

    int-to-long p1, p1

    add-long/2addr v0, p1

    const-wide/32 p1, 0x7fffffff

    cmp-long p3, v0, p1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ll48;

    const-string p2, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {p1, p2}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The base value must be within the range of the field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    iput p4, p0, Lc68$m;->k:I

    .line 7
    iput-object p5, p0, Lc68$m;->l:Le58;

    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The maxWidth must be greater than the width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The maxWidth must be from 1 to 10 inclusive but was "

    invoke-static {p2, p3}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "The width must be from 1 to 10 inclusive but was "

    invoke-static {p3, p2}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ly68;IIILe58;I)V
    .locals 7

    .line 11
    sget-object v4, Lj68;->h:Lj68;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lc68$j;-><init>(Ly68;IILj68;ILc68$a;)V

    .line 12
    iput p4, p0, Lc68$m;->k:I

    .line 13
    iput-object p5, p0, Lc68$m;->l:Le58;

    return-void
.end method


# virtual methods
.method public a(Le68;J)J
    .locals 6

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 2
    iget v2, p0, Lc68$m;->k:I

    .line 3
    iget-object v3, p0, Lc68$m;->l:Le58;

    if-eqz v3, :cond_0

    .line 4
    iget-object p1, p1, Le68;->a:Lu68;

    .line 5
    invoke-static {p1}, Lj58;->y(Lu68;)Lj58;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lc68$m;->l:Le58;

    invoke-virtual {p1, v2}, Lj58;->k(Lu68;)Le58;

    move-result-object p1

    iget-object v2, p0, Lc68$j;->e:Ly68;

    invoke-virtual {p1, v2}, Lp68;->k(Ly68;)I

    move-result v2

    :cond_0
    int-to-long v3, v2

    cmp-long p1, p2, v3

    if-ltz p1, :cond_1

    .line 7
    sget-object p1, Lc68$j;->j:[I

    iget v3, p0, Lc68$j;->f:I

    aget v4, p1, v3

    add-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, p2, v4

    if-gez v2, :cond_1

    .line 8
    aget p1, p1, v3

    int-to-long p1, p1

    rem-long/2addr v0, p1

    return-wide v0

    .line 9
    :cond_1
    sget-object p1, Lc68$j;->j:[I

    iget p2, p0, Lc68$j;->g:I

    aget p1, p1, p2

    int-to-long p1, p1

    rem-long/2addr v0, p1

    return-wide v0
.end method

.method public b()Lc68$j;
    .locals 9

    .line 1
    iget v0, p0, Lc68$j;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lc68$m;

    iget-object v3, p0, Lc68$j;->e:Ly68;

    iget v4, p0, Lc68$j;->f:I

    iget v5, p0, Lc68$j;->g:I

    iget v6, p0, Lc68$m;->k:I

    iget-object v7, p0, Lc68$m;->l:Le58;

    const/4 v8, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lc68$m;-><init>(Ly68;IIILe58;I)V

    return-object v0
.end method

.method public c(I)Lc68$j;
    .locals 8

    .line 1
    new-instance v7, Lc68$m;

    iget-object v1, p0, Lc68$j;->e:Ly68;

    iget v2, p0, Lc68$j;->f:I

    iget v3, p0, Lc68$j;->g:I

    iget v4, p0, Lc68$m;->k:I

    iget-object v5, p0, Lc68$m;->l:Le58;

    iget v0, p0, Lc68$j;->i:I

    add-int v6, v0, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lc68$m;-><init>(Ly68;IIILe58;I)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ReducedValue("

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc68$j;->e:Ly68;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lc68$j;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lc68$j;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc68$m;->l:Le58;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lc68$m;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
